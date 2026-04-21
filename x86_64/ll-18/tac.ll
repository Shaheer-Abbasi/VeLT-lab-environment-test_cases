; ModuleID = 'src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.re_registers = type { i32, ptr, ptr }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
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
@main.default_file_list = internal unnamed_addr constant [2 x ptr] [ptr @.str.10, ptr null], align 16, !dbg !52
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !109
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !114
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !119
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !124
@.str.14 = private unnamed_addr constant [5 x i8] c"brs:\00", align 1, !dbg !129
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.57, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !399
@separator_ends_record = internal unnamed_addr global i1 false, align 1, !dbg !486
@sentinel_length = internal unnamed_addr global i64 1, align 8, !dbg !413
@optarg = external local_unnamed_addr global ptr, align 8
@separator = internal unnamed_addr global ptr @.str.62, align 8, !dbg !417
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !134
@.str.16 = private unnamed_addr constant [12 x i8] c"Jay Lepreau\00", align 1, !dbg !139
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !144
@.str.18 = private unnamed_addr constant [26 x i8] c"separator cannot be empty\00", align 1, !dbg !149
@compiled_separator = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !167
@compiled_separator_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !191
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
@output.buffer = internal global [8192 x i8] zeroinitializer, align 16, !dbg !449
@output.bytes_in_buffer = internal unnamed_addr global i64 0, align 8, !dbg !468
@.str.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !470
@temp_stream.tempfile = internal unnamed_addr global ptr null, align 8, !dbg !488
@temp_stream.tmp_fp = internal unnamed_addr global ptr null, align 8, !dbg !533
@.str.26 = private unnamed_addr constant [35 x i8] c"failed to make temporary file name\00", align 1, !dbg !535
@.str.1.27 = private unnamed_addr constant [6 x i8] c"cutmp\00", align 1, !dbg !537
@.str.2.28 = private unnamed_addr constant [35 x i8] c"failed to create temporary file %s\00", align 1, !dbg !539
@.str.3.29 = private unnamed_addr constant [3 x i8] c"w+\00", align 1, !dbg !541
@.str.4.30 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1, !dbg !543
@.str.5.31 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1, !dbg !545
@.str.34 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !561
@Version = dso_local local_unnamed_addr global ptr @.str.34, align 8, !dbg !564
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !568
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !581
@.str.37 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !573
@.str.1.38 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !575
@.str.2.39 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !577
@.str.3.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !579
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !583
@stderr = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !589
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !620
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !591
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !610
@.str.1.55 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !612
@.str.2.57 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !614
@.str.3.56 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !616
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !618
@.str.4.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !622
@.str.5.51 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !624
@.str.6.52 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !629
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !634
@.str.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !640
@.str.1.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !642
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !644
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !675
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !678
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !680
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !685
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !687
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !689
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !691
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !693
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !695
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !697
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.76, ptr @.str.1.77, ptr @.str.2.78, ptr @.str.3.79, ptr @.str.4.80, ptr @.str.5.81, ptr @.str.6.82, ptr @.str.7.83, ptr @.str.8.84, ptr @.str.9.85, ptr null], align 16, !dbg !699
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !712
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !726
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !761
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !768
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !728
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !770
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !716
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !730
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !732
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !734
@.str.13.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !736
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !738
@.str.102 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !775
@.str.1.103 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1, !dbg !778
@.str.2.104 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1, !dbg !780
@.str.3.105 = private unnamed_addr constant [12 x i8] c"/%.*sXXXXXX\00", align 1, !dbg !782
@.str.108 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !784
@.str.1.109 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !787
@.str.2.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !789
@.str.3.111 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !791
@.str.4.112 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !793
@.str.5.113 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !795
@.str.6.114 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !800
@.str.7.115 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !805
@.str.8.116 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !807
@.str.9.117 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !812
@.str.10.118 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !817
@.str.11.119 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !822
@.str.12.120 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !827
@.str.13.121 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !829
@.str.14.122 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !834
@.str.15.123 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !839
@.str.16.124 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !844
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.129 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !849
@.str.18.130 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !851
@.str.19.131 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !853
@.str.20.132 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !855
@.str.21.133 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !857
@.str.22.134 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !859
@.str.23.135 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !861
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !866
@exit_failure = dso_local global i32 1, align 4, !dbg !874
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !880
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !883
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !885
@.str.165 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !887
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !890
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !905
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !923

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1023 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1027, metadata !DIExpression()), !dbg !1028
  %2 = icmp eq i32 %0, 0, !dbg !1029
  br i1 %2, label %8, label %3, !dbg !1031

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1032, !tbaa !1034
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !1032
  %6 = load ptr, ptr @program_name, align 8, !dbg !1032, !tbaa !1034
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !1032
  br label %43, !dbg !1032

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !1038
  %10 = load ptr, ptr @program_name, align 8, !dbg !1038, !tbaa !1034
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !1038
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !1040
  %13 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !1034
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1040
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1041
  %16 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !1034
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1041
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !1044
  %19 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !1034
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1044
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !1047
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1047
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !1048
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1048
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !1049
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1049
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !1050
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1050
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !1051
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1051
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !1052
  %27 = load ptr, ptr @stdout, align 8, !dbg !1052, !tbaa !1034
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1053, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata !1072, metadata !1066, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr poison, metadata !1065, metadata !DIExpression()), !dbg !1070
  tail call void @emit_bug_reporting_address() #39, !dbg !1073
  %29 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %29, metadata !1068, metadata !DIExpression()), !dbg !1070
  %30 = icmp eq ptr %29, null, !dbg !1075
  br i1 %30, label %38, label %31, !dbg !1077

31:                                               ; preds = %8
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #40, !dbg !1078
  %33 = icmp eq i32 %32, 0, !dbg !1078
  br i1 %33, label %38, label %34, !dbg !1079

34:                                               ; preds = %31
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #39, !dbg !1080
  %36 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !1034
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1080
  br label %38, !dbg !1082

38:                                               ; preds = %8, %31, %34
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1065, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1069, metadata !DIExpression()), !dbg !1070
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !1083
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #39, !dbg !1083
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #39, !dbg !1084
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #39, !dbg !1084
  br label %43

43:                                               ; preds = %38, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1085
  unreachable, !dbg !1085
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1086 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1090 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1096 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1099 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !205 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !1103
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !210, metadata !DIExpression()), !dbg !1103
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1104, !tbaa !1105
  %3 = icmp eq i32 %2, -1, !dbg !1107
  br i1 %3, label %4, label %16, !dbg !1108

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #39, !dbg !1109
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !1110
  %6 = icmp eq ptr %5, null, !dbg !1111
  br i1 %6, label %14, label %7, !dbg !1112

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1113, !tbaa !1114
  %9 = icmp eq i8 %8, 0, !dbg !1113
  br i1 %9, label %14, label %10, !dbg !1115

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1116, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !1122, metadata !DIExpression()), !dbg !1123
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #40, !dbg !1125
  %12 = icmp eq i32 %11, 0, !dbg !1126
  %13 = zext i1 %12 to i32, !dbg !1115
  br label %14, !dbg !1115

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1127, !tbaa !1105
  br label %16, !dbg !1128

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1129
  %18 = icmp eq i32 %17, 0, !dbg !1129
  br i1 %18, label %22, label %19, !dbg !1131

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !1034
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1132
  br label %124, !dbg !1134

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !214, metadata !DIExpression()), !dbg !1103
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #40, !dbg !1135
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1103
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1137
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !217, metadata !DIExpression()), !dbg !1103
  %26 = icmp eq ptr %25, null, !dbg !1138
  br i1 %26, label %54, label %27, !dbg !1139

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1140
  br i1 %28, label %54, label %29, !dbg !1141

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 0, metadata !222, metadata !DIExpression()), !dbg !1142
  %30 = icmp ult ptr %24, %25, !dbg !1143
  br i1 %30, label %31, label %54, !dbg !1144

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1103
  %33 = load ptr, ptr %32, align 8, !tbaa !1034
  br label %34, !dbg !1144

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !218, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !222, metadata !DIExpression()), !dbg !1142
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1145
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !218, metadata !DIExpression()), !dbg !1142
  %38 = load i8, ptr %35, align 1, !dbg !1145, !tbaa !1114
  %39 = sext i8 %38 to i64, !dbg !1145
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1145
  %41 = load i16, ptr %40, align 2, !dbg !1145, !tbaa !1146
  %42 = freeze i16 %41, !dbg !1148
  %43 = lshr i16 %42, 13, !dbg !1148
  %44 = and i16 %43, 1, !dbg !1148
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1149
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !222, metadata !DIExpression()), !dbg !1142
  %47 = icmp ult ptr %37, %25, !dbg !1143
  %48 = icmp ult i64 %46, 2, !dbg !1150
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1150
  br i1 %49, label %34, label %50, !dbg !1144, !llvm.loop !1151

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1153
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1155
  %53 = zext i1 %51 to i8, !dbg !1155
  br label %54, !dbg !1155

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1103
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1103
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !214, metadata !DIExpression()), !dbg !1103
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !217, metadata !DIExpression()), !dbg !1103
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.25) #40, !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !223, metadata !DIExpression()), !dbg !1103
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1157
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !224, metadata !DIExpression()), !dbg !1103
  br label %59, !dbg !1158

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1103
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1103
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !214, metadata !DIExpression()), !dbg !1103
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !224, metadata !DIExpression()), !dbg !1103
  %62 = load i8, ptr %60, align 1, !dbg !1159, !tbaa !1114
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1160

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1161
  %65 = load i8, ptr %64, align 1, !dbg !1164, !tbaa !1114
  %66 = icmp eq i8 %65, 45, !dbg !1165
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1166
  br label %68, !dbg !1166

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1103
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !214, metadata !DIExpression()), !dbg !1103
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1167
  %71 = load ptr, ptr %70, align 8, !dbg !1167, !tbaa !1034
  %72 = sext i8 %62 to i64, !dbg !1167
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1167
  %74 = load i16, ptr %73, align 2, !dbg !1167, !tbaa !1146
  %75 = and i16 %74, 8192, !dbg !1167
  %76 = icmp eq i16 %75, 0, !dbg !1167
  br i1 %76, label %92, label %77, !dbg !1169

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1170
  br i1 %78, label %94, label %79, !dbg !1173

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1174
  %81 = load i8, ptr %80, align 1, !dbg !1174, !tbaa !1114
  %82 = sext i8 %81 to i64, !dbg !1174
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1174
  %84 = load i16, ptr %83, align 2, !dbg !1174, !tbaa !1146
  %85 = and i16 %84, 8192, !dbg !1174
  %86 = icmp eq i16 %85, 0, !dbg !1174
  br i1 %86, label %87, label %94, !dbg !1175

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1176
  %89 = icmp ne i8 %88, 0, !dbg !1176
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1178
  br i1 %91, label %92, label %94, !dbg !1178

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1179
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !224, metadata !DIExpression()), !dbg !1103
  br label %59, !dbg !1158, !llvm.loop !1180

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1182
  %96 = load ptr, ptr @stdout, align 8, !dbg !1182, !tbaa !1034
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1182
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1116, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata !1072, metadata !1122, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !281, metadata !DIExpression()), !dbg !1103
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #40, !dbg !1203
  %99 = icmp eq i32 %98, 0, !dbg !1203
  br i1 %99, label %103, label %100, !dbg !1205

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #40, !dbg !1206
  %102 = icmp eq i32 %101, 0, !dbg !1206
  br i1 %102, label %103, label %106, !dbg !1207

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1208
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #39, !dbg !1208
  br label %109, !dbg !1210

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1211
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #39, !dbg !1211
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1213, !tbaa !1034
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %110), !dbg !1213
  %112 = load ptr, ptr @stdout, align 8, !dbg !1214, !tbaa !1034
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %112), !dbg !1214
  %114 = ptrtoint ptr %60 to i64, !dbg !1215
  %115 = sub i64 %114, %95, !dbg !1215
  %116 = load ptr, ptr @stdout, align 8, !dbg !1215, !tbaa !1034
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1215
  %118 = load ptr, ptr @stdout, align 8, !dbg !1216, !tbaa !1034
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %118), !dbg !1216
  %120 = load ptr, ptr @stdout, align 8, !dbg !1217, !tbaa !1034
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %120), !dbg !1217
  %122 = load ptr, ptr @stdout, align 8, !dbg !1218, !tbaa !1034
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1218
  br label %124, !dbg !1219

124:                                              ; preds = %109, %19
  ret void, !dbg !1219
}

; Function Attrs: nounwind
declare !dbg !1220 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1224 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1228 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1230 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1233 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1236 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1239 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1242 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1248 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1249 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !54 {
  %3 = alloca ptr, align 8, !DIAssignID !1255
  %4 = alloca ptr, align 8, !DIAssignID !1256
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !475, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !476, metadata !DIExpression()), !dbg !1257
  %5 = load ptr, ptr %1, align 8, !dbg !1258, !tbaa !1034
  tail call void @set_program_name(ptr noundef %5) #39, !dbg !1259
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #39, !dbg !1260
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #39, !dbg !1261
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #39, !dbg !1262
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1263
  br label %10, !dbg !1264

10:                                               ; preds = %16, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !478, metadata !DIExpression()), !dbg !1257
  switch i32 %11, label %23 [
    i32 -1, label %24
    i32 98, label %12
    i32 114, label %13
    i32 115, label %14
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !1264

12:                                               ; preds = %10
  store i1 true, ptr @separator_ends_record, align 1, !dbg !1266
  br label %16, !dbg !1269

13:                                               ; preds = %10
  store i64 0, ptr @sentinel_length, align 8, !dbg !1270, !tbaa !1271
  br label %16, !dbg !1273

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1274, !tbaa !1034
  store ptr %15, ptr @separator, align 8, !dbg !1275, !tbaa !1034
  br label %16, !dbg !1276

16:                                               ; preds = %14, %13, %12
  br label %10, !dbg !1265, !llvm.loop !1277

17:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #43, !dbg !1279
  unreachable, !dbg !1279

18:                                               ; preds = %10
  %19 = load ptr, ptr @stdout, align 8, !dbg !1280, !tbaa !1034
  %20 = load ptr, ptr @Version, align 8, !dbg !1280, !tbaa !1034
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #39, !dbg !1280
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #39, !dbg !1280
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #39, !dbg !1280
  tail call void @exit(i32 noundef 0) #41, !dbg !1280
  unreachable, !dbg !1280

23:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #43, !dbg !1281
  unreachable, !dbg !1281

24:                                               ; preds = %10
  %25 = load i64, ptr @sentinel_length, align 8, !dbg !1282, !tbaa !1271
  %26 = icmp eq i64 %25, 0, !dbg !1284
  %27 = load ptr, ptr @separator, align 8, !dbg !1285, !tbaa !1034
  %28 = load i8, ptr %27, align 1, !dbg !1285, !tbaa !1114
  %29 = icmp eq i8 %28, 0, !dbg !1285
  br i1 %26, label %30, label %40, !dbg !1286

30:                                               ; preds = %24
  br i1 %29, label %31, label %33, !dbg !1287

31:                                               ; preds = %30
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !1289
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %32) #39, !dbg !1289
  unreachable, !dbg !1289

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @compiled_separator, i8 0, i64 16, i1 false), !dbg !1291
  store ptr @compiled_separator_fastmap, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 4), align 8, !dbg !1292, !tbaa !1293
  store ptr null, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 5), align 8, !dbg !1295, !tbaa !1296
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #40, !dbg !1297
  %35 = tail call ptr @re_compile_pattern(ptr noundef nonnull %27, i64 noundef %34, ptr noundef nonnull @compiled_separator) #39, !dbg !1298
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !477, metadata !DIExpression()), !dbg !1257
  %36 = icmp eq ptr %35, null, !dbg !1299
  br i1 %36, label %37, label %39, !dbg !1301

37:                                               ; preds = %33
  %38 = load i64, ptr @sentinel_length, align 8, !tbaa !1271
  br label %45, !dbg !1301

39:                                               ; preds = %33
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %35) #39, !dbg !1302
  unreachable, !dbg !1302

40:                                               ; preds = %24
  br i1 %29, label %43, label %41, !dbg !1303

41:                                               ; preds = %40
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #40, !dbg !1304
  br label %43, !dbg !1303

43:                                               ; preds = %40, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %40 ], !dbg !1303
  store i64 %44, ptr @sentinel_length, align 8, !dbg !1305, !tbaa !1271
  store i64 %44, ptr @match_length, align 8, !dbg !1306, !tbaa !1271
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i64 [ %38, %37 ], [ %44, %43 ]
  %47 = icmp ult i64 %46, 4096, !dbg !1307
  br i1 %47, label %61, label %48, !dbg !1308

48:                                               ; preds = %45, %58
  %49 = phi i64 [ %59, %58 ], [ 8192, %45 ]
  %50 = shl nuw i64 %49, 1, !dbg !1309
  %51 = icmp ult i64 %46, %49, !dbg !1307
  br i1 %51, label %61, label %53, !dbg !1308, !llvm.loop !1311

52:                                               ; preds = %56
  store i64 %54, ptr @read_size, align 8, !dbg !1257, !tbaa !1271
  tail call void @xalloc_die() #41, !dbg !1313
  unreachable, !dbg !1313

53:                                               ; preds = %48
  %54 = shl nuw i64 %49, 2, !dbg !1309
  %55 = icmp ult i64 %46, %50, !dbg !1307
  br i1 %55, label %61, label %56, !dbg !1308, !llvm.loop !1311

56:                                               ; preds = %53
  %57 = icmp slt i64 %54, 0, !dbg !1315
  br i1 %57, label %52, label %58, !dbg !1316

58:                                               ; preds = %56
  %59 = shl nuw i64 %49, 3, !dbg !1309
  %60 = icmp ult i64 %46, %54, !dbg !1307
  br i1 %60, label %61, label %48, !dbg !1308, !llvm.loop !1311

61:                                               ; preds = %48, %53, %58, %45
  %62 = phi i64 [ 8192, %45 ], [ %50, %48 ], [ %54, %53 ], [ %59, %58 ]
  store i64 %62, ptr @read_size, align 8, !dbg !1257, !tbaa !1271
  %63 = add i64 %46, %62, !dbg !1317
  %64 = add i64 %63, 1, !dbg !1318
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !480, metadata !DIExpression()), !dbg !1257
  %65 = shl i64 %64, 1, !dbg !1319
  store i64 %65, ptr @G_buffer_size, align 8, !dbg !1320, !tbaa !1271
  %66 = icmp ult i64 %62, %64, !dbg !1321
  %67 = icmp ult i64 %63, 9223372036854775807
  %68 = and i1 %67, %66, !dbg !1323
  br i1 %68, label %70, label %69, !dbg !1323

69:                                               ; preds = %61
  tail call void @xalloc_die() #41, !dbg !1324
  unreachable, !dbg !1324

70:                                               ; preds = %61
  %71 = tail call noalias nonnull ptr @xmalloc(i64 noundef %65) #44, !dbg !1325
  %72 = load i64, ptr @sentinel_length, align 8, !dbg !1326, !tbaa !1271
  %73 = icmp eq i64 %72, 0, !dbg !1326
  br i1 %73, label %80, label %74, !dbg !1328

74:                                               ; preds = %70
  %75 = load ptr, ptr @separator, align 8, !dbg !1329, !tbaa !1034
  %76 = load i8, ptr %75, align 1, !dbg !1331, !tbaa !1114
  %77 = icmp ne i8 %76, 0, !dbg !1332
  %78 = zext i1 %77 to i64
  %79 = add i64 %72, %78, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %71, metadata !1334, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %75, metadata !1341, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %79, metadata !1342, metadata !DIExpression()), !dbg !1343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %71, ptr noundef nonnull align 1 %75, i64 noundef %79, i1 noundef false) #39, !dbg !1345
  br label %80, !dbg !1346

80:                                               ; preds = %70, %74
  %81 = phi i64 [ %72, %74 ], [ 1, %70 ]
  %82 = getelementptr inbounds i8, ptr %71, i64 %81, !dbg !1347
  store ptr %82, ptr @G_buffer, align 8, !dbg !1347, !tbaa !1034
  %83 = load i32, ptr @optind, align 4, !dbg !1348
  %84 = icmp slt i32 %83, %0, !dbg !1349
  %85 = sext i32 %83 to i64, !dbg !1348
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85, !dbg !1348
  %87 = select i1 %84, ptr %86, ptr @main.default_file_list, !dbg !1348
  tail call void @llvm.dbg.value(metadata ptr %87, metadata !481, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata i8 1, metadata !479, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 0, metadata !482, metadata !DIExpression()), !dbg !1350
  %88 = load ptr, ptr %87, align 8, !dbg !1351, !tbaa !1034
  %89 = icmp eq ptr %88, null, !dbg !1353
  br i1 %89, label %92, label %95, !dbg !1353

90:                                               ; preds = %183
  %91 = zext i1 %185 to i8, !dbg !1354
  tail call void @llvm.dbg.value(metadata i8 %91, metadata !479, metadata !DIExpression()), !dbg !1257
  br label %92, !dbg !1355

92:                                               ; preds = %90, %80
  %93 = phi i8 [ 1, %80 ], [ %91, %90 ], !dbg !1356
  call fastcc void @output(ptr noundef null, ptr noundef null), !dbg !1355
  %94 = load i1, ptr @have_read_stdin, align 1, !dbg !1357
  br i1 %94, label %190, label %196, !dbg !1359

95:                                               ; preds = %80, %183
  %96 = phi ptr [ %188, %183 ], [ %88, %80 ]
  %97 = phi i64 [ %186, %183 ], [ 0, %80 ]
  %98 = phi i1 [ %185, %183 ], [ true, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !482, metadata !DIExpression()), !dbg !1350
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !479, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr %96, metadata !1360, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata ptr %96, metadata !1116, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1122, metadata !DIExpression()), !dbg !1372
  %99 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(2) @.str.10) #40, !dbg !1374
  %100 = icmp eq i32 %99, 0, !dbg !1375
  call void @llvm.dbg.value(metadata i1 %100, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1370
  br i1 %100, label %101, label %103, !dbg !1376

101:                                              ; preds = %95
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1377
  call void @llvm.dbg.value(metadata i32 0, metadata !1368, metadata !DIExpression()), !dbg !1370
  %102 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #39, !dbg !1380
  call void @llvm.dbg.value(metadata ptr %102, metadata !1360, metadata !DIExpression()), !dbg !1370
  br label %111, !dbg !1381

103:                                              ; preds = %95
  %104 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %96, i32 noundef 0) #39, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %104, metadata !1368, metadata !DIExpression()), !dbg !1370
  %105 = icmp slt i32 %104, 0, !dbg !1384
  br i1 %105, label %106, label %111, !dbg !1386

106:                                              ; preds = %103
  %107 = tail call ptr @__errno_location() #42, !dbg !1387
  %108 = load i32, ptr %107, align 4, !dbg !1387, !tbaa !1105
  %109 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #39, !dbg !1387
  %110 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %96) #39, !dbg !1387
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %108, ptr noundef %109, ptr noundef %110) #39, !dbg !1387
  br label %183, !dbg !1389

111:                                              ; preds = %103, %101
  %112 = phi ptr [ %102, %101 ], [ %96, %103 ]
  %113 = phi i32 [ 0, %101 ], [ %104, %103 ], !dbg !1390
  call void @llvm.dbg.value(metadata i32 %113, metadata !1368, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata ptr %112, metadata !1360, metadata !DIExpression()), !dbg !1370
  %114 = call i64 @lseek(i32 noundef %113, i64 noundef 0, i32 noundef 2) #39, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %114, metadata !1366, metadata !DIExpression()), !dbg !1370
  %115 = icmp slt i64 %114, 0, !dbg !1392
  br i1 %115, label %119, label %116, !dbg !1393

116:                                              ; preds = %111
  %117 = call i32 @isatty(i32 noundef %113) #39, !dbg !1394
  %118 = icmp eq i32 %117, 0, !dbg !1394
  br i1 %118, label %171, label %119, !dbg !1395

119:                                              ; preds = %116, %111
  call void @llvm.dbg.value(metadata i32 %113, metadata !1396, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %112, metadata !1401, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1408, metadata !DIExpression(), metadata !1255, metadata ptr %3, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1418, metadata !DIExpression(), metadata !1256, metadata ptr %4, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr undef, metadata !1414, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr undef, metadata !1415, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %113, metadata !1416, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %112, metadata !1417, metadata !DIExpression()), !dbg !1432
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1434
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1432
  %120 = call zeroext i1 @temp_stream(ptr noundef nonnull %3, ptr noundef nonnull %4) #39, !dbg !1436
  br i1 %120, label %121, label %163, !dbg !1438

121:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1432
  %122 = load ptr, ptr @G_buffer, align 8, !dbg !1439, !tbaa !1034
  %123 = load i64, ptr @read_size, align 8, !dbg !1440, !tbaa !1271
  %124 = call i64 @read(i32 noundef %113, ptr noundef %122, i64 noundef %123) #39, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %124, metadata !1423, metadata !DIExpression()), !dbg !1442
  %125 = icmp eq i64 %124, 0, !dbg !1443
  br i1 %125, label %152, label %132, !dbg !1445

126:                                              ; preds = %141
  %127 = add i64 %134, %133, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %127, metadata !1419, metadata !DIExpression()), !dbg !1432
  %128 = load ptr, ptr @G_buffer, align 8, !dbg !1439, !tbaa !1034
  %129 = load i64, ptr @read_size, align 8, !dbg !1440, !tbaa !1271
  %130 = call i64 @read(i32 noundef %113, ptr noundef %128, i64 noundef %129) #39, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %130, metadata !1423, metadata !DIExpression()), !dbg !1442
  %131 = icmp eq i64 %130, 0, !dbg !1443
  br i1 %131, label %152, label %132, !dbg !1445

132:                                              ; preds = %121, %126
  %133 = phi i64 [ %130, %126 ], [ %124, %121 ]
  %134 = phi i64 [ %127, %126 ], [ 0, %121 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !1419, metadata !DIExpression()), !dbg !1432
  %135 = icmp slt i64 %133, 0, !dbg !1447
  br i1 %135, label %136, label %141, !dbg !1449

136:                                              ; preds = %132
  %137 = tail call ptr @__errno_location() #42, !dbg !1450
  %138 = load i32, ptr %137, align 4, !dbg !1450, !tbaa !1105
  %139 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1450
  %140 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %112) #39, !dbg !1450
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %138, ptr noundef %139, ptr noundef %140) #39, !dbg !1450
  br label %163, !dbg !1452

141:                                              ; preds = %132
  %142 = load ptr, ptr %3, align 8, !dbg !1453, !tbaa !1034
  %143 = load ptr, ptr @G_buffer, align 8, !dbg !1453, !tbaa !1034
  %144 = call i64 @fwrite_unlocked(ptr noundef %143, i64 noundef 1, i64 noundef %133, ptr noundef %142), !dbg !1453
  %145 = icmp eq i64 %144, %133, !dbg !1454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %133, i64 %134), metadata !1419, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1432
  br i1 %145, label %126, label %146, !dbg !1455

146:                                              ; preds = %141
  %147 = tail call ptr @__errno_location() #42, !dbg !1456
  %148 = load i32, ptr %147, align 4, !dbg !1456, !tbaa !1105
  %149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #39, !dbg !1456
  %150 = load ptr, ptr %4, align 8, !dbg !1456, !tbaa !1034
  %151 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %150) #39, !dbg !1456
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %148, ptr noundef %149, ptr noundef %151) #39, !dbg !1456
  br label %163, !dbg !1458

152:                                              ; preds = %126, %121
  %153 = phi i64 [ 0, %121 ], [ %127, %126 ], !dbg !1459
  call void @llvm.dbg.value(metadata i64 %153, metadata !1419, metadata !DIExpression()), !dbg !1432
  %154 = load ptr, ptr %3, align 8, !dbg !1460, !tbaa !1034
  %155 = call i32 @fflush_unlocked(ptr noundef %154) #39, !dbg !1460
  %156 = icmp eq i32 %155, 0, !dbg !1462
  br i1 %156, label %164, label %157, !dbg !1463

157:                                              ; preds = %152
  %158 = tail call ptr @__errno_location() #42, !dbg !1464
  %159 = load i32, ptr %158, align 4, !dbg !1464, !tbaa !1105
  %160 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #39, !dbg !1464
  %161 = load ptr, ptr %4, align 8, !dbg !1464, !tbaa !1034
  %162 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %161) #39, !dbg !1464
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %159, ptr noundef %160, ptr noundef %162) #39, !dbg !1464
  br label %163, !dbg !1466

163:                                              ; preds = %157, %146, %136, %119
  call void @llvm.dbg.value(metadata ptr poison, metadata !1403, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr poison, metadata !1402, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1467
  call void @llvm.dbg.value(metadata i64 -1, metadata !1404, metadata !DIExpression()), !dbg !1406
  br label %173, !dbg !1468

164:                                              ; preds = %152
  %165 = load ptr, ptr %3, align 8, !dbg !1469, !tbaa !1034
  call void @llvm.dbg.value(metadata ptr %165, metadata !1402, metadata !DIExpression()), !dbg !1406
  %166 = load ptr, ptr %4, align 8, !dbg !1470, !tbaa !1034
  call void @llvm.dbg.value(metadata ptr %166, metadata !1403, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %153, metadata !1404, metadata !DIExpression()), !dbg !1406
  %167 = icmp slt i64 %153, 0, !dbg !1471
  br i1 %167, label %173, label %168, !dbg !1468

168:                                              ; preds = %164
  %169 = call i32 @fileno_unlocked(ptr noundef %165) #39, !dbg !1473
  %170 = call fastcc zeroext i1 @tac_seekable(i32 noundef %169, ptr noundef %166, i64 noundef %153), !dbg !1474
  call void @llvm.dbg.value(metadata i1 %170, metadata !1405, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  br label %173

171:                                              ; preds = %116
  %172 = call fastcc zeroext i1 @tac_seekable(i32 noundef %113, ptr noundef %112, i64 noundef %114), !dbg !1475
  br label %173, !dbg !1395

173:                                              ; preds = %171, %168, %164, %163
  %174 = phi i1 [ %172, %171 ], [ %170, %168 ], [ false, %164 ], [ false, %163 ]
  call void @llvm.dbg.value(metadata i1 %174, metadata !1365, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1370
  br i1 %100, label %183, label %175, !dbg !1476

175:                                              ; preds = %173
  %176 = call i32 @close(i32 noundef %113) #39, !dbg !1478
  %177 = icmp eq i32 %176, 0, !dbg !1479
  br i1 %177, label %183, label %178, !dbg !1480

178:                                              ; preds = %175
  %179 = tail call ptr @__errno_location() #42, !dbg !1481
  %180 = load i32, ptr %179, align 4, !dbg !1481, !tbaa !1105
  %181 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1481
  %182 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %112) #39, !dbg !1481
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %180, ptr noundef %181, ptr noundef %182) #39, !dbg !1481
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()), !dbg !1370
  br label %183, !dbg !1483

183:                                              ; preds = %106, %173, %175, %178
  %184 = phi i1 [ false, %106 ], [ %174, %173 ], [ false, %178 ], [ %174, %175 ], !dbg !1370
  %185 = select i1 %184, i1 %98, i1 false, !dbg !1354
  tail call void @llvm.dbg.value(metadata i1 %185, metadata !479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1257
  %186 = add i64 %97, 1, !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !482, metadata !DIExpression()), !dbg !1350
  %187 = getelementptr inbounds ptr, ptr %87, i64 %186, !dbg !1351
  %188 = load ptr, ptr %187, align 8, !dbg !1351, !tbaa !1034
  %189 = icmp eq ptr %188, null, !dbg !1353
  br i1 %189, label %90, label %95, !dbg !1353, !llvm.loop !1485

190:                                              ; preds = %92
  %191 = call i32 @close(i32 noundef 0) #39, !dbg !1487
  %192 = icmp slt i32 %191, 0, !dbg !1488
  br i1 %192, label %193, label %196, !dbg !1489

193:                                              ; preds = %190
  %194 = tail call ptr @__errno_location() #42, !dbg !1490
  %195 = load i32, ptr %194, align 4, !dbg !1490, !tbaa !1105
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %195, ptr noundef nonnull @.str.10) #39, !dbg !1490
  tail call void @llvm.dbg.value(metadata i8 0, metadata !479, metadata !DIExpression()), !dbg !1257
  br label %196, !dbg !1492

196:                                              ; preds = %193, %190, %92
  %197 = phi i8 [ 0, %193 ], [ %93, %190 ], [ %93, %92 ], !dbg !1257
  tail call void @llvm.dbg.value(metadata i8 %197, metadata !479, metadata !DIExpression()), !dbg !1257
  %198 = xor i8 %197, 1, !dbg !1493
  %199 = zext nneg i8 %198 to i32, !dbg !1493
  ret i32 %199, !dbg !1493
}

; Function Attrs: nounwind
declare !dbg !1494 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1497 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1498 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1501 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1507 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1510 ptr @re_compile_pattern(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define internal fastcc void @output(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !451 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !455, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %1, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1514
  %3 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1515
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 8192, i64 %3), metadata !457, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1514
  %4 = icmp eq ptr %0, null, !dbg !1516
  br i1 %4, label %20, label %5, !dbg !1517

5:                                                ; preds = %2
  %6 = sub i64 8192, %3, !dbg !1518
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1514
  %7 = ptrtoint ptr %1 to i64, !dbg !1519
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %7, ptr %0), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1514
  %8 = ptrtoint ptr %0 to i64, !dbg !1519
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %7, i64 %8), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1514
  %9 = sub i64 %7, %8, !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1514
  %10 = icmp ult i64 %9, %6, !dbg !1520
  br i1 %10, label %53, label %11, !dbg !1521

11:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !454, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !457, metadata !DIExpression()), !dbg !1514
  %12 = getelementptr inbounds i8, ptr @output.buffer, i64 %3, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %12, metadata !1334, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %0, metadata !1341, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 %6, metadata !1342, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %12, ptr noundef nonnull align 1 %0, i64 noundef %6, i1 noundef false) #39, !dbg !1526
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %9, i64 %6), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1514
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %6), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1514
  %13 = load ptr, ptr @stdout, align 8, !dbg !1527, !tbaa !1034
  %14 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %13), !dbg !1527
  %15 = icmp eq i64 %14, 8192, !dbg !1529
  br i1 %15, label %16, label %40, !dbg !1530

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %0, i64 %6, !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !454, metadata !DIExpression()), !dbg !1514
  %18 = sub i64 %9, %6, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !456, metadata !DIExpression()), !dbg !1514
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1533, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1514
  %19 = icmp ult i64 %18, 8192, !dbg !1520
  br i1 %19, label %53, label %34, !dbg !1521

20:                                               ; preds = %2
  %21 = load ptr, ptr @stdout, align 8, !dbg !1534, !tbaa !1034
  %22 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef %3, ptr noundef %21), !dbg !1534
  %23 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1535, !tbaa !1271
  %24 = icmp eq i64 %22, %23, !dbg !1536
  br i1 %24, label %59, label %25, !dbg !1537

25:                                               ; preds = %20
  %26 = tail call ptr @__errno_location() #42, !dbg !1538
  %27 = load i32, ptr %26, align 4, !dbg !1538, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %27, metadata !1541, metadata !DIExpression()), !dbg !1543
  %28 = load ptr, ptr @stdout, align 8, !dbg !1544, !tbaa !1034
  %29 = tail call i32 @fflush_unlocked(ptr noundef %28) #39, !dbg !1544
  %30 = load ptr, ptr @stdout, align 8, !dbg !1545, !tbaa !1034
  %31 = tail call i32 @fpurge(ptr noundef %30) #39, !dbg !1546
  %32 = load ptr, ptr @stdout, align 8, !dbg !1547, !tbaa !1034
  tail call void @clearerr_unlocked(ptr noundef %32) #39, !dbg !1547
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #39, !dbg !1548
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %27, ptr noundef %33) #39, !dbg !1548
  unreachable, !dbg !1548

34:                                               ; preds = %16, %49
  %35 = phi ptr [ %50, %49 ], [ %17, %16 ]
  %36 = phi i64 [ %51, %49 ], [ %18, %16 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !454, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !456, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata ptr @output.buffer, metadata !1334, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata ptr %35, metadata !1341, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i64 8192, metadata !1342, metadata !DIExpression()), !dbg !1524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @output.buffer, ptr noundef nonnull align 1 dereferenceable(8192) %35, i64 noundef 8192, i1 noundef false) #39, !dbg !1526
  tail call void @llvm.dbg.value(metadata !DIArgList(i64 %36, i64 8192), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1514
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %35, i64 8192), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1514
  %37 = load ptr, ptr @stdout, align 8, !dbg !1527, !tbaa !1034
  %38 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %37), !dbg !1527
  %39 = icmp eq i64 %38, 8192, !dbg !1529
  br i1 %39, label %49, label %40, !dbg !1530

40:                                               ; preds = %34, %11
  %41 = tail call ptr @__errno_location() #42, !dbg !1549
  %42 = load i32, ptr %41, align 4, !dbg !1549, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %42, metadata !1541, metadata !DIExpression()), !dbg !1551
  %43 = load ptr, ptr @stdout, align 8, !dbg !1552, !tbaa !1034
  %44 = tail call i32 @fflush_unlocked(ptr noundef %43) #39, !dbg !1552
  %45 = load ptr, ptr @stdout, align 8, !dbg !1553, !tbaa !1034
  %46 = tail call i32 @fpurge(ptr noundef %45) #39, !dbg !1554
  %47 = load ptr, ptr @stdout, align 8, !dbg !1555, !tbaa !1034
  tail call void @clearerr_unlocked(ptr noundef %47) #39, !dbg !1555
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #39, !dbg !1556
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %48) #39, !dbg !1556
  unreachable, !dbg !1556

49:                                               ; preds = %34
  %50 = getelementptr inbounds i8, ptr %35, i64 8192, !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !454, metadata !DIExpression()), !dbg !1514
  %51 = add i64 %36, -8192, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !456, metadata !DIExpression()), !dbg !1514
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1533, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1514
  %52 = icmp ult i64 %51, 8192, !dbg !1520
  br i1 %52, label %53, label %34, !dbg !1521, !llvm.loop !1557

53:                                               ; preds = %49, %16, %5
  %54 = phi i64 [ %3, %5 ], [ 0, %16 ], [ 0, %49 ], !dbg !1560
  %55 = phi i64 [ %9, %5 ], [ %18, %16 ], [ %51, %49 ], !dbg !1514
  %56 = phi ptr [ %0, %5 ], [ %17, %16 ], [ %50, %49 ]
  %57 = getelementptr inbounds i8, ptr @output.buffer, i64 %54, !dbg !1561
  call void @llvm.dbg.value(metadata ptr %57, metadata !1334, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr %56, metadata !1341, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 %55, metadata !1342, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %57, ptr noundef nonnull align 1 %56, i64 noundef %55, i1 noundef false) #39, !dbg !1564
  %58 = add i64 %54, %55, !dbg !1565
  br label %59, !dbg !1566

59:                                               ; preds = %20, %53
  %60 = phi i64 [ %58, %53 ], [ 0, %20 ], !dbg !1514
  store i64 %60, ptr @output.bytes_in_buffer, align 8, !dbg !1514, !tbaa !1271
  ret void, !dbg !1566
}

; Function Attrs: nofree
declare !dbg !1567 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1571 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1575 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1579 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

declare !dbg !1582 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1585 i32 @fileno_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tac_seekable(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 !dbg !1586 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1590, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1591, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1592, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1623
  %4 = load ptr, ptr @separator, align 8, !dbg !1624, !tbaa !1034
  %5 = load i8, ptr %4, align 1, !dbg !1625, !tbaa !1114
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1597, metadata !DIExpression()), !dbg !1623
  %6 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1626
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1598, metadata !DIExpression()), !dbg !1623
  %7 = load i64, ptr @match_length, align 8, !dbg !1627, !tbaa !1271
  %8 = add i64 %7, -1, !dbg !1628
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1599, metadata !DIExpression()), !dbg !1623
  %9 = load i64, ptr @read_size, align 8, !dbg !1629, !tbaa !1271
  %10 = urem i64 %2, %9, !dbg !1630
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1600, metadata !DIExpression()), !dbg !1623
  %11 = icmp eq i64 %10, 0, !dbg !1631
  br i1 %11, label %21, label %12, !dbg !1633

12:                                               ; preds = %3
  %13 = sub nuw nsw i64 %2, %10, !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1592, metadata !DIExpression()), !dbg !1623
  %14 = tail call i64 @lseek(i32 noundef %0, i64 noundef %13, i32 noundef 0) #39, !dbg !1636
  %15 = icmp slt i64 %14, 0, !dbg !1638
  br i1 %15, label %16, label %21, !dbg !1639

16:                                               ; preds = %12
  %17 = tail call ptr @__errno_location() #42, !dbg !1640
  %18 = load i32, ptr %17, align 4, !dbg !1640, !tbaa !1105
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1640
  %20 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1640
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %19, ptr noundef %20) #39, !dbg !1640
  br label %21, !dbg !1640

21:                                               ; preds = %12, %16, %3
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1592, metadata !DIExpression()), !dbg !1623
  %23 = load ptr, ptr @G_buffer, align 8, !dbg !1641, !tbaa !1034
  %24 = load i64, ptr @read_size, align 8, !dbg !1642, !tbaa !1271
  %25 = tail call i64 @read(i32 noundef %0, ptr noundef %23, i64 noundef %24) #39, !dbg !1643
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1595, metadata !DIExpression()), !dbg !1623
  %26 = icmp eq i64 %25, 0, !dbg !1644
  %27 = icmp ne i64 %22, 0, !dbg !1645
  %28 = and i1 %26, %27, !dbg !1645
  br i1 %28, label %29, label %48, !dbg !1646

29:                                               ; preds = %21, %40
  %30 = phi i64 [ %42, %40 ], [ %22, %21 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1592, metadata !DIExpression()), !dbg !1623
  %31 = load i64, ptr @read_size, align 8, !dbg !1647, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1601, metadata !DIExpression()), !dbg !1648
  %32 = sub nsw i64 0, %31, !dbg !1649
  %33 = tail call i64 @lseek(i32 noundef %0, i64 noundef %32, i32 noundef 1) #39, !dbg !1651
  %34 = icmp slt i64 %33, 0, !dbg !1652
  br i1 %34, label %35, label %40, !dbg !1653

35:                                               ; preds = %29
  %36 = tail call ptr @__errno_location() #42, !dbg !1654
  %37 = load i32, ptr %36, align 4, !dbg !1654, !tbaa !1105
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1654
  %39 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1654
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %38, ptr noundef %39) #39, !dbg !1654
  br label %40, !dbg !1654

40:                                               ; preds = %35, %29
  %41 = load i64, ptr @read_size, align 8, !dbg !1655, !tbaa !1271
  %42 = sub i64 %30, %41, !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1592, metadata !DIExpression()), !dbg !1623
  %43 = load ptr, ptr @G_buffer, align 8, !dbg !1641, !tbaa !1034
  %44 = tail call i64 @read(i32 noundef %0, ptr noundef %43, i64 noundef %41) #39, !dbg !1643
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1595, metadata !DIExpression()), !dbg !1623
  %45 = icmp eq i64 %44, 0, !dbg !1644
  %46 = icmp ne i64 %42, 0, !dbg !1645
  %47 = select i1 %45, i1 %46, i1 false, !dbg !1645
  br i1 %47, label %29, label %48, !dbg !1646, !llvm.loop !1657

48:                                               ; preds = %40, %21
  %49 = phi i64 [ %25, %21 ], [ %44, %40 ]
  %50 = phi i64 [ %22, %21 ], [ %42, %40 ]
  br label %51, !dbg !1659

51:                                               ; preds = %48, %56
  %52 = phi i64 [ %63, %56 ], [ %49, %48 ], !dbg !1660
  %53 = phi i64 [ %61, %56 ], [ %50, %48 ], !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %53, metadata !1592, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !1595, metadata !DIExpression()), !dbg !1623
  %54 = load i64, ptr @read_size, align 8, !dbg !1661, !tbaa !1271
  %55 = icmp eq i64 %52, %54, !dbg !1662
  br i1 %55, label %56, label %64, !dbg !1659

56:                                               ; preds = %51
  %57 = load ptr, ptr @G_buffer, align 8, !dbg !1663, !tbaa !1034
  %58 = tail call i64 @read(i32 noundef %0, ptr noundef %57, i64 noundef %52) #39, !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1603, metadata !DIExpression()), !dbg !1665
  %59 = icmp eq i64 %58, 0, !dbg !1666
  %60 = tail call i64 @llvm.smax.i64(i64 %58, i64 0), !dbg !1668
  %61 = add nsw i64 %60, %53, !dbg !1668
  %62 = icmp sgt i64 %58, 0, !dbg !1668
  %63 = select i1 %59, i64 %52, i64 %58, !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !1592, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1595, metadata !DIExpression()), !dbg !1623
  br i1 %62, label %51, label %64

64:                                               ; preds = %56, %51
  %65 = phi i64 [ %63, %56 ], [ %52, %51 ], !dbg !1660
  %66 = phi i64 [ %61, %56 ], [ %53, %51 ], !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1592, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1595, metadata !DIExpression()), !dbg !1623
  %67 = icmp slt i64 %65, 0, !dbg !1669
  br i1 %67, label %68, label %73, !dbg !1671

68:                                               ; preds = %64
  %69 = tail call ptr @__errno_location() #42, !dbg !1672
  %70 = load i32, ptr %69, align 4, !dbg !1672, !tbaa !1105
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1672
  %72 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1672
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %72) #39, !dbg !1672
  br label %221, !dbg !1674

73:                                               ; preds = %64
  %74 = load ptr, ptr @G_buffer, align 8, !dbg !1675, !tbaa !1034
  %75 = getelementptr inbounds i8, ptr %74, i64 %65, !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1594, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1593, metadata !DIExpression()), !dbg !1623
  %76 = load i64, ptr @sentinel_length, align 8, !dbg !1677, !tbaa !1271
  %77 = icmp eq i64 %76, 0, !dbg !1677
  %78 = sub i64 1, %7, !dbg !1679
  %79 = select i1 %77, i64 0, i64 %78, !dbg !1679
  %80 = getelementptr inbounds i8, ptr %75, i64 %79, !dbg !1679
  tail call void @llvm.dbg.value(metadata ptr %80, metadata !1593, metadata !DIExpression()), !dbg !1623
  %81 = icmp eq i64 %8, 0
  br label %82, !dbg !1680

82:                                               ; preds = %211, %73
  %83 = phi i64 [ %76, %73 ], [ %219, %211 ]
  %84 = phi i8 [ 1, %73 ], [ %212, %211 ]
  %85 = phi ptr [ %75, %73 ], [ %213, %211 ]
  %86 = phi ptr [ %80, %73 ], [ %220, %211 ]
  %87 = phi i64 [ %66, %73 ], [ %92, %211 ]
  br label %88, !dbg !1680

88:                                               ; preds = %82, %188
  %89 = phi i64 [ %193, %188 ], [ %83, %82 ], !dbg !1681
  %90 = phi ptr [ %191, %188 ], [ %85, %82 ], !dbg !1623
  %91 = phi ptr [ %192, %188 ], [ %86, %82 ], !dbg !1623
  %92 = phi i64 [ %172, %188 ], [ %87, %82 ], !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1592, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !1593, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1594, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8 %84, metadata !1596, metadata !DIExpression()), !dbg !1623
  %93 = icmp eq i64 %89, 0, !dbg !1682
  br i1 %93, label %94, label %123, !dbg !1683

94:                                               ; preds = %88
  %95 = load ptr, ptr @G_buffer, align 8, !dbg !1684, !tbaa !1034
  %96 = ptrtoint ptr %91 to i64, !dbg !1685
  %97 = ptrtoint ptr %95 to i64, !dbg !1685
  %98 = sub i64 %96, %97, !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !1605, metadata !DIExpression()), !dbg !1686
  %99 = trunc i64 %98 to i32, !dbg !1687
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !1609, metadata !DIExpression()), !dbg !1686
  %100 = sub nsw i32 1, %99, !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1610, metadata !DIExpression()), !dbg !1686
  %101 = icmp slt i32 %99, 0, !dbg !1689
  br i1 %101, label %102, label %104, !dbg !1691

102:                                              ; preds = %94
  %103 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #39, !dbg !1692
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %103) #39, !dbg !1692
  unreachable, !dbg !1692

104:                                              ; preds = %94
  %105 = icmp eq i32 %99, 0, !dbg !1693
  br i1 %105, label %139, label %106, !dbg !1695

106:                                              ; preds = %104
  %107 = add nsw i32 %99, -1, !dbg !1696
  %108 = tail call i32 @re_search(ptr noundef nonnull @compiled_separator, ptr noundef %95, i32 noundef %99, i32 noundef %107, i32 noundef %100, ptr noundef nonnull @regs) #39, !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1611, metadata !DIExpression()), !dbg !1686
  switch i32 %108, label %113 [
    i32 -1, label %109
    i32 -2, label %111
  ], !dbg !1698

109:                                              ; preds = %106
  %110 = load ptr, ptr @G_buffer, align 8, !dbg !1699, !tbaa !1034
  br label %139, !dbg !1698

111:                                              ; preds = %106
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #39, !dbg !1700
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %112) #39, !dbg !1700
  unreachable, !dbg !1700

113:                                              ; preds = %106
  %114 = load ptr, ptr @G_buffer, align 8, !dbg !1702, !tbaa !1034
  %115 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 1), align 8, !dbg !1704, !tbaa !1705
  %116 = load i32, ptr %115, align 4, !dbg !1707, !tbaa !1105
  %117 = sext i32 %116 to i64, !dbg !1708
  %118 = getelementptr inbounds i8, ptr %114, i64 %117, !dbg !1708
  tail call void @llvm.dbg.value(metadata ptr %118, metadata !1593, metadata !DIExpression()), !dbg !1623
  %119 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 2), align 8, !dbg !1709, !tbaa !1710
  %120 = load i32, ptr %119, align 4, !dbg !1711, !tbaa !1105
  %121 = sub nsw i32 %120, %116, !dbg !1712
  %122 = sext i32 %121 to i64, !dbg !1711
  store i64 %122, ptr @match_length, align 8, !dbg !1713, !tbaa !1271
  br label %135

123:                                              ; preds = %88, %128
  %124 = phi ptr [ %125, %128 ], [ %91, %88 ], !dbg !1623
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !1593, metadata !DIExpression()), !dbg !1623
  %125 = getelementptr inbounds i8, ptr %124, i64 -1, !dbg !1714
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !1593, metadata !DIExpression()), !dbg !1623
  %126 = load i8, ptr %125, align 1, !dbg !1716, !tbaa !1114
  %127 = icmp eq i8 %126, %5, !dbg !1717
  br i1 %127, label %129, label %128, !dbg !1718

128:                                              ; preds = %123, %130
  br label %123, !dbg !1623, !llvm.loop !1719

129:                                              ; preds = %123
  br i1 %81, label %133, label %130, !dbg !1722

130:                                              ; preds = %129
  %131 = tail call i32 @strncmp(ptr noundef nonnull %124, ptr noundef nonnull %6, i64 noundef %8) #40, !dbg !1723
  %132 = icmp eq i32 %131, 0, !dbg !1723
  br i1 %132, label %133, label %128, !dbg !1720

133:                                              ; preds = %129, %130
  %134 = load ptr, ptr @G_buffer, align 8, !dbg !1724, !tbaa !1034
  br label %135, !dbg !1724

135:                                              ; preds = %133, %113
  %136 = phi ptr [ %114, %113 ], [ %134, %133 ], !dbg !1724
  %137 = phi ptr [ %118, %113 ], [ %125, %133 ], !dbg !1725
  tail call void @llvm.dbg.value(metadata ptr %137, metadata !1593, metadata !DIExpression()), !dbg !1623
  %138 = icmp ult ptr %137, %136, !dbg !1726
  br i1 %138, label %139, label %199, !dbg !1727

139:                                              ; preds = %109, %104, %135
  %140 = phi ptr [ %136, %135 ], [ %110, %109 ], [ %95, %104 ]
  %141 = icmp eq i64 %92, 0, !dbg !1728
  br i1 %141, label %142, label %143, !dbg !1730

142:                                              ; preds = %139
  tail call fastcc void @output(ptr noundef nonnull %140, ptr noundef %90), !dbg !1731
  br label %221, !dbg !1733

143:                                              ; preds = %139
  %144 = ptrtoint ptr %90 to i64, !dbg !1734
  %145 = ptrtoint ptr %140 to i64, !dbg !1734
  %146 = sub i64 %144, %145, !dbg !1734
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1595, metadata !DIExpression()), !dbg !1623
  %147 = load i64, ptr @read_size, align 8, !dbg !1735, !tbaa !1271
  %148 = icmp ugt i64 %146, %147, !dbg !1736
  br i1 %148, label %149, label %165, !dbg !1737

149:                                              ; preds = %143
  %150 = load i64, ptr @sentinel_length, align 8, !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1617, metadata !DIExpression()), !dbg !1739
  %151 = load i64, ptr @G_buffer_size, align 8, !dbg !1740, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !1618, metadata !DIExpression()), !dbg !1739
  %152 = shl i64 %147, 1, !dbg !1741
  store i64 %152, ptr @read_size, align 8, !dbg !1741, !tbaa !1271
  %153 = shl i64 %147, 2, !dbg !1742
  %154 = or disjoint i64 %153, 2, !dbg !1743
  %155 = add i64 %154, %150, !dbg !1744
  store i64 %155, ptr @G_buffer_size, align 8, !dbg !1745, !tbaa !1271
  %156 = icmp ult i64 %155, %151, !dbg !1746
  br i1 %156, label %157, label %158, !dbg !1748

157:                                              ; preds = %149
  tail call void @xalloc_die() #41, !dbg !1749
  unreachable, !dbg !1749

158:                                              ; preds = %149
  %159 = tail call i64 @llvm.umax.i64(i64 %150, i64 1), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1617, metadata !DIExpression()), !dbg !1739
  %160 = sub i64 0, %159, !dbg !1750
  %161 = getelementptr inbounds i8, ptr %140, i64 %160, !dbg !1750
  %162 = tail call ptr @xrealloc(ptr noundef nonnull %161, i64 noundef %155) #45, !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %162, metadata !1612, metadata !DIExpression()), !dbg !1739
  %163 = getelementptr inbounds i8, ptr %162, i64 %159, !dbg !1752
  tail call void @llvm.dbg.value(metadata ptr %163, metadata !1612, metadata !DIExpression()), !dbg !1739
  store ptr %163, ptr @G_buffer, align 8, !dbg !1753, !tbaa !1034
  %164 = load i64, ptr @read_size, align 8, !dbg !1754, !tbaa !1271
  br label %165, !dbg !1756

165:                                              ; preds = %158, %143
  %166 = phi i64 [ %164, %158 ], [ %147, %143 ], !dbg !1754
  %167 = icmp ult i64 %92, %166, !dbg !1757
  br i1 %167, label %170, label %168, !dbg !1758

168:                                              ; preds = %165
  %169 = sub i64 %92, %166, !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !1592, metadata !DIExpression()), !dbg !1623
  br label %171, !dbg !1760

170:                                              ; preds = %165
  store i64 %92, ptr @read_size, align 8, !dbg !1761, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1623
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i64 [ %169, %168 ], [ 0, %170 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !1592, metadata !DIExpression()), !dbg !1623
  %173 = tail call i64 @lseek(i32 noundef %0, i64 noundef %172, i32 noundef 0) #39, !dbg !1764
  %174 = icmp slt i64 %173, 0, !dbg !1766
  br i1 %174, label %175, label %180, !dbg !1767

175:                                              ; preds = %171
  %176 = tail call ptr @__errno_location() #42, !dbg !1768
  %177 = load i32, ptr %176, align 4, !dbg !1768, !tbaa !1105
  %178 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #39, !dbg !1768
  %179 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1768
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %177, ptr noundef %178, ptr noundef %179) #39, !dbg !1768
  br label %180, !dbg !1768

180:                                              ; preds = %175, %171
  %181 = load ptr, ptr @G_buffer, align 8, !dbg !1769, !tbaa !1034
  %182 = load i64, ptr @read_size, align 8, !dbg !1770, !tbaa !1271
  %183 = getelementptr inbounds i8, ptr %181, i64 %182, !dbg !1771
  call void @llvm.dbg.value(metadata ptr %183, metadata !1772, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata ptr %181, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %146, metadata !1778, metadata !DIExpression()), !dbg !1779
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %183, ptr noundef nonnull align 1 %181, i64 noundef %146, i1 noundef false) #39, !dbg !1781
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %181, i64 %146, i64 %182), metadata !1594, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1623
  %184 = load i64, ptr @sentinel_length, align 8, !dbg !1782, !tbaa !1271
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1593, metadata !DIExpression()), !dbg !1623
  %185 = tail call i64 @full_read(i32 noundef %0, ptr noundef %181, i64 noundef %182) #39, !dbg !1784
  %186 = load i64, ptr @read_size, align 8, !dbg !1786, !tbaa !1271
  %187 = icmp eq i64 %185, %186, !dbg !1787
  br i1 %187, label %188, label %194, !dbg !1788

188:                                              ; preds = %180
  %189 = icmp eq i64 %184, 0, !dbg !1782
  %190 = getelementptr inbounds i8, ptr %181, i64 %182, !dbg !1789
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %190, i64 %146), metadata !1594, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1623
  %191 = getelementptr inbounds i8, ptr %190, i64 %146, !dbg !1790
  tail call void @llvm.dbg.value(metadata ptr %191, metadata !1594, metadata !DIExpression()), !dbg !1623
  %192 = select i1 %189, ptr %191, ptr %190
  tail call void @llvm.dbg.value(metadata ptr %192, metadata !1593, metadata !DIExpression()), !dbg !1623
  %193 = load i64, ptr @sentinel_length, align 8, !dbg !1681, !tbaa !1271
  br label %88, !dbg !1788, !llvm.loop !1791

194:                                              ; preds = %180
  %195 = tail call ptr @__errno_location() #42, !dbg !1793
  %196 = load i32, ptr %195, align 4, !dbg !1793, !tbaa !1105
  %197 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #39, !dbg !1793
  %198 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #39, !dbg !1793
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %196, ptr noundef %197, ptr noundef %198) #39, !dbg !1793
  br label %221, !dbg !1795

199:                                              ; preds = %135
  %200 = load i1, ptr @separator_ends_record, align 1, !dbg !1796
  br i1 %200, label %208, label %201, !dbg !1797

201:                                              ; preds = %199
  %202 = load i64, ptr @match_length, align 8, !dbg !1798, !tbaa !1271
  %203 = getelementptr inbounds i8, ptr %137, i64 %202, !dbg !1799
  tail call void @llvm.dbg.value(metadata ptr %203, metadata !1619, metadata !DIExpression()), !dbg !1800
  %204 = and i8 %84, 1, !dbg !1801
  %205 = icmp ne i8 %204, 0, !dbg !1801
  %206 = icmp eq ptr %203, %90
  %207 = select i1 %205, i1 %206, i1 false, !dbg !1803
  br i1 %207, label %211, label %208, !dbg !1803

208:                                              ; preds = %199, %201
  %209 = phi ptr [ %203, %201 ], [ %137, %199 ]
  %210 = phi i8 [ 0, %201 ], [ %84, %199 ]
  tail call fastcc void @output(ptr noundef %209, ptr noundef %90), !dbg !1804
  br label %211, !dbg !1805

211:                                              ; preds = %208, %201
  %212 = phi i8 [ 0, %201 ], [ %210, %208 ], !dbg !1623
  %213 = phi ptr [ %90, %201 ], [ %209, %208 ], !dbg !1804
  tail call void @llvm.dbg.value(metadata ptr %213, metadata !1594, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i8 %212, metadata !1596, metadata !DIExpression()), !dbg !1623
  %214 = load i64, ptr @sentinel_length, align 8, !dbg !1805, !tbaa !1271
  %215 = icmp eq i64 %214, 0, !dbg !1807
  %216 = load i64, ptr @match_length, align 8, !dbg !1808
  %217 = sub i64 1, %216, !dbg !1808
  %218 = getelementptr inbounds i8, ptr %137, i64 %217, !dbg !1808
  %219 = select i1 %215, i64 0, i64 1, !dbg !1808
  %220 = select i1 %215, ptr %137, ptr %218, !dbg !1808
  br label %82, !dbg !1680, !llvm.loop !1791

221:                                              ; preds = %194, %142, %68
  %222 = phi i1 [ false, %68 ], [ true, %142 ], [ false, %194 ], !dbg !1623
  ret i1 %222, !dbg !1809
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
define dso_local noundef zeroext i1 @temp_stream(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #10 !dbg !490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !551, metadata !DIExpression()), !dbg !1818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !552, metadata !DIExpression()), !dbg !1818
  %3 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1819, !tbaa !1034
  %4 = icmp eq ptr %3, null, !dbg !1820
  br i1 %4, label %5, label %60, !dbg !1821

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr null, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr null, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 128, metadata !1829, metadata !DIExpression()), !dbg !1830
  %6 = tail call dereferenceable_or_null(128) ptr @malloc(i64 128), !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !1822
  %7 = icmp eq ptr %6, null, !dbg !1835
  br i1 %7, label %8, label %19, !dbg !1836

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #42, !dbg !1837
  br label %15, !dbg !1836

10:                                               ; preds = %24
  %11 = shl nuw nsw i64 %21, 1, !dbg !1839
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !556, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !553, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %20, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i64 %11, metadata !1829, metadata !DIExpression()), !dbg !1830
  %12 = tail call i64 @llvm.umax.i64(i64 %11, i64 1), !dbg !1840
  %13 = tail call ptr @realloc(ptr noundef nonnull %20, i64 noundef %12) #45, !dbg !1834
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !553, metadata !DIExpression()), !dbg !1822
  %14 = icmp eq ptr %13, null, !dbg !1835
  br i1 %14, label %15, label %19, !dbg !1836, !llvm.loop !1841

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %9, %8 ], [ %25, %10 ], !dbg !1837
  %17 = load i32, ptr %16, align 4, !dbg !1837, !tbaa !1105
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1837
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %17, ptr noundef %18) #39, !dbg !1837
  br label %81, !dbg !1844

19:                                               ; preds = %5, %10
  %20 = phi ptr [ %13, %10 ], [ %6, %5 ]
  %21 = phi i64 [ %11, %10 ], [ 128, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !556, metadata !DIExpression()), !dbg !1822
  %22 = tail call i32 @path_search(ptr noundef nonnull %20, i64 noundef %21, ptr noundef null, ptr noundef nonnull @.str.1.27, i1 noundef zeroext true) #39, !dbg !1845
  %23 = icmp eq i32 %22, 0, !dbg !1847
  br i1 %23, label %34, label %24, !dbg !1848

24:                                               ; preds = %19
  %25 = tail call ptr @__errno_location() #42, !dbg !1849
  %26 = load i32, ptr %25, align 4, !dbg !1849, !tbaa !1105
  %27 = icmp ne i32 %26, 22, !dbg !1851
  %28 = icmp ugt i64 %21, 2048
  %29 = or i1 %28, %27, !dbg !1852
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1822
  br i1 %29, label %30, label %10, !dbg !1852

30:                                               ; preds = %24
  %31 = icmp eq i32 %26, 22, !dbg !1853
  %32 = select i1 %31, i32 36, i32 %26, !dbg !1853
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1853
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %32, ptr noundef %33) #39, !dbg !1853
  br label %81, !dbg !1855

34:                                               ; preds = %19
  store ptr %20, ptr @temp_stream.tempfile, align 8, !dbg !1856, !tbaa !1034
  %35 = tail call i32 @mkstemp_safer(ptr noundef nonnull %20) #39, !dbg !1857
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !557, metadata !DIExpression()), !dbg !1822
  %36 = icmp slt i32 %35, 0, !dbg !1858
  br i1 %36, label %37, label %43, !dbg !1860

37:                                               ; preds = %34
  %38 = tail call ptr @__errno_location() #42, !dbg !1861
  %39 = load i32, ptr %38, align 4, !dbg !1861, !tbaa !1105
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.28, i32 noundef 5) #39, !dbg !1861
  %41 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1861, !tbaa !1034
  %42 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %41) #39, !dbg !1861
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %39, ptr noundef %40, ptr noundef %42) #39, !dbg !1861
  br label %55, !dbg !1863

43:                                               ; preds = %34
  %44 = tail call noalias ptr @fdopen(i32 noundef %35, ptr noundef nonnull @.str.3.29) #39, !dbg !1864
  store ptr %44, ptr @temp_stream.tmp_fp, align 8, !dbg !1865, !tbaa !1034
  %45 = icmp eq ptr %44, null, !dbg !1866
  br i1 %45, label %46, label %57, !dbg !1867

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #42, !dbg !1868
  %48 = load i32, ptr %47, align 4, !dbg !1868, !tbaa !1105
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.30, i32 noundef 5) #39, !dbg !1868
  %50 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1868, !tbaa !1034
  %51 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %50) #39, !dbg !1868
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %48, ptr noundef %49, ptr noundef %51) #39, !dbg !1868
  %52 = tail call i32 @close(i32 noundef %35) #39, !dbg !1869
  %53 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1870, !tbaa !1034
  %54 = tail call i32 @unlink(ptr noundef %53) #39, !dbg !1871
  br label %55, !dbg !1871

55:                                               ; preds = %46, %37
  call void @llvm.dbg.label(metadata !558), !dbg !1872
  %56 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1873, !tbaa !1034
  tail call void @free(ptr noundef %56) #39, !dbg !1874
  store ptr null, ptr @temp_stream.tempfile, align 8, !dbg !1875, !tbaa !1034
  br label %81, !dbg !1876

57:                                               ; preds = %43
  %58 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1877, !tbaa !1034
  call void @llvm.dbg.value(metadata ptr %58, metadata !1878, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr %44, metadata !1883, metadata !DIExpression()), !dbg !1884
  %59 = tail call i32 @unlink(ptr noundef %58) #39, !dbg !1886
  br label %76

60:                                               ; preds = %2
  %61 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1887, !tbaa !1034
  tail call void @clearerr_unlocked(ptr noundef %61) #39, !dbg !1887
  %62 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1889, !tbaa !1034
  %63 = tail call i32 @rpl_fseeko(ptr noundef %62, i64 noundef 0, i32 noundef 0) #39, !dbg !1891
  %64 = icmp slt i32 %63, 0, !dbg !1892
  br i1 %64, label %70, label %65, !dbg !1893

65:                                               ; preds = %60
  %66 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1894, !tbaa !1034
  %67 = tail call i32 @fileno_unlocked(ptr noundef %66) #39, !dbg !1894
  %68 = tail call i32 @ftruncate(i32 noundef %67, i64 noundef 0) #39, !dbg !1895
  %69 = icmp slt i32 %68, 0, !dbg !1896
  br i1 %69, label %70, label %76, !dbg !1897

70:                                               ; preds = %65, %60
  %71 = tail call ptr @__errno_location() #42, !dbg !1898
  %72 = load i32, ptr %71, align 4, !dbg !1898, !tbaa !1105
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.31, i32 noundef 5) #39, !dbg !1898
  %74 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1898, !tbaa !1034
  %75 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %74) #39, !dbg !1898
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %72, ptr noundef %73, ptr noundef %75) #39, !dbg !1898
  br label %81, !dbg !1900

76:                                               ; preds = %57, %65
  %77 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1901, !tbaa !1034
  store ptr %77, ptr %0, align 8, !dbg !1902, !tbaa !1034
  %78 = icmp eq ptr %1, null, !dbg !1903
  br i1 %78, label %81, label %79, !dbg !1905

79:                                               ; preds = %76
  %80 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1906, !tbaa !1034
  store ptr %80, ptr %1, align 8, !dbg !1907, !tbaa !1034
  br label %81, !dbg !1908

81:                                               ; preds = %55, %15, %30, %76, %79, %70
  %82 = phi i1 [ false, %70 ], [ true, %79 ], [ true, %76 ], [ false, %30 ], [ false, %15 ], [ false, %55 ], !dbg !1818
  ret i1 %82, !dbg !1909
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1910 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare !dbg !1911 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1914 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1917 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !1921 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !1924 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !1927
  store ptr %0, ptr @file_name, align 8, !dbg !1928, !tbaa !1034
  ret void, !dbg !1929
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #18 !dbg !1930 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1934, metadata !DIExpression()), !dbg !1935
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1936, !tbaa !1937
  ret void, !dbg !1939
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1940 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1945, !tbaa !1034
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1946
  %3 = icmp eq i32 %2, 0, !dbg !1947
  br i1 %3, label %22, label %4, !dbg !1948

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1949, !tbaa !1937, !range !1950, !noundef !1072
  %6 = icmp eq i8 %5, 0, !dbg !1949
  br i1 %6, label %11, label %7, !dbg !1951

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1952
  %9 = load i32, ptr %8, align 4, !dbg !1952, !tbaa !1105
  %10 = icmp eq i32 %9, 32, !dbg !1953
  br i1 %10, label %22, label %11, !dbg !1954

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #39, !dbg !1955
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1942, metadata !DIExpression()), !dbg !1956
  %13 = load ptr, ptr @file_name, align 8, !dbg !1957, !tbaa !1034
  %14 = icmp eq ptr %13, null, !dbg !1957
  %15 = tail call ptr @__errno_location() #42, !dbg !1959
  %16 = load i32, ptr %15, align 4, !dbg !1959, !tbaa !1105
  br i1 %14, label %19, label %17, !dbg !1960

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1961
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #39, !dbg !1961
  br label %20, !dbg !1961

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #39, !dbg !1962
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1963, !tbaa !1105
  tail call void @_exit(i32 noundef %21) #41, !dbg !1964
  unreachable, !dbg !1964

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1965, !tbaa !1034
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1967
  %25 = icmp eq i32 %24, 0, !dbg !1968
  br i1 %25, label %28, label %26, !dbg !1969

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1970, !tbaa !1105
  tail call void @_exit(i32 noundef %27) #41, !dbg !1971
  unreachable, !dbg !1971

28:                                               ; preds = %22
  ret void, !dbg !1972
}

; Function Attrs: noreturn
declare !dbg !1973 void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !1974 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1978, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1979, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1980, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1981, metadata !DIExpression()), !dbg !1982
  tail call fastcc void @flush_stdout(), !dbg !1983
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1984, !tbaa !1034
  %6 = icmp eq ptr %5, null, !dbg !1984
  br i1 %6, label %8, label %7, !dbg !1986

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1987
  br label %12, !dbg !1987

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1988, !tbaa !1034
  %10 = tail call ptr @getprogname() #40, !dbg !1988
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef %10) #39, !dbg !1988
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1990
  ret void, !dbg !1991
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1992 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 1, metadata !1996, metadata !DIExpression()), !dbg !1999
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2002
  %2 = icmp slt i32 %1, 0, !dbg !2003
  br i1 %2, label %6, label %3, !dbg !2004

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2005, !tbaa !1034
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2005
  br label %6, !dbg !2005

6:                                                ; preds = %3, %0
  ret void, !dbg !2006
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2007 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2013
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2009, metadata !DIExpression()), !dbg !2014
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2010, metadata !DIExpression()), !dbg !2014
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2011, metadata !DIExpression()), !dbg !2014
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2012, metadata !DIExpression()), !dbg !2014
  %6 = load ptr, ptr @stderr, align 8, !dbg !2015, !tbaa !1034
  call void @llvm.dbg.value(metadata ptr %6, metadata !2016, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata ptr %2, metadata !2056, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata ptr %3, metadata !2057, metadata !DIExpression()), !dbg !2058
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !2060
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2061, !tbaa !1105
  %9 = add i32 %8, 1, !dbg !2061
  store i32 %9, ptr @error_message_count, align 4, !dbg !2061, !tbaa !1105
  %10 = icmp eq i32 %1, 0, !dbg !2062
  br i1 %10, label %20, label %11, !dbg !2064

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2065, metadata !DIExpression(), metadata !2013, metadata ptr %5, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !2068, metadata !DIExpression()), !dbg !2073
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2075
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2076
  call void @llvm.dbg.value(metadata ptr %12, metadata !2069, metadata !DIExpression()), !dbg !2073
  %13 = icmp eq ptr %12, null, !dbg !2077
  br i1 %13, label %14, label %16, !dbg !2079

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.50, ptr noundef nonnull @.str.5.51, i32 noundef 5) #39, !dbg !2080
  call void @llvm.dbg.value(metadata ptr %15, metadata !2069, metadata !DIExpression()), !dbg !2073
  br label %16, !dbg !2081

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2073
  call void @llvm.dbg.value(metadata ptr %17, metadata !2069, metadata !DIExpression()), !dbg !2073
  %18 = load ptr, ptr @stderr, align 8, !dbg !2082, !tbaa !1034
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.52, ptr noundef %17) #39, !dbg !2082
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2083
  br label %20, !dbg !2084

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2085, !tbaa !1034
  call void @llvm.dbg.value(metadata i32 10, metadata !2086, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata ptr %21, metadata !2092, metadata !DIExpression()), !dbg !2093
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2095
  %23 = load ptr, ptr %22, align 8, !dbg !2095, !tbaa !2096
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2095
  %25 = load ptr, ptr %24, align 8, !dbg !2095, !tbaa !2098
  %26 = icmp ult ptr %23, %25, !dbg !2095
  br i1 %26, label %29, label %27, !dbg !2095, !prof !2099

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !2095
  br label %31, !dbg !2095

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2095
  store ptr %30, ptr %22, align 8, !dbg !2095, !tbaa !2096
  store i8 10, ptr %23, align 1, !dbg !2095, !tbaa !1114
  br label %31, !dbg !2095

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2100, !tbaa !1034
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !2100
  %34 = icmp eq i32 %0, 0, !dbg !2101
  br i1 %34, label %36, label %35, !dbg !2103

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !2104
  unreachable, !dbg !2104

36:                                               ; preds = %31
  ret void, !dbg !2105
}

declare !dbg !2106 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2109 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2112 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2115 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2118 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2125, metadata !DIExpression(), metadata !2131, metadata ptr %4, metadata !DIExpression()), !dbg !2132
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2122, metadata !DIExpression()), !dbg !2132
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2123, metadata !DIExpression()), !dbg !2132
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2124, metadata !DIExpression()), !dbg !2132
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !2133
  call void @llvm.va_start(ptr nonnull %4), !dbg !2134
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2135
  call void @llvm.va_end(ptr nonnull %4), !dbg !2136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !2137
  ret void, !dbg !2137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #20 !dbg !593 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !604, metadata !DIExpression()), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !605, metadata !DIExpression()), !dbg !2138
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !606, metadata !DIExpression()), !dbg !2138
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !607, metadata !DIExpression()), !dbg !2138
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !608, metadata !DIExpression()), !dbg !2138
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !609, metadata !DIExpression()), !dbg !2138
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2139, !tbaa !1105
  %8 = icmp eq i32 %7, 0, !dbg !2139
  br i1 %8, label %23, label %9, !dbg !2141

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2142, !tbaa !1105
  %11 = icmp eq i32 %10, %3, !dbg !2145
  br i1 %11, label %12, label %22, !dbg !2146

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2147, !tbaa !1034
  %14 = icmp eq ptr %13, %2, !dbg !2148
  br i1 %14, label %36, label %15, !dbg !2149

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2150
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2151
  br i1 %18, label %19, label %22, !dbg !2151

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2152
  %21 = icmp eq i32 %20, 0, !dbg !2153
  br i1 %21, label %36, label %22, !dbg !2154

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2155, !tbaa !1034
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2156, !tbaa !1105
  br label %23, !dbg !2157

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2158
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2159, !tbaa !1034
  %25 = icmp eq ptr %24, null, !dbg !2159
  br i1 %25, label %27, label %26, !dbg !2161

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !2162
  br label %31, !dbg !2162

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2163, !tbaa !1034
  %29 = tail call ptr @getprogname() #40, !dbg !2163
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.55, ptr noundef %29) #39, !dbg !2163
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2165, !tbaa !1034
  %33 = icmp eq ptr %2, null, !dbg !2165
  %34 = select i1 %33, ptr @.str.3.56, ptr @.str.2.57, !dbg !2165
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !2165
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2166
  br label %36, !dbg !2167

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2167
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2168 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2178
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2177, metadata !DIExpression(), metadata !2178, metadata ptr %6, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2172, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2173, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2174, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2175, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !2180
  call void @llvm.va_start(ptr nonnull %6), !dbg !2181
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2182
  call void @llvm.va_end(ptr nonnull %6), !dbg !2183
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !2184
  ret void, !dbg !2184
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2223, metadata !DIExpression()), !dbg !2224
  tail call void @__fpurge(ptr noundef nonnull %0) #39, !dbg !2225
  ret i32 0, !dbg !2226
}

; Function Attrs: nounwind
declare !dbg !2227 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2231 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2269, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()), !dbg !2275
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2271, metadata !DIExpression()), !dbg !2275
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2276
  %5 = load ptr, ptr %4, align 8, !dbg !2276, !tbaa !2277
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2278
  %7 = load ptr, ptr %6, align 8, !dbg !2278, !tbaa !2279
  %8 = icmp eq ptr %5, %7, !dbg !2280
  br i1 %8, label %9, label %27, !dbg !2281

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2282
  %11 = load ptr, ptr %10, align 8, !dbg !2282, !tbaa !2096
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2283
  %13 = load ptr, ptr %12, align 8, !dbg !2283, !tbaa !2284
  %14 = icmp eq ptr %11, %13, !dbg !2285
  br i1 %14, label %15, label %27, !dbg !2286

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2287
  %17 = load ptr, ptr %16, align 8, !dbg !2287, !tbaa !2288
  %18 = icmp eq ptr %17, null, !dbg !2289
  br i1 %18, label %19, label %27, !dbg !2290

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !2291
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2272, metadata !DIExpression()), !dbg !2293
  %22 = icmp eq i64 %21, -1, !dbg !2294
  br i1 %22, label %29, label %23, !dbg !2296

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2297, !tbaa !2298
  %25 = and i32 %24, -17, !dbg !2297
  store i32 %25, ptr %0, align 8, !dbg !2297, !tbaa !2298
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2299
  store i64 %21, ptr %26, align 8, !dbg !2300, !tbaa !2301
  br label %29, !dbg !2302

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2303
  br label %29, !dbg !2304

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2275
  ret i32 %30, !dbg !2305
}

; Function Attrs: nofree nounwind
declare !dbg !2306 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2309 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @full_read(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2312 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2317, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2318, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2319, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2320, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2321, metadata !DIExpression()), !dbg !2324
  %4 = icmp sgt i64 %2, 0, !dbg !2325
  br i1 %4, label %5, label %20, !dbg !2326

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !2319, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2321, metadata !DIExpression()), !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2320, metadata !DIExpression()), !dbg !2324
  %9 = tail call i64 @safe_read(i32 noundef %0, ptr noundef %7, i64 noundef %6) #39, !dbg !2327
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2322, metadata !DIExpression()), !dbg !2328
  %10 = icmp slt i64 %9, 0, !dbg !2329
  br i1 %10, label %20, label %11, !dbg !2331

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2332
  br i1 %12, label %13, label %15, !dbg !2334

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #42, !dbg !2335
  store i32 0, ptr %14, align 4, !dbg !2337, !tbaa !1105
  br label %20, !dbg !2338

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, %8, !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !2320, metadata !DIExpression()), !dbg !2324
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2340
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !2321, metadata !DIExpression()), !dbg !2324
  %18 = sub nsw i64 %6, %9, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2319, metadata !DIExpression()), !dbg !2324
  %19 = icmp sgt i64 %18, 0, !dbg !2325
  br i1 %19, label %5, label %20, !dbg !2326

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2320, metadata !DIExpression()), !dbg !2324
  ret i64 %21, !dbg !2342
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2343 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2346, !tbaa !1034
  ret ptr %1, !dbg !2347
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2350, metadata !DIExpression()), !dbg !2353
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !2354
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2351, metadata !DIExpression()), !dbg !2353
  %3 = icmp eq ptr %2, null, !dbg !2355
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2355
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2355
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2352, metadata !DIExpression()), !dbg !2353
  %6 = ptrtoint ptr %5 to i64, !dbg !2356
  %7 = ptrtoint ptr %0 to i64, !dbg !2356
  %8 = sub i64 %6, %7, !dbg !2356
  %9 = icmp sgt i64 %8, 6, !dbg !2358
  br i1 %9, label %10, label %19, !dbg !2359

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2360
  call void @llvm.dbg.value(metadata ptr %11, metadata !2361, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 7, metadata !2367, metadata !DIExpression()), !dbg !2368
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.72, i64 7), !dbg !2370
  %13 = icmp eq i32 %12, 0, !dbg !2371
  br i1 %13, label %14, label %19, !dbg !2372

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2350, metadata !DIExpression()), !dbg !2353
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.73, i64 noundef 3) #40, !dbg !2373
  %16 = icmp eq i32 %15, 0, !dbg !2376
  %17 = select i1 %16, i64 3, i64 0, !dbg !2377
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2377
  br label %19, !dbg !2377

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2352, metadata !DIExpression()), !dbg !2353
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2350, metadata !DIExpression()), !dbg !2353
  store ptr %20, ptr @program_name, align 8, !dbg !2378, !tbaa !1034
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2379, !tbaa !1034
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2380, !tbaa !1034
  ret void, !dbg !2381
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2382 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !646 {
  %3 = alloca i32, align 4, !DIAssignID !2383
  call void @llvm.dbg.assign(metadata i1 undef, metadata !656, metadata !DIExpression(), metadata !2383, metadata ptr %3, metadata !DIExpression()), !dbg !2384
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2385
  call void @llvm.dbg.assign(metadata i1 undef, metadata !661, metadata !DIExpression(), metadata !2385, metadata ptr %4, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !653, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !654, metadata !DIExpression()), !dbg !2384
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !2386
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !655, metadata !DIExpression()), !dbg !2384
  %6 = icmp eq ptr %5, %0, !dbg !2387
  br i1 %6, label %7, label %14, !dbg !2389

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !2390
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %4, metadata !2392, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %4, metadata !2400, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i64 8, metadata !2406, metadata !DIExpression()), !dbg !2407
  store i64 0, ptr %4, align 8, !dbg !2409
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2410
  %9 = icmp eq i64 %8, 2, !dbg !2412
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2413
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2384
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2414
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2384
  ret ptr %15, !dbg !2414
}

; Function Attrs: nounwind
declare !dbg !2415 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2421 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2426, metadata !DIExpression()), !dbg !2429
  %2 = tail call ptr @__errno_location() #42, !dbg !2430
  %3 = load i32, ptr %2, align 4, !dbg !2430, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2427, metadata !DIExpression()), !dbg !2429
  %4 = icmp eq ptr %0, null, !dbg !2431
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2431
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2432
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2428, metadata !DIExpression()), !dbg !2429
  store i32 %3, ptr %2, align 4, !dbg !2433, !tbaa !1105
  ret ptr %6, !dbg !2434
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2435 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2441, metadata !DIExpression()), !dbg !2442
  %2 = icmp eq ptr %0, null, !dbg !2443
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2443
  %4 = load i32, ptr %3, align 8, !dbg !2444, !tbaa !2445
  ret i32 %4, !dbg !2447
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2448 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2452, metadata !DIExpression()), !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2453, metadata !DIExpression()), !dbg !2454
  %3 = icmp eq ptr %0, null, !dbg !2455
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2455
  store i32 %1, ptr %4, align 8, !dbg !2456, !tbaa !2445
  ret void, !dbg !2457
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2462, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2463, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2464, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2465, metadata !DIExpression()), !dbg !2470
  %4 = icmp eq ptr %0, null, !dbg !2471
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2471
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2472
  %7 = lshr i8 %1, 5, !dbg !2473
  %8 = zext nneg i8 %7 to i64, !dbg !2473
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2474
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2466, metadata !DIExpression()), !dbg !2470
  %10 = and i8 %1, 31, !dbg !2475
  %11 = zext nneg i8 %10 to i32, !dbg !2475
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2468, metadata !DIExpression()), !dbg !2470
  %12 = load i32, ptr %9, align 4, !dbg !2476, !tbaa !1105
  %13 = lshr i32 %12, %11, !dbg !2477
  %14 = and i32 %13, 1, !dbg !2478
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2469, metadata !DIExpression()), !dbg !2470
  %15 = xor i32 %13, %2, !dbg !2479
  %16 = and i32 %15, 1, !dbg !2479
  %17 = shl nuw i32 %16, %11, !dbg !2480
  %18 = xor i32 %17, %12, !dbg !2481
  store i32 %18, ptr %9, align 4, !dbg !2481, !tbaa !1105
  ret i32 %14, !dbg !2482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2483 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2487, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2488, metadata !DIExpression()), !dbg !2490
  %3 = icmp eq ptr %0, null, !dbg !2491
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2493
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2487, metadata !DIExpression()), !dbg !2490
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2494
  %6 = load i32, ptr %5, align 4, !dbg !2494, !tbaa !2495
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i32 %1, ptr %5, align 4, !dbg !2496, !tbaa !2495
  ret i32 %6, !dbg !2497
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2498 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2502, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2503, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2504, metadata !DIExpression()), !dbg !2505
  %4 = icmp eq ptr %0, null, !dbg !2506
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !2505
  store i32 10, ptr %5, align 8, !dbg !2509, !tbaa !2445
  %6 = icmp ne ptr %1, null, !dbg !2510
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2512
  br i1 %8, label %10, label %9, !dbg !2512

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2513
  unreachable, !dbg !2513

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2514
  store ptr %1, ptr %11, align 8, !dbg !2515, !tbaa !2516
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2517
  store ptr %2, ptr %12, align 8, !dbg !2518, !tbaa !2519
  ret void, !dbg !2520
}

; Function Attrs: noreturn nounwind
declare !dbg !2521 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2528, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2529, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2530, metadata !DIExpression()), !dbg !2534
  %6 = icmp eq ptr %4, null, !dbg !2535
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2535
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2531, metadata !DIExpression()), !dbg !2534
  %8 = tail call ptr @__errno_location() #42, !dbg !2536
  %9 = load i32, ptr %8, align 4, !dbg !2536, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2532, metadata !DIExpression()), !dbg !2534
  %10 = load i32, ptr %7, align 8, !dbg !2537, !tbaa !2445
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2538
  %12 = load i32, ptr %11, align 4, !dbg !2538, !tbaa !2495
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2539
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2540
  %15 = load ptr, ptr %14, align 8, !dbg !2540, !tbaa !2516
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2541
  %17 = load ptr, ptr %16, align 8, !dbg !2541, !tbaa !2519
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2542
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i32 %9, ptr %8, align 4, !dbg !2543, !tbaa !1105
  ret i64 %18, !dbg !2544
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2545 {
  %10 = alloca i32, align 4, !DIAssignID !2613
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2614
  %12 = alloca i32, align 4, !DIAssignID !2615
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2616
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2617
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2591, metadata !DIExpression(), metadata !2617, metadata ptr %14, metadata !DIExpression()), !dbg !2618
  %15 = alloca i32, align 4, !DIAssignID !2619
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2594, metadata !DIExpression(), metadata !2619, metadata ptr %15, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2553, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2554, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2555, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2556, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2557, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2558, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2559, metadata !DIExpression()), !dbg !2621
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2622
  %17 = icmp eq i64 %16, 1, !dbg !2623
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2560, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2563, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2564, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2565, metadata !DIExpression()), !dbg !2621
  %18 = trunc i32 %5 to i8, !dbg !2624
  %19 = lshr i8 %18, 1, !dbg !2624
  %20 = and i8 %19, 1, !dbg !2624
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2568, metadata !DIExpression()), !dbg !2621
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2625

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2626
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2627
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2628
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2629
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2621
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2630
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2631
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2568, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2565, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2564, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2563, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2554, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2559, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2558, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2555, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.label(metadata !2569), !dbg !2632
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2621
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
  ], !dbg !2633

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2555, metadata !DIExpression()), !dbg !2621
  br label %114, !dbg !2634

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2555, metadata !DIExpression()), !dbg !2621
  %43 = and i8 %37, 1, !dbg !2635
  %44 = icmp eq i8 %43, 0, !dbg !2635
  br i1 %44, label %45, label %114, !dbg !2634

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2637
  br i1 %46, label %114, label %47, !dbg !2640

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2637, !tbaa !1114
  br label %114, !dbg !2637

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !747, metadata !DIExpression(), metadata !2615, metadata ptr %12, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.assign(metadata i1 undef, metadata !748, metadata !DIExpression(), metadata !2616, metadata ptr %13, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr @.str.11.86, metadata !744, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %29, metadata !745, metadata !DIExpression()), !dbg !2641
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.11.86, i32 noundef 5) #39, !dbg !2645
  call void @llvm.dbg.value(metadata ptr %49, metadata !746, metadata !DIExpression()), !dbg !2641
  %50 = icmp eq ptr %49, @.str.11.86, !dbg !2646
  br i1 %50, label %51, label %60, !dbg !2648

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2649
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2650
  call void @llvm.dbg.value(metadata ptr %13, metadata !2651, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %13, metadata !2659, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 8, metadata !2663, metadata !DIExpression()), !dbg !2664
  store i64 0, ptr %13, align 8, !dbg !2666
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2667
  %53 = icmp eq i64 %52, 3, !dbg !2669
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2670
  %57 = icmp eq i32 %29, 9, !dbg !2670
  %58 = select i1 %57, ptr @.str.10.88, ptr @.str.12.89, !dbg !2670
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2670
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2671
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2671
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2641
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2558, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !747, metadata !DIExpression(), metadata !2613, metadata ptr %10, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.assign(metadata i1 undef, metadata !748, metadata !DIExpression(), metadata !2614, metadata ptr %11, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr @.str.12.89, metadata !744, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 %29, metadata !745, metadata !DIExpression()), !dbg !2672
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.12.89, i32 noundef 5) #39, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %62, metadata !746, metadata !DIExpression()), !dbg !2672
  %63 = icmp eq ptr %62, @.str.12.89, !dbg !2675
  br i1 %63, label %64, label %73, !dbg !2676

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2677
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2678
  call void @llvm.dbg.value(metadata ptr %11, metadata !2651, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %11, metadata !2659, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 8, metadata !2663, metadata !DIExpression()), !dbg !2681
  store i64 0, ptr %11, align 8, !dbg !2683
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2684
  %66 = icmp eq i64 %65, 3, !dbg !2685
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2686
  %70 = icmp eq i32 %29, 9, !dbg !2686
  %71 = select i1 %70, ptr @.str.10.88, ptr @.str.12.89, !dbg !2686
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2687
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2687
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2559, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2558, metadata !DIExpression()), !dbg !2621
  %76 = and i8 %37, 1, !dbg !2688
  %77 = icmp eq i8 %76, 0, !dbg !2688
  br i1 %77, label %78, label %93, !dbg !2689

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2571, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2561, metadata !DIExpression()), !dbg !2621
  %79 = load i8, ptr %74, align 1, !dbg !2691, !tbaa !1114
  %80 = icmp eq i8 %79, 0, !dbg !2693
  br i1 %80, label %93, label %81, !dbg !2693

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2571, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2561, metadata !DIExpression()), !dbg !2621
  %85 = icmp ult i64 %84, %40, !dbg !2694
  br i1 %85, label %86, label %88, !dbg !2697

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2694
  store i8 %82, ptr %87, align 1, !dbg !2694, !tbaa !1114
  br label %88, !dbg !2694

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2697
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2561, metadata !DIExpression()), !dbg !2621
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2698
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2571, metadata !DIExpression()), !dbg !2690
  %91 = load i8, ptr %90, align 1, !dbg !2691, !tbaa !1114
  %92 = icmp eq i8 %91, 0, !dbg !2693
  br i1 %92, label %93, label %81, !dbg !2693, !llvm.loop !2699

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2565, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2563, metadata !DIExpression()), !dbg !2621
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2702
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2564, metadata !DIExpression()), !dbg !2621
  br label %114, !dbg !2703

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2565, metadata !DIExpression()), !dbg !2621
  br label %98, !dbg !2704

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2565, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2566, metadata !DIExpression()), !dbg !2621
  br label %98, !dbg !2705

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2629
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2565, metadata !DIExpression()), !dbg !2621
  %101 = and i8 %100, 1, !dbg !2706
  %102 = icmp eq i8 %101, 0, !dbg !2706
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2708
  br label %104, !dbg !2708

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2621
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2624
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2565, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2555, metadata !DIExpression()), !dbg !2621
  %107 = and i8 %106, 1, !dbg !2709
  %108 = icmp eq i8 %107, 0, !dbg !2709
  br i1 %108, label %109, label %114, !dbg !2711

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2712
  br i1 %110, label %114, label %111, !dbg !2715

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2712, !tbaa !1114
  br label %114, !dbg !2712

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2566, metadata !DIExpression()), !dbg !2621
  br label %114, !dbg !2716

113:                                              ; preds = %28
  call void @abort() #41, !dbg !2717
  unreachable, !dbg !2717

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2701
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.88, %45 ], [ @.str.10.88, %47 ], [ @.str.10.88, %42 ], [ %34, %28 ], [ @.str.12.89, %109 ], [ @.str.12.89, %111 ], [ @.str.12.89, %104 ], [ @.str.10.88, %41 ], !dbg !2621
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2621
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2621
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2566, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2565, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2564, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2563, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2559, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2558, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2555, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2718
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
  br label %138, !dbg !2719

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2701
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2626
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2630
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2631
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2720
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2721
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2568, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2554, metadata !DIExpression()), !dbg !2621
  %147 = icmp eq i64 %139, -1, !dbg !2722
  br i1 %147, label %148, label %152, !dbg !2723

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2724
  %150 = load i8, ptr %149, align 1, !dbg !2724, !tbaa !1114
  %151 = icmp eq i8 %150, 0, !dbg !2725
  br i1 %151, label %612, label %154, !dbg !2726

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2727
  br i1 %153, label %612, label %154, !dbg !2726

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2728
  br i1 %128, label %155, label %170, !dbg !2729

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2731
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2732
  br i1 %157, label %158, label %160, !dbg !2732

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2733
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2554, metadata !DIExpression()), !dbg !2621
  br label %160, !dbg !2734

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2734
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2554, metadata !DIExpression()), !dbg !2621
  %162 = icmp ugt i64 %156, %161, !dbg !2735
  br i1 %162, label %170, label %163, !dbg !2736

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %164, metadata !2738, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %119, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %120, metadata !2742, metadata !DIExpression()), !dbg !2743
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2745
  %166 = icmp ne i32 %165, 0, !dbg !2746
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2747
  %168 = xor i1 %166, true, !dbg !2747
  %169 = zext i1 %168 to i8, !dbg !2747
  br i1 %167, label %170, label %666, !dbg !2747

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2728
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2554, metadata !DIExpression()), !dbg !2621
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2748
  %175 = load i8, ptr %174, align 1, !dbg !2748, !tbaa !1114
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2583, metadata !DIExpression()), !dbg !2728
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
  ], !dbg !2749

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2750

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2751

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2728
  %179 = and i8 %144, 1, !dbg !2755
  %180 = icmp eq i8 %179, 0, !dbg !2755
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2755
  br i1 %181, label %182, label %198, !dbg !2755

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2757
  br i1 %183, label %184, label %186, !dbg !2761

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2757
  store i8 39, ptr %185, align 1, !dbg !2757, !tbaa !1114
  br label %186, !dbg !2757

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2561, metadata !DIExpression()), !dbg !2621
  %188 = icmp ult i64 %187, %146, !dbg !2762
  br i1 %188, label %189, label %191, !dbg !2765

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2762
  store i8 36, ptr %190, align 1, !dbg !2762, !tbaa !1114
  br label %191, !dbg !2762

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2561, metadata !DIExpression()), !dbg !2621
  %193 = icmp ult i64 %192, %146, !dbg !2766
  br i1 %193, label %194, label %196, !dbg !2769

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2766
  store i8 39, ptr %195, align 1, !dbg !2766, !tbaa !1114
  br label %196, !dbg !2766

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2621
  br label %198, !dbg !2770

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2621
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2561, metadata !DIExpression()), !dbg !2621
  %201 = icmp ult i64 %199, %146, !dbg !2771
  br i1 %201, label %202, label %204, !dbg !2774

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2771
  store i8 92, ptr %203, align 1, !dbg !2771, !tbaa !1114
  br label %204, !dbg !2771

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2561, metadata !DIExpression()), !dbg !2621
  br i1 %125, label %206, label %476, !dbg !2775

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2777
  %208 = icmp ult i64 %207, %171, !dbg !2778
  br i1 %208, label %209, label %465, !dbg !2779

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2780
  %211 = load i8, ptr %210, align 1, !dbg !2780, !tbaa !1114
  %212 = add i8 %211, -48, !dbg !2781
  %213 = icmp ult i8 %212, 10, !dbg !2781
  br i1 %213, label %214, label %465, !dbg !2781

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2782
  br i1 %215, label %216, label %218, !dbg !2786

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2782
  store i8 48, ptr %217, align 1, !dbg !2782, !tbaa !1114
  br label %218, !dbg !2782

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2786
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2561, metadata !DIExpression()), !dbg !2621
  %220 = icmp ult i64 %219, %146, !dbg !2787
  br i1 %220, label %221, label %223, !dbg !2790

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2787
  store i8 48, ptr %222, align 1, !dbg !2787, !tbaa !1114
  br label %223, !dbg !2787

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2561, metadata !DIExpression()), !dbg !2621
  br label %465, !dbg !2791

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2792

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2793

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2794

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2796

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2798
  %231 = icmp ult i64 %230, %171, !dbg !2799
  br i1 %231, label %232, label %465, !dbg !2800

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2801
  %234 = load i8, ptr %233, align 1, !dbg !2801, !tbaa !1114
  %235 = icmp eq i8 %234, 63, !dbg !2802
  br i1 %235, label %236, label %465, !dbg !2803

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2804
  %238 = load i8, ptr %237, align 1, !dbg !2804, !tbaa !1114
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
  ], !dbg !2805

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2806

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2576, metadata !DIExpression()), !dbg !2718
  %241 = icmp ult i64 %140, %146, !dbg !2808
  br i1 %241, label %242, label %244, !dbg !2811

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2808
  store i8 63, ptr %243, align 1, !dbg !2808, !tbaa !1114
  br label %244, !dbg !2808

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2561, metadata !DIExpression()), !dbg !2621
  %246 = icmp ult i64 %245, %146, !dbg !2812
  br i1 %246, label %247, label %249, !dbg !2815

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2812
  store i8 34, ptr %248, align 1, !dbg !2812, !tbaa !1114
  br label %249, !dbg !2812

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2561, metadata !DIExpression()), !dbg !2621
  %251 = icmp ult i64 %250, %146, !dbg !2816
  br i1 %251, label %252, label %254, !dbg !2819

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2816
  store i8 34, ptr %253, align 1, !dbg !2816, !tbaa !1114
  br label %254, !dbg !2816

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2561, metadata !DIExpression()), !dbg !2621
  %256 = icmp ult i64 %255, %146, !dbg !2820
  br i1 %256, label %257, label %259, !dbg !2823

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2820
  store i8 63, ptr %258, align 1, !dbg !2820, !tbaa !1114
  br label %259, !dbg !2820

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2823
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2561, metadata !DIExpression()), !dbg !2621
  br label %465, !dbg !2824

261:                                              ; preds = %170
  br label %272, !dbg !2825

262:                                              ; preds = %170
  br label %272, !dbg !2826

263:                                              ; preds = %170
  br label %270, !dbg !2827

264:                                              ; preds = %170
  br label %270, !dbg !2828

265:                                              ; preds = %170
  br label %272, !dbg !2829

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2830

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2831

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2834

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2836

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2837
  call void @llvm.dbg.label(metadata !2584), !dbg !2838
  br i1 %133, label %272, label %655, !dbg !2839

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2837
  call void @llvm.dbg.label(metadata !2587), !dbg !2841
  br i1 %124, label %520, label %476, !dbg !2842

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2843

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2844, !tbaa !1114
  %277 = icmp eq i8 %276, 0, !dbg !2846
  br i1 %277, label %278, label %465, !dbg !2847

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2848
  br i1 %279, label %280, label %465, !dbg !2850

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2728
  br label %281, !dbg !2851

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2582, metadata !DIExpression()), !dbg !2728
  br i1 %133, label %465, label %655, !dbg !2852

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2728
  br i1 %132, label %284, label %465, !dbg !2854

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2855

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2858
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2860
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2860
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2562, metadata !DIExpression()), !dbg !2621
  %291 = icmp ult i64 %140, %290, !dbg !2861
  br i1 %291, label %292, label %294, !dbg !2864

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2861
  store i8 39, ptr %293, align 1, !dbg !2861, !tbaa !1114
  br label %294, !dbg !2861

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2561, metadata !DIExpression()), !dbg !2621
  %296 = icmp ult i64 %295, %290, !dbg !2865
  br i1 %296, label %297, label %299, !dbg !2868

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2865
  store i8 92, ptr %298, align 1, !dbg !2865, !tbaa !1114
  br label %299, !dbg !2865

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2561, metadata !DIExpression()), !dbg !2621
  %301 = icmp ult i64 %300, %290, !dbg !2869
  br i1 %301, label %302, label %304, !dbg !2872

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2869
  store i8 39, ptr %303, align 1, !dbg !2869, !tbaa !1114
  br label %304, !dbg !2869

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2621
  br label %465, !dbg !2873

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2874

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2588, metadata !DIExpression()), !dbg !2875
  %308 = tail call ptr @__ctype_b_loc() #42, !dbg !2876
  %309 = load ptr, ptr %308, align 8, !dbg !2876, !tbaa !1034
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2876
  %312 = load i16, ptr %311, align 2, !dbg !2876, !tbaa !1146
  %313 = and i16 %312, 16384, !dbg !2878
  %314 = icmp ne i16 %313, 0, !dbg !2878
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2590, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2875
  br label %355, !dbg !2879

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %14, metadata !2651, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %14, metadata !2659, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 8, metadata !2663, metadata !DIExpression()), !dbg !2883
  store i64 0, ptr %14, align 8, !dbg !2885
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2590, metadata !DIExpression()), !dbg !2875
  %316 = icmp eq i64 %171, -1, !dbg !2886
  br i1 %316, label %317, label %319, !dbg !2888

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2554, metadata !DIExpression()), !dbg !2621
  br label %319, !dbg !2890

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2554, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2891
  %321 = sub i64 %320, %145, !dbg !2892
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #39, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2598, metadata !DIExpression()), !dbg !2620
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2894

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2875
  %324 = icmp ult i64 %145, %320, !dbg !2895
  br i1 %324, label %326, label %351, !dbg !2897

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2875
  br label %351, !dbg !2898

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2588, metadata !DIExpression()), !dbg !2875
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2900
  %330 = load i8, ptr %329, align 1, !dbg !2900, !tbaa !1114
  %331 = icmp eq i8 %330, 0, !dbg !2897
  br i1 %331, label %351, label %332, !dbg !2901

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2588, metadata !DIExpression()), !dbg !2875
  %334 = add i64 %333, %145, !dbg !2903
  %335 = icmp eq i64 %333, %321, !dbg !2895
  br i1 %335, label %351, label %326, !dbg !2897, !llvm.loop !2904

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2599, metadata !DIExpression()), !dbg !2905
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2906
  %339 = and i1 %338, %132, !dbg !2906
  br i1 %339, label %340, label %347, !dbg !2906

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2599, metadata !DIExpression()), !dbg !2905
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2907
  %343 = load i8, ptr %342, align 1, !dbg !2907, !tbaa !1114
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2909

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2599, metadata !DIExpression()), !dbg !2905
  %346 = icmp eq i64 %345, %322, !dbg !2911
  br i1 %346, label %347, label %340, !dbg !2912, !llvm.loop !2913

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2915, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %348, metadata !2917, metadata !DIExpression()), !dbg !2925
  %349 = call i32 @iswprint(i32 noundef %348) #39, !dbg !2927
  %350 = icmp ne i32 %349, 0, !dbg !2928
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2588, metadata !DIExpression()), !dbg !2875
  br label %351, !dbg !2929

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2588, metadata !DIExpression()), !dbg !2875
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2931
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2875
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2931
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2728
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2932
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2932
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2588, metadata !DIExpression()), !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2554, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2582, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2728
  %359 = icmp ult i64 %357, 2, !dbg !2933
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2934
  br i1 %361, label %461, label %362, !dbg !2934

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2607, metadata !DIExpression()), !dbg !2936
  br label %364, !dbg !2937

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2621
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2720
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2718
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2728
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2938
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2561, metadata !DIExpression()), !dbg !2621
  br i1 %360, label %417, label %371, !dbg !2939

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2944

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2728
  %373 = and i8 %366, 1, !dbg !2947
  %374 = icmp eq i8 %373, 0, !dbg !2947
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2947
  br i1 %375, label %376, label %392, !dbg !2947

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2949
  br i1 %377, label %378, label %380, !dbg !2953

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2949
  store i8 39, ptr %379, align 1, !dbg !2949, !tbaa !1114
  br label %380, !dbg !2949

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2953
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2561, metadata !DIExpression()), !dbg !2621
  %382 = icmp ult i64 %381, %146, !dbg !2954
  br i1 %382, label %383, label %385, !dbg !2957

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2954
  store i8 36, ptr %384, align 1, !dbg !2954, !tbaa !1114
  br label %385, !dbg !2954

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2957
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2561, metadata !DIExpression()), !dbg !2621
  %387 = icmp ult i64 %386, %146, !dbg !2958
  br i1 %387, label %388, label %390, !dbg !2961

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2958
  store i8 39, ptr %389, align 1, !dbg !2958, !tbaa !1114
  br label %390, !dbg !2958

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2621
  br label %392, !dbg !2962

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2621
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2561, metadata !DIExpression()), !dbg !2621
  %395 = icmp ult i64 %393, %146, !dbg !2963
  br i1 %395, label %396, label %398, !dbg !2966

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2963
  store i8 92, ptr %397, align 1, !dbg !2963, !tbaa !1114
  br label %398, !dbg !2963

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2966
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2561, metadata !DIExpression()), !dbg !2621
  %400 = icmp ult i64 %399, %146, !dbg !2967
  br i1 %400, label %401, label %405, !dbg !2970

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2967
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2967
  store i8 %403, ptr %404, align 1, !dbg !2967, !tbaa !1114
  br label %405, !dbg !2967

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2970
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2561, metadata !DIExpression()), !dbg !2621
  %407 = icmp ult i64 %406, %146, !dbg !2971
  br i1 %407, label %408, label %413, !dbg !2974

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2971
  %411 = or disjoint i8 %410, 48, !dbg !2971
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2971
  store i8 %411, ptr %412, align 1, !dbg !2971, !tbaa !1114
  br label %413, !dbg !2971

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2561, metadata !DIExpression()), !dbg !2621
  %415 = and i8 %370, 7, !dbg !2975
  %416 = or disjoint i8 %415, 48, !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2583, metadata !DIExpression()), !dbg !2728
  br label %426, !dbg !2977

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2978
  %419 = icmp eq i8 %418, 0, !dbg !2978
  br i1 %419, label %426, label %420, !dbg !2980

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2981
  br i1 %421, label %422, label %424, !dbg !2985

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2981
  store i8 92, ptr %423, align 1, !dbg !2981, !tbaa !1114
  br label %424, !dbg !2981

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2578, metadata !DIExpression()), !dbg !2728
  br label %426, !dbg !2986

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2621
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2720
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2728
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2728
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2561, metadata !DIExpression()), !dbg !2621
  %432 = add i64 %367, 1, !dbg !2987
  %433 = icmp ugt i64 %363, %432, !dbg !2989
  br i1 %433, label %434, label %463, !dbg !2990

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2991
  %436 = icmp ne i8 %435, 0, !dbg !2991
  %437 = and i8 %430, 1, !dbg !2991
  %438 = icmp eq i8 %437, 0, !dbg !2991
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2991
  br i1 %439, label %440, label %451, !dbg !2991

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2994
  br i1 %441, label %442, label %444, !dbg !2998

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2994
  store i8 39, ptr %443, align 1, !dbg !2994, !tbaa !1114
  br label %444, !dbg !2994

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2561, metadata !DIExpression()), !dbg !2621
  %446 = icmp ult i64 %445, %146, !dbg !2999
  br i1 %446, label %447, label %449, !dbg !3002

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2999
  store i8 39, ptr %448, align 1, !dbg !2999, !tbaa !1114
  br label %449, !dbg !2999

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2621
  br label %451, !dbg !3003

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3004
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2561, metadata !DIExpression()), !dbg !2621
  %454 = icmp ult i64 %452, %146, !dbg !3005
  br i1 %454, label %455, label %457, !dbg !3008

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3005
  store i8 %431, ptr %456, align 1, !dbg !3005, !tbaa !1114
  br label %457, !dbg !3005

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3008
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2576, metadata !DIExpression()), !dbg !2718
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3009
  %460 = load i8, ptr %459, align 1, !dbg !3009, !tbaa !1114
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2583, metadata !DIExpression()), !dbg !2728
  br label %364, !dbg !3010, !llvm.loop !3011

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2582, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2554, metadata !DIExpression()), !dbg !2621
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2582, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2554, metadata !DIExpression()), !dbg !2621
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3014
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2621
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2626
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2621
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2621
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2718
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2728
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2728
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2728
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2582, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2578, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2554, metadata !DIExpression()), !dbg !2621
  br i1 %126, label %487, label %476, !dbg !3015

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
  br i1 %137, label %488, label %509, !dbg !3017

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3018

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
  %499 = lshr i8 %490, 5, !dbg !3019
  %500 = zext nneg i8 %499 to i64, !dbg !3019
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3020
  %502 = load i32, ptr %501, align 4, !dbg !3020, !tbaa !1105
  %503 = and i8 %490, 31, !dbg !3021
  %504 = zext nneg i8 %503 to i32, !dbg !3021
  %505 = shl nuw i32 1, %504, !dbg !3022
  %506 = and i32 %502, %505, !dbg !3022
  %507 = icmp eq i32 %506, 0, !dbg !3022
  %508 = and i1 %172, %507, !dbg !3023
  br i1 %508, label %558, label %520, !dbg !3023

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
  br i1 %172, label %558, label %520, !dbg !3024

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3014
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2621
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2626
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2630
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2720
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3025
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2728
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2728
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2582, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2554, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.label(metadata !2610), !dbg !3026
  br i1 %131, label %530, label %659, !dbg !3027

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2728
  %531 = and i8 %525, 1, !dbg !3029
  %532 = icmp eq i8 %531, 0, !dbg !3029
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3029
  br i1 %533, label %534, label %550, !dbg !3029

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3031
  br i1 %535, label %536, label %538, !dbg !3035

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3031
  store i8 39, ptr %537, align 1, !dbg !3031, !tbaa !1114
  br label %538, !dbg !3031

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3035
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2561, metadata !DIExpression()), !dbg !2621
  %540 = icmp ult i64 %539, %529, !dbg !3036
  br i1 %540, label %541, label %543, !dbg !3039

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3036
  store i8 36, ptr %542, align 1, !dbg !3036, !tbaa !1114
  br label %543, !dbg !3036

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3039
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2561, metadata !DIExpression()), !dbg !2621
  %545 = icmp ult i64 %544, %529, !dbg !3040
  br i1 %545, label %546, label %548, !dbg !3043

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3040
  store i8 39, ptr %547, align 1, !dbg !3040, !tbaa !1114
  br label %548, !dbg !3040

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3043
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2621
  br label %550, !dbg !3044

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2728
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2561, metadata !DIExpression()), !dbg !2621
  %553 = icmp ult i64 %551, %529, !dbg !3045
  br i1 %553, label %554, label %556, !dbg !3048

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3045
  store i8 92, ptr %555, align 1, !dbg !3045, !tbaa !1114
  br label %556, !dbg !3045

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2582, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2554, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.label(metadata !2611), !dbg !3049
  br label %585, !dbg !3050

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3014
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2621
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2626
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2630
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2720
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3025
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2728
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2728
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3053
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2583, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2582, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2581, metadata !DIExpression()), !dbg !2728
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2554, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.label(metadata !2611), !dbg !3049
  %569 = and i8 %563, 1, !dbg !3050
  %570 = icmp ne i8 %569, 0, !dbg !3050
  %571 = and i8 %565, 1, !dbg !3050
  %572 = icmp eq i8 %571, 0, !dbg !3050
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3050
  br i1 %573, label %574, label %585, !dbg !3050

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3054
  br i1 %575, label %576, label %578, !dbg !3058

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3054
  store i8 39, ptr %577, align 1, !dbg !3054, !tbaa !1114
  br label %578, !dbg !3054

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2561, metadata !DIExpression()), !dbg !2621
  %580 = icmp ult i64 %579, %568, !dbg !3059
  br i1 %580, label %581, label %583, !dbg !3062

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3059
  store i8 39, ptr %582, align 1, !dbg !3059, !tbaa !1114
  br label %583, !dbg !3059

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3062
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2621
  br label %585, !dbg !3063

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2728
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2561, metadata !DIExpression()), !dbg !2621
  %595 = icmp ult i64 %593, %586, !dbg !3064
  br i1 %595, label %596, label %598, !dbg !3067

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3064
  store i8 %587, ptr %597, align 1, !dbg !3064, !tbaa !1114
  br label %598, !dbg !3064

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2561, metadata !DIExpression()), !dbg !2621
  %600 = icmp eq i8 %588, 0, !dbg !3068
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3070
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2568, metadata !DIExpression()), !dbg !2621
  br label %602, !dbg !3071

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3014
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2621
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2626
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2630
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2631
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2720
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3025
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2576, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2570, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2568, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2554, metadata !DIExpression()), !dbg !2621
  %611 = add i64 %609, 1, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2576, metadata !DIExpression()), !dbg !2718
  br label %138, !dbg !3073, !llvm.loop !3074

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2552, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2568, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2567, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2562, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2561, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2554, metadata !DIExpression()), !dbg !2621
  %613 = icmp eq i64 %140, 0, !dbg !3076
  %614 = and i1 %132, %613, !dbg !3078
  %615 = xor i1 %614, true, !dbg !3078
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3078
  br i1 %616, label %617, label %655, !dbg !3078

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3079
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3079
  br i1 %621, label %622, label %631, !dbg !3079

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3081
  %624 = icmp eq i8 %623, 0, !dbg !3081
  br i1 %624, label %627, label %625, !dbg !3084

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3085
  br label %672, !dbg !3086

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3087
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3089
  br i1 %630, label %28, label %631, !dbg !3089

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3090
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3092
  br i1 %634, label %635, label %650, !dbg !3092

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2563, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2561, metadata !DIExpression()), !dbg !2621
  %636 = load i8, ptr %119, align 1, !dbg !3093, !tbaa !1114
  %637 = icmp eq i8 %636, 0, !dbg !3096
  br i1 %637, label %650, label %638, !dbg !3096

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2563, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2561, metadata !DIExpression()), !dbg !2621
  %642 = icmp ult i64 %641, %146, !dbg !3097
  br i1 %642, label %643, label %645, !dbg !3100

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3097
  store i8 %639, ptr %644, align 1, !dbg !3097, !tbaa !1114
  br label %645, !dbg !3097

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2561, metadata !DIExpression()), !dbg !2621
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3101
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2563, metadata !DIExpression()), !dbg !2621
  %648 = load i8, ptr %647, align 1, !dbg !3093, !tbaa !1114
  %649 = icmp eq i8 %648, 0, !dbg !3096
  br i1 %649, label %650, label %638, !dbg !3096, !llvm.loop !3102

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2701
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2561, metadata !DIExpression()), !dbg !2621
  %652 = icmp ult i64 %651, %146, !dbg !3104
  br i1 %652, label %653, label %672, !dbg !3106

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3107
  store i8 0, ptr %654, align 1, !dbg !3108, !tbaa !1114
  br label %672, !dbg !3107

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2612), !dbg !3109
  %657 = icmp eq i8 %123, 0, !dbg !3110
  %658 = select i1 %657, i32 2, i32 4, !dbg !3110
  br label %666, !dbg !3110

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2612), !dbg !3109
  %662 = icmp eq i32 %115, 2, !dbg !3112
  %663 = icmp eq i8 %123, 0, !dbg !3110
  %664 = select i1 %663, i32 2, i32 4, !dbg !3110
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3110
  br label %666, !dbg !3110

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2555, metadata !DIExpression()), !dbg !2621
  %670 = and i32 %5, -3, !dbg !3113
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3114
  br label %672, !dbg !3115

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3116
}

; Function Attrs: nounwind
declare !dbg !3117 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3119 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr null, metadata !3135, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %2, metadata !3136, metadata !DIExpression()), !dbg !3142
  %4 = icmp eq ptr %2, null, !dbg !3144
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3144
  call void @llvm.dbg.value(metadata ptr %5, metadata !3137, metadata !DIExpression()), !dbg !3142
  %6 = tail call ptr @__errno_location() #42, !dbg !3145
  %7 = load i32, ptr %6, align 4, !dbg !3145, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %7, metadata !3138, metadata !DIExpression()), !dbg !3142
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3146
  %9 = load i32, ptr %8, align 4, !dbg !3146, !tbaa !2495
  %10 = or i32 %9, 1, !dbg !3147
  call void @llvm.dbg.value(metadata i32 %10, metadata !3139, metadata !DIExpression()), !dbg !3142
  %11 = load i32, ptr %5, align 8, !dbg !3148, !tbaa !2445
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3149
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3150
  %14 = load ptr, ptr %13, align 8, !dbg !3150, !tbaa !2516
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3151
  %16 = load ptr, ptr %15, align 8, !dbg !3151, !tbaa !2519
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3152
  %18 = add i64 %17, 1, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %18, metadata !3140, metadata !DIExpression()), !dbg !3142
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %19, metadata !3141, metadata !DIExpression()), !dbg !3142
  %20 = load i32, ptr %5, align 8, !dbg !3155, !tbaa !2445
  %21 = load ptr, ptr %13, align 8, !dbg !3156, !tbaa !2516
  %22 = load ptr, ptr %15, align 8, !dbg !3157, !tbaa !2519
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3158
  store i32 %7, ptr %6, align 4, !dbg !3159, !tbaa !1105
  ret ptr %19, !dbg !3160
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3130 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3135, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3136, metadata !DIExpression()), !dbg !3161
  %5 = icmp eq ptr %3, null, !dbg !3162
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3162
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3137, metadata !DIExpression()), !dbg !3161
  %7 = tail call ptr @__errno_location() #42, !dbg !3163
  %8 = load i32, ptr %7, align 4, !dbg !3163, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3138, metadata !DIExpression()), !dbg !3161
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3164
  %10 = load i32, ptr %9, align 4, !dbg !3164, !tbaa !2495
  %11 = icmp eq ptr %2, null, !dbg !3165
  %12 = zext i1 %11 to i32, !dbg !3165
  %13 = or i32 %10, %12, !dbg !3166
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3139, metadata !DIExpression()), !dbg !3161
  %14 = load i32, ptr %6, align 8, !dbg !3167, !tbaa !2445
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3168
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3169
  %17 = load ptr, ptr %16, align 8, !dbg !3169, !tbaa !2516
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3170
  %19 = load ptr, ptr %18, align 8, !dbg !3170, !tbaa !2519
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3171
  %21 = add i64 %20, 1, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3140, metadata !DIExpression()), !dbg !3161
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !3173
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3141, metadata !DIExpression()), !dbg !3161
  %23 = load i32, ptr %6, align 8, !dbg !3174, !tbaa !2445
  %24 = load ptr, ptr %16, align 8, !dbg !3175, !tbaa !2516
  %25 = load ptr, ptr %18, align 8, !dbg !3176, !tbaa !2519
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3177
  store i32 %8, ptr %7, align 4, !dbg !3178, !tbaa !1105
  br i1 %11, label %28, label %27, !dbg !3179

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3180, !tbaa !1271
  br label %28, !dbg !3182

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3183
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3184 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3189, !tbaa !1034
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3186, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3187, metadata !DIExpression()), !dbg !3191
  %2 = load i32, ptr @nslots, align 4, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3187, metadata !DIExpression()), !dbg !3191
  %3 = icmp sgt i32 %2, 1, !dbg !3192
  br i1 %3, label %4, label %6, !dbg !3194

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3192
  br label %10, !dbg !3194

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3195
  %8 = load ptr, ptr %7, align 8, !dbg !3195, !tbaa !3197
  %9 = icmp eq ptr %8, @slot0, !dbg !3199
  br i1 %9, label %17, label %16, !dbg !3200

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3187, metadata !DIExpression()), !dbg !3191
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3201
  %13 = load ptr, ptr %12, align 8, !dbg !3201, !tbaa !3197
  tail call void @free(ptr noundef %13) #39, !dbg !3202
  %14 = add nuw nsw i64 %11, 1, !dbg !3203
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3187, metadata !DIExpression()), !dbg !3191
  %15 = icmp eq i64 %14, %5, !dbg !3192
  br i1 %15, label %6, label %10, !dbg !3194, !llvm.loop !3204

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3206
  store i64 256, ptr @slotvec0, align 8, !dbg !3208, !tbaa !3209
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3210, !tbaa !3197
  br label %17, !dbg !3211

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3212
  br i1 %18, label %20, label %19, !dbg !3214

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3215
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3217, !tbaa !1034
  br label %20, !dbg !3218

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3219, !tbaa !1105
  ret void, !dbg !3220
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3221 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3223, metadata !DIExpression()), !dbg !3225
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3224, metadata !DIExpression()), !dbg !3225
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3226
  ret ptr %3, !dbg !3227
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3228 {
  %5 = alloca i64, align 8, !DIAssignID !3248
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3242, metadata !DIExpression(), metadata !3248, metadata ptr %5, metadata !DIExpression()), !dbg !3249
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3232, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3233, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3234, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3235, metadata !DIExpression()), !dbg !3250
  %6 = tail call ptr @__errno_location() #42, !dbg !3251
  %7 = load i32, ptr %6, align 4, !dbg !3251, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3236, metadata !DIExpression()), !dbg !3250
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3252, !tbaa !1034
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3237, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3238, metadata !DIExpression()), !dbg !3250
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3253
  br i1 %9, label %10, label %11, !dbg !3253

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3255
  unreachable, !dbg !3255

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3256, !tbaa !1105
  %13 = icmp sgt i32 %12, %0, !dbg !3257
  br i1 %13, label %32, label %14, !dbg !3258

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3259
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3239, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3260
  %16 = sext i32 %12 to i64, !dbg !3261
  store i64 %16, ptr %5, align 8, !dbg !3262, !tbaa !1271, !DIAssignID !3263
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3242, metadata !DIExpression(), metadata !3263, metadata ptr %5, metadata !DIExpression()), !dbg !3249
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3264
  %18 = add nuw nsw i32 %0, 1, !dbg !3265
  %19 = sub i32 %18, %12, !dbg !3266
  %20 = sext i32 %19 to i64, !dbg !3267
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3268
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3237, metadata !DIExpression()), !dbg !3250
  store ptr %21, ptr @slotvec, align 8, !dbg !3269, !tbaa !1034
  br i1 %15, label %22, label %23, !dbg !3270

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3271, !tbaa.struct !3273
  br label %23, !dbg !3274

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3275, !tbaa !1105
  %25 = sext i32 %24 to i64, !dbg !3276
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3276
  %27 = load i64, ptr %5, align 8, !dbg !3277, !tbaa !1271
  %28 = sub nsw i64 %27, %25, !dbg !3278
  %29 = shl i64 %28, 4, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %26, metadata !2659, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 0, metadata !2662, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %29, metadata !2663, metadata !DIExpression()), !dbg !3280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3282
  %30 = load i64, ptr %5, align 8, !dbg !3283, !tbaa !1271
  %31 = trunc i64 %30 to i32, !dbg !3283
  store i32 %31, ptr @nslots, align 4, !dbg !3284, !tbaa !1105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3285
  br label %32, !dbg !3286

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3237, metadata !DIExpression()), !dbg !3250
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3287
  %36 = load i64, ptr %35, align 8, !dbg !3288, !tbaa !3209
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3243, metadata !DIExpression()), !dbg !3289
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3290
  %38 = load ptr, ptr %37, align 8, !dbg !3290, !tbaa !3197
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3245, metadata !DIExpression()), !dbg !3289
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3291
  %40 = load i32, ptr %39, align 4, !dbg !3291, !tbaa !2495
  %41 = or i32 %40, 1, !dbg !3292
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3246, metadata !DIExpression()), !dbg !3289
  %42 = load i32, ptr %3, align 8, !dbg !3293, !tbaa !2445
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3294
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3295
  %45 = load ptr, ptr %44, align 8, !dbg !3295, !tbaa !2516
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3296
  %47 = load ptr, ptr %46, align 8, !dbg !3296, !tbaa !2519
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3247, metadata !DIExpression()), !dbg !3289
  %49 = icmp ugt i64 %36, %48, !dbg !3298
  br i1 %49, label %60, label %50, !dbg !3300

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3243, metadata !DIExpression()), !dbg !3289
  store i64 %51, ptr %35, align 8, !dbg !3303, !tbaa !3209
  %52 = icmp eq ptr %38, @slot0, !dbg !3304
  br i1 %52, label %54, label %53, !dbg !3306

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3307
  br label %54, !dbg !3307

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !3308
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3245, metadata !DIExpression()), !dbg !3289
  store ptr %55, ptr %37, align 8, !dbg !3309, !tbaa !3197
  %56 = load i32, ptr %3, align 8, !dbg !3310, !tbaa !2445
  %57 = load ptr, ptr %44, align 8, !dbg !3311, !tbaa !2516
  %58 = load ptr, ptr %46, align 8, !dbg !3312, !tbaa !2519
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3313
  br label %60, !dbg !3314

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3289
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3245, metadata !DIExpression()), !dbg !3289
  store i32 %7, ptr %6, align 4, !dbg !3315, !tbaa !1105
  ret ptr %61, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3317 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3321, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3324
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3323, metadata !DIExpression()), !dbg !3324
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3325
  ret ptr %4, !dbg !3326
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3329, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i32 0, metadata !3223, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %0, metadata !3224, metadata !DIExpression()), !dbg !3331
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3333
  ret ptr %2, !dbg !3334
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3335 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3339, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3340, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !3321, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %0, metadata !3322, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3323, metadata !DIExpression()), !dbg !3342
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3344
  ret ptr %3, !dbg !3345
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3346 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3354
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3353, metadata !DIExpression(), metadata !3354, metadata ptr %4, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3350, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3351, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3357), !dbg !3360
  call void @llvm.dbg.value(metadata i32 %1, metadata !3361, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3369, !alias.scope !3357, !DIAssignID !3370
  call void @llvm.dbg.assign(metadata i8 0, metadata !3353, metadata !DIExpression(), metadata !3370, metadata ptr %4, metadata !DIExpression()), !dbg !3355
  %5 = icmp eq i32 %1, 10, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3373

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3374, !noalias !3357
  unreachable, !dbg !3374

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3375, !tbaa !2445, !alias.scope !3357, !DIAssignID !3376
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3376, metadata ptr %4, metadata !DIExpression()), !dbg !3355
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3377
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3378
  ret ptr %8, !dbg !3379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3380 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3389, metadata ptr %5, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3385, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3386, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3387, metadata !DIExpression()), !dbg !3390
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3392), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %1, metadata !3361, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3366, metadata !DIExpression()), !dbg !3398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3398, !alias.scope !3392, !DIAssignID !3399
  call void @llvm.dbg.assign(metadata i8 0, metadata !3388, metadata !DIExpression(), metadata !3399, metadata ptr %5, metadata !DIExpression()), !dbg !3390
  %6 = icmp eq i32 %1, 10, !dbg !3400
  br i1 %6, label %7, label %8, !dbg !3401

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3402, !noalias !3392
  unreachable, !dbg !3402

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3403, !tbaa !2445, !alias.scope !3392, !DIAssignID !3404
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3404, metadata ptr %5, metadata !DIExpression()), !dbg !3390
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3405
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3406
  ret ptr %9, !dbg !3407
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3408 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3414
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3412, metadata !DIExpression()), !dbg !3415
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3413, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3353, metadata !DIExpression(), metadata !3414, metadata ptr %3, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 0, metadata !3350, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata ptr %1, metadata !3352, metadata !DIExpression()), !dbg !3416
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419), !dbg !3422
  call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3366, metadata !DIExpression()), !dbg !3425
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3425, !alias.scope !3419, !DIAssignID !3426
  call void @llvm.dbg.assign(metadata i8 0, metadata !3353, metadata !DIExpression(), metadata !3426, metadata ptr %3, metadata !DIExpression()), !dbg !3416
  %4 = icmp eq i32 %0, 10, !dbg !3427
  br i1 %4, label %5, label %6, !dbg !3428

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3429, !noalias !3419
  unreachable, !dbg !3429

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3430, !tbaa !2445, !alias.scope !3419, !DIAssignID !3431
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3431, metadata ptr %3, metadata !DIExpression()), !dbg !3416
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3432
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3433
  ret ptr %7, !dbg !3434
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3435 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3442
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3439, metadata !DIExpression()), !dbg !3443
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3440, metadata !DIExpression()), !dbg !3443
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3388, metadata !DIExpression(), metadata !3442, metadata ptr %4, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 0, metadata !3384, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata ptr %1, metadata !3386, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %2, metadata !3387, metadata !DIExpression()), !dbg !3444
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3366, metadata !DIExpression()), !dbg !3453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3453, !alias.scope !3447, !DIAssignID !3454
  call void @llvm.dbg.assign(metadata i8 0, metadata !3388, metadata !DIExpression(), metadata !3454, metadata ptr %4, metadata !DIExpression()), !dbg !3444
  %5 = icmp eq i32 %0, 10, !dbg !3455
  br i1 %5, label %6, label %7, !dbg !3456

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3457, !noalias !3447
  unreachable, !dbg !3457

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3458, !tbaa !2445, !alias.scope !3447, !DIAssignID !3459
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3388, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3459, metadata ptr %4, metadata !DIExpression()), !dbg !3444
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3460
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3461
  ret ptr %8, !dbg !3462
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3463 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3471
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3471, metadata ptr %4, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3474, !tbaa.struct !3475, !DIAssignID !3476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3476, metadata ptr %4, metadata !DIExpression()), !dbg !3472
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2462, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2463, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2464, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2465, metadata !DIExpression()), !dbg !3477
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3479
  %6 = lshr i8 %2, 5, !dbg !3480
  %7 = zext nneg i8 %6 to i64, !dbg !3480
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3481
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2466, metadata !DIExpression()), !dbg !3477
  %9 = and i8 %2, 31, !dbg !3482
  %10 = zext nneg i8 %9 to i32, !dbg !3482
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2468, metadata !DIExpression()), !dbg !3477
  %11 = load i32, ptr %8, align 4, !dbg !3483, !tbaa !1105
  %12 = lshr i32 %11, %10, !dbg !3484
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2469, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3477
  %13 = and i32 %12, 1, !dbg !3485
  %14 = xor i32 %13, 1, !dbg !3485
  %15 = shl nuw i32 %14, %10, !dbg !3486
  %16 = xor i32 %15, %11, !dbg !3487
  store i32 %16, ptr %8, align 4, !dbg !3487, !tbaa !1105
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3488
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3489
  ret ptr %17, !dbg !3490
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3491 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3497
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3495, metadata !DIExpression()), !dbg !3498
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3496, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3497, metadata ptr %3, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 -1, metadata !3468, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i8 %1, metadata !3469, metadata !DIExpression()), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3502, !tbaa.struct !3475, !DIAssignID !3503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3503, metadata ptr %3, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %3, metadata !2462, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 %1, metadata !2463, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 1, metadata !2464, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8 %1, metadata !2465, metadata !DIExpression()), !dbg !3504
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3506
  %5 = lshr i8 %1, 5, !dbg !3507
  %6 = zext nneg i8 %5 to i64, !dbg !3507
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3508
  call void @llvm.dbg.value(metadata ptr %7, metadata !2466, metadata !DIExpression()), !dbg !3504
  %8 = and i8 %1, 31, !dbg !3509
  %9 = zext nneg i8 %8 to i32, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %9, metadata !2468, metadata !DIExpression()), !dbg !3504
  %10 = load i32, ptr %7, align 4, !dbg !3510, !tbaa !1105
  %11 = lshr i32 %10, %9, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %11, metadata !2469, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3504
  %12 = and i32 %11, 1, !dbg !3512
  %13 = xor i32 %12, 1, !dbg !3512
  %14 = shl nuw i32 %13, %9, !dbg !3513
  %15 = xor i32 %14, %10, !dbg !3514
  store i32 %15, ptr %7, align 4, !dbg !3514, !tbaa !1105
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3516
  ret ptr %16, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3518 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3521
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !3495, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 58, metadata !3496, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3521, metadata ptr %2, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 -1, metadata !3468, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i8 58, metadata !3469, metadata !DIExpression()), !dbg !3525
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3528, !tbaa.struct !3475, !DIAssignID !3529
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3529, metadata ptr %2, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8 58, metadata !2463, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 1, metadata !2464, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()), !dbg !3530
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3532
  call void @llvm.dbg.value(metadata ptr %3, metadata !2466, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 26, metadata !2468, metadata !DIExpression()), !dbg !3530
  %4 = load i32, ptr %3, align 4, !dbg !3533, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %4, metadata !2469, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3530
  %5 = or i32 %4, 67108864, !dbg !3534
  store i32 %5, ptr %3, align 4, !dbg !3534, !tbaa !1105
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3536
  ret ptr %6, !dbg !3537
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3538 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3542
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3540, metadata !DIExpression()), !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3541, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3542, metadata ptr %3, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8 58, metadata !3469, metadata !DIExpression()), !dbg !3544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3547, !tbaa.struct !3475, !DIAssignID !3548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3470, metadata !DIExpression(), metadata !3548, metadata ptr %3, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %3, metadata !2462, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 58, metadata !2463, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 1, metadata !2464, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()), !dbg !3549
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3551
  call void @llvm.dbg.value(metadata ptr %4, metadata !2466, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 26, metadata !2468, metadata !DIExpression()), !dbg !3549
  %5 = load i32, ptr %4, align 4, !dbg !3552, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %5, metadata !2469, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3549
  %6 = or i32 %5, 67108864, !dbg !3553
  store i32 %6, ptr %4, align 4, !dbg !3553, !tbaa !1105
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3554
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3555
  ret ptr %7, !dbg !3556
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3557 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3563
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3562, metadata !DIExpression(), metadata !3563, metadata ptr %4, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3366, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3559, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3560, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3561, metadata !DIExpression()), !dbg !3564
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %1, metadata !3361, metadata !DIExpression()), !dbg !3568
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3568
  %5 = icmp eq i32 %1, 10, !dbg !3569
  br i1 %5, label %6, label %7, !dbg !3570

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3571, !noalias !3572
  unreachable, !dbg !3571

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3568
  store i32 %1, ptr %4, align 8, !dbg !3575, !tbaa.struct !3475, !DIAssignID !3576
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3575
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3562, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3576, metadata ptr %4, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3562, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3577, metadata ptr %8, metadata !DIExpression()), !dbg !3564
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2462, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2463, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2464, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()), !dbg !3578
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3580
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2466, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2468, metadata !DIExpression()), !dbg !3578
  %10 = load i32, ptr %9, align 4, !dbg !3581, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2469, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3578
  %11 = or i32 %10, 67108864, !dbg !3582
  store i32 %11, ptr %9, align 4, !dbg !3582, !tbaa !1105, !DIAssignID !3583
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3562, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3583, metadata ptr %9, metadata !DIExpression()), !dbg !3564
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3584
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3585
  ret ptr %12, !dbg !3586
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3587 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3595
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3591, metadata !DIExpression()), !dbg !3596
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3592, metadata !DIExpression()), !dbg !3596
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3593, metadata !DIExpression()), !dbg !3596
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3595, metadata ptr %5, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %1, metadata !3603, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %2, metadata !3604, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %3, metadata !3605, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 -1, metadata !3606, metadata !DIExpression()), !dbg !3607
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3610, !tbaa.struct !3475, !DIAssignID !3611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3611, metadata ptr %5, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3612, metadata ptr undef, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %1, metadata !2503, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %2, metadata !2504, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !3613
  store i32 10, ptr %5, align 8, !dbg !3615, !tbaa !2445, !DIAssignID !3616
  call void @llvm.dbg.assign(metadata i32 10, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3616, metadata ptr %5, metadata !DIExpression()), !dbg !3607
  %6 = icmp ne ptr %1, null, !dbg !3617
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3618
  br i1 %8, label %10, label %9, !dbg !3618

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3619
  unreachable, !dbg !3619

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3620
  store ptr %1, ptr %11, align 8, !dbg !3621, !tbaa !2516, !DIAssignID !3622
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3622, metadata ptr %11, metadata !DIExpression()), !dbg !3607
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3623
  store ptr %2, ptr %12, align 8, !dbg !3624, !tbaa !2519, !DIAssignID !3625
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3625, metadata ptr %12, metadata !DIExpression()), !dbg !3607
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3626
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3627
  ret ptr %13, !dbg !3628
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3598 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3629, metadata ptr %6, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3603, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3604, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3605, metadata !DIExpression()), !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3606, metadata !DIExpression()), !dbg !3630
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3632, !tbaa.struct !3475, !DIAssignID !3633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3633, metadata ptr %6, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3634, metadata ptr undef, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %6, metadata !2502, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %1, metadata !2503, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %2, metadata !2504, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %6, metadata !2502, metadata !DIExpression()), !dbg !3635
  store i32 10, ptr %6, align 8, !dbg !3637, !tbaa !2445, !DIAssignID !3638
  call void @llvm.dbg.assign(metadata i32 10, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3638, metadata ptr %6, metadata !DIExpression()), !dbg !3630
  %7 = icmp ne ptr %1, null, !dbg !3639
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3640
  br i1 %9, label %11, label %10, !dbg !3640

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3641
  unreachable, !dbg !3641

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3642
  store ptr %1, ptr %12, align 8, !dbg !3643, !tbaa !2516, !DIAssignID !3644
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3644, metadata ptr %12, metadata !DIExpression()), !dbg !3630
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3645
  store ptr %2, ptr %13, align 8, !dbg !3646, !tbaa !2519, !DIAssignID !3647
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3647, metadata ptr %13, metadata !DIExpression()), !dbg !3630
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3648
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3649
  ret ptr %14, !dbg !3650
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3651 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3657, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 0, metadata !3591, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %0, metadata !3592, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %1, metadata !3593, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %2, metadata !3594, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3658, metadata ptr %4, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %0, metadata !3603, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %1, metadata !3604, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %2, metadata !3605, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 -1, metadata !3606, metadata !DIExpression()), !dbg !3662
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3665, !tbaa.struct !3475, !DIAssignID !3666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3666, metadata ptr %4, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3667, metadata ptr undef, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %1, metadata !2504, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !3668
  store i32 10, ptr %4, align 8, !dbg !3670, !tbaa !2445, !DIAssignID !3671
  call void @llvm.dbg.assign(metadata i32 10, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3671, metadata ptr %4, metadata !DIExpression()), !dbg !3662
  %5 = icmp ne ptr %0, null, !dbg !3672
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3673
  br i1 %7, label %9, label %8, !dbg !3673

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3674
  unreachable, !dbg !3674

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3675
  store ptr %0, ptr %10, align 8, !dbg !3676, !tbaa !2516, !DIAssignID !3677
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3677, metadata ptr %10, metadata !DIExpression()), !dbg !3662
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3678
  store ptr %1, ptr %11, align 8, !dbg !3679, !tbaa !2519, !DIAssignID !3680
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3680, metadata ptr %11, metadata !DIExpression()), !dbg !3662
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3682
  ret ptr %12, !dbg !3683
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3684 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3692
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3688, metadata !DIExpression()), !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3689, metadata !DIExpression()), !dbg !3693
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3690, metadata !DIExpression()), !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3692, metadata ptr %5, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !3603, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %1, metadata !3604, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %2, metadata !3605, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %3, metadata !3606, metadata !DIExpression()), !dbg !3694
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3697, !tbaa.struct !3475, !DIAssignID !3698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(), metadata !3698, metadata ptr %5, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3699, metadata ptr undef, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %1, metadata !2504, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %5, metadata !2502, metadata !DIExpression()), !dbg !3700
  store i32 10, ptr %5, align 8, !dbg !3702, !tbaa !2445, !DIAssignID !3703
  call void @llvm.dbg.assign(metadata i32 10, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3703, metadata ptr %5, metadata !DIExpression()), !dbg !3694
  %6 = icmp ne ptr %0, null, !dbg !3704
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3705
  br i1 %8, label %10, label %9, !dbg !3705

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3706
  unreachable, !dbg !3706

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3707
  store ptr %0, ptr %11, align 8, !dbg !3708, !tbaa !2516, !DIAssignID !3709
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3709, metadata ptr %11, metadata !DIExpression()), !dbg !3694
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3710
  store ptr %1, ptr %12, align 8, !dbg !3711, !tbaa !2519, !DIAssignID !3712
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3597, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3712, metadata ptr %12, metadata !DIExpression()), !dbg !3694
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3713
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3714
  ret ptr %13, !dbg !3715
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3716 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3720, metadata !DIExpression()), !dbg !3723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3721, metadata !DIExpression()), !dbg !3723
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3722, metadata !DIExpression()), !dbg !3723
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3724
  ret ptr %4, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3730, metadata !DIExpression()), !dbg !3732
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3720, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %0, metadata !3721, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %1, metadata !3722, metadata !DIExpression()), !dbg !3733
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3735
  ret ptr %3, !dbg !3736
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3737 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3741, metadata !DIExpression()), !dbg !3743
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 %0, metadata !3720, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata ptr %1, metadata !3721, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 -1, metadata !3722, metadata !DIExpression()), !dbg !3744
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3746
  ret ptr %3, !dbg !3747
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3752, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %0, metadata !3742, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 0, metadata !3720, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %0, metadata !3721, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 -1, metadata !3722, metadata !DIExpression()), !dbg !3756
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3758
  ret ptr %2, !dbg !3759
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @safe_read(i32 noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3765, metadata !DIExpression()), !dbg !3774
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3766, metadata !DIExpression()), !dbg !3774
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3767, metadata !DIExpression()), !dbg !3774
  br label %4, !dbg !3775

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3776

6:                                                ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3767, metadata !DIExpression()), !dbg !3774
  %7 = tail call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %5) #39, !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3768, metadata !DIExpression()), !dbg !3778
  %8 = icmp sgt i64 %7, -1, !dbg !3779
  br i1 %8, label %17, label %9, !dbg !3776

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #42, !dbg !3781
  %11 = load i32, ptr %10, align 4, !dbg !3781, !tbaa !1105
  %12 = icmp eq i32 %11, 4, !dbg !3781
  br i1 %12, label %6, label %13, !dbg !3783, !llvm.loop !3784

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3787
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3767, metadata !DIExpression()), !dbg !3774
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3790
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mkstemp_safer(ptr noundef %0) local_unnamed_addr #10 !dbg !3791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3795, metadata !DIExpression()), !dbg !3796
  %2 = tail call i32 @mkstemp(ptr noundef %0) #39, !dbg !3797
  %3 = tail call i32 @fd_safer(i32 noundef %2) #39, !dbg !3798
  ret i32 %3, !dbg !3799
}

declare !dbg !3800 i32 @mkstemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mkostemp_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3801 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3806, metadata !DIExpression()), !dbg !3807
  %3 = tail call i32 @mkostemp(ptr noundef %0, i32 noundef %1) #39, !dbg !3808
  %4 = tail call i32 @fd_safer_flag(i32 noundef %3, i32 noundef %1) #39, !dbg !3809
  ret i32 %4, !dbg !3810
}

declare !dbg !3811 i32 @mkostemp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @path_search(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #10 !dbg !3812 {
  %6 = alloca %struct.stat, align 8, !DIAssignID !3827
  %7 = alloca %struct.stat, align 8, !DIAssignID !3828
  %8 = alloca %struct.stat, align 8, !DIAssignID !3829
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3816, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3818, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3819, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i1 %4, metadata !3820, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  %9 = icmp eq ptr %3, null, !dbg !3831
  br i1 %9, label %16, label %10, !dbg !3833

10:                                               ; preds = %5
  %11 = load i8, ptr %3, align 1, !dbg !3834, !tbaa !1114
  %12 = icmp eq i8 %11, 0, !dbg !3834
  br i1 %12, label %16, label %13, !dbg !3835

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #40, !dbg !3836
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3821, metadata !DIExpression()), !dbg !3830
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 5), !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !3821, metadata !DIExpression()), !dbg !3830
  br label %16

16:                                               ; preds = %5, %10, %13
  %17 = phi i64 [ %15, %13 ], [ 4, %10 ], [ 4, %5 ], !dbg !3839
  %18 = phi ptr [ %3, %13 ], [ @.str.102, %10 ], [ @.str.102, %5 ]
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3819, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !3821, metadata !DIExpression()), !dbg !3830
  br i1 %4, label %19, label %40, !dbg !3840

19:                                               ; preds = %16
  %20 = tail call ptr @secure_getenv(ptr noundef nonnull @.str.1.103) #39, !dbg !3841
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !3822, metadata !DIExpression()), !dbg !3842
  %21 = icmp eq ptr %20, null, !dbg !3843
  br i1 %21, label %30, label %22, !dbg !3845

22:                                               ; preds = %19
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3846, metadata !DIExpression(), metadata !3829, metadata ptr %8, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %20, metadata !3849, metadata !DIExpression()), !dbg !3884
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #39, !dbg !3886
  %23 = call i32 @stat(ptr noundef nonnull %20, ptr noundef nonnull %8) #39, !dbg !3887
  %24 = icmp eq i32 %23, 0, !dbg !3888
  %25 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 3, !dbg !3889
  %26 = load i32, ptr %25, align 8, !dbg !3889
  %27 = and i32 %26, 61440, !dbg !3889
  %28 = icmp eq i32 %27, 16384, !dbg !3889
  %29 = select i1 %24, i1 %28, i1 false, !dbg !3889
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #39, !dbg !3890
  br i1 %29, label %52, label %30, !dbg !3891

30:                                               ; preds = %22, %19
  %31 = icmp eq ptr %2, null, !dbg !3892
  br i1 %31, label %42, label %32, !dbg !3894

32:                                               ; preds = %30
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3846, metadata !DIExpression(), metadata !3828, metadata ptr %7, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata ptr %2, metadata !3849, metadata !DIExpression()), !dbg !3895
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #39, !dbg !3897
  %33 = call i32 @stat(ptr noundef nonnull %2, ptr noundef nonnull %7) #39, !dbg !3898
  %34 = icmp eq i32 %33, 0, !dbg !3899
  %35 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 3, !dbg !3900
  %36 = load i32, ptr %35, align 8, !dbg !3900
  %37 = and i32 %36, 61440, !dbg !3900
  %38 = icmp eq i32 %37, 16384, !dbg !3900
  %39 = select i1 %34, i1 %38, i1 false, !dbg !3900
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #39, !dbg !3901
  br i1 %39, label %52, label %42, !dbg !3902

40:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3818, metadata !DIExpression()), !dbg !3830
  %41 = icmp eq ptr %2, null, !dbg !3903
  br i1 %41, label %42, label %52, !dbg !3905

42:                                               ; preds = %32, %30, %40
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3846, metadata !DIExpression(), metadata !3827, metadata ptr %6, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata ptr @.str.2.104, metadata !3849, metadata !DIExpression()), !dbg !3906
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #39, !dbg !3910
  %43 = call i32 @stat(ptr noundef nonnull @.str.2.104, ptr noundef nonnull %6) #39, !dbg !3911
  %44 = icmp eq i32 %43, 0, !dbg !3912
  %45 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3, !dbg !3913
  %46 = load i32, ptr %45, align 8, !dbg !3913
  %47 = and i32 %46, 61440, !dbg !3913
  %48 = icmp eq i32 %47, 16384, !dbg !3913
  %49 = select i1 %44, i1 %48, i1 false, !dbg !3913
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #39, !dbg !3914
  br i1 %49, label %52, label %50, !dbg !3915

50:                                               ; preds = %42
  %51 = tail call ptr @__errno_location() #42, !dbg !3916
  store i32 2, ptr %51, align 4, !dbg !3916, !tbaa !1105
  br label %77, !dbg !3919

52:                                               ; preds = %22, %32, %42, %40
  %53 = phi ptr [ %2, %40 ], [ @.str.2.104, %42 ], [ %20, %22 ], [ %2, %32 ], !dbg !3830
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !3818, metadata !DIExpression()), !dbg !3830
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #40, !dbg !3920
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !3825, metadata !DIExpression()), !dbg !3830
  %55 = icmp eq i64 %54, 0, !dbg !3921
  br i1 %55, label %61, label %56, !dbg !3922

56:                                               ; preds = %52
  %57 = add i64 %54, -1, !dbg !3923
  %58 = getelementptr inbounds i8, ptr %53, i64 %57, !dbg !3923
  %59 = load i8, ptr %58, align 1, !dbg !3923, !tbaa !1114
  %60 = icmp ne i8 %59, 47, !dbg !3923
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ], !dbg !3830
  tail call void @llvm.dbg.value(metadata i1 %62, metadata !3826, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  %63 = zext i1 %62 to i64, !dbg !3924
  %64 = add nuw nsw i64 %17, 7, !dbg !3926
  %65 = add i64 %64, %54, !dbg !3927
  %66 = add i64 %65, %63, !dbg !3928
  %67 = icmp ugt i64 %66, %1, !dbg !3929
  br i1 %67, label %68, label %70, !dbg !3930

68:                                               ; preds = %61
  %69 = tail call ptr @__errno_location() #42, !dbg !3931
  store i32 22, ptr %69, align 4, !dbg !3931, !tbaa !1105
  br label %77, !dbg !3933

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata ptr %53, metadata !3937, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64 %54, metadata !3938, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %53, i64 noundef %54, i1 noundef false) #39, !dbg !3941
  %71 = getelementptr inbounds i8, ptr %0, i64 %54, !dbg !3942
  %72 = xor i1 %62, true, !dbg !3942
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds [12 x i8], ptr @.str.3.105, i64 0, i64 %73, !dbg !3942
  %75 = trunc i64 %17 to i32, !dbg !3942
  %76 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %71, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %74, i32 noundef %75, ptr noundef nonnull %18) #39, !dbg !3942
  br label %77, !dbg !3943

77:                                               ; preds = %68, %70, %50
  %78 = phi i32 [ -1, %50 ], [ -1, %68 ], [ 0, %70 ], !dbg !3830
  ret i32 %78, !dbg !3944
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !3945 ptr @secure_getenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3946 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3952 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3956 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3958, metadata !DIExpression()), !dbg !3963
  %2 = icmp ult i32 %0, 3, !dbg !3964
  br i1 %2, label %3, label %8, !dbg !3964

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #39, !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3959, metadata !DIExpression()), !dbg !3966
  %5 = tail call ptr @__errno_location() #42, !dbg !3967
  %6 = load i32, ptr %5, align 4, !dbg !3967, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3962, metadata !DIExpression()), !dbg !3966
  %7 = tail call i32 @close(i32 noundef %0) #39, !dbg !3968
  store i32 %6, ptr %5, align 4, !dbg !3969, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3958, metadata !DIExpression()), !dbg !3963
  br label %8, !dbg !3970

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3958, metadata !DIExpression()), !dbg !3963
  ret i32 %9, !dbg !3971
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4010, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4011, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4012, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4013, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4014, metadata !DIExpression()), !dbg !4016
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4015, metadata !DIExpression()), !dbg !4016
  %7 = icmp eq ptr %1, null, !dbg !4017
  br i1 %7, label %10, label %8, !dbg !4019

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.108, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4020
  br label %12, !dbg !4020

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.109, ptr noundef %2, ptr noundef %3) #39, !dbg !4021
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.3.111, i32 noundef 5) #39, !dbg !4022
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4022
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !4023
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.5.113, i32 noundef 5) #39, !dbg !4024
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.114) #39, !dbg !4024
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !4025
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
  ], !dbg !4026

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.7.115, i32 noundef 5) #39, !dbg !4027
  %21 = load ptr, ptr %4, align 8, !dbg !4027, !tbaa !1034
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4027
  br label %147, !dbg !4029

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.8.116, i32 noundef 5) #39, !dbg !4030
  %25 = load ptr, ptr %4, align 8, !dbg !4030, !tbaa !1034
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4030
  %27 = load ptr, ptr %26, align 8, !dbg !4030, !tbaa !1034
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4030
  br label %147, !dbg !4031

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.9.117, i32 noundef 5) #39, !dbg !4032
  %31 = load ptr, ptr %4, align 8, !dbg !4032, !tbaa !1034
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4032
  %33 = load ptr, ptr %32, align 8, !dbg !4032, !tbaa !1034
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4032
  %35 = load ptr, ptr %34, align 8, !dbg !4032, !tbaa !1034
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4032
  br label %147, !dbg !4033

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.10.118, i32 noundef 5) #39, !dbg !4034
  %39 = load ptr, ptr %4, align 8, !dbg !4034, !tbaa !1034
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4034
  %41 = load ptr, ptr %40, align 8, !dbg !4034, !tbaa !1034
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4034
  %43 = load ptr, ptr %42, align 8, !dbg !4034, !tbaa !1034
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4034
  %45 = load ptr, ptr %44, align 8, !dbg !4034, !tbaa !1034
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4034
  br label %147, !dbg !4035

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.11.119, i32 noundef 5) #39, !dbg !4036
  %49 = load ptr, ptr %4, align 8, !dbg !4036, !tbaa !1034
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4036
  %51 = load ptr, ptr %50, align 8, !dbg !4036, !tbaa !1034
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4036
  %53 = load ptr, ptr %52, align 8, !dbg !4036, !tbaa !1034
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4036
  %55 = load ptr, ptr %54, align 8, !dbg !4036, !tbaa !1034
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4036
  %57 = load ptr, ptr %56, align 8, !dbg !4036, !tbaa !1034
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4036
  br label %147, !dbg !4037

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.12.120, i32 noundef 5) #39, !dbg !4038
  %61 = load ptr, ptr %4, align 8, !dbg !4038, !tbaa !1034
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4038
  %63 = load ptr, ptr %62, align 8, !dbg !4038, !tbaa !1034
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4038
  %65 = load ptr, ptr %64, align 8, !dbg !4038, !tbaa !1034
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4038
  %67 = load ptr, ptr %66, align 8, !dbg !4038, !tbaa !1034
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4038
  %69 = load ptr, ptr %68, align 8, !dbg !4038, !tbaa !1034
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4038
  %71 = load ptr, ptr %70, align 8, !dbg !4038, !tbaa !1034
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4038
  br label %147, !dbg !4039

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.13.121, i32 noundef 5) #39, !dbg !4040
  %75 = load ptr, ptr %4, align 8, !dbg !4040, !tbaa !1034
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4040
  %77 = load ptr, ptr %76, align 8, !dbg !4040, !tbaa !1034
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4040
  %79 = load ptr, ptr %78, align 8, !dbg !4040, !tbaa !1034
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4040
  %81 = load ptr, ptr %80, align 8, !dbg !4040, !tbaa !1034
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4040
  %83 = load ptr, ptr %82, align 8, !dbg !4040, !tbaa !1034
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4040
  %85 = load ptr, ptr %84, align 8, !dbg !4040, !tbaa !1034
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4040
  %87 = load ptr, ptr %86, align 8, !dbg !4040, !tbaa !1034
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4040
  br label %147, !dbg !4041

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.14.122, i32 noundef 5) #39, !dbg !4042
  %91 = load ptr, ptr %4, align 8, !dbg !4042, !tbaa !1034
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4042
  %93 = load ptr, ptr %92, align 8, !dbg !4042, !tbaa !1034
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4042
  %95 = load ptr, ptr %94, align 8, !dbg !4042, !tbaa !1034
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4042
  %97 = load ptr, ptr %96, align 8, !dbg !4042, !tbaa !1034
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4042
  %99 = load ptr, ptr %98, align 8, !dbg !4042, !tbaa !1034
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4042
  %101 = load ptr, ptr %100, align 8, !dbg !4042, !tbaa !1034
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4042
  %103 = load ptr, ptr %102, align 8, !dbg !4042, !tbaa !1034
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4042
  %105 = load ptr, ptr %104, align 8, !dbg !4042, !tbaa !1034
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4042
  br label %147, !dbg !4043

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.15.123, i32 noundef 5) #39, !dbg !4044
  %109 = load ptr, ptr %4, align 8, !dbg !4044, !tbaa !1034
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4044
  %111 = load ptr, ptr %110, align 8, !dbg !4044, !tbaa !1034
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4044
  %113 = load ptr, ptr %112, align 8, !dbg !4044, !tbaa !1034
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4044
  %115 = load ptr, ptr %114, align 8, !dbg !4044, !tbaa !1034
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4044
  %117 = load ptr, ptr %116, align 8, !dbg !4044, !tbaa !1034
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4044
  %119 = load ptr, ptr %118, align 8, !dbg !4044, !tbaa !1034
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4044
  %121 = load ptr, ptr %120, align 8, !dbg !4044, !tbaa !1034
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4044
  %123 = load ptr, ptr %122, align 8, !dbg !4044, !tbaa !1034
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4044
  %125 = load ptr, ptr %124, align 8, !dbg !4044, !tbaa !1034
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4044
  br label %147, !dbg !4045

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.16.124, i32 noundef 5) #39, !dbg !4046
  %129 = load ptr, ptr %4, align 8, !dbg !4046, !tbaa !1034
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4046
  %131 = load ptr, ptr %130, align 8, !dbg !4046, !tbaa !1034
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4046
  %133 = load ptr, ptr %132, align 8, !dbg !4046, !tbaa !1034
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4046
  %135 = load ptr, ptr %134, align 8, !dbg !4046, !tbaa !1034
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4046
  %137 = load ptr, ptr %136, align 8, !dbg !4046, !tbaa !1034
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4046
  %139 = load ptr, ptr %138, align 8, !dbg !4046, !tbaa !1034
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4046
  %141 = load ptr, ptr %140, align 8, !dbg !4046, !tbaa !1034
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4046
  %143 = load ptr, ptr %142, align 8, !dbg !4046, !tbaa !1034
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4046
  %145 = load ptr, ptr %144, align 8, !dbg !4046, !tbaa !1034
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4046
  br label %147, !dbg !4047

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4048
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4049 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4054, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4055, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4056, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4057, metadata !DIExpression()), !dbg !4059
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4058, metadata !DIExpression()), !dbg !4059
  br label %6, !dbg !4060

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4058, metadata !DIExpression()), !dbg !4059
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4063
  %9 = load ptr, ptr %8, align 8, !dbg !4063, !tbaa !1034
  %10 = icmp eq ptr %9, null, !dbg !4065
  %11 = add i64 %7, 1, !dbg !4066
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4058, metadata !DIExpression()), !dbg !4059
  br i1 %10, label %12, label %6, !dbg !4065, !llvm.loop !4067

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4069
  ret void, !dbg !4070
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4071 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4088, metadata !DIExpression(), metadata !4090, metadata ptr %6, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4082, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4083, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4084, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4085, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4086, metadata !DIExpression()), !dbg !4091
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4092
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4087, metadata !DIExpression()), !dbg !4091
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4087, metadata !DIExpression()), !dbg !4091
  %10 = icmp ult i32 %9, 41, !dbg !4093
  br i1 %10, label %11, label %16, !dbg !4093

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4093
  %13 = zext nneg i32 %9 to i64, !dbg !4093
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
  store ptr %22, ptr %6, align 16, !dbg !4096, !tbaa !1034
  %23 = icmp eq ptr %22, null, !dbg !4097
  br i1 %23, label %128, label %24, !dbg !4098

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4087, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4087, metadata !DIExpression()), !dbg !4091
  %25 = icmp ult i32 %20, 41, !dbg !4093
  br i1 %25, label %29, label %26, !dbg !4093

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4093
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4093
  store ptr %28, ptr %7, align 8, !dbg !4093
  br label %34, !dbg !4093

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4093
  %31 = zext nneg i32 %20 to i64, !dbg !4093
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4093
  %33 = add nuw nsw i32 %20, 8, !dbg !4093
  store i32 %33, ptr %4, align 8, !dbg !4093
  br label %34, !dbg !4093

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4093
  %37 = load ptr, ptr %36, align 8, !dbg !4093
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4099
  store ptr %37, ptr %38, align 8, !dbg !4096, !tbaa !1034
  %39 = icmp eq ptr %37, null, !dbg !4097
  br i1 %39, label %128, label %40, !dbg !4098

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4087, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4087, metadata !DIExpression()), !dbg !4091
  %41 = icmp ult i32 %35, 41, !dbg !4093
  br i1 %41, label %45, label %42, !dbg !4093

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4093
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4093
  store ptr %44, ptr %7, align 8, !dbg !4093
  br label %50, !dbg !4093

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4093
  %47 = zext nneg i32 %35 to i64, !dbg !4093
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4093
  %49 = add nuw nsw i32 %35, 8, !dbg !4093
  store i32 %49, ptr %4, align 8, !dbg !4093
  br label %50, !dbg !4093

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4093
  %53 = load ptr, ptr %52, align 8, !dbg !4093
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4099
  store ptr %53, ptr %54, align 16, !dbg !4096, !tbaa !1034
  %55 = icmp eq ptr %53, null, !dbg !4097
  br i1 %55, label %128, label %56, !dbg !4098

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4087, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4087, metadata !DIExpression()), !dbg !4091
  %57 = icmp ult i32 %51, 41, !dbg !4093
  br i1 %57, label %61, label %58, !dbg !4093

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4093
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4093
  store ptr %60, ptr %7, align 8, !dbg !4093
  br label %66, !dbg !4093

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4093
  %63 = zext nneg i32 %51 to i64, !dbg !4093
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4093
  %65 = add nuw nsw i32 %51, 8, !dbg !4093
  store i32 %65, ptr %4, align 8, !dbg !4093
  br label %66, !dbg !4093

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4093
  %69 = load ptr, ptr %68, align 8, !dbg !4093
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4099
  store ptr %69, ptr %70, align 8, !dbg !4096, !tbaa !1034
  %71 = icmp eq ptr %69, null, !dbg !4097
  br i1 %71, label %128, label %72, !dbg !4098

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4087, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4087, metadata !DIExpression()), !dbg !4091
  %73 = icmp ult i32 %67, 41, !dbg !4093
  br i1 %73, label %77, label %74, !dbg !4093

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4093
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4093
  store ptr %76, ptr %7, align 8, !dbg !4093
  br label %82, !dbg !4093

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4093
  %79 = zext nneg i32 %67 to i64, !dbg !4093
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4093
  %81 = add nuw nsw i32 %67, 8, !dbg !4093
  store i32 %81, ptr %4, align 8, !dbg !4093
  br label %82, !dbg !4093

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4093
  %85 = load ptr, ptr %84, align 8, !dbg !4093
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4099
  store ptr %85, ptr %86, align 16, !dbg !4096, !tbaa !1034
  %87 = icmp eq ptr %85, null, !dbg !4097
  br i1 %87, label %128, label %88, !dbg !4098

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4087, metadata !DIExpression()), !dbg !4091
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4087, metadata !DIExpression()), !dbg !4091
  %89 = icmp ult i32 %83, 41, !dbg !4093
  br i1 %89, label %93, label %90, !dbg !4093

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4093
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4093
  store ptr %92, ptr %7, align 8, !dbg !4093
  br label %98, !dbg !4093

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4093
  %95 = zext nneg i32 %83 to i64, !dbg !4093
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4093
  %97 = add nuw nsw i32 %83, 8, !dbg !4093
  store i32 %97, ptr %4, align 8, !dbg !4093
  br label %98, !dbg !4093

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4093
  %100 = load ptr, ptr %99, align 8, !dbg !4093
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4099
  store ptr %100, ptr %101, align 8, !dbg !4096, !tbaa !1034
  %102 = icmp eq ptr %100, null, !dbg !4097
  br i1 %102, label %128, label %103, !dbg !4098

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4087, metadata !DIExpression()), !dbg !4091
  %104 = load ptr, ptr %7, align 8, !dbg !4093
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4093
  store ptr %105, ptr %7, align 8, !dbg !4093
  %106 = load ptr, ptr %104, align 8, !dbg !4093
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4099
  store ptr %106, ptr %107, align 16, !dbg !4096, !tbaa !1034
  %108 = icmp eq ptr %106, null, !dbg !4097
  br i1 %108, label %128, label %109, !dbg !4098

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4087, metadata !DIExpression()), !dbg !4091
  %110 = load ptr, ptr %7, align 8, !dbg !4093
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4093
  store ptr %111, ptr %7, align 8, !dbg !4093
  %112 = load ptr, ptr %110, align 8, !dbg !4093
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4099
  store ptr %112, ptr %113, align 8, !dbg !4096, !tbaa !1034
  %114 = icmp eq ptr %112, null, !dbg !4097
  br i1 %114, label %128, label %115, !dbg !4098

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4087, metadata !DIExpression()), !dbg !4091
  %116 = load ptr, ptr %7, align 8, !dbg !4093
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4093
  store ptr %117, ptr %7, align 8, !dbg !4093
  %118 = load ptr, ptr %116, align 8, !dbg !4093
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4099
  store ptr %118, ptr %119, align 16, !dbg !4096, !tbaa !1034
  %120 = icmp eq ptr %118, null, !dbg !4097
  br i1 %120, label %128, label %121, !dbg !4098

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4087, metadata !DIExpression()), !dbg !4091
  %122 = load ptr, ptr %7, align 8, !dbg !4093
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4093
  store ptr %123, ptr %7, align 8, !dbg !4093
  %124 = load ptr, ptr %122, align 8, !dbg !4093
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4099
  store ptr %124, ptr %125, align 8, !dbg !4096, !tbaa !1034
  %126 = icmp eq ptr %124, null, !dbg !4097
  %127 = select i1 %126, i64 9, i64 10, !dbg !4098
  br label %128, !dbg !4098

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4100
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4101
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4102
  ret void, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4103 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4111, metadata !DIExpression(), metadata !4116, metadata ptr %5, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4107, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4108, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4109, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4110, metadata !DIExpression()), !dbg !4117
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !4118
  call void @llvm.va_start(ptr nonnull %5), !dbg !4119
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4120
  call void @llvm.va_end(ptr nonnull %5), !dbg !4121
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !4122
  ret void, !dbg !4122
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4123 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4124, !tbaa !1034
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %1), !dbg !4124
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.17.129, i32 noundef 5) #39, !dbg !4125
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.130) #39, !dbg !4125
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.19.131, i32 noundef 5) #39, !dbg !4126
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.132, ptr noundef nonnull @.str.21.133) #39, !dbg !4126
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.22.134, i32 noundef 5) #39, !dbg !4127
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.135) #39, !dbg !4127
  ret void, !dbg !4128
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4129 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4137
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4135, metadata !DIExpression()), !dbg !4137
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4143
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4145
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4151
  %5 = icmp eq ptr %4, null, !dbg !4153
  br i1 %5, label %6, label %7, !dbg !4155

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4156
  unreachable, !dbg !4156

7:                                                ; preds = %3
  ret ptr %4, !dbg !4157
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4139 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4158
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4160
  %5 = icmp eq ptr %4, null, !dbg !4162
  br i1 %5, label %6, label %7, !dbg !4163

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4164
  unreachable, !dbg !4164

7:                                                ; preds = %3
  ret ptr %4, !dbg !4165
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4166 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4171
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4172
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4173
  %3 = icmp eq ptr %2, null, !dbg !4175
  br i1 %3, label %4, label %5, !dbg !4176

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4177
  unreachable, !dbg !4177

5:                                                ; preds = %1
  ret ptr %2, !dbg !4178
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4179 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 %0, metadata !4185, metadata !DIExpression()), !dbg !4189
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4191
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4192
  %3 = icmp eq ptr %2, null, !dbg !4194
  br i1 %3, label %4, label %5, !dbg !4195

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4196
  unreachable, !dbg !4196

5:                                                ; preds = %1
  ret ptr %2, !dbg !4197
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4198 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %0, metadata !4170, metadata !DIExpression()), !dbg !4204
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !4206
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4207
  %3 = icmp eq ptr %2, null, !dbg !4209
  br i1 %3, label %4, label %5, !dbg !4210

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4211
  unreachable, !dbg !4211

5:                                                ; preds = %1
  ret ptr %2, !dbg !4212
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4215, metadata !DIExpression()), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4222
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4224
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4225
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4226
  %5 = icmp eq ptr %4, null, !dbg !4228
  br i1 %5, label %6, label %7, !dbg !4229

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4230
  unreachable, !dbg !4230

7:                                                ; preds = %2
  ret ptr %4, !dbg !4231
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4232 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4236, metadata !DIExpression()), !dbg !4238
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4237, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %0, metadata !4239, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 %1, metadata !4221, metadata !DIExpression()), !dbg !4245
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4247
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4248
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4249
  %5 = icmp eq ptr %4, null, !dbg !4251
  br i1 %5, label %6, label %7, !dbg !4252

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4253
  unreachable, !dbg !4253

7:                                                ; preds = %2
  ret ptr %4, !dbg !4254
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4255 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4259, metadata !DIExpression()), !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4260, metadata !DIExpression()), !dbg !4262
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %0, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %1, metadata !4266, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %2, metadata !4267, metadata !DIExpression()), !dbg !4268
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4270
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4271
  %5 = icmp eq ptr %4, null, !dbg !4273
  br i1 %5, label %6, label %7, !dbg !4274

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4275
  unreachable, !dbg !4275

7:                                                ; preds = %3
  ret ptr %4, !dbg !4276
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4277 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4281, metadata !DIExpression()), !dbg !4283
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4282, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata ptr null, metadata !4138, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i64 %1, metadata !4142, metadata !DIExpression()), !dbg !4284
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4286
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4287
  %4 = icmp eq ptr %3, null, !dbg !4289
  br i1 %4, label %5, label %6, !dbg !4290

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4291
  unreachable, !dbg !4291

6:                                                ; preds = %2
  ret ptr %3, !dbg !4292
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4293 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4297, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr null, metadata !4259, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %0, metadata !4260, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4261, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr null, metadata !4263, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %0, metadata !4266, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !4267, metadata !DIExpression()), !dbg !4302
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4304
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4305
  %4 = icmp eq ptr %3, null, !dbg !4307
  br i1 %4, label %5, label %6, !dbg !4308

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4309
  unreachable, !dbg !4309

6:                                                ; preds = %2
  ret ptr %3, !dbg !4310
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4311 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4315, metadata !DIExpression()), !dbg !4317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4316, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %0, metadata !965, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata ptr %1, metadata !966, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 1, metadata !967, metadata !DIExpression()), !dbg !4318
  %3 = load i64, ptr %1, align 8, !dbg !4320, !tbaa !1271
  call void @llvm.dbg.value(metadata i64 %3, metadata !968, metadata !DIExpression()), !dbg !4318
  %4 = icmp eq ptr %0, null, !dbg !4321
  br i1 %4, label %5, label %8, !dbg !4323

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4324
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4327
  br label %15, !dbg !4327

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4328
  %10 = add nuw i64 %9, 1, !dbg !4328
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4328
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4328
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4328
  call void @llvm.dbg.value(metadata i64 %13, metadata !968, metadata !DIExpression()), !dbg !4318
  br i1 %12, label %14, label %15, !dbg !4331

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4332
  unreachable, !dbg !4332

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4318
  call void @llvm.dbg.value(metadata i64 %16, metadata !968, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %16, metadata !4141, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 1, metadata !4142, metadata !DIExpression()), !dbg !4333
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4335
  call void @llvm.dbg.value(metadata ptr %17, metadata !4146, metadata !DIExpression()), !dbg !4336
  %18 = icmp eq ptr %17, null, !dbg !4338
  br i1 %18, label %19, label %20, !dbg !4339

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4340
  unreachable, !dbg !4340

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !965, metadata !DIExpression()), !dbg !4318
  store i64 %16, ptr %1, align 8, !dbg !4341, !tbaa !1271
  ret ptr %17, !dbg !4342
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !960 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !965, metadata !DIExpression()), !dbg !4343
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !966, metadata !DIExpression()), !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !967, metadata !DIExpression()), !dbg !4343
  %4 = load i64, ptr %1, align 8, !dbg !4344, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !968, metadata !DIExpression()), !dbg !4343
  %5 = icmp eq ptr %0, null, !dbg !4345
  br i1 %5, label %6, label %13, !dbg !4346

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4347
  br i1 %7, label %8, label %20, !dbg !4348

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !968, metadata !DIExpression()), !dbg !4343
  %10 = icmp ugt i64 %2, 128, !dbg !4351
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !968, metadata !DIExpression()), !dbg !4343
  br label %20, !dbg !4353

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4354
  %15 = add nuw i64 %14, 1, !dbg !4354
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4354
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4354
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4354
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !968, metadata !DIExpression()), !dbg !4343
  br i1 %17, label %19, label %20, !dbg !4355

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4356
  unreachable, !dbg !4356

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !968, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %0, metadata !4138, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %21, metadata !4141, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4357
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4359
  call void @llvm.dbg.value(metadata ptr %22, metadata !4146, metadata !DIExpression()), !dbg !4360
  %23 = icmp eq ptr %22, null, !dbg !4362
  br i1 %23, label %24, label %25, !dbg !4363

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4364
  unreachable, !dbg !4364

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !965, metadata !DIExpression()), !dbg !4343
  store i64 %21, ptr %1, align 8, !dbg !4365, !tbaa !1271
  ret ptr %22, !dbg !4366
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !981, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !982, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !983, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !984, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !985, metadata !DIExpression()), !dbg !4367
  %6 = load i64, ptr %1, align 8, !dbg !4368, !tbaa !1271
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !986, metadata !DIExpression()), !dbg !4367
  %7 = ashr i64 %6, 1, !dbg !4369
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4369
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4369
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4369
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !987, metadata !DIExpression()), !dbg !4367
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !987, metadata !DIExpression()), !dbg !4367
  %12 = icmp sgt i64 %3, -1, !dbg !4372
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4374
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !987, metadata !DIExpression()), !dbg !4367
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4375
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4375
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4375
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !988, metadata !DIExpression()), !dbg !4367
  %18 = icmp slt i64 %17, 128, !dbg !4375
  %19 = select i1 %18, i64 128, i64 0, !dbg !4375
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4375
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !989, metadata !DIExpression()), !dbg !4367
  %21 = icmp eq i64 %20, 0, !dbg !4376
  br i1 %21, label %26, label %22, !dbg !4378

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4379
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !987, metadata !DIExpression()), !dbg !4367
  %24 = srem i64 %20, %4, !dbg !4381
  %25 = sub nsw i64 %20, %24, !dbg !4382
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !988, metadata !DIExpression()), !dbg !4367
  br label %26, !dbg !4383

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4367
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !988, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !987, metadata !DIExpression()), !dbg !4367
  %29 = icmp eq ptr %0, null, !dbg !4384
  br i1 %29, label %30, label %31, !dbg !4386

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4387, !tbaa !1271
  br label %31, !dbg !4388

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4389
  %33 = icmp slt i64 %32, %2, !dbg !4391
  br i1 %33, label %34, label %46, !dbg !4392

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4393
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4393
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4393
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !987, metadata !DIExpression()), !dbg !4367
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4394
  br i1 %40, label %45, label %41, !dbg !4394

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4395
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4395
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4395
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !988, metadata !DIExpression()), !dbg !4367
  br i1 %43, label %45, label %46, !dbg !4396

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #41, !dbg !4397
  unreachable, !dbg !4397

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4367
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !988, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !987, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %0, metadata !4215, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i64 %48, metadata !4216, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i64 %48, metadata !4221, metadata !DIExpression()), !dbg !4400
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4402
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !4403
  call void @llvm.dbg.value(metadata ptr %50, metadata !4146, metadata !DIExpression()), !dbg !4404
  %51 = icmp eq ptr %50, null, !dbg !4406
  br i1 %51, label %52, label %53, !dbg !4407

52:                                               ; preds = %46
  tail call void @xalloc_die() #41, !dbg !4408
  unreachable, !dbg !4408

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !981, metadata !DIExpression()), !dbg !4367
  store i64 %47, ptr %1, align 8, !dbg !4409, !tbaa !1271
  ret ptr %50, !dbg !4410
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4411 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4413, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %0, metadata !4415, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 1, metadata !4418, metadata !DIExpression()), !dbg !4419
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4421
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4422
  %3 = icmp eq ptr %2, null, !dbg !4424
  br i1 %3, label %4, label %5, !dbg !4425

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4426
  unreachable, !dbg !4426

5:                                                ; preds = %1
  ret ptr %2, !dbg !4427
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4428 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4416 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4415, metadata !DIExpression()), !dbg !4429
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4418, metadata !DIExpression()), !dbg !4429
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4430
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4431
  %4 = icmp eq ptr %3, null, !dbg !4433
  br i1 %4, label %5, label %6, !dbg !4434

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4435
  unreachable, !dbg !4435

6:                                                ; preds = %2
  ret ptr %3, !dbg !4436
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4437 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4439, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64 %0, metadata !4441, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 1, metadata !4444, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 1, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i64 1, metadata !4450, metadata !DIExpression()), !dbg !4451
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !4453
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4454
  %3 = icmp eq ptr %2, null, !dbg !4456
  br i1 %3, label %4, label %5, !dbg !4457

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4458
  unreachable, !dbg !4458

5:                                                ; preds = %1
  ret ptr %2, !dbg !4459
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4442 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4441, metadata !DIExpression()), !dbg !4460
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4444, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %0, metadata !4447, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %1, metadata !4450, metadata !DIExpression()), !dbg !4461
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !4463
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4464
  %4 = icmp eq ptr %3, null, !dbg !4466
  br i1 %4, label %5, label %6, !dbg !4467

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4468
  unreachable, !dbg !4468

6:                                                ; preds = %2
  ret ptr %3, !dbg !4469
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4470 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4474, metadata !DIExpression()), !dbg !4476
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %1, metadata !4170, metadata !DIExpression()), !dbg !4477
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4479
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4480
  %4 = icmp eq ptr %3, null, !dbg !4482
  br i1 %4, label %5, label %6, !dbg !4483

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4484
  unreachable, !dbg !4484

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4485, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4492
  ret ptr %3, !dbg !4493
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4498, metadata !DIExpression()), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %1, metadata !4183, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4185, metadata !DIExpression()), !dbg !4503
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !4505
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4506
  %4 = icmp eq ptr %3, null, !dbg !4508
  br i1 %4, label %5, label %6, !dbg !4509

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4510
  unreachable, !dbg !4510

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4485, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4511
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4513
  ret ptr %3, !dbg !4514
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4515 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4519, metadata !DIExpression()), !dbg !4522
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4520, metadata !DIExpression()), !dbg !4522
  %3 = add nsw i64 %1, 1, !dbg !4523
  call void @llvm.dbg.value(metadata i64 %3, metadata !4183, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %3, metadata !4185, metadata !DIExpression()), !dbg !4526
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4528
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4529
  %5 = icmp eq ptr %4, null, !dbg !4531
  br i1 %5, label %6, label %7, !dbg !4532

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4533
  unreachable, !dbg !4533

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4521, metadata !DIExpression()), !dbg !4522
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4534
  store i8 0, ptr %8, align 1, !dbg !4535, !tbaa !1114
  call void @llvm.dbg.value(metadata ptr %4, metadata !4485, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4538
  ret ptr %4, !dbg !4539
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4540 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4542, metadata !DIExpression()), !dbg !4543
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4544
  %3 = add i64 %2, 1, !dbg !4545
  call void @llvm.dbg.value(metadata ptr %0, metadata !4474, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %3, metadata !4475, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %3, metadata !4170, metadata !DIExpression()), !dbg !4548
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !4550
  call void @llvm.dbg.value(metadata ptr %4, metadata !4146, metadata !DIExpression()), !dbg !4551
  %5 = icmp eq ptr %4, null, !dbg !4553
  br i1 %5, label %6, label %7, !dbg !4554

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4555
  unreachable, !dbg !4555

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4485, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4556
  call void @llvm.dbg.value(metadata i64 %3, metadata !4489, metadata !DIExpression()), !dbg !4556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4558
  ret ptr %4, !dbg !4559
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4560 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4565, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4562, metadata !DIExpression()), !dbg !4566
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.150, ptr noundef nonnull @.str.2.151, i32 noundef 5) #39, !dbg !4565
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef %2) #39, !dbg !4565
  %3 = icmp eq i32 %1, 0, !dbg !4565
  tail call void @llvm.assume(i1 %3), !dbg !4565
  tail call void @abort() #41, !dbg !4567
  unreachable, !dbg !4567
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4568 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4606, metadata !DIExpression()), !dbg !4611
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4612
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4607, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4611
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4613, metadata !DIExpression()), !dbg !4616
  %3 = load i32, ptr %0, align 8, !dbg !4618, !tbaa !2298
  %4 = and i32 %3, 32, !dbg !4619
  %5 = icmp eq i32 %4, 0, !dbg !4619
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4609, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4611
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4620
  %7 = icmp eq i32 %6, 0, !dbg !4621
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4611
  br i1 %5, label %8, label %18, !dbg !4622

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4624
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4611
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4625
  %11 = xor i1 %7, true, !dbg !4625
  %12 = sext i1 %11 to i32, !dbg !4625
  br i1 %10, label %21, label %13, !dbg !4625

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4626
  %15 = load i32, ptr %14, align 4, !dbg !4626, !tbaa !1105
  %16 = icmp ne i32 %15, 9, !dbg !4627
  %17 = sext i1 %16 to i32, !dbg !4628
  br label %21, !dbg !4628

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4629

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4631
  store i32 0, ptr %20, align 4, !dbg !4633, !tbaa !1105
  br label %21, !dbg !4631

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4611
  ret i32 %22, !dbg !4634
}

; Function Attrs: nounwind
declare !dbg !4635 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4638 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4676, metadata !DIExpression()), !dbg !4680
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4677, metadata !DIExpression()), !dbg !4680
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4681
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4678, metadata !DIExpression()), !dbg !4680
  %3 = icmp slt i32 %2, 0, !dbg !4682
  br i1 %3, label %4, label %6, !dbg !4684

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4685
  br label %24, !dbg !4686

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4687
  %8 = icmp eq i32 %7, 0, !dbg !4687
  br i1 %8, label %13, label %9, !dbg !4689

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4690
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4691
  %12 = icmp eq i64 %11, -1, !dbg !4692
  br i1 %12, label %16, label %13, !dbg !4693

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4694
  %15 = icmp eq i32 %14, 0, !dbg !4694
  br i1 %15, label %16, label %18, !dbg !4695

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4677, metadata !DIExpression()), !dbg !4680
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4679, metadata !DIExpression()), !dbg !4680
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4696
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4679, metadata !DIExpression()), !dbg !4680
  br label %24, !dbg !4697

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4698
  %20 = load i32, ptr %19, align 4, !dbg !4698, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4677, metadata !DIExpression()), !dbg !4680
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4679, metadata !DIExpression()), !dbg !4680
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4696
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4679, metadata !DIExpression()), !dbg !4680
  %22 = icmp eq i32 %20, 0, !dbg !4699
  br i1 %22, label %24, label %23, !dbg !4697

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4701, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4679, metadata !DIExpression()), !dbg !4680
  br label %24, !dbg !4703

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4680
  ret i32 %25, !dbg !4704
}

; Function Attrs: nofree nounwind
declare !dbg !4705 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4706 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4707 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4709, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4710, metadata !DIExpression()), !dbg !4715
  %3 = icmp ult i32 %0, 3, !dbg !4716
  br i1 %3, label %4, label %9, !dbg !4716

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #39, !dbg !4717
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4711, metadata !DIExpression()), !dbg !4718
  %6 = tail call ptr @__errno_location() #42, !dbg !4719
  %7 = load i32, ptr %6, align 4, !dbg !4719, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4714, metadata !DIExpression()), !dbg !4718
  %8 = tail call i32 @close(i32 noundef %0) #39, !dbg !4720
  store i32 %7, ptr %6, align 4, !dbg !4721, !tbaa !1105
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4709, metadata !DIExpression()), !dbg !4715
  br label %9, !dbg !4722

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4709, metadata !DIExpression()), !dbg !4715
  ret i32 %10, !dbg !4723
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4724 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4726, metadata !DIExpression()), !dbg !4728
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4727, metadata !DIExpression()), !dbg !4728
  %3 = and i32 %1, 524288, !dbg !4729
  %4 = icmp eq i32 %3, 0, !dbg !4730
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4730
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #39, !dbg !4731
  ret i32 %6, !dbg !4732
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4733 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4772
  %2 = icmp eq ptr %0, null, !dbg !4773
  br i1 %2, label %6, label %3, !dbg !4775

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4776
  %5 = icmp eq i32 %4, 0, !dbg !4776
  br i1 %5, label %6, label %8, !dbg !4777

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4778
  br label %16, !dbg !4779

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4780, metadata !DIExpression()), !dbg !4785
  %9 = load i32, ptr %0, align 8, !dbg !4787, !tbaa !2298
  %10 = and i32 %9, 256, !dbg !4789
  %11 = icmp eq i32 %10, 0, !dbg !4789
  br i1 %11, label %14, label %12, !dbg !4790

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4791
  br label %14, !dbg !4791

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4792
  br label %16, !dbg !4793

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4772
  ret i32 %17, !dbg !4794
}

; Function Attrs: nofree nounwind
declare !dbg !4795 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4796 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4802, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4803, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4804, metadata !DIExpression()), !dbg !4806
  %5 = icmp eq ptr %1, null, !dbg !4807
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4809
  %7 = select i1 %5, ptr @.str.165, ptr %1, !dbg !4809
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4809
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4803, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4802, metadata !DIExpression()), !dbg !4806
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4801, metadata !DIExpression()), !dbg !4806
  %9 = icmp eq ptr %3, null, !dbg !4810
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4812
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4804, metadata !DIExpression()), !dbg !4806
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #39, !dbg !4813
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4805, metadata !DIExpression()), !dbg !4806
  %12 = icmp ult i64 %11, -3, !dbg !4814
  br i1 %12, label %13, label %17, !dbg !4816

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #40, !dbg !4817
  %15 = icmp eq i32 %14, 0, !dbg !4817
  br i1 %15, label %16, label %29, !dbg !4818

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4819, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata ptr %10, metadata !4826, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i32 0, metadata !4829, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 8, metadata !4830, metadata !DIExpression()), !dbg !4831
  store i64 0, ptr %10, align 1, !dbg !4833
  br label %29, !dbg !4834

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4835
  br i1 %18, label %19, label %20, !dbg !4837

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4838
  unreachable, !dbg !4838

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4839

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4841
  br i1 %23, label %29, label %24, !dbg !4842

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4843
  br i1 %25, label %29, label %26, !dbg !4846

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4847, !tbaa !1114
  %28 = zext i8 %27 to i32, !dbg !4848
  store i32 %28, ptr %6, align 4, !dbg !4849, !tbaa !1105
  br label %29, !dbg !4850

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4806
  ret i64 %30, !dbg !4851
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4852 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4858 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4860, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4861, metadata !DIExpression()), !dbg !4864
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4862, metadata !DIExpression()), !dbg !4864
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4865
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4865
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4863, metadata !DIExpression()), !dbg !4864
  br i1 %5, label %6, label %8, !dbg !4867

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #42, !dbg !4868
  store i32 12, ptr %7, align 4, !dbg !4870, !tbaa !1105
  br label %12, !dbg !4871

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4865
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4863, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata ptr %0, metadata !4872, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata i64 %9, metadata !4875, metadata !DIExpression()), !dbg !4876
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4878
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4879
  br label %12, !dbg !4880

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4864
  ret ptr %13, !dbg !4881
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4882 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4884, metadata !DIExpression()), !dbg !4885
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #39, !dbg !4886
  ret i32 %2, !dbg !4887
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4888 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4892, metadata !DIExpression(), metadata !4915, metadata ptr %3, metadata !DIExpression()), !dbg !4916
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4890, metadata !DIExpression()), !dbg !4916
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4891, metadata !DIExpression()), !dbg !4916
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !4917
  call void @llvm.va_start(ptr nonnull %3), !dbg !4918
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4903, metadata !DIExpression()), !dbg !4916
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
  ], !dbg !4919

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !4920
  %6 = icmp ult i32 %5, 41, !dbg !4920
  br i1 %6, label %7, label %13, !dbg !4920

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4920
  %9 = load ptr, ptr %8, align 16, !dbg !4920
  %10 = zext nneg i32 %5 to i64, !dbg !4920
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !4920
  %12 = add nuw nsw i32 %5, 8, !dbg !4920
  store i32 %12, ptr %3, align 16, !dbg !4920, !DIAssignID !4921
  call void @llvm.dbg.assign(metadata i32 %12, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4921, metadata ptr %3, metadata !DIExpression()), !dbg !4916
  br label %17, !dbg !4920

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4920
  %15 = load ptr, ptr %14, align 8, !dbg !4920
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !4920
  store ptr %16, ptr %14, align 8, !dbg !4920, !DIAssignID !4922
  call void @llvm.dbg.assign(metadata ptr %16, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4922, metadata ptr %14, metadata !DIExpression()), !dbg !4916
  br label %17, !dbg !4920

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !4920
  %19 = load i32, ptr %18, align 4, !dbg !4920
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4904, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i32 %0, metadata !4924, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.value(metadata i32 %19, metadata !4927, metadata !DIExpression()), !dbg !4929
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #39, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %20, metadata !4928, metadata !DIExpression()), !dbg !4929
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4903, metadata !DIExpression()), !dbg !4916
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !4932
  %23 = icmp ult i32 %22, 41, !dbg !4932
  br i1 %23, label %24, label %30, !dbg !4932

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4932
  %26 = load ptr, ptr %25, align 16, !dbg !4932
  %27 = zext nneg i32 %22 to i64, !dbg !4932
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !4932
  %29 = add nuw nsw i32 %22, 8, !dbg !4932
  store i32 %29, ptr %3, align 16, !dbg !4932, !DIAssignID !4933
  call void @llvm.dbg.assign(metadata i32 %29, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4933, metadata ptr %3, metadata !DIExpression()), !dbg !4916
  br label %34, !dbg !4932

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4932
  %32 = load ptr, ptr %31, align 8, !dbg !4932
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !4932
  store ptr %33, ptr %31, align 8, !dbg !4932, !DIAssignID !4934
  call void @llvm.dbg.assign(metadata ptr %33, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4934, metadata ptr %31, metadata !DIExpression()), !dbg !4916
  br label %34, !dbg !4932

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !4932
  %36 = load i32, ptr %35, align 4, !dbg !4932
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4907, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %0, metadata !914, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.value(metadata i32 %36, metadata !915, metadata !DIExpression()), !dbg !4936
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4938, !tbaa !1105
  %38 = icmp sgt i32 %37, -1, !dbg !4940
  br i1 %38, label %39, label %51, !dbg !4941

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #39, !dbg !4942
  call void @llvm.dbg.value(metadata i32 %40, metadata !916, metadata !DIExpression()), !dbg !4936
  %41 = icmp sgt i32 %40, -1, !dbg !4944
  br i1 %41, label %46, label %42, !dbg !4946

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #42, !dbg !4947
  %44 = load i32, ptr %43, align 4, !dbg !4947, !tbaa !1105
  %45 = icmp eq i32 %44, 22, !dbg !4948
  br i1 %45, label %47, label %46, !dbg !4949

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4950, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %40, metadata !916, metadata !DIExpression()), !dbg !4936
  br label %107, !dbg !4952

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4924, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 %36, metadata !4927, metadata !DIExpression()), !dbg !4953
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !4956
  call void @llvm.dbg.value(metadata i32 %48, metadata !4928, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 %48, metadata !916, metadata !DIExpression()), !dbg !4936
  %49 = icmp sgt i32 %48, -1, !dbg !4957
  br i1 %49, label %50, label %107, !dbg !4959

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4960, !tbaa !1105
  br label %55, !dbg !4961

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !4924, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 %36, metadata !4927, metadata !DIExpression()), !dbg !4962
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !4964
  call void @llvm.dbg.value(metadata i32 %52, metadata !4928, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.value(metadata i32 %52, metadata !916, metadata !DIExpression()), !dbg !4936
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !4965
  call void @llvm.dbg.value(metadata i32 %57, metadata !916, metadata !DIExpression()), !dbg !4936
  %58 = icmp sgt i32 %57, -1, !dbg !4966
  %59 = select i1 %58, i1 %56, i1 false, !dbg !4952
  br i1 %59, label %60, label %107, !dbg !4952

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #39, !dbg !4967
  call void @llvm.dbg.value(metadata i32 %61, metadata !917, metadata !DIExpression()), !dbg !4968
  %62 = icmp slt i32 %61, 0, !dbg !4969
  br i1 %62, label %67, label %63, !dbg !4970

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !4971
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #39, !dbg !4972
  %66 = icmp eq i32 %65, -1, !dbg !4973
  br i1 %66, label %67, label %107, !dbg !4974

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #42, !dbg !4975
  %69 = load i32, ptr %68, align 4, !dbg !4975, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 %69, metadata !920, metadata !DIExpression()), !dbg !4976
  %70 = call i32 @close(i32 noundef %57) #39, !dbg !4977
  store i32 %69, ptr %68, align 4, !dbg !4978, !tbaa !1105
  call void @llvm.dbg.value(metadata i32 -1, metadata !916, metadata !DIExpression()), !dbg !4936
  br label %107, !dbg !4979

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !4980
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4903, metadata !DIExpression()), !dbg !4916
  br label %107, !dbg !4981

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !4982
  %75 = icmp ult i32 %74, 41, !dbg !4982
  br i1 %75, label %76, label %82, !dbg !4982

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4982
  %78 = load ptr, ptr %77, align 16, !dbg !4982
  %79 = zext nneg i32 %74 to i64, !dbg !4982
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4982
  %81 = add nuw nsw i32 %74, 8, !dbg !4982
  store i32 %81, ptr %3, align 16, !dbg !4982, !DIAssignID !4983
  call void @llvm.dbg.assign(metadata i32 %81, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4983, metadata ptr %3, metadata !DIExpression()), !dbg !4916
  br label %86, !dbg !4982

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4982
  %84 = load ptr, ptr %83, align 8, !dbg !4982
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !4982
  store ptr %85, ptr %83, align 8, !dbg !4982, !DIAssignID !4984
  call void @llvm.dbg.assign(metadata ptr %85, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4984, metadata ptr %83, metadata !DIExpression()), !dbg !4916
  br label %86, !dbg !4982

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !4982
  %88 = load i32, ptr %87, align 4, !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !4909, metadata !DIExpression()), !dbg !4985
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #39, !dbg !4986
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !4903, metadata !DIExpression()), !dbg !4916
  br label %107, !dbg !4987

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !4988
  %92 = icmp ult i32 %91, 41, !dbg !4988
  br i1 %92, label %93, label %99, !dbg !4988

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4988
  %95 = load ptr, ptr %94, align 16, !dbg !4988
  %96 = zext nneg i32 %91 to i64, !dbg !4988
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !4988
  %98 = add nuw nsw i32 %91, 8, !dbg !4988
  store i32 %98, ptr %3, align 16, !dbg !4988, !DIAssignID !4989
  call void @llvm.dbg.assign(metadata i32 %98, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4989, metadata ptr %3, metadata !DIExpression()), !dbg !4916
  br label %103, !dbg !4988

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4988
  %101 = load ptr, ptr %100, align 8, !dbg !4988
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !4988
  store ptr %102, ptr %100, align 8, !dbg !4988, !DIAssignID !4990
  call void @llvm.dbg.assign(metadata ptr %102, metadata !4892, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4990, metadata ptr %100, metadata !DIExpression()), !dbg !4916
  br label %103, !dbg !4988

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !4988
  %105 = load ptr, ptr %104, align 8, !dbg !4988
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !4913, metadata !DIExpression()), !dbg !4991
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #39, !dbg !4992
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !4903, metadata !DIExpression()), !dbg !4916
  br label %107, !dbg !4993

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !4994
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !4903, metadata !DIExpression()), !dbg !4916
  call void @llvm.va_end(ptr nonnull %3), !dbg !4995
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !4996
  ret i32 %108, !dbg !4997
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4998 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5007
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5003, metadata !DIExpression(), metadata !5007, metadata ptr %2, metadata !DIExpression()), !dbg !5008
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5002, metadata !DIExpression()), !dbg !5008
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5009
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5010
  %4 = icmp eq i32 %3, 0, !dbg !5010
  br i1 %4, label %5, label %12, !dbg !5012

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5013, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata !1072, metadata !5016, metadata !DIExpression()), !dbg !5017
  %6 = load i16, ptr %2, align 16, !dbg !5020
  %7 = icmp eq i16 %6, 67, !dbg !5020
  br i1 %7, label %11, label %8, !dbg !5021

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5013, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.value(metadata ptr @.str.1.174, metadata !5016, metadata !DIExpression()), !dbg !5022
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.174, i64 6), !dbg !5024
  %10 = icmp eq i32 %9, 0, !dbg !5025
  br i1 %10, label %11, label %12, !dbg !5026

11:                                               ; preds = %8, %5
  br label %12, !dbg !5027

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5008
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5028
  ret i1 %13, !dbg !5028
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5029 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5033, metadata !DIExpression()), !dbg !5036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5034, metadata !DIExpression()), !dbg !5036
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5035, metadata !DIExpression()), !dbg !5036
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5037
  ret i32 %4, !dbg !5038
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5039 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5043, metadata !DIExpression()), !dbg !5044
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5045
  ret ptr %2, !dbg !5046
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5047 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5049, metadata !DIExpression()), !dbg !5051
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5052
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5050, metadata !DIExpression()), !dbg !5051
  ret ptr %2, !dbg !5053
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5054 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5056, metadata !DIExpression()), !dbg !5063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5057, metadata !DIExpression()), !dbg !5063
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5058, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.value(metadata i32 %0, metadata !5049, metadata !DIExpression()), !dbg !5064
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5066
  call void @llvm.dbg.value(metadata ptr %4, metadata !5050, metadata !DIExpression()), !dbg !5064
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5059, metadata !DIExpression()), !dbg !5063
  %5 = icmp eq ptr %4, null, !dbg !5067
  br i1 %5, label %6, label %9, !dbg !5068

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5069
  br i1 %7, label %19, label %8, !dbg !5072

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5073, !tbaa !1114
  br label %19, !dbg !5074

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5075
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5060, metadata !DIExpression()), !dbg !5076
  %11 = icmp ult i64 %10, %2, !dbg !5077
  br i1 %11, label %12, label %14, !dbg !5079

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5080
  call void @llvm.dbg.value(metadata ptr %1, metadata !5082, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata ptr %4, metadata !5085, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata i64 %13, metadata !5086, metadata !DIExpression()), !dbg !5087
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #39, !dbg !5089
  br label %19, !dbg !5090

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5091
  br i1 %15, label %19, label %16, !dbg !5094

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5095
  call void @llvm.dbg.value(metadata ptr %1, metadata !5082, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.value(metadata ptr %4, metadata !5085, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.value(metadata i64 %17, metadata !5086, metadata !DIExpression()), !dbg !5097
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5099
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5100
  store i8 0, ptr %18, align 1, !dbg !5101, !tbaa !1114
  br label %19, !dbg !5102

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5103
  ret i32 %20, !dbg !5104
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!60, !529, !566, !570, !585, !876, !926, !928, !930, !933, !636, !650, !701, !935, !943, !945, !948, !950, !868, !956, !991, !993, !995, !997, !999, !1001, !892, !1003, !1005, !911, !1007, !1011, !1013}
!llvm.ident = !{!1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015, !1015}
!llvm.module.flags = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tac.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c011dce72bff7945d0c8301de2405c61")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !233)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!404 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!584 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !585, file: !586, line: 66, type: !631, isLocal: false, isDefinition: true)
!585 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !587, globals: !588, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!587 = !{!98, !107}
!588 = !{!589, !591, !610, !612, !614, !616, !583, !618, !620, !622, !624, !629}
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 272, type: !131, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "old_file_name", scope: !593, file: !586, line: 304, type: !101, isLocal: true, isDefinition: true)
!593 = distinct !DISubprogram(name: "verror_at_line", scope: !586, file: !586, line: 298, type: !594, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !603)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !57, !57, !101, !69, !101, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !598)
!598 = !{!599, !600, !601, !602}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !597, file: !586, baseType: !69, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !597, file: !586, baseType: !69, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !597, file: !586, baseType: !98, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !597, file: !586, baseType: !98, size: 64, offset: 128)
!603 = !{!604, !605, !606, !607, !608, !609}
!604 = !DILocalVariable(name: "status", arg: 1, scope: !593, file: !586, line: 298, type: !57)
!605 = !DILocalVariable(name: "errnum", arg: 2, scope: !593, file: !586, line: 298, type: !57)
!606 = !DILocalVariable(name: "file_name", arg: 3, scope: !593, file: !586, line: 298, type: !101)
!607 = !DILocalVariable(name: "line_number", arg: 4, scope: !593, file: !586, line: 298, type: !69)
!608 = !DILocalVariable(name: "message", arg: 5, scope: !593, file: !586, line: 298, type: !101)
!609 = !DILocalVariable(name: "args", arg: 6, scope: !593, file: !586, line: 298, type: !596)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "old_line_number", scope: !593, file: !586, line: 305, type: !69, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !586, line: 338, type: !19, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !318, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !111, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "error_message_count", scope: !585, file: !586, line: 69, type: !69, isLocal: false, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !585, file: !586, line: 295, type: !57, isLocal: false, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !313, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 21)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !586, line: 214, type: !131, isLocal: true, isDefinition: true)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null}
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "program_name", scope: !636, file: !637, line: 31, type: !101, isLocal: false, isDefinition: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !638, globals: !639, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!638 = !{!98, !59}
!639 = !{!634, !640, !642}
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !637, line: 46, type: !318, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !637, line: 49, type: !19, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "utf07FF", scope: !646, file: !647, line: 46, type: !674, isLocal: true, isDefinition: true)
!646 = distinct !DISubprogram(name: "proper_name_lite", scope: !647, file: !647, line: 38, type: !648, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !652)
!647 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!648 = !DISubroutineType(types: !649)
!649 = !{!101, !101, !101}
!650 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !651, splitDebugInlining: false, nameTableKind: None)
!651 = !{!644}
!652 = !{!653, !654, !655, !656, !661}
!653 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !646, file: !647, line: 38, type: !101)
!654 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !646, file: !647, line: 38, type: !101)
!655 = !DILocalVariable(name: "translation", scope: !646, file: !647, line: 40, type: !101)
!656 = !DILocalVariable(name: "w", scope: !646, file: !647, line: 47, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !658, line: 37, baseType: !659)
!658 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !255, line: 57, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !255, line: 42, baseType: !69)
!661 = !DILocalVariable(name: "mbs", scope: !646, file: !647, line: 48, type: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !663, line: 6, baseType: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !665, line: 21, baseType: !666)
!665 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !665, line: 13, size: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !666, file: !665, line: 15, baseType: !57, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !666, file: !665, line: 20, baseType: !670, size: 32, offset: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !665, line: 16, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !670, file: !665, line: 18, baseType: !69, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !670, file: !665, line: 19, baseType: !19, size: 32)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16, elements: !112)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !677, line: 78, type: !318, isLocal: true, isDefinition: true)
!677 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !677, line: 79, type: !294, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !677, line: 80, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 13)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !677, line: 81, type: !682, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !677, line: 82, type: !277, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !677, line: 83, type: !111, isLocal: true, isDefinition: true)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !677, line: 84, type: !318, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !677, line: 85, type: !313, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !677, line: 86, type: !313, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !677, line: 87, type: !318, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !701, file: !677, line: 76, type: !772, isLocal: false, isDefinition: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !677, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !702, retainedTypes: !710, globals: !711, splitDebugInlining: false, nameTableKind: None)
!702 = !{!703, !705, !67}
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !704, line: 42, baseType: !69, size: 32, elements: !85)
!704 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!705 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !704, line: 254, baseType: !69, size: 32, elements: !706)
!706 = !{!707, !708, !709}
!707 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!708 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!709 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!710 = !{!98, !57, !103, !104}
!711 = !{!675, !678, !680, !685, !687, !689, !691, !693, !695, !697, !699, !712, !716, !726, !728, !730, !732, !734, !736, !738, !761, !768, !770}
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !701, file: !677, line: 92, type: !714, isLocal: false, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 320, elements: !122)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !701, file: !677, line: 1040, type: !718, isLocal: false, isDefinition: true)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !677, line: 56, size: 448, elements: !719)
!719 = !{!720, !721, !722, !724, !725}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !718, file: !677, line: 59, baseType: !703, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !677, line: 62, baseType: !57, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !718, file: !677, line: 66, baseType: !723, size: 256, offset: 64)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !319)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !718, file: !677, line: 69, baseType: !101, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !718, file: !677, line: 72, baseType: !101, size: 64, offset: 384)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !701, file: !677, line: 107, type: !718, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "slot0", scope: !701, file: !677, line: 831, type: !193, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !677, line: 321, type: !111, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !677, line: 357, type: !111, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !677, line: 358, type: !111, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !677, line: 199, type: !313, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "quote", scope: !740, file: !677, line: 228, type: !759, isLocal: true, isDefinition: true)
!740 = distinct !DISubprogram(name: "gettext_quote", scope: !677, file: !677, line: 197, type: !741, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!101, !101, !703}
!743 = !{!744, !745, !746, !747, !748}
!744 = !DILocalVariable(name: "msgid", arg: 1, scope: !740, file: !677, line: 197, type: !101)
!745 = !DILocalVariable(name: "s", arg: 2, scope: !740, file: !677, line: 197, type: !703)
!746 = !DILocalVariable(name: "translation", scope: !740, file: !677, line: 199, type: !101)
!747 = !DILocalVariable(name: "w", scope: !740, file: !677, line: 229, type: !657)
!748 = !DILocalVariable(name: "mbs", scope: !740, file: !677, line: 230, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !663, line: 6, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !665, line: 21, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !665, line: 13, size: 64, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !751, file: !665, line: 15, baseType: !57, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !751, file: !665, line: 20, baseType: !755, size: 32, offset: 32)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !665, line: 16, size: 32, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !755, file: !665, line: 18, baseType: !69, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !755, file: !665, line: 19, baseType: !19, size: 32)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !760)
!760 = !{!113, !21}
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "slotvec", scope: !701, file: !677, line: 834, type: !763, isLocal: true, isDefinition: true)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !677, line: 823, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !764, file: !677, line: 825, baseType: !104, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !764, file: !677, line: 826, baseType: !59, size: 64, offset: 64)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "nslots", scope: !701, file: !677, line: 832, type: !57, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "slotvec0", scope: !701, file: !677, line: 833, type: !764, isLocal: true, isDefinition: true)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 704, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 11)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !777, line: 98, type: !131, isLocal: true, isDefinition: true)
!777 = !DIFile(filename: "lib/tmpdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6bb1205c798131b3318a3c96a85b8877")
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !777, line: 110, type: !313, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !777, line: 132, type: !131, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !777, line: 160, type: !141, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !786, line: 67, type: !141, isLocal: true, isDefinition: true)
!786 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !786, line: 69, type: !313, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !786, line: 83, type: !313, isLocal: true, isDefinition: true)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !786, line: 83, type: !19, isLocal: true, isDefinition: true)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !786, line: 85, type: !111, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !786, line: 88, type: !797, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 171)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !786, line: 88, type: !802, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 34)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !786, line: 105, type: !146, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !786, line: 109, type: !809, isLocal: true, isDefinition: true)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 23)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !786, line: 113, type: !814, isLocal: true, isDefinition: true)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 28)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !786, line: 120, type: !819, isLocal: true, isDefinition: true)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 32)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !786, line: 127, type: !824, isLocal: true, isDefinition: true)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 36)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(scope: null, file: !786, line: 134, type: !340, isLocal: true, isDefinition: true)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !786, line: 142, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 44)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !786, line: 150, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 48)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !786, line: 159, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 52)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !786, line: 170, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 60)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !786, line: 248, type: !277, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !786, line: 248, type: !365, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !786, line: 254, type: !277, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(scope: null, file: !786, line: 254, type: !136, isLocal: true, isDefinition: true)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !786, line: 254, type: !340, isLocal: true, isDefinition: true)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !786, line: 259, type: !3, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !786, line: 259, type: !863, isLocal: true, isDefinition: true)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 29)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !868, file: !869, line: 26, type: !871, isLocal: false, isDefinition: true)
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !870, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!870 = !{!866}
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 376, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 47)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(name: "exit_failure", scope: !876, file: !877, line: 24, type: !879, isLocal: false, isDefinition: true)
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !878, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!878 = !{!874}
!879 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !882, line: 34, type: !156, isLocal: true, isDefinition: true)
!882 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !882, line: 34, type: !313, isLocal: true, isDefinition: true)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !882, line: 34, type: !335, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !889, line: 108, type: !116, isLocal: true, isDefinition: true)
!889 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(name: "internal_state", scope: !892, file: !889, line: 97, type: !895, isLocal: true, isDefinition: true)
!892 = distinct !DICompileUnit(language: DW_LANG_C11, file: !889, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !893, globals: !894, splitDebugInlining: false, nameTableKind: None)
!893 = !{!98, !104, !107}
!894 = !{!887, !890}
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !663, line: 6, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !665, line: 21, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !665, line: 13, size: 64, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !897, file: !665, line: 15, baseType: !57, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !897, file: !665, line: 20, baseType: !901, size: 32, offset: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !665, line: 16, size: 32, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !901, file: !665, line: 18, baseType: !69, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !901, file: !665, line: 19, baseType: !19, size: 32)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !907, file: !908, line: 506, type: !57, isLocal: true, isDefinition: true)
!907 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !908, file: !908, line: 485, type: !909, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !913)
!908 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!909 = !DISubroutineType(types: !910)
!910 = !{!57, !57, !57}
!911 = distinct !DICompileUnit(language: DW_LANG_C11, file: !908, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !912, splitDebugInlining: false, nameTableKind: None)
!912 = !{!905}
!913 = !{!914, !915, !916, !917, !920}
!914 = !DILocalVariable(name: "fd", arg: 1, scope: !907, file: !908, line: 485, type: !57)
!915 = !DILocalVariable(name: "target", arg: 2, scope: !907, file: !908, line: 485, type: !57)
!916 = !DILocalVariable(name: "result", scope: !907, file: !908, line: 487, type: !57)
!917 = !DILocalVariable(name: "flags", scope: !918, file: !908, line: 530, type: !57)
!918 = distinct !DILexicalBlock(scope: !919, file: !908, line: 529, column: 5)
!919 = distinct !DILexicalBlock(scope: !907, file: !908, line: 528, column: 7)
!920 = !DILocalVariable(name: "saved_errno", scope: !921, file: !908, line: 533, type: !57)
!921 = distinct !DILexicalBlock(scope: !922, file: !908, line: 532, column: 9)
!922 = distinct !DILexicalBlock(scope: !918, file: !908, line: 531, column: 11)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !925, line: 35, type: !294, isLocal: true, isDefinition: true)
!925 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!926 = distinct !DICompileUnit(language: DW_LANG_C11, file: !927, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!927 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-full-read.o -MD -MP -MF lib/.deps/libcoreutils_a-full-read.Tpo -c lib/full-read.c -o lib/.libcoreutils_a-full-read.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !932, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/full-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "717d8293e026c44a771a83b22da54cc2")
!932 = !{!59}
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !934, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!934 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!935 = distinct !DICompileUnit(language: DW_LANG_C11, file: !936, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-safe-read.o -MD -MP -MF lib/.deps/libcoreutils_a-safe-read.Tpo -c lib/safe-read.c -o lib/.libcoreutils_a-safe-read.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !937, retainedTypes: !942, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!937 = !{!938}
!938 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !939, line: 36, baseType: !69, size: 32, elements: !940)
!939 = !DIFile(filename: "lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!940 = !{!941}
!941 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!942 = !{!104}
!943 = distinct !DICompileUnit(language: DW_LANG_C11, file: !944, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mkstemp-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-mkstemp-safer.Tpo -c lib/mkstemp-safer.c -o lib/.libcoreutils_a-mkstemp-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!944 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c54cf13a93f038494ed7ea783050e30c")
!945 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-tmpdir.o -MD -MP -MF lib/.deps/libcoreutils_a-tmpdir.Tpo -c lib/tmpdir.c -o lib/.libcoreutils_a-tmpdir.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !946, globals: !947, splitDebugInlining: false, nameTableKind: None)
!946 = !{!98, !57}
!947 = !{!775, !778, !780, !782}
!948 = distinct !DICompileUnit(language: DW_LANG_C11, file: !949, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer.Tpo -c lib/fd-safer.c -o lib/.libcoreutils_a-fd-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!950 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !951, retainedTypes: !531, globals: !955, splitDebugInlining: false, nameTableKind: None)
!951 = !{!952}
!952 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !786, line: 40, baseType: !69, size: 32, elements: !953)
!953 = !{!954}
!954 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!955 = !{!784, !787, !789, !791, !793, !795, !800, !805, !807, !812, !817, !822, !827, !829, !834, !839, !844, !849, !851, !853, !855, !857, !859, !861}
!956 = distinct !DICompileUnit(language: DW_LANG_C11, file: !957, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !958, retainedTypes: !990, splitDebugInlining: false, nameTableKind: None)
!957 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!958 = !{!959, !971}
!959 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !960, file: !957, line: 188, baseType: !69, size: 32, elements: !969)
!960 = distinct !DISubprogram(name: "x2nrealloc", scope: !957, file: !957, line: 176, type: !961, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !964)
!961 = !DISubroutineType(types: !962)
!962 = !{!98, !98, !963, !104}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!964 = !{!965, !966, !967, !968}
!965 = !DILocalVariable(name: "p", arg: 1, scope: !960, file: !957, line: 176, type: !98)
!966 = !DILocalVariable(name: "pn", arg: 2, scope: !960, file: !957, line: 176, type: !963)
!967 = !DILocalVariable(name: "s", arg: 3, scope: !960, file: !957, line: 176, type: !104)
!968 = !DILocalVariable(name: "n", scope: !960, file: !957, line: 178, type: !104)
!969 = !{!970}
!970 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!971 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !972, file: !957, line: 228, baseType: !69, size: 32, elements: !969)
!972 = distinct !DISubprogram(name: "xpalloc", scope: !957, file: !957, line: 223, type: !973, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !980)
!973 = !DISubroutineType(types: !974)
!974 = !{!98, !98, !975, !976, !978, !976}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !977, line: 130, baseType: !978)
!977 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !979, line: 18, baseType: !256)
!979 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989}
!981 = !DILocalVariable(name: "pa", arg: 1, scope: !972, file: !957, line: 223, type: !98)
!982 = !DILocalVariable(name: "pn", arg: 2, scope: !972, file: !957, line: 223, type: !975)
!983 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !972, file: !957, line: 223, type: !976)
!984 = !DILocalVariable(name: "n_max", arg: 4, scope: !972, file: !957, line: 223, type: !978)
!985 = !DILocalVariable(name: "s", arg: 5, scope: !972, file: !957, line: 223, type: !976)
!986 = !DILocalVariable(name: "n0", scope: !972, file: !957, line: 230, type: !976)
!987 = !DILocalVariable(name: "n", scope: !972, file: !957, line: 237, type: !976)
!988 = !DILocalVariable(name: "nbytes", scope: !972, file: !957, line: 248, type: !976)
!989 = !DILocalVariable(name: "adjusted_nbytes", scope: !972, file: !957, line: 252, type: !976)
!990 = !{!59, !98}
!991 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !992, splitDebugInlining: false, nameTableKind: None)
!992 = !{!880, !883, !885}
!993 = distinct !DICompileUnit(language: DW_LANG_C11, file: !994, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!994 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!995 = distinct !DICompileUnit(language: DW_LANG_C11, file: !996, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!996 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!997 = distinct !DICompileUnit(language: DW_LANG_C11, file: !998, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer-flag.Tpo -c lib/fd-safer-flag.c -o lib/.libcoreutils_a-fd-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!998 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!999 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1000, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer-flag.Tpo -c lib/dup-safer-flag.c -o lib/.libcoreutils_a-dup-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1000 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!1001 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1002, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1002 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1005 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1006, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1006 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!1007 = distinct !DICompileUnit(language: DW_LANG_C11, file: !925, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1008, splitDebugInlining: false, nameTableKind: None)
!1008 = !{!1009, !923}
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !925, line: 35, type: !111, isLocal: true, isDefinition: true)
!1011 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1012, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1012 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1013 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1014, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1014 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1015 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1016 = !{i32 7, !"Dwarf Version", i32 5}
!1017 = !{i32 2, !"Debug Info Version", i32 3}
!1018 = !{i32 1, !"wchar_size", i32 4}
!1019 = !{i32 8, !"PIC Level", i32 2}
!1020 = !{i32 7, !"PIE Level", i32 2}
!1021 = !{i32 7, !"uwtable", i32 2}
!1022 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1023 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 112, type: !1024, scopeLine: 113, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !57}
!1026 = !{!1027}
!1027 = !DILocalVariable(name: "status", arg: 1, scope: !1023, file: !2, line: 112, type: !57)
!1028 = !DILocation(line: 0, scope: !1023)
!1029 = !DILocation(line: 114, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 114, column: 7)
!1031 = !DILocation(line: 114, column: 7, scope: !1023)
!1032 = !DILocation(line: 115, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 115, column: 5)
!1034 = !{!1035, !1035, i64 0}
!1035 = !{!"any pointer", !1036, i64 0}
!1036 = !{!"omnipotent char", !1037, i64 0}
!1037 = !{!"Simple C/C++ TBAA"}
!1038 = !DILocation(line: 118, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 117, column: 5)
!1040 = !DILocation(line: 122, column: 7, scope: !1039)
!1041 = !DILocation(line: 729, column: 3, scope: !1042, inlinedAt: !1043)
!1042 = distinct !DISubprogram(name: "emit_stdin_note", scope: !63, file: !63, line: 727, type: !632, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!1043 = distinct !DILocation(line: 126, column: 7, scope: !1039)
!1044 = !DILocation(line: 736, column: 3, scope: !1045, inlinedAt: !1046)
!1045 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !63, file: !63, line: 734, type: !632, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60)
!1046 = distinct !DILocation(line: 127, column: 7, scope: !1039)
!1047 = !DILocation(line: 129, column: 7, scope: !1039)
!1048 = !DILocation(line: 132, column: 7, scope: !1039)
!1049 = !DILocation(line: 135, column: 7, scope: !1039)
!1050 = !DILocation(line: 138, column: 7, scope: !1039)
!1051 = !DILocation(line: 139, column: 7, scope: !1039)
!1052 = !DILocation(line: 140, column: 7, scope: !1039)
!1053 = !DILocalVariable(name: "program", arg: 1, scope: !1054, file: !63, line: 836, type: !101)
!1054 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !63, file: !63, line: 836, type: !1055, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !101}
!1057 = !{!1053, !1058, !1065, !1066, !1068, !1069}
!1058 = !DILocalVariable(name: "infomap", scope: !1054, file: !63, line: 838, type: !1059)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 896, elements: !314)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1054, file: !63, line: 838, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1061, file: !63, line: 838, baseType: !101, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !63, line: 838, baseType: !101, size: 64, offset: 64)
!1065 = !DILocalVariable(name: "node", scope: !1054, file: !63, line: 848, type: !101)
!1066 = !DILocalVariable(name: "map_prog", scope: !1054, file: !63, line: 849, type: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1068 = !DILocalVariable(name: "lc_messages", scope: !1054, file: !63, line: 861, type: !101)
!1069 = !DILocalVariable(name: "url_program", scope: !1054, file: !63, line: 874, type: !101)
!1070 = !DILocation(line: 0, scope: !1054, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 143, column: 7, scope: !1039)
!1072 = !{}
!1073 = !DILocation(line: 857, column: 3, scope: !1054, inlinedAt: !1071)
!1074 = !DILocation(line: 861, column: 29, scope: !1054, inlinedAt: !1071)
!1075 = !DILocation(line: 862, column: 7, scope: !1076, inlinedAt: !1071)
!1076 = distinct !DILexicalBlock(scope: !1054, file: !63, line: 862, column: 7)
!1077 = !DILocation(line: 862, column: 19, scope: !1076, inlinedAt: !1071)
!1078 = !DILocation(line: 862, column: 22, scope: !1076, inlinedAt: !1071)
!1079 = !DILocation(line: 862, column: 7, scope: !1054, inlinedAt: !1071)
!1080 = !DILocation(line: 868, column: 7, scope: !1081, inlinedAt: !1071)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !63, line: 863, column: 5)
!1082 = !DILocation(line: 870, column: 5, scope: !1081, inlinedAt: !1071)
!1083 = !DILocation(line: 875, column: 3, scope: !1054, inlinedAt: !1071)
!1084 = !DILocation(line: 877, column: 3, scope: !1054, inlinedAt: !1071)
!1085 = !DILocation(line: 145, column: 3, scope: !1023)
!1086 = !DISubprogram(name: "dcgettext", scope: !1087, file: !1087, line: 51, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!59, !101, !101, !57}
!1090 = !DISubprogram(name: "__fprintf_chk", scope: !1091, file: !1091, line: 93, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!57, !1094, !57, !1095, null}
!1094 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!1095 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!1096 = !DISubprogram(name: "__printf_chk", scope: !1091, file: !1091, line: 95, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!57, !57, !1095, null}
!1099 = !DISubprogram(name: "fputs_unlocked", scope: !1100, file: !1100, line: 691, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!57, !1095, !1094}
!1103 = !DILocation(line: 0, scope: !205)
!1104 = !DILocation(line: 581, column: 7, scope: !213)
!1105 = !{!1106, !1106, i64 0}
!1106 = !{!"int", !1036, i64 0}
!1107 = !DILocation(line: 581, column: 19, scope: !213)
!1108 = !DILocation(line: 581, column: 7, scope: !205)
!1109 = !DILocation(line: 585, column: 26, scope: !212)
!1110 = !DILocation(line: 0, scope: !212)
!1111 = !DILocation(line: 586, column: 23, scope: !212)
!1112 = !DILocation(line: 586, column: 28, scope: !212)
!1113 = !DILocation(line: 586, column: 32, scope: !212)
!1114 = !{!1036, !1036, i64 0}
!1115 = !DILocation(line: 586, column: 38, scope: !212)
!1116 = !DILocalVariable(name: "__s1", arg: 1, scope: !1117, file: !1118, line: 1359, type: !101)
!1117 = distinct !DISubprogram(name: "streq", scope: !1118, file: !1118, line: 1359, type: !1119, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1121)
!1118 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!215, !101, !101}
!1121 = !{!1116, !1122}
!1122 = !DILocalVariable(name: "__s2", arg: 2, scope: !1117, file: !1118, line: 1359, type: !101)
!1123 = !DILocation(line: 0, scope: !1117, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 586, column: 41, scope: !212)
!1125 = !DILocation(line: 1361, column: 11, scope: !1117, inlinedAt: !1124)
!1126 = !DILocation(line: 1361, column: 10, scope: !1117, inlinedAt: !1124)
!1127 = !DILocation(line: 586, column: 19, scope: !212)
!1128 = !DILocation(line: 587, column: 5, scope: !212)
!1129 = !DILocation(line: 588, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !205, file: !63, line: 588, column: 7)
!1131 = !DILocation(line: 588, column: 7, scope: !205)
!1132 = !DILocation(line: 590, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !63, line: 589, column: 5)
!1134 = !DILocation(line: 591, column: 7, scope: !1133)
!1135 = !DILocation(line: 595, column: 37, scope: !205)
!1136 = !DILocation(line: 595, column: 35, scope: !205)
!1137 = !DILocation(line: 596, column: 29, scope: !205)
!1138 = !DILocation(line: 597, column: 8, scope: !221)
!1139 = !DILocation(line: 597, column: 7, scope: !205)
!1140 = !DILocation(line: 604, column: 24, scope: !220)
!1141 = !DILocation(line: 604, column: 12, scope: !221)
!1142 = !DILocation(line: 0, scope: !219)
!1143 = !DILocation(line: 610, column: 16, scope: !219)
!1144 = !DILocation(line: 610, column: 7, scope: !219)
!1145 = !DILocation(line: 611, column: 21, scope: !219)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"short", !1036, i64 0}
!1148 = !DILocation(line: 611, column: 19, scope: !219)
!1149 = !DILocation(line: 611, column: 16, scope: !219)
!1150 = !DILocation(line: 610, column: 30, scope: !219)
!1151 = distinct !{!1151, !1144, !1145, !1152}
!1152 = !{!"llvm.loop.mustprogress"}
!1153 = !DILocation(line: 612, column: 18, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !219, file: !63, line: 612, column: 11)
!1155 = !DILocation(line: 612, column: 11, scope: !219)
!1156 = !DILocation(line: 620, column: 23, scope: !205)
!1157 = !DILocation(line: 625, column: 39, scope: !205)
!1158 = !DILocation(line: 626, column: 3, scope: !205)
!1159 = !DILocation(line: 626, column: 10, scope: !205)
!1160 = !DILocation(line: 626, column: 21, scope: !205)
!1161 = !DILocation(line: 628, column: 44, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !63, line: 628, column: 11)
!1163 = distinct !DILexicalBlock(scope: !205, file: !63, line: 627, column: 5)
!1164 = !DILocation(line: 628, column: 32, scope: !1162)
!1165 = !DILocation(line: 628, column: 49, scope: !1162)
!1166 = !DILocation(line: 628, column: 11, scope: !1163)
!1167 = !DILocation(line: 630, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !63, line: 630, column: 11)
!1169 = !DILocation(line: 630, column: 11, scope: !1163)
!1170 = !DILocation(line: 632, column: 26, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !63, line: 632, column: 15)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !63, line: 631, column: 9)
!1173 = !DILocation(line: 632, column: 34, scope: !1171)
!1174 = !DILocation(line: 632, column: 37, scope: !1171)
!1175 = !DILocation(line: 632, column: 15, scope: !1172)
!1176 = !DILocation(line: 636, column: 16, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !63, line: 636, column: 15)
!1178 = !DILocation(line: 636, column: 29, scope: !1177)
!1179 = !DILocation(line: 640, column: 16, scope: !1163)
!1180 = distinct !{!1180, !1158, !1181, !1152}
!1181 = !DILocation(line: 641, column: 5, scope: !205)
!1182 = !DILocation(line: 644, column: 3, scope: !205)
!1183 = !DILocation(line: 0, scope: !1117, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 648, column: 31, scope: !205)
!1185 = !DILocation(line: 0, scope: !1117, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 649, column: 31, scope: !205)
!1187 = !DILocation(line: 0, scope: !1117, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 650, column: 31, scope: !205)
!1189 = !DILocation(line: 0, scope: !1117, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 651, column: 31, scope: !205)
!1191 = !DILocation(line: 0, scope: !1117, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 652, column: 31, scope: !205)
!1193 = !DILocation(line: 0, scope: !1117, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 653, column: 31, scope: !205)
!1195 = !DILocation(line: 0, scope: !1117, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 654, column: 31, scope: !205)
!1197 = !DILocation(line: 0, scope: !1117, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 655, column: 31, scope: !205)
!1199 = !DILocation(line: 0, scope: !1117, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 656, column: 31, scope: !205)
!1201 = !DILocation(line: 0, scope: !1117, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 657, column: 31, scope: !205)
!1203 = !DILocation(line: 663, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !205, file: !63, line: 663, column: 7)
!1205 = !DILocation(line: 664, column: 7, scope: !1204)
!1206 = !DILocation(line: 664, column: 10, scope: !1204)
!1207 = !DILocation(line: 663, column: 7, scope: !205)
!1208 = !DILocation(line: 669, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !63, line: 665, column: 5)
!1210 = !DILocation(line: 671, column: 5, scope: !1209)
!1211 = !DILocation(line: 676, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1204, file: !63, line: 673, column: 5)
!1213 = !DILocation(line: 679, column: 3, scope: !205)
!1214 = !DILocation(line: 683, column: 3, scope: !205)
!1215 = !DILocation(line: 686, column: 3, scope: !205)
!1216 = !DILocation(line: 688, column: 3, scope: !205)
!1217 = !DILocation(line: 691, column: 3, scope: !205)
!1218 = !DILocation(line: 695, column: 3, scope: !205)
!1219 = !DILocation(line: 696, column: 1, scope: !205)
!1220 = !DISubprogram(name: "setlocale", scope: !1221, file: !1221, line: 122, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!59, !57, !101}
!1224 = !DISubprogram(name: "strncmp", scope: !1225, file: !1225, line: 159, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!57, !101, !101, !104}
!1228 = !DISubprogram(name: "exit", scope: !1229, file: !1229, line: 624, type: !1024, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1229 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1230 = !DISubprogram(name: "getenv", scope: !1229, file: !1229, line: 641, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!59, !101}
!1233 = !DISubprogram(name: "strcmp", scope: !1225, file: !1225, line: 156, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!57, !101, !101}
!1236 = !DISubprogram(name: "strspn", scope: !1225, file: !1225, line: 297, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!106, !101, !101}
!1239 = !DISubprogram(name: "strchr", scope: !1225, file: !1225, line: 246, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!59, !101, !57}
!1242 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1248 = !DISubprogram(name: "strcspn", scope: !1225, file: !1225, line: 293, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubprogram(name: "fwrite_unlocked", scope: !1100, file: !1100, line: 704, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!104, !1252, !104, !104, !1094}
!1252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1255 = distinct !DIAssignID()
!1256 = distinct !DIAssignID()
!1257 = !DILocation(line: 0, scope: !54)
!1258 = !DILocation(line: 502, column: 21, scope: !54)
!1259 = !DILocation(line: 502, column: 3, scope: !54)
!1260 = !DILocation(line: 503, column: 3, scope: !54)
!1261 = !DILocation(line: 504, column: 3, scope: !54)
!1262 = !DILocation(line: 505, column: 3, scope: !54)
!1263 = !DILocation(line: 507, column: 3, scope: !54)
!1264 = !DILocation(line: 509, column: 3, scope: !54)
!1265 = !DILocation(line: 509, column: 18, scope: !54)
!1266 = !DILocation(line: 514, column: 33, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 512, column: 9)
!1268 = distinct !DILexicalBlock(scope: !54, file: !2, line: 510, column: 5)
!1269 = !DILocation(line: 515, column: 11, scope: !1267)
!1270 = !DILocation(line: 517, column: 27, scope: !1267)
!1271 = !{!1272, !1272, i64 0}
!1272 = !{!"long", !1036, i64 0}
!1273 = !DILocation(line: 518, column: 11, scope: !1267)
!1274 = !DILocation(line: 520, column: 23, scope: !1267)
!1275 = !DILocation(line: 520, column: 21, scope: !1267)
!1276 = !DILocation(line: 521, column: 11, scope: !1267)
!1277 = distinct !{!1277, !1264, !1278, !1152}
!1278 = !DILocation(line: 527, column: 5, scope: !54)
!1279 = !DILocation(line: 522, column: 9, scope: !1267)
!1280 = !DILocation(line: 523, column: 9, scope: !1267)
!1281 = !DILocation(line: 525, column: 11, scope: !1267)
!1282 = !DILocation(line: 529, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !54, file: !2, line: 529, column: 7)
!1284 = !DILocation(line: 529, column: 23, scope: !1283)
!1285 = !DILocation(line: 0, scope: !1283)
!1286 = !DILocation(line: 529, column: 7, scope: !54)
!1287 = !DILocation(line: 531, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 530, column: 5)
!1289 = !DILocation(line: 532, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 531, column: 11)
!1291 = !DILocation(line: 535, column: 36, scope: !1288)
!1292 = !DILocation(line: 536, column: 34, scope: !1288)
!1293 = !{!1294, !1035, i64 32}
!1294 = !{!"re_pattern_buffer", !1035, i64 0, !1272, i64 8, !1272, i64 16, !1272, i64 24, !1035, i64 32, !1035, i64 40, !1272, i64 48, !1106, i64 56, !1106, i64 56, !1106, i64 56, !1106, i64 56, !1106, i64 56, !1106, i64 56, !1106, i64 56}
!1295 = !DILocation(line: 537, column: 36, scope: !1288)
!1296 = !{!1294, !1035, i64 40}
!1297 = !DILocation(line: 538, column: 54, scope: !1288)
!1298 = !DILocation(line: 538, column: 23, scope: !1288)
!1299 = !DILocation(line: 540, column: 11, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 540, column: 11)
!1301 = !DILocation(line: 540, column: 11, scope: !1288)
!1302 = !DILocation(line: 541, column: 9, scope: !1300)
!1303 = !DILocation(line: 544, column: 38, scope: !1283)
!1304 = !DILocation(line: 544, column: 51, scope: !1283)
!1305 = !DILocation(line: 544, column: 36, scope: !1283)
!1306 = !DILocation(line: 544, column: 18, scope: !1283)
!1307 = !DILocation(line: 547, column: 26, scope: !54)
!1308 = !DILocation(line: 547, column: 3, scope: !54)
!1309 = !DILocation(line: 551, column: 17, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !54, file: !2, line: 548, column: 5)
!1311 = distinct !{!1311, !1308, !1312, !1152}
!1312 = !DILocation(line: 552, column: 5, scope: !54)
!1313 = !DILocation(line: 550, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 549, column: 11)
!1315 = !DILocation(line: 549, column: 24, scope: !1314)
!1316 = !DILocation(line: 549, column: 11, scope: !1310)
!1317 = !DILocation(line: 553, column: 32, scope: !54)
!1318 = !DILocation(line: 553, column: 50, scope: !54)
!1319 = !DILocation(line: 554, column: 21, scope: !54)
!1320 = !DILocation(line: 554, column: 17, scope: !54)
!1321 = !DILocation(line: 555, column: 20, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !54, file: !2, line: 555, column: 7)
!1323 = !DILocation(line: 555, column: 39, scope: !1322)
!1324 = !DILocation(line: 556, column: 5, scope: !1322)
!1325 = !DILocation(line: 557, column: 14, scope: !54)
!1326 = !DILocation(line: 558, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !54, file: !2, line: 558, column: 7)
!1328 = !DILocation(line: 558, column: 7, scope: !54)
!1329 = !DILocation(line: 560, column: 25, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 559, column: 5)
!1331 = !DILocation(line: 560, column: 56, scope: !1330)
!1332 = !DILocation(line: 560, column: 55, scope: !1330)
!1333 = !DILocation(line: 560, column: 52, scope: !1330)
!1334 = !DILocalVariable(name: "__dest", arg: 1, scope: !1335, file: !1336, line: 26, type: !1339)
!1335 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1340)
!1336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!98, !1339, !1252, !104}
!1339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!1340 = !{!1334, !1341, !1342}
!1341 = !DILocalVariable(name: "__src", arg: 2, scope: !1335, file: !1336, line: 26, type: !1252)
!1342 = !DILocalVariable(name: "__len", arg: 3, scope: !1335, file: !1336, line: 26, type: !104)
!1343 = !DILocation(line: 0, scope: !1335, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 560, column: 7, scope: !1330)
!1345 = !DILocation(line: 29, column: 10, scope: !1335, inlinedAt: !1344)
!1346 = !DILocation(line: 562, column: 5, scope: !1330)
!1347 = !DILocation(line: 0, scope: !1327)
!1348 = !DILocation(line: 568, column: 11, scope: !54)
!1349 = !DILocation(line: 568, column: 18, scope: !54)
!1350 = !DILocation(line: 0, scope: !483)
!1351 = !DILocation(line: 576, column: 24, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !483, file: !2, line: 576, column: 5)
!1353 = !DILocation(line: 576, column: 5, scope: !483)
!1354 = !DILocation(line: 577, column: 10, scope: !1352)
!1355 = !DILocation(line: 581, column: 3, scope: !54)
!1356 = !DILocation(line: 0, scope: !484)
!1357 = !DILocation(line: 583, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !54, file: !2, line: 583, column: 7)
!1359 = !DILocation(line: 583, column: 23, scope: !1358)
!1360 = !DILocalVariable(name: "filename", arg: 1, scope: !1361, file: !2, line: 449, type: !101)
!1361 = distinct !DISubprogram(name: "tac_file", scope: !2, file: !2, line: 449, type: !1362, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1364)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!215, !101}
!1364 = !{!1360, !1365, !1366, !1368, !1369}
!1365 = !DILocalVariable(name: "ok", scope: !1361, file: !2, line: 451, type: !215)
!1366 = !DILocalVariable(name: "file_size", scope: !1361, file: !2, line: 452, type: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1100, line: 63, baseType: !254)
!1368 = !DILocalVariable(name: "fd", scope: !1361, file: !2, line: 453, type: !57)
!1369 = !DILocalVariable(name: "is_stdin", scope: !1361, file: !2, line: 454, type: !215)
!1370 = !DILocation(line: 0, scope: !1361, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 577, column: 13, scope: !1352)
!1372 = !DILocation(line: 0, scope: !1117, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 454, column: 19, scope: !1361, inlinedAt: !1371)
!1374 = !DILocation(line: 1361, column: 11, scope: !1117, inlinedAt: !1373)
!1375 = !DILocation(line: 1361, column: 10, scope: !1117, inlinedAt: !1373)
!1376 = !DILocation(line: 456, column: 7, scope: !1361, inlinedAt: !1371)
!1377 = !DILocation(line: 458, column: 23, scope: !1378, inlinedAt: !1371)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 457, column: 5)
!1379 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 456, column: 7)
!1380 = !DILocation(line: 460, column: 18, scope: !1378, inlinedAt: !1371)
!1381 = !DILocation(line: 462, column: 5, scope: !1378, inlinedAt: !1371)
!1382 = !DILocation(line: 465, column: 12, scope: !1383, inlinedAt: !1371)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 464, column: 5)
!1384 = !DILocation(line: 466, column: 14, scope: !1385, inlinedAt: !1371)
!1385 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 466, column: 11)
!1386 = !DILocation(line: 466, column: 11, scope: !1383, inlinedAt: !1371)
!1387 = !DILocation(line: 468, column: 11, scope: !1388, inlinedAt: !1371)
!1388 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 467, column: 9)
!1389 = !DILocation(line: 470, column: 11, scope: !1388, inlinedAt: !1371)
!1390 = !DILocation(line: 0, scope: !1379, inlinedAt: !1371)
!1391 = !DILocation(line: 474, column: 15, scope: !1361, inlinedAt: !1371)
!1392 = !DILocation(line: 476, column: 19, scope: !1361, inlinedAt: !1371)
!1393 = !DILocation(line: 476, column: 23, scope: !1361, inlinedAt: !1371)
!1394 = !DILocation(line: 476, column: 26, scope: !1361, inlinedAt: !1371)
!1395 = !DILocation(line: 476, column: 9, scope: !1361, inlinedAt: !1371)
!1396 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1397, file: !2, line: 432, type: !57)
!1397 = distinct !DISubprogram(name: "tac_nonseekable", scope: !2, file: !2, line: 432, type: !1398, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!215, !57, !101}
!1400 = !{!1396, !1401, !1402, !1403, !1404, !1405}
!1401 = !DILocalVariable(name: "file", arg: 2, scope: !1397, file: !2, line: 432, type: !101)
!1402 = !DILocalVariable(name: "tmp_stream", scope: !1397, file: !2, line: 434, type: !228)
!1403 = !DILocalVariable(name: "tmp_file", scope: !1397, file: !2, line: 435, type: !59)
!1404 = !DILocalVariable(name: "bytes_copied", scope: !1397, file: !2, line: 436, type: !1367)
!1405 = !DILocalVariable(name: "ok", scope: !1397, file: !2, line: 440, type: !215)
!1406 = !DILocation(line: 0, scope: !1397, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 477, column: 11, scope: !1361, inlinedAt: !1371)
!1408 = !DILocalVariable(name: "fp", scope: !1409, file: !2, line: 388, type: !228)
!1409 = distinct !DISubprogram(name: "copy_to_temp", scope: !2, file: !2, line: 386, type: !1410, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1413)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1367, !1412, !58, !57, !101}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1413 = !{!1414, !1415, !1416, !1417, !1408, !1418, !1419, !1423, !1427, !1430, !1431}
!1414 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !1409, file: !2, line: 386, type: !1412)
!1415 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !1409, file: !2, line: 386, type: !58)
!1416 = !DILocalVariable(name: "input_fd", arg: 3, scope: !1409, file: !2, line: 386, type: !57)
!1417 = !DILocalVariable(name: "file", arg: 4, scope: !1409, file: !2, line: 386, type: !101)
!1418 = !DILocalVariable(name: "file_name", scope: !1409, file: !2, line: 389, type: !59)
!1419 = !DILocalVariable(name: "bytes_copied", scope: !1409, file: !2, line: 390, type: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1421, line: 102, baseType: !1422)
!1421 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !255, line: 73, baseType: !106)
!1423 = !DILocalVariable(name: "bytes_read", scope: !1424, file: !2, line: 396, type: !1425)
!1424 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 395, column: 5)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1100, line: 77, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !255, line: 194, baseType: !256)
!1427 = !DILocalVariable(name: "__ptr", scope: !1428, file: !2, line: 405, type: !101)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 405, column: 11)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 405, column: 11)
!1430 = !DILocalVariable(name: "__stream", scope: !1428, file: !2, line: 405, type: !228)
!1431 = !DILocalVariable(name: "__cnt", scope: !1428, file: !2, line: 405, type: !104)
!1432 = !DILocation(line: 0, scope: !1409, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 436, column: 24, scope: !1397, inlinedAt: !1407)
!1434 = !DILocation(line: 388, column: 3, scope: !1409, inlinedAt: !1433)
!1435 = !DILocation(line: 389, column: 3, scope: !1409, inlinedAt: !1433)
!1436 = !DILocation(line: 391, column: 8, scope: !1437, inlinedAt: !1433)
!1437 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 391, column: 7)
!1438 = !DILocation(line: 391, column: 7, scope: !1409, inlinedAt: !1433)
!1439 = !DILocation(line: 396, column: 44, scope: !1424, inlinedAt: !1433)
!1440 = !DILocation(line: 396, column: 54, scope: !1424, inlinedAt: !1433)
!1441 = !DILocation(line: 396, column: 28, scope: !1424, inlinedAt: !1433)
!1442 = !DILocation(line: 0, scope: !1424, inlinedAt: !1433)
!1443 = !DILocation(line: 397, column: 22, scope: !1444, inlinedAt: !1433)
!1444 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 397, column: 11)
!1445 = !DILocation(line: 397, column: 11, scope: !1424, inlinedAt: !1433)
!1446 = !DILocation(line: 414, column: 20, scope: !1424, inlinedAt: !1433)
!1447 = !DILocation(line: 399, column: 22, scope: !1448, inlinedAt: !1433)
!1448 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 399, column: 11)
!1449 = !DILocation(line: 399, column: 11, scope: !1424, inlinedAt: !1433)
!1450 = !DILocation(line: 401, column: 11, scope: !1451, inlinedAt: !1433)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 400, column: 9)
!1452 = !DILocation(line: 402, column: 11, scope: !1451, inlinedAt: !1433)
!1453 = !DILocation(line: 405, column: 11, scope: !1429, inlinedAt: !1433)
!1454 = !DILocation(line: 405, column: 48, scope: !1429, inlinedAt: !1433)
!1455 = !DILocation(line: 405, column: 11, scope: !1424, inlinedAt: !1433)
!1456 = !DILocation(line: 407, column: 11, scope: !1457, inlinedAt: !1433)
!1457 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 406, column: 9)
!1458 = !DILocation(line: 408, column: 11, scope: !1457, inlinedAt: !1433)
!1459 = !DILocation(line: 390, column: 13, scope: !1409, inlinedAt: !1433)
!1460 = !DILocation(line: 417, column: 7, scope: !1461, inlinedAt: !1433)
!1461 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 417, column: 7)
!1462 = !DILocation(line: 417, column: 19, scope: !1461, inlinedAt: !1433)
!1463 = !DILocation(line: 417, column: 7, scope: !1409, inlinedAt: !1433)
!1464 = !DILocation(line: 419, column: 7, scope: !1465, inlinedAt: !1433)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 418, column: 5)
!1466 = !DILocation(line: 420, column: 7, scope: !1465, inlinedAt: !1433)
!1467 = !DILocation(line: 426, column: 1, scope: !1409, inlinedAt: !1433)
!1468 = !DILocation(line: 437, column: 7, scope: !1397, inlinedAt: !1407)
!1469 = !DILocation(line: 423, column: 12, scope: !1409, inlinedAt: !1433)
!1470 = !DILocation(line: 424, column: 17, scope: !1409, inlinedAt: !1433)
!1471 = !DILocation(line: 437, column: 20, scope: !1472, inlinedAt: !1407)
!1472 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 437, column: 7)
!1473 = !DILocation(line: 440, column: 27, scope: !1397, inlinedAt: !1407)
!1474 = !DILocation(line: 440, column: 13, scope: !1397, inlinedAt: !1407)
!1475 = !DILocation(line: 478, column: 11, scope: !1361, inlinedAt: !1371)
!1476 = !DILocation(line: 480, column: 17, scope: !1477, inlinedAt: !1371)
!1477 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 480, column: 7)
!1478 = !DILocation(line: 480, column: 20, scope: !1477, inlinedAt: !1371)
!1479 = !DILocation(line: 480, column: 31, scope: !1477, inlinedAt: !1371)
!1480 = !DILocation(line: 480, column: 7, scope: !1361, inlinedAt: !1371)
!1481 = !DILocation(line: 482, column: 7, scope: !1482, inlinedAt: !1371)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 481, column: 5)
!1483 = !DILocation(line: 484, column: 5, scope: !1482, inlinedAt: !1371)
!1484 = !DILocation(line: 576, column: 33, scope: !1352)
!1485 = distinct !{!1485, !1353, !1486, !1152}
!1486 = !DILocation(line: 577, column: 30, scope: !483)
!1487 = !DILocation(line: 583, column: 26, scope: !1358)
!1488 = !DILocation(line: 583, column: 47, scope: !1358)
!1489 = !DILocation(line: 583, column: 7, scope: !54)
!1490 = !DILocation(line: 585, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 584, column: 5)
!1492 = !DILocation(line: 587, column: 5, scope: !1491)
!1493 = !DILocation(line: 589, column: 3, scope: !54)
!1494 = !DISubprogram(name: "bindtextdomain", scope: !1087, file: !1087, line: 86, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!59, !101, !101}
!1497 = !DISubprogram(name: "textdomain", scope: !1087, file: !1087, line: 82, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1498 = !DISubprogram(name: "atexit", scope: !1229, file: !1229, line: 602, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!57, !631}
!1501 = !DISubprogram(name: "getopt_long", scope: !404, file: !404, line: 66, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!57, !57, !1504, !101, !1506, !409}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1507 = !DISubprogram(name: "strlen", scope: !1225, file: !1225, line: 407, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!106, !101}
!1510 = !DISubprogram(name: "re_compile_pattern", scope: !170, file: !170, line: 548, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!101, !101, !104, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1514 = !DILocation(line: 0, scope: !451)
!1515 = !DILocation(line: 157, column: 40, scope: !451)
!1516 = !DILocation(line: 159, column: 8, scope: !462)
!1517 = !DILocation(line: 159, column: 7, scope: !451)
!1518 = !DILocation(line: 157, column: 38, scope: !451)
!1519 = !DILocation(line: 156, column: 34, scope: !451)
!1520 = !DILocation(line: 168, column: 23, scope: !451)
!1521 = !DILocation(line: 168, column: 3, scope: !451)
!1522 = !DILocation(line: 170, column: 22, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !451, file: !2, line: 169, column: 5)
!1524 = !DILocation(line: 0, scope: !1335, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 170, column: 7, scope: !1523)
!1526 = !DILocation(line: 29, column: 10, scope: !1335, inlinedAt: !1525)
!1527 = !DILocation(line: 173, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 173, column: 11)
!1529 = !DILocation(line: 173, column: 49, scope: !1528)
!1530 = !DILocation(line: 173, column: 11, scope: !1523)
!1531 = !DILocation(line: 172, column: 13, scope: !1523)
!1532 = !DILocation(line: 171, column: 20, scope: !1523)
!1533 = !DILocation(line: 175, column: 23, scope: !1523)
!1534 = !DILocation(line: 161, column: 11, scope: !460)
!1535 = !DILocation(line: 161, column: 58, scope: !460)
!1536 = !DILocation(line: 161, column: 55, scope: !460)
!1537 = !DILocation(line: 161, column: 11, scope: !461)
!1538 = !DILocation(line: 948, column: 21, scope: !1539, inlinedAt: !1542)
!1539 = distinct !DISubprogram(name: "write_error", scope: !63, file: !63, line: 946, type: !632, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1540)
!1540 = !{!1541}
!1541 = !DILocalVariable(name: "saved_errno", scope: !1539, file: !63, line: 948, type: !57)
!1542 = distinct !DILocation(line: 162, column: 9, scope: !460)
!1543 = !DILocation(line: 0, scope: !1539, inlinedAt: !1542)
!1544 = !DILocation(line: 949, column: 3, scope: !1539, inlinedAt: !1542)
!1545 = !DILocation(line: 950, column: 11, scope: !1539, inlinedAt: !1542)
!1546 = !DILocation(line: 950, column: 3, scope: !1539, inlinedAt: !1542)
!1547 = !DILocation(line: 951, column: 3, scope: !1539, inlinedAt: !1542)
!1548 = !DILocation(line: 952, column: 3, scope: !1539, inlinedAt: !1542)
!1549 = !DILocation(line: 948, column: 21, scope: !1539, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 174, column: 9, scope: !1528)
!1551 = !DILocation(line: 0, scope: !1539, inlinedAt: !1550)
!1552 = !DILocation(line: 949, column: 3, scope: !1539, inlinedAt: !1550)
!1553 = !DILocation(line: 950, column: 11, scope: !1539, inlinedAt: !1550)
!1554 = !DILocation(line: 950, column: 3, scope: !1539, inlinedAt: !1550)
!1555 = !DILocation(line: 951, column: 3, scope: !1539, inlinedAt: !1550)
!1556 = !DILocation(line: 952, column: 3, scope: !1539, inlinedAt: !1550)
!1557 = distinct !{!1557, !1521, !1558, !1152, !1559}
!1558 = !DILocation(line: 177, column: 5, scope: !451)
!1559 = !{!"llvm.loop.peeled.count", i32 1}
!1560 = !DILocation(line: 179, column: 20, scope: !451)
!1561 = !DILocation(line: 179, column: 18, scope: !451)
!1562 = !DILocation(line: 0, scope: !1335, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 179, column: 3, scope: !451)
!1564 = !DILocation(line: 29, column: 10, scope: !1335, inlinedAt: !1563)
!1565 = !DILocation(line: 180, column: 19, scope: !451)
!1566 = !DILocation(line: 181, column: 1, scope: !451)
!1567 = !DISubprogram(name: "open", scope: !1568, file: !1568, line: 181, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!57, !101, !57, null}
!1571 = !DISubprogram(name: "__errno_location", scope: !1572, file: !1572, line: 37, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!409}
!1575 = !DISubprogram(name: "lseek", scope: !1576, file: !1576, line: 339, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!254, !57, !254, !57}
!1579 = !DISubprogram(name: "isatty", scope: !1576, file: !1576, line: 809, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!57, !57}
!1582 = !DISubprogram(name: "fflush_unlocked", scope: !1100, file: !1100, line: 239, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!57, !228}
!1585 = !DISubprogram(name: "fileno_unlocked", scope: !1100, file: !1100, line: 814, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1586 = distinct !DISubprogram(name: "tac_seekable", scope: !2, file: !2, line: 188, type: !1587, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!215, !57, !101, !1367}
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1603, !1605, !1609, !1610, !1611, !1612, !1617, !1618, !1619}
!1590 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1586, file: !2, line: 188, type: !57)
!1591 = !DILocalVariable(name: "file", arg: 2, scope: !1586, file: !2, line: 188, type: !101)
!1592 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1586, file: !2, line: 188, type: !1367)
!1593 = !DILocalVariable(name: "match_start", scope: !1586, file: !2, line: 192, type: !59)
!1594 = !DILocalVariable(name: "past_end", scope: !1586, file: !2, line: 196, type: !59)
!1595 = !DILocalVariable(name: "saved_record_size", scope: !1586, file: !2, line: 199, type: !978)
!1596 = !DILocalVariable(name: "first_time", scope: !1586, file: !2, line: 203, type: !215)
!1597 = !DILocalVariable(name: "first_char", scope: !1586, file: !2, line: 204, type: !4)
!1598 = !DILocalVariable(name: "separator1", scope: !1586, file: !2, line: 205, type: !101)
!1599 = !DILocalVariable(name: "match_length1", scope: !1586, file: !2, line: 206, type: !104)
!1600 = !DILocalVariable(name: "remainder", scope: !1586, file: !2, line: 213, type: !104)
!1601 = !DILocalVariable(name: "rsize", scope: !1602, file: !2, line: 226, type: !1367)
!1602 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 225, column: 5)
!1603 = !DILocalVariable(name: "nread", scope: !1604, file: !2, line: 235, type: !1425)
!1604 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 234, column: 5)
!1605 = !DILocalVariable(name: "i", scope: !1606, file: !2, line: 265, type: !104)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 264, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 263, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 256, column: 5)
!1609 = !DILocalVariable(name: "ri", scope: !1606, file: !2, line: 266, type: !447)
!1610 = !DILocalVariable(name: "range", scope: !1606, file: !2, line: 267, type: !447)
!1611 = !DILocalVariable(name: "ret", scope: !1606, file: !2, line: 268, type: !447)
!1612 = !DILocalVariable(name: "newbuffer", scope: !1613, file: !2, line: 314, type: !59)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 309, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 308, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 299, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 298, column: 11)
!1617 = !DILocalVariable(name: "offset", scope: !1613, file: !2, line: 315, type: !104)
!1618 = !DILocalVariable(name: "old_G_buffer_size", scope: !1613, file: !2, line: 316, type: !104)
!1619 = !DILocalVariable(name: "match_end", scope: !1620, file: !2, line: 359, type: !59)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 358, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 357, column: 15)
!1622 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 355, column: 9)
!1623 = !DILocation(line: 0, scope: !1586)
!1624 = !DILocation(line: 204, column: 22, scope: !1586)
!1625 = !DILocation(line: 204, column: 21, scope: !1586)
!1626 = !DILocation(line: 205, column: 38, scope: !1586)
!1627 = !DILocation(line: 206, column: 26, scope: !1586)
!1628 = !DILocation(line: 206, column: 39, scope: !1586)
!1629 = !DILocation(line: 213, column: 33, scope: !1586)
!1630 = !DILocation(line: 213, column: 31, scope: !1586)
!1631 = !DILocation(line: 214, column: 17, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 214, column: 7)
!1633 = !DILocation(line: 214, column: 7, scope: !1586)
!1634 = !DILocation(line: 216, column: 16, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 215, column: 5)
!1636 = !DILocation(line: 217, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 217, column: 11)
!1638 = !DILocation(line: 217, column: 48, scope: !1637)
!1639 = !DILocation(line: 217, column: 11, scope: !1635)
!1640 = !DILocation(line: 218, column: 9, scope: !1637)
!1641 = !DILocation(line: 223, column: 47, scope: !1586)
!1642 = !DILocation(line: 223, column: 57, scope: !1586)
!1643 = !DILocation(line: 223, column: 31, scope: !1586)
!1644 = !DILocation(line: 223, column: 69, scope: !1586)
!1645 = !DILocation(line: 224, column: 10, scope: !1586)
!1646 = !DILocation(line: 223, column: 3, scope: !1586)
!1647 = !DILocation(line: 226, column: 21, scope: !1602)
!1648 = !DILocation(line: 0, scope: !1602)
!1649 = !DILocation(line: 227, column: 28, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 227, column: 11)
!1651 = !DILocation(line: 227, column: 11, scope: !1650)
!1652 = !DILocation(line: 227, column: 46, scope: !1650)
!1653 = !DILocation(line: 227, column: 11, scope: !1602)
!1654 = !DILocation(line: 228, column: 9, scope: !1650)
!1655 = !DILocation(line: 229, column: 19, scope: !1602)
!1656 = !DILocation(line: 229, column: 16, scope: !1602)
!1657 = distinct !{!1657, !1646, !1658, !1152}
!1658 = !DILocation(line: 230, column: 5, scope: !1586)
!1659 = !DILocation(line: 233, column: 3, scope: !1586)
!1660 = !DILocation(line: 223, column: 29, scope: !1586)
!1661 = !DILocation(line: 233, column: 31, scope: !1586)
!1662 = !DILocation(line: 233, column: 28, scope: !1586)
!1663 = !DILocation(line: 235, column: 39, scope: !1604)
!1664 = !DILocation(line: 235, column: 23, scope: !1604)
!1665 = !DILocation(line: 0, scope: !1604)
!1666 = !DILocation(line: 236, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 236, column: 11)
!1668 = !DILocation(line: 236, column: 11, scope: !1604)
!1669 = !DILocation(line: 244, column: 25, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 244, column: 7)
!1671 = !DILocation(line: 244, column: 7, scope: !1586)
!1672 = !DILocation(line: 246, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 245, column: 5)
!1674 = !DILocation(line: 247, column: 7, scope: !1673)
!1675 = !DILocation(line: 250, column: 28, scope: !1586)
!1676 = !DILocation(line: 250, column: 37, scope: !1586)
!1677 = !DILocation(line: 252, column: 7, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 252, column: 7)
!1679 = !DILocation(line: 252, column: 7, scope: !1586)
!1680 = !DILocation(line: 255, column: 3, scope: !1586)
!1681 = !DILocation(line: 263, column: 11, scope: !1607)
!1682 = !DILocation(line: 263, column: 27, scope: !1607)
!1683 = !DILocation(line: 263, column: 11, scope: !1608)
!1684 = !DILocation(line: 265, column: 36, scope: !1606)
!1685 = !DILocation(line: 265, column: 34, scope: !1606)
!1686 = !DILocation(line: 0, scope: !1606)
!1687 = !DILocation(line: 266, column: 25, scope: !1606)
!1688 = !DILocation(line: 267, column: 30, scope: !1606)
!1689 = !DILocation(line: 270, column: 17, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 270, column: 15)
!1691 = !DILocation(line: 270, column: 15, scope: !1606)
!1692 = !DILocation(line: 271, column: 13, scope: !1690)
!1693 = !DILocation(line: 273, column: 21, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 273, column: 15)
!1695 = !DILocation(line: 274, column: 15, scope: !1694)
!1696 = !DILocation(line: 275, column: 40, scope: !1694)
!1697 = !DILocation(line: 274, column: 26, scope: !1694)
!1698 = !DILocation(line: 273, column: 15, scope: !1606)
!1699 = !DILocation(line: 277, column: 27, scope: !1694)
!1700 = !DILocation(line: 279, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1694, file: !2, line: 278, column: 20)
!1702 = !DILocation(line: 283, column: 29, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 282, column: 13)
!1704 = !DILocation(line: 283, column: 45, scope: !1703)
!1705 = !{!1706, !1035, i64 8}
!1706 = !{!"re_registers", !1106, i64 0, !1035, i64 8, !1035, i64 16}
!1707 = !DILocation(line: 283, column: 40, scope: !1703)
!1708 = !DILocation(line: 283, column: 38, scope: !1703)
!1709 = !DILocation(line: 284, column: 35, scope: !1703)
!1710 = !{!1706, !1035, i64 16}
!1711 = !DILocation(line: 284, column: 30, scope: !1703)
!1712 = !DILocation(line: 284, column: 42, scope: !1703)
!1713 = !DILocation(line: 284, column: 28, scope: !1703)
!1714 = !DILocation(line: 290, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 288, column: 9)
!1716 = !DILocation(line: 290, column: 18, scope: !1715)
!1717 = !DILocation(line: 290, column: 33, scope: !1715)
!1718 = !DILocation(line: 291, column: 18, scope: !1715)
!1719 = distinct !{!1719, !1720, !1721, !1152}
!1720 = !DILocation(line: 290, column: 11, scope: !1715)
!1721 = !DILocation(line: 293, column: 31, scope: !1715)
!1722 = !DILocation(line: 291, column: 36, scope: !1715)
!1723 = !DILocation(line: 291, column: 40, scope: !1715)
!1724 = !DILocation(line: 298, column: 25, scope: !1616)
!1725 = !DILocation(line: 0, scope: !1607)
!1726 = !DILocation(line: 298, column: 23, scope: !1616)
!1727 = !DILocation(line: 298, column: 11, scope: !1608)
!1728 = !DILocation(line: 300, column: 24, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 300, column: 15)
!1730 = !DILocation(line: 300, column: 15, scope: !1615)
!1731 = !DILocation(line: 303, column: 15, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 301, column: 13)
!1733 = !DILocation(line: 304, column: 15, scope: !1732)
!1734 = !DILocation(line: 307, column: 40, scope: !1615)
!1735 = !DILocation(line: 308, column: 35, scope: !1614)
!1736 = !DILocation(line: 308, column: 33, scope: !1614)
!1737 = !DILocation(line: 308, column: 15, scope: !1615)
!1738 = !DILocation(line: 315, column: 31, scope: !1613)
!1739 = !DILocation(line: 0, scope: !1613)
!1740 = !DILocation(line: 316, column: 42, scope: !1613)
!1741 = !DILocation(line: 318, column: 25, scope: !1613)
!1742 = !DILocation(line: 319, column: 41, scope: !1613)
!1743 = !DILocation(line: 319, column: 45, scope: !1613)
!1744 = !DILocation(line: 319, column: 63, scope: !1613)
!1745 = !DILocation(line: 319, column: 29, scope: !1613)
!1746 = !DILocation(line: 320, column: 33, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 320, column: 19)
!1748 = !DILocation(line: 320, column: 19, scope: !1613)
!1749 = !DILocation(line: 321, column: 17, scope: !1747)
!1750 = !DILocation(line: 322, column: 46, scope: !1613)
!1751 = !DILocation(line: 322, column: 27, scope: !1613)
!1752 = !DILocation(line: 323, column: 25, scope: !1613)
!1753 = !DILocation(line: 324, column: 24, scope: !1613)
!1754 = !DILocation(line: 328, column: 27, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 328, column: 15)
!1756 = !DILocation(line: 325, column: 13, scope: !1613)
!1757 = !DILocation(line: 328, column: 24, scope: !1755)
!1758 = !DILocation(line: 328, column: 15, scope: !1615)
!1759 = !DILocation(line: 329, column: 22, scope: !1755)
!1760 = !DILocation(line: 329, column: 13, scope: !1755)
!1761 = !DILocation(line: 332, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 331, column: 13)
!1763 = !DILocation(line: 0, scope: !1755)
!1764 = !DILocation(line: 335, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 335, column: 15)
!1766 = !DILocation(line: 335, column: 52, scope: !1765)
!1767 = !DILocation(line: 335, column: 15, scope: !1615)
!1768 = !DILocation(line: 336, column: 13, scope: !1765)
!1769 = !DILocation(line: 340, column: 20, scope: !1615)
!1770 = !DILocation(line: 340, column: 31, scope: !1615)
!1771 = !DILocation(line: 340, column: 29, scope: !1615)
!1772 = !DILocalVariable(name: "__dest", arg: 1, scope: !1773, file: !1336, line: 34, type: !98)
!1773 = distinct !DISubprogram(name: "memmove", scope: !1336, file: !1336, line: 34, type: !1774, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!98, !98, !1253, !104}
!1776 = !{!1772, !1777, !1778}
!1777 = !DILocalVariable(name: "__src", arg: 2, scope: !1773, file: !1336, line: 34, type: !1253)
!1778 = !DILocalVariable(name: "__len", arg: 3, scope: !1773, file: !1336, line: 34, type: !104)
!1779 = !DILocation(line: 0, scope: !1773, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 340, column: 11, scope: !1615)
!1781 = !DILocation(line: 36, column: 10, scope: !1773, inlinedAt: !1780)
!1782 = !DILocation(line: 343, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 343, column: 15)
!1784 = !DILocation(line: 348, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 348, column: 15)
!1786 = !DILocation(line: 348, column: 60, scope: !1785)
!1787 = !DILocation(line: 348, column: 57, scope: !1785)
!1788 = !DILocation(line: 348, column: 15, scope: !1615)
!1789 = !DILocation(line: 341, column: 31, scope: !1615)
!1790 = !DILocation(line: 341, column: 43, scope: !1615)
!1791 = distinct !{!1791, !1680, !1792}
!1792 = !DILocation(line: 378, column: 5, scope: !1586)
!1793 = !DILocation(line: 350, column: 15, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 349, column: 13)
!1795 = !DILocation(line: 351, column: 15, scope: !1794)
!1796 = !DILocation(line: 357, column: 15, scope: !1621)
!1797 = !DILocation(line: 357, column: 15, scope: !1622)
!1798 = !DILocation(line: 359, column: 47, scope: !1620)
!1799 = !DILocation(line: 359, column: 45, scope: !1620)
!1800 = !DILocation(line: 0, scope: !1620)
!1801 = !DILocation(line: 363, column: 20, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 363, column: 19)
!1803 = !DILocation(line: 363, column: 31, scope: !1802)
!1804 = !DILocation(line: 0, scope: !1621)
!1805 = !DILocation(line: 375, column: 15, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 375, column: 15)
!1807 = !DILocation(line: 375, column: 31, scope: !1806)
!1808 = !DILocation(line: 375, column: 15, scope: !1622)
!1809 = !DILocation(line: 379, column: 1, scope: !1586)
!1810 = !DISubprogram(name: "close", scope: !1576, file: !1576, line: 358, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1811 = !DISubprogram(name: "re_search", scope: !170, file: !170, line: 564, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!447, !1513, !101, !447, !447, !447, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1815 = !DISubprogram(name: "clearerr_unlocked", scope: !1100, file: !1100, line: 794, type: !1816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1839 = !DILocation(line: 111, column: 23, scope: !1833)
!1840 = !DILocation(line: 2059, column: 24, scope: !1824, inlinedAt: !1831)
!1841 = distinct !{!1841, !1842, !1843}
!1842 = !DILocation(line: 93, column: 7, scope: !554)
!1843 = !DILocation(line: 112, column: 9, scope: !554)
!1844 = !DILocation(line: 98, column: 15, scope: !1838)
!1845 = !DILocation(line: 101, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1833, file: !491, line: 101, column: 15)
!1847 = !DILocation(line: 101, column: 71, scope: !1846)
!1848 = !DILocation(line: 101, column: 15, scope: !1833)
!1849 = !DILocation(line: 104, column: 15, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1833, file: !491, line: 104, column: 15)
!1851 = !DILocation(line: 104, column: 21, scope: !1850)
!1852 = !DILocation(line: 104, column: 31, scope: !1850)
!1853 = !DILocation(line: 106, column: 15, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !491, line: 105, column: 13)
!1855 = !DILocation(line: 108, column: 15, scope: !1854)
!1856 = !DILocation(line: 114, column: 16, scope: !554)
!1857 = !DILocation(line: 125, column: 16, scope: !554)
!1858 = !DILocation(line: 126, column: 14, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !554, file: !491, line: 126, column: 11)
!1860 = !DILocation(line: 126, column: 11, scope: !554)
!1861 = !DILocation(line: 128, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !491, line: 127, column: 9)
!1863 = !DILocation(line: 130, column: 11, scope: !1862)
!1864 = !DILocation(line: 133, column: 16, scope: !554)
!1865 = !DILocation(line: 133, column: 14, scope: !554)
!1866 = !DILocation(line: 134, column: 13, scope: !560)
!1867 = !DILocation(line: 134, column: 11, scope: !554)
!1868 = !DILocation(line: 136, column: 11, scope: !559)
!1869 = !DILocation(line: 138, column: 11, scope: !559)
!1870 = !DILocation(line: 139, column: 19, scope: !559)
!1871 = !DILocation(line: 139, column: 11, scope: !559)
!1872 = !DILocation(line: 140, column: 9, scope: !559)
!1873 = !DILocation(line: 141, column: 17, scope: !559)
!1874 = !DILocation(line: 141, column: 11, scope: !559)
!1875 = !DILocation(line: 142, column: 20, scope: !559)
!1876 = !DILocation(line: 143, column: 11, scope: !559)
!1877 = !DILocation(line: 146, column: 34, scope: !554)
!1878 = !DILocalVariable(name: "fn", arg: 1, scope: !1879, file: !491, line: 69, type: !101)
!1879 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !491, file: !491, line: 69, type: !1880, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !101, !495}
!1882 = !{!1878, !1883}
!1883 = !DILocalVariable(name: "fp", arg: 2, scope: !1879, file: !491, line: 69, type: !495)
!1884 = !DILocation(line: 0, scope: !1879, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 146, column: 7, scope: !554)
!1886 = !DILocation(line: 71, column: 3, scope: !1879, inlinedAt: !1885)
!1887 = !DILocation(line: 150, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !555, file: !491, line: 149, column: 5)
!1889 = !DILocation(line: 151, column: 19, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1888, file: !491, line: 151, column: 11)
!1891 = !DILocation(line: 151, column: 11, scope: !1890)
!1892 = !DILocation(line: 151, column: 40, scope: !1890)
!1893 = !DILocation(line: 152, column: 11, scope: !1890)
!1894 = !DILocation(line: 152, column: 25, scope: !1890)
!1895 = !DILocation(line: 152, column: 14, scope: !1890)
!1896 = !DILocation(line: 152, column: 45, scope: !1890)
!1897 = !DILocation(line: 151, column: 11, scope: !1888)
!1898 = !DILocation(line: 154, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1890, file: !491, line: 153, column: 9)
!1900 = !DILocation(line: 156, column: 11, scope: !1899)
!1901 = !DILocation(line: 160, column: 9, scope: !490)
!1902 = !DILocation(line: 160, column: 7, scope: !490)
!1903 = !DILocation(line: 161, column: 7, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !490, file: !491, line: 161, column: 7)
!1905 = !DILocation(line: 161, column: 7, scope: !490)
!1906 = !DILocation(line: 162, column: 18, scope: !1904)
!1907 = !DILocation(line: 162, column: 16, scope: !1904)
!1908 = !DILocation(line: 162, column: 5, scope: !1904)
!1909 = !DILocation(line: 164, column: 1, scope: !490)
!1910 = !DISubprogram(name: "realloc", scope: !1229, file: !1229, line: 551, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1911 = !DISubprogram(name: "fdopen", scope: !1100, file: !1100, line: 293, type: !1912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!495, !57, !101}
!1914 = !DISubprogram(name: "unlink", scope: !1576, file: !1576, line: 858, type: !1915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!57, !101}
!1917 = !DISubprogram(name: "free", scope: !1918, file: !1918, line: 786, type: !1919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1918 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{null, !98}
!1921 = !DISubprogram(name: "ftruncate", scope: !1576, file: !1576, line: 1049, type: !1922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!57, !57, !254}
!1924 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !571, file: !571, line: 50, type: !1055, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1925)
!1925 = !{!1926}
!1926 = !DILocalVariable(name: "file", arg: 1, scope: !1924, file: !571, line: 50, type: !101)
!1927 = !DILocation(line: 0, scope: !1924)
!1928 = !DILocation(line: 52, column: 13, scope: !1924)
!1929 = !DILocation(line: 53, column: 1, scope: !1924)
!1930 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !571, file: !571, line: 87, type: !1931, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !215}
!1933 = !{!1934}
!1934 = !DILocalVariable(name: "ignore", arg: 1, scope: !1930, file: !571, line: 87, type: !215)
!1935 = !DILocation(line: 0, scope: !1930)
!1936 = !DILocation(line: 89, column: 16, scope: !1930)
!1937 = !{!1938, !1938, i64 0}
!1938 = !{!"_Bool", !1036, i64 0}
!1939 = !DILocation(line: 90, column: 1, scope: !1930)
!1940 = distinct !DISubprogram(name: "close_stdout", scope: !571, file: !571, line: 116, type: !632, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1941)
!1941 = !{!1942}
!1942 = !DILocalVariable(name: "write_error", scope: !1943, file: !571, line: 121, type: !101)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !571, line: 120, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1940, file: !571, line: 118, column: 7)
!1945 = !DILocation(line: 118, column: 21, scope: !1944)
!1946 = !DILocation(line: 118, column: 7, scope: !1944)
!1947 = !DILocation(line: 118, column: 29, scope: !1944)
!1948 = !DILocation(line: 119, column: 7, scope: !1944)
!1949 = !DILocation(line: 119, column: 12, scope: !1944)
!1950 = !{i8 0, i8 2}
!1951 = !DILocation(line: 119, column: 25, scope: !1944)
!1952 = !DILocation(line: 119, column: 28, scope: !1944)
!1953 = !DILocation(line: 119, column: 34, scope: !1944)
!1954 = !DILocation(line: 118, column: 7, scope: !1940)
!1955 = !DILocation(line: 121, column: 33, scope: !1943)
!1956 = !DILocation(line: 0, scope: !1943)
!1957 = !DILocation(line: 122, column: 11, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1943, file: !571, line: 122, column: 11)
!1959 = !DILocation(line: 0, scope: !1958)
!1960 = !DILocation(line: 122, column: 11, scope: !1943)
!1961 = !DILocation(line: 123, column: 9, scope: !1958)
!1962 = !DILocation(line: 126, column: 9, scope: !1958)
!1963 = !DILocation(line: 128, column: 14, scope: !1943)
!1964 = !DILocation(line: 128, column: 7, scope: !1943)
!1965 = !DILocation(line: 133, column: 42, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1940, file: !571, line: 133, column: 7)
!1967 = !DILocation(line: 133, column: 28, scope: !1966)
!1968 = !DILocation(line: 133, column: 50, scope: !1966)
!1969 = !DILocation(line: 133, column: 7, scope: !1940)
!1970 = !DILocation(line: 134, column: 12, scope: !1966)
!1971 = !DILocation(line: 134, column: 5, scope: !1966)
!1972 = !DILocation(line: 135, column: 1, scope: !1940)
!1973 = !DISubprogram(name: "_exit", scope: !1576, file: !1576, line: 624, type: !1024, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1974 = distinct !DISubprogram(name: "verror", scope: !586, file: !586, line: 251, type: !1975, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !57, !57, !101, !596}
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DILocalVariable(name: "status", arg: 1, scope: !1974, file: !586, line: 251, type: !57)
!1979 = !DILocalVariable(name: "errnum", arg: 2, scope: !1974, file: !586, line: 251, type: !57)
!1980 = !DILocalVariable(name: "message", arg: 3, scope: !1974, file: !586, line: 251, type: !101)
!1981 = !DILocalVariable(name: "args", arg: 4, scope: !1974, file: !586, line: 251, type: !596)
!1982 = !DILocation(line: 0, scope: !1974)
!1983 = !DILocation(line: 261, column: 3, scope: !1974)
!1984 = !DILocation(line: 265, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !586, line: 265, column: 7)
!1986 = !DILocation(line: 265, column: 7, scope: !1974)
!1987 = !DILocation(line: 266, column: 5, scope: !1985)
!1988 = !DILocation(line: 272, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !586, line: 268, column: 5)
!1990 = !DILocation(line: 276, column: 3, scope: !1974)
!1991 = !DILocation(line: 282, column: 1, scope: !1974)
!1992 = distinct !DISubprogram(name: "flush_stdout", scope: !586, file: !586, line: 163, type: !632, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1993)
!1993 = !{!1994}
!1994 = !DILocalVariable(name: "stdout_fd", scope: !1992, file: !586, line: 166, type: !57)
!1995 = !DILocation(line: 0, scope: !1992)
!1996 = !DILocalVariable(name: "fd", arg: 1, scope: !1997, file: !586, line: 145, type: !57)
!1997 = distinct !DISubprogram(name: "is_open", scope: !586, file: !586, line: 145, type: !1580, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1998)
!1998 = !{!1996}
!1999 = !DILocation(line: 0, scope: !1997, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 182, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1992, file: !586, line: 182, column: 7)
!2002 = !DILocation(line: 157, column: 15, scope: !1997, inlinedAt: !2000)
!2003 = !DILocation(line: 157, column: 12, scope: !1997, inlinedAt: !2000)
!2004 = !DILocation(line: 182, column: 7, scope: !1992)
!2005 = !DILocation(line: 184, column: 5, scope: !2001)
!2006 = !DILocation(line: 185, column: 1, scope: !1992)
!2007 = distinct !DISubprogram(name: "error_tail", scope: !586, file: !586, line: 219, type: !1975, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2008)
!2008 = !{!2009, !2010, !2011, !2012}
!2009 = !DILocalVariable(name: "status", arg: 1, scope: !2007, file: !586, line: 219, type: !57)
!2010 = !DILocalVariable(name: "errnum", arg: 2, scope: !2007, file: !586, line: 219, type: !57)
!2011 = !DILocalVariable(name: "message", arg: 3, scope: !2007, file: !586, line: 219, type: !101)
!2012 = !DILocalVariable(name: "args", arg: 4, scope: !2007, file: !586, line: 219, type: !596)
!2013 = distinct !DIAssignID()
!2014 = !DILocation(line: 0, scope: !2007)
!2015 = !DILocation(line: 229, column: 13, scope: !2007)
!2016 = !DILocalVariable(name: "__stream", arg: 1, scope: !2017, file: !1091, line: 132, type: !2020)
!2017 = distinct !DISubprogram(name: "vfprintf", scope: !1091, file: !1091, line: 132, type: !2018, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2055)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!57, !2020, !1095, !596}
!2020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2023, file: !232, line: 51, baseType: !57, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2023, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2023, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2023, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2023, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2023, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2023, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2023, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2023, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2023, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2023, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2023, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2023, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2023, file: !232, line: 70, baseType: !2039, size: 64, offset: 832)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2023, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2023, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2023, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2023, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2023, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2023, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2023, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2023, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2023, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2023, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2023, file: !232, line: 93, baseType: !2039, size: 64, offset: 1344)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2023, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2023, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2023, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2023, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2055 = !{!2016, !2056, !2057}
!2056 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2017, file: !1091, line: 133, type: !1095)
!2057 = !DILocalVariable(name: "__ap", arg: 3, scope: !2017, file: !1091, line: 133, type: !596)
!2058 = !DILocation(line: 0, scope: !2017, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 229, column: 3, scope: !2007)
!2060 = !DILocation(line: 135, column: 10, scope: !2017, inlinedAt: !2059)
!2061 = !DILocation(line: 232, column: 3, scope: !2007)
!2062 = !DILocation(line: 233, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2007, file: !586, line: 233, column: 7)
!2064 = !DILocation(line: 233, column: 7, scope: !2007)
!2065 = !DILocalVariable(name: "errbuf", scope: !2066, file: !586, line: 193, type: !2070)
!2066 = distinct !DISubprogram(name: "print_errno_message", scope: !586, file: !586, line: 188, type: !1024, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2067)
!2067 = !{!2068, !2069, !2065}
!2068 = !DILocalVariable(name: "errnum", arg: 1, scope: !2066, file: !586, line: 188, type: !57)
!2069 = !DILocalVariable(name: "s", scope: !2066, file: !586, line: 190, type: !101)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2071)
!2071 = !{!2072}
!2072 = !DISubrange(count: 1024)
!2073 = !DILocation(line: 0, scope: !2066, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 234, column: 5, scope: !2063)
!2075 = !DILocation(line: 193, column: 3, scope: !2066, inlinedAt: !2074)
!2076 = !DILocation(line: 195, column: 7, scope: !2066, inlinedAt: !2074)
!2077 = !DILocation(line: 207, column: 9, scope: !2078, inlinedAt: !2074)
!2078 = distinct !DILexicalBlock(scope: !2066, file: !586, line: 207, column: 7)
!2079 = !DILocation(line: 207, column: 7, scope: !2066, inlinedAt: !2074)
!2080 = !DILocation(line: 208, column: 9, scope: !2078, inlinedAt: !2074)
!2081 = !DILocation(line: 208, column: 5, scope: !2078, inlinedAt: !2074)
!2082 = !DILocation(line: 214, column: 3, scope: !2066, inlinedAt: !2074)
!2083 = !DILocation(line: 216, column: 1, scope: !2066, inlinedAt: !2074)
!2084 = !DILocation(line: 234, column: 5, scope: !2063)
!2085 = !DILocation(line: 238, column: 3, scope: !2007)
!2086 = !DILocalVariable(name: "__c", arg: 1, scope: !2087, file: !2088, line: 101, type: !57)
!2087 = distinct !DISubprogram(name: "putc_unlocked", scope: !2088, file: !2088, line: 101, type: !2089, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2091)
!2088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!57, !57, !2021}
!2091 = !{!2086, !2092}
!2092 = !DILocalVariable(name: "__stream", arg: 2, scope: !2087, file: !2088, line: 101, type: !2021)
!2093 = !DILocation(line: 0, scope: !2087, inlinedAt: !2094)
!2094 = distinct !DILocation(line: 238, column: 3, scope: !2007)
!2095 = !DILocation(line: 103, column: 10, scope: !2087, inlinedAt: !2094)
!2096 = !{!2097, !1035, i64 40}
!2097 = !{!"_IO_FILE", !1106, i64 0, !1035, i64 8, !1035, i64 16, !1035, i64 24, !1035, i64 32, !1035, i64 40, !1035, i64 48, !1035, i64 56, !1035, i64 64, !1035, i64 72, !1035, i64 80, !1035, i64 88, !1035, i64 96, !1035, i64 104, !1106, i64 112, !1106, i64 116, !1272, i64 120, !1147, i64 128, !1036, i64 130, !1036, i64 131, !1035, i64 136, !1272, i64 144, !1035, i64 152, !1035, i64 160, !1035, i64 168, !1035, i64 176, !1272, i64 184, !1106, i64 192, !1036, i64 196}
!2098 = !{!2097, !1035, i64 48}
!2099 = !{!"branch_weights", i32 2000, i32 1}
!2100 = !DILocation(line: 240, column: 3, scope: !2007)
!2101 = !DILocation(line: 241, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2007, file: !586, line: 241, column: 7)
!2103 = !DILocation(line: 241, column: 7, scope: !2007)
!2104 = !DILocation(line: 242, column: 5, scope: !2102)
!2105 = !DILocation(line: 243, column: 1, scope: !2007)
!2106 = !DISubprogram(name: "__vfprintf_chk", scope: !1091, file: !1091, line: 96, type: !2107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!57, !2020, !57, !1095, !596}
!2109 = !DISubprogram(name: "strerror_r", scope: !1225, file: !1225, line: 444, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!59, !57, !59, !104}
!2112 = !DISubprogram(name: "__overflow", scope: !1100, file: !1100, line: 886, type: !2113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!57, !2021, !57}
!2115 = !DISubprogram(name: "fcntl", scope: !1568, file: !1568, line: 149, type: !2116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!57, !57, !57, null}
!2118 = distinct !DISubprogram(name: "error", scope: !586, file: !586, line: 285, type: !2119, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !57, !57, !101, null}
!2121 = !{!2122, !2123, !2124, !2125}
!2122 = !DILocalVariable(name: "status", arg: 1, scope: !2118, file: !586, line: 285, type: !57)
!2123 = !DILocalVariable(name: "errnum", arg: 2, scope: !2118, file: !586, line: 285, type: !57)
!2124 = !DILocalVariable(name: "message", arg: 3, scope: !2118, file: !586, line: 285, type: !101)
!2125 = !DILocalVariable(name: "ap", scope: !2118, file: !586, line: 287, type: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1100, line: 52, baseType: !2127)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2128, line: 12, baseType: !2129)
!2128 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !586, baseType: !2130)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 192, elements: !117)
!2131 = distinct !DIAssignID()
!2132 = !DILocation(line: 0, scope: !2118)
!2133 = !DILocation(line: 287, column: 3, scope: !2118)
!2134 = !DILocation(line: 288, column: 3, scope: !2118)
!2135 = !DILocation(line: 289, column: 3, scope: !2118)
!2136 = !DILocation(line: 290, column: 3, scope: !2118)
!2137 = !DILocation(line: 291, column: 1, scope: !2118)
!2138 = !DILocation(line: 0, scope: !593)
!2139 = !DILocation(line: 302, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !593, file: !586, line: 302, column: 7)
!2141 = !DILocation(line: 302, column: 7, scope: !593)
!2142 = !DILocation(line: 307, column: 11, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !586, line: 307, column: 11)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !586, line: 303, column: 5)
!2145 = !DILocation(line: 307, column: 27, scope: !2143)
!2146 = !DILocation(line: 308, column: 11, scope: !2143)
!2147 = !DILocation(line: 308, column: 28, scope: !2143)
!2148 = !DILocation(line: 308, column: 25, scope: !2143)
!2149 = !DILocation(line: 309, column: 15, scope: !2143)
!2150 = !DILocation(line: 309, column: 33, scope: !2143)
!2151 = !DILocation(line: 310, column: 19, scope: !2143)
!2152 = !DILocation(line: 311, column: 22, scope: !2143)
!2153 = !DILocation(line: 311, column: 56, scope: !2143)
!2154 = !DILocation(line: 307, column: 11, scope: !2144)
!2155 = !DILocation(line: 316, column: 21, scope: !2144)
!2156 = !DILocation(line: 317, column: 23, scope: !2144)
!2157 = !DILocation(line: 318, column: 5, scope: !2144)
!2158 = !DILocation(line: 327, column: 3, scope: !593)
!2159 = !DILocation(line: 331, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !593, file: !586, line: 331, column: 7)
!2161 = !DILocation(line: 331, column: 7, scope: !593)
!2162 = !DILocation(line: 332, column: 5, scope: !2160)
!2163 = !DILocation(line: 338, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !586, line: 334, column: 5)
!2165 = !DILocation(line: 346, column: 3, scope: !593)
!2166 = !DILocation(line: 350, column: 3, scope: !593)
!2167 = !DILocation(line: 356, column: 1, scope: !593)
!2168 = distinct !DISubprogram(name: "error_at_line", scope: !586, file: !586, line: 359, type: !2169, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !57, !57, !101, !69, !101, null}
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177}
!2172 = !DILocalVariable(name: "status", arg: 1, scope: !2168, file: !586, line: 359, type: !57)
!2173 = !DILocalVariable(name: "errnum", arg: 2, scope: !2168, file: !586, line: 359, type: !57)
!2174 = !DILocalVariable(name: "file_name", arg: 3, scope: !2168, file: !586, line: 359, type: !101)
!2175 = !DILocalVariable(name: "line_number", arg: 4, scope: !2168, file: !586, line: 360, type: !69)
!2176 = !DILocalVariable(name: "message", arg: 5, scope: !2168, file: !586, line: 360, type: !101)
!2177 = !DILocalVariable(name: "ap", scope: !2168, file: !586, line: 362, type: !2126)
!2178 = distinct !DIAssignID()
!2179 = !DILocation(line: 0, scope: !2168)
!2180 = !DILocation(line: 362, column: 3, scope: !2168)
!2181 = !DILocation(line: 363, column: 3, scope: !2168)
!2182 = !DILocation(line: 364, column: 3, scope: !2168)
!2183 = !DILocation(line: 366, column: 3, scope: !2168)
!2184 = !DILocation(line: 367, column: 1, scope: !2168)
!2185 = distinct !DISubprogram(name: "fpurge", scope: !927, file: !927, line: 32, type: !2186, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !926, retainedNodes: !2222)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!57, !2188}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2190, file: !232, line: 51, baseType: !57, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2190, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2190, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2190, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2190, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2190, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2190, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2190, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2190, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2190, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2190, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2190, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2190, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2190, file: !232, line: 70, baseType: !2206, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2190, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2190, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2190, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2190, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2190, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2190, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2190, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2190, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2190, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2190, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2190, file: !232, line: 93, baseType: !2206, size: 64, offset: 1344)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2190, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2190, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2190, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2190, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "fp", arg: 1, scope: !2185, file: !927, line: 32, type: !2188)
!2224 = !DILocation(line: 0, scope: !2185)
!2225 = !DILocation(line: 36, column: 3, scope: !2185)
!2226 = !DILocation(line: 38, column: 3, scope: !2185)
!2227 = !DISubprogram(name: "__fpurge", scope: !2228, file: !2228, line: 72, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2228 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2188}
!2231 = distinct !DISubprogram(name: "rpl_fseeko", scope: !929, file: !929, line: 28, type: !2232, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !2268)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!57, !2234, !1367, !57}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2237)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2236, file: !232, line: 51, baseType: !57, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2236, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2236, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2236, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2236, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2236, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2236, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2236, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2236, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2236, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2236, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2236, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2236, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2236, file: !232, line: 70, baseType: !2252, size: 64, offset: 832)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2236, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2236, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2236, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2236, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2236, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2236, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2236, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2236, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2236, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2236, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2236, file: !232, line: 93, baseType: !2252, size: 64, offset: 1344)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2236, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2236, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2236, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2236, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "fp", arg: 1, scope: !2231, file: !929, line: 28, type: !2234)
!2270 = !DILocalVariable(name: "offset", arg: 2, scope: !2231, file: !929, line: 28, type: !1367)
!2271 = !DILocalVariable(name: "whence", arg: 3, scope: !2231, file: !929, line: 28, type: !57)
!2272 = !DILocalVariable(name: "pos", scope: !2273, file: !929, line: 123, type: !1367)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !929, line: 119, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2231, file: !929, line: 55, column: 7)
!2275 = !DILocation(line: 0, scope: !2231)
!2276 = !DILocation(line: 55, column: 12, scope: !2274)
!2277 = !{!2097, !1035, i64 16}
!2278 = !DILocation(line: 55, column: 33, scope: !2274)
!2279 = !{!2097, !1035, i64 8}
!2280 = !DILocation(line: 55, column: 25, scope: !2274)
!2281 = !DILocation(line: 56, column: 7, scope: !2274)
!2282 = !DILocation(line: 56, column: 15, scope: !2274)
!2283 = !DILocation(line: 56, column: 37, scope: !2274)
!2284 = !{!2097, !1035, i64 32}
!2285 = !DILocation(line: 56, column: 29, scope: !2274)
!2286 = !DILocation(line: 57, column: 7, scope: !2274)
!2287 = !DILocation(line: 57, column: 15, scope: !2274)
!2288 = !{!2097, !1035, i64 72}
!2289 = !DILocation(line: 57, column: 29, scope: !2274)
!2290 = !DILocation(line: 55, column: 7, scope: !2231)
!2291 = !DILocation(line: 123, column: 26, scope: !2273)
!2292 = !DILocation(line: 123, column: 19, scope: !2273)
!2293 = !DILocation(line: 0, scope: !2273)
!2294 = !DILocation(line: 124, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2273, file: !929, line: 124, column: 11)
!2296 = !DILocation(line: 124, column: 11, scope: !2273)
!2297 = !DILocation(line: 135, column: 19, scope: !2273)
!2298 = !{!2097, !1106, i64 0}
!2299 = !DILocation(line: 136, column: 12, scope: !2273)
!2300 = !DILocation(line: 136, column: 20, scope: !2273)
!2301 = !{!2097, !1272, i64 144}
!2302 = !DILocation(line: 167, column: 7, scope: !2273)
!2303 = !DILocation(line: 169, column: 10, scope: !2231)
!2304 = !DILocation(line: 169, column: 3, scope: !2231)
!2305 = !DILocation(line: 170, column: 1, scope: !2231)
!2306 = !DISubprogram(name: "fileno", scope: !1100, file: !1100, line: 809, type: !2307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!57, !2234}
!2309 = !DISubprogram(name: "fseeko", scope: !1100, file: !1100, line: 736, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!57, !2234, !254, !57}
!2312 = distinct !DISubprogram(name: "full_read", scope: !2313, file: !2313, line: 58, type: !2314, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !2316)
!2313 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!976, !57, !98, !976}
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322}
!2317 = !DILocalVariable(name: "fd", arg: 1, scope: !2312, file: !2313, line: 58, type: !57)
!2318 = !DILocalVariable(name: "buf", arg: 2, scope: !2312, file: !2313, line: 58, type: !98)
!2319 = !DILocalVariable(name: "count", arg: 3, scope: !2312, file: !2313, line: 58, type: !976)
!2320 = !DILocalVariable(name: "total", scope: !2312, file: !2313, line: 60, type: !976)
!2321 = !DILocalVariable(name: "ptr", scope: !2312, file: !2313, line: 61, type: !59)
!2322 = !DILocalVariable(name: "n_rw", scope: !2323, file: !2313, line: 65, type: !978)
!2323 = distinct !DILexicalBlock(scope: !2312, file: !2313, line: 64, column: 5)
!2324 = !DILocation(line: 0, scope: !2312)
!2325 = !DILocation(line: 63, column: 16, scope: !2312)
!2326 = !DILocation(line: 63, column: 3, scope: !2312)
!2327 = !DILocation(line: 65, column: 24, scope: !2323)
!2328 = !DILocation(line: 0, scope: !2323)
!2329 = !DILocation(line: 66, column: 16, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2323, file: !2313, line: 66, column: 11)
!2331 = !DILocation(line: 66, column: 11, scope: !2323)
!2332 = !DILocation(line: 68, column: 16, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2323, file: !2313, line: 68, column: 11)
!2334 = !DILocation(line: 68, column: 11, scope: !2323)
!2335 = !DILocation(line: 70, column: 11, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !2313, line: 69, column: 9)
!2337 = !DILocation(line: 70, column: 17, scope: !2336)
!2338 = !DILocation(line: 71, column: 11, scope: !2336)
!2339 = !DILocation(line: 73, column: 13, scope: !2323)
!2340 = !DILocation(line: 74, column: 11, scope: !2323)
!2341 = !DILocation(line: 75, column: 13, scope: !2323)
!2342 = !DILocation(line: 78, column: 3, scope: !2312)
!2343 = distinct !DISubprogram(name: "getprogname", scope: !934, file: !934, line: 54, type: !2344, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!101}
!2346 = !DILocation(line: 58, column: 10, scope: !2343)
!2347 = !DILocation(line: 58, column: 3, scope: !2343)
!2348 = distinct !DISubprogram(name: "set_program_name", scope: !637, file: !637, line: 37, type: !1055, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2349)
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "argv0", arg: 1, scope: !2348, file: !637, line: 37, type: !101)
!2351 = !DILocalVariable(name: "slash", scope: !2348, file: !637, line: 44, type: !101)
!2352 = !DILocalVariable(name: "base", scope: !2348, file: !637, line: 45, type: !101)
!2353 = !DILocation(line: 0, scope: !2348)
!2354 = !DILocation(line: 44, column: 23, scope: !2348)
!2355 = !DILocation(line: 45, column: 22, scope: !2348)
!2356 = !DILocation(line: 46, column: 17, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2348, file: !637, line: 46, column: 7)
!2358 = !DILocation(line: 46, column: 9, scope: !2357)
!2359 = !DILocation(line: 46, column: 25, scope: !2357)
!2360 = !DILocation(line: 46, column: 40, scope: !2357)
!2361 = !DILocalVariable(name: "__s1", arg: 1, scope: !2362, file: !1118, line: 974, type: !1253)
!2362 = distinct !DISubprogram(name: "memeq", scope: !1118, file: !1118, line: 974, type: !2363, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !2365)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!215, !1253, !1253, !104}
!2365 = !{!2361, !2366, !2367}
!2366 = !DILocalVariable(name: "__s2", arg: 2, scope: !2362, file: !1118, line: 974, type: !1253)
!2367 = !DILocalVariable(name: "__n", arg: 3, scope: !2362, file: !1118, line: 974, type: !104)
!2368 = !DILocation(line: 0, scope: !2362, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 46, column: 28, scope: !2357)
!2370 = !DILocation(line: 976, column: 11, scope: !2362, inlinedAt: !2369)
!2371 = !DILocation(line: 976, column: 10, scope: !2362, inlinedAt: !2369)
!2372 = !DILocation(line: 46, column: 7, scope: !2348)
!2373 = !DILocation(line: 49, column: 11, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !637, line: 49, column: 11)
!2375 = distinct !DILexicalBlock(scope: !2357, file: !637, line: 47, column: 5)
!2376 = !DILocation(line: 49, column: 36, scope: !2374)
!2377 = !DILocation(line: 49, column: 11, scope: !2375)
!2378 = !DILocation(line: 65, column: 16, scope: !2348)
!2379 = !DILocation(line: 71, column: 27, scope: !2348)
!2380 = !DILocation(line: 74, column: 33, scope: !2348)
!2381 = !DILocation(line: 76, column: 1, scope: !2348)
!2382 = !DISubprogram(name: "strrchr", scope: !1225, file: !1225, line: 273, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2383 = distinct !DIAssignID()
!2384 = !DILocation(line: 0, scope: !646)
!2385 = distinct !DIAssignID()
!2386 = !DILocation(line: 40, column: 29, scope: !646)
!2387 = !DILocation(line: 41, column: 19, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !646, file: !647, line: 41, column: 7)
!2389 = !DILocation(line: 41, column: 7, scope: !646)
!2390 = !DILocation(line: 47, column: 3, scope: !646)
!2391 = !DILocation(line: 48, column: 3, scope: !646)
!2392 = !DILocalVariable(name: "ps", arg: 1, scope: !2393, file: !1918, line: 1135, type: !2396)
!2393 = distinct !DISubprogram(name: "mbszero", scope: !1918, file: !1918, line: 1135, type: !2394, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2397)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!2397 = !{!2392}
!2398 = !DILocation(line: 0, scope: !2393, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 48, column: 18, scope: !646)
!2400 = !DILocalVariable(name: "__dest", arg: 1, scope: !2401, file: !1336, line: 57, type: !98)
!2401 = distinct !DISubprogram(name: "memset", scope: !1336, file: !1336, line: 57, type: !2402, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !650, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!98, !98, !57, !104}
!2404 = !{!2400, !2405, !2406}
!2405 = !DILocalVariable(name: "__ch", arg: 2, scope: !2401, file: !1336, line: 57, type: !57)
!2406 = !DILocalVariable(name: "__len", arg: 3, scope: !2401, file: !1336, line: 57, type: !104)
!2407 = !DILocation(line: 0, scope: !2401, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 1137, column: 3, scope: !2393, inlinedAt: !2399)
!2409 = !DILocation(line: 59, column: 10, scope: !2401, inlinedAt: !2408)
!2410 = !DILocation(line: 49, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !646, file: !647, line: 49, column: 7)
!2412 = !DILocation(line: 49, column: 39, scope: !2411)
!2413 = !DILocation(line: 49, column: 44, scope: !2411)
!2414 = !DILocation(line: 54, column: 1, scope: !646)
!2415 = !DISubprogram(name: "mbrtoc32", scope: !658, file: !658, line: 57, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!104, !2418, !1095, !104, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2396)
!2421 = distinct !DISubprogram(name: "clone_quoting_options", scope: !677, file: !677, line: 113, type: !2422, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2425)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!2424, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!2425 = !{!2426, !2427, !2428}
!2426 = !DILocalVariable(name: "o", arg: 1, scope: !2421, file: !677, line: 113, type: !2424)
!2427 = !DILocalVariable(name: "saved_errno", scope: !2421, file: !677, line: 115, type: !57)
!2428 = !DILocalVariable(name: "p", scope: !2421, file: !677, line: 116, type: !2424)
!2429 = !DILocation(line: 0, scope: !2421)
!2430 = !DILocation(line: 115, column: 21, scope: !2421)
!2431 = !DILocation(line: 116, column: 40, scope: !2421)
!2432 = !DILocation(line: 116, column: 31, scope: !2421)
!2433 = !DILocation(line: 118, column: 9, scope: !2421)
!2434 = !DILocation(line: 119, column: 3, scope: !2421)
!2435 = distinct !DISubprogram(name: "get_quoting_style", scope: !677, file: !677, line: 124, type: !2436, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2440)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!703, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!2440 = !{!2441}
!2441 = !DILocalVariable(name: "o", arg: 1, scope: !2435, file: !677, line: 124, type: !2438)
!2442 = !DILocation(line: 0, scope: !2435)
!2443 = !DILocation(line: 126, column: 11, scope: !2435)
!2444 = !DILocation(line: 126, column: 46, scope: !2435)
!2445 = !{!2446, !1106, i64 0}
!2446 = !{!"quoting_options", !1106, i64 0, !1106, i64 4, !1036, i64 8, !1035, i64 40, !1035, i64 48}
!2447 = !DILocation(line: 126, column: 3, scope: !2435)
!2448 = distinct !DISubprogram(name: "set_quoting_style", scope: !677, file: !677, line: 132, type: !2449, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !2424, !703}
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "o", arg: 1, scope: !2448, file: !677, line: 132, type: !2424)
!2453 = !DILocalVariable(name: "s", arg: 2, scope: !2448, file: !677, line: 132, type: !703)
!2454 = !DILocation(line: 0, scope: !2448)
!2455 = !DILocation(line: 134, column: 4, scope: !2448)
!2456 = !DILocation(line: 134, column: 45, scope: !2448)
!2457 = !DILocation(line: 135, column: 1, scope: !2448)
!2458 = distinct !DISubprogram(name: "set_char_quoting", scope: !677, file: !677, line: 143, type: !2459, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!57, !2424, !4, !57}
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2468, !2469}
!2462 = !DILocalVariable(name: "o", arg: 1, scope: !2458, file: !677, line: 143, type: !2424)
!2463 = !DILocalVariable(name: "c", arg: 2, scope: !2458, file: !677, line: 143, type: !4)
!2464 = !DILocalVariable(name: "i", arg: 3, scope: !2458, file: !677, line: 143, type: !57)
!2465 = !DILocalVariable(name: "uc", scope: !2458, file: !677, line: 145, type: !107)
!2466 = !DILocalVariable(name: "p", scope: !2458, file: !677, line: 146, type: !2467)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2468 = !DILocalVariable(name: "shift", scope: !2458, file: !677, line: 148, type: !57)
!2469 = !DILocalVariable(name: "r", scope: !2458, file: !677, line: 149, type: !69)
!2470 = !DILocation(line: 0, scope: !2458)
!2471 = !DILocation(line: 147, column: 6, scope: !2458)
!2472 = !DILocation(line: 147, column: 41, scope: !2458)
!2473 = !DILocation(line: 147, column: 62, scope: !2458)
!2474 = !DILocation(line: 147, column: 57, scope: !2458)
!2475 = !DILocation(line: 148, column: 15, scope: !2458)
!2476 = !DILocation(line: 149, column: 21, scope: !2458)
!2477 = !DILocation(line: 149, column: 24, scope: !2458)
!2478 = !DILocation(line: 149, column: 34, scope: !2458)
!2479 = !DILocation(line: 150, column: 19, scope: !2458)
!2480 = !DILocation(line: 150, column: 24, scope: !2458)
!2481 = !DILocation(line: 150, column: 6, scope: !2458)
!2482 = !DILocation(line: 151, column: 3, scope: !2458)
!2483 = distinct !DISubprogram(name: "set_quoting_flags", scope: !677, file: !677, line: 159, type: !2484, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!57, !2424, !57}
!2486 = !{!2487, !2488, !2489}
!2487 = !DILocalVariable(name: "o", arg: 1, scope: !2483, file: !677, line: 159, type: !2424)
!2488 = !DILocalVariable(name: "i", arg: 2, scope: !2483, file: !677, line: 159, type: !57)
!2489 = !DILocalVariable(name: "r", scope: !2483, file: !677, line: 163, type: !57)
!2490 = !DILocation(line: 0, scope: !2483)
!2491 = !DILocation(line: 161, column: 8, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2483, file: !677, line: 161, column: 7)
!2493 = !DILocation(line: 161, column: 7, scope: !2483)
!2494 = !DILocation(line: 163, column: 14, scope: !2483)
!2495 = !{!2446, !1106, i64 4}
!2496 = !DILocation(line: 164, column: 12, scope: !2483)
!2497 = !DILocation(line: 165, column: 3, scope: !2483)
!2498 = distinct !DISubprogram(name: "set_custom_quoting", scope: !677, file: !677, line: 169, type: !2499, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2424, !101, !101}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "o", arg: 1, scope: !2498, file: !677, line: 169, type: !2424)
!2503 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2498, file: !677, line: 170, type: !101)
!2504 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2498, file: !677, line: 170, type: !101)
!2505 = !DILocation(line: 0, scope: !2498)
!2506 = !DILocation(line: 172, column: 8, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2498, file: !677, line: 172, column: 7)
!2508 = !DILocation(line: 172, column: 7, scope: !2498)
!2509 = !DILocation(line: 174, column: 12, scope: !2498)
!2510 = !DILocation(line: 175, column: 8, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2498, file: !677, line: 175, column: 7)
!2512 = !DILocation(line: 175, column: 19, scope: !2511)
!2513 = !DILocation(line: 176, column: 5, scope: !2511)
!2514 = !DILocation(line: 177, column: 6, scope: !2498)
!2515 = !DILocation(line: 177, column: 17, scope: !2498)
!2516 = !{!2446, !1035, i64 40}
!2517 = !DILocation(line: 178, column: 6, scope: !2498)
!2518 = !DILocation(line: 178, column: 18, scope: !2498)
!2519 = !{!2446, !1035, i64 48}
!2520 = !DILocation(line: 179, column: 1, scope: !2498)
!2521 = !DISubprogram(name: "abort", scope: !1229, file: !1229, line: 598, type: !632, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2522 = distinct !DISubprogram(name: "quotearg_buffer", scope: !677, file: !677, line: 774, type: !2523, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!104, !59, !104, !101, !104, !2438}
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2526 = !DILocalVariable(name: "buffer", arg: 1, scope: !2522, file: !677, line: 774, type: !59)
!2527 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2522, file: !677, line: 774, type: !104)
!2528 = !DILocalVariable(name: "arg", arg: 3, scope: !2522, file: !677, line: 775, type: !101)
!2529 = !DILocalVariable(name: "argsize", arg: 4, scope: !2522, file: !677, line: 775, type: !104)
!2530 = !DILocalVariable(name: "o", arg: 5, scope: !2522, file: !677, line: 776, type: !2438)
!2531 = !DILocalVariable(name: "p", scope: !2522, file: !677, line: 778, type: !2438)
!2532 = !DILocalVariable(name: "saved_errno", scope: !2522, file: !677, line: 779, type: !57)
!2533 = !DILocalVariable(name: "r", scope: !2522, file: !677, line: 780, type: !104)
!2534 = !DILocation(line: 0, scope: !2522)
!2535 = !DILocation(line: 778, column: 37, scope: !2522)
!2536 = !DILocation(line: 779, column: 21, scope: !2522)
!2537 = !DILocation(line: 781, column: 43, scope: !2522)
!2538 = !DILocation(line: 781, column: 53, scope: !2522)
!2539 = !DILocation(line: 781, column: 63, scope: !2522)
!2540 = !DILocation(line: 782, column: 43, scope: !2522)
!2541 = !DILocation(line: 782, column: 58, scope: !2522)
!2542 = !DILocation(line: 780, column: 14, scope: !2522)
!2543 = !DILocation(line: 783, column: 9, scope: !2522)
!2544 = !DILocation(line: 784, column: 3, scope: !2522)
!2545 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !677, file: !677, line: 251, type: !2546, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2550)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!104, !59, !104, !101, !104, !703, !57, !2548, !101, !101}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2576, !2578, !2581, !2582, !2583, !2584, !2587, !2588, !2590, !2591, !2594, !2598, !2599, !2607, !2610, !2611, !2612}
!2551 = !DILocalVariable(name: "buffer", arg: 1, scope: !2545, file: !677, line: 251, type: !59)
!2552 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2545, file: !677, line: 251, type: !104)
!2553 = !DILocalVariable(name: "arg", arg: 3, scope: !2545, file: !677, line: 252, type: !101)
!2554 = !DILocalVariable(name: "argsize", arg: 4, scope: !2545, file: !677, line: 252, type: !104)
!2555 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2545, file: !677, line: 253, type: !703)
!2556 = !DILocalVariable(name: "flags", arg: 6, scope: !2545, file: !677, line: 253, type: !57)
!2557 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2545, file: !677, line: 254, type: !2548)
!2558 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2545, file: !677, line: 255, type: !101)
!2559 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2545, file: !677, line: 256, type: !101)
!2560 = !DILocalVariable(name: "unibyte_locale", scope: !2545, file: !677, line: 258, type: !215)
!2561 = !DILocalVariable(name: "len", scope: !2545, file: !677, line: 260, type: !104)
!2562 = !DILocalVariable(name: "orig_buffersize", scope: !2545, file: !677, line: 261, type: !104)
!2563 = !DILocalVariable(name: "quote_string", scope: !2545, file: !677, line: 262, type: !101)
!2564 = !DILocalVariable(name: "quote_string_len", scope: !2545, file: !677, line: 263, type: !104)
!2565 = !DILocalVariable(name: "backslash_escapes", scope: !2545, file: !677, line: 264, type: !215)
!2566 = !DILocalVariable(name: "elide_outer_quotes", scope: !2545, file: !677, line: 265, type: !215)
!2567 = !DILocalVariable(name: "encountered_single_quote", scope: !2545, file: !677, line: 266, type: !215)
!2568 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2545, file: !677, line: 267, type: !215)
!2569 = !DILabel(scope: !2545, name: "process_input", file: !677, line: 308)
!2570 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2545, file: !677, line: 309, type: !215)
!2571 = !DILocalVariable(name: "lq", scope: !2572, file: !677, line: 361, type: !101)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !677, line: 361, column: 11)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !677, line: 360, column: 13)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !677, line: 333, column: 7)
!2575 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 312, column: 5)
!2576 = !DILocalVariable(name: "i", scope: !2577, file: !677, line: 395, type: !104)
!2577 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 395, column: 3)
!2578 = !DILocalVariable(name: "is_right_quote", scope: !2579, file: !677, line: 397, type: !215)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !677, line: 396, column: 5)
!2580 = distinct !DILexicalBlock(scope: !2577, file: !677, line: 395, column: 3)
!2581 = !DILocalVariable(name: "escaping", scope: !2579, file: !677, line: 398, type: !215)
!2582 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2579, file: !677, line: 399, type: !215)
!2583 = !DILocalVariable(name: "c", scope: !2579, file: !677, line: 417, type: !107)
!2584 = !DILabel(scope: !2585, name: "c_and_shell_escape", file: !677, line: 502)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 478, column: 9)
!2586 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 419, column: 9)
!2587 = !DILabel(scope: !2585, name: "c_escape", file: !677, line: 507)
!2588 = !DILocalVariable(name: "m", scope: !2589, file: !677, line: 598, type: !104)
!2589 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 596, column: 11)
!2590 = !DILocalVariable(name: "printable", scope: !2589, file: !677, line: 600, type: !215)
!2591 = !DILocalVariable(name: "mbs", scope: !2592, file: !677, line: 609, type: !749)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !677, line: 608, column: 15)
!2593 = distinct !DILexicalBlock(scope: !2589, file: !677, line: 602, column: 17)
!2594 = !DILocalVariable(name: "w", scope: !2595, file: !677, line: 618, type: !657)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !677, line: 617, column: 19)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !677, line: 616, column: 17)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !677, line: 616, column: 17)
!2598 = !DILocalVariable(name: "bytes", scope: !2595, file: !677, line: 619, type: !104)
!2599 = !DILocalVariable(name: "j", scope: !2600, file: !677, line: 648, type: !104)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !677, line: 648, column: 29)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !677, line: 647, column: 27)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !677, line: 645, column: 29)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !677, line: 636, column: 23)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !677, line: 628, column: 30)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !677, line: 623, column: 30)
!2606 = distinct !DILexicalBlock(scope: !2595, file: !677, line: 621, column: 25)
!2607 = !DILocalVariable(name: "ilim", scope: !2608, file: !677, line: 674, type: !104)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !677, line: 671, column: 15)
!2609 = distinct !DILexicalBlock(scope: !2589, file: !677, line: 670, column: 17)
!2610 = !DILabel(scope: !2579, name: "store_escape", file: !677, line: 709)
!2611 = !DILabel(scope: !2579, name: "store_c", file: !677, line: 712)
!2612 = !DILabel(scope: !2545, name: "force_outer_quoting_style", file: !677, line: 753)
!2613 = distinct !DIAssignID()
!2614 = distinct !DIAssignID()
!2615 = distinct !DIAssignID()
!2616 = distinct !DIAssignID()
!2617 = distinct !DIAssignID()
!2618 = !DILocation(line: 0, scope: !2592)
!2619 = distinct !DIAssignID()
!2620 = !DILocation(line: 0, scope: !2595)
!2621 = !DILocation(line: 0, scope: !2545)
!2622 = !DILocation(line: 258, column: 25, scope: !2545)
!2623 = !DILocation(line: 258, column: 36, scope: !2545)
!2624 = !DILocation(line: 265, column: 8, scope: !2545)
!2625 = !DILocation(line: 267, column: 3, scope: !2545)
!2626 = !DILocation(line: 261, column: 10, scope: !2545)
!2627 = !DILocation(line: 262, column: 15, scope: !2545)
!2628 = !DILocation(line: 263, column: 10, scope: !2545)
!2629 = !DILocation(line: 264, column: 8, scope: !2545)
!2630 = !DILocation(line: 266, column: 8, scope: !2545)
!2631 = !DILocation(line: 267, column: 8, scope: !2545)
!2632 = !DILocation(line: 308, column: 2, scope: !2545)
!2633 = !DILocation(line: 311, column: 3, scope: !2545)
!2634 = !DILocation(line: 318, column: 11, scope: !2575)
!2635 = !DILocation(line: 318, column: 12, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2575, file: !677, line: 318, column: 11)
!2637 = !DILocation(line: 319, column: 9, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !677, line: 319, column: 9)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !677, line: 319, column: 9)
!2640 = !DILocation(line: 319, column: 9, scope: !2639)
!2641 = !DILocation(line: 0, scope: !740, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 357, column: 26, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !677, line: 335, column: 11)
!2644 = distinct !DILexicalBlock(scope: !2574, file: !677, line: 334, column: 13)
!2645 = !DILocation(line: 199, column: 29, scope: !740, inlinedAt: !2642)
!2646 = !DILocation(line: 201, column: 19, scope: !2647, inlinedAt: !2642)
!2647 = distinct !DILexicalBlock(scope: !740, file: !677, line: 201, column: 7)
!2648 = !DILocation(line: 201, column: 7, scope: !740, inlinedAt: !2642)
!2649 = !DILocation(line: 229, column: 3, scope: !740, inlinedAt: !2642)
!2650 = !DILocation(line: 230, column: 3, scope: !740, inlinedAt: !2642)
!2651 = !DILocalVariable(name: "ps", arg: 1, scope: !2652, file: !1918, line: 1135, type: !2655)
!2652 = distinct !DISubprogram(name: "mbszero", scope: !1918, file: !1918, line: 1135, type: !2653, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2656)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!2656 = !{!2651}
!2657 = !DILocation(line: 0, scope: !2652, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 230, column: 18, scope: !740, inlinedAt: !2642)
!2659 = !DILocalVariable(name: "__dest", arg: 1, scope: !2660, file: !1336, line: 57, type: !98)
!2660 = distinct !DISubprogram(name: "memset", scope: !1336, file: !1336, line: 57, type: !2402, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2661)
!2661 = !{!2659, !2662, !2663}
!2662 = !DILocalVariable(name: "__ch", arg: 2, scope: !2660, file: !1336, line: 57, type: !57)
!2663 = !DILocalVariable(name: "__len", arg: 3, scope: !2660, file: !1336, line: 57, type: !104)
!2664 = !DILocation(line: 0, scope: !2660, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1137, column: 3, scope: !2652, inlinedAt: !2658)
!2666 = !DILocation(line: 59, column: 10, scope: !2660, inlinedAt: !2665)
!2667 = !DILocation(line: 231, column: 7, scope: !2668, inlinedAt: !2642)
!2668 = distinct !DILexicalBlock(scope: !740, file: !677, line: 231, column: 7)
!2669 = !DILocation(line: 231, column: 40, scope: !2668, inlinedAt: !2642)
!2670 = !DILocation(line: 231, column: 45, scope: !2668, inlinedAt: !2642)
!2671 = !DILocation(line: 235, column: 1, scope: !740, inlinedAt: !2642)
!2672 = !DILocation(line: 0, scope: !740, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 358, column: 27, scope: !2643)
!2674 = !DILocation(line: 199, column: 29, scope: !740, inlinedAt: !2673)
!2675 = !DILocation(line: 201, column: 19, scope: !2647, inlinedAt: !2673)
!2676 = !DILocation(line: 201, column: 7, scope: !740, inlinedAt: !2673)
!2677 = !DILocation(line: 229, column: 3, scope: !740, inlinedAt: !2673)
!2678 = !DILocation(line: 230, column: 3, scope: !740, inlinedAt: !2673)
!2679 = !DILocation(line: 0, scope: !2652, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 230, column: 18, scope: !740, inlinedAt: !2673)
!2681 = !DILocation(line: 0, scope: !2660, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1137, column: 3, scope: !2652, inlinedAt: !2680)
!2683 = !DILocation(line: 59, column: 10, scope: !2660, inlinedAt: !2682)
!2684 = !DILocation(line: 231, column: 7, scope: !2668, inlinedAt: !2673)
!2685 = !DILocation(line: 231, column: 40, scope: !2668, inlinedAt: !2673)
!2686 = !DILocation(line: 231, column: 45, scope: !2668, inlinedAt: !2673)
!2687 = !DILocation(line: 235, column: 1, scope: !740, inlinedAt: !2673)
!2688 = !DILocation(line: 360, column: 14, scope: !2573)
!2689 = !DILocation(line: 360, column: 13, scope: !2574)
!2690 = !DILocation(line: 0, scope: !2572)
!2691 = !DILocation(line: 361, column: 45, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2572, file: !677, line: 361, column: 11)
!2693 = !DILocation(line: 361, column: 11, scope: !2572)
!2694 = !DILocation(line: 362, column: 13, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !677, line: 362, column: 13)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !677, line: 362, column: 13)
!2697 = !DILocation(line: 362, column: 13, scope: !2696)
!2698 = !DILocation(line: 361, column: 52, scope: !2692)
!2699 = distinct !{!2699, !2693, !2700, !1152}
!2700 = !DILocation(line: 362, column: 13, scope: !2572)
!2701 = !DILocation(line: 260, column: 10, scope: !2545)
!2702 = !DILocation(line: 365, column: 28, scope: !2574)
!2703 = !DILocation(line: 367, column: 7, scope: !2575)
!2704 = !DILocation(line: 370, column: 7, scope: !2575)
!2705 = !DILocation(line: 373, column: 7, scope: !2575)
!2706 = !DILocation(line: 376, column: 12, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2575, file: !677, line: 376, column: 11)
!2708 = !DILocation(line: 376, column: 11, scope: !2575)
!2709 = !DILocation(line: 381, column: 12, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2575, file: !677, line: 381, column: 11)
!2711 = !DILocation(line: 381, column: 11, scope: !2575)
!2712 = !DILocation(line: 382, column: 9, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !677, line: 382, column: 9)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !677, line: 382, column: 9)
!2715 = !DILocation(line: 382, column: 9, scope: !2714)
!2716 = !DILocation(line: 389, column: 7, scope: !2575)
!2717 = !DILocation(line: 392, column: 7, scope: !2575)
!2718 = !DILocation(line: 0, scope: !2577)
!2719 = !DILocation(line: 395, column: 8, scope: !2577)
!2720 = !DILocation(line: 309, column: 8, scope: !2545)
!2721 = !DILocation(line: 395, scope: !2577)
!2722 = !DILocation(line: 395, column: 34, scope: !2580)
!2723 = !DILocation(line: 395, column: 26, scope: !2580)
!2724 = !DILocation(line: 395, column: 48, scope: !2580)
!2725 = !DILocation(line: 395, column: 55, scope: !2580)
!2726 = !DILocation(line: 395, column: 3, scope: !2577)
!2727 = !DILocation(line: 395, column: 67, scope: !2580)
!2728 = !DILocation(line: 0, scope: !2579)
!2729 = !DILocation(line: 402, column: 11, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 401, column: 11)
!2731 = !DILocation(line: 404, column: 17, scope: !2730)
!2732 = !DILocation(line: 405, column: 39, scope: !2730)
!2733 = !DILocation(line: 409, column: 32, scope: !2730)
!2734 = !DILocation(line: 405, column: 19, scope: !2730)
!2735 = !DILocation(line: 405, column: 15, scope: !2730)
!2736 = !DILocation(line: 410, column: 11, scope: !2730)
!2737 = !DILocation(line: 410, column: 25, scope: !2730)
!2738 = !DILocalVariable(name: "__s1", arg: 1, scope: !2739, file: !1118, line: 974, type: !1253)
!2739 = distinct !DISubprogram(name: "memeq", scope: !1118, file: !1118, line: 974, type: !2363, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2740)
!2740 = !{!2738, !2741, !2742}
!2741 = !DILocalVariable(name: "__s2", arg: 2, scope: !2739, file: !1118, line: 974, type: !1253)
!2742 = !DILocalVariable(name: "__n", arg: 3, scope: !2739, file: !1118, line: 974, type: !104)
!2743 = !DILocation(line: 0, scope: !2739, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 410, column: 14, scope: !2730)
!2745 = !DILocation(line: 976, column: 11, scope: !2739, inlinedAt: !2744)
!2746 = !DILocation(line: 976, column: 10, scope: !2739, inlinedAt: !2744)
!2747 = !DILocation(line: 401, column: 11, scope: !2579)
!2748 = !DILocation(line: 417, column: 25, scope: !2579)
!2749 = !DILocation(line: 418, column: 7, scope: !2579)
!2750 = !DILocation(line: 421, column: 15, scope: !2586)
!2751 = !DILocation(line: 423, column: 15, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !677, line: 423, column: 15)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !677, line: 422, column: 13)
!2754 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 421, column: 15)
!2755 = !DILocation(line: 423, column: 15, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !677, line: 423, column: 15)
!2757 = !DILocation(line: 423, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !677, line: 423, column: 15)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !677, line: 423, column: 15)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !677, line: 423, column: 15)
!2761 = !DILocation(line: 423, column: 15, scope: !2759)
!2762 = !DILocation(line: 423, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !677, line: 423, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !677, line: 423, column: 15)
!2765 = !DILocation(line: 423, column: 15, scope: !2764)
!2766 = !DILocation(line: 423, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !677, line: 423, column: 15)
!2768 = distinct !DILexicalBlock(scope: !2760, file: !677, line: 423, column: 15)
!2769 = !DILocation(line: 423, column: 15, scope: !2768)
!2770 = !DILocation(line: 423, column: 15, scope: !2760)
!2771 = !DILocation(line: 423, column: 15, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !677, line: 423, column: 15)
!2773 = distinct !DILexicalBlock(scope: !2752, file: !677, line: 423, column: 15)
!2774 = !DILocation(line: 423, column: 15, scope: !2773)
!2775 = !DILocation(line: 431, column: 19, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2753, file: !677, line: 430, column: 19)
!2777 = !DILocation(line: 431, column: 24, scope: !2776)
!2778 = !DILocation(line: 431, column: 28, scope: !2776)
!2779 = !DILocation(line: 431, column: 38, scope: !2776)
!2780 = !DILocation(line: 431, column: 48, scope: !2776)
!2781 = !DILocation(line: 431, column: 59, scope: !2776)
!2782 = !DILocation(line: 433, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !677, line: 433, column: 19)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !677, line: 433, column: 19)
!2785 = distinct !DILexicalBlock(scope: !2776, file: !677, line: 432, column: 17)
!2786 = !DILocation(line: 433, column: 19, scope: !2784)
!2787 = !DILocation(line: 434, column: 19, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !677, line: 434, column: 19)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !677, line: 434, column: 19)
!2790 = !DILocation(line: 434, column: 19, scope: !2789)
!2791 = !DILocation(line: 435, column: 17, scope: !2785)
!2792 = !DILocation(line: 442, column: 20, scope: !2754)
!2793 = !DILocation(line: 447, column: 11, scope: !2586)
!2794 = !DILocation(line: 450, column: 19, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 448, column: 13)
!2796 = !DILocation(line: 456, column: 19, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2795, file: !677, line: 455, column: 19)
!2798 = !DILocation(line: 456, column: 24, scope: !2797)
!2799 = !DILocation(line: 456, column: 28, scope: !2797)
!2800 = !DILocation(line: 456, column: 38, scope: !2797)
!2801 = !DILocation(line: 456, column: 41, scope: !2797)
!2802 = !DILocation(line: 456, column: 52, scope: !2797)
!2803 = !DILocation(line: 455, column: 19, scope: !2795)
!2804 = !DILocation(line: 457, column: 25, scope: !2797)
!2805 = !DILocation(line: 457, column: 17, scope: !2797)
!2806 = !DILocation(line: 464, column: 25, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2797, file: !677, line: 458, column: 19)
!2808 = !DILocation(line: 468, column: 21, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !677, line: 468, column: 21)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !677, line: 468, column: 21)
!2811 = !DILocation(line: 468, column: 21, scope: !2810)
!2812 = !DILocation(line: 469, column: 21, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !677, line: 469, column: 21)
!2814 = distinct !DILexicalBlock(scope: !2807, file: !677, line: 469, column: 21)
!2815 = !DILocation(line: 469, column: 21, scope: !2814)
!2816 = !DILocation(line: 470, column: 21, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !677, line: 470, column: 21)
!2818 = distinct !DILexicalBlock(scope: !2807, file: !677, line: 470, column: 21)
!2819 = !DILocation(line: 470, column: 21, scope: !2818)
!2820 = !DILocation(line: 471, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !677, line: 471, column: 21)
!2822 = distinct !DILexicalBlock(scope: !2807, file: !677, line: 471, column: 21)
!2823 = !DILocation(line: 471, column: 21, scope: !2822)
!2824 = !DILocation(line: 472, column: 21, scope: !2807)
!2825 = !DILocation(line: 482, column: 33, scope: !2585)
!2826 = !DILocation(line: 483, column: 33, scope: !2585)
!2827 = !DILocation(line: 485, column: 33, scope: !2585)
!2828 = !DILocation(line: 486, column: 33, scope: !2585)
!2829 = !DILocation(line: 487, column: 33, scope: !2585)
!2830 = !DILocation(line: 490, column: 17, scope: !2585)
!2831 = !DILocation(line: 492, column: 21, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !677, line: 491, column: 15)
!2833 = distinct !DILexicalBlock(scope: !2585, file: !677, line: 490, column: 17)
!2834 = !DILocation(line: 499, column: 35, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2585, file: !677, line: 499, column: 17)
!2836 = !DILocation(line: 499, column: 57, scope: !2835)
!2837 = !DILocation(line: 0, scope: !2585)
!2838 = !DILocation(line: 502, column: 11, scope: !2585)
!2839 = !DILocation(line: 504, column: 17, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2585, file: !677, line: 503, column: 17)
!2841 = !DILocation(line: 507, column: 11, scope: !2585)
!2842 = !DILocation(line: 508, column: 17, scope: !2585)
!2843 = !DILocation(line: 517, column: 15, scope: !2586)
!2844 = !DILocation(line: 517, column: 40, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 517, column: 15)
!2846 = !DILocation(line: 517, column: 47, scope: !2845)
!2847 = !DILocation(line: 517, column: 18, scope: !2845)
!2848 = !DILocation(line: 521, column: 17, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 521, column: 15)
!2850 = !DILocation(line: 521, column: 15, scope: !2586)
!2851 = !DILocation(line: 525, column: 11, scope: !2586)
!2852 = !DILocation(line: 537, column: 15, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 536, column: 15)
!2854 = !DILocation(line: 544, column: 15, scope: !2586)
!2855 = !DILocation(line: 546, column: 19, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !677, line: 545, column: 13)
!2857 = distinct !DILexicalBlock(scope: !2586, file: !677, line: 544, column: 15)
!2858 = !DILocation(line: 549, column: 19, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !677, line: 549, column: 19)
!2860 = !DILocation(line: 549, column: 30, scope: !2859)
!2861 = !DILocation(line: 558, column: 15, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !677, line: 558, column: 15)
!2863 = distinct !DILexicalBlock(scope: !2856, file: !677, line: 558, column: 15)
!2864 = !DILocation(line: 558, column: 15, scope: !2863)
!2865 = !DILocation(line: 559, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !677, line: 559, column: 15)
!2867 = distinct !DILexicalBlock(scope: !2856, file: !677, line: 559, column: 15)
!2868 = !DILocation(line: 559, column: 15, scope: !2867)
!2869 = !DILocation(line: 560, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !677, line: 560, column: 15)
!2871 = distinct !DILexicalBlock(scope: !2856, file: !677, line: 560, column: 15)
!2872 = !DILocation(line: 560, column: 15, scope: !2871)
!2873 = !DILocation(line: 562, column: 13, scope: !2856)
!2874 = !DILocation(line: 602, column: 17, scope: !2589)
!2875 = !DILocation(line: 0, scope: !2589)
!2876 = !DILocation(line: 605, column: 29, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2593, file: !677, line: 603, column: 15)
!2878 = !DILocation(line: 605, column: 27, scope: !2877)
!2879 = !DILocation(line: 606, column: 15, scope: !2877)
!2880 = !DILocation(line: 609, column: 17, scope: !2592)
!2881 = !DILocation(line: 0, scope: !2652, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 609, column: 32, scope: !2592)
!2883 = !DILocation(line: 0, scope: !2660, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 1137, column: 3, scope: !2652, inlinedAt: !2882)
!2885 = !DILocation(line: 59, column: 10, scope: !2660, inlinedAt: !2884)
!2886 = !DILocation(line: 613, column: 29, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2592, file: !677, line: 613, column: 21)
!2888 = !DILocation(line: 613, column: 21, scope: !2592)
!2889 = !DILocation(line: 614, column: 29, scope: !2887)
!2890 = !DILocation(line: 614, column: 19, scope: !2887)
!2891 = !DILocation(line: 618, column: 21, scope: !2595)
!2892 = !DILocation(line: 620, column: 54, scope: !2595)
!2893 = !DILocation(line: 619, column: 36, scope: !2595)
!2894 = !DILocation(line: 621, column: 25, scope: !2595)
!2895 = !DILocation(line: 631, column: 38, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2604, file: !677, line: 629, column: 23)
!2897 = !DILocation(line: 631, column: 48, scope: !2896)
!2898 = !DILocation(line: 626, column: 25, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2605, file: !677, line: 624, column: 23)
!2900 = !DILocation(line: 631, column: 51, scope: !2896)
!2901 = !DILocation(line: 631, column: 25, scope: !2896)
!2902 = !DILocation(line: 632, column: 28, scope: !2896)
!2903 = !DILocation(line: 631, column: 34, scope: !2896)
!2904 = distinct !{!2904, !2901, !2902, !1152}
!2905 = !DILocation(line: 0, scope: !2600)
!2906 = !DILocation(line: 646, column: 29, scope: !2602)
!2907 = !DILocation(line: 649, column: 39, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2600, file: !677, line: 648, column: 29)
!2909 = !DILocation(line: 649, column: 31, scope: !2908)
!2910 = !DILocation(line: 648, column: 60, scope: !2908)
!2911 = !DILocation(line: 648, column: 50, scope: !2908)
!2912 = !DILocation(line: 648, column: 29, scope: !2600)
!2913 = distinct !{!2913, !2912, !2914, !1152}
!2914 = !DILocation(line: 654, column: 33, scope: !2600)
!2915 = !DILocation(line: 657, column: 43, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2603, file: !677, line: 657, column: 29)
!2917 = !DILocalVariable(name: "wc", arg: 1, scope: !2918, file: !2919, line: 865, type: !2922)
!2918 = distinct !DISubprogram(name: "c32isprint", scope: !2919, file: !2919, line: 865, type: !2920, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !2924)
!2919 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!57, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2923, line: 20, baseType: !69)
!2923 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2924 = !{!2917}
!2925 = !DILocation(line: 0, scope: !2918, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 657, column: 31, scope: !2916)
!2927 = !DILocation(line: 871, column: 10, scope: !2918, inlinedAt: !2926)
!2928 = !DILocation(line: 657, column: 31, scope: !2916)
!2929 = !DILocation(line: 664, column: 23, scope: !2595)
!2930 = !DILocation(line: 665, column: 19, scope: !2596)
!2931 = !DILocation(line: 666, column: 15, scope: !2593)
!2932 = !DILocation(line: 0, scope: !2593)
!2933 = !DILocation(line: 670, column: 19, scope: !2609)
!2934 = !DILocation(line: 670, column: 23, scope: !2609)
!2935 = !DILocation(line: 674, column: 33, scope: !2608)
!2936 = !DILocation(line: 0, scope: !2608)
!2937 = !DILocation(line: 676, column: 17, scope: !2608)
!2938 = !DILocation(line: 398, column: 12, scope: !2579)
!2939 = !DILocation(line: 678, column: 43, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !677, line: 678, column: 25)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !677, line: 677, column: 19)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !677, line: 676, column: 17)
!2943 = distinct !DILexicalBlock(scope: !2608, file: !677, line: 676, column: 17)
!2944 = !DILocation(line: 680, column: 25, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !677, line: 680, column: 25)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !677, line: 679, column: 23)
!2947 = !DILocation(line: 680, column: 25, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !677, line: 680, column: 25)
!2949 = !DILocation(line: 680, column: 25, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !677, line: 680, column: 25)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !677, line: 680, column: 25)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !677, line: 680, column: 25)
!2953 = !DILocation(line: 680, column: 25, scope: !2951)
!2954 = !DILocation(line: 680, column: 25, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !677, line: 680, column: 25)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !677, line: 680, column: 25)
!2957 = !DILocation(line: 680, column: 25, scope: !2956)
!2958 = !DILocation(line: 680, column: 25, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !677, line: 680, column: 25)
!2960 = distinct !DILexicalBlock(scope: !2952, file: !677, line: 680, column: 25)
!2961 = !DILocation(line: 680, column: 25, scope: !2960)
!2962 = !DILocation(line: 680, column: 25, scope: !2952)
!2963 = !DILocation(line: 680, column: 25, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !677, line: 680, column: 25)
!2965 = distinct !DILexicalBlock(scope: !2945, file: !677, line: 680, column: 25)
!2966 = !DILocation(line: 680, column: 25, scope: !2965)
!2967 = !DILocation(line: 681, column: 25, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !677, line: 681, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2946, file: !677, line: 681, column: 25)
!2970 = !DILocation(line: 681, column: 25, scope: !2969)
!2971 = !DILocation(line: 682, column: 25, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !677, line: 682, column: 25)
!2973 = distinct !DILexicalBlock(scope: !2946, file: !677, line: 682, column: 25)
!2974 = !DILocation(line: 682, column: 25, scope: !2973)
!2975 = !DILocation(line: 683, column: 38, scope: !2946)
!2976 = !DILocation(line: 683, column: 33, scope: !2946)
!2977 = !DILocation(line: 684, column: 23, scope: !2946)
!2978 = !DILocation(line: 685, column: 30, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2940, file: !677, line: 685, column: 30)
!2980 = !DILocation(line: 685, column: 30, scope: !2940)
!2981 = !DILocation(line: 687, column: 25, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !677, line: 687, column: 25)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !677, line: 687, column: 25)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !677, line: 686, column: 23)
!2985 = !DILocation(line: 687, column: 25, scope: !2983)
!2986 = !DILocation(line: 689, column: 23, scope: !2984)
!2987 = !DILocation(line: 690, column: 35, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2941, file: !677, line: 690, column: 25)
!2989 = !DILocation(line: 690, column: 30, scope: !2988)
!2990 = !DILocation(line: 690, column: 25, scope: !2941)
!2991 = !DILocation(line: 692, column: 21, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !677, line: 692, column: 21)
!2993 = distinct !DILexicalBlock(scope: !2941, file: !677, line: 692, column: 21)
!2994 = !DILocation(line: 692, column: 21, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !677, line: 692, column: 21)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !677, line: 692, column: 21)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !677, line: 692, column: 21)
!2998 = !DILocation(line: 692, column: 21, scope: !2996)
!2999 = !DILocation(line: 692, column: 21, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !677, line: 692, column: 21)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !677, line: 692, column: 21)
!3002 = !DILocation(line: 692, column: 21, scope: !3001)
!3003 = !DILocation(line: 692, column: 21, scope: !2997)
!3004 = !DILocation(line: 0, scope: !2941)
!3005 = !DILocation(line: 693, column: 21, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !677, line: 693, column: 21)
!3007 = distinct !DILexicalBlock(scope: !2941, file: !677, line: 693, column: 21)
!3008 = !DILocation(line: 693, column: 21, scope: !3007)
!3009 = !DILocation(line: 694, column: 25, scope: !2941)
!3010 = !DILocation(line: 676, column: 17, scope: !2942)
!3011 = distinct !{!3011, !3012, !3013}
!3012 = !DILocation(line: 676, column: 17, scope: !2943)
!3013 = !DILocation(line: 695, column: 19, scope: !2943)
!3014 = !DILocation(line: 409, column: 30, scope: !2730)
!3015 = !DILocation(line: 702, column: 34, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 702, column: 11)
!3017 = !DILocation(line: 704, column: 14, scope: !3016)
!3018 = !DILocation(line: 705, column: 14, scope: !3016)
!3019 = !DILocation(line: 705, column: 35, scope: !3016)
!3020 = !DILocation(line: 705, column: 17, scope: !3016)
!3021 = !DILocation(line: 705, column: 47, scope: !3016)
!3022 = !DILocation(line: 705, column: 65, scope: !3016)
!3023 = !DILocation(line: 706, column: 11, scope: !3016)
!3024 = !DILocation(line: 702, column: 11, scope: !2579)
!3025 = !DILocation(line: 395, column: 15, scope: !2577)
!3026 = !DILocation(line: 709, column: 5, scope: !2579)
!3027 = !DILocation(line: 710, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 710, column: 7)
!3029 = !DILocation(line: 710, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3028, file: !677, line: 710, column: 7)
!3031 = !DILocation(line: 710, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !677, line: 710, column: 7)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !677, line: 710, column: 7)
!3034 = distinct !DILexicalBlock(scope: !3030, file: !677, line: 710, column: 7)
!3035 = !DILocation(line: 710, column: 7, scope: !3033)
!3036 = !DILocation(line: 710, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !677, line: 710, column: 7)
!3038 = distinct !DILexicalBlock(scope: !3034, file: !677, line: 710, column: 7)
!3039 = !DILocation(line: 710, column: 7, scope: !3038)
!3040 = !DILocation(line: 710, column: 7, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !677, line: 710, column: 7)
!3042 = distinct !DILexicalBlock(scope: !3034, file: !677, line: 710, column: 7)
!3043 = !DILocation(line: 710, column: 7, scope: !3042)
!3044 = !DILocation(line: 710, column: 7, scope: !3034)
!3045 = !DILocation(line: 710, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !677, line: 710, column: 7)
!3047 = distinct !DILexicalBlock(scope: !3028, file: !677, line: 710, column: 7)
!3048 = !DILocation(line: 710, column: 7, scope: !3047)
!3049 = !DILocation(line: 712, column: 5, scope: !2579)
!3050 = !DILocation(line: 713, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !677, line: 713, column: 7)
!3052 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 713, column: 7)
!3053 = !DILocation(line: 417, column: 21, scope: !2579)
!3054 = !DILocation(line: 713, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !677, line: 713, column: 7)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !677, line: 713, column: 7)
!3057 = distinct !DILexicalBlock(scope: !3051, file: !677, line: 713, column: 7)
!3058 = !DILocation(line: 713, column: 7, scope: !3056)
!3059 = !DILocation(line: 713, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !677, line: 713, column: 7)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !677, line: 713, column: 7)
!3062 = !DILocation(line: 713, column: 7, scope: !3061)
!3063 = !DILocation(line: 713, column: 7, scope: !3057)
!3064 = !DILocation(line: 714, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !677, line: 714, column: 7)
!3066 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 714, column: 7)
!3067 = !DILocation(line: 714, column: 7, scope: !3066)
!3068 = !DILocation(line: 716, column: 13, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2579, file: !677, line: 716, column: 11)
!3070 = !DILocation(line: 716, column: 11, scope: !2579)
!3071 = !DILocation(line: 718, column: 5, scope: !2580)
!3072 = !DILocation(line: 395, column: 82, scope: !2580)
!3073 = !DILocation(line: 395, column: 3, scope: !2580)
!3074 = distinct !{!3074, !2726, !3075, !1152}
!3075 = !DILocation(line: 718, column: 5, scope: !2577)
!3076 = !DILocation(line: 720, column: 11, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 720, column: 7)
!3078 = !DILocation(line: 720, column: 16, scope: !3077)
!3079 = !DILocation(line: 728, column: 51, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 728, column: 7)
!3081 = !DILocation(line: 731, column: 11, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !677, line: 731, column: 11)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !677, line: 730, column: 5)
!3084 = !DILocation(line: 731, column: 11, scope: !3083)
!3085 = !DILocation(line: 732, column: 16, scope: !3082)
!3086 = !DILocation(line: 732, column: 9, scope: !3082)
!3087 = !DILocation(line: 736, column: 18, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !677, line: 736, column: 16)
!3089 = !DILocation(line: 736, column: 29, scope: !3088)
!3090 = !DILocation(line: 745, column: 7, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 745, column: 7)
!3092 = !DILocation(line: 745, column: 20, scope: !3091)
!3093 = !DILocation(line: 746, column: 12, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !677, line: 746, column: 5)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !677, line: 746, column: 5)
!3096 = !DILocation(line: 746, column: 5, scope: !3095)
!3097 = !DILocation(line: 747, column: 7, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !677, line: 747, column: 7)
!3099 = distinct !DILexicalBlock(scope: !3094, file: !677, line: 747, column: 7)
!3100 = !DILocation(line: 747, column: 7, scope: !3099)
!3101 = !DILocation(line: 746, column: 39, scope: !3094)
!3102 = distinct !{!3102, !3096, !3103, !1152}
!3103 = !DILocation(line: 747, column: 7, scope: !3095)
!3104 = !DILocation(line: 749, column: 11, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 749, column: 7)
!3106 = !DILocation(line: 749, column: 7, scope: !2545)
!3107 = !DILocation(line: 750, column: 5, scope: !3105)
!3108 = !DILocation(line: 750, column: 17, scope: !3105)
!3109 = !DILocation(line: 753, column: 2, scope: !2545)
!3110 = !DILocation(line: 756, column: 51, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !2545, file: !677, line: 756, column: 7)
!3112 = !DILocation(line: 756, column: 21, scope: !3111)
!3113 = !DILocation(line: 760, column: 42, scope: !2545)
!3114 = !DILocation(line: 758, column: 10, scope: !2545)
!3115 = !DILocation(line: 758, column: 3, scope: !2545)
!3116 = !DILocation(line: 762, column: 1, scope: !2545)
!3117 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1229, file: !1229, line: 98, type: !3118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3118 = !DISubroutineType(types: !942)
!3119 = !DISubprogram(name: "iswprint", scope: !3120, file: !3120, line: 120, type: !2920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3121 = distinct !DISubprogram(name: "quotearg_alloc", scope: !677, file: !677, line: 788, type: !3122, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!59, !101, !104, !2438}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "arg", arg: 1, scope: !3121, file: !677, line: 788, type: !101)
!3126 = !DILocalVariable(name: "argsize", arg: 2, scope: !3121, file: !677, line: 788, type: !104)
!3127 = !DILocalVariable(name: "o", arg: 3, scope: !3121, file: !677, line: 789, type: !2438)
!3128 = !DILocation(line: 0, scope: !3121)
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3130, file: !677, line: 801, type: !101)
!3130 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !677, file: !677, line: 801, type: !3131, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!59, !101, !104, !963, !2438}
!3133 = !{!3129, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3134 = !DILocalVariable(name: "argsize", arg: 2, scope: !3130, file: !677, line: 801, type: !104)
!3135 = !DILocalVariable(name: "size", arg: 3, scope: !3130, file: !677, line: 801, type: !963)
!3136 = !DILocalVariable(name: "o", arg: 4, scope: !3130, file: !677, line: 802, type: !2438)
!3137 = !DILocalVariable(name: "p", scope: !3130, file: !677, line: 804, type: !2438)
!3138 = !DILocalVariable(name: "saved_errno", scope: !3130, file: !677, line: 805, type: !57)
!3139 = !DILocalVariable(name: "flags", scope: !3130, file: !677, line: 807, type: !57)
!3140 = !DILocalVariable(name: "bufsize", scope: !3130, file: !677, line: 808, type: !104)
!3141 = !DILocalVariable(name: "buf", scope: !3130, file: !677, line: 812, type: !59)
!3142 = !DILocation(line: 0, scope: !3130, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 791, column: 10, scope: !3121)
!3144 = !DILocation(line: 804, column: 37, scope: !3130, inlinedAt: !3143)
!3145 = !DILocation(line: 805, column: 21, scope: !3130, inlinedAt: !3143)
!3146 = !DILocation(line: 807, column: 18, scope: !3130, inlinedAt: !3143)
!3147 = !DILocation(line: 807, column: 24, scope: !3130, inlinedAt: !3143)
!3148 = !DILocation(line: 808, column: 72, scope: !3130, inlinedAt: !3143)
!3149 = !DILocation(line: 809, column: 56, scope: !3130, inlinedAt: !3143)
!3150 = !DILocation(line: 810, column: 49, scope: !3130, inlinedAt: !3143)
!3151 = !DILocation(line: 811, column: 49, scope: !3130, inlinedAt: !3143)
!3152 = !DILocation(line: 808, column: 20, scope: !3130, inlinedAt: !3143)
!3153 = !DILocation(line: 811, column: 62, scope: !3130, inlinedAt: !3143)
!3154 = !DILocation(line: 812, column: 15, scope: !3130, inlinedAt: !3143)
!3155 = !DILocation(line: 813, column: 60, scope: !3130, inlinedAt: !3143)
!3156 = !DILocation(line: 815, column: 32, scope: !3130, inlinedAt: !3143)
!3157 = !DILocation(line: 815, column: 47, scope: !3130, inlinedAt: !3143)
!3158 = !DILocation(line: 813, column: 3, scope: !3130, inlinedAt: !3143)
!3159 = !DILocation(line: 816, column: 9, scope: !3130, inlinedAt: !3143)
!3160 = !DILocation(line: 791, column: 3, scope: !3121)
!3161 = !DILocation(line: 0, scope: !3130)
!3162 = !DILocation(line: 804, column: 37, scope: !3130)
!3163 = !DILocation(line: 805, column: 21, scope: !3130)
!3164 = !DILocation(line: 807, column: 18, scope: !3130)
!3165 = !DILocation(line: 807, column: 27, scope: !3130)
!3166 = !DILocation(line: 807, column: 24, scope: !3130)
!3167 = !DILocation(line: 808, column: 72, scope: !3130)
!3168 = !DILocation(line: 809, column: 56, scope: !3130)
!3169 = !DILocation(line: 810, column: 49, scope: !3130)
!3170 = !DILocation(line: 811, column: 49, scope: !3130)
!3171 = !DILocation(line: 808, column: 20, scope: !3130)
!3172 = !DILocation(line: 811, column: 62, scope: !3130)
!3173 = !DILocation(line: 812, column: 15, scope: !3130)
!3174 = !DILocation(line: 813, column: 60, scope: !3130)
!3175 = !DILocation(line: 815, column: 32, scope: !3130)
!3176 = !DILocation(line: 815, column: 47, scope: !3130)
!3177 = !DILocation(line: 813, column: 3, scope: !3130)
!3178 = !DILocation(line: 816, column: 9, scope: !3130)
!3179 = !DILocation(line: 817, column: 7, scope: !3130)
!3180 = !DILocation(line: 818, column: 11, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3130, file: !677, line: 817, column: 7)
!3182 = !DILocation(line: 818, column: 5, scope: !3181)
!3183 = !DILocation(line: 819, column: 3, scope: !3130)
!3184 = distinct !DISubprogram(name: "quotearg_free", scope: !677, file: !677, line: 837, type: !632, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3185)
!3185 = !{!3186, !3187}
!3186 = !DILocalVariable(name: "sv", scope: !3184, file: !677, line: 839, type: !763)
!3187 = !DILocalVariable(name: "i", scope: !3188, file: !677, line: 840, type: !57)
!3188 = distinct !DILexicalBlock(scope: !3184, file: !677, line: 840, column: 3)
!3189 = !DILocation(line: 839, column: 24, scope: !3184)
!3190 = !DILocation(line: 0, scope: !3184)
!3191 = !DILocation(line: 0, scope: !3188)
!3192 = !DILocation(line: 840, column: 21, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !677, line: 840, column: 3)
!3194 = !DILocation(line: 840, column: 3, scope: !3188)
!3195 = !DILocation(line: 842, column: 13, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3184, file: !677, line: 842, column: 7)
!3197 = !{!3198, !1035, i64 8}
!3198 = !{!"slotvec", !1272, i64 0, !1035, i64 8}
!3199 = !DILocation(line: 842, column: 17, scope: !3196)
!3200 = !DILocation(line: 842, column: 7, scope: !3184)
!3201 = !DILocation(line: 841, column: 17, scope: !3193)
!3202 = !DILocation(line: 841, column: 5, scope: !3193)
!3203 = !DILocation(line: 840, column: 32, scope: !3193)
!3204 = distinct !{!3204, !3194, !3205, !1152}
!3205 = !DILocation(line: 841, column: 20, scope: !3188)
!3206 = !DILocation(line: 844, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3196, file: !677, line: 843, column: 5)
!3208 = !DILocation(line: 845, column: 21, scope: !3207)
!3209 = !{!3198, !1272, i64 0}
!3210 = !DILocation(line: 846, column: 20, scope: !3207)
!3211 = !DILocation(line: 847, column: 5, scope: !3207)
!3212 = !DILocation(line: 848, column: 10, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3184, file: !677, line: 848, column: 7)
!3214 = !DILocation(line: 848, column: 7, scope: !3184)
!3215 = !DILocation(line: 850, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !677, line: 849, column: 5)
!3217 = !DILocation(line: 851, column: 15, scope: !3216)
!3218 = !DILocation(line: 852, column: 5, scope: !3216)
!3219 = !DILocation(line: 853, column: 10, scope: !3184)
!3220 = !DILocation(line: 854, column: 1, scope: !3184)
!3221 = distinct !DISubprogram(name: "quotearg_n", scope: !677, file: !677, line: 919, type: !1222, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3222)
!3222 = !{!3223, !3224}
!3223 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !677, line: 919, type: !57)
!3224 = !DILocalVariable(name: "arg", arg: 2, scope: !3221, file: !677, line: 919, type: !101)
!3225 = !DILocation(line: 0, scope: !3221)
!3226 = !DILocation(line: 921, column: 10, scope: !3221)
!3227 = !DILocation(line: 921, column: 3, scope: !3221)
!3228 = distinct !DISubprogram(name: "quotearg_n_options", scope: !677, file: !677, line: 866, type: !3229, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3231)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!59, !57, !101, !104, !2438}
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3242, !3243, !3245, !3246, !3247}
!3232 = !DILocalVariable(name: "n", arg: 1, scope: !3228, file: !677, line: 866, type: !57)
!3233 = !DILocalVariable(name: "arg", arg: 2, scope: !3228, file: !677, line: 866, type: !101)
!3234 = !DILocalVariable(name: "argsize", arg: 3, scope: !3228, file: !677, line: 866, type: !104)
!3235 = !DILocalVariable(name: "options", arg: 4, scope: !3228, file: !677, line: 867, type: !2438)
!3236 = !DILocalVariable(name: "saved_errno", scope: !3228, file: !677, line: 869, type: !57)
!3237 = !DILocalVariable(name: "sv", scope: !3228, file: !677, line: 871, type: !763)
!3238 = !DILocalVariable(name: "nslots_max", scope: !3228, file: !677, line: 873, type: !57)
!3239 = !DILocalVariable(name: "preallocated", scope: !3240, file: !677, line: 879, type: !215)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !677, line: 878, column: 5)
!3241 = distinct !DILexicalBlock(scope: !3228, file: !677, line: 877, column: 7)
!3242 = !DILocalVariable(name: "new_nslots", scope: !3240, file: !677, line: 880, type: !976)
!3243 = !DILocalVariable(name: "size", scope: !3244, file: !677, line: 891, type: !104)
!3244 = distinct !DILexicalBlock(scope: !3228, file: !677, line: 890, column: 3)
!3245 = !DILocalVariable(name: "val", scope: !3244, file: !677, line: 892, type: !59)
!3246 = !DILocalVariable(name: "flags", scope: !3244, file: !677, line: 894, type: !57)
!3247 = !DILocalVariable(name: "qsize", scope: !3244, file: !677, line: 895, type: !104)
!3248 = distinct !DIAssignID()
!3249 = !DILocation(line: 0, scope: !3240)
!3250 = !DILocation(line: 0, scope: !3228)
!3251 = !DILocation(line: 869, column: 21, scope: !3228)
!3252 = !DILocation(line: 871, column: 24, scope: !3228)
!3253 = !DILocation(line: 874, column: 17, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3228, file: !677, line: 874, column: 7)
!3255 = !DILocation(line: 875, column: 5, scope: !3254)
!3256 = !DILocation(line: 877, column: 7, scope: !3241)
!3257 = !DILocation(line: 877, column: 14, scope: !3241)
!3258 = !DILocation(line: 877, column: 7, scope: !3228)
!3259 = !DILocation(line: 879, column: 31, scope: !3240)
!3260 = !DILocation(line: 880, column: 7, scope: !3240)
!3261 = !DILocation(line: 880, column: 26, scope: !3240)
!3262 = !DILocation(line: 880, column: 13, scope: !3240)
!3263 = distinct !DIAssignID()
!3264 = !DILocation(line: 882, column: 31, scope: !3240)
!3265 = !DILocation(line: 883, column: 33, scope: !3240)
!3266 = !DILocation(line: 883, column: 42, scope: !3240)
!3267 = !DILocation(line: 883, column: 31, scope: !3240)
!3268 = !DILocation(line: 882, column: 22, scope: !3240)
!3269 = !DILocation(line: 882, column: 15, scope: !3240)
!3270 = !DILocation(line: 884, column: 11, scope: !3240)
!3271 = !DILocation(line: 885, column: 15, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3240, file: !677, line: 884, column: 11)
!3273 = !{i64 0, i64 8, !1271, i64 8, i64 8, !1034}
!3274 = !DILocation(line: 885, column: 9, scope: !3272)
!3275 = !DILocation(line: 886, column: 20, scope: !3240)
!3276 = !DILocation(line: 886, column: 18, scope: !3240)
!3277 = !DILocation(line: 886, column: 32, scope: !3240)
!3278 = !DILocation(line: 886, column: 43, scope: !3240)
!3279 = !DILocation(line: 886, column: 53, scope: !3240)
!3280 = !DILocation(line: 0, scope: !2660, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 886, column: 7, scope: !3240)
!3282 = !DILocation(line: 59, column: 10, scope: !2660, inlinedAt: !3281)
!3283 = !DILocation(line: 887, column: 16, scope: !3240)
!3284 = !DILocation(line: 887, column: 14, scope: !3240)
!3285 = !DILocation(line: 888, column: 5, scope: !3241)
!3286 = !DILocation(line: 888, column: 5, scope: !3240)
!3287 = !DILocation(line: 891, column: 19, scope: !3244)
!3288 = !DILocation(line: 891, column: 25, scope: !3244)
!3289 = !DILocation(line: 0, scope: !3244)
!3290 = !DILocation(line: 892, column: 23, scope: !3244)
!3291 = !DILocation(line: 894, column: 26, scope: !3244)
!3292 = !DILocation(line: 894, column: 32, scope: !3244)
!3293 = !DILocation(line: 896, column: 55, scope: !3244)
!3294 = !DILocation(line: 897, column: 55, scope: !3244)
!3295 = !DILocation(line: 898, column: 55, scope: !3244)
!3296 = !DILocation(line: 899, column: 55, scope: !3244)
!3297 = !DILocation(line: 895, column: 20, scope: !3244)
!3298 = !DILocation(line: 901, column: 14, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3244, file: !677, line: 901, column: 9)
!3300 = !DILocation(line: 901, column: 9, scope: !3244)
!3301 = !DILocation(line: 903, column: 35, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !677, line: 902, column: 7)
!3303 = !DILocation(line: 903, column: 20, scope: !3302)
!3304 = !DILocation(line: 904, column: 17, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !677, line: 904, column: 13)
!3306 = !DILocation(line: 904, column: 13, scope: !3302)
!3307 = !DILocation(line: 905, column: 11, scope: !3305)
!3308 = !DILocation(line: 906, column: 27, scope: !3302)
!3309 = !DILocation(line: 906, column: 19, scope: !3302)
!3310 = !DILocation(line: 907, column: 69, scope: !3302)
!3311 = !DILocation(line: 909, column: 44, scope: !3302)
!3312 = !DILocation(line: 910, column: 44, scope: !3302)
!3313 = !DILocation(line: 907, column: 9, scope: !3302)
!3314 = !DILocation(line: 911, column: 7, scope: !3302)
!3315 = !DILocation(line: 913, column: 11, scope: !3244)
!3316 = !DILocation(line: 914, column: 5, scope: !3244)
!3317 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !677, file: !677, line: 925, type: !3318, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!59, !57, !101, !104}
!3320 = !{!3321, !3322, !3323}
!3321 = !DILocalVariable(name: "n", arg: 1, scope: !3317, file: !677, line: 925, type: !57)
!3322 = !DILocalVariable(name: "arg", arg: 2, scope: !3317, file: !677, line: 925, type: !101)
!3323 = !DILocalVariable(name: "argsize", arg: 3, scope: !3317, file: !677, line: 925, type: !104)
!3324 = !DILocation(line: 0, scope: !3317)
!3325 = !DILocation(line: 927, column: 10, scope: !3317)
!3326 = !DILocation(line: 927, column: 3, scope: !3317)
!3327 = distinct !DISubprogram(name: "quotearg", scope: !677, file: !677, line: 931, type: !1231, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3328)
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "arg", arg: 1, scope: !3327, file: !677, line: 931, type: !101)
!3330 = !DILocation(line: 0, scope: !3327)
!3331 = !DILocation(line: 0, scope: !3221, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 933, column: 10, scope: !3327)
!3333 = !DILocation(line: 921, column: 10, scope: !3221, inlinedAt: !3332)
!3334 = !DILocation(line: 933, column: 3, scope: !3327)
!3335 = distinct !DISubprogram(name: "quotearg_mem", scope: !677, file: !677, line: 937, type: !3336, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!59, !101, !104}
!3338 = !{!3339, !3340}
!3339 = !DILocalVariable(name: "arg", arg: 1, scope: !3335, file: !677, line: 937, type: !101)
!3340 = !DILocalVariable(name: "argsize", arg: 2, scope: !3335, file: !677, line: 937, type: !104)
!3341 = !DILocation(line: 0, scope: !3335)
!3342 = !DILocation(line: 0, scope: !3317, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 939, column: 10, scope: !3335)
!3344 = !DILocation(line: 927, column: 10, scope: !3317, inlinedAt: !3343)
!3345 = !DILocation(line: 939, column: 3, scope: !3335)
!3346 = distinct !DISubprogram(name: "quotearg_n_style", scope: !677, file: !677, line: 943, type: !3347, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!59, !57, !703, !101}
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DILocalVariable(name: "n", arg: 1, scope: !3346, file: !677, line: 943, type: !57)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !677, line: 943, type: !703)
!3352 = !DILocalVariable(name: "arg", arg: 3, scope: !3346, file: !677, line: 943, type: !101)
!3353 = !DILocalVariable(name: "o", scope: !3346, file: !677, line: 945, type: !2439)
!3354 = distinct !DIAssignID()
!3355 = !DILocation(line: 0, scope: !3346)
!3356 = !DILocation(line: 945, column: 3, scope: !3346)
!3357 = !{!3358}
!3358 = distinct !{!3358, !3359, !"quoting_options_from_style: argument 0"}
!3359 = distinct !{!3359, !"quoting_options_from_style"}
!3360 = !DILocation(line: 945, column: 36, scope: !3346)
!3361 = !DILocalVariable(name: "style", arg: 1, scope: !3362, file: !677, line: 183, type: !703)
!3362 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !677, file: !677, line: 183, type: !3363, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!718, !703}
!3365 = !{!3361, !3366}
!3366 = !DILocalVariable(name: "o", scope: !3362, file: !677, line: 185, type: !718)
!3367 = !DILocation(line: 0, scope: !3362, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 945, column: 36, scope: !3346)
!3369 = !DILocation(line: 185, column: 26, scope: !3362, inlinedAt: !3368)
!3370 = distinct !DIAssignID()
!3371 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3368)
!3372 = distinct !DILexicalBlock(scope: !3362, file: !677, line: 186, column: 7)
!3373 = !DILocation(line: 186, column: 7, scope: !3362, inlinedAt: !3368)
!3374 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3368)
!3375 = !DILocation(line: 188, column: 11, scope: !3362, inlinedAt: !3368)
!3376 = distinct !DIAssignID()
!3377 = !DILocation(line: 946, column: 10, scope: !3346)
!3378 = !DILocation(line: 947, column: 1, scope: !3346)
!3379 = !DILocation(line: 946, column: 3, scope: !3346)
!3380 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !677, file: !677, line: 950, type: !3381, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!59, !57, !703, !101, !104}
!3383 = !{!3384, !3385, !3386, !3387, !3388}
!3384 = !DILocalVariable(name: "n", arg: 1, scope: !3380, file: !677, line: 950, type: !57)
!3385 = !DILocalVariable(name: "s", arg: 2, scope: !3380, file: !677, line: 950, type: !703)
!3386 = !DILocalVariable(name: "arg", arg: 3, scope: !3380, file: !677, line: 951, type: !101)
!3387 = !DILocalVariable(name: "argsize", arg: 4, scope: !3380, file: !677, line: 951, type: !104)
!3388 = !DILocalVariable(name: "o", scope: !3380, file: !677, line: 953, type: !2439)
!3389 = distinct !DIAssignID()
!3390 = !DILocation(line: 0, scope: !3380)
!3391 = !DILocation(line: 953, column: 3, scope: !3380)
!3392 = !{!3393}
!3393 = distinct !{!3393, !3394, !"quoting_options_from_style: argument 0"}
!3394 = distinct !{!3394, !"quoting_options_from_style"}
!3395 = !DILocation(line: 953, column: 36, scope: !3380)
!3396 = !DILocation(line: 0, scope: !3362, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 953, column: 36, scope: !3380)
!3398 = !DILocation(line: 185, column: 26, scope: !3362, inlinedAt: !3397)
!3399 = distinct !DIAssignID()
!3400 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3397)
!3401 = !DILocation(line: 186, column: 7, scope: !3362, inlinedAt: !3397)
!3402 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3397)
!3403 = !DILocation(line: 188, column: 11, scope: !3362, inlinedAt: !3397)
!3404 = distinct !DIAssignID()
!3405 = !DILocation(line: 954, column: 10, scope: !3380)
!3406 = !DILocation(line: 955, column: 1, scope: !3380)
!3407 = !DILocation(line: 954, column: 3, scope: !3380)
!3408 = distinct !DISubprogram(name: "quotearg_style", scope: !677, file: !677, line: 958, type: !3409, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!59, !703, !101}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "s", arg: 1, scope: !3408, file: !677, line: 958, type: !703)
!3413 = !DILocalVariable(name: "arg", arg: 2, scope: !3408, file: !677, line: 958, type: !101)
!3414 = distinct !DIAssignID()
!3415 = !DILocation(line: 0, scope: !3408)
!3416 = !DILocation(line: 0, scope: !3346, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 960, column: 10, scope: !3408)
!3418 = !DILocation(line: 945, column: 3, scope: !3346, inlinedAt: !3417)
!3419 = !{!3420}
!3420 = distinct !{!3420, !3421, !"quoting_options_from_style: argument 0"}
!3421 = distinct !{!3421, !"quoting_options_from_style"}
!3422 = !DILocation(line: 945, column: 36, scope: !3346, inlinedAt: !3417)
!3423 = !DILocation(line: 0, scope: !3362, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 945, column: 36, scope: !3346, inlinedAt: !3417)
!3425 = !DILocation(line: 185, column: 26, scope: !3362, inlinedAt: !3424)
!3426 = distinct !DIAssignID()
!3427 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3424)
!3428 = !DILocation(line: 186, column: 7, scope: !3362, inlinedAt: !3424)
!3429 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3424)
!3430 = !DILocation(line: 188, column: 11, scope: !3362, inlinedAt: !3424)
!3431 = distinct !DIAssignID()
!3432 = !DILocation(line: 946, column: 10, scope: !3346, inlinedAt: !3417)
!3433 = !DILocation(line: 947, column: 1, scope: !3346, inlinedAt: !3417)
!3434 = !DILocation(line: 960, column: 3, scope: !3408)
!3435 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !677, file: !677, line: 964, type: !3436, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!59, !703, !101, !104}
!3438 = !{!3439, !3440, !3441}
!3439 = !DILocalVariable(name: "s", arg: 1, scope: !3435, file: !677, line: 964, type: !703)
!3440 = !DILocalVariable(name: "arg", arg: 2, scope: !3435, file: !677, line: 964, type: !101)
!3441 = !DILocalVariable(name: "argsize", arg: 3, scope: !3435, file: !677, line: 964, type: !104)
!3442 = distinct !DIAssignID()
!3443 = !DILocation(line: 0, scope: !3435)
!3444 = !DILocation(line: 0, scope: !3380, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 966, column: 10, scope: !3435)
!3446 = !DILocation(line: 953, column: 3, scope: !3380, inlinedAt: !3445)
!3447 = !{!3448}
!3448 = distinct !{!3448, !3449, !"quoting_options_from_style: argument 0"}
!3449 = distinct !{!3449, !"quoting_options_from_style"}
!3450 = !DILocation(line: 953, column: 36, scope: !3380, inlinedAt: !3445)
!3451 = !DILocation(line: 0, scope: !3362, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 953, column: 36, scope: !3380, inlinedAt: !3445)
!3453 = !DILocation(line: 185, column: 26, scope: !3362, inlinedAt: !3452)
!3454 = distinct !DIAssignID()
!3455 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3452)
!3456 = !DILocation(line: 186, column: 7, scope: !3362, inlinedAt: !3452)
!3457 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3452)
!3458 = !DILocation(line: 188, column: 11, scope: !3362, inlinedAt: !3452)
!3459 = distinct !DIAssignID()
!3460 = !DILocation(line: 954, column: 10, scope: !3380, inlinedAt: !3445)
!3461 = !DILocation(line: 955, column: 1, scope: !3380, inlinedAt: !3445)
!3462 = !DILocation(line: 966, column: 3, scope: !3435)
!3463 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !677, file: !677, line: 970, type: !3464, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!59, !101, !104, !4}
!3466 = !{!3467, !3468, !3469, !3470}
!3467 = !DILocalVariable(name: "arg", arg: 1, scope: !3463, file: !677, line: 970, type: !101)
!3468 = !DILocalVariable(name: "argsize", arg: 2, scope: !3463, file: !677, line: 970, type: !104)
!3469 = !DILocalVariable(name: "ch", arg: 3, scope: !3463, file: !677, line: 970, type: !4)
!3470 = !DILocalVariable(name: "options", scope: !3463, file: !677, line: 972, type: !718)
!3471 = distinct !DIAssignID()
!3472 = !DILocation(line: 0, scope: !3463)
!3473 = !DILocation(line: 972, column: 3, scope: !3463)
!3474 = !DILocation(line: 973, column: 13, scope: !3463)
!3475 = !{i64 0, i64 4, !1105, i64 4, i64 4, !1105, i64 8, i64 32, !1114, i64 40, i64 8, !1034, i64 48, i64 8, !1034}
!3476 = distinct !DIAssignID()
!3477 = !DILocation(line: 0, scope: !2458, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 974, column: 3, scope: !3463)
!3479 = !DILocation(line: 147, column: 41, scope: !2458, inlinedAt: !3478)
!3480 = !DILocation(line: 147, column: 62, scope: !2458, inlinedAt: !3478)
!3481 = !DILocation(line: 147, column: 57, scope: !2458, inlinedAt: !3478)
!3482 = !DILocation(line: 148, column: 15, scope: !2458, inlinedAt: !3478)
!3483 = !DILocation(line: 149, column: 21, scope: !2458, inlinedAt: !3478)
!3484 = !DILocation(line: 149, column: 24, scope: !2458, inlinedAt: !3478)
!3485 = !DILocation(line: 150, column: 19, scope: !2458, inlinedAt: !3478)
!3486 = !DILocation(line: 150, column: 24, scope: !2458, inlinedAt: !3478)
!3487 = !DILocation(line: 150, column: 6, scope: !2458, inlinedAt: !3478)
!3488 = !DILocation(line: 975, column: 10, scope: !3463)
!3489 = !DILocation(line: 976, column: 1, scope: !3463)
!3490 = !DILocation(line: 975, column: 3, scope: !3463)
!3491 = distinct !DISubprogram(name: "quotearg_char", scope: !677, file: !677, line: 979, type: !3492, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!59, !101, !4}
!3494 = !{!3495, !3496}
!3495 = !DILocalVariable(name: "arg", arg: 1, scope: !3491, file: !677, line: 979, type: !101)
!3496 = !DILocalVariable(name: "ch", arg: 2, scope: !3491, file: !677, line: 979, type: !4)
!3497 = distinct !DIAssignID()
!3498 = !DILocation(line: 0, scope: !3491)
!3499 = !DILocation(line: 0, scope: !3463, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 981, column: 10, scope: !3491)
!3501 = !DILocation(line: 972, column: 3, scope: !3463, inlinedAt: !3500)
!3502 = !DILocation(line: 973, column: 13, scope: !3463, inlinedAt: !3500)
!3503 = distinct !DIAssignID()
!3504 = !DILocation(line: 0, scope: !2458, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 974, column: 3, scope: !3463, inlinedAt: !3500)
!3506 = !DILocation(line: 147, column: 41, scope: !2458, inlinedAt: !3505)
!3507 = !DILocation(line: 147, column: 62, scope: !2458, inlinedAt: !3505)
!3508 = !DILocation(line: 147, column: 57, scope: !2458, inlinedAt: !3505)
!3509 = !DILocation(line: 148, column: 15, scope: !2458, inlinedAt: !3505)
!3510 = !DILocation(line: 149, column: 21, scope: !2458, inlinedAt: !3505)
!3511 = !DILocation(line: 149, column: 24, scope: !2458, inlinedAt: !3505)
!3512 = !DILocation(line: 150, column: 19, scope: !2458, inlinedAt: !3505)
!3513 = !DILocation(line: 150, column: 24, scope: !2458, inlinedAt: !3505)
!3514 = !DILocation(line: 150, column: 6, scope: !2458, inlinedAt: !3505)
!3515 = !DILocation(line: 975, column: 10, scope: !3463, inlinedAt: !3500)
!3516 = !DILocation(line: 976, column: 1, scope: !3463, inlinedAt: !3500)
!3517 = !DILocation(line: 981, column: 3, scope: !3491)
!3518 = distinct !DISubprogram(name: "quotearg_colon", scope: !677, file: !677, line: 985, type: !1231, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3519)
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "arg", arg: 1, scope: !3518, file: !677, line: 985, type: !101)
!3521 = distinct !DIAssignID()
!3522 = !DILocation(line: 0, scope: !3518)
!3523 = !DILocation(line: 0, scope: !3491, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 987, column: 10, scope: !3518)
!3525 = !DILocation(line: 0, scope: !3463, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 981, column: 10, scope: !3491, inlinedAt: !3524)
!3527 = !DILocation(line: 972, column: 3, scope: !3463, inlinedAt: !3526)
!3528 = !DILocation(line: 973, column: 13, scope: !3463, inlinedAt: !3526)
!3529 = distinct !DIAssignID()
!3530 = !DILocation(line: 0, scope: !2458, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 974, column: 3, scope: !3463, inlinedAt: !3526)
!3532 = !DILocation(line: 147, column: 57, scope: !2458, inlinedAt: !3531)
!3533 = !DILocation(line: 149, column: 21, scope: !2458, inlinedAt: !3531)
!3534 = !DILocation(line: 150, column: 6, scope: !2458, inlinedAt: !3531)
!3535 = !DILocation(line: 975, column: 10, scope: !3463, inlinedAt: !3526)
!3536 = !DILocation(line: 976, column: 1, scope: !3463, inlinedAt: !3526)
!3537 = !DILocation(line: 987, column: 3, scope: !3518)
!3538 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !677, file: !677, line: 991, type: !3336, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3539)
!3539 = !{!3540, !3541}
!3540 = !DILocalVariable(name: "arg", arg: 1, scope: !3538, file: !677, line: 991, type: !101)
!3541 = !DILocalVariable(name: "argsize", arg: 2, scope: !3538, file: !677, line: 991, type: !104)
!3542 = distinct !DIAssignID()
!3543 = !DILocation(line: 0, scope: !3538)
!3544 = !DILocation(line: 0, scope: !3463, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 993, column: 10, scope: !3538)
!3546 = !DILocation(line: 972, column: 3, scope: !3463, inlinedAt: !3545)
!3547 = !DILocation(line: 973, column: 13, scope: !3463, inlinedAt: !3545)
!3548 = distinct !DIAssignID()
!3549 = !DILocation(line: 0, scope: !2458, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 974, column: 3, scope: !3463, inlinedAt: !3545)
!3551 = !DILocation(line: 147, column: 57, scope: !2458, inlinedAt: !3550)
!3552 = !DILocation(line: 149, column: 21, scope: !2458, inlinedAt: !3550)
!3553 = !DILocation(line: 150, column: 6, scope: !2458, inlinedAt: !3550)
!3554 = !DILocation(line: 975, column: 10, scope: !3463, inlinedAt: !3545)
!3555 = !DILocation(line: 976, column: 1, scope: !3463, inlinedAt: !3545)
!3556 = !DILocation(line: 993, column: 3, scope: !3538)
!3557 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !677, file: !677, line: 997, type: !3347, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3558)
!3558 = !{!3559, !3560, !3561, !3562}
!3559 = !DILocalVariable(name: "n", arg: 1, scope: !3557, file: !677, line: 997, type: !57)
!3560 = !DILocalVariable(name: "s", arg: 2, scope: !3557, file: !677, line: 997, type: !703)
!3561 = !DILocalVariable(name: "arg", arg: 3, scope: !3557, file: !677, line: 997, type: !101)
!3562 = !DILocalVariable(name: "options", scope: !3557, file: !677, line: 999, type: !718)
!3563 = distinct !DIAssignID()
!3564 = !DILocation(line: 0, scope: !3557)
!3565 = !DILocation(line: 185, column: 26, scope: !3362, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1000, column: 13, scope: !3557)
!3567 = !DILocation(line: 999, column: 3, scope: !3557)
!3568 = !DILocation(line: 0, scope: !3362, inlinedAt: !3566)
!3569 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3566)
!3570 = !DILocation(line: 186, column: 7, scope: !3362, inlinedAt: !3566)
!3571 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3566)
!3572 = !{!3573}
!3573 = distinct !{!3573, !3574, !"quoting_options_from_style: argument 0"}
!3574 = distinct !{!3574, !"quoting_options_from_style"}
!3575 = !DILocation(line: 1000, column: 13, scope: !3557)
!3576 = distinct !DIAssignID()
!3577 = distinct !DIAssignID()
!3578 = !DILocation(line: 0, scope: !2458, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 1001, column: 3, scope: !3557)
!3580 = !DILocation(line: 147, column: 57, scope: !2458, inlinedAt: !3579)
!3581 = !DILocation(line: 149, column: 21, scope: !2458, inlinedAt: !3579)
!3582 = !DILocation(line: 150, column: 6, scope: !2458, inlinedAt: !3579)
!3583 = distinct !DIAssignID()
!3584 = !DILocation(line: 1002, column: 10, scope: !3557)
!3585 = !DILocation(line: 1003, column: 1, scope: !3557)
!3586 = !DILocation(line: 1002, column: 3, scope: !3557)
!3587 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !677, file: !677, line: 1006, type: !3588, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!59, !57, !101, !101, !101}
!3590 = !{!3591, !3592, !3593, !3594}
!3591 = !DILocalVariable(name: "n", arg: 1, scope: !3587, file: !677, line: 1006, type: !57)
!3592 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3587, file: !677, line: 1006, type: !101)
!3593 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3587, file: !677, line: 1007, type: !101)
!3594 = !DILocalVariable(name: "arg", arg: 4, scope: !3587, file: !677, line: 1007, type: !101)
!3595 = distinct !DIAssignID()
!3596 = !DILocation(line: 0, scope: !3587)
!3597 = !DILocalVariable(name: "o", scope: !3598, file: !677, line: 1018, type: !718)
!3598 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !677, file: !677, line: 1014, type: !3599, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!59, !57, !101, !101, !101, !104}
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3597}
!3602 = !DILocalVariable(name: "n", arg: 1, scope: !3598, file: !677, line: 1014, type: !57)
!3603 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3598, file: !677, line: 1014, type: !101)
!3604 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3598, file: !677, line: 1015, type: !101)
!3605 = !DILocalVariable(name: "arg", arg: 4, scope: !3598, file: !677, line: 1016, type: !101)
!3606 = !DILocalVariable(name: "argsize", arg: 5, scope: !3598, file: !677, line: 1016, type: !104)
!3607 = !DILocation(line: 0, scope: !3598, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 1009, column: 10, scope: !3587)
!3609 = !DILocation(line: 1018, column: 3, scope: !3598, inlinedAt: !3608)
!3610 = !DILocation(line: 1018, column: 30, scope: !3598, inlinedAt: !3608)
!3611 = distinct !DIAssignID()
!3612 = distinct !DIAssignID()
!3613 = !DILocation(line: 0, scope: !2498, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 1019, column: 3, scope: !3598, inlinedAt: !3608)
!3615 = !DILocation(line: 174, column: 12, scope: !2498, inlinedAt: !3614)
!3616 = distinct !DIAssignID()
!3617 = !DILocation(line: 175, column: 8, scope: !2511, inlinedAt: !3614)
!3618 = !DILocation(line: 175, column: 19, scope: !2511, inlinedAt: !3614)
!3619 = !DILocation(line: 176, column: 5, scope: !2511, inlinedAt: !3614)
!3620 = !DILocation(line: 177, column: 6, scope: !2498, inlinedAt: !3614)
!3621 = !DILocation(line: 177, column: 17, scope: !2498, inlinedAt: !3614)
!3622 = distinct !DIAssignID()
!3623 = !DILocation(line: 178, column: 6, scope: !2498, inlinedAt: !3614)
!3624 = !DILocation(line: 178, column: 18, scope: !2498, inlinedAt: !3614)
!3625 = distinct !DIAssignID()
!3626 = !DILocation(line: 1020, column: 10, scope: !3598, inlinedAt: !3608)
!3627 = !DILocation(line: 1021, column: 1, scope: !3598, inlinedAt: !3608)
!3628 = !DILocation(line: 1009, column: 3, scope: !3587)
!3629 = distinct !DIAssignID()
!3630 = !DILocation(line: 0, scope: !3598)
!3631 = !DILocation(line: 1018, column: 3, scope: !3598)
!3632 = !DILocation(line: 1018, column: 30, scope: !3598)
!3633 = distinct !DIAssignID()
!3634 = distinct !DIAssignID()
!3635 = !DILocation(line: 0, scope: !2498, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 1019, column: 3, scope: !3598)
!3637 = !DILocation(line: 174, column: 12, scope: !2498, inlinedAt: !3636)
!3638 = distinct !DIAssignID()
!3639 = !DILocation(line: 175, column: 8, scope: !2511, inlinedAt: !3636)
!3640 = !DILocation(line: 175, column: 19, scope: !2511, inlinedAt: !3636)
!3641 = !DILocation(line: 176, column: 5, scope: !2511, inlinedAt: !3636)
!3642 = !DILocation(line: 177, column: 6, scope: !2498, inlinedAt: !3636)
!3643 = !DILocation(line: 177, column: 17, scope: !2498, inlinedAt: !3636)
!3644 = distinct !DIAssignID()
!3645 = !DILocation(line: 178, column: 6, scope: !2498, inlinedAt: !3636)
!3646 = !DILocation(line: 178, column: 18, scope: !2498, inlinedAt: !3636)
!3647 = distinct !DIAssignID()
!3648 = !DILocation(line: 1020, column: 10, scope: !3598)
!3649 = !DILocation(line: 1021, column: 1, scope: !3598)
!3650 = !DILocation(line: 1020, column: 3, scope: !3598)
!3651 = distinct !DISubprogram(name: "quotearg_custom", scope: !677, file: !677, line: 1024, type: !3652, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!59, !101, !101, !101}
!3654 = !{!3655, !3656, !3657}
!3655 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3651, file: !677, line: 1024, type: !101)
!3656 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3651, file: !677, line: 1024, type: !101)
!3657 = !DILocalVariable(name: "arg", arg: 3, scope: !3651, file: !677, line: 1025, type: !101)
!3658 = distinct !DIAssignID()
!3659 = !DILocation(line: 0, scope: !3651)
!3660 = !DILocation(line: 0, scope: !3587, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 1027, column: 10, scope: !3651)
!3662 = !DILocation(line: 0, scope: !3598, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 1009, column: 10, scope: !3587, inlinedAt: !3661)
!3664 = !DILocation(line: 1018, column: 3, scope: !3598, inlinedAt: !3663)
!3665 = !DILocation(line: 1018, column: 30, scope: !3598, inlinedAt: !3663)
!3666 = distinct !DIAssignID()
!3667 = distinct !DIAssignID()
!3668 = !DILocation(line: 0, scope: !2498, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 1019, column: 3, scope: !3598, inlinedAt: !3663)
!3670 = !DILocation(line: 174, column: 12, scope: !2498, inlinedAt: !3669)
!3671 = distinct !DIAssignID()
!3672 = !DILocation(line: 175, column: 8, scope: !2511, inlinedAt: !3669)
!3673 = !DILocation(line: 175, column: 19, scope: !2511, inlinedAt: !3669)
!3674 = !DILocation(line: 176, column: 5, scope: !2511, inlinedAt: !3669)
!3675 = !DILocation(line: 177, column: 6, scope: !2498, inlinedAt: !3669)
!3676 = !DILocation(line: 177, column: 17, scope: !2498, inlinedAt: !3669)
!3677 = distinct !DIAssignID()
!3678 = !DILocation(line: 178, column: 6, scope: !2498, inlinedAt: !3669)
!3679 = !DILocation(line: 178, column: 18, scope: !2498, inlinedAt: !3669)
!3680 = distinct !DIAssignID()
!3681 = !DILocation(line: 1020, column: 10, scope: !3598, inlinedAt: !3663)
!3682 = !DILocation(line: 1021, column: 1, scope: !3598, inlinedAt: !3663)
!3683 = !DILocation(line: 1027, column: 3, scope: !3651)
!3684 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !677, file: !677, line: 1031, type: !3685, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!59, !101, !101, !101, !104}
!3687 = !{!3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3684, file: !677, line: 1031, type: !101)
!3689 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3684, file: !677, line: 1031, type: !101)
!3690 = !DILocalVariable(name: "arg", arg: 3, scope: !3684, file: !677, line: 1032, type: !101)
!3691 = !DILocalVariable(name: "argsize", arg: 4, scope: !3684, file: !677, line: 1032, type: !104)
!3692 = distinct !DIAssignID()
!3693 = !DILocation(line: 0, scope: !3684)
!3694 = !DILocation(line: 0, scope: !3598, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1034, column: 10, scope: !3684)
!3696 = !DILocation(line: 1018, column: 3, scope: !3598, inlinedAt: !3695)
!3697 = !DILocation(line: 1018, column: 30, scope: !3598, inlinedAt: !3695)
!3698 = distinct !DIAssignID()
!3699 = distinct !DIAssignID()
!3700 = !DILocation(line: 0, scope: !2498, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 1019, column: 3, scope: !3598, inlinedAt: !3695)
!3702 = !DILocation(line: 174, column: 12, scope: !2498, inlinedAt: !3701)
!3703 = distinct !DIAssignID()
!3704 = !DILocation(line: 175, column: 8, scope: !2511, inlinedAt: !3701)
!3705 = !DILocation(line: 175, column: 19, scope: !2511, inlinedAt: !3701)
!3706 = !DILocation(line: 176, column: 5, scope: !2511, inlinedAt: !3701)
!3707 = !DILocation(line: 177, column: 6, scope: !2498, inlinedAt: !3701)
!3708 = !DILocation(line: 177, column: 17, scope: !2498, inlinedAt: !3701)
!3709 = distinct !DIAssignID()
!3710 = !DILocation(line: 178, column: 6, scope: !2498, inlinedAt: !3701)
!3711 = !DILocation(line: 178, column: 18, scope: !2498, inlinedAt: !3701)
!3712 = distinct !DIAssignID()
!3713 = !DILocation(line: 1020, column: 10, scope: !3598, inlinedAt: !3695)
!3714 = !DILocation(line: 1021, column: 1, scope: !3598, inlinedAt: !3695)
!3715 = !DILocation(line: 1034, column: 3, scope: !3684)
!3716 = distinct !DISubprogram(name: "quote_n_mem", scope: !677, file: !677, line: 1049, type: !3717, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!101, !57, !101, !104}
!3719 = !{!3720, !3721, !3722}
!3720 = !DILocalVariable(name: "n", arg: 1, scope: !3716, file: !677, line: 1049, type: !57)
!3721 = !DILocalVariable(name: "arg", arg: 2, scope: !3716, file: !677, line: 1049, type: !101)
!3722 = !DILocalVariable(name: "argsize", arg: 3, scope: !3716, file: !677, line: 1049, type: !104)
!3723 = !DILocation(line: 0, scope: !3716)
!3724 = !DILocation(line: 1051, column: 10, scope: !3716)
!3725 = !DILocation(line: 1051, column: 3, scope: !3716)
!3726 = distinct !DISubprogram(name: "quote_mem", scope: !677, file: !677, line: 1055, type: !3727, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!101, !101, !104}
!3729 = !{!3730, !3731}
!3730 = !DILocalVariable(name: "arg", arg: 1, scope: !3726, file: !677, line: 1055, type: !101)
!3731 = !DILocalVariable(name: "argsize", arg: 2, scope: !3726, file: !677, line: 1055, type: !104)
!3732 = !DILocation(line: 0, scope: !3726)
!3733 = !DILocation(line: 0, scope: !3716, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 1057, column: 10, scope: !3726)
!3735 = !DILocation(line: 1051, column: 10, scope: !3716, inlinedAt: !3734)
!3736 = !DILocation(line: 1057, column: 3, scope: !3726)
!3737 = distinct !DISubprogram(name: "quote_n", scope: !677, file: !677, line: 1061, type: !3738, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!101, !57, !101}
!3740 = !{!3741, !3742}
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3737, file: !677, line: 1061, type: !57)
!3742 = !DILocalVariable(name: "arg", arg: 2, scope: !3737, file: !677, line: 1061, type: !101)
!3743 = !DILocation(line: 0, scope: !3737)
!3744 = !DILocation(line: 0, scope: !3716, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 1063, column: 10, scope: !3737)
!3746 = !DILocation(line: 1051, column: 10, scope: !3716, inlinedAt: !3745)
!3747 = !DILocation(line: 1063, column: 3, scope: !3737)
!3748 = distinct !DISubprogram(name: "quote", scope: !677, file: !677, line: 1067, type: !3749, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!101, !101}
!3751 = !{!3752}
!3752 = !DILocalVariable(name: "arg", arg: 1, scope: !3748, file: !677, line: 1067, type: !101)
!3753 = !DILocation(line: 0, scope: !3748)
!3754 = !DILocation(line: 0, scope: !3737, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 1069, column: 10, scope: !3748)
!3756 = !DILocation(line: 0, scope: !3716, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1063, column: 10, scope: !3737, inlinedAt: !3755)
!3758 = !DILocation(line: 1051, column: 10, scope: !3716, inlinedAt: !3757)
!3759 = !DILocation(line: 1069, column: 3, scope: !3748)
!3760 = distinct !DISubprogram(name: "safe_read", scope: !936, file: !936, line: 56, type: !3761, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !3764)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!978, !57, !3763, !976}
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !936, line: 49, baseType: !98)
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DILocalVariable(name: "fd", arg: 1, scope: !3760, file: !936, line: 56, type: !57)
!3766 = !DILocalVariable(name: "buf", arg: 2, scope: !3760, file: !936, line: 56, type: !3763)
!3767 = !DILocalVariable(name: "count", arg: 3, scope: !3760, file: !936, line: 56, type: !976)
!3768 = !DILocalVariable(name: "result", scope: !3769, file: !936, line: 60, type: !3772)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !936, line: 59, column: 5)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !936, line: 58, column: 3)
!3771 = distinct !DILexicalBlock(scope: !3760, file: !936, line: 58, column: 3)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3773, line: 108, baseType: !1426)
!3773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3774 = !DILocation(line: 0, scope: !3760)
!3775 = !DILocation(line: 58, column: 3, scope: !3760)
!3776 = !DILocation(line: 62, column: 11, scope: !3769)
!3777 = !DILocation(line: 60, column: 24, scope: !3769)
!3778 = !DILocation(line: 0, scope: !3769)
!3779 = !DILocation(line: 62, column: 13, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3769, file: !936, line: 62, column: 11)
!3781 = !DILocation(line: 64, column: 16, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3780, file: !936, line: 64, column: 16)
!3783 = !DILocation(line: 64, column: 16, scope: !3780)
!3784 = distinct !{!3784, !3785, !3786}
!3785 = !DILocation(line: 58, column: 3, scope: !3771)
!3786 = !DILocation(line: 70, column: 5, scope: !3771)
!3787 = !DILocation(line: 66, column: 22, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3782, file: !936, line: 66, column: 16)
!3789 = !DILocation(line: 0, scope: !3770)
!3790 = !DILocation(line: 71, column: 1, scope: !3760)
!3791 = distinct !DISubprogram(name: "mkstemp_safer", scope: !944, file: !944, line: 31, type: !3792, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!57, !59}
!3794 = !{!3795}
!3795 = !DILocalVariable(name: "templ", arg: 1, scope: !3791, file: !944, line: 31, type: !59)
!3796 = !DILocation(line: 0, scope: !3791)
!3797 = !DILocation(line: 33, column: 20, scope: !3791)
!3798 = !DILocation(line: 33, column: 10, scope: !3791)
!3799 = !DILocation(line: 33, column: 3, scope: !3791)
!3800 = !DISubprogram(name: "mkstemp", scope: !1229, file: !1229, line: 695, type: !3792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3801 = distinct !DISubprogram(name: "mkostemp_safer", scope: !944, file: !944, line: 40, type: !3802, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!57, !59, !57}
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "templ", arg: 1, scope: !3801, file: !944, line: 40, type: !59)
!3806 = !DILocalVariable(name: "flags", arg: 2, scope: !3801, file: !944, line: 40, type: !57)
!3807 = !DILocation(line: 0, scope: !3801)
!3808 = !DILocation(line: 42, column: 25, scope: !3801)
!3809 = !DILocation(line: 42, column: 10, scope: !3801)
!3810 = !DILocation(line: 42, column: 3, scope: !3801)
!3811 = !DISubprogram(name: "mkostemp", scope: !1229, file: !1229, line: 749, type: !3802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3812 = distinct !DISubprogram(name: "path_search", scope: !777, file: !777, line: 92, type: !3813, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!57, !59, !104, !101, !101, !215}
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3821, !3822, !3825, !3826}
!3816 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3812, file: !777, line: 92, type: !59)
!3817 = !DILocalVariable(name: "tmpl_len", arg: 2, scope: !3812, file: !777, line: 92, type: !104)
!3818 = !DILocalVariable(name: "dir", arg: 3, scope: !3812, file: !777, line: 92, type: !101)
!3819 = !DILocalVariable(name: "pfx", arg: 4, scope: !3812, file: !777, line: 92, type: !101)
!3820 = !DILocalVariable(name: "try_tmpdir", arg: 5, scope: !3812, file: !777, line: 93, type: !215)
!3821 = !DILocalVariable(name: "plen", scope: !3812, file: !777, line: 95, type: !104)
!3822 = !DILocalVariable(name: "d", scope: !3823, file: !777, line: 110, type: !101)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !777, line: 109, column: 5)
!3824 = distinct !DILexicalBlock(scope: !3812, file: !777, line: 108, column: 7)
!3825 = !DILocalVariable(name: "dlen", scope: !3812, file: !777, line: 143, type: !104)
!3826 = !DILocalVariable(name: "add_slash", scope: !3812, file: !777, line: 145, type: !215)
!3827 = distinct !DIAssignID()
!3828 = distinct !DIAssignID()
!3829 = distinct !DIAssignID()
!3830 = !DILocation(line: 0, scope: !3812)
!3831 = !DILocation(line: 96, column: 8, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3812, file: !777, line: 96, column: 7)
!3833 = !DILocation(line: 96, column: 12, scope: !3832)
!3834 = !DILocation(line: 96, column: 16, scope: !3832)
!3835 = !DILocation(line: 96, column: 7, scope: !3812)
!3836 = !DILocation(line: 103, column: 14, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3832, file: !777, line: 102, column: 5)
!3838 = !DILocation(line: 104, column: 11, scope: !3837)
!3839 = !DILocation(line: 0, scope: !3832)
!3840 = !DILocation(line: 108, column: 7, scope: !3812)
!3841 = !DILocation(line: 110, column: 23, scope: !3823)
!3842 = !DILocation(line: 0, scope: !3823)
!3843 = !DILocation(line: 111, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3823, file: !777, line: 111, column: 11)
!3845 = !DILocation(line: 111, column: 21, scope: !3844)
!3846 = !DILocalVariable(name: "buf", scope: !3847, file: !777, line: 81, type: !3850)
!3847 = distinct !DISubprogram(name: "direxists", scope: !777, file: !777, line: 79, type: !1362, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3848)
!3848 = !{!3849, !3846}
!3849 = !DILocalVariable(name: "dir", arg: 1, scope: !3847, file: !777, line: 79, type: !101)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3851, line: 26, size: 1152, elements: !3852)
!3851 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!3852 = !{!3853, !3855, !3857, !3859, !3861, !3863, !3865, !3866, !3867, !3868, !3870, !3872, !3880, !3881, !3882}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3850, file: !3851, line: 31, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !255, line: 145, baseType: !106)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3850, file: !3851, line: 36, baseType: !3856, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !255, line: 148, baseType: !106)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3850, file: !3851, line: 44, baseType: !3858, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !255, line: 151, baseType: !106)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3850, file: !3851, line: 45, baseType: !3860, size: 32, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !255, line: 150, baseType: !69)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3850, file: !3851, line: 47, baseType: !3862, size: 32, offset: 224)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !255, line: 146, baseType: !69)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3850, file: !3851, line: 48, baseType: !3864, size: 32, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !255, line: 147, baseType: !69)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3850, file: !3851, line: 50, baseType: !57, size: 32, offset: 288)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3850, file: !3851, line: 52, baseType: !3854, size: 64, offset: 320)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3850, file: !3851, line: 57, baseType: !254, size: 64, offset: 384)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3850, file: !3851, line: 61, baseType: !3869, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !255, line: 175, baseType: !256)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3850, file: !3851, line: 63, baseType: !3871, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !255, line: 180, baseType: !256)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3850, file: !3851, line: 74, baseType: !3873, size: 128, offset: 576)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3874, line: 11, size: 128, elements: !3875)
!3874 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3875 = !{!3876, !3878}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3873, file: !3874, line: 16, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !255, line: 160, baseType: !256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3873, file: !3874, line: 21, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !255, line: 197, baseType: !256)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3850, file: !3851, line: 75, baseType: !3873, size: 128, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3850, file: !3851, line: 76, baseType: !3873, size: 128, offset: 832)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3850, file: !3851, line: 89, baseType: !3883, size: 192, offset: 960)
!3883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3879, size: 192, elements: !157)
!3884 = !DILocation(line: 0, scope: !3847, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 111, column: 24, scope: !3844)
!3886 = !DILocation(line: 81, column: 3, scope: !3847, inlinedAt: !3885)
!3887 = !DILocation(line: 82, column: 10, scope: !3847, inlinedAt: !3885)
!3888 = !DILocation(line: 82, column: 43, scope: !3847, inlinedAt: !3885)
!3889 = !DILocation(line: 82, column: 48, scope: !3847, inlinedAt: !3885)
!3890 = !DILocation(line: 83, column: 1, scope: !3847, inlinedAt: !3885)
!3891 = !DILocation(line: 111, column: 11, scope: !3823)
!3892 = !DILocation(line: 113, column: 20, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3844, file: !777, line: 113, column: 16)
!3894 = !DILocation(line: 113, column: 28, scope: !3893)
!3895 = !DILocation(line: 0, scope: !3847, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 113, column: 31, scope: !3893)
!3897 = !DILocation(line: 81, column: 3, scope: !3847, inlinedAt: !3896)
!3898 = !DILocation(line: 82, column: 10, scope: !3847, inlinedAt: !3896)
!3899 = !DILocation(line: 82, column: 43, scope: !3847, inlinedAt: !3896)
!3900 = !DILocation(line: 82, column: 48, scope: !3847, inlinedAt: !3896)
!3901 = !DILocation(line: 83, column: 1, scope: !3847, inlinedAt: !3896)
!3902 = !DILocation(line: 113, column: 16, scope: !3844)
!3903 = !DILocation(line: 118, column: 11, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3812, file: !777, line: 118, column: 7)
!3905 = !DILocation(line: 118, column: 7, scope: !3812)
!3906 = !DILocation(line: 0, scope: !3847, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 132, column: 11, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !777, line: 132, column: 11)
!3909 = distinct !DILexicalBlock(scope: !3904, file: !777, line: 119, column: 5)
!3910 = !DILocation(line: 81, column: 3, scope: !3847, inlinedAt: !3907)
!3911 = !DILocation(line: 82, column: 10, scope: !3847, inlinedAt: !3907)
!3912 = !DILocation(line: 82, column: 43, scope: !3847, inlinedAt: !3907)
!3913 = !DILocation(line: 82, column: 48, scope: !3847, inlinedAt: !3907)
!3914 = !DILocation(line: 83, column: 1, scope: !3847, inlinedAt: !3907)
!3915 = !DILocation(line: 132, column: 11, scope: !3909)
!3916 = !DILocation(line: 138, column: 11, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !777, line: 137, column: 9)
!3918 = distinct !DILexicalBlock(scope: !3908, file: !777, line: 134, column: 16)
!3919 = !DILocation(line: 139, column: 11, scope: !3917)
!3920 = !DILocation(line: 143, column: 17, scope: !3812)
!3921 = !DILocation(line: 149, column: 20, scope: !3812)
!3922 = !DILocation(line: 149, column: 25, scope: !3812)
!3923 = !DILocation(line: 149, column: 29, scope: !3812)
!3924 = !DILocation(line: 153, column: 25, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3812, file: !777, line: 153, column: 7)
!3926 = !DILocation(line: 153, column: 23, scope: !3925)
!3927 = !DILocation(line: 153, column: 35, scope: !3925)
!3928 = !DILocation(line: 153, column: 46, scope: !3925)
!3929 = !DILocation(line: 153, column: 16, scope: !3925)
!3930 = !DILocation(line: 153, column: 7, scope: !3812)
!3931 = !DILocation(line: 155, column: 7, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !777, line: 154, column: 5)
!3933 = !DILocation(line: 156, column: 7, scope: !3932)
!3934 = !DILocalVariable(name: "__dest", arg: 1, scope: !3935, file: !1336, line: 26, type: !1339)
!3935 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3936)
!3936 = !{!3934, !3937, !3938}
!3937 = !DILocalVariable(name: "__src", arg: 2, scope: !3935, file: !1336, line: 26, type: !1252)
!3938 = !DILocalVariable(name: "__len", arg: 3, scope: !3935, file: !1336, line: 26, type: !104)
!3939 = !DILocation(line: 0, scope: !3935, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 159, column: 3, scope: !3812)
!3941 = !DILocation(line: 29, column: 10, scope: !3935, inlinedAt: !3940)
!3942 = !DILocation(line: 160, column: 3, scope: !3812)
!3943 = !DILocation(line: 161, column: 3, scope: !3812)
!3944 = !DILocation(line: 162, column: 1, scope: !3812)
!3945 = !DISubprogram(name: "secure_getenv", scope: !1229, file: !1229, line: 646, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = !DISubprogram(name: "stat", scope: !3947, file: !3947, line: 205, type: !3948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3947 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!57, !1095, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3951)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3952 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !777, file: !777, line: 160, type: !3953, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!57, !3955, !57, !106, !1095, null}
!3955 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!3956 = distinct !DISubprogram(name: "fd_safer", scope: !949, file: !949, line: 37, type: !1580, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3957)
!3957 = !{!3958, !3959, !3962}
!3958 = !DILocalVariable(name: "fd", arg: 1, scope: !3956, file: !949, line: 37, type: !57)
!3959 = !DILocalVariable(name: "f", scope: !3960, file: !949, line: 41, type: !57)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !949, line: 40, column: 5)
!3961 = distinct !DILexicalBlock(scope: !3956, file: !949, line: 39, column: 7)
!3962 = !DILocalVariable(name: "saved_errno", scope: !3960, file: !949, line: 42, type: !57)
!3963 = !DILocation(line: 0, scope: !3956)
!3964 = !DILocation(line: 39, column: 26, scope: !3961)
!3965 = !DILocation(line: 41, column: 15, scope: !3960)
!3966 = !DILocation(line: 0, scope: !3960)
!3967 = !DILocation(line: 42, column: 25, scope: !3960)
!3968 = !DILocation(line: 43, column: 7, scope: !3960)
!3969 = !DILocation(line: 44, column: 13, scope: !3960)
!3970 = !DILocation(line: 46, column: 5, scope: !3960)
!3971 = !DILocation(line: 48, column: 3, scope: !3956)
!3972 = distinct !DISubprogram(name: "version_etc_arn", scope: !786, file: !786, line: 61, type: !3973, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4009)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !3975, !101, !101, !101, !99, !104}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !3977)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3977, file: !232, line: 51, baseType: !57, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3977, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3977, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3977, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3977, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3977, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3977, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3977, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3977, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3977, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3977, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3977, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3977, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3977, file: !232, line: 70, baseType: !3993, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3977, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3977, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3977, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3977, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3977, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3977, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3977, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3977, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3977, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3977, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3977, file: !232, line: 93, baseType: !3993, size: 64, offset: 1344)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3977, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3977, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3977, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3977, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015}
!4010 = !DILocalVariable(name: "stream", arg: 1, scope: !3972, file: !786, line: 61, type: !3975)
!4011 = !DILocalVariable(name: "command_name", arg: 2, scope: !3972, file: !786, line: 62, type: !101)
!4012 = !DILocalVariable(name: "package", arg: 3, scope: !3972, file: !786, line: 62, type: !101)
!4013 = !DILocalVariable(name: "version", arg: 4, scope: !3972, file: !786, line: 63, type: !101)
!4014 = !DILocalVariable(name: "authors", arg: 5, scope: !3972, file: !786, line: 64, type: !99)
!4015 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3972, file: !786, line: 64, type: !104)
!4016 = !DILocation(line: 0, scope: !3972)
!4017 = !DILocation(line: 66, column: 7, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3972, file: !786, line: 66, column: 7)
!4019 = !DILocation(line: 66, column: 7, scope: !3972)
!4020 = !DILocation(line: 67, column: 5, scope: !4018)
!4021 = !DILocation(line: 69, column: 5, scope: !4018)
!4022 = !DILocation(line: 83, column: 3, scope: !3972)
!4023 = !DILocation(line: 85, column: 3, scope: !3972)
!4024 = !DILocation(line: 88, column: 3, scope: !3972)
!4025 = !DILocation(line: 95, column: 3, scope: !3972)
!4026 = !DILocation(line: 97, column: 3, scope: !3972)
!4027 = !DILocation(line: 105, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3972, file: !786, line: 98, column: 5)
!4029 = !DILocation(line: 106, column: 7, scope: !4028)
!4030 = !DILocation(line: 109, column: 7, scope: !4028)
!4031 = !DILocation(line: 110, column: 7, scope: !4028)
!4032 = !DILocation(line: 113, column: 7, scope: !4028)
!4033 = !DILocation(line: 115, column: 7, scope: !4028)
!4034 = !DILocation(line: 120, column: 7, scope: !4028)
!4035 = !DILocation(line: 122, column: 7, scope: !4028)
!4036 = !DILocation(line: 127, column: 7, scope: !4028)
!4037 = !DILocation(line: 129, column: 7, scope: !4028)
!4038 = !DILocation(line: 134, column: 7, scope: !4028)
!4039 = !DILocation(line: 137, column: 7, scope: !4028)
!4040 = !DILocation(line: 142, column: 7, scope: !4028)
!4041 = !DILocation(line: 145, column: 7, scope: !4028)
!4042 = !DILocation(line: 150, column: 7, scope: !4028)
!4043 = !DILocation(line: 154, column: 7, scope: !4028)
!4044 = !DILocation(line: 159, column: 7, scope: !4028)
!4045 = !DILocation(line: 163, column: 7, scope: !4028)
!4046 = !DILocation(line: 170, column: 7, scope: !4028)
!4047 = !DILocation(line: 174, column: 7, scope: !4028)
!4048 = !DILocation(line: 176, column: 1, scope: !3972)
!4049 = distinct !DISubprogram(name: "version_etc_ar", scope: !786, file: !786, line: 183, type: !4050, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !3975, !101, !101, !101, !99}
!4052 = !{!4053, !4054, !4055, !4056, !4057, !4058}
!4053 = !DILocalVariable(name: "stream", arg: 1, scope: !4049, file: !786, line: 183, type: !3975)
!4054 = !DILocalVariable(name: "command_name", arg: 2, scope: !4049, file: !786, line: 184, type: !101)
!4055 = !DILocalVariable(name: "package", arg: 3, scope: !4049, file: !786, line: 184, type: !101)
!4056 = !DILocalVariable(name: "version", arg: 4, scope: !4049, file: !786, line: 185, type: !101)
!4057 = !DILocalVariable(name: "authors", arg: 5, scope: !4049, file: !786, line: 185, type: !99)
!4058 = !DILocalVariable(name: "n_authors", scope: !4049, file: !786, line: 187, type: !104)
!4059 = !DILocation(line: 0, scope: !4049)
!4060 = !DILocation(line: 189, column: 8, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4049, file: !786, line: 189, column: 3)
!4062 = !DILocation(line: 189, scope: !4061)
!4063 = !DILocation(line: 189, column: 23, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4061, file: !786, line: 189, column: 3)
!4065 = !DILocation(line: 189, column: 3, scope: !4061)
!4066 = !DILocation(line: 189, column: 52, scope: !4064)
!4067 = distinct !{!4067, !4065, !4068, !1152}
!4068 = !DILocation(line: 190, column: 5, scope: !4061)
!4069 = !DILocation(line: 191, column: 3, scope: !4049)
!4070 = !DILocation(line: 192, column: 1, scope: !4049)
!4071 = distinct !DISubprogram(name: "version_etc_va", scope: !786, file: !786, line: 199, type: !4072, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4081)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !3975, !101, !101, !101, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4075, file: !786, line: 192, baseType: !69, size: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4075, file: !786, line: 192, baseType: !69, size: 32, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4075, file: !786, line: 192, baseType: !98, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4075, file: !786, line: 192, baseType: !98, size: 64, offset: 128)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088}
!4082 = !DILocalVariable(name: "stream", arg: 1, scope: !4071, file: !786, line: 199, type: !3975)
!4083 = !DILocalVariable(name: "command_name", arg: 2, scope: !4071, file: !786, line: 200, type: !101)
!4084 = !DILocalVariable(name: "package", arg: 3, scope: !4071, file: !786, line: 200, type: !101)
!4085 = !DILocalVariable(name: "version", arg: 4, scope: !4071, file: !786, line: 201, type: !101)
!4086 = !DILocalVariable(name: "authors", arg: 5, scope: !4071, file: !786, line: 201, type: !4074)
!4087 = !DILocalVariable(name: "n_authors", scope: !4071, file: !786, line: 203, type: !104)
!4088 = !DILocalVariable(name: "authtab", scope: !4071, file: !786, line: 204, type: !4089)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 640, elements: !122)
!4090 = distinct !DIAssignID()
!4091 = !DILocation(line: 0, scope: !4071)
!4092 = !DILocation(line: 204, column: 3, scope: !4071)
!4093 = !DILocation(line: 208, column: 35, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !786, line: 206, column: 3)
!4095 = distinct !DILexicalBlock(scope: !4071, file: !786, line: 206, column: 3)
!4096 = !DILocation(line: 208, column: 33, scope: !4094)
!4097 = !DILocation(line: 208, column: 67, scope: !4094)
!4098 = !DILocation(line: 206, column: 3, scope: !4095)
!4099 = !DILocation(line: 208, column: 14, scope: !4094)
!4100 = !DILocation(line: 0, scope: !4095)
!4101 = !DILocation(line: 211, column: 3, scope: !4071)
!4102 = !DILocation(line: 213, column: 1, scope: !4071)
!4103 = distinct !DISubprogram(name: "version_etc", scope: !786, file: !786, line: 230, type: !4104, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !3975, !101, !101, !101, null}
!4106 = !{!4107, !4108, !4109, !4110, !4111}
!4107 = !DILocalVariable(name: "stream", arg: 1, scope: !4103, file: !786, line: 230, type: !3975)
!4108 = !DILocalVariable(name: "command_name", arg: 2, scope: !4103, file: !786, line: 231, type: !101)
!4109 = !DILocalVariable(name: "package", arg: 3, scope: !4103, file: !786, line: 231, type: !101)
!4110 = !DILocalVariable(name: "version", arg: 4, scope: !4103, file: !786, line: 232, type: !101)
!4111 = !DILocalVariable(name: "authors", scope: !4103, file: !786, line: 234, type: !4112)
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1100, line: 52, baseType: !4113)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2128, line: 12, baseType: !4114)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !786, baseType: !4115)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4075, size: 192, elements: !117)
!4116 = distinct !DIAssignID()
!4117 = !DILocation(line: 0, scope: !4103)
!4118 = !DILocation(line: 234, column: 3, scope: !4103)
!4119 = !DILocation(line: 235, column: 3, scope: !4103)
!4120 = !DILocation(line: 236, column: 3, scope: !4103)
!4121 = !DILocation(line: 237, column: 3, scope: !4103)
!4122 = !DILocation(line: 238, column: 1, scope: !4103)
!4123 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !786, file: !786, line: 241, type: !632, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950)
!4124 = !DILocation(line: 243, column: 3, scope: !4123)
!4125 = !DILocation(line: 248, column: 3, scope: !4123)
!4126 = !DILocation(line: 254, column: 3, scope: !4123)
!4127 = !DILocation(line: 259, column: 3, scope: !4123)
!4128 = !DILocation(line: 261, column: 1, scope: !4123)
!4129 = distinct !DISubprogram(name: "xnrealloc", scope: !4130, file: !4130, line: 147, type: !4131, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4133)
!4130 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!98, !98, !104, !104}
!4133 = !{!4134, !4135, !4136}
!4134 = !DILocalVariable(name: "p", arg: 1, scope: !4129, file: !4130, line: 147, type: !98)
!4135 = !DILocalVariable(name: "n", arg: 2, scope: !4129, file: !4130, line: 147, type: !104)
!4136 = !DILocalVariable(name: "s", arg: 3, scope: !4129, file: !4130, line: 147, type: !104)
!4137 = !DILocation(line: 0, scope: !4129)
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4139, file: !957, line: 83, type: !98)
!4139 = distinct !DISubprogram(name: "xreallocarray", scope: !957, file: !957, line: 83, type: !4131, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4140)
!4140 = !{!4138, !4141, !4142}
!4141 = !DILocalVariable(name: "n", arg: 2, scope: !4139, file: !957, line: 83, type: !104)
!4142 = !DILocalVariable(name: "s", arg: 3, scope: !4139, file: !957, line: 83, type: !104)
!4143 = !DILocation(line: 0, scope: !4139, inlinedAt: !4144)
!4144 = distinct !DILocation(line: 149, column: 10, scope: !4129)
!4145 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4144)
!4146 = !DILocalVariable(name: "p", arg: 1, scope: !4147, file: !957, line: 37, type: !98)
!4147 = distinct !DISubprogram(name: "check_nonnull", scope: !957, file: !957, line: 37, type: !4148, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!98, !98}
!4150 = !{!4146}
!4151 = !DILocation(line: 0, scope: !4147, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4144)
!4153 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4152)
!4154 = distinct !DILexicalBlock(scope: !4147, file: !957, line: 39, column: 7)
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
!4166 = distinct !DISubprogram(name: "xmalloc", scope: !957, file: !957, line: 47, type: !4167, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!98, !104}
!4169 = !{!4170}
!4170 = !DILocalVariable(name: "s", arg: 1, scope: !4166, file: !957, line: 47, type: !104)
!4171 = !DILocation(line: 0, scope: !4166)
!4172 = !DILocation(line: 49, column: 25, scope: !4166)
!4173 = !DILocation(line: 0, scope: !4147, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 49, column: 10, scope: !4166)
!4175 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4174)
!4176 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4174)
!4177 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4174)
!4178 = !DILocation(line: 49, column: 3, scope: !4166)
!4179 = distinct !DISubprogram(name: "ximalloc", scope: !957, file: !957, line: 53, type: !4180, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!98, !976}
!4182 = !{!4183}
!4183 = !DILocalVariable(name: "s", arg: 1, scope: !4179, file: !957, line: 53, type: !976)
!4184 = !DILocation(line: 0, scope: !4179)
!4185 = !DILocalVariable(name: "s", arg: 1, scope: !4186, file: !4187, line: 55, type: !976)
!4186 = distinct !DISubprogram(name: "imalloc", scope: !4187, file: !4187, line: 55, type: !4180, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4188)
!4187 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4188 = !{!4185}
!4189 = !DILocation(line: 0, scope: !4186, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 55, column: 25, scope: !4179)
!4191 = !DILocation(line: 57, column: 26, scope: !4186, inlinedAt: !4190)
!4192 = !DILocation(line: 0, scope: !4147, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 55, column: 10, scope: !4179)
!4194 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4193)
!4195 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4193)
!4196 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4193)
!4197 = !DILocation(line: 55, column: 3, scope: !4179)
!4198 = distinct !DISubprogram(name: "xcharalloc", scope: !957, file: !957, line: 59, type: !4199, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!59, !104}
!4201 = !{!4202}
!4202 = !DILocalVariable(name: "n", arg: 1, scope: !4198, file: !957, line: 59, type: !104)
!4203 = !DILocation(line: 0, scope: !4198)
!4204 = !DILocation(line: 0, scope: !4166, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 61, column: 10, scope: !4198)
!4206 = !DILocation(line: 49, column: 25, scope: !4166, inlinedAt: !4205)
!4207 = !DILocation(line: 0, scope: !4147, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 49, column: 10, scope: !4166, inlinedAt: !4205)
!4209 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4208)
!4210 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4208)
!4211 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4208)
!4212 = !DILocation(line: 61, column: 3, scope: !4198)
!4213 = distinct !DISubprogram(name: "xrealloc", scope: !957, file: !957, line: 68, type: !1826, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4214)
!4214 = !{!4215, !4216}
!4215 = !DILocalVariable(name: "p", arg: 1, scope: !4213, file: !957, line: 68, type: !98)
!4216 = !DILocalVariable(name: "s", arg: 2, scope: !4213, file: !957, line: 68, type: !104)
!4217 = !DILocation(line: 0, scope: !4213)
!4218 = !DILocalVariable(name: "ptr", arg: 1, scope: !4219, file: !1825, line: 2057, type: !98)
!4219 = distinct !DISubprogram(name: "rpl_realloc", scope: !1825, file: !1825, line: 2057, type: !1826, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4220)
!4220 = !{!4218, !4221}
!4221 = !DILocalVariable(name: "size", arg: 2, scope: !4219, file: !1825, line: 2057, type: !104)
!4222 = !DILocation(line: 0, scope: !4219, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 70, column: 25, scope: !4213)
!4224 = !DILocation(line: 2059, column: 24, scope: !4219, inlinedAt: !4223)
!4225 = !DILocation(line: 2059, column: 10, scope: !4219, inlinedAt: !4223)
!4226 = !DILocation(line: 0, scope: !4147, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 70, column: 10, scope: !4213)
!4228 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4227)
!4229 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4227)
!4230 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4227)
!4231 = !DILocation(line: 70, column: 3, scope: !4213)
!4232 = distinct !DISubprogram(name: "xirealloc", scope: !957, file: !957, line: 74, type: !4233, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4235)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!98, !98, !976}
!4235 = !{!4236, !4237}
!4236 = !DILocalVariable(name: "p", arg: 1, scope: !4232, file: !957, line: 74, type: !98)
!4237 = !DILocalVariable(name: "s", arg: 2, scope: !4232, file: !957, line: 74, type: !976)
!4238 = !DILocation(line: 0, scope: !4232)
!4239 = !DILocalVariable(name: "p", arg: 1, scope: !4240, file: !4187, line: 66, type: !98)
!4240 = distinct !DISubprogram(name: "irealloc", scope: !4187, file: !4187, line: 66, type: !4233, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4241)
!4241 = !{!4239, !4242}
!4242 = !DILocalVariable(name: "s", arg: 2, scope: !4240, file: !4187, line: 66, type: !976)
!4243 = !DILocation(line: 0, scope: !4240, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 76, column: 25, scope: !4232)
!4245 = !DILocation(line: 0, scope: !4219, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 68, column: 26, scope: !4240, inlinedAt: !4244)
!4247 = !DILocation(line: 2059, column: 24, scope: !4219, inlinedAt: !4246)
!4248 = !DILocation(line: 2059, column: 10, scope: !4219, inlinedAt: !4246)
!4249 = !DILocation(line: 0, scope: !4147, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 76, column: 10, scope: !4232)
!4251 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4250)
!4252 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4250)
!4253 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4250)
!4254 = !DILocation(line: 76, column: 3, scope: !4232)
!4255 = distinct !DISubprogram(name: "xireallocarray", scope: !957, file: !957, line: 89, type: !4256, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!98, !98, !976, !976}
!4258 = !{!4259, !4260, !4261}
!4259 = !DILocalVariable(name: "p", arg: 1, scope: !4255, file: !957, line: 89, type: !98)
!4260 = !DILocalVariable(name: "n", arg: 2, scope: !4255, file: !957, line: 89, type: !976)
!4261 = !DILocalVariable(name: "s", arg: 3, scope: !4255, file: !957, line: 89, type: !976)
!4262 = !DILocation(line: 0, scope: !4255)
!4263 = !DILocalVariable(name: "p", arg: 1, scope: !4264, file: !4187, line: 98, type: !98)
!4264 = distinct !DISubprogram(name: "ireallocarray", scope: !4187, file: !4187, line: 98, type: !4256, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4265)
!4265 = !{!4263, !4266, !4267}
!4266 = !DILocalVariable(name: "n", arg: 2, scope: !4264, file: !4187, line: 98, type: !976)
!4267 = !DILocalVariable(name: "s", arg: 3, scope: !4264, file: !4187, line: 98, type: !976)
!4268 = !DILocation(line: 0, scope: !4264, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 91, column: 25, scope: !4255)
!4270 = !DILocation(line: 101, column: 13, scope: !4264, inlinedAt: !4269)
!4271 = !DILocation(line: 0, scope: !4147, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 91, column: 10, scope: !4255)
!4273 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4272)
!4274 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4272)
!4275 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4272)
!4276 = !DILocation(line: 91, column: 3, scope: !4255)
!4277 = distinct !DISubprogram(name: "xnmalloc", scope: !957, file: !957, line: 98, type: !4278, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!98, !104, !104}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "n", arg: 1, scope: !4277, file: !957, line: 98, type: !104)
!4282 = !DILocalVariable(name: "s", arg: 2, scope: !4277, file: !957, line: 98, type: !104)
!4283 = !DILocation(line: 0, scope: !4277)
!4284 = !DILocation(line: 0, scope: !4139, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 100, column: 10, scope: !4277)
!4286 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4285)
!4287 = !DILocation(line: 0, scope: !4147, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4285)
!4289 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4288)
!4290 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4288)
!4291 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4288)
!4292 = !DILocation(line: 100, column: 3, scope: !4277)
!4293 = distinct !DISubprogram(name: "xinmalloc", scope: !957, file: !957, line: 104, type: !4294, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!98, !976, !976}
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !957, line: 104, type: !976)
!4298 = !DILocalVariable(name: "s", arg: 2, scope: !4293, file: !957, line: 104, type: !976)
!4299 = !DILocation(line: 0, scope: !4293)
!4300 = !DILocation(line: 0, scope: !4255, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 106, column: 10, scope: !4293)
!4302 = !DILocation(line: 0, scope: !4264, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 91, column: 25, scope: !4255, inlinedAt: !4301)
!4304 = !DILocation(line: 101, column: 13, scope: !4264, inlinedAt: !4303)
!4305 = !DILocation(line: 0, scope: !4147, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 91, column: 10, scope: !4255, inlinedAt: !4301)
!4307 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4306)
!4308 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4306)
!4309 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4306)
!4310 = !DILocation(line: 106, column: 3, scope: !4293)
!4311 = distinct !DISubprogram(name: "x2realloc", scope: !957, file: !957, line: 116, type: !4312, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!98, !98, !963}
!4314 = !{!4315, !4316}
!4315 = !DILocalVariable(name: "p", arg: 1, scope: !4311, file: !957, line: 116, type: !98)
!4316 = !DILocalVariable(name: "ps", arg: 2, scope: !4311, file: !957, line: 116, type: !963)
!4317 = !DILocation(line: 0, scope: !4311)
!4318 = !DILocation(line: 0, scope: !960, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 118, column: 10, scope: !4311)
!4320 = !DILocation(line: 178, column: 14, scope: !960, inlinedAt: !4319)
!4321 = !DILocation(line: 180, column: 9, scope: !4322, inlinedAt: !4319)
!4322 = distinct !DILexicalBlock(scope: !960, file: !957, line: 180, column: 7)
!4323 = !DILocation(line: 180, column: 7, scope: !960, inlinedAt: !4319)
!4324 = !DILocation(line: 182, column: 13, scope: !4325, inlinedAt: !4319)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !957, line: 182, column: 11)
!4326 = distinct !DILexicalBlock(scope: !4322, file: !957, line: 181, column: 5)
!4327 = !DILocation(line: 182, column: 11, scope: !4326, inlinedAt: !4319)
!4328 = !DILocation(line: 197, column: 11, scope: !4329, inlinedAt: !4319)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !957, line: 197, column: 11)
!4330 = distinct !DILexicalBlock(scope: !4322, file: !957, line: 195, column: 5)
!4331 = !DILocation(line: 197, column: 11, scope: !4330, inlinedAt: !4319)
!4332 = !DILocation(line: 198, column: 9, scope: !4329, inlinedAt: !4319)
!4333 = !DILocation(line: 0, scope: !4139, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 201, column: 7, scope: !960, inlinedAt: !4319)
!4335 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4334)
!4336 = !DILocation(line: 0, scope: !4147, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4334)
!4338 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4337)
!4339 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4337)
!4340 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4337)
!4341 = !DILocation(line: 202, column: 7, scope: !960, inlinedAt: !4319)
!4342 = !DILocation(line: 118, column: 3, scope: !4311)
!4343 = !DILocation(line: 0, scope: !960)
!4344 = !DILocation(line: 178, column: 14, scope: !960)
!4345 = !DILocation(line: 180, column: 9, scope: !4322)
!4346 = !DILocation(line: 180, column: 7, scope: !960)
!4347 = !DILocation(line: 182, column: 13, scope: !4325)
!4348 = !DILocation(line: 182, column: 11, scope: !4326)
!4349 = !DILocation(line: 190, column: 30, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4325, file: !957, line: 183, column: 9)
!4351 = !DILocation(line: 191, column: 16, scope: !4350)
!4352 = !DILocation(line: 191, column: 13, scope: !4350)
!4353 = !DILocation(line: 192, column: 9, scope: !4350)
!4354 = !DILocation(line: 197, column: 11, scope: !4329)
!4355 = !DILocation(line: 197, column: 11, scope: !4330)
!4356 = !DILocation(line: 198, column: 9, scope: !4329)
!4357 = !DILocation(line: 0, scope: !4139, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 201, column: 7, scope: !960)
!4359 = !DILocation(line: 85, column: 25, scope: !4139, inlinedAt: !4358)
!4360 = !DILocation(line: 0, scope: !4147, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 85, column: 10, scope: !4139, inlinedAt: !4358)
!4362 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4361)
!4363 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4361)
!4364 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4361)
!4365 = !DILocation(line: 202, column: 7, scope: !960)
!4366 = !DILocation(line: 203, column: 3, scope: !960)
!4367 = !DILocation(line: 0, scope: !972)
!4368 = !DILocation(line: 230, column: 14, scope: !972)
!4369 = !DILocation(line: 238, column: 7, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !972, file: !957, line: 238, column: 7)
!4371 = !DILocation(line: 238, column: 7, scope: !972)
!4372 = !DILocation(line: 240, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !972, file: !957, line: 240, column: 7)
!4374 = !DILocation(line: 240, column: 18, scope: !4373)
!4375 = !DILocation(line: 253, column: 8, scope: !972)
!4376 = !DILocation(line: 256, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !972, file: !957, line: 256, column: 7)
!4378 = !DILocation(line: 256, column: 7, scope: !972)
!4379 = !DILocation(line: 258, column: 27, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !957, line: 257, column: 5)
!4381 = !DILocation(line: 259, column: 50, scope: !4380)
!4382 = !DILocation(line: 259, column: 32, scope: !4380)
!4383 = !DILocation(line: 260, column: 5, scope: !4380)
!4384 = !DILocation(line: 262, column: 9, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !972, file: !957, line: 262, column: 7)
!4386 = !DILocation(line: 262, column: 7, scope: !972)
!4387 = !DILocation(line: 263, column: 9, scope: !4385)
!4388 = !DILocation(line: 263, column: 5, scope: !4385)
!4389 = !DILocation(line: 264, column: 9, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !972, file: !957, line: 264, column: 7)
!4391 = !DILocation(line: 264, column: 14, scope: !4390)
!4392 = !DILocation(line: 265, column: 7, scope: !4390)
!4393 = !DILocation(line: 265, column: 11, scope: !4390)
!4394 = !DILocation(line: 266, column: 11, scope: !4390)
!4395 = !DILocation(line: 267, column: 14, scope: !4390)
!4396 = !DILocation(line: 264, column: 7, scope: !972)
!4397 = !DILocation(line: 268, column: 5, scope: !4390)
!4398 = !DILocation(line: 0, scope: !4213, inlinedAt: !4399)
!4399 = distinct !DILocation(line: 269, column: 8, scope: !972)
!4400 = !DILocation(line: 0, scope: !4219, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 70, column: 25, scope: !4213, inlinedAt: !4399)
!4402 = !DILocation(line: 2059, column: 24, scope: !4219, inlinedAt: !4401)
!4403 = !DILocation(line: 2059, column: 10, scope: !4219, inlinedAt: !4401)
!4404 = !DILocation(line: 0, scope: !4147, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 70, column: 10, scope: !4213, inlinedAt: !4399)
!4406 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4405)
!4407 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4405)
!4408 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4405)
!4409 = !DILocation(line: 270, column: 7, scope: !972)
!4410 = !DILocation(line: 271, column: 3, scope: !972)
!4411 = distinct !DISubprogram(name: "xzalloc", scope: !957, file: !957, line: 279, type: !4167, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4412)
!4412 = !{!4413}
!4413 = !DILocalVariable(name: "s", arg: 1, scope: !4411, file: !957, line: 279, type: !104)
!4414 = !DILocation(line: 0, scope: !4411)
!4415 = !DILocalVariable(name: "n", arg: 1, scope: !4416, file: !957, line: 294, type: !104)
!4416 = distinct !DISubprogram(name: "xcalloc", scope: !957, file: !957, line: 294, type: !4278, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4417)
!4417 = !{!4415, !4418}
!4418 = !DILocalVariable(name: "s", arg: 2, scope: !4416, file: !957, line: 294, type: !104)
!4419 = !DILocation(line: 0, scope: !4416, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 281, column: 10, scope: !4411)
!4421 = !DILocation(line: 296, column: 25, scope: !4416, inlinedAt: !4420)
!4422 = !DILocation(line: 0, scope: !4147, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 296, column: 10, scope: !4416, inlinedAt: !4420)
!4424 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4423)
!4425 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4423)
!4426 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4423)
!4427 = !DILocation(line: 281, column: 3, scope: !4411)
!4428 = !DISubprogram(name: "calloc", scope: !1229, file: !1229, line: 543, type: !4278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4429 = !DILocation(line: 0, scope: !4416)
!4430 = !DILocation(line: 296, column: 25, scope: !4416)
!4431 = !DILocation(line: 0, scope: !4147, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 296, column: 10, scope: !4416)
!4433 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4432)
!4434 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4432)
!4435 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4432)
!4436 = !DILocation(line: 296, column: 3, scope: !4416)
!4437 = distinct !DISubprogram(name: "xizalloc", scope: !957, file: !957, line: 285, type: !4180, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4438)
!4438 = !{!4439}
!4439 = !DILocalVariable(name: "s", arg: 1, scope: !4437, file: !957, line: 285, type: !976)
!4440 = !DILocation(line: 0, scope: !4437)
!4441 = !DILocalVariable(name: "n", arg: 1, scope: !4442, file: !957, line: 300, type: !976)
!4442 = distinct !DISubprogram(name: "xicalloc", scope: !957, file: !957, line: 300, type: !4294, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4443)
!4443 = !{!4441, !4444}
!4444 = !DILocalVariable(name: "s", arg: 2, scope: !4442, file: !957, line: 300, type: !976)
!4445 = !DILocation(line: 0, scope: !4442, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 287, column: 10, scope: !4437)
!4447 = !DILocalVariable(name: "n", arg: 1, scope: !4448, file: !4187, line: 77, type: !976)
!4448 = distinct !DISubprogram(name: "icalloc", scope: !4187, file: !4187, line: 77, type: !4294, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4449)
!4449 = !{!4447, !4450}
!4450 = !DILocalVariable(name: "s", arg: 2, scope: !4448, file: !4187, line: 77, type: !976)
!4451 = !DILocation(line: 0, scope: !4448, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 302, column: 25, scope: !4442, inlinedAt: !4446)
!4453 = !DILocation(line: 91, column: 10, scope: !4448, inlinedAt: !4452)
!4454 = !DILocation(line: 0, scope: !4147, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 302, column: 10, scope: !4442, inlinedAt: !4446)
!4456 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4455)
!4457 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4455)
!4458 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4455)
!4459 = !DILocation(line: 287, column: 3, scope: !4437)
!4460 = !DILocation(line: 0, scope: !4442)
!4461 = !DILocation(line: 0, scope: !4448, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 302, column: 25, scope: !4442)
!4463 = !DILocation(line: 91, column: 10, scope: !4448, inlinedAt: !4462)
!4464 = !DILocation(line: 0, scope: !4147, inlinedAt: !4465)
!4465 = distinct !DILocation(line: 302, column: 10, scope: !4442)
!4466 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4465)
!4467 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4465)
!4468 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4465)
!4469 = !DILocation(line: 302, column: 3, scope: !4442)
!4470 = distinct !DISubprogram(name: "xmemdup", scope: !957, file: !957, line: 310, type: !4471, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!98, !1253, !104}
!4473 = !{!4474, !4475}
!4474 = !DILocalVariable(name: "p", arg: 1, scope: !4470, file: !957, line: 310, type: !1253)
!4475 = !DILocalVariable(name: "s", arg: 2, scope: !4470, file: !957, line: 310, type: !104)
!4476 = !DILocation(line: 0, scope: !4470)
!4477 = !DILocation(line: 0, scope: !4166, inlinedAt: !4478)
!4478 = distinct !DILocation(line: 312, column: 18, scope: !4470)
!4479 = !DILocation(line: 49, column: 25, scope: !4166, inlinedAt: !4478)
!4480 = !DILocation(line: 0, scope: !4147, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 49, column: 10, scope: !4166, inlinedAt: !4478)
!4482 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4481)
!4483 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4481)
!4484 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4481)
!4485 = !DILocalVariable(name: "__dest", arg: 1, scope: !4486, file: !1336, line: 26, type: !1339)
!4486 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4487)
!4487 = !{!4485, !4488, !4489}
!4488 = !DILocalVariable(name: "__src", arg: 2, scope: !4486, file: !1336, line: 26, type: !1252)
!4489 = !DILocalVariable(name: "__len", arg: 3, scope: !4486, file: !1336, line: 26, type: !104)
!4490 = !DILocation(line: 0, scope: !4486, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 312, column: 10, scope: !4470)
!4492 = !DILocation(line: 29, column: 10, scope: !4486, inlinedAt: !4491)
!4493 = !DILocation(line: 312, column: 3, scope: !4470)
!4494 = distinct !DISubprogram(name: "ximemdup", scope: !957, file: !957, line: 316, type: !4495, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4497)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!98, !1253, !976}
!4497 = !{!4498, !4499}
!4498 = !DILocalVariable(name: "p", arg: 1, scope: !4494, file: !957, line: 316, type: !1253)
!4499 = !DILocalVariable(name: "s", arg: 2, scope: !4494, file: !957, line: 316, type: !976)
!4500 = !DILocation(line: 0, scope: !4494)
!4501 = !DILocation(line: 0, scope: !4179, inlinedAt: !4502)
!4502 = distinct !DILocation(line: 318, column: 18, scope: !4494)
!4503 = !DILocation(line: 0, scope: !4186, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 55, column: 25, scope: !4179, inlinedAt: !4502)
!4505 = !DILocation(line: 57, column: 26, scope: !4186, inlinedAt: !4504)
!4506 = !DILocation(line: 0, scope: !4147, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 55, column: 10, scope: !4179, inlinedAt: !4502)
!4508 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4507)
!4509 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4507)
!4510 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4507)
!4511 = !DILocation(line: 0, scope: !4486, inlinedAt: !4512)
!4512 = distinct !DILocation(line: 318, column: 10, scope: !4494)
!4513 = !DILocation(line: 29, column: 10, scope: !4486, inlinedAt: !4512)
!4514 = !DILocation(line: 318, column: 3, scope: !4494)
!4515 = distinct !DISubprogram(name: "ximemdup0", scope: !957, file: !957, line: 325, type: !4516, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4518)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!59, !1253, !976}
!4518 = !{!4519, !4520, !4521}
!4519 = !DILocalVariable(name: "p", arg: 1, scope: !4515, file: !957, line: 325, type: !1253)
!4520 = !DILocalVariable(name: "s", arg: 2, scope: !4515, file: !957, line: 325, type: !976)
!4521 = !DILocalVariable(name: "result", scope: !4515, file: !957, line: 327, type: !59)
!4522 = !DILocation(line: 0, scope: !4515)
!4523 = !DILocation(line: 327, column: 30, scope: !4515)
!4524 = !DILocation(line: 0, scope: !4179, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 327, column: 18, scope: !4515)
!4526 = !DILocation(line: 0, scope: !4186, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 55, column: 25, scope: !4179, inlinedAt: !4525)
!4528 = !DILocation(line: 57, column: 26, scope: !4186, inlinedAt: !4527)
!4529 = !DILocation(line: 0, scope: !4147, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 55, column: 10, scope: !4179, inlinedAt: !4525)
!4531 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4530)
!4532 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4530)
!4533 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4530)
!4534 = !DILocation(line: 328, column: 3, scope: !4515)
!4535 = !DILocation(line: 328, column: 13, scope: !4515)
!4536 = !DILocation(line: 0, scope: !4486, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 329, column: 10, scope: !4515)
!4538 = !DILocation(line: 29, column: 10, scope: !4486, inlinedAt: !4537)
!4539 = !DILocation(line: 329, column: 3, scope: !4515)
!4540 = distinct !DISubprogram(name: "xstrdup", scope: !957, file: !957, line: 335, type: !1231, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !956, retainedNodes: !4541)
!4541 = !{!4542}
!4542 = !DILocalVariable(name: "string", arg: 1, scope: !4540, file: !957, line: 335, type: !101)
!4543 = !DILocation(line: 0, scope: !4540)
!4544 = !DILocation(line: 337, column: 27, scope: !4540)
!4545 = !DILocation(line: 337, column: 43, scope: !4540)
!4546 = !DILocation(line: 0, scope: !4470, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 337, column: 10, scope: !4540)
!4548 = !DILocation(line: 0, scope: !4166, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 312, column: 18, scope: !4470, inlinedAt: !4547)
!4550 = !DILocation(line: 49, column: 25, scope: !4166, inlinedAt: !4549)
!4551 = !DILocation(line: 0, scope: !4147, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 49, column: 10, scope: !4166, inlinedAt: !4549)
!4553 = !DILocation(line: 39, column: 8, scope: !4154, inlinedAt: !4552)
!4554 = !DILocation(line: 39, column: 7, scope: !4147, inlinedAt: !4552)
!4555 = !DILocation(line: 40, column: 5, scope: !4154, inlinedAt: !4552)
!4556 = !DILocation(line: 0, scope: !4486, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 312, column: 10, scope: !4470, inlinedAt: !4547)
!4558 = !DILocation(line: 29, column: 10, scope: !4486, inlinedAt: !4557)
!4559 = !DILocation(line: 337, column: 3, scope: !4540)
!4560 = distinct !DISubprogram(name: "xalloc_die", scope: !882, file: !882, line: 32, type: !632, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !4561)
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "__errstatus", scope: !4563, file: !882, line: 34, type: !4564)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !882, line: 34, column: 3)
!4564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4565 = !DILocation(line: 34, column: 3, scope: !4563)
!4566 = !DILocation(line: 0, scope: !4563)
!4567 = !DILocation(line: 40, column: 3, scope: !4560)
!4568 = distinct !DISubprogram(name: "close_stream", scope: !994, file: !994, line: 55, type: !4569, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !4605)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!57, !4571}
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4573)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4574)
!4574 = !{!4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4573, file: !232, line: 51, baseType: !57, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4573, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4573, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4573, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4573, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4573, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4573, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4573, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4573, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4573, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4573, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4573, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4573, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4573, file: !232, line: 70, baseType: !4589, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4573, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4573, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4573, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4573, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4573, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4573, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4573, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4573, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4573, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4573, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4573, file: !232, line: 93, baseType: !4589, size: 64, offset: 1344)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4573, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4573, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4573, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4573, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4605 = !{!4606, !4607, !4609, !4610}
!4606 = !DILocalVariable(name: "stream", arg: 1, scope: !4568, file: !994, line: 55, type: !4571)
!4607 = !DILocalVariable(name: "some_pending", scope: !4568, file: !994, line: 57, type: !4608)
!4608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4609 = !DILocalVariable(name: "prev_fail", scope: !4568, file: !994, line: 58, type: !4608)
!4610 = !DILocalVariable(name: "fclose_fail", scope: !4568, file: !994, line: 59, type: !4608)
!4611 = !DILocation(line: 0, scope: !4568)
!4612 = !DILocation(line: 57, column: 30, scope: !4568)
!4613 = !DILocalVariable(name: "__stream", arg: 1, scope: !4614, file: !2088, line: 135, type: !4571)
!4614 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2088, file: !2088, line: 135, type: !4569, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !4615)
!4615 = !{!4613}
!4616 = !DILocation(line: 0, scope: !4614, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 58, column: 27, scope: !4568)
!4618 = !DILocation(line: 137, column: 10, scope: !4614, inlinedAt: !4617)
!4619 = !DILocation(line: 58, column: 43, scope: !4568)
!4620 = !DILocation(line: 59, column: 29, scope: !4568)
!4621 = !DILocation(line: 59, column: 45, scope: !4568)
!4622 = !DILocation(line: 69, column: 17, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4568, file: !994, line: 69, column: 7)
!4624 = !DILocation(line: 57, column: 50, scope: !4568)
!4625 = !DILocation(line: 69, column: 33, scope: !4623)
!4626 = !DILocation(line: 69, column: 53, scope: !4623)
!4627 = !DILocation(line: 69, column: 59, scope: !4623)
!4628 = !DILocation(line: 69, column: 7, scope: !4568)
!4629 = !DILocation(line: 71, column: 11, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4623, file: !994, line: 70, column: 5)
!4631 = !DILocation(line: 72, column: 9, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4630, file: !994, line: 71, column: 11)
!4633 = !DILocation(line: 72, column: 15, scope: !4632)
!4634 = !DILocation(line: 77, column: 1, scope: !4568)
!4635 = !DISubprogram(name: "__fpending", scope: !2228, file: !2228, line: 75, type: !4636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!104, !4571}
!4638 = distinct !DISubprogram(name: "rpl_fclose", scope: !996, file: !996, line: 58, type: !4639, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !995, retainedNodes: !4675)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!57, !4641}
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4643)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4643, file: !232, line: 51, baseType: !57, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4643, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4643, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4643, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4643, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4643, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4643, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4643, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4643, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4643, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4643, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4643, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4643, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4643, file: !232, line: 70, baseType: !4659, size: 64, offset: 832)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4643, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4643, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4643, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4643, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4643, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4643, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4643, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4643, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4643, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4643, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4643, file: !232, line: 93, baseType: !4659, size: 64, offset: 1344)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4643, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4643, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4643, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4643, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DILocalVariable(name: "fp", arg: 1, scope: !4638, file: !996, line: 58, type: !4641)
!4677 = !DILocalVariable(name: "saved_errno", scope: !4638, file: !996, line: 60, type: !57)
!4678 = !DILocalVariable(name: "fd", scope: !4638, file: !996, line: 63, type: !57)
!4679 = !DILocalVariable(name: "result", scope: !4638, file: !996, line: 74, type: !57)
!4680 = !DILocation(line: 0, scope: !4638)
!4681 = !DILocation(line: 63, column: 12, scope: !4638)
!4682 = !DILocation(line: 64, column: 10, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4638, file: !996, line: 64, column: 7)
!4684 = !DILocation(line: 64, column: 7, scope: !4638)
!4685 = !DILocation(line: 65, column: 12, scope: !4683)
!4686 = !DILocation(line: 65, column: 5, scope: !4683)
!4687 = !DILocation(line: 70, column: 9, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4638, file: !996, line: 70, column: 7)
!4689 = !DILocation(line: 70, column: 23, scope: !4688)
!4690 = !DILocation(line: 70, column: 33, scope: !4688)
!4691 = !DILocation(line: 70, column: 26, scope: !4688)
!4692 = !DILocation(line: 70, column: 59, scope: !4688)
!4693 = !DILocation(line: 71, column: 7, scope: !4688)
!4694 = !DILocation(line: 71, column: 10, scope: !4688)
!4695 = !DILocation(line: 70, column: 7, scope: !4638)
!4696 = !DILocation(line: 100, column: 12, scope: !4638)
!4697 = !DILocation(line: 105, column: 7, scope: !4638)
!4698 = !DILocation(line: 72, column: 19, scope: !4688)
!4699 = !DILocation(line: 105, column: 19, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4638, file: !996, line: 105, column: 7)
!4701 = !DILocation(line: 107, column: 13, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4700, file: !996, line: 106, column: 5)
!4703 = !DILocation(line: 109, column: 5, scope: !4702)
!4704 = !DILocation(line: 112, column: 1, scope: !4638)
!4705 = !DISubprogram(name: "fclose", scope: !1100, file: !1100, line: 178, type: !4639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4706 = !DISubprogram(name: "__freading", scope: !2228, file: !2228, line: 51, type: !4639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4707 = distinct !DISubprogram(name: "fd_safer_flag", scope: !998, file: !998, line: 40, type: !909, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !4708)
!4708 = !{!4709, !4710, !4711, !4714}
!4709 = !DILocalVariable(name: "fd", arg: 1, scope: !4707, file: !998, line: 40, type: !57)
!4710 = !DILocalVariable(name: "flag", arg: 2, scope: !4707, file: !998, line: 40, type: !57)
!4711 = !DILocalVariable(name: "f", scope: !4712, file: !998, line: 44, type: !57)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !998, line: 43, column: 5)
!4713 = distinct !DILexicalBlock(scope: !4707, file: !998, line: 42, column: 7)
!4714 = !DILocalVariable(name: "saved_errno", scope: !4712, file: !998, line: 45, type: !57)
!4715 = !DILocation(line: 0, scope: !4707)
!4716 = !DILocation(line: 42, column: 26, scope: !4713)
!4717 = !DILocation(line: 44, column: 15, scope: !4712)
!4718 = !DILocation(line: 0, scope: !4712)
!4719 = !DILocation(line: 45, column: 25, scope: !4712)
!4720 = !DILocation(line: 46, column: 7, scope: !4712)
!4721 = !DILocation(line: 47, column: 13, scope: !4712)
!4722 = !DILocation(line: 49, column: 5, scope: !4712)
!4723 = !DILocation(line: 51, column: 3, scope: !4707)
!4724 = distinct !DISubprogram(name: "dup_safer_flag", scope: !1000, file: !1000, line: 34, type: !909, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4725)
!4725 = !{!4726, !4727}
!4726 = !DILocalVariable(name: "fd", arg: 1, scope: !4724, file: !1000, line: 34, type: !57)
!4727 = !DILocalVariable(name: "flag", arg: 2, scope: !4724, file: !1000, line: 34, type: !57)
!4728 = !DILocation(line: 0, scope: !4724)
!4729 = !DILocation(line: 36, column: 27, scope: !4724)
!4730 = !DILocation(line: 36, column: 21, scope: !4724)
!4731 = !DILocation(line: 36, column: 10, scope: !4724)
!4732 = !DILocation(line: 36, column: 3, scope: !4724)
!4733 = distinct !DISubprogram(name: "rpl_fflush", scope: !1002, file: !1002, line: 130, type: !4734, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !4770)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!57, !4736}
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4738)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4738, file: !232, line: 51, baseType: !57, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4738, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4738, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4738, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4738, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4738, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4738, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4738, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4738, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4738, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4738, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4738, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4738, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4738, file: !232, line: 70, baseType: !4754, size: 64, offset: 832)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4738, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4738, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4738, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4738, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4738, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4738, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4738, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4738, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4738, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4738, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4738, file: !232, line: 93, baseType: !4754, size: 64, offset: 1344)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4738, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4738, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4738, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4738, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4770 = !{!4771}
!4771 = !DILocalVariable(name: "stream", arg: 1, scope: !4733, file: !1002, line: 130, type: !4736)
!4772 = !DILocation(line: 0, scope: !4733)
!4773 = !DILocation(line: 151, column: 14, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4733, file: !1002, line: 151, column: 7)
!4775 = !DILocation(line: 151, column: 22, scope: !4774)
!4776 = !DILocation(line: 151, column: 27, scope: !4774)
!4777 = !DILocation(line: 151, column: 7, scope: !4733)
!4778 = !DILocation(line: 152, column: 12, scope: !4774)
!4779 = !DILocation(line: 152, column: 5, scope: !4774)
!4780 = !DILocalVariable(name: "fp", arg: 1, scope: !4781, file: !1002, line: 42, type: !4736)
!4781 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1002, file: !1002, line: 42, type: !4782, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{null, !4736}
!4784 = !{!4780}
!4785 = !DILocation(line: 0, scope: !4781, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 157, column: 3, scope: !4733)
!4787 = !DILocation(line: 44, column: 12, scope: !4788, inlinedAt: !4786)
!4788 = distinct !DILexicalBlock(scope: !4781, file: !1002, line: 44, column: 7)
!4789 = !DILocation(line: 44, column: 19, scope: !4788, inlinedAt: !4786)
!4790 = !DILocation(line: 44, column: 7, scope: !4781, inlinedAt: !4786)
!4791 = !DILocation(line: 46, column: 5, scope: !4788, inlinedAt: !4786)
!4792 = !DILocation(line: 159, column: 10, scope: !4733)
!4793 = !DILocation(line: 159, column: 3, scope: !4733)
!4794 = !DILocation(line: 236, column: 1, scope: !4733)
!4795 = !DISubprogram(name: "fflush", scope: !1100, file: !1100, line: 230, type: !4734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4796 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !889, file: !889, line: 100, type: !4797, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4800)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!104, !2419, !101, !104, !4799}
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!4800 = !{!4801, !4802, !4803, !4804, !4805}
!4801 = !DILocalVariable(name: "pwc", arg: 1, scope: !4796, file: !889, line: 100, type: !2419)
!4802 = !DILocalVariable(name: "s", arg: 2, scope: !4796, file: !889, line: 100, type: !101)
!4803 = !DILocalVariable(name: "n", arg: 3, scope: !4796, file: !889, line: 100, type: !104)
!4804 = !DILocalVariable(name: "ps", arg: 4, scope: !4796, file: !889, line: 100, type: !4799)
!4805 = !DILocalVariable(name: "ret", scope: !4796, file: !889, line: 130, type: !104)
!4806 = !DILocation(line: 0, scope: !4796)
!4807 = !DILocation(line: 105, column: 9, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4796, file: !889, line: 105, column: 7)
!4809 = !DILocation(line: 105, column: 7, scope: !4796)
!4810 = !DILocation(line: 117, column: 10, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4796, file: !889, line: 117, column: 7)
!4812 = !DILocation(line: 117, column: 7, scope: !4796)
!4813 = !DILocation(line: 130, column: 16, scope: !4796)
!4814 = !DILocation(line: 135, column: 11, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4796, file: !889, line: 135, column: 7)
!4816 = !DILocation(line: 135, column: 25, scope: !4815)
!4817 = !DILocation(line: 135, column: 30, scope: !4815)
!4818 = !DILocation(line: 135, column: 7, scope: !4796)
!4819 = !DILocalVariable(name: "ps", arg: 1, scope: !4820, file: !1918, line: 1135, type: !4799)
!4820 = distinct !DISubprogram(name: "mbszero", scope: !1918, file: !1918, line: 1135, type: !4821, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4823)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4799}
!4823 = !{!4819}
!4824 = !DILocation(line: 0, scope: !4820, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 137, column: 5, scope: !4815)
!4826 = !DILocalVariable(name: "__dest", arg: 1, scope: !4827, file: !1336, line: 57, type: !98)
!4827 = distinct !DISubprogram(name: "memset", scope: !1336, file: !1336, line: 57, type: !2402, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !4828)
!4828 = !{!4826, !4829, !4830}
!4829 = !DILocalVariable(name: "__ch", arg: 2, scope: !4827, file: !1336, line: 57, type: !57)
!4830 = !DILocalVariable(name: "__len", arg: 3, scope: !4827, file: !1336, line: 57, type: !104)
!4831 = !DILocation(line: 0, scope: !4827, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 1137, column: 3, scope: !4820, inlinedAt: !4825)
!4833 = !DILocation(line: 59, column: 10, scope: !4827, inlinedAt: !4832)
!4834 = !DILocation(line: 137, column: 5, scope: !4815)
!4835 = !DILocation(line: 138, column: 11, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4796, file: !889, line: 138, column: 7)
!4837 = !DILocation(line: 138, column: 7, scope: !4796)
!4838 = !DILocation(line: 139, column: 5, scope: !4836)
!4839 = !DILocation(line: 143, column: 26, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4796, file: !889, line: 143, column: 7)
!4841 = !DILocation(line: 143, column: 41, scope: !4840)
!4842 = !DILocation(line: 143, column: 7, scope: !4796)
!4843 = !DILocation(line: 145, column: 15, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !889, line: 145, column: 11)
!4845 = distinct !DILexicalBlock(scope: !4840, file: !889, line: 144, column: 5)
!4846 = !DILocation(line: 145, column: 11, scope: !4845)
!4847 = !DILocation(line: 146, column: 32, scope: !4844)
!4848 = !DILocation(line: 146, column: 16, scope: !4844)
!4849 = !DILocation(line: 146, column: 14, scope: !4844)
!4850 = !DILocation(line: 146, column: 9, scope: !4844)
!4851 = !DILocation(line: 286, column: 1, scope: !4796)
!4852 = !DISubprogram(name: "mbsinit", scope: !4853, file: !4853, line: 293, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4853 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!57, !4856}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!4858 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1004, file: !1004, line: 27, type: !4131, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4859)
!4859 = !{!4860, !4861, !4862, !4863}
!4860 = !DILocalVariable(name: "ptr", arg: 1, scope: !4858, file: !1004, line: 27, type: !98)
!4861 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4858, file: !1004, line: 27, type: !104)
!4862 = !DILocalVariable(name: "size", arg: 3, scope: !4858, file: !1004, line: 27, type: !104)
!4863 = !DILocalVariable(name: "nbytes", scope: !4858, file: !1004, line: 29, type: !104)
!4864 = !DILocation(line: 0, scope: !4858)
!4865 = !DILocation(line: 30, column: 7, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4858, file: !1004, line: 30, column: 7)
!4867 = !DILocation(line: 30, column: 7, scope: !4858)
!4868 = !DILocation(line: 32, column: 7, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4866, file: !1004, line: 31, column: 5)
!4870 = !DILocation(line: 32, column: 13, scope: !4869)
!4871 = !DILocation(line: 33, column: 7, scope: !4869)
!4872 = !DILocalVariable(name: "ptr", arg: 1, scope: !4873, file: !1825, line: 2057, type: !98)
!4873 = distinct !DISubprogram(name: "rpl_realloc", scope: !1825, file: !1825, line: 2057, type: !1826, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4874)
!4874 = !{!4872, !4875}
!4875 = !DILocalVariable(name: "size", arg: 2, scope: !4873, file: !1825, line: 2057, type: !104)
!4876 = !DILocation(line: 0, scope: !4873, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 37, column: 10, scope: !4858)
!4878 = !DILocation(line: 2059, column: 24, scope: !4873, inlinedAt: !4877)
!4879 = !DILocation(line: 2059, column: 10, scope: !4873, inlinedAt: !4877)
!4880 = !DILocation(line: 37, column: 3, scope: !4858)
!4881 = !DILocation(line: 38, column: 1, scope: !4858)
!4882 = distinct !DISubprogram(name: "dup_safer", scope: !1006, file: !1006, line: 31, type: !1580, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4883)
!4883 = !{!4884}
!4884 = !DILocalVariable(name: "fd", arg: 1, scope: !4882, file: !1006, line: 31, type: !57)
!4885 = !DILocation(line: 0, scope: !4882)
!4886 = !DILocation(line: 33, column: 10, scope: !4882)
!4887 = !DILocation(line: 33, column: 3, scope: !4882)
!4888 = distinct !DISubprogram(name: "rpl_fcntl", scope: !908, file: !908, line: 202, type: !2116, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4889)
!4889 = !{!4890, !4891, !4892, !4903, !4904, !4907, !4909, !4913}
!4890 = !DILocalVariable(name: "fd", arg: 1, scope: !4888, file: !908, line: 202, type: !57)
!4891 = !DILocalVariable(name: "action", arg: 2, scope: !4888, file: !908, line: 202, type: !57)
!4892 = !DILocalVariable(name: "arg", scope: !4888, file: !908, line: 208, type: !4893)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4894, line: 12, baseType: !4895)
!4894 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!4895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !908, baseType: !4896)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4897, size: 192, elements: !117)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4898)
!4898 = !{!4899, !4900, !4901, !4902}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4897, file: !908, line: 208, baseType: !69, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4897, file: !908, line: 208, baseType: !69, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4897, file: !908, line: 208, baseType: !98, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4897, file: !908, line: 208, baseType: !98, size: 64, offset: 128)
!4903 = !DILocalVariable(name: "result", scope: !4888, file: !908, line: 211, type: !57)
!4904 = !DILocalVariable(name: "target", scope: !4905, file: !908, line: 216, type: !57)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !908, line: 215, column: 7)
!4906 = distinct !DILexicalBlock(scope: !4888, file: !908, line: 213, column: 5)
!4907 = !DILocalVariable(name: "target", scope: !4908, file: !908, line: 223, type: !57)
!4908 = distinct !DILexicalBlock(scope: !4906, file: !908, line: 222, column: 7)
!4909 = !DILocalVariable(name: "x", scope: !4910, file: !908, line: 418, type: !57)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !908, line: 417, column: 13)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !908, line: 261, column: 11)
!4912 = distinct !DILexicalBlock(scope: !4906, file: !908, line: 258, column: 7)
!4913 = !DILocalVariable(name: "p", scope: !4914, file: !908, line: 426, type: !98)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !908, line: 425, column: 13)
!4915 = distinct !DIAssignID()
!4916 = !DILocation(line: 0, scope: !4888)
!4917 = !DILocation(line: 208, column: 3, scope: !4888)
!4918 = !DILocation(line: 209, column: 3, scope: !4888)
!4919 = !DILocation(line: 212, column: 3, scope: !4888)
!4920 = !DILocation(line: 216, column: 22, scope: !4905)
!4921 = distinct !DIAssignID()
!4922 = distinct !DIAssignID()
!4923 = !DILocation(line: 0, scope: !4905)
!4924 = !DILocalVariable(name: "fd", arg: 1, scope: !4925, file: !908, line: 444, type: !57)
!4925 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !908, file: !908, line: 444, type: !909, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !4926)
!4926 = !{!4924, !4927, !4928}
!4927 = !DILocalVariable(name: "target", arg: 2, scope: !4925, file: !908, line: 444, type: !57)
!4928 = !DILocalVariable(name: "result", scope: !4925, file: !908, line: 446, type: !57)
!4929 = !DILocation(line: 0, scope: !4925, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 217, column: 18, scope: !4905)
!4931 = !DILocation(line: 479, column: 12, scope: !4925, inlinedAt: !4930)
!4932 = !DILocation(line: 223, column: 22, scope: !4908)
!4933 = distinct !DIAssignID()
!4934 = distinct !DIAssignID()
!4935 = !DILocation(line: 0, scope: !4908)
!4936 = !DILocation(line: 0, scope: !907, inlinedAt: !4937)
!4937 = distinct !DILocation(line: 224, column: 18, scope: !4908)
!4938 = !DILocation(line: 507, column: 12, scope: !4939, inlinedAt: !4937)
!4939 = distinct !DILexicalBlock(scope: !907, file: !908, line: 507, column: 7)
!4940 = !DILocation(line: 507, column: 9, scope: !4939, inlinedAt: !4937)
!4941 = !DILocation(line: 507, column: 7, scope: !907, inlinedAt: !4937)
!4942 = !DILocation(line: 509, column: 16, scope: !4943, inlinedAt: !4937)
!4943 = distinct !DILexicalBlock(scope: !4939, file: !908, line: 508, column: 5)
!4944 = !DILocation(line: 510, column: 13, scope: !4945, inlinedAt: !4937)
!4945 = distinct !DILexicalBlock(scope: !4943, file: !908, line: 510, column: 11)
!4946 = !DILocation(line: 510, column: 23, scope: !4945, inlinedAt: !4937)
!4947 = !DILocation(line: 510, column: 26, scope: !4945, inlinedAt: !4937)
!4948 = !DILocation(line: 510, column: 32, scope: !4945, inlinedAt: !4937)
!4949 = !DILocation(line: 510, column: 11, scope: !4943, inlinedAt: !4937)
!4950 = !DILocation(line: 512, column: 30, scope: !4951, inlinedAt: !4937)
!4951 = distinct !DILexicalBlock(scope: !4945, file: !908, line: 511, column: 9)
!4952 = !DILocation(line: 528, column: 19, scope: !919, inlinedAt: !4937)
!4953 = !DILocation(line: 0, scope: !4925, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 520, column: 20, scope: !4955, inlinedAt: !4937)
!4955 = distinct !DILexicalBlock(scope: !4945, file: !908, line: 519, column: 9)
!4956 = !DILocation(line: 479, column: 12, scope: !4925, inlinedAt: !4954)
!4957 = !DILocation(line: 521, column: 22, scope: !4958, inlinedAt: !4937)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !908, line: 521, column: 15)
!4959 = !DILocation(line: 521, column: 15, scope: !4955, inlinedAt: !4937)
!4960 = !DILocation(line: 522, column: 32, scope: !4958, inlinedAt: !4937)
!4961 = !DILocation(line: 522, column: 13, scope: !4958, inlinedAt: !4937)
!4962 = !DILocation(line: 0, scope: !4925, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 527, column: 14, scope: !4939, inlinedAt: !4937)
!4964 = !DILocation(line: 479, column: 12, scope: !4925, inlinedAt: !4963)
!4965 = !DILocation(line: 0, scope: !4939, inlinedAt: !4937)
!4966 = !DILocation(line: 528, column: 9, scope: !919, inlinedAt: !4937)
!4967 = !DILocation(line: 530, column: 19, scope: !918, inlinedAt: !4937)
!4968 = !DILocation(line: 0, scope: !918, inlinedAt: !4937)
!4969 = !DILocation(line: 531, column: 17, scope: !922, inlinedAt: !4937)
!4970 = !DILocation(line: 531, column: 21, scope: !922, inlinedAt: !4937)
!4971 = !DILocation(line: 531, column: 54, scope: !922, inlinedAt: !4937)
!4972 = !DILocation(line: 531, column: 24, scope: !922, inlinedAt: !4937)
!4973 = !DILocation(line: 531, column: 68, scope: !922, inlinedAt: !4937)
!4974 = !DILocation(line: 531, column: 11, scope: !918, inlinedAt: !4937)
!4975 = !DILocation(line: 533, column: 29, scope: !921, inlinedAt: !4937)
!4976 = !DILocation(line: 0, scope: !921, inlinedAt: !4937)
!4977 = !DILocation(line: 534, column: 11, scope: !921, inlinedAt: !4937)
!4978 = !DILocation(line: 535, column: 17, scope: !921, inlinedAt: !4937)
!4979 = !DILocation(line: 537, column: 9, scope: !921, inlinedAt: !4937)
!4980 = !DILocation(line: 329, column: 22, scope: !4911)
!4981 = !DILocation(line: 330, column: 13, scope: !4911)
!4982 = !DILocation(line: 418, column: 23, scope: !4910)
!4983 = distinct !DIAssignID()
!4984 = distinct !DIAssignID()
!4985 = !DILocation(line: 0, scope: !4910)
!4986 = !DILocation(line: 419, column: 24, scope: !4910)
!4987 = !DILocation(line: 421, column: 13, scope: !4911)
!4988 = !DILocation(line: 426, column: 25, scope: !4914)
!4989 = distinct !DIAssignID()
!4990 = distinct !DIAssignID()
!4991 = !DILocation(line: 0, scope: !4914)
!4992 = !DILocation(line: 427, column: 24, scope: !4914)
!4993 = !DILocation(line: 429, column: 13, scope: !4911)
!4994 = !DILocation(line: 0, scope: !4906)
!4995 = !DILocation(line: 438, column: 3, scope: !4888)
!4996 = !DILocation(line: 441, column: 1, scope: !4888)
!4997 = !DILocation(line: 440, column: 3, scope: !4888)
!4998 = distinct !DISubprogram(name: "hard_locale", scope: !925, file: !925, line: 28, type: !4999, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !5001)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!215, !57}
!5001 = !{!5002, !5003}
!5002 = !DILocalVariable(name: "category", arg: 1, scope: !4998, file: !925, line: 28, type: !57)
!5003 = !DILocalVariable(name: "locale", scope: !4998, file: !925, line: 30, type: !5004)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5005)
!5005 = !{!5006}
!5006 = !DISubrange(count: 257)
!5007 = distinct !DIAssignID()
!5008 = !DILocation(line: 0, scope: !4998)
!5009 = !DILocation(line: 30, column: 3, scope: !4998)
!5010 = !DILocation(line: 32, column: 7, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4998, file: !925, line: 32, column: 7)
!5012 = !DILocation(line: 32, column: 7, scope: !4998)
!5013 = !DILocalVariable(name: "__s1", arg: 1, scope: !5014, file: !1118, line: 1359, type: !101)
!5014 = distinct !DISubprogram(name: "streq", scope: !1118, file: !1118, line: 1359, type: !1119, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !5015)
!5015 = !{!5013, !5016}
!5016 = !DILocalVariable(name: "__s2", arg: 2, scope: !5014, file: !1118, line: 1359, type: !101)
!5017 = !DILocation(line: 0, scope: !5014, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 35, column: 9, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4998, file: !925, line: 35, column: 7)
!5020 = !DILocation(line: 1361, column: 11, scope: !5014, inlinedAt: !5018)
!5021 = !DILocation(line: 35, column: 29, scope: !5019)
!5022 = !DILocation(line: 0, scope: !5014, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 35, column: 32, scope: !5019)
!5024 = !DILocation(line: 1361, column: 11, scope: !5014, inlinedAt: !5023)
!5025 = !DILocation(line: 1361, column: 10, scope: !5014, inlinedAt: !5023)
!5026 = !DILocation(line: 35, column: 7, scope: !4998)
!5027 = !DILocation(line: 46, column: 3, scope: !4998)
!5028 = !DILocation(line: 47, column: 1, scope: !4998)
!5029 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1012, file: !1012, line: 154, type: !5030, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1011, retainedNodes: !5032)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!57, !57, !59, !104}
!5032 = !{!5033, !5034, !5035}
!5033 = !DILocalVariable(name: "category", arg: 1, scope: !5029, file: !1012, line: 154, type: !57)
!5034 = !DILocalVariable(name: "buf", arg: 2, scope: !5029, file: !1012, line: 154, type: !59)
!5035 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5029, file: !1012, line: 154, type: !104)
!5036 = !DILocation(line: 0, scope: !5029)
!5037 = !DILocation(line: 159, column: 10, scope: !5029)
!5038 = !DILocation(line: 159, column: 3, scope: !5029)
!5039 = distinct !DISubprogram(name: "setlocale_null", scope: !1012, file: !1012, line: 186, type: !5040, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1011, retainedNodes: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!101, !57}
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "category", arg: 1, scope: !5039, file: !1012, line: 186, type: !57)
!5044 = !DILocation(line: 0, scope: !5039)
!5045 = !DILocation(line: 189, column: 10, scope: !5039)
!5046 = !DILocation(line: 189, column: 3, scope: !5039)
!5047 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1014, file: !1014, line: 35, type: !5040, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !5048)
!5048 = !{!5049, !5050}
!5049 = !DILocalVariable(name: "category", arg: 1, scope: !5047, file: !1014, line: 35, type: !57)
!5050 = !DILocalVariable(name: "result", scope: !5047, file: !1014, line: 37, type: !101)
!5051 = !DILocation(line: 0, scope: !5047)
!5052 = !DILocation(line: 37, column: 24, scope: !5047)
!5053 = !DILocation(line: 62, column: 3, scope: !5047)
!5054 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1014, file: !1014, line: 66, type: !5030, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !5055)
!5055 = !{!5056, !5057, !5058, !5059, !5060}
!5056 = !DILocalVariable(name: "category", arg: 1, scope: !5054, file: !1014, line: 66, type: !57)
!5057 = !DILocalVariable(name: "buf", arg: 2, scope: !5054, file: !1014, line: 66, type: !59)
!5058 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5054, file: !1014, line: 66, type: !104)
!5059 = !DILocalVariable(name: "result", scope: !5054, file: !1014, line: 111, type: !101)
!5060 = !DILocalVariable(name: "length", scope: !5061, file: !1014, line: 125, type: !104)
!5061 = distinct !DILexicalBlock(scope: !5062, file: !1014, line: 124, column: 5)
!5062 = distinct !DILexicalBlock(scope: !5054, file: !1014, line: 113, column: 7)
!5063 = !DILocation(line: 0, scope: !5054)
!5064 = !DILocation(line: 0, scope: !5047, inlinedAt: !5065)
!5065 = distinct !DILocation(line: 111, column: 24, scope: !5054)
!5066 = !DILocation(line: 37, column: 24, scope: !5047, inlinedAt: !5065)
!5067 = !DILocation(line: 113, column: 14, scope: !5062)
!5068 = !DILocation(line: 113, column: 7, scope: !5054)
!5069 = !DILocation(line: 116, column: 19, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !1014, line: 116, column: 11)
!5071 = distinct !DILexicalBlock(scope: !5062, file: !1014, line: 114, column: 5)
!5072 = !DILocation(line: 116, column: 11, scope: !5071)
!5073 = !DILocation(line: 120, column: 16, scope: !5070)
!5074 = !DILocation(line: 120, column: 9, scope: !5070)
!5075 = !DILocation(line: 125, column: 23, scope: !5061)
!5076 = !DILocation(line: 0, scope: !5061)
!5077 = !DILocation(line: 126, column: 18, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5061, file: !1014, line: 126, column: 11)
!5079 = !DILocation(line: 126, column: 11, scope: !5061)
!5080 = !DILocation(line: 128, column: 39, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5078, file: !1014, line: 127, column: 9)
!5082 = !DILocalVariable(name: "__dest", arg: 1, scope: !5083, file: !1336, line: 26, type: !1339)
!5083 = distinct !DISubprogram(name: "memcpy", scope: !1336, file: !1336, line: 26, type: !1337, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1013, retainedNodes: !5084)
!5084 = !{!5082, !5085, !5086}
!5085 = !DILocalVariable(name: "__src", arg: 2, scope: !5083, file: !1336, line: 26, type: !1252)
!5086 = !DILocalVariable(name: "__len", arg: 3, scope: !5083, file: !1336, line: 26, type: !104)
!5087 = !DILocation(line: 0, scope: !5083, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 128, column: 11, scope: !5081)
!5089 = !DILocation(line: 29, column: 10, scope: !5083, inlinedAt: !5088)
!5090 = !DILocation(line: 129, column: 11, scope: !5081)
!5091 = !DILocation(line: 133, column: 23, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !1014, line: 133, column: 15)
!5093 = distinct !DILexicalBlock(scope: !5078, file: !1014, line: 132, column: 9)
!5094 = !DILocation(line: 133, column: 15, scope: !5093)
!5095 = !DILocation(line: 138, column: 44, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5092, file: !1014, line: 134, column: 13)
!5097 = !DILocation(line: 0, scope: !5083, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 138, column: 15, scope: !5096)
!5099 = !DILocation(line: 29, column: 10, scope: !5083, inlinedAt: !5098)
!5100 = !DILocation(line: 139, column: 15, scope: !5096)
!5101 = !DILocation(line: 139, column: 32, scope: !5096)
!5102 = !DILocation(line: 140, column: 13, scope: !5096)
!5103 = !DILocation(line: 0, scope: !5062)
!5104 = !DILocation(line: 145, column: 1, scope: !5054)
