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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !625
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !591
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !615
@.str.1.55 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !617
@.str.2.57 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !619
@.str.3.56 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !621
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !623
@.str.4.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !627
@.str.5.51 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !629
@.str.6.52 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !634
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !639
@.str.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !645
@.str.1.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !647
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !649
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !680
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !683
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !685
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !690
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !692
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !694
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !696
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !698
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !700
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !702
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.76, ptr @.str.1.77, ptr @.str.2.78, ptr @.str.3.79, ptr @.str.4.80, ptr @.str.5.81, ptr @.str.6.82, ptr @.str.7.83, ptr @.str.8.84, ptr @.str.9.85, ptr null], align 8, !dbg !704
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !717
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !731
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !766
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !773
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !733
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !775
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !721
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !735
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !737
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !739
@.str.13.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !741
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !743
@.str.102 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !780
@.str.1.103 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1, !dbg !783
@.str.2.104 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1, !dbg !785
@.str.3.105 = private unnamed_addr constant [12 x i8] c"/%.*sXXXXXX\00", align 1, !dbg !787
@.str.108 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !789
@.str.1.109 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !792
@.str.2.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !794
@.str.3.111 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !796
@.str.4.112 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !798
@.str.5.113 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !800
@.str.6.114 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !805
@.str.7.115 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !810
@.str.8.116 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !812
@.str.9.117 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !817
@.str.10.118 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !822
@.str.11.119 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !827
@.str.12.120 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !832
@.str.13.121 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !834
@.str.14.122 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !839
@.str.15.123 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !844
@.str.16.124 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !849
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.129 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !854
@.str.18.130 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !856
@.str.19.131 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !858
@.str.20.132 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !860
@.str.21.133 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !862
@.str.22.134 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !864
@.str.23.135 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !866
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !871
@exit_failure = dso_local global i32 1, align 4, !dbg !879
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !885
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !888
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !890
@.str.165 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !892
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !895
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !910
@.str.174 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !928
@.str.1.175 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !931

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1029 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1033, metadata !DIExpression()), !dbg !1034
  %2 = icmp eq i32 %0, 0, !dbg !1035
  br i1 %2, label %8, label %3, !dbg !1037

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1038, !tbaa !1040
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !1038
  %6 = load ptr, ptr @program_name, align 8, !dbg !1038, !tbaa !1040
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !1038
  br label %43, !dbg !1038

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1044
  %10 = load ptr, ptr @program_name, align 8, !dbg !1044, !tbaa !1040
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1044
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1046
  %13 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !1040
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1046
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1047
  %16 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !1040
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1047
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1050
  %19 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !1040
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1050
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1053
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1053
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1054
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1054
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1055
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1055
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1056
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1056
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1057
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1057
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1058
  %27 = load ptr, ptr @stdout, align 8, !dbg !1058, !tbaa !1040
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !1058
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1059, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata !1078, metadata !1072, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr poison, metadata !1071, metadata !DIExpression()), !dbg !1076
  tail call void @emit_bug_reporting_address() #39, !dbg !1079
  %29 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1080
  call void @llvm.dbg.value(metadata ptr %29, metadata !1074, metadata !DIExpression()), !dbg !1076
  %30 = icmp eq ptr %29, null, !dbg !1081
  br i1 %30, label %38, label %31, !dbg !1083

31:                                               ; preds = %8
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #40, !dbg !1084
  %33 = icmp eq i32 %32, 0, !dbg !1084
  br i1 %33, label %38, label %34, !dbg !1085

34:                                               ; preds = %31
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #39, !dbg !1086
  %36 = load ptr, ptr @stdout, align 8, !dbg !1086, !tbaa !1040
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1086
  br label %38, !dbg !1088

38:                                               ; preds = %8, %31, %34
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1071, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1075, metadata !DIExpression()), !dbg !1076
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !1089
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #39, !dbg !1089
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #39, !dbg !1090
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #39, !dbg !1090
  br label %43

43:                                               ; preds = %38, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1091
  unreachable, !dbg !1091
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1092 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1096 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1102 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1105 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !205 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !210, metadata !DIExpression()), !dbg !1108
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1109, !tbaa !1110
  %3 = icmp eq i32 %2, -1, !dbg !1112
  br i1 %3, label %4, label %16, !dbg !1113

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #39, !dbg !1114
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !1115
  %6 = icmp eq ptr %5, null, !dbg !1116
  br i1 %6, label %14, label %7, !dbg !1117

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1118, !tbaa !1119
  %9 = icmp eq i8 %8, 0, !dbg !1118
  br i1 %9, label %14, label %10, !dbg !1120

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1121, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !1127, metadata !DIExpression()), !dbg !1128
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #40, !dbg !1130
  %12 = icmp eq i32 %11, 0, !dbg !1131
  %13 = zext i1 %12 to i32, !dbg !1120
  br label %14, !dbg !1120

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1132, !tbaa !1110
  br label %16, !dbg !1133

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1134
  %18 = icmp eq i32 %17, 0, !dbg !1134
  br i1 %18, label %22, label %19, !dbg !1136

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1137, !tbaa !1040
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1137
  br label %121, !dbg !1139

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !214, metadata !DIExpression()), !dbg !1108
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #40, !dbg !1140
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1141
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1108
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1142
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !217, metadata !DIExpression()), !dbg !1108
  %26 = icmp eq ptr %25, null, !dbg !1143
  br i1 %26, label %53, label %27, !dbg !1144

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1145
  br i1 %28, label %53, label %29, !dbg !1146

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !1147
  tail call void @llvm.dbg.value(metadata i64 0, metadata !222, metadata !DIExpression()), !dbg !1147
  %30 = icmp ult ptr %24, %25, !dbg !1148
  br i1 %30, label %31, label %53, !dbg !1149

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1108
  %33 = load ptr, ptr %32, align 8, !tbaa !1040
  br label %34, !dbg !1149

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !218, metadata !DIExpression()), !dbg !1147
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !222, metadata !DIExpression()), !dbg !1147
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1150
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !218, metadata !DIExpression()), !dbg !1147
  %38 = load i8, ptr %35, align 1, !dbg !1150, !tbaa !1119
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1150
  %41 = load i16, ptr %40, align 2, !dbg !1150, !tbaa !1151
  %42 = freeze i16 %41, !dbg !1153
  %43 = lshr i16 %42, 13, !dbg !1153
  %44 = and i16 %43, 1, !dbg !1153
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1154
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !222, metadata !DIExpression()), !dbg !1147
  %47 = icmp ult ptr %37, %25, !dbg !1148
  %48 = icmp ult i64 %46, 2, !dbg !1155
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1155
  br i1 %49, label %34, label %50, !dbg !1149, !llvm.loop !1156

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1154
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1158
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1160
  br label %53, !dbg !1160

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1108
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !217, metadata !DIExpression()), !dbg !1108
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.25) #40, !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !223, metadata !DIExpression()), !dbg !1108
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1162
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !224, metadata !DIExpression()), !dbg !1108
  br label %58, !dbg !1163

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1108
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !1108
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !224, metadata !DIExpression()), !dbg !1108
  %61 = load i8, ptr %59, align 1, !dbg !1164, !tbaa !1119
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1165

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1166
  %64 = load i8, ptr %63, align 1, !dbg !1169, !tbaa !1119
  %65 = icmp ne i8 %64, 45, !dbg !1170
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1171
  br label %67, !dbg !1171

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !214, metadata !DIExpression()), !dbg !1108
  %69 = tail call ptr @__ctype_b_loc() #42, !dbg !1172
  %70 = load ptr, ptr %69, align 8, !dbg !1172, !tbaa !1040
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1172
  %73 = load i16, ptr %72, align 2, !dbg !1172, !tbaa !1151
  %74 = and i16 %73, 8192, !dbg !1172
  %75 = icmp eq i16 %74, 0, !dbg !1172
  br i1 %75, label %89, label %76, !dbg !1174

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1175
  br i1 %77, label %91, label %78, !dbg !1178

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1179
  %80 = load i8, ptr %79, align 1, !dbg !1179, !tbaa !1119
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1179
  %83 = load i16, ptr %82, align 2, !dbg !1179, !tbaa !1151
  %84 = and i16 %83, 8192, !dbg !1179
  %85 = icmp eq i16 %84, 0, !dbg !1179
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1180
  br i1 %88, label %89, label %91, !dbg !1180

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1181
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !224, metadata !DIExpression()), !dbg !1108
  br label %58, !dbg !1163, !llvm.loop !1182

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1108
  %92 = ptrtoint ptr %24 to i64, !dbg !1184
  %93 = load ptr, ptr @stdout, align 8, !dbg !1184, !tbaa !1040
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1184
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1121, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata !1078, metadata !1127, metadata !DIExpression()), !dbg !1203
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !281, metadata !DIExpression()), !dbg !1108
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #40, !dbg !1205
  %96 = icmp eq i32 %95, 0, !dbg !1205
  br i1 %96, label %100, label %97, !dbg !1207

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #40, !dbg !1208
  %99 = icmp eq i32 %98, 0, !dbg !1208
  br i1 %99, label %100, label %103, !dbg !1209

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1210
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #39, !dbg !1210
  br label %106, !dbg !1212

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1213
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #39, !dbg !1213
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1215, !tbaa !1040
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %107), !dbg !1215
  %109 = load ptr, ptr @stdout, align 8, !dbg !1216, !tbaa !1040
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %109), !dbg !1216
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1217
  %112 = sub i64 %111, %92, !dbg !1217
  %113 = load ptr, ptr @stdout, align 8, !dbg !1217, !tbaa !1040
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1217
  %115 = load ptr, ptr @stdout, align 8, !dbg !1218, !tbaa !1040
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %115), !dbg !1218
  %117 = load ptr, ptr @stdout, align 8, !dbg !1219, !tbaa !1040
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %117), !dbg !1219
  %119 = load ptr, ptr @stdout, align 8, !dbg !1220, !tbaa !1040
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1220
  br label %121, !dbg !1221

121:                                              ; preds = %106, %19
  ret void, !dbg !1221
}

; Function Attrs: nounwind
declare !dbg !1222 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1226 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1230 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1232 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1235 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1238 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1241 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1244 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1250 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1251 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !54 {
  %3 = alloca ptr, align 8, !DIAssignID !1257
  %4 = alloca ptr, align 8, !DIAssignID !1258
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !475, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !476, metadata !DIExpression()), !dbg !1259
  %5 = load ptr, ptr %1, align 8, !dbg !1260, !tbaa !1040
  tail call void @set_program_name(ptr noundef %5) #39, !dbg !1261
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #39, !dbg !1262
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #39, !dbg !1263
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #39, !dbg !1264
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1265
  br label %10, !dbg !1266

10:                                               ; preds = %16, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1267
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !478, metadata !DIExpression()), !dbg !1259
  switch i32 %11, label %23 [
    i32 -1, label %24
    i32 98, label %12
    i32 114, label %13
    i32 115, label %14
    i32 -2, label %17
    i32 -3, label %18
  ], !dbg !1266

12:                                               ; preds = %10
  store i1 true, ptr @separator_ends_record, align 1, !dbg !1268
  br label %16, !dbg !1271

13:                                               ; preds = %10
  store i64 0, ptr @sentinel_length, align 8, !dbg !1272, !tbaa !1273
  br label %16, !dbg !1275

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1276, !tbaa !1040
  store ptr %15, ptr @separator, align 8, !dbg !1277, !tbaa !1040
  br label %16, !dbg !1278

16:                                               ; preds = %14, %13, %12
  br label %10, !dbg !1267, !llvm.loop !1279

17:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #43, !dbg !1281
  unreachable, !dbg !1281

18:                                               ; preds = %10
  %19 = load ptr, ptr @stdout, align 8, !dbg !1282, !tbaa !1040
  %20 = load ptr, ptr @Version, align 8, !dbg !1282, !tbaa !1040
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #39, !dbg !1282
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #39, !dbg !1282
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #39, !dbg !1282
  tail call void @exit(i32 noundef 0) #41, !dbg !1282
  unreachable, !dbg !1282

23:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #43, !dbg !1283
  unreachable, !dbg !1283

24:                                               ; preds = %10
  %25 = load i64, ptr @sentinel_length, align 8, !dbg !1284, !tbaa !1273
  %26 = icmp eq i64 %25, 0, !dbg !1286
  %27 = load ptr, ptr @separator, align 8, !dbg !1287, !tbaa !1040
  %28 = load i8, ptr %27, align 1, !dbg !1287, !tbaa !1119
  %29 = icmp eq i8 %28, 0, !dbg !1287
  br i1 %26, label %30, label %40, !dbg !1288

30:                                               ; preds = %24
  br i1 %29, label %31, label %33, !dbg !1289

31:                                               ; preds = %30
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %32) #39, !dbg !1291
  unreachable, !dbg !1291

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @compiled_separator, i8 0, i64 16, i1 false), !dbg !1293
  store ptr @compiled_separator_fastmap, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 4), align 8, !dbg !1294, !tbaa !1295
  store ptr null, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 5), align 8, !dbg !1297, !tbaa !1298
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #40, !dbg !1299
  %35 = tail call ptr @re_compile_pattern(ptr noundef nonnull %27, i64 noundef %34, ptr noundef nonnull @compiled_separator) #39, !dbg !1300
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !477, metadata !DIExpression()), !dbg !1259
  %36 = icmp eq ptr %35, null, !dbg !1301
  br i1 %36, label %37, label %39, !dbg !1303

37:                                               ; preds = %33
  %38 = load i64, ptr @sentinel_length, align 8, !tbaa !1273
  br label %45, !dbg !1303

39:                                               ; preds = %33
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %35) #39, !dbg !1304
  unreachable, !dbg !1304

40:                                               ; preds = %24
  br i1 %29, label %43, label %41, !dbg !1305

41:                                               ; preds = %40
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #40, !dbg !1306
  br label %43, !dbg !1305

43:                                               ; preds = %40, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %40 ], !dbg !1305
  store i64 %44, ptr @sentinel_length, align 8, !dbg !1307, !tbaa !1273
  store i64 %44, ptr @match_length, align 8, !dbg !1308, !tbaa !1273
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i64 [ %38, %37 ], [ %44, %43 ]
  %47 = icmp ult i64 %46, 4096, !dbg !1309
  br i1 %47, label %55, label %.preheader3, !dbg !1310

.preheader3:                                      ; preds = %45
  br label %48, !dbg !1310

48:                                               ; preds = %.preheader3, %52
  %49 = phi i64 [ %53, %52 ], [ 8192, %.preheader3 ]
  %50 = icmp slt i64 %49, 0, !dbg !1311
  br i1 %50, label %51, label %52, !dbg !1314

51:                                               ; preds = %48
  %.lcssa6 = phi i64 [ %49, %48 ]
  store i64 %.lcssa6, ptr @read_size, align 8, !dbg !1259, !tbaa !1273
  tail call void @xalloc_die() #41, !dbg !1315
  unreachable, !dbg !1315

52:                                               ; preds = %48
  %53 = shl nuw i64 %49, 1, !dbg !1316
  %54 = icmp ult i64 %46, %49, !dbg !1309
  br i1 %54, label %.loopexit4, label %48, !dbg !1310, !llvm.loop !1317

.loopexit4:                                       ; preds = %52
  %.lcssa8 = phi i64 [ %53, %52 ], !dbg !1316
  br label %55, !dbg !1259

55:                                               ; preds = %.loopexit4, %45
  %56 = phi i64 [ 8192, %45 ], [ %.lcssa8, %.loopexit4 ]
  store i64 %56, ptr @read_size, align 8, !dbg !1259, !tbaa !1273
  %57 = add i64 %46, %56, !dbg !1319
  %58 = add i64 %57, 1, !dbg !1320
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !480, metadata !DIExpression()), !dbg !1259
  %59 = shl i64 %58, 1, !dbg !1321
  store i64 %59, ptr @G_buffer_size, align 8, !dbg !1322, !tbaa !1273
  %60 = icmp ult i64 %56, %58, !dbg !1323
  %61 = icmp ult i64 %57, 9223372036854775807
  %62 = and i1 %61, %60, !dbg !1325
  br i1 %62, label %64, label %63, !dbg !1325

63:                                               ; preds = %55
  tail call void @xalloc_die() #41, !dbg !1326
  unreachable, !dbg !1326

64:                                               ; preds = %55
  %65 = tail call noalias nonnull ptr @xmalloc(i64 noundef %59) #44, !dbg !1327
  %66 = load i64, ptr @sentinel_length, align 8, !dbg !1328, !tbaa !1273
  %67 = icmp eq i64 %66, 0, !dbg !1328
  br i1 %67, label %74, label %68, !dbg !1330

68:                                               ; preds = %64
  %69 = load ptr, ptr @separator, align 8, !dbg !1331, !tbaa !1040
  %70 = load i8, ptr %69, align 1, !dbg !1333, !tbaa !1119
  %71 = icmp ne i8 %70, 0, !dbg !1334
  %72 = zext i1 %71 to i64
  %73 = add i64 %66, %72, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %65, metadata !1336, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %69, metadata !1343, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %73, metadata !1344, metadata !DIExpression()), !dbg !1345
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %65, ptr noundef nonnull align 1 %69, i64 noundef %73, i1 noundef false) #39, !dbg !1347
  br label %74, !dbg !1348

74:                                               ; preds = %64, %68
  %75 = phi i64 [ %66, %68 ], [ 1, %64 ]
  %76 = getelementptr inbounds i8, ptr %65, i64 %75, !dbg !1349
  store ptr %76, ptr @G_buffer, align 8, !dbg !1349, !tbaa !1040
  %77 = load i32, ptr @optind, align 4, !dbg !1350
  %78 = icmp slt i32 %77, %0, !dbg !1351
  %79 = sext i32 %77 to i64, !dbg !1350
  %80 = getelementptr inbounds ptr, ptr %1, i64 %79, !dbg !1350
  %81 = select i1 %78, ptr %80, ptr @main.default_file_list, !dbg !1350
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !481, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata i64 0, metadata !482, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1259
  %82 = load ptr, ptr %81, align 8, !dbg !1353, !tbaa !1040
  %83 = icmp eq ptr %82, null, !dbg !1355
  br i1 %83, label %84, label %.preheader1, !dbg !1355

.preheader1:                                      ; preds = %74
  br label %87, !dbg !1355

.loopexit2:                                       ; preds = %175
  %.lcssa5 = phi i1 [ %177, %175 ], !dbg !1356
  br label %84, !dbg !1357

84:                                               ; preds = %.loopexit2, %74
  %85 = phi i1 [ true, %74 ], [ %.lcssa5, %.loopexit2 ]
  call fastcc void @output(ptr noundef null, ptr noundef null), !dbg !1357
  %86 = load i1, ptr @have_read_stdin, align 1, !dbg !1358
  br i1 %86, label %182, label %188, !dbg !1360

87:                                               ; preds = %.preheader1, %175
  %88 = phi ptr [ %180, %175 ], [ %82, %.preheader1 ]
  %89 = phi i64 [ %178, %175 ], [ 0, %.preheader1 ]
  %90 = phi i1 [ %177, %175 ], [ true, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !482, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %88, metadata !1361, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %88, metadata !1121, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1127, metadata !DIExpression()), !dbg !1373
  %91 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.10) #40, !dbg !1375
  %92 = icmp eq i32 %91, 0, !dbg !1376
  call void @llvm.dbg.value(metadata i1 %92, metadata !1370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  br i1 %92, label %93, label %95, !dbg !1377

93:                                               ; preds = %87
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1378
  call void @llvm.dbg.value(metadata i32 0, metadata !1369, metadata !DIExpression()), !dbg !1371
  %94 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #39, !dbg !1381
  call void @llvm.dbg.value(metadata ptr %94, metadata !1361, metadata !DIExpression()), !dbg !1371
  br label %103, !dbg !1382

95:                                               ; preds = %87
  %96 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %88, i32 noundef 0) #39, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %96, metadata !1369, metadata !DIExpression()), !dbg !1371
  %97 = icmp slt i32 %96, 0, !dbg !1385
  br i1 %97, label %98, label %103, !dbg !1387

98:                                               ; preds = %95
  %99 = tail call ptr @__errno_location() #42, !dbg !1388
  %100 = load i32, ptr %99, align 4, !dbg !1388, !tbaa !1110
  %101 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #39, !dbg !1388
  %102 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %88) #39, !dbg !1388
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %100, ptr noundef %101, ptr noundef %102) #39, !dbg !1388
  br label %175, !dbg !1390

103:                                              ; preds = %95, %93
  %104 = phi ptr [ %94, %93 ], [ %88, %95 ]
  %105 = phi i32 [ 0, %93 ], [ %96, %95 ], !dbg !1391
  call void @llvm.dbg.value(metadata i32 %105, metadata !1369, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %104, metadata !1361, metadata !DIExpression()), !dbg !1371
  %106 = call i64 @lseek(i32 noundef %105, i64 noundef 0, i32 noundef 2) #39, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %106, metadata !1367, metadata !DIExpression()), !dbg !1371
  %107 = icmp slt i64 %106, 0, !dbg !1393
  br i1 %107, label %111, label %108, !dbg !1394

108:                                              ; preds = %103
  %109 = call i32 @isatty(i32 noundef %105) #39, !dbg !1395
  %110 = icmp eq i32 %109, 0, !dbg !1395
  br i1 %110, label %163, label %111, !dbg !1396

111:                                              ; preds = %108, %103
  call void @llvm.dbg.value(metadata i32 %105, metadata !1397, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr %104, metadata !1402, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1409, metadata !DIExpression(), metadata !1257, metadata ptr %3, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1419, metadata !DIExpression(), metadata !1258, metadata ptr %4, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr undef, metadata !1415, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr undef, metadata !1416, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %105, metadata !1417, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr %104, metadata !1418, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1436
  call void @llvm.dbg.value(metadata i64 0, metadata !1420, metadata !DIExpression()), !dbg !1433
  %112 = call i1 @temp_stream(ptr noundef nonnull %3, ptr noundef nonnull %4) #39, !dbg !1437
  br i1 %112, label %113, label %155, !dbg !1439

113:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i64 0, metadata !1420, metadata !DIExpression()), !dbg !1433
  %114 = load ptr, ptr @G_buffer, align 8, !dbg !1440, !tbaa !1040
  %115 = load i64, ptr @read_size, align 8, !dbg !1441, !tbaa !1273
  %116 = call i64 @read(i32 noundef %105, ptr noundef %114, i64 noundef %115) #39, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %116, metadata !1424, metadata !DIExpression()), !dbg !1443
  %117 = icmp eq i64 %116, 0, !dbg !1444
  br i1 %117, label %144, label %.preheader, !dbg !1446

.preheader:                                       ; preds = %113
  br label %124, !dbg !1447

118:                                              ; preds = %133
  %119 = add i64 %126, %125, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %119, metadata !1420, metadata !DIExpression()), !dbg !1433
  %120 = load ptr, ptr @G_buffer, align 8, !dbg !1440, !tbaa !1040
  %121 = load i64, ptr @read_size, align 8, !dbg !1441, !tbaa !1273
  %122 = call i64 @read(i32 noundef %105, ptr noundef %120, i64 noundef %121) #39, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %122, metadata !1424, metadata !DIExpression()), !dbg !1443
  %123 = icmp eq i64 %122, 0, !dbg !1444
  br i1 %123, label %.loopexit, label %124, !dbg !1446

124:                                              ; preds = %.preheader, %118
  %125 = phi i64 [ %122, %118 ], [ %116, %.preheader ]
  %126 = phi i64 [ %119, %118 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !1420, metadata !DIExpression()), !dbg !1433
  %127 = icmp slt i64 %125, 0, !dbg !1449
  br i1 %127, label %128, label %133, !dbg !1447

128:                                              ; preds = %124
  %129 = tail call ptr @__errno_location() #42, !dbg !1451
  %130 = load i32, ptr %129, align 4, !dbg !1451, !tbaa !1110
  %131 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1451
  %132 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %104) #39, !dbg !1451
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %130, ptr noundef %131, ptr noundef %132) #39, !dbg !1451
  br label %155, !dbg !1453

133:                                              ; preds = %124
  %134 = load ptr, ptr %3, align 8, !dbg !1454, !tbaa !1040
  %135 = load ptr, ptr @G_buffer, align 8, !dbg !1454, !tbaa !1040
  %136 = call i64 @fwrite_unlocked(ptr noundef %135, i64 noundef 1, i64 noundef %125, ptr noundef %134), !dbg !1454
  %137 = icmp eq i64 %136, %125, !dbg !1455
  call void @llvm.dbg.value(metadata !DIArgList(i64 %125, i64 %126), metadata !1420, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1433
  br i1 %137, label %118, label %138, !dbg !1456

138:                                              ; preds = %133
  %139 = tail call ptr @__errno_location() #42, !dbg !1457
  %140 = load i32, ptr %139, align 4, !dbg !1457, !tbaa !1110
  %141 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #39, !dbg !1457
  %142 = load ptr, ptr %4, align 8, !dbg !1457, !tbaa !1040
  %143 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %142) #39, !dbg !1457
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %140, ptr noundef %141, ptr noundef %143) #39, !dbg !1457
  br label %155, !dbg !1459

.loopexit:                                        ; preds = %118
  %.lcssa = phi i64 [ %119, %118 ], !dbg !1448
  br label %144, !dbg !1460

144:                                              ; preds = %.loopexit, %113
  %145 = phi i64 [ 0, %113 ], [ %.lcssa, %.loopexit ], !dbg !1462
  call void @llvm.dbg.value(metadata i64 %145, metadata !1420, metadata !DIExpression()), !dbg !1433
  %146 = load ptr, ptr %3, align 8, !dbg !1460, !tbaa !1040
  %147 = call i32 @fflush_unlocked(ptr noundef %146) #39, !dbg !1460
  %148 = icmp eq i32 %147, 0, !dbg !1463
  br i1 %148, label %156, label %149, !dbg !1464

149:                                              ; preds = %144
  %150 = tail call ptr @__errno_location() #42, !dbg !1465
  %151 = load i32, ptr %150, align 4, !dbg !1465, !tbaa !1110
  %152 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #39, !dbg !1465
  %153 = load ptr, ptr %4, align 8, !dbg !1465, !tbaa !1040
  %154 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %153) #39, !dbg !1465
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %151, ptr noundef %152, ptr noundef %154) #39, !dbg !1465
  br label %155, !dbg !1467

155:                                              ; preds = %149, %138, %128, %111
  call void @llvm.dbg.value(metadata ptr poison, metadata !1404, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr poison, metadata !1403, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1468
  call void @llvm.dbg.value(metadata i64 -1, metadata !1405, metadata !DIExpression()), !dbg !1407
  br label %165, !dbg !1469

156:                                              ; preds = %144
  %157 = load ptr, ptr %3, align 8, !dbg !1470, !tbaa !1040
  call void @llvm.dbg.value(metadata ptr %157, metadata !1403, metadata !DIExpression()), !dbg !1407
  %158 = load ptr, ptr %4, align 8, !dbg !1471, !tbaa !1040
  call void @llvm.dbg.value(metadata ptr %158, metadata !1404, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %145, metadata !1405, metadata !DIExpression()), !dbg !1407
  %159 = icmp slt i64 %145, 0, !dbg !1472
  br i1 %159, label %165, label %160, !dbg !1469

160:                                              ; preds = %156
  %161 = call i32 @fileno_unlocked(ptr noundef %157) #39, !dbg !1474
  %162 = call fastcc i1 @tac_seekable(i32 noundef %161, ptr noundef %158, i64 noundef %145), !dbg !1475
  call void @llvm.dbg.value(metadata i1 %162, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1407
  br label %165

163:                                              ; preds = %108
  %164 = call fastcc i1 @tac_seekable(i32 noundef %105, ptr noundef %104, i64 noundef %106), !dbg !1476
  br label %165, !dbg !1396

165:                                              ; preds = %163, %160, %156, %155
  %166 = phi i1 [ %164, %163 ], [ %162, %160 ], [ false, %156 ], [ false, %155 ]
  call void @llvm.dbg.value(metadata i1 %166, metadata !1366, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  br i1 %92, label %175, label %167, !dbg !1477

167:                                              ; preds = %165
  %168 = call i32 @close(i32 noundef %105) #39, !dbg !1479
  %169 = icmp eq i32 %168, 0, !dbg !1480
  br i1 %169, label %175, label %170, !dbg !1481

170:                                              ; preds = %167
  %171 = tail call ptr @__errno_location() #42, !dbg !1482
  %172 = load i32, ptr %171, align 4, !dbg !1482, !tbaa !1110
  %173 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1482
  %174 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %104) #39, !dbg !1482
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %172, ptr noundef %173, ptr noundef %174) #39, !dbg !1482
  call void @llvm.dbg.value(metadata i8 0, metadata !1366, metadata !DIExpression()), !dbg !1371
  br label %175, !dbg !1484

175:                                              ; preds = %98, %165, %167, %170
  %176 = phi i1 [ false, %98 ], [ %166, %165 ], [ false, %170 ], [ %166, %167 ], !dbg !1371
  %177 = and i1 %90, %176, !dbg !1356
  tail call void @llvm.dbg.value(metadata i1 %177, metadata !479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  %178 = add i64 %89, 1, !dbg !1485
  tail call void @llvm.dbg.value(metadata i64 %178, metadata !482, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1259
  %179 = getelementptr inbounds ptr, ptr %81, i64 %178, !dbg !1353
  %180 = load ptr, ptr %179, align 8, !dbg !1353, !tbaa !1040
  %181 = icmp eq ptr %180, null, !dbg !1355
  br i1 %181, label %.loopexit2, label %87, !dbg !1355, !llvm.loop !1486

182:                                              ; preds = %84
  %183 = call i32 @close(i32 noundef 0) #39, !dbg !1488
  %184 = icmp slt i32 %183, 0, !dbg !1489
  br i1 %184, label %185, label %188, !dbg !1490

185:                                              ; preds = %182
  %186 = tail call ptr @__errno_location() #42, !dbg !1491
  %187 = load i32, ptr %186, align 4, !dbg !1491, !tbaa !1110
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %187, ptr noundef nonnull @.str.10) #39, !dbg !1491
  tail call void @llvm.dbg.value(metadata i8 0, metadata !479, metadata !DIExpression()), !dbg !1259
  br label %188, !dbg !1493

188:                                              ; preds = %185, %182, %84
  %189 = phi i1 [ false, %185 ], [ %85, %182 ], [ %85, %84 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1259
  %190 = xor i1 %189, true, !dbg !1494
  %191 = zext i1 %190 to i32, !dbg !1494
  ret i32 %191, !dbg !1494
}

; Function Attrs: nounwind
declare !dbg !1495 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1498 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1499 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1502 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1508 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1511 ptr @re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @output(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !451 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !455, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1515
  %3 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1516
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 8192, i64 %3), metadata !457, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1515
  %4 = icmp eq ptr %0, null, !dbg !1517
  br i1 %4, label %20, label %5, !dbg !1518

5:                                                ; preds = %2
  %6 = sub i64 8192, %3, !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1515
  %7 = ptrtoint ptr %1 to i64, !dbg !1520
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %7, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1515
  %8 = ptrtoint ptr %0 to i64, !dbg !1520
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %7, i64 %8), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1515
  %9 = sub i64 %7, %8, !dbg !1520
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1515
  %10 = icmp ult i64 %9, %6, !dbg !1521
  br i1 %10, label %53, label %11, !dbg !1522

11:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1515
  %12 = getelementptr inbounds i8, ptr @output.buffer, i64 %3, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %12, metadata !1336, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata ptr %0, metadata !1343, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %6, metadata !1344, metadata !DIExpression()), !dbg !1525
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %12, ptr noundef nonnull align 1 %0, i64 noundef %6, i1 noundef false) #39, !dbg !1527
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %9, i64 %6), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1515
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %6), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1515
  %13 = load ptr, ptr @stdout, align 8, !dbg !1528, !tbaa !1040
  %14 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %13), !dbg !1528
  %15 = icmp eq i64 %14, 8192, !dbg !1530
  br i1 %15, label %16, label %40, !dbg !1531

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %0, i64 %6, !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !454, metadata !DIExpression()), !dbg !1515
  %18 = sub i64 %9, %6, !dbg !1533
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !456, metadata !DIExpression()), !dbg !1515
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1534, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1515
  %19 = icmp ult i64 %18, 8192, !dbg !1521
  br i1 %19, label %53, label %.preheader, !dbg !1522

.preheader:                                       ; preds = %16
  br label %34, !dbg !1522

20:                                               ; preds = %2
  %21 = load ptr, ptr @stdout, align 8, !dbg !1535, !tbaa !1040
  %22 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef %3, ptr noundef %21), !dbg !1535
  %23 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1536, !tbaa !1273
  %24 = icmp eq i64 %22, %23, !dbg !1537
  br i1 %24, label %59, label %25, !dbg !1538

25:                                               ; preds = %20
  %26 = tail call ptr @__errno_location() #42, !dbg !1539
  %27 = load i32, ptr %26, align 4, !dbg !1539, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %27, metadata !1542, metadata !DIExpression()), !dbg !1544
  %28 = load ptr, ptr @stdout, align 8, !dbg !1545, !tbaa !1040
  %29 = tail call i32 @fflush_unlocked(ptr noundef %28) #39, !dbg !1545
  %30 = load ptr, ptr @stdout, align 8, !dbg !1546, !tbaa !1040
  %31 = tail call i32 @fpurge(ptr noundef %30) #39, !dbg !1547
  %32 = load ptr, ptr @stdout, align 8, !dbg !1548, !tbaa !1040
  tail call void @clearerr_unlocked(ptr noundef %32) #39, !dbg !1548
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #39, !dbg !1549
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %27, ptr noundef %33) #39, !dbg !1549
  unreachable, !dbg !1549

34:                                               ; preds = %.preheader, %49
  %35 = phi ptr [ %50, %49 ], [ %17, %.preheader ]
  %36 = phi i64 [ %51, %49 ], [ %18, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !454, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !456, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr @output.buffer, metadata !1336, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata ptr %35, metadata !1343, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i64 8192, metadata !1344, metadata !DIExpression()), !dbg !1525
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) @output.buffer, ptr noundef nonnull align 1 dereferenceable(8192) %35, i64 noundef 8192, i1 noundef false) #39, !dbg !1527
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %36, i64 8192), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1515
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %35, i64 8192), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1515
  %37 = load ptr, ptr @stdout, align 8, !dbg !1528, !tbaa !1040
  %38 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %37), !dbg !1528
  %39 = icmp eq i64 %38, 8192, !dbg !1530
  br i1 %39, label %49, label %.loopexit, !dbg !1531

.loopexit:                                        ; preds = %34
  br label %40, !dbg !1550

40:                                               ; preds = %.loopexit, %11
  %41 = tail call ptr @__errno_location() #42, !dbg !1550
  %42 = load i32, ptr %41, align 4, !dbg !1550, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %42, metadata !1542, metadata !DIExpression()), !dbg !1552
  %43 = load ptr, ptr @stdout, align 8, !dbg !1553, !tbaa !1040
  %44 = tail call i32 @fflush_unlocked(ptr noundef %43) #39, !dbg !1553
  %45 = load ptr, ptr @stdout, align 8, !dbg !1554, !tbaa !1040
  %46 = tail call i32 @fpurge(ptr noundef %45) #39, !dbg !1555
  %47 = load ptr, ptr @stdout, align 8, !dbg !1556, !tbaa !1040
  tail call void @clearerr_unlocked(ptr noundef %47) #39, !dbg !1556
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #39, !dbg !1557
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %48) #39, !dbg !1557
  unreachable, !dbg !1557

49:                                               ; preds = %34
  %50 = getelementptr inbounds i8, ptr %35, i64 8192, !dbg !1532
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !454, metadata !DIExpression()), !dbg !1515
  %51 = add i64 %36, -8192, !dbg !1533
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !456, metadata !DIExpression()), !dbg !1515
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1534, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1515
  %52 = icmp ult i64 %51, 8192, !dbg !1521
  br i1 %52, label %.loopexit1, label %34, !dbg !1522, !llvm.loop !1558

.loopexit1:                                       ; preds = %49
  %.lcssa2 = phi ptr [ %50, %49 ], !dbg !1532
  %.lcssa = phi i64 [ %51, %49 ], !dbg !1533
  br label %53, !dbg !1561

53:                                               ; preds = %.loopexit1, %16, %5
  %54 = phi i64 [ %3, %5 ], [ 0, %16 ], [ 0, %.loopexit1 ], !dbg !1562
  %55 = phi i64 [ %9, %5 ], [ %18, %16 ], [ %.lcssa, %.loopexit1 ], !dbg !1515
  %56 = phi ptr [ %0, %5 ], [ %17, %16 ], [ %.lcssa2, %.loopexit1 ]
  %57 = getelementptr inbounds i8, ptr @output.buffer, i64 %54, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %57, metadata !1336, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata ptr %56, metadata !1343, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %55, metadata !1344, metadata !DIExpression()), !dbg !1563
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %57, ptr noundef nonnull align 1 %56, i64 noundef %55, i1 noundef false) #39, !dbg !1565
  %58 = add i64 %54, %55, !dbg !1566
  br label %59, !dbg !1567

59:                                               ; preds = %20, %53
  %60 = phi i64 [ %58, %53 ], [ 0, %20 ], !dbg !1515
  store i64 %60, ptr @output.bytes_in_buffer, align 8, !dbg !1515, !tbaa !1273
  ret void, !dbg !1567
}

; Function Attrs: nofree
declare !dbg !1568 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1572 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1576 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1580 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

declare !dbg !1583 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1586 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i1 @tac_seekable(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 !dbg !1587 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1591, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1592, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1593, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1624
  %4 = load ptr, ptr @separator, align 8, !dbg !1625, !tbaa !1040
  %5 = load i8, ptr %4, align 1, !dbg !1626, !tbaa !1119
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1598, metadata !DIExpression()), !dbg !1624
  %6 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1599, metadata !DIExpression()), !dbg !1624
  %7 = load i64, ptr @match_length, align 8, !dbg !1628, !tbaa !1273
  %8 = add i64 %7, -1, !dbg !1629
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1600, metadata !DIExpression()), !dbg !1624
  %9 = load i64, ptr @read_size, align 8, !dbg !1630, !tbaa !1273
  %10 = urem i64 %2, %9, !dbg !1631
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1601, metadata !DIExpression()), !dbg !1624
  %11 = icmp eq i64 %10, 0, !dbg !1632
  br i1 %11, label %21, label %12, !dbg !1634

12:                                               ; preds = %3
  %13 = sub nuw nsw i64 %2, %10, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1593, metadata !DIExpression()), !dbg !1624
  %14 = tail call i64 @lseek(i32 noundef %0, i64 noundef %13, i32 noundef 0) #39, !dbg !1637
  %15 = icmp slt i64 %14, 0, !dbg !1639
  br i1 %15, label %16, label %21, !dbg !1640

16:                                               ; preds = %12
  %17 = tail call ptr @__errno_location() #42, !dbg !1641
  %18 = load i32, ptr %17, align 4, !dbg !1641, !tbaa !1110
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1641
  %20 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1641
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %19, ptr noundef %20) #39, !dbg !1641
  br label %21, !dbg !1641

21:                                               ; preds = %12, %16, %3
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1593, metadata !DIExpression()), !dbg !1624
  %23 = load ptr, ptr @G_buffer, align 8, !dbg !1642, !tbaa !1040
  %24 = load i64, ptr @read_size, align 8, !dbg !1643, !tbaa !1273
  %25 = tail call i64 @read(i32 noundef %0, ptr noundef %23, i64 noundef %24) #39, !dbg !1644
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1596, metadata !DIExpression()), !dbg !1624
  %26 = icmp eq i64 %25, 0, !dbg !1645
  %27 = icmp ne i64 %22, 0, !dbg !1646
  %28 = and i1 %26, %27, !dbg !1646
  br i1 %28, label %.preheader1, label %48, !dbg !1647

.preheader1:                                      ; preds = %21
  br label %29, !dbg !1647

29:                                               ; preds = %.preheader1, %40
  %30 = phi i64 [ %42, %40 ], [ %22, %.preheader1 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1593, metadata !DIExpression()), !dbg !1624
  %31 = load i64, ptr @read_size, align 8, !dbg !1648, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1602, metadata !DIExpression()), !dbg !1649
  %32 = sub nsw i64 0, %31, !dbg !1650
  %33 = tail call i64 @lseek(i32 noundef %0, i64 noundef %32, i32 noundef 1) #39, !dbg !1652
  %34 = icmp slt i64 %33, 0, !dbg !1653
  br i1 %34, label %35, label %40, !dbg !1654

35:                                               ; preds = %29
  %36 = tail call ptr @__errno_location() #42, !dbg !1655
  %37 = load i32, ptr %36, align 4, !dbg !1655, !tbaa !1110
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1655
  %39 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1655
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %38, ptr noundef %39) #39, !dbg !1655
  br label %40, !dbg !1655

40:                                               ; preds = %35, %29
  %41 = load i64, ptr @read_size, align 8, !dbg !1656, !tbaa !1273
  %42 = sub i64 %30, %41, !dbg !1657
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1593, metadata !DIExpression()), !dbg !1624
  %43 = load ptr, ptr @G_buffer, align 8, !dbg !1642, !tbaa !1040
  %44 = tail call i64 @read(i32 noundef %0, ptr noundef %43, i64 noundef %41) #39, !dbg !1644
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1596, metadata !DIExpression()), !dbg !1624
  %45 = icmp eq i64 %44, 0, !dbg !1645
  %46 = icmp ne i64 %42, 0, !dbg !1646
  %47 = select i1 %45, i1 %46, i1 false, !dbg !1646
  br i1 %47, label %29, label %.loopexit, !dbg !1647, !llvm.loop !1658

.loopexit:                                        ; preds = %40
  %.lcssa19 = phi i64 [ %42, %40 ], !dbg !1657
  %.lcssa18 = phi i64 [ %44, %40 ], !dbg !1644
  br label %48, !dbg !1660

48:                                               ; preds = %.loopexit, %21
  %49 = phi i64 [ %25, %21 ], [ %.lcssa18, %.loopexit ]
  %50 = phi i64 [ %22, %21 ], [ %.lcssa19, %.loopexit ]
  br label %51, !dbg !1660

51:                                               ; preds = %48, %56
  %52 = phi i64 [ %63, %56 ], [ %49, %48 ], !dbg !1661
  %53 = phi i64 [ %61, %56 ], [ %50, %48 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !1593, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !1596, metadata !DIExpression()), !dbg !1624
  %54 = load i64, ptr @read_size, align 8, !dbg !1662, !tbaa !1273
  %55 = icmp eq i64 %52, %54, !dbg !1663
  br i1 %55, label %56, label %64, !dbg !1660

56:                                               ; preds = %51
  %57 = load ptr, ptr @G_buffer, align 8, !dbg !1664, !tbaa !1040
  %58 = tail call i64 @read(i32 noundef %0, ptr noundef %57, i64 noundef %52) #39, !dbg !1665
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1604, metadata !DIExpression()), !dbg !1666
  %59 = icmp eq i64 %58, 0, !dbg !1667
  %60 = tail call i64 @llvm.smax.i64(i64 %58, i64 0), !dbg !1669
  %61 = add nsw i64 %60, %53, !dbg !1669
  %62 = icmp sgt i64 %58, 0, !dbg !1669
  %63 = select i1 %59, i64 %52, i64 %58, !dbg !1669
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !1593, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1596, metadata !DIExpression()), !dbg !1624
  br i1 %62, label %51, label %64

64:                                               ; preds = %56, %51
  %65 = phi i64 [ %63, %56 ], [ %52, %51 ], !dbg !1661
  %66 = phi i64 [ %61, %56 ], [ %53, %51 ], !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1593, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1596, metadata !DIExpression()), !dbg !1624
  %67 = icmp slt i64 %65, 0, !dbg !1670
  br i1 %67, label %68, label %73, !dbg !1672

68:                                               ; preds = %64
  %69 = tail call ptr @__errno_location() #42, !dbg !1673
  %70 = load i32, ptr %69, align 4, !dbg !1673, !tbaa !1110
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1673
  %72 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1673
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %72) #39, !dbg !1673
  br label %219, !dbg !1675

73:                                               ; preds = %64
  %74 = load ptr, ptr @G_buffer, align 8, !dbg !1676, !tbaa !1040
  %75 = getelementptr inbounds i8, ptr %74, i64 %65, !dbg !1677
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1595, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1594, metadata !DIExpression()), !dbg !1624
  %76 = load i64, ptr @sentinel_length, align 8, !dbg !1678, !tbaa !1273
  %77 = icmp eq i64 %76, 0, !dbg !1678
  %78 = sub i64 1, %7, !dbg !1680
  %79 = select i1 %77, i64 0, i64 %78, !dbg !1680
  %80 = getelementptr inbounds i8, ptr %75, i64 %79, !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %80, metadata !1594, metadata !DIExpression()), !dbg !1624
  %81 = icmp eq i64 %8, 0
  br label %82, !dbg !1681

82:                                               ; preds = %209, %73
  %83 = phi i64 [ %76, %73 ], [ %217, %209 ]
  %84 = phi i1 [ true, %73 ], [ %210, %209 ]
  %85 = phi ptr [ %75, %73 ], [ %211, %209 ]
  %86 = phi ptr [ %80, %73 ], [ %218, %209 ]
  %87 = phi i64 [ %66, %73 ], [ %.lcssa5, %209 ]
  br label %88, !dbg !1681

88:                                               ; preds = %82, %188
  %89 = phi i64 [ %193, %188 ], [ %83, %82 ], !dbg !1682
  %90 = phi ptr [ %191, %188 ], [ %85, %82 ], !dbg !1624
  %91 = phi ptr [ %192, %188 ], [ %86, %82 ], !dbg !1624
  %92 = phi i64 [ %172, %188 ], [ %87, %82 ], !dbg !1624
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1593, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !1594, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1595, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1624
  %93 = icmp eq i64 %89, 0, !dbg !1683
  br i1 %93, label %94, label %.preheader, !dbg !1684

.preheader:                                       ; preds = %88
  br label %123, !dbg !1685

94:                                               ; preds = %88
  %95 = load ptr, ptr @G_buffer, align 8, !dbg !1687, !tbaa !1040
  %96 = ptrtoint ptr %91 to i64, !dbg !1688
  %97 = ptrtoint ptr %95 to i64, !dbg !1688
  %98 = sub i64 %96, %97, !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !1606, metadata !DIExpression()), !dbg !1689
  %99 = trunc i64 %98 to i32, !dbg !1690
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !1610, metadata !DIExpression()), !dbg !1689
  %100 = sub nsw i32 1, %99, !dbg !1691
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1611, metadata !DIExpression()), !dbg !1689
  %101 = icmp slt i32 %99, 0, !dbg !1692
  br i1 %101, label %102, label %104, !dbg !1694

102:                                              ; preds = %94
  %103 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #39, !dbg !1695
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %103) #39, !dbg !1695
  unreachable, !dbg !1695

104:                                              ; preds = %94
  %105 = icmp eq i32 %99, 0, !dbg !1696
  br i1 %105, label %139, label %106, !dbg !1698

106:                                              ; preds = %104
  %107 = add nsw i32 %99, -1, !dbg !1699
  %108 = tail call i32 @re_search(ptr noundef nonnull @compiled_separator, ptr noundef %95, i32 noundef %99, i32 noundef %107, i32 noundef %100, ptr noundef nonnull @regs) #39, !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1612, metadata !DIExpression()), !dbg !1689
  switch i32 %108, label %113 [
    i32 -1, label %109
    i32 -2, label %111
  ], !dbg !1701

109:                                              ; preds = %106
  %110 = load ptr, ptr @G_buffer, align 8, !dbg !1702, !tbaa !1040
  br label %139, !dbg !1701

111:                                              ; preds = %106
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #39, !dbg !1703
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %112) #39, !dbg !1703
  unreachable, !dbg !1703

113:                                              ; preds = %106
  %114 = load ptr, ptr @G_buffer, align 8, !dbg !1705, !tbaa !1040
  %115 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 1), align 8, !dbg !1707, !tbaa !1708
  %116 = load i32, ptr %115, align 4, !dbg !1710, !tbaa !1110
  %117 = sext i32 %116 to i64, !dbg !1711
  %118 = getelementptr inbounds i8, ptr %114, i64 %117, !dbg !1711
  tail call void @llvm.dbg.value(metadata ptr %118, metadata !1594, metadata !DIExpression()), !dbg !1624
  %119 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 2), align 8, !dbg !1712, !tbaa !1713
  %120 = load i32, ptr %119, align 4, !dbg !1714, !tbaa !1110
  %121 = sub nsw i32 %120, %116, !dbg !1715
  %122 = sext i32 %121 to i64, !dbg !1714
  store i64 %122, ptr @match_length, align 8, !dbg !1716, !tbaa !1273
  br label %135

123:                                              ; preds = %.preheader, %128
  %124 = phi ptr [ %125, %128 ], [ %91, %.preheader ], !dbg !1624
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !1594, metadata !DIExpression()), !dbg !1624
  %125 = getelementptr inbounds i8, ptr %124, i64 -1, !dbg !1717
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !1594, metadata !DIExpression()), !dbg !1624
  %126 = load i8, ptr %125, align 1, !dbg !1718, !tbaa !1119
  %127 = icmp eq i8 %126, %5, !dbg !1719
  br i1 %127, label %129, label %128, !dbg !1720

128:                                              ; preds = %123, %130
  br label %123, !dbg !1624, !llvm.loop !1721

129:                                              ; preds = %123
  br i1 %81, label %133, label %130, !dbg !1723

130:                                              ; preds = %129
  %131 = tail call i32 @strncmp(ptr noundef nonnull %124, ptr noundef nonnull %6, i64 noundef %8) #40, !dbg !1724
  %132 = icmp eq i32 %131, 0, !dbg !1724
  br i1 %132, label %133, label %128, !dbg !1685

133:                                              ; preds = %129, %130
  %.lcssa = phi ptr [ %125, %129 ], [ %125, %130 ], !dbg !1717
  %134 = load ptr, ptr @G_buffer, align 8, !dbg !1725, !tbaa !1040
  br label %135, !dbg !1725

135:                                              ; preds = %133, %113
  %136 = phi ptr [ %114, %113 ], [ %134, %133 ], !dbg !1725
  %137 = phi ptr [ %118, %113 ], [ %.lcssa, %133 ], !dbg !1726
  tail call void @llvm.dbg.value(metadata ptr %137, metadata !1594, metadata !DIExpression()), !dbg !1624
  %138 = icmp ult ptr %137, %136, !dbg !1727
  br i1 %138, label %139, label %199, !dbg !1728

139:                                              ; preds = %109, %104, %135
  %140 = phi ptr [ %136, %135 ], [ %110, %109 ], [ %95, %104 ]
  %141 = icmp eq i64 %92, 0, !dbg !1729
  br i1 %141, label %142, label %143, !dbg !1731

142:                                              ; preds = %139
  %.lcssa15 = phi ptr [ %140, %139 ]
  %.lcssa12 = phi ptr [ %90, %139 ], !dbg !1624
  tail call fastcc void @output(ptr noundef nonnull %.lcssa15, ptr noundef %.lcssa12), !dbg !1732
  br label %219, !dbg !1734

143:                                              ; preds = %139
  %144 = ptrtoint ptr %90 to i64, !dbg !1735
  %145 = ptrtoint ptr %140 to i64, !dbg !1735
  %146 = sub i64 %144, %145, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1596, metadata !DIExpression()), !dbg !1624
  %147 = load i64, ptr @read_size, align 8, !dbg !1736, !tbaa !1273
  %148 = icmp ugt i64 %146, %147, !dbg !1737
  br i1 %148, label %149, label %165, !dbg !1738

149:                                              ; preds = %143
  %150 = load i64, ptr @sentinel_length, align 8, !dbg !1739
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1618, metadata !DIExpression()), !dbg !1740
  %151 = load i64, ptr @G_buffer_size, align 8, !dbg !1741, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !1619, metadata !DIExpression()), !dbg !1740
  %152 = shl i64 %147, 1, !dbg !1742
  store i64 %152, ptr @read_size, align 8, !dbg !1742, !tbaa !1273
  %153 = shl i64 %147, 2, !dbg !1743
  %154 = or disjoint i64 %153, 2, !dbg !1744
  %155 = add i64 %154, %150, !dbg !1745
  store i64 %155, ptr @G_buffer_size, align 8, !dbg !1746, !tbaa !1273
  %156 = icmp ult i64 %155, %151, !dbg !1747
  br i1 %156, label %157, label %158, !dbg !1749

157:                                              ; preds = %149
  tail call void @xalloc_die() #41, !dbg !1750
  unreachable, !dbg !1750

158:                                              ; preds = %149
  %159 = tail call i64 @llvm.umax.i64(i64 %150, i64 1), !dbg !1739
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1618, metadata !DIExpression()), !dbg !1740
  %160 = sub i64 0, %159, !dbg !1751
  %161 = getelementptr inbounds i8, ptr %140, i64 %160, !dbg !1751
  %162 = tail call ptr @xrealloc(ptr noundef nonnull %161, i64 noundef %155) #45, !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %162, metadata !1613, metadata !DIExpression()), !dbg !1740
  %163 = getelementptr inbounds i8, ptr %162, i64 %159, !dbg !1753
  tail call void @llvm.dbg.value(metadata ptr %163, metadata !1613, metadata !DIExpression()), !dbg !1740
  store ptr %163, ptr @G_buffer, align 8, !dbg !1754, !tbaa !1040
  %164 = load i64, ptr @read_size, align 8, !dbg !1755, !tbaa !1273
  br label %165, !dbg !1757

165:                                              ; preds = %158, %143
  %166 = phi i64 [ %164, %158 ], [ %147, %143 ], !dbg !1755
  %167 = icmp ult i64 %92, %166, !dbg !1758
  br i1 %167, label %170, label %168, !dbg !1759

168:                                              ; preds = %165
  %169 = sub i64 %92, %166, !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !1593, metadata !DIExpression()), !dbg !1624
  br label %171, !dbg !1761

170:                                              ; preds = %165
  store i64 %92, ptr @read_size, align 8, !dbg !1762, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1624
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i64 [ %169, %168 ], [ 0, %170 ], !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !1593, metadata !DIExpression()), !dbg !1624
  %173 = tail call i64 @lseek(i32 noundef %0, i64 noundef %172, i32 noundef 0) #39, !dbg !1765
  %174 = icmp slt i64 %173, 0, !dbg !1767
  br i1 %174, label %175, label %180, !dbg !1768

175:                                              ; preds = %171
  %176 = tail call ptr @__errno_location() #42, !dbg !1769
  %177 = load i32, ptr %176, align 4, !dbg !1769, !tbaa !1110
  %178 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1769
  %179 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1769
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %177, ptr noundef %178, ptr noundef %179) #39, !dbg !1769
  br label %180, !dbg !1769

180:                                              ; preds = %175, %171
  %181 = load ptr, ptr @G_buffer, align 8, !dbg !1770, !tbaa !1040
  %182 = load i64, ptr @read_size, align 8, !dbg !1771, !tbaa !1273
  %183 = getelementptr inbounds i8, ptr %181, i64 %182, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %183, metadata !1773, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %181, metadata !1778, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %146, metadata !1779, metadata !DIExpression()), !dbg !1780
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %183, ptr noundef nonnull align 1 %181, i64 noundef %146, i1 noundef false) #39, !dbg !1782
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %181, i64 %146, i64 %182), metadata !1595, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1624
  %184 = load i64, ptr @sentinel_length, align 8, !dbg !1783, !tbaa !1273
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1594, metadata !DIExpression()), !dbg !1624
  %185 = tail call i64 @full_read(i32 noundef %0, ptr noundef %181, i64 noundef %182) #39, !dbg !1785
  %186 = load i64, ptr @read_size, align 8, !dbg !1787, !tbaa !1273
  %187 = icmp eq i64 %185, %186, !dbg !1788
  br i1 %187, label %188, label %194, !dbg !1789

188:                                              ; preds = %180
  %189 = icmp eq i64 %184, 0, !dbg !1783
  %190 = getelementptr inbounds i8, ptr %181, i64 %182, !dbg !1790
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %190, i64 %146), metadata !1595, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1624
  %191 = getelementptr inbounds i8, ptr %190, i64 %146, !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr %191, metadata !1595, metadata !DIExpression()), !dbg !1624
  %192 = select i1 %189, ptr %191, ptr %190
  tail call void @llvm.dbg.value(metadata ptr %192, metadata !1594, metadata !DIExpression()), !dbg !1624
  %193 = load i64, ptr @sentinel_length, align 8, !dbg !1682, !tbaa !1273
  br label %88, !dbg !1789, !llvm.loop !1792

194:                                              ; preds = %180
  %195 = tail call ptr @__errno_location() #42, !dbg !1794
  %196 = load i32, ptr %195, align 4, !dbg !1794, !tbaa !1110
  %197 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1794
  %198 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1794
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %196, ptr noundef %197, ptr noundef %198) #39, !dbg !1794
  br label %219, !dbg !1796

199:                                              ; preds = %135
  %.lcssa11 = phi ptr [ %90, %135 ], !dbg !1624
  %.lcssa5 = phi i64 [ %92, %135 ], !dbg !1624
  %.lcssa2 = phi ptr [ %137, %135 ], !dbg !1726
  %200 = load i1, ptr @separator_ends_record, align 1, !dbg !1797
  br i1 %200, label %206, label %201, !dbg !1798

201:                                              ; preds = %199
  %202 = load i64, ptr @match_length, align 8, !dbg !1799, !tbaa !1273
  %203 = getelementptr inbounds i8, ptr %.lcssa2, i64 %202, !dbg !1800
  tail call void @llvm.dbg.value(metadata ptr %203, metadata !1620, metadata !DIExpression()), !dbg !1801
  %204 = icmp eq ptr %203, %.lcssa11
  %205 = select i1 %84, i1 %204, i1 false, !dbg !1802
  br i1 %205, label %209, label %206, !dbg !1802

206:                                              ; preds = %199, %201
  %207 = phi ptr [ %203, %201 ], [ %.lcssa2, %199 ]
  %208 = phi i1 [ false, %201 ], [ %84, %199 ]
  tail call fastcc void @output(ptr noundef %207, ptr noundef %.lcssa11), !dbg !1804
  br label %209, !dbg !1805

209:                                              ; preds = %206, %201
  %210 = phi i1 [ false, %201 ], [ %208, %206 ]
  %211 = phi ptr [ %.lcssa11, %201 ], [ %207, %206 ], !dbg !1804
  tail call void @llvm.dbg.value(metadata ptr %211, metadata !1595, metadata !DIExpression()), !dbg !1624
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1624
  %212 = load i64, ptr @sentinel_length, align 8, !dbg !1805, !tbaa !1273
  %213 = icmp eq i64 %212, 0, !dbg !1807
  %214 = load i64, ptr @match_length, align 8, !dbg !1808
  %215 = sub i64 1, %214, !dbg !1808
  %216 = getelementptr inbounds i8, ptr %.lcssa2, i64 %215, !dbg !1808
  %217 = select i1 %213, i64 0, i64 1, !dbg !1808
  %218 = select i1 %213, ptr %.lcssa2, ptr %216, !dbg !1808
  br label %82, !dbg !1681, !llvm.loop !1792

219:                                              ; preds = %194, %142, %68
  %220 = phi i1 [ false, %68 ], [ true, %142 ], [ false, %194 ], !dbg !1624
  ret i1 %220, !dbg !1809
}

declare !dbg !1810 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

declare !dbg !1811 i32 @re_search(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1815 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @temp_stream(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #10 !dbg !490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !551, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !552, metadata !DIExpression()), !dbg !1818
  %3 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1819, !tbaa !1040
  %4 = icmp eq ptr %3, null, !dbg !1820
  br i1 %4, label %5, label %102, !dbg !1821

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr null, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr null, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 128, metadata !1829, metadata !DIExpression()), !dbg !1830
  %6 = tail call dereferenceable_or_null(128) ptr @malloc(i64 128), !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !1822
  %7 = icmp eq ptr %6, null, !dbg !1835
  br i1 %7, label %8, label %63, !dbg !1836

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #42, !dbg !1837
  br label %59, !dbg !1836

10:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %6, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 256, metadata !1829, metadata !DIExpression()), !dbg !1830
  %11 = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %6, i64 noundef 256) #45, !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !553, metadata !DIExpression()), !dbg !1822
  %12 = icmp eq ptr %11, null, !dbg !1835
  br i1 %12, label %59, label %13, !dbg !1836, !llvm.loop !1839

13:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression()), !dbg !1822
  %14 = tail call i32 @path_search(ptr noundef nonnull %11, i64 noundef 256, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #39, !dbg !1842
  %15 = icmp eq i32 %14, 0, !dbg !1844
  br i1 %15, label %75, label %16, !dbg !1845

16:                                               ; preds = %13
  %17 = tail call ptr @__errno_location() #42, !dbg !1846
  %18 = load i32, ptr %17, align 4, !dbg !1846, !tbaa !1110
  %19 = icmp eq i32 %18, 22, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 256, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br i1 %19, label %20, label %70, !dbg !1849

20:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %11, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 512, metadata !1829, metadata !DIExpression()), !dbg !1830
  %21 = tail call dereferenceable_or_null(512) ptr @realloc(ptr noundef nonnull %11, i64 noundef 512) #45, !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !553, metadata !DIExpression()), !dbg !1822
  %22 = icmp eq ptr %21, null, !dbg !1835
  br i1 %22, label %59, label %23, !dbg !1836, !llvm.loop !1839

23:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression()), !dbg !1822
  %24 = tail call i32 @path_search(ptr noundef nonnull %21, i64 noundef 512, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #39, !dbg !1842
  %25 = icmp eq i32 %24, 0, !dbg !1844
  br i1 %25, label %75, label %26, !dbg !1845

26:                                               ; preds = %23
  %27 = tail call ptr @__errno_location() #42, !dbg !1846
  %28 = load i32, ptr %27, align 4, !dbg !1846, !tbaa !1110
  %29 = icmp eq i32 %28, 22, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 512, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br i1 %29, label %30, label %70, !dbg !1849

30:                                               ; preds = %26
  tail call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %21, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 1024, metadata !1829, metadata !DIExpression()), !dbg !1830
  %31 = tail call dereferenceable_or_null(1024) ptr @realloc(ptr noundef nonnull %21, i64 noundef 1024) #45, !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !553, metadata !DIExpression()), !dbg !1822
  %32 = icmp eq ptr %31, null, !dbg !1835
  br i1 %32, label %59, label %33, !dbg !1836, !llvm.loop !1839

33:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression()), !dbg !1822
  %34 = tail call i32 @path_search(ptr noundef nonnull %31, i64 noundef 1024, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #39, !dbg !1842
  %35 = icmp eq i32 %34, 0, !dbg !1844
  br i1 %35, label %75, label %36, !dbg !1845

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #42, !dbg !1846
  %38 = load i32, ptr %37, align 4, !dbg !1846, !tbaa !1110
  %39 = icmp eq i32 %38, 22, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 1024, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br i1 %39, label %40, label %70, !dbg !1849

40:                                               ; preds = %36
  tail call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %31, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 2048, metadata !1829, metadata !DIExpression()), !dbg !1830
  %41 = tail call dereferenceable_or_null(2048) ptr @realloc(ptr noundef nonnull %31, i64 noundef 2048) #45, !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %41, metadata !553, metadata !DIExpression()), !dbg !1822
  %42 = icmp eq ptr %41, null, !dbg !1835
  br i1 %42, label %59, label %43, !dbg !1836, !llvm.loop !1839

43:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression()), !dbg !1822
  %44 = tail call i32 @path_search(ptr noundef nonnull %41, i64 noundef 2048, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #39, !dbg !1842
  %45 = icmp eq i32 %44, 0, !dbg !1844
  br i1 %45, label %75, label %46, !dbg !1845

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #42, !dbg !1846
  %48 = load i32, ptr %47, align 4, !dbg !1846, !tbaa !1110
  %49 = icmp eq i32 %48, 22, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 2048, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br i1 %49, label %50, label %70, !dbg !1849

50:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %41, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %41, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 4096, metadata !1829, metadata !DIExpression()), !dbg !1830
  %51 = tail call dereferenceable_or_null(4096) ptr @realloc(ptr noundef nonnull %41, i64 noundef 4096) #45, !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %51, metadata !553, metadata !DIExpression()), !dbg !1822
  %52 = icmp eq ptr %51, null, !dbg !1835
  br i1 %52, label %59, label %53, !dbg !1836, !llvm.loop !1839

53:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression()), !dbg !1822
  %54 = tail call i32 @path_search(ptr noundef nonnull %51, i64 noundef 4096, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #39, !dbg !1842
  %55 = icmp eq i32 %54, 0, !dbg !1844
  br i1 %55, label %75, label %56, !dbg !1845

56:                                               ; preds = %53
  %57 = tail call ptr @__errno_location() #42, !dbg !1846
  %58 = load i32, ptr %57, align 4, !dbg !1846, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i64 4096, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br label %70, !dbg !1849

59:                                               ; preds = %10, %20, %30, %40, %50, %8
  %60 = phi ptr [ %9, %8 ], [ %67, %10 ], [ %17, %20 ], [ %27, %30 ], [ %37, %40 ], [ %47, %50 ], !dbg !1837
  %61 = load i32, ptr %60, align 4, !dbg !1837, !tbaa !1110
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1837
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %61, ptr noundef %62) #39, !dbg !1837
  br label %123, !dbg !1850

63:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression()), !dbg !1822
  %64 = tail call i32 @path_search(ptr noundef nonnull %6, i64 noundef 128, ptr noundef null, ptr noundef nonnull @.str.1.3, i1 noundef true) #39, !dbg !1842
  %65 = icmp eq i32 %64, 0, !dbg !1844
  br i1 %65, label %75, label %66, !dbg !1845

66:                                               ; preds = %63
  %67 = tail call ptr @__errno_location() #42, !dbg !1846
  %68 = load i32, ptr %67, align 4, !dbg !1846, !tbaa !1110
  %69 = icmp eq i32 %68, 22, !dbg !1848
  tail call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br i1 %69, label %10, label %70, !dbg !1849

70:                                               ; preds = %56, %46, %36, %26, %16, %66
  %71 = phi i32 [ %68, %66 ], [ %18, %16 ], [ %28, %26 ], [ %38, %36 ], [ %48, %46 ], [ %58, %56 ], !dbg !1846
  %72 = icmp eq i32 %71, 22, !dbg !1851
  %73 = select i1 %72, i32 36, i32 %71, !dbg !1851
  %74 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1851
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %73, ptr noundef %74) #39, !dbg !1851
  br label %123, !dbg !1853

75:                                               ; preds = %53, %43, %33, %23, %13, %63
  %76 = phi ptr [ %6, %63 ], [ %11, %13 ], [ %21, %23 ], [ %31, %33 ], [ %41, %43 ], [ %51, %53 ]
  store ptr %76, ptr @temp_stream.tempfile, align 8, !dbg !1854, !tbaa !1040
  %77 = tail call i32 @mkstemp_safer(ptr noundef nonnull %76) #39, !dbg !1855
  tail call void @llvm.dbg.value(metadata i32 %77, metadata !557, metadata !DIExpression()), !dbg !1822
  %78 = icmp slt i32 %77, 0, !dbg !1856
  br i1 %78, label %79, label %85, !dbg !1858

79:                                               ; preds = %75
  %80 = tail call ptr @__errno_location() #42, !dbg !1859
  %81 = load i32, ptr %80, align 4, !dbg !1859, !tbaa !1110
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.27, i32 noundef 5) #39, !dbg !1859
  %83 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1859, !tbaa !1040
  %84 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %83) #39, !dbg !1859
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %81, ptr noundef %82, ptr noundef %84) #39, !dbg !1859
  br label %97, !dbg !1861

85:                                               ; preds = %75
  %86 = tail call noalias ptr @fdopen(i32 noundef %77, ptr noundef nonnull @.str.3.28) #39, !dbg !1862
  store ptr %86, ptr @temp_stream.tmp_fp, align 8, !dbg !1863, !tbaa !1040
  %87 = icmp eq ptr %86, null, !dbg !1864
  br i1 %87, label %88, label %99, !dbg !1865

88:                                               ; preds = %85
  %89 = tail call ptr @__errno_location() #42, !dbg !1866
  %90 = load i32, ptr %89, align 4, !dbg !1866, !tbaa !1110
  %91 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.29, i32 noundef 5) #39, !dbg !1866
  %92 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1866, !tbaa !1040
  %93 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %92) #39, !dbg !1866
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %90, ptr noundef %91, ptr noundef %93) #39, !dbg !1866
  %94 = tail call i32 @close(i32 noundef %77) #39, !dbg !1867
  %95 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1868, !tbaa !1040
  %96 = tail call i32 @unlink(ptr noundef %95) #39, !dbg !1869
  br label %97, !dbg !1869

97:                                               ; preds = %88, %79
  call void @llvm.dbg.label(metadata !558), !dbg !1870
  %98 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1871, !tbaa !1040
  tail call void @free(ptr noundef %98) #39, !dbg !1872
  store ptr null, ptr @temp_stream.tempfile, align 8, !dbg !1873, !tbaa !1040
  br label %123, !dbg !1874

99:                                               ; preds = %85
  %100 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1875, !tbaa !1040
  call void @llvm.dbg.value(metadata ptr %100, metadata !1876, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %86, metadata !1881, metadata !DIExpression()), !dbg !1882
  %101 = tail call i32 @unlink(ptr noundef %100) #39, !dbg !1884
  br label %118

102:                                              ; preds = %2
  %103 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1885, !tbaa !1040
  tail call void @clearerr_unlocked(ptr noundef %103) #39, !dbg !1885
  %104 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1887, !tbaa !1040
  %105 = tail call i32 @rpl_fseeko(ptr noundef %104, i64 noundef 0, i32 noundef 0) #39, !dbg !1889
  %106 = icmp slt i32 %105, 0, !dbg !1890
  br i1 %106, label %112, label %107, !dbg !1891

107:                                              ; preds = %102
  %108 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1892, !tbaa !1040
  %109 = tail call i32 @fileno_unlocked(ptr noundef %108) #39, !dbg !1892
  %110 = tail call i32 @ftruncate(i32 noundef %109, i64 noundef 0) #39, !dbg !1893
  %111 = icmp slt i32 %110, 0, !dbg !1894
  br i1 %111, label %112, label %118, !dbg !1895

112:                                              ; preds = %107, %102
  %113 = tail call ptr @__errno_location() #42, !dbg !1896
  %114 = load i32, ptr %113, align 4, !dbg !1896, !tbaa !1110
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.30, i32 noundef 5) #39, !dbg !1896
  %116 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1896, !tbaa !1040
  %117 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %116) #39, !dbg !1896
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %114, ptr noundef %115, ptr noundef %117) #39, !dbg !1896
  br label %123, !dbg !1898

118:                                              ; preds = %99, %107
  %119 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1899, !tbaa !1040
  store ptr %119, ptr %0, align 8, !dbg !1900, !tbaa !1040
  %120 = icmp eq ptr %1, null, !dbg !1901
  br i1 %120, label %123, label %121, !dbg !1903

121:                                              ; preds = %118
  %122 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1904, !tbaa !1040
  store ptr %122, ptr %1, align 8, !dbg !1905, !tbaa !1040
  br label %123, !dbg !1906

123:                                              ; preds = %97, %59, %70, %118, %121, %112
  %124 = phi i1 [ false, %112 ], [ true, %121 ], [ true, %118 ], [ false, %70 ], [ false, %59 ], [ false, %97 ], !dbg !1818
  ret i1 %124, !dbg !1907
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1908 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare !dbg !1909 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1912 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1915 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !1919 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !1922 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1924, metadata !DIExpression()), !dbg !1925
  store ptr %0, ptr @file_name, align 8, !dbg !1926, !tbaa !1040
  ret void, !dbg !1927
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #18 !dbg !1928 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1932, metadata !DIExpression()), !dbg !1933
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1934, !tbaa !1935
  ret void, !dbg !1937
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1938 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1943, !tbaa !1040
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1944
  %3 = icmp eq i32 %2, 0, !dbg !1945
  br i1 %3, label %22, label %4, !dbg !1946

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1947, !tbaa !1935, !range !1948, !noundef !1078
  %6 = icmp eq i8 %5, 0, !dbg !1947
  br i1 %6, label %11, label %7, !dbg !1949

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1950
  %9 = load i32, ptr %8, align 4, !dbg !1950, !tbaa !1110
  %10 = icmp eq i32 %9, 32, !dbg !1951
  br i1 %10, label %22, label %11, !dbg !1952

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1.37, i32 noundef 5) #39, !dbg !1953
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1940, metadata !DIExpression()), !dbg !1954
  %13 = load ptr, ptr @file_name, align 8, !dbg !1955, !tbaa !1040
  %14 = icmp eq ptr %13, null, !dbg !1955
  %15 = tail call ptr @__errno_location() #42, !dbg !1957
  %16 = load i32, ptr %15, align 4, !dbg !1957, !tbaa !1110
  br i1 %14, label %19, label %17, !dbg !1958

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1959
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.38, ptr noundef %18, ptr noundef %12) #39, !dbg !1959
  br label %20, !dbg !1959

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.39, ptr noundef %12) #39, !dbg !1960
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1961, !tbaa !1110
  tail call void @_exit(i32 noundef %21) #41, !dbg !1962
  unreachable, !dbg !1962

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1963, !tbaa !1040
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1965
  %25 = icmp eq i32 %24, 0, !dbg !1966
  br i1 %25, label %28, label %26, !dbg !1967

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1968, !tbaa !1110
  tail call void @_exit(i32 noundef %27) #41, !dbg !1969
  unreachable, !dbg !1969

28:                                               ; preds = %22
  ret void, !dbg !1970
}

; Function Attrs: noreturn
declare !dbg !1971 void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #20 !dbg !1972 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1976, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1977, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1978, metadata !DIExpression()), !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1979, metadata !DIExpression(DW_OP_deref)), !dbg !1980
  tail call fastcc void @flush_stdout(), !dbg !1981
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1982, !tbaa !1040
  %7 = icmp eq ptr %6, null, !dbg !1982
  br i1 %7, label %9, label %8, !dbg !1984

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1985
  br label %13, !dbg !1985

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1986, !tbaa !1040
  %11 = tail call ptr @getprogname() #40, !dbg !1986
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef %11) #39, !dbg !1986
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1988, !tbaa.struct !1989
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1988
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1988
  ret void, !dbg !1990
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1991 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i32 1, metadata !1995, metadata !DIExpression()), !dbg !1998
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2001
  %2 = icmp slt i32 %1, 0, !dbg !2002
  br i1 %2, label %6, label %3, !dbg !2003

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2004, !tbaa !1040
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2004
  br label %6, !dbg !2004

6:                                                ; preds = %3, %0
  ret void, !dbg !2005
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2006 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2012
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2008, metadata !DIExpression()), !dbg !2013
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2009, metadata !DIExpression()), !dbg !2013
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2010, metadata !DIExpression()), !dbg !2013
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2011, metadata !DIExpression(DW_OP_deref)), !dbg !2013
  %7 = load ptr, ptr @stderr, align 8, !dbg !2014, !tbaa !1040
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2015, !noalias !2059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2063
  call void @llvm.dbg.value(metadata ptr %7, metadata !2055, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr %2, metadata !2056, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata ptr poison, metadata !2057, metadata !DIExpression(DW_OP_deref)), !dbg !2064
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !2015
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2015, !noalias !2059
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2065, !tbaa !1110
  %10 = add i32 %9, 1, !dbg !2065
  store i32 %10, ptr @error_message_count, align 4, !dbg !2065, !tbaa !1110
  %11 = icmp eq i32 %1, 0, !dbg !2066
  br i1 %11, label %21, label %12, !dbg !2068

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2069, metadata !DIExpression(), metadata !2012, metadata ptr %5, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %1, metadata !2072, metadata !DIExpression()), !dbg !2077
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2079
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2080
  call void @llvm.dbg.value(metadata ptr %13, metadata !2073, metadata !DIExpression()), !dbg !2077
  %14 = icmp eq ptr %13, null, !dbg !2081
  br i1 %14, label %15, label %17, !dbg !2083

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.50, ptr noundef nonnull @.str.5.51, i32 noundef 5) #39, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %16, metadata !2073, metadata !DIExpression()), !dbg !2077
  br label %17, !dbg !2085

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2077
  call void @llvm.dbg.value(metadata ptr %18, metadata !2073, metadata !DIExpression()), !dbg !2077
  %19 = load ptr, ptr @stderr, align 8, !dbg !2086, !tbaa !1040
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.52, ptr noundef %18) #39, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2087
  br label %21, !dbg !2088

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2089, !tbaa !1040
  call void @llvm.dbg.value(metadata i32 10, metadata !2090, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata ptr %22, metadata !2096, metadata !DIExpression()), !dbg !2097
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2099
  %24 = load ptr, ptr %23, align 8, !dbg !2099, !tbaa !2100
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2099
  %26 = load ptr, ptr %25, align 8, !dbg !2099, !tbaa !2102
  %27 = icmp ult ptr %24, %26, !dbg !2099
  br i1 %27, label %30, label %28, !dbg !2099, !prof !2103

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !2099
  br label %32, !dbg !2099

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2099
  store ptr %31, ptr %23, align 8, !dbg !2099, !tbaa !2100
  store i8 10, ptr %24, align 1, !dbg !2099, !tbaa !1119
  br label %32, !dbg !2099

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2104, !tbaa !1040
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !2104
  %35 = icmp eq i32 %0, 0, !dbg !2105
  br i1 %35, label %37, label %36, !dbg !2107

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !2108
  unreachable, !dbg !2108

37:                                               ; preds = %32
  ret void, !dbg !2109
}

declare !dbg !2110 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2113 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2116 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2119 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2122 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2129, metadata !DIExpression(), metadata !2130, metadata ptr %4, metadata !DIExpression()), !dbg !2131
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2128, metadata !DIExpression()), !dbg !2131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !2132
  call void @llvm.va_start(ptr nonnull %4), !dbg !2133
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2134, !tbaa.struct !1989
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2134
  call void @llvm.va_end(ptr nonnull %4), !dbg !2135
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !2136
  ret void, !dbg !2136
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #20 !dbg !593 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !609, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !610, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !611, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !612, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !613, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !614, metadata !DIExpression(DW_OP_deref)), !dbg !2137
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2138, !tbaa !1110
  %9 = icmp eq i32 %8, 0, !dbg !2138
  br i1 %9, label %24, label %10, !dbg !2140

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2141, !tbaa !1110
  %12 = icmp eq i32 %11, %3, !dbg !2144
  br i1 %12, label %13, label %23, !dbg !2145

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2146, !tbaa !1040
  %15 = icmp eq ptr %14, %2, !dbg !2147
  br i1 %15, label %37, label %16, !dbg !2148

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2149
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2150
  br i1 %19, label %20, label %23, !dbg !2150

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2151
  %22 = icmp eq i32 %21, 0, !dbg !2152
  br i1 %22, label %37, label %23, !dbg !2153

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2154, !tbaa !1040
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2155, !tbaa !1110
  br label %24, !dbg !2156

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2157
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2158, !tbaa !1040
  %26 = icmp eq ptr %25, null, !dbg !2158
  br i1 %26, label %28, label %27, !dbg !2160

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !2161
  br label %32, !dbg !2161

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2162, !tbaa !1040
  %30 = tail call ptr @getprogname() #40, !dbg !2162
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.55, ptr noundef %30) #39, !dbg !2162
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2164, !tbaa !1040
  %34 = icmp eq ptr %2, null, !dbg !2164
  %35 = select i1 %34, ptr @.str.3.56, ptr @.str.2.57, !dbg !2164
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !2164
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2165, !tbaa.struct !1989
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2165
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2165
  br label %37, !dbg !2166

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2166
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2167 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2177
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2176, metadata !DIExpression(), metadata !2177, metadata ptr %6, metadata !DIExpression()), !dbg !2178
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2178
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression()), !dbg !2178
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2173, metadata !DIExpression()), !dbg !2178
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2174, metadata !DIExpression()), !dbg !2178
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2179
  call void @llvm.va_start(ptr nonnull %6), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2181, !tbaa.struct !1989
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2181
  call void @llvm.va_end(ptr nonnull %6), !dbg !2182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2183
  ret void, !dbg !2183
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2184 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2222, metadata !DIExpression()), !dbg !2223
  tail call void @__fpurge(ptr noundef nonnull %0) #39, !dbg !2224
  ret i32 0, !dbg !2225
}

; Function Attrs: nounwind
declare !dbg !2226 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2230 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2268, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2270, metadata !DIExpression()), !dbg !2274
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2275
  %5 = load ptr, ptr %4, align 8, !dbg !2275, !tbaa !2276
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2277
  %7 = load ptr, ptr %6, align 8, !dbg !2277, !tbaa !2278
  %8 = icmp eq ptr %5, %7, !dbg !2279
  br i1 %8, label %9, label %27, !dbg !2280

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2281
  %11 = load ptr, ptr %10, align 8, !dbg !2281, !tbaa !2100
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2282
  %13 = load ptr, ptr %12, align 8, !dbg !2282, !tbaa !2283
  %14 = icmp eq ptr %11, %13, !dbg !2284
  br i1 %14, label %15, label %27, !dbg !2285

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2286
  %17 = load ptr, ptr %16, align 8, !dbg !2286, !tbaa !2287
  %18 = icmp eq ptr %17, null, !dbg !2288
  br i1 %18, label %19, label %27, !dbg !2289

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2290
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2291
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2271, metadata !DIExpression()), !dbg !2292
  %22 = icmp eq i64 %21, -1, !dbg !2293
  br i1 %22, label %29, label %23, !dbg !2295

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2296, !tbaa !2297
  %25 = and i32 %24, -17, !dbg !2296
  store i32 %25, ptr %0, align 8, !dbg !2296, !tbaa !2297
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2298
  store i64 %21, ptr %26, align 8, !dbg !2299, !tbaa !2300
  br label %29, !dbg !2301

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2302
  br label %29, !dbg !2303

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2274
  ret i32 %30, !dbg !2304
}

; Function Attrs: nofree nounwind
declare !dbg !2305 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2308 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @full_read(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2311 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2317, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2318, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2319, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2320, metadata !DIExpression()), !dbg !2323
  %4 = icmp sgt i64 %2, 0, !dbg !2324
  br i1 %4, label %.preheader, label %20, !dbg !2325

.preheader:                                       ; preds = %3
  br label %5, !dbg !2326

5:                                                ; preds = %.preheader, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %.preheader ]
  %7 = phi ptr [ %17, %15 ], [ %1, %.preheader ]
  %8 = phi i64 [ %16, %15 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !2318, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2320, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2319, metadata !DIExpression()), !dbg !2323
  %9 = tail call i64 @safe_read(i32 noundef %0, ptr noundef %7, i64 noundef %6) #39, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2321, metadata !DIExpression()), !dbg !2328
  %10 = icmp slt i64 %9, 0, !dbg !2329
  br i1 %10, label %.loopexit, label %11, !dbg !2326

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2331
  br i1 %12, label %13, label %15, !dbg !2333

13:                                               ; preds = %11
  %.lcssa1 = phi i64 [ %8, %11 ]
  %14 = tail call ptr @__errno_location() #42, !dbg !2334
  store i32 0, ptr %14, align 4, !dbg !2336, !tbaa !1110
  br label %20, !dbg !2337

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, %8, !dbg !2338
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !2319, metadata !DIExpression()), !dbg !2323
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2339
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2320, metadata !DIExpression()), !dbg !2323
  %18 = sub nsw i64 %6, %9, !dbg !2340
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2318, metadata !DIExpression()), !dbg !2323
  %19 = icmp sgt i64 %18, 0, !dbg !2324
  br i1 %19, label %5, label %.loopexit, !dbg !2325

.loopexit:                                        ; preds = %5, %15
  %.ph = phi i64 [ %8, %5 ], [ %16, %15 ]
  br label %20, !dbg !2341

20:                                               ; preds = %.loopexit, %3, %13
  %21 = phi i64 [ %.lcssa1, %13 ], [ 0, %3 ], [ %.ph, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2319, metadata !DIExpression()), !dbg !2323
  ret i64 %21, !dbg !2341
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2342 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2345, !tbaa !1040
  ret ptr %1, !dbg !2346
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2347 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2349, metadata !DIExpression()), !dbg !2352
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2350, metadata !DIExpression()), !dbg !2352
  %3 = icmp eq ptr %2, null, !dbg !2354
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2354
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2354
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2351, metadata !DIExpression()), !dbg !2352
  %6 = ptrtoint ptr %5 to i64, !dbg !2355
  %7 = ptrtoint ptr %0 to i64, !dbg !2355
  %8 = sub i64 %6, %7, !dbg !2355
  %9 = icmp sgt i64 %8, 6, !dbg !2357
  br i1 %9, label %10, label %19, !dbg !2358

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %11, metadata !2360, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 7, metadata !2366, metadata !DIExpression()), !dbg !2367
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.72, i64 7), !dbg !2369
  %13 = icmp eq i32 %12, 0, !dbg !2370
  br i1 %13, label %14, label %19, !dbg !2371

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2349, metadata !DIExpression()), !dbg !2352
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.73, i64 noundef 3) #40, !dbg !2372
  %16 = icmp eq i32 %15, 0, !dbg !2375
  %17 = select i1 %16, i64 3, i64 0, !dbg !2376
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2376
  br label %19, !dbg !2376

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2352
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2351, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2349, metadata !DIExpression()), !dbg !2352
  store ptr %20, ptr @program_name, align 8, !dbg !2377, !tbaa !1040
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2378, !tbaa !1040
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2379, !tbaa !1040
  ret void, !dbg !2380
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2381 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !651 {
  %3 = alloca i32, align 4, !DIAssignID !2382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !661, metadata !DIExpression(), metadata !2382, metadata ptr %3, metadata !DIExpression()), !dbg !2383
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !666, metadata !DIExpression(), metadata !2384, metadata ptr %4, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !658, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !659, metadata !DIExpression()), !dbg !2383
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2385
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !660, metadata !DIExpression()), !dbg !2383
  %6 = icmp eq ptr %5, %0, !dbg !2386
  br i1 %6, label %7, label %14, !dbg !2388

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2389
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %4, metadata !2391, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata ptr %4, metadata !2399, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i64 8, metadata !2405, metadata !DIExpression()), !dbg !2406
  store i64 0, ptr %4, align 8, !dbg !2408
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2409
  %9 = icmp eq i64 %8, 2, !dbg !2411
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2412
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2383
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2413
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2383
  ret ptr %15, !dbg !2413
}

; Function Attrs: nounwind
declare !dbg !2414 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2420 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2425, metadata !DIExpression()), !dbg !2428
  %2 = tail call ptr @__errno_location() #42, !dbg !2429
  %3 = load i32, ptr %2, align 4, !dbg !2429, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2426, metadata !DIExpression()), !dbg !2428
  %4 = icmp eq ptr %0, null, !dbg !2430
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2430
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2431
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2427, metadata !DIExpression()), !dbg !2428
  store i32 %3, ptr %2, align 4, !dbg !2432, !tbaa !1110
  ret ptr %6, !dbg !2433
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2434 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2440, metadata !DIExpression()), !dbg !2441
  %2 = icmp eq ptr %0, null, !dbg !2442
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2442
  %4 = load i32, ptr %3, align 8, !dbg !2443, !tbaa !2444
  ret i32 %4, !dbg !2446
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2447 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2451, metadata !DIExpression()), !dbg !2453
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2452, metadata !DIExpression()), !dbg !2453
  %3 = icmp eq ptr %0, null, !dbg !2454
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2454
  store i32 %1, ptr %4, align 8, !dbg !2455, !tbaa !2444
  ret void, !dbg !2456
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2457 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2461, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2462, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2463, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2464, metadata !DIExpression()), !dbg !2469
  %4 = icmp eq ptr %0, null, !dbg !2470
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2470
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2471
  %7 = lshr i8 %1, 5, !dbg !2472
  %8 = zext nneg i8 %7 to i64, !dbg !2472
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2473
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2465, metadata !DIExpression()), !dbg !2469
  %10 = and i8 %1, 31, !dbg !2474
  %11 = zext nneg i8 %10 to i32, !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2467, metadata !DIExpression()), !dbg !2469
  %12 = load i32, ptr %9, align 4, !dbg !2475, !tbaa !1110
  %13 = lshr i32 %12, %11, !dbg !2476
  %14 = and i32 %13, 1, !dbg !2477
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2468, metadata !DIExpression()), !dbg !2469
  %15 = xor i32 %13, %2, !dbg !2478
  %16 = and i32 %15, 1, !dbg !2478
  %17 = shl nuw i32 %16, %11, !dbg !2479
  %18 = xor i32 %17, %12, !dbg !2480
  store i32 %18, ptr %9, align 4, !dbg !2480, !tbaa !1110
  ret i32 %14, !dbg !2481
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2482 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2486, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2487, metadata !DIExpression()), !dbg !2489
  %3 = icmp eq ptr %0, null, !dbg !2490
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2492
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2486, metadata !DIExpression()), !dbg !2489
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2493
  %6 = load i32, ptr %5, align 4, !dbg !2493, !tbaa !2494
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i32 %1, ptr %5, align 4, !dbg !2495, !tbaa !2494
  ret i32 %6, !dbg !2496
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2497 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2501, metadata !DIExpression()), !dbg !2504
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2502, metadata !DIExpression()), !dbg !2504
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2503, metadata !DIExpression()), !dbg !2504
  %4 = icmp eq ptr %0, null, !dbg !2505
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2507
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2501, metadata !DIExpression()), !dbg !2504
  store i32 10, ptr %5, align 8, !dbg !2508, !tbaa !2444
  %6 = icmp ne ptr %1, null, !dbg !2509
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2511
  br i1 %8, label %10, label %9, !dbg !2511

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2512
  unreachable, !dbg !2512

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2513
  store ptr %1, ptr %11, align 8, !dbg !2514, !tbaa !2515
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2516
  store ptr %2, ptr %12, align 8, !dbg !2517, !tbaa !2518
  ret void, !dbg !2519
}

; Function Attrs: noreturn nounwind
declare !dbg !2520 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2526, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2527, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2528, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2529, metadata !DIExpression()), !dbg !2533
  %6 = icmp eq ptr %4, null, !dbg !2534
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2534
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2530, metadata !DIExpression()), !dbg !2533
  %8 = tail call ptr @__errno_location() #42, !dbg !2535
  %9 = load i32, ptr %8, align 4, !dbg !2535, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2531, metadata !DIExpression()), !dbg !2533
  %10 = load i32, ptr %7, align 8, !dbg !2536, !tbaa !2444
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2537
  %12 = load i32, ptr %11, align 4, !dbg !2537, !tbaa !2494
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2538
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2539
  %15 = load ptr, ptr %14, align 8, !dbg !2539, !tbaa !2515
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2540
  %17 = load ptr, ptr %16, align 8, !dbg !2540, !tbaa !2518
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2532, metadata !DIExpression()), !dbg !2533
  store i32 %9, ptr %8, align 4, !dbg !2542, !tbaa !1110
  ret i64 %18, !dbg !2543
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2544 {
  %10 = alloca i32, align 4, !DIAssignID !2612
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2613
  %12 = alloca i32, align 4, !DIAssignID !2614
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2615
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2616
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2590, metadata !DIExpression(), metadata !2616, metadata ptr %14, metadata !DIExpression()), !dbg !2617
  %15 = alloca i32, align 4, !DIAssignID !2618
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2593, metadata !DIExpression(), metadata !2618, metadata ptr %15, metadata !DIExpression()), !dbg !2619
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2550, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2552, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2553, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2554, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2555, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2556, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2557, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2558, metadata !DIExpression()), !dbg !2620
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2621
  %17 = icmp eq i64 %16, 1, !dbg !2622
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2559, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2562, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2563, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2565, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2567, metadata !DIExpression()), !dbg !2620
  %18 = and i32 %5, 2, !dbg !2623
  %19 = icmp ne i32 %18, 0, !dbg !2623
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2623

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2624
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2625
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2626
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2563, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2562, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2553, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2558, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2557, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2554, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.label(metadata !2568), !dbg !2627
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2620
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
  ], !dbg !2628

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2554, metadata !DIExpression()), !dbg !2620
  br label %101, !dbg !2629

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2554, metadata !DIExpression()), !dbg !2620
  br i1 %36, label %101, label %42, !dbg !2629

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2630
  br i1 %43, label %101, label %44, !dbg !2634

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2630, !tbaa !1119
  br label %101, !dbg !2630

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !752, metadata !DIExpression(), metadata !2614, metadata ptr %12, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !753, metadata !DIExpression(), metadata !2615, metadata ptr %13, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr @.str.11.86, metadata !749, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %28, metadata !750, metadata !DIExpression()), !dbg !2635
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.11.86, i32 noundef 5) #39, !dbg !2639
  call void @llvm.dbg.value(metadata ptr %46, metadata !751, metadata !DIExpression()), !dbg !2635
  %47 = icmp eq ptr %46, @.str.11.86, !dbg !2640
  br i1 %47, label %48, label %57, !dbg !2642

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2643
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %13, metadata !2645, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %13, metadata !2653, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 0, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 8, metadata !2657, metadata !DIExpression()), !dbg !2658
  store i64 0, ptr %13, align 8, !dbg !2660
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2661
  %50 = icmp eq i64 %49, 3, !dbg !2663
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2664
  %54 = icmp eq i32 %28, 9, !dbg !2664
  %55 = select i1 %54, ptr @.str.10.88, ptr @.str.12.89, !dbg !2664
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2664
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2665
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2665
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2635
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2557, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.assign(metadata i1 undef, metadata !752, metadata !DIExpression(), metadata !2612, metadata ptr %10, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !753, metadata !DIExpression(), metadata !2613, metadata ptr %11, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr @.str.12.89, metadata !749, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 %28, metadata !750, metadata !DIExpression()), !dbg !2666
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.12.89, i32 noundef 5) #39, !dbg !2668
  call void @llvm.dbg.value(metadata ptr %59, metadata !751, metadata !DIExpression()), !dbg !2666
  %60 = icmp eq ptr %59, @.str.12.89, !dbg !2669
  br i1 %60, label %61, label %70, !dbg !2670

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2671
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %11, metadata !2645, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %11, metadata !2653, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2656, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 8, metadata !2657, metadata !DIExpression()), !dbg !2675
  store i64 0, ptr %11, align 8, !dbg !2677
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2678
  %63 = icmp eq i64 %62, 3, !dbg !2679
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2680
  %67 = icmp eq i32 %28, 9, !dbg !2680
  %68 = select i1 %67, ptr @.str.10.88, ptr @.str.12.89, !dbg !2680
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2680
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2681
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2681
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2558, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2557, metadata !DIExpression()), !dbg !2620
  br i1 %36, label %88, label %73, !dbg !2682

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2570, metadata !DIExpression()), !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2560, metadata !DIExpression()), !dbg !2620
  %74 = load i8, ptr %71, align 1, !dbg !2684, !tbaa !1119
  %75 = icmp eq i8 %74, 0, !dbg !2686
  br i1 %75, label %88, label %.preheader11, !dbg !2686

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2686

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2570, metadata !DIExpression()), !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2560, metadata !DIExpression()), !dbg !2620
  %80 = icmp ult i64 %79, %39, !dbg !2687
  br i1 %80, label %81, label %83, !dbg !2690

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2687
  store i8 %77, ptr %82, align 1, !dbg !2687, !tbaa !1119
  br label %83, !dbg !2687

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2560, metadata !DIExpression()), !dbg !2620
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2691
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2570, metadata !DIExpression()), !dbg !2683
  %86 = load i8, ptr %85, align 1, !dbg !2684, !tbaa !1119
  %87 = icmp eq i8 %86, 0, !dbg !2686
  br i1 %87, label %.loopexit12, label %76, !dbg !2686, !llvm.loop !2692

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2690
  br label %88, !dbg !2694

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2562, metadata !DIExpression()), !dbg !2620
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2694
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2563, metadata !DIExpression()), !dbg !2620
  br label %101, !dbg !2696

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2565, metadata !DIExpression()), !dbg !2620
  br label %101, !dbg !2697

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2554, metadata !DIExpression()), !dbg !2620
  br label %101, !dbg !2698

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2620
  br i1 %36, label %101, label %95, !dbg !2699

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2554, metadata !DIExpression()), !dbg !2620
  br i1 %36, label %101, label %95, !dbg !2698

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2700
  br i1 %97, label %101, label %98, !dbg !2704

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2700, !tbaa !1119
  br label %101, !dbg !2700

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2565, metadata !DIExpression()), !dbg !2620
  br label %101, !dbg !2705

100:                                              ; preds = %27
  call void @abort() #41, !dbg !2706
  unreachable, !dbg !2706

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2695
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.88, %42 ], [ @.str.10.88, %44 ], [ @.str.10.88, %41 ], [ %33, %27 ], [ @.str.12.89, %95 ], [ @.str.12.89, %98 ], [ @.str.12.89, %94 ], [ @.str.10.88, %40 ], [ @.str.12.89, %91 ], [ @.str.12.89, %92 ], [ @.str.12.89, %93 ], !dbg !2620
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2620
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2565, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2564, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2563, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2562, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2558, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2557, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2554, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2575, metadata !DIExpression()), !dbg !2707
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
  br label %121, !dbg !2708

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2695
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2624
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2709
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2553, metadata !DIExpression()), !dbg !2620
  %130 = icmp eq i64 %122, -1, !dbg !2710
  br i1 %130, label %131, label %135, !dbg !2711

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2712
  %133 = load i8, ptr %132, align 1, !dbg !2712, !tbaa !1119
  %134 = icmp eq i8 %133, 0, !dbg !2713
  br i1 %134, label %573, label %137, !dbg !2714

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2715
  br i1 %136, label %573, label %137, !dbg !2714

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2716
  br i1 %113, label %138, label %151, !dbg !2717

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2719
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2720
  br i1 %140, label %141, label %143, !dbg !2720

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2721
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2553, metadata !DIExpression()), !dbg !2620
  br label %143, !dbg !2722

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2553, metadata !DIExpression()), !dbg !2620
  %145 = icmp ugt i64 %139, %144, !dbg !2723
  br i1 %145, label %151, label %146, !dbg !2724

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2725
  call void @llvm.dbg.value(metadata ptr %147, metadata !2726, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %106, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %107, metadata !2730, metadata !DIExpression()), !dbg !2731
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2733
  %149 = icmp eq i32 %148, 0, !dbg !2734
  %150 = and i1 %149, %109, !dbg !2735
  br i1 %150, label %.loopexit7, label %151, !dbg !2735

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2553, metadata !DIExpression()), !dbg !2620
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2736
  %155 = load i8, ptr %154, align 1, !dbg !2736, !tbaa !1119
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2582, metadata !DIExpression()), !dbg !2716
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
  ], !dbg !2737

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2738

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2739

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2716
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2743
  br i1 %159, label %176, label %160, !dbg !2743

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2745
  br i1 %161, label %162, label %164, !dbg !2749

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2745
  store i8 39, ptr %163, align 1, !dbg !2745, !tbaa !1119
  br label %164, !dbg !2745

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2560, metadata !DIExpression()), !dbg !2620
  %166 = icmp ult i64 %165, %129, !dbg !2750
  br i1 %166, label %167, label %169, !dbg !2753

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2750
  store i8 36, ptr %168, align 1, !dbg !2750, !tbaa !1119
  br label %169, !dbg !2750

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2560, metadata !DIExpression()), !dbg !2620
  %171 = icmp ult i64 %170, %129, !dbg !2754
  br i1 %171, label %172, label %174, !dbg !2757

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2754
  store i8 39, ptr %173, align 1, !dbg !2754, !tbaa !1119
  br label %174, !dbg !2754

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2569, metadata !DIExpression()), !dbg !2620
  br label %176, !dbg !2758

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2620
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2560, metadata !DIExpression()), !dbg !2620
  %179 = icmp ult i64 %177, %129, !dbg !2759
  br i1 %179, label %180, label %182, !dbg !2762

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2759
  store i8 92, ptr %181, align 1, !dbg !2759, !tbaa !1119
  br label %182, !dbg !2759

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2762
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2560, metadata !DIExpression()), !dbg !2620
  br i1 %110, label %184, label %476, !dbg !2763

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2765
  %186 = icmp ult i64 %185, %152, !dbg !2766
  br i1 %186, label %187, label %433, !dbg !2767

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2768
  %189 = load i8, ptr %188, align 1, !dbg !2768, !tbaa !1119
  %190 = add i8 %189, -48, !dbg !2769
  %191 = icmp ult i8 %190, 10, !dbg !2769
  br i1 %191, label %192, label %433, !dbg !2769

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2770
  br i1 %193, label %194, label %196, !dbg !2774

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2770
  store i8 48, ptr %195, align 1, !dbg !2770, !tbaa !1119
  br label %196, !dbg !2770

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2560, metadata !DIExpression()), !dbg !2620
  %198 = icmp ult i64 %197, %129, !dbg !2775
  br i1 %198, label %199, label %201, !dbg !2778

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2775
  store i8 48, ptr %200, align 1, !dbg !2775, !tbaa !1119
  br label %201, !dbg !2775

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2560, metadata !DIExpression()), !dbg !2620
  br label %433, !dbg !2779

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2780

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2781

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2782

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2784

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2786
  %209 = icmp ult i64 %208, %152, !dbg !2787
  br i1 %209, label %210, label %433, !dbg !2788

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2789
  %212 = load i8, ptr %211, align 1, !dbg !2789, !tbaa !1119
  %213 = icmp eq i8 %212, 63, !dbg !2790
  br i1 %213, label %214, label %433, !dbg !2791

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2792
  %216 = load i8, ptr %215, align 1, !dbg !2792, !tbaa !1119
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
  ], !dbg !2793

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2794

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2575, metadata !DIExpression()), !dbg !2707
  %219 = icmp ult i64 %123, %129, !dbg !2796
  br i1 %219, label %220, label %222, !dbg !2799

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2796
  store i8 63, ptr %221, align 1, !dbg !2796, !tbaa !1119
  br label %222, !dbg !2796

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2799
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2560, metadata !DIExpression()), !dbg !2620
  %224 = icmp ult i64 %223, %129, !dbg !2800
  br i1 %224, label %225, label %227, !dbg !2803

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2800
  store i8 34, ptr %226, align 1, !dbg !2800, !tbaa !1119
  br label %227, !dbg !2800

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2803
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2560, metadata !DIExpression()), !dbg !2620
  %229 = icmp ult i64 %228, %129, !dbg !2804
  br i1 %229, label %230, label %232, !dbg !2807

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2804
  store i8 34, ptr %231, align 1, !dbg !2804, !tbaa !1119
  br label %232, !dbg !2804

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2560, metadata !DIExpression()), !dbg !2620
  %234 = icmp ult i64 %233, %129, !dbg !2808
  br i1 %234, label %235, label %237, !dbg !2811

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2808
  store i8 63, ptr %236, align 1, !dbg !2808, !tbaa !1119
  br label %237, !dbg !2808

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2560, metadata !DIExpression()), !dbg !2620
  br label %433, !dbg !2812

239:                                              ; preds = %151
  br label %249, !dbg !2813

240:                                              ; preds = %151
  br label %249, !dbg !2814

241:                                              ; preds = %151
  br label %247, !dbg !2815

242:                                              ; preds = %151
  br label %247, !dbg !2816

243:                                              ; preds = %151
  br label %249, !dbg !2817

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2818

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2819

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2822

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2824
  call void @llvm.dbg.label(metadata !2583), !dbg !2825
  br i1 %118, label %.loopexit8, label %249, !dbg !2826

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2824
  call void @llvm.dbg.label(metadata !2586), !dbg !2828
  br i1 %108, label %487, label %444, !dbg !2829

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2830

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2831, !tbaa !1119
  %254 = icmp eq i8 %253, 0, !dbg !2833
  br i1 %254, label %255, label %433, !dbg !2834

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2835
  br i1 %256, label %257, label %433, !dbg !2837

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2716
  br label %258, !dbg !2838

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2716
  br i1 %115, label %260, label %433, !dbg !2839

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2841

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2716
  br i1 %115, label %262, label %433, !dbg !2842

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2843

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2846
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2848
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2848
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2561, metadata !DIExpression()), !dbg !2620
  %269 = icmp ult i64 %123, %268, !dbg !2849
  br i1 %269, label %270, label %272, !dbg !2852

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2849
  store i8 39, ptr %271, align 1, !dbg !2849, !tbaa !1119
  br label %272, !dbg !2849

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2852
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2560, metadata !DIExpression()), !dbg !2620
  %274 = icmp ult i64 %273, %268, !dbg !2853
  br i1 %274, label %275, label %277, !dbg !2856

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2853
  store i8 92, ptr %276, align 1, !dbg !2853, !tbaa !1119
  br label %277, !dbg !2853

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2560, metadata !DIExpression()), !dbg !2620
  %279 = icmp ult i64 %278, %268, !dbg !2857
  br i1 %279, label %280, label %282, !dbg !2860

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2857
  store i8 39, ptr %281, align 1, !dbg !2857, !tbaa !1119
  br label %282, !dbg !2857

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2620
  br label %433, !dbg !2861

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2862

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2587, metadata !DIExpression()), !dbg !2863
  %286 = tail call ptr @__ctype_b_loc() #42, !dbg !2864
  %287 = load ptr, ptr %286, align 8, !dbg !2864, !tbaa !1040
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2864
  %290 = load i16, ptr %289, align 2, !dbg !2864, !tbaa !1151
  %291 = and i16 %290, 16384, !dbg !2864
  %292 = icmp ne i16 %291, 0, !dbg !2866
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2863
  br label %334, !dbg !2867

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2868
  call void @llvm.dbg.value(metadata ptr %14, metadata !2645, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %14, metadata !2653, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 0, metadata !2656, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 8, metadata !2657, metadata !DIExpression()), !dbg !2871
  store i64 0, ptr %14, align 8, !dbg !2873
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2587, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2589, metadata !DIExpression()), !dbg !2863
  %294 = icmp eq i64 %152, -1, !dbg !2874
  br i1 %294, label %295, label %297, !dbg !2876

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2553, metadata !DIExpression()), !dbg !2620
  br label %297, !dbg !2878

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2553, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2879
  %299 = sub i64 %298, %128, !dbg !2880
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #39, !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2597, metadata !DIExpression()), !dbg !2619
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2882

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2587, metadata !DIExpression()), !dbg !2863
  %302 = icmp ult i64 %128, %298, !dbg !2883
  br i1 %302, label %.preheader5, label %329, !dbg !2885

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2886

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2863
  br label %329, !dbg !2887

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2587, metadata !DIExpression()), !dbg !2863
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2889
  %308 = load i8, ptr %307, align 1, !dbg !2889, !tbaa !1119
  %309 = icmp eq i8 %308, 0, !dbg !2885
  br i1 %309, label %.loopexit6, label %310, !dbg !2886

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2587, metadata !DIExpression()), !dbg !2863
  %312 = add i64 %311, %128, !dbg !2891
  %313 = icmp eq i64 %311, %299, !dbg !2883
  br i1 %313, label %.loopexit6, label %304, !dbg !2885, !llvm.loop !2892

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2598, metadata !DIExpression()), !dbg !2893
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2894
  %317 = and i1 %316, %109, !dbg !2894
  br i1 %317, label %.preheader3, label %325, !dbg !2894

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2895

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2598, metadata !DIExpression()), !dbg !2893
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2896
  %321 = load i8, ptr %320, align 1, !dbg !2896, !tbaa !1119
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2898

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2598, metadata !DIExpression()), !dbg !2893
  %324 = icmp eq i64 %323, %300, !dbg !2900
  br i1 %324, label %.loopexit4, label %318, !dbg !2895, !llvm.loop !2901

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2903

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2903, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %326, metadata !2905, metadata !DIExpression()), !dbg !2913
  %327 = call i32 @iswprint(i32 noundef %326) #39, !dbg !2915
  %328 = icmp ne i32 %327, 0, !dbg !2916
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2587, metadata !DIExpression()), !dbg !2863
  br label %329, !dbg !2917

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2918

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2587, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2918
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2919
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2587, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2918
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2919
  call void @llvm.dbg.label(metadata !2611), !dbg !2920
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2921
  br label %624, !dbg !2921

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2716
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2923
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2587, metadata !DIExpression()), !dbg !2863
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2553, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2581, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2716
  %338 = icmp ult i64 %336, 2, !dbg !2924
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2925
  br i1 %340, label %433, label %341, !dbg !2925

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2606, metadata !DIExpression()), !dbg !2927
  br label %343, !dbg !2928

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2620
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2707
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2560, metadata !DIExpression()), !dbg !2620
  br i1 %339, label %394, label %350, !dbg !2929

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2934

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2716
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2937
  br i1 %352, label %369, label %353, !dbg !2937

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2939
  br i1 %354, label %355, label %357, !dbg !2943

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2939
  store i8 39, ptr %356, align 1, !dbg !2939, !tbaa !1119
  br label %357, !dbg !2939

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2560, metadata !DIExpression()), !dbg !2620
  %359 = icmp ult i64 %358, %129, !dbg !2944
  br i1 %359, label %360, label %362, !dbg !2947

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2944
  store i8 36, ptr %361, align 1, !dbg !2944, !tbaa !1119
  br label %362, !dbg !2944

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2947
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2560, metadata !DIExpression()), !dbg !2620
  %364 = icmp ult i64 %363, %129, !dbg !2948
  br i1 %364, label %365, label %367, !dbg !2951

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2948
  store i8 39, ptr %366, align 1, !dbg !2948, !tbaa !1119
  br label %367, !dbg !2948

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2951
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2569, metadata !DIExpression()), !dbg !2620
  br label %369, !dbg !2952

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2620
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2560, metadata !DIExpression()), !dbg !2620
  %372 = icmp ult i64 %370, %129, !dbg !2953
  br i1 %372, label %373, label %375, !dbg !2956

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2953
  store i8 92, ptr %374, align 1, !dbg !2953, !tbaa !1119
  br label %375, !dbg !2953

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2956
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2560, metadata !DIExpression()), !dbg !2620
  %377 = icmp ult i64 %376, %129, !dbg !2957
  br i1 %377, label %378, label %382, !dbg !2960

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2957
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2957
  store i8 %380, ptr %381, align 1, !dbg !2957, !tbaa !1119
  br label %382, !dbg !2957

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2560, metadata !DIExpression()), !dbg !2620
  %384 = icmp ult i64 %383, %129, !dbg !2961
  br i1 %384, label %385, label %390, !dbg !2964

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2961
  %388 = or disjoint i8 %387, 48, !dbg !2961
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2961
  store i8 %388, ptr %389, align 1, !dbg !2961, !tbaa !1119
  br label %390, !dbg !2961

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2964
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2560, metadata !DIExpression()), !dbg !2620
  %392 = and i8 %349, 7, !dbg !2965
  %393 = or disjoint i8 %392, 48, !dbg !2966
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2582, metadata !DIExpression()), !dbg !2716
  br label %401, !dbg !2967

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2968

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2969
  br i1 %396, label %397, label %399, !dbg !2974

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2969
  store i8 92, ptr %398, align 1, !dbg !2969, !tbaa !1119
  br label %399, !dbg !2969

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2577, metadata !DIExpression()), !dbg !2716
  br label %401, !dbg !2975

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2620
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2560, metadata !DIExpression()), !dbg !2620
  %407 = add i64 %346, 1, !dbg !2976
  %408 = icmp ugt i64 %342, %407, !dbg !2978
  br i1 %408, label %409, label %.loopexit2, !dbg !2979

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2980
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2980
  br i1 %411, label %423, label %412, !dbg !2980

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2983
  br i1 %413, label %414, label %416, !dbg !2987

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2983
  store i8 39, ptr %415, align 1, !dbg !2983, !tbaa !1119
  br label %416, !dbg !2983

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2987
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2560, metadata !DIExpression()), !dbg !2620
  %418 = icmp ult i64 %417, %129, !dbg !2988
  br i1 %418, label %419, label %421, !dbg !2991

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2988
  store i8 39, ptr %420, align 1, !dbg !2988, !tbaa !1119
  br label %421, !dbg !2988

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2991
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2620
  br label %423, !dbg !2992

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2993
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2560, metadata !DIExpression()), !dbg !2620
  %426 = icmp ult i64 %424, %129, !dbg !2994
  br i1 %426, label %427, label %429, !dbg !2997

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2994
  store i8 %406, ptr %428, align 1, !dbg !2994, !tbaa !1119
  br label %429, !dbg !2994

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2997
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2575, metadata !DIExpression()), !dbg !2707
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2998
  %432 = load i8, ptr %431, align 1, !dbg !2998, !tbaa !1119
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2582, metadata !DIExpression()), !dbg !2716
  br label %343, !dbg !2999, !llvm.loop !3000

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3003
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2620
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2624
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2707
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2716
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2577, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2553, metadata !DIExpression()), !dbg !2620
  br i1 %111, label %455, label %444, !dbg !3004

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
  br i1 %120, label %456, label %476, !dbg !3006

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3007

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
  %467 = lshr i8 %458, 5, !dbg !3008
  %468 = zext nneg i8 %467 to i64, !dbg !3008
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3009
  %470 = load i32, ptr %469, align 4, !dbg !3009, !tbaa !1110
  %471 = and i8 %458, 31, !dbg !3010
  %472 = zext nneg i8 %471 to i32, !dbg !3010
  %473 = shl nuw i32 1, %472, !dbg !3011
  %474 = and i32 %470, %473, !dbg !3011
  %475 = icmp eq i32 %474, 0, !dbg !3011
  br i1 %475, label %476, label %487, !dbg !3012

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
  br i1 %153, label %487, label %523, !dbg !3013

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3003
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2620
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2624
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3014
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2716
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2553, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.label(metadata !2609), !dbg !3015
  br i1 %109, label %.loopexit8, label %497, !dbg !3016

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2716
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3018
  br i1 %498, label %515, label %499, !dbg !3018

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3020
  br i1 %500, label %501, label %503, !dbg !3024

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3020
  store i8 39, ptr %502, align 1, !dbg !3020, !tbaa !1119
  br label %503, !dbg !3020

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3024
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2560, metadata !DIExpression()), !dbg !2620
  %505 = icmp ult i64 %504, %496, !dbg !3025
  br i1 %505, label %506, label %508, !dbg !3028

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3025
  store i8 36, ptr %507, align 1, !dbg !3025, !tbaa !1119
  br label %508, !dbg !3025

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3028
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2560, metadata !DIExpression()), !dbg !2620
  %510 = icmp ult i64 %509, %496, !dbg !3029
  br i1 %510, label %511, label %513, !dbg !3032

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3029
  store i8 39, ptr %512, align 1, !dbg !3029, !tbaa !1119
  br label %513, !dbg !3029

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3032
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2569, metadata !DIExpression()), !dbg !2620
  br label %515, !dbg !3033

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2716
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2560, metadata !DIExpression()), !dbg !2620
  %518 = icmp ult i64 %516, %496, !dbg !3034
  br i1 %518, label %519, label %521, !dbg !3037

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3034
  store i8 92, ptr %520, align 1, !dbg !3034, !tbaa !1119
  br label %521, !dbg !3034

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2553, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.label(metadata !2610), !dbg !3038
  br label %547, !dbg !3039

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2620
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2716
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2707
  br label %523, !dbg !3039

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3003
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2620
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2624
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3014
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3042
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2582, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2553, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.label(metadata !2610), !dbg !3038
  %534 = xor i1 %528, true, !dbg !3039
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3039
  br i1 %535, label %547, label %536, !dbg !3039

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3043
  br i1 %537, label %538, label %540, !dbg !3047

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3043
  store i8 39, ptr %539, align 1, !dbg !3043, !tbaa !1119
  br label %540, !dbg !3043

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2560, metadata !DIExpression()), !dbg !2620
  %542 = icmp ult i64 %541, %533, !dbg !3048
  br i1 %542, label %543, label %545, !dbg !3051

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3048
  store i8 39, ptr %544, align 1, !dbg !3048, !tbaa !1119
  br label %545, !dbg !3048

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3051
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2620
  br label %547, !dbg !3052

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2716
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2560, metadata !DIExpression()), !dbg !2620
  %557 = icmp ult i64 %555, %548, !dbg !3053
  br i1 %557, label %558, label %560, !dbg !3056

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3053
  store i8 %549, ptr %559, align 1, !dbg !3053, !tbaa !1119
  br label %560, !dbg !3053

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3056
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2560, metadata !DIExpression()), !dbg !2620
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3057
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2620
  br label %563, !dbg !3058

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3003
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2620
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2624
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3014
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2575, metadata !DIExpression()), !dbg !2707
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2553, metadata !DIExpression()), !dbg !2620
  %572 = add i64 %570, 1, !dbg !3059
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2575, metadata !DIExpression()), !dbg !2707
  br label %121, !dbg !3060, !llvm.loop !3061

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2695
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2624
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2551, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2567, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2566, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2561, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2560, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2553, metadata !DIExpression()), !dbg !2620
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3063
  %575 = xor i1 %109, true, !dbg !3065
  %576 = or i1 %574, %575, !dbg !3065
  %577 = or i1 %576, %110, !dbg !3065
  br i1 %577, label %578, label %.loopexit13, !dbg !3065

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3066
  %580 = xor i1 %.lcssa38, true, !dbg !3066
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3066
  br i1 %581, label %589, label %582, !dbg !3066

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3068

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2624
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3070
  br label %638, !dbg !3072

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3073
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3075
  br i1 %588, label %27, label %589, !dbg !3075

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2620
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2695
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3076
  %592 = or i1 %591, %590, !dbg !3078
  br i1 %592, label %608, label %593, !dbg !3078

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2562, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2560, metadata !DIExpression()), !dbg !2620
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3079, !tbaa !1119
  %595 = icmp eq i8 %594, 0, !dbg !3082
  br i1 %595, label %608, label %.preheader, !dbg !3082

.preheader:                                       ; preds = %593
  br label %596, !dbg !3082

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2562, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2560, metadata !DIExpression()), !dbg !2620
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3083
  br i1 %600, label %601, label %603, !dbg !3086

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3083
  store i8 %597, ptr %602, align 1, !dbg !3083, !tbaa !1119
  br label %603, !dbg !3083

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2560, metadata !DIExpression()), !dbg !2620
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3087
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2562, metadata !DIExpression()), !dbg !2620
  %606 = load i8, ptr %605, align 1, !dbg !3079, !tbaa !1119
  %607 = icmp eq i8 %606, 0, !dbg !3082
  br i1 %607, label %.loopexit, label %596, !dbg !3082, !llvm.loop !3088

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3086
  br label %608, !dbg !3090

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2560, metadata !DIExpression()), !dbg !2620
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3090
  br i1 %610, label %611, label %638, !dbg !3092

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3093
  store i8 0, ptr %612, align 1, !dbg !3094, !tbaa !1119
  br label %638, !dbg !3093

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2611), !dbg !2920
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3095
  br i1 %614, label %624, label %630, !dbg !2921

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2716
  br label %615, !dbg !3095

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3095

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3095

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2611), !dbg !2920
  %622 = icmp eq i32 %616, 2, !dbg !3095
  %623 = select i1 %619, i32 4, i32 2, !dbg !2921
  br i1 %622, label %624, label %630, !dbg !2921

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2921

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2722
  br label %630, !dbg !3096

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2554, metadata !DIExpression()), !dbg !2620
  %636 = and i32 %5, -3, !dbg !3096
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3097
  br label %638, !dbg !3098

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3099
}

; Function Attrs: nounwind
declare !dbg !3100 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3102 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3104 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3108, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3111
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %0, metadata !3112, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr null, metadata !3118, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %2, metadata !3119, metadata !DIExpression()), !dbg !3125
  %4 = icmp eq ptr %2, null, !dbg !3127
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3127
  call void @llvm.dbg.value(metadata ptr %5, metadata !3120, metadata !DIExpression()), !dbg !3125
  %6 = tail call ptr @__errno_location() #42, !dbg !3128
  %7 = load i32, ptr %6, align 4, !dbg !3128, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %7, metadata !3121, metadata !DIExpression()), !dbg !3125
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3129
  %9 = load i32, ptr %8, align 4, !dbg !3129, !tbaa !2494
  %10 = or i32 %9, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %10, metadata !3122, metadata !DIExpression()), !dbg !3125
  %11 = load i32, ptr %5, align 8, !dbg !3131, !tbaa !2444
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3132
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3133
  %14 = load ptr, ptr %13, align 8, !dbg !3133, !tbaa !2515
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3134
  %16 = load ptr, ptr %15, align 8, !dbg !3134, !tbaa !2518
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3135
  %18 = add i64 %17, 1, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %18, metadata !3123, metadata !DIExpression()), !dbg !3125
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3137
  call void @llvm.dbg.value(metadata ptr %19, metadata !3124, metadata !DIExpression()), !dbg !3125
  %20 = load i32, ptr %5, align 8, !dbg !3138, !tbaa !2444
  %21 = load ptr, ptr %13, align 8, !dbg !3139, !tbaa !2515
  %22 = load ptr, ptr %15, align 8, !dbg !3140, !tbaa !2518
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3141
  store i32 %7, ptr %6, align 4, !dbg !3142, !tbaa !1110
  ret ptr %19, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3113 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3112, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3118, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3119, metadata !DIExpression()), !dbg !3144
  %5 = icmp eq ptr %3, null, !dbg !3145
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3145
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3120, metadata !DIExpression()), !dbg !3144
  %7 = tail call ptr @__errno_location() #42, !dbg !3146
  %8 = load i32, ptr %7, align 4, !dbg !3146, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3121, metadata !DIExpression()), !dbg !3144
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3147
  %10 = load i32, ptr %9, align 4, !dbg !3147, !tbaa !2494
  %11 = icmp eq ptr %2, null, !dbg !3148
  %12 = zext i1 %11 to i32, !dbg !3148
  %13 = or i32 %10, %12, !dbg !3149
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3122, metadata !DIExpression()), !dbg !3144
  %14 = load i32, ptr %6, align 8, !dbg !3150, !tbaa !2444
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3151
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3152
  %17 = load ptr, ptr %16, align 8, !dbg !3152, !tbaa !2515
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3153
  %19 = load ptr, ptr %18, align 8, !dbg !3153, !tbaa !2518
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3154
  %21 = add i64 %20, 1, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3123, metadata !DIExpression()), !dbg !3144
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3156
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3124, metadata !DIExpression()), !dbg !3144
  %23 = load i32, ptr %6, align 8, !dbg !3157, !tbaa !2444
  %24 = load ptr, ptr %16, align 8, !dbg !3158, !tbaa !2515
  %25 = load ptr, ptr %18, align 8, !dbg !3159, !tbaa !2518
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3160
  store i32 %8, ptr %7, align 4, !dbg !3161, !tbaa !1110
  br i1 %11, label %28, label %27, !dbg !3162

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3163, !tbaa !1273
  br label %28, !dbg !3165

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3166
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3167 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3172, !tbaa !1040
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3170, metadata !DIExpression()), !dbg !3174
  %2 = load i32, ptr @nslots, align 4, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3170, metadata !DIExpression()), !dbg !3174
  %3 = icmp sgt i32 %2, 1, !dbg !3175
  br i1 %3, label %4, label %6, !dbg !3177

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3175
  br label %10, !dbg !3177

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3178

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3178
  %8 = load ptr, ptr %7, align 8, !dbg !3178, !tbaa !3180
  %9 = icmp eq ptr %8, @slot0, !dbg !3182
  br i1 %9, label %17, label %16, !dbg !3183

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3170, metadata !DIExpression()), !dbg !3174
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3184
  %13 = load ptr, ptr %12, align 8, !dbg !3184, !tbaa !3180
  tail call void @free(ptr noundef %13) #39, !dbg !3185
  %14 = add nuw nsw i64 %11, 1, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3170, metadata !DIExpression()), !dbg !3174
  %15 = icmp eq i64 %14, %5, !dbg !3175
  br i1 %15, label %.loopexit, label %10, !dbg !3177, !llvm.loop !3187

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3189
  store i64 256, ptr @slotvec0, align 8, !dbg !3191, !tbaa !3192
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3193, !tbaa !3180
  br label %17, !dbg !3194

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3195
  br i1 %18, label %20, label %19, !dbg !3197

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3198
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3200, !tbaa !1040
  br label %20, !dbg !3201

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3202, !tbaa !1110
  ret void, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3204 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3206, metadata !DIExpression()), !dbg !3208
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3207, metadata !DIExpression()), !dbg !3208
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3209
  ret ptr %3, !dbg !3210
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3211 {
  %5 = alloca i64, align 8, !DIAssignID !3231
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3225, metadata !DIExpression(), metadata !3231, metadata ptr %5, metadata !DIExpression()), !dbg !3232
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3216, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3217, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3218, metadata !DIExpression()), !dbg !3233
  %6 = tail call ptr @__errno_location() #42, !dbg !3234
  %7 = load i32, ptr %6, align 4, !dbg !3234, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3219, metadata !DIExpression()), !dbg !3233
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3235, !tbaa !1040
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3220, metadata !DIExpression()), !dbg !3233
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3221, metadata !DIExpression()), !dbg !3233
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3236
  br i1 %9, label %10, label %11, !dbg !3236

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3238
  unreachable, !dbg !3238

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3239, !tbaa !1110
  %13 = icmp sgt i32 %12, %0, !dbg !3240
  br i1 %13, label %32, label %14, !dbg !3241

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3242
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3222, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3243
  %16 = sext i32 %12 to i64, !dbg !3244
  store i64 %16, ptr %5, align 8, !dbg !3245, !tbaa !1273, !DIAssignID !3246
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3225, metadata !DIExpression(), metadata !3246, metadata ptr %5, metadata !DIExpression()), !dbg !3232
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3247
  %18 = add nuw nsw i32 %0, 1, !dbg !3248
  %19 = sub i32 %18, %12, !dbg !3249
  %20 = sext i32 %19 to i64, !dbg !3250
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3220, metadata !DIExpression()), !dbg !3233
  store ptr %21, ptr @slotvec, align 8, !dbg !3252, !tbaa !1040
  br i1 %15, label %22, label %23, !dbg !3253

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3254, !tbaa.struct !3256
  br label %23, !dbg !3257

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3258, !tbaa !1110
  %25 = sext i32 %24 to i64, !dbg !3259
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3259
  %27 = load i64, ptr %5, align 8, !dbg !3260, !tbaa !1273
  %28 = sub nsw i64 %27, %25, !dbg !3261
  %29 = shl i64 %28, 4, !dbg !3262
  call void @llvm.dbg.value(metadata ptr %26, metadata !2653, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32 0, metadata !2656, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %29, metadata !2657, metadata !DIExpression()), !dbg !3263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3265
  %30 = load i64, ptr %5, align 8, !dbg !3266, !tbaa !1273
  %31 = trunc i64 %30 to i32, !dbg !3266
  store i32 %31, ptr @nslots, align 4, !dbg !3267, !tbaa !1110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3268
  br label %32, !dbg !3269

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3233
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3220, metadata !DIExpression()), !dbg !3233
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3270
  %36 = load i64, ptr %35, align 8, !dbg !3271, !tbaa !3192
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3226, metadata !DIExpression()), !dbg !3272
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3273
  %38 = load ptr, ptr %37, align 8, !dbg !3273, !tbaa !3180
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3228, metadata !DIExpression()), !dbg !3272
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3274
  %40 = load i32, ptr %39, align 4, !dbg !3274, !tbaa !2494
  %41 = or i32 %40, 1, !dbg !3275
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3229, metadata !DIExpression()), !dbg !3272
  %42 = load i32, ptr %3, align 8, !dbg !3276, !tbaa !2444
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3277
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3278
  %45 = load ptr, ptr %44, align 8, !dbg !3278, !tbaa !2515
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3279
  %47 = load ptr, ptr %46, align 8, !dbg !3279, !tbaa !2518
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3230, metadata !DIExpression()), !dbg !3272
  %49 = icmp ugt i64 %36, %48, !dbg !3281
  br i1 %49, label %60, label %50, !dbg !3283

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3284
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3226, metadata !DIExpression()), !dbg !3272
  store i64 %51, ptr %35, align 8, !dbg !3286, !tbaa !3192
  %52 = icmp eq ptr %38, @slot0, !dbg !3287
  br i1 %52, label %54, label %53, !dbg !3289

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3290
  br label %54, !dbg !3290

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3291
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3228, metadata !DIExpression()), !dbg !3272
  store ptr %55, ptr %37, align 8, !dbg !3292, !tbaa !3180
  %56 = load i32, ptr %3, align 8, !dbg !3293, !tbaa !2444
  %57 = load ptr, ptr %44, align 8, !dbg !3294, !tbaa !2515
  %58 = load ptr, ptr %46, align 8, !dbg !3295, !tbaa !2518
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3296
  br label %60, !dbg !3297

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3272
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3228, metadata !DIExpression()), !dbg !3272
  store i32 %7, ptr %6, align 4, !dbg !3298, !tbaa !1110
  ret ptr %61, !dbg !3299
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3300 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3307
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3305, metadata !DIExpression()), !dbg !3307
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3306, metadata !DIExpression()), !dbg !3307
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3308
  ret ptr %4, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3206, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %0, metadata !3207, metadata !DIExpression()), !dbg !3314
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3316
  ret ptr %2, !dbg !3317
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3318 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3323, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3325
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3327
  ret ptr %3, !dbg !3328
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3329 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3337
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3336, metadata !DIExpression(), metadata !3337, metadata ptr %4, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3333, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3334, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340), !dbg !3343
  call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3352, !alias.scope !3340, !DIAssignID !3353
  call void @llvm.dbg.assign(metadata i8 0, metadata !3336, metadata !DIExpression(), metadata !3353, metadata ptr %4, metadata !DIExpression()), !dbg !3338
  %5 = icmp eq i32 %1, 10, !dbg !3354
  br i1 %5, label %6, label %7, !dbg !3356

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3357, !noalias !3340
  unreachable, !dbg !3357

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3358, !tbaa !2444, !alias.scope !3340, !DIAssignID !3359
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3359, metadata ptr %4, metadata !DIExpression()), !dbg !3338
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3360
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3361
  ret ptr %8, !dbg !3362
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3363 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3371, metadata !DIExpression(), metadata !3372, metadata ptr %5, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3368, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3369, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3370, metadata !DIExpression()), !dbg !3373
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3375), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3349, metadata !DIExpression()), !dbg !3381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3381, !alias.scope !3375, !DIAssignID !3382
  call void @llvm.dbg.assign(metadata i8 0, metadata !3371, metadata !DIExpression(), metadata !3382, metadata ptr %5, metadata !DIExpression()), !dbg !3373
  %6 = icmp eq i32 %1, 10, !dbg !3383
  br i1 %6, label %7, label %8, !dbg !3384

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3385, !noalias !3375
  unreachable, !dbg !3385

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3386, !tbaa !2444, !alias.scope !3375, !DIAssignID !3387
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3371, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3387, metadata ptr %5, metadata !DIExpression()), !dbg !3373
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3388
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3389
  ret ptr %9, !dbg !3390
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3391 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3397
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3395, metadata !DIExpression()), !dbg !3398
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3336, metadata !DIExpression(), metadata !3397, metadata ptr %3, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %1, metadata !3335, metadata !DIExpression()), !dbg !3399
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3402), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3349, metadata !DIExpression()), !dbg !3408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3408, !alias.scope !3402, !DIAssignID !3409
  call void @llvm.dbg.assign(metadata i8 0, metadata !3336, metadata !DIExpression(), metadata !3409, metadata ptr %3, metadata !DIExpression()), !dbg !3399
  %4 = icmp eq i32 %0, 10, !dbg !3410
  br i1 %4, label %5, label %6, !dbg !3411

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3412, !noalias !3402
  unreachable, !dbg !3412

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3413, !tbaa !2444, !alias.scope !3402, !DIAssignID !3414
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3336, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3414, metadata ptr %3, metadata !DIExpression()), !dbg !3399
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3415
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3416
  ret ptr %7, !dbg !3417
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3418 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3425
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3422, metadata !DIExpression()), !dbg !3426
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3423, metadata !DIExpression()), !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3424, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3371, metadata !DIExpression(), metadata !3425, metadata ptr %4, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %1, metadata !3369, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %2, metadata !3370, metadata !DIExpression()), !dbg !3427
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3430), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3349, metadata !DIExpression()), !dbg !3436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3436, !alias.scope !3430, !DIAssignID !3437
  call void @llvm.dbg.assign(metadata i8 0, metadata !3371, metadata !DIExpression(), metadata !3437, metadata ptr %4, metadata !DIExpression()), !dbg !3427
  %5 = icmp eq i32 %0, 10, !dbg !3438
  br i1 %5, label %6, label %7, !dbg !3439

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3440, !noalias !3430
  unreachable, !dbg !3440

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3441, !tbaa !2444, !alias.scope !3430, !DIAssignID !3442
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3371, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3442, metadata ptr %4, metadata !DIExpression()), !dbg !3427
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3443
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3444
  ret ptr %8, !dbg !3445
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3446 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3454
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3454, metadata ptr %4, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3451, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3452, metadata !DIExpression()), !dbg !3455
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3457, !tbaa.struct !3458, !DIAssignID !3459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3459, metadata ptr %4, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2461, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2462, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2463, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2464, metadata !DIExpression()), !dbg !3460
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3462
  %6 = lshr i8 %2, 5, !dbg !3463
  %7 = zext nneg i8 %6 to i64, !dbg !3463
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3464
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2465, metadata !DIExpression()), !dbg !3460
  %9 = and i8 %2, 31, !dbg !3465
  %10 = zext nneg i8 %9 to i32, !dbg !3465
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2467, metadata !DIExpression()), !dbg !3460
  %11 = load i32, ptr %8, align 4, !dbg !3466, !tbaa !1110
  %12 = lshr i32 %11, %10, !dbg !3467
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2468, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3460
  %13 = and i32 %12, 1, !dbg !3468
  %14 = xor i32 %13, 1, !dbg !3468
  %15 = shl nuw i32 %14, %10, !dbg !3469
  %16 = xor i32 %15, %11, !dbg !3470
  store i32 %16, ptr %8, align 4, !dbg !3470, !tbaa !1110
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3471
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3472
  ret ptr %17, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3474 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3480
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3480, metadata ptr %3, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 -1, metadata !3451, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i8 %1, metadata !3452, metadata !DIExpression()), !dbg !3482
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3485, !tbaa.struct !3458, !DIAssignID !3486
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3486, metadata ptr %3, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %3, metadata !2461, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 %1, metadata !2462, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i32 1, metadata !2463, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 %1, metadata !2464, metadata !DIExpression()), !dbg !3487
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3489
  %5 = lshr i8 %1, 5, !dbg !3490
  %6 = zext nneg i8 %5 to i64, !dbg !3490
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3491
  call void @llvm.dbg.value(metadata ptr %7, metadata !2465, metadata !DIExpression()), !dbg !3487
  %8 = and i8 %1, 31, !dbg !3492
  %9 = zext nneg i8 %8 to i32, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %9, metadata !2467, metadata !DIExpression()), !dbg !3487
  %10 = load i32, ptr %7, align 4, !dbg !3493, !tbaa !1110
  %11 = lshr i32 %10, %9, !dbg !3494
  call void @llvm.dbg.value(metadata i32 %11, metadata !2468, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3487
  %12 = and i32 %11, 1, !dbg !3495
  %13 = xor i32 %12, 1, !dbg !3495
  %14 = shl nuw i32 %13, %9, !dbg !3496
  %15 = xor i32 %14, %10, !dbg !3497
  store i32 %15, ptr %7, align 4, !dbg !3497, !tbaa !1110
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3498
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3499
  ret ptr %16, !dbg !3500
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3501 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3504
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8 58, metadata !3479, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3504, metadata ptr %2, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 -1, metadata !3451, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8 58, metadata !3452, metadata !DIExpression()), !dbg !3508
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3511, !tbaa.struct !3458, !DIAssignID !3512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3512, metadata ptr %2, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata ptr %2, metadata !2461, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 1, metadata !2463, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 58, metadata !2464, metadata !DIExpression()), !dbg !3513
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3515
  call void @llvm.dbg.value(metadata ptr %3, metadata !2465, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i32 26, metadata !2467, metadata !DIExpression()), !dbg !3513
  %4 = load i32, ptr %3, align 4, !dbg !3516, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %4, metadata !2468, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3513
  %5 = or i32 %4, 67108864, !dbg !3517
  store i32 %5, ptr %3, align 4, !dbg !3517, !tbaa !1110
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3519
  ret ptr %6, !dbg !3520
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3521 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3525
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3525, metadata ptr %3, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %1, metadata !3451, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !3452, metadata !DIExpression()), !dbg !3527
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3530, !tbaa.struct !3458, !DIAssignID !3531
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3453, metadata !DIExpression(), metadata !3531, metadata ptr %3, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %3, metadata !2461, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 1, metadata !2463, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8 58, metadata !2464, metadata !DIExpression()), !dbg !3532
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %4, metadata !2465, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 26, metadata !2467, metadata !DIExpression()), !dbg !3532
  %5 = load i32, ptr %4, align 4, !dbg !3535, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %5, metadata !2468, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3532
  %6 = or i32 %5, 67108864, !dbg !3536
  store i32 %6, ptr %4, align 4, !dbg !3536, !tbaa !1110
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3537
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3538
  ret ptr %7, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3540 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3545, metadata !DIExpression(), metadata !3546, metadata ptr %4, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3349, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3548
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3543, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3544, metadata !DIExpression()), !dbg !3547
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %1, metadata !3344, metadata !DIExpression()), !dbg !3551
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3349, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3551
  %5 = icmp eq i32 %1, 10, !dbg !3552
  br i1 %5, label %6, label %7, !dbg !3553

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3554, !noalias !3555
  unreachable, !dbg !3554

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3349, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3551
  store i32 %1, ptr %4, align 8, !dbg !3558, !tbaa.struct !3458, !DIAssignID !3559
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3558
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3545, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3559, metadata ptr %4, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3545, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3560, metadata ptr %8, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2461, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2462, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2463, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2464, metadata !DIExpression()), !dbg !3561
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3563
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2465, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2467, metadata !DIExpression()), !dbg !3561
  %10 = load i32, ptr %9, align 4, !dbg !3564, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2468, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3561
  %11 = or i32 %10, 67108864, !dbg !3565
  store i32 %11, ptr %9, align 4, !dbg !3565, !tbaa !1110, !DIAssignID !3566
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3545, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3566, metadata ptr %9, metadata !DIExpression()), !dbg !3547
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3567
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3568
  ret ptr %12, !dbg !3569
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3570 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3578
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3574, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3575, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3576, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3577, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3578, metadata ptr %5, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i32 %0, metadata !3585, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %1, metadata !3586, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %2, metadata !3587, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %3, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i64 -1, metadata !3589, metadata !DIExpression()), !dbg !3590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3593, !tbaa.struct !3458, !DIAssignID !3594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3594, metadata ptr %5, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3595, metadata ptr undef, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr %5, metadata !2501, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !2502, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %2, metadata !2503, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %5, metadata !2501, metadata !DIExpression()), !dbg !3596
  store i32 10, ptr %5, align 8, !dbg !3598, !tbaa !2444, !DIAssignID !3599
  call void @llvm.dbg.assign(metadata i32 10, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3599, metadata ptr %5, metadata !DIExpression()), !dbg !3590
  %6 = icmp ne ptr %1, null, !dbg !3600
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3601
  br i1 %8, label %10, label %9, !dbg !3601

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3602
  unreachable, !dbg !3602

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3603
  store ptr %1, ptr %11, align 8, !dbg !3604, !tbaa !2515, !DIAssignID !3605
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3605, metadata ptr %11, metadata !DIExpression()), !dbg !3590
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3606
  store ptr %2, ptr %12, align 8, !dbg !3607, !tbaa !2518, !DIAssignID !3608
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3608, metadata ptr %12, metadata !DIExpression()), !dbg !3590
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3610
  ret ptr %13, !dbg !3611
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3581 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3612, metadata ptr %6, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3585, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3586, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3587, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3588, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3589, metadata !DIExpression()), !dbg !3613
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3615, !tbaa.struct !3458, !DIAssignID !3616
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3616, metadata ptr %6, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3617, metadata ptr undef, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %6, metadata !2501, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %1, metadata !2502, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %2, metadata !2503, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata ptr %6, metadata !2501, metadata !DIExpression()), !dbg !3618
  store i32 10, ptr %6, align 8, !dbg !3620, !tbaa !2444, !DIAssignID !3621
  call void @llvm.dbg.assign(metadata i32 10, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3621, metadata ptr %6, metadata !DIExpression()), !dbg !3613
  %7 = icmp ne ptr %1, null, !dbg !3622
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3623
  br i1 %9, label %11, label %10, !dbg !3623

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3624
  unreachable, !dbg !3624

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3625
  store ptr %1, ptr %12, align 8, !dbg !3626, !tbaa !2515, !DIAssignID !3627
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3627, metadata ptr %12, metadata !DIExpression()), !dbg !3613
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3628
  store ptr %2, ptr %13, align 8, !dbg !3629, !tbaa !2518, !DIAssignID !3630
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3630, metadata ptr %13, metadata !DIExpression()), !dbg !3613
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3631
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3632
  ret ptr %14, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3634 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3641
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3638, metadata !DIExpression()), !dbg !3642
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3639, metadata !DIExpression()), !dbg !3642
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3640, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3574, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata ptr %0, metadata !3575, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata ptr %1, metadata !3576, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata ptr %2, metadata !3577, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3641, metadata ptr %4, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 0, metadata !3585, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %0, metadata !3586, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %1, metadata !3587, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %2, metadata !3588, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 -1, metadata !3589, metadata !DIExpression()), !dbg !3645
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3648, !tbaa.struct !3458, !DIAssignID !3649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3649, metadata ptr %4, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3650, metadata ptr undef, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %4, metadata !2501, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %0, metadata !2502, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %1, metadata !2503, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %4, metadata !2501, metadata !DIExpression()), !dbg !3651
  store i32 10, ptr %4, align 8, !dbg !3653, !tbaa !2444, !DIAssignID !3654
  call void @llvm.dbg.assign(metadata i32 10, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3654, metadata ptr %4, metadata !DIExpression()), !dbg !3645
  %5 = icmp ne ptr %0, null, !dbg !3655
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3656
  br i1 %7, label %9, label %8, !dbg !3656

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3657
  unreachable, !dbg !3657

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3658
  store ptr %0, ptr %10, align 8, !dbg !3659, !tbaa !2515, !DIAssignID !3660
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3660, metadata ptr %10, metadata !DIExpression()), !dbg !3645
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3661
  store ptr %1, ptr %11, align 8, !dbg !3662, !tbaa !2518, !DIAssignID !3663
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3663, metadata ptr %11, metadata !DIExpression()), !dbg !3645
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3665
  ret ptr %12, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3667 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3675
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3671, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3673, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3675, metadata ptr %5, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32 0, metadata !3585, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %0, metadata !3586, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %1, metadata !3587, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %2, metadata !3588, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %3, metadata !3589, metadata !DIExpression()), !dbg !3677
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3680, !tbaa.struct !3458, !DIAssignID !3681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(), metadata !3681, metadata ptr %5, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3682, metadata ptr undef, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %5, metadata !2501, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %0, metadata !2502, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %1, metadata !2503, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %5, metadata !2501, metadata !DIExpression()), !dbg !3683
  store i32 10, ptr %5, align 8, !dbg !3685, !tbaa !2444, !DIAssignID !3686
  call void @llvm.dbg.assign(metadata i32 10, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3686, metadata ptr %5, metadata !DIExpression()), !dbg !3677
  %6 = icmp ne ptr %0, null, !dbg !3687
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3688
  br i1 %8, label %10, label %9, !dbg !3688

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3689
  unreachable, !dbg !3689

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3690
  store ptr %0, ptr %11, align 8, !dbg !3691, !tbaa !2515, !DIAssignID !3692
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3692, metadata ptr %11, metadata !DIExpression()), !dbg !3677
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3693
  store ptr %1, ptr %12, align 8, !dbg !3694, !tbaa !2518, !DIAssignID !3695
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3580, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3695, metadata ptr %12, metadata !DIExpression()), !dbg !3677
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3696
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3697
  ret ptr %13, !dbg !3698
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3699 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3706
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3704, metadata !DIExpression()), !dbg !3706
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3705, metadata !DIExpression()), !dbg !3706
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3707
  ret ptr %4, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3703, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3716
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3718
  ret ptr %3, !dbg !3719
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3720 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3724, metadata !DIExpression()), !dbg !3726
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3725, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %1, metadata !3704, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 -1, metadata !3705, metadata !DIExpression()), !dbg !3727
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3729
  ret ptr %3, !dbg !3730
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i32 0, metadata !3724, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 0, metadata !3703, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 -1, metadata !3705, metadata !DIExpression()), !dbg !3739
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3741
  ret ptr %2, !dbg !3742
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @safe_read(i32 noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3757
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3749, metadata !DIExpression()), !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3750, metadata !DIExpression()), !dbg !3757
  br label %4, !dbg !3758

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3759

6:                                                ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3750, metadata !DIExpression()), !dbg !3757
  %7 = tail call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %5) #39, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3751, metadata !DIExpression()), !dbg !3761
  %8 = icmp sgt i64 %7, -1, !dbg !3762
  br i1 %8, label %.loopexit, label %9, !dbg !3759

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #42, !dbg !3764
  %11 = load i32, ptr %10, align 4, !dbg !3764, !tbaa !1110
  %12 = icmp eq i32 %11, 4, !dbg !3764
  br i1 %12, label %6, label %13, !dbg !3766, !llvm.loop !3767

13:                                               ; preds = %9
  %.lcssa3 = phi i32 [ %11, %9 ], !dbg !3764
  %.lcssa2 = phi i64 [ %7, %9 ], !dbg !3760
  %14 = icmp ne i32 %.lcssa3, 22, !dbg !3770
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3772
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3750, metadata !DIExpression()), !dbg !3757
  br i1 %16, label %.loopexit1, label %4

.loopexit:                                        ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3760
  br label %17, !dbg !3773

.loopexit1:                                       ; preds = %13
  %.lcssa2.lcssa = phi i64 [ %.lcssa2, %13 ], !dbg !3760
  br label %17, !dbg !3773

17:                                               ; preds = %.loopexit1, %.loopexit
  %18 = phi i64 [ %.lcssa2.lcssa, %.loopexit1 ], [ %.lcssa, %.loopexit ]
  ret i64 %18, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mkstemp_safer(ptr noundef %0) local_unnamed_addr #10 !dbg !3774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3779
  %2 = tail call i32 @mkstemp(ptr noundef %0) #39, !dbg !3780
  %3 = tail call i32 @fd_safer(i32 noundef %2) #39, !dbg !3781
  ret i32 %3, !dbg !3782
}

declare !dbg !3783 i32 @mkstemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mkostemp_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3784 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3788, metadata !DIExpression()), !dbg !3790
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3789, metadata !DIExpression()), !dbg !3790
  %3 = tail call i32 @mkostemp(ptr noundef %0, i32 noundef %1) #39, !dbg !3791
  %4 = tail call i32 @fd_safer_flag(i32 noundef %3, i32 noundef %1) #39, !dbg !3792
  ret i32 %4, !dbg !3793
}

declare !dbg !3794 i32 @mkostemp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @path_search(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ptr noundef %3, i1 noundef %4) local_unnamed_addr #10 !dbg !3795 {
  %6 = alloca %struct.stat, align 8, !DIAssignID !3810
  %7 = alloca %struct.stat, align 8, !DIAssignID !3811
  %8 = alloca %struct.stat, align 8, !DIAssignID !3812
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3799, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3800, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3801, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3802, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !3803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3813
  %9 = icmp eq ptr %3, null, !dbg !3814
  br i1 %9, label %16, label %10, !dbg !3816

10:                                               ; preds = %5
  %11 = load i8, ptr %3, align 1, !dbg !3817, !tbaa !1119
  %12 = icmp eq i8 %11, 0, !dbg !3817
  br i1 %12, label %16, label %13, !dbg !3818

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #40, !dbg !3819
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3804, metadata !DIExpression()), !dbg !3813
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 5), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !3804, metadata !DIExpression()), !dbg !3813
  br label %16

16:                                               ; preds = %5, %10, %13
  %17 = phi i64 [ %15, %13 ], [ 4, %10 ], [ 4, %5 ], !dbg !3822
  %18 = phi ptr [ %3, %13 ], [ @.str.102, %10 ], [ @.str.102, %5 ]
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3802, metadata !DIExpression()), !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3804, metadata !DIExpression()), !dbg !3813
  br i1 %4, label %19, label %40, !dbg !3823

19:                                               ; preds = %16
  %20 = tail call ptr @secure_getenv(ptr noundef nonnull @.str.1.103) #39, !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !3805, metadata !DIExpression()), !dbg !3825
  %21 = icmp eq ptr %20, null, !dbg !3826
  br i1 %21, label %30, label %22, !dbg !3828

22:                                               ; preds = %19
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3829, metadata !DIExpression(), metadata !3812, metadata ptr %8, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %20, metadata !3832, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #39, !dbg !3870
  %23 = call i32 @stat(ptr noundef nonnull %20, ptr noundef nonnull %8) #39, !dbg !3871
  %24 = icmp eq i32 %23, 0, !dbg !3872
  %25 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 2, !dbg !3873
  %26 = load i32, ptr %25, align 8, !dbg !3873
  %27 = and i32 %26, 61440, !dbg !3873
  %28 = icmp eq i32 %27, 16384, !dbg !3873
  %29 = select i1 %24, i1 %28, i1 false, !dbg !3873
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #39, !dbg !3874
  br i1 %29, label %52, label %30, !dbg !3875

30:                                               ; preds = %22, %19
  %31 = icmp eq ptr %2, null, !dbg !3876
  br i1 %31, label %42, label %32, !dbg !3878

32:                                               ; preds = %30
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3829, metadata !DIExpression(), metadata !3811, metadata ptr %7, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata ptr %2, metadata !3832, metadata !DIExpression()), !dbg !3879
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #39, !dbg !3881
  %33 = call i32 @stat(ptr noundef nonnull %2, ptr noundef nonnull %7) #39, !dbg !3882
  %34 = icmp eq i32 %33, 0, !dbg !3883
  %35 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 2, !dbg !3884
  %36 = load i32, ptr %35, align 8, !dbg !3884
  %37 = and i32 %36, 61440, !dbg !3884
  %38 = icmp eq i32 %37, 16384, !dbg !3884
  %39 = select i1 %34, i1 %38, i1 false, !dbg !3884
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #39, !dbg !3885
  br i1 %39, label %52, label %42, !dbg !3886

40:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3801, metadata !DIExpression()), !dbg !3813
  %41 = icmp eq ptr %2, null, !dbg !3887
  br i1 %41, label %42, label %52, !dbg !3889

42:                                               ; preds = %32, %30, %40
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3829, metadata !DIExpression(), metadata !3810, metadata ptr %6, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata ptr @.str.2.104, metadata !3832, metadata !DIExpression()), !dbg !3890
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #39, !dbg !3894
  %43 = call i32 @stat(ptr noundef nonnull @.str.2.104, ptr noundef nonnull %6) #39, !dbg !3895
  %44 = icmp eq i32 %43, 0, !dbg !3896
  %45 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 2, !dbg !3897
  %46 = load i32, ptr %45, align 8, !dbg !3897
  %47 = and i32 %46, 61440, !dbg !3897
  %48 = icmp eq i32 %47, 16384, !dbg !3897
  %49 = select i1 %44, i1 %48, i1 false, !dbg !3897
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #39, !dbg !3898
  br i1 %49, label %52, label %50, !dbg !3899

50:                                               ; preds = %42
  %51 = tail call ptr @__errno_location() #42, !dbg !3900
  store i32 2, ptr %51, align 4, !dbg !3900, !tbaa !1110
  br label %77, !dbg !3903

52:                                               ; preds = %22, %32, %42, %40
  %53 = phi ptr [ %2, %40 ], [ @.str.2.104, %42 ], [ %20, %22 ], [ %2, %32 ], !dbg !3813
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !3801, metadata !DIExpression()), !dbg !3813
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #40, !dbg !3904
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !3808, metadata !DIExpression()), !dbg !3813
  %55 = icmp eq i64 %54, 0, !dbg !3905
  br i1 %55, label %61, label %56, !dbg !3906

56:                                               ; preds = %52
  %57 = add i64 %54, -1, !dbg !3907
  %58 = getelementptr inbounds i8, ptr %53, i64 %57, !dbg !3907
  %59 = load i8, ptr %58, align 1, !dbg !3907, !tbaa !1119
  %60 = icmp ne i8 %59, 47, !dbg !3907
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ], !dbg !3813
  tail call void @llvm.dbg.value(metadata i1 %62, metadata !3809, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3813
  %63 = zext i1 %62 to i64, !dbg !3908
  %64 = add nuw nsw i64 %17, 7, !dbg !3910
  %65 = add i64 %64, %54, !dbg !3911
  %66 = add i64 %65, %63, !dbg !3912
  %67 = icmp ugt i64 %66, %1, !dbg !3913
  br i1 %67, label %68, label %70, !dbg !3914

68:                                               ; preds = %61
  %69 = tail call ptr @__errno_location() #42, !dbg !3915
  store i32 22, ptr %69, align 4, !dbg !3915, !tbaa !1110
  br label %77, !dbg !3917

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %0, metadata !3918, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata ptr %53, metadata !3921, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %54, metadata !3922, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %53, i64 noundef %54, i1 noundef false) #39, !dbg !3925
  %71 = getelementptr inbounds i8, ptr %0, i64 %54, !dbg !3926
  %72 = xor i1 %62, true, !dbg !3926
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds [12 x i8], ptr @.str.3.105, i64 0, i64 %73, !dbg !3926
  %75 = trunc i64 %17 to i32, !dbg !3926
  %76 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %71, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %74, i32 noundef %75, ptr noundef nonnull %18) #39, !dbg !3926
  br label %77, !dbg !3927

77:                                               ; preds = %68, %70, %50
  %78 = phi i32 [ -1, %50 ], [ -1, %68 ], [ 0, %70 ], !dbg !3813
  ret i32 %78, !dbg !3928
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !3929 ptr @secure_getenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3930 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3936 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3940 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !3947
  %2 = icmp ult i32 %0, 3, !dbg !3948
  br i1 %2, label %3, label %8, !dbg !3948

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #39, !dbg !3949
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3943, metadata !DIExpression()), !dbg !3950
  %5 = tail call ptr @__errno_location() #42, !dbg !3951
  %6 = load i32, ptr %5, align 4, !dbg !3951, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3946, metadata !DIExpression()), !dbg !3950
  %7 = tail call i32 @close(i32 noundef %0) #39, !dbg !3952
  store i32 %6, ptr %5, align 4, !dbg !3953, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3942, metadata !DIExpression()), !dbg !3947
  br label %8, !dbg !3954

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3942, metadata !DIExpression()), !dbg !3947
  ret i32 %9, !dbg !3955
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3956 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3994, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3995, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3997, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3998, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3999, metadata !DIExpression()), !dbg !4000
  %7 = icmp eq ptr %1, null, !dbg !4001
  br i1 %7, label %10, label %8, !dbg !4003

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.108, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4004
  br label %12, !dbg !4004

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.109, ptr noundef %2, ptr noundef %3) #39, !dbg !4005
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.3.111, i32 noundef 5) #39, !dbg !4006
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4006
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !4007
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.5.113, i32 noundef 5) #39, !dbg !4008
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.114) #39, !dbg !4008
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !4009
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
  ], !dbg !4010

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.7.115, i32 noundef 5) #39, !dbg !4011
  %21 = load ptr, ptr %4, align 8, !dbg !4011, !tbaa !1040
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4011
  br label %147, !dbg !4013

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.8.116, i32 noundef 5) #39, !dbg !4014
  %25 = load ptr, ptr %4, align 8, !dbg !4014, !tbaa !1040
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4014
  %27 = load ptr, ptr %26, align 8, !dbg !4014, !tbaa !1040
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4014
  br label %147, !dbg !4015

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.9.117, i32 noundef 5) #39, !dbg !4016
  %31 = load ptr, ptr %4, align 8, !dbg !4016, !tbaa !1040
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4016
  %33 = load ptr, ptr %32, align 8, !dbg !4016, !tbaa !1040
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4016
  %35 = load ptr, ptr %34, align 8, !dbg !4016, !tbaa !1040
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4016
  br label %147, !dbg !4017

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.10.118, i32 noundef 5) #39, !dbg !4018
  %39 = load ptr, ptr %4, align 8, !dbg !4018, !tbaa !1040
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4018
  %41 = load ptr, ptr %40, align 8, !dbg !4018, !tbaa !1040
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4018
  %43 = load ptr, ptr %42, align 8, !dbg !4018, !tbaa !1040
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4018
  %45 = load ptr, ptr %44, align 8, !dbg !4018, !tbaa !1040
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4018
  br label %147, !dbg !4019

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.11.119, i32 noundef 5) #39, !dbg !4020
  %49 = load ptr, ptr %4, align 8, !dbg !4020, !tbaa !1040
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4020
  %51 = load ptr, ptr %50, align 8, !dbg !4020, !tbaa !1040
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4020
  %53 = load ptr, ptr %52, align 8, !dbg !4020, !tbaa !1040
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4020
  %55 = load ptr, ptr %54, align 8, !dbg !4020, !tbaa !1040
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4020
  %57 = load ptr, ptr %56, align 8, !dbg !4020, !tbaa !1040
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4020
  br label %147, !dbg !4021

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.12.120, i32 noundef 5) #39, !dbg !4022
  %61 = load ptr, ptr %4, align 8, !dbg !4022, !tbaa !1040
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4022
  %63 = load ptr, ptr %62, align 8, !dbg !4022, !tbaa !1040
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4022
  %65 = load ptr, ptr %64, align 8, !dbg !4022, !tbaa !1040
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4022
  %67 = load ptr, ptr %66, align 8, !dbg !4022, !tbaa !1040
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4022
  %69 = load ptr, ptr %68, align 8, !dbg !4022, !tbaa !1040
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4022
  %71 = load ptr, ptr %70, align 8, !dbg !4022, !tbaa !1040
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4022
  br label %147, !dbg !4023

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.13.121, i32 noundef 5) #39, !dbg !4024
  %75 = load ptr, ptr %4, align 8, !dbg !4024, !tbaa !1040
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4024
  %77 = load ptr, ptr %76, align 8, !dbg !4024, !tbaa !1040
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4024
  %79 = load ptr, ptr %78, align 8, !dbg !4024, !tbaa !1040
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4024
  %81 = load ptr, ptr %80, align 8, !dbg !4024, !tbaa !1040
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4024
  %83 = load ptr, ptr %82, align 8, !dbg !4024, !tbaa !1040
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4024
  %85 = load ptr, ptr %84, align 8, !dbg !4024, !tbaa !1040
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4024
  %87 = load ptr, ptr %86, align 8, !dbg !4024, !tbaa !1040
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4024
  br label %147, !dbg !4025

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.14.122, i32 noundef 5) #39, !dbg !4026
  %91 = load ptr, ptr %4, align 8, !dbg !4026, !tbaa !1040
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4026
  %93 = load ptr, ptr %92, align 8, !dbg !4026, !tbaa !1040
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4026
  %95 = load ptr, ptr %94, align 8, !dbg !4026, !tbaa !1040
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4026
  %97 = load ptr, ptr %96, align 8, !dbg !4026, !tbaa !1040
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4026
  %99 = load ptr, ptr %98, align 8, !dbg !4026, !tbaa !1040
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4026
  %101 = load ptr, ptr %100, align 8, !dbg !4026, !tbaa !1040
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4026
  %103 = load ptr, ptr %102, align 8, !dbg !4026, !tbaa !1040
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4026
  %105 = load ptr, ptr %104, align 8, !dbg !4026, !tbaa !1040
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4026
  br label %147, !dbg !4027

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.15.123, i32 noundef 5) #39, !dbg !4028
  %109 = load ptr, ptr %4, align 8, !dbg !4028, !tbaa !1040
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4028
  %111 = load ptr, ptr %110, align 8, !dbg !4028, !tbaa !1040
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4028
  %113 = load ptr, ptr %112, align 8, !dbg !4028, !tbaa !1040
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4028
  %115 = load ptr, ptr %114, align 8, !dbg !4028, !tbaa !1040
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4028
  %117 = load ptr, ptr %116, align 8, !dbg !4028, !tbaa !1040
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4028
  %119 = load ptr, ptr %118, align 8, !dbg !4028, !tbaa !1040
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4028
  %121 = load ptr, ptr %120, align 8, !dbg !4028, !tbaa !1040
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4028
  %123 = load ptr, ptr %122, align 8, !dbg !4028, !tbaa !1040
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4028
  %125 = load ptr, ptr %124, align 8, !dbg !4028, !tbaa !1040
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4028
  br label %147, !dbg !4029

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.16.124, i32 noundef 5) #39, !dbg !4030
  %129 = load ptr, ptr %4, align 8, !dbg !4030, !tbaa !1040
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4030
  %131 = load ptr, ptr %130, align 8, !dbg !4030, !tbaa !1040
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4030
  %133 = load ptr, ptr %132, align 8, !dbg !4030, !tbaa !1040
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4030
  %135 = load ptr, ptr %134, align 8, !dbg !4030, !tbaa !1040
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4030
  %137 = load ptr, ptr %136, align 8, !dbg !4030, !tbaa !1040
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4030
  %139 = load ptr, ptr %138, align 8, !dbg !4030, !tbaa !1040
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4030
  %141 = load ptr, ptr %140, align 8, !dbg !4030, !tbaa !1040
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4030
  %143 = load ptr, ptr %142, align 8, !dbg !4030, !tbaa !1040
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4030
  %145 = load ptr, ptr %144, align 8, !dbg !4030, !tbaa !1040
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4030
  br label %147, !dbg !4031

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4032
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4038, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4039, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4040, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4041, metadata !DIExpression()), !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4042, metadata !DIExpression()), !dbg !4043
  br label %6, !dbg !4044

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4042, metadata !DIExpression()), !dbg !4043
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4047
  %9 = load ptr, ptr %8, align 8, !dbg !4047, !tbaa !1040
  %10 = icmp eq ptr %9, null, !dbg !4049
  %11 = add i64 %7, 1, !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4042, metadata !DIExpression()), !dbg !4043
  br i1 %10, label %12, label %6, !dbg !4049, !llvm.loop !4051

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4046
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4053
  ret void, !dbg !4054
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4055 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4075, metadata !DIExpression(), metadata !4077, metadata ptr %6, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4069, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4070, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4071, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4072, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4073, metadata !DIExpression(DW_OP_deref)), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4079
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4074, metadata !DIExpression()), !dbg !4078
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4074, metadata !DIExpression()), !dbg !4078
  %10 = icmp sgt i32 %9, -1, !dbg !4080
  br i1 %10, label %18, label %11, !dbg !4080

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4080
  store i32 %12, ptr %7, align 8, !dbg !4080
  %13 = icmp ult i32 %9, -7, !dbg !4080
  br i1 %13, label %14, label %18, !dbg !4080

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4080
  %16 = sext i32 %9 to i64, !dbg !4080
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4080
  br label %22, !dbg !4080

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4080
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4080
  store ptr %21, ptr %4, align 8, !dbg !4080
  br label %22, !dbg !4080

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4080
  %25 = load ptr, ptr %24, align 8, !dbg !4080
  store ptr %25, ptr %6, align 8, !dbg !4083, !tbaa !1040
  %26 = icmp eq ptr %25, null, !dbg !4084
  br i1 %26, label %197, label %27, !dbg !4085

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4074, metadata !DIExpression()), !dbg !4078
  %28 = icmp sgt i32 %23, -1, !dbg !4080
  br i1 %28, label %36, label %29, !dbg !4080

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4080
  store i32 %30, ptr %7, align 8, !dbg !4080
  %31 = icmp ult i32 %23, -7, !dbg !4080
  br i1 %31, label %32, label %36, !dbg !4080

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4080
  %34 = sext i32 %23 to i64, !dbg !4080
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4080
  br label %40, !dbg !4080

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4080
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4080
  store ptr %39, ptr %4, align 8, !dbg !4080
  br label %40, !dbg !4080

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4080
  %43 = load ptr, ptr %42, align 8, !dbg !4080
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4086
  store ptr %43, ptr %44, align 8, !dbg !4083, !tbaa !1040
  %45 = icmp eq ptr %43, null, !dbg !4084
  br i1 %45, label %197, label %46, !dbg !4085

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4074, metadata !DIExpression()), !dbg !4078
  %47 = icmp sgt i32 %41, -1, !dbg !4080
  br i1 %47, label %55, label %48, !dbg !4080

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4080
  store i32 %49, ptr %7, align 8, !dbg !4080
  %50 = icmp ult i32 %41, -7, !dbg !4080
  br i1 %50, label %51, label %55, !dbg !4080

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4080
  %53 = sext i32 %41 to i64, !dbg !4080
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4080
  br label %59, !dbg !4080

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4080
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4080
  store ptr %58, ptr %4, align 8, !dbg !4080
  br label %59, !dbg !4080

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4080
  %62 = load ptr, ptr %61, align 8, !dbg !4080
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4086
  store ptr %62, ptr %63, align 8, !dbg !4083, !tbaa !1040
  %64 = icmp eq ptr %62, null, !dbg !4084
  br i1 %64, label %197, label %65, !dbg !4085

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4074, metadata !DIExpression()), !dbg !4078
  %66 = icmp sgt i32 %60, -1, !dbg !4080
  br i1 %66, label %74, label %67, !dbg !4080

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4080
  store i32 %68, ptr %7, align 8, !dbg !4080
  %69 = icmp ult i32 %60, -7, !dbg !4080
  br i1 %69, label %70, label %74, !dbg !4080

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4080
  %72 = sext i32 %60 to i64, !dbg !4080
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4080
  br label %78, !dbg !4080

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4080
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4080
  store ptr %77, ptr %4, align 8, !dbg !4080
  br label %78, !dbg !4080

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4080
  %81 = load ptr, ptr %80, align 8, !dbg !4080
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4086
  store ptr %81, ptr %82, align 8, !dbg !4083, !tbaa !1040
  %83 = icmp eq ptr %81, null, !dbg !4084
  br i1 %83, label %197, label %84, !dbg !4085

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4074, metadata !DIExpression()), !dbg !4078
  %85 = icmp sgt i32 %79, -1, !dbg !4080
  br i1 %85, label %93, label %86, !dbg !4080

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4080
  store i32 %87, ptr %7, align 8, !dbg !4080
  %88 = icmp ult i32 %79, -7, !dbg !4080
  br i1 %88, label %89, label %93, !dbg !4080

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4080
  %91 = sext i32 %79 to i64, !dbg !4080
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4080
  br label %97, !dbg !4080

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4080
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4080
  store ptr %96, ptr %4, align 8, !dbg !4080
  br label %97, !dbg !4080

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4080
  %100 = load ptr, ptr %99, align 8, !dbg !4080
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4086
  store ptr %100, ptr %101, align 8, !dbg !4083, !tbaa !1040
  %102 = icmp eq ptr %100, null, !dbg !4084
  br i1 %102, label %197, label %103, !dbg !4085

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4074, metadata !DIExpression()), !dbg !4078
  %104 = icmp sgt i32 %98, -1, !dbg !4080
  br i1 %104, label %112, label %105, !dbg !4080

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4080
  store i32 %106, ptr %7, align 8, !dbg !4080
  %107 = icmp ult i32 %98, -7, !dbg !4080
  br i1 %107, label %108, label %112, !dbg !4080

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4080
  %110 = sext i32 %98 to i64, !dbg !4080
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4080
  br label %116, !dbg !4080

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4080
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4080
  store ptr %115, ptr %4, align 8, !dbg !4080
  br label %116, !dbg !4080

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4080
  %119 = load ptr, ptr %118, align 8, !dbg !4080
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4086
  store ptr %119, ptr %120, align 8, !dbg !4083, !tbaa !1040
  %121 = icmp eq ptr %119, null, !dbg !4084
  br i1 %121, label %197, label %122, !dbg !4085

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4074, metadata !DIExpression()), !dbg !4078
  %123 = icmp sgt i32 %117, -1, !dbg !4080
  br i1 %123, label %131, label %124, !dbg !4080

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4080
  store i32 %125, ptr %7, align 8, !dbg !4080
  %126 = icmp ult i32 %117, -7, !dbg !4080
  br i1 %126, label %127, label %131, !dbg !4080

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4080
  %129 = sext i32 %117 to i64, !dbg !4080
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4080
  br label %135, !dbg !4080

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4080
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4080
  store ptr %134, ptr %4, align 8, !dbg !4080
  br label %135, !dbg !4080

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4080
  %138 = load ptr, ptr %137, align 8, !dbg !4080
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4086
  store ptr %138, ptr %139, align 8, !dbg !4083, !tbaa !1040
  %140 = icmp eq ptr %138, null, !dbg !4084
  br i1 %140, label %197, label %141, !dbg !4085

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4074, metadata !DIExpression()), !dbg !4078
  %142 = icmp sgt i32 %136, -1, !dbg !4080
  br i1 %142, label %150, label %143, !dbg !4080

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4080
  store i32 %144, ptr %7, align 8, !dbg !4080
  %145 = icmp ult i32 %136, -7, !dbg !4080
  br i1 %145, label %146, label %150, !dbg !4080

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4080
  %148 = sext i32 %136 to i64, !dbg !4080
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4080
  br label %154, !dbg !4080

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4080
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4080
  store ptr %153, ptr %4, align 8, !dbg !4080
  br label %154, !dbg !4080

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4080
  %157 = load ptr, ptr %156, align 8, !dbg !4080
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4086
  store ptr %157, ptr %158, align 8, !dbg !4083, !tbaa !1040
  %159 = icmp eq ptr %157, null, !dbg !4084
  br i1 %159, label %197, label %160, !dbg !4085

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4074, metadata !DIExpression()), !dbg !4078
  %161 = icmp sgt i32 %155, -1, !dbg !4080
  br i1 %161, label %169, label %162, !dbg !4080

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4080
  store i32 %163, ptr %7, align 8, !dbg !4080
  %164 = icmp ult i32 %155, -7, !dbg !4080
  br i1 %164, label %165, label %169, !dbg !4080

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4080
  %167 = sext i32 %155 to i64, !dbg !4080
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4080
  br label %173, !dbg !4080

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4080
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4080
  store ptr %172, ptr %4, align 8, !dbg !4080
  br label %173, !dbg !4080

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4080
  %176 = load ptr, ptr %175, align 8, !dbg !4080
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4086
  store ptr %176, ptr %177, align 8, !dbg !4083, !tbaa !1040
  %178 = icmp eq ptr %176, null, !dbg !4084
  br i1 %178, label %197, label %179, !dbg !4085

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4074, metadata !DIExpression()), !dbg !4078
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4074, metadata !DIExpression()), !dbg !4078
  %180 = icmp sgt i32 %174, -1, !dbg !4080
  br i1 %180, label %188, label %181, !dbg !4080

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4080
  store i32 %182, ptr %7, align 8, !dbg !4080
  %183 = icmp ult i32 %174, -7, !dbg !4080
  br i1 %183, label %184, label %188, !dbg !4080

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4080
  %186 = sext i32 %174 to i64, !dbg !4080
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4080
  br label %191, !dbg !4080

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4080
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4080
  store ptr %190, ptr %4, align 8, !dbg !4080
  br label %191, !dbg !4080

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4080
  %193 = load ptr, ptr %192, align 8, !dbg !4080
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4086
  store ptr %193, ptr %194, align 8, !dbg !4083, !tbaa !1040
  %195 = icmp eq ptr %193, null, !dbg !4084
  %196 = select i1 %195, i64 9, i64 10, !dbg !4085
  br label %197, !dbg !4085

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4087
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4088
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4089
  ret void, !dbg !4089
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4090 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4098, metadata !DIExpression(), metadata !4099, metadata ptr %5, metadata !DIExpression()), !dbg !4100
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4095, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4096, metadata !DIExpression()), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4097, metadata !DIExpression()), !dbg !4100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !4101
  call void @llvm.va_start(ptr nonnull %5), !dbg !4102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !4103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4103, !tbaa.struct !1989
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !4103
  call void @llvm.va_end(ptr nonnull %5), !dbg !4104
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !4105
  ret void, !dbg !4105
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4106 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4107, !tbaa !1040
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %1), !dbg !4107
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.17.129, i32 noundef 5) #39, !dbg !4108
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.130) #39, !dbg !4108
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.19.131, i32 noundef 5) #39, !dbg !4109
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.132, ptr noundef nonnull @.str.21.133) #39, !dbg !4109
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.22.134, i32 noundef 5) #39, !dbg !4110
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.135) #39, !dbg !4110
  ret void, !dbg !4111
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4112 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4117, metadata !DIExpression()), !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4118, metadata !DIExpression()), !dbg !4120
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4119, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %0, metadata !4121, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %2, metadata !4125, metadata !DIExpression()), !dbg !4126
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4128
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4134
  %5 = icmp eq ptr %4, null, !dbg !4136
  br i1 %5, label %6, label %7, !dbg !4138

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4139
  unreachable, !dbg !4139

7:                                                ; preds = %3
  ret ptr %4, !dbg !4140
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4122 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4121, metadata !DIExpression()), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4125, metadata !DIExpression()), !dbg !4141
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4142
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4143
  %5 = icmp eq ptr %4, null, !dbg !4145
  br i1 %5, label %6, label %7, !dbg !4146

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4147
  unreachable, !dbg !4147

7:                                                ; preds = %3
  ret ptr %4, !dbg !4148
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4149 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4153, metadata !DIExpression()), !dbg !4154
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4155
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4156
  %3 = icmp eq ptr %2, null, !dbg !4158
  br i1 %3, label %4, label %5, !dbg !4159

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4160
  unreachable, !dbg !4160

5:                                                ; preds = %1
  ret ptr %2, !dbg !4161
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %0, metadata !4168, metadata !DIExpression()), !dbg !4172
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4174
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4175
  %3 = icmp eq ptr %2, null, !dbg !4177
  br i1 %3, label %4, label %5, !dbg !4178

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4179
  unreachable, !dbg !4179

5:                                                ; preds = %1
  ret ptr %2, !dbg !4180
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4181 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %0, metadata !4153, metadata !DIExpression()), !dbg !4187
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4190
  %3 = icmp eq ptr %2, null, !dbg !4192
  br i1 %3, label %4, label %5, !dbg !4193

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4194
  unreachable, !dbg !4194

5:                                                ; preds = %1
  ret ptr %2, !dbg !4195
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4196 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4205
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4207
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4208
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4209
  %5 = icmp eq ptr %4, null, !dbg !4211
  br i1 %5, label %6, label %7, !dbg !4212

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4213
  unreachable, !dbg !4213

7:                                                ; preds = %2
  ret ptr %4, !dbg !4214
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4215 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4219, metadata !DIExpression()), !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %0, metadata !4222, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %1, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata i64 %1, metadata !4204, metadata !DIExpression()), !dbg !4228
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4230
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4231
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4232
  %5 = icmp eq ptr %4, null, !dbg !4234
  br i1 %5, label %6, label %7, !dbg !4235

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4236
  unreachable, !dbg !4236

7:                                                ; preds = %2
  ret ptr %4, !dbg !4237
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4242, metadata !DIExpression()), !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4243, metadata !DIExpression()), !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4244, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %0, metadata !4246, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %2, metadata !4250, metadata !DIExpression()), !dbg !4251
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4253
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4254
  %5 = icmp eq ptr %4, null, !dbg !4256
  br i1 %5, label %6, label %7, !dbg !4257

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4258
  unreachable, !dbg !4258

7:                                                ; preds = %3
  ret ptr %4, !dbg !4259
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4260 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4264, metadata !DIExpression()), !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata ptr null, metadata !4121, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %0, metadata !4124, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4125, metadata !DIExpression()), !dbg !4267
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4269
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4270
  %4 = icmp eq ptr %3, null, !dbg !4272
  br i1 %4, label %5, label %6, !dbg !4273

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4274
  unreachable, !dbg !4274

6:                                                ; preds = %2
  ret ptr %3, !dbg !4275
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4276 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4280, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr null, metadata !4242, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %0, metadata !4243, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr null, metadata !4246, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %0, metadata !4249, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4285
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4287
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4288
  %4 = icmp eq ptr %3, null, !dbg !4290
  br i1 %4, label %5, label %6, !dbg !4291

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4292
  unreachable, !dbg !4292

6:                                                ; preds = %2
  ret ptr %3, !dbg !4293
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4294 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %0, metadata !972, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr %1, metadata !973, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 1, metadata !974, metadata !DIExpression()), !dbg !4301
  %3 = load i64, ptr %1, align 8, !dbg !4303, !tbaa !1273
  call void @llvm.dbg.value(metadata i64 %3, metadata !975, metadata !DIExpression()), !dbg !4301
  %4 = icmp eq ptr %0, null, !dbg !4304
  br i1 %4, label %5, label %8, !dbg !4306

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4307
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4310
  br label %15, !dbg !4310

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4311
  %10 = add nuw i64 %9, 1, !dbg !4311
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4311
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4311
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4311
  call void @llvm.dbg.value(metadata i64 %13, metadata !975, metadata !DIExpression()), !dbg !4301
  br i1 %12, label %14, label %15, !dbg !4314

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4315
  unreachable, !dbg !4315

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4301
  call void @llvm.dbg.value(metadata i64 %16, metadata !975, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr %0, metadata !4121, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 %16, metadata !4124, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i64 1, metadata !4125, metadata !DIExpression()), !dbg !4316
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4318
  call void @llvm.dbg.value(metadata ptr %17, metadata !4129, metadata !DIExpression()), !dbg !4319
  %18 = icmp eq ptr %17, null, !dbg !4321
  br i1 %18, label %19, label %20, !dbg !4322

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4323
  unreachable, !dbg !4323

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !972, metadata !DIExpression()), !dbg !4301
  store i64 %16, ptr %1, align 8, !dbg !4324, !tbaa !1273
  ret ptr %17, !dbg !4325
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !967 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !972, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !973, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !974, metadata !DIExpression()), !dbg !4326
  %4 = load i64, ptr %1, align 8, !dbg !4327, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !975, metadata !DIExpression()), !dbg !4326
  %5 = icmp eq ptr %0, null, !dbg !4328
  br i1 %5, label %6, label %13, !dbg !4329

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4330
  br i1 %7, label %8, label %20, !dbg !4331

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4332
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !975, metadata !DIExpression()), !dbg !4326
  %10 = icmp ugt i64 %2, 128, !dbg !4334
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4335
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !975, metadata !DIExpression()), !dbg !4326
  br label %20, !dbg !4336

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4337
  %15 = add nuw i64 %14, 1, !dbg !4337
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4337
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4337
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4337
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !975, metadata !DIExpression()), !dbg !4326
  br i1 %17, label %19, label %20, !dbg !4338

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4339
  unreachable, !dbg !4339

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !975, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata ptr %0, metadata !4121, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %21, metadata !4124, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %2, metadata !4125, metadata !DIExpression()), !dbg !4340
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4342
  call void @llvm.dbg.value(metadata ptr %22, metadata !4129, metadata !DIExpression()), !dbg !4343
  %23 = icmp eq ptr %22, null, !dbg !4345
  br i1 %23, label %24, label %25, !dbg !4346

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4347
  unreachable, !dbg !4347

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !972, metadata !DIExpression()), !dbg !4326
  store i64 %21, ptr %1, align 8, !dbg !4348, !tbaa !1273
  ret ptr %22, !dbg !4349
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !979 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !988, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !989, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !990, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !991, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !992, metadata !DIExpression()), !dbg !4350
  %6 = load i64, ptr %1, align 8, !dbg !4351, !tbaa !1273
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !993, metadata !DIExpression()), !dbg !4350
  %7 = ashr i64 %6, 1, !dbg !4352
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4352
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4352
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !994, metadata !DIExpression()), !dbg !4350
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !994, metadata !DIExpression()), !dbg !4350
  %12 = icmp sgt i64 %3, -1, !dbg !4355
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4357
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4357
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !994, metadata !DIExpression()), !dbg !4350
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4358
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4358
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4358
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !995, metadata !DIExpression()), !dbg !4350
  %18 = icmp slt i64 %17, 128, !dbg !4358
  %19 = select i1 %18, i64 128, i64 0, !dbg !4358
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4358
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !996, metadata !DIExpression()), !dbg !4350
  %21 = icmp eq i64 %20, 0, !dbg !4359
  br i1 %21, label %28, label %22, !dbg !4361

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4362
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !994, metadata !DIExpression()), !dbg !4350
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4364
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !995, metadata !DIExpression()), !dbg !4350
  br label %28, !dbg !4365

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4350
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !995, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !994, metadata !DIExpression()), !dbg !4350
  %31 = icmp eq ptr %0, null, !dbg !4366
  br i1 %31, label %32, label %33, !dbg !4368

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4369, !tbaa !1273
  br label %33, !dbg !4370

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4371
  %35 = icmp slt i64 %34, %2, !dbg !4373
  br i1 %35, label %36, label %48, !dbg !4374

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4375
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4375
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4375
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !994, metadata !DIExpression()), !dbg !4350
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4376
  br i1 %42, label %47, label %43, !dbg !4376

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4377
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4377
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4377
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !995, metadata !DIExpression()), !dbg !4350
  br i1 %45, label %47, label %48, !dbg !4378

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #41, !dbg !4379
  unreachable, !dbg !4379

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4350
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !995, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !994, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 %50, metadata !4199, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %0, metadata !4201, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %50, metadata !4204, metadata !DIExpression()), !dbg !4382
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4384
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !4385
  call void @llvm.dbg.value(metadata ptr %52, metadata !4129, metadata !DIExpression()), !dbg !4386
  %53 = icmp eq ptr %52, null, !dbg !4388
  br i1 %53, label %54, label %55, !dbg !4389

54:                                               ; preds = %48
  tail call void @xalloc_die() #41, !dbg !4390
  unreachable, !dbg !4390

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !988, metadata !DIExpression()), !dbg !4350
  store i64 %49, ptr %1, align 8, !dbg !4391, !tbaa !1273
  ret ptr %52, !dbg !4392
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4393 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4395, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %0, metadata !4397, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 1, metadata !4400, metadata !DIExpression()), !dbg !4401
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4403
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4404
  %3 = icmp eq ptr %2, null, !dbg !4406
  br i1 %3, label %4, label %5, !dbg !4407

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4408
  unreachable, !dbg !4408

5:                                                ; preds = %1
  ret ptr %2, !dbg !4409
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4410 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4398 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4397, metadata !DIExpression()), !dbg !4411
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4400, metadata !DIExpression()), !dbg !4411
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4412
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4413
  %4 = icmp eq ptr %3, null, !dbg !4415
  br i1 %4, label %5, label %6, !dbg !4416

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4417
  unreachable, !dbg !4417

6:                                                ; preds = %2
  ret ptr %3, !dbg !4418
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4419 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4421, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %0, metadata !4423, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 1, metadata !4426, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 1, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i64 1, metadata !4432, metadata !DIExpression()), !dbg !4433
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4435
  call void @llvm.dbg.value(metadata ptr %2, metadata !4129, metadata !DIExpression()), !dbg !4436
  %3 = icmp eq ptr %2, null, !dbg !4438
  br i1 %3, label %4, label %5, !dbg !4439

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4440
  unreachable, !dbg !4440

5:                                                ; preds = %1
  ret ptr %2, !dbg !4441
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4424 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4423, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4426, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %1, metadata !4432, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %0, metadata !4429, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i64 %1, metadata !4432, metadata !DIExpression()), !dbg !4443
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4445
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4446
  %4 = icmp eq ptr %3, null, !dbg !4448
  br i1 %4, label %5, label %6, !dbg !4449

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4450
  unreachable, !dbg !4450

6:                                                ; preds = %2
  ret ptr %3, !dbg !4451
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4452 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4456, metadata !DIExpression()), !dbg !4458
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()), !dbg !4459
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4461
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4462
  %4 = icmp eq ptr %3, null, !dbg !4464
  br i1 %4, label %5, label %6, !dbg !4465

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4466
  unreachable, !dbg !4466

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4467, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata ptr %0, metadata !4470, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4474
  ret ptr %3, !dbg !4475
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4480, metadata !DIExpression()), !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i64 %1, metadata !4166, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i64 %1, metadata !4168, metadata !DIExpression()), !dbg !4485
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4487
  call void @llvm.dbg.value(metadata ptr %3, metadata !4129, metadata !DIExpression()), !dbg !4488
  %4 = icmp eq ptr %3, null, !dbg !4490
  br i1 %4, label %5, label %6, !dbg !4491

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4492
  unreachable, !dbg !4492

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4467, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %0, metadata !4470, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4493
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4495
  ret ptr %3, !dbg !4496
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4497 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4501, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4502, metadata !DIExpression()), !dbg !4504
  %3 = add nsw i64 %1, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %3, metadata !4166, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i64 %3, metadata !4168, metadata !DIExpression()), !dbg !4508
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4510
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4511
  %5 = icmp eq ptr %4, null, !dbg !4513
  br i1 %5, label %6, label %7, !dbg !4514

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4515
  unreachable, !dbg !4515

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4503, metadata !DIExpression()), !dbg !4504
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4516
  store i8 0, ptr %8, align 1, !dbg !4517, !tbaa !1119
  call void @llvm.dbg.value(metadata ptr %4, metadata !4467, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata ptr %0, metadata !4470, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i64 %1, metadata !4471, metadata !DIExpression()), !dbg !4518
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4520
  ret ptr %4, !dbg !4521
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4524, metadata !DIExpression()), !dbg !4525
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4526
  %3 = add i64 %2, 1, !dbg !4527
  call void @llvm.dbg.value(metadata ptr %0, metadata !4456, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 %3, metadata !4457, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i64 %3, metadata !4153, metadata !DIExpression()), !dbg !4530
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4532
  call void @llvm.dbg.value(metadata ptr %4, metadata !4129, metadata !DIExpression()), !dbg !4533
  %5 = icmp eq ptr %4, null, !dbg !4535
  br i1 %5, label %6, label %7, !dbg !4536

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4537
  unreachable, !dbg !4537

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4467, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata ptr %0, metadata !4470, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i64 %3, metadata !4471, metadata !DIExpression()), !dbg !4538
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4540
  ret ptr %4, !dbg !4541
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4542 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4547, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4544, metadata !DIExpression()), !dbg !4548
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.150, ptr noundef nonnull @.str.2.151, i32 noundef 5) #39, !dbg !4547
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef %2) #39, !dbg !4547
  %3 = icmp eq i32 %1, 0, !dbg !4547
  tail call void @llvm.assume(i1 %3), !dbg !4547
  tail call void @abort() #41, !dbg !4549
  unreachable, !dbg !4549
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4593
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4594
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4589, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4593
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4595, metadata !DIExpression()), !dbg !4598
  %3 = load i32, ptr %0, align 8, !dbg !4600, !tbaa !2297
  %4 = and i32 %3, 32, !dbg !4601
  %5 = icmp eq i32 %4, 0, !dbg !4601
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4591, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4593
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4602
  %7 = icmp eq i32 %6, 0, !dbg !4603
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4592, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4593
  br i1 %5, label %8, label %18, !dbg !4604

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4606
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4593
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4607
  %11 = xor i1 %7, true, !dbg !4607
  %12 = sext i1 %11 to i32, !dbg !4607
  br i1 %10, label %21, label %13, !dbg !4607

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4608
  %15 = load i32, ptr %14, align 4, !dbg !4608, !tbaa !1110
  %16 = icmp ne i32 %15, 9, !dbg !4609
  %17 = sext i1 %16 to i32, !dbg !4610
  br label %21, !dbg !4610

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4611

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4613
  store i32 0, ptr %20, align 4, !dbg !4615, !tbaa !1110
  br label %21, !dbg !4613

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4593
  ret i32 %22, !dbg !4616
}

; Function Attrs: nounwind
declare !dbg !4617 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4620 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4658, metadata !DIExpression()), !dbg !4662
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4659, metadata !DIExpression()), !dbg !4662
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4660, metadata !DIExpression()), !dbg !4662
  %3 = icmp slt i32 %2, 0, !dbg !4664
  br i1 %3, label %4, label %6, !dbg !4666

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4667
  br label %24, !dbg !4668

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4669
  %8 = icmp eq i32 %7, 0, !dbg !4669
  br i1 %8, label %13, label %9, !dbg !4671

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4672
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4673
  %12 = icmp eq i64 %11, -1, !dbg !4674
  br i1 %12, label %16, label %13, !dbg !4675

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4676
  %15 = icmp eq i32 %14, 0, !dbg !4676
  br i1 %15, label %16, label %18, !dbg !4677

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4659, metadata !DIExpression()), !dbg !4662
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4661, metadata !DIExpression()), !dbg !4662
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4678
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4661, metadata !DIExpression()), !dbg !4662
  br label %24, !dbg !4679

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4680
  %20 = load i32, ptr %19, align 4, !dbg !4680, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4659, metadata !DIExpression()), !dbg !4662
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4661, metadata !DIExpression()), !dbg !4662
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4678
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4661, metadata !DIExpression()), !dbg !4662
  %22 = icmp eq i32 %20, 0, !dbg !4681
  br i1 %22, label %24, label %23, !dbg !4679

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4683, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4661, metadata !DIExpression()), !dbg !4662
  br label %24, !dbg !4685

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4662
  ret i32 %25, !dbg !4686
}

; Function Attrs: nofree nounwind
declare !dbg !4687 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4688 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4689 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4691, metadata !DIExpression()), !dbg !4697
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4692, metadata !DIExpression()), !dbg !4697
  %3 = icmp ult i32 %0, 3, !dbg !4698
  br i1 %3, label %4, label %9, !dbg !4698

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #39, !dbg !4699
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4693, metadata !DIExpression()), !dbg !4700
  %6 = tail call ptr @__errno_location() #42, !dbg !4701
  %7 = load i32, ptr %6, align 4, !dbg !4701, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4696, metadata !DIExpression()), !dbg !4700
  %8 = tail call i32 @close(i32 noundef %0) #39, !dbg !4702
  store i32 %7, ptr %6, align 4, !dbg !4703, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4691, metadata !DIExpression()), !dbg !4697
  br label %9, !dbg !4704

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4691, metadata !DIExpression()), !dbg !4697
  ret i32 %10, !dbg !4705
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4706 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4708, metadata !DIExpression()), !dbg !4710
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4709, metadata !DIExpression()), !dbg !4710
  %3 = and i32 %1, 524288, !dbg !4711
  %4 = icmp eq i32 %3, 0, !dbg !4712
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4712
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #39, !dbg !4713
  ret i32 %6, !dbg !4714
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4715 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4753, metadata !DIExpression()), !dbg !4754
  %2 = icmp eq ptr %0, null, !dbg !4755
  br i1 %2, label %6, label %3, !dbg !4757

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4758
  %5 = icmp eq i32 %4, 0, !dbg !4758
  br i1 %5, label %6, label %8, !dbg !4759

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4760
  br label %16, !dbg !4761

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4762, metadata !DIExpression()), !dbg !4767
  %9 = load i32, ptr %0, align 8, !dbg !4769, !tbaa !2297
  %10 = and i32 %9, 256, !dbg !4771
  %11 = icmp eq i32 %10, 0, !dbg !4771
  br i1 %11, label %14, label %12, !dbg !4772

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4773
  br label %14, !dbg !4773

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4774
  br label %16, !dbg !4775

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4754
  ret i32 %17, !dbg !4776
}

; Function Attrs: nofree nounwind
declare !dbg !4777 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4778 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4783, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4784, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4785, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4786, metadata !DIExpression()), !dbg !4788
  %5 = icmp eq ptr %1, null, !dbg !4789
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4791
  %7 = select i1 %5, ptr @.str.165, ptr %1, !dbg !4791
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4791
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4785, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4784, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4783, metadata !DIExpression()), !dbg !4788
  %9 = icmp eq ptr %3, null, !dbg !4792
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4794
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4786, metadata !DIExpression()), !dbg !4788
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4787, metadata !DIExpression()), !dbg !4788
  %12 = icmp ult i64 %11, -3, !dbg !4796
  br i1 %12, label %13, label %17, !dbg !4798

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4799
  %15 = icmp eq i32 %14, 0, !dbg !4799
  br i1 %15, label %16, label %29, !dbg !4800

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4801, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata ptr %10, metadata !4808, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i32 0, metadata !4811, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 8, metadata !4812, metadata !DIExpression()), !dbg !4813
  store i64 0, ptr %10, align 1, !dbg !4815
  br label %29, !dbg !4816

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4817
  br i1 %18, label %19, label %20, !dbg !4819

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4820
  unreachable, !dbg !4820

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4821

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4823
  br i1 %23, label %29, label %24, !dbg !4824

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4825
  br i1 %25, label %29, label %26, !dbg !4828

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4829, !tbaa !1119
  %28 = zext i8 %27 to i32, !dbg !4830
  store i32 %28, ptr %6, align 4, !dbg !4831, !tbaa !1110
  br label %29, !dbg !4832

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4788
  ret i64 %30, !dbg !4833
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4834 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4840 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4842, metadata !DIExpression()), !dbg !4846
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4843, metadata !DIExpression()), !dbg !4846
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4844, metadata !DIExpression()), !dbg !4846
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4847
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4847
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4845, metadata !DIExpression()), !dbg !4846
  br i1 %5, label %6, label %8, !dbg !4849

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4850
  store i32 12, ptr %7, align 4, !dbg !4852, !tbaa !1110
  br label %12, !dbg !4853

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4847
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4845, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata ptr %0, metadata !4854, metadata !DIExpression()), !dbg !4858
  call void @llvm.dbg.value(metadata i64 %9, metadata !4857, metadata !DIExpression()), !dbg !4858
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4860
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4861
  br label %12, !dbg !4862

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4846
  ret ptr %13, !dbg !4863
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4864 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4866, metadata !DIExpression()), !dbg !4867
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #39, !dbg !4868
  ret i32 %2, !dbg !4869
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4870 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !4897
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4874, metadata !DIExpression(), metadata !4897, metadata ptr %3, metadata !DIExpression()), !dbg !4898
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4872, metadata !DIExpression()), !dbg !4898
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4873, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !4899
  call void @llvm.va_start(ptr nonnull %3), !dbg !4900
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4885, metadata !DIExpression()), !dbg !4898
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
  ], !dbg !4901

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4902
  %6 = load i32, ptr %5, align 8, !dbg !4902
  %7 = icmp sgt i32 %6, -1, !dbg !4902
  br i1 %7, label %16, label %8, !dbg !4902

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !4902
  store i32 %9, ptr %5, align 8, !dbg !4902, !DIAssignID !4903
  call void @llvm.dbg.assign(metadata i32 %9, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4903, metadata ptr %5, metadata !DIExpression()), !dbg !4898
  %10 = icmp ult i32 %6, -7, !dbg !4902
  br i1 %10, label %11, label %16, !dbg !4902

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4902
  %13 = load ptr, ptr %12, align 8, !dbg !4902
  %14 = sext i32 %6 to i64, !dbg !4902
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4902
  br label %19, !dbg !4902

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !4902
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !4902
  store ptr %18, ptr %3, align 8, !dbg !4902, !DIAssignID !4904
  call void @llvm.dbg.assign(metadata ptr %18, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4904, metadata ptr %3, metadata !DIExpression()), !dbg !4898
  br label %19, !dbg !4902

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !4902
  %21 = load i32, ptr %20, align 8, !dbg !4902
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4886, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.value(metadata i32 %0, metadata !4906, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %21, metadata !4909, metadata !DIExpression()), !dbg !4911
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #39, !dbg !4913
  call void @llvm.dbg.value(metadata i32 %22, metadata !4910, metadata !DIExpression()), !dbg !4911
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4885, metadata !DIExpression()), !dbg !4898
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4914
  %25 = load i32, ptr %24, align 8, !dbg !4914
  %26 = icmp sgt i32 %25, -1, !dbg !4914
  br i1 %26, label %35, label %27, !dbg !4914

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !4914
  store i32 %28, ptr %24, align 8, !dbg !4914, !DIAssignID !4915
  call void @llvm.dbg.assign(metadata i32 %28, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4915, metadata ptr %24, metadata !DIExpression()), !dbg !4898
  %29 = icmp ult i32 %25, -7, !dbg !4914
  br i1 %29, label %30, label %35, !dbg !4914

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4914
  %32 = load ptr, ptr %31, align 8, !dbg !4914
  %33 = sext i32 %25 to i64, !dbg !4914
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !4914
  br label %38, !dbg !4914

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !4914
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !4914
  store ptr %37, ptr %3, align 8, !dbg !4914, !DIAssignID !4916
  call void @llvm.dbg.assign(metadata ptr %37, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4916, metadata ptr %3, metadata !DIExpression()), !dbg !4898
  br label %38, !dbg !4914

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !4914
  %40 = load i32, ptr %39, align 8, !dbg !4914
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !4889, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 %0, metadata !919, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i32 %40, metadata !920, metadata !DIExpression()), !dbg !4918
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4920, !tbaa !1110
  %42 = icmp sgt i32 %41, -1, !dbg !4922
  br i1 %42, label %43, label %55, !dbg !4923

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #39, !dbg !4924
  call void @llvm.dbg.value(metadata i32 %44, metadata !921, metadata !DIExpression()), !dbg !4918
  %45 = icmp sgt i32 %44, -1, !dbg !4926
  br i1 %45, label %50, label %46, !dbg !4928

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #42, !dbg !4929
  %48 = load i32, ptr %47, align 4, !dbg !4929, !tbaa !1110
  %49 = icmp eq i32 %48, 22, !dbg !4930
  br i1 %49, label %51, label %50, !dbg !4931

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4932, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %44, metadata !921, metadata !DIExpression()), !dbg !4918
  br label %115, !dbg !4934

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !4906, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %40, metadata !4909, metadata !DIExpression()), !dbg !4935
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !4938
  call void @llvm.dbg.value(metadata i32 %52, metadata !4910, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %52, metadata !921, metadata !DIExpression()), !dbg !4918
  %53 = icmp sgt i32 %52, -1, !dbg !4939
  br i1 %53, label %54, label %115, !dbg !4941

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4942, !tbaa !1110
  br label %59, !dbg !4943

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4906, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 %40, metadata !4909, metadata !DIExpression()), !dbg !4944
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !4946
  call void @llvm.dbg.value(metadata i32 %56, metadata !4910, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 %56, metadata !921, metadata !DIExpression()), !dbg !4918
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !4947
  call void @llvm.dbg.value(metadata i32 %61, metadata !921, metadata !DIExpression()), !dbg !4918
  %62 = icmp sgt i32 %61, -1, !dbg !4948
  %63 = select i1 %62, i1 %60, i1 false, !dbg !4934
  br i1 %63, label %64, label %115, !dbg !4934

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #39, !dbg !4949
  call void @llvm.dbg.value(metadata i32 %65, metadata !922, metadata !DIExpression()), !dbg !4950
  %66 = icmp slt i32 %65, 0, !dbg !4951
  br i1 %66, label %71, label %67, !dbg !4952

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !4953
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #39, !dbg !4954
  %70 = icmp eq i32 %69, -1, !dbg !4955
  br i1 %70, label %71, label %115, !dbg !4956

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #42, !dbg !4957
  %73 = load i32, ptr %72, align 4, !dbg !4957, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 %73, metadata !925, metadata !DIExpression()), !dbg !4958
  %74 = call i32 @close(i32 noundef %61) #39, !dbg !4959
  store i32 %73, ptr %72, align 4, !dbg !4960, !tbaa !1110
  call void @llvm.dbg.value(metadata i32 -1, metadata !921, metadata !DIExpression()), !dbg !4918
  br label %115, !dbg !4961

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !4962
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !4885, metadata !DIExpression()), !dbg !4898
  br label %115, !dbg !4963

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4964
  %79 = load i32, ptr %78, align 8, !dbg !4964
  %80 = icmp sgt i32 %79, -1, !dbg !4964
  br i1 %80, label %89, label %81, !dbg !4964

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !4964
  store i32 %82, ptr %78, align 8, !dbg !4964, !DIAssignID !4965
  call void @llvm.dbg.assign(metadata i32 %82, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4965, metadata ptr %78, metadata !DIExpression()), !dbg !4898
  %83 = icmp ult i32 %79, -7, !dbg !4964
  br i1 %83, label %84, label %89, !dbg !4964

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4964
  %86 = load ptr, ptr %85, align 8, !dbg !4964
  %87 = sext i32 %79 to i64, !dbg !4964
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !4964
  br label %92, !dbg !4964

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !4964
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !4964
  store ptr %91, ptr %3, align 8, !dbg !4964, !DIAssignID !4966
  call void @llvm.dbg.assign(metadata ptr %91, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4966, metadata ptr %3, metadata !DIExpression()), !dbg !4898
  br label %92, !dbg !4964

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !4964
  %94 = load i32, ptr %93, align 8, !dbg !4964
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !4891, metadata !DIExpression()), !dbg !4967
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #39, !dbg !4968
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !4885, metadata !DIExpression()), !dbg !4898
  br label %115, !dbg !4969

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4970
  %98 = load i32, ptr %97, align 8, !dbg !4970
  %99 = icmp sgt i32 %98, -1, !dbg !4970
  br i1 %99, label %108, label %100, !dbg !4970

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !4970
  store i32 %101, ptr %97, align 8, !dbg !4970, !DIAssignID !4971
  call void @llvm.dbg.assign(metadata i32 %101, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4971, metadata ptr %97, metadata !DIExpression()), !dbg !4898
  %102 = icmp ult i32 %98, -7, !dbg !4970
  br i1 %102, label %103, label %108, !dbg !4970

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4970
  %105 = load ptr, ptr %104, align 8, !dbg !4970
  %106 = sext i32 %98 to i64, !dbg !4970
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !4970
  br label %111, !dbg !4970

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !4970
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !4970
  store ptr %110, ptr %3, align 8, !dbg !4970, !DIAssignID !4972
  call void @llvm.dbg.assign(metadata ptr %110, metadata !4874, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4972, metadata ptr %3, metadata !DIExpression()), !dbg !4898
  br label %111, !dbg !4970

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !4970
  %113 = load ptr, ptr %112, align 8, !dbg !4970
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !4895, metadata !DIExpression()), !dbg !4973
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #39, !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !4885, metadata !DIExpression()), !dbg !4898
  br label %115, !dbg !4975

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !4976
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !4885, metadata !DIExpression()), !dbg !4898
  call void @llvm.va_end(ptr nonnull %3), !dbg !4977
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !4978
  ret i32 %116, !dbg !4979
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4980 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4989
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4985, metadata !DIExpression(), metadata !4989, metadata ptr %2, metadata !DIExpression()), !dbg !4990
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4984, metadata !DIExpression()), !dbg !4990
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4991
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4992
  %4 = icmp eq i32 %3, 0, !dbg !4992
  br i1 %4, label %5, label %12, !dbg !4994

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4995, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.value(metadata ptr @.str.174, metadata !4998, metadata !DIExpression()), !dbg !4999
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.174, i64 2), !dbg !5002
  %7 = icmp eq i32 %6, 0, !dbg !5003
  br i1 %7, label %11, label %8, !dbg !5004

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4995, metadata !DIExpression()), !dbg !5005
  call void @llvm.dbg.value(metadata ptr @.str.1.175, metadata !4998, metadata !DIExpression()), !dbg !5005
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.175, i64 6), !dbg !5007
  %10 = icmp eq i32 %9, 0, !dbg !5008
  br i1 %10, label %11, label %12, !dbg !5009

11:                                               ; preds = %8, %5
  br label %12, !dbg !5010

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4990
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5011
  ret i1 %13, !dbg !5011
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5012 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5016, metadata !DIExpression()), !dbg !5019
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5017, metadata !DIExpression()), !dbg !5019
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5018, metadata !DIExpression()), !dbg !5019
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5020
  ret i32 %4, !dbg !5021
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5022 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5026, metadata !DIExpression()), !dbg !5027
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5028
  ret ptr %2, !dbg !5029
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5030 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5032, metadata !DIExpression()), !dbg !5034
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5035
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5033, metadata !DIExpression()), !dbg !5034
  ret ptr %2, !dbg !5036
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5037 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5039, metadata !DIExpression()), !dbg !5046
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5040, metadata !DIExpression()), !dbg !5046
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5041, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i32 %0, metadata !5032, metadata !DIExpression()), !dbg !5047
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5049
  call void @llvm.dbg.value(metadata ptr %4, metadata !5033, metadata !DIExpression()), !dbg !5047
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5042, metadata !DIExpression()), !dbg !5046
  %5 = icmp eq ptr %4, null, !dbg !5050
  br i1 %5, label %6, label %9, !dbg !5051

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5052
  br i1 %7, label %19, label %8, !dbg !5055

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5056, !tbaa !1119
  br label %19, !dbg !5057

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5058
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5043, metadata !DIExpression()), !dbg !5059
  %11 = icmp ult i64 %10, %2, !dbg !5060
  br i1 %11, label %12, label %14, !dbg !5062

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5063
  call void @llvm.dbg.value(metadata ptr %1, metadata !5065, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata ptr %4, metadata !5068, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.value(metadata i64 %13, metadata !5069, metadata !DIExpression()), !dbg !5070
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5072
  br label %19, !dbg !5073

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5074
  br i1 %15, label %19, label %16, !dbg !5077

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5078
  call void @llvm.dbg.value(metadata ptr %1, metadata !5065, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.value(metadata ptr %4, metadata !5068, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.value(metadata i64 %17, metadata !5069, metadata !DIExpression()), !dbg !5080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5082
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5083
  store i8 0, ptr %18, align 1, !dbg !5084, !tbaa !1119
  br label %19, !dbg !5085

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5086
  ret i32 %20, !dbg !5087
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
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!60, !529, !566, !570, !585, !881, !933, !935, !937, !940, !641, !655, !706, !942, !950, !952, !955, !957, !873, !963, !998, !1000, !1002, !1004, !1006, !1008, !897, !1010, !1012, !916, !1014, !1016, !1018}
!llvm.ident = !{!1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020, !1020}
!llvm.module.flags = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}

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
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/tac.o -MD -MP -MF src/.deps/tac.Tpo -c src/tac.c -o src/.tac.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !97, globals: !108, splitDebugInlining: false, nameTableKind: None)
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
!97 = !{!98, !59, !99, !57, !103, !104, !101, !107}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!103 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 18, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!529 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/temp-stream.o -MD -MP -MF src/.deps/temp-stream.Tpo -c src/temp-stream.c -o src/.temp-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !530, retainedTypes: !531, globals: !532, splitDebugInlining: false, nameTableKind: None)
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
!566 = distinct !DICompileUnit(language: DW_LANG_C11, file: !563, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !567, splitDebugInlining: false, nameTableKind: None)
!567 = !{!561, !564}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "file_name", scope: !570, file: !571, line: 45, type: !101, isLocal: true, isDefinition: true)
!570 = distinct !DICompileUnit(language: DW_LANG_C11, file: !571, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !572, splitDebugInlining: false, nameTableKind: None)
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
!584 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !585, file: !586, line: 66, type: !636, isLocal: false, isDefinition: true)
!585 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !587, globals: !588, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!587 = !{!98, !107}
!588 = !{!589, !591, !615, !617, !619, !621, !583, !623, !625, !627, !629, !634}
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 272, type: !131, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "old_file_name", scope: !593, file: !586, line: 304, type: !101, isLocal: true, isDefinition: true)
!593 = distinct !DISubprogram(name: "verror_at_line", scope: !586, file: !586, line: 298, type: !594, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !608)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !57, !57, !101, !69, !101, !596}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !597, line: 52, baseType: !598)
!597 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !599, line: 12, baseType: !600)
!599 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !586, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !602)
!602 = !{!603, !604, !605, !606, !607}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !601, file: !586, baseType: !98, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !601, file: !586, baseType: !98, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !601, file: !586, baseType: !98, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !601, file: !586, baseType: !57, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !601, file: !586, baseType: !57, size: 32, offset: 224)
!608 = !{!609, !610, !611, !612, !613, !614}
!609 = !DILocalVariable(name: "status", arg: 1, scope: !593, file: !586, line: 298, type: !57)
!610 = !DILocalVariable(name: "errnum", arg: 2, scope: !593, file: !586, line: 298, type: !57)
!611 = !DILocalVariable(name: "file_name", arg: 3, scope: !593, file: !586, line: 298, type: !101)
!612 = !DILocalVariable(name: "line_number", arg: 4, scope: !593, file: !586, line: 298, type: !69)
!613 = !DILocalVariable(name: "message", arg: 5, scope: !593, file: !586, line: 298, type: !101)
!614 = !DILocalVariable(name: "args", arg: 6, scope: !593, file: !586, line: 298, type: !596)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "old_line_number", scope: !593, file: !586, line: 305, type: !69, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !586, line: 338, type: !19, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !318, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !111, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "error_message_count", scope: !585, file: !586, line: 69, type: !69, isLocal: false, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !585, file: !586, line: 295, type: !57, isLocal: false, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !313, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 21)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !586, line: 214, type: !131, isLocal: true, isDefinition: true)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null}
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "program_name", scope: !641, file: !642, line: 31, type: !101, isLocal: false, isDefinition: true)
!641 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !643, globals: !644, splitDebugInlining: false, nameTableKind: None)
!642 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!643 = !{!98, !59}
!644 = !{!639, !645, !647}
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !642, line: 46, type: !318, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !642, line: 49, type: !19, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "utf07FF", scope: !651, file: !652, line: 46, type: !679, isLocal: true, isDefinition: true)
!651 = distinct !DISubprogram(name: "proper_name_lite", scope: !652, file: !652, line: 38, type: !653, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !657)
!652 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!653 = !DISubroutineType(types: !654)
!654 = !{!101, !101, !101}
!655 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !656, splitDebugInlining: false, nameTableKind: None)
!656 = !{!649}
!657 = !{!658, !659, !660, !661, !666}
!658 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !651, file: !652, line: 38, type: !101)
!659 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !651, file: !652, line: 38, type: !101)
!660 = !DILocalVariable(name: "translation", scope: !651, file: !652, line: 40, type: !101)
!661 = !DILocalVariable(name: "w", scope: !651, file: !652, line: 47, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !663, line: 37, baseType: !664)
!663 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !255, line: 57, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !255, line: 42, baseType: !69)
!666 = !DILocalVariable(name: "mbs", scope: !651, file: !652, line: 48, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !668, line: 6, baseType: !669)
!668 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !670, line: 21, baseType: !671)
!670 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !670, line: 13, size: 64, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !671, file: !670, line: 15, baseType: !57, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !671, file: !670, line: 20, baseType: !675, size: 32, offset: 32)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !670, line: 16, size: 32, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !675, file: !670, line: 18, baseType: !69, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !675, file: !670, line: 19, baseType: !19, size: 32)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16, elements: !112)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !682, line: 78, type: !318, isLocal: true, isDefinition: true)
!682 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !682, line: 79, type: !294, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !682, line: 80, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 13)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !682, line: 81, type: !687, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !682, line: 82, type: !277, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !682, line: 83, type: !111, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !682, line: 84, type: !318, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !682, line: 85, type: !313, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !682, line: 86, type: !313, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !682, line: 87, type: !318, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !706, file: !682, line: 76, type: !777, isLocal: false, isDefinition: true)
!706 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !707, retainedTypes: !715, globals: !716, splitDebugInlining: false, nameTableKind: None)
!707 = !{!708, !710, !67}
!708 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !709, line: 42, baseType: !69, size: 32, elements: !85)
!709 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!710 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !709, line: 254, baseType: !69, size: 32, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!713 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!714 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!715 = !{!98, !57, !103, !104}
!716 = !{!680, !683, !685, !690, !692, !694, !696, !698, !700, !702, !704, !717, !721, !731, !733, !735, !737, !739, !741, !743, !766, !773, !775}
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !706, file: !682, line: 92, type: !719, isLocal: false, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 320, elements: !122)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !706, file: !682, line: 1040, type: !723, isLocal: false, isDefinition: true)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !682, line: 56, size: 448, elements: !724)
!724 = !{!725, !726, !727, !729, !730}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !723, file: !682, line: 59, baseType: !708, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !682, line: 62, baseType: !57, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !723, file: !682, line: 66, baseType: !728, size: 256, offset: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !319)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !723, file: !682, line: 69, baseType: !101, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !723, file: !682, line: 72, baseType: !101, size: 64, offset: 384)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !706, file: !682, line: 107, type: !723, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "slot0", scope: !706, file: !682, line: 831, type: !193, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !682, line: 321, type: !111, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !682, line: 357, type: !111, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !682, line: 358, type: !111, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !682, line: 199, type: !313, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "quote", scope: !745, file: !682, line: 228, type: !764, isLocal: true, isDefinition: true)
!745 = distinct !DISubprogram(name: "gettext_quote", scope: !682, file: !682, line: 197, type: !746, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!101, !101, !708}
!748 = !{!749, !750, !751, !752, !753}
!749 = !DILocalVariable(name: "msgid", arg: 1, scope: !745, file: !682, line: 197, type: !101)
!750 = !DILocalVariable(name: "s", arg: 2, scope: !745, file: !682, line: 197, type: !708)
!751 = !DILocalVariable(name: "translation", scope: !745, file: !682, line: 199, type: !101)
!752 = !DILocalVariable(name: "w", scope: !745, file: !682, line: 229, type: !662)
!753 = !DILocalVariable(name: "mbs", scope: !745, file: !682, line: 230, type: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !668, line: 6, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !670, line: 21, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !670, line: 13, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !756, file: !670, line: 15, baseType: !57, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !756, file: !670, line: 20, baseType: !760, size: 32, offset: 32)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !670, line: 16, size: 32, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !760, file: !670, line: 18, baseType: !69, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !760, file: !670, line: 19, baseType: !19, size: 32)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !765)
!765 = !{!113, !21}
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "slotvec", scope: !706, file: !682, line: 834, type: !768, isLocal: true, isDefinition: true)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !682, line: 823, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !769, file: !682, line: 825, baseType: !104, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !769, file: !682, line: 826, baseType: !59, size: 64, offset: 64)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "nslots", scope: !706, file: !682, line: 832, type: !57, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "slotvec0", scope: !706, file: !682, line: 833, type: !769, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 704, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 11)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !782, line: 98, type: !131, isLocal: true, isDefinition: true)
!782 = !DIFile(filename: "lib/tmpdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6bb1205c798131b3318a3c96a85b8877")
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !782, line: 110, type: !313, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !782, line: 132, type: !131, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !782, line: 160, type: !141, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !791, line: 67, type: !141, isLocal: true, isDefinition: true)
!791 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !791, line: 69, type: !313, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !791, line: 83, type: !313, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !791, line: 83, type: !19, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !791, line: 85, type: !111, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !791, line: 88, type: !802, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 171)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !791, line: 88, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 34)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !791, line: 105, type: !146, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !791, line: 109, type: !814, isLocal: true, isDefinition: true)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 23)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !791, line: 113, type: !819, isLocal: true, isDefinition: true)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 28)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !791, line: 120, type: !824, isLocal: true, isDefinition: true)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 32)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !791, line: 127, type: !829, isLocal: true, isDefinition: true)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 36)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !791, line: 134, type: !340, isLocal: true, isDefinition: true)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !791, line: 142, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 44)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !791, line: 150, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 48)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !791, line: 159, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 52)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !791, line: 170, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 60)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !791, line: 248, type: !277, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !791, line: 248, type: !365, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !791, line: 254, type: !277, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !791, line: 254, type: !136, isLocal: true, isDefinition: true)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !791, line: 254, type: !340, isLocal: true, isDefinition: true)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !791, line: 259, type: !3, isLocal: true, isDefinition: true)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !791, line: 259, type: !868, isLocal: true, isDefinition: true)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 29)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !873, file: !874, line: 26, type: !876, isLocal: false, isDefinition: true)
!873 = distinct !DICompileUnit(language: DW_LANG_C11, file: !874, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !875, splitDebugInlining: false, nameTableKind: None)
!874 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!875 = !{!871}
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 376, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 47)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(name: "exit_failure", scope: !881, file: !882, line: 24, type: !884, isLocal: false, isDefinition: true)
!881 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !883, splitDebugInlining: false, nameTableKind: None)
!882 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!883 = !{!879}
!884 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !887, line: 34, type: !156, isLocal: true, isDefinition: true)
!887 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !887, line: 34, type: !313, isLocal: true, isDefinition: true)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(scope: null, file: !887, line: 34, type: !335, isLocal: true, isDefinition: true)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !894, line: 108, type: !116, isLocal: true, isDefinition: true)
!894 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "internal_state", scope: !897, file: !894, line: 97, type: !900, isLocal: true, isDefinition: true)
!897 = distinct !DICompileUnit(language: DW_LANG_C11, file: !894, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !898, globals: !899, splitDebugInlining: false, nameTableKind: None)
!898 = !{!98, !104, !107}
!899 = !{!892, !895}
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !668, line: 6, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !670, line: 21, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !670, line: 13, size: 64, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !902, file: !670, line: 15, baseType: !57, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !902, file: !670, line: 20, baseType: !906, size: 32, offset: 32)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !902, file: !670, line: 16, size: 32, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !906, file: !670, line: 18, baseType: !69, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !906, file: !670, line: 19, baseType: !19, size: 32)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !912, file: !913, line: 506, type: !57, isLocal: true, isDefinition: true)
!912 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !913, file: !913, line: 485, type: !914, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !918)
!913 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!914 = !DISubroutineType(types: !915)
!915 = !{!57, !57, !57}
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !913, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !917, splitDebugInlining: false, nameTableKind: None)
!917 = !{!910}
!918 = !{!919, !920, !921, !922, !925}
!919 = !DILocalVariable(name: "fd", arg: 1, scope: !912, file: !913, line: 485, type: !57)
!920 = !DILocalVariable(name: "target", arg: 2, scope: !912, file: !913, line: 485, type: !57)
!921 = !DILocalVariable(name: "result", scope: !912, file: !913, line: 487, type: !57)
!922 = !DILocalVariable(name: "flags", scope: !923, file: !913, line: 530, type: !57)
!923 = distinct !DILexicalBlock(scope: !924, file: !913, line: 529, column: 5)
!924 = distinct !DILexicalBlock(scope: !912, file: !913, line: 528, column: 7)
!925 = !DILocalVariable(name: "saved_errno", scope: !926, file: !913, line: 533, type: !57)
!926 = distinct !DILexicalBlock(scope: !927, file: !913, line: 532, column: 9)
!927 = distinct !DILexicalBlock(scope: !923, file: !913, line: 531, column: 11)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !930, line: 35, type: !111, isLocal: true, isDefinition: true)
!930 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !930, line: 35, type: !294, isLocal: true, isDefinition: true)
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !934, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!934 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!937 = distinct !DICompileUnit(language: DW_LANG_C11, file: !938, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-full-read.o -MD -MP -MF lib/.deps/libcoreutils_a-full-read.Tpo -c lib/full-read.c -o lib/.libcoreutils_a-full-read.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !939, splitDebugInlining: false, nameTableKind: None)
!938 = !DIFile(filename: "lib/full-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "717d8293e026c44a771a83b22da54cc2")
!939 = !{!59}
!940 = distinct !DICompileUnit(language: DW_LANG_C11, file: !941, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!941 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!942 = distinct !DICompileUnit(language: DW_LANG_C11, file: !943, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-safe-read.o -MD -MP -MF lib/.deps/libcoreutils_a-safe-read.Tpo -c lib/safe-read.c -o lib/.libcoreutils_a-safe-read.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !944, retainedTypes: !949, splitDebugInlining: false, nameTableKind: None)
!943 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!944 = !{!945}
!945 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !946, line: 36, baseType: !69, size: 32, elements: !947)
!946 = !DIFile(filename: "lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!947 = !{!948}
!948 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!949 = !{!104}
!950 = distinct !DICompileUnit(language: DW_LANG_C11, file: !951, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mkstemp-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-mkstemp-safer.Tpo -c lib/mkstemp-safer.c -o lib/.libcoreutils_a-mkstemp-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!951 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c54cf13a93f038494ed7ea783050e30c")
!952 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-tmpdir.o -MD -MP -MF lib/.deps/libcoreutils_a-tmpdir.Tpo -c lib/tmpdir.c -o lib/.libcoreutils_a-tmpdir.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !953, globals: !954, splitDebugInlining: false, nameTableKind: None)
!953 = !{!98, !57}
!954 = !{!780, !783, !785, !787}
!955 = distinct !DICompileUnit(language: DW_LANG_C11, file: !956, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer.Tpo -c lib/fd-safer.c -o lib/.libcoreutils_a-fd-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!956 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!957 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !958, retainedTypes: !531, globals: !962, splitDebugInlining: false, nameTableKind: None)
!958 = !{!959}
!959 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !791, line: 40, baseType: !69, size: 32, elements: !960)
!960 = !{!961}
!961 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!962 = !{!789, !792, !794, !796, !798, !800, !805, !810, !812, !817, !822, !827, !832, !834, !839, !844, !849, !854, !856, !858, !860, !862, !864, !866}
!963 = distinct !DICompileUnit(language: DW_LANG_C11, file: !964, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !965, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!964 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!965 = !{!966, !978}
!966 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !967, file: !964, line: 188, baseType: !69, size: 32, elements: !976)
!967 = distinct !DISubprogram(name: "x2nrealloc", scope: !964, file: !964, line: 176, type: !968, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !971)
!968 = !DISubroutineType(types: !969)
!969 = !{!98, !98, !970, !104}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!971 = !{!972, !973, !974, !975}
!972 = !DILocalVariable(name: "p", arg: 1, scope: !967, file: !964, line: 176, type: !98)
!973 = !DILocalVariable(name: "pn", arg: 2, scope: !967, file: !964, line: 176, type: !970)
!974 = !DILocalVariable(name: "s", arg: 3, scope: !967, file: !964, line: 176, type: !104)
!975 = !DILocalVariable(name: "n", scope: !967, file: !964, line: 178, type: !104)
!976 = !{!977}
!977 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!978 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !979, file: !964, line: 228, baseType: !69, size: 32, elements: !976)
!979 = distinct !DISubprogram(name: "xpalloc", scope: !964, file: !964, line: 223, type: !980, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !987)
!980 = !DISubroutineType(types: !981)
!981 = !{!98, !98, !982, !983, !985, !983}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !984, line: 130, baseType: !985)
!984 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !986, line: 18, baseType: !256)
!986 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996}
!988 = !DILocalVariable(name: "pa", arg: 1, scope: !979, file: !964, line: 223, type: !98)
!989 = !DILocalVariable(name: "pn", arg: 2, scope: !979, file: !964, line: 223, type: !982)
!990 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !979, file: !964, line: 223, type: !983)
!991 = !DILocalVariable(name: "n_max", arg: 4, scope: !979, file: !964, line: 223, type: !985)
!992 = !DILocalVariable(name: "s", arg: 5, scope: !979, file: !964, line: 223, type: !983)
!993 = !DILocalVariable(name: "n0", scope: !979, file: !964, line: 230, type: !983)
!994 = !DILocalVariable(name: "n", scope: !979, file: !964, line: 237, type: !983)
!995 = !DILocalVariable(name: "nbytes", scope: !979, file: !964, line: 248, type: !983)
!996 = !DILocalVariable(name: "adjusted_nbytes", scope: !979, file: !964, line: 252, type: !983)
!997 = !{!59, !98}
!998 = distinct !DICompileUnit(language: DW_LANG_C11, file: !887, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !999, splitDebugInlining: false, nameTableKind: None)
!999 = !{!885, !888, !890}
!1000 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1001, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1001 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1002 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1003, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1003 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1004 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1005, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer-flag.Tpo -c lib/fd-safer-flag.c -o lib/.libcoreutils_a-fd-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1005 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!1006 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1007, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer-flag.Tpo -c lib/dup-safer-flag.c -o lib/.libcoreutils_a-dup-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1007 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!1008 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1009, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1009 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1010 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1011, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!1014 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1015, splitDebugInlining: false, nameTableKind: None)
!1015 = !{!928, !931}
!1016 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1017, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1018 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1019, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1019 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1020 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1021 = !{i32 7, !"Dwarf Version", i32 5}
!1022 = !{i32 2, !"Debug Info Version", i32 3}
!1023 = !{i32 1, !"wchar_size", i32 4}
!1024 = !{i32 8, !"PIC Level", i32 2}
!1025 = !{i32 7, !"PIE Level", i32 2}
!1026 = !{i32 7, !"uwtable", i32 2}
!1027 = !{i32 7, !"frame-pointer", i32 1}
!1028 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1029 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 112, type: !1030, scopeLine: 113, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !57}
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "status", arg: 1, scope: !1029, file: !2, line: 112, type: !57)
!1034 = !DILocation(line: 0, scope: !1029)
!1035 = !DILocation(line: 114, column: 14, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 114, column: 7)
!1037 = !DILocation(line: 114, column: 7, scope: !1029)
!1038 = !DILocation(line: 115, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 115, column: 5)
!1040 = !{!1041, !1041, i64 0}
!1041 = !{!"any pointer", !1042, i64 0}
!1042 = !{!"omnipotent char", !1043, i64 0}
!1043 = !{!"Simple C/C++ TBAA"}
!1044 = !DILocation(line: 118, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 117, column: 5)
!1046 = !DILocation(line: 122, column: 7, scope: !1045)
!1047 = !DILocation(line: 729, column: 3, scope: !1048, inlinedAt: !1049)
!1048 = distinct !DISubprogram(name: "emit_stdin_note", scope: !63, file: !63, line: 727, type: !637, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!1049 = distinct !DILocation(line: 126, column: 7, scope: !1045)
!1050 = !DILocation(line: 736, column: 3, scope: !1051, inlinedAt: !1052)
!1051 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !63, file: !63, line: 734, type: !637, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!1052 = distinct !DILocation(line: 127, column: 7, scope: !1045)
!1053 = !DILocation(line: 129, column: 7, scope: !1045)
!1054 = !DILocation(line: 132, column: 7, scope: !1045)
!1055 = !DILocation(line: 135, column: 7, scope: !1045)
!1056 = !DILocation(line: 138, column: 7, scope: !1045)
!1057 = !DILocation(line: 139, column: 7, scope: !1045)
!1058 = !DILocation(line: 140, column: 7, scope: !1045)
!1059 = !DILocalVariable(name: "program", arg: 1, scope: !1060, file: !63, line: 836, type: !101)
!1060 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !63, file: !63, line: 836, type: !1061, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !101}
!1063 = !{!1059, !1064, !1071, !1072, !1074, !1075}
!1064 = !DILocalVariable(name: "infomap", scope: !1060, file: !63, line: 838, type: !1065)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 896, elements: !314)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1060, file: !63, line: 838, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1067, file: !63, line: 838, baseType: !101, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1067, file: !63, line: 838, baseType: !101, size: 64, offset: 64)
!1071 = !DILocalVariable(name: "node", scope: !1060, file: !63, line: 848, type: !101)
!1072 = !DILocalVariable(name: "map_prog", scope: !1060, file: !63, line: 849, type: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1074 = !DILocalVariable(name: "lc_messages", scope: !1060, file: !63, line: 861, type: !101)
!1075 = !DILocalVariable(name: "url_program", scope: !1060, file: !63, line: 874, type: !101)
!1076 = !DILocation(line: 0, scope: !1060, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 143, column: 7, scope: !1045)
!1078 = !{}
!1079 = !DILocation(line: 857, column: 3, scope: !1060, inlinedAt: !1077)
!1080 = !DILocation(line: 861, column: 29, scope: !1060, inlinedAt: !1077)
!1081 = !DILocation(line: 862, column: 7, scope: !1082, inlinedAt: !1077)
!1082 = distinct !DILexicalBlock(scope: !1060, file: !63, line: 862, column: 7)
!1083 = !DILocation(line: 862, column: 19, scope: !1082, inlinedAt: !1077)
!1084 = !DILocation(line: 862, column: 22, scope: !1082, inlinedAt: !1077)
!1085 = !DILocation(line: 862, column: 7, scope: !1060, inlinedAt: !1077)
!1086 = !DILocation(line: 868, column: 7, scope: !1087, inlinedAt: !1077)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !63, line: 863, column: 5)
!1088 = !DILocation(line: 870, column: 5, scope: !1087, inlinedAt: !1077)
!1089 = !DILocation(line: 875, column: 3, scope: !1060, inlinedAt: !1077)
!1090 = !DILocation(line: 877, column: 3, scope: !1060, inlinedAt: !1077)
!1091 = !DILocation(line: 145, column: 3, scope: !1029)
!1092 = !DISubprogram(name: "dcgettext", scope: !1093, file: !1093, line: 51, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!59, !101, !101, !57}
!1096 = !DISubprogram(name: "__fprintf_chk", scope: !1097, file: !1097, line: 93, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!57, !1100, !57, !1101, null}
!1100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!1101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!1102 = !DISubprogram(name: "__printf_chk", scope: !1097, file: !1097, line: 95, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!57, !57, !1101, null}
!1105 = !DISubprogram(name: "fputs_unlocked", scope: !597, file: !597, line: 691, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!57, !1101, !1100}
!1108 = !DILocation(line: 0, scope: !205)
!1109 = !DILocation(line: 581, column: 7, scope: !213)
!1110 = !{!1111, !1111, i64 0}
!1111 = !{!"int", !1042, i64 0}
!1112 = !DILocation(line: 581, column: 19, scope: !213)
!1113 = !DILocation(line: 581, column: 7, scope: !205)
!1114 = !DILocation(line: 585, column: 26, scope: !212)
!1115 = !DILocation(line: 0, scope: !212)
!1116 = !DILocation(line: 586, column: 23, scope: !212)
!1117 = !DILocation(line: 586, column: 28, scope: !212)
!1118 = !DILocation(line: 586, column: 32, scope: !212)
!1119 = !{!1042, !1042, i64 0}
!1120 = !DILocation(line: 586, column: 38, scope: !212)
!1121 = !DILocalVariable(name: "__s1", arg: 1, scope: !1122, file: !1123, line: 1359, type: !101)
!1122 = distinct !DISubprogram(name: "streq", scope: !1123, file: !1123, line: 1359, type: !1124, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1126)
!1123 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!215, !101, !101}
!1126 = !{!1121, !1127}
!1127 = !DILocalVariable(name: "__s2", arg: 2, scope: !1122, file: !1123, line: 1359, type: !101)
!1128 = !DILocation(line: 0, scope: !1122, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 586, column: 41, scope: !212)
!1130 = !DILocation(line: 1361, column: 11, scope: !1122, inlinedAt: !1129)
!1131 = !DILocation(line: 1361, column: 10, scope: !1122, inlinedAt: !1129)
!1132 = !DILocation(line: 586, column: 19, scope: !212)
!1133 = !DILocation(line: 587, column: 5, scope: !212)
!1134 = !DILocation(line: 588, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !205, file: !63, line: 588, column: 7)
!1136 = !DILocation(line: 588, column: 7, scope: !205)
!1137 = !DILocation(line: 590, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !63, line: 589, column: 5)
!1139 = !DILocation(line: 591, column: 7, scope: !1138)
!1140 = !DILocation(line: 595, column: 37, scope: !205)
!1141 = !DILocation(line: 595, column: 35, scope: !205)
!1142 = !DILocation(line: 596, column: 29, scope: !205)
!1143 = !DILocation(line: 597, column: 8, scope: !221)
!1144 = !DILocation(line: 597, column: 7, scope: !205)
!1145 = !DILocation(line: 604, column: 24, scope: !220)
!1146 = !DILocation(line: 604, column: 12, scope: !221)
!1147 = !DILocation(line: 0, scope: !219)
!1148 = !DILocation(line: 610, column: 16, scope: !219)
!1149 = !DILocation(line: 610, column: 7, scope: !219)
!1150 = !DILocation(line: 611, column: 21, scope: !219)
!1151 = !{!1152, !1152, i64 0}
!1152 = !{!"short", !1042, i64 0}
!1153 = !DILocation(line: 611, column: 19, scope: !219)
!1154 = !DILocation(line: 611, column: 16, scope: !219)
!1155 = !DILocation(line: 610, column: 30, scope: !219)
!1156 = distinct !{!1156, !1149, !1150, !1157}
!1157 = !{!"llvm.loop.mustprogress"}
!1158 = !DILocation(line: 612, column: 18, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !219, file: !63, line: 612, column: 11)
!1160 = !DILocation(line: 612, column: 11, scope: !219)
!1161 = !DILocation(line: 620, column: 23, scope: !205)
!1162 = !DILocation(line: 625, column: 39, scope: !205)
!1163 = !DILocation(line: 626, column: 3, scope: !205)
!1164 = !DILocation(line: 626, column: 10, scope: !205)
!1165 = !DILocation(line: 626, column: 21, scope: !205)
!1166 = !DILocation(line: 628, column: 44, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !63, line: 628, column: 11)
!1168 = distinct !DILexicalBlock(scope: !205, file: !63, line: 627, column: 5)
!1169 = !DILocation(line: 628, column: 32, scope: !1167)
!1170 = !DILocation(line: 628, column: 49, scope: !1167)
!1171 = !DILocation(line: 628, column: 11, scope: !1168)
!1172 = !DILocation(line: 630, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !63, line: 630, column: 11)
!1174 = !DILocation(line: 630, column: 11, scope: !1168)
!1175 = !DILocation(line: 632, column: 26, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !63, line: 632, column: 15)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !63, line: 631, column: 9)
!1178 = !DILocation(line: 632, column: 34, scope: !1176)
!1179 = !DILocation(line: 632, column: 37, scope: !1176)
!1180 = !DILocation(line: 632, column: 15, scope: !1177)
!1181 = !DILocation(line: 640, column: 16, scope: !1168)
!1182 = distinct !{!1182, !1163, !1183, !1157}
!1183 = !DILocation(line: 641, column: 5, scope: !205)
!1184 = !DILocation(line: 644, column: 3, scope: !205)
!1185 = !DILocation(line: 0, scope: !1122, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 648, column: 31, scope: !205)
!1187 = !DILocation(line: 0, scope: !1122, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 649, column: 31, scope: !205)
!1189 = !DILocation(line: 0, scope: !1122, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 650, column: 31, scope: !205)
!1191 = !DILocation(line: 0, scope: !1122, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 651, column: 31, scope: !205)
!1193 = !DILocation(line: 0, scope: !1122, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 652, column: 31, scope: !205)
!1195 = !DILocation(line: 0, scope: !1122, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 653, column: 31, scope: !205)
!1197 = !DILocation(line: 0, scope: !1122, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 654, column: 31, scope: !205)
!1199 = !DILocation(line: 0, scope: !1122, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 655, column: 31, scope: !205)
!1201 = !DILocation(line: 0, scope: !1122, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 656, column: 31, scope: !205)
!1203 = !DILocation(line: 0, scope: !1122, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 657, column: 31, scope: !205)
!1205 = !DILocation(line: 663, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !205, file: !63, line: 663, column: 7)
!1207 = !DILocation(line: 664, column: 7, scope: !1206)
!1208 = !DILocation(line: 664, column: 10, scope: !1206)
!1209 = !DILocation(line: 663, column: 7, scope: !205)
!1210 = !DILocation(line: 669, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !63, line: 665, column: 5)
!1212 = !DILocation(line: 671, column: 5, scope: !1211)
!1213 = !DILocation(line: 676, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !63, line: 673, column: 5)
!1215 = !DILocation(line: 679, column: 3, scope: !205)
!1216 = !DILocation(line: 683, column: 3, scope: !205)
!1217 = !DILocation(line: 686, column: 3, scope: !205)
!1218 = !DILocation(line: 688, column: 3, scope: !205)
!1219 = !DILocation(line: 691, column: 3, scope: !205)
!1220 = !DILocation(line: 695, column: 3, scope: !205)
!1221 = !DILocation(line: 696, column: 1, scope: !205)
!1222 = !DISubprogram(name: "setlocale", scope: !1223, file: !1223, line: 122, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!59, !57, !101}
!1226 = !DISubprogram(name: "strncmp", scope: !1227, file: !1227, line: 159, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!57, !101, !101, !104}
!1230 = !DISubprogram(name: "exit", scope: !1231, file: !1231, line: 624, type: !1030, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1231 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1232 = !DISubprogram(name: "getenv", scope: !1231, file: !1231, line: 641, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!59, !101}
!1235 = !DISubprogram(name: "strcmp", scope: !1227, file: !1227, line: 156, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!57, !101, !101}
!1238 = !DISubprogram(name: "strspn", scope: !1227, file: !1227, line: 297, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!106, !101, !101}
!1241 = !DISubprogram(name: "strchr", scope: !1227, file: !1227, line: 246, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!59, !101, !57}
!1244 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1250 = !DISubprogram(name: "strcspn", scope: !1227, file: !1227, line: 293, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubprogram(name: "fwrite_unlocked", scope: !597, file: !597, line: 704, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!104, !1254, !104, !104, !1100}
!1254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1257 = distinct !DIAssignID()
!1258 = distinct !DIAssignID()
!1259 = !DILocation(line: 0, scope: !54)
!1260 = !DILocation(line: 502, column: 21, scope: !54)
!1261 = !DILocation(line: 502, column: 3, scope: !54)
!1262 = !DILocation(line: 503, column: 3, scope: !54)
!1263 = !DILocation(line: 504, column: 3, scope: !54)
!1264 = !DILocation(line: 505, column: 3, scope: !54)
!1265 = !DILocation(line: 507, column: 3, scope: !54)
!1266 = !DILocation(line: 509, column: 3, scope: !54)
!1267 = !DILocation(line: 509, column: 18, scope: !54)
!1268 = !DILocation(line: 514, column: 33, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 512, column: 9)
!1270 = distinct !DILexicalBlock(scope: !54, file: !2, line: 510, column: 5)
!1271 = !DILocation(line: 515, column: 11, scope: !1269)
!1272 = !DILocation(line: 517, column: 27, scope: !1269)
!1273 = !{!1274, !1274, i64 0}
!1274 = !{!"long", !1042, i64 0}
!1275 = !DILocation(line: 518, column: 11, scope: !1269)
!1276 = !DILocation(line: 520, column: 23, scope: !1269)
!1277 = !DILocation(line: 520, column: 21, scope: !1269)
!1278 = !DILocation(line: 521, column: 11, scope: !1269)
!1279 = distinct !{!1279, !1266, !1280, !1157}
!1280 = !DILocation(line: 527, column: 5, scope: !54)
!1281 = !DILocation(line: 522, column: 9, scope: !1269)
!1282 = !DILocation(line: 523, column: 9, scope: !1269)
!1283 = !DILocation(line: 525, column: 11, scope: !1269)
!1284 = !DILocation(line: 529, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !54, file: !2, line: 529, column: 7)
!1286 = !DILocation(line: 529, column: 23, scope: !1285)
!1287 = !DILocation(line: 0, scope: !1285)
!1288 = !DILocation(line: 529, column: 7, scope: !54)
!1289 = !DILocation(line: 531, column: 11, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 530, column: 5)
!1291 = !DILocation(line: 532, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 531, column: 11)
!1293 = !DILocation(line: 535, column: 36, scope: !1290)
!1294 = !DILocation(line: 536, column: 34, scope: !1290)
!1295 = !{!1296, !1041, i64 32}
!1296 = !{!"re_pattern_buffer", !1041, i64 0, !1274, i64 8, !1274, i64 16, !1274, i64 24, !1041, i64 32, !1041, i64 40, !1274, i64 48, !1111, i64 56, !1111, i64 56, !1111, i64 56, !1111, i64 56, !1111, i64 56, !1111, i64 56, !1111, i64 56}
!1297 = !DILocation(line: 537, column: 36, scope: !1290)
!1298 = !{!1296, !1041, i64 40}
!1299 = !DILocation(line: 538, column: 54, scope: !1290)
!1300 = !DILocation(line: 538, column: 23, scope: !1290)
!1301 = !DILocation(line: 540, column: 11, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 540, column: 11)
!1303 = !DILocation(line: 540, column: 11, scope: !1290)
!1304 = !DILocation(line: 541, column: 9, scope: !1302)
!1305 = !DILocation(line: 544, column: 38, scope: !1285)
!1306 = !DILocation(line: 544, column: 51, scope: !1285)
!1307 = !DILocation(line: 544, column: 36, scope: !1285)
!1308 = !DILocation(line: 544, column: 18, scope: !1285)
!1309 = !DILocation(line: 547, column: 26, scope: !54)
!1310 = !DILocation(line: 547, column: 3, scope: !54)
!1311 = !DILocation(line: 549, column: 24, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 549, column: 11)
!1313 = distinct !DILexicalBlock(scope: !54, file: !2, line: 548, column: 5)
!1314 = !DILocation(line: 549, column: 11, scope: !1313)
!1315 = !DILocation(line: 550, column: 9, scope: !1312)
!1316 = !DILocation(line: 551, column: 17, scope: !1313)
!1317 = distinct !{!1317, !1310, !1318, !1157}
!1318 = !DILocation(line: 552, column: 5, scope: !54)
!1319 = !DILocation(line: 553, column: 32, scope: !54)
!1320 = !DILocation(line: 553, column: 50, scope: !54)
!1321 = !DILocation(line: 554, column: 21, scope: !54)
!1322 = !DILocation(line: 554, column: 17, scope: !54)
!1323 = !DILocation(line: 555, column: 20, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !54, file: !2, line: 555, column: 7)
!1325 = !DILocation(line: 555, column: 39, scope: !1324)
!1326 = !DILocation(line: 556, column: 5, scope: !1324)
!1327 = !DILocation(line: 557, column: 14, scope: !54)
!1328 = !DILocation(line: 558, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !54, file: !2, line: 558, column: 7)
!1330 = !DILocation(line: 558, column: 7, scope: !54)
!1331 = !DILocation(line: 560, column: 25, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 559, column: 5)
!1333 = !DILocation(line: 560, column: 56, scope: !1332)
!1334 = !DILocation(line: 560, column: 55, scope: !1332)
!1335 = !DILocation(line: 560, column: 52, scope: !1332)
!1336 = !DILocalVariable(name: "__dest", arg: 1, scope: !1337, file: !1338, line: 26, type: !1341)
!1337 = distinct !DISubprogram(name: "memcpy", scope: !1338, file: !1338, line: 26, type: !1339, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1342)
!1338 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!98, !1341, !1254, !104}
!1341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!1342 = !{!1336, !1343, !1344}
!1343 = !DILocalVariable(name: "__src", arg: 2, scope: !1337, file: !1338, line: 26, type: !1254)
!1344 = !DILocalVariable(name: "__len", arg: 3, scope: !1337, file: !1338, line: 26, type: !104)
!1345 = !DILocation(line: 0, scope: !1337, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 560, column: 7, scope: !1332)
!1347 = !DILocation(line: 29, column: 10, scope: !1337, inlinedAt: !1346)
!1348 = !DILocation(line: 562, column: 5, scope: !1332)
!1349 = !DILocation(line: 0, scope: !1329)
!1350 = !DILocation(line: 568, column: 11, scope: !54)
!1351 = !DILocation(line: 568, column: 18, scope: !54)
!1352 = !DILocation(line: 0, scope: !483)
!1353 = !DILocation(line: 576, column: 24, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !483, file: !2, line: 576, column: 5)
!1355 = !DILocation(line: 576, column: 5, scope: !483)
!1356 = !DILocation(line: 577, column: 10, scope: !1354)
!1357 = !DILocation(line: 581, column: 3, scope: !54)
!1358 = !DILocation(line: 583, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !54, file: !2, line: 583, column: 7)
!1360 = !DILocation(line: 583, column: 23, scope: !1359)
!1361 = !DILocalVariable(name: "filename", arg: 1, scope: !1362, file: !2, line: 449, type: !101)
!1362 = distinct !DISubprogram(name: "tac_file", scope: !2, file: !2, line: 449, type: !1363, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!215, !101}
!1365 = !{!1361, !1366, !1367, !1369, !1370}
!1366 = !DILocalVariable(name: "ok", scope: !1362, file: !2, line: 451, type: !215)
!1367 = !DILocalVariable(name: "file_size", scope: !1362, file: !2, line: 452, type: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !597, line: 63, baseType: !254)
!1369 = !DILocalVariable(name: "fd", scope: !1362, file: !2, line: 453, type: !57)
!1370 = !DILocalVariable(name: "is_stdin", scope: !1362, file: !2, line: 454, type: !215)
!1371 = !DILocation(line: 0, scope: !1362, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 577, column: 13, scope: !1354)
!1373 = !DILocation(line: 0, scope: !1122, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 454, column: 19, scope: !1362, inlinedAt: !1372)
!1375 = !DILocation(line: 1361, column: 11, scope: !1122, inlinedAt: !1374)
!1376 = !DILocation(line: 1361, column: 10, scope: !1122, inlinedAt: !1374)
!1377 = !DILocation(line: 456, column: 7, scope: !1362, inlinedAt: !1372)
!1378 = !DILocation(line: 458, column: 23, scope: !1379, inlinedAt: !1372)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 457, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 456, column: 7)
!1381 = !DILocation(line: 460, column: 18, scope: !1379, inlinedAt: !1372)
!1382 = !DILocation(line: 462, column: 5, scope: !1379, inlinedAt: !1372)
!1383 = !DILocation(line: 465, column: 12, scope: !1384, inlinedAt: !1372)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 464, column: 5)
!1385 = !DILocation(line: 466, column: 14, scope: !1386, inlinedAt: !1372)
!1386 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 466, column: 11)
!1387 = !DILocation(line: 466, column: 11, scope: !1384, inlinedAt: !1372)
!1388 = !DILocation(line: 468, column: 11, scope: !1389, inlinedAt: !1372)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 467, column: 9)
!1390 = !DILocation(line: 470, column: 11, scope: !1389, inlinedAt: !1372)
!1391 = !DILocation(line: 0, scope: !1380, inlinedAt: !1372)
!1392 = !DILocation(line: 474, column: 15, scope: !1362, inlinedAt: !1372)
!1393 = !DILocation(line: 476, column: 19, scope: !1362, inlinedAt: !1372)
!1394 = !DILocation(line: 476, column: 23, scope: !1362, inlinedAt: !1372)
!1395 = !DILocation(line: 476, column: 26, scope: !1362, inlinedAt: !1372)
!1396 = !DILocation(line: 476, column: 9, scope: !1362, inlinedAt: !1372)
!1397 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1398, file: !2, line: 432, type: !57)
!1398 = distinct !DISubprogram(name: "tac_nonseekable", scope: !2, file: !2, line: 432, type: !1399, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!215, !57, !101}
!1401 = !{!1397, !1402, !1403, !1404, !1405, !1406}
!1402 = !DILocalVariable(name: "file", arg: 2, scope: !1398, file: !2, line: 432, type: !101)
!1403 = !DILocalVariable(name: "tmp_stream", scope: !1398, file: !2, line: 434, type: !228)
!1404 = !DILocalVariable(name: "tmp_file", scope: !1398, file: !2, line: 435, type: !59)
!1405 = !DILocalVariable(name: "bytes_copied", scope: !1398, file: !2, line: 436, type: !1368)
!1406 = !DILocalVariable(name: "ok", scope: !1398, file: !2, line: 440, type: !215)
!1407 = !DILocation(line: 0, scope: !1398, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 477, column: 11, scope: !1362, inlinedAt: !1372)
!1409 = !DILocalVariable(name: "fp", scope: !1410, file: !2, line: 388, type: !228)
!1410 = distinct !DISubprogram(name: "copy_to_temp", scope: !2, file: !2, line: 386, type: !1411, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1414)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1368, !1413, !58, !57, !101}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1414 = !{!1415, !1416, !1417, !1418, !1409, !1419, !1420, !1424, !1428, !1431, !1432}
!1415 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !1410, file: !2, line: 386, type: !1413)
!1416 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !1410, file: !2, line: 386, type: !58)
!1417 = !DILocalVariable(name: "input_fd", arg: 3, scope: !1410, file: !2, line: 386, type: !57)
!1418 = !DILocalVariable(name: "file", arg: 4, scope: !1410, file: !2, line: 386, type: !101)
!1419 = !DILocalVariable(name: "file_name", scope: !1410, file: !2, line: 389, type: !59)
!1420 = !DILocalVariable(name: "bytes_copied", scope: !1410, file: !2, line: 390, type: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1422, line: 102, baseType: !1423)
!1422 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !255, line: 73, baseType: !106)
!1424 = !DILocalVariable(name: "bytes_read", scope: !1425, file: !2, line: 396, type: !1426)
!1425 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 395, column: 5)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !597, line: 77, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !255, line: 194, baseType: !256)
!1428 = !DILocalVariable(name: "__ptr", scope: !1429, file: !2, line: 405, type: !101)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 405, column: 11)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 405, column: 11)
!1431 = !DILocalVariable(name: "__stream", scope: !1429, file: !2, line: 405, type: !228)
!1432 = !DILocalVariable(name: "__cnt", scope: !1429, file: !2, line: 405, type: !104)
!1433 = !DILocation(line: 0, scope: !1410, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 436, column: 24, scope: !1398, inlinedAt: !1408)
!1435 = !DILocation(line: 388, column: 3, scope: !1410, inlinedAt: !1434)
!1436 = !DILocation(line: 389, column: 3, scope: !1410, inlinedAt: !1434)
!1437 = !DILocation(line: 391, column: 8, scope: !1438, inlinedAt: !1434)
!1438 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 391, column: 7)
!1439 = !DILocation(line: 391, column: 7, scope: !1410, inlinedAt: !1434)
!1440 = !DILocation(line: 396, column: 44, scope: !1425, inlinedAt: !1434)
!1441 = !DILocation(line: 396, column: 54, scope: !1425, inlinedAt: !1434)
!1442 = !DILocation(line: 396, column: 28, scope: !1425, inlinedAt: !1434)
!1443 = !DILocation(line: 0, scope: !1425, inlinedAt: !1434)
!1444 = !DILocation(line: 397, column: 22, scope: !1445, inlinedAt: !1434)
!1445 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 397, column: 11)
!1446 = !DILocation(line: 397, column: 11, scope: !1425, inlinedAt: !1434)
!1447 = !DILocation(line: 399, column: 11, scope: !1425, inlinedAt: !1434)
!1448 = !DILocation(line: 414, column: 20, scope: !1425, inlinedAt: !1434)
!1449 = !DILocation(line: 399, column: 22, scope: !1450, inlinedAt: !1434)
!1450 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 399, column: 11)
!1451 = !DILocation(line: 401, column: 11, scope: !1452, inlinedAt: !1434)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 400, column: 9)
!1453 = !DILocation(line: 402, column: 11, scope: !1452, inlinedAt: !1434)
!1454 = !DILocation(line: 405, column: 11, scope: !1430, inlinedAt: !1434)
!1455 = !DILocation(line: 405, column: 48, scope: !1430, inlinedAt: !1434)
!1456 = !DILocation(line: 405, column: 11, scope: !1425, inlinedAt: !1434)
!1457 = !DILocation(line: 407, column: 11, scope: !1458, inlinedAt: !1434)
!1458 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 406, column: 9)
!1459 = !DILocation(line: 408, column: 11, scope: !1458, inlinedAt: !1434)
!1460 = !DILocation(line: 417, column: 7, scope: !1461, inlinedAt: !1434)
!1461 = distinct !DILexicalBlock(scope: !1410, file: !2, line: 417, column: 7)
!1462 = !DILocation(line: 390, column: 13, scope: !1410, inlinedAt: !1434)
!1463 = !DILocation(line: 417, column: 19, scope: !1461, inlinedAt: !1434)
!1464 = !DILocation(line: 417, column: 7, scope: !1410, inlinedAt: !1434)
!1465 = !DILocation(line: 419, column: 7, scope: !1466, inlinedAt: !1434)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 418, column: 5)
!1467 = !DILocation(line: 420, column: 7, scope: !1466, inlinedAt: !1434)
!1468 = !DILocation(line: 426, column: 1, scope: !1410, inlinedAt: !1434)
!1469 = !DILocation(line: 437, column: 7, scope: !1398, inlinedAt: !1408)
!1470 = !DILocation(line: 423, column: 12, scope: !1410, inlinedAt: !1434)
!1471 = !DILocation(line: 424, column: 17, scope: !1410, inlinedAt: !1434)
!1472 = !DILocation(line: 437, column: 20, scope: !1473, inlinedAt: !1408)
!1473 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 437, column: 7)
!1474 = !DILocation(line: 440, column: 27, scope: !1398, inlinedAt: !1408)
!1475 = !DILocation(line: 440, column: 13, scope: !1398, inlinedAt: !1408)
!1476 = !DILocation(line: 478, column: 11, scope: !1362, inlinedAt: !1372)
!1477 = !DILocation(line: 480, column: 17, scope: !1478, inlinedAt: !1372)
!1478 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 480, column: 7)
!1479 = !DILocation(line: 480, column: 20, scope: !1478, inlinedAt: !1372)
!1480 = !DILocation(line: 480, column: 31, scope: !1478, inlinedAt: !1372)
!1481 = !DILocation(line: 480, column: 7, scope: !1362, inlinedAt: !1372)
!1482 = !DILocation(line: 482, column: 7, scope: !1483, inlinedAt: !1372)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 481, column: 5)
!1484 = !DILocation(line: 484, column: 5, scope: !1483, inlinedAt: !1372)
!1485 = !DILocation(line: 576, column: 33, scope: !1354)
!1486 = distinct !{!1486, !1355, !1487, !1157}
!1487 = !DILocation(line: 577, column: 30, scope: !483)
!1488 = !DILocation(line: 583, column: 26, scope: !1359)
!1489 = !DILocation(line: 583, column: 47, scope: !1359)
!1490 = !DILocation(line: 583, column: 7, scope: !54)
!1491 = !DILocation(line: 585, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 584, column: 5)
!1493 = !DILocation(line: 587, column: 5, scope: !1492)
!1494 = !DILocation(line: 589, column: 3, scope: !54)
!1495 = !DISubprogram(name: "bindtextdomain", scope: !1093, file: !1093, line: 86, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!59, !101, !101}
!1498 = !DISubprogram(name: "textdomain", scope: !1093, file: !1093, line: 82, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DISubprogram(name: "atexit", scope: !1231, file: !1231, line: 602, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!57, !636}
!1502 = !DISubprogram(name: "getopt_long", scope: !404, file: !404, line: 66, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!57, !57, !1505, !101, !1507, !409}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1508 = !DISubprogram(name: "strlen", scope: !1227, file: !1227, line: 407, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!106, !101}
!1511 = !DISubprogram(name: "re_compile_pattern", scope: !170, file: !170, line: 548, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!101, !101, !104, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1515 = !DILocation(line: 0, scope: !451)
!1516 = !DILocation(line: 157, column: 40, scope: !451)
!1517 = !DILocation(line: 159, column: 8, scope: !462)
!1518 = !DILocation(line: 159, column: 7, scope: !451)
!1519 = !DILocation(line: 157, column: 38, scope: !451)
!1520 = !DILocation(line: 156, column: 34, scope: !451)
!1521 = !DILocation(line: 168, column: 23, scope: !451)
!1522 = !DILocation(line: 168, column: 3, scope: !451)
!1523 = !DILocation(line: 170, column: 22, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !451, file: !2, line: 169, column: 5)
!1525 = !DILocation(line: 0, scope: !1337, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 170, column: 7, scope: !1524)
!1527 = !DILocation(line: 29, column: 10, scope: !1337, inlinedAt: !1526)
!1528 = !DILocation(line: 173, column: 11, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 173, column: 11)
!1530 = !DILocation(line: 173, column: 49, scope: !1529)
!1531 = !DILocation(line: 173, column: 11, scope: !1524)
!1532 = !DILocation(line: 172, column: 13, scope: !1524)
!1533 = !DILocation(line: 171, column: 20, scope: !1524)
!1534 = !DILocation(line: 175, column: 23, scope: !1524)
!1535 = !DILocation(line: 161, column: 11, scope: !460)
!1536 = !DILocation(line: 161, column: 58, scope: !460)
!1537 = !DILocation(line: 161, column: 55, scope: !460)
!1538 = !DILocation(line: 161, column: 11, scope: !461)
!1539 = !DILocation(line: 948, column: 21, scope: !1540, inlinedAt: !1543)
!1540 = distinct !DISubprogram(name: "write_error", scope: !63, file: !63, line: 946, type: !637, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1541)
!1541 = !{!1542}
!1542 = !DILocalVariable(name: "saved_errno", scope: !1540, file: !63, line: 948, type: !57)
!1543 = distinct !DILocation(line: 162, column: 9, scope: !460)
!1544 = !DILocation(line: 0, scope: !1540, inlinedAt: !1543)
!1545 = !DILocation(line: 949, column: 3, scope: !1540, inlinedAt: !1543)
!1546 = !DILocation(line: 950, column: 11, scope: !1540, inlinedAt: !1543)
!1547 = !DILocation(line: 950, column: 3, scope: !1540, inlinedAt: !1543)
!1548 = !DILocation(line: 951, column: 3, scope: !1540, inlinedAt: !1543)
!1549 = !DILocation(line: 952, column: 3, scope: !1540, inlinedAt: !1543)
!1550 = !DILocation(line: 948, column: 21, scope: !1540, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 174, column: 9, scope: !1529)
!1552 = !DILocation(line: 0, scope: !1540, inlinedAt: !1551)
!1553 = !DILocation(line: 949, column: 3, scope: !1540, inlinedAt: !1551)
!1554 = !DILocation(line: 950, column: 11, scope: !1540, inlinedAt: !1551)
!1555 = !DILocation(line: 950, column: 3, scope: !1540, inlinedAt: !1551)
!1556 = !DILocation(line: 951, column: 3, scope: !1540, inlinedAt: !1551)
!1557 = !DILocation(line: 952, column: 3, scope: !1540, inlinedAt: !1551)
!1558 = distinct !{!1558, !1522, !1559, !1157, !1560}
!1559 = !DILocation(line: 177, column: 5, scope: !451)
!1560 = !{!"llvm.loop.peeled.count", i32 1}
!1561 = !DILocation(line: 179, column: 18, scope: !451)
!1562 = !DILocation(line: 179, column: 20, scope: !451)
!1563 = !DILocation(line: 0, scope: !1337, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 179, column: 3, scope: !451)
!1565 = !DILocation(line: 29, column: 10, scope: !1337, inlinedAt: !1564)
!1566 = !DILocation(line: 180, column: 19, scope: !451)
!1567 = !DILocation(line: 181, column: 1, scope: !451)
!1568 = !DISubprogram(name: "open", scope: !1569, file: !1569, line: 181, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!57, !101, !57, null}
!1572 = !DISubprogram(name: "__errno_location", scope: !1573, file: !1573, line: 37, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!409}
!1576 = !DISubprogram(name: "lseek", scope: !1577, file: !1577, line: 339, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!254, !57, !254, !57}
!1580 = !DISubprogram(name: "isatty", scope: !1577, file: !1577, line: 809, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!57, !57}
!1583 = !DISubprogram(name: "fflush_unlocked", scope: !597, file: !597, line: 239, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!57, !228}
!1586 = !DISubprogram(name: "fileno_unlocked", scope: !597, file: !597, line: 814, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = distinct !DISubprogram(name: "tac_seekable", scope: !2, file: !2, line: 188, type: !1588, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!215, !57, !101, !1368}
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1604, !1606, !1610, !1611, !1612, !1613, !1618, !1619, !1620}
!1591 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1587, file: !2, line: 188, type: !57)
!1592 = !DILocalVariable(name: "file", arg: 2, scope: !1587, file: !2, line: 188, type: !101)
!1593 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1587, file: !2, line: 188, type: !1368)
!1594 = !DILocalVariable(name: "match_start", scope: !1587, file: !2, line: 192, type: !59)
!1595 = !DILocalVariable(name: "past_end", scope: !1587, file: !2, line: 196, type: !59)
!1596 = !DILocalVariable(name: "saved_record_size", scope: !1587, file: !2, line: 199, type: !985)
!1597 = !DILocalVariable(name: "first_time", scope: !1587, file: !2, line: 203, type: !215)
!1598 = !DILocalVariable(name: "first_char", scope: !1587, file: !2, line: 204, type: !4)
!1599 = !DILocalVariable(name: "separator1", scope: !1587, file: !2, line: 205, type: !101)
!1600 = !DILocalVariable(name: "match_length1", scope: !1587, file: !2, line: 206, type: !104)
!1601 = !DILocalVariable(name: "remainder", scope: !1587, file: !2, line: 213, type: !104)
!1602 = !DILocalVariable(name: "rsize", scope: !1603, file: !2, line: 226, type: !1368)
!1603 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 225, column: 5)
!1604 = !DILocalVariable(name: "nread", scope: !1605, file: !2, line: 235, type: !1426)
!1605 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 234, column: 5)
!1606 = !DILocalVariable(name: "i", scope: !1607, file: !2, line: 265, type: !104)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 264, column: 9)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 263, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 256, column: 5)
!1610 = !DILocalVariable(name: "ri", scope: !1607, file: !2, line: 266, type: !447)
!1611 = !DILocalVariable(name: "range", scope: !1607, file: !2, line: 267, type: !447)
!1612 = !DILocalVariable(name: "ret", scope: !1607, file: !2, line: 268, type: !447)
!1613 = !DILocalVariable(name: "newbuffer", scope: !1614, file: !2, line: 314, type: !59)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 309, column: 13)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 308, column: 15)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 299, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 298, column: 11)
!1618 = !DILocalVariable(name: "offset", scope: !1614, file: !2, line: 315, type: !104)
!1619 = !DILocalVariable(name: "old_G_buffer_size", scope: !1614, file: !2, line: 316, type: !104)
!1620 = !DILocalVariable(name: "match_end", scope: !1621, file: !2, line: 359, type: !59)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 358, column: 13)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 357, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 355, column: 9)
!1624 = !DILocation(line: 0, scope: !1587)
!1625 = !DILocation(line: 204, column: 22, scope: !1587)
!1626 = !DILocation(line: 204, column: 21, scope: !1587)
!1627 = !DILocation(line: 205, column: 38, scope: !1587)
!1628 = !DILocation(line: 206, column: 26, scope: !1587)
!1629 = !DILocation(line: 206, column: 39, scope: !1587)
!1630 = !DILocation(line: 213, column: 33, scope: !1587)
!1631 = !DILocation(line: 213, column: 31, scope: !1587)
!1632 = !DILocation(line: 214, column: 17, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 214, column: 7)
!1634 = !DILocation(line: 214, column: 7, scope: !1587)
!1635 = !DILocation(line: 216, column: 16, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 215, column: 5)
!1637 = !DILocation(line: 217, column: 11, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 217, column: 11)
!1639 = !DILocation(line: 217, column: 48, scope: !1638)
!1640 = !DILocation(line: 217, column: 11, scope: !1636)
!1641 = !DILocation(line: 218, column: 9, scope: !1638)
!1642 = !DILocation(line: 223, column: 47, scope: !1587)
!1643 = !DILocation(line: 223, column: 57, scope: !1587)
!1644 = !DILocation(line: 223, column: 31, scope: !1587)
!1645 = !DILocation(line: 223, column: 69, scope: !1587)
!1646 = !DILocation(line: 224, column: 10, scope: !1587)
!1647 = !DILocation(line: 223, column: 3, scope: !1587)
!1648 = !DILocation(line: 226, column: 21, scope: !1603)
!1649 = !DILocation(line: 0, scope: !1603)
!1650 = !DILocation(line: 227, column: 28, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 227, column: 11)
!1652 = !DILocation(line: 227, column: 11, scope: !1651)
!1653 = !DILocation(line: 227, column: 46, scope: !1651)
!1654 = !DILocation(line: 227, column: 11, scope: !1603)
!1655 = !DILocation(line: 228, column: 9, scope: !1651)
!1656 = !DILocation(line: 229, column: 19, scope: !1603)
!1657 = !DILocation(line: 229, column: 16, scope: !1603)
!1658 = distinct !{!1658, !1647, !1659, !1157}
!1659 = !DILocation(line: 230, column: 5, scope: !1587)
!1660 = !DILocation(line: 233, column: 3, scope: !1587)
!1661 = !DILocation(line: 223, column: 29, scope: !1587)
!1662 = !DILocation(line: 233, column: 31, scope: !1587)
!1663 = !DILocation(line: 233, column: 28, scope: !1587)
!1664 = !DILocation(line: 235, column: 39, scope: !1605)
!1665 = !DILocation(line: 235, column: 23, scope: !1605)
!1666 = !DILocation(line: 0, scope: !1605)
!1667 = !DILocation(line: 236, column: 17, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 236, column: 11)
!1669 = !DILocation(line: 236, column: 11, scope: !1605)
!1670 = !DILocation(line: 244, column: 25, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 244, column: 7)
!1672 = !DILocation(line: 244, column: 7, scope: !1587)
!1673 = !DILocation(line: 246, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 245, column: 5)
!1675 = !DILocation(line: 247, column: 7, scope: !1674)
!1676 = !DILocation(line: 250, column: 28, scope: !1587)
!1677 = !DILocation(line: 250, column: 37, scope: !1587)
!1678 = !DILocation(line: 252, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 252, column: 7)
!1680 = !DILocation(line: 252, column: 7, scope: !1587)
!1681 = !DILocation(line: 255, column: 3, scope: !1587)
!1682 = !DILocation(line: 263, column: 11, scope: !1608)
!1683 = !DILocation(line: 263, column: 27, scope: !1608)
!1684 = !DILocation(line: 263, column: 11, scope: !1609)
!1685 = !DILocation(line: 290, column: 11, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 288, column: 9)
!1687 = !DILocation(line: 265, column: 36, scope: !1607)
!1688 = !DILocation(line: 265, column: 34, scope: !1607)
!1689 = !DILocation(line: 0, scope: !1607)
!1690 = !DILocation(line: 266, column: 25, scope: !1607)
!1691 = !DILocation(line: 267, column: 30, scope: !1607)
!1692 = !DILocation(line: 270, column: 17, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 270, column: 15)
!1694 = !DILocation(line: 270, column: 15, scope: !1607)
!1695 = !DILocation(line: 271, column: 13, scope: !1693)
!1696 = !DILocation(line: 273, column: 21, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 273, column: 15)
!1698 = !DILocation(line: 274, column: 15, scope: !1697)
!1699 = !DILocation(line: 275, column: 40, scope: !1697)
!1700 = !DILocation(line: 274, column: 26, scope: !1697)
!1701 = !DILocation(line: 273, column: 15, scope: !1607)
!1702 = !DILocation(line: 277, column: 27, scope: !1697)
!1703 = !DILocation(line: 279, column: 13, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 278, column: 20)
!1705 = !DILocation(line: 283, column: 29, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 282, column: 13)
!1707 = !DILocation(line: 283, column: 45, scope: !1706)
!1708 = !{!1709, !1041, i64 8}
!1709 = !{!"re_registers", !1111, i64 0, !1041, i64 8, !1041, i64 16}
!1710 = !DILocation(line: 283, column: 40, scope: !1706)
!1711 = !DILocation(line: 283, column: 38, scope: !1706)
!1712 = !DILocation(line: 284, column: 35, scope: !1706)
!1713 = !{!1709, !1041, i64 16}
!1714 = !DILocation(line: 284, column: 30, scope: !1706)
!1715 = !DILocation(line: 284, column: 42, scope: !1706)
!1716 = !DILocation(line: 284, column: 28, scope: !1706)
!1717 = !DILocation(line: 290, column: 19, scope: !1686)
!1718 = !DILocation(line: 290, column: 18, scope: !1686)
!1719 = !DILocation(line: 290, column: 33, scope: !1686)
!1720 = !DILocation(line: 291, column: 18, scope: !1686)
!1721 = distinct !{!1721, !1685, !1722, !1157}
!1722 = !DILocation(line: 293, column: 31, scope: !1686)
!1723 = !DILocation(line: 291, column: 36, scope: !1686)
!1724 = !DILocation(line: 291, column: 40, scope: !1686)
!1725 = !DILocation(line: 298, column: 25, scope: !1617)
!1726 = !DILocation(line: 0, scope: !1608)
!1727 = !DILocation(line: 298, column: 23, scope: !1617)
!1728 = !DILocation(line: 298, column: 11, scope: !1609)
!1729 = !DILocation(line: 300, column: 24, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 300, column: 15)
!1731 = !DILocation(line: 300, column: 15, scope: !1616)
!1732 = !DILocation(line: 303, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 301, column: 13)
!1734 = !DILocation(line: 304, column: 15, scope: !1733)
!1735 = !DILocation(line: 307, column: 40, scope: !1616)
!1736 = !DILocation(line: 308, column: 35, scope: !1615)
!1737 = !DILocation(line: 308, column: 33, scope: !1615)
!1738 = !DILocation(line: 308, column: 15, scope: !1616)
!1739 = !DILocation(line: 315, column: 31, scope: !1614)
!1740 = !DILocation(line: 0, scope: !1614)
!1741 = !DILocation(line: 316, column: 42, scope: !1614)
!1742 = !DILocation(line: 318, column: 25, scope: !1614)
!1743 = !DILocation(line: 319, column: 41, scope: !1614)
!1744 = !DILocation(line: 319, column: 45, scope: !1614)
!1745 = !DILocation(line: 319, column: 63, scope: !1614)
!1746 = !DILocation(line: 319, column: 29, scope: !1614)
!1747 = !DILocation(line: 320, column: 33, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 320, column: 19)
!1749 = !DILocation(line: 320, column: 19, scope: !1614)
!1750 = !DILocation(line: 321, column: 17, scope: !1748)
!1751 = !DILocation(line: 322, column: 46, scope: !1614)
!1752 = !DILocation(line: 322, column: 27, scope: !1614)
!1753 = !DILocation(line: 323, column: 25, scope: !1614)
!1754 = !DILocation(line: 324, column: 24, scope: !1614)
!1755 = !DILocation(line: 328, column: 27, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 328, column: 15)
!1757 = !DILocation(line: 325, column: 13, scope: !1614)
!1758 = !DILocation(line: 328, column: 24, scope: !1756)
!1759 = !DILocation(line: 328, column: 15, scope: !1616)
!1760 = !DILocation(line: 329, column: 22, scope: !1756)
!1761 = !DILocation(line: 329, column: 13, scope: !1756)
!1762 = !DILocation(line: 332, column: 25, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 331, column: 13)
!1764 = !DILocation(line: 0, scope: !1756)
!1765 = !DILocation(line: 335, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 335, column: 15)
!1767 = !DILocation(line: 335, column: 52, scope: !1766)
!1768 = !DILocation(line: 335, column: 15, scope: !1616)
!1769 = !DILocation(line: 336, column: 13, scope: !1766)
!1770 = !DILocation(line: 340, column: 20, scope: !1616)
!1771 = !DILocation(line: 340, column: 31, scope: !1616)
!1772 = !DILocation(line: 340, column: 29, scope: !1616)
!1773 = !DILocalVariable(name: "__dest", arg: 1, scope: !1774, file: !1338, line: 34, type: !98)
!1774 = distinct !DISubprogram(name: "memmove", scope: !1338, file: !1338, line: 34, type: !1775, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!98, !98, !1255, !104}
!1777 = !{!1773, !1778, !1779}
!1778 = !DILocalVariable(name: "__src", arg: 2, scope: !1774, file: !1338, line: 34, type: !1255)
!1779 = !DILocalVariable(name: "__len", arg: 3, scope: !1774, file: !1338, line: 34, type: !104)
!1780 = !DILocation(line: 0, scope: !1774, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 340, column: 11, scope: !1616)
!1782 = !DILocation(line: 36, column: 10, scope: !1774, inlinedAt: !1781)
!1783 = !DILocation(line: 343, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 343, column: 15)
!1785 = !DILocation(line: 348, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 348, column: 15)
!1787 = !DILocation(line: 348, column: 60, scope: !1786)
!1788 = !DILocation(line: 348, column: 57, scope: !1786)
!1789 = !DILocation(line: 348, column: 15, scope: !1616)
!1790 = !DILocation(line: 341, column: 31, scope: !1616)
!1791 = !DILocation(line: 341, column: 43, scope: !1616)
!1792 = distinct !{!1792, !1681, !1793}
!1793 = !DILocation(line: 378, column: 5, scope: !1587)
!1794 = !DILocation(line: 350, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 349, column: 13)
!1796 = !DILocation(line: 351, column: 15, scope: !1795)
!1797 = !DILocation(line: 357, column: 15, scope: !1622)
!1798 = !DILocation(line: 357, column: 15, scope: !1623)
!1799 = !DILocation(line: 359, column: 47, scope: !1621)
!1800 = !DILocation(line: 359, column: 45, scope: !1621)
!1801 = !DILocation(line: 0, scope: !1621)
!1802 = !DILocation(line: 363, column: 31, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 363, column: 19)
!1804 = !DILocation(line: 0, scope: !1622)
!1805 = !DILocation(line: 375, column: 15, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 375, column: 15)
!1807 = !DILocation(line: 375, column: 31, scope: !1806)
!1808 = !DILocation(line: 375, column: 15, scope: !1623)
!1809 = !DILocation(line: 379, column: 1, scope: !1587)
!1810 = !DISubprogram(name: "close", scope: !1577, file: !1577, line: 358, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1811 = !DISubprogram(name: "re_search", scope: !170, file: !170, line: 564, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!447, !1514, !101, !447, !447, !447, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1815 = !DISubprogram(name: "clearerr_unlocked", scope: !597, file: !597, line: 794, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{null, !228}
!1818 = !DILocation(line: 0, scope: !490)
!1819 = !DILocation(line: 88, column: 7, scope: !555)
!1820 = !DILocation(line: 88, column: 16, scope: !555)
!1821 = !DILocation(line: 88, column: 7, scope: !490)
!1822 = !DILocation(line: 0, scope: !554)
!1823 = !DILocalVariable(name: "ptr", arg: 1, scope: !1824, file: !1825, line: 2057, type: !98)
!1824 = distinct !DISubprogram(name: "rpl_realloc", scope: !1825, file: !1825, line: 2057, type: !1826, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1828)
!1825 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!98, !98, !104}
!1828 = !{!1823, !1829}
!1829 = !DILocalVariable(name: "size", arg: 2, scope: !1824, file: !1825, line: 2057, type: !104)
!1830 = !DILocation(line: 0, scope: !1824, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 95, column: 28, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !491, line: 95, column: 15)
!1833 = distinct !DILexicalBlock(scope: !554, file: !491, line: 94, column: 9)
!1834 = !DILocation(line: 2059, column: 10, scope: !1824, inlinedAt: !1831)
!1835 = !DILocation(line: 95, column: 26, scope: !1832)
!1836 = !DILocation(line: 95, column: 15, scope: !1833)
!1837 = !DILocation(line: 97, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !491, line: 96, column: 13)
!1839 = distinct !{!1839, !1840, !1841}
!1840 = !DILocation(line: 93, column: 7, scope: !554)
!1841 = !DILocation(line: 112, column: 9, scope: !554)
!1842 = !DILocation(line: 101, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1833, file: !491, line: 101, column: 15)
!1844 = !DILocation(line: 101, column: 71, scope: !1843)
!1845 = !DILocation(line: 101, column: 15, scope: !1833)
!1846 = !DILocation(line: 104, column: 15, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1833, file: !491, line: 104, column: 15)
!1848 = !DILocation(line: 104, column: 21, scope: !1847)
!1849 = !DILocation(line: 104, column: 31, scope: !1847)
!1850 = !DILocation(line: 98, column: 15, scope: !1838)
!1851 = !DILocation(line: 106, column: 15, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !491, line: 105, column: 13)
!1853 = !DILocation(line: 108, column: 15, scope: !1852)
!1854 = !DILocation(line: 114, column: 16, scope: !554)
!1855 = !DILocation(line: 125, column: 16, scope: !554)
!1856 = !DILocation(line: 126, column: 14, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !554, file: !491, line: 126, column: 11)
!1858 = !DILocation(line: 126, column: 11, scope: !554)
!1859 = !DILocation(line: 128, column: 11, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !491, line: 127, column: 9)
!1861 = !DILocation(line: 130, column: 11, scope: !1860)
!1862 = !DILocation(line: 133, column: 16, scope: !554)
!1863 = !DILocation(line: 133, column: 14, scope: !554)
!1864 = !DILocation(line: 134, column: 13, scope: !560)
!1865 = !DILocation(line: 134, column: 11, scope: !554)
!1866 = !DILocation(line: 136, column: 11, scope: !559)
!1867 = !DILocation(line: 138, column: 11, scope: !559)
!1868 = !DILocation(line: 139, column: 19, scope: !559)
!1869 = !DILocation(line: 139, column: 11, scope: !559)
!1870 = !DILocation(line: 140, column: 9, scope: !559)
!1871 = !DILocation(line: 141, column: 17, scope: !559)
!1872 = !DILocation(line: 141, column: 11, scope: !559)
!1873 = !DILocation(line: 142, column: 20, scope: !559)
!1874 = !DILocation(line: 143, column: 11, scope: !559)
!1875 = !DILocation(line: 146, column: 34, scope: !554)
!1876 = !DILocalVariable(name: "fn", arg: 1, scope: !1877, file: !491, line: 69, type: !101)
!1877 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !491, file: !491, line: 69, type: !1878, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !101, !495}
!1880 = !{!1876, !1881}
!1881 = !DILocalVariable(name: "fp", arg: 2, scope: !1877, file: !491, line: 69, type: !495)
!1882 = !DILocation(line: 0, scope: !1877, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 146, column: 7, scope: !554)
!1884 = !DILocation(line: 71, column: 3, scope: !1877, inlinedAt: !1883)
!1885 = !DILocation(line: 150, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !555, file: !491, line: 149, column: 5)
!1887 = !DILocation(line: 151, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1886, file: !491, line: 151, column: 11)
!1889 = !DILocation(line: 151, column: 11, scope: !1888)
!1890 = !DILocation(line: 151, column: 40, scope: !1888)
!1891 = !DILocation(line: 152, column: 11, scope: !1888)
!1892 = !DILocation(line: 152, column: 25, scope: !1888)
!1893 = !DILocation(line: 152, column: 14, scope: !1888)
!1894 = !DILocation(line: 152, column: 45, scope: !1888)
!1895 = !DILocation(line: 151, column: 11, scope: !1886)
!1896 = !DILocation(line: 154, column: 11, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1888, file: !491, line: 153, column: 9)
!1898 = !DILocation(line: 156, column: 11, scope: !1897)
!1899 = !DILocation(line: 160, column: 9, scope: !490)
!1900 = !DILocation(line: 160, column: 7, scope: !490)
!1901 = !DILocation(line: 161, column: 7, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !490, file: !491, line: 161, column: 7)
!1903 = !DILocation(line: 161, column: 7, scope: !490)
!1904 = !DILocation(line: 162, column: 18, scope: !1902)
!1905 = !DILocation(line: 162, column: 16, scope: !1902)
!1906 = !DILocation(line: 162, column: 5, scope: !1902)
!1907 = !DILocation(line: 164, column: 1, scope: !490)
!1908 = !DISubprogram(name: "realloc", scope: !1231, file: !1231, line: 551, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1909 = !DISubprogram(name: "fdopen", scope: !597, file: !597, line: 293, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!495, !57, !101}
!1912 = !DISubprogram(name: "unlink", scope: !1577, file: !1577, line: 858, type: !1913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!57, !101}
!1915 = !DISubprogram(name: "free", scope: !1916, file: !1916, line: 786, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1916 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !98}
!1919 = !DISubprogram(name: "ftruncate", scope: !1577, file: !1577, line: 1049, type: !1920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!57, !57, !254}
!1922 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !571, file: !571, line: 50, type: !1061, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1923)
!1923 = !{!1924}
!1924 = !DILocalVariable(name: "file", arg: 1, scope: !1922, file: !571, line: 50, type: !101)
!1925 = !DILocation(line: 0, scope: !1922)
!1926 = !DILocation(line: 52, column: 13, scope: !1922)
!1927 = !DILocation(line: 53, column: 1, scope: !1922)
!1928 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !571, file: !571, line: 87, type: !1929, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !215}
!1931 = !{!1932}
!1932 = !DILocalVariable(name: "ignore", arg: 1, scope: !1928, file: !571, line: 87, type: !215)
!1933 = !DILocation(line: 0, scope: !1928)
!1934 = !DILocation(line: 89, column: 16, scope: !1928)
!1935 = !{!1936, !1936, i64 0}
!1936 = !{!"_Bool", !1042, i64 0}
!1937 = !DILocation(line: 90, column: 1, scope: !1928)
!1938 = distinct !DISubprogram(name: "close_stdout", scope: !571, file: !571, line: 116, type: !637, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1939)
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "write_error", scope: !1941, file: !571, line: 121, type: !101)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !571, line: 120, column: 5)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !571, line: 118, column: 7)
!1943 = !DILocation(line: 118, column: 21, scope: !1942)
!1944 = !DILocation(line: 118, column: 7, scope: !1942)
!1945 = !DILocation(line: 118, column: 29, scope: !1942)
!1946 = !DILocation(line: 119, column: 7, scope: !1942)
!1947 = !DILocation(line: 119, column: 12, scope: !1942)
!1948 = !{i8 0, i8 2}
!1949 = !DILocation(line: 119, column: 25, scope: !1942)
!1950 = !DILocation(line: 119, column: 28, scope: !1942)
!1951 = !DILocation(line: 119, column: 34, scope: !1942)
!1952 = !DILocation(line: 118, column: 7, scope: !1938)
!1953 = !DILocation(line: 121, column: 33, scope: !1941)
!1954 = !DILocation(line: 0, scope: !1941)
!1955 = !DILocation(line: 122, column: 11, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1941, file: !571, line: 122, column: 11)
!1957 = !DILocation(line: 0, scope: !1956)
!1958 = !DILocation(line: 122, column: 11, scope: !1941)
!1959 = !DILocation(line: 123, column: 9, scope: !1956)
!1960 = !DILocation(line: 126, column: 9, scope: !1956)
!1961 = !DILocation(line: 128, column: 14, scope: !1941)
!1962 = !DILocation(line: 128, column: 7, scope: !1941)
!1963 = !DILocation(line: 133, column: 42, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1938, file: !571, line: 133, column: 7)
!1965 = !DILocation(line: 133, column: 28, scope: !1964)
!1966 = !DILocation(line: 133, column: 50, scope: !1964)
!1967 = !DILocation(line: 133, column: 7, scope: !1938)
!1968 = !DILocation(line: 134, column: 12, scope: !1964)
!1969 = !DILocation(line: 134, column: 5, scope: !1964)
!1970 = !DILocation(line: 135, column: 1, scope: !1938)
!1971 = !DISubprogram(name: "_exit", scope: !1577, file: !1577, line: 624, type: !1030, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1972 = distinct !DISubprogram(name: "verror", scope: !586, file: !586, line: 251, type: !1973, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !57, !57, !101, !596}
!1975 = !{!1976, !1977, !1978, !1979}
!1976 = !DILocalVariable(name: "status", arg: 1, scope: !1972, file: !586, line: 251, type: !57)
!1977 = !DILocalVariable(name: "errnum", arg: 2, scope: !1972, file: !586, line: 251, type: !57)
!1978 = !DILocalVariable(name: "message", arg: 3, scope: !1972, file: !586, line: 251, type: !101)
!1979 = !DILocalVariable(name: "args", arg: 4, scope: !1972, file: !586, line: 251, type: !596)
!1980 = !DILocation(line: 0, scope: !1972)
!1981 = !DILocation(line: 261, column: 3, scope: !1972)
!1982 = !DILocation(line: 265, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1972, file: !586, line: 265, column: 7)
!1984 = !DILocation(line: 265, column: 7, scope: !1972)
!1985 = !DILocation(line: 266, column: 5, scope: !1983)
!1986 = !DILocation(line: 272, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !586, line: 268, column: 5)
!1988 = !DILocation(line: 276, column: 3, scope: !1972)
!1989 = !{i64 0, i64 8, !1040, i64 8, i64 8, !1040, i64 16, i64 8, !1040, i64 24, i64 4, !1110, i64 28, i64 4, !1110}
!1990 = !DILocation(line: 282, column: 1, scope: !1972)
!1991 = distinct !DISubprogram(name: "flush_stdout", scope: !586, file: !586, line: 163, type: !637, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1992)
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "stdout_fd", scope: !1991, file: !586, line: 166, type: !57)
!1994 = !DILocation(line: 0, scope: !1991)
!1995 = !DILocalVariable(name: "fd", arg: 1, scope: !1996, file: !586, line: 145, type: !57)
!1996 = distinct !DISubprogram(name: "is_open", scope: !586, file: !586, line: 145, type: !1581, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1997)
!1997 = !{!1995}
!1998 = !DILocation(line: 0, scope: !1996, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 182, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1991, file: !586, line: 182, column: 7)
!2001 = !DILocation(line: 157, column: 15, scope: !1996, inlinedAt: !1999)
!2002 = !DILocation(line: 157, column: 12, scope: !1996, inlinedAt: !1999)
!2003 = !DILocation(line: 182, column: 7, scope: !1991)
!2004 = !DILocation(line: 184, column: 5, scope: !2000)
!2005 = !DILocation(line: 185, column: 1, scope: !1991)
!2006 = distinct !DISubprogram(name: "error_tail", scope: !586, file: !586, line: 219, type: !1973, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2007)
!2007 = !{!2008, !2009, !2010, !2011}
!2008 = !DILocalVariable(name: "status", arg: 1, scope: !2006, file: !586, line: 219, type: !57)
!2009 = !DILocalVariable(name: "errnum", arg: 2, scope: !2006, file: !586, line: 219, type: !57)
!2010 = !DILocalVariable(name: "message", arg: 3, scope: !2006, file: !586, line: 219, type: !101)
!2011 = !DILocalVariable(name: "args", arg: 4, scope: !2006, file: !586, line: 219, type: !596)
!2012 = distinct !DIAssignID()
!2013 = !DILocation(line: 0, scope: !2006)
!2014 = !DILocation(line: 229, column: 13, scope: !2006)
!2015 = !DILocation(line: 135, column: 10, scope: !2016, inlinedAt: !2058)
!2016 = distinct !DISubprogram(name: "vfprintf", scope: !1097, file: !1097, line: 132, type: !2017, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2054)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!57, !2019, !1101, !598}
!2019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2022)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2022, file: !232, line: 51, baseType: !57, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2022, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2022, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2022, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2022, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2022, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2022, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2022, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2022, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2022, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2022, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2022, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2022, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2022, file: !232, line: 70, baseType: !2038, size: 64, offset: 832)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2022, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2022, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2022, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2022, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2022, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2022, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2022, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2022, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2022, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2022, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2022, file: !232, line: 93, baseType: !2038, size: 64, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2022, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2022, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2022, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2022, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2054 = !{!2055, !2056, !2057}
!2055 = !DILocalVariable(name: "__stream", arg: 1, scope: !2016, file: !1097, line: 132, type: !2019)
!2056 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2016, file: !1097, line: 133, type: !1101)
!2057 = !DILocalVariable(name: "__ap", arg: 3, scope: !2016, file: !1097, line: 133, type: !598)
!2058 = distinct !DILocation(line: 229, column: 3, scope: !2006)
!2059 = !{!2060, !2062}
!2060 = distinct !{!2060, !2061, !"vfprintf.inline: argument 0"}
!2061 = distinct !{!2061, !"vfprintf.inline"}
!2062 = distinct !{!2062, !2061, !"vfprintf.inline: argument 1"}
!2063 = !DILocation(line: 229, column: 3, scope: !2006)
!2064 = !DILocation(line: 0, scope: !2016, inlinedAt: !2058)
!2065 = !DILocation(line: 232, column: 3, scope: !2006)
!2066 = !DILocation(line: 233, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2006, file: !586, line: 233, column: 7)
!2068 = !DILocation(line: 233, column: 7, scope: !2006)
!2069 = !DILocalVariable(name: "errbuf", scope: !2070, file: !586, line: 193, type: !2074)
!2070 = distinct !DISubprogram(name: "print_errno_message", scope: !586, file: !586, line: 188, type: !1030, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2071)
!2071 = !{!2072, !2073, !2069}
!2072 = !DILocalVariable(name: "errnum", arg: 1, scope: !2070, file: !586, line: 188, type: !57)
!2073 = !DILocalVariable(name: "s", scope: !2070, file: !586, line: 190, type: !101)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 1024)
!2077 = !DILocation(line: 0, scope: !2070, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 234, column: 5, scope: !2067)
!2079 = !DILocation(line: 193, column: 3, scope: !2070, inlinedAt: !2078)
!2080 = !DILocation(line: 195, column: 7, scope: !2070, inlinedAt: !2078)
!2081 = !DILocation(line: 207, column: 9, scope: !2082, inlinedAt: !2078)
!2082 = distinct !DILexicalBlock(scope: !2070, file: !586, line: 207, column: 7)
!2083 = !DILocation(line: 207, column: 7, scope: !2070, inlinedAt: !2078)
!2084 = !DILocation(line: 208, column: 9, scope: !2082, inlinedAt: !2078)
!2085 = !DILocation(line: 208, column: 5, scope: !2082, inlinedAt: !2078)
!2086 = !DILocation(line: 214, column: 3, scope: !2070, inlinedAt: !2078)
!2087 = !DILocation(line: 216, column: 1, scope: !2070, inlinedAt: !2078)
!2088 = !DILocation(line: 234, column: 5, scope: !2067)
!2089 = !DILocation(line: 238, column: 3, scope: !2006)
!2090 = !DILocalVariable(name: "__c", arg: 1, scope: !2091, file: !2092, line: 101, type: !57)
!2091 = distinct !DISubprogram(name: "putc_unlocked", scope: !2092, file: !2092, line: 101, type: !2093, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2095)
!2092 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!57, !57, !2020}
!2095 = !{!2090, !2096}
!2096 = !DILocalVariable(name: "__stream", arg: 2, scope: !2091, file: !2092, line: 101, type: !2020)
!2097 = !DILocation(line: 0, scope: !2091, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 238, column: 3, scope: !2006)
!2099 = !DILocation(line: 103, column: 10, scope: !2091, inlinedAt: !2098)
!2100 = !{!2101, !1041, i64 40}
!2101 = !{!"_IO_FILE", !1111, i64 0, !1041, i64 8, !1041, i64 16, !1041, i64 24, !1041, i64 32, !1041, i64 40, !1041, i64 48, !1041, i64 56, !1041, i64 64, !1041, i64 72, !1041, i64 80, !1041, i64 88, !1041, i64 96, !1041, i64 104, !1111, i64 112, !1111, i64 116, !1274, i64 120, !1152, i64 128, !1042, i64 130, !1042, i64 131, !1041, i64 136, !1274, i64 144, !1041, i64 152, !1041, i64 160, !1041, i64 168, !1041, i64 176, !1274, i64 184, !1111, i64 192, !1042, i64 196}
!2102 = !{!2101, !1041, i64 48}
!2103 = !{!"branch_weights", i32 2000, i32 1}
!2104 = !DILocation(line: 240, column: 3, scope: !2006)
!2105 = !DILocation(line: 241, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2006, file: !586, line: 241, column: 7)
!2107 = !DILocation(line: 241, column: 7, scope: !2006)
!2108 = !DILocation(line: 242, column: 5, scope: !2106)
!2109 = !DILocation(line: 243, column: 1, scope: !2006)
!2110 = !DISubprogram(name: "__vfprintf_chk", scope: !1097, file: !1097, line: 96, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!57, !2019, !57, !1101, !598}
!2113 = !DISubprogram(name: "strerror_r", scope: !1227, file: !1227, line: 444, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!59, !57, !59, !104}
!2116 = !DISubprogram(name: "__overflow", scope: !597, file: !597, line: 886, type: !2117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!57, !2020, !57}
!2119 = !DISubprogram(name: "fcntl", scope: !1569, file: !1569, line: 149, type: !2120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!57, !57, !57, null}
!2122 = distinct !DISubprogram(name: "error", scope: !586, file: !586, line: 285, type: !2123, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !57, !57, !101, null}
!2125 = !{!2126, !2127, !2128, !2129}
!2126 = !DILocalVariable(name: "status", arg: 1, scope: !2122, file: !586, line: 285, type: !57)
!2127 = !DILocalVariable(name: "errnum", arg: 2, scope: !2122, file: !586, line: 285, type: !57)
!2128 = !DILocalVariable(name: "message", arg: 3, scope: !2122, file: !586, line: 285, type: !101)
!2129 = !DILocalVariable(name: "ap", scope: !2122, file: !586, line: 287, type: !596)
!2130 = distinct !DIAssignID()
!2131 = !DILocation(line: 0, scope: !2122)
!2132 = !DILocation(line: 287, column: 3, scope: !2122)
!2133 = !DILocation(line: 288, column: 3, scope: !2122)
!2134 = !DILocation(line: 289, column: 3, scope: !2122)
!2135 = !DILocation(line: 290, column: 3, scope: !2122)
!2136 = !DILocation(line: 291, column: 1, scope: !2122)
!2137 = !DILocation(line: 0, scope: !593)
!2138 = !DILocation(line: 302, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !593, file: !586, line: 302, column: 7)
!2140 = !DILocation(line: 302, column: 7, scope: !593)
!2141 = !DILocation(line: 307, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !586, line: 307, column: 11)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !586, line: 303, column: 5)
!2144 = !DILocation(line: 307, column: 27, scope: !2142)
!2145 = !DILocation(line: 308, column: 11, scope: !2142)
!2146 = !DILocation(line: 308, column: 28, scope: !2142)
!2147 = !DILocation(line: 308, column: 25, scope: !2142)
!2148 = !DILocation(line: 309, column: 15, scope: !2142)
!2149 = !DILocation(line: 309, column: 33, scope: !2142)
!2150 = !DILocation(line: 310, column: 19, scope: !2142)
!2151 = !DILocation(line: 311, column: 22, scope: !2142)
!2152 = !DILocation(line: 311, column: 56, scope: !2142)
!2153 = !DILocation(line: 307, column: 11, scope: !2143)
!2154 = !DILocation(line: 316, column: 21, scope: !2143)
!2155 = !DILocation(line: 317, column: 23, scope: !2143)
!2156 = !DILocation(line: 318, column: 5, scope: !2143)
!2157 = !DILocation(line: 327, column: 3, scope: !593)
!2158 = !DILocation(line: 331, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !593, file: !586, line: 331, column: 7)
!2160 = !DILocation(line: 331, column: 7, scope: !593)
!2161 = !DILocation(line: 332, column: 5, scope: !2159)
!2162 = !DILocation(line: 338, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !586, line: 334, column: 5)
!2164 = !DILocation(line: 346, column: 3, scope: !593)
!2165 = !DILocation(line: 350, column: 3, scope: !593)
!2166 = !DILocation(line: 356, column: 1, scope: !593)
!2167 = distinct !DISubprogram(name: "error_at_line", scope: !586, file: !586, line: 359, type: !2168, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !57, !57, !101, !69, !101, null}
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2176}
!2171 = !DILocalVariable(name: "status", arg: 1, scope: !2167, file: !586, line: 359, type: !57)
!2172 = !DILocalVariable(name: "errnum", arg: 2, scope: !2167, file: !586, line: 359, type: !57)
!2173 = !DILocalVariable(name: "file_name", arg: 3, scope: !2167, file: !586, line: 359, type: !101)
!2174 = !DILocalVariable(name: "line_number", arg: 4, scope: !2167, file: !586, line: 360, type: !69)
!2175 = !DILocalVariable(name: "message", arg: 5, scope: !2167, file: !586, line: 360, type: !101)
!2176 = !DILocalVariable(name: "ap", scope: !2167, file: !586, line: 362, type: !596)
!2177 = distinct !DIAssignID()
!2178 = !DILocation(line: 0, scope: !2167)
!2179 = !DILocation(line: 362, column: 3, scope: !2167)
!2180 = !DILocation(line: 363, column: 3, scope: !2167)
!2181 = !DILocation(line: 364, column: 3, scope: !2167)
!2182 = !DILocation(line: 366, column: 3, scope: !2167)
!2183 = !DILocation(line: 367, column: 1, scope: !2167)
!2184 = distinct !DISubprogram(name: "fpurge", scope: !934, file: !934, line: 32, type: !2185, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !2221)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!57, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2189, file: !232, line: 51, baseType: !57, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2189, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2189, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2189, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2189, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2189, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2189, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2189, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2189, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2189, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2189, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2189, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2189, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2189, file: !232, line: 70, baseType: !2205, size: 64, offset: 832)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2189, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2189, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2189, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2189, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2189, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2189, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2189, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2189, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2189, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2189, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2189, file: !232, line: 93, baseType: !2205, size: 64, offset: 1344)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2189, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2189, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2189, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2189, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "fp", arg: 1, scope: !2184, file: !934, line: 32, type: !2187)
!2223 = !DILocation(line: 0, scope: !2184)
!2224 = !DILocation(line: 36, column: 3, scope: !2184)
!2225 = !DILocation(line: 38, column: 3, scope: !2184)
!2226 = !DISubprogram(name: "__fpurge", scope: !2227, file: !2227, line: 72, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2227 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !2187}
!2230 = distinct !DISubprogram(name: "rpl_fseeko", scope: !936, file: !936, line: 28, type: !2231, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !2267)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!57, !2233, !1368, !57}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2235)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2235, file: !232, line: 51, baseType: !57, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2235, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2235, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2235, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2235, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2235, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2235, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2235, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2235, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2235, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2235, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2235, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2235, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2235, file: !232, line: 70, baseType: !2251, size: 64, offset: 832)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2235, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2235, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2235, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2235, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2235, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2235, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2235, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2235, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2235, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2235, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2235, file: !232, line: 93, baseType: !2251, size: 64, offset: 1344)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2235, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2235, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2235, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2235, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DILocalVariable(name: "fp", arg: 1, scope: !2230, file: !936, line: 28, type: !2233)
!2269 = !DILocalVariable(name: "offset", arg: 2, scope: !2230, file: !936, line: 28, type: !1368)
!2270 = !DILocalVariable(name: "whence", arg: 3, scope: !2230, file: !936, line: 28, type: !57)
!2271 = !DILocalVariable(name: "pos", scope: !2272, file: !936, line: 123, type: !1368)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !936, line: 119, column: 5)
!2273 = distinct !DILexicalBlock(scope: !2230, file: !936, line: 55, column: 7)
!2274 = !DILocation(line: 0, scope: !2230)
!2275 = !DILocation(line: 55, column: 12, scope: !2273)
!2276 = !{!2101, !1041, i64 16}
!2277 = !DILocation(line: 55, column: 33, scope: !2273)
!2278 = !{!2101, !1041, i64 8}
!2279 = !DILocation(line: 55, column: 25, scope: !2273)
!2280 = !DILocation(line: 56, column: 7, scope: !2273)
!2281 = !DILocation(line: 56, column: 15, scope: !2273)
!2282 = !DILocation(line: 56, column: 37, scope: !2273)
!2283 = !{!2101, !1041, i64 32}
!2284 = !DILocation(line: 56, column: 29, scope: !2273)
!2285 = !DILocation(line: 57, column: 7, scope: !2273)
!2286 = !DILocation(line: 57, column: 15, scope: !2273)
!2287 = !{!2101, !1041, i64 72}
!2288 = !DILocation(line: 57, column: 29, scope: !2273)
!2289 = !DILocation(line: 55, column: 7, scope: !2230)
!2290 = !DILocation(line: 123, column: 26, scope: !2272)
!2291 = !DILocation(line: 123, column: 19, scope: !2272)
!2292 = !DILocation(line: 0, scope: !2272)
!2293 = !DILocation(line: 124, column: 15, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2272, file: !936, line: 124, column: 11)
!2295 = !DILocation(line: 124, column: 11, scope: !2272)
!2296 = !DILocation(line: 135, column: 19, scope: !2272)
!2297 = !{!2101, !1111, i64 0}
!2298 = !DILocation(line: 136, column: 12, scope: !2272)
!2299 = !DILocation(line: 136, column: 20, scope: !2272)
!2300 = !{!2101, !1274, i64 144}
!2301 = !DILocation(line: 167, column: 7, scope: !2272)
!2302 = !DILocation(line: 169, column: 10, scope: !2230)
!2303 = !DILocation(line: 169, column: 3, scope: !2230)
!2304 = !DILocation(line: 170, column: 1, scope: !2230)
!2305 = !DISubprogram(name: "fileno", scope: !597, file: !597, line: 809, type: !2306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!57, !2233}
!2308 = !DISubprogram(name: "fseeko", scope: !597, file: !597, line: 736, type: !2309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!57, !2233, !254, !57}
!2311 = distinct !DISubprogram(name: "full_read", scope: !2312, file: !2312, line: 58, type: !2313, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !937, retainedNodes: !2315)
!2312 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!983, !57, !98, !983}
!2315 = !{!2316, !2317, !2318, !2319, !2320, !2321}
!2316 = !DILocalVariable(name: "fd", arg: 1, scope: !2311, file: !2312, line: 58, type: !57)
!2317 = !DILocalVariable(name: "buf", arg: 2, scope: !2311, file: !2312, line: 58, type: !98)
!2318 = !DILocalVariable(name: "count", arg: 3, scope: !2311, file: !2312, line: 58, type: !983)
!2319 = !DILocalVariable(name: "total", scope: !2311, file: !2312, line: 60, type: !983)
!2320 = !DILocalVariable(name: "ptr", scope: !2311, file: !2312, line: 61, type: !59)
!2321 = !DILocalVariable(name: "n_rw", scope: !2322, file: !2312, line: 65, type: !985)
!2322 = distinct !DILexicalBlock(scope: !2311, file: !2312, line: 64, column: 5)
!2323 = !DILocation(line: 0, scope: !2311)
!2324 = !DILocation(line: 63, column: 16, scope: !2311)
!2325 = !DILocation(line: 63, column: 3, scope: !2311)
!2326 = !DILocation(line: 66, column: 11, scope: !2322)
!2327 = !DILocation(line: 65, column: 24, scope: !2322)
!2328 = !DILocation(line: 0, scope: !2322)
!2329 = !DILocation(line: 66, column: 16, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2322, file: !2312, line: 66, column: 11)
!2331 = !DILocation(line: 68, column: 16, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2322, file: !2312, line: 68, column: 11)
!2333 = !DILocation(line: 68, column: 11, scope: !2322)
!2334 = !DILocation(line: 70, column: 11, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !2312, line: 69, column: 9)
!2336 = !DILocation(line: 70, column: 17, scope: !2335)
!2337 = !DILocation(line: 71, column: 11, scope: !2335)
!2338 = !DILocation(line: 73, column: 13, scope: !2322)
!2339 = !DILocation(line: 74, column: 11, scope: !2322)
!2340 = !DILocation(line: 75, column: 13, scope: !2322)
!2341 = !DILocation(line: 78, column: 3, scope: !2311)
!2342 = distinct !DISubprogram(name: "getprogname", scope: !941, file: !941, line: 54, type: !2343, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!101}
!2345 = !DILocation(line: 58, column: 10, scope: !2342)
!2346 = !DILocation(line: 58, column: 3, scope: !2342)
!2347 = distinct !DISubprogram(name: "set_program_name", scope: !642, file: !642, line: 37, type: !1061, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2348)
!2348 = !{!2349, !2350, !2351}
!2349 = !DILocalVariable(name: "argv0", arg: 1, scope: !2347, file: !642, line: 37, type: !101)
!2350 = !DILocalVariable(name: "slash", scope: !2347, file: !642, line: 44, type: !101)
!2351 = !DILocalVariable(name: "base", scope: !2347, file: !642, line: 45, type: !101)
!2352 = !DILocation(line: 0, scope: !2347)
!2353 = !DILocation(line: 44, column: 23, scope: !2347)
!2354 = !DILocation(line: 45, column: 22, scope: !2347)
!2355 = !DILocation(line: 46, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !642, line: 46, column: 7)
!2357 = !DILocation(line: 46, column: 9, scope: !2356)
!2358 = !DILocation(line: 46, column: 25, scope: !2356)
!2359 = !DILocation(line: 46, column: 40, scope: !2356)
!2360 = !DILocalVariable(name: "__s1", arg: 1, scope: !2361, file: !1123, line: 974, type: !1255)
!2361 = distinct !DISubprogram(name: "memeq", scope: !1123, file: !1123, line: 974, type: !2362, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !641, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!215, !1255, !1255, !104}
!2364 = !{!2360, !2365, !2366}
!2365 = !DILocalVariable(name: "__s2", arg: 2, scope: !2361, file: !1123, line: 974, type: !1255)
!2366 = !DILocalVariable(name: "__n", arg: 3, scope: !2361, file: !1123, line: 974, type: !104)
!2367 = !DILocation(line: 0, scope: !2361, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 46, column: 28, scope: !2356)
!2369 = !DILocation(line: 976, column: 11, scope: !2361, inlinedAt: !2368)
!2370 = !DILocation(line: 976, column: 10, scope: !2361, inlinedAt: !2368)
!2371 = !DILocation(line: 46, column: 7, scope: !2347)
!2372 = !DILocation(line: 49, column: 11, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !642, line: 49, column: 11)
!2374 = distinct !DILexicalBlock(scope: !2356, file: !642, line: 47, column: 5)
!2375 = !DILocation(line: 49, column: 36, scope: !2373)
!2376 = !DILocation(line: 49, column: 11, scope: !2374)
!2377 = !DILocation(line: 65, column: 16, scope: !2347)
!2378 = !DILocation(line: 71, column: 27, scope: !2347)
!2379 = !DILocation(line: 74, column: 33, scope: !2347)
!2380 = !DILocation(line: 76, column: 1, scope: !2347)
!2381 = !DISubprogram(name: "strrchr", scope: !1227, file: !1227, line: 273, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2382 = distinct !DIAssignID()
!2383 = !DILocation(line: 0, scope: !651)
!2384 = distinct !DIAssignID()
!2385 = !DILocation(line: 40, column: 29, scope: !651)
!2386 = !DILocation(line: 41, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !651, file: !652, line: 41, column: 7)
!2388 = !DILocation(line: 41, column: 7, scope: !651)
!2389 = !DILocation(line: 47, column: 3, scope: !651)
!2390 = !DILocation(line: 48, column: 3, scope: !651)
!2391 = !DILocalVariable(name: "ps", arg: 1, scope: !2392, file: !1916, line: 1135, type: !2395)
!2392 = distinct !DISubprogram(name: "mbszero", scope: !1916, file: !1916, line: 1135, type: !2393, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2396)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!2396 = !{!2391}
!2397 = !DILocation(line: 0, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 48, column: 18, scope: !651)
!2399 = !DILocalVariable(name: "__dest", arg: 1, scope: !2400, file: !1338, line: 57, type: !98)
!2400 = distinct !DISubprogram(name: "memset", scope: !1338, file: !1338, line: 57, type: !2401, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!98, !98, !57, !104}
!2403 = !{!2399, !2404, !2405}
!2404 = !DILocalVariable(name: "__ch", arg: 2, scope: !2400, file: !1338, line: 57, type: !57)
!2405 = !DILocalVariable(name: "__len", arg: 3, scope: !2400, file: !1338, line: 57, type: !104)
!2406 = !DILocation(line: 0, scope: !2400, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1137, column: 3, scope: !2392, inlinedAt: !2398)
!2408 = !DILocation(line: 59, column: 10, scope: !2400, inlinedAt: !2407)
!2409 = !DILocation(line: 49, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !651, file: !652, line: 49, column: 7)
!2411 = !DILocation(line: 49, column: 39, scope: !2410)
!2412 = !DILocation(line: 49, column: 44, scope: !2410)
!2413 = !DILocation(line: 54, column: 1, scope: !651)
!2414 = !DISubprogram(name: "mbrtoc32", scope: !663, file: !663, line: 57, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!104, !2417, !1101, !104, !2419}
!2417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2395)
!2420 = distinct !DISubprogram(name: "clone_quoting_options", scope: !682, file: !682, line: 113, type: !2421, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2424)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!2423, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!2424 = !{!2425, !2426, !2427}
!2425 = !DILocalVariable(name: "o", arg: 1, scope: !2420, file: !682, line: 113, type: !2423)
!2426 = !DILocalVariable(name: "saved_errno", scope: !2420, file: !682, line: 115, type: !57)
!2427 = !DILocalVariable(name: "p", scope: !2420, file: !682, line: 116, type: !2423)
!2428 = !DILocation(line: 0, scope: !2420)
!2429 = !DILocation(line: 115, column: 21, scope: !2420)
!2430 = !DILocation(line: 116, column: 40, scope: !2420)
!2431 = !DILocation(line: 116, column: 31, scope: !2420)
!2432 = !DILocation(line: 118, column: 9, scope: !2420)
!2433 = !DILocation(line: 119, column: 3, scope: !2420)
!2434 = distinct !DISubprogram(name: "get_quoting_style", scope: !682, file: !682, line: 124, type: !2435, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2439)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!708, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!2439 = !{!2440}
!2440 = !DILocalVariable(name: "o", arg: 1, scope: !2434, file: !682, line: 124, type: !2437)
!2441 = !DILocation(line: 0, scope: !2434)
!2442 = !DILocation(line: 126, column: 11, scope: !2434)
!2443 = !DILocation(line: 126, column: 46, scope: !2434)
!2444 = !{!2445, !1111, i64 0}
!2445 = !{!"quoting_options", !1111, i64 0, !1111, i64 4, !1042, i64 8, !1041, i64 40, !1041, i64 48}
!2446 = !DILocation(line: 126, column: 3, scope: !2434)
!2447 = distinct !DISubprogram(name: "set_quoting_style", scope: !682, file: !682, line: 132, type: !2448, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !2423, !708}
!2450 = !{!2451, !2452}
!2451 = !DILocalVariable(name: "o", arg: 1, scope: !2447, file: !682, line: 132, type: !2423)
!2452 = !DILocalVariable(name: "s", arg: 2, scope: !2447, file: !682, line: 132, type: !708)
!2453 = !DILocation(line: 0, scope: !2447)
!2454 = !DILocation(line: 134, column: 4, scope: !2447)
!2455 = !DILocation(line: 134, column: 45, scope: !2447)
!2456 = !DILocation(line: 135, column: 1, scope: !2447)
!2457 = distinct !DISubprogram(name: "set_char_quoting", scope: !682, file: !682, line: 143, type: !2458, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!57, !2423, !4, !57}
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2467, !2468}
!2461 = !DILocalVariable(name: "o", arg: 1, scope: !2457, file: !682, line: 143, type: !2423)
!2462 = !DILocalVariable(name: "c", arg: 2, scope: !2457, file: !682, line: 143, type: !4)
!2463 = !DILocalVariable(name: "i", arg: 3, scope: !2457, file: !682, line: 143, type: !57)
!2464 = !DILocalVariable(name: "uc", scope: !2457, file: !682, line: 145, type: !107)
!2465 = !DILocalVariable(name: "p", scope: !2457, file: !682, line: 146, type: !2466)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2467 = !DILocalVariable(name: "shift", scope: !2457, file: !682, line: 148, type: !57)
!2468 = !DILocalVariable(name: "r", scope: !2457, file: !682, line: 149, type: !69)
!2469 = !DILocation(line: 0, scope: !2457)
!2470 = !DILocation(line: 147, column: 6, scope: !2457)
!2471 = !DILocation(line: 147, column: 41, scope: !2457)
!2472 = !DILocation(line: 147, column: 62, scope: !2457)
!2473 = !DILocation(line: 147, column: 57, scope: !2457)
!2474 = !DILocation(line: 148, column: 15, scope: !2457)
!2475 = !DILocation(line: 149, column: 21, scope: !2457)
!2476 = !DILocation(line: 149, column: 24, scope: !2457)
!2477 = !DILocation(line: 149, column: 34, scope: !2457)
!2478 = !DILocation(line: 150, column: 19, scope: !2457)
!2479 = !DILocation(line: 150, column: 24, scope: !2457)
!2480 = !DILocation(line: 150, column: 6, scope: !2457)
!2481 = !DILocation(line: 151, column: 3, scope: !2457)
!2482 = distinct !DISubprogram(name: "set_quoting_flags", scope: !682, file: !682, line: 159, type: !2483, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!57, !2423, !57}
!2485 = !{!2486, !2487, !2488}
!2486 = !DILocalVariable(name: "o", arg: 1, scope: !2482, file: !682, line: 159, type: !2423)
!2487 = !DILocalVariable(name: "i", arg: 2, scope: !2482, file: !682, line: 159, type: !57)
!2488 = !DILocalVariable(name: "r", scope: !2482, file: !682, line: 163, type: !57)
!2489 = !DILocation(line: 0, scope: !2482)
!2490 = !DILocation(line: 161, column: 8, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2482, file: !682, line: 161, column: 7)
!2492 = !DILocation(line: 161, column: 7, scope: !2482)
!2493 = !DILocation(line: 163, column: 14, scope: !2482)
!2494 = !{!2445, !1111, i64 4}
!2495 = !DILocation(line: 164, column: 12, scope: !2482)
!2496 = !DILocation(line: 165, column: 3, scope: !2482)
!2497 = distinct !DISubprogram(name: "set_custom_quoting", scope: !682, file: !682, line: 169, type: !2498, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !2423, !101, !101}
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "o", arg: 1, scope: !2497, file: !682, line: 169, type: !2423)
!2502 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2497, file: !682, line: 170, type: !101)
!2503 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2497, file: !682, line: 170, type: !101)
!2504 = !DILocation(line: 0, scope: !2497)
!2505 = !DILocation(line: 172, column: 8, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2497, file: !682, line: 172, column: 7)
!2507 = !DILocation(line: 172, column: 7, scope: !2497)
!2508 = !DILocation(line: 174, column: 12, scope: !2497)
!2509 = !DILocation(line: 175, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2497, file: !682, line: 175, column: 7)
!2511 = !DILocation(line: 175, column: 19, scope: !2510)
!2512 = !DILocation(line: 176, column: 5, scope: !2510)
!2513 = !DILocation(line: 177, column: 6, scope: !2497)
!2514 = !DILocation(line: 177, column: 17, scope: !2497)
!2515 = !{!2445, !1041, i64 40}
!2516 = !DILocation(line: 178, column: 6, scope: !2497)
!2517 = !DILocation(line: 178, column: 18, scope: !2497)
!2518 = !{!2445, !1041, i64 48}
!2519 = !DILocation(line: 179, column: 1, scope: !2497)
!2520 = !DISubprogram(name: "abort", scope: !1231, file: !1231, line: 598, type: !637, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2521 = distinct !DISubprogram(name: "quotearg_buffer", scope: !682, file: !682, line: 774, type: !2522, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!104, !59, !104, !101, !104, !2437}
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2525 = !DILocalVariable(name: "buffer", arg: 1, scope: !2521, file: !682, line: 774, type: !59)
!2526 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2521, file: !682, line: 774, type: !104)
!2527 = !DILocalVariable(name: "arg", arg: 3, scope: !2521, file: !682, line: 775, type: !101)
!2528 = !DILocalVariable(name: "argsize", arg: 4, scope: !2521, file: !682, line: 775, type: !104)
!2529 = !DILocalVariable(name: "o", arg: 5, scope: !2521, file: !682, line: 776, type: !2437)
!2530 = !DILocalVariable(name: "p", scope: !2521, file: !682, line: 778, type: !2437)
!2531 = !DILocalVariable(name: "saved_errno", scope: !2521, file: !682, line: 779, type: !57)
!2532 = !DILocalVariable(name: "r", scope: !2521, file: !682, line: 780, type: !104)
!2533 = !DILocation(line: 0, scope: !2521)
!2534 = !DILocation(line: 778, column: 37, scope: !2521)
!2535 = !DILocation(line: 779, column: 21, scope: !2521)
!2536 = !DILocation(line: 781, column: 43, scope: !2521)
!2537 = !DILocation(line: 781, column: 53, scope: !2521)
!2538 = !DILocation(line: 781, column: 63, scope: !2521)
!2539 = !DILocation(line: 782, column: 43, scope: !2521)
!2540 = !DILocation(line: 782, column: 58, scope: !2521)
!2541 = !DILocation(line: 780, column: 14, scope: !2521)
!2542 = !DILocation(line: 783, column: 9, scope: !2521)
!2543 = !DILocation(line: 784, column: 3, scope: !2521)
!2544 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !682, file: !682, line: 251, type: !2545, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2549)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!104, !59, !104, !101, !104, !708, !57, !2547, !101, !101}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2575, !2577, !2580, !2581, !2582, !2583, !2586, !2587, !2589, !2590, !2593, !2597, !2598, !2606, !2609, !2610, !2611}
!2550 = !DILocalVariable(name: "buffer", arg: 1, scope: !2544, file: !682, line: 251, type: !59)
!2551 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2544, file: !682, line: 251, type: !104)
!2552 = !DILocalVariable(name: "arg", arg: 3, scope: !2544, file: !682, line: 252, type: !101)
!2553 = !DILocalVariable(name: "argsize", arg: 4, scope: !2544, file: !682, line: 252, type: !104)
!2554 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2544, file: !682, line: 253, type: !708)
!2555 = !DILocalVariable(name: "flags", arg: 6, scope: !2544, file: !682, line: 253, type: !57)
!2556 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2544, file: !682, line: 254, type: !2547)
!2557 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2544, file: !682, line: 255, type: !101)
!2558 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2544, file: !682, line: 256, type: !101)
!2559 = !DILocalVariable(name: "unibyte_locale", scope: !2544, file: !682, line: 258, type: !215)
!2560 = !DILocalVariable(name: "len", scope: !2544, file: !682, line: 260, type: !104)
!2561 = !DILocalVariable(name: "orig_buffersize", scope: !2544, file: !682, line: 261, type: !104)
!2562 = !DILocalVariable(name: "quote_string", scope: !2544, file: !682, line: 262, type: !101)
!2563 = !DILocalVariable(name: "quote_string_len", scope: !2544, file: !682, line: 263, type: !104)
!2564 = !DILocalVariable(name: "backslash_escapes", scope: !2544, file: !682, line: 264, type: !215)
!2565 = !DILocalVariable(name: "elide_outer_quotes", scope: !2544, file: !682, line: 265, type: !215)
!2566 = !DILocalVariable(name: "encountered_single_quote", scope: !2544, file: !682, line: 266, type: !215)
!2567 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2544, file: !682, line: 267, type: !215)
!2568 = !DILabel(scope: !2544, name: "process_input", file: !682, line: 308)
!2569 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2544, file: !682, line: 309, type: !215)
!2570 = !DILocalVariable(name: "lq", scope: !2571, file: !682, line: 361, type: !101)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !682, line: 361, column: 11)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !682, line: 360, column: 13)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !682, line: 333, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 312, column: 5)
!2575 = !DILocalVariable(name: "i", scope: !2576, file: !682, line: 395, type: !104)
!2576 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 395, column: 3)
!2577 = !DILocalVariable(name: "is_right_quote", scope: !2578, file: !682, line: 397, type: !215)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !682, line: 396, column: 5)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !682, line: 395, column: 3)
!2580 = !DILocalVariable(name: "escaping", scope: !2578, file: !682, line: 398, type: !215)
!2581 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2578, file: !682, line: 399, type: !215)
!2582 = !DILocalVariable(name: "c", scope: !2578, file: !682, line: 417, type: !107)
!2583 = !DILabel(scope: !2584, name: "c_and_shell_escape", file: !682, line: 502)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 478, column: 9)
!2585 = distinct !DILexicalBlock(scope: !2578, file: !682, line: 419, column: 9)
!2586 = !DILabel(scope: !2584, name: "c_escape", file: !682, line: 507)
!2587 = !DILocalVariable(name: "m", scope: !2588, file: !682, line: 598, type: !104)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 596, column: 11)
!2589 = !DILocalVariable(name: "printable", scope: !2588, file: !682, line: 600, type: !215)
!2590 = !DILocalVariable(name: "mbs", scope: !2591, file: !682, line: 609, type: !754)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !682, line: 608, column: 15)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !682, line: 602, column: 17)
!2593 = !DILocalVariable(name: "w", scope: !2594, file: !682, line: 618, type: !662)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !682, line: 617, column: 19)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !682, line: 616, column: 17)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !682, line: 616, column: 17)
!2597 = !DILocalVariable(name: "bytes", scope: !2594, file: !682, line: 619, type: !104)
!2598 = !DILocalVariable(name: "j", scope: !2599, file: !682, line: 648, type: !104)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !682, line: 648, column: 29)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !682, line: 647, column: 27)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !682, line: 645, column: 29)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !682, line: 636, column: 23)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !682, line: 628, column: 30)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !682, line: 623, column: 30)
!2605 = distinct !DILexicalBlock(scope: !2594, file: !682, line: 621, column: 25)
!2606 = !DILocalVariable(name: "ilim", scope: !2607, file: !682, line: 674, type: !104)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !682, line: 671, column: 15)
!2608 = distinct !DILexicalBlock(scope: !2588, file: !682, line: 670, column: 17)
!2609 = !DILabel(scope: !2578, name: "store_escape", file: !682, line: 709)
!2610 = !DILabel(scope: !2578, name: "store_c", file: !682, line: 712)
!2611 = !DILabel(scope: !2544, name: "force_outer_quoting_style", file: !682, line: 753)
!2612 = distinct !DIAssignID()
!2613 = distinct !DIAssignID()
!2614 = distinct !DIAssignID()
!2615 = distinct !DIAssignID()
!2616 = distinct !DIAssignID()
!2617 = !DILocation(line: 0, scope: !2591)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 0, scope: !2594)
!2620 = !DILocation(line: 0, scope: !2544)
!2621 = !DILocation(line: 258, column: 25, scope: !2544)
!2622 = !DILocation(line: 258, column: 36, scope: !2544)
!2623 = !DILocation(line: 267, column: 3, scope: !2544)
!2624 = !DILocation(line: 261, column: 10, scope: !2544)
!2625 = !DILocation(line: 262, column: 15, scope: !2544)
!2626 = !DILocation(line: 263, column: 10, scope: !2544)
!2627 = !DILocation(line: 308, column: 2, scope: !2544)
!2628 = !DILocation(line: 311, column: 3, scope: !2544)
!2629 = !DILocation(line: 318, column: 11, scope: !2574)
!2630 = !DILocation(line: 319, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !682, line: 319, column: 9)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !682, line: 319, column: 9)
!2633 = distinct !DILexicalBlock(scope: !2574, file: !682, line: 318, column: 11)
!2634 = !DILocation(line: 319, column: 9, scope: !2632)
!2635 = !DILocation(line: 0, scope: !745, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 357, column: 26, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !682, line: 335, column: 11)
!2638 = distinct !DILexicalBlock(scope: !2573, file: !682, line: 334, column: 13)
!2639 = !DILocation(line: 199, column: 29, scope: !745, inlinedAt: !2636)
!2640 = !DILocation(line: 201, column: 19, scope: !2641, inlinedAt: !2636)
!2641 = distinct !DILexicalBlock(scope: !745, file: !682, line: 201, column: 7)
!2642 = !DILocation(line: 201, column: 7, scope: !745, inlinedAt: !2636)
!2643 = !DILocation(line: 229, column: 3, scope: !745, inlinedAt: !2636)
!2644 = !DILocation(line: 230, column: 3, scope: !745, inlinedAt: !2636)
!2645 = !DILocalVariable(name: "ps", arg: 1, scope: !2646, file: !1916, line: 1135, type: !2649)
!2646 = distinct !DISubprogram(name: "mbszero", scope: !1916, file: !1916, line: 1135, type: !2647, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2650)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!2650 = !{!2645}
!2651 = !DILocation(line: 0, scope: !2646, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 230, column: 18, scope: !745, inlinedAt: !2636)
!2653 = !DILocalVariable(name: "__dest", arg: 1, scope: !2654, file: !1338, line: 57, type: !98)
!2654 = distinct !DISubprogram(name: "memset", scope: !1338, file: !1338, line: 57, type: !2401, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2655)
!2655 = !{!2653, !2656, !2657}
!2656 = !DILocalVariable(name: "__ch", arg: 2, scope: !2654, file: !1338, line: 57, type: !57)
!2657 = !DILocalVariable(name: "__len", arg: 3, scope: !2654, file: !1338, line: 57, type: !104)
!2658 = !DILocation(line: 0, scope: !2654, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1137, column: 3, scope: !2646, inlinedAt: !2652)
!2660 = !DILocation(line: 59, column: 10, scope: !2654, inlinedAt: !2659)
!2661 = !DILocation(line: 231, column: 7, scope: !2662, inlinedAt: !2636)
!2662 = distinct !DILexicalBlock(scope: !745, file: !682, line: 231, column: 7)
!2663 = !DILocation(line: 231, column: 40, scope: !2662, inlinedAt: !2636)
!2664 = !DILocation(line: 231, column: 45, scope: !2662, inlinedAt: !2636)
!2665 = !DILocation(line: 235, column: 1, scope: !745, inlinedAt: !2636)
!2666 = !DILocation(line: 0, scope: !745, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 358, column: 27, scope: !2637)
!2668 = !DILocation(line: 199, column: 29, scope: !745, inlinedAt: !2667)
!2669 = !DILocation(line: 201, column: 19, scope: !2641, inlinedAt: !2667)
!2670 = !DILocation(line: 201, column: 7, scope: !745, inlinedAt: !2667)
!2671 = !DILocation(line: 229, column: 3, scope: !745, inlinedAt: !2667)
!2672 = !DILocation(line: 230, column: 3, scope: !745, inlinedAt: !2667)
!2673 = !DILocation(line: 0, scope: !2646, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 230, column: 18, scope: !745, inlinedAt: !2667)
!2675 = !DILocation(line: 0, scope: !2654, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1137, column: 3, scope: !2646, inlinedAt: !2674)
!2677 = !DILocation(line: 59, column: 10, scope: !2654, inlinedAt: !2676)
!2678 = !DILocation(line: 231, column: 7, scope: !2662, inlinedAt: !2667)
!2679 = !DILocation(line: 231, column: 40, scope: !2662, inlinedAt: !2667)
!2680 = !DILocation(line: 231, column: 45, scope: !2662, inlinedAt: !2667)
!2681 = !DILocation(line: 235, column: 1, scope: !745, inlinedAt: !2667)
!2682 = !DILocation(line: 360, column: 13, scope: !2573)
!2683 = !DILocation(line: 0, scope: !2571)
!2684 = !DILocation(line: 361, column: 45, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2571, file: !682, line: 361, column: 11)
!2686 = !DILocation(line: 361, column: 11, scope: !2571)
!2687 = !DILocation(line: 362, column: 13, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !682, line: 362, column: 13)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !682, line: 362, column: 13)
!2690 = !DILocation(line: 362, column: 13, scope: !2689)
!2691 = !DILocation(line: 361, column: 52, scope: !2685)
!2692 = distinct !{!2692, !2686, !2693, !1157}
!2693 = !DILocation(line: 362, column: 13, scope: !2571)
!2694 = !DILocation(line: 365, column: 28, scope: !2573)
!2695 = !DILocation(line: 260, column: 10, scope: !2544)
!2696 = !DILocation(line: 367, column: 7, scope: !2574)
!2697 = !DILocation(line: 373, column: 7, scope: !2574)
!2698 = !DILocation(line: 381, column: 11, scope: !2574)
!2699 = !DILocation(line: 376, column: 11, scope: !2574)
!2700 = !DILocation(line: 382, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !682, line: 382, column: 9)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !682, line: 382, column: 9)
!2703 = distinct !DILexicalBlock(scope: !2574, file: !682, line: 381, column: 11)
!2704 = !DILocation(line: 382, column: 9, scope: !2702)
!2705 = !DILocation(line: 389, column: 7, scope: !2574)
!2706 = !DILocation(line: 392, column: 7, scope: !2574)
!2707 = !DILocation(line: 0, scope: !2576)
!2708 = !DILocation(line: 395, column: 8, scope: !2576)
!2709 = !DILocation(line: 395, scope: !2576)
!2710 = !DILocation(line: 395, column: 34, scope: !2579)
!2711 = !DILocation(line: 395, column: 26, scope: !2579)
!2712 = !DILocation(line: 395, column: 48, scope: !2579)
!2713 = !DILocation(line: 395, column: 55, scope: !2579)
!2714 = !DILocation(line: 395, column: 3, scope: !2576)
!2715 = !DILocation(line: 395, column: 67, scope: !2579)
!2716 = !DILocation(line: 0, scope: !2578)
!2717 = !DILocation(line: 402, column: 11, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2578, file: !682, line: 401, column: 11)
!2719 = !DILocation(line: 404, column: 17, scope: !2718)
!2720 = !DILocation(line: 405, column: 39, scope: !2718)
!2721 = !DILocation(line: 409, column: 32, scope: !2718)
!2722 = !DILocation(line: 405, column: 19, scope: !2718)
!2723 = !DILocation(line: 405, column: 15, scope: !2718)
!2724 = !DILocation(line: 410, column: 11, scope: !2718)
!2725 = !DILocation(line: 410, column: 25, scope: !2718)
!2726 = !DILocalVariable(name: "__s1", arg: 1, scope: !2727, file: !1123, line: 974, type: !1255)
!2727 = distinct !DISubprogram(name: "memeq", scope: !1123, file: !1123, line: 974, type: !2362, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2728)
!2728 = !{!2726, !2729, !2730}
!2729 = !DILocalVariable(name: "__s2", arg: 2, scope: !2727, file: !1123, line: 974, type: !1255)
!2730 = !DILocalVariable(name: "__n", arg: 3, scope: !2727, file: !1123, line: 974, type: !104)
!2731 = !DILocation(line: 0, scope: !2727, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 410, column: 14, scope: !2718)
!2733 = !DILocation(line: 976, column: 11, scope: !2727, inlinedAt: !2732)
!2734 = !DILocation(line: 976, column: 10, scope: !2727, inlinedAt: !2732)
!2735 = !DILocation(line: 401, column: 11, scope: !2578)
!2736 = !DILocation(line: 417, column: 25, scope: !2578)
!2737 = !DILocation(line: 418, column: 7, scope: !2578)
!2738 = !DILocation(line: 421, column: 15, scope: !2585)
!2739 = !DILocation(line: 423, column: 15, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !682, line: 423, column: 15)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !682, line: 422, column: 13)
!2742 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 421, column: 15)
!2743 = !DILocation(line: 423, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !682, line: 423, column: 15)
!2745 = !DILocation(line: 423, column: 15, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !682, line: 423, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !682, line: 423, column: 15)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !682, line: 423, column: 15)
!2749 = !DILocation(line: 423, column: 15, scope: !2747)
!2750 = !DILocation(line: 423, column: 15, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !682, line: 423, column: 15)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !682, line: 423, column: 15)
!2753 = !DILocation(line: 423, column: 15, scope: !2752)
!2754 = !DILocation(line: 423, column: 15, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !682, line: 423, column: 15)
!2756 = distinct !DILexicalBlock(scope: !2748, file: !682, line: 423, column: 15)
!2757 = !DILocation(line: 423, column: 15, scope: !2756)
!2758 = !DILocation(line: 423, column: 15, scope: !2748)
!2759 = !DILocation(line: 423, column: 15, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !682, line: 423, column: 15)
!2761 = distinct !DILexicalBlock(scope: !2740, file: !682, line: 423, column: 15)
!2762 = !DILocation(line: 423, column: 15, scope: !2761)
!2763 = !DILocation(line: 431, column: 19, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2741, file: !682, line: 430, column: 19)
!2765 = !DILocation(line: 431, column: 24, scope: !2764)
!2766 = !DILocation(line: 431, column: 28, scope: !2764)
!2767 = !DILocation(line: 431, column: 38, scope: !2764)
!2768 = !DILocation(line: 431, column: 48, scope: !2764)
!2769 = !DILocation(line: 431, column: 59, scope: !2764)
!2770 = !DILocation(line: 433, column: 19, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !682, line: 433, column: 19)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !682, line: 433, column: 19)
!2773 = distinct !DILexicalBlock(scope: !2764, file: !682, line: 432, column: 17)
!2774 = !DILocation(line: 433, column: 19, scope: !2772)
!2775 = !DILocation(line: 434, column: 19, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !682, line: 434, column: 19)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !682, line: 434, column: 19)
!2778 = !DILocation(line: 434, column: 19, scope: !2777)
!2779 = !DILocation(line: 435, column: 17, scope: !2773)
!2780 = !DILocation(line: 442, column: 20, scope: !2742)
!2781 = !DILocation(line: 447, column: 11, scope: !2585)
!2782 = !DILocation(line: 450, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 448, column: 13)
!2784 = !DILocation(line: 456, column: 19, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !682, line: 455, column: 19)
!2786 = !DILocation(line: 456, column: 24, scope: !2785)
!2787 = !DILocation(line: 456, column: 28, scope: !2785)
!2788 = !DILocation(line: 456, column: 38, scope: !2785)
!2789 = !DILocation(line: 456, column: 41, scope: !2785)
!2790 = !DILocation(line: 456, column: 52, scope: !2785)
!2791 = !DILocation(line: 455, column: 19, scope: !2783)
!2792 = !DILocation(line: 457, column: 25, scope: !2785)
!2793 = !DILocation(line: 457, column: 17, scope: !2785)
!2794 = !DILocation(line: 464, column: 25, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2785, file: !682, line: 458, column: 19)
!2796 = !DILocation(line: 468, column: 21, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !682, line: 468, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !682, line: 468, column: 21)
!2799 = !DILocation(line: 468, column: 21, scope: !2798)
!2800 = !DILocation(line: 469, column: 21, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !682, line: 469, column: 21)
!2802 = distinct !DILexicalBlock(scope: !2795, file: !682, line: 469, column: 21)
!2803 = !DILocation(line: 469, column: 21, scope: !2802)
!2804 = !DILocation(line: 470, column: 21, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !682, line: 470, column: 21)
!2806 = distinct !DILexicalBlock(scope: !2795, file: !682, line: 470, column: 21)
!2807 = !DILocation(line: 470, column: 21, scope: !2806)
!2808 = !DILocation(line: 471, column: 21, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !682, line: 471, column: 21)
!2810 = distinct !DILexicalBlock(scope: !2795, file: !682, line: 471, column: 21)
!2811 = !DILocation(line: 471, column: 21, scope: !2810)
!2812 = !DILocation(line: 472, column: 21, scope: !2795)
!2813 = !DILocation(line: 482, column: 33, scope: !2584)
!2814 = !DILocation(line: 483, column: 33, scope: !2584)
!2815 = !DILocation(line: 485, column: 33, scope: !2584)
!2816 = !DILocation(line: 486, column: 33, scope: !2584)
!2817 = !DILocation(line: 487, column: 33, scope: !2584)
!2818 = !DILocation(line: 490, column: 17, scope: !2584)
!2819 = !DILocation(line: 492, column: 21, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !682, line: 491, column: 15)
!2821 = distinct !DILexicalBlock(scope: !2584, file: !682, line: 490, column: 17)
!2822 = !DILocation(line: 499, column: 35, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2584, file: !682, line: 499, column: 17)
!2824 = !DILocation(line: 0, scope: !2584)
!2825 = !DILocation(line: 502, column: 11, scope: !2584)
!2826 = !DILocation(line: 504, column: 17, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2584, file: !682, line: 503, column: 17)
!2828 = !DILocation(line: 507, column: 11, scope: !2584)
!2829 = !DILocation(line: 508, column: 17, scope: !2584)
!2830 = !DILocation(line: 517, column: 15, scope: !2585)
!2831 = !DILocation(line: 517, column: 40, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 517, column: 15)
!2833 = !DILocation(line: 517, column: 47, scope: !2832)
!2834 = !DILocation(line: 517, column: 18, scope: !2832)
!2835 = !DILocation(line: 521, column: 17, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 521, column: 15)
!2837 = !DILocation(line: 521, column: 15, scope: !2585)
!2838 = !DILocation(line: 525, column: 11, scope: !2585)
!2839 = !DILocation(line: 537, column: 15, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 536, column: 15)
!2841 = !DILocation(line: 536, column: 15, scope: !2585)
!2842 = !DILocation(line: 544, column: 15, scope: !2585)
!2843 = !DILocation(line: 546, column: 19, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !682, line: 545, column: 13)
!2845 = distinct !DILexicalBlock(scope: !2585, file: !682, line: 544, column: 15)
!2846 = !DILocation(line: 549, column: 19, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !682, line: 549, column: 19)
!2848 = !DILocation(line: 549, column: 30, scope: !2847)
!2849 = !DILocation(line: 558, column: 15, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !682, line: 558, column: 15)
!2851 = distinct !DILexicalBlock(scope: !2844, file: !682, line: 558, column: 15)
!2852 = !DILocation(line: 558, column: 15, scope: !2851)
!2853 = !DILocation(line: 559, column: 15, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !682, line: 559, column: 15)
!2855 = distinct !DILexicalBlock(scope: !2844, file: !682, line: 559, column: 15)
!2856 = !DILocation(line: 559, column: 15, scope: !2855)
!2857 = !DILocation(line: 560, column: 15, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !682, line: 560, column: 15)
!2859 = distinct !DILexicalBlock(scope: !2844, file: !682, line: 560, column: 15)
!2860 = !DILocation(line: 560, column: 15, scope: !2859)
!2861 = !DILocation(line: 562, column: 13, scope: !2844)
!2862 = !DILocation(line: 602, column: 17, scope: !2588)
!2863 = !DILocation(line: 0, scope: !2588)
!2864 = !DILocation(line: 605, column: 29, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2592, file: !682, line: 603, column: 15)
!2866 = !DILocation(line: 605, column: 41, scope: !2865)
!2867 = !DILocation(line: 606, column: 15, scope: !2865)
!2868 = !DILocation(line: 609, column: 17, scope: !2591)
!2869 = !DILocation(line: 0, scope: !2646, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 609, column: 32, scope: !2591)
!2871 = !DILocation(line: 0, scope: !2654, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1137, column: 3, scope: !2646, inlinedAt: !2870)
!2873 = !DILocation(line: 59, column: 10, scope: !2654, inlinedAt: !2872)
!2874 = !DILocation(line: 613, column: 29, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2591, file: !682, line: 613, column: 21)
!2876 = !DILocation(line: 613, column: 21, scope: !2591)
!2877 = !DILocation(line: 614, column: 29, scope: !2875)
!2878 = !DILocation(line: 614, column: 19, scope: !2875)
!2879 = !DILocation(line: 618, column: 21, scope: !2594)
!2880 = !DILocation(line: 620, column: 54, scope: !2594)
!2881 = !DILocation(line: 619, column: 36, scope: !2594)
!2882 = !DILocation(line: 621, column: 25, scope: !2594)
!2883 = !DILocation(line: 631, column: 38, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2603, file: !682, line: 629, column: 23)
!2885 = !DILocation(line: 631, column: 48, scope: !2884)
!2886 = !DILocation(line: 631, column: 25, scope: !2884)
!2887 = !DILocation(line: 626, column: 25, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2604, file: !682, line: 624, column: 23)
!2889 = !DILocation(line: 631, column: 51, scope: !2884)
!2890 = !DILocation(line: 632, column: 28, scope: !2884)
!2891 = !DILocation(line: 631, column: 34, scope: !2884)
!2892 = distinct !{!2892, !2886, !2890, !1157}
!2893 = !DILocation(line: 0, scope: !2599)
!2894 = !DILocation(line: 646, column: 29, scope: !2601)
!2895 = !DILocation(line: 648, column: 29, scope: !2599)
!2896 = !DILocation(line: 649, column: 39, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2599, file: !682, line: 648, column: 29)
!2898 = !DILocation(line: 649, column: 31, scope: !2897)
!2899 = !DILocation(line: 648, column: 60, scope: !2897)
!2900 = !DILocation(line: 648, column: 50, scope: !2897)
!2901 = distinct !{!2901, !2895, !2902, !1157}
!2902 = !DILocation(line: 654, column: 33, scope: !2599)
!2903 = !DILocation(line: 657, column: 43, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2602, file: !682, line: 657, column: 29)
!2905 = !DILocalVariable(name: "wc", arg: 1, scope: !2906, file: !2907, line: 865, type: !2910)
!2906 = distinct !DISubprogram(name: "c32isprint", scope: !2907, file: !2907, line: 865, type: !2908, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !2912)
!2907 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!57, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2911, line: 20, baseType: !69)
!2911 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2912 = !{!2905}
!2913 = !DILocation(line: 0, scope: !2906, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 657, column: 31, scope: !2904)
!2915 = !DILocation(line: 871, column: 10, scope: !2906, inlinedAt: !2914)
!2916 = !DILocation(line: 657, column: 31, scope: !2904)
!2917 = !DILocation(line: 664, column: 23, scope: !2594)
!2918 = !DILocation(line: 665, column: 19, scope: !2595)
!2919 = !DILocation(line: 666, column: 15, scope: !2592)
!2920 = !DILocation(line: 753, column: 2, scope: !2544)
!2921 = !DILocation(line: 756, column: 51, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 756, column: 7)
!2923 = !DILocation(line: 0, scope: !2592)
!2924 = !DILocation(line: 670, column: 19, scope: !2608)
!2925 = !DILocation(line: 670, column: 23, scope: !2608)
!2926 = !DILocation(line: 674, column: 33, scope: !2607)
!2927 = !DILocation(line: 0, scope: !2607)
!2928 = !DILocation(line: 676, column: 17, scope: !2607)
!2929 = !DILocation(line: 678, column: 43, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !682, line: 678, column: 25)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !682, line: 677, column: 19)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !682, line: 676, column: 17)
!2933 = distinct !DILexicalBlock(scope: !2607, file: !682, line: 676, column: 17)
!2934 = !DILocation(line: 680, column: 25, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !682, line: 680, column: 25)
!2936 = distinct !DILexicalBlock(scope: !2930, file: !682, line: 679, column: 23)
!2937 = !DILocation(line: 680, column: 25, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !682, line: 680, column: 25)
!2939 = !DILocation(line: 680, column: 25, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !682, line: 680, column: 25)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !682, line: 680, column: 25)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !682, line: 680, column: 25)
!2943 = !DILocation(line: 680, column: 25, scope: !2941)
!2944 = !DILocation(line: 680, column: 25, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !682, line: 680, column: 25)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !682, line: 680, column: 25)
!2947 = !DILocation(line: 680, column: 25, scope: !2946)
!2948 = !DILocation(line: 680, column: 25, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !682, line: 680, column: 25)
!2950 = distinct !DILexicalBlock(scope: !2942, file: !682, line: 680, column: 25)
!2951 = !DILocation(line: 680, column: 25, scope: !2950)
!2952 = !DILocation(line: 680, column: 25, scope: !2942)
!2953 = !DILocation(line: 680, column: 25, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !682, line: 680, column: 25)
!2955 = distinct !DILexicalBlock(scope: !2935, file: !682, line: 680, column: 25)
!2956 = !DILocation(line: 680, column: 25, scope: !2955)
!2957 = !DILocation(line: 681, column: 25, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !682, line: 681, column: 25)
!2959 = distinct !DILexicalBlock(scope: !2936, file: !682, line: 681, column: 25)
!2960 = !DILocation(line: 681, column: 25, scope: !2959)
!2961 = !DILocation(line: 682, column: 25, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !682, line: 682, column: 25)
!2963 = distinct !DILexicalBlock(scope: !2936, file: !682, line: 682, column: 25)
!2964 = !DILocation(line: 682, column: 25, scope: !2963)
!2965 = !DILocation(line: 683, column: 38, scope: !2936)
!2966 = !DILocation(line: 683, column: 33, scope: !2936)
!2967 = !DILocation(line: 684, column: 23, scope: !2936)
!2968 = !DILocation(line: 685, column: 30, scope: !2930)
!2969 = !DILocation(line: 687, column: 25, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !682, line: 687, column: 25)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !682, line: 687, column: 25)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !682, line: 686, column: 23)
!2973 = distinct !DILexicalBlock(scope: !2930, file: !682, line: 685, column: 30)
!2974 = !DILocation(line: 687, column: 25, scope: !2971)
!2975 = !DILocation(line: 689, column: 23, scope: !2972)
!2976 = !DILocation(line: 690, column: 35, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2931, file: !682, line: 690, column: 25)
!2978 = !DILocation(line: 690, column: 30, scope: !2977)
!2979 = !DILocation(line: 690, column: 25, scope: !2931)
!2980 = !DILocation(line: 692, column: 21, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !682, line: 692, column: 21)
!2982 = distinct !DILexicalBlock(scope: !2931, file: !682, line: 692, column: 21)
!2983 = !DILocation(line: 692, column: 21, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !682, line: 692, column: 21)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !682, line: 692, column: 21)
!2986 = distinct !DILexicalBlock(scope: !2981, file: !682, line: 692, column: 21)
!2987 = !DILocation(line: 692, column: 21, scope: !2985)
!2988 = !DILocation(line: 692, column: 21, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !682, line: 692, column: 21)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !682, line: 692, column: 21)
!2991 = !DILocation(line: 692, column: 21, scope: !2990)
!2992 = !DILocation(line: 692, column: 21, scope: !2986)
!2993 = !DILocation(line: 0, scope: !2931)
!2994 = !DILocation(line: 693, column: 21, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !682, line: 693, column: 21)
!2996 = distinct !DILexicalBlock(scope: !2931, file: !682, line: 693, column: 21)
!2997 = !DILocation(line: 693, column: 21, scope: !2996)
!2998 = !DILocation(line: 694, column: 25, scope: !2931)
!2999 = !DILocation(line: 676, column: 17, scope: !2932)
!3000 = distinct !{!3000, !3001, !3002}
!3001 = !DILocation(line: 676, column: 17, scope: !2933)
!3002 = !DILocation(line: 695, column: 19, scope: !2933)
!3003 = !DILocation(line: 409, column: 30, scope: !2718)
!3004 = !DILocation(line: 702, column: 34, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2578, file: !682, line: 702, column: 11)
!3006 = !DILocation(line: 704, column: 14, scope: !3005)
!3007 = !DILocation(line: 705, column: 14, scope: !3005)
!3008 = !DILocation(line: 705, column: 35, scope: !3005)
!3009 = !DILocation(line: 705, column: 17, scope: !3005)
!3010 = !DILocation(line: 705, column: 47, scope: !3005)
!3011 = !DILocation(line: 705, column: 65, scope: !3005)
!3012 = !DILocation(line: 706, column: 11, scope: !3005)
!3013 = !DILocation(line: 702, column: 11, scope: !2578)
!3014 = !DILocation(line: 395, column: 15, scope: !2576)
!3015 = !DILocation(line: 709, column: 5, scope: !2578)
!3016 = !DILocation(line: 710, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2578, file: !682, line: 710, column: 7)
!3018 = !DILocation(line: 710, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3017, file: !682, line: 710, column: 7)
!3020 = !DILocation(line: 710, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !682, line: 710, column: 7)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !682, line: 710, column: 7)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !682, line: 710, column: 7)
!3024 = !DILocation(line: 710, column: 7, scope: !3022)
!3025 = !DILocation(line: 710, column: 7, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !682, line: 710, column: 7)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !682, line: 710, column: 7)
!3028 = !DILocation(line: 710, column: 7, scope: !3027)
!3029 = !DILocation(line: 710, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !682, line: 710, column: 7)
!3031 = distinct !DILexicalBlock(scope: !3023, file: !682, line: 710, column: 7)
!3032 = !DILocation(line: 710, column: 7, scope: !3031)
!3033 = !DILocation(line: 710, column: 7, scope: !3023)
!3034 = !DILocation(line: 710, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !682, line: 710, column: 7)
!3036 = distinct !DILexicalBlock(scope: !3017, file: !682, line: 710, column: 7)
!3037 = !DILocation(line: 710, column: 7, scope: !3036)
!3038 = !DILocation(line: 712, column: 5, scope: !2578)
!3039 = !DILocation(line: 713, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !682, line: 713, column: 7)
!3041 = distinct !DILexicalBlock(scope: !2578, file: !682, line: 713, column: 7)
!3042 = !DILocation(line: 417, column: 21, scope: !2578)
!3043 = !DILocation(line: 713, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !682, line: 713, column: 7)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !682, line: 713, column: 7)
!3046 = distinct !DILexicalBlock(scope: !3040, file: !682, line: 713, column: 7)
!3047 = !DILocation(line: 713, column: 7, scope: !3045)
!3048 = !DILocation(line: 713, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !682, line: 713, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !682, line: 713, column: 7)
!3051 = !DILocation(line: 713, column: 7, scope: !3050)
!3052 = !DILocation(line: 713, column: 7, scope: !3046)
!3053 = !DILocation(line: 714, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !682, line: 714, column: 7)
!3055 = distinct !DILexicalBlock(scope: !2578, file: !682, line: 714, column: 7)
!3056 = !DILocation(line: 714, column: 7, scope: !3055)
!3057 = !DILocation(line: 716, column: 11, scope: !2578)
!3058 = !DILocation(line: 718, column: 5, scope: !2579)
!3059 = !DILocation(line: 395, column: 82, scope: !2579)
!3060 = !DILocation(line: 395, column: 3, scope: !2579)
!3061 = distinct !{!3061, !2714, !3062, !1157}
!3062 = !DILocation(line: 718, column: 5, scope: !2576)
!3063 = !DILocation(line: 720, column: 11, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 720, column: 7)
!3065 = !DILocation(line: 720, column: 16, scope: !3064)
!3066 = !DILocation(line: 728, column: 51, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 728, column: 7)
!3068 = !DILocation(line: 731, column: 11, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3067, file: !682, line: 730, column: 5)
!3070 = !DILocation(line: 732, column: 16, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3069, file: !682, line: 731, column: 11)
!3072 = !DILocation(line: 732, column: 9, scope: !3071)
!3073 = !DILocation(line: 736, column: 18, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3071, file: !682, line: 736, column: 16)
!3075 = !DILocation(line: 736, column: 29, scope: !3074)
!3076 = !DILocation(line: 745, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 745, column: 7)
!3078 = !DILocation(line: 745, column: 20, scope: !3077)
!3079 = !DILocation(line: 746, column: 12, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !682, line: 746, column: 5)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !682, line: 746, column: 5)
!3082 = !DILocation(line: 746, column: 5, scope: !3081)
!3083 = !DILocation(line: 747, column: 7, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !682, line: 747, column: 7)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !682, line: 747, column: 7)
!3086 = !DILocation(line: 747, column: 7, scope: !3085)
!3087 = !DILocation(line: 746, column: 39, scope: !3080)
!3088 = distinct !{!3088, !3082, !3089, !1157}
!3089 = !DILocation(line: 747, column: 7, scope: !3081)
!3090 = !DILocation(line: 749, column: 11, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !2544, file: !682, line: 749, column: 7)
!3092 = !DILocation(line: 749, column: 7, scope: !2544)
!3093 = !DILocation(line: 750, column: 5, scope: !3091)
!3094 = !DILocation(line: 750, column: 17, scope: !3091)
!3095 = !DILocation(line: 756, column: 21, scope: !2922)
!3096 = !DILocation(line: 760, column: 42, scope: !2544)
!3097 = !DILocation(line: 758, column: 10, scope: !2544)
!3098 = !DILocation(line: 758, column: 3, scope: !2544)
!3099 = !DILocation(line: 762, column: 1, scope: !2544)
!3100 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1231, file: !1231, line: 98, type: !3101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3101 = !DISubroutineType(types: !949)
!3102 = !DISubprogram(name: "iswprint", scope: !3103, file: !3103, line: 120, type: !2908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3103 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3104 = distinct !DISubprogram(name: "quotearg_alloc", scope: !682, file: !682, line: 788, type: !3105, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!59, !101, !104, !2437}
!3107 = !{!3108, !3109, !3110}
!3108 = !DILocalVariable(name: "arg", arg: 1, scope: !3104, file: !682, line: 788, type: !101)
!3109 = !DILocalVariable(name: "argsize", arg: 2, scope: !3104, file: !682, line: 788, type: !104)
!3110 = !DILocalVariable(name: "o", arg: 3, scope: !3104, file: !682, line: 789, type: !2437)
!3111 = !DILocation(line: 0, scope: !3104)
!3112 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !682, line: 801, type: !101)
!3113 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !682, file: !682, line: 801, type: !3114, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!59, !101, !104, !970, !2437}
!3116 = !{!3112, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3117 = !DILocalVariable(name: "argsize", arg: 2, scope: !3113, file: !682, line: 801, type: !104)
!3118 = !DILocalVariable(name: "size", arg: 3, scope: !3113, file: !682, line: 801, type: !970)
!3119 = !DILocalVariable(name: "o", arg: 4, scope: !3113, file: !682, line: 802, type: !2437)
!3120 = !DILocalVariable(name: "p", scope: !3113, file: !682, line: 804, type: !2437)
!3121 = !DILocalVariable(name: "saved_errno", scope: !3113, file: !682, line: 805, type: !57)
!3122 = !DILocalVariable(name: "flags", scope: !3113, file: !682, line: 807, type: !57)
!3123 = !DILocalVariable(name: "bufsize", scope: !3113, file: !682, line: 808, type: !104)
!3124 = !DILocalVariable(name: "buf", scope: !3113, file: !682, line: 812, type: !59)
!3125 = !DILocation(line: 0, scope: !3113, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 791, column: 10, scope: !3104)
!3127 = !DILocation(line: 804, column: 37, scope: !3113, inlinedAt: !3126)
!3128 = !DILocation(line: 805, column: 21, scope: !3113, inlinedAt: !3126)
!3129 = !DILocation(line: 807, column: 18, scope: !3113, inlinedAt: !3126)
!3130 = !DILocation(line: 807, column: 24, scope: !3113, inlinedAt: !3126)
!3131 = !DILocation(line: 808, column: 72, scope: !3113, inlinedAt: !3126)
!3132 = !DILocation(line: 809, column: 56, scope: !3113, inlinedAt: !3126)
!3133 = !DILocation(line: 810, column: 49, scope: !3113, inlinedAt: !3126)
!3134 = !DILocation(line: 811, column: 49, scope: !3113, inlinedAt: !3126)
!3135 = !DILocation(line: 808, column: 20, scope: !3113, inlinedAt: !3126)
!3136 = !DILocation(line: 811, column: 62, scope: !3113, inlinedAt: !3126)
!3137 = !DILocation(line: 812, column: 15, scope: !3113, inlinedAt: !3126)
!3138 = !DILocation(line: 813, column: 60, scope: !3113, inlinedAt: !3126)
!3139 = !DILocation(line: 815, column: 32, scope: !3113, inlinedAt: !3126)
!3140 = !DILocation(line: 815, column: 47, scope: !3113, inlinedAt: !3126)
!3141 = !DILocation(line: 813, column: 3, scope: !3113, inlinedAt: !3126)
!3142 = !DILocation(line: 816, column: 9, scope: !3113, inlinedAt: !3126)
!3143 = !DILocation(line: 791, column: 3, scope: !3104)
!3144 = !DILocation(line: 0, scope: !3113)
!3145 = !DILocation(line: 804, column: 37, scope: !3113)
!3146 = !DILocation(line: 805, column: 21, scope: !3113)
!3147 = !DILocation(line: 807, column: 18, scope: !3113)
!3148 = !DILocation(line: 807, column: 27, scope: !3113)
!3149 = !DILocation(line: 807, column: 24, scope: !3113)
!3150 = !DILocation(line: 808, column: 72, scope: !3113)
!3151 = !DILocation(line: 809, column: 56, scope: !3113)
!3152 = !DILocation(line: 810, column: 49, scope: !3113)
!3153 = !DILocation(line: 811, column: 49, scope: !3113)
!3154 = !DILocation(line: 808, column: 20, scope: !3113)
!3155 = !DILocation(line: 811, column: 62, scope: !3113)
!3156 = !DILocation(line: 812, column: 15, scope: !3113)
!3157 = !DILocation(line: 813, column: 60, scope: !3113)
!3158 = !DILocation(line: 815, column: 32, scope: !3113)
!3159 = !DILocation(line: 815, column: 47, scope: !3113)
!3160 = !DILocation(line: 813, column: 3, scope: !3113)
!3161 = !DILocation(line: 816, column: 9, scope: !3113)
!3162 = !DILocation(line: 817, column: 7, scope: !3113)
!3163 = !DILocation(line: 818, column: 11, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3113, file: !682, line: 817, column: 7)
!3165 = !DILocation(line: 818, column: 5, scope: !3164)
!3166 = !DILocation(line: 819, column: 3, scope: !3113)
!3167 = distinct !DISubprogram(name: "quotearg_free", scope: !682, file: !682, line: 837, type: !637, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3168)
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "sv", scope: !3167, file: !682, line: 839, type: !768)
!3170 = !DILocalVariable(name: "i", scope: !3171, file: !682, line: 840, type: !57)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !682, line: 840, column: 3)
!3172 = !DILocation(line: 839, column: 24, scope: !3167)
!3173 = !DILocation(line: 0, scope: !3167)
!3174 = !DILocation(line: 0, scope: !3171)
!3175 = !DILocation(line: 840, column: 21, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3171, file: !682, line: 840, column: 3)
!3177 = !DILocation(line: 840, column: 3, scope: !3171)
!3178 = !DILocation(line: 842, column: 13, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3167, file: !682, line: 842, column: 7)
!3180 = !{!3181, !1041, i64 8}
!3181 = !{!"slotvec", !1274, i64 0, !1041, i64 8}
!3182 = !DILocation(line: 842, column: 17, scope: !3179)
!3183 = !DILocation(line: 842, column: 7, scope: !3167)
!3184 = !DILocation(line: 841, column: 17, scope: !3176)
!3185 = !DILocation(line: 841, column: 5, scope: !3176)
!3186 = !DILocation(line: 840, column: 32, scope: !3176)
!3187 = distinct !{!3187, !3177, !3188, !1157}
!3188 = !DILocation(line: 841, column: 20, scope: !3171)
!3189 = !DILocation(line: 844, column: 7, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3179, file: !682, line: 843, column: 5)
!3191 = !DILocation(line: 845, column: 21, scope: !3190)
!3192 = !{!3181, !1274, i64 0}
!3193 = !DILocation(line: 846, column: 20, scope: !3190)
!3194 = !DILocation(line: 847, column: 5, scope: !3190)
!3195 = !DILocation(line: 848, column: 10, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3167, file: !682, line: 848, column: 7)
!3197 = !DILocation(line: 848, column: 7, scope: !3167)
!3198 = !DILocation(line: 850, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !682, line: 849, column: 5)
!3200 = !DILocation(line: 851, column: 15, scope: !3199)
!3201 = !DILocation(line: 852, column: 5, scope: !3199)
!3202 = !DILocation(line: 853, column: 10, scope: !3167)
!3203 = !DILocation(line: 854, column: 1, scope: !3167)
!3204 = distinct !DISubprogram(name: "quotearg_n", scope: !682, file: !682, line: 919, type: !1224, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3205)
!3205 = !{!3206, !3207}
!3206 = !DILocalVariable(name: "n", arg: 1, scope: !3204, file: !682, line: 919, type: !57)
!3207 = !DILocalVariable(name: "arg", arg: 2, scope: !3204, file: !682, line: 919, type: !101)
!3208 = !DILocation(line: 0, scope: !3204)
!3209 = !DILocation(line: 921, column: 10, scope: !3204)
!3210 = !DILocation(line: 921, column: 3, scope: !3204)
!3211 = distinct !DISubprogram(name: "quotearg_n_options", scope: !682, file: !682, line: 866, type: !3212, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!59, !57, !101, !104, !2437}
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3225, !3226, !3228, !3229, !3230}
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3211, file: !682, line: 866, type: !57)
!3216 = !DILocalVariable(name: "arg", arg: 2, scope: !3211, file: !682, line: 866, type: !101)
!3217 = !DILocalVariable(name: "argsize", arg: 3, scope: !3211, file: !682, line: 866, type: !104)
!3218 = !DILocalVariable(name: "options", arg: 4, scope: !3211, file: !682, line: 867, type: !2437)
!3219 = !DILocalVariable(name: "saved_errno", scope: !3211, file: !682, line: 869, type: !57)
!3220 = !DILocalVariable(name: "sv", scope: !3211, file: !682, line: 871, type: !768)
!3221 = !DILocalVariable(name: "nslots_max", scope: !3211, file: !682, line: 873, type: !57)
!3222 = !DILocalVariable(name: "preallocated", scope: !3223, file: !682, line: 879, type: !215)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !682, line: 878, column: 5)
!3224 = distinct !DILexicalBlock(scope: !3211, file: !682, line: 877, column: 7)
!3225 = !DILocalVariable(name: "new_nslots", scope: !3223, file: !682, line: 880, type: !983)
!3226 = !DILocalVariable(name: "size", scope: !3227, file: !682, line: 891, type: !104)
!3227 = distinct !DILexicalBlock(scope: !3211, file: !682, line: 890, column: 3)
!3228 = !DILocalVariable(name: "val", scope: !3227, file: !682, line: 892, type: !59)
!3229 = !DILocalVariable(name: "flags", scope: !3227, file: !682, line: 894, type: !57)
!3230 = !DILocalVariable(name: "qsize", scope: !3227, file: !682, line: 895, type: !104)
!3231 = distinct !DIAssignID()
!3232 = !DILocation(line: 0, scope: !3223)
!3233 = !DILocation(line: 0, scope: !3211)
!3234 = !DILocation(line: 869, column: 21, scope: !3211)
!3235 = !DILocation(line: 871, column: 24, scope: !3211)
!3236 = !DILocation(line: 874, column: 17, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3211, file: !682, line: 874, column: 7)
!3238 = !DILocation(line: 875, column: 5, scope: !3237)
!3239 = !DILocation(line: 877, column: 7, scope: !3224)
!3240 = !DILocation(line: 877, column: 14, scope: !3224)
!3241 = !DILocation(line: 877, column: 7, scope: !3211)
!3242 = !DILocation(line: 879, column: 31, scope: !3223)
!3243 = !DILocation(line: 880, column: 7, scope: !3223)
!3244 = !DILocation(line: 880, column: 26, scope: !3223)
!3245 = !DILocation(line: 880, column: 13, scope: !3223)
!3246 = distinct !DIAssignID()
!3247 = !DILocation(line: 882, column: 31, scope: !3223)
!3248 = !DILocation(line: 883, column: 33, scope: !3223)
!3249 = !DILocation(line: 883, column: 42, scope: !3223)
!3250 = !DILocation(line: 883, column: 31, scope: !3223)
!3251 = !DILocation(line: 882, column: 22, scope: !3223)
!3252 = !DILocation(line: 882, column: 15, scope: !3223)
!3253 = !DILocation(line: 884, column: 11, scope: !3223)
!3254 = !DILocation(line: 885, column: 15, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3223, file: !682, line: 884, column: 11)
!3256 = !{i64 0, i64 8, !1273, i64 8, i64 8, !1040}
!3257 = !DILocation(line: 885, column: 9, scope: !3255)
!3258 = !DILocation(line: 886, column: 20, scope: !3223)
!3259 = !DILocation(line: 886, column: 18, scope: !3223)
!3260 = !DILocation(line: 886, column: 32, scope: !3223)
!3261 = !DILocation(line: 886, column: 43, scope: !3223)
!3262 = !DILocation(line: 886, column: 53, scope: !3223)
!3263 = !DILocation(line: 0, scope: !2654, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 886, column: 7, scope: !3223)
!3265 = !DILocation(line: 59, column: 10, scope: !2654, inlinedAt: !3264)
!3266 = !DILocation(line: 887, column: 16, scope: !3223)
!3267 = !DILocation(line: 887, column: 14, scope: !3223)
!3268 = !DILocation(line: 888, column: 5, scope: !3224)
!3269 = !DILocation(line: 888, column: 5, scope: !3223)
!3270 = !DILocation(line: 891, column: 19, scope: !3227)
!3271 = !DILocation(line: 891, column: 25, scope: !3227)
!3272 = !DILocation(line: 0, scope: !3227)
!3273 = !DILocation(line: 892, column: 23, scope: !3227)
!3274 = !DILocation(line: 894, column: 26, scope: !3227)
!3275 = !DILocation(line: 894, column: 32, scope: !3227)
!3276 = !DILocation(line: 896, column: 55, scope: !3227)
!3277 = !DILocation(line: 897, column: 55, scope: !3227)
!3278 = !DILocation(line: 898, column: 55, scope: !3227)
!3279 = !DILocation(line: 899, column: 55, scope: !3227)
!3280 = !DILocation(line: 895, column: 20, scope: !3227)
!3281 = !DILocation(line: 901, column: 14, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3227, file: !682, line: 901, column: 9)
!3283 = !DILocation(line: 901, column: 9, scope: !3227)
!3284 = !DILocation(line: 903, column: 35, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !682, line: 902, column: 7)
!3286 = !DILocation(line: 903, column: 20, scope: !3285)
!3287 = !DILocation(line: 904, column: 17, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3285, file: !682, line: 904, column: 13)
!3289 = !DILocation(line: 904, column: 13, scope: !3285)
!3290 = !DILocation(line: 905, column: 11, scope: !3288)
!3291 = !DILocation(line: 906, column: 27, scope: !3285)
!3292 = !DILocation(line: 906, column: 19, scope: !3285)
!3293 = !DILocation(line: 907, column: 69, scope: !3285)
!3294 = !DILocation(line: 909, column: 44, scope: !3285)
!3295 = !DILocation(line: 910, column: 44, scope: !3285)
!3296 = !DILocation(line: 907, column: 9, scope: !3285)
!3297 = !DILocation(line: 911, column: 7, scope: !3285)
!3298 = !DILocation(line: 913, column: 11, scope: !3227)
!3299 = !DILocation(line: 914, column: 5, scope: !3227)
!3300 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !682, file: !682, line: 925, type: !3301, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!59, !57, !101, !104}
!3303 = !{!3304, !3305, !3306}
!3304 = !DILocalVariable(name: "n", arg: 1, scope: !3300, file: !682, line: 925, type: !57)
!3305 = !DILocalVariable(name: "arg", arg: 2, scope: !3300, file: !682, line: 925, type: !101)
!3306 = !DILocalVariable(name: "argsize", arg: 3, scope: !3300, file: !682, line: 925, type: !104)
!3307 = !DILocation(line: 0, scope: !3300)
!3308 = !DILocation(line: 927, column: 10, scope: !3300)
!3309 = !DILocation(line: 927, column: 3, scope: !3300)
!3310 = distinct !DISubprogram(name: "quotearg", scope: !682, file: !682, line: 931, type: !1233, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3311)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "arg", arg: 1, scope: !3310, file: !682, line: 931, type: !101)
!3313 = !DILocation(line: 0, scope: !3310)
!3314 = !DILocation(line: 0, scope: !3204, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 933, column: 10, scope: !3310)
!3316 = !DILocation(line: 921, column: 10, scope: !3204, inlinedAt: !3315)
!3317 = !DILocation(line: 933, column: 3, scope: !3310)
!3318 = distinct !DISubprogram(name: "quotearg_mem", scope: !682, file: !682, line: 937, type: !3319, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!59, !101, !104}
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "arg", arg: 1, scope: !3318, file: !682, line: 937, type: !101)
!3323 = !DILocalVariable(name: "argsize", arg: 2, scope: !3318, file: !682, line: 937, type: !104)
!3324 = !DILocation(line: 0, scope: !3318)
!3325 = !DILocation(line: 0, scope: !3300, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 939, column: 10, scope: !3318)
!3327 = !DILocation(line: 927, column: 10, scope: !3300, inlinedAt: !3326)
!3328 = !DILocation(line: 939, column: 3, scope: !3318)
!3329 = distinct !DISubprogram(name: "quotearg_n_style", scope: !682, file: !682, line: 943, type: !3330, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!59, !57, !708, !101}
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DILocalVariable(name: "n", arg: 1, scope: !3329, file: !682, line: 943, type: !57)
!3334 = !DILocalVariable(name: "s", arg: 2, scope: !3329, file: !682, line: 943, type: !708)
!3335 = !DILocalVariable(name: "arg", arg: 3, scope: !3329, file: !682, line: 943, type: !101)
!3336 = !DILocalVariable(name: "o", scope: !3329, file: !682, line: 945, type: !2438)
!3337 = distinct !DIAssignID()
!3338 = !DILocation(line: 0, scope: !3329)
!3339 = !DILocation(line: 945, column: 3, scope: !3329)
!3340 = !{!3341}
!3341 = distinct !{!3341, !3342, !"quoting_options_from_style: argument 0"}
!3342 = distinct !{!3342, !"quoting_options_from_style"}
!3343 = !DILocation(line: 945, column: 36, scope: !3329)
!3344 = !DILocalVariable(name: "style", arg: 1, scope: !3345, file: !682, line: 183, type: !708)
!3345 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !682, file: !682, line: 183, type: !3346, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!723, !708}
!3348 = !{!3344, !3349}
!3349 = !DILocalVariable(name: "o", scope: !3345, file: !682, line: 185, type: !723)
!3350 = !DILocation(line: 0, scope: !3345, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 945, column: 36, scope: !3329)
!3352 = !DILocation(line: 185, column: 26, scope: !3345, inlinedAt: !3351)
!3353 = distinct !DIAssignID()
!3354 = !DILocation(line: 186, column: 13, scope: !3355, inlinedAt: !3351)
!3355 = distinct !DILexicalBlock(scope: !3345, file: !682, line: 186, column: 7)
!3356 = !DILocation(line: 186, column: 7, scope: !3345, inlinedAt: !3351)
!3357 = !DILocation(line: 187, column: 5, scope: !3355, inlinedAt: !3351)
!3358 = !DILocation(line: 188, column: 11, scope: !3345, inlinedAt: !3351)
!3359 = distinct !DIAssignID()
!3360 = !DILocation(line: 946, column: 10, scope: !3329)
!3361 = !DILocation(line: 947, column: 1, scope: !3329)
!3362 = !DILocation(line: 946, column: 3, scope: !3329)
!3363 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !682, file: !682, line: 950, type: !3364, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!59, !57, !708, !101, !104}
!3366 = !{!3367, !3368, !3369, !3370, !3371}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !682, line: 950, type: !57)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !682, line: 950, type: !708)
!3369 = !DILocalVariable(name: "arg", arg: 3, scope: !3363, file: !682, line: 951, type: !101)
!3370 = !DILocalVariable(name: "argsize", arg: 4, scope: !3363, file: !682, line: 951, type: !104)
!3371 = !DILocalVariable(name: "o", scope: !3363, file: !682, line: 953, type: !2438)
!3372 = distinct !DIAssignID()
!3373 = !DILocation(line: 0, scope: !3363)
!3374 = !DILocation(line: 953, column: 3, scope: !3363)
!3375 = !{!3376}
!3376 = distinct !{!3376, !3377, !"quoting_options_from_style: argument 0"}
!3377 = distinct !{!3377, !"quoting_options_from_style"}
!3378 = !DILocation(line: 953, column: 36, scope: !3363)
!3379 = !DILocation(line: 0, scope: !3345, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 953, column: 36, scope: !3363)
!3381 = !DILocation(line: 185, column: 26, scope: !3345, inlinedAt: !3380)
!3382 = distinct !DIAssignID()
!3383 = !DILocation(line: 186, column: 13, scope: !3355, inlinedAt: !3380)
!3384 = !DILocation(line: 186, column: 7, scope: !3345, inlinedAt: !3380)
!3385 = !DILocation(line: 187, column: 5, scope: !3355, inlinedAt: !3380)
!3386 = !DILocation(line: 188, column: 11, scope: !3345, inlinedAt: !3380)
!3387 = distinct !DIAssignID()
!3388 = !DILocation(line: 954, column: 10, scope: !3363)
!3389 = !DILocation(line: 955, column: 1, scope: !3363)
!3390 = !DILocation(line: 954, column: 3, scope: !3363)
!3391 = distinct !DISubprogram(name: "quotearg_style", scope: !682, file: !682, line: 958, type: !3392, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!59, !708, !101}
!3394 = !{!3395, !3396}
!3395 = !DILocalVariable(name: "s", arg: 1, scope: !3391, file: !682, line: 958, type: !708)
!3396 = !DILocalVariable(name: "arg", arg: 2, scope: !3391, file: !682, line: 958, type: !101)
!3397 = distinct !DIAssignID()
!3398 = !DILocation(line: 0, scope: !3391)
!3399 = !DILocation(line: 0, scope: !3329, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 960, column: 10, scope: !3391)
!3401 = !DILocation(line: 945, column: 3, scope: !3329, inlinedAt: !3400)
!3402 = !{!3403}
!3403 = distinct !{!3403, !3404, !"quoting_options_from_style: argument 0"}
!3404 = distinct !{!3404, !"quoting_options_from_style"}
!3405 = !DILocation(line: 945, column: 36, scope: !3329, inlinedAt: !3400)
!3406 = !DILocation(line: 0, scope: !3345, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 945, column: 36, scope: !3329, inlinedAt: !3400)
!3408 = !DILocation(line: 185, column: 26, scope: !3345, inlinedAt: !3407)
!3409 = distinct !DIAssignID()
!3410 = !DILocation(line: 186, column: 13, scope: !3355, inlinedAt: !3407)
!3411 = !DILocation(line: 186, column: 7, scope: !3345, inlinedAt: !3407)
!3412 = !DILocation(line: 187, column: 5, scope: !3355, inlinedAt: !3407)
!3413 = !DILocation(line: 188, column: 11, scope: !3345, inlinedAt: !3407)
!3414 = distinct !DIAssignID()
!3415 = !DILocation(line: 946, column: 10, scope: !3329, inlinedAt: !3400)
!3416 = !DILocation(line: 947, column: 1, scope: !3329, inlinedAt: !3400)
!3417 = !DILocation(line: 960, column: 3, scope: !3391)
!3418 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !682, file: !682, line: 964, type: !3419, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3421)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!59, !708, !101, !104}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "s", arg: 1, scope: !3418, file: !682, line: 964, type: !708)
!3423 = !DILocalVariable(name: "arg", arg: 2, scope: !3418, file: !682, line: 964, type: !101)
!3424 = !DILocalVariable(name: "argsize", arg: 3, scope: !3418, file: !682, line: 964, type: !104)
!3425 = distinct !DIAssignID()
!3426 = !DILocation(line: 0, scope: !3418)
!3427 = !DILocation(line: 0, scope: !3363, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 966, column: 10, scope: !3418)
!3429 = !DILocation(line: 953, column: 3, scope: !3363, inlinedAt: !3428)
!3430 = !{!3431}
!3431 = distinct !{!3431, !3432, !"quoting_options_from_style: argument 0"}
!3432 = distinct !{!3432, !"quoting_options_from_style"}
!3433 = !DILocation(line: 953, column: 36, scope: !3363, inlinedAt: !3428)
!3434 = !DILocation(line: 0, scope: !3345, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 953, column: 36, scope: !3363, inlinedAt: !3428)
!3436 = !DILocation(line: 185, column: 26, scope: !3345, inlinedAt: !3435)
!3437 = distinct !DIAssignID()
!3438 = !DILocation(line: 186, column: 13, scope: !3355, inlinedAt: !3435)
!3439 = !DILocation(line: 186, column: 7, scope: !3345, inlinedAt: !3435)
!3440 = !DILocation(line: 187, column: 5, scope: !3355, inlinedAt: !3435)
!3441 = !DILocation(line: 188, column: 11, scope: !3345, inlinedAt: !3435)
!3442 = distinct !DIAssignID()
!3443 = !DILocation(line: 954, column: 10, scope: !3363, inlinedAt: !3428)
!3444 = !DILocation(line: 955, column: 1, scope: !3363, inlinedAt: !3428)
!3445 = !DILocation(line: 966, column: 3, scope: !3418)
!3446 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !682, file: !682, line: 970, type: !3447, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!59, !101, !104, !4}
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "arg", arg: 1, scope: !3446, file: !682, line: 970, type: !101)
!3451 = !DILocalVariable(name: "argsize", arg: 2, scope: !3446, file: !682, line: 970, type: !104)
!3452 = !DILocalVariable(name: "ch", arg: 3, scope: !3446, file: !682, line: 970, type: !4)
!3453 = !DILocalVariable(name: "options", scope: !3446, file: !682, line: 972, type: !723)
!3454 = distinct !DIAssignID()
!3455 = !DILocation(line: 0, scope: !3446)
!3456 = !DILocation(line: 972, column: 3, scope: !3446)
!3457 = !DILocation(line: 973, column: 13, scope: !3446)
!3458 = !{i64 0, i64 4, !1110, i64 4, i64 4, !1110, i64 8, i64 32, !1119, i64 40, i64 8, !1040, i64 48, i64 8, !1040}
!3459 = distinct !DIAssignID()
!3460 = !DILocation(line: 0, scope: !2457, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 974, column: 3, scope: !3446)
!3462 = !DILocation(line: 147, column: 41, scope: !2457, inlinedAt: !3461)
!3463 = !DILocation(line: 147, column: 62, scope: !2457, inlinedAt: !3461)
!3464 = !DILocation(line: 147, column: 57, scope: !2457, inlinedAt: !3461)
!3465 = !DILocation(line: 148, column: 15, scope: !2457, inlinedAt: !3461)
!3466 = !DILocation(line: 149, column: 21, scope: !2457, inlinedAt: !3461)
!3467 = !DILocation(line: 149, column: 24, scope: !2457, inlinedAt: !3461)
!3468 = !DILocation(line: 150, column: 19, scope: !2457, inlinedAt: !3461)
!3469 = !DILocation(line: 150, column: 24, scope: !2457, inlinedAt: !3461)
!3470 = !DILocation(line: 150, column: 6, scope: !2457, inlinedAt: !3461)
!3471 = !DILocation(line: 975, column: 10, scope: !3446)
!3472 = !DILocation(line: 976, column: 1, scope: !3446)
!3473 = !DILocation(line: 975, column: 3, scope: !3446)
!3474 = distinct !DISubprogram(name: "quotearg_char", scope: !682, file: !682, line: 979, type: !3475, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!59, !101, !4}
!3477 = !{!3478, !3479}
!3478 = !DILocalVariable(name: "arg", arg: 1, scope: !3474, file: !682, line: 979, type: !101)
!3479 = !DILocalVariable(name: "ch", arg: 2, scope: !3474, file: !682, line: 979, type: !4)
!3480 = distinct !DIAssignID()
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocation(line: 0, scope: !3446, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 981, column: 10, scope: !3474)
!3484 = !DILocation(line: 972, column: 3, scope: !3446, inlinedAt: !3483)
!3485 = !DILocation(line: 973, column: 13, scope: !3446, inlinedAt: !3483)
!3486 = distinct !DIAssignID()
!3487 = !DILocation(line: 0, scope: !2457, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 974, column: 3, scope: !3446, inlinedAt: !3483)
!3489 = !DILocation(line: 147, column: 41, scope: !2457, inlinedAt: !3488)
!3490 = !DILocation(line: 147, column: 62, scope: !2457, inlinedAt: !3488)
!3491 = !DILocation(line: 147, column: 57, scope: !2457, inlinedAt: !3488)
!3492 = !DILocation(line: 148, column: 15, scope: !2457, inlinedAt: !3488)
!3493 = !DILocation(line: 149, column: 21, scope: !2457, inlinedAt: !3488)
!3494 = !DILocation(line: 149, column: 24, scope: !2457, inlinedAt: !3488)
!3495 = !DILocation(line: 150, column: 19, scope: !2457, inlinedAt: !3488)
!3496 = !DILocation(line: 150, column: 24, scope: !2457, inlinedAt: !3488)
!3497 = !DILocation(line: 150, column: 6, scope: !2457, inlinedAt: !3488)
!3498 = !DILocation(line: 975, column: 10, scope: !3446, inlinedAt: !3483)
!3499 = !DILocation(line: 976, column: 1, scope: !3446, inlinedAt: !3483)
!3500 = !DILocation(line: 981, column: 3, scope: !3474)
!3501 = distinct !DISubprogram(name: "quotearg_colon", scope: !682, file: !682, line: 985, type: !1233, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3502)
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "arg", arg: 1, scope: !3501, file: !682, line: 985, type: !101)
!3504 = distinct !DIAssignID()
!3505 = !DILocation(line: 0, scope: !3501)
!3506 = !DILocation(line: 0, scope: !3474, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 987, column: 10, scope: !3501)
!3508 = !DILocation(line: 0, scope: !3446, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 981, column: 10, scope: !3474, inlinedAt: !3507)
!3510 = !DILocation(line: 972, column: 3, scope: !3446, inlinedAt: !3509)
!3511 = !DILocation(line: 973, column: 13, scope: !3446, inlinedAt: !3509)
!3512 = distinct !DIAssignID()
!3513 = !DILocation(line: 0, scope: !2457, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 974, column: 3, scope: !3446, inlinedAt: !3509)
!3515 = !DILocation(line: 147, column: 57, scope: !2457, inlinedAt: !3514)
!3516 = !DILocation(line: 149, column: 21, scope: !2457, inlinedAt: !3514)
!3517 = !DILocation(line: 150, column: 6, scope: !2457, inlinedAt: !3514)
!3518 = !DILocation(line: 975, column: 10, scope: !3446, inlinedAt: !3509)
!3519 = !DILocation(line: 976, column: 1, scope: !3446, inlinedAt: !3509)
!3520 = !DILocation(line: 987, column: 3, scope: !3501)
!3521 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !682, file: !682, line: 991, type: !3319, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3522)
!3522 = !{!3523, !3524}
!3523 = !DILocalVariable(name: "arg", arg: 1, scope: !3521, file: !682, line: 991, type: !101)
!3524 = !DILocalVariable(name: "argsize", arg: 2, scope: !3521, file: !682, line: 991, type: !104)
!3525 = distinct !DIAssignID()
!3526 = !DILocation(line: 0, scope: !3521)
!3527 = !DILocation(line: 0, scope: !3446, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 993, column: 10, scope: !3521)
!3529 = !DILocation(line: 972, column: 3, scope: !3446, inlinedAt: !3528)
!3530 = !DILocation(line: 973, column: 13, scope: !3446, inlinedAt: !3528)
!3531 = distinct !DIAssignID()
!3532 = !DILocation(line: 0, scope: !2457, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 974, column: 3, scope: !3446, inlinedAt: !3528)
!3534 = !DILocation(line: 147, column: 57, scope: !2457, inlinedAt: !3533)
!3535 = !DILocation(line: 149, column: 21, scope: !2457, inlinedAt: !3533)
!3536 = !DILocation(line: 150, column: 6, scope: !2457, inlinedAt: !3533)
!3537 = !DILocation(line: 975, column: 10, scope: !3446, inlinedAt: !3528)
!3538 = !DILocation(line: 976, column: 1, scope: !3446, inlinedAt: !3528)
!3539 = !DILocation(line: 993, column: 3, scope: !3521)
!3540 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !682, file: !682, line: 997, type: !3330, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3541)
!3541 = !{!3542, !3543, !3544, !3545}
!3542 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !682, line: 997, type: !57)
!3543 = !DILocalVariable(name: "s", arg: 2, scope: !3540, file: !682, line: 997, type: !708)
!3544 = !DILocalVariable(name: "arg", arg: 3, scope: !3540, file: !682, line: 997, type: !101)
!3545 = !DILocalVariable(name: "options", scope: !3540, file: !682, line: 999, type: !723)
!3546 = distinct !DIAssignID()
!3547 = !DILocation(line: 0, scope: !3540)
!3548 = !DILocation(line: 185, column: 26, scope: !3345, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1000, column: 13, scope: !3540)
!3550 = !DILocation(line: 999, column: 3, scope: !3540)
!3551 = !DILocation(line: 0, scope: !3345, inlinedAt: !3549)
!3552 = !DILocation(line: 186, column: 13, scope: !3355, inlinedAt: !3549)
!3553 = !DILocation(line: 186, column: 7, scope: !3345, inlinedAt: !3549)
!3554 = !DILocation(line: 187, column: 5, scope: !3355, inlinedAt: !3549)
!3555 = !{!3556}
!3556 = distinct !{!3556, !3557, !"quoting_options_from_style: argument 0"}
!3557 = distinct !{!3557, !"quoting_options_from_style"}
!3558 = !DILocation(line: 1000, column: 13, scope: !3540)
!3559 = distinct !DIAssignID()
!3560 = distinct !DIAssignID()
!3561 = !DILocation(line: 0, scope: !2457, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 1001, column: 3, scope: !3540)
!3563 = !DILocation(line: 147, column: 57, scope: !2457, inlinedAt: !3562)
!3564 = !DILocation(line: 149, column: 21, scope: !2457, inlinedAt: !3562)
!3565 = !DILocation(line: 150, column: 6, scope: !2457, inlinedAt: !3562)
!3566 = distinct !DIAssignID()
!3567 = !DILocation(line: 1002, column: 10, scope: !3540)
!3568 = !DILocation(line: 1003, column: 1, scope: !3540)
!3569 = !DILocation(line: 1002, column: 3, scope: !3540)
!3570 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !682, file: !682, line: 1006, type: !3571, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!59, !57, !101, !101, !101}
!3573 = !{!3574, !3575, !3576, !3577}
!3574 = !DILocalVariable(name: "n", arg: 1, scope: !3570, file: !682, line: 1006, type: !57)
!3575 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3570, file: !682, line: 1006, type: !101)
!3576 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3570, file: !682, line: 1007, type: !101)
!3577 = !DILocalVariable(name: "arg", arg: 4, scope: !3570, file: !682, line: 1007, type: !101)
!3578 = distinct !DIAssignID()
!3579 = !DILocation(line: 0, scope: !3570)
!3580 = !DILocalVariable(name: "o", scope: !3581, file: !682, line: 1018, type: !723)
!3581 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !682, file: !682, line: 1014, type: !3582, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!59, !57, !101, !101, !101, !104}
!3584 = !{!3585, !3586, !3587, !3588, !3589, !3580}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !682, line: 1014, type: !57)
!3586 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3581, file: !682, line: 1014, type: !101)
!3587 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3581, file: !682, line: 1015, type: !101)
!3588 = !DILocalVariable(name: "arg", arg: 4, scope: !3581, file: !682, line: 1016, type: !101)
!3589 = !DILocalVariable(name: "argsize", arg: 5, scope: !3581, file: !682, line: 1016, type: !104)
!3590 = !DILocation(line: 0, scope: !3581, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 1009, column: 10, scope: !3570)
!3592 = !DILocation(line: 1018, column: 3, scope: !3581, inlinedAt: !3591)
!3593 = !DILocation(line: 1018, column: 30, scope: !3581, inlinedAt: !3591)
!3594 = distinct !DIAssignID()
!3595 = distinct !DIAssignID()
!3596 = !DILocation(line: 0, scope: !2497, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 1019, column: 3, scope: !3581, inlinedAt: !3591)
!3598 = !DILocation(line: 174, column: 12, scope: !2497, inlinedAt: !3597)
!3599 = distinct !DIAssignID()
!3600 = !DILocation(line: 175, column: 8, scope: !2510, inlinedAt: !3597)
!3601 = !DILocation(line: 175, column: 19, scope: !2510, inlinedAt: !3597)
!3602 = !DILocation(line: 176, column: 5, scope: !2510, inlinedAt: !3597)
!3603 = !DILocation(line: 177, column: 6, scope: !2497, inlinedAt: !3597)
!3604 = !DILocation(line: 177, column: 17, scope: !2497, inlinedAt: !3597)
!3605 = distinct !DIAssignID()
!3606 = !DILocation(line: 178, column: 6, scope: !2497, inlinedAt: !3597)
!3607 = !DILocation(line: 178, column: 18, scope: !2497, inlinedAt: !3597)
!3608 = distinct !DIAssignID()
!3609 = !DILocation(line: 1020, column: 10, scope: !3581, inlinedAt: !3591)
!3610 = !DILocation(line: 1021, column: 1, scope: !3581, inlinedAt: !3591)
!3611 = !DILocation(line: 1009, column: 3, scope: !3570)
!3612 = distinct !DIAssignID()
!3613 = !DILocation(line: 0, scope: !3581)
!3614 = !DILocation(line: 1018, column: 3, scope: !3581)
!3615 = !DILocation(line: 1018, column: 30, scope: !3581)
!3616 = distinct !DIAssignID()
!3617 = distinct !DIAssignID()
!3618 = !DILocation(line: 0, scope: !2497, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 1019, column: 3, scope: !3581)
!3620 = !DILocation(line: 174, column: 12, scope: !2497, inlinedAt: !3619)
!3621 = distinct !DIAssignID()
!3622 = !DILocation(line: 175, column: 8, scope: !2510, inlinedAt: !3619)
!3623 = !DILocation(line: 175, column: 19, scope: !2510, inlinedAt: !3619)
!3624 = !DILocation(line: 176, column: 5, scope: !2510, inlinedAt: !3619)
!3625 = !DILocation(line: 177, column: 6, scope: !2497, inlinedAt: !3619)
!3626 = !DILocation(line: 177, column: 17, scope: !2497, inlinedAt: !3619)
!3627 = distinct !DIAssignID()
!3628 = !DILocation(line: 178, column: 6, scope: !2497, inlinedAt: !3619)
!3629 = !DILocation(line: 178, column: 18, scope: !2497, inlinedAt: !3619)
!3630 = distinct !DIAssignID()
!3631 = !DILocation(line: 1020, column: 10, scope: !3581)
!3632 = !DILocation(line: 1021, column: 1, scope: !3581)
!3633 = !DILocation(line: 1020, column: 3, scope: !3581)
!3634 = distinct !DISubprogram(name: "quotearg_custom", scope: !682, file: !682, line: 1024, type: !3635, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!59, !101, !101, !101}
!3637 = !{!3638, !3639, !3640}
!3638 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3634, file: !682, line: 1024, type: !101)
!3639 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3634, file: !682, line: 1024, type: !101)
!3640 = !DILocalVariable(name: "arg", arg: 3, scope: !3634, file: !682, line: 1025, type: !101)
!3641 = distinct !DIAssignID()
!3642 = !DILocation(line: 0, scope: !3634)
!3643 = !DILocation(line: 0, scope: !3570, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 1027, column: 10, scope: !3634)
!3645 = !DILocation(line: 0, scope: !3581, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1009, column: 10, scope: !3570, inlinedAt: !3644)
!3647 = !DILocation(line: 1018, column: 3, scope: !3581, inlinedAt: !3646)
!3648 = !DILocation(line: 1018, column: 30, scope: !3581, inlinedAt: !3646)
!3649 = distinct !DIAssignID()
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 0, scope: !2497, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 1019, column: 3, scope: !3581, inlinedAt: !3646)
!3653 = !DILocation(line: 174, column: 12, scope: !2497, inlinedAt: !3652)
!3654 = distinct !DIAssignID()
!3655 = !DILocation(line: 175, column: 8, scope: !2510, inlinedAt: !3652)
!3656 = !DILocation(line: 175, column: 19, scope: !2510, inlinedAt: !3652)
!3657 = !DILocation(line: 176, column: 5, scope: !2510, inlinedAt: !3652)
!3658 = !DILocation(line: 177, column: 6, scope: !2497, inlinedAt: !3652)
!3659 = !DILocation(line: 177, column: 17, scope: !2497, inlinedAt: !3652)
!3660 = distinct !DIAssignID()
!3661 = !DILocation(line: 178, column: 6, scope: !2497, inlinedAt: !3652)
!3662 = !DILocation(line: 178, column: 18, scope: !2497, inlinedAt: !3652)
!3663 = distinct !DIAssignID()
!3664 = !DILocation(line: 1020, column: 10, scope: !3581, inlinedAt: !3646)
!3665 = !DILocation(line: 1021, column: 1, scope: !3581, inlinedAt: !3646)
!3666 = !DILocation(line: 1027, column: 3, scope: !3634)
!3667 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !682, file: !682, line: 1031, type: !3668, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!59, !101, !101, !101, !104}
!3670 = !{!3671, !3672, !3673, !3674}
!3671 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3667, file: !682, line: 1031, type: !101)
!3672 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3667, file: !682, line: 1031, type: !101)
!3673 = !DILocalVariable(name: "arg", arg: 3, scope: !3667, file: !682, line: 1032, type: !101)
!3674 = !DILocalVariable(name: "argsize", arg: 4, scope: !3667, file: !682, line: 1032, type: !104)
!3675 = distinct !DIAssignID()
!3676 = !DILocation(line: 0, scope: !3667)
!3677 = !DILocation(line: 0, scope: !3581, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1034, column: 10, scope: !3667)
!3679 = !DILocation(line: 1018, column: 3, scope: !3581, inlinedAt: !3678)
!3680 = !DILocation(line: 1018, column: 30, scope: !3581, inlinedAt: !3678)
!3681 = distinct !DIAssignID()
!3682 = distinct !DIAssignID()
!3683 = !DILocation(line: 0, scope: !2497, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 1019, column: 3, scope: !3581, inlinedAt: !3678)
!3685 = !DILocation(line: 174, column: 12, scope: !2497, inlinedAt: !3684)
!3686 = distinct !DIAssignID()
!3687 = !DILocation(line: 175, column: 8, scope: !2510, inlinedAt: !3684)
!3688 = !DILocation(line: 175, column: 19, scope: !2510, inlinedAt: !3684)
!3689 = !DILocation(line: 176, column: 5, scope: !2510, inlinedAt: !3684)
!3690 = !DILocation(line: 177, column: 6, scope: !2497, inlinedAt: !3684)
!3691 = !DILocation(line: 177, column: 17, scope: !2497, inlinedAt: !3684)
!3692 = distinct !DIAssignID()
!3693 = !DILocation(line: 178, column: 6, scope: !2497, inlinedAt: !3684)
!3694 = !DILocation(line: 178, column: 18, scope: !2497, inlinedAt: !3684)
!3695 = distinct !DIAssignID()
!3696 = !DILocation(line: 1020, column: 10, scope: !3581, inlinedAt: !3678)
!3697 = !DILocation(line: 1021, column: 1, scope: !3581, inlinedAt: !3678)
!3698 = !DILocation(line: 1034, column: 3, scope: !3667)
!3699 = distinct !DISubprogram(name: "quote_n_mem", scope: !682, file: !682, line: 1049, type: !3700, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!101, !57, !101, !104}
!3702 = !{!3703, !3704, !3705}
!3703 = !DILocalVariable(name: "n", arg: 1, scope: !3699, file: !682, line: 1049, type: !57)
!3704 = !DILocalVariable(name: "arg", arg: 2, scope: !3699, file: !682, line: 1049, type: !101)
!3705 = !DILocalVariable(name: "argsize", arg: 3, scope: !3699, file: !682, line: 1049, type: !104)
!3706 = !DILocation(line: 0, scope: !3699)
!3707 = !DILocation(line: 1051, column: 10, scope: !3699)
!3708 = !DILocation(line: 1051, column: 3, scope: !3699)
!3709 = distinct !DISubprogram(name: "quote_mem", scope: !682, file: !682, line: 1055, type: !3710, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!101, !101, !104}
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "arg", arg: 1, scope: !3709, file: !682, line: 1055, type: !101)
!3714 = !DILocalVariable(name: "argsize", arg: 2, scope: !3709, file: !682, line: 1055, type: !104)
!3715 = !DILocation(line: 0, scope: !3709)
!3716 = !DILocation(line: 0, scope: !3699, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 1057, column: 10, scope: !3709)
!3718 = !DILocation(line: 1051, column: 10, scope: !3699, inlinedAt: !3717)
!3719 = !DILocation(line: 1057, column: 3, scope: !3709)
!3720 = distinct !DISubprogram(name: "quote_n", scope: !682, file: !682, line: 1061, type: !3721, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!101, !57, !101}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "n", arg: 1, scope: !3720, file: !682, line: 1061, type: !57)
!3725 = !DILocalVariable(name: "arg", arg: 2, scope: !3720, file: !682, line: 1061, type: !101)
!3726 = !DILocation(line: 0, scope: !3720)
!3727 = !DILocation(line: 0, scope: !3699, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 1063, column: 10, scope: !3720)
!3729 = !DILocation(line: 1051, column: 10, scope: !3699, inlinedAt: !3728)
!3730 = !DILocation(line: 1063, column: 3, scope: !3720)
!3731 = distinct !DISubprogram(name: "quote", scope: !682, file: !682, line: 1067, type: !3732, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !706, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!101, !101}
!3734 = !{!3735}
!3735 = !DILocalVariable(name: "arg", arg: 1, scope: !3731, file: !682, line: 1067, type: !101)
!3736 = !DILocation(line: 0, scope: !3731)
!3737 = !DILocation(line: 0, scope: !3720, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 1069, column: 10, scope: !3731)
!3739 = !DILocation(line: 0, scope: !3699, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 1063, column: 10, scope: !3720, inlinedAt: !3738)
!3741 = !DILocation(line: 1051, column: 10, scope: !3699, inlinedAt: !3740)
!3742 = !DILocation(line: 1069, column: 3, scope: !3731)
!3743 = distinct !DISubprogram(name: "safe_read", scope: !943, file: !943, line: 56, type: !3744, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !942, retainedNodes: !3747)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!985, !57, !3746, !983}
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !943, line: 49, baseType: !98)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DILocalVariable(name: "fd", arg: 1, scope: !3743, file: !943, line: 56, type: !57)
!3749 = !DILocalVariable(name: "buf", arg: 2, scope: !3743, file: !943, line: 56, type: !3746)
!3750 = !DILocalVariable(name: "count", arg: 3, scope: !3743, file: !943, line: 56, type: !983)
!3751 = !DILocalVariable(name: "result", scope: !3752, file: !943, line: 60, type: !3755)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !943, line: 59, column: 5)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !943, line: 58, column: 3)
!3754 = distinct !DILexicalBlock(scope: !3743, file: !943, line: 58, column: 3)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3756, line: 108, baseType: !1427)
!3756 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3757 = !DILocation(line: 0, scope: !3743)
!3758 = !DILocation(line: 58, column: 3, scope: !3743)
!3759 = !DILocation(line: 62, column: 11, scope: !3752)
!3760 = !DILocation(line: 60, column: 24, scope: !3752)
!3761 = !DILocation(line: 0, scope: !3752)
!3762 = !DILocation(line: 62, column: 13, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3752, file: !943, line: 62, column: 11)
!3764 = !DILocation(line: 64, column: 16, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3763, file: !943, line: 64, column: 16)
!3766 = !DILocation(line: 64, column: 16, scope: !3763)
!3767 = distinct !{!3767, !3768, !3769}
!3768 = !DILocation(line: 58, column: 3, scope: !3754)
!3769 = !DILocation(line: 70, column: 5, scope: !3754)
!3770 = !DILocation(line: 66, column: 22, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3765, file: !943, line: 66, column: 16)
!3772 = !DILocation(line: 0, scope: !3753)
!3773 = !DILocation(line: 71, column: 1, scope: !3743)
!3774 = distinct !DISubprogram(name: "mkstemp_safer", scope: !951, file: !951, line: 31, type: !3775, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!57, !59}
!3777 = !{!3778}
!3778 = !DILocalVariable(name: "templ", arg: 1, scope: !3774, file: !951, line: 31, type: !59)
!3779 = !DILocation(line: 0, scope: !3774)
!3780 = !DILocation(line: 33, column: 20, scope: !3774)
!3781 = !DILocation(line: 33, column: 10, scope: !3774)
!3782 = !DILocation(line: 33, column: 3, scope: !3774)
!3783 = !DISubprogram(name: "mkstemp", scope: !1231, file: !1231, line: 695, type: !3775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3784 = distinct !DISubprogram(name: "mkostemp_safer", scope: !951, file: !951, line: 40, type: !3785, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!57, !59, !57}
!3787 = !{!3788, !3789}
!3788 = !DILocalVariable(name: "templ", arg: 1, scope: !3784, file: !951, line: 40, type: !59)
!3789 = !DILocalVariable(name: "flags", arg: 2, scope: !3784, file: !951, line: 40, type: !57)
!3790 = !DILocation(line: 0, scope: !3784)
!3791 = !DILocation(line: 42, column: 25, scope: !3784)
!3792 = !DILocation(line: 42, column: 10, scope: !3784)
!3793 = !DILocation(line: 42, column: 3, scope: !3784)
!3794 = !DISubprogram(name: "mkostemp", scope: !1231, file: !1231, line: 749, type: !3785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3795 = distinct !DISubprogram(name: "path_search", scope: !782, file: !782, line: 92, type: !3796, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!57, !59, !104, !101, !101, !215}
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3808, !3809}
!3799 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3795, file: !782, line: 92, type: !59)
!3800 = !DILocalVariable(name: "tmpl_len", arg: 2, scope: !3795, file: !782, line: 92, type: !104)
!3801 = !DILocalVariable(name: "dir", arg: 3, scope: !3795, file: !782, line: 92, type: !101)
!3802 = !DILocalVariable(name: "pfx", arg: 4, scope: !3795, file: !782, line: 92, type: !101)
!3803 = !DILocalVariable(name: "try_tmpdir", arg: 5, scope: !3795, file: !782, line: 93, type: !215)
!3804 = !DILocalVariable(name: "plen", scope: !3795, file: !782, line: 95, type: !104)
!3805 = !DILocalVariable(name: "d", scope: !3806, file: !782, line: 110, type: !101)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !782, line: 109, column: 5)
!3807 = distinct !DILexicalBlock(scope: !3795, file: !782, line: 108, column: 7)
!3808 = !DILocalVariable(name: "dlen", scope: !3795, file: !782, line: 143, type: !104)
!3809 = !DILocalVariable(name: "add_slash", scope: !3795, file: !782, line: 145, type: !215)
!3810 = distinct !DIAssignID()
!3811 = distinct !DIAssignID()
!3812 = distinct !DIAssignID()
!3813 = !DILocation(line: 0, scope: !3795)
!3814 = !DILocation(line: 96, column: 8, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3795, file: !782, line: 96, column: 7)
!3816 = !DILocation(line: 96, column: 12, scope: !3815)
!3817 = !DILocation(line: 96, column: 16, scope: !3815)
!3818 = !DILocation(line: 96, column: 7, scope: !3795)
!3819 = !DILocation(line: 103, column: 14, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3815, file: !782, line: 102, column: 5)
!3821 = !DILocation(line: 104, column: 11, scope: !3820)
!3822 = !DILocation(line: 0, scope: !3815)
!3823 = !DILocation(line: 108, column: 7, scope: !3795)
!3824 = !DILocation(line: 110, column: 23, scope: !3806)
!3825 = !DILocation(line: 0, scope: !3806)
!3826 = !DILocation(line: 111, column: 13, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3806, file: !782, line: 111, column: 11)
!3828 = !DILocation(line: 111, column: 21, scope: !3827)
!3829 = !DILocalVariable(name: "buf", scope: !3830, file: !782, line: 81, type: !3833)
!3830 = distinct !DISubprogram(name: "direxists", scope: !782, file: !782, line: 79, type: !1363, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !3831)
!3831 = !{!3832, !3829}
!3832 = !DILocalVariable(name: "dir", arg: 1, scope: !3830, file: !782, line: 79, type: !101)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3834, line: 44, size: 1024, elements: !3835)
!3834 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!3835 = !{!3836, !3838, !3840, !3842, !3844, !3846, !3848, !3849, !3850, !3851, !3853, !3854, !3856, !3864, !3865, !3866}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3833, file: !3834, line: 46, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !255, line: 145, baseType: !106)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3833, file: !3834, line: 47, baseType: !3839, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !255, line: 148, baseType: !106)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3833, file: !3834, line: 48, baseType: !3841, size: 32, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !255, line: 150, baseType: !69)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3833, file: !3834, line: 49, baseType: !3843, size: 32, offset: 160)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !255, line: 151, baseType: !69)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3833, file: !3834, line: 50, baseType: !3845, size: 32, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !255, line: 146, baseType: !69)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3833, file: !3834, line: 51, baseType: !3847, size: 32, offset: 224)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !255, line: 147, baseType: !69)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3833, file: !3834, line: 52, baseType: !3837, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3833, file: !3834, line: 53, baseType: !3837, size: 64, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3833, file: !3834, line: 54, baseType: !254, size: 64, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3833, file: !3834, line: 55, baseType: !3852, size: 32, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !255, line: 175, baseType: !57)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3833, file: !3834, line: 56, baseType: !57, size: 32, offset: 480)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3833, file: !3834, line: 57, baseType: !3855, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !255, line: 180, baseType: !256)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3833, file: !3834, line: 65, baseType: !3857, size: 128, offset: 576)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3858, line: 11, size: 128, elements: !3859)
!3858 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3859 = !{!3860, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3857, file: !3858, line: 16, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !255, line: 160, baseType: !256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3857, file: !3858, line: 21, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !255, line: 197, baseType: !256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3833, file: !3834, line: 66, baseType: !3857, size: 128, offset: 704)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3833, file: !3834, line: 67, baseType: !3857, size: 128, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3833, file: !3834, line: 79, baseType: !3867, size: 64, offset: 960)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !112)
!3868 = !DILocation(line: 0, scope: !3830, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 111, column: 24, scope: !3827)
!3870 = !DILocation(line: 81, column: 3, scope: !3830, inlinedAt: !3869)
!3871 = !DILocation(line: 82, column: 10, scope: !3830, inlinedAt: !3869)
!3872 = !DILocation(line: 82, column: 43, scope: !3830, inlinedAt: !3869)
!3873 = !DILocation(line: 82, column: 48, scope: !3830, inlinedAt: !3869)
!3874 = !DILocation(line: 83, column: 1, scope: !3830, inlinedAt: !3869)
!3875 = !DILocation(line: 111, column: 11, scope: !3806)
!3876 = !DILocation(line: 113, column: 20, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3827, file: !782, line: 113, column: 16)
!3878 = !DILocation(line: 113, column: 28, scope: !3877)
!3879 = !DILocation(line: 0, scope: !3830, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 113, column: 31, scope: !3877)
!3881 = !DILocation(line: 81, column: 3, scope: !3830, inlinedAt: !3880)
!3882 = !DILocation(line: 82, column: 10, scope: !3830, inlinedAt: !3880)
!3883 = !DILocation(line: 82, column: 43, scope: !3830, inlinedAt: !3880)
!3884 = !DILocation(line: 82, column: 48, scope: !3830, inlinedAt: !3880)
!3885 = !DILocation(line: 83, column: 1, scope: !3830, inlinedAt: !3880)
!3886 = !DILocation(line: 113, column: 16, scope: !3827)
!3887 = !DILocation(line: 118, column: 11, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3795, file: !782, line: 118, column: 7)
!3889 = !DILocation(line: 118, column: 7, scope: !3795)
!3890 = !DILocation(line: 0, scope: !3830, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 132, column: 11, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !782, line: 132, column: 11)
!3893 = distinct !DILexicalBlock(scope: !3888, file: !782, line: 119, column: 5)
!3894 = !DILocation(line: 81, column: 3, scope: !3830, inlinedAt: !3891)
!3895 = !DILocation(line: 82, column: 10, scope: !3830, inlinedAt: !3891)
!3896 = !DILocation(line: 82, column: 43, scope: !3830, inlinedAt: !3891)
!3897 = !DILocation(line: 82, column: 48, scope: !3830, inlinedAt: !3891)
!3898 = !DILocation(line: 83, column: 1, scope: !3830, inlinedAt: !3891)
!3899 = !DILocation(line: 132, column: 11, scope: !3893)
!3900 = !DILocation(line: 138, column: 11, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !782, line: 137, column: 9)
!3902 = distinct !DILexicalBlock(scope: !3892, file: !782, line: 134, column: 16)
!3903 = !DILocation(line: 139, column: 11, scope: !3901)
!3904 = !DILocation(line: 143, column: 17, scope: !3795)
!3905 = !DILocation(line: 149, column: 20, scope: !3795)
!3906 = !DILocation(line: 149, column: 25, scope: !3795)
!3907 = !DILocation(line: 149, column: 29, scope: !3795)
!3908 = !DILocation(line: 153, column: 25, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3795, file: !782, line: 153, column: 7)
!3910 = !DILocation(line: 153, column: 23, scope: !3909)
!3911 = !DILocation(line: 153, column: 35, scope: !3909)
!3912 = !DILocation(line: 153, column: 46, scope: !3909)
!3913 = !DILocation(line: 153, column: 16, scope: !3909)
!3914 = !DILocation(line: 153, column: 7, scope: !3795)
!3915 = !DILocation(line: 155, column: 7, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3909, file: !782, line: 154, column: 5)
!3917 = !DILocation(line: 156, column: 7, scope: !3916)
!3918 = !DILocalVariable(name: "__dest", arg: 1, scope: !3919, file: !1338, line: 26, type: !1341)
!3919 = distinct !DISubprogram(name: "memcpy", scope: !1338, file: !1338, line: 26, type: !1339, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !952, retainedNodes: !3920)
!3920 = !{!3918, !3921, !3922}
!3921 = !DILocalVariable(name: "__src", arg: 2, scope: !3919, file: !1338, line: 26, type: !1254)
!3922 = !DILocalVariable(name: "__len", arg: 3, scope: !3919, file: !1338, line: 26, type: !104)
!3923 = !DILocation(line: 0, scope: !3919, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 159, column: 3, scope: !3795)
!3925 = !DILocation(line: 29, column: 10, scope: !3919, inlinedAt: !3924)
!3926 = !DILocation(line: 160, column: 3, scope: !3795)
!3927 = !DILocation(line: 161, column: 3, scope: !3795)
!3928 = !DILocation(line: 162, column: 1, scope: !3795)
!3929 = !DISubprogram(name: "secure_getenv", scope: !1231, file: !1231, line: 646, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3930 = !DISubprogram(name: "stat", scope: !3931, file: !3931, line: 205, type: !3932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3931 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!57, !1101, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3936 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !782, file: !782, line: 160, type: !3937, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!57, !3939, !57, !106, !1101, null}
!3939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!3940 = distinct !DISubprogram(name: "fd_safer", scope: !956, file: !956, line: 37, type: !1581, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !3941)
!3941 = !{!3942, !3943, !3946}
!3942 = !DILocalVariable(name: "fd", arg: 1, scope: !3940, file: !956, line: 37, type: !57)
!3943 = !DILocalVariable(name: "f", scope: !3944, file: !956, line: 41, type: !57)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !956, line: 40, column: 5)
!3945 = distinct !DILexicalBlock(scope: !3940, file: !956, line: 39, column: 7)
!3946 = !DILocalVariable(name: "saved_errno", scope: !3944, file: !956, line: 42, type: !57)
!3947 = !DILocation(line: 0, scope: !3940)
!3948 = !DILocation(line: 39, column: 26, scope: !3945)
!3949 = !DILocation(line: 41, column: 15, scope: !3944)
!3950 = !DILocation(line: 0, scope: !3944)
!3951 = !DILocation(line: 42, column: 25, scope: !3944)
!3952 = !DILocation(line: 43, column: 7, scope: !3944)
!3953 = !DILocation(line: 44, column: 13, scope: !3944)
!3954 = !DILocation(line: 46, column: 5, scope: !3944)
!3955 = !DILocation(line: 48, column: 3, scope: !3940)
!3956 = distinct !DISubprogram(name: "version_etc_arn", scope: !791, file: !791, line: 61, type: !3957, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3993)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3959, !101, !101, !101, !99, !104}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3961, file: !232, line: 51, baseType: !57, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3961, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3961, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3961, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3961, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3961, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3961, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3961, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3961, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3961, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3961, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3961, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3961, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3961, file: !232, line: 70, baseType: !3977, size: 64, offset: 832)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3961, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3961, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3961, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3961, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3961, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3961, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3961, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3961, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3961, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3961, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3961, file: !232, line: 93, baseType: !3977, size: 64, offset: 1344)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3961, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3961, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3961, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3961, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !3999}
!3994 = !DILocalVariable(name: "stream", arg: 1, scope: !3956, file: !791, line: 61, type: !3959)
!3995 = !DILocalVariable(name: "command_name", arg: 2, scope: !3956, file: !791, line: 62, type: !101)
!3996 = !DILocalVariable(name: "package", arg: 3, scope: !3956, file: !791, line: 62, type: !101)
!3997 = !DILocalVariable(name: "version", arg: 4, scope: !3956, file: !791, line: 63, type: !101)
!3998 = !DILocalVariable(name: "authors", arg: 5, scope: !3956, file: !791, line: 64, type: !99)
!3999 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3956, file: !791, line: 64, type: !104)
!4000 = !DILocation(line: 0, scope: !3956)
!4001 = !DILocation(line: 66, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3956, file: !791, line: 66, column: 7)
!4003 = !DILocation(line: 66, column: 7, scope: !3956)
!4004 = !DILocation(line: 67, column: 5, scope: !4002)
!4005 = !DILocation(line: 69, column: 5, scope: !4002)
!4006 = !DILocation(line: 83, column: 3, scope: !3956)
!4007 = !DILocation(line: 85, column: 3, scope: !3956)
!4008 = !DILocation(line: 88, column: 3, scope: !3956)
!4009 = !DILocation(line: 95, column: 3, scope: !3956)
!4010 = !DILocation(line: 97, column: 3, scope: !3956)
!4011 = !DILocation(line: 105, column: 7, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3956, file: !791, line: 98, column: 5)
!4013 = !DILocation(line: 106, column: 7, scope: !4012)
!4014 = !DILocation(line: 109, column: 7, scope: !4012)
!4015 = !DILocation(line: 110, column: 7, scope: !4012)
!4016 = !DILocation(line: 113, column: 7, scope: !4012)
!4017 = !DILocation(line: 115, column: 7, scope: !4012)
!4018 = !DILocation(line: 120, column: 7, scope: !4012)
!4019 = !DILocation(line: 122, column: 7, scope: !4012)
!4020 = !DILocation(line: 127, column: 7, scope: !4012)
!4021 = !DILocation(line: 129, column: 7, scope: !4012)
!4022 = !DILocation(line: 134, column: 7, scope: !4012)
!4023 = !DILocation(line: 137, column: 7, scope: !4012)
!4024 = !DILocation(line: 142, column: 7, scope: !4012)
!4025 = !DILocation(line: 145, column: 7, scope: !4012)
!4026 = !DILocation(line: 150, column: 7, scope: !4012)
!4027 = !DILocation(line: 154, column: 7, scope: !4012)
!4028 = !DILocation(line: 159, column: 7, scope: !4012)
!4029 = !DILocation(line: 163, column: 7, scope: !4012)
!4030 = !DILocation(line: 170, column: 7, scope: !4012)
!4031 = !DILocation(line: 174, column: 7, scope: !4012)
!4032 = !DILocation(line: 176, column: 1, scope: !3956)
!4033 = distinct !DISubprogram(name: "version_etc_ar", scope: !791, file: !791, line: 183, type: !4034, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{null, !3959, !101, !101, !101, !99}
!4036 = !{!4037, !4038, !4039, !4040, !4041, !4042}
!4037 = !DILocalVariable(name: "stream", arg: 1, scope: !4033, file: !791, line: 183, type: !3959)
!4038 = !DILocalVariable(name: "command_name", arg: 2, scope: !4033, file: !791, line: 184, type: !101)
!4039 = !DILocalVariable(name: "package", arg: 3, scope: !4033, file: !791, line: 184, type: !101)
!4040 = !DILocalVariable(name: "version", arg: 4, scope: !4033, file: !791, line: 185, type: !101)
!4041 = !DILocalVariable(name: "authors", arg: 5, scope: !4033, file: !791, line: 185, type: !99)
!4042 = !DILocalVariable(name: "n_authors", scope: !4033, file: !791, line: 187, type: !104)
!4043 = !DILocation(line: 0, scope: !4033)
!4044 = !DILocation(line: 189, column: 8, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4033, file: !791, line: 189, column: 3)
!4046 = !DILocation(line: 189, scope: !4045)
!4047 = !DILocation(line: 189, column: 23, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !791, line: 189, column: 3)
!4049 = !DILocation(line: 189, column: 3, scope: !4045)
!4050 = !DILocation(line: 189, column: 52, scope: !4048)
!4051 = distinct !{!4051, !4049, !4052, !1157}
!4052 = !DILocation(line: 190, column: 5, scope: !4045)
!4053 = !DILocation(line: 191, column: 3, scope: !4033)
!4054 = !DILocation(line: 192, column: 1, scope: !4033)
!4055 = distinct !DISubprogram(name: "version_etc_va", scope: !791, file: !791, line: 199, type: !4056, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4068)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !3959, !101, !101, !101, !4058}
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !597, line: 52, baseType: !4059)
!4059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !599, line: 12, baseType: !4060)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !791, baseType: !4061)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4062)
!4062 = !{!4063, !4064, !4065, !4066, !4067}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4061, file: !791, line: 192, baseType: !98, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4061, file: !791, line: 192, baseType: !98, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4061, file: !791, line: 192, baseType: !98, size: 64, offset: 128)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4061, file: !791, line: 192, baseType: !57, size: 32, offset: 192)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4061, file: !791, line: 192, baseType: !57, size: 32, offset: 224)
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074, !4075}
!4069 = !DILocalVariable(name: "stream", arg: 1, scope: !4055, file: !791, line: 199, type: !3959)
!4070 = !DILocalVariable(name: "command_name", arg: 2, scope: !4055, file: !791, line: 200, type: !101)
!4071 = !DILocalVariable(name: "package", arg: 3, scope: !4055, file: !791, line: 200, type: !101)
!4072 = !DILocalVariable(name: "version", arg: 4, scope: !4055, file: !791, line: 201, type: !101)
!4073 = !DILocalVariable(name: "authors", arg: 5, scope: !4055, file: !791, line: 201, type: !4058)
!4074 = !DILocalVariable(name: "n_authors", scope: !4055, file: !791, line: 203, type: !104)
!4075 = !DILocalVariable(name: "authtab", scope: !4055, file: !791, line: 204, type: !4076)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 640, elements: !122)
!4077 = distinct !DIAssignID()
!4078 = !DILocation(line: 0, scope: !4055)
!4079 = !DILocation(line: 204, column: 3, scope: !4055)
!4080 = !DILocation(line: 208, column: 35, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !791, line: 206, column: 3)
!4082 = distinct !DILexicalBlock(scope: !4055, file: !791, line: 206, column: 3)
!4083 = !DILocation(line: 208, column: 33, scope: !4081)
!4084 = !DILocation(line: 208, column: 67, scope: !4081)
!4085 = !DILocation(line: 206, column: 3, scope: !4082)
!4086 = !DILocation(line: 208, column: 14, scope: !4081)
!4087 = !DILocation(line: 0, scope: !4082)
!4088 = !DILocation(line: 211, column: 3, scope: !4055)
!4089 = !DILocation(line: 213, column: 1, scope: !4055)
!4090 = distinct !DISubprogram(name: "version_etc", scope: !791, file: !791, line: 230, type: !4091, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !3959, !101, !101, !101, null}
!4093 = !{!4094, !4095, !4096, !4097, !4098}
!4094 = !DILocalVariable(name: "stream", arg: 1, scope: !4090, file: !791, line: 230, type: !3959)
!4095 = !DILocalVariable(name: "command_name", arg: 2, scope: !4090, file: !791, line: 231, type: !101)
!4096 = !DILocalVariable(name: "package", arg: 3, scope: !4090, file: !791, line: 231, type: !101)
!4097 = !DILocalVariable(name: "version", arg: 4, scope: !4090, file: !791, line: 232, type: !101)
!4098 = !DILocalVariable(name: "authors", scope: !4090, file: !791, line: 234, type: !4058)
!4099 = distinct !DIAssignID()
!4100 = !DILocation(line: 0, scope: !4090)
!4101 = !DILocation(line: 234, column: 3, scope: !4090)
!4102 = !DILocation(line: 235, column: 3, scope: !4090)
!4103 = !DILocation(line: 236, column: 3, scope: !4090)
!4104 = !DILocation(line: 237, column: 3, scope: !4090)
!4105 = !DILocation(line: 238, column: 1, scope: !4090)
!4106 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !791, file: !791, line: 241, type: !637, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957)
!4107 = !DILocation(line: 243, column: 3, scope: !4106)
!4108 = !DILocation(line: 248, column: 3, scope: !4106)
!4109 = !DILocation(line: 254, column: 3, scope: !4106)
!4110 = !DILocation(line: 259, column: 3, scope: !4106)
!4111 = !DILocation(line: 261, column: 1, scope: !4106)
!4112 = distinct !DISubprogram(name: "xnrealloc", scope: !4113, file: !4113, line: 147, type: !4114, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4116)
!4113 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!98, !98, !104, !104}
!4116 = !{!4117, !4118, !4119}
!4117 = !DILocalVariable(name: "p", arg: 1, scope: !4112, file: !4113, line: 147, type: !98)
!4118 = !DILocalVariable(name: "n", arg: 2, scope: !4112, file: !4113, line: 147, type: !104)
!4119 = !DILocalVariable(name: "s", arg: 3, scope: !4112, file: !4113, line: 147, type: !104)
!4120 = !DILocation(line: 0, scope: !4112)
!4121 = !DILocalVariable(name: "p", arg: 1, scope: !4122, file: !964, line: 83, type: !98)
!4122 = distinct !DISubprogram(name: "xreallocarray", scope: !964, file: !964, line: 83, type: !4114, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4123)
!4123 = !{!4121, !4124, !4125}
!4124 = !DILocalVariable(name: "n", arg: 2, scope: !4122, file: !964, line: 83, type: !104)
!4125 = !DILocalVariable(name: "s", arg: 3, scope: !4122, file: !964, line: 83, type: !104)
!4126 = !DILocation(line: 0, scope: !4122, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 149, column: 10, scope: !4112)
!4128 = !DILocation(line: 85, column: 25, scope: !4122, inlinedAt: !4127)
!4129 = !DILocalVariable(name: "p", arg: 1, scope: !4130, file: !964, line: 37, type: !98)
!4130 = distinct !DISubprogram(name: "check_nonnull", scope: !964, file: !964, line: 37, type: !4131, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!98, !98}
!4133 = !{!4129}
!4134 = !DILocation(line: 0, scope: !4130, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 85, column: 10, scope: !4122, inlinedAt: !4127)
!4136 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4135)
!4137 = distinct !DILexicalBlock(scope: !4130, file: !964, line: 39, column: 7)
!4138 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4135)
!4139 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4135)
!4140 = !DILocation(line: 149, column: 3, scope: !4112)
!4141 = !DILocation(line: 0, scope: !4122)
!4142 = !DILocation(line: 85, column: 25, scope: !4122)
!4143 = !DILocation(line: 0, scope: !4130, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 85, column: 10, scope: !4122)
!4145 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4144)
!4146 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4144)
!4147 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4144)
!4148 = !DILocation(line: 85, column: 3, scope: !4122)
!4149 = distinct !DISubprogram(name: "xmalloc", scope: !964, file: !964, line: 47, type: !4150, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4152)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!98, !104}
!4152 = !{!4153}
!4153 = !DILocalVariable(name: "s", arg: 1, scope: !4149, file: !964, line: 47, type: !104)
!4154 = !DILocation(line: 0, scope: !4149)
!4155 = !DILocation(line: 49, column: 25, scope: !4149)
!4156 = !DILocation(line: 0, scope: !4130, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 49, column: 10, scope: !4149)
!4158 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4157)
!4159 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4157)
!4160 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4157)
!4161 = !DILocation(line: 49, column: 3, scope: !4149)
!4162 = distinct !DISubprogram(name: "ximalloc", scope: !964, file: !964, line: 53, type: !4163, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!98, !983}
!4165 = !{!4166}
!4166 = !DILocalVariable(name: "s", arg: 1, scope: !4162, file: !964, line: 53, type: !983)
!4167 = !DILocation(line: 0, scope: !4162)
!4168 = !DILocalVariable(name: "s", arg: 1, scope: !4169, file: !4170, line: 55, type: !983)
!4169 = distinct !DISubprogram(name: "imalloc", scope: !4170, file: !4170, line: 55, type: !4163, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4171)
!4170 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4171 = !{!4168}
!4172 = !DILocation(line: 0, scope: !4169, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 55, column: 25, scope: !4162)
!4174 = !DILocation(line: 57, column: 26, scope: !4169, inlinedAt: !4173)
!4175 = !DILocation(line: 0, scope: !4130, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 55, column: 10, scope: !4162)
!4177 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4176)
!4178 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4176)
!4179 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4176)
!4180 = !DILocation(line: 55, column: 3, scope: !4162)
!4181 = distinct !DISubprogram(name: "xcharalloc", scope: !964, file: !964, line: 59, type: !4182, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!59, !104}
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "n", arg: 1, scope: !4181, file: !964, line: 59, type: !104)
!4186 = !DILocation(line: 0, scope: !4181)
!4187 = !DILocation(line: 0, scope: !4149, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 61, column: 10, scope: !4181)
!4189 = !DILocation(line: 49, column: 25, scope: !4149, inlinedAt: !4188)
!4190 = !DILocation(line: 0, scope: !4130, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 49, column: 10, scope: !4149, inlinedAt: !4188)
!4192 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4191)
!4193 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4191)
!4194 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4191)
!4195 = !DILocation(line: 61, column: 3, scope: !4181)
!4196 = distinct !DISubprogram(name: "xrealloc", scope: !964, file: !964, line: 68, type: !1826, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4197)
!4197 = !{!4198, !4199}
!4198 = !DILocalVariable(name: "p", arg: 1, scope: !4196, file: !964, line: 68, type: !98)
!4199 = !DILocalVariable(name: "s", arg: 2, scope: !4196, file: !964, line: 68, type: !104)
!4200 = !DILocation(line: 0, scope: !4196)
!4201 = !DILocalVariable(name: "ptr", arg: 1, scope: !4202, file: !1825, line: 2057, type: !98)
!4202 = distinct !DISubprogram(name: "rpl_realloc", scope: !1825, file: !1825, line: 2057, type: !1826, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4203)
!4203 = !{!4201, !4204}
!4204 = !DILocalVariable(name: "size", arg: 2, scope: !4202, file: !1825, line: 2057, type: !104)
!4205 = !DILocation(line: 0, scope: !4202, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 70, column: 25, scope: !4196)
!4207 = !DILocation(line: 2059, column: 24, scope: !4202, inlinedAt: !4206)
!4208 = !DILocation(line: 2059, column: 10, scope: !4202, inlinedAt: !4206)
!4209 = !DILocation(line: 0, scope: !4130, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 70, column: 10, scope: !4196)
!4211 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4210)
!4212 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4210)
!4213 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4210)
!4214 = !DILocation(line: 70, column: 3, scope: !4196)
!4215 = distinct !DISubprogram(name: "xirealloc", scope: !964, file: !964, line: 74, type: !4216, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4218)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!98, !98, !983}
!4218 = !{!4219, !4220}
!4219 = !DILocalVariable(name: "p", arg: 1, scope: !4215, file: !964, line: 74, type: !98)
!4220 = !DILocalVariable(name: "s", arg: 2, scope: !4215, file: !964, line: 74, type: !983)
!4221 = !DILocation(line: 0, scope: !4215)
!4222 = !DILocalVariable(name: "p", arg: 1, scope: !4223, file: !4170, line: 66, type: !98)
!4223 = distinct !DISubprogram(name: "irealloc", scope: !4170, file: !4170, line: 66, type: !4216, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4224)
!4224 = !{!4222, !4225}
!4225 = !DILocalVariable(name: "s", arg: 2, scope: !4223, file: !4170, line: 66, type: !983)
!4226 = !DILocation(line: 0, scope: !4223, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 76, column: 25, scope: !4215)
!4228 = !DILocation(line: 0, scope: !4202, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 68, column: 26, scope: !4223, inlinedAt: !4227)
!4230 = !DILocation(line: 2059, column: 24, scope: !4202, inlinedAt: !4229)
!4231 = !DILocation(line: 2059, column: 10, scope: !4202, inlinedAt: !4229)
!4232 = !DILocation(line: 0, scope: !4130, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 76, column: 10, scope: !4215)
!4234 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4233)
!4235 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4233)
!4236 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4233)
!4237 = !DILocation(line: 76, column: 3, scope: !4215)
!4238 = distinct !DISubprogram(name: "xireallocarray", scope: !964, file: !964, line: 89, type: !4239, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!98, !98, !983, !983}
!4241 = !{!4242, !4243, !4244}
!4242 = !DILocalVariable(name: "p", arg: 1, scope: !4238, file: !964, line: 89, type: !98)
!4243 = !DILocalVariable(name: "n", arg: 2, scope: !4238, file: !964, line: 89, type: !983)
!4244 = !DILocalVariable(name: "s", arg: 3, scope: !4238, file: !964, line: 89, type: !983)
!4245 = !DILocation(line: 0, scope: !4238)
!4246 = !DILocalVariable(name: "p", arg: 1, scope: !4247, file: !4170, line: 98, type: !98)
!4247 = distinct !DISubprogram(name: "ireallocarray", scope: !4170, file: !4170, line: 98, type: !4239, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4248)
!4248 = !{!4246, !4249, !4250}
!4249 = !DILocalVariable(name: "n", arg: 2, scope: !4247, file: !4170, line: 98, type: !983)
!4250 = !DILocalVariable(name: "s", arg: 3, scope: !4247, file: !4170, line: 98, type: !983)
!4251 = !DILocation(line: 0, scope: !4247, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 91, column: 25, scope: !4238)
!4253 = !DILocation(line: 101, column: 13, scope: !4247, inlinedAt: !4252)
!4254 = !DILocation(line: 0, scope: !4130, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 91, column: 10, scope: !4238)
!4256 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4255)
!4257 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4255)
!4258 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4255)
!4259 = !DILocation(line: 91, column: 3, scope: !4238)
!4260 = distinct !DISubprogram(name: "xnmalloc", scope: !964, file: !964, line: 98, type: !4261, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!98, !104, !104}
!4263 = !{!4264, !4265}
!4264 = !DILocalVariable(name: "n", arg: 1, scope: !4260, file: !964, line: 98, type: !104)
!4265 = !DILocalVariable(name: "s", arg: 2, scope: !4260, file: !964, line: 98, type: !104)
!4266 = !DILocation(line: 0, scope: !4260)
!4267 = !DILocation(line: 0, scope: !4122, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 100, column: 10, scope: !4260)
!4269 = !DILocation(line: 85, column: 25, scope: !4122, inlinedAt: !4268)
!4270 = !DILocation(line: 0, scope: !4130, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 85, column: 10, scope: !4122, inlinedAt: !4268)
!4272 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4271)
!4273 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4271)
!4274 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4271)
!4275 = !DILocation(line: 100, column: 3, scope: !4260)
!4276 = distinct !DISubprogram(name: "xinmalloc", scope: !964, file: !964, line: 104, type: !4277, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!98, !983, !983}
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "n", arg: 1, scope: !4276, file: !964, line: 104, type: !983)
!4281 = !DILocalVariable(name: "s", arg: 2, scope: !4276, file: !964, line: 104, type: !983)
!4282 = !DILocation(line: 0, scope: !4276)
!4283 = !DILocation(line: 0, scope: !4238, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 106, column: 10, scope: !4276)
!4285 = !DILocation(line: 0, scope: !4247, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 91, column: 25, scope: !4238, inlinedAt: !4284)
!4287 = !DILocation(line: 101, column: 13, scope: !4247, inlinedAt: !4286)
!4288 = !DILocation(line: 0, scope: !4130, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 91, column: 10, scope: !4238, inlinedAt: !4284)
!4290 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4289)
!4291 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4289)
!4292 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4289)
!4293 = !DILocation(line: 106, column: 3, scope: !4276)
!4294 = distinct !DISubprogram(name: "x2realloc", scope: !964, file: !964, line: 116, type: !4295, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!98, !98, !970}
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "p", arg: 1, scope: !4294, file: !964, line: 116, type: !98)
!4299 = !DILocalVariable(name: "ps", arg: 2, scope: !4294, file: !964, line: 116, type: !970)
!4300 = !DILocation(line: 0, scope: !4294)
!4301 = !DILocation(line: 0, scope: !967, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 118, column: 10, scope: !4294)
!4303 = !DILocation(line: 178, column: 14, scope: !967, inlinedAt: !4302)
!4304 = !DILocation(line: 180, column: 9, scope: !4305, inlinedAt: !4302)
!4305 = distinct !DILexicalBlock(scope: !967, file: !964, line: 180, column: 7)
!4306 = !DILocation(line: 180, column: 7, scope: !967, inlinedAt: !4302)
!4307 = !DILocation(line: 182, column: 13, scope: !4308, inlinedAt: !4302)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !964, line: 182, column: 11)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !964, line: 181, column: 5)
!4310 = !DILocation(line: 182, column: 11, scope: !4309, inlinedAt: !4302)
!4311 = !DILocation(line: 197, column: 11, scope: !4312, inlinedAt: !4302)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !964, line: 197, column: 11)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !964, line: 195, column: 5)
!4314 = !DILocation(line: 197, column: 11, scope: !4313, inlinedAt: !4302)
!4315 = !DILocation(line: 198, column: 9, scope: !4312, inlinedAt: !4302)
!4316 = !DILocation(line: 0, scope: !4122, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 201, column: 7, scope: !967, inlinedAt: !4302)
!4318 = !DILocation(line: 85, column: 25, scope: !4122, inlinedAt: !4317)
!4319 = !DILocation(line: 0, scope: !4130, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 85, column: 10, scope: !4122, inlinedAt: !4317)
!4321 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4320)
!4322 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4320)
!4323 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4320)
!4324 = !DILocation(line: 202, column: 7, scope: !967, inlinedAt: !4302)
!4325 = !DILocation(line: 118, column: 3, scope: !4294)
!4326 = !DILocation(line: 0, scope: !967)
!4327 = !DILocation(line: 178, column: 14, scope: !967)
!4328 = !DILocation(line: 180, column: 9, scope: !4305)
!4329 = !DILocation(line: 180, column: 7, scope: !967)
!4330 = !DILocation(line: 182, column: 13, scope: !4308)
!4331 = !DILocation(line: 182, column: 11, scope: !4309)
!4332 = !DILocation(line: 190, column: 30, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4308, file: !964, line: 183, column: 9)
!4334 = !DILocation(line: 191, column: 16, scope: !4333)
!4335 = !DILocation(line: 191, column: 13, scope: !4333)
!4336 = !DILocation(line: 192, column: 9, scope: !4333)
!4337 = !DILocation(line: 197, column: 11, scope: !4312)
!4338 = !DILocation(line: 197, column: 11, scope: !4313)
!4339 = !DILocation(line: 198, column: 9, scope: !4312)
!4340 = !DILocation(line: 0, scope: !4122, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 201, column: 7, scope: !967)
!4342 = !DILocation(line: 85, column: 25, scope: !4122, inlinedAt: !4341)
!4343 = !DILocation(line: 0, scope: !4130, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 85, column: 10, scope: !4122, inlinedAt: !4341)
!4345 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4344)
!4346 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4344)
!4347 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4344)
!4348 = !DILocation(line: 202, column: 7, scope: !967)
!4349 = !DILocation(line: 203, column: 3, scope: !967)
!4350 = !DILocation(line: 0, scope: !979)
!4351 = !DILocation(line: 230, column: 14, scope: !979)
!4352 = !DILocation(line: 238, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !979, file: !964, line: 238, column: 7)
!4354 = !DILocation(line: 238, column: 7, scope: !979)
!4355 = !DILocation(line: 240, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !979, file: !964, line: 240, column: 7)
!4357 = !DILocation(line: 240, column: 18, scope: !4356)
!4358 = !DILocation(line: 253, column: 8, scope: !979)
!4359 = !DILocation(line: 256, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !979, file: !964, line: 256, column: 7)
!4361 = !DILocation(line: 256, column: 7, scope: !979)
!4362 = !DILocation(line: 258, column: 27, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4360, file: !964, line: 257, column: 5)
!4364 = !DILocation(line: 259, column: 32, scope: !4363)
!4365 = !DILocation(line: 260, column: 5, scope: !4363)
!4366 = !DILocation(line: 262, column: 9, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !979, file: !964, line: 262, column: 7)
!4368 = !DILocation(line: 262, column: 7, scope: !979)
!4369 = !DILocation(line: 263, column: 9, scope: !4367)
!4370 = !DILocation(line: 263, column: 5, scope: !4367)
!4371 = !DILocation(line: 264, column: 9, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !979, file: !964, line: 264, column: 7)
!4373 = !DILocation(line: 264, column: 14, scope: !4372)
!4374 = !DILocation(line: 265, column: 7, scope: !4372)
!4375 = !DILocation(line: 265, column: 11, scope: !4372)
!4376 = !DILocation(line: 266, column: 11, scope: !4372)
!4377 = !DILocation(line: 267, column: 14, scope: !4372)
!4378 = !DILocation(line: 264, column: 7, scope: !979)
!4379 = !DILocation(line: 268, column: 5, scope: !4372)
!4380 = !DILocation(line: 0, scope: !4196, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 269, column: 8, scope: !979)
!4382 = !DILocation(line: 0, scope: !4202, inlinedAt: !4383)
!4383 = distinct !DILocation(line: 70, column: 25, scope: !4196, inlinedAt: !4381)
!4384 = !DILocation(line: 2059, column: 24, scope: !4202, inlinedAt: !4383)
!4385 = !DILocation(line: 2059, column: 10, scope: !4202, inlinedAt: !4383)
!4386 = !DILocation(line: 0, scope: !4130, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 70, column: 10, scope: !4196, inlinedAt: !4381)
!4388 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4387)
!4389 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4387)
!4390 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4387)
!4391 = !DILocation(line: 270, column: 7, scope: !979)
!4392 = !DILocation(line: 271, column: 3, scope: !979)
!4393 = distinct !DISubprogram(name: "xzalloc", scope: !964, file: !964, line: 279, type: !4150, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4394)
!4394 = !{!4395}
!4395 = !DILocalVariable(name: "s", arg: 1, scope: !4393, file: !964, line: 279, type: !104)
!4396 = !DILocation(line: 0, scope: !4393)
!4397 = !DILocalVariable(name: "n", arg: 1, scope: !4398, file: !964, line: 294, type: !104)
!4398 = distinct !DISubprogram(name: "xcalloc", scope: !964, file: !964, line: 294, type: !4261, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4399)
!4399 = !{!4397, !4400}
!4400 = !DILocalVariable(name: "s", arg: 2, scope: !4398, file: !964, line: 294, type: !104)
!4401 = !DILocation(line: 0, scope: !4398, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 281, column: 10, scope: !4393)
!4403 = !DILocation(line: 296, column: 25, scope: !4398, inlinedAt: !4402)
!4404 = !DILocation(line: 0, scope: !4130, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 296, column: 10, scope: !4398, inlinedAt: !4402)
!4406 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4405)
!4407 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4405)
!4408 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4405)
!4409 = !DILocation(line: 281, column: 3, scope: !4393)
!4410 = !DISubprogram(name: "calloc", scope: !1231, file: !1231, line: 543, type: !4261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4411 = !DILocation(line: 0, scope: !4398)
!4412 = !DILocation(line: 296, column: 25, scope: !4398)
!4413 = !DILocation(line: 0, scope: !4130, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 296, column: 10, scope: !4398)
!4415 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4414)
!4416 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4414)
!4417 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4414)
!4418 = !DILocation(line: 296, column: 3, scope: !4398)
!4419 = distinct !DISubprogram(name: "xizalloc", scope: !964, file: !964, line: 285, type: !4163, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4420)
!4420 = !{!4421}
!4421 = !DILocalVariable(name: "s", arg: 1, scope: !4419, file: !964, line: 285, type: !983)
!4422 = !DILocation(line: 0, scope: !4419)
!4423 = !DILocalVariable(name: "n", arg: 1, scope: !4424, file: !964, line: 300, type: !983)
!4424 = distinct !DISubprogram(name: "xicalloc", scope: !964, file: !964, line: 300, type: !4277, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4425)
!4425 = !{!4423, !4426}
!4426 = !DILocalVariable(name: "s", arg: 2, scope: !4424, file: !964, line: 300, type: !983)
!4427 = !DILocation(line: 0, scope: !4424, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 287, column: 10, scope: !4419)
!4429 = !DILocalVariable(name: "n", arg: 1, scope: !4430, file: !4170, line: 77, type: !983)
!4430 = distinct !DISubprogram(name: "icalloc", scope: !4170, file: !4170, line: 77, type: !4277, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4431)
!4431 = !{!4429, !4432}
!4432 = !DILocalVariable(name: "s", arg: 2, scope: !4430, file: !4170, line: 77, type: !983)
!4433 = !DILocation(line: 0, scope: !4430, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 302, column: 25, scope: !4424, inlinedAt: !4428)
!4435 = !DILocation(line: 91, column: 10, scope: !4430, inlinedAt: !4434)
!4436 = !DILocation(line: 0, scope: !4130, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 302, column: 10, scope: !4424, inlinedAt: !4428)
!4438 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4437)
!4439 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4437)
!4440 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4437)
!4441 = !DILocation(line: 287, column: 3, scope: !4419)
!4442 = !DILocation(line: 0, scope: !4424)
!4443 = !DILocation(line: 0, scope: !4430, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 302, column: 25, scope: !4424)
!4445 = !DILocation(line: 91, column: 10, scope: !4430, inlinedAt: !4444)
!4446 = !DILocation(line: 0, scope: !4130, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 302, column: 10, scope: !4424)
!4448 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4447)
!4449 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4447)
!4450 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4447)
!4451 = !DILocation(line: 302, column: 3, scope: !4424)
!4452 = distinct !DISubprogram(name: "xmemdup", scope: !964, file: !964, line: 310, type: !4453, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!98, !1255, !104}
!4455 = !{!4456, !4457}
!4456 = !DILocalVariable(name: "p", arg: 1, scope: !4452, file: !964, line: 310, type: !1255)
!4457 = !DILocalVariable(name: "s", arg: 2, scope: !4452, file: !964, line: 310, type: !104)
!4458 = !DILocation(line: 0, scope: !4452)
!4459 = !DILocation(line: 0, scope: !4149, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 312, column: 18, scope: !4452)
!4461 = !DILocation(line: 49, column: 25, scope: !4149, inlinedAt: !4460)
!4462 = !DILocation(line: 0, scope: !4130, inlinedAt: !4463)
!4463 = distinct !DILocation(line: 49, column: 10, scope: !4149, inlinedAt: !4460)
!4464 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4463)
!4465 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4463)
!4466 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4463)
!4467 = !DILocalVariable(name: "__dest", arg: 1, scope: !4468, file: !1338, line: 26, type: !1341)
!4468 = distinct !DISubprogram(name: "memcpy", scope: !1338, file: !1338, line: 26, type: !1339, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4469)
!4469 = !{!4467, !4470, !4471}
!4470 = !DILocalVariable(name: "__src", arg: 2, scope: !4468, file: !1338, line: 26, type: !1254)
!4471 = !DILocalVariable(name: "__len", arg: 3, scope: !4468, file: !1338, line: 26, type: !104)
!4472 = !DILocation(line: 0, scope: !4468, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 312, column: 10, scope: !4452)
!4474 = !DILocation(line: 29, column: 10, scope: !4468, inlinedAt: !4473)
!4475 = !DILocation(line: 312, column: 3, scope: !4452)
!4476 = distinct !DISubprogram(name: "ximemdup", scope: !964, file: !964, line: 316, type: !4477, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!98, !1255, !983}
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "p", arg: 1, scope: !4476, file: !964, line: 316, type: !1255)
!4481 = !DILocalVariable(name: "s", arg: 2, scope: !4476, file: !964, line: 316, type: !983)
!4482 = !DILocation(line: 0, scope: !4476)
!4483 = !DILocation(line: 0, scope: !4162, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 318, column: 18, scope: !4476)
!4485 = !DILocation(line: 0, scope: !4169, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 55, column: 25, scope: !4162, inlinedAt: !4484)
!4487 = !DILocation(line: 57, column: 26, scope: !4169, inlinedAt: !4486)
!4488 = !DILocation(line: 0, scope: !4130, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 55, column: 10, scope: !4162, inlinedAt: !4484)
!4490 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4489)
!4491 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4489)
!4492 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4489)
!4493 = !DILocation(line: 0, scope: !4468, inlinedAt: !4494)
!4494 = distinct !DILocation(line: 318, column: 10, scope: !4476)
!4495 = !DILocation(line: 29, column: 10, scope: !4468, inlinedAt: !4494)
!4496 = !DILocation(line: 318, column: 3, scope: !4476)
!4497 = distinct !DISubprogram(name: "ximemdup0", scope: !964, file: !964, line: 325, type: !4498, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4500)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!59, !1255, !983}
!4500 = !{!4501, !4502, !4503}
!4501 = !DILocalVariable(name: "p", arg: 1, scope: !4497, file: !964, line: 325, type: !1255)
!4502 = !DILocalVariable(name: "s", arg: 2, scope: !4497, file: !964, line: 325, type: !983)
!4503 = !DILocalVariable(name: "result", scope: !4497, file: !964, line: 327, type: !59)
!4504 = !DILocation(line: 0, scope: !4497)
!4505 = !DILocation(line: 327, column: 30, scope: !4497)
!4506 = !DILocation(line: 0, scope: !4162, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 327, column: 18, scope: !4497)
!4508 = !DILocation(line: 0, scope: !4169, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 55, column: 25, scope: !4162, inlinedAt: !4507)
!4510 = !DILocation(line: 57, column: 26, scope: !4169, inlinedAt: !4509)
!4511 = !DILocation(line: 0, scope: !4130, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 55, column: 10, scope: !4162, inlinedAt: !4507)
!4513 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4512)
!4514 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4512)
!4515 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4512)
!4516 = !DILocation(line: 328, column: 3, scope: !4497)
!4517 = !DILocation(line: 328, column: 13, scope: !4497)
!4518 = !DILocation(line: 0, scope: !4468, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 329, column: 10, scope: !4497)
!4520 = !DILocation(line: 29, column: 10, scope: !4468, inlinedAt: !4519)
!4521 = !DILocation(line: 329, column: 3, scope: !4497)
!4522 = distinct !DISubprogram(name: "xstrdup", scope: !964, file: !964, line: 335, type: !1233, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !4523)
!4523 = !{!4524}
!4524 = !DILocalVariable(name: "string", arg: 1, scope: !4522, file: !964, line: 335, type: !101)
!4525 = !DILocation(line: 0, scope: !4522)
!4526 = !DILocation(line: 337, column: 27, scope: !4522)
!4527 = !DILocation(line: 337, column: 43, scope: !4522)
!4528 = !DILocation(line: 0, scope: !4452, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 337, column: 10, scope: !4522)
!4530 = !DILocation(line: 0, scope: !4149, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 312, column: 18, scope: !4452, inlinedAt: !4529)
!4532 = !DILocation(line: 49, column: 25, scope: !4149, inlinedAt: !4531)
!4533 = !DILocation(line: 0, scope: !4130, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 49, column: 10, scope: !4149, inlinedAt: !4531)
!4535 = !DILocation(line: 39, column: 8, scope: !4137, inlinedAt: !4534)
!4536 = !DILocation(line: 39, column: 7, scope: !4130, inlinedAt: !4534)
!4537 = !DILocation(line: 40, column: 5, scope: !4137, inlinedAt: !4534)
!4538 = !DILocation(line: 0, scope: !4468, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 312, column: 10, scope: !4452, inlinedAt: !4529)
!4540 = !DILocation(line: 29, column: 10, scope: !4468, inlinedAt: !4539)
!4541 = !DILocation(line: 337, column: 3, scope: !4522)
!4542 = distinct !DISubprogram(name: "xalloc_die", scope: !887, file: !887, line: 32, type: !637, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4543)
!4543 = !{!4544}
!4544 = !DILocalVariable(name: "__errstatus", scope: !4545, file: !887, line: 34, type: !4546)
!4545 = distinct !DILexicalBlock(scope: !4542, file: !887, line: 34, column: 3)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4547 = !DILocation(line: 34, column: 3, scope: !4545)
!4548 = !DILocation(line: 0, scope: !4545)
!4549 = !DILocation(line: 40, column: 3, scope: !4542)
!4550 = distinct !DISubprogram(name: "close_stream", scope: !1001, file: !1001, line: 55, type: !4551, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1000, retainedNodes: !4587)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!57, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4555)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4555, file: !232, line: 51, baseType: !57, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4555, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4555, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4555, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4555, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4555, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4555, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4555, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4555, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4555, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4555, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4555, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4555, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4555, file: !232, line: 70, baseType: !4571, size: 64, offset: 832)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4555, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4555, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4555, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4555, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4555, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4555, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4555, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4555, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4555, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4555, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4555, file: !232, line: 93, baseType: !4571, size: 64, offset: 1344)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4555, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4555, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4555, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4555, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4587 = !{!4588, !4589, !4591, !4592}
!4588 = !DILocalVariable(name: "stream", arg: 1, scope: !4550, file: !1001, line: 55, type: !4553)
!4589 = !DILocalVariable(name: "some_pending", scope: !4550, file: !1001, line: 57, type: !4590)
!4590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4591 = !DILocalVariable(name: "prev_fail", scope: !4550, file: !1001, line: 58, type: !4590)
!4592 = !DILocalVariable(name: "fclose_fail", scope: !4550, file: !1001, line: 59, type: !4590)
!4593 = !DILocation(line: 0, scope: !4550)
!4594 = !DILocation(line: 57, column: 30, scope: !4550)
!4595 = !DILocalVariable(name: "__stream", arg: 1, scope: !4596, file: !2092, line: 135, type: !4553)
!4596 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2092, file: !2092, line: 135, type: !4551, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1000, retainedNodes: !4597)
!4597 = !{!4595}
!4598 = !DILocation(line: 0, scope: !4596, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 58, column: 27, scope: !4550)
!4600 = !DILocation(line: 137, column: 10, scope: !4596, inlinedAt: !4599)
!4601 = !DILocation(line: 58, column: 43, scope: !4550)
!4602 = !DILocation(line: 59, column: 29, scope: !4550)
!4603 = !DILocation(line: 59, column: 45, scope: !4550)
!4604 = !DILocation(line: 69, column: 17, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4550, file: !1001, line: 69, column: 7)
!4606 = !DILocation(line: 57, column: 50, scope: !4550)
!4607 = !DILocation(line: 69, column: 33, scope: !4605)
!4608 = !DILocation(line: 69, column: 53, scope: !4605)
!4609 = !DILocation(line: 69, column: 59, scope: !4605)
!4610 = !DILocation(line: 69, column: 7, scope: !4550)
!4611 = !DILocation(line: 71, column: 11, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4605, file: !1001, line: 70, column: 5)
!4613 = !DILocation(line: 72, column: 9, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4612, file: !1001, line: 71, column: 11)
!4615 = !DILocation(line: 72, column: 15, scope: !4614)
!4616 = !DILocation(line: 77, column: 1, scope: !4550)
!4617 = !DISubprogram(name: "__fpending", scope: !2227, file: !2227, line: 75, type: !4618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!104, !4553}
!4620 = distinct !DISubprogram(name: "rpl_fclose", scope: !1003, file: !1003, line: 58, type: !4621, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4657)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!57, !4623}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4625)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4625, file: !232, line: 51, baseType: !57, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4625, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4625, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4625, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4625, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4625, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4625, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4625, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4625, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4625, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4625, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4625, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4625, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4625, file: !232, line: 70, baseType: !4641, size: 64, offset: 832)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4625, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4625, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4625, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4625, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4625, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4625, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4625, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4625, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4625, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4625, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4625, file: !232, line: 93, baseType: !4641, size: 64, offset: 1344)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4625, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4625, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4625, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4625, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4657 = !{!4658, !4659, !4660, !4661}
!4658 = !DILocalVariable(name: "fp", arg: 1, scope: !4620, file: !1003, line: 58, type: !4623)
!4659 = !DILocalVariable(name: "saved_errno", scope: !4620, file: !1003, line: 60, type: !57)
!4660 = !DILocalVariable(name: "fd", scope: !4620, file: !1003, line: 63, type: !57)
!4661 = !DILocalVariable(name: "result", scope: !4620, file: !1003, line: 74, type: !57)
!4662 = !DILocation(line: 0, scope: !4620)
!4663 = !DILocation(line: 63, column: 12, scope: !4620)
!4664 = !DILocation(line: 64, column: 10, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4620, file: !1003, line: 64, column: 7)
!4666 = !DILocation(line: 64, column: 7, scope: !4620)
!4667 = !DILocation(line: 65, column: 12, scope: !4665)
!4668 = !DILocation(line: 65, column: 5, scope: !4665)
!4669 = !DILocation(line: 70, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4620, file: !1003, line: 70, column: 7)
!4671 = !DILocation(line: 70, column: 23, scope: !4670)
!4672 = !DILocation(line: 70, column: 33, scope: !4670)
!4673 = !DILocation(line: 70, column: 26, scope: !4670)
!4674 = !DILocation(line: 70, column: 59, scope: !4670)
!4675 = !DILocation(line: 71, column: 7, scope: !4670)
!4676 = !DILocation(line: 71, column: 10, scope: !4670)
!4677 = !DILocation(line: 70, column: 7, scope: !4620)
!4678 = !DILocation(line: 100, column: 12, scope: !4620)
!4679 = !DILocation(line: 105, column: 7, scope: !4620)
!4680 = !DILocation(line: 72, column: 19, scope: !4670)
!4681 = !DILocation(line: 105, column: 19, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4620, file: !1003, line: 105, column: 7)
!4683 = !DILocation(line: 107, column: 13, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4682, file: !1003, line: 106, column: 5)
!4685 = !DILocation(line: 109, column: 5, scope: !4684)
!4686 = !DILocation(line: 112, column: 1, scope: !4620)
!4687 = !DISubprogram(name: "fclose", scope: !597, file: !597, line: 178, type: !4621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4688 = !DISubprogram(name: "__freading", scope: !2227, file: !2227, line: 51, type: !4621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4689 = distinct !DISubprogram(name: "fd_safer_flag", scope: !1005, file: !1005, line: 40, type: !914, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1004, retainedNodes: !4690)
!4690 = !{!4691, !4692, !4693, !4696}
!4691 = !DILocalVariable(name: "fd", arg: 1, scope: !4689, file: !1005, line: 40, type: !57)
!4692 = !DILocalVariable(name: "flag", arg: 2, scope: !4689, file: !1005, line: 40, type: !57)
!4693 = !DILocalVariable(name: "f", scope: !4694, file: !1005, line: 44, type: !57)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !1005, line: 43, column: 5)
!4695 = distinct !DILexicalBlock(scope: !4689, file: !1005, line: 42, column: 7)
!4696 = !DILocalVariable(name: "saved_errno", scope: !4694, file: !1005, line: 45, type: !57)
!4697 = !DILocation(line: 0, scope: !4689)
!4698 = !DILocation(line: 42, column: 26, scope: !4695)
!4699 = !DILocation(line: 44, column: 15, scope: !4694)
!4700 = !DILocation(line: 0, scope: !4694)
!4701 = !DILocation(line: 45, column: 25, scope: !4694)
!4702 = !DILocation(line: 46, column: 7, scope: !4694)
!4703 = !DILocation(line: 47, column: 13, scope: !4694)
!4704 = !DILocation(line: 49, column: 5, scope: !4694)
!4705 = !DILocation(line: 51, column: 3, scope: !4689)
!4706 = distinct !DISubprogram(name: "dup_safer_flag", scope: !1007, file: !1007, line: 34, type: !914, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !4707)
!4707 = !{!4708, !4709}
!4708 = !DILocalVariable(name: "fd", arg: 1, scope: !4706, file: !1007, line: 34, type: !57)
!4709 = !DILocalVariable(name: "flag", arg: 2, scope: !4706, file: !1007, line: 34, type: !57)
!4710 = !DILocation(line: 0, scope: !4706)
!4711 = !DILocation(line: 36, column: 27, scope: !4706)
!4712 = !DILocation(line: 36, column: 21, scope: !4706)
!4713 = !DILocation(line: 36, column: 10, scope: !4706)
!4714 = !DILocation(line: 36, column: 3, scope: !4706)
!4715 = distinct !DISubprogram(name: "rpl_fflush", scope: !1009, file: !1009, line: 130, type: !4716, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1008, retainedNodes: !4752)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!57, !4718}
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4720)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4720, file: !232, line: 51, baseType: !57, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4720, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4720, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4720, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4720, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4720, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4720, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4720, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4720, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4720, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4720, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4720, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4720, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4720, file: !232, line: 70, baseType: !4736, size: 64, offset: 832)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4720, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4720, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4720, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4720, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4720, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4720, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4720, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4720, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4720, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4720, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4720, file: !232, line: 93, baseType: !4736, size: 64, offset: 1344)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4720, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4720, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4720, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4720, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4752 = !{!4753}
!4753 = !DILocalVariable(name: "stream", arg: 1, scope: !4715, file: !1009, line: 130, type: !4718)
!4754 = !DILocation(line: 0, scope: !4715)
!4755 = !DILocation(line: 151, column: 14, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4715, file: !1009, line: 151, column: 7)
!4757 = !DILocation(line: 151, column: 22, scope: !4756)
!4758 = !DILocation(line: 151, column: 27, scope: !4756)
!4759 = !DILocation(line: 151, column: 7, scope: !4715)
!4760 = !DILocation(line: 152, column: 12, scope: !4756)
!4761 = !DILocation(line: 152, column: 5, scope: !4756)
!4762 = !DILocalVariable(name: "fp", arg: 1, scope: !4763, file: !1009, line: 42, type: !4718)
!4763 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1009, file: !1009, line: 42, type: !4764, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1008, retainedNodes: !4766)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{null, !4718}
!4766 = !{!4762}
!4767 = !DILocation(line: 0, scope: !4763, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 157, column: 3, scope: !4715)
!4769 = !DILocation(line: 44, column: 12, scope: !4770, inlinedAt: !4768)
!4770 = distinct !DILexicalBlock(scope: !4763, file: !1009, line: 44, column: 7)
!4771 = !DILocation(line: 44, column: 19, scope: !4770, inlinedAt: !4768)
!4772 = !DILocation(line: 44, column: 7, scope: !4763, inlinedAt: !4768)
!4773 = !DILocation(line: 46, column: 5, scope: !4770, inlinedAt: !4768)
!4774 = !DILocation(line: 159, column: 10, scope: !4715)
!4775 = !DILocation(line: 159, column: 3, scope: !4715)
!4776 = !DILocation(line: 236, column: 1, scope: !4715)
!4777 = !DISubprogram(name: "fflush", scope: !597, file: !597, line: 230, type: !4716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4778 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !894, file: !894, line: 100, type: !4779, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4782)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!104, !2418, !101, !104, !4781}
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!4782 = !{!4783, !4784, !4785, !4786, !4787}
!4783 = !DILocalVariable(name: "pwc", arg: 1, scope: !4778, file: !894, line: 100, type: !2418)
!4784 = !DILocalVariable(name: "s", arg: 2, scope: !4778, file: !894, line: 100, type: !101)
!4785 = !DILocalVariable(name: "n", arg: 3, scope: !4778, file: !894, line: 100, type: !104)
!4786 = !DILocalVariable(name: "ps", arg: 4, scope: !4778, file: !894, line: 100, type: !4781)
!4787 = !DILocalVariable(name: "ret", scope: !4778, file: !894, line: 130, type: !104)
!4788 = !DILocation(line: 0, scope: !4778)
!4789 = !DILocation(line: 105, column: 9, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4778, file: !894, line: 105, column: 7)
!4791 = !DILocation(line: 105, column: 7, scope: !4778)
!4792 = !DILocation(line: 117, column: 10, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4778, file: !894, line: 117, column: 7)
!4794 = !DILocation(line: 117, column: 7, scope: !4778)
!4795 = !DILocation(line: 130, column: 16, scope: !4778)
!4796 = !DILocation(line: 135, column: 11, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4778, file: !894, line: 135, column: 7)
!4798 = !DILocation(line: 135, column: 25, scope: !4797)
!4799 = !DILocation(line: 135, column: 30, scope: !4797)
!4800 = !DILocation(line: 135, column: 7, scope: !4778)
!4801 = !DILocalVariable(name: "ps", arg: 1, scope: !4802, file: !1916, line: 1135, type: !4781)
!4802 = distinct !DISubprogram(name: "mbszero", scope: !1916, file: !1916, line: 1135, type: !4803, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4805)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{null, !4781}
!4805 = !{!4801}
!4806 = !DILocation(line: 0, scope: !4802, inlinedAt: !4807)
!4807 = distinct !DILocation(line: 137, column: 5, scope: !4797)
!4808 = !DILocalVariable(name: "__dest", arg: 1, scope: !4809, file: !1338, line: 57, type: !98)
!4809 = distinct !DISubprogram(name: "memset", scope: !1338, file: !1338, line: 57, type: !2401, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !897, retainedNodes: !4810)
!4810 = !{!4808, !4811, !4812}
!4811 = !DILocalVariable(name: "__ch", arg: 2, scope: !4809, file: !1338, line: 57, type: !57)
!4812 = !DILocalVariable(name: "__len", arg: 3, scope: !4809, file: !1338, line: 57, type: !104)
!4813 = !DILocation(line: 0, scope: !4809, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 1137, column: 3, scope: !4802, inlinedAt: !4807)
!4815 = !DILocation(line: 59, column: 10, scope: !4809, inlinedAt: !4814)
!4816 = !DILocation(line: 137, column: 5, scope: !4797)
!4817 = !DILocation(line: 138, column: 11, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4778, file: !894, line: 138, column: 7)
!4819 = !DILocation(line: 138, column: 7, scope: !4778)
!4820 = !DILocation(line: 139, column: 5, scope: !4818)
!4821 = !DILocation(line: 143, column: 26, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4778, file: !894, line: 143, column: 7)
!4823 = !DILocation(line: 143, column: 41, scope: !4822)
!4824 = !DILocation(line: 143, column: 7, scope: !4778)
!4825 = !DILocation(line: 145, column: 15, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !894, line: 145, column: 11)
!4827 = distinct !DILexicalBlock(scope: !4822, file: !894, line: 144, column: 5)
!4828 = !DILocation(line: 145, column: 11, scope: !4827)
!4829 = !DILocation(line: 146, column: 32, scope: !4826)
!4830 = !DILocation(line: 146, column: 16, scope: !4826)
!4831 = !DILocation(line: 146, column: 14, scope: !4826)
!4832 = !DILocation(line: 146, column: 9, scope: !4826)
!4833 = !DILocation(line: 286, column: 1, scope: !4778)
!4834 = !DISubprogram(name: "mbsinit", scope: !4835, file: !4835, line: 293, type: !4836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4835 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!57, !4838}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!4840 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1011, file: !1011, line: 27, type: !4114, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4841)
!4841 = !{!4842, !4843, !4844, !4845}
!4842 = !DILocalVariable(name: "ptr", arg: 1, scope: !4840, file: !1011, line: 27, type: !98)
!4843 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4840, file: !1011, line: 27, type: !104)
!4844 = !DILocalVariable(name: "size", arg: 3, scope: !4840, file: !1011, line: 27, type: !104)
!4845 = !DILocalVariable(name: "nbytes", scope: !4840, file: !1011, line: 29, type: !104)
!4846 = !DILocation(line: 0, scope: !4840)
!4847 = !DILocation(line: 30, column: 7, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4840, file: !1011, line: 30, column: 7)
!4849 = !DILocation(line: 30, column: 7, scope: !4840)
!4850 = !DILocation(line: 32, column: 7, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4848, file: !1011, line: 31, column: 5)
!4852 = !DILocation(line: 32, column: 13, scope: !4851)
!4853 = !DILocation(line: 33, column: 7, scope: !4851)
!4854 = !DILocalVariable(name: "ptr", arg: 1, scope: !4855, file: !1825, line: 2057, type: !98)
!4855 = distinct !DISubprogram(name: "rpl_realloc", scope: !1825, file: !1825, line: 2057, type: !1826, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !4856)
!4856 = !{!4854, !4857}
!4857 = !DILocalVariable(name: "size", arg: 2, scope: !4855, file: !1825, line: 2057, type: !104)
!4858 = !DILocation(line: 0, scope: !4855, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 37, column: 10, scope: !4840)
!4860 = !DILocation(line: 2059, column: 24, scope: !4855, inlinedAt: !4859)
!4861 = !DILocation(line: 2059, column: 10, scope: !4855, inlinedAt: !4859)
!4862 = !DILocation(line: 37, column: 3, scope: !4840)
!4863 = !DILocation(line: 38, column: 1, scope: !4840)
!4864 = distinct !DISubprogram(name: "dup_safer", scope: !1013, file: !1013, line: 31, type: !1581, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4865)
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "fd", arg: 1, scope: !4864, file: !1013, line: 31, type: !57)
!4867 = !DILocation(line: 0, scope: !4864)
!4868 = !DILocation(line: 33, column: 10, scope: !4864)
!4869 = !DILocation(line: 33, column: 3, scope: !4864)
!4870 = distinct !DISubprogram(name: "rpl_fcntl", scope: !913, file: !913, line: 202, type: !2120, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4871)
!4871 = !{!4872, !4873, !4874, !4885, !4886, !4889, !4891, !4895}
!4872 = !DILocalVariable(name: "fd", arg: 1, scope: !4870, file: !913, line: 202, type: !57)
!4873 = !DILocalVariable(name: "action", arg: 2, scope: !4870, file: !913, line: 202, type: !57)
!4874 = !DILocalVariable(name: "arg", scope: !4870, file: !913, line: 208, type: !4875)
!4875 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4876, line: 12, baseType: !4877)
!4876 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!4877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !913, baseType: !4878)
!4878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4879)
!4879 = !{!4880, !4881, !4882, !4883, !4884}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4878, file: !913, line: 208, baseType: !98, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4878, file: !913, line: 208, baseType: !98, size: 64, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4878, file: !913, line: 208, baseType: !98, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4878, file: !913, line: 208, baseType: !57, size: 32, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4878, file: !913, line: 208, baseType: !57, size: 32, offset: 224)
!4885 = !DILocalVariable(name: "result", scope: !4870, file: !913, line: 211, type: !57)
!4886 = !DILocalVariable(name: "target", scope: !4887, file: !913, line: 216, type: !57)
!4887 = distinct !DILexicalBlock(scope: !4888, file: !913, line: 215, column: 7)
!4888 = distinct !DILexicalBlock(scope: !4870, file: !913, line: 213, column: 5)
!4889 = !DILocalVariable(name: "target", scope: !4890, file: !913, line: 223, type: !57)
!4890 = distinct !DILexicalBlock(scope: !4888, file: !913, line: 222, column: 7)
!4891 = !DILocalVariable(name: "x", scope: !4892, file: !913, line: 418, type: !57)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !913, line: 417, column: 13)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !913, line: 261, column: 11)
!4894 = distinct !DILexicalBlock(scope: !4888, file: !913, line: 258, column: 7)
!4895 = !DILocalVariable(name: "p", scope: !4896, file: !913, line: 426, type: !98)
!4896 = distinct !DILexicalBlock(scope: !4893, file: !913, line: 425, column: 13)
!4897 = distinct !DIAssignID()
!4898 = !DILocation(line: 0, scope: !4870)
!4899 = !DILocation(line: 208, column: 3, scope: !4870)
!4900 = !DILocation(line: 209, column: 3, scope: !4870)
!4901 = !DILocation(line: 212, column: 3, scope: !4870)
!4902 = !DILocation(line: 216, column: 22, scope: !4887)
!4903 = distinct !DIAssignID()
!4904 = distinct !DIAssignID()
!4905 = !DILocation(line: 0, scope: !4887)
!4906 = !DILocalVariable(name: "fd", arg: 1, scope: !4907, file: !913, line: 444, type: !57)
!4907 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !913, file: !913, line: 444, type: !914, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4908)
!4908 = !{!4906, !4909, !4910}
!4909 = !DILocalVariable(name: "target", arg: 2, scope: !4907, file: !913, line: 444, type: !57)
!4910 = !DILocalVariable(name: "result", scope: !4907, file: !913, line: 446, type: !57)
!4911 = !DILocation(line: 0, scope: !4907, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 217, column: 18, scope: !4887)
!4913 = !DILocation(line: 479, column: 12, scope: !4907, inlinedAt: !4912)
!4914 = !DILocation(line: 223, column: 22, scope: !4890)
!4915 = distinct !DIAssignID()
!4916 = distinct !DIAssignID()
!4917 = !DILocation(line: 0, scope: !4890)
!4918 = !DILocation(line: 0, scope: !912, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 224, column: 18, scope: !4890)
!4920 = !DILocation(line: 507, column: 12, scope: !4921, inlinedAt: !4919)
!4921 = distinct !DILexicalBlock(scope: !912, file: !913, line: 507, column: 7)
!4922 = !DILocation(line: 507, column: 9, scope: !4921, inlinedAt: !4919)
!4923 = !DILocation(line: 507, column: 7, scope: !912, inlinedAt: !4919)
!4924 = !DILocation(line: 509, column: 16, scope: !4925, inlinedAt: !4919)
!4925 = distinct !DILexicalBlock(scope: !4921, file: !913, line: 508, column: 5)
!4926 = !DILocation(line: 510, column: 13, scope: !4927, inlinedAt: !4919)
!4927 = distinct !DILexicalBlock(scope: !4925, file: !913, line: 510, column: 11)
!4928 = !DILocation(line: 510, column: 23, scope: !4927, inlinedAt: !4919)
!4929 = !DILocation(line: 510, column: 26, scope: !4927, inlinedAt: !4919)
!4930 = !DILocation(line: 510, column: 32, scope: !4927, inlinedAt: !4919)
!4931 = !DILocation(line: 510, column: 11, scope: !4925, inlinedAt: !4919)
!4932 = !DILocation(line: 512, column: 30, scope: !4933, inlinedAt: !4919)
!4933 = distinct !DILexicalBlock(scope: !4927, file: !913, line: 511, column: 9)
!4934 = !DILocation(line: 528, column: 19, scope: !924, inlinedAt: !4919)
!4935 = !DILocation(line: 0, scope: !4907, inlinedAt: !4936)
!4936 = distinct !DILocation(line: 520, column: 20, scope: !4937, inlinedAt: !4919)
!4937 = distinct !DILexicalBlock(scope: !4927, file: !913, line: 519, column: 9)
!4938 = !DILocation(line: 479, column: 12, scope: !4907, inlinedAt: !4936)
!4939 = !DILocation(line: 521, column: 22, scope: !4940, inlinedAt: !4919)
!4940 = distinct !DILexicalBlock(scope: !4937, file: !913, line: 521, column: 15)
!4941 = !DILocation(line: 521, column: 15, scope: !4937, inlinedAt: !4919)
!4942 = !DILocation(line: 522, column: 32, scope: !4940, inlinedAt: !4919)
!4943 = !DILocation(line: 522, column: 13, scope: !4940, inlinedAt: !4919)
!4944 = !DILocation(line: 0, scope: !4907, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 527, column: 14, scope: !4921, inlinedAt: !4919)
!4946 = !DILocation(line: 479, column: 12, scope: !4907, inlinedAt: !4945)
!4947 = !DILocation(line: 0, scope: !4921, inlinedAt: !4919)
!4948 = !DILocation(line: 528, column: 9, scope: !924, inlinedAt: !4919)
!4949 = !DILocation(line: 530, column: 19, scope: !923, inlinedAt: !4919)
!4950 = !DILocation(line: 0, scope: !923, inlinedAt: !4919)
!4951 = !DILocation(line: 531, column: 17, scope: !927, inlinedAt: !4919)
!4952 = !DILocation(line: 531, column: 21, scope: !927, inlinedAt: !4919)
!4953 = !DILocation(line: 531, column: 54, scope: !927, inlinedAt: !4919)
!4954 = !DILocation(line: 531, column: 24, scope: !927, inlinedAt: !4919)
!4955 = !DILocation(line: 531, column: 68, scope: !927, inlinedAt: !4919)
!4956 = !DILocation(line: 531, column: 11, scope: !923, inlinedAt: !4919)
!4957 = !DILocation(line: 533, column: 29, scope: !926, inlinedAt: !4919)
!4958 = !DILocation(line: 0, scope: !926, inlinedAt: !4919)
!4959 = !DILocation(line: 534, column: 11, scope: !926, inlinedAt: !4919)
!4960 = !DILocation(line: 535, column: 17, scope: !926, inlinedAt: !4919)
!4961 = !DILocation(line: 537, column: 9, scope: !926, inlinedAt: !4919)
!4962 = !DILocation(line: 329, column: 22, scope: !4893)
!4963 = !DILocation(line: 330, column: 13, scope: !4893)
!4964 = !DILocation(line: 418, column: 23, scope: !4892)
!4965 = distinct !DIAssignID()
!4966 = distinct !DIAssignID()
!4967 = !DILocation(line: 0, scope: !4892)
!4968 = !DILocation(line: 419, column: 24, scope: !4892)
!4969 = !DILocation(line: 421, column: 13, scope: !4893)
!4970 = !DILocation(line: 426, column: 25, scope: !4896)
!4971 = distinct !DIAssignID()
!4972 = distinct !DIAssignID()
!4973 = !DILocation(line: 0, scope: !4896)
!4974 = !DILocation(line: 427, column: 24, scope: !4896)
!4975 = !DILocation(line: 429, column: 13, scope: !4893)
!4976 = !DILocation(line: 0, scope: !4888)
!4977 = !DILocation(line: 438, column: 3, scope: !4870)
!4978 = !DILocation(line: 441, column: 1, scope: !4870)
!4979 = !DILocation(line: 440, column: 3, scope: !4870)
!4980 = distinct !DISubprogram(name: "hard_locale", scope: !930, file: !930, line: 28, type: !4981, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4983)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!215, !57}
!4983 = !{!4984, !4985}
!4984 = !DILocalVariable(name: "category", arg: 1, scope: !4980, file: !930, line: 28, type: !57)
!4985 = !DILocalVariable(name: "locale", scope: !4980, file: !930, line: 30, type: !4986)
!4986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4987)
!4987 = !{!4988}
!4988 = !DISubrange(count: 257)
!4989 = distinct !DIAssignID()
!4990 = !DILocation(line: 0, scope: !4980)
!4991 = !DILocation(line: 30, column: 3, scope: !4980)
!4992 = !DILocation(line: 32, column: 7, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4980, file: !930, line: 32, column: 7)
!4994 = !DILocation(line: 32, column: 7, scope: !4980)
!4995 = !DILocalVariable(name: "__s1", arg: 1, scope: !4996, file: !1123, line: 1359, type: !101)
!4996 = distinct !DISubprogram(name: "streq", scope: !1123, file: !1123, line: 1359, type: !1124, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4997)
!4997 = !{!4995, !4998}
!4998 = !DILocalVariable(name: "__s2", arg: 2, scope: !4996, file: !1123, line: 1359, type: !101)
!4999 = !DILocation(line: 0, scope: !4996, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 35, column: 9, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4980, file: !930, line: 35, column: 7)
!5002 = !DILocation(line: 1361, column: 11, scope: !4996, inlinedAt: !5000)
!5003 = !DILocation(line: 1361, column: 10, scope: !4996, inlinedAt: !5000)
!5004 = !DILocation(line: 35, column: 29, scope: !5001)
!5005 = !DILocation(line: 0, scope: !4996, inlinedAt: !5006)
!5006 = distinct !DILocation(line: 35, column: 32, scope: !5001)
!5007 = !DILocation(line: 1361, column: 11, scope: !4996, inlinedAt: !5006)
!5008 = !DILocation(line: 1361, column: 10, scope: !4996, inlinedAt: !5006)
!5009 = !DILocation(line: 35, column: 7, scope: !4980)
!5010 = !DILocation(line: 46, column: 3, scope: !4980)
!5011 = !DILocation(line: 47, column: 1, scope: !4980)
!5012 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1017, file: !1017, line: 154, type: !5013, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !5015)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!57, !57, !59, !104}
!5015 = !{!5016, !5017, !5018}
!5016 = !DILocalVariable(name: "category", arg: 1, scope: !5012, file: !1017, line: 154, type: !57)
!5017 = !DILocalVariable(name: "buf", arg: 2, scope: !5012, file: !1017, line: 154, type: !59)
!5018 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5012, file: !1017, line: 154, type: !104)
!5019 = !DILocation(line: 0, scope: !5012)
!5020 = !DILocation(line: 159, column: 10, scope: !5012)
!5021 = !DILocation(line: 159, column: 3, scope: !5012)
!5022 = distinct !DISubprogram(name: "setlocale_null", scope: !1017, file: !1017, line: 186, type: !5023, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !5025)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!101, !57}
!5025 = !{!5026}
!5026 = !DILocalVariable(name: "category", arg: 1, scope: !5022, file: !1017, line: 186, type: !57)
!5027 = !DILocation(line: 0, scope: !5022)
!5028 = !DILocation(line: 189, column: 10, scope: !5022)
!5029 = !DILocation(line: 189, column: 3, scope: !5022)
!5030 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1019, file: !1019, line: 35, type: !5023, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !5031)
!5031 = !{!5032, !5033}
!5032 = !DILocalVariable(name: "category", arg: 1, scope: !5030, file: !1019, line: 35, type: !57)
!5033 = !DILocalVariable(name: "result", scope: !5030, file: !1019, line: 37, type: !101)
!5034 = !DILocation(line: 0, scope: !5030)
!5035 = !DILocation(line: 37, column: 24, scope: !5030)
!5036 = !DILocation(line: 62, column: 3, scope: !5030)
!5037 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1019, file: !1019, line: 66, type: !5013, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !5038)
!5038 = !{!5039, !5040, !5041, !5042, !5043}
!5039 = !DILocalVariable(name: "category", arg: 1, scope: !5037, file: !1019, line: 66, type: !57)
!5040 = !DILocalVariable(name: "buf", arg: 2, scope: !5037, file: !1019, line: 66, type: !59)
!5041 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5037, file: !1019, line: 66, type: !104)
!5042 = !DILocalVariable(name: "result", scope: !5037, file: !1019, line: 111, type: !101)
!5043 = !DILocalVariable(name: "length", scope: !5044, file: !1019, line: 125, type: !104)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !1019, line: 124, column: 5)
!5045 = distinct !DILexicalBlock(scope: !5037, file: !1019, line: 113, column: 7)
!5046 = !DILocation(line: 0, scope: !5037)
!5047 = !DILocation(line: 0, scope: !5030, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 111, column: 24, scope: !5037)
!5049 = !DILocation(line: 37, column: 24, scope: !5030, inlinedAt: !5048)
!5050 = !DILocation(line: 113, column: 14, scope: !5045)
!5051 = !DILocation(line: 113, column: 7, scope: !5037)
!5052 = !DILocation(line: 116, column: 19, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !1019, line: 116, column: 11)
!5054 = distinct !DILexicalBlock(scope: !5045, file: !1019, line: 114, column: 5)
!5055 = !DILocation(line: 116, column: 11, scope: !5054)
!5056 = !DILocation(line: 120, column: 16, scope: !5053)
!5057 = !DILocation(line: 120, column: 9, scope: !5053)
!5058 = !DILocation(line: 125, column: 23, scope: !5044)
!5059 = !DILocation(line: 0, scope: !5044)
!5060 = !DILocation(line: 126, column: 18, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5044, file: !1019, line: 126, column: 11)
!5062 = !DILocation(line: 126, column: 11, scope: !5044)
!5063 = !DILocation(line: 128, column: 39, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5061, file: !1019, line: 127, column: 9)
!5065 = !DILocalVariable(name: "__dest", arg: 1, scope: !5066, file: !1338, line: 26, type: !1341)
!5066 = distinct !DISubprogram(name: "memcpy", scope: !1338, file: !1338, line: 26, type: !1339, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !5067)
!5067 = !{!5065, !5068, !5069}
!5068 = !DILocalVariable(name: "__src", arg: 2, scope: !5066, file: !1338, line: 26, type: !1254)
!5069 = !DILocalVariable(name: "__len", arg: 3, scope: !5066, file: !1338, line: 26, type: !104)
!5070 = !DILocation(line: 0, scope: !5066, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 128, column: 11, scope: !5064)
!5072 = !DILocation(line: 29, column: 10, scope: !5066, inlinedAt: !5071)
!5073 = !DILocation(line: 129, column: 11, scope: !5064)
!5074 = !DILocation(line: 133, column: 23, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !1019, line: 133, column: 15)
!5076 = distinct !DILexicalBlock(scope: !5061, file: !1019, line: 132, column: 9)
!5077 = !DILocation(line: 133, column: 15, scope: !5076)
!5078 = !DILocation(line: 138, column: 44, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5075, file: !1019, line: 134, column: 13)
!5080 = !DILocation(line: 0, scope: !5066, inlinedAt: !5081)
!5081 = distinct !DILocation(line: 138, column: 15, scope: !5079)
!5082 = !DILocation(line: 29, column: 10, scope: !5066, inlinedAt: !5081)
!5083 = !DILocation(line: 139, column: 15, scope: !5079)
!5084 = !DILocation(line: 139, column: 32, scope: !5079)
!5085 = !DILocation(line: 140, column: 13, scope: !5079)
!5086 = !DILocation(line: 0, scope: !5045)
!5087 = !DILocation(line: 145, column: 1, scope: !5037)
