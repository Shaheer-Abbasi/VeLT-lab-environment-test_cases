; ModuleID = 'src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !621
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !591
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !611
@.str.1.55 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !613
@.str.2.57 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !615
@.str.3.56 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !617
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !619
@.str.4.50 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !623
@.str.5.51 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !625
@.str.6.52 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !630
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !635
@.str.72 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !641
@.str.1.73 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !643
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !645
@.str.76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !676
@.str.1.77 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !679
@.str.2.78 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !681
@.str.3.79 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !686
@.str.4.80 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !688
@.str.5.81 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !690
@.str.6.82 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !692
@.str.7.83 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !694
@.str.8.84 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !696
@.str.9.85 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !698
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.76, ptr @.str.1.77, ptr @.str.2.78, ptr @.str.3.79, ptr @.str.4.80, ptr @.str.5.81, ptr @.str.6.82, ptr @.str.7.83, ptr @.str.8.84, ptr @.str.9.85, ptr null], align 16, !dbg !700
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !711
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !725
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !760
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !767
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !727
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !769
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !715
@.str.10.88 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !729
@.str.11.86 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !731
@.str.12.89 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !733
@.str.13.87 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !735
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !737
@.str.102 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !774
@.str.1.103 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1, !dbg !777
@.str.2.104 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1, !dbg !779
@.str.3.105 = private unnamed_addr constant [12 x i8] c"/%.*sXXXXXX\00", align 1, !dbg !781
@.str.108 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !783
@.str.1.109 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !786
@.str.2.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !788
@.str.3.111 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !790
@.str.4.112 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !792
@.str.5.113 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !794
@.str.6.114 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !799
@.str.7.115 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !804
@.str.8.116 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !806
@.str.9.117 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !811
@.str.10.118 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !816
@.str.11.119 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !821
@.str.12.120 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !826
@.str.13.121 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !828
@.str.14.122 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !833
@.str.15.123 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !838
@.str.16.124 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !843
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.129 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !848
@.str.18.130 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !850
@.str.19.131 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !852
@.str.20.132 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !854
@.str.21.133 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !856
@.str.22.134 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !858
@.str.23.135 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !860
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !865
@exit_failure = dso_local global i32 1, align 4, !dbg !873
@.str.152 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !879
@.str.1.150 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !882
@.str.2.151 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !884
@.str.165 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !886
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !889
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !904
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !922

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1020 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1024, metadata !DIExpression()), !dbg !1025
  %2 = icmp eq i32 %0, 0, !dbg !1026
  br i1 %2, label %8, label %3, !dbg !1028

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1029, !tbaa !1031
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1029
  %6 = load ptr, ptr @program_name, align 8, !dbg !1029, !tbaa !1031
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1029
  br label %43, !dbg !1029

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1035
  %10 = load ptr, ptr @program_name, align 8, !dbg !1035, !tbaa !1031
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1035
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1037
  %13 = load ptr, ptr @stdout, align 8, !dbg !1037, !tbaa !1031
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1037
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #38, !dbg !1038
  %16 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !1031
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1038
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #38, !dbg !1042
  %19 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !1031
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1042
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1045
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1045
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1046
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1046
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1047
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1047
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1048
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1048
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !1049
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1049
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !1050
  %27 = load ptr, ptr @stdout, align 8, !dbg !1050, !tbaa !1031
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1051, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr poison, metadata !1063, metadata !DIExpression()), !dbg !1068
  tail call void @emit_bug_reporting_address() #38, !dbg !1070
  %29 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %29, metadata !1066, metadata !DIExpression()), !dbg !1068
  %30 = icmp eq ptr %29, null, !dbg !1072
  br i1 %30, label %38, label %31, !dbg !1074

31:                                               ; preds = %8
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #39, !dbg !1075
  %33 = icmp eq i32 %32, 0, !dbg !1075
  br i1 %33, label %38, label %34, !dbg !1076

34:                                               ; preds = %31
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #38, !dbg !1077
  %36 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !1031
  %37 = tail call i32 @fputs_unlocked(ptr noundef %35, ptr noundef %36), !dbg !1077
  br label %38, !dbg !1079

38:                                               ; preds = %8, %31, %34
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1067, metadata !DIExpression()), !dbg !1068
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !1080
  %40 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %39, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #38, !dbg !1080
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1081
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #38, !dbg !1081
  br label %43

43:                                               ; preds = %38, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1082
  unreachable, !dbg !1082
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1083 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1087 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1093 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1096 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !205 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !209, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %0, metadata !210, metadata !DIExpression()), !dbg !1100
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1101, !tbaa !1102
  %3 = icmp eq i32 %2, -1, !dbg !1104
  br i1 %3, label %4, label %16, !dbg !1105

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #38, !dbg !1106
  call void @llvm.dbg.value(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !1107
  %6 = icmp eq ptr %5, null, !dbg !1108
  br i1 %6, label %14, label %7, !dbg !1109

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1110, !tbaa !1111
  %9 = icmp eq i8 %8, 0, !dbg !1110
  br i1 %9, label %14, label %10, !dbg !1112

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1113, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !1119, metadata !DIExpression()), !dbg !1120
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #39, !dbg !1122
  %12 = icmp eq i32 %11, 0, !dbg !1123
  %13 = zext i1 %12 to i32, !dbg !1112
  br label %14, !dbg !1112

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1124, !tbaa !1102
  br label %16, !dbg !1125

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1126
  %18 = icmp eq i32 %17, 0, !dbg !1126
  br i1 %18, label %22, label %19, !dbg !1128

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1129, !tbaa !1031
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1129
  br label %128, !dbg !1131

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !214, metadata !DIExpression()), !dbg !1100
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #39, !dbg !1132
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1133
  call void @llvm.dbg.value(metadata ptr %24, metadata !216, metadata !DIExpression()), !dbg !1100
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1134
  call void @llvm.dbg.value(metadata ptr %25, metadata !217, metadata !DIExpression()), !dbg !1100
  %26 = icmp eq ptr %25, null, !dbg !1135
  br i1 %26, label %58, label %27, !dbg !1136

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1137
  br i1 %28, label %58, label %29, !dbg !1138

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !218, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i64 0, metadata !222, metadata !DIExpression()), !dbg !1139
  %30 = icmp ult ptr %24, %25, !dbg !1140
  br i1 %30, label %31, label %52, !dbg !1141

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1100
  %33 = load ptr, ptr %32, align 8, !tbaa !1031
  br label %34, !dbg !1141

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !218, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i64 %36, metadata !222, metadata !DIExpression()), !dbg !1139
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1142
  call void @llvm.dbg.value(metadata ptr %37, metadata !218, metadata !DIExpression()), !dbg !1139
  %38 = load i8, ptr %35, align 1, !dbg !1142, !tbaa !1111
  %39 = sext i8 %38 to i64, !dbg !1142
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1142
  %41 = load i16, ptr %40, align 2, !dbg !1142, !tbaa !1143
  %42 = freeze i16 %41, !dbg !1145
  %43 = lshr i16 %42, 13, !dbg !1145
  %44 = and i16 %43, 1, !dbg !1145
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %46, metadata !222, metadata !DIExpression()), !dbg !1139
  %47 = icmp ult ptr %37, %25, !dbg !1140
  %48 = icmp ult i64 %46, 2, !dbg !1147
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1147
  br i1 %49, label %34, label %50, !dbg !1141, !llvm.loop !1148

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1150
  br i1 %51, label %52, label %54, !dbg !1152

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1152

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1152
  call void @llvm.dbg.value(metadata i8 %57, metadata !214, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %56, metadata !217, metadata !DIExpression()), !dbg !1100
  br label %58, !dbg !1153

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1100
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1100
  call void @llvm.dbg.value(metadata i8 %60, metadata !214, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %59, metadata !217, metadata !DIExpression()), !dbg !1100
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.25) #39, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %61, metadata !223, metadata !DIExpression()), !dbg !1100
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1155
  call void @llvm.dbg.value(metadata ptr %62, metadata !224, metadata !DIExpression()), !dbg !1100
  br label %63, !dbg !1156

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1100
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1100
  call void @llvm.dbg.value(metadata i8 %65, metadata !214, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %64, metadata !224, metadata !DIExpression()), !dbg !1100
  %66 = load i8, ptr %64, align 1, !dbg !1157, !tbaa !1111
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1158

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1159
  %69 = load i8, ptr %68, align 1, !dbg !1162, !tbaa !1111
  %70 = icmp eq i8 %69, 45, !dbg !1163
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1164
  br label %72, !dbg !1164

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1100
  call void @llvm.dbg.value(metadata i8 %73, metadata !214, metadata !DIExpression()), !dbg !1100
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !1165
  %75 = load ptr, ptr %74, align 8, !dbg !1165, !tbaa !1031
  %76 = sext i8 %66 to i64, !dbg !1165
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1165
  %78 = load i16, ptr %77, align 2, !dbg !1165, !tbaa !1143
  %79 = and i16 %78, 8192, !dbg !1165
  %80 = icmp eq i16 %79, 0, !dbg !1165
  br i1 %80, label %96, label %81, !dbg !1167

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1168
  br i1 %82, label %98, label %83, !dbg !1171

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1172
  %85 = load i8, ptr %84, align 1, !dbg !1172, !tbaa !1111
  %86 = sext i8 %85 to i64, !dbg !1172
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1172
  %88 = load i16, ptr %87, align 2, !dbg !1172, !tbaa !1143
  %89 = and i16 %88, 8192, !dbg !1172
  %90 = icmp eq i16 %89, 0, !dbg !1172
  br i1 %90, label %91, label %98, !dbg !1173

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1174
  %93 = icmp ne i8 %92, 0, !dbg !1174
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1176
  br i1 %95, label %96, label %98, !dbg !1176

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1177
  call void @llvm.dbg.value(metadata ptr %97, metadata !224, metadata !DIExpression()), !dbg !1100
  br label %63, !dbg !1156, !llvm.loop !1178

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1180
  %100 = load ptr, ptr @stdout, align 8, !dbg !1180, !tbaa !1031
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1180
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1113, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !281, metadata !DIExpression()), !dbg !1100
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #39, !dbg !1201
  %103 = icmp eq i32 %102, 0, !dbg !1201
  br i1 %103, label %107, label %104, !dbg !1203

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #39, !dbg !1204
  %106 = icmp eq i32 %105, 0, !dbg !1204
  br i1 %106, label %107, label %110, !dbg !1205

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1206
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !1206
  br label %113, !dbg !1208

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1209
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !1209
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1211, !tbaa !1031
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %114), !dbg !1211
  %116 = load ptr, ptr @stdout, align 8, !dbg !1212, !tbaa !1031
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %116), !dbg !1212
  %118 = ptrtoint ptr %64 to i64, !dbg !1213
  %119 = sub i64 %118, %99, !dbg !1213
  %120 = load ptr, ptr @stdout, align 8, !dbg !1213, !tbaa !1031
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1213
  %122 = load ptr, ptr @stdout, align 8, !dbg !1214, !tbaa !1031
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %122), !dbg !1214
  %124 = load ptr, ptr @stdout, align 8, !dbg !1215, !tbaa !1031
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %124), !dbg !1215
  %126 = load ptr, ptr @stdout, align 8, !dbg !1216, !tbaa !1031
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1216
  br label %128, !dbg !1217

128:                                              ; preds = %113, %19
  ret void, !dbg !1217
}

; Function Attrs: nounwind
declare !dbg !1218 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1222 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1226 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1228 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1231 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1234 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1237 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1240 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1246 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1247 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !54 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !475, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr %1, metadata !476, metadata !DIExpression()), !dbg !1253
  %5 = load ptr, ptr %1, align 8, !dbg !1254, !tbaa !1031
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1255
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1256
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1257
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1258
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1259
  br label %10, !dbg !1260

10:                                               ; preds = %16, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %11, metadata !478, metadata !DIExpression()), !dbg !1253
  switch i32 %11, label %23 [
    i32 -1, label %24
    i32 98, label %12
    i32 114, label %13
    i32 115, label %14
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !1260

12:                                               ; preds = %10
  store i1 true, ptr @separator_ends_record, align 1, !dbg !1262
  br label %16, !dbg !1265

13:                                               ; preds = %10
  store i64 0, ptr @sentinel_length, align 8, !dbg !1266, !tbaa !1267
  br label %16, !dbg !1269

14:                                               ; preds = %10
  %15 = load ptr, ptr @optarg, align 8, !dbg !1270, !tbaa !1031
  store ptr %15, ptr @separator, align 8, !dbg !1271, !tbaa !1031
  br label %16, !dbg !1272

16:                                               ; preds = %14, %13, %12
  br label %10, !dbg !1261, !llvm.loop !1273

17:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #42, !dbg !1275
  unreachable, !dbg !1275

18:                                               ; preds = %10
  %19 = load ptr, ptr @stdout, align 8, !dbg !1276, !tbaa !1031
  %20 = load ptr, ptr @Version, align 8, !dbg !1276, !tbaa !1031
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1276
  %22 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #38, !dbg !1276
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef null) #38, !dbg !1276
  tail call void @exit(i32 noundef 0) #40, !dbg !1276
  unreachable, !dbg !1276

23:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #42, !dbg !1277
  unreachable, !dbg !1277

24:                                               ; preds = %10
  %25 = load i64, ptr @sentinel_length, align 8, !dbg !1278, !tbaa !1267
  %26 = icmp eq i64 %25, 0, !dbg !1280
  %27 = load ptr, ptr @separator, align 8, !dbg !1281, !tbaa !1031
  %28 = load i8, ptr %27, align 1, !dbg !1281, !tbaa !1111
  %29 = icmp eq i8 %28, 0, !dbg !1281
  br i1 %26, label %30, label %40, !dbg !1282

30:                                               ; preds = %24
  br i1 %29, label %31, label %33, !dbg !1283

31:                                               ; preds = %30
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1285
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %32) #38, !dbg !1285
  unreachable, !dbg !1285

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @compiled_separator, i8 0, i64 16, i1 false), !dbg !1287
  store ptr @compiled_separator_fastmap, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 4), align 8, !dbg !1288, !tbaa !1289
  store ptr null, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @compiled_separator, i64 0, i32 5), align 8, !dbg !1291, !tbaa !1292
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #39, !dbg !1293
  %35 = tail call ptr @re_compile_pattern(ptr noundef nonnull %27, i64 noundef %34, ptr noundef nonnull @compiled_separator) #38, !dbg !1294
  call void @llvm.dbg.value(metadata ptr %35, metadata !477, metadata !DIExpression()), !dbg !1253
  %36 = icmp eq ptr %35, null, !dbg !1295
  br i1 %36, label %37, label %39, !dbg !1297

37:                                               ; preds = %33
  %38 = load i64, ptr @sentinel_length, align 8, !tbaa !1267
  br label %45, !dbg !1297

39:                                               ; preds = %33
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %35) #38, !dbg !1298
  unreachable, !dbg !1298

40:                                               ; preds = %24
  br i1 %29, label %43, label %41, !dbg !1299

41:                                               ; preds = %40
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #39, !dbg !1300
  br label %43, !dbg !1299

43:                                               ; preds = %40, %41
  %44 = phi i64 [ %42, %41 ], [ 1, %40 ], !dbg !1299
  store i64 %44, ptr @sentinel_length, align 8, !dbg !1301, !tbaa !1267
  store i64 %44, ptr @match_length, align 8, !dbg !1302, !tbaa !1267
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i64 [ %38, %37 ], [ %44, %43 ]
  %47 = icmp ult i64 %46, 4096, !dbg !1303
  br i1 %47, label %61, label %48, !dbg !1304

48:                                               ; preds = %45, %58
  %49 = phi i64 [ %59, %58 ], [ 8192, %45 ]
  %50 = shl nuw i64 %49, 1, !dbg !1305
  %51 = icmp ult i64 %46, %49, !dbg !1303
  br i1 %51, label %61, label %53, !dbg !1304, !llvm.loop !1307

52:                                               ; preds = %56
  store i64 %54, ptr @read_size, align 8, !dbg !1253, !tbaa !1267
  tail call void @xalloc_die() #40, !dbg !1309
  unreachable, !dbg !1309

53:                                               ; preds = %48
  %54 = shl nuw i64 %49, 2, !dbg !1305
  %55 = icmp ult i64 %46, %50, !dbg !1303
  br i1 %55, label %61, label %56, !dbg !1304, !llvm.loop !1307

56:                                               ; preds = %53
  %57 = icmp slt i64 %54, 0, !dbg !1311
  br i1 %57, label %52, label %58, !dbg !1312

58:                                               ; preds = %56
  %59 = shl nuw i64 %49, 3, !dbg !1305
  %60 = icmp ult i64 %46, %54, !dbg !1303
  br i1 %60, label %61, label %48, !dbg !1304, !llvm.loop !1307

61:                                               ; preds = %48, %53, %58, %45
  %62 = phi i64 [ 8192, %45 ], [ %50, %48 ], [ %54, %53 ], [ %59, %58 ]
  store i64 %62, ptr @read_size, align 8, !dbg !1253, !tbaa !1267
  %63 = add i64 %46, %62, !dbg !1313
  %64 = add i64 %63, 1, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %64, metadata !480, metadata !DIExpression()), !dbg !1253
  %65 = shl i64 %64, 1, !dbg !1315
  store i64 %65, ptr @G_buffer_size, align 8, !dbg !1316, !tbaa !1267
  %66 = icmp ult i64 %62, %64, !dbg !1317
  %67 = icmp ult i64 %63, 9223372036854775807
  %68 = and i1 %67, %66, !dbg !1319
  br i1 %68, label %70, label %69, !dbg !1319

69:                                               ; preds = %61
  tail call void @xalloc_die() #40, !dbg !1320
  unreachable, !dbg !1320

70:                                               ; preds = %61
  %71 = tail call noalias nonnull ptr @xmalloc(i64 noundef %65) #43, !dbg !1321
  %72 = load i64, ptr @sentinel_length, align 8, !dbg !1322, !tbaa !1267
  %73 = icmp eq i64 %72, 0, !dbg !1322
  br i1 %73, label %80, label %74, !dbg !1324

74:                                               ; preds = %70
  %75 = load ptr, ptr @separator, align 8, !dbg !1325, !tbaa !1031
  %76 = load i8, ptr %75, align 1, !dbg !1327, !tbaa !1111
  %77 = icmp ne i8 %76, 0, !dbg !1328
  %78 = zext i1 %77 to i64
  %79 = add i64 %72, %78, !dbg !1329
  call void @llvm.dbg.value(metadata ptr %71, metadata !1330, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata ptr %75, metadata !1337, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %79, metadata !1338, metadata !DIExpression()), !dbg !1339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %71, ptr noundef nonnull align 1 %75, i64 noundef %79, i1 noundef false) #38, !dbg !1341
  br label %80, !dbg !1342

80:                                               ; preds = %70, %74
  %81 = phi i64 [ %72, %74 ], [ 1, %70 ]
  %82 = getelementptr inbounds i8, ptr %71, i64 %81, !dbg !1343
  store ptr %82, ptr @G_buffer, align 8, !dbg !1343, !tbaa !1031
  %83 = load i32, ptr @optind, align 4, !dbg !1344, !tbaa !1102
  %84 = icmp slt i32 %83, %0, !dbg !1345
  %85 = sext i32 %83 to i64, !dbg !1344
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85, !dbg !1344
  %87 = select i1 %84, ptr %86, ptr @main.default_file_list, !dbg !1344
  call void @llvm.dbg.value(metadata ptr %87, metadata !481, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i8 1, metadata !479, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata i64 0, metadata !482, metadata !DIExpression()), !dbg !1346
  %88 = load ptr, ptr %87, align 8, !dbg !1347, !tbaa !1031
  %89 = icmp eq ptr %88, null, !dbg !1349
  br i1 %89, label %90, label %93, !dbg !1349

90:                                               ; preds = %181, %80
  %91 = phi i8 [ 1, %80 ], [ %185, %181 ], !dbg !1350
  call fastcc void @output(ptr noundef null, ptr noundef null), !dbg !1351
  %92 = load i1, ptr @have_read_stdin, align 1, !dbg !1352
  br i1 %92, label %190, label %196, !dbg !1354

93:                                               ; preds = %80, %181
  %94 = phi ptr [ %188, %181 ], [ %88, %80 ]
  %95 = phi i64 [ %186, %181 ], [ 0, %80 ]
  %96 = phi i8 [ %185, %181 ], [ 1, %80 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !482, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i8 %96, metadata !479, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr %94, metadata !1355, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %94, metadata !1113, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1119, metadata !DIExpression()), !dbg !1367
  %97 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(2) @.str.10) #39, !dbg !1369
  %98 = icmp eq i32 %97, 0, !dbg !1370
  call void @llvm.dbg.value(metadata i1 %98, metadata !1364, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  br i1 %98, label %99, label %101, !dbg !1371

99:                                               ; preds = %93
  store i1 true, ptr @have_read_stdin, align 1, !dbg !1372
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()), !dbg !1365
  %100 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.63, i32 noundef 5) #38, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %100, metadata !1355, metadata !DIExpression()), !dbg !1365
  br label %109, !dbg !1376

101:                                              ; preds = %93
  %102 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %94, i32 noundef 0) #38, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %102, metadata !1363, metadata !DIExpression()), !dbg !1365
  %103 = icmp slt i32 %102, 0, !dbg !1379
  br i1 %103, label %104, label %109, !dbg !1381

104:                                              ; preds = %101
  %105 = tail call ptr @__errno_location() #41, !dbg !1382
  %106 = load i32, ptr %105, align 4, !dbg !1382, !tbaa !1102
  %107 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1382
  %108 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %94) #38, !dbg !1382
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %106, ptr noundef %107, ptr noundef %108) #38, !dbg !1382
  br label %181, !dbg !1384

109:                                              ; preds = %101, %99
  %110 = phi ptr [ %100, %99 ], [ %94, %101 ]
  %111 = phi i32 [ 0, %99 ], [ %102, %101 ], !dbg !1385
  call void @llvm.dbg.value(metadata i32 %111, metadata !1363, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %110, metadata !1355, metadata !DIExpression()), !dbg !1365
  %112 = call i64 @lseek(i32 noundef %111, i64 noundef 0, i32 noundef 2) #38, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %112, metadata !1361, metadata !DIExpression()), !dbg !1365
  %113 = icmp slt i64 %112, 0, !dbg !1387
  br i1 %113, label %117, label %114, !dbg !1388

114:                                              ; preds = %109
  %115 = call i32 @isatty(i32 noundef %111) #38, !dbg !1389
  %116 = icmp eq i32 %115, 0, !dbg !1389
  br i1 %116, label %169, label %117, !dbg !1390

117:                                              ; preds = %114, %109
  call void @llvm.dbg.value(metadata i32 %111, metadata !1391, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %110, metadata !1396, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr undef, metadata !1403, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr undef, metadata !1409, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %111, metadata !1410, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %110, metadata !1411, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1430
  call void @llvm.dbg.value(metadata i64 0, metadata !1414, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %3, metadata !1412, metadata !DIExpression(DW_OP_deref)), !dbg !1427
  call void @llvm.dbg.value(metadata ptr %4, metadata !1413, metadata !DIExpression(DW_OP_deref)), !dbg !1427
  %118 = call zeroext i1 @temp_stream(ptr noundef nonnull %3, ptr noundef nonnull %4) #38, !dbg !1431
  br i1 %118, label %119, label %161, !dbg !1433

119:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 0, metadata !1414, metadata !DIExpression()), !dbg !1427
  %120 = load ptr, ptr @G_buffer, align 8, !dbg !1434, !tbaa !1031
  %121 = load i64, ptr @read_size, align 8, !dbg !1435, !tbaa !1267
  %122 = call i64 @read(i32 noundef %111, ptr noundef %120, i64 noundef %121) #38, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %122, metadata !1418, metadata !DIExpression()), !dbg !1437
  %123 = icmp eq i64 %122, 0, !dbg !1438
  br i1 %123, label %150, label %130, !dbg !1440

124:                                              ; preds = %139
  %125 = add i64 %132, %131, !dbg !1441
  call void @llvm.dbg.value(metadata !DIArgList(i64 %131, i64 %132), metadata !1414, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1427
  %126 = load ptr, ptr @G_buffer, align 8, !dbg !1434, !tbaa !1031
  %127 = load i64, ptr @read_size, align 8, !dbg !1435, !tbaa !1267
  %128 = call i64 @read(i32 noundef %111, ptr noundef %126, i64 noundef %127) #38, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %128, metadata !1418, metadata !DIExpression()), !dbg !1437
  %129 = icmp eq i64 %128, 0, !dbg !1438
  br i1 %129, label %150, label %130, !dbg !1440

130:                                              ; preds = %119, %124
  %131 = phi i64 [ %128, %124 ], [ %122, %119 ]
  %132 = phi i64 [ %125, %124 ], [ 0, %119 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !1414, metadata !DIExpression()), !dbg !1427
  %133 = icmp slt i64 %131, 0, !dbg !1442
  br i1 %133, label %134, label %139, !dbg !1444

134:                                              ; preds = %130
  %135 = tail call ptr @__errno_location() #41, !dbg !1445
  %136 = load i32, ptr %135, align 4, !dbg !1445, !tbaa !1102
  %137 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1445
  %138 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %110) #38, !dbg !1445
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %136, ptr noundef %137, ptr noundef %138) #38, !dbg !1445
  br label %161, !dbg !1447

139:                                              ; preds = %130
  call void @llvm.dbg.value(metadata ptr poison, metadata !1412, metadata !DIExpression()), !dbg !1427
  %140 = load ptr, ptr %3, align 8, !dbg !1448, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %140, metadata !1412, metadata !DIExpression()), !dbg !1427
  %141 = load ptr, ptr @G_buffer, align 8, !dbg !1448, !tbaa !1031
  %142 = call i64 @fwrite_unlocked(ptr noundef %141, i64 noundef 1, i64 noundef %131, ptr noundef %140), !dbg !1448
  %143 = icmp eq i64 %142, %131, !dbg !1449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %131, i64 %132), metadata !1414, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1427
  br i1 %143, label %124, label %144, !dbg !1450

144:                                              ; preds = %139
  %145 = tail call ptr @__errno_location() #41, !dbg !1451
  %146 = load i32, ptr %145, align 4, !dbg !1451, !tbaa !1102
  %147 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !1451
  %148 = load ptr, ptr %4, align 8, !dbg !1451, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %148, metadata !1413, metadata !DIExpression()), !dbg !1427
  %149 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %148) #38, !dbg !1451
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %146, ptr noundef %147, ptr noundef %149) #38, !dbg !1451
  br label %161, !dbg !1453

150:                                              ; preds = %124, %119
  %151 = phi i64 [ 0, %119 ], [ %125, %124 ], !dbg !1454
  call void @llvm.dbg.value(metadata i64 %151, metadata !1414, metadata !DIExpression()), !dbg !1427
  %152 = load ptr, ptr %3, align 8, !dbg !1455, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %152, metadata !1412, metadata !DIExpression()), !dbg !1427
  %153 = call i32 @fflush_unlocked(ptr noundef %152) #38, !dbg !1455
  %154 = icmp eq i32 %153, 0, !dbg !1457
  br i1 %154, label %162, label %155, !dbg !1458

155:                                              ; preds = %150
  %156 = tail call ptr @__errno_location() #41, !dbg !1459
  %157 = load i32, ptr %156, align 4, !dbg !1459, !tbaa !1102
  %158 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !1459
  %159 = load ptr, ptr %4, align 8, !dbg !1459, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %159, metadata !1413, metadata !DIExpression()), !dbg !1427
  %160 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %159) #38, !dbg !1459
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %157, ptr noundef %158, ptr noundef %160) #38, !dbg !1459
  br label %161, !dbg !1461

161:                                              ; preds = %155, %144, %134, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1462
  call void @llvm.dbg.value(metadata i64 -1, metadata !1399, metadata !DIExpression()), !dbg !1401
  br label %171, !dbg !1463

162:                                              ; preds = %150
  %163 = load ptr, ptr %3, align 8, !dbg !1464, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %163, metadata !1412, metadata !DIExpression()), !dbg !1427
  %164 = load ptr, ptr %4, align 8, !dbg !1465, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %164, metadata !1413, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1462
  call void @llvm.dbg.value(metadata i64 %151, metadata !1399, metadata !DIExpression()), !dbg !1401
  %165 = icmp slt i64 %151, 0, !dbg !1466
  br i1 %165, label %171, label %166, !dbg !1463

166:                                              ; preds = %162
  call void @llvm.dbg.value(metadata ptr %163, metadata !1397, metadata !DIExpression()), !dbg !1401
  %167 = call i32 @fileno_unlocked(ptr noundef %163) #38, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %164, metadata !1398, metadata !DIExpression()), !dbg !1401
  %168 = call fastcc zeroext i1 @tac_seekable(i32 noundef %167, ptr noundef %164, i64 noundef %151), !dbg !1469
  call void @llvm.dbg.value(metadata i1 %168, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  br label %171

169:                                              ; preds = %114
  %170 = call fastcc zeroext i1 @tac_seekable(i32 noundef %111, ptr noundef %110, i64 noundef %112), !dbg !1470
  br label %171, !dbg !1390

171:                                              ; preds = %169, %166, %162, %161
  %172 = phi i1 [ %170, %169 ], [ %168, %166 ], [ false, %162 ], [ false, %161 ]
  call void @llvm.dbg.value(metadata i1 %172, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  br i1 %98, label %181, label %173, !dbg !1471

173:                                              ; preds = %171
  %174 = call i32 @close(i32 noundef %111) #38, !dbg !1473
  %175 = icmp eq i32 %174, 0, !dbg !1474
  br i1 %175, label %181, label %176, !dbg !1475

176:                                              ; preds = %173
  %177 = tail call ptr @__errno_location() #41, !dbg !1476
  %178 = load i32, ptr %177, align 4, !dbg !1476, !tbaa !1102
  %179 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1476
  %180 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %110) #38, !dbg !1476
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %178, ptr noundef %179, ptr noundef %180) #38, !dbg !1476
  call void @llvm.dbg.value(metadata i8 0, metadata !1360, metadata !DIExpression()), !dbg !1365
  br label %181, !dbg !1478

181:                                              ; preds = %104, %171, %173, %176
  %182 = phi i1 [ false, %104 ], [ %172, %171 ], [ false, %176 ], [ %172, %173 ], !dbg !1365
  %183 = icmp ne i8 %96, 0, !dbg !1479
  %184 = and i1 %183, %182, !dbg !1479
  %185 = zext i1 %184 to i8, !dbg !1479
  call void @llvm.dbg.value(metadata i8 %185, metadata !479, metadata !DIExpression()), !dbg !1253
  %186 = add i64 %95, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %186, metadata !482, metadata !DIExpression()), !dbg !1346
  %187 = getelementptr inbounds ptr, ptr %87, i64 %186, !dbg !1347
  %188 = load ptr, ptr %187, align 8, !dbg !1347, !tbaa !1031
  %189 = icmp eq ptr %188, null, !dbg !1349
  br i1 %189, label %90, label %93, !dbg !1349, !llvm.loop !1481

190:                                              ; preds = %90
  %191 = call i32 @close(i32 noundef 0) #38, !dbg !1483
  %192 = icmp slt i32 %191, 0, !dbg !1484
  br i1 %192, label %193, label %196, !dbg !1485

193:                                              ; preds = %190
  %194 = tail call ptr @__errno_location() #41, !dbg !1486
  %195 = load i32, ptr %194, align 4, !dbg !1486, !tbaa !1102
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %195, ptr noundef nonnull @.str.10) #38, !dbg !1486
  call void @llvm.dbg.value(metadata i8 0, metadata !479, metadata !DIExpression()), !dbg !1253
  br label %196, !dbg !1488

196:                                              ; preds = %193, %190, %90
  %197 = phi i8 [ 0, %193 ], [ %91, %190 ], [ %91, %90 ], !dbg !1253
  call void @llvm.dbg.value(metadata i8 %197, metadata !479, metadata !DIExpression()), !dbg !1253
  %198 = icmp eq i8 %197, 0, !dbg !1489
  %199 = zext i1 %198 to i32, !dbg !1489
  ret i32 %199, !dbg !1489
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
  %3 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1511, !tbaa !1267
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
  call void @llvm.dbg.value(metadata ptr %12, metadata !1330, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %0, metadata !1337, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %6, metadata !1338, metadata !DIExpression()), !dbg !1520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %12, ptr noundef nonnull align 1 %0, i64 noundef %6, i1 noundef false) #38, !dbg !1522
  call void @llvm.dbg.value(metadata !DIArgList(i64 %9, i64 %6), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %6), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1510
  %13 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !1031
  %14 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %13), !dbg !1523
  %15 = icmp eq i64 %14, 8192, !dbg !1525
  br i1 %15, label %16, label %40, !dbg !1526

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %0, i64 %6, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %17, metadata !454, metadata !DIExpression()), !dbg !1510
  %18 = sub i64 %9, %6, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %18, metadata !456, metadata !DIExpression()), !dbg !1510
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1529, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1510
  %19 = icmp ult i64 %18, 8192, !dbg !1516
  br i1 %19, label %53, label %34, !dbg !1517

20:                                               ; preds = %2
  %21 = load ptr, ptr @stdout, align 8, !dbg !1530, !tbaa !1031
  %22 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef %3, ptr noundef %21), !dbg !1530
  %23 = load i64, ptr @output.bytes_in_buffer, align 8, !dbg !1531, !tbaa !1267
  %24 = icmp eq i64 %22, %23, !dbg !1532
  br i1 %24, label %59, label %25, !dbg !1533

25:                                               ; preds = %20
  %26 = tail call ptr @__errno_location() #41, !dbg !1534
  %27 = load i32, ptr %26, align 4, !dbg !1534, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %27, metadata !1537, metadata !DIExpression()), !dbg !1539
  %28 = load ptr, ptr @stdout, align 8, !dbg !1540, !tbaa !1031
  %29 = tail call i32 @fflush_unlocked(ptr noundef %28) #38, !dbg !1540
  %30 = load ptr, ptr @stdout, align 8, !dbg !1541, !tbaa !1031
  %31 = tail call i32 @fpurge(ptr noundef %30) #38, !dbg !1542
  %32 = load ptr, ptr @stdout, align 8, !dbg !1543, !tbaa !1031
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
  call void @llvm.dbg.value(metadata ptr @output.buffer, metadata !1330, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %35, metadata !1337, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 8192, metadata !1338, metadata !DIExpression()), !dbg !1520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @output.buffer, ptr noundef nonnull align 1 dereferenceable(8192) %35, i64 noundef 8192, i1 noundef false) #38, !dbg !1522
  call void @llvm.dbg.value(metadata !DIArgList(i64 %36, i64 8192), metadata !456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1510
  call void @llvm.dbg.value(metadata !DIArgList(ptr %35, i64 8192), metadata !454, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1510
  %37 = load ptr, ptr @stdout, align 8, !dbg !1523, !tbaa !1031
  %38 = tail call i64 @fwrite_unlocked(ptr noundef nonnull @output.buffer, i64 noundef 1, i64 noundef 8192, ptr noundef %37), !dbg !1523
  %39 = icmp eq i64 %38, 8192, !dbg !1525
  br i1 %39, label %49, label %40, !dbg !1526

40:                                               ; preds = %34, %11
  %41 = tail call ptr @__errno_location() #41, !dbg !1545
  %42 = load i32, ptr %41, align 4, !dbg !1545, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %42, metadata !1537, metadata !DIExpression()), !dbg !1547
  %43 = load ptr, ptr @stdout, align 8, !dbg !1548, !tbaa !1031
  %44 = tail call i32 @fflush_unlocked(ptr noundef %43) #38, !dbg !1548
  %45 = load ptr, ptr @stdout, align 8, !dbg !1549, !tbaa !1031
  %46 = tail call i32 @fpurge(ptr noundef %45) #38, !dbg !1550
  %47 = load ptr, ptr @stdout, align 8, !dbg !1551, !tbaa !1031
  tail call void @clearerr_unlocked(ptr noundef %47) #38, !dbg !1551
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #38, !dbg !1552
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %42, ptr noundef %48) #38, !dbg !1552
  unreachable, !dbg !1552

49:                                               ; preds = %34
  %50 = getelementptr inbounds i8, ptr %35, i64 8192, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %50, metadata !454, metadata !DIExpression()), !dbg !1510
  %51 = add i64 %36, -8192, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %51, metadata !456, metadata !DIExpression()), !dbg !1510
  store i64 0, ptr @output.bytes_in_buffer, align 8, !dbg !1529, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 8192, metadata !457, metadata !DIExpression()), !dbg !1510
  %52 = icmp ult i64 %51, 8192, !dbg !1516
  br i1 %52, label %53, label %34, !dbg !1517, !llvm.loop !1553

53:                                               ; preds = %49, %16, %5
  %54 = phi i64 [ %3, %5 ], [ 0, %16 ], [ 0, %49 ], !dbg !1556
  %55 = phi i64 [ %9, %5 ], [ %18, %16 ], [ %51, %49 ], !dbg !1510
  %56 = phi ptr [ %0, %5 ], [ %17, %16 ], [ %50, %49 ]
  %57 = getelementptr inbounds i8, ptr @output.buffer, i64 %54, !dbg !1557
  call void @llvm.dbg.value(metadata ptr %57, metadata !1330, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata ptr %56, metadata !1337, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %55, metadata !1338, metadata !DIExpression()), !dbg !1558
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %57, ptr noundef nonnull align 1 %56, i64 noundef %55, i1 noundef false) #38, !dbg !1560
  %58 = add i64 %54, %55, !dbg !1561
  br label %59, !dbg !1562

59:                                               ; preds = %20, %53
  %60 = phi i64 [ %58, %53 ], [ 0, %20 ], !dbg !1510
  store i64 %60, ptr @output.bytes_in_buffer, align 8, !dbg !1510, !tbaa !1267
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
define internal fastcc zeroext i1 @tac_seekable(i32 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #10 !dbg !1582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1586, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %1, metadata !1587, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %2, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1619
  %4 = load ptr, ptr @separator, align 8, !dbg !1620, !tbaa !1031
  %5 = load i8, ptr %4, align 1, !dbg !1621, !tbaa !1111
  call void @llvm.dbg.value(metadata i8 %5, metadata !1593, metadata !DIExpression()), !dbg !1619
  %6 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !1622
  call void @llvm.dbg.value(metadata ptr %6, metadata !1594, metadata !DIExpression()), !dbg !1619
  %7 = load i64, ptr @match_length, align 8, !dbg !1623, !tbaa !1267
  %8 = add i64 %7, -1, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %8, metadata !1595, metadata !DIExpression()), !dbg !1619
  %9 = load i64, ptr @read_size, align 8, !dbg !1625, !tbaa !1267
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
  %18 = load i32, ptr %17, align 4, !dbg !1636, !tbaa !1102
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1636
  %20 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1636
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %18, ptr noundef %19, ptr noundef %20) #38, !dbg !1636
  br label %21, !dbg !1636

21:                                               ; preds = %12, %16, %3
  %22 = phi i64 [ %13, %16 ], [ %13, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !1588, metadata !DIExpression()), !dbg !1619
  %23 = load ptr, ptr @G_buffer, align 8, !dbg !1637, !tbaa !1031
  %24 = load i64, ptr @read_size, align 8, !dbg !1638, !tbaa !1267
  %25 = tail call i64 @read(i32 noundef %0, ptr noundef %23, i64 noundef %24) #38, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %25, metadata !1591, metadata !DIExpression()), !dbg !1619
  %26 = icmp eq i64 %25, 0, !dbg !1640
  %27 = icmp ne i64 %22, 0, !dbg !1641
  %28 = and i1 %26, %27, !dbg !1641
  br i1 %28, label %29, label %48, !dbg !1642

29:                                               ; preds = %21, %40
  %30 = phi i64 [ %42, %40 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !1588, metadata !DIExpression()), !dbg !1619
  %31 = load i64, ptr @read_size, align 8, !dbg !1643, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %31, metadata !1597, metadata !DIExpression()), !dbg !1644
  %32 = sub nsw i64 0, %31, !dbg !1645
  %33 = tail call i64 @lseek(i32 noundef %0, i64 noundef %32, i32 noundef 1) #38, !dbg !1647
  %34 = icmp slt i64 %33, 0, !dbg !1648
  br i1 %34, label %35, label %40, !dbg !1649

35:                                               ; preds = %29
  %36 = tail call ptr @__errno_location() #41, !dbg !1650
  %37 = load i32, ptr %36, align 4, !dbg !1650, !tbaa !1102
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1650
  %39 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1650
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %38, ptr noundef %39) #38, !dbg !1650
  br label %40, !dbg !1650

40:                                               ; preds = %35, %29
  %41 = load i64, ptr @read_size, align 8, !dbg !1651, !tbaa !1267
  %42 = sub i64 %30, %41, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %42, metadata !1588, metadata !DIExpression()), !dbg !1619
  %43 = load ptr, ptr @G_buffer, align 8, !dbg !1637, !tbaa !1031
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
  %54 = load i64, ptr @read_size, align 8, !dbg !1657, !tbaa !1267
  %55 = icmp eq i64 %52, %54, !dbg !1658
  br i1 %55, label %56, label %64, !dbg !1655

56:                                               ; preds = %51
  %57 = load ptr, ptr @G_buffer, align 8, !dbg !1659, !tbaa !1031
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
  %70 = load i32, ptr %69, align 4, !dbg !1668, !tbaa !1102
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1668
  %72 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1668
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %70, ptr noundef %71, ptr noundef %72) #38, !dbg !1668
  br label %222, !dbg !1670

73:                                               ; preds = %64
  %74 = load ptr, ptr @G_buffer, align 8, !dbg !1671, !tbaa !1031
  %75 = getelementptr inbounds i8, ptr %74, i64 %65, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %75, metadata !1590, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %75, metadata !1589, metadata !DIExpression()), !dbg !1619
  %76 = load i64, ptr @sentinel_length, align 8, !dbg !1673, !tbaa !1267
  %77 = icmp eq i64 %76, 0, !dbg !1673
  %78 = sub i64 1, %7, !dbg !1675
  %79 = select i1 %77, i64 0, i64 %78, !dbg !1675
  %80 = getelementptr i8, ptr %75, i64 %79, !dbg !1675
  call void @llvm.dbg.value(metadata ptr %80, metadata !1589, metadata !DIExpression()), !dbg !1619
  %81 = icmp eq i64 %8, 0
  br label %82, !dbg !1676

82:                                               ; preds = %212, %73
  %83 = phi i64 [ %76, %73 ], [ %220, %212 ]
  %84 = phi i8 [ 1, %73 ], [ %213, %212 ]
  %85 = phi ptr [ %75, %73 ], [ %214, %212 ]
  %86 = phi ptr [ %80, %73 ], [ %221, %212 ]
  %87 = phi i64 [ %66, %73 ], [ %92, %212 ]
  br label %88, !dbg !1676

88:                                               ; preds = %82, %189
  %89 = phi i64 [ %194, %189 ], [ %83, %82 ], !dbg !1677
  %90 = phi ptr [ %192, %189 ], [ %85, %82 ], !dbg !1619
  %91 = phi ptr [ %193, %189 ], [ %86, %82 ], !dbg !1619
  %92 = phi i64 [ %173, %189 ], [ %87, %82 ], !dbg !1619
  call void @llvm.dbg.value(metadata i64 %92, metadata !1588, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %91, metadata !1589, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata ptr %90, metadata !1590, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %84, metadata !1592, metadata !DIExpression()), !dbg !1619
  %93 = icmp eq i64 %89, 0, !dbg !1678
  br i1 %93, label %94, label %123, !dbg !1679

94:                                               ; preds = %88
  %95 = load ptr, ptr @G_buffer, align 8, !dbg !1680, !tbaa !1031
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
  %110 = load ptr, ptr @G_buffer, align 8, !dbg !1695, !tbaa !1031
  br label %139, !dbg !1694

111:                                              ; preds = %106
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 5) #38, !dbg !1696
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %112) #38, !dbg !1696
  unreachable, !dbg !1696

113:                                              ; preds = %106
  %114 = load ptr, ptr @G_buffer, align 8, !dbg !1698, !tbaa !1031
  %115 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 1), align 8, !dbg !1700, !tbaa !1701
  %116 = load i32, ptr %115, align 4, !dbg !1703, !tbaa !1102
  %117 = sext i32 %116 to i64, !dbg !1704
  %118 = getelementptr inbounds i8, ptr %114, i64 %117, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %118, metadata !1589, metadata !DIExpression()), !dbg !1619
  %119 = load ptr, ptr getelementptr inbounds (%struct.re_registers, ptr @regs, i64 0, i32 2), align 8, !dbg !1705, !tbaa !1706
  %120 = load i32, ptr %119, align 4, !dbg !1707, !tbaa !1102
  %121 = sub nsw i32 %120, %116, !dbg !1708
  %122 = sext i32 %121 to i64, !dbg !1707
  store i64 %122, ptr @match_length, align 8, !dbg !1709, !tbaa !1267
  br label %135

123:                                              ; preds = %88, %128
  %124 = phi ptr [ %125, %128 ], [ %91, %88 ], !dbg !1619
  call void @llvm.dbg.value(metadata ptr %124, metadata !1589, metadata !DIExpression()), !dbg !1619
  %125 = getelementptr inbounds i8, ptr %124, i64 -1, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %125, metadata !1589, metadata !DIExpression()), !dbg !1619
  %126 = load i8, ptr %125, align 1, !dbg !1712, !tbaa !1111
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
  %134 = load ptr, ptr @G_buffer, align 8, !dbg !1720, !tbaa !1031
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
  br label %222, !dbg !1729

143:                                              ; preds = %139
  %144 = ptrtoint ptr %90 to i64, !dbg !1730
  %145 = ptrtoint ptr %140 to i64, !dbg !1730
  %146 = sub i64 %144, %145, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %146, metadata !1591, metadata !DIExpression()), !dbg !1619
  %147 = load i64, ptr @read_size, align 8, !dbg !1731, !tbaa !1267
  %148 = icmp ugt i64 %146, %147, !dbg !1732
  br i1 %148, label %149, label %166, !dbg !1733

149:                                              ; preds = %143
  %150 = load i64, ptr @sentinel_length, align 8, !dbg !1734, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 poison, metadata !1613, metadata !DIExpression()), !dbg !1735
  %151 = load i64, ptr @G_buffer_size, align 8, !dbg !1736, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %151, metadata !1614, metadata !DIExpression()), !dbg !1735
  %152 = shl i64 %147, 1, !dbg !1737
  store i64 %152, ptr @read_size, align 8, !dbg !1737, !tbaa !1267
  %153 = shl i64 %147, 2, !dbg !1738
  %154 = or i64 %153, 2, !dbg !1739
  %155 = add i64 %154, %150, !dbg !1740
  store i64 %155, ptr @G_buffer_size, align 8, !dbg !1741, !tbaa !1267
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
  store ptr %164, ptr @G_buffer, align 8, !dbg !1749, !tbaa !1031
  %165 = load i64, ptr @read_size, align 8, !dbg !1750, !tbaa !1267
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
  store i64 %92, ptr @read_size, align 8, !dbg !1757, !tbaa !1267
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
  %178 = load i32, ptr %177, align 4, !dbg !1764, !tbaa !1102
  %179 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1764
  %180 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1764
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %178, ptr noundef %179, ptr noundef %180) #38, !dbg !1764
  br label %181, !dbg !1764

181:                                              ; preds = %176, %172
  %182 = load ptr, ptr @G_buffer, align 8, !dbg !1765, !tbaa !1031
  %183 = load i64, ptr @read_size, align 8, !dbg !1766, !tbaa !1267
  %184 = getelementptr inbounds i8, ptr %182, i64 %183, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %184, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata ptr %182, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %146, metadata !1774, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %184, ptr noundef nonnull align 1 %182, i64 noundef %146, i1 noundef false) #38, !dbg !1777
  call void @llvm.dbg.value(metadata !DIArgList(ptr %182, i64 %146, i64 %183), metadata !1590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1619
  %185 = load i64, ptr @sentinel_length, align 8, !dbg !1778, !tbaa !1267
  call void @llvm.dbg.value(metadata ptr poison, metadata !1589, metadata !DIExpression()), !dbg !1619
  %186 = tail call i64 @full_read(i32 noundef %0, ptr noundef %182, i64 noundef %183) #38, !dbg !1780
  %187 = load i64, ptr @read_size, align 8, !dbg !1782, !tbaa !1267
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
  %194 = load i64, ptr @sentinel_length, align 8, !dbg !1677, !tbaa !1267
  br label %88, !dbg !1784, !llvm.loop !1787

195:                                              ; preds = %181
  %196 = tail call ptr @__errno_location() #41, !dbg !1789
  %197 = load i32, ptr %196, align 4, !dbg !1789, !tbaa !1102
  %198 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1789
  %199 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1789
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %197, ptr noundef %198, ptr noundef %199) #38, !dbg !1789
  br label %222, !dbg !1791

200:                                              ; preds = %135
  %201 = load i1, ptr @separator_ends_record, align 1, !dbg !1792
  br i1 %201, label %209, label %202, !dbg !1793

202:                                              ; preds = %200
  %203 = load i64, ptr @match_length, align 8, !dbg !1794, !tbaa !1267
  %204 = getelementptr inbounds i8, ptr %137, i64 %203, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %204, metadata !1615, metadata !DIExpression()), !dbg !1796
  %205 = and i8 %84, 1, !dbg !1797
  %206 = icmp ne i8 %205, 0, !dbg !1797
  %207 = icmp eq ptr %204, %90
  %208 = select i1 %206, i1 %207, i1 false, !dbg !1799
  br i1 %208, label %212, label %209, !dbg !1799

209:                                              ; preds = %200, %202
  %210 = phi ptr [ %204, %202 ], [ %137, %200 ]
  %211 = phi i8 [ 0, %202 ], [ %84, %200 ]
  tail call fastcc void @output(ptr noundef %210, ptr noundef %90), !dbg !1800
  br label %212, !dbg !1801

212:                                              ; preds = %209, %202
  %213 = phi i8 [ 0, %202 ], [ %211, %209 ], !dbg !1619
  %214 = phi ptr [ %90, %202 ], [ %210, %209 ], !dbg !1800
  call void @llvm.dbg.value(metadata ptr %214, metadata !1590, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 %213, metadata !1592, metadata !DIExpression()), !dbg !1619
  %215 = load i64, ptr @sentinel_length, align 8, !dbg !1801, !tbaa !1267
  %216 = icmp eq i64 %215, 0, !dbg !1803
  %217 = load i64, ptr @match_length, align 8, !dbg !1804
  %218 = sub i64 1, %217, !dbg !1804
  %219 = getelementptr inbounds i8, ptr %137, i64 %218, !dbg !1804
  %220 = select i1 %216, i64 0, i64 1, !dbg !1804
  %221 = select i1 %216, ptr %137, ptr %219, !dbg !1804
  br label %82, !dbg !1676, !llvm.loop !1787

222:                                              ; preds = %195, %142, %68
  %223 = phi i1 [ false, %68 ], [ true, %142 ], [ false, %195 ], !dbg !1619
  ret i1 %223, !dbg !1805
}

declare !dbg !1806 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

declare !dbg !1807 i32 @re_search(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !1811 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @temp_stream(ptr nocapture noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #10 !dbg !490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !551, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %1, metadata !552, metadata !DIExpression()), !dbg !1814
  %3 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1815, !tbaa !1031
  %4 = icmp eq ptr %3, null, !dbg !1816
  br i1 %4, label %5, label %59, !dbg !1817

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 128, metadata !556, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr null, metadata !553, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr null, metadata !1819, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64 128, metadata !1825, metadata !DIExpression()), !dbg !1826
  %6 = tail call dereferenceable_or_null(128) ptr @malloc(i64 128), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %6, metadata !553, metadata !DIExpression()), !dbg !1818
  %7 = icmp eq ptr %6, null, !dbg !1831
  br i1 %7, label %8, label %18, !dbg !1832

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #41, !dbg !1833
  br label %14, !dbg !1832

10:                                               ; preds = %23
  %11 = shl nuw nsw i64 %20, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %11, metadata !556, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %20, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %19, metadata !553, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %19, metadata !1819, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i64 %20, metadata !1825, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1826
  %12 = tail call ptr @realloc(ptr noundef nonnull %19, i64 noundef %11) #44, !dbg !1830
  call void @llvm.dbg.value(metadata ptr %12, metadata !553, metadata !DIExpression()), !dbg !1818
  %13 = icmp eq ptr %12, null, !dbg !1831
  br i1 %13, label %14, label %18, !dbg !1832, !llvm.loop !1836

14:                                               ; preds = %10, %8
  %15 = phi ptr [ %9, %8 ], [ %24, %10 ], !dbg !1833
  %16 = load i32, ptr %15, align 4, !dbg !1833, !tbaa !1102
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !1833
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef %17) #38, !dbg !1833
  br label %80, !dbg !1839

18:                                               ; preds = %5, %10
  %19 = phi ptr [ %12, %10 ], [ %6, %5 ]
  %20 = phi i64 [ %11, %10 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !556, metadata !DIExpression()), !dbg !1818
  %21 = tail call i32 @path_search(ptr noundef nonnull %19, i64 noundef %20, ptr noundef null, ptr noundef nonnull @.str.1.27, i1 noundef zeroext true) #38, !dbg !1840
  %22 = icmp eq i32 %21, 0, !dbg !1842
  br i1 %22, label %33, label %23, !dbg !1843

23:                                               ; preds = %18
  %24 = tail call ptr @__errno_location() #41, !dbg !1844
  %25 = load i32, ptr %24, align 4, !dbg !1844, !tbaa !1102
  %26 = icmp ne i32 %25, 22, !dbg !1846
  %27 = icmp ugt i64 %20, 2048
  %28 = or i1 %27, %26, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %20, metadata !556, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1818
  br i1 %28, label %29, label %10, !dbg !1847

29:                                               ; preds = %23
  %30 = icmp eq i32 %25, 22, !dbg !1848
  %31 = select i1 %30, i32 36, i32 %25, !dbg !1848
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !1848
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %31, ptr noundef %32) #38, !dbg !1848
  br label %80, !dbg !1850

33:                                               ; preds = %18
  store ptr %19, ptr @temp_stream.tempfile, align 8, !dbg !1851, !tbaa !1031
  %34 = tail call i32 @mkstemp_safer(ptr noundef nonnull %19) #38, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %34, metadata !557, metadata !DIExpression()), !dbg !1818
  %35 = icmp slt i32 %34, 0, !dbg !1853
  br i1 %35, label %36, label %42, !dbg !1855

36:                                               ; preds = %33
  %37 = tail call ptr @__errno_location() #41, !dbg !1856
  %38 = load i32, ptr %37, align 4, !dbg !1856, !tbaa !1102
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2.28, i32 noundef 5) #38, !dbg !1856
  %40 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1856, !tbaa !1031
  %41 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %40) #38, !dbg !1856
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %38, ptr noundef %39, ptr noundef %41) #38, !dbg !1856
  br label %54, !dbg !1858

42:                                               ; preds = %33
  %43 = tail call noalias ptr @fdopen(i32 noundef %34, ptr noundef nonnull @.str.3.29) #38, !dbg !1859
  store ptr %43, ptr @temp_stream.tmp_fp, align 8, !dbg !1860, !tbaa !1031
  %44 = icmp eq ptr %43, null, !dbg !1861
  br i1 %44, label %45, label %56, !dbg !1862

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #41, !dbg !1863
  %47 = load i32, ptr %46, align 4, !dbg !1863, !tbaa !1102
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.30, i32 noundef 5) #38, !dbg !1863
  %49 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1863, !tbaa !1031
  %50 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %49) #38, !dbg !1863
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %47, ptr noundef %48, ptr noundef %50) #38, !dbg !1863
  %51 = tail call i32 @close(i32 noundef %34) #38, !dbg !1864
  %52 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1865, !tbaa !1031
  %53 = tail call i32 @unlink(ptr noundef %52) #38, !dbg !1866
  br label %54, !dbg !1866

54:                                               ; preds = %45, %36
  call void @llvm.dbg.label(metadata !558), !dbg !1867
  %55 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1868, !tbaa !1031
  tail call void @free(ptr noundef %55) #38, !dbg !1869
  store ptr null, ptr @temp_stream.tempfile, align 8, !dbg !1870, !tbaa !1031
  br label %80, !dbg !1871

56:                                               ; preds = %42
  %57 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1872, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %57, metadata !1873, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr %43, metadata !1878, metadata !DIExpression()), !dbg !1879
  %58 = tail call i32 @unlink(ptr noundef %57) #38, !dbg !1881
  br label %75

59:                                               ; preds = %2
  %60 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1882, !tbaa !1031
  tail call void @clearerr_unlocked(ptr noundef %60) #38, !dbg !1882
  %61 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1884, !tbaa !1031
  %62 = tail call i32 @rpl_fseeko(ptr noundef %61, i64 noundef 0, i32 noundef 0) #38, !dbg !1886
  %63 = icmp slt i32 %62, 0, !dbg !1887
  br i1 %63, label %69, label %64, !dbg !1888

64:                                               ; preds = %59
  %65 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1889, !tbaa !1031
  %66 = tail call i32 @fileno_unlocked(ptr noundef %65) #38, !dbg !1889
  %67 = tail call i32 @ftruncate(i32 noundef %66, i64 noundef 0) #38, !dbg !1890
  %68 = icmp slt i32 %67, 0, !dbg !1891
  br i1 %68, label %69, label %75, !dbg !1892

69:                                               ; preds = %64, %59
  %70 = tail call ptr @__errno_location() #41, !dbg !1893
  %71 = load i32, ptr %70, align 4, !dbg !1893, !tbaa !1102
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.31, i32 noundef 5) #38, !dbg !1893
  %73 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1893, !tbaa !1031
  %74 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %73) #38, !dbg !1893
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %72, ptr noundef %74) #38, !dbg !1893
  br label %80, !dbg !1895

75:                                               ; preds = %56, %64
  %76 = load ptr, ptr @temp_stream.tmp_fp, align 8, !dbg !1896, !tbaa !1031
  store ptr %76, ptr %0, align 8, !dbg !1897, !tbaa !1031
  %77 = icmp eq ptr %1, null, !dbg !1898
  br i1 %77, label %80, label %78, !dbg !1900

78:                                               ; preds = %75
  %79 = load ptr, ptr @temp_stream.tempfile, align 8, !dbg !1901, !tbaa !1031
  store ptr %79, ptr %1, align 8, !dbg !1902, !tbaa !1031
  br label %80, !dbg !1903

80:                                               ; preds = %54, %14, %29, %75, %78, %69
  %81 = phi i1 [ false, %69 ], [ true, %78 ], [ true, %75 ], [ false, %29 ], [ false, %14 ], [ false, %54 ], !dbg !1814
  ret i1 %81, !dbg !1904
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1905 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare !dbg !1906 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1909 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1912 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare !dbg !1916 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #18 !dbg !1919 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !1922
  store ptr %0, ptr @file_name, align 8, !dbg !1923, !tbaa !1031
  ret void, !dbg !1924
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #18 !dbg !1925 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1929, metadata !DIExpression()), !dbg !1930
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1931, !tbaa !1932
  ret void, !dbg !1934
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1935 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1940, !tbaa !1031
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1941
  %3 = icmp eq i32 %2, 0, !dbg !1942
  br i1 %3, label %22, label %4, !dbg !1943

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1944, !tbaa !1932, !range !1945, !noundef !1040
  %6 = icmp eq i8 %5, 0, !dbg !1944
  br i1 %6, label %11, label %7, !dbg !1946

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1947
  %9 = load i32, ptr %8, align 4, !dbg !1947, !tbaa !1102
  %10 = icmp eq i32 %9, 32, !dbg !1948
  br i1 %10, label %22, label %11, !dbg !1949

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1.38, i32 noundef 5) #38, !dbg !1950
  call void @llvm.dbg.value(metadata ptr %12, metadata !1937, metadata !DIExpression()), !dbg !1951
  %13 = load ptr, ptr @file_name, align 8, !dbg !1952, !tbaa !1031
  %14 = icmp eq ptr %13, null, !dbg !1952
  %15 = tail call ptr @__errno_location() #41, !dbg !1954
  %16 = load i32, ptr %15, align 4, !dbg !1954, !tbaa !1102
  br i1 %14, label %19, label %17, !dbg !1955

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1956
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.39, ptr noundef %18, ptr noundef %12) #38, !dbg !1956
  br label %20, !dbg !1956

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.40, ptr noundef %12) #38, !dbg !1957
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1958, !tbaa !1102
  tail call void @_exit(i32 noundef %21) #40, !dbg !1959
  unreachable, !dbg !1959

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1960, !tbaa !1031
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1962
  %25 = icmp eq i32 %24, 0, !dbg !1963
  br i1 %25, label %28, label %26, !dbg !1964

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1965, !tbaa !1102
  tail call void @_exit(i32 noundef %27) #40, !dbg !1966
  unreachable, !dbg !1966

28:                                               ; preds = %22
  ret void, !dbg !1967
}

; Function Attrs: noreturn
declare !dbg !1968 void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 !dbg !1969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1973, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i32 %1, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %2, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %3, metadata !1976, metadata !DIExpression()), !dbg !1977
  tail call fastcc void @flush_stdout(), !dbg !1978
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1979, !tbaa !1031
  %6 = icmp eq ptr %5, null, !dbg !1979
  br i1 %6, label %8, label %7, !dbg !1981

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1982
  br label %12, !dbg !1982

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1983, !tbaa !1031
  %10 = tail call ptr @getprogname() #39, !dbg !1983
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.49, ptr noundef %10) #38, !dbg !1983
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1985
  ret void, !dbg !1986
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1987 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1989, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata i32 1, metadata !1991, metadata !DIExpression()), !dbg !1994
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1997
  %2 = icmp slt i32 %1, 0, !dbg !1998
  br i1 %2, label %6, label %3, !dbg !1999

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2000, !tbaa !1031
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2000
  br label %6, !dbg !2000

6:                                                ; preds = %3, %0
  ret void, !dbg !2001
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2002 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %1, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata ptr %3, metadata !2007, metadata !DIExpression()), !dbg !2008
  %6 = load ptr, ptr @stderr, align 8, !dbg !2009, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %6, metadata !2010, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %2, metadata !2050, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata ptr %3, metadata !2051, metadata !DIExpression()), !dbg !2052
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !2054
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2055, !tbaa !1102
  %9 = add i32 %8, 1, !dbg !2055
  store i32 %9, ptr @error_message_count, align 4, !dbg !2055, !tbaa !1102
  %10 = icmp eq i32 %1, 0, !dbg !2056
  br i1 %10, label %20, label %11, !dbg !2058

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2059, metadata !DIExpression()), !dbg !2067
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2063, metadata !DIExpression()), !dbg !2070
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %12, metadata !2062, metadata !DIExpression()), !dbg !2067
  %13 = icmp eq ptr %12, null, !dbg !2072
  br i1 %13, label %14, label %16, !dbg !2074

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.50, ptr noundef nonnull @.str.5.51, i32 noundef 5) #38, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %15, metadata !2062, metadata !DIExpression()), !dbg !2067
  br label %16, !dbg !2076

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2067
  call void @llvm.dbg.value(metadata ptr %17, metadata !2062, metadata !DIExpression()), !dbg !2067
  %18 = load ptr, ptr @stderr, align 8, !dbg !2077, !tbaa !1031
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.52, ptr noundef %17) #38, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2078
  br label %20, !dbg !2079

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2080, !tbaa !1031
  call void @llvm.dbg.value(metadata i32 10, metadata !2081, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %21, metadata !2087, metadata !DIExpression()), !dbg !2088
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2090
  %23 = load ptr, ptr %22, align 8, !dbg !2090, !tbaa !2091
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2090
  %25 = load ptr, ptr %24, align 8, !dbg !2090, !tbaa !2093
  %26 = icmp ult ptr %23, %25, !dbg !2090
  br i1 %26, label %29, label %27, !dbg !2090, !prof !2094

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !2090
  br label %31, !dbg !2090

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2090
  store ptr %30, ptr %22, align 8, !dbg !2090, !tbaa !2091
  store i8 10, ptr %23, align 1, !dbg !2090, !tbaa !1111
  br label %31, !dbg !2090

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2095, !tbaa !1031
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !2095
  %34 = icmp eq i32 %0, 0, !dbg !2096
  br i1 %34, label %36, label %35, !dbg !2098

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !2099
  unreachable, !dbg !2099

36:                                               ; preds = %31
  ret void, !dbg !2100
}

declare !dbg !2101 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !2104 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2107 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2110 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2113 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2117, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2118, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr %2, metadata !2119, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !2127
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2120, metadata !DIExpression()), !dbg !2128
  call void @llvm.va_start(ptr nonnull %4), !dbg !2129
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !2130
  call void @llvm.va_end(ptr nonnull %4), !dbg !2131
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !2132
  ret void, !dbg !2132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #20 !dbg !593 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !605, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %1, metadata !606, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata ptr %2, metadata !607, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %3, metadata !608, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata ptr %4, metadata !609, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata ptr %5, metadata !610, metadata !DIExpression()), !dbg !2133
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2134, !tbaa !1102
  %8 = icmp eq i32 %7, 0, !dbg !2134
  br i1 %8, label %23, label %9, !dbg !2136

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2137, !tbaa !1102
  %11 = icmp eq i32 %10, %3, !dbg !2140
  br i1 %11, label %12, label %22, !dbg !2141

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2142, !tbaa !1031
  %14 = icmp eq ptr %13, %2, !dbg !2143
  br i1 %14, label %36, label %15, !dbg !2144

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2145
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2146
  br i1 %18, label %19, label %22, !dbg !2146

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2147
  %21 = icmp eq i32 %20, 0, !dbg !2148
  br i1 %21, label %36, label %22, !dbg !2149

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2150, !tbaa !1031
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2151, !tbaa !1102
  br label %23, !dbg !2152

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2153
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2154, !tbaa !1031
  %25 = icmp eq ptr %24, null, !dbg !2154
  br i1 %25, label %27, label %26, !dbg !2156

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !2157
  br label %31, !dbg !2157

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2158, !tbaa !1031
  %29 = tail call ptr @getprogname() #39, !dbg !2158
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.55, ptr noundef %29) #38, !dbg !2158
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2160, !tbaa !1031
  %33 = icmp eq ptr %2, null, !dbg !2160
  %34 = select i1 %33, ptr @.str.3.56, ptr @.str.2.57, !dbg !2160
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !2160
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2161
  br label %36, !dbg !2162

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2162
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2163 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata ptr %2, metadata !2169, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %3, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata ptr %4, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !2174
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.va_start(ptr nonnull %6), !dbg !2176
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !2177
  call void @llvm.va_end(ptr nonnull %6), !dbg !2178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !2179
  ret void, !dbg !2179
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2180 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2218, metadata !DIExpression()), !dbg !2219
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2220
  ret i32 0, !dbg !2221
}

; Function Attrs: nounwind
declare !dbg !2222 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2226 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2264, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %1, metadata !2265, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %2, metadata !2266, metadata !DIExpression()), !dbg !2270
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2271
  %5 = load ptr, ptr %4, align 8, !dbg !2271, !tbaa !2272
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2273
  %7 = load ptr, ptr %6, align 8, !dbg !2273, !tbaa !2274
  %8 = icmp eq ptr %5, %7, !dbg !2275
  br i1 %8, label %9, label %27, !dbg !2276

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2277
  %11 = load ptr, ptr %10, align 8, !dbg !2277, !tbaa !2091
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2278
  %13 = load ptr, ptr %12, align 8, !dbg !2278, !tbaa !2279
  %14 = icmp eq ptr %11, %13, !dbg !2280
  br i1 %14, label %15, label %27, !dbg !2281

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2282
  %17 = load ptr, ptr %16, align 8, !dbg !2282, !tbaa !2283
  %18 = icmp eq ptr %17, null, !dbg !2284
  br i1 %18, label %19, label %27, !dbg !2285

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2286
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %21, metadata !2267, metadata !DIExpression()), !dbg !2288
  %22 = icmp eq i64 %21, -1, !dbg !2289
  br i1 %22, label %29, label %23, !dbg !2291

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2292, !tbaa !2293
  %25 = and i32 %24, -17, !dbg !2292
  store i32 %25, ptr %0, align 8, !dbg !2292, !tbaa !2293
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2294
  store i64 %21, ptr %26, align 8, !dbg !2295, !tbaa !2296
  br label %29, !dbg !2297

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2298
  br label %29, !dbg !2299

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2270
  ret i32 %30, !dbg !2300
}

; Function Attrs: nofree nounwind
declare !dbg !2301 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2304 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @full_read(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2312, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata ptr %1, metadata !2313, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %2, metadata !2314, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2315, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata ptr %1, metadata !2316, metadata !DIExpression()), !dbg !2319
  %4 = icmp sgt i64 %2, 0, !dbg !2320
  br i1 %4, label %5, label %20, !dbg !2321

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !2314, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata ptr %7, metadata !2316, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %8, metadata !2315, metadata !DIExpression()), !dbg !2319
  %9 = tail call i64 @safe_read(i32 noundef %0, ptr noundef %7, i64 noundef %6) #38, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %9, metadata !2317, metadata !DIExpression()), !dbg !2323
  %10 = icmp slt i64 %9, 0, !dbg !2324
  br i1 %10, label %20, label %11, !dbg !2326

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !2327
  br i1 %12, label %13, label %15, !dbg !2329

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #41, !dbg !2330
  store i32 0, ptr %14, align 4, !dbg !2332, !tbaa !1102
  br label %20, !dbg !2333

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %16, metadata !2315, metadata !DIExpression()), !dbg !2319
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %17, metadata !2316, metadata !DIExpression()), !dbg !2319
  %18 = sub nsw i64 %6, %9, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %18, metadata !2314, metadata !DIExpression()), !dbg !2319
  %19 = icmp sgt i64 %18, 0, !dbg !2320
  br i1 %19, label %5, label %20, !dbg !2321

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !2315, metadata !DIExpression()), !dbg !2319
  ret i64 %21, !dbg !2337
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2338 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2341, !tbaa !1031
  ret ptr %1, !dbg !2342
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2343 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2345, metadata !DIExpression()), !dbg !2348
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %2, metadata !2346, metadata !DIExpression()), !dbg !2348
  %3 = icmp eq ptr %2, null, !dbg !2350
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2350
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2350
  call void @llvm.dbg.value(metadata ptr %5, metadata !2347, metadata !DIExpression()), !dbg !2348
  %6 = ptrtoint ptr %5 to i64, !dbg !2351
  %7 = ptrtoint ptr %0 to i64, !dbg !2351
  %8 = sub i64 %6, %7, !dbg !2351
  %9 = icmp sgt i64 %8, 6, !dbg !2353
  br i1 %9, label %10, label %19, !dbg !2354

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %11, metadata !2356, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 7, metadata !2362, metadata !DIExpression()), !dbg !2363
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.72, i64 7), !dbg !2365
  %13 = icmp eq i32 %12, 0, !dbg !2366
  br i1 %13, label %14, label %19, !dbg !2367

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2345, metadata !DIExpression()), !dbg !2348
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.73, i64 noundef 3) #39, !dbg !2368
  %16 = icmp eq i32 %15, 0, !dbg !2371
  %17 = select i1 %16, i64 3, i64 0, !dbg !2372
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2372
  br label %19, !dbg !2372

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2348
  call void @llvm.dbg.value(metadata ptr %21, metadata !2347, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata ptr %20, metadata !2345, metadata !DIExpression()), !dbg !2348
  store ptr %20, ptr @program_name, align 8, !dbg !2373, !tbaa !1031
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2374, !tbaa !1031
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2375, !tbaa !1031
  ret void, !dbg !2376
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2377 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !647 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !654, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %1, metadata !655, metadata !DIExpression()), !dbg !2378
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %5, metadata !656, metadata !DIExpression()), !dbg !2378
  %6 = icmp eq ptr %5, %0, !dbg !2380
  br i1 %6, label %7, label %14, !dbg !2382

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %4, metadata !662, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata ptr %4, metadata !2386, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata ptr %4, metadata !2394, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 0, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 8, metadata !2400, metadata !DIExpression()), !dbg !2401
  store i64 0, ptr %4, align 8, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %3, metadata !657, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2404
  %9 = icmp eq i64 %8, 2, !dbg !2406
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !657, metadata !DIExpression()), !dbg !2378
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2407
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2408
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2408
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2378
  ret ptr %15, !dbg !2408
}

; Function Attrs: nounwind
declare !dbg !2409 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2415 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2420, metadata !DIExpression()), !dbg !2423
  %2 = tail call ptr @__errno_location() #41, !dbg !2424
  %3 = load i32, ptr %2, align 4, !dbg !2424, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %3, metadata !2421, metadata !DIExpression()), !dbg !2423
  %4 = icmp eq ptr %0, null, !dbg !2425
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2425
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %6, metadata !2422, metadata !DIExpression()), !dbg !2423
  store i32 %3, ptr %2, align 4, !dbg !2427, !tbaa !1102
  ret ptr %6, !dbg !2428
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2429 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2435, metadata !DIExpression()), !dbg !2436
  %2 = icmp eq ptr %0, null, !dbg !2437
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2437
  %4 = load i32, ptr %3, align 8, !dbg !2438, !tbaa !2439
  ret i32 %4, !dbg !2441
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2442 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %1, metadata !2447, metadata !DIExpression()), !dbg !2448
  %3 = icmp eq ptr %0, null, !dbg !2449
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2449
  store i32 %1, ptr %4, align 8, !dbg !2450, !tbaa !2439
  ret void, !dbg !2451
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2452 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 %1, metadata !2457, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %2, metadata !2458, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8 %1, metadata !2459, metadata !DIExpression()), !dbg !2464
  %4 = icmp eq ptr %0, null, !dbg !2465
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2465
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2466
  %7 = lshr i8 %1, 5, !dbg !2467
  %8 = zext i8 %7 to i64, !dbg !2467
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2468
  call void @llvm.dbg.value(metadata ptr %9, metadata !2460, metadata !DIExpression()), !dbg !2464
  %10 = and i8 %1, 31, !dbg !2469
  %11 = zext i8 %10 to i32, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %11, metadata !2462, metadata !DIExpression()), !dbg !2464
  %12 = load i32, ptr %9, align 4, !dbg !2470, !tbaa !1102
  %13 = lshr i32 %12, %11, !dbg !2471
  %14 = and i32 %13, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %14, metadata !2463, metadata !DIExpression()), !dbg !2464
  %15 = xor i32 %13, %2, !dbg !2473
  %16 = and i32 %15, 1, !dbg !2473
  %17 = shl nuw i32 %16, %11, !dbg !2474
  %18 = xor i32 %17, %12, !dbg !2475
  store i32 %18, ptr %9, align 4, !dbg !2475, !tbaa !1102
  ret i32 %14, !dbg !2476
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2484
  %3 = icmp eq ptr %0, null, !dbg !2485
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2487
  call void @llvm.dbg.value(metadata ptr %4, metadata !2481, metadata !DIExpression()), !dbg !2484
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2488
  %6 = load i32, ptr %5, align 4, !dbg !2488, !tbaa !2489
  call void @llvm.dbg.value(metadata i32 %6, metadata !2483, metadata !DIExpression()), !dbg !2484
  store i32 %1, ptr %5, align 4, !dbg !2490, !tbaa !2489
  ret i32 %6, !dbg !2491
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2492 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %1, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !2499
  %4 = icmp eq ptr %0, null, !dbg !2500
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2502
  call void @llvm.dbg.value(metadata ptr %5, metadata !2496, metadata !DIExpression()), !dbg !2499
  store i32 10, ptr %5, align 8, !dbg !2503, !tbaa !2439
  %6 = icmp ne ptr %1, null, !dbg !2504
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2506
  br i1 %8, label %10, label %9, !dbg !2506

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2507
  unreachable, !dbg !2507

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2508
  store ptr %1, ptr %11, align 8, !dbg !2509, !tbaa !2510
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2511
  store ptr %2, ptr %12, align 8, !dbg !2512, !tbaa !2513
  ret void, !dbg !2514
}

; Function Attrs: noreturn nounwind
declare !dbg !2515 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2516 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %2, metadata !2522, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %3, metadata !2523, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %4, metadata !2524, metadata !DIExpression()), !dbg !2528
  %6 = icmp eq ptr %4, null, !dbg !2529
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2529
  call void @llvm.dbg.value(metadata ptr %7, metadata !2525, metadata !DIExpression()), !dbg !2528
  %8 = tail call ptr @__errno_location() #41, !dbg !2530
  %9 = load i32, ptr %8, align 4, !dbg !2530, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %9, metadata !2526, metadata !DIExpression()), !dbg !2528
  %10 = load i32, ptr %7, align 8, !dbg !2531, !tbaa !2439
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2532
  %12 = load i32, ptr %11, align 4, !dbg !2532, !tbaa !2489
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2533
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2534
  %15 = load ptr, ptr %14, align 8, !dbg !2534, !tbaa !2510
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2535
  %17 = load ptr, ptr %16, align 8, !dbg !2535, !tbaa !2513
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %18, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i32 %9, ptr %8, align 4, !dbg !2537, !tbaa !1102
  ret i64 %18, !dbg !2538
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2539 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2545, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %1, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %2, metadata !2547, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %3, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %4, metadata !2549, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %5, metadata !2550, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %6, metadata !2551, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %7, metadata !2552, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %8, metadata !2553, metadata !DIExpression()), !dbg !2607
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2608
  %17 = icmp eq i64 %16, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i1 %17, metadata !2554, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2607
  call void @llvm.dbg.value(metadata i64 0, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 0, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr null, metadata !2557, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 0, metadata !2558, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2559, metadata !DIExpression()), !dbg !2607
  %18 = trunc i32 %5 to i8, !dbg !2610
  %19 = lshr i8 %18, 1, !dbg !2610
  %20 = and i8 %19, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i8 %20, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2562, metadata !DIExpression()), !dbg !2607
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2611

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2612
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2613
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2614
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2615
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2607
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2616
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2617
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %39, metadata !2562, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %38, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %37, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %36, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %35, metadata !2558, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %34, metadata !2557, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %33, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 0, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %32, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %31, metadata !2553, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %30, metadata !2552, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %29, metadata !2549, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.label(metadata !2600), !dbg !2618
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2607
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
  ], !dbg !2619

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 5, metadata !2549, metadata !DIExpression()), !dbg !2607
  br label %115, !dbg !2620

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 5, metadata !2549, metadata !DIExpression()), !dbg !2607
  %43 = and i8 %37, 1, !dbg !2621
  %44 = icmp eq i8 %43, 0, !dbg !2621
  br i1 %44, label %45, label %115, !dbg !2620

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2623
  br i1 %46, label %115, label %47, !dbg !2626

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2623, !tbaa !1111
  br label %115, !dbg !2623

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.86, metadata !743, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %29, metadata !744, metadata !DIExpression()), !dbg !2627
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.11.86, i32 noundef 5) #38, !dbg !2631
  call void @llvm.dbg.value(metadata ptr %49, metadata !745, metadata !DIExpression()), !dbg !2627
  %50 = icmp eq ptr %49, @.str.11.86, !dbg !2632
  br i1 %50, label %51, label %60, !dbg !2634

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2635
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2636
  call void @llvm.dbg.declare(metadata ptr %13, metadata !747, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata ptr %13, metadata !2638, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata ptr %13, metadata !2646, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i64 8, metadata !2650, metadata !DIExpression()), !dbg !2651
  store i64 0, ptr %13, align 8, !dbg !2653
  call void @llvm.dbg.value(metadata ptr %12, metadata !746, metadata !DIExpression(DW_OP_deref)), !dbg !2627
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2654
  %53 = icmp eq i64 %52, 3, !dbg !2656
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !746, metadata !DIExpression()), !dbg !2627
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2657
  %57 = icmp eq i32 %29, 9, !dbg !2657
  %58 = select i1 %57, ptr @.str.10.88, ptr @.str.12.89, !dbg !2657
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2657
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2658
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2658
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2627
  call void @llvm.dbg.value(metadata ptr %61, metadata !2552, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr @.str.12.89, metadata !743, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %29, metadata !744, metadata !DIExpression()), !dbg !2659
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.87, ptr noundef nonnull @.str.12.89, i32 noundef 5) #38, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %62, metadata !745, metadata !DIExpression()), !dbg !2659
  %63 = icmp eq ptr %62, @.str.12.89, !dbg !2662
  br i1 %63, label %64, label %73, !dbg !2663

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2664
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2665
  call void @llvm.dbg.declare(metadata ptr %11, metadata !747, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %11, metadata !2638, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %11, metadata !2646, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i64 8, metadata !2650, metadata !DIExpression()), !dbg !2669
  store i64 0, ptr %11, align 8, !dbg !2671
  call void @llvm.dbg.value(metadata ptr %10, metadata !746, metadata !DIExpression(DW_OP_deref)), !dbg !2659
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2672
  %66 = icmp eq i64 %65, 3, !dbg !2673
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !746, metadata !DIExpression()), !dbg !2659
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2674
  %70 = icmp eq i32 %29, 9, !dbg !2674
  %71 = select i1 %70, ptr @.str.10.88, ptr @.str.12.89, !dbg !2674
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2674
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2675
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2675
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2553, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %74, metadata !2552, metadata !DIExpression()), !dbg !2607
  %76 = and i8 %37, 1, !dbg !2676
  %77 = icmp eq i8 %76, 0, !dbg !2676
  br i1 %77, label %78, label %93, !dbg !2677

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2564, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64 0, metadata !2555, metadata !DIExpression()), !dbg !2607
  %79 = load i8, ptr %74, align 1, !dbg !2679, !tbaa !1111
  %80 = icmp eq i8 %79, 0, !dbg !2681
  br i1 %80, label %93, label %81, !dbg !2681

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2564, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %84, metadata !2555, metadata !DIExpression()), !dbg !2607
  %85 = icmp ult i64 %84, %40, !dbg !2682
  br i1 %85, label %86, label %88, !dbg !2685

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2682
  store i8 %82, ptr %87, align 1, !dbg !2682, !tbaa !1111
  br label %88, !dbg !2682

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %89, metadata !2555, metadata !DIExpression()), !dbg !2607
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2686
  call void @llvm.dbg.value(metadata ptr %90, metadata !2564, metadata !DIExpression()), !dbg !2678
  %91 = load i8, ptr %90, align 1, !dbg !2679, !tbaa !1111
  %92 = icmp eq i8 %91, 0, !dbg !2681
  br i1 %92, label %93, label %81, !dbg !2681, !llvm.loop !2687

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2689
  call void @llvm.dbg.value(metadata i64 %94, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %75, metadata !2557, metadata !DIExpression()), !dbg !2607
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %95, metadata !2558, metadata !DIExpression()), !dbg !2607
  br label %115, !dbg !2691

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2559, metadata !DIExpression()), !dbg !2607
  br label %97, !dbg !2692

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %98, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2560, metadata !DIExpression()), !dbg !2607
  br label %99, !dbg !2693

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2615
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %101, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %100, metadata !2559, metadata !DIExpression()), !dbg !2607
  %102 = and i8 %101, 1, !dbg !2694
  %103 = icmp eq i8 %102, 0, !dbg !2694
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2696
  br label %105, !dbg !2696

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2607
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2610
  call void @llvm.dbg.value(metadata i8 %107, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %106, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 2, metadata !2549, metadata !DIExpression()), !dbg !2607
  %108 = and i8 %107, 1, !dbg !2697
  %109 = icmp eq i8 %108, 0, !dbg !2697
  br i1 %109, label %110, label %115, !dbg !2699

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2700
  br i1 %111, label %115, label %112, !dbg !2703

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2700, !tbaa !1111
  br label %115, !dbg !2700

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2560, metadata !DIExpression()), !dbg !2607
  br label %115, !dbg !2704

114:                                              ; preds = %28
  call void @abort() #40, !dbg !2705
  unreachable, !dbg !2705

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2689
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.88, %45 ], [ @.str.10.88, %47 ], [ @.str.10.88, %42 ], [ %34, %28 ], [ @.str.12.89, %110 ], [ @.str.12.89, %112 ], [ @.str.12.89, %105 ], [ @.str.10.88, %41 ], !dbg !2607
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2607
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2607
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %123, metadata !2560, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %122, metadata !2559, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %121, metadata !2558, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %120, metadata !2557, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %119, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %118, metadata !2553, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %117, metadata !2552, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %116, metadata !2549, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 0, metadata !2569, metadata !DIExpression()), !dbg !2706
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
  br label %138, !dbg !2707

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2689
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2612
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2616
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2617
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2708
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2709
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %145, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %144, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %143, metadata !2562, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %142, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %141, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %140, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %139, metadata !2548, metadata !DIExpression()), !dbg !2607
  %147 = icmp eq i64 %139, -1, !dbg !2710
  br i1 %147, label %148, label %152, !dbg !2711

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2712
  %150 = load i8, ptr %149, align 1, !dbg !2712, !tbaa !1111
  %151 = icmp eq i8 %150, 0, !dbg !2713
  br i1 %151, label %627, label %154, !dbg !2714

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2715
  br i1 %153, label %627, label %154, !dbg !2714

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 0, metadata !2575, metadata !DIExpression()), !dbg !2716
  br i1 %129, label %155, label %170, !dbg !2717

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2719
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2720
  br i1 %157, label %158, label %160, !dbg !2720

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %159, metadata !2548, metadata !DIExpression()), !dbg !2607
  br label %160, !dbg !2722

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2722
  call void @llvm.dbg.value(metadata i64 %161, metadata !2548, metadata !DIExpression()), !dbg !2607
  %162 = icmp ugt i64 %156, %161, !dbg !2723
  br i1 %162, label %170, label %163, !dbg !2724

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2725
  call void @llvm.dbg.value(metadata ptr %164, metadata !2726, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %120, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %121, metadata !2730, metadata !DIExpression()), !dbg !2731
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2733
  %166 = icmp ne i32 %165, 0, !dbg !2734
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2735
  %168 = xor i1 %166, true, !dbg !2735
  %169 = zext i1 %168 to i8, !dbg !2735
  br i1 %167, label %170, label %688, !dbg !2735

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2716
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2716
  call void @llvm.dbg.value(metadata i8 %173, metadata !2571, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %171, metadata !2548, metadata !DIExpression()), !dbg !2607
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2736
  %175 = load i8, ptr %174, align 1, !dbg !2736, !tbaa !1111
  call void @llvm.dbg.value(metadata i8 %175, metadata !2576, metadata !DIExpression()), !dbg !2716
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
  ], !dbg !2737

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2738

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2739

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2574, metadata !DIExpression()), !dbg !2716
  %179 = and i8 %144, 1, !dbg !2743
  %180 = icmp eq i8 %179, 0, !dbg !2743
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2743
  br i1 %181, label %182, label %198, !dbg !2743

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2745
  br i1 %183, label %184, label %186, !dbg !2749

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2745
  store i8 39, ptr %185, align 1, !dbg !2745, !tbaa !1111
  br label %186, !dbg !2745

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %187, metadata !2555, metadata !DIExpression()), !dbg !2607
  %188 = icmp ult i64 %187, %146, !dbg !2750
  br i1 %188, label %189, label %191, !dbg !2753

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2750
  store i8 36, ptr %190, align 1, !dbg !2750, !tbaa !1111
  br label %191, !dbg !2750

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %192, metadata !2555, metadata !DIExpression()), !dbg !2607
  %193 = icmp ult i64 %192, %146, !dbg !2754
  br i1 %193, label %194, label %196, !dbg !2757

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2754
  store i8 39, ptr %195, align 1, !dbg !2754, !tbaa !1111
  br label %196, !dbg !2754

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %197, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2563, metadata !DIExpression()), !dbg !2607
  br label %198, !dbg !2758

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2607
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %200, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %199, metadata !2555, metadata !DIExpression()), !dbg !2607
  %201 = icmp ult i64 %199, %146, !dbg !2759
  br i1 %201, label %202, label %204, !dbg !2762

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2759
  store i8 92, ptr %203, align 1, !dbg !2759, !tbaa !1111
  br label %204, !dbg !2759

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %205, metadata !2555, metadata !DIExpression()), !dbg !2607
  br i1 %126, label %206, label %491, !dbg !2763

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2765
  %208 = icmp ult i64 %207, %171, !dbg !2766
  br i1 %208, label %209, label %480, !dbg !2767

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2768
  %211 = load i8, ptr %210, align 1, !dbg !2768, !tbaa !1111
  %212 = add i8 %211, -48, !dbg !2769
  %213 = icmp ult i8 %212, 10, !dbg !2769
  br i1 %213, label %214, label %480, !dbg !2769

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2770
  br i1 %215, label %216, label %218, !dbg !2774

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2770
  store i8 48, ptr %217, align 1, !dbg !2770, !tbaa !1111
  br label %218, !dbg !2770

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %219, metadata !2555, metadata !DIExpression()), !dbg !2607
  %220 = icmp ult i64 %219, %146, !dbg !2775
  br i1 %220, label %221, label %223, !dbg !2778

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2775
  store i8 48, ptr %222, align 1, !dbg !2775, !tbaa !1111
  br label %223, !dbg !2775

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %224, metadata !2555, metadata !DIExpression()), !dbg !2607
  br label %480, !dbg !2779

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2780

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2781

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2782

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2784

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2786
  %231 = icmp ult i64 %230, %171, !dbg !2787
  br i1 %231, label %232, label %480, !dbg !2788

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2789
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2790
  %235 = load i8, ptr %234, align 1, !dbg !2790, !tbaa !1111
  %236 = icmp eq i8 %235, 63, !dbg !2791
  br i1 %236, label %237, label %480, !dbg !2792

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2793
  %239 = load i8, ptr %238, align 1, !dbg !2793, !tbaa !1111
  %240 = sext i8 %239 to i32, !dbg !2793
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
  ], !dbg !2794

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2795

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %230, metadata !2569, metadata !DIExpression()), !dbg !2706
  %243 = icmp ult i64 %140, %146, !dbg !2797
  br i1 %243, label %244, label %246, !dbg !2800

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2797
  store i8 63, ptr %245, align 1, !dbg !2797, !tbaa !1111
  br label %246, !dbg !2797

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %247, metadata !2555, metadata !DIExpression()), !dbg !2607
  %248 = icmp ult i64 %247, %146, !dbg !2801
  br i1 %248, label %249, label %251, !dbg !2804

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2801
  store i8 34, ptr %250, align 1, !dbg !2801, !tbaa !1111
  br label %251, !dbg !2801

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2804
  call void @llvm.dbg.value(metadata i64 %252, metadata !2555, metadata !DIExpression()), !dbg !2607
  %253 = icmp ult i64 %252, %146, !dbg !2805
  br i1 %253, label %254, label %256, !dbg !2808

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2805
  store i8 34, ptr %255, align 1, !dbg !2805, !tbaa !1111
  br label %256, !dbg !2805

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %257, metadata !2555, metadata !DIExpression()), !dbg !2607
  %258 = icmp ult i64 %257, %146, !dbg !2809
  br i1 %258, label %259, label %261, !dbg !2812

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2809
  store i8 63, ptr %260, align 1, !dbg !2809, !tbaa !1111
  br label %261, !dbg !2809

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %262, metadata !2555, metadata !DIExpression()), !dbg !2607
  br label %480, !dbg !2813

263:                                              ; preds = %170
  br label %274, !dbg !2814

264:                                              ; preds = %170
  br label %274, !dbg !2815

265:                                              ; preds = %170
  br label %272, !dbg !2816

266:                                              ; preds = %170
  br label %272, !dbg !2817

267:                                              ; preds = %170
  br label %274, !dbg !2818

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2819

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2820

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2823

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2825

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2826
  call void @llvm.dbg.label(metadata !2601), !dbg !2827
  br i1 %134, label %274, label %670, !dbg !2828

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2826
  call void @llvm.dbg.label(metadata !2603), !dbg !2830
  br i1 %125, label %535, label %491, !dbg !2831

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2832

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2833, !tbaa !1111
  %279 = icmp eq i8 %278, 0, !dbg !2835
  br i1 %279, label %280, label %480, !dbg !2836

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2837
  br i1 %281, label %282, label %480, !dbg !2839

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2575, metadata !DIExpression()), !dbg !2716
  br label %283, !dbg !2840

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2716
  call void @llvm.dbg.value(metadata i8 %284, metadata !2575, metadata !DIExpression()), !dbg !2716
  br i1 %134, label %480, label %670, !dbg !2841

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2575, metadata !DIExpression()), !dbg !2716
  br i1 %133, label %286, label %480, !dbg !2843

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2844

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2847
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2849
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2849
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %292, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %291, metadata !2556, metadata !DIExpression()), !dbg !2607
  %293 = icmp ult i64 %140, %292, !dbg !2850
  br i1 %293, label %294, label %296, !dbg !2853

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2850
  store i8 39, ptr %295, align 1, !dbg !2850, !tbaa !1111
  br label %296, !dbg !2850

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %297, metadata !2555, metadata !DIExpression()), !dbg !2607
  %298 = icmp ult i64 %297, %292, !dbg !2854
  br i1 %298, label %299, label %301, !dbg !2857

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2854
  store i8 92, ptr %300, align 1, !dbg !2854, !tbaa !1111
  br label %301, !dbg !2854

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %302, metadata !2555, metadata !DIExpression()), !dbg !2607
  %303 = icmp ult i64 %302, %292, !dbg !2858
  br i1 %303, label %304, label %306, !dbg !2861

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2858
  store i8 39, ptr %305, align 1, !dbg !2858, !tbaa !1111
  br label %306, !dbg !2858

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %307, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2607
  br label %480, !dbg !2862

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2863

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2577, metadata !DIExpression()), !dbg !2864
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2865
  %311 = load ptr, ptr %310, align 8, !dbg !2865, !tbaa !1031
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2865
  %314 = load i16, ptr %313, align 2, !dbg !2865, !tbaa !1143
  %315 = lshr i16 %314, 14, !dbg !2867
  %316 = trunc i16 %315 to i8, !dbg !2867
  %317 = and i8 %316, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i8 %317, metadata !2580, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %171, metadata !2548, metadata !DIExpression()), !dbg !2607
  %318 = icmp eq i8 %317, 0, !dbg !2868
  call void @llvm.dbg.value(metadata i1 %318, metadata !2575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2716
  br label %368, !dbg !2869

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2870
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2581, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %14, metadata !2638, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %14, metadata !2646, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 8, metadata !2650, metadata !DIExpression()), !dbg !2874
  store i64 0, ptr %14, align 8, !dbg !2876
  call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2864
  %320 = icmp eq i64 %171, -1, !dbg !2877
  br i1 %320, label %321, label %323, !dbg !2879

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %322, metadata !2548, metadata !DIExpression()), !dbg !2607
  br label %323, !dbg !2881

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2716
  call void @llvm.dbg.value(metadata i64 %324, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2882
  %325 = sub i64 %324, %145, !dbg !2883
  call void @llvm.dbg.value(metadata ptr %15, metadata !2584, metadata !DIExpression(DW_OP_deref)), !dbg !2884
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %326, metadata !2588, metadata !DIExpression()), !dbg !2884
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2886

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2864
  %328 = icmp ugt i64 %324, %145, !dbg !2887
  br i1 %328, label %331, label %329, !dbg !2889

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %324, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i1 true, metadata !2575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2716
  br label %368, !dbg !2869

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2864
  br label %360, !dbg !2892

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2577, metadata !DIExpression()), !dbg !2864
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2894
  %335 = load i8, ptr %334, align 1, !dbg !2894, !tbaa !1111
  %336 = icmp eq i8 %335, 0, !dbg !2889
  br i1 %336, label %363, label %337, !dbg !2895

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %338, metadata !2577, metadata !DIExpression()), !dbg !2864
  %339 = add i64 %338, %145, !dbg !2897
  %340 = icmp eq i64 %338, %325, !dbg !2887
  br i1 %340, label %363, label %331, !dbg !2889, !llvm.loop !2898

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2899
  %344 = and i1 %343, %133, !dbg !2899
  call void @llvm.dbg.value(metadata i64 1, metadata !2589, metadata !DIExpression()), !dbg !2900
  br i1 %344, label %345, label %354, !dbg !2899

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2589, metadata !DIExpression()), !dbg !2900
  %347 = add i64 %346, %145, !dbg !2901
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2903
  %349 = load i8, ptr %348, align 1, !dbg !2903, !tbaa !1111
  %350 = sext i8 %349 to i32, !dbg !2903
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2904

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %352, metadata !2589, metadata !DIExpression()), !dbg !2900
  %353 = icmp eq i64 %352, %326, !dbg !2906
  br i1 %353, label %354, label %345, !dbg !2907, !llvm.loop !2908

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2910, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %355, metadata !2584, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 %355, metadata !2912, metadata !DIExpression()), !dbg !2920
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2922
  %357 = icmp ne i32 %356, 0, !dbg !2923
  %358 = zext i1 %357 to i8, !dbg !2924
  call void @llvm.dbg.value(metadata i8 %358, metadata !2580, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %326, metadata !2577, metadata !DIExpression()), !dbg !2864
  br label %363, !dbg !2925

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2891
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2580, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %324, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i1 %361, metadata !2575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2716
  br label %368, !dbg !2869

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2580, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %364, metadata !2577, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %324, metadata !2548, metadata !DIExpression()), !dbg !2607
  %366 = icmp eq i8 %365, 0, !dbg !2868
  call void @llvm.dbg.value(metadata i1 %366, metadata !2575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2716
  %367 = icmp ugt i64 %364, 1, !dbg !2926
  br i1 %367, label %374, label %368, !dbg !2869

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2927
  br i1 %373, label %374, label %480, !dbg !2927

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %379, metadata !2597, metadata !DIExpression()), !dbg !2929
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2930

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2607
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2708
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2706
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2716
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2931
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2716
  call void @llvm.dbg.value(metadata i8 %387, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %386, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %385, metadata !2571, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %384, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %383, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %382, metadata !2555, metadata !DIExpression()), !dbg !2607
  br i1 %380, label %388, label %434, !dbg !2932

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2937

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2574, metadata !DIExpression()), !dbg !2716
  %390 = and i8 %383, 1, !dbg !2940
  %391 = icmp eq i8 %390, 0, !dbg !2940
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2940
  br i1 %392, label %393, label %409, !dbg !2940

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2942
  br i1 %394, label %395, label %397, !dbg !2946

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2942
  store i8 39, ptr %396, align 1, !dbg !2942, !tbaa !1111
  br label %397, !dbg !2942

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %398, metadata !2555, metadata !DIExpression()), !dbg !2607
  %399 = icmp ult i64 %398, %146, !dbg !2947
  br i1 %399, label %400, label %402, !dbg !2950

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2947
  store i8 36, ptr %401, align 1, !dbg !2947, !tbaa !1111
  br label %402, !dbg !2947

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %403, metadata !2555, metadata !DIExpression()), !dbg !2607
  %404 = icmp ult i64 %403, %146, !dbg !2951
  br i1 %404, label %405, label %407, !dbg !2954

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2951
  store i8 39, ptr %406, align 1, !dbg !2951, !tbaa !1111
  br label %407, !dbg !2951

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %408, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2563, metadata !DIExpression()), !dbg !2607
  br label %409, !dbg !2955

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2607
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %411, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %410, metadata !2555, metadata !DIExpression()), !dbg !2607
  %412 = icmp ult i64 %410, %146, !dbg !2956
  br i1 %412, label %413, label %415, !dbg !2959

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2956
  store i8 92, ptr %414, align 1, !dbg !2956, !tbaa !1111
  br label %415, !dbg !2956

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %416, metadata !2555, metadata !DIExpression()), !dbg !2607
  %417 = icmp ult i64 %416, %146, !dbg !2960
  br i1 %417, label %418, label %422, !dbg !2963

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2960
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2960
  store i8 %420, ptr %421, align 1, !dbg !2960, !tbaa !1111
  br label %422, !dbg !2960

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %423, metadata !2555, metadata !DIExpression()), !dbg !2607
  %424 = icmp ult i64 %423, %146, !dbg !2964
  br i1 %424, label %425, label %430, !dbg !2967

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2964
  %428 = or i8 %427, 48, !dbg !2964
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2964
  store i8 %428, ptr %429, align 1, !dbg !2964, !tbaa !1111
  br label %430, !dbg !2964

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %431, metadata !2555, metadata !DIExpression()), !dbg !2607
  %432 = and i8 %387, 7, !dbg !2968
  %433 = or i8 %432, 48, !dbg !2969
  call void @llvm.dbg.value(metadata i8 %433, metadata !2576, metadata !DIExpression()), !dbg !2716
  br label %443, !dbg !2970

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2971
  %436 = icmp eq i8 %435, 0, !dbg !2971
  br i1 %436, label %443, label %437, !dbg !2973

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2974
  br i1 %438, label %439, label %441, !dbg !2978

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2974
  store i8 92, ptr %440, align 1, !dbg !2974, !tbaa !1111
  br label %441, !dbg !2974

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %442, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2716
  br label %443, !dbg !2979

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2607
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2708
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2716
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2716
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2716
  call void @llvm.dbg.value(metadata i8 %448, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %447, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %446, metadata !2571, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %445, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %444, metadata !2555, metadata !DIExpression()), !dbg !2607
  %449 = add i64 %384, 1, !dbg !2980
  %450 = icmp ugt i64 %379, %449, !dbg !2982
  br i1 %450, label %451, label %478, !dbg !2983

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2984
  %453 = icmp ne i8 %452, 0, !dbg !2984
  %454 = and i8 %447, 1, !dbg !2984
  %455 = icmp eq i8 %454, 0, !dbg !2984
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2984
  br i1 %456, label %457, label %468, !dbg !2984

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2987
  br i1 %458, label %459, label %461, !dbg !2991

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2987
  store i8 39, ptr %460, align 1, !dbg !2987, !tbaa !1111
  br label %461, !dbg !2987

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %462, metadata !2555, metadata !DIExpression()), !dbg !2607
  %463 = icmp ult i64 %462, %146, !dbg !2992
  br i1 %463, label %464, label %466, !dbg !2995

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2992
  store i8 39, ptr %465, align 1, !dbg !2992, !tbaa !1111
  br label %466, !dbg !2992

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %467, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2607
  br label %468, !dbg !2996

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2997
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %470, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %469, metadata !2555, metadata !DIExpression()), !dbg !2607
  %471 = icmp ult i64 %469, %146, !dbg !2998
  br i1 %471, label %472, label %474, !dbg !3001

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2998
  store i8 %448, ptr %473, align 1, !dbg !2998, !tbaa !1111
  br label %474, !dbg !2998

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %475, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %449, metadata !2569, metadata !DIExpression()), !dbg !2706
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3002
  %477 = load i8, ptr %476, align 1, !dbg !3002, !tbaa !1111
  call void @llvm.dbg.value(metadata i8 %477, metadata !2576, metadata !DIExpression()), !dbg !2716
  br label %381, !dbg !3003, !llvm.loop !3004

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i8 %448, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %479, metadata !2575, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %447, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %446, metadata !2571, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %384, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %445, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %444, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %378, metadata !2548, metadata !DIExpression()), !dbg !2607
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3007
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2607
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2612
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2607
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2607
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2706
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2716
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2716
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2716
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %489, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %488, metadata !2575, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %487, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %173, metadata !2571, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %486, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %485, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %484, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %483, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %482, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %481, metadata !2548, metadata !DIExpression()), !dbg !2607
  br i1 %127, label %502, label %491, !dbg !3008

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
  br i1 %137, label %503, label %524, !dbg !3010

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3011

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
  %514 = lshr i8 %505, 5, !dbg !3012
  %515 = zext i8 %514 to i64, !dbg !3012
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3013
  %517 = load i32, ptr %516, align 4, !dbg !3013, !tbaa !1102
  %518 = and i8 %505, 31, !dbg !3014
  %519 = zext i8 %518 to i32, !dbg !3014
  %520 = shl nuw i32 1, %519, !dbg !3015
  %521 = and i32 %517, %520, !dbg !3015
  %522 = icmp eq i32 %521, 0, !dbg !3015
  %523 = and i1 %172, %522, !dbg !3016
  br i1 %523, label %573, label %535, !dbg !3016

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
  br i1 %172, label %573, label %535, !dbg !3017

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3007
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2607
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2612
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2616
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2708
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3018
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2716
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2716
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %543, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %542, metadata !2575, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %541, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %540, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %539, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %538, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %537, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %536, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.label(metadata !2604), !dbg !3019
  br i1 %132, label %545, label %674, !dbg !3020

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2574, metadata !DIExpression()), !dbg !2716
  %546 = and i8 %540, 1, !dbg !3022
  %547 = icmp eq i8 %546, 0, !dbg !3022
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3022
  br i1 %548, label %549, label %565, !dbg !3022

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3024
  br i1 %550, label %551, label %553, !dbg !3028

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3024
  store i8 39, ptr %552, align 1, !dbg !3024, !tbaa !1111
  br label %553, !dbg !3024

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %554, metadata !2555, metadata !DIExpression()), !dbg !2607
  %555 = icmp ult i64 %554, %544, !dbg !3029
  br i1 %555, label %556, label %558, !dbg !3032

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3029
  store i8 36, ptr %557, align 1, !dbg !3029, !tbaa !1111
  br label %558, !dbg !3029

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %559, metadata !2555, metadata !DIExpression()), !dbg !2607
  %560 = icmp ult i64 %559, %544, !dbg !3033
  br i1 %560, label %561, label %563, !dbg !3036

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3033
  store i8 39, ptr %562, align 1, !dbg !3033, !tbaa !1111
  br label %563, !dbg !3033

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %564, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 1, metadata !2563, metadata !DIExpression()), !dbg !2607
  br label %565, !dbg !3037

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2716
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %567, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %566, metadata !2555, metadata !DIExpression()), !dbg !2607
  %568 = icmp ult i64 %566, %544, !dbg !3038
  br i1 %568, label %569, label %571, !dbg !3041

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3038
  store i8 92, ptr %570, align 1, !dbg !3038, !tbaa !1111
  br label %571, !dbg !3038

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %544, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %543, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %542, metadata !2575, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 1, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %541, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %567, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %539, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %538, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %572, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %536, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.label(metadata !2605), !dbg !3042
  br label %600, !dbg !3043

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3007
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2607
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2612
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2616
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2708
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3018
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2716
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2716
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3046
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %582, metadata !2576, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %581, metadata !2575, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %580, metadata !2574, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %579, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %578, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %577, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %576, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %575, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %574, metadata !2548, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.label(metadata !2605), !dbg !3042
  %584 = and i8 %578, 1, !dbg !3043
  %585 = icmp ne i8 %584, 0, !dbg !3043
  %586 = and i8 %580, 1, !dbg !3043
  %587 = icmp eq i8 %586, 0, !dbg !3043
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3043
  br i1 %588, label %589, label %600, !dbg !3043

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3047
  br i1 %590, label %591, label %593, !dbg !3051

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3047
  store i8 39, ptr %592, align 1, !dbg !3047, !tbaa !1111
  br label %593, !dbg !3047

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %594, metadata !2555, metadata !DIExpression()), !dbg !2607
  %595 = icmp ult i64 %594, %583, !dbg !3052
  br i1 %595, label %596, label %598, !dbg !3055

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3052
  store i8 39, ptr %597, align 1, !dbg !3052, !tbaa !1111
  br label %598, !dbg !3052

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %599, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 0, metadata !2563, metadata !DIExpression()), !dbg !2607
  br label %600, !dbg !3056

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2716
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2607
  call void @llvm.dbg.value(metadata i8 %609, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %608, metadata !2555, metadata !DIExpression()), !dbg !2607
  %610 = icmp ult i64 %608, %601, !dbg !3057
  br i1 %610, label %611, label %613, !dbg !3060

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3057
  store i8 %602, ptr %612, align 1, !dbg !3057, !tbaa !1111
  br label %613, !dbg !3057

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %614, metadata !2555, metadata !DIExpression()), !dbg !2607
  %615 = icmp eq i8 %603, 0, !dbg !3061
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3063
  call void @llvm.dbg.value(metadata i8 %616, metadata !2562, metadata !DIExpression()), !dbg !2607
  br label %617, !dbg !3064

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3007
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2607
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2612
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2616
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2617
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2708
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3018
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %624, metadata !2569, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %623, metadata !2563, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %622, metadata !2562, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %621, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %620, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %619, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %618, metadata !2548, metadata !DIExpression()), !dbg !2607
  %626 = add i64 %624, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %626, metadata !2569, metadata !DIExpression()), !dbg !2706
  br label %138, !dbg !3066, !llvm.loop !3067

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2546, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %143, metadata !2562, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8 %142, metadata !2561, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %141, metadata !2556, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %140, metadata !2555, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %139, metadata !2548, metadata !DIExpression()), !dbg !2607
  %628 = icmp eq i64 %140, 0, !dbg !3069
  %629 = and i1 %133, %628, !dbg !3071
  %630 = xor i1 %629, true, !dbg !3071
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3071
  br i1 %631, label %632, label %670, !dbg !3071

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3072
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3072
  br i1 %636, label %637, label %646, !dbg !3072

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3074
  %639 = icmp eq i8 %638, 0, !dbg !3074
  br i1 %639, label %642, label %640, !dbg !3077

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3078
  br label %694, !dbg !3079

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3080
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3082
  br i1 %645, label %28, label %646, !dbg !3082

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3083
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3085
  br i1 %649, label %650, label %665, !dbg !3085

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2557, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %140, metadata !2555, metadata !DIExpression()), !dbg !2607
  %651 = load i8, ptr %120, align 1, !dbg !3086, !tbaa !1111
  %652 = icmp eq i8 %651, 0, !dbg !3089
  br i1 %652, label %665, label %653, !dbg !3089

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2557, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %656, metadata !2555, metadata !DIExpression()), !dbg !2607
  %657 = icmp ult i64 %656, %146, !dbg !3090
  br i1 %657, label %658, label %660, !dbg !3093

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3090
  store i8 %654, ptr %659, align 1, !dbg !3090, !tbaa !1111
  br label %660, !dbg !3090

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %661, metadata !2555, metadata !DIExpression()), !dbg !2607
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3094
  call void @llvm.dbg.value(metadata ptr %662, metadata !2557, metadata !DIExpression()), !dbg !2607
  %663 = load i8, ptr %662, align 1, !dbg !3086, !tbaa !1111
  %664 = icmp eq i8 %663, 0, !dbg !3089
  br i1 %664, label %665, label %653, !dbg !3089, !llvm.loop !3095

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2689
  call void @llvm.dbg.value(metadata i64 %666, metadata !2555, metadata !DIExpression()), !dbg !2607
  %667 = icmp ult i64 %666, %146, !dbg !3097
  br i1 %667, label %668, label %694, !dbg !3099

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3100
  store i8 0, ptr %669, align 1, !dbg !3101, !tbaa !1111
  br label %694, !dbg !3100

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2606), !dbg !3102
  %672 = icmp eq i8 %124, 0, !dbg !3103
  %673 = select i1 %672, i32 2, i32 4, !dbg !3103
  br label %684, !dbg !3103

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3103
  %678 = select i1 %677, i32 2, i32 4, !dbg !3103
  br label %679, !dbg !3105

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2606), !dbg !3102
  %683 = icmp eq i32 %116, 2, !dbg !3105
  br i1 %683, label %684, label %688, !dbg !3103

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3103

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2549, metadata !DIExpression()), !dbg !2607
  %692 = and i32 %5, -3, !dbg !3106
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3107
  br label %694, !dbg !3108

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3109
}

; Function Attrs: nounwind
declare !dbg !3110 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3112 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3114 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %2, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %0, metadata !3122, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr null, metadata !3128, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %2, metadata !3129, metadata !DIExpression()), !dbg !3135
  %4 = icmp eq ptr %2, null, !dbg !3137
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3137
  call void @llvm.dbg.value(metadata ptr %5, metadata !3130, metadata !DIExpression()), !dbg !3135
  %6 = tail call ptr @__errno_location() #41, !dbg !3138
  %7 = load i32, ptr %6, align 4, !dbg !3138, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %7, metadata !3131, metadata !DIExpression()), !dbg !3135
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3139
  %9 = load i32, ptr %8, align 4, !dbg !3139, !tbaa !2489
  %10 = or i32 %9, 1, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %10, metadata !3132, metadata !DIExpression()), !dbg !3135
  %11 = load i32, ptr %5, align 8, !dbg !3141, !tbaa !2439
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3142
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3143
  %14 = load ptr, ptr %13, align 8, !dbg !3143, !tbaa !2510
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3144
  %16 = load ptr, ptr %15, align 8, !dbg !3144, !tbaa !2513
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3145
  %18 = add i64 %17, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %18, metadata !3133, metadata !DIExpression()), !dbg !3135
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %19, metadata !3134, metadata !DIExpression()), !dbg !3135
  %20 = load i32, ptr %5, align 8, !dbg !3148, !tbaa !2439
  %21 = load ptr, ptr %13, align 8, !dbg !3149, !tbaa !2510
  %22 = load ptr, ptr %15, align 8, !dbg !3150, !tbaa !2513
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3151
  store i32 %7, ptr %6, align 4, !dbg !3152, !tbaa !1102
  ret ptr %19, !dbg !3153
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3123 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3122, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata ptr %3, metadata !3129, metadata !DIExpression()), !dbg !3154
  %5 = icmp eq ptr %3, null, !dbg !3155
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3155
  call void @llvm.dbg.value(metadata ptr %6, metadata !3130, metadata !DIExpression()), !dbg !3154
  %7 = tail call ptr @__errno_location() #41, !dbg !3156
  %8 = load i32, ptr %7, align 4, !dbg !3156, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %8, metadata !3131, metadata !DIExpression()), !dbg !3154
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3157
  %10 = load i32, ptr %9, align 4, !dbg !3157, !tbaa !2489
  %11 = icmp eq ptr %2, null, !dbg !3158
  %12 = zext i1 %11 to i32, !dbg !3158
  %13 = or i32 %10, %12, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %13, metadata !3132, metadata !DIExpression()), !dbg !3154
  %14 = load i32, ptr %6, align 8, !dbg !3160, !tbaa !2439
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3161
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3162
  %17 = load ptr, ptr %16, align 8, !dbg !3162, !tbaa !2510
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3163
  %19 = load ptr, ptr %18, align 8, !dbg !3163, !tbaa !2513
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3164
  %21 = add i64 %20, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %21, metadata !3133, metadata !DIExpression()), !dbg !3154
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !3166
  call void @llvm.dbg.value(metadata ptr %22, metadata !3134, metadata !DIExpression()), !dbg !3154
  %23 = load i32, ptr %6, align 8, !dbg !3167, !tbaa !2439
  %24 = load ptr, ptr %16, align 8, !dbg !3168, !tbaa !2510
  %25 = load ptr, ptr %18, align 8, !dbg !3169, !tbaa !2513
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3170
  store i32 %8, ptr %7, align 4, !dbg !3171, !tbaa !1102
  br i1 %11, label %28, label %27, !dbg !3172

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3173, !tbaa !1267
  br label %28, !dbg !3175

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3177 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3182, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %1, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 1, metadata !3180, metadata !DIExpression()), !dbg !3184
  %2 = load i32, ptr @nslots, align 4, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 1, metadata !3180, metadata !DIExpression()), !dbg !3184
  %3 = icmp sgt i32 %2, 1, !dbg !3185
  br i1 %3, label %4, label %6, !dbg !3187

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3185
  br label %10, !dbg !3187

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3188
  %8 = load ptr, ptr %7, align 8, !dbg !3188, !tbaa !3190
  %9 = icmp eq ptr %8, @slot0, !dbg !3192
  br i1 %9, label %17, label %16, !dbg !3193

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3180, metadata !DIExpression()), !dbg !3184
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3194
  %13 = load ptr, ptr %12, align 8, !dbg !3194, !tbaa !3190
  tail call void @free(ptr noundef %13) #38, !dbg !3195
  %14 = add nuw nsw i64 %11, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %14, metadata !3180, metadata !DIExpression()), !dbg !3184
  %15 = icmp eq i64 %14, %5, !dbg !3185
  br i1 %15, label %6, label %10, !dbg !3187, !llvm.loop !3197

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3199
  store i64 256, ptr @slotvec0, align 8, !dbg !3201, !tbaa !3202
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3203, !tbaa !3190
  br label %17, !dbg !3204

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3205
  br i1 %18, label %20, label %19, !dbg !3207

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3208
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3210, !tbaa !1031
  br label %20, !dbg !3211

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3212, !tbaa !1102
  ret void, !dbg !3213
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3217, metadata !DIExpression()), !dbg !3218
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3219
  ret ptr %3, !dbg !3220
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3221 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3225, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %1, metadata !3226, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %2, metadata !3227, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %3, metadata !3228, metadata !DIExpression()), !dbg !3241
  %6 = tail call ptr @__errno_location() #41, !dbg !3242
  %7 = load i32, ptr %6, align 4, !dbg !3242, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %7, metadata !3229, metadata !DIExpression()), !dbg !3241
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3243, !tbaa !1031
  call void @llvm.dbg.value(metadata ptr %8, metadata !3230, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3231, metadata !DIExpression()), !dbg !3241
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3244
  br i1 %9, label %10, label %11, !dbg !3244

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3246
  unreachable, !dbg !3246

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3247, !tbaa !1102
  %13 = icmp sgt i32 %12, %0, !dbg !3248
  br i1 %13, label %32, label %14, !dbg !3249

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3250
  call void @llvm.dbg.value(metadata i1 %15, metadata !3232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3252
  %16 = sext i32 %12 to i64, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %16, metadata !3235, metadata !DIExpression()), !dbg !3251
  store i64 %16, ptr %5, align 8, !dbg !3254, !tbaa !1267
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3255
  %18 = add nuw nsw i32 %0, 1, !dbg !3256
  %19 = sub i32 %18, %12, !dbg !3257
  %20 = sext i32 %19 to i64, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %5, metadata !3235, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3259
  call void @llvm.dbg.value(metadata ptr %21, metadata !3230, metadata !DIExpression()), !dbg !3241
  store ptr %21, ptr @slotvec, align 8, !dbg !3260, !tbaa !1031
  br i1 %15, label %22, label %23, !dbg !3261

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3262, !tbaa.struct !3264
  br label %23, !dbg !3265

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3266, !tbaa !1102
  %25 = sext i32 %24 to i64, !dbg !3267
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3267
  %27 = load i64, ptr %5, align 8, !dbg !3268, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %27, metadata !3235, metadata !DIExpression()), !dbg !3251
  %28 = sub nsw i64 %27, %25, !dbg !3269
  %29 = shl i64 %28, 4, !dbg !3270
  call void @llvm.dbg.value(metadata ptr %26, metadata !2646, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %29, metadata !2650, metadata !DIExpression()), !dbg !3271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3273
  %30 = load i64, ptr %5, align 8, !dbg !3274, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %30, metadata !3235, metadata !DIExpression()), !dbg !3251
  %31 = trunc i64 %30 to i32, !dbg !3274
  store i32 %31, ptr @nslots, align 4, !dbg !3275, !tbaa !1102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3276
  br label %32, !dbg !3277

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3241
  call void @llvm.dbg.value(metadata ptr %33, metadata !3230, metadata !DIExpression()), !dbg !3241
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3278
  %36 = load i64, ptr %35, align 8, !dbg !3279, !tbaa !3202
  call void @llvm.dbg.value(metadata i64 %36, metadata !3236, metadata !DIExpression()), !dbg !3280
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3281
  %38 = load ptr, ptr %37, align 8, !dbg !3281, !tbaa !3190
  call void @llvm.dbg.value(metadata ptr %38, metadata !3238, metadata !DIExpression()), !dbg !3280
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3282
  %40 = load i32, ptr %39, align 4, !dbg !3282, !tbaa !2489
  %41 = or i32 %40, 1, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %41, metadata !3239, metadata !DIExpression()), !dbg !3280
  %42 = load i32, ptr %3, align 8, !dbg !3284, !tbaa !2439
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3285
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3286
  %45 = load ptr, ptr %44, align 8, !dbg !3286, !tbaa !2510
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3287
  %47 = load ptr, ptr %46, align 8, !dbg !3287, !tbaa !2513
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %48, metadata !3240, metadata !DIExpression()), !dbg !3280
  %49 = icmp ugt i64 %36, %48, !dbg !3289
  br i1 %49, label %60, label %50, !dbg !3291

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %51, metadata !3236, metadata !DIExpression()), !dbg !3280
  store i64 %51, ptr %35, align 8, !dbg !3294, !tbaa !3202
  %52 = icmp eq ptr %38, @slot0, !dbg !3295
  br i1 %52, label %54, label %53, !dbg !3297

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3298
  br label %54, !dbg !3298

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !3299
  call void @llvm.dbg.value(metadata ptr %55, metadata !3238, metadata !DIExpression()), !dbg !3280
  store ptr %55, ptr %37, align 8, !dbg !3300, !tbaa !3190
  %56 = load i32, ptr %3, align 8, !dbg !3301, !tbaa !2439
  %57 = load ptr, ptr %44, align 8, !dbg !3302, !tbaa !2510
  %58 = load ptr, ptr %46, align 8, !dbg !3303, !tbaa !2513
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3304
  br label %60, !dbg !3305

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3280
  call void @llvm.dbg.value(metadata ptr %61, metadata !3238, metadata !DIExpression()), !dbg !3280
  store i32 %7, ptr %6, align 4, !dbg !3306, !tbaa !1102
  ret ptr %61, !dbg !3307
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3308 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %2, metadata !3314, metadata !DIExpression()), !dbg !3315
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3316
  ret ptr %4, !dbg !3317
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3318 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3216, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata ptr %0, metadata !3217, metadata !DIExpression()), !dbg !3322
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3324
  ret ptr %2, !dbg !3325
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3326 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %0, metadata !3313, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3314, metadata !DIExpression()), !dbg !3333
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3335
  ret ptr %3, !dbg !3336
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3337 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %1, metadata !3342, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata ptr %2, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3346
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3344, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3360, !alias.scope !3348
  %5 = icmp eq i32 %1, 10, !dbg !3361
  br i1 %5, label %6, label %7, !dbg !3363

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3364, !noalias !3348
  unreachable, !dbg !3364

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3365, !tbaa !2439, !alias.scope !3348
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3366
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3367
  ret ptr %8, !dbg !3368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3369 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3373, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %1, metadata !3374, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %2, metadata !3375, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %3, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3379
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3377, metadata !DIExpression()), !dbg !3380
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3381), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3357, metadata !DIExpression()), !dbg !3387
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3387, !alias.scope !3381
  %6 = icmp eq i32 %1, 10, !dbg !3388
  br i1 %6, label %7, label %8, !dbg !3389

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3390, !noalias !3381
  unreachable, !dbg !3390

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3391, !tbaa !2439, !alias.scope !3381
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3392
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3393
  ret ptr %9, !dbg !3394
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3395 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %1, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 0, metadata !3341, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 %0, metadata !3342, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata ptr %1, metadata !3343, metadata !DIExpression()), !dbg !3402
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3404
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3344, metadata !DIExpression()), !dbg !3405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3406), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3357, metadata !DIExpression()), !dbg !3412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3412, !alias.scope !3406
  %4 = icmp eq i32 %0, 10, !dbg !3413
  br i1 %4, label %5, label %6, !dbg !3414

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3415, !noalias !3406
  unreachable, !dbg !3415

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3416, !tbaa !2439, !alias.scope !3406
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3417
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3418
  ret ptr %7, !dbg !3419
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3420 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3424, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata ptr %1, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i64 %2, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 0, metadata !3373, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata ptr %1, metadata !3375, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %2, metadata !3376, metadata !DIExpression()), !dbg !3428
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3430
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3377, metadata !DIExpression()), !dbg !3431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3432), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3357, metadata !DIExpression()), !dbg !3438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3438, !alias.scope !3432
  %5 = icmp eq i32 %0, 10, !dbg !3439
  br i1 %5, label %6, label %7, !dbg !3440

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3441, !noalias !3432
  unreachable, !dbg !3441

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3442, !tbaa !2439, !alias.scope !3432
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3443
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3444
  ret ptr %8, !dbg !3445
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3446 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i8 %2, metadata !3452, metadata !DIExpression()), !dbg !3454
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3455
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3457, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %4, metadata !2456, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 %2, metadata !2457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i32 1, metadata !2458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8 %2, metadata !2459, metadata !DIExpression()), !dbg !3459
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3461
  %6 = lshr i8 %2, 5, !dbg !3462
  %7 = zext i8 %6 to i64, !dbg !3462
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3463
  call void @llvm.dbg.value(metadata ptr %8, metadata !2460, metadata !DIExpression()), !dbg !3459
  %9 = and i8 %2, 31, !dbg !3464
  %10 = zext i8 %9 to i32, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %10, metadata !2462, metadata !DIExpression()), !dbg !3459
  %11 = load i32, ptr %8, align 4, !dbg !3465, !tbaa !1102
  %12 = lshr i32 %11, %10, !dbg !3466
  call void @llvm.dbg.value(metadata i32 %12, metadata !2463, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3459
  %13 = and i32 %12, 1, !dbg !3467
  %14 = xor i32 %13, 1, !dbg !3467
  %15 = shl nuw i32 %14, %10, !dbg !3468
  %16 = xor i32 %15, %11, !dbg !3469
  store i32 %16, ptr %8, align 4, !dbg !3469, !tbaa !1102
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3470
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3471
  ret ptr %17, !dbg !3472
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3473 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 %1, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 -1, metadata !3451, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 %1, metadata !3452, metadata !DIExpression()), !dbg !3480
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3453, metadata !DIExpression()), !dbg !3483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3484, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %3, metadata !2456, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8 %1, metadata !2457, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 1, metadata !2458, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8 %1, metadata !2459, metadata !DIExpression()), !dbg !3485
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3487
  %5 = lshr i8 %1, 5, !dbg !3488
  %6 = zext i8 %5 to i64, !dbg !3488
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3489
  call void @llvm.dbg.value(metadata ptr %7, metadata !2460, metadata !DIExpression()), !dbg !3485
  %8 = and i8 %1, 31, !dbg !3490
  %9 = zext i8 %8 to i32, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %9, metadata !2462, metadata !DIExpression()), !dbg !3485
  %10 = load i32, ptr %7, align 4, !dbg !3491, !tbaa !1102
  %11 = lshr i32 %10, %9, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %11, metadata !2463, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3485
  %12 = and i32 %11, 1, !dbg !3493
  %13 = xor i32 %12, 1, !dbg !3493
  %14 = shl nuw i32 %13, %9, !dbg !3494
  %15 = xor i32 %14, %10, !dbg !3495
  store i32 %15, ptr %7, align 4, !dbg !3495, !tbaa !1102
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3496
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3497
  ret ptr %16, !dbg !3498
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3499 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8 58, metadata !3478, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 -1, metadata !3451, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 58, metadata !3452, metadata !DIExpression()), !dbg !3505
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !3507
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3453, metadata !DIExpression()), !dbg !3508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3509, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %2, metadata !2456, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8 58, metadata !2457, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 1, metadata !2458, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i8 58, metadata !2459, metadata !DIExpression()), !dbg !3510
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %3, metadata !2460, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i32 26, metadata !2462, metadata !DIExpression()), !dbg !3510
  %4 = load i32, ptr %3, align 4, !dbg !3513, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %4, metadata !2463, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3510
  %5 = or i32 %4, 67108864, !dbg !3514
  store i32 %5, ptr %3, align 4, !dbg !3514, !tbaa !1102
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3516
  ret ptr %6, !dbg !3517
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3518 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3521, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3451, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 58, metadata !3452, metadata !DIExpression()), !dbg !3523
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3525
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3453, metadata !DIExpression()), !dbg !3526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3527, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %3, metadata !2456, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8 58, metadata !2457, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 1, metadata !2458, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8 58, metadata !2459, metadata !DIExpression()), !dbg !3528
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3530
  call void @llvm.dbg.value(metadata ptr %4, metadata !2460, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 26, metadata !2462, metadata !DIExpression()), !dbg !3528
  %5 = load i32, ptr %4, align 4, !dbg !3531, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %5, metadata !2463, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3528
  %6 = or i32 %5, 67108864, !dbg !3532
  store i32 %6, ptr %4, align 4, !dbg !3532, !tbaa !1102
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3533
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3534
  ret ptr %7, !dbg !3535
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3536 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3357, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3542
  call void @llvm.dbg.value(metadata i32 %0, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %1, metadata !3539, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata ptr %2, metadata !3540, metadata !DIExpression()), !dbg !3544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3545
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3547
  %5 = icmp eq i32 %1, 10, !dbg !3548
  br i1 %5, label %6, label %7, !dbg !3549

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3550, !noalias !3551
  unreachable, !dbg !3550

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3357, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3547
  store i32 %1, ptr %4, align 8, !dbg !3554, !tbaa.struct !3458
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %4, metadata !2456, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8 58, metadata !2457, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 1, metadata !2458, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8 58, metadata !2459, metadata !DIExpression()), !dbg !3555
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3557
  call void @llvm.dbg.value(metadata ptr %9, metadata !2460, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 26, metadata !2462, metadata !DIExpression()), !dbg !3555
  %10 = load i32, ptr %9, align 4, !dbg !3558, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %10, metadata !2463, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3555
  %11 = or i32 %10, 67108864, !dbg !3559
  store i32 %11, ptr %9, align 4, !dbg !3559, !tbaa !1102
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3560
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3561
  ret ptr %12, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3563 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %1, metadata !3568, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %2, metadata !3569, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %3, metadata !3570, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 %0, metadata !3572, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %1, metadata !3577, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %2, metadata !3578, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 -1, metadata !3580, metadata !DIExpression()), !dbg !3582
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3584
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3586, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %5, metadata !2496, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %1, metadata !2497, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata ptr %5, metadata !2496, metadata !DIExpression()), !dbg !3587
  store i32 10, ptr %5, align 8, !dbg !3589, !tbaa !2439
  %6 = icmp ne ptr %1, null, !dbg !3590
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3591
  br i1 %8, label %10, label %9, !dbg !3591

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3592
  unreachable, !dbg !3592

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3593
  store ptr %1, ptr %11, align 8, !dbg !3594, !tbaa !2510
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3595
  store ptr %2, ptr %12, align 8, !dbg !3596, !tbaa !2513
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3598
  ret ptr %13, !dbg !3599
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3573 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3572, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %1, metadata !3577, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %2, metadata !3578, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %4, metadata !3580, metadata !DIExpression()), !dbg !3600
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3581, metadata !DIExpression()), !dbg !3602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3603, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %6, metadata !2496, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %1, metadata !2497, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %6, metadata !2496, metadata !DIExpression()), !dbg !3604
  store i32 10, ptr %6, align 8, !dbg !3606, !tbaa !2439
  %7 = icmp ne ptr %1, null, !dbg !3607
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3608
  br i1 %9, label %11, label %10, !dbg !3608

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3609
  unreachable, !dbg !3609

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3610
  store ptr %1, ptr %12, align 8, !dbg !3611, !tbaa !2510
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3612
  store ptr %2, ptr %13, align 8, !dbg !3613, !tbaa !2513
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3614
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3615
  ret ptr %14, !dbg !3616
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3617 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %1, metadata !3622, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %2, metadata !3623, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 0, metadata !3567, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %1, metadata !3569, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %2, metadata !3570, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %0, metadata !3577, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %1, metadata !3578, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 -1, metadata !3580, metadata !DIExpression()), !dbg !3627
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3629
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3581, metadata !DIExpression()), !dbg !3630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3631, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %4, metadata !2496, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %0, metadata !2497, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %1, metadata !2498, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata ptr %4, metadata !2496, metadata !DIExpression()), !dbg !3632
  store i32 10, ptr %4, align 8, !dbg !3634, !tbaa !2439
  %5 = icmp ne ptr %0, null, !dbg !3635
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3636
  br i1 %7, label %9, label %8, !dbg !3636

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3637
  unreachable, !dbg !3637

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3638
  store ptr %0, ptr %10, align 8, !dbg !3639, !tbaa !2510
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3640
  store ptr %1, ptr %11, align 8, !dbg !3641, !tbaa !2513
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3642
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3643
  ret ptr %12, !dbg !3644
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3645 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %1, metadata !3650, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %2, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %3, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i32 0, metadata !3572, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !3577, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %1, metadata !3578, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %3, metadata !3580, metadata !DIExpression()), !dbg !3654
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3581, metadata !DIExpression()), !dbg !3657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3658, !tbaa.struct !3458
  call void @llvm.dbg.value(metadata ptr %5, metadata !2496, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %0, metadata !2497, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %1, metadata !2498, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %5, metadata !2496, metadata !DIExpression()), !dbg !3659
  store i32 10, ptr %5, align 8, !dbg !3661, !tbaa !2439
  %6 = icmp ne ptr %0, null, !dbg !3662
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3663
  br i1 %8, label %10, label %9, !dbg !3663

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3664
  unreachable, !dbg !3664

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3665
  store ptr %0, ptr %11, align 8, !dbg !3666, !tbaa !2510
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3667
  store ptr %1, ptr %12, align 8, !dbg !3668, !tbaa !2513
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3669
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3670
  ret ptr %13, !dbg !3671
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3676, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %1, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %2, metadata !3678, metadata !DIExpression()), !dbg !3679
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3680
  ret ptr %4, !dbg !3681
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3682 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3686, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %1, metadata !3687, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i32 0, metadata !3676, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %1, metadata !3678, metadata !DIExpression()), !dbg !3689
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3691
  ret ptr %3, !dbg !3692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3697, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %1, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 %0, metadata !3676, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %1, metadata !3677, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 -1, metadata !3678, metadata !DIExpression()), !dbg !3700
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3702
  ret ptr %3, !dbg !3703
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i32 0, metadata !3697, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i32 0, metadata !3676, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 -1, metadata !3678, metadata !DIExpression()), !dbg !3712
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3714
  ret ptr %2, !dbg !3715
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_read(i32 noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3716 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %2, metadata !3723, metadata !DIExpression()), !dbg !3730
  br label %4, !dbg !3731

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3732

6:                                                ; preds = %9, %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !3723, metadata !DIExpression()), !dbg !3730
  %7 = tail call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %5) #38, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %7, metadata !3724, metadata !DIExpression()), !dbg !3734
  %8 = icmp sgt i64 %7, -1, !dbg !3735
  br i1 %8, label %17, label %9, !dbg !3732

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #41, !dbg !3737
  %11 = load i32, ptr %10, align 4, !dbg !3737, !tbaa !1102
  %12 = icmp eq i32 %11, 4, !dbg !3737
  br i1 %12, label %6, label %13, !dbg !3739, !llvm.loop !3740

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3743
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %5, metadata !3723, metadata !DIExpression()), !dbg !3730
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3746
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mkstemp_safer(ptr noundef %0) local_unnamed_addr #10 !dbg !3747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3752
  %2 = tail call i32 @mkstemp(ptr noundef %0) #38, !dbg !3753
  %3 = tail call i32 @fd_safer(i32 noundef %2) #38, !dbg !3754
  ret i32 %3, !dbg !3755
}

declare !dbg !3756 i32 @mkstemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mkostemp_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3757 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 %1, metadata !3762, metadata !DIExpression()), !dbg !3763
  %3 = tail call i32 @mkostemp(ptr noundef %0, i32 noundef %1) #38, !dbg !3764
  %4 = tail call i32 @fd_safer_flag(i32 noundef %3, i32 noundef %1) #38, !dbg !3765
  ret i32 %4, !dbg !3766
}

declare !dbg !3767 i32 @mkostemp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @path_search(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #10 !dbg !3768 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %1, metadata !3773, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %2, metadata !3774, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %3, metadata !3775, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i1 %4, metadata !3776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3783
  %9 = icmp eq ptr %3, null, !dbg !3784
  br i1 %9, label %16, label %10, !dbg !3786

10:                                               ; preds = %5
  %11 = load i8, ptr %3, align 1, !dbg !3787, !tbaa !1111
  %12 = icmp eq i8 %11, 0, !dbg !3787
  br i1 %12, label %16, label %13, !dbg !3788

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %14, metadata !3777, metadata !DIExpression()), !dbg !3783
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 5), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %15, metadata !3777, metadata !DIExpression()), !dbg !3783
  br label %16

16:                                               ; preds = %5, %10, %13
  %17 = phi i64 [ %15, %13 ], [ 4, %10 ], [ 4, %5 ], !dbg !3792
  %18 = phi ptr [ %3, %13 ], [ @.str.102, %10 ], [ @.str.102, %5 ]
  call void @llvm.dbg.value(metadata ptr %18, metadata !3775, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %17, metadata !3777, metadata !DIExpression()), !dbg !3783
  br i1 %4, label %19, label %40, !dbg !3793

19:                                               ; preds = %16
  %20 = tail call ptr @secure_getenv(ptr noundef nonnull @.str.1.103) #38, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %20, metadata !3778, metadata !DIExpression()), !dbg !3795
  %21 = icmp eq ptr %20, null, !dbg !3796
  br i1 %21, label %30, label %22, !dbg !3798

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %20, metadata !3799, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #38, !dbg !3839
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3802, metadata !DIExpression()), !dbg !3840
  %23 = call i32 @stat(ptr noundef nonnull %20, ptr noundef nonnull %8) #38, !dbg !3841
  %24 = icmp eq i32 %23, 0, !dbg !3842
  %25 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 3, !dbg !3843
  %26 = load i32, ptr %25, align 8, !dbg !3843
  %27 = and i32 %26, 61440, !dbg !3843
  %28 = icmp eq i32 %27, 16384, !dbg !3843
  %29 = select i1 %24, i1 %28, i1 false, !dbg !3843
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #38, !dbg !3844
  br i1 %29, label %52, label %30, !dbg !3845

30:                                               ; preds = %22, %19
  %31 = icmp eq ptr %2, null, !dbg !3846
  br i1 %31, label %42, label %32, !dbg !3848

32:                                               ; preds = %30
  call void @llvm.dbg.value(metadata ptr %2, metadata !3799, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #38, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3802, metadata !DIExpression()), !dbg !3852
  %33 = call i32 @stat(ptr noundef nonnull %2, ptr noundef nonnull %7) #38, !dbg !3853
  %34 = icmp eq i32 %33, 0, !dbg !3854
  %35 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 3, !dbg !3855
  %36 = load i32, ptr %35, align 8, !dbg !3855
  %37 = and i32 %36, 61440, !dbg !3855
  %38 = icmp eq i32 %37, 16384, !dbg !3855
  %39 = select i1 %34, i1 %38, i1 false, !dbg !3855
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #38, !dbg !3856
  br i1 %39, label %52, label %42, !dbg !3857

40:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %2, metadata !3774, metadata !DIExpression()), !dbg !3783
  %41 = icmp eq ptr %2, null, !dbg !3858
  br i1 %41, label %42, label %52, !dbg !3860

42:                                               ; preds = %32, %30, %40
  call void @llvm.dbg.value(metadata ptr @.str.2.104, metadata !3799, metadata !DIExpression()), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #38, !dbg !3865
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3802, metadata !DIExpression()), !dbg !3866
  %43 = call i32 @stat(ptr noundef nonnull @.str.2.104, ptr noundef nonnull %6) #38, !dbg !3867
  %44 = icmp eq i32 %43, 0, !dbg !3868
  %45 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3, !dbg !3869
  %46 = load i32, ptr %45, align 8, !dbg !3869
  %47 = and i32 %46, 61440, !dbg !3869
  %48 = icmp eq i32 %47, 16384, !dbg !3869
  %49 = select i1 %44, i1 %48, i1 false, !dbg !3869
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #38, !dbg !3870
  br i1 %49, label %52, label %50, !dbg !3871

50:                                               ; preds = %42
  %51 = tail call ptr @__errno_location() #41, !dbg !3872
  store i32 2, ptr %51, align 4, !dbg !3872, !tbaa !1102
  br label %77, !dbg !3875

52:                                               ; preds = %22, %32, %42, %40
  %53 = phi ptr [ %2, %40 ], [ @.str.2.104, %42 ], [ %20, %22 ], [ %2, %32 ], !dbg !3783
  call void @llvm.dbg.value(metadata ptr %53, metadata !3774, metadata !DIExpression()), !dbg !3783
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #39, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %54, metadata !3781, metadata !DIExpression()), !dbg !3783
  %55 = icmp eq i64 %54, 0, !dbg !3877
  br i1 %55, label %61, label %56, !dbg !3878

56:                                               ; preds = %52
  %57 = add i64 %54, -1, !dbg !3879
  %58 = getelementptr inbounds i8, ptr %53, i64 %57, !dbg !3879
  %59 = load i8, ptr %58, align 1, !dbg !3879, !tbaa !1111
  %60 = icmp ne i8 %59, 47, !dbg !3879
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ], !dbg !3783
  call void @llvm.dbg.value(metadata i1 %62, metadata !3782, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3783
  %63 = zext i1 %62 to i64, !dbg !3880
  %64 = add nuw nsw i64 %17, 7, !dbg !3882
  %65 = add i64 %64, %54, !dbg !3883
  %66 = add i64 %65, %63, !dbg !3884
  %67 = icmp ugt i64 %66, %1, !dbg !3885
  br i1 %67, label %68, label %70, !dbg !3886

68:                                               ; preds = %61
  %69 = tail call ptr @__errno_location() #41, !dbg !3887
  store i32 22, ptr %69, align 4, !dbg !3887, !tbaa !1102
  br label %77, !dbg !3889

70:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata ptr %53, metadata !3893, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %54, metadata !3894, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %53, i64 noundef %54, i1 noundef false) #38, !dbg !3897
  %71 = getelementptr inbounds i8, ptr %0, i64 %54, !dbg !3898
  %72 = xor i1 %62, true, !dbg !3898
  %73 = zext i1 %72 to i64
  %74 = getelementptr inbounds [12 x i8], ptr @.str.3.105, i64 0, i64 %73, !dbg !3898
  %75 = trunc i64 %17 to i32, !dbg !3898
  %76 = tail call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %71, i32 noundef 1, i64 noundef -1, ptr noundef nonnull %74, i32 noundef %75, ptr noundef nonnull %18) #38, !dbg !3898
  br label %77, !dbg !3899

77:                                               ; preds = %68, %70, %50
  %78 = phi i32 [ -1, %50 ], [ -1, %68 ], [ 0, %70 ], !dbg !3783
  ret i32 %78, !dbg !3900
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !3901 ptr @secure_getenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3902 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare !dbg !3908 i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3911 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3913, metadata !DIExpression()), !dbg !3918
  %2 = icmp ult i32 %0, 3, !dbg !3919
  br i1 %2, label %3, label %8, !dbg !3919

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #38, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %4, metadata !3914, metadata !DIExpression()), !dbg !3921
  %5 = tail call ptr @__errno_location() #41, !dbg !3922
  %6 = load i32, ptr %5, align 4, !dbg !3922, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %6, metadata !3917, metadata !DIExpression()), !dbg !3921
  %7 = tail call i32 @close(i32 noundef %0) #38, !dbg !3923
  store i32 %6, ptr %5, align 4, !dbg !3924, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %4, metadata !3913, metadata !DIExpression()), !dbg !3918
  br label %8, !dbg !3925

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3913, metadata !DIExpression()), !dbg !3918
  ret i32 %9, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3927 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3965, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %1, metadata !3966, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %3, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %4, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %5, metadata !3970, metadata !DIExpression()), !dbg !3971
  %7 = icmp eq ptr %1, null, !dbg !3972
  br i1 %7, label %10, label %8, !dbg !3974

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.108, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3975
  br label %12, !dbg !3975

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.109, ptr noundef %2, ptr noundef %3) #38, !dbg !3976
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.3.111, i32 noundef 5) #38, !dbg !3977
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3977
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !3978
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.5.113, i32 noundef 5) #38, !dbg !3979
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.114) #38, !dbg !3979
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %0), !dbg !3980
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
  ], !dbg !3981

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.7.115, i32 noundef 5) #38, !dbg !3982
  %21 = load ptr, ptr %4, align 8, !dbg !3982, !tbaa !1031
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3982
  br label %147, !dbg !3984

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.8.116, i32 noundef 5) #38, !dbg !3985
  %25 = load ptr, ptr %4, align 8, !dbg !3985, !tbaa !1031
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3985
  %27 = load ptr, ptr %26, align 8, !dbg !3985, !tbaa !1031
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3985
  br label %147, !dbg !3986

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.9.117, i32 noundef 5) #38, !dbg !3987
  %31 = load ptr, ptr %4, align 8, !dbg !3987, !tbaa !1031
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3987
  %33 = load ptr, ptr %32, align 8, !dbg !3987, !tbaa !1031
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3987
  %35 = load ptr, ptr %34, align 8, !dbg !3987, !tbaa !1031
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3987
  br label %147, !dbg !3988

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.10.118, i32 noundef 5) #38, !dbg !3989
  %39 = load ptr, ptr %4, align 8, !dbg !3989, !tbaa !1031
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3989
  %41 = load ptr, ptr %40, align 8, !dbg !3989, !tbaa !1031
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3989
  %43 = load ptr, ptr %42, align 8, !dbg !3989, !tbaa !1031
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3989
  %45 = load ptr, ptr %44, align 8, !dbg !3989, !tbaa !1031
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3989
  br label %147, !dbg !3990

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.11.119, i32 noundef 5) #38, !dbg !3991
  %49 = load ptr, ptr %4, align 8, !dbg !3991, !tbaa !1031
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3991
  %51 = load ptr, ptr %50, align 8, !dbg !3991, !tbaa !1031
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3991
  %53 = load ptr, ptr %52, align 8, !dbg !3991, !tbaa !1031
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3991
  %55 = load ptr, ptr %54, align 8, !dbg !3991, !tbaa !1031
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3991
  %57 = load ptr, ptr %56, align 8, !dbg !3991, !tbaa !1031
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3991
  br label %147, !dbg !3992

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.12.120, i32 noundef 5) #38, !dbg !3993
  %61 = load ptr, ptr %4, align 8, !dbg !3993, !tbaa !1031
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3993
  %63 = load ptr, ptr %62, align 8, !dbg !3993, !tbaa !1031
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3993
  %65 = load ptr, ptr %64, align 8, !dbg !3993, !tbaa !1031
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3993
  %67 = load ptr, ptr %66, align 8, !dbg !3993, !tbaa !1031
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3993
  %69 = load ptr, ptr %68, align 8, !dbg !3993, !tbaa !1031
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3993
  %71 = load ptr, ptr %70, align 8, !dbg !3993, !tbaa !1031
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3993
  br label %147, !dbg !3994

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.13.121, i32 noundef 5) #38, !dbg !3995
  %75 = load ptr, ptr %4, align 8, !dbg !3995, !tbaa !1031
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3995
  %77 = load ptr, ptr %76, align 8, !dbg !3995, !tbaa !1031
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3995
  %79 = load ptr, ptr %78, align 8, !dbg !3995, !tbaa !1031
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3995
  %81 = load ptr, ptr %80, align 8, !dbg !3995, !tbaa !1031
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3995
  %83 = load ptr, ptr %82, align 8, !dbg !3995, !tbaa !1031
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3995
  %85 = load ptr, ptr %84, align 8, !dbg !3995, !tbaa !1031
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3995
  %87 = load ptr, ptr %86, align 8, !dbg !3995, !tbaa !1031
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3995
  br label %147, !dbg !3996

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.14.122, i32 noundef 5) #38, !dbg !3997
  %91 = load ptr, ptr %4, align 8, !dbg !3997, !tbaa !1031
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3997
  %93 = load ptr, ptr %92, align 8, !dbg !3997, !tbaa !1031
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3997
  %95 = load ptr, ptr %94, align 8, !dbg !3997, !tbaa !1031
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3997
  %97 = load ptr, ptr %96, align 8, !dbg !3997, !tbaa !1031
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3997
  %99 = load ptr, ptr %98, align 8, !dbg !3997, !tbaa !1031
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3997
  %101 = load ptr, ptr %100, align 8, !dbg !3997, !tbaa !1031
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3997
  %103 = load ptr, ptr %102, align 8, !dbg !3997, !tbaa !1031
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3997
  %105 = load ptr, ptr %104, align 8, !dbg !3997, !tbaa !1031
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3997
  br label %147, !dbg !3998

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.15.123, i32 noundef 5) #38, !dbg !3999
  %109 = load ptr, ptr %4, align 8, !dbg !3999, !tbaa !1031
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3999
  %111 = load ptr, ptr %110, align 8, !dbg !3999, !tbaa !1031
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3999
  %113 = load ptr, ptr %112, align 8, !dbg !3999, !tbaa !1031
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3999
  %115 = load ptr, ptr %114, align 8, !dbg !3999, !tbaa !1031
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3999
  %117 = load ptr, ptr %116, align 8, !dbg !3999, !tbaa !1031
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3999
  %119 = load ptr, ptr %118, align 8, !dbg !3999, !tbaa !1031
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3999
  %121 = load ptr, ptr %120, align 8, !dbg !3999, !tbaa !1031
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3999
  %123 = load ptr, ptr %122, align 8, !dbg !3999, !tbaa !1031
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3999
  %125 = load ptr, ptr %124, align 8, !dbg !3999, !tbaa !1031
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3999
  br label %147, !dbg !4000

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.16.124, i32 noundef 5) #38, !dbg !4001
  %129 = load ptr, ptr %4, align 8, !dbg !4001, !tbaa !1031
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4001
  %131 = load ptr, ptr %130, align 8, !dbg !4001, !tbaa !1031
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4001
  %133 = load ptr, ptr %132, align 8, !dbg !4001, !tbaa !1031
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4001
  %135 = load ptr, ptr %134, align 8, !dbg !4001, !tbaa !1031
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4001
  %137 = load ptr, ptr %136, align 8, !dbg !4001, !tbaa !1031
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4001
  %139 = load ptr, ptr %138, align 8, !dbg !4001, !tbaa !1031
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4001
  %141 = load ptr, ptr %140, align 8, !dbg !4001, !tbaa !1031
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4001
  %143 = load ptr, ptr %142, align 8, !dbg !4001, !tbaa !1031
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4001
  %145 = load ptr, ptr %144, align 8, !dbg !4001, !tbaa !1031
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4001
  br label %147, !dbg !4002

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4003
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4004 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %1, metadata !4009, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %2, metadata !4010, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %3, metadata !4011, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %4, metadata !4012, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 0, metadata !4013, metadata !DIExpression()), !dbg !4014
  br label %6, !dbg !4015

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4017
  call void @llvm.dbg.value(metadata i64 %7, metadata !4013, metadata !DIExpression()), !dbg !4014
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4018
  %9 = load ptr, ptr %8, align 8, !dbg !4018, !tbaa !1031
  %10 = icmp eq ptr %9, null, !dbg !4020
  %11 = add i64 %7, 1, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %11, metadata !4013, metadata !DIExpression()), !dbg !4014
  br i1 %10, label %12, label %6, !dbg !4020, !llvm.loop !4022

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4024
  ret void, !dbg !4025
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4026 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4038, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %1, metadata !4039, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %2, metadata !4040, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %3, metadata !4041, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata ptr %4, metadata !4042, metadata !DIExpression()), !dbg !4046
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4047
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4044, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 0, metadata !4043, metadata !DIExpression()), !dbg !4046
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4043, metadata !DIExpression()), !dbg !4046
  %10 = icmp ult i32 %9, 41, !dbg !4049
  br i1 %10, label %11, label %16, !dbg !4049

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4049
  %13 = zext i32 %9 to i64, !dbg !4049
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4049
  %15 = add nuw nsw i32 %9, 8, !dbg !4049
  store i32 %15, ptr %4, align 8, !dbg !4049
  br label %19, !dbg !4049

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4049
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4049
  store ptr %18, ptr %7, align 8, !dbg !4049
  br label %19, !dbg !4049

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4049
  %22 = load ptr, ptr %21, align 8, !dbg !4049
  store ptr %22, ptr %6, align 16, !dbg !4052, !tbaa !1031
  %23 = icmp eq ptr %22, null, !dbg !4053
  br i1 %23, label %128, label %24, !dbg !4054

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 1, metadata !4043, metadata !DIExpression()), !dbg !4046
  %25 = icmp ult i32 %20, 41, !dbg !4049
  br i1 %25, label %29, label %26, !dbg !4049

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4049
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4049
  store ptr %28, ptr %7, align 8, !dbg !4049
  br label %34, !dbg !4049

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4049
  %31 = zext i32 %20 to i64, !dbg !4049
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4049
  %33 = add nuw nsw i32 %20, 8, !dbg !4049
  store i32 %33, ptr %4, align 8, !dbg !4049
  br label %34, !dbg !4049

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4049
  %37 = load ptr, ptr %36, align 8, !dbg !4049
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4055
  store ptr %37, ptr %38, align 8, !dbg !4052, !tbaa !1031
  %39 = icmp eq ptr %37, null, !dbg !4053
  br i1 %39, label %128, label %40, !dbg !4054

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 2, metadata !4043, metadata !DIExpression()), !dbg !4046
  %41 = icmp ult i32 %35, 41, !dbg !4049
  br i1 %41, label %45, label %42, !dbg !4049

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4049
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4049
  store ptr %44, ptr %7, align 8, !dbg !4049
  br label %50, !dbg !4049

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4049
  %47 = zext i32 %35 to i64, !dbg !4049
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4049
  %49 = add nuw nsw i32 %35, 8, !dbg !4049
  store i32 %49, ptr %4, align 8, !dbg !4049
  br label %50, !dbg !4049

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4049
  %53 = load ptr, ptr %52, align 8, !dbg !4049
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4055
  store ptr %53, ptr %54, align 16, !dbg !4052, !tbaa !1031
  %55 = icmp eq ptr %53, null, !dbg !4053
  br i1 %55, label %128, label %56, !dbg !4054

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 3, metadata !4043, metadata !DIExpression()), !dbg !4046
  %57 = icmp ult i32 %51, 41, !dbg !4049
  br i1 %57, label %61, label %58, !dbg !4049

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4049
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4049
  store ptr %60, ptr %7, align 8, !dbg !4049
  br label %66, !dbg !4049

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4049
  %63 = zext i32 %51 to i64, !dbg !4049
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4049
  %65 = add nuw nsw i32 %51, 8, !dbg !4049
  store i32 %65, ptr %4, align 8, !dbg !4049
  br label %66, !dbg !4049

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4049
  %69 = load ptr, ptr %68, align 8, !dbg !4049
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4055
  store ptr %69, ptr %70, align 8, !dbg !4052, !tbaa !1031
  %71 = icmp eq ptr %69, null, !dbg !4053
  br i1 %71, label %128, label %72, !dbg !4054

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 4, metadata !4043, metadata !DIExpression()), !dbg !4046
  %73 = icmp ult i32 %67, 41, !dbg !4049
  br i1 %73, label %77, label %74, !dbg !4049

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4049
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4049
  store ptr %76, ptr %7, align 8, !dbg !4049
  br label %82, !dbg !4049

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4049
  %79 = zext i32 %67 to i64, !dbg !4049
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4049
  %81 = add nuw nsw i32 %67, 8, !dbg !4049
  store i32 %81, ptr %4, align 8, !dbg !4049
  br label %82, !dbg !4049

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4049
  %85 = load ptr, ptr %84, align 8, !dbg !4049
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4055
  store ptr %85, ptr %86, align 16, !dbg !4052, !tbaa !1031
  %87 = icmp eq ptr %85, null, !dbg !4053
  br i1 %87, label %128, label %88, !dbg !4054

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4043, metadata !DIExpression()), !dbg !4046
  call void @llvm.dbg.value(metadata i64 5, metadata !4043, metadata !DIExpression()), !dbg !4046
  %89 = icmp ult i32 %83, 41, !dbg !4049
  br i1 %89, label %93, label %90, !dbg !4049

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4049
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4049
  store ptr %92, ptr %7, align 8, !dbg !4049
  br label %98, !dbg !4049

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4049
  %95 = zext i32 %83 to i64, !dbg !4049
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4049
  %97 = add nuw nsw i32 %83, 8, !dbg !4049
  store i32 %97, ptr %4, align 8, !dbg !4049
  br label %98, !dbg !4049

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4049
  %100 = load ptr, ptr %99, align 8, !dbg !4049
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4055
  store ptr %100, ptr %101, align 8, !dbg !4052, !tbaa !1031
  %102 = icmp eq ptr %100, null, !dbg !4053
  br i1 %102, label %128, label %103, !dbg !4054

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4043, metadata !DIExpression()), !dbg !4046
  %104 = load ptr, ptr %7, align 8, !dbg !4049
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4049
  store ptr %105, ptr %7, align 8, !dbg !4049
  %106 = load ptr, ptr %104, align 8, !dbg !4049
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4055
  store ptr %106, ptr %107, align 16, !dbg !4052, !tbaa !1031
  %108 = icmp eq ptr %106, null, !dbg !4053
  br i1 %108, label %128, label %109, !dbg !4054

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4043, metadata !DIExpression()), !dbg !4046
  %110 = load ptr, ptr %7, align 8, !dbg !4049
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4049
  store ptr %111, ptr %7, align 8, !dbg !4049
  %112 = load ptr, ptr %110, align 8, !dbg !4049
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4055
  store ptr %112, ptr %113, align 8, !dbg !4052, !tbaa !1031
  %114 = icmp eq ptr %112, null, !dbg !4053
  br i1 %114, label %128, label %115, !dbg !4054

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4043, metadata !DIExpression()), !dbg !4046
  %116 = load ptr, ptr %7, align 8, !dbg !4049
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4049
  store ptr %117, ptr %7, align 8, !dbg !4049
  %118 = load ptr, ptr %116, align 8, !dbg !4049
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4055
  store ptr %118, ptr %119, align 16, !dbg !4052, !tbaa !1031
  %120 = icmp eq ptr %118, null, !dbg !4053
  br i1 %120, label %128, label %121, !dbg !4054

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4043, metadata !DIExpression()), !dbg !4046
  %122 = load ptr, ptr %7, align 8, !dbg !4049
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4049
  store ptr %123, ptr %7, align 8, !dbg !4049
  %124 = load ptr, ptr %122, align 8, !dbg !4049
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4055
  store ptr %124, ptr %125, align 8, !dbg !4052, !tbaa !1031
  %126 = icmp eq ptr %124, null, !dbg !4053
  %127 = select i1 %126, i64 9, i64 10, !dbg !4054
  br label %128, !dbg !4054

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4056
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4057
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4058
  ret void, !dbg !4058
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4059 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4063, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr %1, metadata !4064, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr %2, metadata !4065, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata ptr %3, metadata !4066, metadata !DIExpression()), !dbg !4072
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !4073
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4067, metadata !DIExpression()), !dbg !4074
  call void @llvm.va_start(ptr nonnull %5), !dbg !4075
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4076
  call void @llvm.va_end(ptr nonnull %5), !dbg !4077
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !4078
  ret void, !dbg !4078
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4079 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4080, !tbaa !1031
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.112, ptr noundef %1), !dbg !4080
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.17.129, i32 noundef 5) #38, !dbg !4081
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.130) #38, !dbg !4081
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.19.131, i32 noundef 5) #38, !dbg !4082
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.132, ptr noundef nonnull @.str.21.133) #38, !dbg !4082
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.110, ptr noundef nonnull @.str.22.134, i32 noundef 5) #38, !dbg !4083
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.135) #38, !dbg !4083
  ret void, !dbg !4084
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4085 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %2, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4099
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4101
  call void @llvm.dbg.value(metadata ptr %4, metadata !4102, metadata !DIExpression()), !dbg !4107
  %5 = icmp eq ptr %4, null, !dbg !4109
  br i1 %5, label %6, label %7, !dbg !4111

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4112
  unreachable, !dbg !4112

7:                                                ; preds = %3
  ret ptr %4, !dbg !4113
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4095 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4114
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4115
  call void @llvm.dbg.value(metadata ptr %4, metadata !4102, metadata !DIExpression()), !dbg !4116
  %5 = icmp eq ptr %4, null, !dbg !4118
  br i1 %5, label %6, label %7, !dbg !4119

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4120
  unreachable, !dbg !4120

7:                                                ; preds = %3
  ret ptr %4, !dbg !4121
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4122 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4126, metadata !DIExpression()), !dbg !4127
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4128
  call void @llvm.dbg.value(metadata ptr %2, metadata !4102, metadata !DIExpression()), !dbg !4129
  %3 = icmp eq ptr %2, null, !dbg !4131
  br i1 %3, label %4, label %5, !dbg !4132

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4133
  unreachable, !dbg !4133

5:                                                ; preds = %1
  ret ptr %2, !dbg !4134
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4135 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %0, metadata !4141, metadata !DIExpression()), !dbg !4145
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4147
  call void @llvm.dbg.value(metadata ptr %2, metadata !4102, metadata !DIExpression()), !dbg !4148
  %3 = icmp eq ptr %2, null, !dbg !4150
  br i1 %3, label %4, label %5, !dbg !4151

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4152
  unreachable, !dbg !4152

5:                                                ; preds = %1
  ret ptr %2, !dbg !4153
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4154 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4158, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %0, metadata !4126, metadata !DIExpression()), !dbg !4160
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4162
  call void @llvm.dbg.value(metadata ptr %2, metadata !4102, metadata !DIExpression()), !dbg !4163
  %3 = icmp eq ptr %2, null, !dbg !4165
  br i1 %3, label %4, label %5, !dbg !4166

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4167
  unreachable, !dbg !4167

5:                                                ; preds = %1
  ret ptr %2, !dbg !4168
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4169 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i64 %1, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i64 %1, metadata !4177, metadata !DIExpression()), !dbg !4178
  %3 = icmp eq i64 %1, 0, !dbg !4180
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4180
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4181
  call void @llvm.dbg.value(metadata ptr %5, metadata !4102, metadata !DIExpression()), !dbg !4182
  %6 = icmp eq ptr %5, null, !dbg !4184
  br i1 %6, label %7, label %8, !dbg !4185

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4186
  unreachable, !dbg !4186

8:                                                ; preds = %2
  ret ptr %5, !dbg !4187
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4188 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4192, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %1, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %0, metadata !4195, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i64 %1, metadata !4198, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i64 %1, metadata !4177, metadata !DIExpression()), !dbg !4201
  %3 = icmp eq i64 %1, 0, !dbg !4203
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4203
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4204
  call void @llvm.dbg.value(metadata ptr %5, metadata !4102, metadata !DIExpression()), !dbg !4205
  %6 = icmp eq ptr %5, null, !dbg !4207
  br i1 %6, label %7, label %8, !dbg !4208

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4209
  unreachable, !dbg !4209

8:                                                ; preds = %2
  ret ptr %5, !dbg !4210
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4211 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4215, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %1, metadata !4216, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %2, metadata !4217, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata ptr %0, metadata !4219, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %1, metadata !4222, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %2, metadata !4223, metadata !DIExpression()), !dbg !4224
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4226
  call void @llvm.dbg.value(metadata ptr %4, metadata !4102, metadata !DIExpression()), !dbg !4227
  %5 = icmp eq ptr %4, null, !dbg !4229
  br i1 %5, label %6, label %7, !dbg !4230

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4231
  unreachable, !dbg !4231

7:                                                ; preds = %3
  ret ptr %4, !dbg !4232
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4233 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr null, metadata !4094, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %0, metadata !4097, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %1, metadata !4098, metadata !DIExpression()), !dbg !4240
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4242
  call void @llvm.dbg.value(metadata ptr %3, metadata !4102, metadata !DIExpression()), !dbg !4243
  %4 = icmp eq ptr %3, null, !dbg !4245
  br i1 %4, label %5, label %6, !dbg !4246

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4247
  unreachable, !dbg !4247

6:                                                ; preds = %2
  ret ptr %3, !dbg !4248
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4249 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4253, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %1, metadata !4254, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr null, metadata !4215, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %0, metadata !4216, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4217, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr null, metadata !4219, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %0, metadata !4222, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i64 %1, metadata !4223, metadata !DIExpression()), !dbg !4258
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %3, metadata !4102, metadata !DIExpression()), !dbg !4261
  %4 = icmp eq ptr %3, null, !dbg !4263
  br i1 %4, label %5, label %6, !dbg !4264

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4265
  unreachable, !dbg !4265

6:                                                ; preds = %2
  ret ptr %3, !dbg !4266
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4267 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4271, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %1, metadata !4272, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %0, metadata !963, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %1, metadata !964, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 1, metadata !965, metadata !DIExpression()), !dbg !4274
  %3 = load i64, ptr %1, align 8, !dbg !4276, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %3, metadata !966, metadata !DIExpression()), !dbg !4274
  %4 = icmp eq ptr %0, null, !dbg !4277
  br i1 %4, label %5, label %8, !dbg !4279

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4280
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4283
  br label %15, !dbg !4283

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4284
  %10 = add nuw i64 %9, 1, !dbg !4284
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4284
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4284
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %13, metadata !966, metadata !DIExpression()), !dbg !4274
  br i1 %12, label %14, label %15, !dbg !4287

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4288
  unreachable, !dbg !4288

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4274
  call void @llvm.dbg.value(metadata i64 %16, metadata !966, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %16, metadata !4097, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 1, metadata !4098, metadata !DIExpression()), !dbg !4289
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %17, metadata !4102, metadata !DIExpression()), !dbg !4292
  %18 = icmp eq ptr %17, null, !dbg !4294
  br i1 %18, label %19, label %20, !dbg !4295

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4296
  unreachable, !dbg !4296

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !963, metadata !DIExpression()), !dbg !4274
  store i64 %16, ptr %1, align 8, !dbg !4297, !tbaa !1267
  ret ptr %17, !dbg !4298
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !958 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !963, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %1, metadata !964, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %2, metadata !965, metadata !DIExpression()), !dbg !4299
  %4 = load i64, ptr %1, align 8, !dbg !4300, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %4, metadata !966, metadata !DIExpression()), !dbg !4299
  %5 = icmp eq ptr %0, null, !dbg !4301
  br i1 %5, label %6, label %13, !dbg !4302

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4303
  br i1 %7, label %8, label %20, !dbg !4304

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4305
  call void @llvm.dbg.value(metadata i64 %9, metadata !966, metadata !DIExpression()), !dbg !4299
  %10 = icmp ugt i64 %2, 128, !dbg !4307
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4308
  call void @llvm.dbg.value(metadata i64 %12, metadata !966, metadata !DIExpression()), !dbg !4299
  br label %20, !dbg !4309

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4310
  %15 = add nuw i64 %14, 1, !dbg !4310
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4310
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4310
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4310
  call void @llvm.dbg.value(metadata i64 %18, metadata !966, metadata !DIExpression()), !dbg !4299
  br i1 %17, label %19, label %20, !dbg !4311

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4312
  unreachable, !dbg !4312

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4299
  call void @llvm.dbg.value(metadata i64 %21, metadata !966, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %21, metadata !4097, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %2, metadata !4098, metadata !DIExpression()), !dbg !4313
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4315
  call void @llvm.dbg.value(metadata ptr %22, metadata !4102, metadata !DIExpression()), !dbg !4316
  %23 = icmp eq ptr %22, null, !dbg !4318
  br i1 %23, label %24, label %25, !dbg !4319

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4320
  unreachable, !dbg !4320

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !963, metadata !DIExpression()), !dbg !4299
  store i64 %21, ptr %1, align 8, !dbg !4321, !tbaa !1267
  ret ptr %22, !dbg !4322
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !970 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !978, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %1, metadata !979, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %2, metadata !980, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %3, metadata !981, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %4, metadata !982, metadata !DIExpression()), !dbg !4323
  %6 = load i64, ptr %1, align 8, !dbg !4324, !tbaa !1267
  call void @llvm.dbg.value(metadata i64 %6, metadata !983, metadata !DIExpression()), !dbg !4323
  %7 = ashr i64 %6, 1, !dbg !4325
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4325
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4325
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4325
  call void @llvm.dbg.value(metadata i64 %10, metadata !984, metadata !DIExpression()), !dbg !4323
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4327
  call void @llvm.dbg.value(metadata i64 %11, metadata !984, metadata !DIExpression()), !dbg !4323
  %12 = icmp sgt i64 %3, -1, !dbg !4328
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4330
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4330
  call void @llvm.dbg.value(metadata i64 %15, metadata !984, metadata !DIExpression()), !dbg !4323
  %16 = icmp slt i64 %4, 0, !dbg !4331
  br i1 %16, label %17, label %30, !dbg !4331

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4331
  br i1 %18, label %19, label %24, !dbg !4331

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4331
  %21 = udiv i64 9223372036854775807, %20, !dbg !4331
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4331
  br i1 %23, label %46, label %43, !dbg !4331

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4331
  br i1 %25, label %43, label %26, !dbg !4331

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4331
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4331
  %29 = icmp ult i64 %28, %15, !dbg !4331
  br i1 %29, label %46, label %43, !dbg !4331

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4331
  br i1 %31, label %43, label %32, !dbg !4331

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4331
  br i1 %33, label %34, label %40, !dbg !4331

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4331
  br i1 %35, label %43, label %36, !dbg !4331

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4331
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4331
  %39 = icmp ult i64 %38, %4, !dbg !4331
  br i1 %39, label %46, label %43, !dbg !4331

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4331
  br i1 %42, label %46, label %43, !dbg !4331

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !985, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4323
  %44 = mul i64 %15, %4, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %44, metadata !985, metadata !DIExpression()), !dbg !4323
  %45 = icmp slt i64 %44, 128, !dbg !4331
  br i1 %45, label %46, label %51, !dbg !4331

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !986, metadata !DIExpression()), !dbg !4323
  %48 = sdiv i64 %47, %4, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %48, metadata !984, metadata !DIExpression()), !dbg !4323
  %49 = srem i64 %47, %4, !dbg !4335
  %50 = sub nsw i64 %47, %49, !dbg !4336
  call void @llvm.dbg.value(metadata i64 %50, metadata !985, metadata !DIExpression()), !dbg !4323
  br label %51, !dbg !4337

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4323
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4323
  call void @llvm.dbg.value(metadata i64 %53, metadata !985, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %52, metadata !984, metadata !DIExpression()), !dbg !4323
  %54 = icmp eq ptr %0, null, !dbg !4338
  br i1 %54, label %55, label %56, !dbg !4340

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4341, !tbaa !1267
  br label %56, !dbg !4342

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4343
  %58 = icmp slt i64 %57, %2, !dbg !4345
  br i1 %58, label %59, label %96, !dbg !4346

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4347
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4347
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %62, metadata !984, metadata !DIExpression()), !dbg !4323
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4348
  br i1 %65, label %95, label %66, !dbg !4348

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4349

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4349
  br i1 %68, label %69, label %74, !dbg !4349

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4349
  %71 = udiv i64 9223372036854775807, %70, !dbg !4349
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4349
  br i1 %73, label %95, label %93, !dbg !4349

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4349
  br i1 %75, label %93, label %76, !dbg !4349

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4349
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4349
  %79 = icmp ult i64 %78, %62, !dbg !4349
  br i1 %79, label %95, label %93, !dbg !4349

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4349
  br i1 %81, label %93, label %82, !dbg !4349

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4349
  br i1 %83, label %84, label %90, !dbg !4349

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4349
  br i1 %85, label %93, label %86, !dbg !4349

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4349
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4349
  %89 = icmp ult i64 %88, %4, !dbg !4349
  br i1 %89, label %95, label %93, !dbg !4349

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4349
  br i1 %92, label %95, label %93, !dbg !4349

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !985, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4323
  %94 = mul i64 %62, %4, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %94, metadata !985, metadata !DIExpression()), !dbg !4323
  br label %96, !dbg !4350

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !4351
  unreachable, !dbg !4351

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4323
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4323
  call void @llvm.dbg.value(metadata i64 %98, metadata !985, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %97, metadata !984, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata i64 %98, metadata !4172, metadata !DIExpression()), !dbg !4352
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %98, metadata !4177, metadata !DIExpression()), !dbg !4354
  %99 = icmp eq i64 %98, 0, !dbg !4356
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4356
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !4357
  call void @llvm.dbg.value(metadata ptr %101, metadata !4102, metadata !DIExpression()), !dbg !4358
  %102 = icmp eq ptr %101, null, !dbg !4360
  br i1 %102, label %103, label %104, !dbg !4361

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !4362
  unreachable, !dbg !4362

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !978, metadata !DIExpression()), !dbg !4323
  store i64 %97, ptr %1, align 8, !dbg !4363, !tbaa !1267
  ret ptr %101, !dbg !4364
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4365 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %0, metadata !4369, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata i64 1, metadata !4372, metadata !DIExpression()), !dbg !4373
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4375
  call void @llvm.dbg.value(metadata ptr %2, metadata !4102, metadata !DIExpression()), !dbg !4376
  %3 = icmp eq ptr %2, null, !dbg !4378
  br i1 %3, label %4, label %5, !dbg !4379

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4380
  unreachable, !dbg !4380

5:                                                ; preds = %1
  ret ptr %2, !dbg !4381
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4382 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4370 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4369, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i64 %1, metadata !4372, metadata !DIExpression()), !dbg !4383
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4384
  call void @llvm.dbg.value(metadata ptr %3, metadata !4102, metadata !DIExpression()), !dbg !4385
  %4 = icmp eq ptr %3, null, !dbg !4387
  br i1 %4, label %5, label %6, !dbg !4388

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4389
  unreachable, !dbg !4389

6:                                                ; preds = %2
  ret ptr %3, !dbg !4390
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4391 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4393, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata i64 %0, metadata !4395, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 1, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %0, metadata !4401, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 1, metadata !4404, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 %0, metadata !4401, metadata !DIExpression()), !dbg !4405
  call void @llvm.dbg.value(metadata i64 1, metadata !4404, metadata !DIExpression()), !dbg !4405
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4407
  call void @llvm.dbg.value(metadata ptr %2, metadata !4102, metadata !DIExpression()), !dbg !4408
  %3 = icmp eq ptr %2, null, !dbg !4410
  br i1 %3, label %4, label %5, !dbg !4411

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4412
  unreachable, !dbg !4412

5:                                                ; preds = %1
  ret ptr %2, !dbg !4413
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4396 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4395, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %1, metadata !4398, metadata !DIExpression()), !dbg !4414
  call void @llvm.dbg.value(metadata i64 %0, metadata !4401, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 %1, metadata !4404, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 %0, metadata !4401, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 %1, metadata !4404, metadata !DIExpression()), !dbg !4415
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4417
  call void @llvm.dbg.value(metadata ptr %3, metadata !4102, metadata !DIExpression()), !dbg !4418
  %4 = icmp eq ptr %3, null, !dbg !4420
  br i1 %4, label %5, label %6, !dbg !4421

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4422
  unreachable, !dbg !4422

6:                                                ; preds = %2
  ret ptr %3, !dbg !4423
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4424 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4428, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %1, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64 %1, metadata !4126, metadata !DIExpression()), !dbg !4431
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4433
  call void @llvm.dbg.value(metadata ptr %3, metadata !4102, metadata !DIExpression()), !dbg !4434
  %4 = icmp eq ptr %3, null, !dbg !4436
  br i1 %4, label %5, label %6, !dbg !4437

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4438
  unreachable, !dbg !4438

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4439, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4444
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4446
  ret ptr %3, !dbg !4447
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4448 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4452, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4457
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4459
  call void @llvm.dbg.value(metadata ptr %3, metadata !4102, metadata !DIExpression()), !dbg !4460
  %4 = icmp eq ptr %3, null, !dbg !4462
  br i1 %4, label %5, label %6, !dbg !4463

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4464
  unreachable, !dbg !4464

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4439, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4465
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4467
  ret ptr %3, !dbg !4468
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4469 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4473, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %1, metadata !4474, metadata !DIExpression()), !dbg !4476
  %3 = add nsw i64 %1, 1, !dbg !4477
  call void @llvm.dbg.value(metadata i64 %3, metadata !4139, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i64 %3, metadata !4141, metadata !DIExpression()), !dbg !4480
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4482
  call void @llvm.dbg.value(metadata ptr %4, metadata !4102, metadata !DIExpression()), !dbg !4483
  %5 = icmp eq ptr %4, null, !dbg !4485
  br i1 %5, label %6, label %7, !dbg !4486

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4487
  unreachable, !dbg !4487

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4475, metadata !DIExpression()), !dbg !4476
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4488
  store i8 0, ptr %8, align 1, !dbg !4489, !tbaa !1111
  call void @llvm.dbg.value(metadata ptr %4, metadata !4439, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4492
  ret ptr %4, !dbg !4493
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4496, metadata !DIExpression()), !dbg !4497
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4498
  %3 = add i64 %2, 1, !dbg !4499
  call void @llvm.dbg.value(metadata ptr %0, metadata !4428, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %3, metadata !4429, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i64 %3, metadata !4126, metadata !DIExpression()), !dbg !4502
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4504
  call void @llvm.dbg.value(metadata ptr %4, metadata !4102, metadata !DIExpression()), !dbg !4505
  %5 = icmp eq ptr %4, null, !dbg !4507
  br i1 %5, label %6, label %7, !dbg !4508

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4509
  unreachable, !dbg !4509

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4439, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr %0, metadata !4442, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %3, metadata !4443, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4512
  ret ptr %4, !dbg !4513
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4514 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4519, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %1, metadata !4516, metadata !DIExpression()), !dbg !4520
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.150, ptr noundef nonnull @.str.2.151, i32 noundef 5) #38, !dbg !4519
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef %2) #38, !dbg !4519
  %3 = icmp eq i32 %1, 0, !dbg !4519
  tail call void @llvm.assume(i1 %3), !dbg !4519
  tail call void @abort() #40, !dbg !4521
  unreachable, !dbg !4521
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4522 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4560, metadata !DIExpression()), !dbg !4565
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4566
  call void @llvm.dbg.value(metadata i1 poison, metadata !4561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  call void @llvm.dbg.value(metadata ptr %0, metadata !4567, metadata !DIExpression()), !dbg !4570
  %3 = load i32, ptr %0, align 8, !dbg !4572, !tbaa !2293
  %4 = and i32 %3, 32, !dbg !4573
  %5 = icmp eq i32 %4, 0, !dbg !4573
  call void @llvm.dbg.value(metadata i1 %5, metadata !4563, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4574
  %7 = icmp eq i32 %6, 0, !dbg !4575
  call void @llvm.dbg.value(metadata i1 %7, metadata !4564, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  br i1 %5, label %8, label %18, !dbg !4576

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4578
  call void @llvm.dbg.value(metadata i1 %9, metadata !4561, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4565
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4579
  %11 = xor i1 %7, true, !dbg !4579
  %12 = sext i1 %11 to i32, !dbg !4579
  br i1 %10, label %21, label %13, !dbg !4579

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4580
  %15 = load i32, ptr %14, align 4, !dbg !4580, !tbaa !1102
  %16 = icmp ne i32 %15, 9, !dbg !4581
  %17 = sext i1 %16 to i32, !dbg !4582
  br label %21, !dbg !4582

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4583

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4585
  store i32 0, ptr %20, align 4, !dbg !4587, !tbaa !1102
  br label %21, !dbg !4585

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4565
  ret i32 %22, !dbg !4588
}

; Function Attrs: nounwind
declare !dbg !4589 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4592 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4630, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4631, metadata !DIExpression()), !dbg !4634
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4635
  call void @llvm.dbg.value(metadata i32 %2, metadata !4632, metadata !DIExpression()), !dbg !4634
  %3 = icmp slt i32 %2, 0, !dbg !4636
  br i1 %3, label %4, label %6, !dbg !4638

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4639
  br label %24, !dbg !4640

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4641
  %8 = icmp eq i32 %7, 0, !dbg !4641
  br i1 %8, label %13, label %9, !dbg !4643

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4644
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4645
  %12 = icmp eq i64 %11, -1, !dbg !4646
  br i1 %12, label %16, label %13, !dbg !4647

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4648
  %15 = icmp eq i32 %14, 0, !dbg !4648
  br i1 %15, label %16, label %18, !dbg !4649

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4631, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4633, metadata !DIExpression()), !dbg !4634
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4650
  call void @llvm.dbg.value(metadata i32 %17, metadata !4633, metadata !DIExpression()), !dbg !4634
  br label %24, !dbg !4651

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4652
  %20 = load i32, ptr %19, align 4, !dbg !4652, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %20, metadata !4631, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i32 0, metadata !4633, metadata !DIExpression()), !dbg !4634
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4650
  call void @llvm.dbg.value(metadata i32 %21, metadata !4633, metadata !DIExpression()), !dbg !4634
  %22 = icmp eq i32 %20, 0, !dbg !4653
  br i1 %22, label %24, label %23, !dbg !4651

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4655, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 -1, metadata !4633, metadata !DIExpression()), !dbg !4634
  br label %24, !dbg !4657

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4634
  ret i32 %25, !dbg !4658
}

; Function Attrs: nofree nounwind
declare !dbg !4659 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4660 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4663, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i32 %1, metadata !4664, metadata !DIExpression()), !dbg !4669
  %3 = icmp ult i32 %0, 3, !dbg !4670
  br i1 %3, label %4, label %9, !dbg !4670

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #38, !dbg !4671
  call void @llvm.dbg.value(metadata i32 %5, metadata !4665, metadata !DIExpression()), !dbg !4672
  %6 = tail call ptr @__errno_location() #41, !dbg !4673
  %7 = load i32, ptr %6, align 4, !dbg !4673, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %7, metadata !4668, metadata !DIExpression()), !dbg !4672
  %8 = tail call i32 @close(i32 noundef %0) #38, !dbg !4674
  store i32 %7, ptr %6, align 4, !dbg !4675, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %5, metadata !4663, metadata !DIExpression()), !dbg !4669
  br label %9, !dbg !4676

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4663, metadata !DIExpression()), !dbg !4669
  ret i32 %10, !dbg !4677
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4680, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i32 %1, metadata !4681, metadata !DIExpression()), !dbg !4682
  %3 = and i32 %1, 524288, !dbg !4683
  %4 = icmp eq i32 %3, 0, !dbg !4684
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4684
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #38, !dbg !4685
  ret i32 %6, !dbg !4686
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4687 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4725, metadata !DIExpression()), !dbg !4726
  %2 = icmp eq ptr %0, null, !dbg !4727
  br i1 %2, label %6, label %3, !dbg !4729

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4730
  %5 = icmp eq i32 %4, 0, !dbg !4730
  br i1 %5, label %6, label %8, !dbg !4731

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4732
  br label %16, !dbg !4733

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4734, metadata !DIExpression()), !dbg !4739
  %9 = load i32, ptr %0, align 8, !dbg !4741, !tbaa !2293
  %10 = and i32 %9, 256, !dbg !4743
  %11 = icmp eq i32 %10, 0, !dbg !4743
  br i1 %11, label %14, label %12, !dbg !4744

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4745
  br label %14, !dbg !4745

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4746
  br label %16, !dbg !4747

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4726
  ret i32 %17, !dbg !4748
}

; Function Attrs: nofree nounwind
declare !dbg !4749 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4750 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4755, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %1, metadata !4756, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %2, metadata !4757, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %3, metadata !4758, metadata !DIExpression()), !dbg !4760
  %5 = icmp eq ptr %1, null, !dbg !4761
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4763
  %7 = select i1 %5, ptr @.str.165, ptr %1, !dbg !4763
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %8, metadata !4757, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %7, metadata !4756, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata ptr %6, metadata !4755, metadata !DIExpression()), !dbg !4760
  %9 = icmp eq ptr %3, null, !dbg !4764
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4766
  call void @llvm.dbg.value(metadata ptr %10, metadata !4758, metadata !DIExpression()), !dbg !4760
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4767
  call void @llvm.dbg.value(metadata i64 %11, metadata !4759, metadata !DIExpression()), !dbg !4760
  %12 = icmp ult i64 %11, -3, !dbg !4768
  br i1 %12, label %13, label %17, !dbg !4770

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4771
  %15 = icmp eq i32 %14, 0, !dbg !4771
  br i1 %15, label %16, label %29, !dbg !4772

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4773, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata ptr %10, metadata !4780, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i32 0, metadata !4783, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 8, metadata !4784, metadata !DIExpression()), !dbg !4785
  store i64 0, ptr %10, align 1, !dbg !4787
  br label %29, !dbg !4788

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4789
  br i1 %18, label %19, label %20, !dbg !4791

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4792
  unreachable, !dbg !4792

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4793

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4795
  br i1 %23, label %29, label %24, !dbg !4796

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4797
  br i1 %25, label %29, label %26, !dbg !4800

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4801, !tbaa !1111
  %28 = zext i8 %27 to i32, !dbg !4802
  store i32 %28, ptr %6, align 4, !dbg !4803, !tbaa !1102
  br label %29, !dbg !4804

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4760
  ret i64 %30, !dbg !4805
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4806 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4812 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4814, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %1, metadata !4815, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %2, metadata !4816, metadata !DIExpression()), !dbg !4818
  %4 = icmp eq i64 %2, 0, !dbg !4819
  br i1 %4, label %8, label %5, !dbg !4819

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4819
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4819
  br i1 %7, label %13, label %8, !dbg !4819

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4817, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4818
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4817, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4818
  %9 = mul i64 %2, %1, !dbg !4819
  call void @llvm.dbg.value(metadata i64 %9, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata ptr %0, metadata !4821, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %9, metadata !4824, metadata !DIExpression()), !dbg !4825
  %10 = icmp eq i64 %9, 0, !dbg !4827
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4827
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4828
  br label %15, !dbg !4829

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4817, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4818
  %14 = tail call ptr @__errno_location() #41, !dbg !4830
  store i32 12, ptr %14, align 4, !dbg !4832, !tbaa !1102
  br label %15, !dbg !4833

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4818
  ret ptr %16, !dbg !4834
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4837, metadata !DIExpression()), !dbg !4838
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #38, !dbg !4839
  ret i32 %2, !dbg !4840
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4841 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4843, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i32 %1, metadata !4844, metadata !DIExpression()), !dbg !4868
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #38, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4845, metadata !DIExpression()), !dbg !4870
  call void @llvm.va_start(ptr nonnull %3), !dbg !4871
  call void @llvm.dbg.value(metadata i32 -1, metadata !4856, metadata !DIExpression()), !dbg !4868
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
  ], !dbg !4872

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !4873
  %6 = icmp ult i32 %5, 41, !dbg !4873
  br i1 %6, label %7, label %13, !dbg !4873

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4873
  %9 = load ptr, ptr %8, align 16, !dbg !4873
  %10 = zext i32 %5 to i64, !dbg !4873
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !4873
  %12 = add nuw nsw i32 %5, 8, !dbg !4873
  store i32 %12, ptr %3, align 16, !dbg !4873
  br label %17, !dbg !4873

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4873
  %15 = load ptr, ptr %14, align 8, !dbg !4873
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !4873
  store ptr %16, ptr %14, align 8, !dbg !4873
  br label %17, !dbg !4873

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !4873
  %19 = load i32, ptr %18, align 4, !dbg !4873
  call void @llvm.dbg.value(metadata i32 %19, metadata !4857, metadata !DIExpression()), !dbg !4874
  call void @llvm.dbg.value(metadata i32 %0, metadata !4875, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %19, metadata !4878, metadata !DIExpression()), !dbg !4880
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #38, !dbg !4882
  call void @llvm.dbg.value(metadata i32 %20, metadata !4879, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i32 %20, metadata !4856, metadata !DIExpression()), !dbg !4868
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !4883
  %23 = icmp ult i32 %22, 41, !dbg !4883
  br i1 %23, label %24, label %30, !dbg !4883

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4883
  %26 = load ptr, ptr %25, align 16, !dbg !4883
  %27 = zext i32 %22 to i64, !dbg !4883
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !4883
  %29 = add nuw nsw i32 %22, 8, !dbg !4883
  store i32 %29, ptr %3, align 16, !dbg !4883
  br label %34, !dbg !4883

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4883
  %32 = load ptr, ptr %31, align 8, !dbg !4883
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !4883
  store ptr %33, ptr %31, align 8, !dbg !4883
  br label %34, !dbg !4883

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !4883
  %36 = load i32, ptr %35, align 4, !dbg !4883
  call void @llvm.dbg.value(metadata i32 %36, metadata !4860, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i32 %0, metadata !913, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata i32 %36, metadata !914, metadata !DIExpression()), !dbg !4885
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4887, !tbaa !1102
  %38 = icmp sgt i32 %37, -1, !dbg !4889
  br i1 %38, label %39, label %51, !dbg !4890

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #38, !dbg !4891
  call void @llvm.dbg.value(metadata i32 %40, metadata !915, metadata !DIExpression()), !dbg !4885
  %41 = icmp sgt i32 %40, -1, !dbg !4893
  br i1 %41, label %46, label %42, !dbg !4895

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #41, !dbg !4896
  %44 = load i32, ptr %43, align 4, !dbg !4896, !tbaa !1102
  %45 = icmp eq i32 %44, 22, !dbg !4897
  br i1 %45, label %47, label %46, !dbg !4898

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4899, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %40, metadata !915, metadata !DIExpression()), !dbg !4885
  br label %107, !dbg !4901

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4875, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32 %36, metadata !4878, metadata !DIExpression()), !dbg !4902
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #38, !dbg !4905
  call void @llvm.dbg.value(metadata i32 %48, metadata !4879, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32 %48, metadata !915, metadata !DIExpression()), !dbg !4885
  %49 = icmp sgt i32 %48, -1, !dbg !4906
  br i1 %49, label %50, label %107, !dbg !4908

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4909, !tbaa !1102
  br label %55, !dbg !4910

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !4875, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %36, metadata !4878, metadata !DIExpression()), !dbg !4911
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #38, !dbg !4913
  call void @llvm.dbg.value(metadata i32 %52, metadata !4879, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i32 %52, metadata !915, metadata !DIExpression()), !dbg !4885
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !4914
  call void @llvm.dbg.value(metadata i32 %57, metadata !915, metadata !DIExpression()), !dbg !4885
  %58 = icmp sgt i32 %57, -1, !dbg !4915
  %59 = select i1 %58, i1 %56, i1 false, !dbg !4901
  br i1 %59, label %60, label %107, !dbg !4901

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #38, !dbg !4916
  call void @llvm.dbg.value(metadata i32 %61, metadata !916, metadata !DIExpression()), !dbg !4917
  %62 = icmp slt i32 %61, 0, !dbg !4918
  br i1 %62, label %67, label %63, !dbg !4919

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !4920
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #38, !dbg !4921
  %66 = icmp eq i32 %65, -1, !dbg !4922
  br i1 %66, label %67, label %107, !dbg !4923

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #41, !dbg !4924
  %69 = load i32, ptr %68, align 4, !dbg !4924, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 %69, metadata !919, metadata !DIExpression()), !dbg !4925
  %70 = call i32 @close(i32 noundef %57) #38, !dbg !4926
  store i32 %69, ptr %68, align 4, !dbg !4927, !tbaa !1102
  call void @llvm.dbg.value(metadata i32 -1, metadata !915, metadata !DIExpression()), !dbg !4885
  br label %107, !dbg !4928

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #38, !dbg !4929
  call void @llvm.dbg.value(metadata i32 %72, metadata !4856, metadata !DIExpression()), !dbg !4868
  br label %107, !dbg !4930

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !4931
  %75 = icmp ult i32 %74, 41, !dbg !4931
  br i1 %75, label %76, label %82, !dbg !4931

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4931
  %78 = load ptr, ptr %77, align 16, !dbg !4931
  %79 = zext i32 %74 to i64, !dbg !4931
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4931
  %81 = add nuw nsw i32 %74, 8, !dbg !4931
  store i32 %81, ptr %3, align 16, !dbg !4931
  br label %86, !dbg !4931

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4931
  %84 = load ptr, ptr %83, align 8, !dbg !4931
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !4931
  store ptr %85, ptr %83, align 8, !dbg !4931
  br label %86, !dbg !4931

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !4931
  %88 = load i32, ptr %87, align 4, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %88, metadata !4862, metadata !DIExpression()), !dbg !4932
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #38, !dbg !4933
  call void @llvm.dbg.value(metadata i32 %89, metadata !4856, metadata !DIExpression()), !dbg !4868
  br label %107, !dbg !4934

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !4935
  %92 = icmp ult i32 %91, 41, !dbg !4935
  br i1 %92, label %93, label %99, !dbg !4935

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4935
  %95 = load ptr, ptr %94, align 16, !dbg !4935
  %96 = zext i32 %91 to i64, !dbg !4935
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !4935
  %98 = add nuw nsw i32 %91, 8, !dbg !4935
  store i32 %98, ptr %3, align 16, !dbg !4935
  br label %103, !dbg !4935

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4935
  %101 = load ptr, ptr %100, align 8, !dbg !4935
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !4935
  store ptr %102, ptr %100, align 8, !dbg !4935
  br label %103, !dbg !4935

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !4935
  %105 = load ptr, ptr %104, align 8, !dbg !4935
  call void @llvm.dbg.value(metadata ptr %105, metadata !4866, metadata !DIExpression()), !dbg !4936
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #38, !dbg !4937
  call void @llvm.dbg.value(metadata i32 %106, metadata !4856, metadata !DIExpression()), !dbg !4868
  br label %107, !dbg !4938

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !4939
  call void @llvm.dbg.value(metadata i32 %108, metadata !4856, metadata !DIExpression()), !dbg !4868
  call void @llvm.va_end(ptr nonnull %3), !dbg !4940
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #38, !dbg !4941
  ret i32 %108, !dbg !4942
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4943 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4947, metadata !DIExpression()), !dbg !4952
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4953
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4948, metadata !DIExpression()), !dbg !4954
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4955
  %4 = icmp eq i32 %3, 0, !dbg !4955
  br i1 %4, label %5, label %12, !dbg !4957

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4958, metadata !DIExpression()), !dbg !4962
  %6 = load i16, ptr %2, align 16, !dbg !4965
  %7 = icmp eq i16 %6, 67, !dbg !4965
  br i1 %7, label %11, label %8, !dbg !4966

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4958, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata ptr @.str.1.174, metadata !4961, metadata !DIExpression()), !dbg !4967
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.174, i64 6), !dbg !4969
  %10 = icmp eq i32 %9, 0, !dbg !4970
  br i1 %10, label %11, label %12, !dbg !4971

11:                                               ; preds = %8, %5
  br label %12, !dbg !4972

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4952
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4973
  ret i1 %13, !dbg !4973
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4974 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4978, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata ptr %1, metadata !4979, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.value(metadata i64 %2, metadata !4980, metadata !DIExpression()), !dbg !4981
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4982
  ret i32 %4, !dbg !4983
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4988, metadata !DIExpression()), !dbg !4989
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4990
  ret ptr %2, !dbg !4991
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4994, metadata !DIExpression()), !dbg !4996
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4997
  call void @llvm.dbg.value(metadata ptr %2, metadata !4995, metadata !DIExpression()), !dbg !4996
  ret ptr %2, !dbg !4998
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4999 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5001, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata ptr %1, metadata !5002, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i64 %2, metadata !5003, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i32 %0, metadata !4994, metadata !DIExpression()), !dbg !5009
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5011
  call void @llvm.dbg.value(metadata ptr %4, metadata !4995, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata ptr %4, metadata !5004, metadata !DIExpression()), !dbg !5008
  %5 = icmp eq ptr %4, null, !dbg !5012
  br i1 %5, label %6, label %9, !dbg !5013

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5014
  br i1 %7, label %19, label %8, !dbg !5017

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5018, !tbaa !1111
  br label %19, !dbg !5019

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5020
  call void @llvm.dbg.value(metadata i64 %10, metadata !5005, metadata !DIExpression()), !dbg !5021
  %11 = icmp ult i64 %10, %2, !dbg !5022
  br i1 %11, label %12, label %14, !dbg !5024

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5025
  call void @llvm.dbg.value(metadata ptr %1, metadata !5027, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata ptr %4, metadata !5030, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.value(metadata i64 %13, metadata !5031, metadata !DIExpression()), !dbg !5032
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !5034
  br label %19, !dbg !5035

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5036
  br i1 %15, label %19, label %16, !dbg !5039

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5040
  call void @llvm.dbg.value(metadata ptr %1, metadata !5027, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata ptr %4, metadata !5030, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i64 %17, metadata !5031, metadata !DIExpression()), !dbg !5042
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5044
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5045
  store i8 0, ptr %18, align 1, !dbg !5046, !tbaa !1111
  br label %19, !dbg !5047

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5048
  ret i32 %20, !dbg !5049
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!60, !529, !566, !570, !585, !875, !925, !927, !929, !931, !637, !651, !702, !933, !941, !943, !946, !948, !867, !954, !988, !990, !992, !994, !996, !998, !891, !1000, !1003, !910, !1005, !1009, !1011}
!llvm.ident = !{!1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013}
!llvm.module.flags = !{!1014, !1015, !1016, !1017, !1018, !1019}

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
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !61, retainedTypes: !97, globals: !108, splitDebugInlining: false, nameTableKind: None)
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
!584 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !585, file: !586, line: 66, type: !632, isLocal: false, isDefinition: true)
!585 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !587, globals: !588, splitDebugInlining: false, nameTableKind: None)
!586 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!587 = !{!98, !107}
!588 = !{!589, !591, !611, !613, !615, !617, !583, !619, !621, !623, !625, !630}
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 272, type: !131, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "old_file_name", scope: !593, file: !586, line: 304, type: !101, isLocal: true, isDefinition: true)
!593 = distinct !DISubprogram(name: "verror_at_line", scope: !586, file: !586, line: 298, type: !594, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !604)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !57, !57, !101, !69, !101, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !598)
!598 = !{!599, !601, !602, !603}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !597, file: !600, baseType: !69, size: 32)
!600 = !DIFile(filename: "lib/error.c", directory: "/src")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !597, file: !600, baseType: !69, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !597, file: !600, baseType: !98, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !597, file: !600, baseType: !98, size: 64, offset: 128)
!604 = !{!605, !606, !607, !608, !609, !610}
!605 = !DILocalVariable(name: "status", arg: 1, scope: !593, file: !586, line: 298, type: !57)
!606 = !DILocalVariable(name: "errnum", arg: 2, scope: !593, file: !586, line: 298, type: !57)
!607 = !DILocalVariable(name: "file_name", arg: 3, scope: !593, file: !586, line: 298, type: !101)
!608 = !DILocalVariable(name: "line_number", arg: 4, scope: !593, file: !586, line: 298, type: !69)
!609 = !DILocalVariable(name: "message", arg: 5, scope: !593, file: !586, line: 298, type: !101)
!610 = !DILocalVariable(name: "args", arg: 6, scope: !593, file: !586, line: 298, type: !596)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "old_line_number", scope: !593, file: !586, line: 305, type: !69, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !586, line: 338, type: !19, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !318, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !586, line: 346, type: !111, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "error_message_count", scope: !585, file: !586, line: 69, type: !69, isLocal: false, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !585, file: !586, line: 295, type: !57, isLocal: false, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !313, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !586, line: 208, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 21)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !586, line: 214, type: !131, isLocal: true, isDefinition: true)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null}
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "program_name", scope: !637, file: !638, line: 31, type: !101, isLocal: false, isDefinition: true)
!637 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !639, globals: !640, splitDebugInlining: false, nameTableKind: None)
!638 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!639 = !{!59}
!640 = !{!635, !641, !643}
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !638, line: 46, type: !318, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !638, line: 49, type: !19, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "utf07FF", scope: !647, file: !648, line: 46, type: !675, isLocal: true, isDefinition: true)
!647 = distinct !DISubprogram(name: "proper_name_lite", scope: !648, file: !648, line: 38, type: !649, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !653)
!648 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!649 = !DISubroutineType(types: !650)
!650 = !{!101, !101, !101}
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !652, splitDebugInlining: false, nameTableKind: None)
!652 = !{!645}
!653 = !{!654, !655, !656, !657, !662}
!654 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !647, file: !648, line: 38, type: !101)
!655 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !647, file: !648, line: 38, type: !101)
!656 = !DILocalVariable(name: "translation", scope: !647, file: !648, line: 40, type: !101)
!657 = !DILocalVariable(name: "w", scope: !647, file: !648, line: 47, type: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !659, line: 37, baseType: !660)
!659 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !255, line: 57, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !255, line: 42, baseType: !69)
!662 = !DILocalVariable(name: "mbs", scope: !647, file: !648, line: 48, type: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !664, line: 6, baseType: !665)
!664 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !666, line: 21, baseType: !667)
!666 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 13, size: 64, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !667, file: !666, line: 15, baseType: !57, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !667, file: !666, line: 20, baseType: !671, size: 32, offset: 32)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !666, line: 16, size: 32, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !671, file: !666, line: 18, baseType: !69, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !671, file: !666, line: 19, baseType: !19, size: 32)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16, elements: !112)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !678, line: 78, type: !318, isLocal: true, isDefinition: true)
!678 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !678, line: 79, type: !294, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !678, line: 80, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 13)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !678, line: 81, type: !683, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !678, line: 82, type: !277, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !678, line: 83, type: !111, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !678, line: 84, type: !318, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !678, line: 85, type: !313, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !678, line: 86, type: !313, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !678, line: 87, type: !318, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !702, file: !678, line: 76, type: !771, isLocal: false, isDefinition: true)
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !703, retainedTypes: !709, globals: !710, splitDebugInlining: false, nameTableKind: None)
!703 = !{!83, !704, !67}
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !84, line: 254, baseType: !69, size: 32, elements: !705)
!705 = !{!706, !707, !708}
!706 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!707 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!708 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!709 = !{!57, !103, !104}
!710 = !{!676, !679, !681, !686, !688, !690, !692, !694, !696, !698, !700, !711, !715, !725, !727, !729, !731, !733, !735, !737, !760, !767, !769}
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !702, file: !678, line: 92, type: !713, isLocal: false, isDefinition: true)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 320, elements: !122)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !702, file: !678, line: 1040, type: !717, isLocal: false, isDefinition: true)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !678, line: 56, size: 448, elements: !718)
!718 = !{!719, !720, !721, !723, !724}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !717, file: !678, line: 59, baseType: !83, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !678, line: 62, baseType: !57, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !717, file: !678, line: 66, baseType: !722, size: 256, offset: 64)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !319)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !717, file: !678, line: 69, baseType: !101, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !717, file: !678, line: 72, baseType: !101, size: 64, offset: 384)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !702, file: !678, line: 107, type: !717, isLocal: true, isDefinition: true)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "slot0", scope: !702, file: !678, line: 831, type: !193, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !678, line: 321, type: !111, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !678, line: 357, type: !111, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !678, line: 358, type: !111, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !678, line: 199, type: !313, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "quote", scope: !739, file: !678, line: 228, type: !758, isLocal: true, isDefinition: true)
!739 = distinct !DISubprogram(name: "gettext_quote", scope: !678, file: !678, line: 197, type: !740, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!101, !101, !83}
!742 = !{!743, !744, !745, !746, !747}
!743 = !DILocalVariable(name: "msgid", arg: 1, scope: !739, file: !678, line: 197, type: !101)
!744 = !DILocalVariable(name: "s", arg: 2, scope: !739, file: !678, line: 197, type: !83)
!745 = !DILocalVariable(name: "translation", scope: !739, file: !678, line: 199, type: !101)
!746 = !DILocalVariable(name: "w", scope: !739, file: !678, line: 229, type: !658)
!747 = !DILocalVariable(name: "mbs", scope: !739, file: !678, line: 230, type: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !664, line: 6, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !666, line: 21, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 13, size: 64, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !750, file: !666, line: 15, baseType: !57, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !750, file: !666, line: 20, baseType: !754, size: 32, offset: 32)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !666, line: 16, size: 32, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !754, file: !666, line: 18, baseType: !69, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !754, file: !666, line: 19, baseType: !19, size: 32)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !759)
!759 = !{!113, !21}
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "slotvec", scope: !702, file: !678, line: 834, type: !762, isLocal: true, isDefinition: true)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !678, line: 823, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !763, file: !678, line: 825, baseType: !104, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !763, file: !678, line: 826, baseType: !59, size: 64, offset: 64)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "nslots", scope: !702, file: !678, line: 832, type: !57, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "slotvec0", scope: !702, file: !678, line: 833, type: !763, isLocal: true, isDefinition: true)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 704, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 11)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !776, line: 98, type: !131, isLocal: true, isDefinition: true)
!776 = !DIFile(filename: "lib/tmpdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6bb1205c798131b3318a3c96a85b8877")
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !776, line: 110, type: !313, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !776, line: 132, type: !131, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !776, line: 160, type: !141, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !785, line: 67, type: !141, isLocal: true, isDefinition: true)
!785 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !785, line: 69, type: !313, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !785, line: 83, type: !313, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !785, line: 83, type: !19, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !785, line: 85, type: !111, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !785, line: 88, type: !796, isLocal: true, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 171)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !785, line: 88, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 34)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !785, line: 105, type: !146, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !785, line: 109, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 23)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !785, line: 113, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 28)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !785, line: 120, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 32)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !785, line: 127, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 36)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !785, line: 134, type: !340, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !785, line: 142, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 44)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !785, line: 150, type: !835, isLocal: true, isDefinition: true)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 48)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !785, line: 159, type: !840, isLocal: true, isDefinition: true)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 52)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !785, line: 170, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 60)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !785, line: 248, type: !277, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !785, line: 248, type: !365, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !785, line: 254, type: !277, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !785, line: 254, type: !136, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !785, line: 254, type: !340, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !785, line: 259, type: !3, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !785, line: 259, type: !862, isLocal: true, isDefinition: true)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 29)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !867, file: !868, line: 26, type: !870, isLocal: false, isDefinition: true)
!867 = distinct !DICompileUnit(language: DW_LANG_C11, file: !868, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !869, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!869 = !{!865}
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 376, elements: !871)
!871 = !{!872}
!872 = !DISubrange(count: 47)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "exit_failure", scope: !875, file: !876, line: 24, type: !878, isLocal: false, isDefinition: true)
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !877, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!877 = !{!873}
!878 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(scope: null, file: !881, line: 34, type: !156, isLocal: true, isDefinition: true)
!881 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(scope: null, file: !881, line: 34, type: !313, isLocal: true, isDefinition: true)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !881, line: 34, type: !335, isLocal: true, isDefinition: true)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !888, line: 108, type: !116, isLocal: true, isDefinition: true)
!888 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(name: "internal_state", scope: !891, file: !888, line: 97, type: !894, isLocal: true, isDefinition: true)
!891 = distinct !DICompileUnit(language: DW_LANG_C11, file: !888, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !892, globals: !893, splitDebugInlining: false, nameTableKind: None)
!892 = !{!98, !104, !107}
!893 = !{!886, !889}
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !664, line: 6, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !666, line: 21, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !666, line: 13, size: 64, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !896, file: !666, line: 15, baseType: !57, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !896, file: !666, line: 20, baseType: !900, size: 32, offset: 32)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !666, line: 16, size: 32, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !900, file: !666, line: 18, baseType: !69, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !900, file: !666, line: 19, baseType: !19, size: 32)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !906, file: !907, line: 506, type: !57, isLocal: true, isDefinition: true)
!906 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !907, file: !907, line: 485, type: !908, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !912)
!907 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!908 = !DISubroutineType(types: !909)
!909 = !{!57, !57, !57}
!910 = distinct !DICompileUnit(language: DW_LANG_C11, file: !907, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !911, splitDebugInlining: false, nameTableKind: None)
!911 = !{!904}
!912 = !{!913, !914, !915, !916, !919}
!913 = !DILocalVariable(name: "fd", arg: 1, scope: !906, file: !907, line: 485, type: !57)
!914 = !DILocalVariable(name: "target", arg: 2, scope: !906, file: !907, line: 485, type: !57)
!915 = !DILocalVariable(name: "result", scope: !906, file: !907, line: 487, type: !57)
!916 = !DILocalVariable(name: "flags", scope: !917, file: !907, line: 530, type: !57)
!917 = distinct !DILexicalBlock(scope: !918, file: !907, line: 529, column: 5)
!918 = distinct !DILexicalBlock(scope: !906, file: !907, line: 528, column: 7)
!919 = !DILocalVariable(name: "saved_errno", scope: !920, file: !907, line: 533, type: !57)
!920 = distinct !DILexicalBlock(scope: !921, file: !907, line: 532, column: 9)
!921 = distinct !DILexicalBlock(scope: !917, file: !907, line: 531, column: 11)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !924, line: 35, type: !294, isLocal: true, isDefinition: true)
!924 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !639, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/full-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "717d8293e026c44a771a83b22da54cc2")
!931 = distinct !DICompileUnit(language: DW_LANG_C11, file: !932, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!932 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!933 = distinct !DICompileUnit(language: DW_LANG_C11, file: !934, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !935, retainedTypes: !940, splitDebugInlining: false, nameTableKind: None)
!934 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!935 = !{!936}
!936 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !937, line: 36, baseType: !69, size: 32, elements: !938)
!937 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!938 = !{!939}
!939 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!940 = !{!104}
!941 = distinct !DICompileUnit(language: DW_LANG_C11, file: !942, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!942 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c54cf13a93f038494ed7ea783050e30c")
!943 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !944, globals: !945, splitDebugInlining: false, nameTableKind: None)
!944 = !{!98, !57}
!945 = !{!774, !777, !779, !781}
!946 = distinct !DICompileUnit(language: DW_LANG_C11, file: !947, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!948 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !949, retainedTypes: !531, globals: !953, splitDebugInlining: false, nameTableKind: None)
!949 = !{!950}
!950 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !785, line: 40, baseType: !69, size: 32, elements: !951)
!951 = !{!952}
!952 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!953 = !{!783, !786, !788, !790, !792, !794, !799, !804, !806, !811, !816, !821, !826, !828, !833, !838, !843, !848, !850, !852, !854, !856, !858, !860}
!954 = distinct !DICompileUnit(language: DW_LANG_C11, file: !955, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !956, retainedTypes: !987, splitDebugInlining: false, nameTableKind: None)
!955 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!956 = !{!957, !969}
!957 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !958, file: !955, line: 188, baseType: !69, size: 32, elements: !967)
!958 = distinct !DISubprogram(name: "x2nrealloc", scope: !955, file: !955, line: 176, type: !959, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !962)
!959 = !DISubroutineType(types: !960)
!960 = !{!98, !98, !961, !104}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!962 = !{!963, !964, !965, !966}
!963 = !DILocalVariable(name: "p", arg: 1, scope: !958, file: !955, line: 176, type: !98)
!964 = !DILocalVariable(name: "pn", arg: 2, scope: !958, file: !955, line: 176, type: !961)
!965 = !DILocalVariable(name: "s", arg: 3, scope: !958, file: !955, line: 176, type: !104)
!966 = !DILocalVariable(name: "n", scope: !958, file: !955, line: 178, type: !104)
!967 = !{!968}
!968 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!969 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !970, file: !955, line: 228, baseType: !69, size: 32, elements: !967)
!970 = distinct !DISubprogram(name: "xpalloc", scope: !955, file: !955, line: 223, type: !971, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !977)
!971 = !DISubroutineType(types: !972)
!972 = !{!98, !98, !973, !974, !976, !974}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !975, line: 130, baseType: !976)
!975 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !105, line: 35, baseType: !256)
!977 = !{!978, !979, !980, !981, !982, !983, !984, !985, !986}
!978 = !DILocalVariable(name: "pa", arg: 1, scope: !970, file: !955, line: 223, type: !98)
!979 = !DILocalVariable(name: "pn", arg: 2, scope: !970, file: !955, line: 223, type: !973)
!980 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !970, file: !955, line: 223, type: !974)
!981 = !DILocalVariable(name: "n_max", arg: 4, scope: !970, file: !955, line: 223, type: !976)
!982 = !DILocalVariable(name: "s", arg: 5, scope: !970, file: !955, line: 223, type: !974)
!983 = !DILocalVariable(name: "n0", scope: !970, file: !955, line: 230, type: !974)
!984 = !DILocalVariable(name: "n", scope: !970, file: !955, line: 237, type: !974)
!985 = !DILocalVariable(name: "nbytes", scope: !970, file: !955, line: 248, type: !974)
!986 = !DILocalVariable(name: "adjusted_nbytes", scope: !970, file: !955, line: 252, type: !974)
!987 = !{!59, !98, !215, !256, !106}
!988 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !989, splitDebugInlining: false, nameTableKind: None)
!989 = !{!879, !882, !884}
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!991 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!992 = distinct !DICompileUnit(language: DW_LANG_C11, file: !993, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!993 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!994 = distinct !DICompileUnit(language: DW_LANG_C11, file: !995, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!995 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!996 = distinct !DICompileUnit(language: DW_LANG_C11, file: !997, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!997 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!998 = distinct !DICompileUnit(language: DW_LANG_C11, file: !999, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!999 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1000 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1001, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1002, splitDebugInlining: false, nameTableKind: None)
!1001 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1002 = !{!215, !106, !98}
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!1005 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1006, splitDebugInlining: false, nameTableKind: None)
!1006 = !{!1007, !922}
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !924, line: 35, type: !111, isLocal: true, isDefinition: true)
!1009 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1010, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1010 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1011 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1012, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!1012 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1013 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1014 = !{i32 7, !"Dwarf Version", i32 5}
!1015 = !{i32 2, !"Debug Info Version", i32 3}
!1016 = !{i32 1, !"wchar_size", i32 4}
!1017 = !{i32 8, !"PIC Level", i32 2}
!1018 = !{i32 7, !"PIE Level", i32 2}
!1019 = !{i32 7, !"uwtable", i32 2}
!1020 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 112, type: !1021, scopeLine: 113, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !57}
!1023 = !{!1024}
!1024 = !DILocalVariable(name: "status", arg: 1, scope: !1020, file: !2, line: 112, type: !57)
!1025 = !DILocation(line: 0, scope: !1020)
!1026 = !DILocation(line: 114, column: 14, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 114, column: 7)
!1028 = !DILocation(line: 114, column: 7, scope: !1020)
!1029 = !DILocation(line: 115, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 115, column: 5)
!1031 = !{!1032, !1032, i64 0}
!1032 = !{!"any pointer", !1033, i64 0}
!1033 = !{!"omnipotent char", !1034, i64 0}
!1034 = !{!"Simple C/C++ TBAA"}
!1035 = !DILocation(line: 118, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 117, column: 5)
!1037 = !DILocation(line: 122, column: 7, scope: !1036)
!1038 = !DILocation(line: 729, column: 3, scope: !1039, inlinedAt: !1041)
!1039 = distinct !DISubprogram(name: "emit_stdin_note", scope: !63, file: !63, line: 727, type: !633, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1040)
!1040 = !{}
!1041 = distinct !DILocation(line: 126, column: 7, scope: !1036)
!1042 = !DILocation(line: 736, column: 3, scope: !1043, inlinedAt: !1044)
!1043 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !63, file: !63, line: 734, type: !633, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1040)
!1044 = distinct !DILocation(line: 127, column: 7, scope: !1036)
!1045 = !DILocation(line: 129, column: 7, scope: !1036)
!1046 = !DILocation(line: 132, column: 7, scope: !1036)
!1047 = !DILocation(line: 135, column: 7, scope: !1036)
!1048 = !DILocation(line: 138, column: 7, scope: !1036)
!1049 = !DILocation(line: 139, column: 7, scope: !1036)
!1050 = !DILocation(line: 140, column: 7, scope: !1036)
!1051 = !DILocalVariable(name: "program", arg: 1, scope: !1052, file: !63, line: 836, type: !101)
!1052 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !63, file: !63, line: 836, type: !1053, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !101}
!1055 = !{!1051, !1056, !1063, !1064, !1066, !1067}
!1056 = !DILocalVariable(name: "infomap", scope: !1052, file: !63, line: 838, type: !1057)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 896, elements: !314)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1052, file: !63, line: 838, size: 128, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1059, file: !63, line: 838, baseType: !101, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1059, file: !63, line: 838, baseType: !101, size: 64, offset: 64)
!1063 = !DILocalVariable(name: "node", scope: !1052, file: !63, line: 848, type: !101)
!1064 = !DILocalVariable(name: "map_prog", scope: !1052, file: !63, line: 849, type: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1066 = !DILocalVariable(name: "lc_messages", scope: !1052, file: !63, line: 861, type: !101)
!1067 = !DILocalVariable(name: "url_program", scope: !1052, file: !63, line: 874, type: !101)
!1068 = !DILocation(line: 0, scope: !1052, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 143, column: 7, scope: !1036)
!1070 = !DILocation(line: 857, column: 3, scope: !1052, inlinedAt: !1069)
!1071 = !DILocation(line: 861, column: 29, scope: !1052, inlinedAt: !1069)
!1072 = !DILocation(line: 862, column: 7, scope: !1073, inlinedAt: !1069)
!1073 = distinct !DILexicalBlock(scope: !1052, file: !63, line: 862, column: 7)
!1074 = !DILocation(line: 862, column: 19, scope: !1073, inlinedAt: !1069)
!1075 = !DILocation(line: 862, column: 22, scope: !1073, inlinedAt: !1069)
!1076 = !DILocation(line: 862, column: 7, scope: !1052, inlinedAt: !1069)
!1077 = !DILocation(line: 868, column: 7, scope: !1078, inlinedAt: !1069)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !63, line: 863, column: 5)
!1079 = !DILocation(line: 870, column: 5, scope: !1078, inlinedAt: !1069)
!1080 = !DILocation(line: 875, column: 3, scope: !1052, inlinedAt: !1069)
!1081 = !DILocation(line: 877, column: 3, scope: !1052, inlinedAt: !1069)
!1082 = !DILocation(line: 145, column: 3, scope: !1020)
!1083 = !DISubprogram(name: "dcgettext", scope: !1084, file: !1084, line: 51, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1084 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!59, !101, !101, !57}
!1087 = !DISubprogram(name: "__fprintf_chk", scope: !1088, file: !1088, line: 93, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!57, !1091, !57, !1092, null}
!1091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!1092 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!1093 = !DISubprogram(name: "__printf_chk", scope: !1088, file: !1088, line: 95, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!57, !57, !1092, null}
!1096 = !DISubprogram(name: "fputs_unlocked", scope: !1097, file: !1097, line: 691, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1097 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!57, !1092, !1091}
!1100 = !DILocation(line: 0, scope: !205)
!1101 = !DILocation(line: 581, column: 7, scope: !213)
!1102 = !{!1103, !1103, i64 0}
!1103 = !{!"int", !1033, i64 0}
!1104 = !DILocation(line: 581, column: 19, scope: !213)
!1105 = !DILocation(line: 581, column: 7, scope: !205)
!1106 = !DILocation(line: 585, column: 26, scope: !212)
!1107 = !DILocation(line: 0, scope: !212)
!1108 = !DILocation(line: 586, column: 23, scope: !212)
!1109 = !DILocation(line: 586, column: 28, scope: !212)
!1110 = !DILocation(line: 586, column: 32, scope: !212)
!1111 = !{!1033, !1033, i64 0}
!1112 = !DILocation(line: 586, column: 38, scope: !212)
!1113 = !DILocalVariable(name: "__s1", arg: 1, scope: !1114, file: !1115, line: 1359, type: !101)
!1114 = distinct !DISubprogram(name: "streq", scope: !1115, file: !1115, line: 1359, type: !1116, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1118)
!1115 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!215, !101, !101}
!1118 = !{!1113, !1119}
!1119 = !DILocalVariable(name: "__s2", arg: 2, scope: !1114, file: !1115, line: 1359, type: !101)
!1120 = !DILocation(line: 0, scope: !1114, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 586, column: 41, scope: !212)
!1122 = !DILocation(line: 1361, column: 11, scope: !1114, inlinedAt: !1121)
!1123 = !DILocation(line: 1361, column: 10, scope: !1114, inlinedAt: !1121)
!1124 = !DILocation(line: 586, column: 19, scope: !212)
!1125 = !DILocation(line: 587, column: 5, scope: !212)
!1126 = !DILocation(line: 588, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !205, file: !63, line: 588, column: 7)
!1128 = !DILocation(line: 588, column: 7, scope: !205)
!1129 = !DILocation(line: 590, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !63, line: 589, column: 5)
!1131 = !DILocation(line: 591, column: 7, scope: !1130)
!1132 = !DILocation(line: 595, column: 37, scope: !205)
!1133 = !DILocation(line: 595, column: 35, scope: !205)
!1134 = !DILocation(line: 596, column: 29, scope: !205)
!1135 = !DILocation(line: 597, column: 8, scope: !221)
!1136 = !DILocation(line: 597, column: 7, scope: !205)
!1137 = !DILocation(line: 604, column: 24, scope: !220)
!1138 = !DILocation(line: 604, column: 12, scope: !221)
!1139 = !DILocation(line: 0, scope: !219)
!1140 = !DILocation(line: 610, column: 16, scope: !219)
!1141 = !DILocation(line: 610, column: 7, scope: !219)
!1142 = !DILocation(line: 611, column: 21, scope: !219)
!1143 = !{!1144, !1144, i64 0}
!1144 = !{!"short", !1033, i64 0}
!1145 = !DILocation(line: 611, column: 19, scope: !219)
!1146 = !DILocation(line: 611, column: 16, scope: !219)
!1147 = !DILocation(line: 610, column: 30, scope: !219)
!1148 = distinct !{!1148, !1141, !1142, !1149}
!1149 = !{!"llvm.loop.mustprogress"}
!1150 = !DILocation(line: 612, column: 18, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !219, file: !63, line: 612, column: 11)
!1152 = !DILocation(line: 612, column: 11, scope: !219)
!1153 = !DILocation(line: 618, column: 5, scope: !219)
!1154 = !DILocation(line: 620, column: 23, scope: !205)
!1155 = !DILocation(line: 625, column: 39, scope: !205)
!1156 = !DILocation(line: 626, column: 3, scope: !205)
!1157 = !DILocation(line: 626, column: 10, scope: !205)
!1158 = !DILocation(line: 626, column: 21, scope: !205)
!1159 = !DILocation(line: 628, column: 44, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !63, line: 628, column: 11)
!1161 = distinct !DILexicalBlock(scope: !205, file: !63, line: 627, column: 5)
!1162 = !DILocation(line: 628, column: 32, scope: !1160)
!1163 = !DILocation(line: 628, column: 49, scope: !1160)
!1164 = !DILocation(line: 628, column: 11, scope: !1161)
!1165 = !DILocation(line: 630, column: 11, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !63, line: 630, column: 11)
!1167 = !DILocation(line: 630, column: 11, scope: !1161)
!1168 = !DILocation(line: 632, column: 26, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !63, line: 632, column: 15)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !63, line: 631, column: 9)
!1171 = !DILocation(line: 632, column: 34, scope: !1169)
!1172 = !DILocation(line: 632, column: 37, scope: !1169)
!1173 = !DILocation(line: 632, column: 15, scope: !1170)
!1174 = !DILocation(line: 636, column: 16, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !63, line: 636, column: 15)
!1176 = !DILocation(line: 636, column: 29, scope: !1175)
!1177 = !DILocation(line: 640, column: 16, scope: !1161)
!1178 = distinct !{!1178, !1156, !1179, !1149}
!1179 = !DILocation(line: 641, column: 5, scope: !205)
!1180 = !DILocation(line: 644, column: 3, scope: !205)
!1181 = !DILocation(line: 0, scope: !1114, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 648, column: 31, scope: !205)
!1183 = !DILocation(line: 0, scope: !1114, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 649, column: 31, scope: !205)
!1185 = !DILocation(line: 0, scope: !1114, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 650, column: 31, scope: !205)
!1187 = !DILocation(line: 0, scope: !1114, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 651, column: 31, scope: !205)
!1189 = !DILocation(line: 0, scope: !1114, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 652, column: 31, scope: !205)
!1191 = !DILocation(line: 0, scope: !1114, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 653, column: 31, scope: !205)
!1193 = !DILocation(line: 0, scope: !1114, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 654, column: 31, scope: !205)
!1195 = !DILocation(line: 0, scope: !1114, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 655, column: 31, scope: !205)
!1197 = !DILocation(line: 0, scope: !1114, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 656, column: 31, scope: !205)
!1199 = !DILocation(line: 0, scope: !1114, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 657, column: 31, scope: !205)
!1201 = !DILocation(line: 663, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !205, file: !63, line: 663, column: 7)
!1203 = !DILocation(line: 664, column: 7, scope: !1202)
!1204 = !DILocation(line: 664, column: 10, scope: !1202)
!1205 = !DILocation(line: 663, column: 7, scope: !205)
!1206 = !DILocation(line: 669, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !63, line: 665, column: 5)
!1208 = !DILocation(line: 671, column: 5, scope: !1207)
!1209 = !DILocation(line: 676, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !63, line: 673, column: 5)
!1211 = !DILocation(line: 679, column: 3, scope: !205)
!1212 = !DILocation(line: 683, column: 3, scope: !205)
!1213 = !DILocation(line: 686, column: 3, scope: !205)
!1214 = !DILocation(line: 688, column: 3, scope: !205)
!1215 = !DILocation(line: 691, column: 3, scope: !205)
!1216 = !DILocation(line: 695, column: 3, scope: !205)
!1217 = !DILocation(line: 696, column: 1, scope: !205)
!1218 = !DISubprogram(name: "setlocale", scope: !1219, file: !1219, line: 122, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1219 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!59, !57, !101}
!1222 = !DISubprogram(name: "strncmp", scope: !1223, file: !1223, line: 159, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1223 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!57, !101, !101, !104}
!1226 = !DISubprogram(name: "exit", scope: !1227, file: !1227, line: 624, type: !1021, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1227 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1228 = !DISubprogram(name: "getenv", scope: !1227, file: !1227, line: 641, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!59, !101}
!1231 = !DISubprogram(name: "strcmp", scope: !1223, file: !1223, line: 156, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!57, !101, !101}
!1234 = !DISubprogram(name: "strspn", scope: !1223, file: !1223, line: 297, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!106, !101, !101}
!1237 = !DISubprogram(name: "strchr", scope: !1223, file: !1223, line: 246, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!59, !101, !57}
!1240 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1246 = !DISubprogram(name: "strcspn", scope: !1223, file: !1223, line: 293, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1247 = !DISubprogram(name: "fwrite_unlocked", scope: !1097, file: !1097, line: 704, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!104, !1250, !104, !104, !1091}
!1250 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1253 = !DILocation(line: 0, scope: !54)
!1254 = !DILocation(line: 502, column: 21, scope: !54)
!1255 = !DILocation(line: 502, column: 3, scope: !54)
!1256 = !DILocation(line: 503, column: 3, scope: !54)
!1257 = !DILocation(line: 504, column: 3, scope: !54)
!1258 = !DILocation(line: 505, column: 3, scope: !54)
!1259 = !DILocation(line: 507, column: 3, scope: !54)
!1260 = !DILocation(line: 509, column: 3, scope: !54)
!1261 = !DILocation(line: 509, column: 18, scope: !54)
!1262 = !DILocation(line: 514, column: 33, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 512, column: 9)
!1264 = distinct !DILexicalBlock(scope: !54, file: !2, line: 510, column: 5)
!1265 = !DILocation(line: 515, column: 11, scope: !1263)
!1266 = !DILocation(line: 517, column: 27, scope: !1263)
!1267 = !{!1268, !1268, i64 0}
!1268 = !{!"long", !1033, i64 0}
!1269 = !DILocation(line: 518, column: 11, scope: !1263)
!1270 = !DILocation(line: 520, column: 23, scope: !1263)
!1271 = !DILocation(line: 520, column: 21, scope: !1263)
!1272 = !DILocation(line: 521, column: 11, scope: !1263)
!1273 = distinct !{!1273, !1260, !1274, !1149}
!1274 = !DILocation(line: 527, column: 5, scope: !54)
!1275 = !DILocation(line: 522, column: 9, scope: !1263)
!1276 = !DILocation(line: 523, column: 9, scope: !1263)
!1277 = !DILocation(line: 525, column: 11, scope: !1263)
!1278 = !DILocation(line: 529, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !54, file: !2, line: 529, column: 7)
!1280 = !DILocation(line: 529, column: 23, scope: !1279)
!1281 = !DILocation(line: 0, scope: !1279)
!1282 = !DILocation(line: 529, column: 7, scope: !54)
!1283 = !DILocation(line: 531, column: 11, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 530, column: 5)
!1285 = !DILocation(line: 532, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 531, column: 11)
!1287 = !DILocation(line: 535, column: 36, scope: !1284)
!1288 = !DILocation(line: 536, column: 34, scope: !1284)
!1289 = !{!1290, !1032, i64 32}
!1290 = !{!"re_pattern_buffer", !1032, i64 0, !1268, i64 8, !1268, i64 16, !1268, i64 24, !1032, i64 32, !1032, i64 40, !1268, i64 48, !1103, i64 56, !1103, i64 56, !1103, i64 56, !1103, i64 56, !1103, i64 56, !1103, i64 56, !1103, i64 56}
!1291 = !DILocation(line: 537, column: 36, scope: !1284)
!1292 = !{!1290, !1032, i64 40}
!1293 = !DILocation(line: 538, column: 54, scope: !1284)
!1294 = !DILocation(line: 538, column: 23, scope: !1284)
!1295 = !DILocation(line: 540, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 540, column: 11)
!1297 = !DILocation(line: 540, column: 11, scope: !1284)
!1298 = !DILocation(line: 541, column: 9, scope: !1296)
!1299 = !DILocation(line: 544, column: 38, scope: !1279)
!1300 = !DILocation(line: 544, column: 51, scope: !1279)
!1301 = !DILocation(line: 544, column: 36, scope: !1279)
!1302 = !DILocation(line: 544, column: 18, scope: !1279)
!1303 = !DILocation(line: 547, column: 26, scope: !54)
!1304 = !DILocation(line: 547, column: 3, scope: !54)
!1305 = !DILocation(line: 551, column: 17, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !54, file: !2, line: 548, column: 5)
!1307 = distinct !{!1307, !1304, !1308, !1149}
!1308 = !DILocation(line: 552, column: 5, scope: !54)
!1309 = !DILocation(line: 550, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 549, column: 11)
!1311 = !DILocation(line: 549, column: 24, scope: !1310)
!1312 = !DILocation(line: 549, column: 11, scope: !1306)
!1313 = !DILocation(line: 553, column: 32, scope: !54)
!1314 = !DILocation(line: 553, column: 50, scope: !54)
!1315 = !DILocation(line: 554, column: 21, scope: !54)
!1316 = !DILocation(line: 554, column: 17, scope: !54)
!1317 = !DILocation(line: 555, column: 20, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !54, file: !2, line: 555, column: 7)
!1319 = !DILocation(line: 555, column: 39, scope: !1318)
!1320 = !DILocation(line: 556, column: 5, scope: !1318)
!1321 = !DILocation(line: 557, column: 14, scope: !54)
!1322 = !DILocation(line: 558, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !54, file: !2, line: 558, column: 7)
!1324 = !DILocation(line: 558, column: 7, scope: !54)
!1325 = !DILocation(line: 560, column: 25, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 559, column: 5)
!1327 = !DILocation(line: 560, column: 56, scope: !1326)
!1328 = !DILocation(line: 560, column: 55, scope: !1326)
!1329 = !DILocation(line: 560, column: 52, scope: !1326)
!1330 = !DILocalVariable(name: "__dest", arg: 1, scope: !1331, file: !1332, line: 26, type: !1335)
!1331 = distinct !DISubprogram(name: "memcpy", scope: !1332, file: !1332, line: 26, type: !1333, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1336)
!1332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!98, !1335, !1250, !104}
!1335 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!1336 = !{!1330, !1337, !1338}
!1337 = !DILocalVariable(name: "__src", arg: 2, scope: !1331, file: !1332, line: 26, type: !1250)
!1338 = !DILocalVariable(name: "__len", arg: 3, scope: !1331, file: !1332, line: 26, type: !104)
!1339 = !DILocation(line: 0, scope: !1331, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 560, column: 7, scope: !1326)
!1341 = !DILocation(line: 29, column: 10, scope: !1331, inlinedAt: !1340)
!1342 = !DILocation(line: 562, column: 5, scope: !1326)
!1343 = !DILocation(line: 0, scope: !1323)
!1344 = !DILocation(line: 568, column: 11, scope: !54)
!1345 = !DILocation(line: 568, column: 18, scope: !54)
!1346 = !DILocation(line: 0, scope: !483)
!1347 = !DILocation(line: 576, column: 24, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !483, file: !2, line: 576, column: 5)
!1349 = !DILocation(line: 576, column: 5, scope: !483)
!1350 = !DILocation(line: 0, scope: !484)
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
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1097, line: 63, baseType: !254)
!1363 = !DILocalVariable(name: "fd", scope: !1356, file: !2, line: 453, type: !57)
!1364 = !DILocalVariable(name: "is_stdin", scope: !1356, file: !2, line: 454, type: !215)
!1365 = !DILocation(line: 0, scope: !1356, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 577, column: 13, scope: !1348)
!1367 = !DILocation(line: 0, scope: !1114, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 454, column: 19, scope: !1356, inlinedAt: !1366)
!1369 = !DILocation(line: 1361, column: 11, scope: !1114, inlinedAt: !1368)
!1370 = !DILocation(line: 1361, column: 10, scope: !1114, inlinedAt: !1368)
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
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1097, line: 77, baseType: !1421)
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
!1479 = !DILocation(line: 577, column: 10, scope: !1348)
!1480 = !DILocation(line: 576, column: 33, scope: !1348)
!1481 = distinct !{!1481, !1349, !1482, !1149}
!1482 = !DILocation(line: 577, column: 30, scope: !483)
!1483 = !DILocation(line: 583, column: 26, scope: !1353)
!1484 = !DILocation(line: 583, column: 47, scope: !1353)
!1485 = !DILocation(line: 583, column: 7, scope: !54)
!1486 = !DILocation(line: 585, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 584, column: 5)
!1488 = !DILocation(line: 587, column: 5, scope: !1487)
!1489 = !DILocation(line: 589, column: 3, scope: !54)
!1490 = !DISubprogram(name: "bindtextdomain", scope: !1084, file: !1084, line: 86, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!59, !101, !101}
!1493 = !DISubprogram(name: "textdomain", scope: !1084, file: !1084, line: 82, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1494 = !DISubprogram(name: "atexit", scope: !1227, file: !1227, line: 602, type: !1495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!57, !632}
!1497 = !DISubprogram(name: "getopt_long", scope: !404, file: !404, line: 66, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!57, !57, !1500, !101, !1502, !409}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1503 = !DISubprogram(name: "strlen", scope: !1223, file: !1223, line: 407, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!106, !101}
!1506 = !DISubprogram(name: "re_compile_pattern", scope: !170, file: !170, line: 548, type: !1507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
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
!1520 = !DILocation(line: 0, scope: !1331, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 170, column: 7, scope: !1519)
!1522 = !DILocation(line: 29, column: 10, scope: !1331, inlinedAt: !1521)
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
!1535 = distinct !DISubprogram(name: "write_error", scope: !63, file: !63, line: 946, type: !633, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1536)
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
!1553 = distinct !{!1553, !1517, !1554, !1149, !1555}
!1554 = !DILocation(line: 177, column: 5, scope: !451)
!1555 = !{!"llvm.loop.peeled.count", i32 1}
!1556 = !DILocation(line: 179, column: 20, scope: !451)
!1557 = !DILocation(line: 179, column: 18, scope: !451)
!1558 = !DILocation(line: 0, scope: !1331, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 179, column: 3, scope: !451)
!1560 = !DILocation(line: 29, column: 10, scope: !1331, inlinedAt: !1559)
!1561 = !DILocation(line: 180, column: 19, scope: !451)
!1562 = !DILocation(line: 181, column: 1, scope: !451)
!1563 = !DISubprogram(name: "open", scope: !1564, file: !1564, line: 181, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1564 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!57, !101, !57, null}
!1567 = !DISubprogram(name: "__errno_location", scope: !1568, file: !1568, line: 37, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1568 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!409}
!1571 = !DISubprogram(name: "lseek", scope: !1572, file: !1572, line: 339, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1572 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!254, !57, !254, !57}
!1575 = !DISubprogram(name: "isatty", scope: !1572, file: !1572, line: 809, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!57, !57}
!1578 = !DISubprogram(name: "fflush_unlocked", scope: !1097, file: !1097, line: 239, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!57, !228}
!1581 = !DISubprogram(name: "fileno_unlocked", scope: !1097, file: !1097, line: 814, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1582 = distinct !DISubprogram(name: "tac_seekable", scope: !2, file: !2, line: 188, type: !1583, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!215, !57, !101, !1362}
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1599, !1601, !1605, !1606, !1607, !1608, !1613, !1614, !1615}
!1586 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1582, file: !2, line: 188, type: !57)
!1587 = !DILocalVariable(name: "file", arg: 2, scope: !1582, file: !2, line: 188, type: !101)
!1588 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1582, file: !2, line: 188, type: !1362)
!1589 = !DILocalVariable(name: "match_start", scope: !1582, file: !2, line: 192, type: !59)
!1590 = !DILocalVariable(name: "past_end", scope: !1582, file: !2, line: 196, type: !59)
!1591 = !DILocalVariable(name: "saved_record_size", scope: !1582, file: !2, line: 199, type: !976)
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
!1653 = distinct !{!1653, !1642, !1654, !1149}
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
!1701 = !{!1702, !1032, i64 8}
!1702 = !{!"re_registers", !1103, i64 0, !1032, i64 8, !1032, i64 16}
!1703 = !DILocation(line: 283, column: 40, scope: !1699)
!1704 = !DILocation(line: 283, column: 38, scope: !1699)
!1705 = !DILocation(line: 284, column: 35, scope: !1699)
!1706 = !{!1702, !1032, i64 16}
!1707 = !DILocation(line: 284, column: 30, scope: !1699)
!1708 = !DILocation(line: 284, column: 42, scope: !1699)
!1709 = !DILocation(line: 284, column: 28, scope: !1699)
!1710 = !DILocation(line: 290, column: 19, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 288, column: 9)
!1712 = !DILocation(line: 290, column: 18, scope: !1711)
!1713 = !DILocation(line: 290, column: 33, scope: !1711)
!1714 = !DILocation(line: 291, column: 18, scope: !1711)
!1715 = distinct !{!1715, !1716, !1717, !1149}
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
!1768 = !DILocalVariable(name: "__dest", arg: 1, scope: !1769, file: !1332, line: 34, type: !98)
!1769 = distinct !DISubprogram(name: "memmove", scope: !1332, file: !1332, line: 34, type: !1770, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!98, !98, !1251, !104}
!1772 = !{!1768, !1773, !1774}
!1773 = !DILocalVariable(name: "__src", arg: 2, scope: !1769, file: !1332, line: 34, type: !1251)
!1774 = !DILocalVariable(name: "__len", arg: 3, scope: !1769, file: !1332, line: 34, type: !104)
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
!1797 = !DILocation(line: 363, column: 20, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 363, column: 19)
!1799 = !DILocation(line: 363, column: 31, scope: !1798)
!1800 = !DILocation(line: 0, scope: !1617)
!1801 = !DILocation(line: 375, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 375, column: 15)
!1803 = !DILocation(line: 375, column: 31, scope: !1802)
!1804 = !DILocation(line: 375, column: 15, scope: !1618)
!1805 = !DILocation(line: 379, column: 1, scope: !1582)
!1806 = !DISubprogram(name: "close", scope: !1572, file: !1572, line: 358, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1807 = !DISubprogram(name: "re_search", scope: !170, file: !170, line: 564, type: !1808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!447, !1509, !101, !447, !447, !447, !1810}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1811 = !DISubprogram(name: "clearerr_unlocked", scope: !1097, file: !1097, line: 794, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{null, !228}
!1814 = !DILocation(line: 0, scope: !490)
!1815 = !DILocation(line: 88, column: 7, scope: !555)
!1816 = !DILocation(line: 88, column: 16, scope: !555)
!1817 = !DILocation(line: 88, column: 7, scope: !490)
!1818 = !DILocation(line: 0, scope: !554)
!1819 = !DILocalVariable(name: "ptr", arg: 1, scope: !1820, file: !1821, line: 2057, type: !98)
!1820 = distinct !DISubprogram(name: "rpl_realloc", scope: !1821, file: !1821, line: 2057, type: !1822, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1824)
!1821 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!98, !98, !104}
!1824 = !{!1819, !1825}
!1825 = !DILocalVariable(name: "size", arg: 2, scope: !1820, file: !1821, line: 2057, type: !104)
!1826 = !DILocation(line: 0, scope: !1820, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 95, column: 28, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !491, line: 95, column: 15)
!1829 = distinct !DILexicalBlock(scope: !554, file: !491, line: 94, column: 9)
!1830 = !DILocation(line: 2059, column: 10, scope: !1820, inlinedAt: !1827)
!1831 = !DILocation(line: 95, column: 26, scope: !1828)
!1832 = !DILocation(line: 95, column: 15, scope: !1829)
!1833 = !DILocation(line: 97, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !491, line: 96, column: 13)
!1835 = !DILocation(line: 111, column: 23, scope: !1829)
!1836 = distinct !{!1836, !1837, !1838}
!1837 = !DILocation(line: 93, column: 7, scope: !554)
!1838 = !DILocation(line: 112, column: 9, scope: !554)
!1839 = !DILocation(line: 98, column: 15, scope: !1834)
!1840 = !DILocation(line: 101, column: 15, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1829, file: !491, line: 101, column: 15)
!1842 = !DILocation(line: 101, column: 71, scope: !1841)
!1843 = !DILocation(line: 101, column: 15, scope: !1829)
!1844 = !DILocation(line: 104, column: 15, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1829, file: !491, line: 104, column: 15)
!1846 = !DILocation(line: 104, column: 21, scope: !1845)
!1847 = !DILocation(line: 104, column: 31, scope: !1845)
!1848 = !DILocation(line: 106, column: 15, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !491, line: 105, column: 13)
!1850 = !DILocation(line: 108, column: 15, scope: !1849)
!1851 = !DILocation(line: 114, column: 16, scope: !554)
!1852 = !DILocation(line: 125, column: 16, scope: !554)
!1853 = !DILocation(line: 126, column: 14, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !554, file: !491, line: 126, column: 11)
!1855 = !DILocation(line: 126, column: 11, scope: !554)
!1856 = !DILocation(line: 128, column: 11, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !491, line: 127, column: 9)
!1858 = !DILocation(line: 130, column: 11, scope: !1857)
!1859 = !DILocation(line: 133, column: 16, scope: !554)
!1860 = !DILocation(line: 133, column: 14, scope: !554)
!1861 = !DILocation(line: 134, column: 13, scope: !560)
!1862 = !DILocation(line: 134, column: 11, scope: !554)
!1863 = !DILocation(line: 136, column: 11, scope: !559)
!1864 = !DILocation(line: 138, column: 11, scope: !559)
!1865 = !DILocation(line: 139, column: 19, scope: !559)
!1866 = !DILocation(line: 139, column: 11, scope: !559)
!1867 = !DILocation(line: 140, column: 9, scope: !559)
!1868 = !DILocation(line: 141, column: 17, scope: !559)
!1869 = !DILocation(line: 141, column: 11, scope: !559)
!1870 = !DILocation(line: 142, column: 20, scope: !559)
!1871 = !DILocation(line: 143, column: 11, scope: !559)
!1872 = !DILocation(line: 146, column: 34, scope: !554)
!1873 = !DILocalVariable(name: "fn", arg: 1, scope: !1874, file: !491, line: 69, type: !101)
!1874 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !491, file: !491, line: 69, type: !1875, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !101, !495}
!1877 = !{!1873, !1878}
!1878 = !DILocalVariable(name: "fp", arg: 2, scope: !1874, file: !491, line: 69, type: !495)
!1879 = !DILocation(line: 0, scope: !1874, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 146, column: 7, scope: !554)
!1881 = !DILocation(line: 71, column: 3, scope: !1874, inlinedAt: !1880)
!1882 = !DILocation(line: 150, column: 7, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !555, file: !491, line: 149, column: 5)
!1884 = !DILocation(line: 151, column: 19, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1883, file: !491, line: 151, column: 11)
!1886 = !DILocation(line: 151, column: 11, scope: !1885)
!1887 = !DILocation(line: 151, column: 40, scope: !1885)
!1888 = !DILocation(line: 152, column: 11, scope: !1885)
!1889 = !DILocation(line: 152, column: 25, scope: !1885)
!1890 = !DILocation(line: 152, column: 14, scope: !1885)
!1891 = !DILocation(line: 152, column: 45, scope: !1885)
!1892 = !DILocation(line: 151, column: 11, scope: !1883)
!1893 = !DILocation(line: 154, column: 11, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1885, file: !491, line: 153, column: 9)
!1895 = !DILocation(line: 156, column: 11, scope: !1894)
!1896 = !DILocation(line: 160, column: 9, scope: !490)
!1897 = !DILocation(line: 160, column: 7, scope: !490)
!1898 = !DILocation(line: 161, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !490, file: !491, line: 161, column: 7)
!1900 = !DILocation(line: 161, column: 7, scope: !490)
!1901 = !DILocation(line: 162, column: 18, scope: !1899)
!1902 = !DILocation(line: 162, column: 16, scope: !1899)
!1903 = !DILocation(line: 162, column: 5, scope: !1899)
!1904 = !DILocation(line: 164, column: 1, scope: !490)
!1905 = !DISubprogram(name: "realloc", scope: !1227, file: !1227, line: 551, type: !1822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1906 = !DISubprogram(name: "fdopen", scope: !1097, file: !1097, line: 293, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!495, !57, !101}
!1909 = !DISubprogram(name: "unlink", scope: !1572, file: !1572, line: 858, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!57, !101}
!1912 = !DISubprogram(name: "free", scope: !1913, file: !1913, line: 786, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1913 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !98}
!1916 = !DISubprogram(name: "ftruncate", scope: !1572, file: !1572, line: 1049, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!57, !57, !254}
!1919 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !571, file: !571, line: 50, type: !1053, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1920)
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "file", arg: 1, scope: !1919, file: !571, line: 50, type: !101)
!1922 = !DILocation(line: 0, scope: !1919)
!1923 = !DILocation(line: 52, column: 13, scope: !1919)
!1924 = !DILocation(line: 53, column: 1, scope: !1919)
!1925 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !571, file: !571, line: 87, type: !1926, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !215}
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "ignore", arg: 1, scope: !1925, file: !571, line: 87, type: !215)
!1930 = !DILocation(line: 0, scope: !1925)
!1931 = !DILocation(line: 89, column: 16, scope: !1925)
!1932 = !{!1933, !1933, i64 0}
!1933 = !{!"_Bool", !1033, i64 0}
!1934 = !DILocation(line: 90, column: 1, scope: !1925)
!1935 = distinct !DISubprogram(name: "close_stdout", scope: !571, file: !571, line: 116, type: !633, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !1936)
!1936 = !{!1937}
!1937 = !DILocalVariable(name: "write_error", scope: !1938, file: !571, line: 121, type: !101)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !571, line: 120, column: 5)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !571, line: 118, column: 7)
!1940 = !DILocation(line: 118, column: 21, scope: !1939)
!1941 = !DILocation(line: 118, column: 7, scope: !1939)
!1942 = !DILocation(line: 118, column: 29, scope: !1939)
!1943 = !DILocation(line: 119, column: 7, scope: !1939)
!1944 = !DILocation(line: 119, column: 12, scope: !1939)
!1945 = !{i8 0, i8 2}
!1946 = !DILocation(line: 119, column: 25, scope: !1939)
!1947 = !DILocation(line: 119, column: 28, scope: !1939)
!1948 = !DILocation(line: 119, column: 34, scope: !1939)
!1949 = !DILocation(line: 118, column: 7, scope: !1935)
!1950 = !DILocation(line: 121, column: 33, scope: !1938)
!1951 = !DILocation(line: 0, scope: !1938)
!1952 = !DILocation(line: 122, column: 11, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1938, file: !571, line: 122, column: 11)
!1954 = !DILocation(line: 0, scope: !1953)
!1955 = !DILocation(line: 122, column: 11, scope: !1938)
!1956 = !DILocation(line: 123, column: 9, scope: !1953)
!1957 = !DILocation(line: 126, column: 9, scope: !1953)
!1958 = !DILocation(line: 128, column: 14, scope: !1938)
!1959 = !DILocation(line: 128, column: 7, scope: !1938)
!1960 = !DILocation(line: 133, column: 42, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1935, file: !571, line: 133, column: 7)
!1962 = !DILocation(line: 133, column: 28, scope: !1961)
!1963 = !DILocation(line: 133, column: 50, scope: !1961)
!1964 = !DILocation(line: 133, column: 7, scope: !1935)
!1965 = !DILocation(line: 134, column: 12, scope: !1961)
!1966 = !DILocation(line: 134, column: 5, scope: !1961)
!1967 = !DILocation(line: 135, column: 1, scope: !1935)
!1968 = !DISubprogram(name: "_exit", scope: !1572, file: !1572, line: 624, type: !1021, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!1969 = distinct !DISubprogram(name: "verror", scope: !586, file: !586, line: 251, type: !1970, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !57, !57, !101, !596}
!1972 = !{!1973, !1974, !1975, !1976}
!1973 = !DILocalVariable(name: "status", arg: 1, scope: !1969, file: !586, line: 251, type: !57)
!1974 = !DILocalVariable(name: "errnum", arg: 2, scope: !1969, file: !586, line: 251, type: !57)
!1975 = !DILocalVariable(name: "message", arg: 3, scope: !1969, file: !586, line: 251, type: !101)
!1976 = !DILocalVariable(name: "args", arg: 4, scope: !1969, file: !586, line: 251, type: !596)
!1977 = !DILocation(line: 0, scope: !1969)
!1978 = !DILocation(line: 261, column: 3, scope: !1969)
!1979 = !DILocation(line: 265, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1969, file: !586, line: 265, column: 7)
!1981 = !DILocation(line: 265, column: 7, scope: !1969)
!1982 = !DILocation(line: 266, column: 5, scope: !1980)
!1983 = !DILocation(line: 272, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !586, line: 268, column: 5)
!1985 = !DILocation(line: 276, column: 3, scope: !1969)
!1986 = !DILocation(line: 282, column: 1, scope: !1969)
!1987 = distinct !DISubprogram(name: "flush_stdout", scope: !586, file: !586, line: 163, type: !633, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !1988)
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
!2002 = distinct !DISubprogram(name: "error_tail", scope: !586, file: !586, line: 219, type: !1970, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2003)
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "status", arg: 1, scope: !2002, file: !586, line: 219, type: !57)
!2005 = !DILocalVariable(name: "errnum", arg: 2, scope: !2002, file: !586, line: 219, type: !57)
!2006 = !DILocalVariable(name: "message", arg: 3, scope: !2002, file: !586, line: 219, type: !101)
!2007 = !DILocalVariable(name: "args", arg: 4, scope: !2002, file: !586, line: 219, type: !596)
!2008 = !DILocation(line: 0, scope: !2002)
!2009 = !DILocation(line: 229, column: 13, scope: !2002)
!2010 = !DILocalVariable(name: "__stream", arg: 1, scope: !2011, file: !1088, line: 132, type: !2014)
!2011 = distinct !DISubprogram(name: "vfprintf", scope: !1088, file: !1088, line: 132, type: !2012, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2049)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!57, !2014, !1092, !596}
!2014 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2015)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2017, file: !232, line: 51, baseType: !57, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2017, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2017, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2017, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2017, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2017, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2017, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2017, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2017, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2017, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2017, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2017, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2017, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2017, file: !232, line: 70, baseType: !2033, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2017, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2017, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2017, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2017, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2017, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2017, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2017, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2017, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2017, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2017, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2017, file: !232, line: 93, baseType: !2033, size: 64, offset: 1344)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2017, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2017, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2017, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2017, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2049 = !{!2010, !2050, !2051}
!2050 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2011, file: !1088, line: 133, type: !1092)
!2051 = !DILocalVariable(name: "__ap", arg: 3, scope: !2011, file: !1088, line: 133, type: !596)
!2052 = !DILocation(line: 0, scope: !2011, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 229, column: 3, scope: !2002)
!2054 = !DILocation(line: 135, column: 10, scope: !2011, inlinedAt: !2053)
!2055 = !DILocation(line: 232, column: 3, scope: !2002)
!2056 = !DILocation(line: 233, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2002, file: !586, line: 233, column: 7)
!2058 = !DILocation(line: 233, column: 7, scope: !2002)
!2059 = !DILocalVariable(name: "errnum", arg: 1, scope: !2060, file: !586, line: 188, type: !57)
!2060 = distinct !DISubprogram(name: "print_errno_message", scope: !586, file: !586, line: 188, type: !1021, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2061)
!2061 = !{!2059, !2062, !2063}
!2062 = !DILocalVariable(name: "s", scope: !2060, file: !586, line: 190, type: !101)
!2063 = !DILocalVariable(name: "errbuf", scope: !2060, file: !586, line: 193, type: !2064)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 1024)
!2067 = !DILocation(line: 0, scope: !2060, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 234, column: 5, scope: !2057)
!2069 = !DILocation(line: 193, column: 3, scope: !2060, inlinedAt: !2068)
!2070 = !DILocation(line: 193, column: 8, scope: !2060, inlinedAt: !2068)
!2071 = !DILocation(line: 195, column: 7, scope: !2060, inlinedAt: !2068)
!2072 = !DILocation(line: 207, column: 9, scope: !2073, inlinedAt: !2068)
!2073 = distinct !DILexicalBlock(scope: !2060, file: !586, line: 207, column: 7)
!2074 = !DILocation(line: 207, column: 7, scope: !2060, inlinedAt: !2068)
!2075 = !DILocation(line: 208, column: 9, scope: !2073, inlinedAt: !2068)
!2076 = !DILocation(line: 208, column: 5, scope: !2073, inlinedAt: !2068)
!2077 = !DILocation(line: 214, column: 3, scope: !2060, inlinedAt: !2068)
!2078 = !DILocation(line: 216, column: 1, scope: !2060, inlinedAt: !2068)
!2079 = !DILocation(line: 234, column: 5, scope: !2057)
!2080 = !DILocation(line: 238, column: 3, scope: !2002)
!2081 = !DILocalVariable(name: "__c", arg: 1, scope: !2082, file: !2083, line: 101, type: !57)
!2082 = distinct !DISubprogram(name: "putc_unlocked", scope: !2083, file: !2083, line: 101, type: !2084, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2086)
!2083 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!57, !57, !2015}
!2086 = !{!2081, !2087}
!2087 = !DILocalVariable(name: "__stream", arg: 2, scope: !2082, file: !2083, line: 101, type: !2015)
!2088 = !DILocation(line: 0, scope: !2082, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 238, column: 3, scope: !2002)
!2090 = !DILocation(line: 103, column: 10, scope: !2082, inlinedAt: !2089)
!2091 = !{!2092, !1032, i64 40}
!2092 = !{!"_IO_FILE", !1103, i64 0, !1032, i64 8, !1032, i64 16, !1032, i64 24, !1032, i64 32, !1032, i64 40, !1032, i64 48, !1032, i64 56, !1032, i64 64, !1032, i64 72, !1032, i64 80, !1032, i64 88, !1032, i64 96, !1032, i64 104, !1103, i64 112, !1103, i64 116, !1268, i64 120, !1144, i64 128, !1033, i64 130, !1033, i64 131, !1032, i64 136, !1268, i64 144, !1032, i64 152, !1032, i64 160, !1032, i64 168, !1032, i64 176, !1268, i64 184, !1103, i64 192, !1033, i64 196}
!2093 = !{!2092, !1032, i64 48}
!2094 = !{!"branch_weights", i32 2000, i32 1}
!2095 = !DILocation(line: 240, column: 3, scope: !2002)
!2096 = !DILocation(line: 241, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2002, file: !586, line: 241, column: 7)
!2098 = !DILocation(line: 241, column: 7, scope: !2002)
!2099 = !DILocation(line: 242, column: 5, scope: !2097)
!2100 = !DILocation(line: 243, column: 1, scope: !2002)
!2101 = !DISubprogram(name: "__vfprintf_chk", scope: !1088, file: !1088, line: 96, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!57, !2014, !57, !1092, !596}
!2104 = !DISubprogram(name: "strerror_r", scope: !1223, file: !1223, line: 444, type: !2105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!59, !57, !59, !104}
!2107 = !DISubprogram(name: "__overflow", scope: !1097, file: !1097, line: 886, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!57, !2015, !57}
!2110 = !DISubprogram(name: "fcntl", scope: !1564, file: !1564, line: 149, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!57, !57, !57, null}
!2113 = distinct !DISubprogram(name: "error", scope: !586, file: !586, line: 285, type: !2114, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !57, !57, !101, null}
!2116 = !{!2117, !2118, !2119, !2120}
!2117 = !DILocalVariable(name: "status", arg: 1, scope: !2113, file: !586, line: 285, type: !57)
!2118 = !DILocalVariable(name: "errnum", arg: 2, scope: !2113, file: !586, line: 285, type: !57)
!2119 = !DILocalVariable(name: "message", arg: 3, scope: !2113, file: !586, line: 285, type: !101)
!2120 = !DILocalVariable(name: "ap", scope: !2113, file: !586, line: 287, type: !2121)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1097, line: 52, baseType: !2122)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2123, line: 14, baseType: !2124)
!2123 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !600, baseType: !2125)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 192, elements: !117)
!2126 = !DILocation(line: 0, scope: !2113)
!2127 = !DILocation(line: 287, column: 3, scope: !2113)
!2128 = !DILocation(line: 287, column: 11, scope: !2113)
!2129 = !DILocation(line: 288, column: 3, scope: !2113)
!2130 = !DILocation(line: 289, column: 3, scope: !2113)
!2131 = !DILocation(line: 290, column: 3, scope: !2113)
!2132 = !DILocation(line: 291, column: 1, scope: !2113)
!2133 = !DILocation(line: 0, scope: !593)
!2134 = !DILocation(line: 302, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !593, file: !586, line: 302, column: 7)
!2136 = !DILocation(line: 302, column: 7, scope: !593)
!2137 = !DILocation(line: 307, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !586, line: 307, column: 11)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !586, line: 303, column: 5)
!2140 = !DILocation(line: 307, column: 27, scope: !2138)
!2141 = !DILocation(line: 308, column: 11, scope: !2138)
!2142 = !DILocation(line: 308, column: 28, scope: !2138)
!2143 = !DILocation(line: 308, column: 25, scope: !2138)
!2144 = !DILocation(line: 309, column: 15, scope: !2138)
!2145 = !DILocation(line: 309, column: 33, scope: !2138)
!2146 = !DILocation(line: 310, column: 19, scope: !2138)
!2147 = !DILocation(line: 311, column: 22, scope: !2138)
!2148 = !DILocation(line: 311, column: 56, scope: !2138)
!2149 = !DILocation(line: 307, column: 11, scope: !2139)
!2150 = !DILocation(line: 316, column: 21, scope: !2139)
!2151 = !DILocation(line: 317, column: 23, scope: !2139)
!2152 = !DILocation(line: 318, column: 5, scope: !2139)
!2153 = !DILocation(line: 327, column: 3, scope: !593)
!2154 = !DILocation(line: 331, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !593, file: !586, line: 331, column: 7)
!2156 = !DILocation(line: 331, column: 7, scope: !593)
!2157 = !DILocation(line: 332, column: 5, scope: !2155)
!2158 = !DILocation(line: 338, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !586, line: 334, column: 5)
!2160 = !DILocation(line: 346, column: 3, scope: !593)
!2161 = !DILocation(line: 350, column: 3, scope: !593)
!2162 = !DILocation(line: 356, column: 1, scope: !593)
!2163 = distinct !DISubprogram(name: "error_at_line", scope: !586, file: !586, line: 359, type: !2164, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !585, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null, !57, !57, !101, !69, !101, null}
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172}
!2167 = !DILocalVariable(name: "status", arg: 1, scope: !2163, file: !586, line: 359, type: !57)
!2168 = !DILocalVariable(name: "errnum", arg: 2, scope: !2163, file: !586, line: 359, type: !57)
!2169 = !DILocalVariable(name: "file_name", arg: 3, scope: !2163, file: !586, line: 359, type: !101)
!2170 = !DILocalVariable(name: "line_number", arg: 4, scope: !2163, file: !586, line: 360, type: !69)
!2171 = !DILocalVariable(name: "message", arg: 5, scope: !2163, file: !586, line: 360, type: !101)
!2172 = !DILocalVariable(name: "ap", scope: !2163, file: !586, line: 362, type: !2121)
!2173 = !DILocation(line: 0, scope: !2163)
!2174 = !DILocation(line: 362, column: 3, scope: !2163)
!2175 = !DILocation(line: 362, column: 11, scope: !2163)
!2176 = !DILocation(line: 363, column: 3, scope: !2163)
!2177 = !DILocation(line: 364, column: 3, scope: !2163)
!2178 = !DILocation(line: 366, column: 3, scope: !2163)
!2179 = !DILocation(line: 367, column: 1, scope: !2163)
!2180 = distinct !DISubprogram(name: "fpurge", scope: !926, file: !926, line: 32, type: !2181, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !2217)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!57, !2183}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2186)
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2185, file: !232, line: 51, baseType: !57, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2185, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2185, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2185, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2185, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2185, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2185, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2185, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2185, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2185, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2185, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2185, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2185, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2185, file: !232, line: 70, baseType: !2201, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2185, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2185, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2185, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2185, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2185, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2185, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2185, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2185, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2185, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2185, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2185, file: !232, line: 93, baseType: !2201, size: 64, offset: 1344)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2185, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2185, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2185, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2185, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2217 = !{!2218}
!2218 = !DILocalVariable(name: "fp", arg: 1, scope: !2180, file: !926, line: 32, type: !2183)
!2219 = !DILocation(line: 0, scope: !2180)
!2220 = !DILocation(line: 36, column: 3, scope: !2180)
!2221 = !DILocation(line: 38, column: 3, scope: !2180)
!2222 = !DISubprogram(name: "__fpurge", scope: !2223, file: !2223, line: 72, type: !2224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2223 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !2183}
!2226 = distinct !DISubprogram(name: "rpl_fseeko", scope: !928, file: !928, line: 28, type: !2227, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !2263)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!57, !2229, !1362, !57}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2231, file: !232, line: 51, baseType: !57, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2231, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2231, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2231, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2231, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2231, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2231, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2231, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2231, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2231, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2231, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2231, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2231, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2231, file: !232, line: 70, baseType: !2247, size: 64, offset: 832)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2231, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2231, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2231, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2231, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2231, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2231, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2231, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2231, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2231, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2231, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2231, file: !232, line: 93, baseType: !2247, size: 64, offset: 1344)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2231, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2231, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2231, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2231, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!2263 = !{!2264, !2265, !2266, !2267}
!2264 = !DILocalVariable(name: "fp", arg: 1, scope: !2226, file: !928, line: 28, type: !2229)
!2265 = !DILocalVariable(name: "offset", arg: 2, scope: !2226, file: !928, line: 28, type: !1362)
!2266 = !DILocalVariable(name: "whence", arg: 3, scope: !2226, file: !928, line: 28, type: !57)
!2267 = !DILocalVariable(name: "pos", scope: !2268, file: !928, line: 123, type: !1362)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !928, line: 119, column: 5)
!2269 = distinct !DILexicalBlock(scope: !2226, file: !928, line: 55, column: 7)
!2270 = !DILocation(line: 0, scope: !2226)
!2271 = !DILocation(line: 55, column: 12, scope: !2269)
!2272 = !{!2092, !1032, i64 16}
!2273 = !DILocation(line: 55, column: 33, scope: !2269)
!2274 = !{!2092, !1032, i64 8}
!2275 = !DILocation(line: 55, column: 25, scope: !2269)
!2276 = !DILocation(line: 56, column: 7, scope: !2269)
!2277 = !DILocation(line: 56, column: 15, scope: !2269)
!2278 = !DILocation(line: 56, column: 37, scope: !2269)
!2279 = !{!2092, !1032, i64 32}
!2280 = !DILocation(line: 56, column: 29, scope: !2269)
!2281 = !DILocation(line: 57, column: 7, scope: !2269)
!2282 = !DILocation(line: 57, column: 15, scope: !2269)
!2283 = !{!2092, !1032, i64 72}
!2284 = !DILocation(line: 57, column: 29, scope: !2269)
!2285 = !DILocation(line: 55, column: 7, scope: !2226)
!2286 = !DILocation(line: 123, column: 26, scope: !2268)
!2287 = !DILocation(line: 123, column: 19, scope: !2268)
!2288 = !DILocation(line: 0, scope: !2268)
!2289 = !DILocation(line: 124, column: 15, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2268, file: !928, line: 124, column: 11)
!2291 = !DILocation(line: 124, column: 11, scope: !2268)
!2292 = !DILocation(line: 135, column: 19, scope: !2268)
!2293 = !{!2092, !1103, i64 0}
!2294 = !DILocation(line: 136, column: 12, scope: !2268)
!2295 = !DILocation(line: 136, column: 20, scope: !2268)
!2296 = !{!2092, !1268, i64 144}
!2297 = !DILocation(line: 167, column: 7, scope: !2268)
!2298 = !DILocation(line: 169, column: 10, scope: !2226)
!2299 = !DILocation(line: 169, column: 3, scope: !2226)
!2300 = !DILocation(line: 170, column: 1, scope: !2226)
!2301 = !DISubprogram(name: "fileno", scope: !1097, file: !1097, line: 809, type: !2302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!57, !2229}
!2304 = !DISubprogram(name: "fseeko", scope: !1097, file: !1097, line: 736, type: !2305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!57, !2229, !254, !57}
!2307 = distinct !DISubprogram(name: "full_read", scope: !2308, file: !2308, line: 58, type: !2309, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !2311)
!2308 = !DIFile(filename: "./lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!974, !57, !98, !974}
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2317}
!2312 = !DILocalVariable(name: "fd", arg: 1, scope: !2307, file: !2308, line: 58, type: !57)
!2313 = !DILocalVariable(name: "buf", arg: 2, scope: !2307, file: !2308, line: 58, type: !98)
!2314 = !DILocalVariable(name: "count", arg: 3, scope: !2307, file: !2308, line: 58, type: !974)
!2315 = !DILocalVariable(name: "total", scope: !2307, file: !2308, line: 60, type: !974)
!2316 = !DILocalVariable(name: "ptr", scope: !2307, file: !2308, line: 61, type: !59)
!2317 = !DILocalVariable(name: "n_rw", scope: !2318, file: !2308, line: 65, type: !976)
!2318 = distinct !DILexicalBlock(scope: !2307, file: !2308, line: 64, column: 5)
!2319 = !DILocation(line: 0, scope: !2307)
!2320 = !DILocation(line: 63, column: 16, scope: !2307)
!2321 = !DILocation(line: 63, column: 3, scope: !2307)
!2322 = !DILocation(line: 65, column: 24, scope: !2318)
!2323 = !DILocation(line: 0, scope: !2318)
!2324 = !DILocation(line: 66, column: 16, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2318, file: !2308, line: 66, column: 11)
!2326 = !DILocation(line: 66, column: 11, scope: !2318)
!2327 = !DILocation(line: 68, column: 16, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2318, file: !2308, line: 68, column: 11)
!2329 = !DILocation(line: 68, column: 11, scope: !2318)
!2330 = !DILocation(line: 70, column: 11, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !2308, line: 69, column: 9)
!2332 = !DILocation(line: 70, column: 17, scope: !2331)
!2333 = !DILocation(line: 71, column: 11, scope: !2331)
!2334 = !DILocation(line: 73, column: 13, scope: !2318)
!2335 = !DILocation(line: 74, column: 11, scope: !2318)
!2336 = !DILocation(line: 75, column: 13, scope: !2318)
!2337 = !DILocation(line: 78, column: 3, scope: !2307)
!2338 = distinct !DISubprogram(name: "getprogname", scope: !932, file: !932, line: 54, type: !2339, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !931, retainedNodes: !1040)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!101}
!2341 = !DILocation(line: 58, column: 10, scope: !2338)
!2342 = !DILocation(line: 58, column: 3, scope: !2338)
!2343 = distinct !DISubprogram(name: "set_program_name", scope: !638, file: !638, line: 37, type: !1053, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !637, retainedNodes: !2344)
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "argv0", arg: 1, scope: !2343, file: !638, line: 37, type: !101)
!2346 = !DILocalVariable(name: "slash", scope: !2343, file: !638, line: 44, type: !101)
!2347 = !DILocalVariable(name: "base", scope: !2343, file: !638, line: 45, type: !101)
!2348 = !DILocation(line: 0, scope: !2343)
!2349 = !DILocation(line: 44, column: 23, scope: !2343)
!2350 = !DILocation(line: 45, column: 22, scope: !2343)
!2351 = !DILocation(line: 46, column: 17, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !638, line: 46, column: 7)
!2353 = !DILocation(line: 46, column: 9, scope: !2352)
!2354 = !DILocation(line: 46, column: 25, scope: !2352)
!2355 = !DILocation(line: 46, column: 40, scope: !2352)
!2356 = !DILocalVariable(name: "__s1", arg: 1, scope: !2357, file: !1115, line: 974, type: !1251)
!2357 = distinct !DISubprogram(name: "memeq", scope: !1115, file: !1115, line: 974, type: !2358, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !637, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!215, !1251, !1251, !104}
!2360 = !{!2356, !2361, !2362}
!2361 = !DILocalVariable(name: "__s2", arg: 2, scope: !2357, file: !1115, line: 974, type: !1251)
!2362 = !DILocalVariable(name: "__n", arg: 3, scope: !2357, file: !1115, line: 974, type: !104)
!2363 = !DILocation(line: 0, scope: !2357, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 46, column: 28, scope: !2352)
!2365 = !DILocation(line: 976, column: 11, scope: !2357, inlinedAt: !2364)
!2366 = !DILocation(line: 976, column: 10, scope: !2357, inlinedAt: !2364)
!2367 = !DILocation(line: 46, column: 7, scope: !2343)
!2368 = !DILocation(line: 49, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !638, line: 49, column: 11)
!2370 = distinct !DILexicalBlock(scope: !2352, file: !638, line: 47, column: 5)
!2371 = !DILocation(line: 49, column: 36, scope: !2369)
!2372 = !DILocation(line: 49, column: 11, scope: !2370)
!2373 = !DILocation(line: 65, column: 16, scope: !2343)
!2374 = !DILocation(line: 71, column: 27, scope: !2343)
!2375 = !DILocation(line: 74, column: 33, scope: !2343)
!2376 = !DILocation(line: 76, column: 1, scope: !2343)
!2377 = !DISubprogram(name: "strrchr", scope: !1223, file: !1223, line: 273, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2378 = !DILocation(line: 0, scope: !647)
!2379 = !DILocation(line: 40, column: 29, scope: !647)
!2380 = !DILocation(line: 41, column: 19, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !647, file: !648, line: 41, column: 7)
!2382 = !DILocation(line: 41, column: 7, scope: !647)
!2383 = !DILocation(line: 47, column: 3, scope: !647)
!2384 = !DILocation(line: 48, column: 3, scope: !647)
!2385 = !DILocation(line: 48, column: 13, scope: !647)
!2386 = !DILocalVariable(name: "ps", arg: 1, scope: !2387, file: !1913, line: 1135, type: !2390)
!2387 = distinct !DISubprogram(name: "mbszero", scope: !1913, file: !1913, line: 1135, type: !2388, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2391)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!2391 = !{!2386}
!2392 = !DILocation(line: 0, scope: !2387, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 48, column: 18, scope: !647)
!2394 = !DILocalVariable(name: "__dest", arg: 1, scope: !2395, file: !1332, line: 57, type: !98)
!2395 = distinct !DISubprogram(name: "memset", scope: !1332, file: !1332, line: 57, type: !2396, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !651, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!98, !98, !57, !104}
!2398 = !{!2394, !2399, !2400}
!2399 = !DILocalVariable(name: "__ch", arg: 2, scope: !2395, file: !1332, line: 57, type: !57)
!2400 = !DILocalVariable(name: "__len", arg: 3, scope: !2395, file: !1332, line: 57, type: !104)
!2401 = !DILocation(line: 0, scope: !2395, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1137, column: 3, scope: !2387, inlinedAt: !2393)
!2403 = !DILocation(line: 59, column: 10, scope: !2395, inlinedAt: !2402)
!2404 = !DILocation(line: 49, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !647, file: !648, line: 49, column: 7)
!2406 = !DILocation(line: 49, column: 39, scope: !2405)
!2407 = !DILocation(line: 49, column: 44, scope: !2405)
!2408 = !DILocation(line: 54, column: 1, scope: !647)
!2409 = !DISubprogram(name: "mbrtoc32", scope: !659, file: !659, line: 57, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!104, !2412, !1092, !104, !2414}
!2412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2390)
!2415 = distinct !DISubprogram(name: "clone_quoting_options", scope: !678, file: !678, line: 113, type: !2416, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2419)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2418, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "o", arg: 1, scope: !2415, file: !678, line: 113, type: !2418)
!2421 = !DILocalVariable(name: "saved_errno", scope: !2415, file: !678, line: 115, type: !57)
!2422 = !DILocalVariable(name: "p", scope: !2415, file: !678, line: 116, type: !2418)
!2423 = !DILocation(line: 0, scope: !2415)
!2424 = !DILocation(line: 115, column: 21, scope: !2415)
!2425 = !DILocation(line: 116, column: 40, scope: !2415)
!2426 = !DILocation(line: 116, column: 31, scope: !2415)
!2427 = !DILocation(line: 118, column: 9, scope: !2415)
!2428 = !DILocation(line: 119, column: 3, scope: !2415)
!2429 = distinct !DISubprogram(name: "get_quoting_style", scope: !678, file: !678, line: 124, type: !2430, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2434)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!83, !2432}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!2434 = !{!2435}
!2435 = !DILocalVariable(name: "o", arg: 1, scope: !2429, file: !678, line: 124, type: !2432)
!2436 = !DILocation(line: 0, scope: !2429)
!2437 = !DILocation(line: 126, column: 11, scope: !2429)
!2438 = !DILocation(line: 126, column: 46, scope: !2429)
!2439 = !{!2440, !1033, i64 0}
!2440 = !{!"quoting_options", !1033, i64 0, !1103, i64 4, !1033, i64 8, !1032, i64 40, !1032, i64 48}
!2441 = !DILocation(line: 126, column: 3, scope: !2429)
!2442 = distinct !DISubprogram(name: "set_quoting_style", scope: !678, file: !678, line: 132, type: !2443, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !2418, !83}
!2445 = !{!2446, !2447}
!2446 = !DILocalVariable(name: "o", arg: 1, scope: !2442, file: !678, line: 132, type: !2418)
!2447 = !DILocalVariable(name: "s", arg: 2, scope: !2442, file: !678, line: 132, type: !83)
!2448 = !DILocation(line: 0, scope: !2442)
!2449 = !DILocation(line: 134, column: 4, scope: !2442)
!2450 = !DILocation(line: 134, column: 45, scope: !2442)
!2451 = !DILocation(line: 135, column: 1, scope: !2442)
!2452 = distinct !DISubprogram(name: "set_char_quoting", scope: !678, file: !678, line: 143, type: !2453, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!57, !2418, !4, !57}
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2462, !2463}
!2456 = !DILocalVariable(name: "o", arg: 1, scope: !2452, file: !678, line: 143, type: !2418)
!2457 = !DILocalVariable(name: "c", arg: 2, scope: !2452, file: !678, line: 143, type: !4)
!2458 = !DILocalVariable(name: "i", arg: 3, scope: !2452, file: !678, line: 143, type: !57)
!2459 = !DILocalVariable(name: "uc", scope: !2452, file: !678, line: 145, type: !107)
!2460 = !DILocalVariable(name: "p", scope: !2452, file: !678, line: 146, type: !2461)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2462 = !DILocalVariable(name: "shift", scope: !2452, file: !678, line: 148, type: !57)
!2463 = !DILocalVariable(name: "r", scope: !2452, file: !678, line: 149, type: !69)
!2464 = !DILocation(line: 0, scope: !2452)
!2465 = !DILocation(line: 147, column: 6, scope: !2452)
!2466 = !DILocation(line: 147, column: 41, scope: !2452)
!2467 = !DILocation(line: 147, column: 62, scope: !2452)
!2468 = !DILocation(line: 147, column: 57, scope: !2452)
!2469 = !DILocation(line: 148, column: 15, scope: !2452)
!2470 = !DILocation(line: 149, column: 21, scope: !2452)
!2471 = !DILocation(line: 149, column: 24, scope: !2452)
!2472 = !DILocation(line: 149, column: 34, scope: !2452)
!2473 = !DILocation(line: 150, column: 19, scope: !2452)
!2474 = !DILocation(line: 150, column: 24, scope: !2452)
!2475 = !DILocation(line: 150, column: 6, scope: !2452)
!2476 = !DILocation(line: 151, column: 3, scope: !2452)
!2477 = distinct !DISubprogram(name: "set_quoting_flags", scope: !678, file: !678, line: 159, type: !2478, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!57, !2418, !57}
!2480 = !{!2481, !2482, !2483}
!2481 = !DILocalVariable(name: "o", arg: 1, scope: !2477, file: !678, line: 159, type: !2418)
!2482 = !DILocalVariable(name: "i", arg: 2, scope: !2477, file: !678, line: 159, type: !57)
!2483 = !DILocalVariable(name: "r", scope: !2477, file: !678, line: 163, type: !57)
!2484 = !DILocation(line: 0, scope: !2477)
!2485 = !DILocation(line: 161, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2477, file: !678, line: 161, column: 7)
!2487 = !DILocation(line: 161, column: 7, scope: !2477)
!2488 = !DILocation(line: 163, column: 14, scope: !2477)
!2489 = !{!2440, !1103, i64 4}
!2490 = !DILocation(line: 164, column: 12, scope: !2477)
!2491 = !DILocation(line: 165, column: 3, scope: !2477)
!2492 = distinct !DISubprogram(name: "set_custom_quoting", scope: !678, file: !678, line: 169, type: !2493, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !2418, !101, !101}
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "o", arg: 1, scope: !2492, file: !678, line: 169, type: !2418)
!2497 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2492, file: !678, line: 170, type: !101)
!2498 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2492, file: !678, line: 170, type: !101)
!2499 = !DILocation(line: 0, scope: !2492)
!2500 = !DILocation(line: 172, column: 8, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2492, file: !678, line: 172, column: 7)
!2502 = !DILocation(line: 172, column: 7, scope: !2492)
!2503 = !DILocation(line: 174, column: 12, scope: !2492)
!2504 = !DILocation(line: 175, column: 8, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2492, file: !678, line: 175, column: 7)
!2506 = !DILocation(line: 175, column: 19, scope: !2505)
!2507 = !DILocation(line: 176, column: 5, scope: !2505)
!2508 = !DILocation(line: 177, column: 6, scope: !2492)
!2509 = !DILocation(line: 177, column: 17, scope: !2492)
!2510 = !{!2440, !1032, i64 40}
!2511 = !DILocation(line: 178, column: 6, scope: !2492)
!2512 = !DILocation(line: 178, column: 18, scope: !2492)
!2513 = !{!2440, !1032, i64 48}
!2514 = !DILocation(line: 179, column: 1, scope: !2492)
!2515 = !DISubprogram(name: "abort", scope: !1227, file: !1227, line: 598, type: !633, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!2516 = distinct !DISubprogram(name: "quotearg_buffer", scope: !678, file: !678, line: 774, type: !2517, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!104, !59, !104, !101, !104, !2432}
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527}
!2520 = !DILocalVariable(name: "buffer", arg: 1, scope: !2516, file: !678, line: 774, type: !59)
!2521 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2516, file: !678, line: 774, type: !104)
!2522 = !DILocalVariable(name: "arg", arg: 3, scope: !2516, file: !678, line: 775, type: !101)
!2523 = !DILocalVariable(name: "argsize", arg: 4, scope: !2516, file: !678, line: 775, type: !104)
!2524 = !DILocalVariable(name: "o", arg: 5, scope: !2516, file: !678, line: 776, type: !2432)
!2525 = !DILocalVariable(name: "p", scope: !2516, file: !678, line: 778, type: !2432)
!2526 = !DILocalVariable(name: "saved_errno", scope: !2516, file: !678, line: 779, type: !57)
!2527 = !DILocalVariable(name: "r", scope: !2516, file: !678, line: 780, type: !104)
!2528 = !DILocation(line: 0, scope: !2516)
!2529 = !DILocation(line: 778, column: 37, scope: !2516)
!2530 = !DILocation(line: 779, column: 21, scope: !2516)
!2531 = !DILocation(line: 781, column: 43, scope: !2516)
!2532 = !DILocation(line: 781, column: 53, scope: !2516)
!2533 = !DILocation(line: 781, column: 63, scope: !2516)
!2534 = !DILocation(line: 782, column: 43, scope: !2516)
!2535 = !DILocation(line: 782, column: 58, scope: !2516)
!2536 = !DILocation(line: 780, column: 14, scope: !2516)
!2537 = !DILocation(line: 783, column: 9, scope: !2516)
!2538 = !DILocation(line: 784, column: 3, scope: !2516)
!2539 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !678, file: !678, line: 251, type: !2540, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2544)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!104, !59, !104, !101, !104, !83, !57, !2542, !101, !101}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2569, !2571, !2574, !2575, !2576, !2577, !2580, !2581, !2584, !2588, !2589, !2597, !2600, !2601, !2603, !2604, !2605, !2606}
!2545 = !DILocalVariable(name: "buffer", arg: 1, scope: !2539, file: !678, line: 251, type: !59)
!2546 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2539, file: !678, line: 251, type: !104)
!2547 = !DILocalVariable(name: "arg", arg: 3, scope: !2539, file: !678, line: 252, type: !101)
!2548 = !DILocalVariable(name: "argsize", arg: 4, scope: !2539, file: !678, line: 252, type: !104)
!2549 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2539, file: !678, line: 253, type: !83)
!2550 = !DILocalVariable(name: "flags", arg: 6, scope: !2539, file: !678, line: 253, type: !57)
!2551 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2539, file: !678, line: 254, type: !2542)
!2552 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2539, file: !678, line: 255, type: !101)
!2553 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2539, file: !678, line: 256, type: !101)
!2554 = !DILocalVariable(name: "unibyte_locale", scope: !2539, file: !678, line: 258, type: !215)
!2555 = !DILocalVariable(name: "len", scope: !2539, file: !678, line: 260, type: !104)
!2556 = !DILocalVariable(name: "orig_buffersize", scope: !2539, file: !678, line: 261, type: !104)
!2557 = !DILocalVariable(name: "quote_string", scope: !2539, file: !678, line: 262, type: !101)
!2558 = !DILocalVariable(name: "quote_string_len", scope: !2539, file: !678, line: 263, type: !104)
!2559 = !DILocalVariable(name: "backslash_escapes", scope: !2539, file: !678, line: 264, type: !215)
!2560 = !DILocalVariable(name: "elide_outer_quotes", scope: !2539, file: !678, line: 265, type: !215)
!2561 = !DILocalVariable(name: "encountered_single_quote", scope: !2539, file: !678, line: 266, type: !215)
!2562 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2539, file: !678, line: 267, type: !215)
!2563 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2539, file: !678, line: 309, type: !215)
!2564 = !DILocalVariable(name: "lq", scope: !2565, file: !678, line: 361, type: !101)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !678, line: 361, column: 11)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !678, line: 360, column: 13)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !678, line: 333, column: 7)
!2568 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 312, column: 5)
!2569 = !DILocalVariable(name: "i", scope: !2570, file: !678, line: 395, type: !104)
!2570 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 395, column: 3)
!2571 = !DILocalVariable(name: "is_right_quote", scope: !2572, file: !678, line: 397, type: !215)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !678, line: 396, column: 5)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !678, line: 395, column: 3)
!2574 = !DILocalVariable(name: "escaping", scope: !2572, file: !678, line: 398, type: !215)
!2575 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2572, file: !678, line: 399, type: !215)
!2576 = !DILocalVariable(name: "c", scope: !2572, file: !678, line: 417, type: !107)
!2577 = !DILocalVariable(name: "m", scope: !2578, file: !678, line: 598, type: !104)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 596, column: 11)
!2579 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 419, column: 9)
!2580 = !DILocalVariable(name: "printable", scope: !2578, file: !678, line: 600, type: !215)
!2581 = !DILocalVariable(name: "mbs", scope: !2582, file: !678, line: 609, type: !748)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !678, line: 608, column: 15)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !678, line: 602, column: 17)
!2584 = !DILocalVariable(name: "w", scope: !2585, file: !678, line: 618, type: !658)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !678, line: 617, column: 19)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !678, line: 616, column: 17)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !678, line: 616, column: 17)
!2588 = !DILocalVariable(name: "bytes", scope: !2585, file: !678, line: 619, type: !104)
!2589 = !DILocalVariable(name: "j", scope: !2590, file: !678, line: 648, type: !104)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !678, line: 648, column: 29)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !678, line: 647, column: 27)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !678, line: 645, column: 29)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !678, line: 636, column: 23)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !678, line: 628, column: 30)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !678, line: 623, column: 30)
!2596 = distinct !DILexicalBlock(scope: !2585, file: !678, line: 621, column: 25)
!2597 = !DILocalVariable(name: "ilim", scope: !2598, file: !678, line: 674, type: !104)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !678, line: 671, column: 15)
!2599 = distinct !DILexicalBlock(scope: !2578, file: !678, line: 670, column: 17)
!2600 = !DILabel(scope: !2539, name: "process_input", file: !678, line: 308)
!2601 = !DILabel(scope: !2602, name: "c_and_shell_escape", file: !678, line: 502)
!2602 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 478, column: 9)
!2603 = !DILabel(scope: !2602, name: "c_escape", file: !678, line: 507)
!2604 = !DILabel(scope: !2572, name: "store_escape", file: !678, line: 709)
!2605 = !DILabel(scope: !2572, name: "store_c", file: !678, line: 712)
!2606 = !DILabel(scope: !2539, name: "force_outer_quoting_style", file: !678, line: 753)
!2607 = !DILocation(line: 0, scope: !2539)
!2608 = !DILocation(line: 258, column: 25, scope: !2539)
!2609 = !DILocation(line: 258, column: 36, scope: !2539)
!2610 = !DILocation(line: 265, column: 8, scope: !2539)
!2611 = !DILocation(line: 267, column: 3, scope: !2539)
!2612 = !DILocation(line: 261, column: 10, scope: !2539)
!2613 = !DILocation(line: 262, column: 15, scope: !2539)
!2614 = !DILocation(line: 263, column: 10, scope: !2539)
!2615 = !DILocation(line: 264, column: 8, scope: !2539)
!2616 = !DILocation(line: 266, column: 8, scope: !2539)
!2617 = !DILocation(line: 267, column: 8, scope: !2539)
!2618 = !DILocation(line: 308, column: 2, scope: !2539)
!2619 = !DILocation(line: 311, column: 3, scope: !2539)
!2620 = !DILocation(line: 318, column: 11, scope: !2568)
!2621 = !DILocation(line: 318, column: 12, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2568, file: !678, line: 318, column: 11)
!2623 = !DILocation(line: 319, column: 9, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !678, line: 319, column: 9)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !678, line: 319, column: 9)
!2626 = !DILocation(line: 319, column: 9, scope: !2625)
!2627 = !DILocation(line: 0, scope: !739, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 357, column: 26, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !678, line: 335, column: 11)
!2630 = distinct !DILexicalBlock(scope: !2567, file: !678, line: 334, column: 13)
!2631 = !DILocation(line: 199, column: 29, scope: !739, inlinedAt: !2628)
!2632 = !DILocation(line: 201, column: 19, scope: !2633, inlinedAt: !2628)
!2633 = distinct !DILexicalBlock(scope: !739, file: !678, line: 201, column: 7)
!2634 = !DILocation(line: 201, column: 7, scope: !739, inlinedAt: !2628)
!2635 = !DILocation(line: 229, column: 3, scope: !739, inlinedAt: !2628)
!2636 = !DILocation(line: 230, column: 3, scope: !739, inlinedAt: !2628)
!2637 = !DILocation(line: 230, column: 13, scope: !739, inlinedAt: !2628)
!2638 = !DILocalVariable(name: "ps", arg: 1, scope: !2639, file: !1913, line: 1135, type: !2642)
!2639 = distinct !DISubprogram(name: "mbszero", scope: !1913, file: !1913, line: 1135, type: !2640, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2643)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!2643 = !{!2638}
!2644 = !DILocation(line: 0, scope: !2639, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 230, column: 18, scope: !739, inlinedAt: !2628)
!2646 = !DILocalVariable(name: "__dest", arg: 1, scope: !2647, file: !1332, line: 57, type: !98)
!2647 = distinct !DISubprogram(name: "memset", scope: !1332, file: !1332, line: 57, type: !2396, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2648)
!2648 = !{!2646, !2649, !2650}
!2649 = !DILocalVariable(name: "__ch", arg: 2, scope: !2647, file: !1332, line: 57, type: !57)
!2650 = !DILocalVariable(name: "__len", arg: 3, scope: !2647, file: !1332, line: 57, type: !104)
!2651 = !DILocation(line: 0, scope: !2647, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1137, column: 3, scope: !2639, inlinedAt: !2645)
!2653 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !2652)
!2654 = !DILocation(line: 231, column: 7, scope: !2655, inlinedAt: !2628)
!2655 = distinct !DILexicalBlock(scope: !739, file: !678, line: 231, column: 7)
!2656 = !DILocation(line: 231, column: 40, scope: !2655, inlinedAt: !2628)
!2657 = !DILocation(line: 231, column: 45, scope: !2655, inlinedAt: !2628)
!2658 = !DILocation(line: 235, column: 1, scope: !739, inlinedAt: !2628)
!2659 = !DILocation(line: 0, scope: !739, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 358, column: 27, scope: !2629)
!2661 = !DILocation(line: 199, column: 29, scope: !739, inlinedAt: !2660)
!2662 = !DILocation(line: 201, column: 19, scope: !2633, inlinedAt: !2660)
!2663 = !DILocation(line: 201, column: 7, scope: !739, inlinedAt: !2660)
!2664 = !DILocation(line: 229, column: 3, scope: !739, inlinedAt: !2660)
!2665 = !DILocation(line: 230, column: 3, scope: !739, inlinedAt: !2660)
!2666 = !DILocation(line: 230, column: 13, scope: !739, inlinedAt: !2660)
!2667 = !DILocation(line: 0, scope: !2639, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 230, column: 18, scope: !739, inlinedAt: !2660)
!2669 = !DILocation(line: 0, scope: !2647, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1137, column: 3, scope: !2639, inlinedAt: !2668)
!2671 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !2670)
!2672 = !DILocation(line: 231, column: 7, scope: !2655, inlinedAt: !2660)
!2673 = !DILocation(line: 231, column: 40, scope: !2655, inlinedAt: !2660)
!2674 = !DILocation(line: 231, column: 45, scope: !2655, inlinedAt: !2660)
!2675 = !DILocation(line: 235, column: 1, scope: !739, inlinedAt: !2660)
!2676 = !DILocation(line: 360, column: 14, scope: !2566)
!2677 = !DILocation(line: 360, column: 13, scope: !2567)
!2678 = !DILocation(line: 0, scope: !2565)
!2679 = !DILocation(line: 361, column: 45, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2565, file: !678, line: 361, column: 11)
!2681 = !DILocation(line: 361, column: 11, scope: !2565)
!2682 = !DILocation(line: 362, column: 13, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !678, line: 362, column: 13)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !678, line: 362, column: 13)
!2685 = !DILocation(line: 362, column: 13, scope: !2684)
!2686 = !DILocation(line: 361, column: 52, scope: !2680)
!2687 = distinct !{!2687, !2681, !2688, !1149}
!2688 = !DILocation(line: 362, column: 13, scope: !2565)
!2689 = !DILocation(line: 260, column: 10, scope: !2539)
!2690 = !DILocation(line: 365, column: 28, scope: !2567)
!2691 = !DILocation(line: 367, column: 7, scope: !2568)
!2692 = !DILocation(line: 370, column: 7, scope: !2568)
!2693 = !DILocation(line: 373, column: 7, scope: !2568)
!2694 = !DILocation(line: 376, column: 12, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2568, file: !678, line: 376, column: 11)
!2696 = !DILocation(line: 376, column: 11, scope: !2568)
!2697 = !DILocation(line: 381, column: 12, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2568, file: !678, line: 381, column: 11)
!2699 = !DILocation(line: 381, column: 11, scope: !2568)
!2700 = !DILocation(line: 382, column: 9, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !678, line: 382, column: 9)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !678, line: 382, column: 9)
!2703 = !DILocation(line: 382, column: 9, scope: !2702)
!2704 = !DILocation(line: 389, column: 7, scope: !2568)
!2705 = !DILocation(line: 392, column: 7, scope: !2568)
!2706 = !DILocation(line: 0, scope: !2570)
!2707 = !DILocation(line: 395, column: 8, scope: !2570)
!2708 = !DILocation(line: 309, column: 8, scope: !2539)
!2709 = !DILocation(line: 395, scope: !2570)
!2710 = !DILocation(line: 395, column: 34, scope: !2573)
!2711 = !DILocation(line: 395, column: 26, scope: !2573)
!2712 = !DILocation(line: 395, column: 48, scope: !2573)
!2713 = !DILocation(line: 395, column: 55, scope: !2573)
!2714 = !DILocation(line: 395, column: 3, scope: !2570)
!2715 = !DILocation(line: 395, column: 67, scope: !2573)
!2716 = !DILocation(line: 0, scope: !2572)
!2717 = !DILocation(line: 402, column: 11, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 401, column: 11)
!2719 = !DILocation(line: 404, column: 17, scope: !2718)
!2720 = !DILocation(line: 405, column: 39, scope: !2718)
!2721 = !DILocation(line: 409, column: 32, scope: !2718)
!2722 = !DILocation(line: 405, column: 19, scope: !2718)
!2723 = !DILocation(line: 405, column: 15, scope: !2718)
!2724 = !DILocation(line: 410, column: 11, scope: !2718)
!2725 = !DILocation(line: 410, column: 25, scope: !2718)
!2726 = !DILocalVariable(name: "__s1", arg: 1, scope: !2727, file: !1115, line: 974, type: !1251)
!2727 = distinct !DISubprogram(name: "memeq", scope: !1115, file: !1115, line: 974, type: !2358, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2728)
!2728 = !{!2726, !2729, !2730}
!2729 = !DILocalVariable(name: "__s2", arg: 2, scope: !2727, file: !1115, line: 974, type: !1251)
!2730 = !DILocalVariable(name: "__n", arg: 3, scope: !2727, file: !1115, line: 974, type: !104)
!2731 = !DILocation(line: 0, scope: !2727, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 410, column: 14, scope: !2718)
!2733 = !DILocation(line: 976, column: 11, scope: !2727, inlinedAt: !2732)
!2734 = !DILocation(line: 976, column: 10, scope: !2727, inlinedAt: !2732)
!2735 = !DILocation(line: 401, column: 11, scope: !2572)
!2736 = !DILocation(line: 417, column: 25, scope: !2572)
!2737 = !DILocation(line: 418, column: 7, scope: !2572)
!2738 = !DILocation(line: 421, column: 15, scope: !2579)
!2739 = !DILocation(line: 423, column: 15, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !678, line: 423, column: 15)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !678, line: 422, column: 13)
!2742 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 421, column: 15)
!2743 = !DILocation(line: 423, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !678, line: 423, column: 15)
!2745 = !DILocation(line: 423, column: 15, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !678, line: 423, column: 15)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !678, line: 423, column: 15)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !678, line: 423, column: 15)
!2749 = !DILocation(line: 423, column: 15, scope: !2747)
!2750 = !DILocation(line: 423, column: 15, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !678, line: 423, column: 15)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !678, line: 423, column: 15)
!2753 = !DILocation(line: 423, column: 15, scope: !2752)
!2754 = !DILocation(line: 423, column: 15, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !678, line: 423, column: 15)
!2756 = distinct !DILexicalBlock(scope: !2748, file: !678, line: 423, column: 15)
!2757 = !DILocation(line: 423, column: 15, scope: !2756)
!2758 = !DILocation(line: 423, column: 15, scope: !2748)
!2759 = !DILocation(line: 423, column: 15, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !678, line: 423, column: 15)
!2761 = distinct !DILexicalBlock(scope: !2740, file: !678, line: 423, column: 15)
!2762 = !DILocation(line: 423, column: 15, scope: !2761)
!2763 = !DILocation(line: 431, column: 19, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2741, file: !678, line: 430, column: 19)
!2765 = !DILocation(line: 431, column: 24, scope: !2764)
!2766 = !DILocation(line: 431, column: 28, scope: !2764)
!2767 = !DILocation(line: 431, column: 38, scope: !2764)
!2768 = !DILocation(line: 431, column: 48, scope: !2764)
!2769 = !DILocation(line: 431, column: 59, scope: !2764)
!2770 = !DILocation(line: 433, column: 19, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !678, line: 433, column: 19)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !678, line: 433, column: 19)
!2773 = distinct !DILexicalBlock(scope: !2764, file: !678, line: 432, column: 17)
!2774 = !DILocation(line: 433, column: 19, scope: !2772)
!2775 = !DILocation(line: 434, column: 19, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !678, line: 434, column: 19)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !678, line: 434, column: 19)
!2778 = !DILocation(line: 434, column: 19, scope: !2777)
!2779 = !DILocation(line: 435, column: 17, scope: !2773)
!2780 = !DILocation(line: 442, column: 20, scope: !2742)
!2781 = !DILocation(line: 447, column: 11, scope: !2579)
!2782 = !DILocation(line: 450, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 448, column: 13)
!2784 = !DILocation(line: 456, column: 19, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !678, line: 455, column: 19)
!2786 = !DILocation(line: 456, column: 24, scope: !2785)
!2787 = !DILocation(line: 456, column: 28, scope: !2785)
!2788 = !DILocation(line: 456, column: 38, scope: !2785)
!2789 = !DILocation(line: 456, column: 47, scope: !2785)
!2790 = !DILocation(line: 456, column: 41, scope: !2785)
!2791 = !DILocation(line: 456, column: 52, scope: !2785)
!2792 = !DILocation(line: 455, column: 19, scope: !2783)
!2793 = !DILocation(line: 457, column: 25, scope: !2785)
!2794 = !DILocation(line: 457, column: 17, scope: !2785)
!2795 = !DILocation(line: 464, column: 25, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2785, file: !678, line: 458, column: 19)
!2797 = !DILocation(line: 468, column: 21, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !678, line: 468, column: 21)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !678, line: 468, column: 21)
!2800 = !DILocation(line: 468, column: 21, scope: !2799)
!2801 = !DILocation(line: 469, column: 21, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !678, line: 469, column: 21)
!2803 = distinct !DILexicalBlock(scope: !2796, file: !678, line: 469, column: 21)
!2804 = !DILocation(line: 469, column: 21, scope: !2803)
!2805 = !DILocation(line: 470, column: 21, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !678, line: 470, column: 21)
!2807 = distinct !DILexicalBlock(scope: !2796, file: !678, line: 470, column: 21)
!2808 = !DILocation(line: 470, column: 21, scope: !2807)
!2809 = !DILocation(line: 471, column: 21, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !678, line: 471, column: 21)
!2811 = distinct !DILexicalBlock(scope: !2796, file: !678, line: 471, column: 21)
!2812 = !DILocation(line: 471, column: 21, scope: !2811)
!2813 = !DILocation(line: 472, column: 21, scope: !2796)
!2814 = !DILocation(line: 482, column: 33, scope: !2602)
!2815 = !DILocation(line: 483, column: 33, scope: !2602)
!2816 = !DILocation(line: 485, column: 33, scope: !2602)
!2817 = !DILocation(line: 486, column: 33, scope: !2602)
!2818 = !DILocation(line: 487, column: 33, scope: !2602)
!2819 = !DILocation(line: 490, column: 17, scope: !2602)
!2820 = !DILocation(line: 492, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !678, line: 491, column: 15)
!2822 = distinct !DILexicalBlock(scope: !2602, file: !678, line: 490, column: 17)
!2823 = !DILocation(line: 499, column: 35, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2602, file: !678, line: 499, column: 17)
!2825 = !DILocation(line: 499, column: 57, scope: !2824)
!2826 = !DILocation(line: 0, scope: !2602)
!2827 = !DILocation(line: 502, column: 11, scope: !2602)
!2828 = !DILocation(line: 504, column: 17, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2602, file: !678, line: 503, column: 17)
!2830 = !DILocation(line: 507, column: 11, scope: !2602)
!2831 = !DILocation(line: 508, column: 17, scope: !2602)
!2832 = !DILocation(line: 517, column: 15, scope: !2579)
!2833 = !DILocation(line: 517, column: 40, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 517, column: 15)
!2835 = !DILocation(line: 517, column: 47, scope: !2834)
!2836 = !DILocation(line: 517, column: 18, scope: !2834)
!2837 = !DILocation(line: 521, column: 17, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 521, column: 15)
!2839 = !DILocation(line: 521, column: 15, scope: !2579)
!2840 = !DILocation(line: 525, column: 11, scope: !2579)
!2841 = !DILocation(line: 537, column: 15, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 536, column: 15)
!2843 = !DILocation(line: 544, column: 15, scope: !2579)
!2844 = !DILocation(line: 546, column: 19, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !678, line: 545, column: 13)
!2846 = distinct !DILexicalBlock(scope: !2579, file: !678, line: 544, column: 15)
!2847 = !DILocation(line: 549, column: 19, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !678, line: 549, column: 19)
!2849 = !DILocation(line: 549, column: 30, scope: !2848)
!2850 = !DILocation(line: 558, column: 15, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !678, line: 558, column: 15)
!2852 = distinct !DILexicalBlock(scope: !2845, file: !678, line: 558, column: 15)
!2853 = !DILocation(line: 558, column: 15, scope: !2852)
!2854 = !DILocation(line: 559, column: 15, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !678, line: 559, column: 15)
!2856 = distinct !DILexicalBlock(scope: !2845, file: !678, line: 559, column: 15)
!2857 = !DILocation(line: 559, column: 15, scope: !2856)
!2858 = !DILocation(line: 560, column: 15, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !678, line: 560, column: 15)
!2860 = distinct !DILexicalBlock(scope: !2845, file: !678, line: 560, column: 15)
!2861 = !DILocation(line: 560, column: 15, scope: !2860)
!2862 = !DILocation(line: 562, column: 13, scope: !2845)
!2863 = !DILocation(line: 602, column: 17, scope: !2578)
!2864 = !DILocation(line: 0, scope: !2578)
!2865 = !DILocation(line: 605, column: 29, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2583, file: !678, line: 603, column: 15)
!2867 = !DILocation(line: 605, column: 27, scope: !2866)
!2868 = !DILocation(line: 668, column: 40, scope: !2578)
!2869 = !DILocation(line: 670, column: 23, scope: !2599)
!2870 = !DILocation(line: 609, column: 17, scope: !2582)
!2871 = !DILocation(line: 609, column: 27, scope: !2582)
!2872 = !DILocation(line: 0, scope: !2639, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 609, column: 32, scope: !2582)
!2874 = !DILocation(line: 0, scope: !2647, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 1137, column: 3, scope: !2639, inlinedAt: !2873)
!2876 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !2875)
!2877 = !DILocation(line: 613, column: 29, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2582, file: !678, line: 613, column: 21)
!2879 = !DILocation(line: 613, column: 21, scope: !2582)
!2880 = !DILocation(line: 614, column: 29, scope: !2878)
!2881 = !DILocation(line: 614, column: 19, scope: !2878)
!2882 = !DILocation(line: 618, column: 21, scope: !2585)
!2883 = !DILocation(line: 620, column: 54, scope: !2585)
!2884 = !DILocation(line: 0, scope: !2585)
!2885 = !DILocation(line: 619, column: 36, scope: !2585)
!2886 = !DILocation(line: 621, column: 25, scope: !2585)
!2887 = !DILocation(line: 631, column: 38, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2594, file: !678, line: 629, column: 23)
!2889 = !DILocation(line: 631, column: 48, scope: !2888)
!2890 = !DILocation(line: 665, column: 19, scope: !2586)
!2891 = !DILocation(line: 666, column: 15, scope: !2583)
!2892 = !DILocation(line: 626, column: 25, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2595, file: !678, line: 624, column: 23)
!2894 = !DILocation(line: 631, column: 51, scope: !2888)
!2895 = !DILocation(line: 631, column: 25, scope: !2888)
!2896 = !DILocation(line: 632, column: 28, scope: !2888)
!2897 = !DILocation(line: 631, column: 34, scope: !2888)
!2898 = distinct !{!2898, !2895, !2896, !1149}
!2899 = !DILocation(line: 646, column: 29, scope: !2592)
!2900 = !DILocation(line: 0, scope: !2590)
!2901 = !DILocation(line: 649, column: 49, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2590, file: !678, line: 648, column: 29)
!2903 = !DILocation(line: 649, column: 39, scope: !2902)
!2904 = !DILocation(line: 649, column: 31, scope: !2902)
!2905 = !DILocation(line: 648, column: 60, scope: !2902)
!2906 = !DILocation(line: 648, column: 50, scope: !2902)
!2907 = !DILocation(line: 648, column: 29, scope: !2590)
!2908 = distinct !{!2908, !2907, !2909, !1149}
!2909 = !DILocation(line: 654, column: 33, scope: !2590)
!2910 = !DILocation(line: 657, column: 43, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2593, file: !678, line: 657, column: 29)
!2912 = !DILocalVariable(name: "wc", arg: 1, scope: !2913, file: !2914, line: 865, type: !2917)
!2913 = distinct !DISubprogram(name: "c32isprint", scope: !2914, file: !2914, line: 865, type: !2915, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2919)
!2914 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!57, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2918, line: 20, baseType: !69)
!2918 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2919 = !{!2912}
!2920 = !DILocation(line: 0, scope: !2913, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 657, column: 31, scope: !2911)
!2922 = !DILocation(line: 871, column: 10, scope: !2913, inlinedAt: !2921)
!2923 = !DILocation(line: 657, column: 31, scope: !2911)
!2924 = !DILocation(line: 657, column: 29, scope: !2593)
!2925 = !DILocation(line: 664, column: 23, scope: !2585)
!2926 = !DILocation(line: 670, column: 19, scope: !2599)
!2927 = !DILocation(line: 670, column: 45, scope: !2599)
!2928 = !DILocation(line: 674, column: 33, scope: !2598)
!2929 = !DILocation(line: 0, scope: !2598)
!2930 = !DILocation(line: 676, column: 17, scope: !2598)
!2931 = !DILocation(line: 398, column: 12, scope: !2572)
!2932 = !DILocation(line: 678, column: 43, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !678, line: 678, column: 25)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !678, line: 677, column: 19)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !678, line: 676, column: 17)
!2936 = distinct !DILexicalBlock(scope: !2598, file: !678, line: 676, column: 17)
!2937 = !DILocation(line: 680, column: 25, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !678, line: 680, column: 25)
!2939 = distinct !DILexicalBlock(scope: !2933, file: !678, line: 679, column: 23)
!2940 = !DILocation(line: 680, column: 25, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !678, line: 680, column: 25)
!2942 = !DILocation(line: 680, column: 25, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !678, line: 680, column: 25)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !678, line: 680, column: 25)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !678, line: 680, column: 25)
!2946 = !DILocation(line: 680, column: 25, scope: !2944)
!2947 = !DILocation(line: 680, column: 25, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !678, line: 680, column: 25)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !678, line: 680, column: 25)
!2950 = !DILocation(line: 680, column: 25, scope: !2949)
!2951 = !DILocation(line: 680, column: 25, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !678, line: 680, column: 25)
!2953 = distinct !DILexicalBlock(scope: !2945, file: !678, line: 680, column: 25)
!2954 = !DILocation(line: 680, column: 25, scope: !2953)
!2955 = !DILocation(line: 680, column: 25, scope: !2945)
!2956 = !DILocation(line: 680, column: 25, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !678, line: 680, column: 25)
!2958 = distinct !DILexicalBlock(scope: !2938, file: !678, line: 680, column: 25)
!2959 = !DILocation(line: 680, column: 25, scope: !2958)
!2960 = !DILocation(line: 681, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !678, line: 681, column: 25)
!2962 = distinct !DILexicalBlock(scope: !2939, file: !678, line: 681, column: 25)
!2963 = !DILocation(line: 681, column: 25, scope: !2962)
!2964 = !DILocation(line: 682, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !678, line: 682, column: 25)
!2966 = distinct !DILexicalBlock(scope: !2939, file: !678, line: 682, column: 25)
!2967 = !DILocation(line: 682, column: 25, scope: !2966)
!2968 = !DILocation(line: 683, column: 38, scope: !2939)
!2969 = !DILocation(line: 683, column: 33, scope: !2939)
!2970 = !DILocation(line: 684, column: 23, scope: !2939)
!2971 = !DILocation(line: 685, column: 30, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2933, file: !678, line: 685, column: 30)
!2973 = !DILocation(line: 685, column: 30, scope: !2933)
!2974 = !DILocation(line: 687, column: 25, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !678, line: 687, column: 25)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !678, line: 687, column: 25)
!2977 = distinct !DILexicalBlock(scope: !2972, file: !678, line: 686, column: 23)
!2978 = !DILocation(line: 687, column: 25, scope: !2976)
!2979 = !DILocation(line: 689, column: 23, scope: !2977)
!2980 = !DILocation(line: 690, column: 35, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2934, file: !678, line: 690, column: 25)
!2982 = !DILocation(line: 690, column: 30, scope: !2981)
!2983 = !DILocation(line: 690, column: 25, scope: !2934)
!2984 = !DILocation(line: 692, column: 21, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !678, line: 692, column: 21)
!2986 = distinct !DILexicalBlock(scope: !2934, file: !678, line: 692, column: 21)
!2987 = !DILocation(line: 692, column: 21, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !678, line: 692, column: 21)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !678, line: 692, column: 21)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !678, line: 692, column: 21)
!2991 = !DILocation(line: 692, column: 21, scope: !2989)
!2992 = !DILocation(line: 692, column: 21, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !678, line: 692, column: 21)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !678, line: 692, column: 21)
!2995 = !DILocation(line: 692, column: 21, scope: !2994)
!2996 = !DILocation(line: 692, column: 21, scope: !2990)
!2997 = !DILocation(line: 0, scope: !2934)
!2998 = !DILocation(line: 693, column: 21, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !678, line: 693, column: 21)
!3000 = distinct !DILexicalBlock(scope: !2934, file: !678, line: 693, column: 21)
!3001 = !DILocation(line: 693, column: 21, scope: !3000)
!3002 = !DILocation(line: 694, column: 25, scope: !2934)
!3003 = !DILocation(line: 676, column: 17, scope: !2935)
!3004 = distinct !{!3004, !3005, !3006}
!3005 = !DILocation(line: 676, column: 17, scope: !2936)
!3006 = !DILocation(line: 695, column: 19, scope: !2936)
!3007 = !DILocation(line: 409, column: 30, scope: !2718)
!3008 = !DILocation(line: 702, column: 34, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 702, column: 11)
!3010 = !DILocation(line: 704, column: 14, scope: !3009)
!3011 = !DILocation(line: 705, column: 14, scope: !3009)
!3012 = !DILocation(line: 705, column: 35, scope: !3009)
!3013 = !DILocation(line: 705, column: 17, scope: !3009)
!3014 = !DILocation(line: 705, column: 47, scope: !3009)
!3015 = !DILocation(line: 705, column: 65, scope: !3009)
!3016 = !DILocation(line: 706, column: 11, scope: !3009)
!3017 = !DILocation(line: 702, column: 11, scope: !2572)
!3018 = !DILocation(line: 395, column: 15, scope: !2570)
!3019 = !DILocation(line: 709, column: 5, scope: !2572)
!3020 = !DILocation(line: 710, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 710, column: 7)
!3022 = !DILocation(line: 710, column: 7, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3021, file: !678, line: 710, column: 7)
!3024 = !DILocation(line: 710, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !678, line: 710, column: 7)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !678, line: 710, column: 7)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !678, line: 710, column: 7)
!3028 = !DILocation(line: 710, column: 7, scope: !3026)
!3029 = !DILocation(line: 710, column: 7, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !678, line: 710, column: 7)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !678, line: 710, column: 7)
!3032 = !DILocation(line: 710, column: 7, scope: !3031)
!3033 = !DILocation(line: 710, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !678, line: 710, column: 7)
!3035 = distinct !DILexicalBlock(scope: !3027, file: !678, line: 710, column: 7)
!3036 = !DILocation(line: 710, column: 7, scope: !3035)
!3037 = !DILocation(line: 710, column: 7, scope: !3027)
!3038 = !DILocation(line: 710, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !678, line: 710, column: 7)
!3040 = distinct !DILexicalBlock(scope: !3021, file: !678, line: 710, column: 7)
!3041 = !DILocation(line: 710, column: 7, scope: !3040)
!3042 = !DILocation(line: 712, column: 5, scope: !2572)
!3043 = !DILocation(line: 713, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !678, line: 713, column: 7)
!3045 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 713, column: 7)
!3046 = !DILocation(line: 417, column: 21, scope: !2572)
!3047 = !DILocation(line: 713, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !678, line: 713, column: 7)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !678, line: 713, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !678, line: 713, column: 7)
!3051 = !DILocation(line: 713, column: 7, scope: !3049)
!3052 = !DILocation(line: 713, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !678, line: 713, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !678, line: 713, column: 7)
!3055 = !DILocation(line: 713, column: 7, scope: !3054)
!3056 = !DILocation(line: 713, column: 7, scope: !3050)
!3057 = !DILocation(line: 714, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !678, line: 714, column: 7)
!3059 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 714, column: 7)
!3060 = !DILocation(line: 714, column: 7, scope: !3059)
!3061 = !DILocation(line: 716, column: 13, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2572, file: !678, line: 716, column: 11)
!3063 = !DILocation(line: 716, column: 11, scope: !2572)
!3064 = !DILocation(line: 718, column: 5, scope: !2573)
!3065 = !DILocation(line: 395, column: 82, scope: !2573)
!3066 = !DILocation(line: 395, column: 3, scope: !2573)
!3067 = distinct !{!3067, !2714, !3068, !1149}
!3068 = !DILocation(line: 718, column: 5, scope: !2570)
!3069 = !DILocation(line: 720, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 720, column: 7)
!3071 = !DILocation(line: 720, column: 16, scope: !3070)
!3072 = !DILocation(line: 728, column: 51, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 728, column: 7)
!3074 = !DILocation(line: 731, column: 11, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !678, line: 731, column: 11)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !678, line: 730, column: 5)
!3077 = !DILocation(line: 731, column: 11, scope: !3076)
!3078 = !DILocation(line: 732, column: 16, scope: !3075)
!3079 = !DILocation(line: 732, column: 9, scope: !3075)
!3080 = !DILocation(line: 736, column: 18, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3075, file: !678, line: 736, column: 16)
!3082 = !DILocation(line: 736, column: 29, scope: !3081)
!3083 = !DILocation(line: 745, column: 7, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 745, column: 7)
!3085 = !DILocation(line: 745, column: 20, scope: !3084)
!3086 = !DILocation(line: 746, column: 12, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !678, line: 746, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !678, line: 746, column: 5)
!3089 = !DILocation(line: 746, column: 5, scope: !3088)
!3090 = !DILocation(line: 747, column: 7, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !678, line: 747, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !678, line: 747, column: 7)
!3093 = !DILocation(line: 747, column: 7, scope: !3092)
!3094 = !DILocation(line: 746, column: 39, scope: !3087)
!3095 = distinct !{!3095, !3089, !3096, !1149}
!3096 = !DILocation(line: 747, column: 7, scope: !3088)
!3097 = !DILocation(line: 749, column: 11, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 749, column: 7)
!3099 = !DILocation(line: 749, column: 7, scope: !2539)
!3100 = !DILocation(line: 750, column: 5, scope: !3098)
!3101 = !DILocation(line: 750, column: 17, scope: !3098)
!3102 = !DILocation(line: 753, column: 2, scope: !2539)
!3103 = !DILocation(line: 756, column: 51, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !2539, file: !678, line: 756, column: 7)
!3105 = !DILocation(line: 756, column: 21, scope: !3104)
!3106 = !DILocation(line: 760, column: 42, scope: !2539)
!3107 = !DILocation(line: 758, column: 10, scope: !2539)
!3108 = !DILocation(line: 758, column: 3, scope: !2539)
!3109 = !DILocation(line: 762, column: 1, scope: !2539)
!3110 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1227, file: !1227, line: 98, type: !3111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3111 = !DISubroutineType(types: !940)
!3112 = !DISubprogram(name: "iswprint", scope: !3113, file: !3113, line: 120, type: !2915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3114 = distinct !DISubprogram(name: "quotearg_alloc", scope: !678, file: !678, line: 788, type: !3115, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!59, !101, !104, !2432}
!3117 = !{!3118, !3119, !3120}
!3118 = !DILocalVariable(name: "arg", arg: 1, scope: !3114, file: !678, line: 788, type: !101)
!3119 = !DILocalVariable(name: "argsize", arg: 2, scope: !3114, file: !678, line: 788, type: !104)
!3120 = !DILocalVariable(name: "o", arg: 3, scope: !3114, file: !678, line: 789, type: !2432)
!3121 = !DILocation(line: 0, scope: !3114)
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !678, line: 801, type: !101)
!3123 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !678, file: !678, line: 801, type: !3124, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!59, !101, !104, !961, !2432}
!3126 = !{!3122, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!3127 = !DILocalVariable(name: "argsize", arg: 2, scope: !3123, file: !678, line: 801, type: !104)
!3128 = !DILocalVariable(name: "size", arg: 3, scope: !3123, file: !678, line: 801, type: !961)
!3129 = !DILocalVariable(name: "o", arg: 4, scope: !3123, file: !678, line: 802, type: !2432)
!3130 = !DILocalVariable(name: "p", scope: !3123, file: !678, line: 804, type: !2432)
!3131 = !DILocalVariable(name: "saved_errno", scope: !3123, file: !678, line: 805, type: !57)
!3132 = !DILocalVariable(name: "flags", scope: !3123, file: !678, line: 807, type: !57)
!3133 = !DILocalVariable(name: "bufsize", scope: !3123, file: !678, line: 808, type: !104)
!3134 = !DILocalVariable(name: "buf", scope: !3123, file: !678, line: 812, type: !59)
!3135 = !DILocation(line: 0, scope: !3123, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 791, column: 10, scope: !3114)
!3137 = !DILocation(line: 804, column: 37, scope: !3123, inlinedAt: !3136)
!3138 = !DILocation(line: 805, column: 21, scope: !3123, inlinedAt: !3136)
!3139 = !DILocation(line: 807, column: 18, scope: !3123, inlinedAt: !3136)
!3140 = !DILocation(line: 807, column: 24, scope: !3123, inlinedAt: !3136)
!3141 = !DILocation(line: 808, column: 72, scope: !3123, inlinedAt: !3136)
!3142 = !DILocation(line: 809, column: 56, scope: !3123, inlinedAt: !3136)
!3143 = !DILocation(line: 810, column: 49, scope: !3123, inlinedAt: !3136)
!3144 = !DILocation(line: 811, column: 49, scope: !3123, inlinedAt: !3136)
!3145 = !DILocation(line: 808, column: 20, scope: !3123, inlinedAt: !3136)
!3146 = !DILocation(line: 811, column: 62, scope: !3123, inlinedAt: !3136)
!3147 = !DILocation(line: 812, column: 15, scope: !3123, inlinedAt: !3136)
!3148 = !DILocation(line: 813, column: 60, scope: !3123, inlinedAt: !3136)
!3149 = !DILocation(line: 815, column: 32, scope: !3123, inlinedAt: !3136)
!3150 = !DILocation(line: 815, column: 47, scope: !3123, inlinedAt: !3136)
!3151 = !DILocation(line: 813, column: 3, scope: !3123, inlinedAt: !3136)
!3152 = !DILocation(line: 816, column: 9, scope: !3123, inlinedAt: !3136)
!3153 = !DILocation(line: 791, column: 3, scope: !3114)
!3154 = !DILocation(line: 0, scope: !3123)
!3155 = !DILocation(line: 804, column: 37, scope: !3123)
!3156 = !DILocation(line: 805, column: 21, scope: !3123)
!3157 = !DILocation(line: 807, column: 18, scope: !3123)
!3158 = !DILocation(line: 807, column: 27, scope: !3123)
!3159 = !DILocation(line: 807, column: 24, scope: !3123)
!3160 = !DILocation(line: 808, column: 72, scope: !3123)
!3161 = !DILocation(line: 809, column: 56, scope: !3123)
!3162 = !DILocation(line: 810, column: 49, scope: !3123)
!3163 = !DILocation(line: 811, column: 49, scope: !3123)
!3164 = !DILocation(line: 808, column: 20, scope: !3123)
!3165 = !DILocation(line: 811, column: 62, scope: !3123)
!3166 = !DILocation(line: 812, column: 15, scope: !3123)
!3167 = !DILocation(line: 813, column: 60, scope: !3123)
!3168 = !DILocation(line: 815, column: 32, scope: !3123)
!3169 = !DILocation(line: 815, column: 47, scope: !3123)
!3170 = !DILocation(line: 813, column: 3, scope: !3123)
!3171 = !DILocation(line: 816, column: 9, scope: !3123)
!3172 = !DILocation(line: 817, column: 7, scope: !3123)
!3173 = !DILocation(line: 818, column: 11, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3123, file: !678, line: 817, column: 7)
!3175 = !DILocation(line: 818, column: 5, scope: !3174)
!3176 = !DILocation(line: 819, column: 3, scope: !3123)
!3177 = distinct !DISubprogram(name: "quotearg_free", scope: !678, file: !678, line: 837, type: !633, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3178)
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "sv", scope: !3177, file: !678, line: 839, type: !762)
!3180 = !DILocalVariable(name: "i", scope: !3181, file: !678, line: 840, type: !57)
!3181 = distinct !DILexicalBlock(scope: !3177, file: !678, line: 840, column: 3)
!3182 = !DILocation(line: 839, column: 24, scope: !3177)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocation(line: 0, scope: !3181)
!3185 = !DILocation(line: 840, column: 21, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3181, file: !678, line: 840, column: 3)
!3187 = !DILocation(line: 840, column: 3, scope: !3181)
!3188 = !DILocation(line: 842, column: 13, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3177, file: !678, line: 842, column: 7)
!3190 = !{!3191, !1032, i64 8}
!3191 = !{!"slotvec", !1268, i64 0, !1032, i64 8}
!3192 = !DILocation(line: 842, column: 17, scope: !3189)
!3193 = !DILocation(line: 842, column: 7, scope: !3177)
!3194 = !DILocation(line: 841, column: 17, scope: !3186)
!3195 = !DILocation(line: 841, column: 5, scope: !3186)
!3196 = !DILocation(line: 840, column: 32, scope: !3186)
!3197 = distinct !{!3197, !3187, !3198, !1149}
!3198 = !DILocation(line: 841, column: 20, scope: !3181)
!3199 = !DILocation(line: 844, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3189, file: !678, line: 843, column: 5)
!3201 = !DILocation(line: 845, column: 21, scope: !3200)
!3202 = !{!3191, !1268, i64 0}
!3203 = !DILocation(line: 846, column: 20, scope: !3200)
!3204 = !DILocation(line: 847, column: 5, scope: !3200)
!3205 = !DILocation(line: 848, column: 10, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3177, file: !678, line: 848, column: 7)
!3207 = !DILocation(line: 848, column: 7, scope: !3177)
!3208 = !DILocation(line: 850, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !678, line: 849, column: 5)
!3210 = !DILocation(line: 851, column: 15, scope: !3209)
!3211 = !DILocation(line: 852, column: 5, scope: !3209)
!3212 = !DILocation(line: 853, column: 10, scope: !3177)
!3213 = !DILocation(line: 854, column: 1, scope: !3177)
!3214 = distinct !DISubprogram(name: "quotearg_n", scope: !678, file: !678, line: 919, type: !1220, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3215)
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !678, line: 919, type: !57)
!3217 = !DILocalVariable(name: "arg", arg: 2, scope: !3214, file: !678, line: 919, type: !101)
!3218 = !DILocation(line: 0, scope: !3214)
!3219 = !DILocation(line: 921, column: 10, scope: !3214)
!3220 = !DILocation(line: 921, column: 3, scope: !3214)
!3221 = distinct !DISubprogram(name: "quotearg_n_options", scope: !678, file: !678, line: 866, type: !3222, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!59, !57, !101, !104, !2432}
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3235, !3236, !3238, !3239, !3240}
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !678, line: 866, type: !57)
!3226 = !DILocalVariable(name: "arg", arg: 2, scope: !3221, file: !678, line: 866, type: !101)
!3227 = !DILocalVariable(name: "argsize", arg: 3, scope: !3221, file: !678, line: 866, type: !104)
!3228 = !DILocalVariable(name: "options", arg: 4, scope: !3221, file: !678, line: 867, type: !2432)
!3229 = !DILocalVariable(name: "saved_errno", scope: !3221, file: !678, line: 869, type: !57)
!3230 = !DILocalVariable(name: "sv", scope: !3221, file: !678, line: 871, type: !762)
!3231 = !DILocalVariable(name: "nslots_max", scope: !3221, file: !678, line: 873, type: !57)
!3232 = !DILocalVariable(name: "preallocated", scope: !3233, file: !678, line: 879, type: !215)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !678, line: 878, column: 5)
!3234 = distinct !DILexicalBlock(scope: !3221, file: !678, line: 877, column: 7)
!3235 = !DILocalVariable(name: "new_nslots", scope: !3233, file: !678, line: 880, type: !974)
!3236 = !DILocalVariable(name: "size", scope: !3237, file: !678, line: 891, type: !104)
!3237 = distinct !DILexicalBlock(scope: !3221, file: !678, line: 890, column: 3)
!3238 = !DILocalVariable(name: "val", scope: !3237, file: !678, line: 892, type: !59)
!3239 = !DILocalVariable(name: "flags", scope: !3237, file: !678, line: 894, type: !57)
!3240 = !DILocalVariable(name: "qsize", scope: !3237, file: !678, line: 895, type: !104)
!3241 = !DILocation(line: 0, scope: !3221)
!3242 = !DILocation(line: 869, column: 21, scope: !3221)
!3243 = !DILocation(line: 871, column: 24, scope: !3221)
!3244 = !DILocation(line: 874, column: 17, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3221, file: !678, line: 874, column: 7)
!3246 = !DILocation(line: 875, column: 5, scope: !3245)
!3247 = !DILocation(line: 877, column: 7, scope: !3234)
!3248 = !DILocation(line: 877, column: 14, scope: !3234)
!3249 = !DILocation(line: 877, column: 7, scope: !3221)
!3250 = !DILocation(line: 879, column: 31, scope: !3233)
!3251 = !DILocation(line: 0, scope: !3233)
!3252 = !DILocation(line: 880, column: 7, scope: !3233)
!3253 = !DILocation(line: 880, column: 26, scope: !3233)
!3254 = !DILocation(line: 880, column: 13, scope: !3233)
!3255 = !DILocation(line: 882, column: 31, scope: !3233)
!3256 = !DILocation(line: 883, column: 33, scope: !3233)
!3257 = !DILocation(line: 883, column: 42, scope: !3233)
!3258 = !DILocation(line: 883, column: 31, scope: !3233)
!3259 = !DILocation(line: 882, column: 22, scope: !3233)
!3260 = !DILocation(line: 882, column: 15, scope: !3233)
!3261 = !DILocation(line: 884, column: 11, scope: !3233)
!3262 = !DILocation(line: 885, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3233, file: !678, line: 884, column: 11)
!3264 = !{i64 0, i64 8, !1267, i64 8, i64 8, !1031}
!3265 = !DILocation(line: 885, column: 9, scope: !3263)
!3266 = !DILocation(line: 886, column: 20, scope: !3233)
!3267 = !DILocation(line: 886, column: 18, scope: !3233)
!3268 = !DILocation(line: 886, column: 32, scope: !3233)
!3269 = !DILocation(line: 886, column: 43, scope: !3233)
!3270 = !DILocation(line: 886, column: 53, scope: !3233)
!3271 = !DILocation(line: 0, scope: !2647, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 886, column: 7, scope: !3233)
!3273 = !DILocation(line: 59, column: 10, scope: !2647, inlinedAt: !3272)
!3274 = !DILocation(line: 887, column: 16, scope: !3233)
!3275 = !DILocation(line: 887, column: 14, scope: !3233)
!3276 = !DILocation(line: 888, column: 5, scope: !3234)
!3277 = !DILocation(line: 888, column: 5, scope: !3233)
!3278 = !DILocation(line: 891, column: 19, scope: !3237)
!3279 = !DILocation(line: 891, column: 25, scope: !3237)
!3280 = !DILocation(line: 0, scope: !3237)
!3281 = !DILocation(line: 892, column: 23, scope: !3237)
!3282 = !DILocation(line: 894, column: 26, scope: !3237)
!3283 = !DILocation(line: 894, column: 32, scope: !3237)
!3284 = !DILocation(line: 896, column: 55, scope: !3237)
!3285 = !DILocation(line: 897, column: 55, scope: !3237)
!3286 = !DILocation(line: 898, column: 55, scope: !3237)
!3287 = !DILocation(line: 899, column: 55, scope: !3237)
!3288 = !DILocation(line: 895, column: 20, scope: !3237)
!3289 = !DILocation(line: 901, column: 14, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3237, file: !678, line: 901, column: 9)
!3291 = !DILocation(line: 901, column: 9, scope: !3237)
!3292 = !DILocation(line: 903, column: 35, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !678, line: 902, column: 7)
!3294 = !DILocation(line: 903, column: 20, scope: !3293)
!3295 = !DILocation(line: 904, column: 17, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !678, line: 904, column: 13)
!3297 = !DILocation(line: 904, column: 13, scope: !3293)
!3298 = !DILocation(line: 905, column: 11, scope: !3296)
!3299 = !DILocation(line: 906, column: 27, scope: !3293)
!3300 = !DILocation(line: 906, column: 19, scope: !3293)
!3301 = !DILocation(line: 907, column: 69, scope: !3293)
!3302 = !DILocation(line: 909, column: 44, scope: !3293)
!3303 = !DILocation(line: 910, column: 44, scope: !3293)
!3304 = !DILocation(line: 907, column: 9, scope: !3293)
!3305 = !DILocation(line: 911, column: 7, scope: !3293)
!3306 = !DILocation(line: 913, column: 11, scope: !3237)
!3307 = !DILocation(line: 914, column: 5, scope: !3237)
!3308 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !678, file: !678, line: 925, type: !3309, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!59, !57, !101, !104}
!3311 = !{!3312, !3313, !3314}
!3312 = !DILocalVariable(name: "n", arg: 1, scope: !3308, file: !678, line: 925, type: !57)
!3313 = !DILocalVariable(name: "arg", arg: 2, scope: !3308, file: !678, line: 925, type: !101)
!3314 = !DILocalVariable(name: "argsize", arg: 3, scope: !3308, file: !678, line: 925, type: !104)
!3315 = !DILocation(line: 0, scope: !3308)
!3316 = !DILocation(line: 927, column: 10, scope: !3308)
!3317 = !DILocation(line: 927, column: 3, scope: !3308)
!3318 = distinct !DISubprogram(name: "quotearg", scope: !678, file: !678, line: 931, type: !1229, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3319)
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "arg", arg: 1, scope: !3318, file: !678, line: 931, type: !101)
!3321 = !DILocation(line: 0, scope: !3318)
!3322 = !DILocation(line: 0, scope: !3214, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 933, column: 10, scope: !3318)
!3324 = !DILocation(line: 921, column: 10, scope: !3214, inlinedAt: !3323)
!3325 = !DILocation(line: 933, column: 3, scope: !3318)
!3326 = distinct !DISubprogram(name: "quotearg_mem", scope: !678, file: !678, line: 937, type: !3327, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!59, !101, !104}
!3329 = !{!3330, !3331}
!3330 = !DILocalVariable(name: "arg", arg: 1, scope: !3326, file: !678, line: 937, type: !101)
!3331 = !DILocalVariable(name: "argsize", arg: 2, scope: !3326, file: !678, line: 937, type: !104)
!3332 = !DILocation(line: 0, scope: !3326)
!3333 = !DILocation(line: 0, scope: !3308, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 939, column: 10, scope: !3326)
!3335 = !DILocation(line: 927, column: 10, scope: !3308, inlinedAt: !3334)
!3336 = !DILocation(line: 939, column: 3, scope: !3326)
!3337 = distinct !DISubprogram(name: "quotearg_n_style", scope: !678, file: !678, line: 943, type: !3338, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!59, !57, !83, !101}
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "n", arg: 1, scope: !3337, file: !678, line: 943, type: !57)
!3342 = !DILocalVariable(name: "s", arg: 2, scope: !3337, file: !678, line: 943, type: !83)
!3343 = !DILocalVariable(name: "arg", arg: 3, scope: !3337, file: !678, line: 943, type: !101)
!3344 = !DILocalVariable(name: "o", scope: !3337, file: !678, line: 945, type: !2433)
!3345 = !DILocation(line: 0, scope: !3337)
!3346 = !DILocation(line: 945, column: 3, scope: !3337)
!3347 = !DILocation(line: 945, column: 32, scope: !3337)
!3348 = !{!3349}
!3349 = distinct !{!3349, !3350, !"quoting_options_from_style: argument 0"}
!3350 = distinct !{!3350, !"quoting_options_from_style"}
!3351 = !DILocation(line: 945, column: 36, scope: !3337)
!3352 = !DILocalVariable(name: "style", arg: 1, scope: !3353, file: !678, line: 183, type: !83)
!3353 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !678, file: !678, line: 183, type: !3354, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!717, !83}
!3356 = !{!3352, !3357}
!3357 = !DILocalVariable(name: "o", scope: !3353, file: !678, line: 185, type: !717)
!3358 = !DILocation(line: 0, scope: !3353, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 945, column: 36, scope: !3337)
!3360 = !DILocation(line: 185, column: 26, scope: !3353, inlinedAt: !3359)
!3361 = !DILocation(line: 186, column: 13, scope: !3362, inlinedAt: !3359)
!3362 = distinct !DILexicalBlock(scope: !3353, file: !678, line: 186, column: 7)
!3363 = !DILocation(line: 186, column: 7, scope: !3353, inlinedAt: !3359)
!3364 = !DILocation(line: 187, column: 5, scope: !3362, inlinedAt: !3359)
!3365 = !DILocation(line: 188, column: 11, scope: !3353, inlinedAt: !3359)
!3366 = !DILocation(line: 946, column: 10, scope: !3337)
!3367 = !DILocation(line: 947, column: 1, scope: !3337)
!3368 = !DILocation(line: 946, column: 3, scope: !3337)
!3369 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !678, file: !678, line: 950, type: !3370, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!59, !57, !83, !101, !104}
!3372 = !{!3373, !3374, !3375, !3376, !3377}
!3373 = !DILocalVariable(name: "n", arg: 1, scope: !3369, file: !678, line: 950, type: !57)
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !678, line: 950, type: !83)
!3375 = !DILocalVariable(name: "arg", arg: 3, scope: !3369, file: !678, line: 951, type: !101)
!3376 = !DILocalVariable(name: "argsize", arg: 4, scope: !3369, file: !678, line: 951, type: !104)
!3377 = !DILocalVariable(name: "o", scope: !3369, file: !678, line: 953, type: !2433)
!3378 = !DILocation(line: 0, scope: !3369)
!3379 = !DILocation(line: 953, column: 3, scope: !3369)
!3380 = !DILocation(line: 953, column: 32, scope: !3369)
!3381 = !{!3382}
!3382 = distinct !{!3382, !3383, !"quoting_options_from_style: argument 0"}
!3383 = distinct !{!3383, !"quoting_options_from_style"}
!3384 = !DILocation(line: 953, column: 36, scope: !3369)
!3385 = !DILocation(line: 0, scope: !3353, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 953, column: 36, scope: !3369)
!3387 = !DILocation(line: 185, column: 26, scope: !3353, inlinedAt: !3386)
!3388 = !DILocation(line: 186, column: 13, scope: !3362, inlinedAt: !3386)
!3389 = !DILocation(line: 186, column: 7, scope: !3353, inlinedAt: !3386)
!3390 = !DILocation(line: 187, column: 5, scope: !3362, inlinedAt: !3386)
!3391 = !DILocation(line: 188, column: 11, scope: !3353, inlinedAt: !3386)
!3392 = !DILocation(line: 954, column: 10, scope: !3369)
!3393 = !DILocation(line: 955, column: 1, scope: !3369)
!3394 = !DILocation(line: 954, column: 3, scope: !3369)
!3395 = distinct !DISubprogram(name: "quotearg_style", scope: !678, file: !678, line: 958, type: !3396, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!59, !83, !101}
!3398 = !{!3399, !3400}
!3399 = !DILocalVariable(name: "s", arg: 1, scope: !3395, file: !678, line: 958, type: !83)
!3400 = !DILocalVariable(name: "arg", arg: 2, scope: !3395, file: !678, line: 958, type: !101)
!3401 = !DILocation(line: 0, scope: !3395)
!3402 = !DILocation(line: 0, scope: !3337, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 960, column: 10, scope: !3395)
!3404 = !DILocation(line: 945, column: 3, scope: !3337, inlinedAt: !3403)
!3405 = !DILocation(line: 945, column: 32, scope: !3337, inlinedAt: !3403)
!3406 = !{!3407}
!3407 = distinct !{!3407, !3408, !"quoting_options_from_style: argument 0"}
!3408 = distinct !{!3408, !"quoting_options_from_style"}
!3409 = !DILocation(line: 945, column: 36, scope: !3337, inlinedAt: !3403)
!3410 = !DILocation(line: 0, scope: !3353, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 945, column: 36, scope: !3337, inlinedAt: !3403)
!3412 = !DILocation(line: 185, column: 26, scope: !3353, inlinedAt: !3411)
!3413 = !DILocation(line: 186, column: 13, scope: !3362, inlinedAt: !3411)
!3414 = !DILocation(line: 186, column: 7, scope: !3353, inlinedAt: !3411)
!3415 = !DILocation(line: 187, column: 5, scope: !3362, inlinedAt: !3411)
!3416 = !DILocation(line: 188, column: 11, scope: !3353, inlinedAt: !3411)
!3417 = !DILocation(line: 946, column: 10, scope: !3337, inlinedAt: !3403)
!3418 = !DILocation(line: 947, column: 1, scope: !3337, inlinedAt: !3403)
!3419 = !DILocation(line: 960, column: 3, scope: !3395)
!3420 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !678, file: !678, line: 964, type: !3421, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!59, !83, !101, !104}
!3423 = !{!3424, !3425, !3426}
!3424 = !DILocalVariable(name: "s", arg: 1, scope: !3420, file: !678, line: 964, type: !83)
!3425 = !DILocalVariable(name: "arg", arg: 2, scope: !3420, file: !678, line: 964, type: !101)
!3426 = !DILocalVariable(name: "argsize", arg: 3, scope: !3420, file: !678, line: 964, type: !104)
!3427 = !DILocation(line: 0, scope: !3420)
!3428 = !DILocation(line: 0, scope: !3369, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 966, column: 10, scope: !3420)
!3430 = !DILocation(line: 953, column: 3, scope: !3369, inlinedAt: !3429)
!3431 = !DILocation(line: 953, column: 32, scope: !3369, inlinedAt: !3429)
!3432 = !{!3433}
!3433 = distinct !{!3433, !3434, !"quoting_options_from_style: argument 0"}
!3434 = distinct !{!3434, !"quoting_options_from_style"}
!3435 = !DILocation(line: 953, column: 36, scope: !3369, inlinedAt: !3429)
!3436 = !DILocation(line: 0, scope: !3353, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 953, column: 36, scope: !3369, inlinedAt: !3429)
!3438 = !DILocation(line: 185, column: 26, scope: !3353, inlinedAt: !3437)
!3439 = !DILocation(line: 186, column: 13, scope: !3362, inlinedAt: !3437)
!3440 = !DILocation(line: 186, column: 7, scope: !3353, inlinedAt: !3437)
!3441 = !DILocation(line: 187, column: 5, scope: !3362, inlinedAt: !3437)
!3442 = !DILocation(line: 188, column: 11, scope: !3353, inlinedAt: !3437)
!3443 = !DILocation(line: 954, column: 10, scope: !3369, inlinedAt: !3429)
!3444 = !DILocation(line: 955, column: 1, scope: !3369, inlinedAt: !3429)
!3445 = !DILocation(line: 966, column: 3, scope: !3420)
!3446 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !678, file: !678, line: 970, type: !3447, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!59, !101, !104, !4}
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "arg", arg: 1, scope: !3446, file: !678, line: 970, type: !101)
!3451 = !DILocalVariable(name: "argsize", arg: 2, scope: !3446, file: !678, line: 970, type: !104)
!3452 = !DILocalVariable(name: "ch", arg: 3, scope: !3446, file: !678, line: 970, type: !4)
!3453 = !DILocalVariable(name: "options", scope: !3446, file: !678, line: 972, type: !717)
!3454 = !DILocation(line: 0, scope: !3446)
!3455 = !DILocation(line: 972, column: 3, scope: !3446)
!3456 = !DILocation(line: 972, column: 26, scope: !3446)
!3457 = !DILocation(line: 973, column: 13, scope: !3446)
!3458 = !{i64 0, i64 4, !1111, i64 4, i64 4, !1102, i64 8, i64 32, !1111, i64 40, i64 8, !1031, i64 48, i64 8, !1031}
!3459 = !DILocation(line: 0, scope: !2452, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 974, column: 3, scope: !3446)
!3461 = !DILocation(line: 147, column: 41, scope: !2452, inlinedAt: !3460)
!3462 = !DILocation(line: 147, column: 62, scope: !2452, inlinedAt: !3460)
!3463 = !DILocation(line: 147, column: 57, scope: !2452, inlinedAt: !3460)
!3464 = !DILocation(line: 148, column: 15, scope: !2452, inlinedAt: !3460)
!3465 = !DILocation(line: 149, column: 21, scope: !2452, inlinedAt: !3460)
!3466 = !DILocation(line: 149, column: 24, scope: !2452, inlinedAt: !3460)
!3467 = !DILocation(line: 150, column: 19, scope: !2452, inlinedAt: !3460)
!3468 = !DILocation(line: 150, column: 24, scope: !2452, inlinedAt: !3460)
!3469 = !DILocation(line: 150, column: 6, scope: !2452, inlinedAt: !3460)
!3470 = !DILocation(line: 975, column: 10, scope: !3446)
!3471 = !DILocation(line: 976, column: 1, scope: !3446)
!3472 = !DILocation(line: 975, column: 3, scope: !3446)
!3473 = distinct !DISubprogram(name: "quotearg_char", scope: !678, file: !678, line: 979, type: !3474, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!59, !101, !4}
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "arg", arg: 1, scope: !3473, file: !678, line: 979, type: !101)
!3478 = !DILocalVariable(name: "ch", arg: 2, scope: !3473, file: !678, line: 979, type: !4)
!3479 = !DILocation(line: 0, scope: !3473)
!3480 = !DILocation(line: 0, scope: !3446, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 981, column: 10, scope: !3473)
!3482 = !DILocation(line: 972, column: 3, scope: !3446, inlinedAt: !3481)
!3483 = !DILocation(line: 972, column: 26, scope: !3446, inlinedAt: !3481)
!3484 = !DILocation(line: 973, column: 13, scope: !3446, inlinedAt: !3481)
!3485 = !DILocation(line: 0, scope: !2452, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 974, column: 3, scope: !3446, inlinedAt: !3481)
!3487 = !DILocation(line: 147, column: 41, scope: !2452, inlinedAt: !3486)
!3488 = !DILocation(line: 147, column: 62, scope: !2452, inlinedAt: !3486)
!3489 = !DILocation(line: 147, column: 57, scope: !2452, inlinedAt: !3486)
!3490 = !DILocation(line: 148, column: 15, scope: !2452, inlinedAt: !3486)
!3491 = !DILocation(line: 149, column: 21, scope: !2452, inlinedAt: !3486)
!3492 = !DILocation(line: 149, column: 24, scope: !2452, inlinedAt: !3486)
!3493 = !DILocation(line: 150, column: 19, scope: !2452, inlinedAt: !3486)
!3494 = !DILocation(line: 150, column: 24, scope: !2452, inlinedAt: !3486)
!3495 = !DILocation(line: 150, column: 6, scope: !2452, inlinedAt: !3486)
!3496 = !DILocation(line: 975, column: 10, scope: !3446, inlinedAt: !3481)
!3497 = !DILocation(line: 976, column: 1, scope: !3446, inlinedAt: !3481)
!3498 = !DILocation(line: 981, column: 3, scope: !3473)
!3499 = distinct !DISubprogram(name: "quotearg_colon", scope: !678, file: !678, line: 985, type: !1229, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3500)
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "arg", arg: 1, scope: !3499, file: !678, line: 985, type: !101)
!3502 = !DILocation(line: 0, scope: !3499)
!3503 = !DILocation(line: 0, scope: !3473, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 987, column: 10, scope: !3499)
!3505 = !DILocation(line: 0, scope: !3446, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 981, column: 10, scope: !3473, inlinedAt: !3504)
!3507 = !DILocation(line: 972, column: 3, scope: !3446, inlinedAt: !3506)
!3508 = !DILocation(line: 972, column: 26, scope: !3446, inlinedAt: !3506)
!3509 = !DILocation(line: 973, column: 13, scope: !3446, inlinedAt: !3506)
!3510 = !DILocation(line: 0, scope: !2452, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 974, column: 3, scope: !3446, inlinedAt: !3506)
!3512 = !DILocation(line: 147, column: 57, scope: !2452, inlinedAt: !3511)
!3513 = !DILocation(line: 149, column: 21, scope: !2452, inlinedAt: !3511)
!3514 = !DILocation(line: 150, column: 6, scope: !2452, inlinedAt: !3511)
!3515 = !DILocation(line: 975, column: 10, scope: !3446, inlinedAt: !3506)
!3516 = !DILocation(line: 976, column: 1, scope: !3446, inlinedAt: !3506)
!3517 = !DILocation(line: 987, column: 3, scope: !3499)
!3518 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !678, file: !678, line: 991, type: !3327, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3519)
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "arg", arg: 1, scope: !3518, file: !678, line: 991, type: !101)
!3521 = !DILocalVariable(name: "argsize", arg: 2, scope: !3518, file: !678, line: 991, type: !104)
!3522 = !DILocation(line: 0, scope: !3518)
!3523 = !DILocation(line: 0, scope: !3446, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 993, column: 10, scope: !3518)
!3525 = !DILocation(line: 972, column: 3, scope: !3446, inlinedAt: !3524)
!3526 = !DILocation(line: 972, column: 26, scope: !3446, inlinedAt: !3524)
!3527 = !DILocation(line: 973, column: 13, scope: !3446, inlinedAt: !3524)
!3528 = !DILocation(line: 0, scope: !2452, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 974, column: 3, scope: !3446, inlinedAt: !3524)
!3530 = !DILocation(line: 147, column: 57, scope: !2452, inlinedAt: !3529)
!3531 = !DILocation(line: 149, column: 21, scope: !2452, inlinedAt: !3529)
!3532 = !DILocation(line: 150, column: 6, scope: !2452, inlinedAt: !3529)
!3533 = !DILocation(line: 975, column: 10, scope: !3446, inlinedAt: !3524)
!3534 = !DILocation(line: 976, column: 1, scope: !3446, inlinedAt: !3524)
!3535 = !DILocation(line: 993, column: 3, scope: !3518)
!3536 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !678, file: !678, line: 997, type: !3338, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3537)
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DILocalVariable(name: "n", arg: 1, scope: !3536, file: !678, line: 997, type: !57)
!3539 = !DILocalVariable(name: "s", arg: 2, scope: !3536, file: !678, line: 997, type: !83)
!3540 = !DILocalVariable(name: "arg", arg: 3, scope: !3536, file: !678, line: 997, type: !101)
!3541 = !DILocalVariable(name: "options", scope: !3536, file: !678, line: 999, type: !717)
!3542 = !DILocation(line: 185, column: 26, scope: !3353, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 1000, column: 13, scope: !3536)
!3544 = !DILocation(line: 0, scope: !3536)
!3545 = !DILocation(line: 999, column: 3, scope: !3536)
!3546 = !DILocation(line: 999, column: 26, scope: !3536)
!3547 = !DILocation(line: 0, scope: !3353, inlinedAt: !3543)
!3548 = !DILocation(line: 186, column: 13, scope: !3362, inlinedAt: !3543)
!3549 = !DILocation(line: 186, column: 7, scope: !3353, inlinedAt: !3543)
!3550 = !DILocation(line: 187, column: 5, scope: !3362, inlinedAt: !3543)
!3551 = !{!3552}
!3552 = distinct !{!3552, !3553, !"quoting_options_from_style: argument 0"}
!3553 = distinct !{!3553, !"quoting_options_from_style"}
!3554 = !DILocation(line: 1000, column: 13, scope: !3536)
!3555 = !DILocation(line: 0, scope: !2452, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 1001, column: 3, scope: !3536)
!3557 = !DILocation(line: 147, column: 57, scope: !2452, inlinedAt: !3556)
!3558 = !DILocation(line: 149, column: 21, scope: !2452, inlinedAt: !3556)
!3559 = !DILocation(line: 150, column: 6, scope: !2452, inlinedAt: !3556)
!3560 = !DILocation(line: 1002, column: 10, scope: !3536)
!3561 = !DILocation(line: 1003, column: 1, scope: !3536)
!3562 = !DILocation(line: 1002, column: 3, scope: !3536)
!3563 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !678, file: !678, line: 1006, type: !3564, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!59, !57, !101, !101, !101}
!3566 = !{!3567, !3568, !3569, !3570}
!3567 = !DILocalVariable(name: "n", arg: 1, scope: !3563, file: !678, line: 1006, type: !57)
!3568 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3563, file: !678, line: 1006, type: !101)
!3569 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3563, file: !678, line: 1007, type: !101)
!3570 = !DILocalVariable(name: "arg", arg: 4, scope: !3563, file: !678, line: 1007, type: !101)
!3571 = !DILocation(line: 0, scope: !3563)
!3572 = !DILocalVariable(name: "n", arg: 1, scope: !3573, file: !678, line: 1014, type: !57)
!3573 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !678, file: !678, line: 1014, type: !3574, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!59, !57, !101, !101, !101, !104}
!3576 = !{!3572, !3577, !3578, !3579, !3580, !3581}
!3577 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3573, file: !678, line: 1014, type: !101)
!3578 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3573, file: !678, line: 1015, type: !101)
!3579 = !DILocalVariable(name: "arg", arg: 4, scope: !3573, file: !678, line: 1016, type: !101)
!3580 = !DILocalVariable(name: "argsize", arg: 5, scope: !3573, file: !678, line: 1016, type: !104)
!3581 = !DILocalVariable(name: "o", scope: !3573, file: !678, line: 1018, type: !717)
!3582 = !DILocation(line: 0, scope: !3573, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1009, column: 10, scope: !3563)
!3584 = !DILocation(line: 1018, column: 3, scope: !3573, inlinedAt: !3583)
!3585 = !DILocation(line: 1018, column: 26, scope: !3573, inlinedAt: !3583)
!3586 = !DILocation(line: 1018, column: 30, scope: !3573, inlinedAt: !3583)
!3587 = !DILocation(line: 0, scope: !2492, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 1019, column: 3, scope: !3573, inlinedAt: !3583)
!3589 = !DILocation(line: 174, column: 12, scope: !2492, inlinedAt: !3588)
!3590 = !DILocation(line: 175, column: 8, scope: !2505, inlinedAt: !3588)
!3591 = !DILocation(line: 175, column: 19, scope: !2505, inlinedAt: !3588)
!3592 = !DILocation(line: 176, column: 5, scope: !2505, inlinedAt: !3588)
!3593 = !DILocation(line: 177, column: 6, scope: !2492, inlinedAt: !3588)
!3594 = !DILocation(line: 177, column: 17, scope: !2492, inlinedAt: !3588)
!3595 = !DILocation(line: 178, column: 6, scope: !2492, inlinedAt: !3588)
!3596 = !DILocation(line: 178, column: 18, scope: !2492, inlinedAt: !3588)
!3597 = !DILocation(line: 1020, column: 10, scope: !3573, inlinedAt: !3583)
!3598 = !DILocation(line: 1021, column: 1, scope: !3573, inlinedAt: !3583)
!3599 = !DILocation(line: 1009, column: 3, scope: !3563)
!3600 = !DILocation(line: 0, scope: !3573)
!3601 = !DILocation(line: 1018, column: 3, scope: !3573)
!3602 = !DILocation(line: 1018, column: 26, scope: !3573)
!3603 = !DILocation(line: 1018, column: 30, scope: !3573)
!3604 = !DILocation(line: 0, scope: !2492, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 1019, column: 3, scope: !3573)
!3606 = !DILocation(line: 174, column: 12, scope: !2492, inlinedAt: !3605)
!3607 = !DILocation(line: 175, column: 8, scope: !2505, inlinedAt: !3605)
!3608 = !DILocation(line: 175, column: 19, scope: !2505, inlinedAt: !3605)
!3609 = !DILocation(line: 176, column: 5, scope: !2505, inlinedAt: !3605)
!3610 = !DILocation(line: 177, column: 6, scope: !2492, inlinedAt: !3605)
!3611 = !DILocation(line: 177, column: 17, scope: !2492, inlinedAt: !3605)
!3612 = !DILocation(line: 178, column: 6, scope: !2492, inlinedAt: !3605)
!3613 = !DILocation(line: 178, column: 18, scope: !2492, inlinedAt: !3605)
!3614 = !DILocation(line: 1020, column: 10, scope: !3573)
!3615 = !DILocation(line: 1021, column: 1, scope: !3573)
!3616 = !DILocation(line: 1020, column: 3, scope: !3573)
!3617 = distinct !DISubprogram(name: "quotearg_custom", scope: !678, file: !678, line: 1024, type: !3618, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!59, !101, !101, !101}
!3620 = !{!3621, !3622, !3623}
!3621 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3617, file: !678, line: 1024, type: !101)
!3622 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3617, file: !678, line: 1024, type: !101)
!3623 = !DILocalVariable(name: "arg", arg: 3, scope: !3617, file: !678, line: 1025, type: !101)
!3624 = !DILocation(line: 0, scope: !3617)
!3625 = !DILocation(line: 0, scope: !3563, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 1027, column: 10, scope: !3617)
!3627 = !DILocation(line: 0, scope: !3573, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1009, column: 10, scope: !3563, inlinedAt: !3626)
!3629 = !DILocation(line: 1018, column: 3, scope: !3573, inlinedAt: !3628)
!3630 = !DILocation(line: 1018, column: 26, scope: !3573, inlinedAt: !3628)
!3631 = !DILocation(line: 1018, column: 30, scope: !3573, inlinedAt: !3628)
!3632 = !DILocation(line: 0, scope: !2492, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 1019, column: 3, scope: !3573, inlinedAt: !3628)
!3634 = !DILocation(line: 174, column: 12, scope: !2492, inlinedAt: !3633)
!3635 = !DILocation(line: 175, column: 8, scope: !2505, inlinedAt: !3633)
!3636 = !DILocation(line: 175, column: 19, scope: !2505, inlinedAt: !3633)
!3637 = !DILocation(line: 176, column: 5, scope: !2505, inlinedAt: !3633)
!3638 = !DILocation(line: 177, column: 6, scope: !2492, inlinedAt: !3633)
!3639 = !DILocation(line: 177, column: 17, scope: !2492, inlinedAt: !3633)
!3640 = !DILocation(line: 178, column: 6, scope: !2492, inlinedAt: !3633)
!3641 = !DILocation(line: 178, column: 18, scope: !2492, inlinedAt: !3633)
!3642 = !DILocation(line: 1020, column: 10, scope: !3573, inlinedAt: !3628)
!3643 = !DILocation(line: 1021, column: 1, scope: !3573, inlinedAt: !3628)
!3644 = !DILocation(line: 1027, column: 3, scope: !3617)
!3645 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !678, file: !678, line: 1031, type: !3646, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!59, !101, !101, !101, !104}
!3648 = !{!3649, !3650, !3651, !3652}
!3649 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3645, file: !678, line: 1031, type: !101)
!3650 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3645, file: !678, line: 1031, type: !101)
!3651 = !DILocalVariable(name: "arg", arg: 3, scope: !3645, file: !678, line: 1032, type: !101)
!3652 = !DILocalVariable(name: "argsize", arg: 4, scope: !3645, file: !678, line: 1032, type: !104)
!3653 = !DILocation(line: 0, scope: !3645)
!3654 = !DILocation(line: 0, scope: !3573, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 1034, column: 10, scope: !3645)
!3656 = !DILocation(line: 1018, column: 3, scope: !3573, inlinedAt: !3655)
!3657 = !DILocation(line: 1018, column: 26, scope: !3573, inlinedAt: !3655)
!3658 = !DILocation(line: 1018, column: 30, scope: !3573, inlinedAt: !3655)
!3659 = !DILocation(line: 0, scope: !2492, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 1019, column: 3, scope: !3573, inlinedAt: !3655)
!3661 = !DILocation(line: 174, column: 12, scope: !2492, inlinedAt: !3660)
!3662 = !DILocation(line: 175, column: 8, scope: !2505, inlinedAt: !3660)
!3663 = !DILocation(line: 175, column: 19, scope: !2505, inlinedAt: !3660)
!3664 = !DILocation(line: 176, column: 5, scope: !2505, inlinedAt: !3660)
!3665 = !DILocation(line: 177, column: 6, scope: !2492, inlinedAt: !3660)
!3666 = !DILocation(line: 177, column: 17, scope: !2492, inlinedAt: !3660)
!3667 = !DILocation(line: 178, column: 6, scope: !2492, inlinedAt: !3660)
!3668 = !DILocation(line: 178, column: 18, scope: !2492, inlinedAt: !3660)
!3669 = !DILocation(line: 1020, column: 10, scope: !3573, inlinedAt: !3655)
!3670 = !DILocation(line: 1021, column: 1, scope: !3573, inlinedAt: !3655)
!3671 = !DILocation(line: 1034, column: 3, scope: !3645)
!3672 = distinct !DISubprogram(name: "quote_n_mem", scope: !678, file: !678, line: 1049, type: !3673, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3675)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!101, !57, !101, !104}
!3675 = !{!3676, !3677, !3678}
!3676 = !DILocalVariable(name: "n", arg: 1, scope: !3672, file: !678, line: 1049, type: !57)
!3677 = !DILocalVariable(name: "arg", arg: 2, scope: !3672, file: !678, line: 1049, type: !101)
!3678 = !DILocalVariable(name: "argsize", arg: 3, scope: !3672, file: !678, line: 1049, type: !104)
!3679 = !DILocation(line: 0, scope: !3672)
!3680 = !DILocation(line: 1051, column: 10, scope: !3672)
!3681 = !DILocation(line: 1051, column: 3, scope: !3672)
!3682 = distinct !DISubprogram(name: "quote_mem", scope: !678, file: !678, line: 1055, type: !3683, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!101, !101, !104}
!3685 = !{!3686, !3687}
!3686 = !DILocalVariable(name: "arg", arg: 1, scope: !3682, file: !678, line: 1055, type: !101)
!3687 = !DILocalVariable(name: "argsize", arg: 2, scope: !3682, file: !678, line: 1055, type: !104)
!3688 = !DILocation(line: 0, scope: !3682)
!3689 = !DILocation(line: 0, scope: !3672, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1057, column: 10, scope: !3682)
!3691 = !DILocation(line: 1051, column: 10, scope: !3672, inlinedAt: !3690)
!3692 = !DILocation(line: 1057, column: 3, scope: !3682)
!3693 = distinct !DISubprogram(name: "quote_n", scope: !678, file: !678, line: 1061, type: !3694, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!101, !57, !101}
!3696 = !{!3697, !3698}
!3697 = !DILocalVariable(name: "n", arg: 1, scope: !3693, file: !678, line: 1061, type: !57)
!3698 = !DILocalVariable(name: "arg", arg: 2, scope: !3693, file: !678, line: 1061, type: !101)
!3699 = !DILocation(line: 0, scope: !3693)
!3700 = !DILocation(line: 0, scope: !3672, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 1063, column: 10, scope: !3693)
!3702 = !DILocation(line: 1051, column: 10, scope: !3672, inlinedAt: !3701)
!3703 = !DILocation(line: 1063, column: 3, scope: !3693)
!3704 = distinct !DISubprogram(name: "quote", scope: !678, file: !678, line: 1067, type: !3705, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!101, !101}
!3707 = !{!3708}
!3708 = !DILocalVariable(name: "arg", arg: 1, scope: !3704, file: !678, line: 1067, type: !101)
!3709 = !DILocation(line: 0, scope: !3704)
!3710 = !DILocation(line: 0, scope: !3693, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 1069, column: 10, scope: !3704)
!3712 = !DILocation(line: 0, scope: !3672, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 1063, column: 10, scope: !3693, inlinedAt: !3711)
!3714 = !DILocation(line: 1051, column: 10, scope: !3672, inlinedAt: !3713)
!3715 = !DILocation(line: 1069, column: 3, scope: !3704)
!3716 = distinct !DISubprogram(name: "safe_read", scope: !934, file: !934, line: 56, type: !3717, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !933, retainedNodes: !3720)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!976, !57, !3719, !974}
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !934, line: 49, baseType: !98)
!3720 = !{!3721, !3722, !3723, !3724}
!3721 = !DILocalVariable(name: "fd", arg: 1, scope: !3716, file: !934, line: 56, type: !57)
!3722 = !DILocalVariable(name: "buf", arg: 2, scope: !3716, file: !934, line: 56, type: !3719)
!3723 = !DILocalVariable(name: "count", arg: 3, scope: !3716, file: !934, line: 56, type: !974)
!3724 = !DILocalVariable(name: "result", scope: !3725, file: !934, line: 60, type: !3728)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !934, line: 59, column: 5)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !934, line: 58, column: 3)
!3727 = distinct !DILexicalBlock(scope: !3716, file: !934, line: 58, column: 3)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !3729, line: 108, baseType: !1421)
!3729 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!3730 = !DILocation(line: 0, scope: !3716)
!3731 = !DILocation(line: 58, column: 3, scope: !3716)
!3732 = !DILocation(line: 62, column: 11, scope: !3725)
!3733 = !DILocation(line: 60, column: 24, scope: !3725)
!3734 = !DILocation(line: 0, scope: !3725)
!3735 = !DILocation(line: 62, column: 13, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3725, file: !934, line: 62, column: 11)
!3737 = !DILocation(line: 64, column: 16, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3736, file: !934, line: 64, column: 16)
!3739 = !DILocation(line: 64, column: 16, scope: !3736)
!3740 = distinct !{!3740, !3741, !3742}
!3741 = !DILocation(line: 58, column: 3, scope: !3727)
!3742 = !DILocation(line: 70, column: 5, scope: !3727)
!3743 = !DILocation(line: 66, column: 22, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3738, file: !934, line: 66, column: 16)
!3745 = !DILocation(line: 0, scope: !3726)
!3746 = !DILocation(line: 71, column: 1, scope: !3716)
!3747 = distinct !DISubprogram(name: "mkstemp_safer", scope: !942, file: !942, line: 31, type: !3748, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!57, !59}
!3750 = !{!3751}
!3751 = !DILocalVariable(name: "templ", arg: 1, scope: !3747, file: !942, line: 31, type: !59)
!3752 = !DILocation(line: 0, scope: !3747)
!3753 = !DILocation(line: 33, column: 20, scope: !3747)
!3754 = !DILocation(line: 33, column: 10, scope: !3747)
!3755 = !DILocation(line: 33, column: 3, scope: !3747)
!3756 = !DISubprogram(name: "mkstemp", scope: !1227, file: !1227, line: 695, type: !3748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3757 = distinct !DISubprogram(name: "mkostemp_safer", scope: !942, file: !942, line: 40, type: !3758, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!57, !59, !57}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "templ", arg: 1, scope: !3757, file: !942, line: 40, type: !59)
!3762 = !DILocalVariable(name: "flags", arg: 2, scope: !3757, file: !942, line: 40, type: !57)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocation(line: 42, column: 25, scope: !3757)
!3765 = !DILocation(line: 42, column: 10, scope: !3757)
!3766 = !DILocation(line: 42, column: 3, scope: !3757)
!3767 = !DISubprogram(name: "mkostemp", scope: !1227, file: !1227, line: 749, type: !3758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3768 = distinct !DISubprogram(name: "path_search", scope: !776, file: !776, line: 92, type: !3769, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!57, !59, !104, !101, !101, !215}
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3781, !3782}
!3772 = !DILocalVariable(name: "tmpl", arg: 1, scope: !3768, file: !776, line: 92, type: !59)
!3773 = !DILocalVariable(name: "tmpl_len", arg: 2, scope: !3768, file: !776, line: 92, type: !104)
!3774 = !DILocalVariable(name: "dir", arg: 3, scope: !3768, file: !776, line: 92, type: !101)
!3775 = !DILocalVariable(name: "pfx", arg: 4, scope: !3768, file: !776, line: 92, type: !101)
!3776 = !DILocalVariable(name: "try_tmpdir", arg: 5, scope: !3768, file: !776, line: 93, type: !215)
!3777 = !DILocalVariable(name: "plen", scope: !3768, file: !776, line: 95, type: !104)
!3778 = !DILocalVariable(name: "d", scope: !3779, file: !776, line: 110, type: !101)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !776, line: 109, column: 5)
!3780 = distinct !DILexicalBlock(scope: !3768, file: !776, line: 108, column: 7)
!3781 = !DILocalVariable(name: "dlen", scope: !3768, file: !776, line: 143, type: !104)
!3782 = !DILocalVariable(name: "add_slash", scope: !3768, file: !776, line: 145, type: !215)
!3783 = !DILocation(line: 0, scope: !3768)
!3784 = !DILocation(line: 96, column: 8, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3768, file: !776, line: 96, column: 7)
!3786 = !DILocation(line: 96, column: 12, scope: !3785)
!3787 = !DILocation(line: 96, column: 16, scope: !3785)
!3788 = !DILocation(line: 96, column: 7, scope: !3768)
!3789 = !DILocation(line: 103, column: 14, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3785, file: !776, line: 102, column: 5)
!3791 = !DILocation(line: 104, column: 11, scope: !3790)
!3792 = !DILocation(line: 0, scope: !3785)
!3793 = !DILocation(line: 108, column: 7, scope: !3768)
!3794 = !DILocation(line: 110, column: 23, scope: !3779)
!3795 = !DILocation(line: 0, scope: !3779)
!3796 = !DILocation(line: 111, column: 13, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3779, file: !776, line: 111, column: 11)
!3798 = !DILocation(line: 111, column: 21, scope: !3797)
!3799 = !DILocalVariable(name: "dir", arg: 1, scope: !3800, file: !776, line: 79, type: !101)
!3800 = distinct !DISubprogram(name: "direxists", scope: !776, file: !776, line: 79, type: !1357, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3801)
!3801 = !{!3799, !3802}
!3802 = !DILocalVariable(name: "buf", scope: !3800, file: !776, line: 81, type: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3804, line: 26, size: 1152, elements: !3805)
!3804 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!3805 = !{!3806, !3808, !3810, !3812, !3814, !3816, !3818, !3819, !3820, !3821, !3823, !3825, !3833, !3834, !3835}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3803, file: !3804, line: 31, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !255, line: 145, baseType: !106)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3803, file: !3804, line: 36, baseType: !3809, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !255, line: 148, baseType: !106)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3803, file: !3804, line: 44, baseType: !3811, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !255, line: 151, baseType: !106)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3803, file: !3804, line: 45, baseType: !3813, size: 32, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !255, line: 150, baseType: !69)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3803, file: !3804, line: 47, baseType: !3815, size: 32, offset: 224)
!3815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !255, line: 146, baseType: !69)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3803, file: !3804, line: 48, baseType: !3817, size: 32, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !255, line: 147, baseType: !69)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3803, file: !3804, line: 50, baseType: !57, size: 32, offset: 288)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3803, file: !3804, line: 52, baseType: !3807, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3803, file: !3804, line: 57, baseType: !254, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3803, file: !3804, line: 61, baseType: !3822, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !255, line: 175, baseType: !256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3803, file: !3804, line: 63, baseType: !3824, size: 64, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !255, line: 180, baseType: !256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3803, file: !3804, line: 74, baseType: !3826, size: 128, offset: 576)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3827, line: 11, size: 128, elements: !3828)
!3827 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!3828 = !{!3829, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3826, file: !3827, line: 16, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !255, line: 160, baseType: !256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3826, file: !3827, line: 21, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !255, line: 197, baseType: !256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3803, file: !3804, line: 75, baseType: !3826, size: 128, offset: 704)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3803, file: !3804, line: 76, baseType: !3826, size: 128, offset: 832)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3803, file: !3804, line: 89, baseType: !3836, size: 192, offset: 960)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3832, size: 192, elements: !157)
!3837 = !DILocation(line: 0, scope: !3800, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 111, column: 24, scope: !3797)
!3839 = !DILocation(line: 81, column: 3, scope: !3800, inlinedAt: !3838)
!3840 = !DILocation(line: 81, column: 17, scope: !3800, inlinedAt: !3838)
!3841 = !DILocation(line: 82, column: 10, scope: !3800, inlinedAt: !3838)
!3842 = !DILocation(line: 82, column: 43, scope: !3800, inlinedAt: !3838)
!3843 = !DILocation(line: 82, column: 48, scope: !3800, inlinedAt: !3838)
!3844 = !DILocation(line: 83, column: 1, scope: !3800, inlinedAt: !3838)
!3845 = !DILocation(line: 111, column: 11, scope: !3779)
!3846 = !DILocation(line: 113, column: 20, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3797, file: !776, line: 113, column: 16)
!3848 = !DILocation(line: 113, column: 28, scope: !3847)
!3849 = !DILocation(line: 0, scope: !3800, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 113, column: 31, scope: !3847)
!3851 = !DILocation(line: 81, column: 3, scope: !3800, inlinedAt: !3850)
!3852 = !DILocation(line: 81, column: 17, scope: !3800, inlinedAt: !3850)
!3853 = !DILocation(line: 82, column: 10, scope: !3800, inlinedAt: !3850)
!3854 = !DILocation(line: 82, column: 43, scope: !3800, inlinedAt: !3850)
!3855 = !DILocation(line: 82, column: 48, scope: !3800, inlinedAt: !3850)
!3856 = !DILocation(line: 83, column: 1, scope: !3800, inlinedAt: !3850)
!3857 = !DILocation(line: 113, column: 16, scope: !3797)
!3858 = !DILocation(line: 118, column: 11, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3768, file: !776, line: 118, column: 7)
!3860 = !DILocation(line: 118, column: 7, scope: !3768)
!3861 = !DILocation(line: 0, scope: !3800, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 132, column: 11, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !776, line: 132, column: 11)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !776, line: 119, column: 5)
!3865 = !DILocation(line: 81, column: 3, scope: !3800, inlinedAt: !3862)
!3866 = !DILocation(line: 81, column: 17, scope: !3800, inlinedAt: !3862)
!3867 = !DILocation(line: 82, column: 10, scope: !3800, inlinedAt: !3862)
!3868 = !DILocation(line: 82, column: 43, scope: !3800, inlinedAt: !3862)
!3869 = !DILocation(line: 82, column: 48, scope: !3800, inlinedAt: !3862)
!3870 = !DILocation(line: 83, column: 1, scope: !3800, inlinedAt: !3862)
!3871 = !DILocation(line: 132, column: 11, scope: !3864)
!3872 = !DILocation(line: 138, column: 11, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !776, line: 137, column: 9)
!3874 = distinct !DILexicalBlock(scope: !3863, file: !776, line: 134, column: 16)
!3875 = !DILocation(line: 139, column: 11, scope: !3873)
!3876 = !DILocation(line: 143, column: 17, scope: !3768)
!3877 = !DILocation(line: 149, column: 20, scope: !3768)
!3878 = !DILocation(line: 149, column: 25, scope: !3768)
!3879 = !DILocation(line: 149, column: 29, scope: !3768)
!3880 = !DILocation(line: 153, column: 25, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3768, file: !776, line: 153, column: 7)
!3882 = !DILocation(line: 153, column: 23, scope: !3881)
!3883 = !DILocation(line: 153, column: 35, scope: !3881)
!3884 = !DILocation(line: 153, column: 46, scope: !3881)
!3885 = !DILocation(line: 153, column: 16, scope: !3881)
!3886 = !DILocation(line: 153, column: 7, scope: !3768)
!3887 = !DILocation(line: 155, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3881, file: !776, line: 154, column: 5)
!3889 = !DILocation(line: 156, column: 7, scope: !3888)
!3890 = !DILocalVariable(name: "__dest", arg: 1, scope: !3891, file: !1332, line: 26, type: !1335)
!3891 = distinct !DISubprogram(name: "memcpy", scope: !1332, file: !1332, line: 26, type: !1333, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3892)
!3892 = !{!3890, !3893, !3894}
!3893 = !DILocalVariable(name: "__src", arg: 2, scope: !3891, file: !1332, line: 26, type: !1250)
!3894 = !DILocalVariable(name: "__len", arg: 3, scope: !3891, file: !1332, line: 26, type: !104)
!3895 = !DILocation(line: 0, scope: !3891, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 159, column: 3, scope: !3768)
!3897 = !DILocation(line: 29, column: 10, scope: !3891, inlinedAt: !3896)
!3898 = !DILocation(line: 160, column: 3, scope: !3768)
!3899 = !DILocation(line: 161, column: 3, scope: !3768)
!3900 = !DILocation(line: 162, column: 1, scope: !3768)
!3901 = !DISubprogram(name: "secure_getenv", scope: !1227, file: !1227, line: 646, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3902 = !DISubprogram(name: "stat", scope: !3903, file: !3903, line: 205, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3903 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!57, !1092, !3906}
!3906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3907)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3908 = !DISubprogram(name: "__builtin___sprintf_chk", scope: !776, file: !776, line: 160, type: !3909, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!57, !59, !57, !106, !101, null}
!3911 = distinct !DISubprogram(name: "fd_safer", scope: !947, file: !947, line: 37, type: !1576, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !3912)
!3912 = !{!3913, !3914, !3917}
!3913 = !DILocalVariable(name: "fd", arg: 1, scope: !3911, file: !947, line: 37, type: !57)
!3914 = !DILocalVariable(name: "f", scope: !3915, file: !947, line: 41, type: !57)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !947, line: 40, column: 5)
!3916 = distinct !DILexicalBlock(scope: !3911, file: !947, line: 39, column: 7)
!3917 = !DILocalVariable(name: "saved_errno", scope: !3915, file: !947, line: 42, type: !57)
!3918 = !DILocation(line: 0, scope: !3911)
!3919 = !DILocation(line: 39, column: 26, scope: !3916)
!3920 = !DILocation(line: 41, column: 15, scope: !3915)
!3921 = !DILocation(line: 0, scope: !3915)
!3922 = !DILocation(line: 42, column: 25, scope: !3915)
!3923 = !DILocation(line: 43, column: 7, scope: !3915)
!3924 = !DILocation(line: 44, column: 13, scope: !3915)
!3925 = !DILocation(line: 46, column: 5, scope: !3915)
!3926 = !DILocation(line: 48, column: 3, scope: !3911)
!3927 = distinct !DISubprogram(name: "version_etc_arn", scope: !785, file: !785, line: 61, type: !3928, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !3964)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !3930, !101, !101, !101, !99, !104}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3932, file: !232, line: 51, baseType: !57, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3932, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3932, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3932, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3932, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3932, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3932, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3932, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3932, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3932, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3932, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3932, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3932, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3932, file: !232, line: 70, baseType: !3948, size: 64, offset: 832)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3932, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3932, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3932, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3932, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3932, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3932, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3932, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3932, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3932, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3932, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3932, file: !232, line: 93, baseType: !3948, size: 64, offset: 1344)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3932, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3932, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3932, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3932, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970}
!3965 = !DILocalVariable(name: "stream", arg: 1, scope: !3927, file: !785, line: 61, type: !3930)
!3966 = !DILocalVariable(name: "command_name", arg: 2, scope: !3927, file: !785, line: 62, type: !101)
!3967 = !DILocalVariable(name: "package", arg: 3, scope: !3927, file: !785, line: 62, type: !101)
!3968 = !DILocalVariable(name: "version", arg: 4, scope: !3927, file: !785, line: 63, type: !101)
!3969 = !DILocalVariable(name: "authors", arg: 5, scope: !3927, file: !785, line: 64, type: !99)
!3970 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3927, file: !785, line: 64, type: !104)
!3971 = !DILocation(line: 0, scope: !3927)
!3972 = !DILocation(line: 66, column: 7, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3927, file: !785, line: 66, column: 7)
!3974 = !DILocation(line: 66, column: 7, scope: !3927)
!3975 = !DILocation(line: 67, column: 5, scope: !3973)
!3976 = !DILocation(line: 69, column: 5, scope: !3973)
!3977 = !DILocation(line: 83, column: 3, scope: !3927)
!3978 = !DILocation(line: 85, column: 3, scope: !3927)
!3979 = !DILocation(line: 88, column: 3, scope: !3927)
!3980 = !DILocation(line: 95, column: 3, scope: !3927)
!3981 = !DILocation(line: 97, column: 3, scope: !3927)
!3982 = !DILocation(line: 105, column: 7, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3927, file: !785, line: 98, column: 5)
!3984 = !DILocation(line: 106, column: 7, scope: !3983)
!3985 = !DILocation(line: 109, column: 7, scope: !3983)
!3986 = !DILocation(line: 110, column: 7, scope: !3983)
!3987 = !DILocation(line: 113, column: 7, scope: !3983)
!3988 = !DILocation(line: 115, column: 7, scope: !3983)
!3989 = !DILocation(line: 120, column: 7, scope: !3983)
!3990 = !DILocation(line: 122, column: 7, scope: !3983)
!3991 = !DILocation(line: 127, column: 7, scope: !3983)
!3992 = !DILocation(line: 129, column: 7, scope: !3983)
!3993 = !DILocation(line: 134, column: 7, scope: !3983)
!3994 = !DILocation(line: 137, column: 7, scope: !3983)
!3995 = !DILocation(line: 142, column: 7, scope: !3983)
!3996 = !DILocation(line: 145, column: 7, scope: !3983)
!3997 = !DILocation(line: 150, column: 7, scope: !3983)
!3998 = !DILocation(line: 154, column: 7, scope: !3983)
!3999 = !DILocation(line: 159, column: 7, scope: !3983)
!4000 = !DILocation(line: 163, column: 7, scope: !3983)
!4001 = !DILocation(line: 170, column: 7, scope: !3983)
!4002 = !DILocation(line: 174, column: 7, scope: !3983)
!4003 = !DILocation(line: 176, column: 1, scope: !3927)
!4004 = distinct !DISubprogram(name: "version_etc_ar", scope: !785, file: !785, line: 183, type: !4005, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3930, !101, !101, !101, !99}
!4007 = !{!4008, !4009, !4010, !4011, !4012, !4013}
!4008 = !DILocalVariable(name: "stream", arg: 1, scope: !4004, file: !785, line: 183, type: !3930)
!4009 = !DILocalVariable(name: "command_name", arg: 2, scope: !4004, file: !785, line: 184, type: !101)
!4010 = !DILocalVariable(name: "package", arg: 3, scope: !4004, file: !785, line: 184, type: !101)
!4011 = !DILocalVariable(name: "version", arg: 4, scope: !4004, file: !785, line: 185, type: !101)
!4012 = !DILocalVariable(name: "authors", arg: 5, scope: !4004, file: !785, line: 185, type: !99)
!4013 = !DILocalVariable(name: "n_authors", scope: !4004, file: !785, line: 187, type: !104)
!4014 = !DILocation(line: 0, scope: !4004)
!4015 = !DILocation(line: 189, column: 8, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4004, file: !785, line: 189, column: 3)
!4017 = !DILocation(line: 189, scope: !4016)
!4018 = !DILocation(line: 189, column: 23, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4016, file: !785, line: 189, column: 3)
!4020 = !DILocation(line: 189, column: 3, scope: !4016)
!4021 = !DILocation(line: 189, column: 52, scope: !4019)
!4022 = distinct !{!4022, !4020, !4023, !1149}
!4023 = !DILocation(line: 190, column: 5, scope: !4016)
!4024 = !DILocation(line: 191, column: 3, scope: !4004)
!4025 = !DILocation(line: 192, column: 1, scope: !4004)
!4026 = distinct !DISubprogram(name: "version_etc_va", scope: !785, file: !785, line: 199, type: !4027, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4037)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3930, !101, !101, !101, !4029}
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4031)
!4031 = !{!4032, !4034, !4035, !4036}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4030, file: !4033, line: 192, baseType: !69, size: 32)
!4033 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4030, file: !4033, line: 192, baseType: !69, size: 32, offset: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4030, file: !4033, line: 192, baseType: !98, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4030, file: !4033, line: 192, baseType: !98, size: 64, offset: 128)
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4044}
!4038 = !DILocalVariable(name: "stream", arg: 1, scope: !4026, file: !785, line: 199, type: !3930)
!4039 = !DILocalVariable(name: "command_name", arg: 2, scope: !4026, file: !785, line: 200, type: !101)
!4040 = !DILocalVariable(name: "package", arg: 3, scope: !4026, file: !785, line: 200, type: !101)
!4041 = !DILocalVariable(name: "version", arg: 4, scope: !4026, file: !785, line: 201, type: !101)
!4042 = !DILocalVariable(name: "authors", arg: 5, scope: !4026, file: !785, line: 201, type: !4029)
!4043 = !DILocalVariable(name: "n_authors", scope: !4026, file: !785, line: 203, type: !104)
!4044 = !DILocalVariable(name: "authtab", scope: !4026, file: !785, line: 204, type: !4045)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 640, elements: !122)
!4046 = !DILocation(line: 0, scope: !4026)
!4047 = !DILocation(line: 204, column: 3, scope: !4026)
!4048 = !DILocation(line: 204, column: 15, scope: !4026)
!4049 = !DILocation(line: 208, column: 35, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !785, line: 206, column: 3)
!4051 = distinct !DILexicalBlock(scope: !4026, file: !785, line: 206, column: 3)
!4052 = !DILocation(line: 208, column: 33, scope: !4050)
!4053 = !DILocation(line: 208, column: 67, scope: !4050)
!4054 = !DILocation(line: 206, column: 3, scope: !4051)
!4055 = !DILocation(line: 208, column: 14, scope: !4050)
!4056 = !DILocation(line: 0, scope: !4051)
!4057 = !DILocation(line: 211, column: 3, scope: !4026)
!4058 = !DILocation(line: 213, column: 1, scope: !4026)
!4059 = distinct !DISubprogram(name: "version_etc", scope: !785, file: !785, line: 230, type: !4060, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !3930, !101, !101, !101, null}
!4062 = !{!4063, !4064, !4065, !4066, !4067}
!4063 = !DILocalVariable(name: "stream", arg: 1, scope: !4059, file: !785, line: 230, type: !3930)
!4064 = !DILocalVariable(name: "command_name", arg: 2, scope: !4059, file: !785, line: 231, type: !101)
!4065 = !DILocalVariable(name: "package", arg: 3, scope: !4059, file: !785, line: 231, type: !101)
!4066 = !DILocalVariable(name: "version", arg: 4, scope: !4059, file: !785, line: 232, type: !101)
!4067 = !DILocalVariable(name: "authors", scope: !4059, file: !785, line: 234, type: !4068)
!4068 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1097, line: 52, baseType: !4069)
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2123, line: 14, baseType: !4070)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4033, baseType: !4071)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4030, size: 192, elements: !117)
!4072 = !DILocation(line: 0, scope: !4059)
!4073 = !DILocation(line: 234, column: 3, scope: !4059)
!4074 = !DILocation(line: 234, column: 11, scope: !4059)
!4075 = !DILocation(line: 235, column: 3, scope: !4059)
!4076 = !DILocation(line: 236, column: 3, scope: !4059)
!4077 = !DILocation(line: 237, column: 3, scope: !4059)
!4078 = !DILocation(line: 238, column: 1, scope: !4059)
!4079 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !785, file: !785, line: 241, type: !633, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !1040)
!4080 = !DILocation(line: 243, column: 3, scope: !4079)
!4081 = !DILocation(line: 248, column: 3, scope: !4079)
!4082 = !DILocation(line: 254, column: 3, scope: !4079)
!4083 = !DILocation(line: 259, column: 3, scope: !4079)
!4084 = !DILocation(line: 261, column: 1, scope: !4079)
!4085 = distinct !DISubprogram(name: "xnrealloc", scope: !4086, file: !4086, line: 147, type: !4087, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4089)
!4086 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!98, !98, !104, !104}
!4089 = !{!4090, !4091, !4092}
!4090 = !DILocalVariable(name: "p", arg: 1, scope: !4085, file: !4086, line: 147, type: !98)
!4091 = !DILocalVariable(name: "n", arg: 2, scope: !4085, file: !4086, line: 147, type: !104)
!4092 = !DILocalVariable(name: "s", arg: 3, scope: !4085, file: !4086, line: 147, type: !104)
!4093 = !DILocation(line: 0, scope: !4085)
!4094 = !DILocalVariable(name: "p", arg: 1, scope: !4095, file: !955, line: 83, type: !98)
!4095 = distinct !DISubprogram(name: "xreallocarray", scope: !955, file: !955, line: 83, type: !4087, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4096)
!4096 = !{!4094, !4097, !4098}
!4097 = !DILocalVariable(name: "n", arg: 2, scope: !4095, file: !955, line: 83, type: !104)
!4098 = !DILocalVariable(name: "s", arg: 3, scope: !4095, file: !955, line: 83, type: !104)
!4099 = !DILocation(line: 0, scope: !4095, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 149, column: 10, scope: !4085)
!4101 = !DILocation(line: 85, column: 25, scope: !4095, inlinedAt: !4100)
!4102 = !DILocalVariable(name: "p", arg: 1, scope: !4103, file: !955, line: 37, type: !98)
!4103 = distinct !DISubprogram(name: "check_nonnull", scope: !955, file: !955, line: 37, type: !4104, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!98, !98}
!4106 = !{!4102}
!4107 = !DILocation(line: 0, scope: !4103, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 85, column: 10, scope: !4095, inlinedAt: !4100)
!4109 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4108)
!4110 = distinct !DILexicalBlock(scope: !4103, file: !955, line: 39, column: 7)
!4111 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4108)
!4112 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4108)
!4113 = !DILocation(line: 149, column: 3, scope: !4085)
!4114 = !DILocation(line: 0, scope: !4095)
!4115 = !DILocation(line: 85, column: 25, scope: !4095)
!4116 = !DILocation(line: 0, scope: !4103, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 85, column: 10, scope: !4095)
!4118 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4117)
!4119 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4117)
!4120 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4117)
!4121 = !DILocation(line: 85, column: 3, scope: !4095)
!4122 = distinct !DISubprogram(name: "xmalloc", scope: !955, file: !955, line: 47, type: !4123, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4125)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!98, !104}
!4125 = !{!4126}
!4126 = !DILocalVariable(name: "s", arg: 1, scope: !4122, file: !955, line: 47, type: !104)
!4127 = !DILocation(line: 0, scope: !4122)
!4128 = !DILocation(line: 49, column: 25, scope: !4122)
!4129 = !DILocation(line: 0, scope: !4103, inlinedAt: !4130)
!4130 = distinct !DILocation(line: 49, column: 10, scope: !4122)
!4131 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4130)
!4132 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4130)
!4133 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4130)
!4134 = !DILocation(line: 49, column: 3, scope: !4122)
!4135 = distinct !DISubprogram(name: "ximalloc", scope: !955, file: !955, line: 53, type: !4136, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!98, !974}
!4138 = !{!4139}
!4139 = !DILocalVariable(name: "s", arg: 1, scope: !4135, file: !955, line: 53, type: !974)
!4140 = !DILocation(line: 0, scope: !4135)
!4141 = !DILocalVariable(name: "s", arg: 1, scope: !4142, file: !4143, line: 55, type: !974)
!4142 = distinct !DISubprogram(name: "imalloc", scope: !4143, file: !4143, line: 55, type: !4136, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4144)
!4143 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4144 = !{!4141}
!4145 = !DILocation(line: 0, scope: !4142, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 55, column: 25, scope: !4135)
!4147 = !DILocation(line: 57, column: 26, scope: !4142, inlinedAt: !4146)
!4148 = !DILocation(line: 0, scope: !4103, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 55, column: 10, scope: !4135)
!4150 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4149)
!4151 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4149)
!4152 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4149)
!4153 = !DILocation(line: 55, column: 3, scope: !4135)
!4154 = distinct !DISubprogram(name: "xcharalloc", scope: !955, file: !955, line: 59, type: !4155, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!59, !104}
!4157 = !{!4158}
!4158 = !DILocalVariable(name: "n", arg: 1, scope: !4154, file: !955, line: 59, type: !104)
!4159 = !DILocation(line: 0, scope: !4154)
!4160 = !DILocation(line: 0, scope: !4122, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 61, column: 10, scope: !4154)
!4162 = !DILocation(line: 49, column: 25, scope: !4122, inlinedAt: !4161)
!4163 = !DILocation(line: 0, scope: !4103, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 49, column: 10, scope: !4122, inlinedAt: !4161)
!4165 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4164)
!4166 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4164)
!4167 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4164)
!4168 = !DILocation(line: 61, column: 3, scope: !4154)
!4169 = distinct !DISubprogram(name: "xrealloc", scope: !955, file: !955, line: 68, type: !1822, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4170)
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "p", arg: 1, scope: !4169, file: !955, line: 68, type: !98)
!4172 = !DILocalVariable(name: "s", arg: 2, scope: !4169, file: !955, line: 68, type: !104)
!4173 = !DILocation(line: 0, scope: !4169)
!4174 = !DILocalVariable(name: "ptr", arg: 1, scope: !4175, file: !1821, line: 2057, type: !98)
!4175 = distinct !DISubprogram(name: "rpl_realloc", scope: !1821, file: !1821, line: 2057, type: !1822, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4176)
!4176 = !{!4174, !4177}
!4177 = !DILocalVariable(name: "size", arg: 2, scope: !4175, file: !1821, line: 2057, type: !104)
!4178 = !DILocation(line: 0, scope: !4175, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 70, column: 25, scope: !4169)
!4180 = !DILocation(line: 2059, column: 24, scope: !4175, inlinedAt: !4179)
!4181 = !DILocation(line: 2059, column: 10, scope: !4175, inlinedAt: !4179)
!4182 = !DILocation(line: 0, scope: !4103, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 70, column: 10, scope: !4169)
!4184 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4183)
!4185 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4183)
!4186 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4183)
!4187 = !DILocation(line: 70, column: 3, scope: !4169)
!4188 = distinct !DISubprogram(name: "xirealloc", scope: !955, file: !955, line: 74, type: !4189, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4191)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!98, !98, !974}
!4191 = !{!4192, !4193}
!4192 = !DILocalVariable(name: "p", arg: 1, scope: !4188, file: !955, line: 74, type: !98)
!4193 = !DILocalVariable(name: "s", arg: 2, scope: !4188, file: !955, line: 74, type: !974)
!4194 = !DILocation(line: 0, scope: !4188)
!4195 = !DILocalVariable(name: "p", arg: 1, scope: !4196, file: !4143, line: 66, type: !98)
!4196 = distinct !DISubprogram(name: "irealloc", scope: !4143, file: !4143, line: 66, type: !4189, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4197)
!4197 = !{!4195, !4198}
!4198 = !DILocalVariable(name: "s", arg: 2, scope: !4196, file: !4143, line: 66, type: !974)
!4199 = !DILocation(line: 0, scope: !4196, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 76, column: 25, scope: !4188)
!4201 = !DILocation(line: 0, scope: !4175, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 68, column: 26, scope: !4196, inlinedAt: !4200)
!4203 = !DILocation(line: 2059, column: 24, scope: !4175, inlinedAt: !4202)
!4204 = !DILocation(line: 2059, column: 10, scope: !4175, inlinedAt: !4202)
!4205 = !DILocation(line: 0, scope: !4103, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 76, column: 10, scope: !4188)
!4207 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4206)
!4208 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4206)
!4209 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4206)
!4210 = !DILocation(line: 76, column: 3, scope: !4188)
!4211 = distinct !DISubprogram(name: "xireallocarray", scope: !955, file: !955, line: 89, type: !4212, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4214)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!98, !98, !974, !974}
!4214 = !{!4215, !4216, !4217}
!4215 = !DILocalVariable(name: "p", arg: 1, scope: !4211, file: !955, line: 89, type: !98)
!4216 = !DILocalVariable(name: "n", arg: 2, scope: !4211, file: !955, line: 89, type: !974)
!4217 = !DILocalVariable(name: "s", arg: 3, scope: !4211, file: !955, line: 89, type: !974)
!4218 = !DILocation(line: 0, scope: !4211)
!4219 = !DILocalVariable(name: "p", arg: 1, scope: !4220, file: !4143, line: 98, type: !98)
!4220 = distinct !DISubprogram(name: "ireallocarray", scope: !4143, file: !4143, line: 98, type: !4212, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4221)
!4221 = !{!4219, !4222, !4223}
!4222 = !DILocalVariable(name: "n", arg: 2, scope: !4220, file: !4143, line: 98, type: !974)
!4223 = !DILocalVariable(name: "s", arg: 3, scope: !4220, file: !4143, line: 98, type: !974)
!4224 = !DILocation(line: 0, scope: !4220, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 91, column: 25, scope: !4211)
!4226 = !DILocation(line: 101, column: 13, scope: !4220, inlinedAt: !4225)
!4227 = !DILocation(line: 0, scope: !4103, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 91, column: 10, scope: !4211)
!4229 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4228)
!4230 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4228)
!4231 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4228)
!4232 = !DILocation(line: 91, column: 3, scope: !4211)
!4233 = distinct !DISubprogram(name: "xnmalloc", scope: !955, file: !955, line: 98, type: !4234, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!98, !104, !104}
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "n", arg: 1, scope: !4233, file: !955, line: 98, type: !104)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4233, file: !955, line: 98, type: !104)
!4239 = !DILocation(line: 0, scope: !4233)
!4240 = !DILocation(line: 0, scope: !4095, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 100, column: 10, scope: !4233)
!4242 = !DILocation(line: 85, column: 25, scope: !4095, inlinedAt: !4241)
!4243 = !DILocation(line: 0, scope: !4103, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 85, column: 10, scope: !4095, inlinedAt: !4241)
!4245 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4244)
!4248 = !DILocation(line: 100, column: 3, scope: !4233)
!4249 = distinct !DISubprogram(name: "xinmalloc", scope: !955, file: !955, line: 104, type: !4250, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!98, !974, !974}
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "n", arg: 1, scope: !4249, file: !955, line: 104, type: !974)
!4254 = !DILocalVariable(name: "s", arg: 2, scope: !4249, file: !955, line: 104, type: !974)
!4255 = !DILocation(line: 0, scope: !4249)
!4256 = !DILocation(line: 0, scope: !4211, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 106, column: 10, scope: !4249)
!4258 = !DILocation(line: 0, scope: !4220, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 91, column: 25, scope: !4211, inlinedAt: !4257)
!4260 = !DILocation(line: 101, column: 13, scope: !4220, inlinedAt: !4259)
!4261 = !DILocation(line: 0, scope: !4103, inlinedAt: !4262)
!4262 = distinct !DILocation(line: 91, column: 10, scope: !4211, inlinedAt: !4257)
!4263 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4262)
!4264 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4262)
!4265 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4262)
!4266 = !DILocation(line: 106, column: 3, scope: !4249)
!4267 = distinct !DISubprogram(name: "x2realloc", scope: !955, file: !955, line: 116, type: !4268, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!98, !98, !961}
!4270 = !{!4271, !4272}
!4271 = !DILocalVariable(name: "p", arg: 1, scope: !4267, file: !955, line: 116, type: !98)
!4272 = !DILocalVariable(name: "ps", arg: 2, scope: !4267, file: !955, line: 116, type: !961)
!4273 = !DILocation(line: 0, scope: !4267)
!4274 = !DILocation(line: 0, scope: !958, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 118, column: 10, scope: !4267)
!4276 = !DILocation(line: 178, column: 14, scope: !958, inlinedAt: !4275)
!4277 = !DILocation(line: 180, column: 9, scope: !4278, inlinedAt: !4275)
!4278 = distinct !DILexicalBlock(scope: !958, file: !955, line: 180, column: 7)
!4279 = !DILocation(line: 180, column: 7, scope: !958, inlinedAt: !4275)
!4280 = !DILocation(line: 182, column: 13, scope: !4281, inlinedAt: !4275)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !955, line: 182, column: 11)
!4282 = distinct !DILexicalBlock(scope: !4278, file: !955, line: 181, column: 5)
!4283 = !DILocation(line: 182, column: 11, scope: !4282, inlinedAt: !4275)
!4284 = !DILocation(line: 197, column: 11, scope: !4285, inlinedAt: !4275)
!4285 = distinct !DILexicalBlock(scope: !4286, file: !955, line: 197, column: 11)
!4286 = distinct !DILexicalBlock(scope: !4278, file: !955, line: 195, column: 5)
!4287 = !DILocation(line: 197, column: 11, scope: !4286, inlinedAt: !4275)
!4288 = !DILocation(line: 198, column: 9, scope: !4285, inlinedAt: !4275)
!4289 = !DILocation(line: 0, scope: !4095, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 201, column: 7, scope: !958, inlinedAt: !4275)
!4291 = !DILocation(line: 85, column: 25, scope: !4095, inlinedAt: !4290)
!4292 = !DILocation(line: 0, scope: !4103, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 85, column: 10, scope: !4095, inlinedAt: !4290)
!4294 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4293)
!4295 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4293)
!4296 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4293)
!4297 = !DILocation(line: 202, column: 7, scope: !958, inlinedAt: !4275)
!4298 = !DILocation(line: 118, column: 3, scope: !4267)
!4299 = !DILocation(line: 0, scope: !958)
!4300 = !DILocation(line: 178, column: 14, scope: !958)
!4301 = !DILocation(line: 180, column: 9, scope: !4278)
!4302 = !DILocation(line: 180, column: 7, scope: !958)
!4303 = !DILocation(line: 182, column: 13, scope: !4281)
!4304 = !DILocation(line: 182, column: 11, scope: !4282)
!4305 = !DILocation(line: 190, column: 30, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4281, file: !955, line: 183, column: 9)
!4307 = !DILocation(line: 191, column: 16, scope: !4306)
!4308 = !DILocation(line: 191, column: 13, scope: !4306)
!4309 = !DILocation(line: 192, column: 9, scope: !4306)
!4310 = !DILocation(line: 197, column: 11, scope: !4285)
!4311 = !DILocation(line: 197, column: 11, scope: !4286)
!4312 = !DILocation(line: 198, column: 9, scope: !4285)
!4313 = !DILocation(line: 0, scope: !4095, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 201, column: 7, scope: !958)
!4315 = !DILocation(line: 85, column: 25, scope: !4095, inlinedAt: !4314)
!4316 = !DILocation(line: 0, scope: !4103, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 85, column: 10, scope: !4095, inlinedAt: !4314)
!4318 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4317)
!4319 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4317)
!4320 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4317)
!4321 = !DILocation(line: 202, column: 7, scope: !958)
!4322 = !DILocation(line: 203, column: 3, scope: !958)
!4323 = !DILocation(line: 0, scope: !970)
!4324 = !DILocation(line: 230, column: 14, scope: !970)
!4325 = !DILocation(line: 238, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !970, file: !955, line: 238, column: 7)
!4327 = !DILocation(line: 238, column: 7, scope: !970)
!4328 = !DILocation(line: 240, column: 9, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !970, file: !955, line: 240, column: 7)
!4330 = !DILocation(line: 240, column: 18, scope: !4329)
!4331 = !DILocation(line: 253, column: 8, scope: !970)
!4332 = !DILocation(line: 258, column: 27, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !955, line: 257, column: 5)
!4334 = distinct !DILexicalBlock(scope: !970, file: !955, line: 256, column: 7)
!4335 = !DILocation(line: 259, column: 50, scope: !4333)
!4336 = !DILocation(line: 259, column: 32, scope: !4333)
!4337 = !DILocation(line: 260, column: 5, scope: !4333)
!4338 = !DILocation(line: 262, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !970, file: !955, line: 262, column: 7)
!4340 = !DILocation(line: 262, column: 7, scope: !970)
!4341 = !DILocation(line: 263, column: 9, scope: !4339)
!4342 = !DILocation(line: 263, column: 5, scope: !4339)
!4343 = !DILocation(line: 264, column: 9, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !970, file: !955, line: 264, column: 7)
!4345 = !DILocation(line: 264, column: 14, scope: !4344)
!4346 = !DILocation(line: 265, column: 7, scope: !4344)
!4347 = !DILocation(line: 265, column: 11, scope: !4344)
!4348 = !DILocation(line: 266, column: 11, scope: !4344)
!4349 = !DILocation(line: 267, column: 14, scope: !4344)
!4350 = !DILocation(line: 264, column: 7, scope: !970)
!4351 = !DILocation(line: 268, column: 5, scope: !4344)
!4352 = !DILocation(line: 0, scope: !4169, inlinedAt: !4353)
!4353 = distinct !DILocation(line: 269, column: 8, scope: !970)
!4354 = !DILocation(line: 0, scope: !4175, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 70, column: 25, scope: !4169, inlinedAt: !4353)
!4356 = !DILocation(line: 2059, column: 24, scope: !4175, inlinedAt: !4355)
!4357 = !DILocation(line: 2059, column: 10, scope: !4175, inlinedAt: !4355)
!4358 = !DILocation(line: 0, scope: !4103, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 70, column: 10, scope: !4169, inlinedAt: !4353)
!4360 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4359)
!4361 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4359)
!4362 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4359)
!4363 = !DILocation(line: 270, column: 7, scope: !970)
!4364 = !DILocation(line: 271, column: 3, scope: !970)
!4365 = distinct !DISubprogram(name: "xzalloc", scope: !955, file: !955, line: 279, type: !4123, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4366)
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "s", arg: 1, scope: !4365, file: !955, line: 279, type: !104)
!4368 = !DILocation(line: 0, scope: !4365)
!4369 = !DILocalVariable(name: "n", arg: 1, scope: !4370, file: !955, line: 294, type: !104)
!4370 = distinct !DISubprogram(name: "xcalloc", scope: !955, file: !955, line: 294, type: !4234, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4371)
!4371 = !{!4369, !4372}
!4372 = !DILocalVariable(name: "s", arg: 2, scope: !4370, file: !955, line: 294, type: !104)
!4373 = !DILocation(line: 0, scope: !4370, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 281, column: 10, scope: !4365)
!4375 = !DILocation(line: 296, column: 25, scope: !4370, inlinedAt: !4374)
!4376 = !DILocation(line: 0, scope: !4103, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 296, column: 10, scope: !4370, inlinedAt: !4374)
!4378 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4377)
!4379 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4377)
!4380 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4377)
!4381 = !DILocation(line: 281, column: 3, scope: !4365)
!4382 = !DISubprogram(name: "calloc", scope: !1227, file: !1227, line: 543, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!4383 = !DILocation(line: 0, scope: !4370)
!4384 = !DILocation(line: 296, column: 25, scope: !4370)
!4385 = !DILocation(line: 0, scope: !4103, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 296, column: 10, scope: !4370)
!4387 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4386)
!4388 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4386)
!4389 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4386)
!4390 = !DILocation(line: 296, column: 3, scope: !4370)
!4391 = distinct !DISubprogram(name: "xizalloc", scope: !955, file: !955, line: 285, type: !4136, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4392)
!4392 = !{!4393}
!4393 = !DILocalVariable(name: "s", arg: 1, scope: !4391, file: !955, line: 285, type: !974)
!4394 = !DILocation(line: 0, scope: !4391)
!4395 = !DILocalVariable(name: "n", arg: 1, scope: !4396, file: !955, line: 300, type: !974)
!4396 = distinct !DISubprogram(name: "xicalloc", scope: !955, file: !955, line: 300, type: !4250, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4397)
!4397 = !{!4395, !4398}
!4398 = !DILocalVariable(name: "s", arg: 2, scope: !4396, file: !955, line: 300, type: !974)
!4399 = !DILocation(line: 0, scope: !4396, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 287, column: 10, scope: !4391)
!4401 = !DILocalVariable(name: "n", arg: 1, scope: !4402, file: !4143, line: 77, type: !974)
!4402 = distinct !DISubprogram(name: "icalloc", scope: !4143, file: !4143, line: 77, type: !4250, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4403)
!4403 = !{!4401, !4404}
!4404 = !DILocalVariable(name: "s", arg: 2, scope: !4402, file: !4143, line: 77, type: !974)
!4405 = !DILocation(line: 0, scope: !4402, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 302, column: 25, scope: !4396, inlinedAt: !4400)
!4407 = !DILocation(line: 91, column: 10, scope: !4402, inlinedAt: !4406)
!4408 = !DILocation(line: 0, scope: !4103, inlinedAt: !4409)
!4409 = distinct !DILocation(line: 302, column: 10, scope: !4396, inlinedAt: !4400)
!4410 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4409)
!4411 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4409)
!4412 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4409)
!4413 = !DILocation(line: 287, column: 3, scope: !4391)
!4414 = !DILocation(line: 0, scope: !4396)
!4415 = !DILocation(line: 0, scope: !4402, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 302, column: 25, scope: !4396)
!4417 = !DILocation(line: 91, column: 10, scope: !4402, inlinedAt: !4416)
!4418 = !DILocation(line: 0, scope: !4103, inlinedAt: !4419)
!4419 = distinct !DILocation(line: 302, column: 10, scope: !4396)
!4420 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4419)
!4421 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4419)
!4422 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4419)
!4423 = !DILocation(line: 302, column: 3, scope: !4396)
!4424 = distinct !DISubprogram(name: "xmemdup", scope: !955, file: !955, line: 310, type: !4425, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!98, !1251, !104}
!4427 = !{!4428, !4429}
!4428 = !DILocalVariable(name: "p", arg: 1, scope: !4424, file: !955, line: 310, type: !1251)
!4429 = !DILocalVariable(name: "s", arg: 2, scope: !4424, file: !955, line: 310, type: !104)
!4430 = !DILocation(line: 0, scope: !4424)
!4431 = !DILocation(line: 0, scope: !4122, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 312, column: 18, scope: !4424)
!4433 = !DILocation(line: 49, column: 25, scope: !4122, inlinedAt: !4432)
!4434 = !DILocation(line: 0, scope: !4103, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 49, column: 10, scope: !4122, inlinedAt: !4432)
!4436 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4435)
!4437 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4435)
!4438 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4435)
!4439 = !DILocalVariable(name: "__dest", arg: 1, scope: !4440, file: !1332, line: 26, type: !1335)
!4440 = distinct !DISubprogram(name: "memcpy", scope: !1332, file: !1332, line: 26, type: !1333, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4441)
!4441 = !{!4439, !4442, !4443}
!4442 = !DILocalVariable(name: "__src", arg: 2, scope: !4440, file: !1332, line: 26, type: !1250)
!4443 = !DILocalVariable(name: "__len", arg: 3, scope: !4440, file: !1332, line: 26, type: !104)
!4444 = !DILocation(line: 0, scope: !4440, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 312, column: 10, scope: !4424)
!4446 = !DILocation(line: 29, column: 10, scope: !4440, inlinedAt: !4445)
!4447 = !DILocation(line: 312, column: 3, scope: !4424)
!4448 = distinct !DISubprogram(name: "ximemdup", scope: !955, file: !955, line: 316, type: !4449, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!98, !1251, !974}
!4451 = !{!4452, !4453}
!4452 = !DILocalVariable(name: "p", arg: 1, scope: !4448, file: !955, line: 316, type: !1251)
!4453 = !DILocalVariable(name: "s", arg: 2, scope: !4448, file: !955, line: 316, type: !974)
!4454 = !DILocation(line: 0, scope: !4448)
!4455 = !DILocation(line: 0, scope: !4135, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 318, column: 18, scope: !4448)
!4457 = !DILocation(line: 0, scope: !4142, inlinedAt: !4458)
!4458 = distinct !DILocation(line: 55, column: 25, scope: !4135, inlinedAt: !4456)
!4459 = !DILocation(line: 57, column: 26, scope: !4142, inlinedAt: !4458)
!4460 = !DILocation(line: 0, scope: !4103, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 55, column: 10, scope: !4135, inlinedAt: !4456)
!4462 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4461)
!4463 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4461)
!4464 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4461)
!4465 = !DILocation(line: 0, scope: !4440, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 318, column: 10, scope: !4448)
!4467 = !DILocation(line: 29, column: 10, scope: !4440, inlinedAt: !4466)
!4468 = !DILocation(line: 318, column: 3, scope: !4448)
!4469 = distinct !DISubprogram(name: "ximemdup0", scope: !955, file: !955, line: 325, type: !4470, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!59, !1251, !974}
!4472 = !{!4473, !4474, !4475}
!4473 = !DILocalVariable(name: "p", arg: 1, scope: !4469, file: !955, line: 325, type: !1251)
!4474 = !DILocalVariable(name: "s", arg: 2, scope: !4469, file: !955, line: 325, type: !974)
!4475 = !DILocalVariable(name: "result", scope: !4469, file: !955, line: 327, type: !59)
!4476 = !DILocation(line: 0, scope: !4469)
!4477 = !DILocation(line: 327, column: 30, scope: !4469)
!4478 = !DILocation(line: 0, scope: !4135, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 327, column: 18, scope: !4469)
!4480 = !DILocation(line: 0, scope: !4142, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 55, column: 25, scope: !4135, inlinedAt: !4479)
!4482 = !DILocation(line: 57, column: 26, scope: !4142, inlinedAt: !4481)
!4483 = !DILocation(line: 0, scope: !4103, inlinedAt: !4484)
!4484 = distinct !DILocation(line: 55, column: 10, scope: !4135, inlinedAt: !4479)
!4485 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4484)
!4486 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4484)
!4487 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4484)
!4488 = !DILocation(line: 328, column: 3, scope: !4469)
!4489 = !DILocation(line: 328, column: 13, scope: !4469)
!4490 = !DILocation(line: 0, scope: !4440, inlinedAt: !4491)
!4491 = distinct !DILocation(line: 329, column: 10, scope: !4469)
!4492 = !DILocation(line: 29, column: 10, scope: !4440, inlinedAt: !4491)
!4493 = !DILocation(line: 329, column: 3, scope: !4469)
!4494 = distinct !DISubprogram(name: "xstrdup", scope: !955, file: !955, line: 335, type: !1229, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !4495)
!4495 = !{!4496}
!4496 = !DILocalVariable(name: "string", arg: 1, scope: !4494, file: !955, line: 335, type: !101)
!4497 = !DILocation(line: 0, scope: !4494)
!4498 = !DILocation(line: 337, column: 27, scope: !4494)
!4499 = !DILocation(line: 337, column: 43, scope: !4494)
!4500 = !DILocation(line: 0, scope: !4424, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 337, column: 10, scope: !4494)
!4502 = !DILocation(line: 0, scope: !4122, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 312, column: 18, scope: !4424, inlinedAt: !4501)
!4504 = !DILocation(line: 49, column: 25, scope: !4122, inlinedAt: !4503)
!4505 = !DILocation(line: 0, scope: !4103, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 49, column: 10, scope: !4122, inlinedAt: !4503)
!4507 = !DILocation(line: 39, column: 8, scope: !4110, inlinedAt: !4506)
!4508 = !DILocation(line: 39, column: 7, scope: !4103, inlinedAt: !4506)
!4509 = !DILocation(line: 40, column: 5, scope: !4110, inlinedAt: !4506)
!4510 = !DILocation(line: 0, scope: !4440, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 312, column: 10, scope: !4424, inlinedAt: !4501)
!4512 = !DILocation(line: 29, column: 10, scope: !4440, inlinedAt: !4511)
!4513 = !DILocation(line: 337, column: 3, scope: !4494)
!4514 = distinct !DISubprogram(name: "xalloc_die", scope: !881, file: !881, line: 32, type: !633, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !988, retainedNodes: !4515)
!4515 = !{!4516}
!4516 = !DILocalVariable(name: "__errstatus", scope: !4517, file: !881, line: 34, type: !4518)
!4517 = distinct !DILexicalBlock(scope: !4514, file: !881, line: 34, column: 3)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!4519 = !DILocation(line: 34, column: 3, scope: !4517)
!4520 = !DILocation(line: 0, scope: !4517)
!4521 = !DILocation(line: 40, column: 3, scope: !4514)
!4522 = distinct !DISubprogram(name: "close_stream", scope: !991, file: !991, line: 55, type: !4523, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !4559)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!57, !4525}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4527)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4527, file: !232, line: 51, baseType: !57, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4527, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4527, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4527, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4527, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4527, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4527, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4527, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4527, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4527, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4527, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4527, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4527, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4527, file: !232, line: 70, baseType: !4543, size: 64, offset: 832)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4527, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4527, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4527, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4527, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4527, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4527, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4527, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4527, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4527, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4527, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4527, file: !232, line: 93, baseType: !4543, size: 64, offset: 1344)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4527, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4527, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4527, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4527, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4559 = !{!4560, !4561, !4563, !4564}
!4560 = !DILocalVariable(name: "stream", arg: 1, scope: !4522, file: !991, line: 55, type: !4525)
!4561 = !DILocalVariable(name: "some_pending", scope: !4522, file: !991, line: 57, type: !4562)
!4562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4563 = !DILocalVariable(name: "prev_fail", scope: !4522, file: !991, line: 58, type: !4562)
!4564 = !DILocalVariable(name: "fclose_fail", scope: !4522, file: !991, line: 59, type: !4562)
!4565 = !DILocation(line: 0, scope: !4522)
!4566 = !DILocation(line: 57, column: 30, scope: !4522)
!4567 = !DILocalVariable(name: "__stream", arg: 1, scope: !4568, file: !2083, line: 135, type: !4525)
!4568 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2083, file: !2083, line: 135, type: !4523, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !4569)
!4569 = !{!4567}
!4570 = !DILocation(line: 0, scope: !4568, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 58, column: 27, scope: !4522)
!4572 = !DILocation(line: 137, column: 10, scope: !4568, inlinedAt: !4571)
!4573 = !DILocation(line: 58, column: 43, scope: !4522)
!4574 = !DILocation(line: 59, column: 29, scope: !4522)
!4575 = !DILocation(line: 59, column: 45, scope: !4522)
!4576 = !DILocation(line: 69, column: 17, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4522, file: !991, line: 69, column: 7)
!4578 = !DILocation(line: 57, column: 50, scope: !4522)
!4579 = !DILocation(line: 69, column: 33, scope: !4577)
!4580 = !DILocation(line: 69, column: 53, scope: !4577)
!4581 = !DILocation(line: 69, column: 59, scope: !4577)
!4582 = !DILocation(line: 69, column: 7, scope: !4522)
!4583 = !DILocation(line: 71, column: 11, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4577, file: !991, line: 70, column: 5)
!4585 = !DILocation(line: 72, column: 9, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4584, file: !991, line: 71, column: 11)
!4587 = !DILocation(line: 72, column: 15, scope: !4586)
!4588 = !DILocation(line: 77, column: 1, scope: !4522)
!4589 = !DISubprogram(name: "__fpending", scope: !2223, file: !2223, line: 75, type: !4590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!104, !4525}
!4592 = distinct !DISubprogram(name: "rpl_fclose", scope: !993, file: !993, line: 58, type: !4593, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !4629)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!57, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4597, file: !232, line: 51, baseType: !57, size: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4597, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4597, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4597, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4597, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4597, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4597, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4597, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4597, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4597, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4597, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4597, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4597, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4597, file: !232, line: 70, baseType: !4613, size: 64, offset: 832)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4597, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4597, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4597, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4597, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4597, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4597, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4597, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4597, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4597, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4597, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4597, file: !232, line: 93, baseType: !4613, size: 64, offset: 1344)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4597, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4597, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4597, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4597, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DILocalVariable(name: "fp", arg: 1, scope: !4592, file: !993, line: 58, type: !4595)
!4631 = !DILocalVariable(name: "saved_errno", scope: !4592, file: !993, line: 60, type: !57)
!4632 = !DILocalVariable(name: "fd", scope: !4592, file: !993, line: 63, type: !57)
!4633 = !DILocalVariable(name: "result", scope: !4592, file: !993, line: 74, type: !57)
!4634 = !DILocation(line: 0, scope: !4592)
!4635 = !DILocation(line: 63, column: 12, scope: !4592)
!4636 = !DILocation(line: 64, column: 10, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4592, file: !993, line: 64, column: 7)
!4638 = !DILocation(line: 64, column: 7, scope: !4592)
!4639 = !DILocation(line: 65, column: 12, scope: !4637)
!4640 = !DILocation(line: 65, column: 5, scope: !4637)
!4641 = !DILocation(line: 70, column: 9, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4592, file: !993, line: 70, column: 7)
!4643 = !DILocation(line: 70, column: 23, scope: !4642)
!4644 = !DILocation(line: 70, column: 33, scope: !4642)
!4645 = !DILocation(line: 70, column: 26, scope: !4642)
!4646 = !DILocation(line: 70, column: 59, scope: !4642)
!4647 = !DILocation(line: 71, column: 7, scope: !4642)
!4648 = !DILocation(line: 71, column: 10, scope: !4642)
!4649 = !DILocation(line: 70, column: 7, scope: !4592)
!4650 = !DILocation(line: 100, column: 12, scope: !4592)
!4651 = !DILocation(line: 105, column: 7, scope: !4592)
!4652 = !DILocation(line: 72, column: 19, scope: !4642)
!4653 = !DILocation(line: 105, column: 19, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4592, file: !993, line: 105, column: 7)
!4655 = !DILocation(line: 107, column: 13, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4654, file: !993, line: 106, column: 5)
!4657 = !DILocation(line: 109, column: 5, scope: !4656)
!4658 = !DILocation(line: 112, column: 1, scope: !4592)
!4659 = !DISubprogram(name: "fclose", scope: !1097, file: !1097, line: 178, type: !4593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!4660 = !DISubprogram(name: "__freading", scope: !2223, file: !2223, line: 51, type: !4593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!4661 = distinct !DISubprogram(name: "fd_safer_flag", scope: !995, file: !995, line: 40, type: !908, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !4662)
!4662 = !{!4663, !4664, !4665, !4668}
!4663 = !DILocalVariable(name: "fd", arg: 1, scope: !4661, file: !995, line: 40, type: !57)
!4664 = !DILocalVariable(name: "flag", arg: 2, scope: !4661, file: !995, line: 40, type: !57)
!4665 = !DILocalVariable(name: "f", scope: !4666, file: !995, line: 44, type: !57)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !995, line: 43, column: 5)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !995, line: 42, column: 7)
!4668 = !DILocalVariable(name: "saved_errno", scope: !4666, file: !995, line: 45, type: !57)
!4669 = !DILocation(line: 0, scope: !4661)
!4670 = !DILocation(line: 42, column: 26, scope: !4667)
!4671 = !DILocation(line: 44, column: 15, scope: !4666)
!4672 = !DILocation(line: 0, scope: !4666)
!4673 = !DILocation(line: 45, column: 25, scope: !4666)
!4674 = !DILocation(line: 46, column: 7, scope: !4666)
!4675 = !DILocation(line: 47, column: 13, scope: !4666)
!4676 = !DILocation(line: 49, column: 5, scope: !4666)
!4677 = !DILocation(line: 51, column: 3, scope: !4661)
!4678 = distinct !DISubprogram(name: "dup_safer_flag", scope: !997, file: !997, line: 34, type: !908, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4679)
!4679 = !{!4680, !4681}
!4680 = !DILocalVariable(name: "fd", arg: 1, scope: !4678, file: !997, line: 34, type: !57)
!4681 = !DILocalVariable(name: "flag", arg: 2, scope: !4678, file: !997, line: 34, type: !57)
!4682 = !DILocation(line: 0, scope: !4678)
!4683 = !DILocation(line: 36, column: 27, scope: !4678)
!4684 = !DILocation(line: 36, column: 21, scope: !4678)
!4685 = !DILocation(line: 36, column: 10, scope: !4678)
!4686 = !DILocation(line: 36, column: 3, scope: !4678)
!4687 = distinct !DISubprogram(name: "rpl_fflush", scope: !999, file: !999, line: 130, type: !4688, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4724)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!57, !4690}
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !230, line: 7, baseType: !4692)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !232, line: 49, size: 1728, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4692, file: !232, line: 51, baseType: !57, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4692, file: !232, line: 54, baseType: !59, size: 64, offset: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4692, file: !232, line: 55, baseType: !59, size: 64, offset: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4692, file: !232, line: 56, baseType: !59, size: 64, offset: 192)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4692, file: !232, line: 57, baseType: !59, size: 64, offset: 256)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4692, file: !232, line: 58, baseType: !59, size: 64, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4692, file: !232, line: 59, baseType: !59, size: 64, offset: 384)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4692, file: !232, line: 60, baseType: !59, size: 64, offset: 448)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4692, file: !232, line: 61, baseType: !59, size: 64, offset: 512)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4692, file: !232, line: 64, baseType: !59, size: 64, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4692, file: !232, line: 65, baseType: !59, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4692, file: !232, line: 66, baseType: !59, size: 64, offset: 704)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4692, file: !232, line: 68, baseType: !247, size: 64, offset: 768)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4692, file: !232, line: 70, baseType: !4708, size: 64, offset: 832)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4692, file: !232, line: 72, baseType: !57, size: 32, offset: 896)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4692, file: !232, line: 73, baseType: !57, size: 32, offset: 928)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4692, file: !232, line: 74, baseType: !254, size: 64, offset: 960)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4692, file: !232, line: 77, baseType: !103, size: 16, offset: 1024)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4692, file: !232, line: 78, baseType: !259, size: 8, offset: 1040)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4692, file: !232, line: 79, baseType: !116, size: 8, offset: 1048)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4692, file: !232, line: 81, baseType: !262, size: 64, offset: 1088)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4692, file: !232, line: 89, baseType: !265, size: 64, offset: 1152)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4692, file: !232, line: 91, baseType: !267, size: 64, offset: 1216)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4692, file: !232, line: 92, baseType: !270, size: 64, offset: 1280)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4692, file: !232, line: 93, baseType: !4708, size: 64, offset: 1344)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4692, file: !232, line: 94, baseType: !98, size: 64, offset: 1408)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4692, file: !232, line: 95, baseType: !104, size: 64, offset: 1472)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4692, file: !232, line: 96, baseType: !57, size: 32, offset: 1536)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4692, file: !232, line: 98, baseType: !277, size: 160, offset: 1568)
!4724 = !{!4725}
!4725 = !DILocalVariable(name: "stream", arg: 1, scope: !4687, file: !999, line: 130, type: !4690)
!4726 = !DILocation(line: 0, scope: !4687)
!4727 = !DILocation(line: 151, column: 14, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4687, file: !999, line: 151, column: 7)
!4729 = !DILocation(line: 151, column: 22, scope: !4728)
!4730 = !DILocation(line: 151, column: 27, scope: !4728)
!4731 = !DILocation(line: 151, column: 7, scope: !4687)
!4732 = !DILocation(line: 152, column: 12, scope: !4728)
!4733 = !DILocation(line: 152, column: 5, scope: !4728)
!4734 = !DILocalVariable(name: "fp", arg: 1, scope: !4735, file: !999, line: 42, type: !4690)
!4735 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !999, file: !999, line: 42, type: !4736, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{null, !4690}
!4738 = !{!4734}
!4739 = !DILocation(line: 0, scope: !4735, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 157, column: 3, scope: !4687)
!4741 = !DILocation(line: 44, column: 12, scope: !4742, inlinedAt: !4740)
!4742 = distinct !DILexicalBlock(scope: !4735, file: !999, line: 44, column: 7)
!4743 = !DILocation(line: 44, column: 19, scope: !4742, inlinedAt: !4740)
!4744 = !DILocation(line: 44, column: 7, scope: !4735, inlinedAt: !4740)
!4745 = !DILocation(line: 46, column: 5, scope: !4742, inlinedAt: !4740)
!4746 = !DILocation(line: 159, column: 10, scope: !4687)
!4747 = !DILocation(line: 159, column: 3, scope: !4687)
!4748 = !DILocation(line: 236, column: 1, scope: !4687)
!4749 = !DISubprogram(name: "fflush", scope: !1097, file: !1097, line: 230, type: !4688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!4750 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !888, file: !888, line: 100, type: !4751, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !4754)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!104, !2413, !101, !104, !4753}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!4754 = !{!4755, !4756, !4757, !4758, !4759}
!4755 = !DILocalVariable(name: "pwc", arg: 1, scope: !4750, file: !888, line: 100, type: !2413)
!4756 = !DILocalVariable(name: "s", arg: 2, scope: !4750, file: !888, line: 100, type: !101)
!4757 = !DILocalVariable(name: "n", arg: 3, scope: !4750, file: !888, line: 100, type: !104)
!4758 = !DILocalVariable(name: "ps", arg: 4, scope: !4750, file: !888, line: 100, type: !4753)
!4759 = !DILocalVariable(name: "ret", scope: !4750, file: !888, line: 130, type: !104)
!4760 = !DILocation(line: 0, scope: !4750)
!4761 = !DILocation(line: 105, column: 9, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4750, file: !888, line: 105, column: 7)
!4763 = !DILocation(line: 105, column: 7, scope: !4750)
!4764 = !DILocation(line: 117, column: 10, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4750, file: !888, line: 117, column: 7)
!4766 = !DILocation(line: 117, column: 7, scope: !4750)
!4767 = !DILocation(line: 130, column: 16, scope: !4750)
!4768 = !DILocation(line: 135, column: 11, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4750, file: !888, line: 135, column: 7)
!4770 = !DILocation(line: 135, column: 25, scope: !4769)
!4771 = !DILocation(line: 135, column: 30, scope: !4769)
!4772 = !DILocation(line: 135, column: 7, scope: !4750)
!4773 = !DILocalVariable(name: "ps", arg: 1, scope: !4774, file: !1913, line: 1135, type: !4753)
!4774 = distinct !DISubprogram(name: "mbszero", scope: !1913, file: !1913, line: 1135, type: !4775, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !4777)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{null, !4753}
!4777 = !{!4773}
!4778 = !DILocation(line: 0, scope: !4774, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 137, column: 5, scope: !4769)
!4780 = !DILocalVariable(name: "__dest", arg: 1, scope: !4781, file: !1332, line: 57, type: !98)
!4781 = distinct !DISubprogram(name: "memset", scope: !1332, file: !1332, line: 57, type: !2396, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !4782)
!4782 = !{!4780, !4783, !4784}
!4783 = !DILocalVariable(name: "__ch", arg: 2, scope: !4781, file: !1332, line: 57, type: !57)
!4784 = !DILocalVariable(name: "__len", arg: 3, scope: !4781, file: !1332, line: 57, type: !104)
!4785 = !DILocation(line: 0, scope: !4781, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 1137, column: 3, scope: !4774, inlinedAt: !4779)
!4787 = !DILocation(line: 59, column: 10, scope: !4781, inlinedAt: !4786)
!4788 = !DILocation(line: 137, column: 5, scope: !4769)
!4789 = !DILocation(line: 138, column: 11, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4750, file: !888, line: 138, column: 7)
!4791 = !DILocation(line: 138, column: 7, scope: !4750)
!4792 = !DILocation(line: 139, column: 5, scope: !4790)
!4793 = !DILocation(line: 143, column: 26, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4750, file: !888, line: 143, column: 7)
!4795 = !DILocation(line: 143, column: 41, scope: !4794)
!4796 = !DILocation(line: 143, column: 7, scope: !4750)
!4797 = !DILocation(line: 145, column: 15, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !888, line: 145, column: 11)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !888, line: 144, column: 5)
!4800 = !DILocation(line: 145, column: 11, scope: !4799)
!4801 = !DILocation(line: 146, column: 32, scope: !4798)
!4802 = !DILocation(line: 146, column: 16, scope: !4798)
!4803 = !DILocation(line: 146, column: 14, scope: !4798)
!4804 = !DILocation(line: 146, column: 9, scope: !4798)
!4805 = !DILocation(line: 286, column: 1, scope: !4750)
!4806 = !DISubprogram(name: "mbsinit", scope: !4807, file: !4807, line: 293, type: !4808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1040)
!4807 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!57, !4810}
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!4812 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1001, file: !1001, line: 27, type: !4087, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1000, retainedNodes: !4813)
!4813 = !{!4814, !4815, !4816, !4817}
!4814 = !DILocalVariable(name: "ptr", arg: 1, scope: !4812, file: !1001, line: 27, type: !98)
!4815 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4812, file: !1001, line: 27, type: !104)
!4816 = !DILocalVariable(name: "size", arg: 3, scope: !4812, file: !1001, line: 27, type: !104)
!4817 = !DILocalVariable(name: "nbytes", scope: !4812, file: !1001, line: 29, type: !104)
!4818 = !DILocation(line: 0, scope: !4812)
!4819 = !DILocation(line: 30, column: 7, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4812, file: !1001, line: 30, column: 7)
!4821 = !DILocalVariable(name: "ptr", arg: 1, scope: !4822, file: !1821, line: 2057, type: !98)
!4822 = distinct !DISubprogram(name: "rpl_realloc", scope: !1821, file: !1821, line: 2057, type: !1822, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1000, retainedNodes: !4823)
!4823 = !{!4821, !4824}
!4824 = !DILocalVariable(name: "size", arg: 2, scope: !4822, file: !1821, line: 2057, type: !104)
!4825 = !DILocation(line: 0, scope: !4822, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 37, column: 10, scope: !4812)
!4827 = !DILocation(line: 2059, column: 24, scope: !4822, inlinedAt: !4826)
!4828 = !DILocation(line: 2059, column: 10, scope: !4822, inlinedAt: !4826)
!4829 = !DILocation(line: 37, column: 3, scope: !4812)
!4830 = !DILocation(line: 32, column: 7, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4820, file: !1001, line: 31, column: 5)
!4832 = !DILocation(line: 32, column: 13, scope: !4831)
!4833 = !DILocation(line: 33, column: 7, scope: !4831)
!4834 = !DILocation(line: 38, column: 1, scope: !4812)
!4835 = distinct !DISubprogram(name: "dup_safer", scope: !1004, file: !1004, line: 31, type: !1576, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !4836)
!4836 = !{!4837}
!4837 = !DILocalVariable(name: "fd", arg: 1, scope: !4835, file: !1004, line: 31, type: !57)
!4838 = !DILocation(line: 0, scope: !4835)
!4839 = !DILocation(line: 33, column: 10, scope: !4835)
!4840 = !DILocation(line: 33, column: 3, scope: !4835)
!4841 = distinct !DISubprogram(name: "rpl_fcntl", scope: !907, file: !907, line: 202, type: !2111, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4842)
!4842 = !{!4843, !4844, !4845, !4856, !4857, !4860, !4862, !4866}
!4843 = !DILocalVariable(name: "fd", arg: 1, scope: !4841, file: !907, line: 202, type: !57)
!4844 = !DILocalVariable(name: "action", arg: 2, scope: !4841, file: !907, line: 202, type: !57)
!4845 = !DILocalVariable(name: "arg", scope: !4841, file: !907, line: 208, type: !4846)
!4846 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2123, line: 22, baseType: !4847)
!4847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4848, baseType: !4849)
!4848 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4850, size: 192, elements: !117)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4850, file: !4848, line: 208, baseType: !69, size: 32)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4850, file: !4848, line: 208, baseType: !69, size: 32, offset: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4850, file: !4848, line: 208, baseType: !98, size: 64, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4850, file: !4848, line: 208, baseType: !98, size: 64, offset: 128)
!4856 = !DILocalVariable(name: "result", scope: !4841, file: !907, line: 211, type: !57)
!4857 = !DILocalVariable(name: "target", scope: !4858, file: !907, line: 216, type: !57)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !907, line: 215, column: 7)
!4859 = distinct !DILexicalBlock(scope: !4841, file: !907, line: 213, column: 5)
!4860 = !DILocalVariable(name: "target", scope: !4861, file: !907, line: 223, type: !57)
!4861 = distinct !DILexicalBlock(scope: !4859, file: !907, line: 222, column: 7)
!4862 = !DILocalVariable(name: "x", scope: !4863, file: !907, line: 418, type: !57)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !907, line: 417, column: 13)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !907, line: 261, column: 11)
!4865 = distinct !DILexicalBlock(scope: !4859, file: !907, line: 258, column: 7)
!4866 = !DILocalVariable(name: "p", scope: !4867, file: !907, line: 426, type: !98)
!4867 = distinct !DILexicalBlock(scope: !4864, file: !907, line: 425, column: 13)
!4868 = !DILocation(line: 0, scope: !4841)
!4869 = !DILocation(line: 208, column: 3, scope: !4841)
!4870 = !DILocation(line: 208, column: 11, scope: !4841)
!4871 = !DILocation(line: 209, column: 3, scope: !4841)
!4872 = !DILocation(line: 212, column: 3, scope: !4841)
!4873 = !DILocation(line: 216, column: 22, scope: !4858)
!4874 = !DILocation(line: 0, scope: !4858)
!4875 = !DILocalVariable(name: "fd", arg: 1, scope: !4876, file: !907, line: 444, type: !57)
!4876 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !907, file: !907, line: 444, type: !908, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4877)
!4877 = !{!4875, !4878, !4879}
!4878 = !DILocalVariable(name: "target", arg: 2, scope: !4876, file: !907, line: 444, type: !57)
!4879 = !DILocalVariable(name: "result", scope: !4876, file: !907, line: 446, type: !57)
!4880 = !DILocation(line: 0, scope: !4876, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 217, column: 18, scope: !4858)
!4882 = !DILocation(line: 479, column: 12, scope: !4876, inlinedAt: !4881)
!4883 = !DILocation(line: 223, column: 22, scope: !4861)
!4884 = !DILocation(line: 0, scope: !4861)
!4885 = !DILocation(line: 0, scope: !906, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 224, column: 18, scope: !4861)
!4887 = !DILocation(line: 507, column: 12, scope: !4888, inlinedAt: !4886)
!4888 = distinct !DILexicalBlock(scope: !906, file: !907, line: 507, column: 7)
!4889 = !DILocation(line: 507, column: 9, scope: !4888, inlinedAt: !4886)
!4890 = !DILocation(line: 507, column: 7, scope: !906, inlinedAt: !4886)
!4891 = !DILocation(line: 509, column: 16, scope: !4892, inlinedAt: !4886)
!4892 = distinct !DILexicalBlock(scope: !4888, file: !907, line: 508, column: 5)
!4893 = !DILocation(line: 510, column: 13, scope: !4894, inlinedAt: !4886)
!4894 = distinct !DILexicalBlock(scope: !4892, file: !907, line: 510, column: 11)
!4895 = !DILocation(line: 510, column: 23, scope: !4894, inlinedAt: !4886)
!4896 = !DILocation(line: 510, column: 26, scope: !4894, inlinedAt: !4886)
!4897 = !DILocation(line: 510, column: 32, scope: !4894, inlinedAt: !4886)
!4898 = !DILocation(line: 510, column: 11, scope: !4892, inlinedAt: !4886)
!4899 = !DILocation(line: 512, column: 30, scope: !4900, inlinedAt: !4886)
!4900 = distinct !DILexicalBlock(scope: !4894, file: !907, line: 511, column: 9)
!4901 = !DILocation(line: 528, column: 19, scope: !918, inlinedAt: !4886)
!4902 = !DILocation(line: 0, scope: !4876, inlinedAt: !4903)
!4903 = distinct !DILocation(line: 520, column: 20, scope: !4904, inlinedAt: !4886)
!4904 = distinct !DILexicalBlock(scope: !4894, file: !907, line: 519, column: 9)
!4905 = !DILocation(line: 479, column: 12, scope: !4876, inlinedAt: !4903)
!4906 = !DILocation(line: 521, column: 22, scope: !4907, inlinedAt: !4886)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !907, line: 521, column: 15)
!4908 = !DILocation(line: 521, column: 15, scope: !4904, inlinedAt: !4886)
!4909 = !DILocation(line: 522, column: 32, scope: !4907, inlinedAt: !4886)
!4910 = !DILocation(line: 522, column: 13, scope: !4907, inlinedAt: !4886)
!4911 = !DILocation(line: 0, scope: !4876, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 527, column: 14, scope: !4888, inlinedAt: !4886)
!4913 = !DILocation(line: 479, column: 12, scope: !4876, inlinedAt: !4912)
!4914 = !DILocation(line: 0, scope: !4888, inlinedAt: !4886)
!4915 = !DILocation(line: 528, column: 9, scope: !918, inlinedAt: !4886)
!4916 = !DILocation(line: 530, column: 19, scope: !917, inlinedAt: !4886)
!4917 = !DILocation(line: 0, scope: !917, inlinedAt: !4886)
!4918 = !DILocation(line: 531, column: 17, scope: !921, inlinedAt: !4886)
!4919 = !DILocation(line: 531, column: 21, scope: !921, inlinedAt: !4886)
!4920 = !DILocation(line: 531, column: 54, scope: !921, inlinedAt: !4886)
!4921 = !DILocation(line: 531, column: 24, scope: !921, inlinedAt: !4886)
!4922 = !DILocation(line: 531, column: 68, scope: !921, inlinedAt: !4886)
!4923 = !DILocation(line: 531, column: 11, scope: !917, inlinedAt: !4886)
!4924 = !DILocation(line: 533, column: 29, scope: !920, inlinedAt: !4886)
!4925 = !DILocation(line: 0, scope: !920, inlinedAt: !4886)
!4926 = !DILocation(line: 534, column: 11, scope: !920, inlinedAt: !4886)
!4927 = !DILocation(line: 535, column: 17, scope: !920, inlinedAt: !4886)
!4928 = !DILocation(line: 537, column: 9, scope: !920, inlinedAt: !4886)
!4929 = !DILocation(line: 329, column: 22, scope: !4864)
!4930 = !DILocation(line: 330, column: 13, scope: !4864)
!4931 = !DILocation(line: 418, column: 23, scope: !4863)
!4932 = !DILocation(line: 0, scope: !4863)
!4933 = !DILocation(line: 419, column: 24, scope: !4863)
!4934 = !DILocation(line: 421, column: 13, scope: !4864)
!4935 = !DILocation(line: 426, column: 25, scope: !4867)
!4936 = !DILocation(line: 0, scope: !4867)
!4937 = !DILocation(line: 427, column: 24, scope: !4867)
!4938 = !DILocation(line: 429, column: 13, scope: !4864)
!4939 = !DILocation(line: 0, scope: !4859)
!4940 = !DILocation(line: 438, column: 3, scope: !4841)
!4941 = !DILocation(line: 441, column: 1, scope: !4841)
!4942 = !DILocation(line: 440, column: 3, scope: !4841)
!4943 = distinct !DISubprogram(name: "hard_locale", scope: !924, file: !924, line: 28, type: !4944, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4946)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!215, !57}
!4946 = !{!4947, !4948}
!4947 = !DILocalVariable(name: "category", arg: 1, scope: !4943, file: !924, line: 28, type: !57)
!4948 = !DILocalVariable(name: "locale", scope: !4943, file: !924, line: 30, type: !4949)
!4949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4950)
!4950 = !{!4951}
!4951 = !DISubrange(count: 257)
!4952 = !DILocation(line: 0, scope: !4943)
!4953 = !DILocation(line: 30, column: 3, scope: !4943)
!4954 = !DILocation(line: 30, column: 8, scope: !4943)
!4955 = !DILocation(line: 32, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4943, file: !924, line: 32, column: 7)
!4957 = !DILocation(line: 32, column: 7, scope: !4943)
!4958 = !DILocalVariable(name: "__s1", arg: 1, scope: !4959, file: !1115, line: 1359, type: !101)
!4959 = distinct !DISubprogram(name: "streq", scope: !1115, file: !1115, line: 1359, type: !1116, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !4960)
!4960 = !{!4958, !4961}
!4961 = !DILocalVariable(name: "__s2", arg: 2, scope: !4959, file: !1115, line: 1359, type: !101)
!4962 = !DILocation(line: 0, scope: !4959, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 35, column: 9, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4943, file: !924, line: 35, column: 7)
!4965 = !DILocation(line: 1361, column: 11, scope: !4959, inlinedAt: !4963)
!4966 = !DILocation(line: 35, column: 29, scope: !4964)
!4967 = !DILocation(line: 0, scope: !4959, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 35, column: 32, scope: !4964)
!4969 = !DILocation(line: 1361, column: 11, scope: !4959, inlinedAt: !4968)
!4970 = !DILocation(line: 1361, column: 10, scope: !4959, inlinedAt: !4968)
!4971 = !DILocation(line: 35, column: 7, scope: !4943)
!4972 = !DILocation(line: 46, column: 3, scope: !4943)
!4973 = !DILocation(line: 47, column: 1, scope: !4943)
!4974 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1010, file: !1010, line: 154, type: !4975, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !4977)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!57, !57, !59, !104}
!4977 = !{!4978, !4979, !4980}
!4978 = !DILocalVariable(name: "category", arg: 1, scope: !4974, file: !1010, line: 154, type: !57)
!4979 = !DILocalVariable(name: "buf", arg: 2, scope: !4974, file: !1010, line: 154, type: !59)
!4980 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4974, file: !1010, line: 154, type: !104)
!4981 = !DILocation(line: 0, scope: !4974)
!4982 = !DILocation(line: 159, column: 10, scope: !4974)
!4983 = !DILocation(line: 159, column: 3, scope: !4974)
!4984 = distinct !DISubprogram(name: "setlocale_null", scope: !1010, file: !1010, line: 186, type: !4985, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !4987)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!101, !57}
!4987 = !{!4988}
!4988 = !DILocalVariable(name: "category", arg: 1, scope: !4984, file: !1010, line: 186, type: !57)
!4989 = !DILocation(line: 0, scope: !4984)
!4990 = !DILocation(line: 189, column: 10, scope: !4984)
!4991 = !DILocation(line: 189, column: 3, scope: !4984)
!4992 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1012, file: !1012, line: 35, type: !4985, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1011, retainedNodes: !4993)
!4993 = !{!4994, !4995}
!4994 = !DILocalVariable(name: "category", arg: 1, scope: !4992, file: !1012, line: 35, type: !57)
!4995 = !DILocalVariable(name: "result", scope: !4992, file: !1012, line: 37, type: !101)
!4996 = !DILocation(line: 0, scope: !4992)
!4997 = !DILocation(line: 37, column: 24, scope: !4992)
!4998 = !DILocation(line: 62, column: 3, scope: !4992)
!4999 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1012, file: !1012, line: 66, type: !4975, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1011, retainedNodes: !5000)
!5000 = !{!5001, !5002, !5003, !5004, !5005}
!5001 = !DILocalVariable(name: "category", arg: 1, scope: !4999, file: !1012, line: 66, type: !57)
!5002 = !DILocalVariable(name: "buf", arg: 2, scope: !4999, file: !1012, line: 66, type: !59)
!5003 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4999, file: !1012, line: 66, type: !104)
!5004 = !DILocalVariable(name: "result", scope: !4999, file: !1012, line: 111, type: !101)
!5005 = !DILocalVariable(name: "length", scope: !5006, file: !1012, line: 125, type: !104)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !1012, line: 124, column: 5)
!5007 = distinct !DILexicalBlock(scope: !4999, file: !1012, line: 113, column: 7)
!5008 = !DILocation(line: 0, scope: !4999)
!5009 = !DILocation(line: 0, scope: !4992, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 111, column: 24, scope: !4999)
!5011 = !DILocation(line: 37, column: 24, scope: !4992, inlinedAt: !5010)
!5012 = !DILocation(line: 113, column: 14, scope: !5007)
!5013 = !DILocation(line: 113, column: 7, scope: !4999)
!5014 = !DILocation(line: 116, column: 19, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !1012, line: 116, column: 11)
!5016 = distinct !DILexicalBlock(scope: !5007, file: !1012, line: 114, column: 5)
!5017 = !DILocation(line: 116, column: 11, scope: !5016)
!5018 = !DILocation(line: 120, column: 16, scope: !5015)
!5019 = !DILocation(line: 120, column: 9, scope: !5015)
!5020 = !DILocation(line: 125, column: 23, scope: !5006)
!5021 = !DILocation(line: 0, scope: !5006)
!5022 = !DILocation(line: 126, column: 18, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5006, file: !1012, line: 126, column: 11)
!5024 = !DILocation(line: 126, column: 11, scope: !5006)
!5025 = !DILocation(line: 128, column: 39, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !1012, line: 127, column: 9)
!5027 = !DILocalVariable(name: "__dest", arg: 1, scope: !5028, file: !1332, line: 26, type: !1335)
!5028 = distinct !DISubprogram(name: "memcpy", scope: !1332, file: !1332, line: 26, type: !1333, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1011, retainedNodes: !5029)
!5029 = !{!5027, !5030, !5031}
!5030 = !DILocalVariable(name: "__src", arg: 2, scope: !5028, file: !1332, line: 26, type: !1250)
!5031 = !DILocalVariable(name: "__len", arg: 3, scope: !5028, file: !1332, line: 26, type: !104)
!5032 = !DILocation(line: 0, scope: !5028, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 128, column: 11, scope: !5026)
!5034 = !DILocation(line: 29, column: 10, scope: !5028, inlinedAt: !5033)
!5035 = !DILocation(line: 129, column: 11, scope: !5026)
!5036 = !DILocation(line: 133, column: 23, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !1012, line: 133, column: 15)
!5038 = distinct !DILexicalBlock(scope: !5023, file: !1012, line: 132, column: 9)
!5039 = !DILocation(line: 133, column: 15, scope: !5038)
!5040 = !DILocation(line: 138, column: 44, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5037, file: !1012, line: 134, column: 13)
!5042 = !DILocation(line: 0, scope: !5028, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 138, column: 15, scope: !5041)
!5044 = !DILocation(line: 29, column: 10, scope: !5028, inlinedAt: !5043)
!5045 = !DILocation(line: 139, column: 15, scope: !5041)
!5046 = !DILocation(line: 139, column: 32, scope: !5041)
!5047 = !DILocation(line: 140, column: 13, scope: !5041)
!5048 = !DILocation(line: 0, scope: !5007)
!5049 = !DILocation(line: 145, column: 1, scope: !4999)
