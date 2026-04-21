; ModuleID = 'src/mknod.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !59
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1, !dbg !74
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.70, i32 2, ptr null, i32 90 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.73, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !79
@optarg = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1, !dbg !142
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !147
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !152
@.str.19 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1, !dbg !157
@.str.20 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1, !dbg !162
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !167
@.str.22 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !169
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !174
@.str.24 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1, !dbg !176
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !181
@.str.26 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1, !dbg !186
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1, !dbg !190
@.str.29 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1, !dbg !195
@.str.30 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1, !dbg !197
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !202
@.str.32 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1, !dbg !207
@.str.33 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1, !dbg !212
@.str.34 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !217
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !222
@.str.35 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !304
@.str.36 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !309
@.str.37 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !311
@.str.38 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !313
@.str.52 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !350
@.str.53 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !352
@.str.54 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !354
@.str.55 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !356
@.str.56 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !361
@.str.57 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !366
@.str.58 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !371
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !373
@.str.60 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !375
@.str.61 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !377
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !388
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !390
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !395
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !400
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !405
@.str.70 = private unnamed_addr constant [8 x i8] c"context\00", align 1, !dbg !410
@.str.71 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !412
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !414
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !416
@.str.27 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !428
@Version = dso_local local_unnamed_addr global ptr @.str.27, align 8, !dbg !431
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !435
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !448
@.str.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !440
@.str.1.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !442
@.str.2.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !444
@.str.3.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !446
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !450
@stderr = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !456
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !492
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !458
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !482
@.str.1.49 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !484
@.str.2.51 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !486
@.str.3.50 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !488
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !490
@.str.4.44 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !494
@.str.5.45 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !496
@.str.6.46 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !498
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !503
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !509
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !511
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !513
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !544
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !547
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !549
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !551
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !553
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !555
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !557
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !559
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !561
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !563
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.78, ptr @.str.1.79, ptr @.str.2.80, ptr @.str.3.81, ptr @.str.4.82, ptr @.str.5.83, ptr @.str.6.84, ptr @.str.7.85, ptr @.str.8.86, ptr @.str.9.87, ptr null], align 8, !dbg !565
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !578
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !592
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !630
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !637
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !594
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !639
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !582
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !599
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !601
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !603
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !605
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !607
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !645
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !648
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !650
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !652
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !654
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !656
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !661
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !666
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !668
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !670
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !675
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !680
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !685
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !687
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !689
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !694
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !699
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !704
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !706
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !708
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !710
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !712
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !714
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !716
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !718
@exit_failure = dso_local global i32 1, align 4, !dbg !724
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !730
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !733
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !735
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !737
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !740
@.str.162 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !755
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !758

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !853 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !857, metadata !DIExpression()), !dbg !858
  %2 = icmp eq i32 %0, 0, !dbg !859
  br i1 %2, label %8, label %3, !dbg !861

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !862, !tbaa !864
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !862
  %6 = load ptr, ptr @program_name, align 8, !dbg !862, !tbaa !864
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !862
  br label %45, !dbg !862

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !868
  %10 = load ptr, ptr @program_name, align 8, !dbg !868, !tbaa !864
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !868
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !870
  %13 = load ptr, ptr @stdout, align 8, !dbg !870, !tbaa !864
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !870
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #37, !dbg !871
  %16 = load ptr, ptr @stdout, align 8, !dbg !871, !tbaa !864
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !871
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !874
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !874
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !875
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !875
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !876
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !876
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !877
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !877
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !878
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !878
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !879
  %24 = load ptr, ptr @stdout, align 8, !dbg !879, !tbaa !864
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !879
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !880
  %27 = load ptr, ptr @stdout, align 8, !dbg !880, !tbaa !864
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !880
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !881
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3) #37, !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !901, metadata !895, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr poison, metadata !894, metadata !DIExpression()), !dbg !899
  tail call void @emit_bug_reporting_address() #37, !dbg !902
  %31 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !903
  call void @llvm.dbg.value(metadata ptr %31, metadata !897, metadata !DIExpression()), !dbg !899
  %32 = icmp eq ptr %31, null, !dbg !904
  br i1 %32, label %40, label %33, !dbg !906

33:                                               ; preds = %8
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #38, !dbg !907
  %35 = icmp eq i32 %34, 0, !dbg !907
  br i1 %35, label %40, label %36, !dbg !908

36:                                               ; preds = %33
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !909
  %38 = load ptr, ptr @stdout, align 8, !dbg !909, !tbaa !864
  %39 = tail call i32 @fputs_unlocked(ptr noundef %37, ptr noundef %38), !dbg !909
  br label %40, !dbg !911

40:                                               ; preds = %8, %33, %36
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !898, metadata !DIExpression()), !dbg !899
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #37, !dbg !912
  %42 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %41, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3) #37, !dbg !912
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #37, !dbg !913
  %44 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #37, !dbg !913
  br label %45

45:                                               ; preds = %40, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !914
  unreachable, !dbg !914
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !915 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !919 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !925 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !928 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !224 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !931
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !932, !tbaa !933
  %3 = icmp eq i32 %2, -1, !dbg !935
  br i1 %3, label %4, label %16, !dbg !936

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.35) #37, !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !938
  %6 = icmp eq ptr %5, null, !dbg !939
  br i1 %6, label %14, label %7, !dbg !940

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !941, !tbaa !942
  %9 = icmp eq i8 %8, 0, !dbg !941
  br i1 %9, label %14, label %10, !dbg !943

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !944, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !950, metadata !DIExpression()), !dbg !951
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.36) #38, !dbg !953
  %12 = icmp eq i32 %11, 0, !dbg !954
  %13 = zext i1 %12 to i32, !dbg !943
  br label %14, !dbg !943

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !955, !tbaa !933
  br label %16, !dbg !956

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !957
  %18 = icmp eq i32 %17, 0, !dbg !957
  br i1 %18, label %22, label %19, !dbg !959

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !864
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !960
  br label %121, !dbg !962

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !931
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.37) #38, !dbg !963
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !964
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !931
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !965
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !931
  %26 = icmp eq ptr %25, null, !dbg !966
  br i1 %26, label %53, label %27, !dbg !967

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !968
  br i1 %28, label %53, label %29, !dbg !969

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !970
  %30 = icmp ult ptr %24, %25, !dbg !971
  br i1 %30, label %31, label %53, !dbg !972

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !931
  %33 = load ptr, ptr %32, align 8, !tbaa !864
  br label %34, !dbg !972

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !970
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !973
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !970
  %38 = load i8, ptr %35, align 1, !dbg !973, !tbaa !942
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !973
  %41 = load i16, ptr %40, align 2, !dbg !973, !tbaa !974
  %42 = freeze i16 %41, !dbg !976
  %43 = lshr i16 %42, 13, !dbg !976
  %44 = and i16 %43, 1, !dbg !976
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !977
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !970
  %47 = icmp ult ptr %37, %25, !dbg !971
  %48 = icmp ult i64 %46, 2, !dbg !978
  %49 = select i1 %47, i1 %48, i1 false, !dbg !978
  br i1 %49, label %34, label %50, !dbg !972, !llvm.loop !979

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !977
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !981
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !983
  br label %53, !dbg !983

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !931
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !236, metadata !DIExpression()), !dbg !931
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.38) #38, !dbg !984
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !242, metadata !DIExpression()), !dbg !931
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !985
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !243, metadata !DIExpression()), !dbg !931
  br label %58, !dbg !986

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !931
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !243, metadata !DIExpression()), !dbg !931
  %61 = load i8, ptr %59, align 1, !dbg !987, !tbaa !942
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !988

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !989
  %64 = load i8, ptr %63, align 1, !dbg !992, !tbaa !942
  %65 = icmp ne i8 %64, 45, !dbg !993
  %66 = select i1 %65, i1 %60, i1 false, !dbg !994
  br label %67, !dbg !994

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !931
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !995
  %70 = load ptr, ptr %69, align 8, !dbg !995, !tbaa !864
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !995
  %73 = load i16, ptr %72, align 2, !dbg !995, !tbaa !974
  %74 = and i16 %73, 8192, !dbg !995
  %75 = icmp eq i16 %74, 0, !dbg !995
  br i1 %75, label %89, label %76, !dbg !997

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !998
  br i1 %77, label %91, label %78, !dbg !1001

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1002
  %80 = load i8, ptr %79, align 1, !dbg !1002, !tbaa !942
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1002
  %83 = load i16, ptr %82, align 2, !dbg !1002, !tbaa !974
  %84 = and i16 %83, 8192, !dbg !1002
  %85 = icmp eq i16 %84, 0, !dbg !1002
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1003
  br i1 %88, label %89, label %91, !dbg !1003

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1004
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !243, metadata !DIExpression()), !dbg !931
  br label %58, !dbg !986, !llvm.loop !1005

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !931
  %92 = ptrtoint ptr %24 to i64, !dbg !1007
  %93 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !864
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !944, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata !901, metadata !950, metadata !DIExpression()), !dbg !1026
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !931
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.52, i64 noundef 6) #38, !dbg !1028
  %96 = icmp eq i32 %95, 0, !dbg !1028
  br i1 %96, label %100, label %97, !dbg !1030

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.53, i64 noundef 9) #38, !dbg !1031
  %99 = icmp eq i32 %98, 0, !dbg !1031
  br i1 %99, label %100, label %103, !dbg !1032

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1033
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !1033
  br label %106, !dbg !1035

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1036
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !1036
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !864
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %107), !dbg !1038
  %109 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !864
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %109), !dbg !1039
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1040
  %112 = sub i64 %111, %92, !dbg !1040
  %113 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !864
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1040
  %115 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !864
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %115), !dbg !1041
  %117 = load ptr, ptr @stdout, align 8, !dbg !1042, !tbaa !864
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.61, ptr noundef %117), !dbg !1042
  %119 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !864
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1043
  br label %121, !dbg !1044

121:                                              ; preds = %106, %19
  ret void, !dbg !1044
}

; Function Attrs: nounwind
declare !dbg !1045 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1049 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1053 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1055 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1058 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1061 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1064 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1067 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1073 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1074 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1080 {
  %3 = alloca i64, align 8, !DIAssignID !1117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1113, metadata !DIExpression(), metadata !1117, metadata ptr %3, metadata !DIExpression()), !dbg !1118
  %4 = alloca i64, align 8, !DIAssignID !1119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1115, metadata !DIExpression(), metadata !1119, metadata ptr %4, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1087, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1088, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1089, metadata !DIExpression()), !dbg !1120
  %5 = load ptr, ptr %1, align 8, !dbg !1121, !tbaa !864
  tail call void @set_program_name(ptr noundef %5) #37, !dbg !1122
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.12) #37, !dbg !1123
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #37, !dbg !1124
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.13) #37, !dbg !1125
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1126
  br label %10, !dbg !1127

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ null, %2 ]
  br label %12, !dbg !1127

12:                                               ; preds = %21, %10
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1087, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1088, metadata !DIExpression()), !dbg !1120
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1093, metadata !DIExpression()), !dbg !1120
  switch i32 %13, label %27 [
    i32 -1, label %28
    i32 109, label %14
    i32 90, label %16
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !1127

14:                                               ; preds = %12
  %15 = load ptr, ptr @optarg, align 8, !dbg !1129, !tbaa !864
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1087, metadata !DIExpression()), !dbg !1120
  br label %10, !dbg !1132, !llvm.loop !1133

16:                                               ; preds = %12
  %17 = load ptr, ptr @optarg, align 8, !dbg !1135, !tbaa !864
  %18 = icmp eq ptr %17, null, !dbg !1135
  br i1 %18, label %21, label %19, !dbg !1139

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1140
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %20) #37, !dbg !1140
  br label %21, !dbg !1142

21:                                               ; preds = %19, %16
  br label %12, !dbg !1120, !llvm.loop !1133

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #41, !dbg !1143
  unreachable, !dbg !1143

23:                                               ; preds = %12
  %24 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !864
  %25 = load ptr, ptr @Version, align 8, !dbg !1144, !tbaa !864
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #37, !dbg !1144
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %25, ptr noundef %26, ptr noundef null) #37, !dbg !1144
  tail call void @exit(i32 noundef 0) #39, !dbg !1144
  unreachable, !dbg !1144

27:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #41, !dbg !1145
  unreachable, !dbg !1145

28:                                               ; preds = %12
  %.lcssa1 = phi ptr [ %11, %12 ]
  tail call void @llvm.dbg.value(metadata i32 438, metadata !1094, metadata !DIExpression()), !dbg !1120
  %29 = icmp eq ptr %.lcssa1, null, !dbg !1146
  br i1 %29, label %42, label %30, !dbg !1147

30:                                               ; preds = %28
  %31 = tail call noalias ptr @mode_compile(ptr noundef nonnull %.lcssa1) #37, !dbg !1148
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1097, metadata !DIExpression()), !dbg !1149
  %32 = icmp eq ptr %31, null, !dbg !1150
  br i1 %32, label %33, label %35, !dbg !1152

33:                                               ; preds = %30
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !1153
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %34) #37, !dbg !1153
  unreachable, !dbg !1153

35:                                               ; preds = %30
  %36 = tail call i32 @umask(i32 noundef 0) #37, !dbg !1154
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1103, metadata !DIExpression()), !dbg !1149
  %37 = tail call i32 @umask(i32 noundef %36) #37, !dbg !1155
  %38 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %36, ptr noundef nonnull %31, ptr noundef null) #38, !dbg !1156
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1094, metadata !DIExpression()), !dbg !1120
  tail call void @free(ptr noundef nonnull %31) #37, !dbg !1157
  %39 = icmp ult i32 %38, 512, !dbg !1158
  br i1 %39, label %42, label %40, !dbg !1160

40:                                               ; preds = %35
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #37, !dbg !1161
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %41) #37, !dbg !1161
  unreachable, !dbg !1161

42:                                               ; preds = %35, %28
  %43 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %43, metadata !1094, metadata !DIExpression()), !dbg !1120
  %44 = load i32, ptr @optind, align 4, !dbg !1162, !tbaa !933
  %45 = icmp slt i32 %44, %0, !dbg !1163
  br i1 %45, label %46, label %62, !dbg !1164

46:                                               ; preds = %42
  %47 = add nsw i32 %44, 1, !dbg !1165
  %48 = icmp slt i32 %47, %0, !dbg !1166
  br i1 %48, label %49, label %57, !dbg !1167

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64, !dbg !1168
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50, !dbg !1168
  %52 = load ptr, ptr %51, align 8, !dbg !1168, !tbaa !864
  %53 = load i8, ptr %52, align 1, !dbg !1168, !tbaa !942
  %54 = freeze i8 %53, !dbg !1169
  %55 = icmp eq i8 %54, 112, !dbg !1169
  %56 = select i1 %55, i32 2, i32 4, !dbg !1170
  br label %57, !dbg !1170

57:                                               ; preds = %49, %46
  %58 = phi i1 [ false, %46 ], [ %55, %49 ]
  %59 = phi i32 [ 4, %46 ], [ %56, %49 ]
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1104, metadata !DIExpression()), !dbg !1120
  %60 = sub nsw i32 %0, %44, !dbg !1171
  %61 = icmp slt i32 %60, %59, !dbg !1173
  br i1 %61, label %65, label %83, !dbg !1174

62:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1104, metadata !DIExpression()), !dbg !1120
  %63 = sub nsw i32 %0, %44, !dbg !1171
  %64 = icmp slt i32 %63, 2, !dbg !1173
  br i1 %64, label %80, label %83, !dbg !1174

65:                                               ; preds = %57
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !1175
  %67 = sext i32 %0 to i64, !dbg !1175
  %68 = getelementptr ptr, ptr %1, i64 %67, !dbg !1175
  %69 = getelementptr ptr, ptr %68, i64 -1, !dbg !1175
  %70 = load ptr, ptr %69, align 8, !dbg !1175, !tbaa !864
  %71 = tail call ptr @quote(ptr noundef %70) #37, !dbg !1175
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %66, ptr noundef %71) #37, !dbg !1175
  br i1 %58, label %82, label %72, !dbg !1178

72:                                               ; preds = %65
  %73 = load i32, ptr @optind, align 4, !dbg !1180, !tbaa !933
  %74 = sub nsw i32 %0, %73, !dbg !1181
  %75 = icmp eq i32 %74, 2, !dbg !1182
  br i1 %75, label %76, label %82, !dbg !1183

76:                                               ; preds = %72
  %77 = load ptr, ptr @stderr, align 8, !dbg !1184, !tbaa !864
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #37, !dbg !1184
  %79 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %77, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %78) #37, !dbg !1184
  br label %82, !dbg !1184

80:                                               ; preds = %62
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #37, !dbg !1185
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %81) #37, !dbg !1185
  br label %82, !dbg !1178

82:                                               ; preds = %80, %65, %76, %72
  tail call void @usage(i32 noundef 1) #41, !dbg !1186
  unreachable, !dbg !1186

83:                                               ; preds = %62, %57
  %84 = phi i32 [ %63, %62 ], [ %60, %57 ]
  %85 = phi i32 [ 2, %62 ], [ %59, %57 ]
  %86 = phi i1 [ true, %62 ], [ %58, %57 ]
  %87 = icmp ult i32 %85, %84, !dbg !1187
  br i1 %87, label %88, label %105, !dbg !1189

88:                                               ; preds = %83
  %89 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #37, !dbg !1190
  %90 = load i32, ptr @optind, align 4, !dbg !1190, !tbaa !933
  %91 = add nsw i32 %90, %85, !dbg !1190
  %92 = sext i32 %91 to i64, !dbg !1190
  %93 = getelementptr inbounds ptr, ptr %1, i64 %92, !dbg !1190
  %94 = load ptr, ptr %93, align 8, !dbg !1190, !tbaa !864
  %95 = tail call ptr @quote(ptr noundef %94) #37, !dbg !1190
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %89, ptr noundef %95) #37, !dbg !1190
  br i1 %86, label %96, label %104, !dbg !1192

96:                                               ; preds = %88
  %97 = load i32, ptr @optind, align 4, !dbg !1194, !tbaa !933
  %98 = sub nsw i32 %0, %97, !dbg !1195
  %99 = icmp eq i32 %98, 4, !dbg !1196
  br i1 %99, label %100, label %104, !dbg !1197

100:                                              ; preds = %96
  %101 = load ptr, ptr @stderr, align 8, !dbg !1198, !tbaa !864
  %102 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #37, !dbg !1198
  %103 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %101, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %102) #37, !dbg !1198
  br label %104, !dbg !1198

104:                                              ; preds = %100, %96, %88
  tail call void @usage(i32 noundef 1) #41, !dbg !1199
  unreachable, !dbg !1199

105:                                              ; preds = %83
  %106 = sext i32 %44 to i64, !dbg !1200
  %107 = getelementptr ptr, ptr %1, i64 %106, !dbg !1200
  %108 = getelementptr ptr, ptr %107, i64 1, !dbg !1200
  %109 = load ptr, ptr %108, align 8, !dbg !1200, !tbaa !864
  %110 = load i8, ptr %109, align 1, !dbg !1200, !tbaa !942
  switch i8 %110, label %182 [
    i8 98, label %112
    i8 99, label %111
    i8 117, label %111
    i8 112, label %170
  ], !dbg !1201

111:                                              ; preds = %105, %105
  tail call void @llvm.dbg.value(metadata i32 8192, metadata !1108, metadata !DIExpression()), !dbg !1120
  br label %112, !dbg !1202

112:                                              ; preds = %105, %111
  %113 = phi i32 [ 8192, %111 ], [ 24576, %105 ], !dbg !1203
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !1108, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.label(metadata !1109), !dbg !1204
  %114 = getelementptr ptr, ptr %107, i64 2, !dbg !1205
  %115 = load ptr, ptr %114, align 8, !dbg !1205, !tbaa !864
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1111, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1206
  %116 = call i32 @xstrtoumax(ptr noundef %115, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @.str.12) #37, !dbg !1207
  %117 = icmp eq i32 %116, 0, !dbg !1209
  %118 = load i64, ptr %3, align 8
  %119 = icmp ult i64 %118, 4294967296
  %120 = select i1 %117, i1 %119, i1 false, !dbg !1210
  br i1 %120, label %124, label %121, !dbg !1210

121:                                              ; preds = %112
  %122 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #37, !dbg !1211
  %123 = call ptr @quote(ptr noundef %115) #37, !dbg !1211
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %122, ptr noundef %123) #37, !dbg !1211
  unreachable, !dbg !1211

124:                                              ; preds = %112
  %125 = load i32, ptr @optind, align 4, !dbg !1212, !tbaa !933
  %126 = sext i32 %125 to i64, !dbg !1213
  %127 = getelementptr ptr, ptr %1, i64 %126, !dbg !1213
  %128 = getelementptr ptr, ptr %127, i64 3, !dbg !1213
  %129 = load ptr, ptr %128, align 8, !dbg !1213, !tbaa !864
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1214
  %130 = call i32 @xstrtoumax(ptr noundef %129, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #37, !dbg !1215
  %131 = icmp eq i32 %130, 0, !dbg !1217
  br i1 %131, label %132, label %135, !dbg !1218

132:                                              ; preds = %124
  %133 = load i64, ptr %4, align 8, !dbg !1219, !tbaa !1220
  %134 = icmp ult i64 %133, 4294967296, !dbg !1222
  br i1 %134, label %138, label %135, !dbg !1223

135:                                              ; preds = %132, %124
  %136 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #37, !dbg !1224
  %137 = call ptr @quote(ptr noundef %129) #37, !dbg !1224
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %136, ptr noundef %137) #37, !dbg !1224
  unreachable, !dbg !1224

138:                                              ; preds = %132
  %139 = load i64, ptr %3, align 8, !dbg !1225, !tbaa !1220
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1226, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !1232, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1234
  %140 = shl i64 %139, 8, !dbg !1236
  %141 = and i64 %140, 1048320, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1233, metadata !DIExpression()), !dbg !1234
  %142 = shl i64 %139, 32, !dbg !1236
  %143 = and i64 %142, -17592186044416, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1233, metadata !DIExpression()), !dbg !1234
  %144 = and i64 %133, 255, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1233, metadata !DIExpression()), !dbg !1234
  %145 = shl nuw nsw i64 %133, 12, !dbg !1236
  %146 = and i64 %145, 17592184995840, !dbg !1236
  %147 = or disjoint i64 %146, %144, !dbg !1236
  %148 = or disjoint i64 %147, %141, !dbg !1236
  %149 = or disjoint i64 %148, %143, !dbg !1236
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !1233, metadata !DIExpression()), !dbg !1234
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !1116, metadata !DIExpression()), !dbg !1118
  %150 = icmp eq i64 %149, -1, !dbg !1237
  br i1 %150, label %151, label %153, !dbg !1239

151:                                              ; preds = %138
  %152 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #37, !dbg !1240
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %152, ptr noundef %115, ptr noundef %129) #37, !dbg !1240
  unreachable, !dbg !1240

153:                                              ; preds = %138
  %154 = load i32, ptr @optind, align 4, !dbg !1241, !tbaa !933
  %155 = sext i32 %154 to i64, !dbg !1243
  %156 = getelementptr inbounds ptr, ptr %1, i64 %155, !dbg !1243
  %157 = load ptr, ptr %156, align 8, !dbg !1243, !tbaa !864
  %158 = or disjoint i32 %113, %43, !dbg !1244
  %159 = call i32 @rpl_mknod(ptr noundef %157, i32 noundef %158, i64 noundef %149) #37, !dbg !1245
  %160 = icmp eq i32 %159, 0, !dbg !1246
  br i1 %160, label %169, label %161, !dbg !1247

161:                                              ; preds = %153
  %162 = tail call ptr @__errno_location() #40, !dbg !1248
  %163 = load i32, ptr %162, align 4, !dbg !1248, !tbaa !933
  %164 = load i32, ptr @optind, align 4, !dbg !1248, !tbaa !933
  %165 = sext i32 %164 to i64, !dbg !1248
  %166 = getelementptr inbounds ptr, ptr %1, i64 %165, !dbg !1248
  %167 = load ptr, ptr %166, align 8, !dbg !1248, !tbaa !864
  %168 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %167) #37, !dbg !1248
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %163, ptr noundef nonnull @.str.31, ptr noundef %168) #37, !dbg !1248
  unreachable, !dbg !1248

169:                                              ; preds = %153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1249
  br label %190, !dbg !1250

170:                                              ; preds = %105
  %171 = load ptr, ptr %107, align 8, !dbg !1251, !tbaa !864
  %172 = tail call i32 @mkfifo(ptr noundef %171, i32 noundef %43) #37, !dbg !1253
  %173 = icmp eq i32 %172, 0, !dbg !1254
  br i1 %173, label %190, label %174, !dbg !1255

174:                                              ; preds = %170
  %175 = tail call ptr @__errno_location() #40, !dbg !1256
  %176 = load i32, ptr %175, align 4, !dbg !1256, !tbaa !933
  %177 = load i32, ptr @optind, align 4, !dbg !1256, !tbaa !933
  %178 = sext i32 %177 to i64, !dbg !1256
  %179 = getelementptr inbounds ptr, ptr %1, i64 %178, !dbg !1256
  %180 = load ptr, ptr %179, align 8, !dbg !1256, !tbaa !864
  %181 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %180) #37, !dbg !1256
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %176, ptr noundef nonnull @.str.31, ptr noundef %181) #37, !dbg !1256
  unreachable, !dbg !1256

182:                                              ; preds = %105
  %183 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #37, !dbg !1257
  %184 = load i32, ptr @optind, align 4, !dbg !1257, !tbaa !933
  %185 = sext i32 %184 to i64, !dbg !1257
  %186 = getelementptr ptr, ptr %1, i64 %185, !dbg !1257
  %187 = getelementptr ptr, ptr %186, i64 1, !dbg !1257
  %188 = load ptr, ptr %187, align 8, !dbg !1257, !tbaa !864
  %189 = tail call ptr @quote(ptr noundef %188) #37, !dbg !1257
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %183, ptr noundef %189) #37, !dbg !1257
  tail call void @usage(i32 noundef 1) #41, !dbg !1258
  unreachable, !dbg !1258

190:                                              ; preds = %170, %169
  br i1 %29, label %207, label %191, !dbg !1259

191:                                              ; preds = %190
  %192 = load i32, ptr @optind, align 4, !dbg !1261, !tbaa !933
  %193 = sext i32 %192 to i64, !dbg !1262
  %194 = getelementptr inbounds ptr, ptr %1, i64 %193, !dbg !1262
  %195 = load ptr, ptr %194, align 8, !dbg !1262, !tbaa !864
  %196 = call i32 @lchmod(ptr noundef %195, i32 noundef %43) #37, !dbg !1263
  %197 = icmp eq i32 %196, 0, !dbg !1264
  br i1 %197, label %207, label %198, !dbg !1265

198:                                              ; preds = %191
  %199 = tail call ptr @__errno_location() #40, !dbg !1266
  %200 = load i32, ptr %199, align 4, !dbg !1266, !tbaa !933
  %201 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #37, !dbg !1266
  %202 = load i32, ptr @optind, align 4, !dbg !1266, !tbaa !933
  %203 = sext i32 %202 to i64, !dbg !1266
  %204 = getelementptr inbounds ptr, ptr %1, i64 %203, !dbg !1266
  %205 = load ptr, ptr %204, align 8, !dbg !1266, !tbaa !864
  %206 = call ptr @quotearg_style(i32 noundef 4, ptr noundef %205) #37, !dbg !1266
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %200, ptr noundef %201, ptr noundef %206) #37, !dbg !1266
  unreachable, !dbg !1266

207:                                              ; preds = %191, %190
  ret i32 0, !dbg !1267
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1268 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1271 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1272 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1275 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1281 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1285 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1288 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nounwind
declare !dbg !1292 i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1295 i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1296 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1298, metadata !DIExpression()), !dbg !1299
  store ptr %0, ptr @file_name, align 8, !dbg !1300, !tbaa !864
  ret void, !dbg !1301
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1302 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1308, !tbaa !1309
  ret void, !dbg !1311
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1312 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1317, !tbaa !864
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1318
  %3 = icmp eq i32 %2, 0, !dbg !1319
  br i1 %3, label %22, label %4, !dbg !1320

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1321, !tbaa !1309, !range !1322, !noundef !901
  %6 = icmp eq i8 %5, 0, !dbg !1321
  br i1 %6, label %11, label %7, !dbg !1323

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1324
  %9 = load i32, ptr %8, align 4, !dbg !1324, !tbaa !933
  %10 = icmp eq i32 %9, 32, !dbg !1325
  br i1 %10, label %22, label %11, !dbg !1326

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1.40, i32 noundef 5) #37, !dbg !1327
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1314, metadata !DIExpression()), !dbg !1328
  %13 = load ptr, ptr @file_name, align 8, !dbg !1329, !tbaa !864
  %14 = icmp eq ptr %13, null, !dbg !1329
  %15 = tail call ptr @__errno_location() #40, !dbg !1331
  %16 = load i32, ptr %15, align 4, !dbg !1331, !tbaa !933
  br i1 %14, label %19, label %17, !dbg !1332

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1333
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.41, ptr noundef %18, ptr noundef %12) #37, !dbg !1333
  br label %20, !dbg !1333

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.42, ptr noundef %12) #37, !dbg !1334
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1335, !tbaa !933
  tail call void @_exit(i32 noundef %21) #39, !dbg !1336
  unreachable, !dbg !1336

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1337, !tbaa !864
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1339
  %25 = icmp eq i32 %24, 0, !dbg !1340
  br i1 %25, label %28, label %26, !dbg !1341

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1342, !tbaa !933
  tail call void @_exit(i32 noundef %27) #39, !dbg !1343
  unreachable, !dbg !1343

28:                                               ; preds = %22
  ret void, !dbg !1344
}

; Function Attrs: noreturn
declare !dbg !1345 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1347 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1351, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1352, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1353, metadata !DIExpression()), !dbg !1355
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1354, metadata !DIExpression(DW_OP_deref)), !dbg !1355
  tail call fastcc void @flush_stdout(), !dbg !1356
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1357, !tbaa !864
  %7 = icmp eq ptr %6, null, !dbg !1357
  br i1 %7, label %9, label %8, !dbg !1359

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1360
  br label %13, !dbg !1360

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1361, !tbaa !864
  %11 = tail call ptr @getprogname() #38, !dbg !1361
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef %11) #37, !dbg !1361
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1363, !tbaa.struct !1364
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1363
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1363
  ret void, !dbg !1365
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1366 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 1, metadata !1370, metadata !DIExpression()), !dbg !1375
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1378
  %2 = icmp slt i32 %1, 0, !dbg !1379
  br i1 %2, label %6, label %3, !dbg !1380

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1381, !tbaa !864
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1381
  br label %6, !dbg !1381

6:                                                ; preds = %3, %0
  ret void, !dbg !1382
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1383 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1389
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1385, metadata !DIExpression()), !dbg !1390
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1386, metadata !DIExpression()), !dbg !1390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1387, metadata !DIExpression()), !dbg !1390
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1388, metadata !DIExpression(DW_OP_deref)), !dbg !1390
  %7 = load ptr, ptr @stderr, align 8, !dbg !1391, !tbaa !864
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1392, !noalias !1436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %7, metadata !1432, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr %2, metadata !1433, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata ptr poison, metadata !1434, metadata !DIExpression(DW_OP_deref)), !dbg !1441
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1392, !noalias !1436
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1442, !tbaa !933
  %10 = add i32 %9, 1, !dbg !1442
  store i32 %10, ptr @error_message_count, align 4, !dbg !1442, !tbaa !933
  %11 = icmp eq i32 %1, 0, !dbg !1443
  br i1 %11, label %21, label %12, !dbg !1445

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1446, metadata !DIExpression(), metadata !1389, metadata ptr %5, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i32 %1, metadata !1449, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1456
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1457
  call void @llvm.dbg.value(metadata ptr %13, metadata !1450, metadata !DIExpression()), !dbg !1454
  %14 = icmp eq ptr %13, null, !dbg !1458
  br i1 %14, label %15, label %17, !dbg !1460

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.44, ptr noundef nonnull @.str.5.45, i32 noundef 5) #37, !dbg !1461
  call void @llvm.dbg.value(metadata ptr %16, metadata !1450, metadata !DIExpression()), !dbg !1454
  br label %17, !dbg !1462

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1454
  call void @llvm.dbg.value(metadata ptr %18, metadata !1450, metadata !DIExpression()), !dbg !1454
  %19 = load ptr, ptr @stderr, align 8, !dbg !1463, !tbaa !864
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.46, ptr noundef %18) #37, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1464
  br label %21, !dbg !1465

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1466, !tbaa !864
  call void @llvm.dbg.value(metadata i32 10, metadata !1467, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %22, metadata !1473, metadata !DIExpression()), !dbg !1474
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1476
  %24 = load ptr, ptr %23, align 8, !dbg !1476, !tbaa !1477
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1476
  %26 = load ptr, ptr %25, align 8, !dbg !1476, !tbaa !1479
  %27 = icmp ult ptr %24, %26, !dbg !1476
  br i1 %27, label %30, label %28, !dbg !1476, !prof !1480

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1476
  br label %32, !dbg !1476

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1476
  store ptr %31, ptr %23, align 8, !dbg !1476, !tbaa !1477
  store i8 10, ptr %24, align 1, !dbg !1476, !tbaa !942
  br label %32, !dbg !1476

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1481, !tbaa !864
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1481
  %35 = icmp eq i32 %0, 0, !dbg !1482
  br i1 %35, label %37, label %36, !dbg !1484

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1485
  unreachable, !dbg !1485

37:                                               ; preds = %32
  ret void, !dbg !1486
}

declare !dbg !1487 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1490 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1493 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1496 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1499 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1503 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1510, metadata !DIExpression(), metadata !1511, metadata ptr %4, metadata !DIExpression()), !dbg !1512
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1507, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1508, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1509, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1513
  call void @llvm.va_start(ptr nonnull %4), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1515, !tbaa.struct !1364
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1515
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1515
  call void @llvm.va_end(ptr nonnull %4), !dbg !1516
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1517
  ret void, !dbg !1517
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !460 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !476, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !477, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !478, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !479, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !480, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !481, metadata !DIExpression(DW_OP_deref)), !dbg !1518
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1519, !tbaa !933
  %9 = icmp eq i32 %8, 0, !dbg !1519
  br i1 %9, label %24, label %10, !dbg !1521

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1522, !tbaa !933
  %12 = icmp eq i32 %11, %3, !dbg !1525
  br i1 %12, label %13, label %23, !dbg !1526

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1527, !tbaa !864
  %15 = icmp eq ptr %14, %2, !dbg !1528
  br i1 %15, label %37, label %16, !dbg !1529

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1530
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1531
  br i1 %19, label %20, label %23, !dbg !1531

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1532
  %22 = icmp eq i32 %21, 0, !dbg !1533
  br i1 %22, label %37, label %23, !dbg !1534

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1535, !tbaa !864
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1536, !tbaa !933
  br label %24, !dbg !1537

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1538
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1539, !tbaa !864
  %26 = icmp eq ptr %25, null, !dbg !1539
  br i1 %26, label %28, label %27, !dbg !1541

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1542
  br label %32, !dbg !1542

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1543, !tbaa !864
  %30 = tail call ptr @getprogname() #38, !dbg !1543
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.49, ptr noundef %30) #37, !dbg !1543
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1545, !tbaa !864
  %34 = icmp eq ptr %2, null, !dbg !1545
  %35 = select i1 %34, ptr @.str.3.50, ptr @.str.2.51, !dbg !1545
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1545
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1546, !tbaa.struct !1364
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1546
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1546
  br label %37, !dbg !1547

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1547
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1548 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1558
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1557, metadata !DIExpression(), metadata !1558, metadata ptr %6, metadata !DIExpression()), !dbg !1559
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1552, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1553, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1554, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1555, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1556, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1560
  call void @llvm.va_start(ptr nonnull %6), !dbg !1561
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1562, !tbaa.struct !1364
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1562
  call void @llvm.va_end(ptr nonnull %6), !dbg !1563
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1564
  ret void, !dbg !1564
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1565 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1568, !tbaa !864
  ret ptr %1, !dbg !1569
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1570 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1574, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1575, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1576, metadata !DIExpression()), !dbg !1577
  %4 = and i32 %1, 61440, !dbg !1578
  %5 = icmp eq i32 %4, 4096, !dbg !1578
  %6 = icmp eq i64 %2, 0
  %7 = and i1 %5, %6, !dbg !1580
  br i1 %7, label %8, label %11, !dbg !1580

8:                                                ; preds = %3
  %9 = and i32 %1, -4097, !dbg !1581
  %10 = tail call i32 @mkfifo(ptr noundef nonnull %0, i32 noundef %9) #37, !dbg !1582
  br label %13, !dbg !1583

11:                                               ; preds = %3
  %12 = tail call i32 @mknod(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2) #37, !dbg !1584
  br label %13, !dbg !1585

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ], !dbg !1577
  ret i32 %14, !dbg !1586
}

; Function Attrs: nounwind
declare !dbg !1587 i32 @mknod(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @mode_compile(ptr noundef %0) local_unnamed_addr #10 !dbg !1590 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1602, metadata !DIExpression()), !dbg !1632
  %2 = load i8, ptr %0, align 1, !dbg !1633, !tbaa !942
  %3 = and i8 %2, -8, !dbg !1634
  %4 = icmp eq i8 %3, 48, !dbg !1634
  br i1 %4, label %.preheader, label %.preheader6, !dbg !1634

.preheader6:                                      ; preds = %1
  br label %34, !dbg !1635

.preheader:                                       ; preds = %1
  br label %5, !dbg !1636

5:                                                ; preds = %.preheader, %14
  %6 = phi i8 [ %16, %14 ], [ %2, %.preheader ], !dbg !1637
  %7 = phi i32 [ %12, %14 ], [ 0, %.preheader ], !dbg !1639
  %8 = phi ptr [ %15, %14 ], [ %0, %.preheader ], !dbg !1639
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1603, metadata !DIExpression()), !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1606, metadata !DIExpression()), !dbg !1639
  %9 = shl i32 %7, 3, !dbg !1640
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1603, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1639
  %10 = zext nneg i8 %6 to i32, !dbg !1637
  %11 = add i32 %9, -48, !dbg !1641
  %12 = add nsw i32 %11, %10, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1606, metadata !DIExpression()), !dbg !1639
  %13 = icmp ugt i32 %12, 4095, !dbg !1643
  br i1 %13, label %.loopexit, label %14, !dbg !1645

14:                                               ; preds = %5
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1646
  tail call void @llvm.dbg.value(metadata ptr %15, metadata !1603, metadata !DIExpression()), !dbg !1639
  %16 = load i8, ptr %15, align 1, !dbg !1647, !tbaa !942
  %17 = and i8 %16, -8, !dbg !1648
  %18 = icmp eq i8 %17, 48, !dbg !1648
  br i1 %18, label %5, label %19, !dbg !1648, !llvm.loop !1649

19:                                               ; preds = %14
  %.lcssa9 = phi ptr [ %15, %14 ], !dbg !1646
  %.lcssa8 = phi i8 [ %16, %14 ], !dbg !1647
  %.lcssa7 = phi i32 [ %12, %14 ], !dbg !1642
  %20 = icmp eq i8 %.lcssa8, 0, !dbg !1651
  br i1 %20, label %21, label %139, !dbg !1653

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i32 %.lcssa7, metadata !1607, metadata !DIExpression()), !dbg !1639
  %22 = ptrtoint ptr %.lcssa9 to i64, !dbg !1654
  %23 = ptrtoint ptr %0 to i64, !dbg !1654
  %24 = sub i64 %22, %23, !dbg !1654
  %25 = icmp slt i64 %24, 5, !dbg !1655
  %26 = or i32 %.lcssa7, 1023, !dbg !1656
  %27 = select i1 %25, i32 %26, i32 4095, !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1608, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %.lcssa7, metadata !1657, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 %27, metadata !1662, metadata !DIExpression()), !dbg !1664
  %28 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %28, metadata !1663, metadata !DIExpression()), !dbg !1664
  store i8 61, ptr %28, align 4, !dbg !1667, !tbaa !1668
  %29 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 1, !dbg !1670
  store i8 1, ptr %29, align 1, !dbg !1671, !tbaa !1672
  %30 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 2, !dbg !1673
  store i32 4095, ptr %30, align 4, !dbg !1674, !tbaa !1675
  %31 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 3, !dbg !1676
  store i32 %.lcssa7, ptr %31, align 4, !dbg !1677, !tbaa !1678
  %32 = getelementptr inbounds %struct.mode_change, ptr %28, i64 0, i32 4, !dbg !1679
  store i32 %27, ptr %32, align 4, !dbg !1680, !tbaa !1681
  %33 = getelementptr inbounds %struct.mode_change, ptr %28, i64 1, i32 1, !dbg !1682
  store i8 0, ptr %33, align 1, !dbg !1683, !tbaa !1672
  br label %139, !dbg !1684

34:                                               ; preds = %.preheader6, %41
  %35 = phi i8 [ %45, %41 ], [ %2, %.preheader6 ], !dbg !1685
  %36 = phi i64 [ %43, %41 ], [ 1, %.preheader6 ], !dbg !1687
  %37 = phi ptr [ %44, %41 ], [ %0, %.preheader6 ], !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !1612, metadata !DIExpression()), !dbg !1689
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !1610, metadata !DIExpression()), !dbg !1687
  switch i8 %35, label %40 [
    i8 0, label %38
    i8 61, label %41
    i8 43, label %41
    i8 45, label %41
  ], !dbg !1635

38:                                               ; preds = %34
  %.lcssa24 = phi i64 [ %36, %34 ], !dbg !1687
  %39 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %.lcssa24, i64 noundef 16) #44, !dbg !1690
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !1609, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1615, metadata !DIExpression()), !dbg !1632
  br label %46, !dbg !1691

40:                                               ; preds = %34
  br label %41, !dbg !1692

41:                                               ; preds = %34, %34, %34, %40
  %42 = phi i64 [ 0, %40 ], [ 1, %34 ], [ 1, %34 ], [ 1, %34 ]
  %43 = add i64 %42, %36, !dbg !1693
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !1610, metadata !DIExpression()), !dbg !1687
  %44 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !1694
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !1612, metadata !DIExpression()), !dbg !1689
  %45 = load i8, ptr %44, align 1, !dbg !1685, !tbaa !942
  br label %34, !dbg !1695, !llvm.loop !1696

46:                                               ; preds = %134, %38
  %47 = phi i64 [ 0, %38 ], [ %.lcssa20, %134 ], !dbg !1698
  %48 = phi ptr [ %0, %38 ], [ %135, %134 ], !dbg !1699
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1623, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !1615, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1614, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1616, metadata !DIExpression()), !dbg !1701
  br label %49, !dbg !1702

49:                                               ; preds = %60, %46
  %50 = phi ptr [ %48, %46 ], [ %62, %60 ], !dbg !1703
  %51 = phi i32 [ 0, %46 ], [ %61, %60 ], !dbg !1701
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1616, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1615, metadata !DIExpression()), !dbg !1632
  %52 = load i8, ptr %50, align 1, !dbg !1704, !tbaa !942
  switch i8 %52, label %.loopexit5 [
    i8 117, label %54
    i8 103, label %56
    i8 111, label %58
    i8 97, label %60
    i8 61, label %53
    i8 43, label %53
    i8 45, label %53
  ], !dbg !1707

53:                                               ; preds = %49, %49, %49
  %.lcssa14 = phi ptr [ %50, %49 ], [ %50, %49 ], [ %50, %49 ], !dbg !1703
  %.lcssa12 = phi i32 [ %51, %49 ], [ %51, %49 ], [ %51, %49 ], !dbg !1701
  %.lcssa10 = phi i8 [ %52, %49 ], [ %52, %49 ], [ %52, %49 ], !dbg !1704
  br label %63, !dbg !1708

54:                                               ; preds = %49
  %55 = or i32 %51, 2496, !dbg !1709
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1616, metadata !DIExpression()), !dbg !1701
  br label %60, !dbg !1711

56:                                               ; preds = %49
  %57 = or i32 %51, 1080, !dbg !1712
  tail call void @llvm.dbg.value(metadata i32 %57, metadata !1616, metadata !DIExpression()), !dbg !1701
  br label %60, !dbg !1713

58:                                               ; preds = %49
  %59 = or i32 %51, 519, !dbg !1714
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1616, metadata !DIExpression()), !dbg !1701
  br label %60, !dbg !1715

60:                                               ; preds = %49, %54, %56, %58
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ 4095, %49 ], !dbg !1716
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1616, metadata !DIExpression()), !dbg !1701
  %62 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !1717
  tail call void @llvm.dbg.value(metadata ptr %62, metadata !1615, metadata !DIExpression()), !dbg !1632
  br label %49, !dbg !1718, !llvm.loop !1719

63:                                               ; preds = %133, %53
  %64 = phi i8 [ %.lcssa10, %53 ], [ %132, %133 ], !dbg !1722
  %65 = phi i64 [ %47, %53 ], [ %122, %133 ], !dbg !1632
  %66 = phi ptr [ %.lcssa14, %53 ], [ %115, %133 ], !dbg !1703
  %67 = phi i32 [ %.lcssa12, %53 ], [ %121, %133 ], !dbg !1723
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1623, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1616, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %66, metadata !1615, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !1614, metadata !DIExpression()), !dbg !1632
  %68 = getelementptr inbounds i8, ptr %66, i64 1, !dbg !1724
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !1615, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i8 %64, metadata !1621, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1624, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i8 3, metadata !1625, metadata !DIExpression()), !dbg !1700
  %69 = load i8, ptr %68, align 1, !dbg !1725, !tbaa !942
  switch i8 %69, label %.preheader1 [
    i8 48, label %70
    i8 49, label %70
    i8 50, label %70
    i8 51, label %70
    i8 52, label %70
    i8 53, label %70
    i8 54, label %70
    i8 55, label %70
    i8 117, label %88
    i8 103, label %90
    i8 111, label %92
  ], !dbg !1708

.preheader1:                                      ; preds = %63
  br label %94, !dbg !1726

70:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %71, !dbg !1728

71:                                               ; preds = %70, %80
  %72 = phi i8 [ %82, %80 ], [ %69, %70 ], !dbg !1729
  %73 = phi ptr [ %81, %80 ], [ %68, %70 ], !dbg !1700
  %74 = phi i32 [ %78, %80 ], [ 0, %70 ], !dbg !1731
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1626, metadata !DIExpression()), !dbg !1731
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1615, metadata !DIExpression()), !dbg !1632
  %75 = shl i32 %74, 3, !dbg !1732
  tail call void @llvm.dbg.value(metadata ptr %73, metadata !1615, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1632
  %76 = zext nneg i8 %72 to i32, !dbg !1729
  %77 = add i32 %75, -48, !dbg !1733
  %78 = add nsw i32 %77, %76, !dbg !1734
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1626, metadata !DIExpression()), !dbg !1731
  %79 = icmp ugt i32 %78, 4095, !dbg !1735
  br i1 %79, label %.loopexit3, label %80, !dbg !1737

80:                                               ; preds = %71
  %81 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !1615, metadata !DIExpression()), !dbg !1632
  %82 = load i8, ptr %81, align 1, !dbg !1739, !tbaa !942
  %83 = and i8 %82, -8, !dbg !1740
  %84 = icmp eq i8 %83, 48, !dbg !1740
  br i1 %84, label %71, label %85, !dbg !1740, !llvm.loop !1741

85:                                               ; preds = %80
  %.lcssa17 = phi ptr [ %81, %80 ], !dbg !1738
  %.lcssa16 = phi i8 [ %82, %80 ], !dbg !1739
  %.lcssa15 = phi i32 [ %78, %80 ], !dbg !1734
  %86 = icmp eq i32 %67, 0, !dbg !1743
  br i1 %86, label %87, label %.loopexit4, !dbg !1745

87:                                               ; preds = %85
  switch i8 %.lcssa16, label %.loopexit4 [
    i8 0, label %114
    i8 44, label %114
  ], !dbg !1746

88:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 448, metadata !1623, metadata !DIExpression()), !dbg !1700
  %89 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1747
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !1615, metadata !DIExpression()), !dbg !1632
  br label %114, !dbg !1748

90:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 56, metadata !1623, metadata !DIExpression()), !dbg !1700
  %91 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1749
  tail call void @llvm.dbg.value(metadata ptr %91, metadata !1615, metadata !DIExpression()), !dbg !1632
  br label %114, !dbg !1750

92:                                               ; preds = %63
  tail call void @llvm.dbg.value(metadata i32 7, metadata !1623, metadata !DIExpression()), !dbg !1700
  %93 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !1615, metadata !DIExpression()), !dbg !1632
  br label %114, !dbg !1752

94:                                               ; preds = %.preheader1, %109
  %95 = phi i8 [ %113, %109 ], [ %69, %.preheader1 ], !dbg !1753
  %96 = phi ptr [ %112, %109 ], [ %68, %.preheader1 ], !dbg !1700
  %97 = phi i32 [ %110, %109 ], [ 0, %.preheader1 ], !dbg !1755
  %98 = phi i8 [ %111, %109 ], [ 1, %.preheader1 ], !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %98, metadata !1625, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %97, metadata !1623, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1615, metadata !DIExpression()), !dbg !1632
  switch i8 %95, label %.loopexit2 [
    i8 114, label %99
    i8 119, label %101
    i8 120, label %103
    i8 88, label %109
    i8 115, label %105
    i8 116, label %107
  ], !dbg !1757

99:                                               ; preds = %94
  %100 = or i32 %97, 292, !dbg !1758
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !1623, metadata !DIExpression()), !dbg !1700
  br label %109, !dbg !1760

101:                                              ; preds = %94
  %102 = or i32 %97, 146, !dbg !1761
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1623, metadata !DIExpression()), !dbg !1700
  br label %109, !dbg !1762

103:                                              ; preds = %94
  %104 = or i32 %97, 73, !dbg !1763
  tail call void @llvm.dbg.value(metadata i32 %104, metadata !1623, metadata !DIExpression()), !dbg !1700
  br label %109, !dbg !1764

105:                                              ; preds = %94
  %106 = or i32 %97, 3072, !dbg !1765
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1623, metadata !DIExpression()), !dbg !1700
  br label %109, !dbg !1766

107:                                              ; preds = %94
  %108 = or i32 %97, 512, !dbg !1767
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1623, metadata !DIExpression()), !dbg !1700
  br label %109, !dbg !1768

109:                                              ; preds = %94, %99, %101, %103, %105, %107
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %97, %94 ], !dbg !1755
  %111 = phi i8 [ %98, %107 ], [ %98, %105 ], [ %98, %103 ], [ %98, %101 ], [ %98, %99 ], [ 2, %94 ], !dbg !1755
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !1625, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %110, metadata !1623, metadata !DIExpression()), !dbg !1700
  %112 = getelementptr inbounds i8, ptr %96, i64 1, !dbg !1769
  tail call void @llvm.dbg.value(metadata ptr %112, metadata !1615, metadata !DIExpression()), !dbg !1632
  %113 = load i8, ptr %112, align 1, !dbg !1753, !tbaa !942
  br label %94, !dbg !1770, !llvm.loop !1771

.loopexit2:                                       ; preds = %94
  %.lcssa19 = phi ptr [ %96, %94 ], !dbg !1700
  %.lcssa18 = phi i32 [ %97, %94 ], !dbg !1755
  %.lcssa = phi i8 [ %98, %94 ], !dbg !1756
  br label %114, !dbg !1773

114:                                              ; preds = %.loopexit2, %87, %87, %92, %90, %88
  %115 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %.lcssa17, %87 ], [ %.lcssa17, %87 ], [ %.lcssa19, %.loopexit2 ], !dbg !1700
  %116 = phi i32 [ %67, %92 ], [ %67, %90 ], [ %67, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ %67, %.loopexit2 ], !dbg !1723
  %117 = phi i32 [ 7, %92 ], [ 56, %90 ], [ 448, %88 ], [ %.lcssa15, %87 ], [ %.lcssa15, %87 ], [ %.lcssa18, %.loopexit2 ]
  %118 = phi i1 [ true, %92 ], [ true, %90 ], [ true, %88 ], [ false, %87 ], [ false, %87 ], [ true, %.loopexit2 ], !dbg !1774
  %119 = phi i32 [ 0, %92 ], [ 0, %90 ], [ 0, %88 ], [ 4095, %87 ], [ 4095, %87 ], [ 0, %.loopexit2 ], !dbg !1774
  %120 = phi i8 [ 3, %92 ], [ 3, %90 ], [ 3, %88 ], [ 1, %87 ], [ 1, %87 ], [ %.lcssa, %.loopexit2 ], !dbg !1700
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !1625, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1624, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !1623, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1616, metadata !DIExpression()), !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %115, metadata !1615, metadata !DIExpression()), !dbg !1632
  %121 = freeze i32 %116, !dbg !1773
  %122 = add i64 %65, 1, !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1614, metadata !DIExpression()), !dbg !1632
  %123 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %123, metadata !1630, metadata !DIExpression()), !dbg !1700
  store i8 %64, ptr %123, align 4, !dbg !1777, !tbaa !1668
  %124 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 1, !dbg !1778
  store i8 %120, ptr %124, align 1, !dbg !1779, !tbaa !1672
  %125 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 2, !dbg !1780
  store i32 %121, ptr %125, align 4, !dbg !1781, !tbaa !1675
  %126 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 3, !dbg !1782
  store i32 %117, ptr %126, align 4, !dbg !1783, !tbaa !1678
  %127 = icmp eq i32 %121, 0, !dbg !1773
  %128 = select i1 %127, i32 -1, i32 %121, !dbg !1773
  %129 = and i32 %128, %117, !dbg !1773
  %130 = select i1 %118, i32 %129, i32 %119, !dbg !1773
  %131 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %65, i32 4, !dbg !1784
  store i32 %130, ptr %131, align 4, !dbg !1785, !tbaa !1681
  %132 = load i8, ptr %115, align 1, !dbg !1786, !tbaa !942
  switch i8 %132, label %.loopexit4 [
    i8 61, label %133
    i8 43, label %133
    i8 45, label %133
    i8 44, label %134
    i8 0, label %136
  ], !dbg !1787

133:                                              ; preds = %114, %114, %114
  br label %63, !dbg !1700

134:                                              ; preds = %114
  %.lcssa22 = phi ptr [ %115, %114 ], !dbg !1700
  %.lcssa20 = phi i64 [ %122, %114 ], !dbg !1775
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1623, metadata !DIExpression()), !dbg !1700
  tail call void @llvm.dbg.value(metadata ptr %.lcssa22, metadata !1615, metadata !DIExpression()), !dbg !1632
  tail call void @llvm.dbg.value(metadata i64 %.lcssa20, metadata !1614, metadata !DIExpression()), !dbg !1632
  %135 = getelementptr inbounds i8, ptr %.lcssa22, i64 1, !dbg !1788
  tail call void @llvm.dbg.value(metadata ptr %135, metadata !1615, metadata !DIExpression()), !dbg !1632
  br label %46, !dbg !1789, !llvm.loop !1790

136:                                              ; preds = %114
  %.lcssa21 = phi i64 [ %122, %114 ], !dbg !1775
  %137 = getelementptr inbounds %struct.mode_change, ptr %39, i64 %.lcssa21, i32 1, !dbg !1793
  store i8 0, ptr %137, align 1, !dbg !1796, !tbaa !1672
  br label %139, !dbg !1797

.loopexit3:                                       ; preds = %71
  br label %138, !dbg !1798

.loopexit4:                                       ; preds = %114, %87, %85
  br label %138, !dbg !1798

.loopexit5:                                       ; preds = %49
  br label %138, !dbg !1798

138:                                              ; preds = %.loopexit5, %.loopexit4, %.loopexit3
  call void @llvm.dbg.label(metadata !1631), !dbg !1799
  tail call void @free(ptr noundef nonnull %39) #37, !dbg !1798
  br label %139, !dbg !1800

.loopexit:                                        ; preds = %5
  br label %139, !dbg !1801

139:                                              ; preds = %.loopexit, %136, %138, %21, %19
  %140 = phi ptr [ %28, %21 ], [ null, %19 ], [ null, %138 ], [ %39, %136 ], [ null, %.loopexit ]
  ret ptr %140, !dbg !1801
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @mode_create_from_ref(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !1802 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1839
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1805, metadata !DIExpression(), metadata !1839, metadata ptr %2, metadata !DIExpression()), !dbg !1840
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1804, metadata !DIExpression()), !dbg !1840
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #37, !dbg !1841
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #37, !dbg !1842
  %4 = icmp eq i32 %3, 0, !dbg !1844
  br i1 %4, label %5, label %14, !dbg !1845

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1846
  %7 = load i32, ptr %6, align 8, !dbg !1846, !tbaa !1847
  call void @llvm.dbg.value(metadata i32 %7, metadata !1657, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32 4095, metadata !1662, metadata !DIExpression()), !dbg !1850
  %8 = tail call noalias nonnull dereferenceable(32) ptr @xmalloc(i64 noundef 32) #43, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %8, metadata !1663, metadata !DIExpression()), !dbg !1850
  store i8 61, ptr %8, align 4, !dbg !1853, !tbaa !1668
  %9 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 1, !dbg !1854
  store i8 1, ptr %9, align 1, !dbg !1855, !tbaa !1672
  %10 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 2, !dbg !1856
  store i32 4095, ptr %10, align 4, !dbg !1857, !tbaa !1675
  %11 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 3, !dbg !1858
  store i32 %7, ptr %11, align 4, !dbg !1859, !tbaa !1678
  %12 = getelementptr inbounds %struct.mode_change, ptr %8, i64 0, i32 4, !dbg !1860
  store i32 4095, ptr %12, align 4, !dbg !1861, !tbaa !1681
  %13 = getelementptr inbounds %struct.mode_change, ptr %8, i64 1, i32 1, !dbg !1862
  store i8 0, ptr %13, align 1, !dbg !1863, !tbaa !1672
  br label %14, !dbg !1864

14:                                               ; preds = %1, %5
  %15 = phi ptr [ %8, %5 ], [ null, %1 ], !dbg !1840
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #37, !dbg !1865
  ret ptr %15, !dbg !1865
}

; Function Attrs: nofree nounwind
declare !dbg !1866 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef writeonly %4) local_unnamed_addr #19 !dbg !1871 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1878, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i1 %1, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1880, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1881, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1882, metadata !DIExpression()), !dbg !1894
  %6 = and i32 %0, 4095, !dbg !1895
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1883, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1884, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1881, metadata !DIExpression()), !dbg !1894
  %7 = getelementptr inbounds %struct.mode_change, ptr %3, i64 0, i32 1, !dbg !1896
  %8 = load i8, ptr %7, align 1, !dbg !1896, !tbaa !1672
  %9 = icmp eq i8 %8, 0, !dbg !1897
  br i1 %9, label %78, label %10, !dbg !1898

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1898

14:                                               ; preds = %10, %71
  %15 = phi i8 [ %8, %10 ], [ %76, %71 ]
  %16 = phi ptr [ %3, %10 ], [ %74, %71 ]
  %17 = phi i32 [ %6, %10 ], [ %73, %71 ]
  %18 = phi i32 [ 0, %10 ], [ %72, %71 ]
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1881, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1883, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1884, metadata !DIExpression()), !dbg !1894
  %19 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 2, !dbg !1899
  %20 = load i32, ptr %19, align 4, !dbg !1899, !tbaa !1675
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1885, metadata !DIExpression()), !dbg !1900
  %21 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 4, !dbg !1901
  %22 = load i32, ptr %21, align 4, !dbg !1901, !tbaa !1681
  %23 = xor i32 %22, -1, !dbg !1902
  %24 = and i32 %11, %23, !dbg !1903
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1889, metadata !DIExpression()), !dbg !1900
  %25 = getelementptr inbounds %struct.mode_change, ptr %16, i64 0, i32 3, !dbg !1904
  %26 = load i32, ptr %25, align 4, !dbg !1904, !tbaa !1678
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1890, metadata !DIExpression()), !dbg !1900
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1905

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1906
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1890, metadata !DIExpression()), !dbg !1900
  %29 = and i32 %28, 292, !dbg !1908
  %30 = icmp eq i32 %29, 0, !dbg !1909
  %31 = select i1 %30, i32 0, i32 292, !dbg !1909
  %32 = and i32 %28, 146, !dbg !1910
  %33 = icmp eq i32 %32, 0, !dbg !1911
  %34 = select i1 %33, i32 0, i32 146, !dbg !1911
  %35 = and i32 %28, 73, !dbg !1912
  %36 = icmp eq i32 %35, 0, !dbg !1913
  %37 = select i1 %36, i32 0, i32 73, !dbg !1913
  %38 = or disjoint i32 %34, %31, !dbg !1914
  %39 = or disjoint i32 %38, %37, !dbg !1915
  %40 = or i32 %39, %28, !dbg !1915
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1890, metadata !DIExpression()), !dbg !1900
  br label %47, !dbg !1916

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1917
  %43 = or i32 %42, %12, !dbg !1919
  %44 = icmp eq i32 %43, 0, !dbg !1919
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1920
  br label %47, !dbg !1920

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1890, metadata !DIExpression()), !dbg !1900
  %49 = icmp eq i32 %20, 0, !dbg !1921
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1921
  %51 = xor i32 %24, -1, !dbg !1922
  %52 = and i32 %50, %51, !dbg !1923
  %53 = and i32 %52, %48, !dbg !1924
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1890, metadata !DIExpression()), !dbg !1900
  %54 = load i8, ptr %16, align 4, !dbg !1925, !tbaa !1668
  switch i8 %54, label %71 [
    i8 61, label %55
    i8 43, label %64
    i8 45, label %67
  ], !dbg !1926

55:                                               ; preds = %47
  %56 = xor i32 %20, -1, !dbg !1927
  %57 = select i1 %49, i32 0, i32 %56, !dbg !1927
  %58 = or i32 %57, %24, !dbg !1928
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !1891, metadata !DIExpression()), !dbg !1929
  %59 = and i32 %58, 4095, !dbg !1930
  %60 = xor i32 %59, 4095, !dbg !1930
  %61 = or i32 %60, %18, !dbg !1931
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1884, metadata !DIExpression()), !dbg !1894
  %62 = and i32 %58, %17, !dbg !1932
  %63 = or i32 %53, %62, !dbg !1933
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1883, metadata !DIExpression()), !dbg !1894
  br label %71

64:                                               ; preds = %47
  %65 = or i32 %53, %18, !dbg !1934
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !1884, metadata !DIExpression()), !dbg !1894
  %66 = or i32 %53, %17, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1883, metadata !DIExpression()), !dbg !1894
  br label %71, !dbg !1936

67:                                               ; preds = %47
  %68 = or i32 %53, %18, !dbg !1937
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1884, metadata !DIExpression()), !dbg !1894
  %69 = xor i32 %53, -1, !dbg !1938
  %70 = and i32 %17, %69, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %70, metadata !1883, metadata !DIExpression()), !dbg !1894
  br label %71, !dbg !1940

71:                                               ; preds = %47, %67, %64, %55
  %72 = phi i32 [ %18, %47 ], [ %68, %67 ], [ %65, %64 ], [ %61, %55 ], !dbg !1894
  %73 = phi i32 [ %17, %47 ], [ %70, %67 ], [ %66, %64 ], [ %63, %55 ], !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1883, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1884, metadata !DIExpression()), !dbg !1894
  %74 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, !dbg !1941
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1881, metadata !DIExpression()), !dbg !1894
  %75 = getelementptr inbounds %struct.mode_change, ptr %16, i64 1, i32 1, !dbg !1896
  %76 = load i8, ptr %75, align 1, !dbg !1896, !tbaa !1672
  %77 = icmp eq i8 %76, 0, !dbg !1897
  br i1 %77, label %.loopexit, label %14, !dbg !1898, !llvm.loop !1942

.loopexit:                                        ; preds = %71
  %.lcssa1 = phi i32 [ %72, %71 ], !dbg !1894
  %.lcssa = phi i32 [ %73, %71 ], !dbg !1894
  br label %78, !dbg !1944

78:                                               ; preds = %.loopexit, %5
  %79 = phi i32 [ 0, %5 ], [ %.lcssa1, %.loopexit ], !dbg !1946
  %80 = phi i32 [ %6, %5 ], [ %.lcssa, %.loopexit ], !dbg !1947
  %81 = icmp eq ptr %4, null, !dbg !1944
  br i1 %81, label %83, label %82, !dbg !1948

82:                                               ; preds = %78
  store i32 %79, ptr %4, align 4, !dbg !1949, !tbaa !933
  br label %83, !dbg !1950

83:                                               ; preds = %82, %78
  ret i32 %80, !dbg !1951
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1952 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1954, metadata !DIExpression()), !dbg !1957
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1958
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1955, metadata !DIExpression()), !dbg !1957
  %3 = icmp eq ptr %2, null, !dbg !1959
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1959
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1959
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1956, metadata !DIExpression()), !dbg !1957
  %6 = ptrtoint ptr %5 to i64, !dbg !1960
  %7 = ptrtoint ptr %0 to i64, !dbg !1960
  %8 = sub i64 %6, %7, !dbg !1960
  %9 = icmp sgt i64 %8, 6, !dbg !1962
  br i1 %9, label %10, label %19, !dbg !1963

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %11, metadata !1965, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata ptr @.str.74, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 7, metadata !1971, metadata !DIExpression()), !dbg !1972
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.74, i64 7), !dbg !1974
  %13 = icmp eq i32 %12, 0, !dbg !1975
  br i1 %13, label %14, label %19, !dbg !1976

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1954, metadata !DIExpression()), !dbg !1957
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.75, i64 noundef 3) #38, !dbg !1977
  %16 = icmp eq i32 %15, 0, !dbg !1980
  %17 = select i1 %16, i64 3, i64 0, !dbg !1981
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1981
  br label %19, !dbg !1981

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1957
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1956, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1954, metadata !DIExpression()), !dbg !1957
  store ptr %20, ptr @program_name, align 8, !dbg !1982, !tbaa !864
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1983, !tbaa !864
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1984, !tbaa !864
  ret void, !dbg !1985
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1986 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !515 {
  %3 = alloca i32, align 4, !DIAssignID !1987
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1987, metadata ptr %3, metadata !DIExpression()), !dbg !1988
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1989
  call void @llvm.dbg.assign(metadata i1 undef, metadata !530, metadata !DIExpression(), metadata !1989, metadata ptr %4, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !522, metadata !DIExpression()), !dbg !1988
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !523, metadata !DIExpression()), !dbg !1988
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1990
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !524, metadata !DIExpression()), !dbg !1988
  %6 = icmp eq ptr %5, %0, !dbg !1991
  br i1 %6, label %7, label %14, !dbg !1993

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1994
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1995
  call void @llvm.dbg.value(metadata ptr %4, metadata !1996, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata ptr %4, metadata !2005, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 8, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i64 0, ptr %4, align 8, !dbg !2015
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !2016
  %9 = icmp eq i64 %8, 2, !dbg !2018
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2019
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1988
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !2020
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1988
  ret ptr %15, !dbg !2020
}

; Function Attrs: nounwind
declare !dbg !2021 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2027 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2032, metadata !DIExpression()), !dbg !2035
  %2 = tail call ptr @__errno_location() #40, !dbg !2036
  %3 = load i32, ptr %2, align 4, !dbg !2036, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2033, metadata !DIExpression()), !dbg !2035
  %4 = icmp eq ptr %0, null, !dbg !2037
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2037
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2038
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2034, metadata !DIExpression()), !dbg !2035
  store i32 %3, ptr %2, align 4, !dbg !2039, !tbaa !933
  ret ptr %6, !dbg !2040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !2041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2047, metadata !DIExpression()), !dbg !2048
  %2 = icmp eq ptr %0, null, !dbg !2049
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2049
  %4 = load i32, ptr %3, align 8, !dbg !2050, !tbaa !2051
  ret i32 %4, !dbg !2053
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2054 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2058, metadata !DIExpression()), !dbg !2060
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2059, metadata !DIExpression()), !dbg !2060
  %3 = icmp eq ptr %0, null, !dbg !2061
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2061
  store i32 %1, ptr %4, align 8, !dbg !2062, !tbaa !2051
  ret void, !dbg !2063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !2064 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2068, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2069, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2070, metadata !DIExpression()), !dbg !2076
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2071, metadata !DIExpression()), !dbg !2076
  %4 = icmp eq ptr %0, null, !dbg !2077
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2077
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2078
  %7 = lshr i8 %1, 5, !dbg !2079
  %8 = zext nneg i8 %7 to i64, !dbg !2079
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2080
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2072, metadata !DIExpression()), !dbg !2076
  %10 = and i8 %1, 31, !dbg !2081
  %11 = zext nneg i8 %10 to i32, !dbg !2081
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2074, metadata !DIExpression()), !dbg !2076
  %12 = load i32, ptr %9, align 4, !dbg !2082, !tbaa !933
  %13 = lshr i32 %12, %11, !dbg !2083
  %14 = and i32 %13, 1, !dbg !2084
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2075, metadata !DIExpression()), !dbg !2076
  %15 = xor i32 %13, %2, !dbg !2085
  %16 = and i32 %15, 1, !dbg !2085
  %17 = shl nuw i32 %16, %11, !dbg !2086
  %18 = xor i32 %17, %12, !dbg !2087
  store i32 %18, ptr %9, align 4, !dbg !2087, !tbaa !933
  ret i32 %14, !dbg !2088
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2089 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2093, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2094, metadata !DIExpression()), !dbg !2096
  %3 = icmp eq ptr %0, null, !dbg !2097
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2099
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2093, metadata !DIExpression()), !dbg !2096
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2100
  %6 = load i32, ptr %5, align 4, !dbg !2100, !tbaa !2101
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2095, metadata !DIExpression()), !dbg !2096
  store i32 %1, ptr %5, align 4, !dbg !2102, !tbaa !2101
  ret i32 %6, !dbg !2103
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2104 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2108, metadata !DIExpression()), !dbg !2111
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2109, metadata !DIExpression()), !dbg !2111
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2110, metadata !DIExpression()), !dbg !2111
  %4 = icmp eq ptr %0, null, !dbg !2112
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2114
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !2111
  store i32 10, ptr %5, align 8, !dbg !2115, !tbaa !2051
  %6 = icmp ne ptr %1, null, !dbg !2116
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2118
  br i1 %8, label %10, label %9, !dbg !2118

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2119
  unreachable, !dbg !2119

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2120
  store ptr %1, ptr %11, align 8, !dbg !2121, !tbaa !2122
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2123
  store ptr %2, ptr %12, align 8, !dbg !2124, !tbaa !2125
  ret void, !dbg !2126
}

; Function Attrs: noreturn nounwind
declare !dbg !2127 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2128 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2132, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2133, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2134, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2135, metadata !DIExpression()), !dbg !2140
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2136, metadata !DIExpression()), !dbg !2140
  %6 = icmp eq ptr %4, null, !dbg !2141
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2141
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2137, metadata !DIExpression()), !dbg !2140
  %8 = tail call ptr @__errno_location() #40, !dbg !2142
  %9 = load i32, ptr %8, align 4, !dbg !2142, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2138, metadata !DIExpression()), !dbg !2140
  %10 = load i32, ptr %7, align 8, !dbg !2143, !tbaa !2051
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2144
  %12 = load i32, ptr %11, align 4, !dbg !2144, !tbaa !2101
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2145
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2146
  %15 = load ptr, ptr %14, align 8, !dbg !2146, !tbaa !2122
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2147
  %17 = load ptr, ptr %16, align 8, !dbg !2147, !tbaa !2125
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2148
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2139, metadata !DIExpression()), !dbg !2140
  store i32 %9, ptr %8, align 4, !dbg !2149, !tbaa !933
  ret i64 %18, !dbg !2150
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2151 {
  %10 = alloca i32, align 4, !DIAssignID !2219
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2220
  %12 = alloca i32, align 4, !DIAssignID !2221
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2222
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2197, metadata !DIExpression(), metadata !2223, metadata ptr %14, metadata !DIExpression()), !dbg !2224
  %15 = alloca i32, align 4, !DIAssignID !2225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2200, metadata !DIExpression(), metadata !2225, metadata ptr %15, metadata !DIExpression()), !dbg !2226
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2157, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2159, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2160, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2161, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2162, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2163, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2164, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2165, metadata !DIExpression()), !dbg !2227
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2228
  %17 = icmp eq i64 %16, 1, !dbg !2229
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2166, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2169, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2172, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2174, metadata !DIExpression()), !dbg !2227
  %18 = and i32 %5, 2, !dbg !2230
  %19 = icmp ne i32 %18, 0, !dbg !2230
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2230

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2231
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2232
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2233
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2170, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2169, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2160, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2165, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2164, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2161, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.label(metadata !2175), !dbg !2234
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2227
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
  ], !dbg !2235

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2161, metadata !DIExpression()), !dbg !2227
  br label %101, !dbg !2236

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2161, metadata !DIExpression()), !dbg !2227
  br i1 %36, label %101, label %42, !dbg !2236

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2237
  br i1 %43, label %101, label %44, !dbg !2241

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2237, !tbaa !942
  br label %101, !dbg !2237

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !2221, metadata ptr %12, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2222, metadata ptr %13, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata ptr @.str.11.88, metadata !613, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %28, metadata !614, metadata !DIExpression()), !dbg !2242
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.11.88, i32 noundef 5) #37, !dbg !2246
  call void @llvm.dbg.value(metadata ptr %46, metadata !615, metadata !DIExpression()), !dbg !2242
  %47 = icmp eq ptr %46, @.str.11.88, !dbg !2247
  br i1 %47, label %48, label %57, !dbg !2249

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2251
  call void @llvm.dbg.value(metadata ptr %13, metadata !2252, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %13, metadata !2260, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 8, metadata !2264, metadata !DIExpression()), !dbg !2265
  store i64 0, ptr %13, align 8, !dbg !2267
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2268
  %50 = icmp eq i64 %49, 3, !dbg !2270
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2271
  %54 = icmp eq i32 %28, 9, !dbg !2271
  %55 = select i1 %54, ptr @.str.10.90, ptr @.str.12.91, !dbg !2271
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2272
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2272
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2242
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2164, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !2219, metadata ptr %10, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !2220, metadata ptr %11, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata ptr @.str.12.91, metadata !613, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %28, metadata !614, metadata !DIExpression()), !dbg !2273
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.89, ptr noundef nonnull @.str.12.91, i32 noundef 5) #37, !dbg !2275
  call void @llvm.dbg.value(metadata ptr %59, metadata !615, metadata !DIExpression()), !dbg !2273
  %60 = icmp eq ptr %59, @.str.12.91, !dbg !2276
  br i1 %60, label %61, label %70, !dbg !2277

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %11, metadata !2252, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata ptr %11, metadata !2260, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 0, metadata !2263, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 8, metadata !2264, metadata !DIExpression()), !dbg !2282
  store i64 0, ptr %11, align 8, !dbg !2284
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2285
  %63 = icmp eq i64 %62, 3, !dbg !2286
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2287
  %67 = icmp eq i32 %28, 9, !dbg !2287
  %68 = select i1 %67, ptr @.str.10.90, ptr @.str.12.91, !dbg !2287
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2288
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2288
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2165, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2164, metadata !DIExpression()), !dbg !2227
  br i1 %36, label %88, label %73, !dbg !2289

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2177, metadata !DIExpression()), !dbg !2290
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2167, metadata !DIExpression()), !dbg !2227
  %74 = load i8, ptr %71, align 1, !dbg !2291, !tbaa !942
  %75 = icmp eq i8 %74, 0, !dbg !2293
  br i1 %75, label %88, label %.preheader11, !dbg !2293

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2293

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2177, metadata !DIExpression()), !dbg !2290
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2167, metadata !DIExpression()), !dbg !2227
  %80 = icmp ult i64 %79, %39, !dbg !2294
  br i1 %80, label %81, label %83, !dbg !2297

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2294
  store i8 %77, ptr %82, align 1, !dbg !2294, !tbaa !942
  br label %83, !dbg !2294

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2297
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2167, metadata !DIExpression()), !dbg !2227
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2298
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2177, metadata !DIExpression()), !dbg !2290
  %86 = load i8, ptr %85, align 1, !dbg !2291, !tbaa !942
  %87 = icmp eq i8 %86, 0, !dbg !2293
  br i1 %87, label %.loopexit12, label %76, !dbg !2293, !llvm.loop !2299

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2297
  br label %88, !dbg !2301

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2169, metadata !DIExpression()), !dbg !2227
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2170, metadata !DIExpression()), !dbg !2227
  br label %101, !dbg !2303

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2172, metadata !DIExpression()), !dbg !2227
  br label %101, !dbg !2304

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2161, metadata !DIExpression()), !dbg !2227
  br label %101, !dbg !2305

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2171, metadata !DIExpression()), !dbg !2227
  br i1 %36, label %101, label %95, !dbg !2306

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2161, metadata !DIExpression()), !dbg !2227
  br i1 %36, label %101, label %95, !dbg !2305

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2307
  br i1 %97, label %101, label %98, !dbg !2311

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2307, !tbaa !942
  br label %101, !dbg !2307

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2227
  br label %101, !dbg !2312

100:                                              ; preds = %27
  call void @abort() #39, !dbg !2313
  unreachable, !dbg !2313

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2302
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.90, %42 ], [ @.str.10.90, %44 ], [ @.str.10.90, %41 ], [ %33, %27 ], [ @.str.12.91, %95 ], [ @.str.12.91, %98 ], [ @.str.12.91, %94 ], [ @.str.10.90, %40 ], [ @.str.12.91, %91 ], [ @.str.12.91, %92 ], [ @.str.12.91, %93 ], !dbg !2227
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2227
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2172, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2171, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2170, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2169, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2165, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2164, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2161, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2182, metadata !DIExpression()), !dbg !2314
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
  br label %121, !dbg !2315

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2302
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2231
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2316
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2160, metadata !DIExpression()), !dbg !2227
  %130 = icmp eq i64 %122, -1, !dbg !2317
  br i1 %130, label %131, label %135, !dbg !2318

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2319
  %133 = load i8, ptr %132, align 1, !dbg !2319, !tbaa !942
  %134 = icmp eq i8 %133, 0, !dbg !2320
  br i1 %134, label %573, label %137, !dbg !2321

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2322
  br i1 %136, label %573, label %137, !dbg !2321

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2323
  br i1 %113, label %138, label %151, !dbg !2324

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2326
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2327
  br i1 %140, label %141, label %143, !dbg !2327

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2160, metadata !DIExpression()), !dbg !2227
  br label %143, !dbg !2329

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2329
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2160, metadata !DIExpression()), !dbg !2227
  %145 = icmp ugt i64 %139, %144, !dbg !2330
  br i1 %145, label %151, label %146, !dbg !2331

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2332
  call void @llvm.dbg.value(metadata ptr %147, metadata !2333, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata ptr %106, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %107, metadata !2337, metadata !DIExpression()), !dbg !2338
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2340
  %149 = icmp eq i32 %148, 0, !dbg !2341
  %150 = and i1 %149, %109, !dbg !2342
  br i1 %150, label %.loopexit7, label %151, !dbg !2342

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2160, metadata !DIExpression()), !dbg !2227
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2343
  %155 = load i8, ptr %154, align 1, !dbg !2343, !tbaa !942
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2189, metadata !DIExpression()), !dbg !2323
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
  ], !dbg !2344

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2345

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2346

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2323
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2350
  br i1 %159, label %176, label %160, !dbg !2350

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2352
  br i1 %161, label %162, label %164, !dbg !2356

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2352
  store i8 39, ptr %163, align 1, !dbg !2352, !tbaa !942
  br label %164, !dbg !2352

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2167, metadata !DIExpression()), !dbg !2227
  %166 = icmp ult i64 %165, %129, !dbg !2357
  br i1 %166, label %167, label %169, !dbg !2360

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2357
  store i8 36, ptr %168, align 1, !dbg !2357, !tbaa !942
  br label %169, !dbg !2357

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2167, metadata !DIExpression()), !dbg !2227
  %171 = icmp ult i64 %170, %129, !dbg !2361
  br i1 %171, label %172, label %174, !dbg !2364

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2361
  store i8 39, ptr %173, align 1, !dbg !2361, !tbaa !942
  br label %174, !dbg !2361

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2227
  br label %176, !dbg !2365

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2227
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2167, metadata !DIExpression()), !dbg !2227
  %179 = icmp ult i64 %177, %129, !dbg !2366
  br i1 %179, label %180, label %182, !dbg !2369

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2366
  store i8 92, ptr %181, align 1, !dbg !2366, !tbaa !942
  br label %182, !dbg !2366

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2167, metadata !DIExpression()), !dbg !2227
  br i1 %110, label %184, label %476, !dbg !2370

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2372
  %186 = icmp ult i64 %185, %152, !dbg !2373
  br i1 %186, label %187, label %433, !dbg !2374

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2375
  %189 = load i8, ptr %188, align 1, !dbg !2375, !tbaa !942
  %190 = add i8 %189, -48, !dbg !2376
  %191 = icmp ult i8 %190, 10, !dbg !2376
  br i1 %191, label %192, label %433, !dbg !2376

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2377
  br i1 %193, label %194, label %196, !dbg !2381

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2377
  store i8 48, ptr %195, align 1, !dbg !2377, !tbaa !942
  br label %196, !dbg !2377

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2381
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2167, metadata !DIExpression()), !dbg !2227
  %198 = icmp ult i64 %197, %129, !dbg !2382
  br i1 %198, label %199, label %201, !dbg !2385

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2382
  store i8 48, ptr %200, align 1, !dbg !2382, !tbaa !942
  br label %201, !dbg !2382

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2385
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2167, metadata !DIExpression()), !dbg !2227
  br label %433, !dbg !2386

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2387

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2388

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2389

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2391

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2393
  %209 = icmp ult i64 %208, %152, !dbg !2394
  br i1 %209, label %210, label %433, !dbg !2395

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2396
  %212 = load i8, ptr %211, align 1, !dbg !2396, !tbaa !942
  %213 = icmp eq i8 %212, 63, !dbg !2397
  br i1 %213, label %214, label %433, !dbg !2398

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2399
  %216 = load i8, ptr %215, align 1, !dbg !2399, !tbaa !942
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
  ], !dbg !2400

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2401

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2182, metadata !DIExpression()), !dbg !2314
  %219 = icmp ult i64 %123, %129, !dbg !2403
  br i1 %219, label %220, label %222, !dbg !2406

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2403
  store i8 63, ptr %221, align 1, !dbg !2403, !tbaa !942
  br label %222, !dbg !2403

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2406
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2167, metadata !DIExpression()), !dbg !2227
  %224 = icmp ult i64 %223, %129, !dbg !2407
  br i1 %224, label %225, label %227, !dbg !2410

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2407
  store i8 34, ptr %226, align 1, !dbg !2407, !tbaa !942
  br label %227, !dbg !2407

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2410
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2167, metadata !DIExpression()), !dbg !2227
  %229 = icmp ult i64 %228, %129, !dbg !2411
  br i1 %229, label %230, label %232, !dbg !2414

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2411
  store i8 34, ptr %231, align 1, !dbg !2411, !tbaa !942
  br label %232, !dbg !2411

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2414
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2167, metadata !DIExpression()), !dbg !2227
  %234 = icmp ult i64 %233, %129, !dbg !2415
  br i1 %234, label %235, label %237, !dbg !2418

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2415
  store i8 63, ptr %236, align 1, !dbg !2415, !tbaa !942
  br label %237, !dbg !2415

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2167, metadata !DIExpression()), !dbg !2227
  br label %433, !dbg !2419

239:                                              ; preds = %151
  br label %249, !dbg !2420

240:                                              ; preds = %151
  br label %249, !dbg !2421

241:                                              ; preds = %151
  br label %247, !dbg !2422

242:                                              ; preds = %151
  br label %247, !dbg !2423

243:                                              ; preds = %151
  br label %249, !dbg !2424

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2425

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2426

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2429

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2431
  call void @llvm.dbg.label(metadata !2190), !dbg !2432
  br i1 %118, label %.loopexit8, label %249, !dbg !2433

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2431
  call void @llvm.dbg.label(metadata !2193), !dbg !2435
  br i1 %108, label %487, label %444, !dbg !2436

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2437

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2438, !tbaa !942
  %254 = icmp eq i8 %253, 0, !dbg !2440
  br i1 %254, label %255, label %433, !dbg !2441

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2442
  br i1 %256, label %257, label %433, !dbg !2444

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2323
  br label %258, !dbg !2445

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2323
  br i1 %115, label %260, label %433, !dbg !2446

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2448

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2188, metadata !DIExpression()), !dbg !2323
  br i1 %115, label %262, label %433, !dbg !2449

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2450

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2453
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2455
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2455
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2455
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2168, metadata !DIExpression()), !dbg !2227
  %269 = icmp ult i64 %123, %268, !dbg !2456
  br i1 %269, label %270, label %272, !dbg !2459

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2456
  store i8 39, ptr %271, align 1, !dbg !2456, !tbaa !942
  br label %272, !dbg !2456

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2167, metadata !DIExpression()), !dbg !2227
  %274 = icmp ult i64 %273, %268, !dbg !2460
  br i1 %274, label %275, label %277, !dbg !2463

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2460
  store i8 92, ptr %276, align 1, !dbg !2460, !tbaa !942
  br label %277, !dbg !2460

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2167, metadata !DIExpression()), !dbg !2227
  %279 = icmp ult i64 %278, %268, !dbg !2464
  br i1 %279, label %280, label %282, !dbg !2467

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2464
  store i8 39, ptr %281, align 1, !dbg !2464, !tbaa !942
  br label %282, !dbg !2464

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2227
  br label %433, !dbg !2468

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2469

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2194, metadata !DIExpression()), !dbg !2470
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !2471
  %287 = load ptr, ptr %286, align 8, !dbg !2471, !tbaa !864
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2471
  %290 = load i16, ptr %289, align 2, !dbg !2471, !tbaa !974
  %291 = and i16 %290, 16384, !dbg !2471
  %292 = icmp ne i16 %291, 0, !dbg !2473
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2196, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2470
  br label %334, !dbg !2474

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2475
  call void @llvm.dbg.value(metadata ptr %14, metadata !2252, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %14, metadata !2260, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2263, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 8, metadata !2264, metadata !DIExpression()), !dbg !2478
  store i64 0, ptr %14, align 8, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2194, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2470
  %294 = icmp eq i64 %152, -1, !dbg !2481
  br i1 %294, label %295, label %297, !dbg !2483

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2484
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2160, metadata !DIExpression()), !dbg !2227
  br label %297, !dbg !2485

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2160, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2486
  %299 = sub i64 %298, %128, !dbg !2487
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !2488
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2204, metadata !DIExpression()), !dbg !2226
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2489

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2194, metadata !DIExpression()), !dbg !2470
  %302 = icmp ult i64 %128, %298, !dbg !2490
  br i1 %302, label %.preheader5, label %329, !dbg !2492

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2493

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2470
  br label %329, !dbg !2494

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2194, metadata !DIExpression()), !dbg !2470
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2496
  %308 = load i8, ptr %307, align 1, !dbg !2496, !tbaa !942
  %309 = icmp eq i8 %308, 0, !dbg !2492
  br i1 %309, label %.loopexit6, label %310, !dbg !2493

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2194, metadata !DIExpression()), !dbg !2470
  %312 = add i64 %311, %128, !dbg !2498
  %313 = icmp eq i64 %311, %299, !dbg !2490
  br i1 %313, label %.loopexit6, label %304, !dbg !2492, !llvm.loop !2499

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2205, metadata !DIExpression()), !dbg !2500
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2501
  %317 = and i1 %316, %109, !dbg !2501
  br i1 %317, label %.preheader3, label %325, !dbg !2501

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2502

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2205, metadata !DIExpression()), !dbg !2500
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2503
  %321 = load i8, ptr %320, align 1, !dbg !2503, !tbaa !942
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2505

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2506
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2205, metadata !DIExpression()), !dbg !2500
  %324 = icmp eq i64 %323, %300, !dbg !2507
  br i1 %324, label %.loopexit4, label %318, !dbg !2502, !llvm.loop !2508

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2510

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2510, !tbaa !933
  call void @llvm.dbg.value(metadata i32 %326, metadata !2512, metadata !DIExpression()), !dbg !2520
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !2522
  %328 = icmp ne i32 %327, 0, !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2194, metadata !DIExpression()), !dbg !2470
  br label %329, !dbg !2524

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2525

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2194, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2526
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2194, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2526
  call void @llvm.dbg.label(metadata !2218), !dbg !2527
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2528
  br label %624, !dbg !2528

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2323
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2530
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2194, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2160, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2188, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2323
  %338 = icmp ult i64 %336, 2, !dbg !2531
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2532
  br i1 %340, label %433, label %341, !dbg !2532

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2213, metadata !DIExpression()), !dbg !2534
  br label %343, !dbg !2535

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2227
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2314
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2167, metadata !DIExpression()), !dbg !2227
  br i1 %339, label %394, label %350, !dbg !2536

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2541

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2323
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2544
  br i1 %352, label %369, label %353, !dbg !2544

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2546
  br i1 %354, label %355, label %357, !dbg !2550

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2546
  store i8 39, ptr %356, align 1, !dbg !2546, !tbaa !942
  br label %357, !dbg !2546

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2550
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2167, metadata !DIExpression()), !dbg !2227
  %359 = icmp ult i64 %358, %129, !dbg !2551
  br i1 %359, label %360, label %362, !dbg !2554

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2551
  store i8 36, ptr %361, align 1, !dbg !2551, !tbaa !942
  br label %362, !dbg !2551

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2554
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2167, metadata !DIExpression()), !dbg !2227
  %364 = icmp ult i64 %363, %129, !dbg !2555
  br i1 %364, label %365, label %367, !dbg !2558

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2555
  store i8 39, ptr %366, align 1, !dbg !2555, !tbaa !942
  br label %367, !dbg !2555

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2227
  br label %369, !dbg !2559

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2227
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2167, metadata !DIExpression()), !dbg !2227
  %372 = icmp ult i64 %370, %129, !dbg !2560
  br i1 %372, label %373, label %375, !dbg !2563

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2560
  store i8 92, ptr %374, align 1, !dbg !2560, !tbaa !942
  br label %375, !dbg !2560

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2563
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2167, metadata !DIExpression()), !dbg !2227
  %377 = icmp ult i64 %376, %129, !dbg !2564
  br i1 %377, label %378, label %382, !dbg !2567

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2564
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2564
  store i8 %380, ptr %381, align 1, !dbg !2564, !tbaa !942
  br label %382, !dbg !2564

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2567
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2167, metadata !DIExpression()), !dbg !2227
  %384 = icmp ult i64 %383, %129, !dbg !2568
  br i1 %384, label %385, label %390, !dbg !2571

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2568
  %388 = or disjoint i8 %387, 48, !dbg !2568
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2568
  store i8 %388, ptr %389, align 1, !dbg !2568, !tbaa !942
  br label %390, !dbg !2568

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2571
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2167, metadata !DIExpression()), !dbg !2227
  %392 = and i8 %349, 7, !dbg !2572
  %393 = or disjoint i8 %392, 48, !dbg !2573
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2189, metadata !DIExpression()), !dbg !2323
  br label %401, !dbg !2574

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2575

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2576
  br i1 %396, label %397, label %399, !dbg !2581

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2576
  store i8 92, ptr %398, align 1, !dbg !2576, !tbaa !942
  br label %399, !dbg !2576

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2323
  br label %401, !dbg !2582

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2227
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2167, metadata !DIExpression()), !dbg !2227
  %407 = add i64 %346, 1, !dbg !2583
  %408 = icmp ugt i64 %342, %407, !dbg !2585
  br i1 %408, label %409, label %.loopexit2, !dbg !2586

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2587
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2587
  br i1 %411, label %423, label %412, !dbg !2587

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2590
  br i1 %413, label %414, label %416, !dbg !2594

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2590
  store i8 39, ptr %415, align 1, !dbg !2590, !tbaa !942
  br label %416, !dbg !2590

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2594
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2167, metadata !DIExpression()), !dbg !2227
  %418 = icmp ult i64 %417, %129, !dbg !2595
  br i1 %418, label %419, label %421, !dbg !2598

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2595
  store i8 39, ptr %420, align 1, !dbg !2595, !tbaa !942
  br label %421, !dbg !2595

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2227
  br label %423, !dbg !2599

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2600
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2167, metadata !DIExpression()), !dbg !2227
  %426 = icmp ult i64 %424, %129, !dbg !2601
  br i1 %426, label %427, label %429, !dbg !2604

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2601
  store i8 %406, ptr %428, align 1, !dbg !2601, !tbaa !942
  br label %429, !dbg !2601

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2182, metadata !DIExpression()), !dbg !2314
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2605
  %432 = load i8, ptr %431, align 1, !dbg !2605, !tbaa !942
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2189, metadata !DIExpression()), !dbg !2323
  br label %343, !dbg !2606, !llvm.loop !2607

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2610
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2227
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2231
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2314
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2323
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2184, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2160, metadata !DIExpression()), !dbg !2227
  br i1 %111, label %455, label %444, !dbg !2611

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
  br i1 %120, label %456, label %476, !dbg !2613

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2614

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
  %467 = lshr i8 %458, 5, !dbg !2615
  %468 = zext nneg i8 %467 to i64, !dbg !2615
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2616
  %470 = load i32, ptr %469, align 4, !dbg !2616, !tbaa !933
  %471 = and i8 %458, 31, !dbg !2617
  %472 = zext nneg i8 %471 to i32, !dbg !2617
  %473 = shl nuw i32 1, %472, !dbg !2618
  %474 = and i32 %470, %473, !dbg !2618
  %475 = icmp eq i32 %474, 0, !dbg !2618
  br i1 %475, label %476, label %487, !dbg !2619

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
  br i1 %153, label %487, label %523, !dbg !2620

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2610
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2227
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2231
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2621
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2323
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2160, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.label(metadata !2216), !dbg !2622
  br i1 %109, label %.loopexit8, label %497, !dbg !2623

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2187, metadata !DIExpression()), !dbg !2323
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2625
  br i1 %498, label %515, label %499, !dbg !2625

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2627
  br i1 %500, label %501, label %503, !dbg !2631

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2627
  store i8 39, ptr %502, align 1, !dbg !2627, !tbaa !942
  br label %503, !dbg !2627

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2167, metadata !DIExpression()), !dbg !2227
  %505 = icmp ult i64 %504, %496, !dbg !2632
  br i1 %505, label %506, label %508, !dbg !2635

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2632
  store i8 36, ptr %507, align 1, !dbg !2632, !tbaa !942
  br label %508, !dbg !2632

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2635
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2167, metadata !DIExpression()), !dbg !2227
  %510 = icmp ult i64 %509, %496, !dbg !2636
  br i1 %510, label %511, label %513, !dbg !2639

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2636
  store i8 39, ptr %512, align 1, !dbg !2636, !tbaa !942
  br label %513, !dbg !2636

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2639
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2227
  br label %515, !dbg !2640

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2323
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2167, metadata !DIExpression()), !dbg !2227
  %518 = icmp ult i64 %516, %496, !dbg !2641
  br i1 %518, label %519, label %521, !dbg !2644

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2641
  store i8 92, ptr %520, align 1, !dbg !2641, !tbaa !942
  br label %521, !dbg !2641

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2160, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.label(metadata !2217), !dbg !2645
  br label %547, !dbg !2646

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2227
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2323
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2314
  br label %523, !dbg !2646

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2610
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2227
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2231
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2621
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2649
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2189, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2188, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2187, metadata !DIExpression()), !dbg !2323
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2160, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.label(metadata !2217), !dbg !2645
  %534 = xor i1 %528, true, !dbg !2646
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2646
  br i1 %535, label %547, label %536, !dbg !2646

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2650
  br i1 %537, label %538, label %540, !dbg !2654

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2650
  store i8 39, ptr %539, align 1, !dbg !2650, !tbaa !942
  br label %540, !dbg !2650

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2167, metadata !DIExpression()), !dbg !2227
  %542 = icmp ult i64 %541, %533, !dbg !2655
  br i1 %542, label %543, label %545, !dbg !2658

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2655
  store i8 39, ptr %544, align 1, !dbg !2655, !tbaa !942
  br label %545, !dbg !2655

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2227
  br label %547, !dbg !2659

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2323
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2167, metadata !DIExpression()), !dbg !2227
  %557 = icmp ult i64 %555, %548, !dbg !2660
  br i1 %557, label %558, label %560, !dbg !2663

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2660
  store i8 %549, ptr %559, align 1, !dbg !2660, !tbaa !942
  br label %560, !dbg !2660

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2167, metadata !DIExpression()), !dbg !2227
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2664
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2227
  br label %563, !dbg !2665

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2610
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2227
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2231
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2621
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2182, metadata !DIExpression()), !dbg !2314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2160, metadata !DIExpression()), !dbg !2227
  %572 = add i64 %570, 1, !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2182, metadata !DIExpression()), !dbg !2314
  br label %121, !dbg !2667, !llvm.loop !2668

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2302
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2231
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2158, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2173, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2168, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2167, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2160, metadata !DIExpression()), !dbg !2227
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2670
  %575 = xor i1 %109, true, !dbg !2672
  %576 = or i1 %574, %575, !dbg !2672
  %577 = or i1 %576, %110, !dbg !2672
  br i1 %577, label %578, label %.loopexit13, !dbg !2672

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2673
  %580 = xor i1 %.lcssa38, true, !dbg !2673
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2673
  br i1 %581, label %589, label %582, !dbg !2673

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2675

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2231
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2677
  br label %638, !dbg !2679

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2680
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2682
  br i1 %588, label %27, label %589, !dbg !2682

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2227
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2302
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2683
  %592 = or i1 %591, %590, !dbg !2685
  br i1 %592, label %608, label %593, !dbg !2685

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2169, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2167, metadata !DIExpression()), !dbg !2227
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2686, !tbaa !942
  %595 = icmp eq i8 %594, 0, !dbg !2689
  br i1 %595, label %608, label %.preheader, !dbg !2689

.preheader:                                       ; preds = %593
  br label %596, !dbg !2689

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2169, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2167, metadata !DIExpression()), !dbg !2227
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2690
  br i1 %600, label %601, label %603, !dbg !2693

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2690
  store i8 %597, ptr %602, align 1, !dbg !2690, !tbaa !942
  br label %603, !dbg !2690

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2693
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2167, metadata !DIExpression()), !dbg !2227
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2694
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2169, metadata !DIExpression()), !dbg !2227
  %606 = load i8, ptr %605, align 1, !dbg !2686, !tbaa !942
  %607 = icmp eq i8 %606, 0, !dbg !2689
  br i1 %607, label %.loopexit, label %596, !dbg !2689, !llvm.loop !2695

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2693
  br label %608, !dbg !2697

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2167, metadata !DIExpression()), !dbg !2227
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2697
  br i1 %610, label %611, label %638, !dbg !2699

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2700
  store i8 0, ptr %612, align 1, !dbg !2701, !tbaa !942
  br label %638, !dbg !2700

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2218), !dbg !2527
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2702
  br i1 %614, label %624, label %630, !dbg !2528

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2323
  br label %615, !dbg !2702

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2702

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2702

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2218), !dbg !2527
  %622 = icmp eq i32 %616, 2, !dbg !2702
  %623 = select i1 %619, i32 4, i32 2, !dbg !2528
  br i1 %622, label %624, label %630, !dbg !2528

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2528

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2329
  br label %630, !dbg !2703

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2161, metadata !DIExpression()), !dbg !2227
  %636 = and i32 %5, -3, !dbg !2703
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2704
  br label %638, !dbg !2705

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2706
}

; Function Attrs: nounwind
declare !dbg !2707 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2710 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2713 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2715 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2722
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2721, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr null, metadata !2729, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %2, metadata !2730, metadata !DIExpression()), !dbg !2736
  %4 = icmp eq ptr %2, null, !dbg !2738
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2738
  call void @llvm.dbg.value(metadata ptr %5, metadata !2731, metadata !DIExpression()), !dbg !2736
  %6 = tail call ptr @__errno_location() #40, !dbg !2739
  %7 = load i32, ptr %6, align 4, !dbg !2739, !tbaa !933
  call void @llvm.dbg.value(metadata i32 %7, metadata !2732, metadata !DIExpression()), !dbg !2736
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2740
  %9 = load i32, ptr %8, align 4, !dbg !2740, !tbaa !2101
  %10 = or i32 %9, 1, !dbg !2741
  call void @llvm.dbg.value(metadata i32 %10, metadata !2733, metadata !DIExpression()), !dbg !2736
  %11 = load i32, ptr %5, align 8, !dbg !2742, !tbaa !2051
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2743
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2744
  %14 = load ptr, ptr %13, align 8, !dbg !2744, !tbaa !2122
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2745
  %16 = load ptr, ptr %15, align 8, !dbg !2745, !tbaa !2125
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2746
  %18 = add i64 %17, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %18, metadata !2734, metadata !DIExpression()), !dbg !2736
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %19, metadata !2735, metadata !DIExpression()), !dbg !2736
  %20 = load i32, ptr %5, align 8, !dbg !2749, !tbaa !2051
  %21 = load ptr, ptr %13, align 8, !dbg !2750, !tbaa !2122
  %22 = load ptr, ptr %15, align 8, !dbg !2751, !tbaa !2125
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2752
  store i32 %7, ptr %6, align 4, !dbg !2753, !tbaa !933
  ret ptr %19, !dbg !2754
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2723, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2729, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2730, metadata !DIExpression()), !dbg !2755
  %5 = icmp eq ptr %3, null, !dbg !2756
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2731, metadata !DIExpression()), !dbg !2755
  %7 = tail call ptr @__errno_location() #40, !dbg !2757
  %8 = load i32, ptr %7, align 4, !dbg !2757, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2732, metadata !DIExpression()), !dbg !2755
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2758
  %10 = load i32, ptr %9, align 4, !dbg !2758, !tbaa !2101
  %11 = icmp eq ptr %2, null, !dbg !2759
  %12 = zext i1 %11 to i32, !dbg !2759
  %13 = or i32 %10, %12, !dbg !2760
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2733, metadata !DIExpression()), !dbg !2755
  %14 = load i32, ptr %6, align 8, !dbg !2761, !tbaa !2051
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2762
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2763
  %17 = load ptr, ptr %16, align 8, !dbg !2763, !tbaa !2122
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2764
  %19 = load ptr, ptr %18, align 8, !dbg !2764, !tbaa !2125
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2765
  %21 = add i64 %20, 1, !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2734, metadata !DIExpression()), !dbg !2755
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2767
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2735, metadata !DIExpression()), !dbg !2755
  %23 = load i32, ptr %6, align 8, !dbg !2768, !tbaa !2051
  %24 = load ptr, ptr %16, align 8, !dbg !2769, !tbaa !2122
  %25 = load ptr, ptr %18, align 8, !dbg !2770, !tbaa !2125
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2771
  store i32 %8, ptr %7, align 4, !dbg !2772, !tbaa !933
  br i1 %11, label %28, label %27, !dbg !2773

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2774, !tbaa !1220
  br label %28, !dbg !2776

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2777
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2778 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2783, !tbaa !864
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !2785
  %2 = load i32, ptr @nslots, align 4, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !2785
  %3 = icmp sgt i32 %2, 1, !dbg !2786
  br i1 %3, label %4, label %6, !dbg !2788

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2786
  br label %10, !dbg !2788

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2789

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2789
  %8 = load ptr, ptr %7, align 8, !dbg !2789, !tbaa !2791
  %9 = icmp eq ptr %8, @slot0, !dbg !2793
  br i1 %9, label %17, label %16, !dbg !2794

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2781, metadata !DIExpression()), !dbg !2785
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2795
  %13 = load ptr, ptr %12, align 8, !dbg !2795, !tbaa !2791
  tail call void @free(ptr noundef %13) #37, !dbg !2796
  %14 = add nuw nsw i64 %11, 1, !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2781, metadata !DIExpression()), !dbg !2785
  %15 = icmp eq i64 %14, %5, !dbg !2786
  br i1 %15, label %.loopexit, label %10, !dbg !2788, !llvm.loop !2798

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2800
  store i64 256, ptr @slotvec0, align 8, !dbg !2802, !tbaa !2803
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2804, !tbaa !2791
  br label %17, !dbg !2805

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2806
  br i1 %18, label %20, label %19, !dbg !2808

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2809
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2811, !tbaa !864
  br label %20, !dbg !2812

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2813, !tbaa !933
  ret void, !dbg !2814
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2815 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2818, metadata !DIExpression()), !dbg !2819
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2820
  ret ptr %3, !dbg !2821
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2822 {
  %5 = alloca i64, align 8, !DIAssignID !2842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2836, metadata !DIExpression(), metadata !2842, metadata ptr %5, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2826, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2827, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2828, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2829, metadata !DIExpression()), !dbg !2844
  %6 = tail call ptr @__errno_location() #40, !dbg !2845
  %7 = load i32, ptr %6, align 4, !dbg !2845, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2830, metadata !DIExpression()), !dbg !2844
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2846, !tbaa !864
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2831, metadata !DIExpression()), !dbg !2844
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2832, metadata !DIExpression()), !dbg !2844
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2847
  br i1 %9, label %10, label %11, !dbg !2847

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2849
  unreachable, !dbg !2849

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2850, !tbaa !933
  %13 = icmp sgt i32 %12, %0, !dbg !2851
  br i1 %13, label %32, label %14, !dbg !2852

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2853
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2843
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2854
  %16 = sext i32 %12 to i64, !dbg !2855
  store i64 %16, ptr %5, align 8, !dbg !2856, !tbaa !1220, !DIAssignID !2857
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2836, metadata !DIExpression(), metadata !2857, metadata ptr %5, metadata !DIExpression()), !dbg !2843
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2858
  %18 = add nuw nsw i32 %0, 1, !dbg !2859
  %19 = sub i32 %18, %12, !dbg !2860
  %20 = sext i32 %19 to i64, !dbg !2861
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2862
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2831, metadata !DIExpression()), !dbg !2844
  store ptr %21, ptr @slotvec, align 8, !dbg !2863, !tbaa !864
  br i1 %15, label %22, label %23, !dbg !2864

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2865, !tbaa.struct !2867
  br label %23, !dbg !2868

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2869, !tbaa !933
  %25 = sext i32 %24 to i64, !dbg !2870
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2870
  %27 = load i64, ptr %5, align 8, !dbg !2871, !tbaa !1220
  %28 = sub nsw i64 %27, %25, !dbg !2872
  %29 = shl i64 %28, 4, !dbg !2873
  call void @llvm.dbg.value(metadata ptr %26, metadata !2260, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2263, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 %29, metadata !2264, metadata !DIExpression()), !dbg !2874
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2876
  %30 = load i64, ptr %5, align 8, !dbg !2877, !tbaa !1220
  %31 = trunc i64 %30 to i32, !dbg !2877
  store i32 %31, ptr @nslots, align 4, !dbg !2878, !tbaa !933
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2879
  br label %32, !dbg !2880

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2844
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2831, metadata !DIExpression()), !dbg !2844
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2881
  %36 = load i64, ptr %35, align 8, !dbg !2882, !tbaa !2803
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2837, metadata !DIExpression()), !dbg !2883
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2884
  %38 = load ptr, ptr %37, align 8, !dbg !2884, !tbaa !2791
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2839, metadata !DIExpression()), !dbg !2883
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2885
  %40 = load i32, ptr %39, align 4, !dbg !2885, !tbaa !2101
  %41 = or i32 %40, 1, !dbg !2886
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2840, metadata !DIExpression()), !dbg !2883
  %42 = load i32, ptr %3, align 8, !dbg !2887, !tbaa !2051
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2888
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2889
  %45 = load ptr, ptr %44, align 8, !dbg !2889, !tbaa !2122
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2890
  %47 = load ptr, ptr %46, align 8, !dbg !2890, !tbaa !2125
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2841, metadata !DIExpression()), !dbg !2883
  %49 = icmp ugt i64 %36, %48, !dbg !2892
  br i1 %49, label %60, label %50, !dbg !2894

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2895
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2837, metadata !DIExpression()), !dbg !2883
  store i64 %51, ptr %35, align 8, !dbg !2897, !tbaa !2803
  %52 = icmp eq ptr %38, @slot0, !dbg !2898
  br i1 %52, label %54, label %53, !dbg !2900

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2901
  br label %54, !dbg !2901

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2902
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2839, metadata !DIExpression()), !dbg !2883
  store ptr %55, ptr %37, align 8, !dbg !2903, !tbaa !2791
  %56 = load i32, ptr %3, align 8, !dbg !2904, !tbaa !2051
  %57 = load ptr, ptr %44, align 8, !dbg !2905, !tbaa !2122
  %58 = load ptr, ptr %46, align 8, !dbg !2906, !tbaa !2125
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2907
  br label %60, !dbg !2908

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2883
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2839, metadata !DIExpression()), !dbg !2883
  store i32 %7, ptr %6, align 4, !dbg !2909, !tbaa !933
  ret ptr %61, !dbg !2910
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2911 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2915, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2916, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2919
  ret ptr %4, !dbg !2920
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2921 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata ptr %0, metadata !2818, metadata !DIExpression()), !dbg !2925
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2927
  ret ptr %2, !dbg !2928
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2929 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2915, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata ptr %0, metadata !2916, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2917, metadata !DIExpression()), !dbg !2936
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2938
  ret ptr %3, !dbg !2939
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2940 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2948
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2947, metadata !DIExpression(), metadata !2948, metadata ptr %4, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2944, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2945, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2946, metadata !DIExpression()), !dbg !2949
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2951), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %1, metadata !2955, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2963, !alias.scope !2951, !DIAssignID !2964
  call void @llvm.dbg.assign(metadata i8 0, metadata !2947, metadata !DIExpression(), metadata !2964, metadata ptr %4, metadata !DIExpression()), !dbg !2949
  %5 = icmp eq i32 %1, 10, !dbg !2965
  br i1 %5, label %6, label %7, !dbg !2967

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2968, !noalias !2951
  unreachable, !dbg !2968

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2969, !tbaa !2051, !alias.scope !2951, !DIAssignID !2970
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2947, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2970, metadata ptr %4, metadata !DIExpression()), !dbg !2949
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2971
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2972
  ret ptr %8, !dbg !2973
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2974 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2983
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2982, metadata !DIExpression(), metadata !2983, metadata ptr %5, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2978, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2979, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2980, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2981, metadata !DIExpression()), !dbg !2984
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986), !dbg !2989
  call void @llvm.dbg.value(metadata i32 %1, metadata !2955, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2960, metadata !DIExpression()), !dbg !2992
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2992, !alias.scope !2986, !DIAssignID !2993
  call void @llvm.dbg.assign(metadata i8 0, metadata !2982, metadata !DIExpression(), metadata !2993, metadata ptr %5, metadata !DIExpression()), !dbg !2984
  %6 = icmp eq i32 %1, 10, !dbg !2994
  br i1 %6, label %7, label %8, !dbg !2995

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2996, !noalias !2986
  unreachable, !dbg !2996

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2997, !tbaa !2051, !alias.scope !2986, !DIAssignID !2998
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2982, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2998, metadata ptr %5, metadata !DIExpression()), !dbg !2984
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2999
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3000
  ret ptr %9, !dbg !3001
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3002 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3008
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3006, metadata !DIExpression()), !dbg !3009
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2947, metadata !DIExpression(), metadata !3008, metadata ptr %3, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 0, metadata !2944, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 %0, metadata !2945, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %1, metadata !2946, metadata !DIExpression()), !dbg !3010
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %0, metadata !2955, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2960, metadata !DIExpression()), !dbg !3019
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3019, !alias.scope !3013, !DIAssignID !3020
  call void @llvm.dbg.assign(metadata i8 0, metadata !2947, metadata !DIExpression(), metadata !3020, metadata ptr %3, metadata !DIExpression()), !dbg !3010
  %4 = icmp eq i32 %0, 10, !dbg !3021
  br i1 %4, label %5, label %6, !dbg !3022

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3023, !noalias !3013
  unreachable, !dbg !3023

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3024, !tbaa !2051, !alias.scope !3013, !DIAssignID !3025
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2947, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3025, metadata ptr %3, metadata !DIExpression()), !dbg !3010
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3026
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3027
  ret ptr %7, !dbg !3028
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3029 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3036
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3033, metadata !DIExpression()), !dbg !3037
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3034, metadata !DIExpression()), !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2982, metadata !DIExpression(), metadata !3036, metadata ptr %4, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 0, metadata !2978, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %1, metadata !2980, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %2, metadata !2981, metadata !DIExpression()), !dbg !3038
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3040
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %0, metadata !2955, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2960, metadata !DIExpression()), !dbg !3047
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3047, !alias.scope !3041, !DIAssignID !3048
  call void @llvm.dbg.assign(metadata i8 0, metadata !2982, metadata !DIExpression(), metadata !3048, metadata ptr %4, metadata !DIExpression()), !dbg !3038
  %5 = icmp eq i32 %0, 10, !dbg !3049
  br i1 %5, label %6, label %7, !dbg !3050

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3051, !noalias !3041
  unreachable, !dbg !3051

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3052, !tbaa !2051, !alias.scope !3041, !DIAssignID !3053
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2982, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3053, metadata ptr %4, metadata !DIExpression()), !dbg !3038
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3054
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3055
  ret ptr %8, !dbg !3056
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3057 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3065
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3065, metadata ptr %4, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3063, metadata !DIExpression()), !dbg !3066
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3068, !tbaa.struct !3069, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3070, metadata ptr %4, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2068, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2069, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2070, metadata !DIExpression()), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2071, metadata !DIExpression()), !dbg !3071
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3073
  %6 = lshr i8 %2, 5, !dbg !3074
  %7 = zext nneg i8 %6 to i64, !dbg !3074
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3075
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2072, metadata !DIExpression()), !dbg !3071
  %9 = and i8 %2, 31, !dbg !3076
  %10 = zext nneg i8 %9 to i32, !dbg !3076
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2074, metadata !DIExpression()), !dbg !3071
  %11 = load i32, ptr %8, align 4, !dbg !3077, !tbaa !933
  %12 = lshr i32 %11, %10, !dbg !3078
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2075, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3071
  %13 = and i32 %12, 1, !dbg !3079
  %14 = xor i32 %13, 1, !dbg !3079
  %15 = shl nuw i32 %14, %10, !dbg !3080
  %16 = xor i32 %15, %11, !dbg !3081
  store i32 %16, ptr %8, align 4, !dbg !3081, !tbaa !933
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3082
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3083
  ret ptr %17, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3085 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3091
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3089, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3090, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3091, metadata ptr %3, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 -1, metadata !3062, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 %1, metadata !3063, metadata !DIExpression()), !dbg !3093
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3096, !tbaa.struct !3069, !DIAssignID !3097
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3097, metadata ptr %3, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %3, metadata !2068, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8 %1, metadata !2069, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i32 1, metadata !2070, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8 %1, metadata !2071, metadata !DIExpression()), !dbg !3098
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3100
  %5 = lshr i8 %1, 5, !dbg !3101
  %6 = zext nneg i8 %5 to i64, !dbg !3101
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3102
  call void @llvm.dbg.value(metadata ptr %7, metadata !2072, metadata !DIExpression()), !dbg !3098
  %8 = and i8 %1, 31, !dbg !3103
  %9 = zext nneg i8 %8 to i32, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %9, metadata !2074, metadata !DIExpression()), !dbg !3098
  %10 = load i32, ptr %7, align 4, !dbg !3104, !tbaa !933
  %11 = lshr i32 %10, %9, !dbg !3105
  call void @llvm.dbg.value(metadata i32 %11, metadata !2075, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3098
  %12 = and i32 %11, 1, !dbg !3106
  %13 = xor i32 %12, 1, !dbg !3106
  %14 = shl nuw i32 %13, %9, !dbg !3107
  %15 = xor i32 %14, %10, !dbg !3108
  store i32 %15, ptr %7, align 4, !dbg !3108, !tbaa !933
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3109
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3110
  ret ptr %16, !dbg !3111
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3112 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3115
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %0, metadata !3089, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 58, metadata !3090, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3115, metadata ptr %2, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 -1, metadata !3062, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 58, metadata !3063, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !3121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3122, !tbaa.struct !3069, !DIAssignID !3123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3123, metadata ptr %2, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %2, metadata !2068, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 1, metadata !2070, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 58, metadata !2071, metadata !DIExpression()), !dbg !3124
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3126
  call void @llvm.dbg.value(metadata ptr %3, metadata !2072, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 26, metadata !2074, metadata !DIExpression()), !dbg !3124
  %4 = load i32, ptr %3, align 4, !dbg !3127, !tbaa !933
  call void @llvm.dbg.value(metadata i32 %4, metadata !2075, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3124
  %5 = or i32 %4, 67108864, !dbg !3128
  store i32 %5, ptr %3, align 4, !dbg !3128, !tbaa !933
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3129
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !3130
  ret ptr %6, !dbg !3131
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3132 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3136
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3134, metadata !DIExpression()), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3136, metadata ptr %3, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8 58, metadata !3063, metadata !DIExpression()), !dbg !3138
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3141, !tbaa.struct !3069, !DIAssignID !3142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3064, metadata !DIExpression(), metadata !3142, metadata ptr %3, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %3, metadata !2068, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 1, metadata !2070, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8 58, metadata !2071, metadata !DIExpression()), !dbg !3143
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3145
  call void @llvm.dbg.value(metadata ptr %4, metadata !2072, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 26, metadata !2074, metadata !DIExpression()), !dbg !3143
  %5 = load i32, ptr %4, align 4, !dbg !3146, !tbaa !933
  call void @llvm.dbg.value(metadata i32 %5, metadata !2075, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3143
  %6 = or i32 %5, 67108864, !dbg !3147
  store i32 %6, ptr %4, align 4, !dbg !3147, !tbaa !933
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3148
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3149
  ret ptr %7, !dbg !3150
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3151 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3156, metadata !DIExpression(), metadata !3157, metadata ptr %4, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2960, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3159
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3153, metadata !DIExpression()), !dbg !3158
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3154, metadata !DIExpression()), !dbg !3158
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3155, metadata !DIExpression()), !dbg !3158
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %1, metadata !2955, metadata !DIExpression()), !dbg !3162
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2960, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3162
  %5 = icmp eq i32 %1, 10, !dbg !3163
  br i1 %5, label %6, label %7, !dbg !3164

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3165, !noalias !3166
  unreachable, !dbg !3165

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2960, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3162
  store i32 %1, ptr %4, align 8, !dbg !3169, !tbaa.struct !3069, !DIAssignID !3170
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3169
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3156, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3170, metadata ptr %4, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3156, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3171, metadata ptr %8, metadata !DIExpression()), !dbg !3158
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2068, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2069, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2070, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2071, metadata !DIExpression()), !dbg !3172
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2072, metadata !DIExpression()), !dbg !3172
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2074, metadata !DIExpression()), !dbg !3172
  %10 = load i32, ptr %9, align 4, !dbg !3175, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2075, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3172
  %11 = or i32 %10, 67108864, !dbg !3176
  store i32 %11, ptr %9, align 4, !dbg !3176, !tbaa !933, !DIAssignID !3177
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3156, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3177, metadata ptr %9, metadata !DIExpression()), !dbg !3158
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3178
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3179
  ret ptr %12, !dbg !3180
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3181 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3189
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3185, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3186, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3187, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3188, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3189, metadata ptr %5, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %0, metadata !3196, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %1, metadata !3197, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %2, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %3, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 -1, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3204, !tbaa.struct !3069, !DIAssignID !3205
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3205, metadata ptr %5, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3206, metadata ptr undef, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %1, metadata !2109, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %2, metadata !2110, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !3207
  store i32 10, ptr %5, align 8, !dbg !3209, !tbaa !2051, !DIAssignID !3210
  call void @llvm.dbg.assign(metadata i32 10, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3210, metadata ptr %5, metadata !DIExpression()), !dbg !3201
  %6 = icmp ne ptr %1, null, !dbg !3211
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3212
  br i1 %8, label %10, label %9, !dbg !3212

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3213
  unreachable, !dbg !3213

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3214
  store ptr %1, ptr %11, align 8, !dbg !3215, !tbaa !2122, !DIAssignID !3216
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3216, metadata ptr %11, metadata !DIExpression()), !dbg !3201
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3217
  store ptr %2, ptr %12, align 8, !dbg !3218, !tbaa !2125, !DIAssignID !3219
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3219, metadata ptr %12, metadata !DIExpression()), !dbg !3201
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3220
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3221
  ret ptr %13, !dbg !3222
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3192 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3223, metadata ptr %6, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3196, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3197, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3198, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3199, metadata !DIExpression()), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3200, metadata !DIExpression()), !dbg !3224
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3226, !tbaa.struct !3069, !DIAssignID !3227
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3227, metadata ptr %6, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3228, metadata ptr undef, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %6, metadata !2108, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %1, metadata !2109, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %2, metadata !2110, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %6, metadata !2108, metadata !DIExpression()), !dbg !3229
  store i32 10, ptr %6, align 8, !dbg !3231, !tbaa !2051, !DIAssignID !3232
  call void @llvm.dbg.assign(metadata i32 10, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3232, metadata ptr %6, metadata !DIExpression()), !dbg !3224
  %7 = icmp ne ptr %1, null, !dbg !3233
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3234
  br i1 %9, label %11, label %10, !dbg !3234

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3235
  unreachable, !dbg !3235

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3236
  store ptr %1, ptr %12, align 8, !dbg !3237, !tbaa !2122, !DIAssignID !3238
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3238, metadata ptr %12, metadata !DIExpression()), !dbg !3224
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3239
  store ptr %2, ptr %13, align 8, !dbg !3240, !tbaa !2125, !DIAssignID !3241
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3241, metadata ptr %13, metadata !DIExpression()), !dbg !3224
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3242
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3243
  ret ptr %14, !dbg !3244
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3245 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3252
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3249, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3250, metadata !DIExpression()), !dbg !3253
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %1, metadata !3187, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %2, metadata !3188, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3252, metadata ptr %4, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %1, metadata !3198, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %2, metadata !3199, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 -1, metadata !3200, metadata !DIExpression()), !dbg !3256
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3259, !tbaa.struct !3069, !DIAssignID !3260
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3260, metadata ptr %4, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3261, metadata ptr undef, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %4, metadata !2108, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %0, metadata !2109, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %1, metadata !2110, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %4, metadata !2108, metadata !DIExpression()), !dbg !3262
  store i32 10, ptr %4, align 8, !dbg !3264, !tbaa !2051, !DIAssignID !3265
  call void @llvm.dbg.assign(metadata i32 10, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3265, metadata ptr %4, metadata !DIExpression()), !dbg !3256
  %5 = icmp ne ptr %0, null, !dbg !3266
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3267
  br i1 %7, label %9, label %8, !dbg !3267

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3268
  unreachable, !dbg !3268

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3269
  store ptr %0, ptr %10, align 8, !dbg !3270, !tbaa !2122, !DIAssignID !3271
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3271, metadata ptr %10, metadata !DIExpression()), !dbg !3256
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3272
  store ptr %1, ptr %11, align 8, !dbg !3273, !tbaa !2125, !DIAssignID !3274
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3274, metadata ptr %11, metadata !DIExpression()), !dbg !3256
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3275
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3276
  ret ptr %12, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3278 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3286
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3282, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3283, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3284, metadata !DIExpression()), !dbg !3287
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3286, metadata ptr %5, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3196, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %1, metadata !3198, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %2, metadata !3199, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %3, metadata !3200, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3291, !tbaa.struct !3069, !DIAssignID !3292
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3292, metadata ptr %5, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3293, metadata ptr undef, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %0, metadata !2109, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %1, metadata !2110, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata ptr %5, metadata !2108, metadata !DIExpression()), !dbg !3294
  store i32 10, ptr %5, align 8, !dbg !3296, !tbaa !2051, !DIAssignID !3297
  call void @llvm.dbg.assign(metadata i32 10, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3297, metadata ptr %5, metadata !DIExpression()), !dbg !3288
  %6 = icmp ne ptr %0, null, !dbg !3298
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3299
  br i1 %8, label %10, label %9, !dbg !3299

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3300
  unreachable, !dbg !3300

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3301
  store ptr %0, ptr %11, align 8, !dbg !3302, !tbaa !2122, !DIAssignID !3303
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3303, metadata ptr %11, metadata !DIExpression()), !dbg !3288
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3304
  store ptr %1, ptr %12, align 8, !dbg !3305, !tbaa !2125, !DIAssignID !3306
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3191, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3306, metadata ptr %12, metadata !DIExpression()), !dbg !3288
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3307
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3308
  ret ptr %13, !dbg !3309
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3314, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3315, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3316, metadata !DIExpression()), !dbg !3317
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3318
  ret ptr %4, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 0, metadata !3314, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata ptr %0, metadata !3315, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()), !dbg !3327
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3329
  ret ptr %3, !dbg !3330
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3331 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3337
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %0, metadata !3314, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata ptr %1, metadata !3315, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 -1, metadata !3316, metadata !DIExpression()), !dbg !3338
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3340
  ret ptr %3, !dbg !3341
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3342 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %0, metadata !3336, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i32 0, metadata !3314, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %0, metadata !3315, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 -1, metadata !3316, metadata !DIExpression()), !dbg !3350
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3352
  ret ptr %2, !dbg !3353
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3354 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3393, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3394, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3396, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3397, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3398, metadata !DIExpression()), !dbg !3399
  %7 = icmp eq ptr %1, null, !dbg !3400
  br i1 %7, label %10, label %8, !dbg !3402

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3403
  br label %12, !dbg !3403

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.101, ptr noundef %2, ptr noundef %3) #37, !dbg !3404
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103, i32 noundef 5) #37, !dbg !3405
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3405
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3406
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.5.105, i32 noundef 5) #37, !dbg !3407
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.106) #37, !dbg !3407
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %0), !dbg !3408
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
  ], !dbg !3409

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.7.107, i32 noundef 5) #37, !dbg !3410
  %21 = load ptr, ptr %4, align 8, !dbg !3410, !tbaa !864
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3410
  br label %147, !dbg !3412

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.8.108, i32 noundef 5) #37, !dbg !3413
  %25 = load ptr, ptr %4, align 8, !dbg !3413, !tbaa !864
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3413
  %27 = load ptr, ptr %26, align 8, !dbg !3413, !tbaa !864
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3413
  br label %147, !dbg !3414

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.9.109, i32 noundef 5) #37, !dbg !3415
  %31 = load ptr, ptr %4, align 8, !dbg !3415, !tbaa !864
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3415
  %33 = load ptr, ptr %32, align 8, !dbg !3415, !tbaa !864
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3415
  %35 = load ptr, ptr %34, align 8, !dbg !3415, !tbaa !864
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3415
  br label %147, !dbg !3416

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.10.110, i32 noundef 5) #37, !dbg !3417
  %39 = load ptr, ptr %4, align 8, !dbg !3417, !tbaa !864
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3417
  %41 = load ptr, ptr %40, align 8, !dbg !3417, !tbaa !864
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3417
  %43 = load ptr, ptr %42, align 8, !dbg !3417, !tbaa !864
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3417
  %45 = load ptr, ptr %44, align 8, !dbg !3417, !tbaa !864
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3417
  br label %147, !dbg !3418

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.11.111, i32 noundef 5) #37, !dbg !3419
  %49 = load ptr, ptr %4, align 8, !dbg !3419, !tbaa !864
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3419
  %51 = load ptr, ptr %50, align 8, !dbg !3419, !tbaa !864
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3419
  %53 = load ptr, ptr %52, align 8, !dbg !3419, !tbaa !864
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3419
  %55 = load ptr, ptr %54, align 8, !dbg !3419, !tbaa !864
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3419
  %57 = load ptr, ptr %56, align 8, !dbg !3419, !tbaa !864
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3419
  br label %147, !dbg !3420

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.12.112, i32 noundef 5) #37, !dbg !3421
  %61 = load ptr, ptr %4, align 8, !dbg !3421, !tbaa !864
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3421
  %63 = load ptr, ptr %62, align 8, !dbg !3421, !tbaa !864
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3421
  %65 = load ptr, ptr %64, align 8, !dbg !3421, !tbaa !864
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3421
  %67 = load ptr, ptr %66, align 8, !dbg !3421, !tbaa !864
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3421
  %69 = load ptr, ptr %68, align 8, !dbg !3421, !tbaa !864
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3421
  %71 = load ptr, ptr %70, align 8, !dbg !3421, !tbaa !864
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3421
  br label %147, !dbg !3422

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.13.113, i32 noundef 5) #37, !dbg !3423
  %75 = load ptr, ptr %4, align 8, !dbg !3423, !tbaa !864
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3423
  %77 = load ptr, ptr %76, align 8, !dbg !3423, !tbaa !864
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3423
  %79 = load ptr, ptr %78, align 8, !dbg !3423, !tbaa !864
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3423
  %81 = load ptr, ptr %80, align 8, !dbg !3423, !tbaa !864
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3423
  %83 = load ptr, ptr %82, align 8, !dbg !3423, !tbaa !864
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3423
  %85 = load ptr, ptr %84, align 8, !dbg !3423, !tbaa !864
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3423
  %87 = load ptr, ptr %86, align 8, !dbg !3423, !tbaa !864
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3423
  br label %147, !dbg !3424

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.14.114, i32 noundef 5) #37, !dbg !3425
  %91 = load ptr, ptr %4, align 8, !dbg !3425, !tbaa !864
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3425
  %93 = load ptr, ptr %92, align 8, !dbg !3425, !tbaa !864
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3425
  %95 = load ptr, ptr %94, align 8, !dbg !3425, !tbaa !864
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3425
  %97 = load ptr, ptr %96, align 8, !dbg !3425, !tbaa !864
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3425
  %99 = load ptr, ptr %98, align 8, !dbg !3425, !tbaa !864
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3425
  %101 = load ptr, ptr %100, align 8, !dbg !3425, !tbaa !864
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3425
  %103 = load ptr, ptr %102, align 8, !dbg !3425, !tbaa !864
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3425
  %105 = load ptr, ptr %104, align 8, !dbg !3425, !tbaa !864
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3425
  br label %147, !dbg !3426

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.15.115, i32 noundef 5) #37, !dbg !3427
  %109 = load ptr, ptr %4, align 8, !dbg !3427, !tbaa !864
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3427
  %111 = load ptr, ptr %110, align 8, !dbg !3427, !tbaa !864
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3427
  %113 = load ptr, ptr %112, align 8, !dbg !3427, !tbaa !864
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3427
  %115 = load ptr, ptr %114, align 8, !dbg !3427, !tbaa !864
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3427
  %117 = load ptr, ptr %116, align 8, !dbg !3427, !tbaa !864
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3427
  %119 = load ptr, ptr %118, align 8, !dbg !3427, !tbaa !864
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3427
  %121 = load ptr, ptr %120, align 8, !dbg !3427, !tbaa !864
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3427
  %123 = load ptr, ptr %122, align 8, !dbg !3427, !tbaa !864
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3427
  %125 = load ptr, ptr %124, align 8, !dbg !3427, !tbaa !864
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3427
  br label %147, !dbg !3428

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.16.116, i32 noundef 5) #37, !dbg !3429
  %129 = load ptr, ptr %4, align 8, !dbg !3429, !tbaa !864
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3429
  %131 = load ptr, ptr %130, align 8, !dbg !3429, !tbaa !864
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3429
  %133 = load ptr, ptr %132, align 8, !dbg !3429, !tbaa !864
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3429
  %135 = load ptr, ptr %134, align 8, !dbg !3429, !tbaa !864
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3429
  %137 = load ptr, ptr %136, align 8, !dbg !3429, !tbaa !864
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3429
  %139 = load ptr, ptr %138, align 8, !dbg !3429, !tbaa !864
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3429
  %141 = load ptr, ptr %140, align 8, !dbg !3429, !tbaa !864
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3429
  %143 = load ptr, ptr %142, align 8, !dbg !3429, !tbaa !864
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3429
  %145 = load ptr, ptr %144, align 8, !dbg !3429, !tbaa !864
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3429
  br label %147, !dbg !3430

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3431
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3432 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3442
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3437, metadata !DIExpression()), !dbg !3442
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3438, metadata !DIExpression()), !dbg !3442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3439, metadata !DIExpression()), !dbg !3442
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3440, metadata !DIExpression()), !dbg !3442
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3441, metadata !DIExpression()), !dbg !3442
  br label %6, !dbg !3443

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3441, metadata !DIExpression()), !dbg !3442
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3446
  %9 = load ptr, ptr %8, align 8, !dbg !3446, !tbaa !864
  %10 = icmp eq ptr %9, null, !dbg !3448
  %11 = add i64 %7, 1, !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3441, metadata !DIExpression()), !dbg !3442
  br i1 %10, label %12, label %6, !dbg !3448, !llvm.loop !3450

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3445
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3452
  ret void, !dbg !3453
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3454 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3474, metadata !DIExpression(), metadata !3476, metadata ptr %6, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3469, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3470, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3471, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3472, metadata !DIExpression(DW_OP_deref)), !dbg !3477
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3478
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3473, metadata !DIExpression()), !dbg !3477
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3473, metadata !DIExpression()), !dbg !3477
  %10 = icmp sgt i32 %9, -1, !dbg !3479
  br i1 %10, label %18, label %11, !dbg !3479

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3479
  store i32 %12, ptr %7, align 8, !dbg !3479
  %13 = icmp ult i32 %9, -7, !dbg !3479
  br i1 %13, label %14, label %18, !dbg !3479

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3479
  %16 = sext i32 %9 to i64, !dbg !3479
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3479
  br label %22, !dbg !3479

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3479
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3479
  store ptr %21, ptr %4, align 8, !dbg !3479
  br label %22, !dbg !3479

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3479
  %25 = load ptr, ptr %24, align 8, !dbg !3479
  store ptr %25, ptr %6, align 8, !dbg !3482, !tbaa !864
  %26 = icmp eq ptr %25, null, !dbg !3483
  br i1 %26, label %197, label %27, !dbg !3484

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3473, metadata !DIExpression()), !dbg !3477
  %28 = icmp sgt i32 %23, -1, !dbg !3479
  br i1 %28, label %36, label %29, !dbg !3479

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3479
  store i32 %30, ptr %7, align 8, !dbg !3479
  %31 = icmp ult i32 %23, -7, !dbg !3479
  br i1 %31, label %32, label %36, !dbg !3479

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3479
  %34 = sext i32 %23 to i64, !dbg !3479
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3479
  br label %40, !dbg !3479

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3479
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3479
  store ptr %39, ptr %4, align 8, !dbg !3479
  br label %40, !dbg !3479

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3479
  %43 = load ptr, ptr %42, align 8, !dbg !3479
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3485
  store ptr %43, ptr %44, align 8, !dbg !3482, !tbaa !864
  %45 = icmp eq ptr %43, null, !dbg !3483
  br i1 %45, label %197, label %46, !dbg !3484

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3473, metadata !DIExpression()), !dbg !3477
  %47 = icmp sgt i32 %41, -1, !dbg !3479
  br i1 %47, label %55, label %48, !dbg !3479

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3479
  store i32 %49, ptr %7, align 8, !dbg !3479
  %50 = icmp ult i32 %41, -7, !dbg !3479
  br i1 %50, label %51, label %55, !dbg !3479

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3479
  %53 = sext i32 %41 to i64, !dbg !3479
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3479
  br label %59, !dbg !3479

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3479
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3479
  store ptr %58, ptr %4, align 8, !dbg !3479
  br label %59, !dbg !3479

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3479
  %62 = load ptr, ptr %61, align 8, !dbg !3479
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3485
  store ptr %62, ptr %63, align 8, !dbg !3482, !tbaa !864
  %64 = icmp eq ptr %62, null, !dbg !3483
  br i1 %64, label %197, label %65, !dbg !3484

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3473, metadata !DIExpression()), !dbg !3477
  %66 = icmp sgt i32 %60, -1, !dbg !3479
  br i1 %66, label %74, label %67, !dbg !3479

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3479
  store i32 %68, ptr %7, align 8, !dbg !3479
  %69 = icmp ult i32 %60, -7, !dbg !3479
  br i1 %69, label %70, label %74, !dbg !3479

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3479
  %72 = sext i32 %60 to i64, !dbg !3479
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3479
  br label %78, !dbg !3479

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3479
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3479
  store ptr %77, ptr %4, align 8, !dbg !3479
  br label %78, !dbg !3479

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3479
  %81 = load ptr, ptr %80, align 8, !dbg !3479
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3485
  store ptr %81, ptr %82, align 8, !dbg !3482, !tbaa !864
  %83 = icmp eq ptr %81, null, !dbg !3483
  br i1 %83, label %197, label %84, !dbg !3484

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3473, metadata !DIExpression()), !dbg !3477
  %85 = icmp sgt i32 %79, -1, !dbg !3479
  br i1 %85, label %93, label %86, !dbg !3479

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3479
  store i32 %87, ptr %7, align 8, !dbg !3479
  %88 = icmp ult i32 %79, -7, !dbg !3479
  br i1 %88, label %89, label %93, !dbg !3479

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3479
  %91 = sext i32 %79 to i64, !dbg !3479
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3479
  br label %97, !dbg !3479

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3479
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3479
  store ptr %96, ptr %4, align 8, !dbg !3479
  br label %97, !dbg !3479

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3479
  %100 = load ptr, ptr %99, align 8, !dbg !3479
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3485
  store ptr %100, ptr %101, align 8, !dbg !3482, !tbaa !864
  %102 = icmp eq ptr %100, null, !dbg !3483
  br i1 %102, label %197, label %103, !dbg !3484

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3473, metadata !DIExpression()), !dbg !3477
  %104 = icmp sgt i32 %98, -1, !dbg !3479
  br i1 %104, label %112, label %105, !dbg !3479

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3479
  store i32 %106, ptr %7, align 8, !dbg !3479
  %107 = icmp ult i32 %98, -7, !dbg !3479
  br i1 %107, label %108, label %112, !dbg !3479

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3479
  %110 = sext i32 %98 to i64, !dbg !3479
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3479
  br label %116, !dbg !3479

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3479
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3479
  store ptr %115, ptr %4, align 8, !dbg !3479
  br label %116, !dbg !3479

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3479
  %119 = load ptr, ptr %118, align 8, !dbg !3479
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3485
  store ptr %119, ptr %120, align 8, !dbg !3482, !tbaa !864
  %121 = icmp eq ptr %119, null, !dbg !3483
  br i1 %121, label %197, label %122, !dbg !3484

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3473, metadata !DIExpression()), !dbg !3477
  %123 = icmp sgt i32 %117, -1, !dbg !3479
  br i1 %123, label %131, label %124, !dbg !3479

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3479
  store i32 %125, ptr %7, align 8, !dbg !3479
  %126 = icmp ult i32 %117, -7, !dbg !3479
  br i1 %126, label %127, label %131, !dbg !3479

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3479
  %129 = sext i32 %117 to i64, !dbg !3479
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3479
  br label %135, !dbg !3479

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3479
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3479
  store ptr %134, ptr %4, align 8, !dbg !3479
  br label %135, !dbg !3479

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3479
  %138 = load ptr, ptr %137, align 8, !dbg !3479
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3485
  store ptr %138, ptr %139, align 8, !dbg !3482, !tbaa !864
  %140 = icmp eq ptr %138, null, !dbg !3483
  br i1 %140, label %197, label %141, !dbg !3484

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3473, metadata !DIExpression()), !dbg !3477
  %142 = icmp sgt i32 %136, -1, !dbg !3479
  br i1 %142, label %150, label %143, !dbg !3479

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3479
  store i32 %144, ptr %7, align 8, !dbg !3479
  %145 = icmp ult i32 %136, -7, !dbg !3479
  br i1 %145, label %146, label %150, !dbg !3479

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3479
  %148 = sext i32 %136 to i64, !dbg !3479
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3479
  br label %154, !dbg !3479

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3479
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3479
  store ptr %153, ptr %4, align 8, !dbg !3479
  br label %154, !dbg !3479

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3479
  %157 = load ptr, ptr %156, align 8, !dbg !3479
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3485
  store ptr %157, ptr %158, align 8, !dbg !3482, !tbaa !864
  %159 = icmp eq ptr %157, null, !dbg !3483
  br i1 %159, label %197, label %160, !dbg !3484

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3473, metadata !DIExpression()), !dbg !3477
  %161 = icmp sgt i32 %155, -1, !dbg !3479
  br i1 %161, label %169, label %162, !dbg !3479

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3479
  store i32 %163, ptr %7, align 8, !dbg !3479
  %164 = icmp ult i32 %155, -7, !dbg !3479
  br i1 %164, label %165, label %169, !dbg !3479

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3479
  %167 = sext i32 %155 to i64, !dbg !3479
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3479
  br label %173, !dbg !3479

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3479
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3479
  store ptr %172, ptr %4, align 8, !dbg !3479
  br label %173, !dbg !3479

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3479
  %176 = load ptr, ptr %175, align 8, !dbg !3479
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3485
  store ptr %176, ptr %177, align 8, !dbg !3482, !tbaa !864
  %178 = icmp eq ptr %176, null, !dbg !3483
  br i1 %178, label %197, label %179, !dbg !3484

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3473, metadata !DIExpression()), !dbg !3477
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3473, metadata !DIExpression()), !dbg !3477
  %180 = icmp sgt i32 %174, -1, !dbg !3479
  br i1 %180, label %188, label %181, !dbg !3479

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3479
  store i32 %182, ptr %7, align 8, !dbg !3479
  %183 = icmp ult i32 %174, -7, !dbg !3479
  br i1 %183, label %184, label %188, !dbg !3479

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3479
  %186 = sext i32 %174 to i64, !dbg !3479
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3479
  br label %191, !dbg !3479

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3479
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3479
  store ptr %190, ptr %4, align 8, !dbg !3479
  br label %191, !dbg !3479

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3479
  %193 = load ptr, ptr %192, align 8, !dbg !3479
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3485
  store ptr %193, ptr %194, align 8, !dbg !3482, !tbaa !864
  %195 = icmp eq ptr %193, null, !dbg !3483
  %196 = select i1 %195, i64 9, i64 10, !dbg !3484
  br label %197, !dbg !3484

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3486
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3487
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3488
  ret void, !dbg !3488
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3489 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3497, metadata !DIExpression(), metadata !3498, metadata ptr %5, metadata !DIExpression()), !dbg !3499
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3493, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3494, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3495, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3496, metadata !DIExpression()), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3500
  call void @llvm.va_start(ptr nonnull %5), !dbg !3501
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3502, !tbaa.struct !1364
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3502
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3502
  call void @llvm.va_end(ptr nonnull %5), !dbg !3503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3504
  ret void, !dbg !3504
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3505 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3506, !tbaa !864
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.104, ptr noundef %1), !dbg !3506
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.17.121, i32 noundef 5) #37, !dbg !3507
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.122) #37, !dbg !3507
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.19.123, i32 noundef 5) #37, !dbg !3508
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.124, ptr noundef nonnull @.str.21.125) #37, !dbg !3508
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.22.126, i32 noundef 5) #37, !dbg !3509
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.127) #37, !dbg !3509
  ret void, !dbg !3510
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3511 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3516, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata ptr %0, metadata !3520, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %2, metadata !3524, metadata !DIExpression()), !dbg !3525
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3527
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3533
  %5 = icmp eq ptr %4, null, !dbg !3535
  br i1 %5, label %6, label %7, !dbg !3537

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3538
  unreachable, !dbg !3538

7:                                                ; preds = %3
  ret ptr %4, !dbg !3539
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3520, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3524, metadata !DIExpression()), !dbg !3540
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3541
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3542
  %5 = icmp eq ptr %4, null, !dbg !3544
  br i1 %5, label %6, label %7, !dbg !3545

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3546
  unreachable, !dbg !3546

7:                                                ; preds = %3
  ret ptr %4, !dbg !3547
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3548 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3552, metadata !DIExpression()), !dbg !3553
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3555
  %3 = icmp eq ptr %2, null, !dbg !3557
  br i1 %3, label %4, label %5, !dbg !3558

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3559
  unreachable, !dbg !3559

5:                                                ; preds = %1
  ret ptr %2, !dbg !3560
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3561 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3562 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3566, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata i64 %0, metadata !3568, metadata !DIExpression()), !dbg !3572
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3574
  call void @llvm.dbg.value(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3575
  %3 = icmp eq ptr %2, null, !dbg !3577
  br i1 %3, label %4, label %5, !dbg !3578

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3579
  unreachable, !dbg !3579

5:                                                ; preds = %1
  ret ptr %2, !dbg !3580
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3581 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %0, metadata !3552, metadata !DIExpression()), !dbg !3587
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3589
  call void @llvm.dbg.value(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3590
  %3 = icmp eq ptr %2, null, !dbg !3592
  br i1 %3, label %4, label %5, !dbg !3593

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3594
  unreachable, !dbg !3594

5:                                                ; preds = %1
  ret ptr %2, !dbg !3595
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3596 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3602
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3601, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %0, metadata !3603, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3608
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3610
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3612
  %5 = icmp eq ptr %4, null, !dbg !3614
  br i1 %5, label %6, label %7, !dbg !3615

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3616
  unreachable, !dbg !3616

7:                                                ; preds = %2
  ret ptr %4, !dbg !3617
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3618 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3619 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3623, metadata !DIExpression()), !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %0, metadata !3603, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3632
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3634
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3635
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3636
  %5 = icmp eq ptr %4, null, !dbg !3638
  br i1 %5, label %6, label %7, !dbg !3639

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3640
  unreachable, !dbg !3640

7:                                                ; preds = %2
  ret ptr %4, !dbg !3641
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3642 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3648, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %0, metadata !3650, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %1, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %2, metadata !3654, metadata !DIExpression()), !dbg !3655
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3657
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3658
  %5 = icmp eq ptr %4, null, !dbg !3660
  br i1 %5, label %6, label %7, !dbg !3661

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3662
  unreachable, !dbg !3662

7:                                                ; preds = %3
  ret ptr %4, !dbg !3663
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3664 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3668, metadata !DIExpression()), !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata ptr null, metadata !3520, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %0, metadata !3523, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3671
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3673
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3674
  %4 = icmp eq ptr %3, null, !dbg !3676
  br i1 %4, label %5, label %6, !dbg !3677

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3678
  unreachable, !dbg !3678

6:                                                ; preds = %2
  ret ptr %3, !dbg !3679
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3680 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3684, metadata !DIExpression()), !dbg !3686
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3685, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata ptr null, metadata !3646, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %0, metadata !3647, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %1, metadata !3648, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata ptr null, metadata !3650, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %0, metadata !3653, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %1, metadata !3654, metadata !DIExpression()), !dbg !3689
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3691
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3692
  %4 = icmp eq ptr %3, null, !dbg !3694
  br i1 %4, label %5, label %6, !dbg !3695

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3696
  unreachable, !dbg !3696

6:                                                ; preds = %2
  ret ptr %3, !dbg !3697
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %0, metadata !791, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %1, metadata !792, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 1, metadata !793, metadata !DIExpression()), !dbg !3705
  %3 = load i64, ptr %1, align 8, !dbg !3707, !tbaa !1220
  call void @llvm.dbg.value(metadata i64 %3, metadata !794, metadata !DIExpression()), !dbg !3705
  %4 = icmp eq ptr %0, null, !dbg !3708
  br i1 %4, label %5, label %8, !dbg !3710

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3711
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3714
  br label %15, !dbg !3714

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3715
  %10 = add nuw i64 %9, 1, !dbg !3715
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3715
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3715
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %13, metadata !794, metadata !DIExpression()), !dbg !3705
  br i1 %12, label %14, label %15, !dbg !3718

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3719
  unreachable, !dbg !3719

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3705
  call void @llvm.dbg.value(metadata i64 %16, metadata !794, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %0, metadata !3520, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %16, metadata !3523, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 1, metadata !3524, metadata !DIExpression()), !dbg !3720
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3722
  call void @llvm.dbg.value(metadata ptr %17, metadata !3528, metadata !DIExpression()), !dbg !3723
  %18 = icmp eq ptr %17, null, !dbg !3725
  br i1 %18, label %19, label %20, !dbg !3726

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3727
  unreachable, !dbg !3727

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !791, metadata !DIExpression()), !dbg !3705
  store i64 %16, ptr %1, align 8, !dbg !3728, !tbaa !1220
  ret ptr %17, !dbg !3729
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !786 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !791, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !792, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !793, metadata !DIExpression()), !dbg !3730
  %4 = load i64, ptr %1, align 8, !dbg !3731, !tbaa !1220
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !794, metadata !DIExpression()), !dbg !3730
  %5 = icmp eq ptr %0, null, !dbg !3732
  br i1 %5, label %6, label %13, !dbg !3733

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3734
  br i1 %7, label %8, label %20, !dbg !3735

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !794, metadata !DIExpression()), !dbg !3730
  %10 = icmp ugt i64 %2, 128, !dbg !3738
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !794, metadata !DIExpression()), !dbg !3730
  br label %20, !dbg !3740

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3741
  %15 = add nuw i64 %14, 1, !dbg !3741
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3741
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3741
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !794, metadata !DIExpression()), !dbg !3730
  br i1 %17, label %19, label %20, !dbg !3742

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3743
  unreachable, !dbg !3743

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !794, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !3520, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %21, metadata !3523, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %2, metadata !3524, metadata !DIExpression()), !dbg !3744
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3746
  call void @llvm.dbg.value(metadata ptr %22, metadata !3528, metadata !DIExpression()), !dbg !3747
  %23 = icmp eq ptr %22, null, !dbg !3749
  br i1 %23, label %24, label %25, !dbg !3750

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3751
  unreachable, !dbg !3751

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !791, metadata !DIExpression()), !dbg !3730
  store i64 %21, ptr %1, align 8, !dbg !3752, !tbaa !1220
  ret ptr %22, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !798 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !807, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !808, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !809, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !810, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !811, metadata !DIExpression()), !dbg !3754
  %6 = load i64, ptr %1, align 8, !dbg !3755, !tbaa !1220
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !812, metadata !DIExpression()), !dbg !3754
  %7 = ashr i64 %6, 1, !dbg !3756
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3756
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3756
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !813, metadata !DIExpression()), !dbg !3754
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3758
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !813, metadata !DIExpression()), !dbg !3754
  %12 = icmp sgt i64 %3, -1, !dbg !3759
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3761
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3761
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !813, metadata !DIExpression()), !dbg !3754
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3762
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3762
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !814, metadata !DIExpression()), !dbg !3754
  %18 = icmp slt i64 %17, 128, !dbg !3762
  %19 = select i1 %18, i64 128, i64 0, !dbg !3762
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !815, metadata !DIExpression()), !dbg !3754
  %21 = icmp eq i64 %20, 0, !dbg !3763
  br i1 %21, label %28, label %22, !dbg !3765

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !813, metadata !DIExpression()), !dbg !3754
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !814, metadata !DIExpression()), !dbg !3754
  br label %28, !dbg !3769

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3754
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !814, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !813, metadata !DIExpression()), !dbg !3754
  %31 = icmp eq ptr %0, null, !dbg !3770
  br i1 %31, label %32, label %33, !dbg !3772

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3773, !tbaa !1220
  br label %33, !dbg !3774

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3775
  %35 = icmp slt i64 %34, %2, !dbg !3777
  br i1 %35, label %36, label %48, !dbg !3778

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3779
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3779
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !813, metadata !DIExpression()), !dbg !3754
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3780
  br i1 %42, label %47, label %43, !dbg !3780

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3781
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3781
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !814, metadata !DIExpression()), !dbg !3754
  br i1 %45, label %47, label %48, !dbg !3782

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3783
  unreachable, !dbg !3783

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3754
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !814, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !813, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %50, metadata !3601, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %0, metadata !3603, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %50, metadata !3607, metadata !DIExpression()), !dbg !3786
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3788
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %52, metadata !3528, metadata !DIExpression()), !dbg !3790
  %53 = icmp eq ptr %52, null, !dbg !3792
  br i1 %53, label %54, label %55, !dbg !3793

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3794
  unreachable, !dbg !3794

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !807, metadata !DIExpression()), !dbg !3754
  store i64 %49, ptr %1, align 8, !dbg !3795, !tbaa !1220
  ret ptr %52, !dbg !3796
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3797 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %0, metadata !3801, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 1, metadata !3804, metadata !DIExpression()), !dbg !3805
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3808
  %3 = icmp eq ptr %2, null, !dbg !3810
  br i1 %3, label %4, label %5, !dbg !3811

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3812
  unreachable, !dbg !3812

5:                                                ; preds = %1
  ret ptr %2, !dbg !3813
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3814 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3802 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3801, metadata !DIExpression()), !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()), !dbg !3815
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3816
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3817
  %4 = icmp eq ptr %3, null, !dbg !3819
  br i1 %4, label %5, label %6, !dbg !3820

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3821
  unreachable, !dbg !3821

6:                                                ; preds = %2
  ret ptr %3, !dbg !3822
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i64 %0, metadata !3827, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 1, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i64 %0, metadata !3833, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 1, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 %0, metadata !3833, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i64 1, metadata !3836, metadata !DIExpression()), !dbg !3837
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3839
  call void @llvm.dbg.value(metadata ptr %2, metadata !3528, metadata !DIExpression()), !dbg !3840
  %3 = icmp eq ptr %2, null, !dbg !3842
  br i1 %3, label %4, label %5, !dbg !3843

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3844
  unreachable, !dbg !3844

5:                                                ; preds = %1
  ret ptr %2, !dbg !3845
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3828 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3827, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3830, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %0, metadata !3833, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %1, metadata !3836, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %0, metadata !3833, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %1, metadata !3836, metadata !DIExpression()), !dbg !3847
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3849
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3850
  %4 = icmp eq ptr %3, null, !dbg !3852
  br i1 %4, label %5, label %6, !dbg !3853

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3854
  unreachable, !dbg !3854

6:                                                ; preds = %2
  ret ptr %3, !dbg !3855
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3856 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3862
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3861, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %1, metadata !3552, metadata !DIExpression()), !dbg !3863
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3865
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3866
  %4 = icmp eq ptr %3, null, !dbg !3868
  br i1 %4, label %5, label %6, !dbg !3869

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3870
  unreachable, !dbg !3870

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3871, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3879
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3881
  ret ptr %3, !dbg !3882
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3883 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3887, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i64 %1, metadata !3568, metadata !DIExpression()), !dbg !3892
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3894
  call void @llvm.dbg.value(metadata ptr %3, metadata !3528, metadata !DIExpression()), !dbg !3895
  %4 = icmp eq ptr %3, null, !dbg !3897
  br i1 %4, label %5, label %6, !dbg !3898

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3899
  unreachable, !dbg !3899

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3871, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3900
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3902
  ret ptr %3, !dbg !3903
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3904 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3909, metadata !DIExpression()), !dbg !3911
  %3 = add nsw i64 %1, 1, !dbg !3912
  call void @llvm.dbg.value(metadata i64 %3, metadata !3566, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i64 %3, metadata !3568, metadata !DIExpression()), !dbg !3915
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3917
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3918
  %5 = icmp eq ptr %4, null, !dbg !3920
  br i1 %5, label %6, label %7, !dbg !3921

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3922
  unreachable, !dbg !3922

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3910, metadata !DIExpression()), !dbg !3911
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3923
  store i8 0, ptr %8, align 1, !dbg !3924, !tbaa !942
  call void @llvm.dbg.value(metadata ptr %4, metadata !3871, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3925
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3927
  ret ptr %4, !dbg !3928
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3929 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3931, metadata !DIExpression()), !dbg !3932
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3933
  %3 = add i64 %2, 1, !dbg !3934
  call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %3, metadata !3861, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %3, metadata !3552, metadata !DIExpression()), !dbg !3937
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3939
  call void @llvm.dbg.value(metadata ptr %4, metadata !3528, metadata !DIExpression()), !dbg !3940
  %5 = icmp eq ptr %4, null, !dbg !3942
  br i1 %5, label %6, label %7, !dbg !3943

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3944
  unreachable, !dbg !3944

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3871, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i64 %3, metadata !3878, metadata !DIExpression()), !dbg !3945
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3947
  ret ptr %4, !dbg !3948
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3949 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3954, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3951, metadata !DIExpression()), !dbg !3955
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.142, ptr noundef nonnull @.str.2.143, i32 noundef 5) #37, !dbg !3954
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef %2) #37, !dbg !3954
  %3 = icmp eq i32 %1, 0, !dbg !3954
  tail call void @llvm.assume(i1 %3), !dbg !3954
  tail call void @abort() #39, !dbg !3956
  unreachable, !dbg !3956
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3957 {
  %6 = alloca ptr, align 8, !DIAssignID !3982
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3969, metadata !DIExpression(), metadata !3982, metadata ptr %6, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3964, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3965, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3966, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3968, metadata !DIExpression()), !dbg !3983
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37, !dbg !3984
  %7 = icmp eq ptr %1, null, !dbg !3985
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !3970, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3971, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3974, metadata !DIExpression()), !dbg !3986
  %8 = tail call ptr @__ctype_b_loc() #40, !dbg !3983
  %9 = load ptr, ptr %8, align 8, !tbaa !864
  br label %10, !dbg !3987

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !3986
  %12 = load i8, ptr %11, align 1, !dbg !3986, !tbaa !942
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !3974, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3971, metadata !DIExpression()), !dbg !3986
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !3988
  %15 = load i16, ptr %14, align 2, !dbg !3988, !tbaa !974
  %16 = and i16 %15, 8192, !dbg !3988
  %17 = icmp eq i16 %16, 0, !dbg !3987
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3989
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3971, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3974, metadata !DIExpression()), !dbg !3986
  br i1 %17, label %19, label %10, !dbg !3987, !llvm.loop !3990

19:                                               ; preds = %10
  %.lcssa = phi i8 [ %12, %10 ], !dbg !3986
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !3985
  %21 = icmp eq i8 %.lcssa, 45, !dbg !3992
  br i1 %21, label %22, label %23, !dbg !3994

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !3995, !tbaa !864
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #40, !dbg !3997
  store i32 0, ptr %24, align 4, !dbg !3998, !tbaa !933
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #37, !dbg !3999
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3976, metadata !DIExpression()), !dbg !3983
  %26 = load ptr, ptr %20, align 8, !dbg !4000, !tbaa !864
  %27 = icmp eq ptr %26, %0, !dbg !4002
  br i1 %27, label %28, label %37, !dbg !4003

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4004
  br i1 %29, label %386, label %30, !dbg !4007

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4008, !tbaa !942
  %32 = icmp eq i8 %31, 0, !dbg !4008
  br i1 %32, label %386, label %33, !dbg !4009

33:                                               ; preds = %30
  %34 = zext i8 %31 to i32, !dbg !4008
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #38, !dbg !4010
  %36 = icmp eq ptr %35, null, !dbg !4010
  br i1 %36, label %386, label %44, !dbg !4011

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4012, !tbaa !933
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4014

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3976, metadata !DIExpression()), !dbg !3983
  br label %40, !dbg !4015

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !3983
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3976, metadata !DIExpression()), !dbg !3983
  %42 = icmp eq ptr %4, null, !dbg !4017
  br i1 %42, label %43, label %44, !dbg !4019

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4020, !tbaa !1220
  br label %386, !dbg !4022

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4023, !tbaa !942
  %48 = icmp eq i8 %47, 0, !dbg !4024
  br i1 %48, label %383, label %49, !dbg !4025

49:                                               ; preds = %44
  %50 = zext i8 %47 to i32, !dbg !4023
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #38, !dbg !4026
  %52 = icmp eq ptr %51, null, !dbg !4026
  br i1 %52, label %53, label %55, !dbg !4028

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4029, !tbaa !1220
  %54 = or disjoint i32 %45, 2, !dbg !4031
  br label %386, !dbg !4032

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !3977, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3980, metadata !DIExpression()), !dbg !4033
  switch i8 %47, label %68 [
    i8 69, label %56
    i8 71, label %56
    i8 103, label %56
    i8 107, label %56
    i8 75, label %56
    i8 77, label %56
    i8 109, label %56
    i8 80, label %56
    i8 81, label %56
    i8 82, label %56
    i8 84, label %56
    i8 116, label %56
    i8 89, label %56
    i8 90, label %56
  ], !dbg !4034

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #38, !dbg !4035
  %58 = icmp eq ptr %57, null, !dbg !4035
  br i1 %58, label %68, label %59, !dbg !4038

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4039
  %61 = load i8, ptr %60, align 1, !dbg !4039, !tbaa !942
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4040

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4041
  %64 = load i8, ptr %63, align 1, !dbg !4041, !tbaa !942
  %65 = icmp eq i8 %64, 66, !dbg !4044
  %66 = select i1 %65, i64 3, i64 1, !dbg !4045
  br label %68, !dbg !4045

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !3977, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3980, metadata !DIExpression()), !dbg !4033
  br label %68, !dbg !4046

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4033
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !3980, metadata !DIExpression()), !dbg !4033
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !3977, metadata !DIExpression()), !dbg !4033
  switch i8 %47, label %381 [
    i8 98, label %302
    i8 66, label %307
    i8 99, label %372
    i8 69, label %271
    i8 71, label %312
    i8 103, label %312
    i8 107, label %328
    i8 75, label %328
    i8 77, label %334
    i8 109, label %334
    i8 80, label %245
    i8 81, label %194
    i8 82, label %148
    i8 84, label %345
    i8 116, label %345
    i8 119, label %366
    i8 89, label %107
    i8 90, label %71
  ], !dbg !4047

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4068
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4070
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4070
  call void @llvm.dbg.value(metadata i1 %73, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i1 %73, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4068
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4070
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4070
  %80 = or i1 %73, %77, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %80, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i1 %80, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4068
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4070
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4070
  %85 = or i1 %80, %82, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %85, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i1 %85, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4068
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4070
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4070
  %90 = or i1 %85, %87, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %90, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i1 %90, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4068
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4070
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4070
  %95 = or i1 %90, %92, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %95, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i1 %95, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4068
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4070
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4070
  %100 = or i1 %95, %97, !dbg !4071
  call void @llvm.dbg.value(metadata i1 %100, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i1 %100, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4066
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4068
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4068
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4066
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4070
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4070
  %105 = or i1 %100, %102, !dbg !4071
  %106 = zext i1 %105 to i32, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %106, metadata !4048, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4056
  br label %372, !dbg !4072

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4077
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4078
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4078
  call void @llvm.dbg.value(metadata i1 %109, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %109, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4077
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4078
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4078
  %116 = or i1 %109, %113, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %116, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %116, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4077
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4078
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4078
  %121 = or i1 %116, %118, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %121, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %121, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4077
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4078
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4078
  %126 = or i1 %121, %123, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %126, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %126, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4077
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4078
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4078
  %131 = or i1 %126, %128, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %131, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %131, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4077
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4078
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4078
  %136 = or i1 %131, %133, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %136, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %136, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4077
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4078
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4078
  %141 = or i1 %136, %138, !dbg !4079
  call void @llvm.dbg.value(metadata i1 %141, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i1 %141, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4073
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4075
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4077
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4077
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4075
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4078
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4078
  %146 = or i1 %141, %143, !dbg !4079
  %147 = zext i1 %146 to i32, !dbg !4079
  call void @llvm.dbg.value(metadata i32 %147, metadata !4048, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4073
  br label %372, !dbg !4072

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 9, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4084
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4085
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4085
  call void @llvm.dbg.value(metadata i1 %150, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %150, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4084
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4085
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4085
  %157 = or i1 %150, %154, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %157, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %157, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4084
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4085
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4085
  %162 = or i1 %157, %159, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %162, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %162, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4084
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4085
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4085
  %167 = or i1 %162, %164, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %167, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %167, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4084
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4085
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4085
  %172 = or i1 %167, %169, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %172, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %172, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4084
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4085
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4085
  %177 = or i1 %172, %174, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %177, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %177, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4084
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4085
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4085
  %182 = or i1 %177, %179, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %182, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %182, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4084
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4085
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4085
  %187 = or i1 %182, %184, !dbg !4086
  call void @llvm.dbg.value(metadata i1 %187, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i1 %187, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4080
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4082
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4084
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4082
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4085
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4085
  %192 = or i1 %187, %189, !dbg !4086
  %193 = zext i1 %192 to i32, !dbg !4086
  call void @llvm.dbg.value(metadata i32 %193, metadata !4048, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4080
  br label %372, !dbg !4072

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 10, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 9, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4091
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4092
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4092
  call void @llvm.dbg.value(metadata i1 %196, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 9, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %196, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 9, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4091
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4092
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4092
  %203 = or i1 %196, %200, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %203, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %203, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 8, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4091
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4092
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4092
  %208 = or i1 %203, %205, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %208, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %208, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 7, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4091
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4092
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4092
  %213 = or i1 %208, %210, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %213, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %213, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4091
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4092
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4092
  %218 = or i1 %213, %215, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %218, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %218, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4091
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4092
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4092
  %223 = or i1 %218, %220, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %223, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %223, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4091
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4092
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4092
  %228 = or i1 %223, %225, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %228, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %228, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4091
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4092
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4092
  %233 = or i1 %228, %230, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %233, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %233, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4091
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4092
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4092
  %238 = or i1 %233, %235, !dbg !4093
  call void @llvm.dbg.value(metadata i1 %238, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i1 %238, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4087
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4089
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4091
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4089
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4092
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4092
  %243 = or i1 %238, %240, !dbg !4093
  %244 = zext i1 %243 to i32, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %244, metadata !4048, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4087
  br label %372, !dbg !4072

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4096
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4098
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4096
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4099
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4099
  call void @llvm.dbg.value(metadata i1 %247, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %247, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4096
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4098
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4096
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4099
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4099
  %254 = or i1 %247, %251, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %254, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %254, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4096
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4098
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4096
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4099
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4099
  %259 = or i1 %254, %256, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %259, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %259, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4096
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4098
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4096
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4099
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4099
  %264 = or i1 %259, %261, !dbg !4100
  call void @llvm.dbg.value(metadata i1 %264, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i1 %264, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4094
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4096
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4098
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4098
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4096
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4099
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4099
  %269 = or i1 %264, %266, !dbg !4100
  %270 = zext i1 %269 to i32, !dbg !4100
  call void @llvm.dbg.value(metadata i32 %270, metadata !4048, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4094
  br label %372, !dbg !4072

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 6, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4103
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4105
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4103
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4106
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4106
  call void @llvm.dbg.value(metadata i1 %273, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %273, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 5, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4103
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4105
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4103
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4106
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4106
  %280 = or i1 %273, %277, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %280, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %280, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4103
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4105
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4103
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4106
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4106
  %285 = or i1 %280, %282, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %285, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %285, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4103
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4105
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4103
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4106
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4106
  %290 = or i1 %285, %287, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %290, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %290, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4103
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4105
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4103
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4106
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4106
  %295 = or i1 %290, %292, !dbg !4107
  call void @llvm.dbg.value(metadata i1 %295, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i1 %295, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4101
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4103
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4105
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4105
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4103
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4106
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4106
  %300 = or i1 %295, %297, !dbg !4107
  %301 = zext i1 %300 to i32, !dbg !4107
  call void @llvm.dbg.value(metadata i32 %301, metadata !4048, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4101
  br label %372, !dbg !4072

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 512, metadata !4064, metadata !DIExpression()), !dbg !4108
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4110
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4108
  %304 = shl i64 %46, 9, !dbg !4111
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4111
  %306 = zext i1 %303 to i32, !dbg !4111
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !3981, metadata !DIExpression()), !dbg !4033
  br label %372, !dbg !4112

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.value(metadata i32 1024, metadata !4064, metadata !DIExpression()), !dbg !4113
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4115
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4113
  %309 = shl i64 %46, 10, !dbg !4116
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4116
  %311 = zext i1 %308 to i32, !dbg !4116
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !3981, metadata !DIExpression()), !dbg !4033
  br label %372, !dbg !4117

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4053, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %69, metadata !4054, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4120
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4122
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4122
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4120
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4123
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4123
  call void @llvm.dbg.value(metadata i1 %314, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i1 %314, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4120
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4122
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4122
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4120
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4123
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4123
  %321 = or i1 %314, %318, !dbg !4124
  call void @llvm.dbg.value(metadata i1 %321, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i1 %321, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4118
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4120
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4122
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4122
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4120
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4123
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4123
  %326 = or i1 %321, %323, !dbg !4124
  %327 = zext i1 %326 to i32, !dbg !4124
  call void @llvm.dbg.value(metadata i32 %327, metadata !4048, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4118
  br label %372, !dbg !4072

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4053, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i64 %69, metadata !4054, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4125
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4127
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4127
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4129
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4129
  %333 = zext i1 %330 to i32, !dbg !4129
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4130
  br label %372, !dbg !4072

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4053, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %69, metadata !4054, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4133
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4135
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4135
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4133
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4136
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4136
  call void @llvm.dbg.value(metadata i1 %336, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4131
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4131
  call void @llvm.dbg.value(metadata i1 %336, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4131
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4133
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4135
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4135
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4133
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4136
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4136
  %343 = or i1 %336, %340, !dbg !4137
  %344 = zext i1 %343 to i32, !dbg !4137
  call void @llvm.dbg.value(metadata i32 %344, metadata !4048, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4131
  br label %372, !dbg !4072

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4053, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %69, metadata !4054, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 4, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4140
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4142
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4140
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4143
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4143
  call void @llvm.dbg.value(metadata i1 %347, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i1 %347, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 3, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4140
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4142
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4140
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4143
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4143
  %354 = or i1 %347, %351, !dbg !4144
  call void @llvm.dbg.value(metadata i1 %354, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i1 %354, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 2, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4140
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4142
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4140
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4143
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4143
  %359 = or i1 %354, %356, !dbg !4144
  call void @llvm.dbg.value(metadata i1 %359, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i1 %359, metadata !4048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4138
  call void @llvm.dbg.value(metadata i32 1, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %69, metadata !4064, metadata !DIExpression()), !dbg !4140
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4142
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4142
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4140
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4143
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4143
  %364 = or i1 %359, %361, !dbg !4144
  %365 = zext i1 %364 to i32, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %365, metadata !4048, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 0, metadata !4055, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4138
  br label %372, !dbg !4072

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4059, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i32 2, metadata !4064, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 poison, metadata !4065, metadata !DIExpression()), !dbg !4145
  %367 = shl i64 %46, 1, !dbg !4147
  %368 = icmp sgt i64 %46, -1, !dbg !4147
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4147
  %370 = lshr i64 %46, 63, !dbg !4147
  %371 = trunc i64 %370 to i32, !dbg !4147
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !3981, metadata !DIExpression()), !dbg !4033
  br label %372, !dbg !4148

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !3983
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4149
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !3981, metadata !DIExpression()), !dbg !4033
  %375 = or i32 %374, %45, !dbg !4072
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !3976, metadata !DIExpression()), !dbg !3983
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4150
  store ptr %376, ptr %20, align 8, !dbg !4150, !tbaa !864
  %377 = load i8, ptr %376, align 1, !dbg !4151, !tbaa !942
  %378 = icmp eq i8 %377, 0, !dbg !4151
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4153
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !3976, metadata !DIExpression()), !dbg !3983
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4154, !tbaa !1220
  %382 = or disjoint i32 %45, 2, !dbg !4155
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !3976, metadata !DIExpression()), !dbg !3983
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4156
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4157
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !3975, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !3976, metadata !DIExpression()), !dbg !3983
  store i64 %384, ptr %3, align 8, !dbg !4158, !tbaa !1220
  br label %386, !dbg !4159

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !3983
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37, !dbg !4160
  ret i32 %387, !dbg !4160
}

; Function Attrs: nounwind
declare !dbg !4161 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4166 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4204, metadata !DIExpression()), !dbg !4209
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4205, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4211, metadata !DIExpression()), !dbg !4214
  %3 = load i32, ptr %0, align 8, !dbg !4216, !tbaa !4217
  %4 = and i32 %3, 32, !dbg !4218
  %5 = icmp eq i32 %4, 0, !dbg !4218
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !4219
  %7 = icmp eq i32 %6, 0, !dbg !4220
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  br i1 %5, label %8, label %18, !dbg !4221

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4223
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4205, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4209
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4224
  %11 = xor i1 %7, true, !dbg !4224
  %12 = sext i1 %11 to i32, !dbg !4224
  br i1 %10, label %21, label %13, !dbg !4224

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !4225
  %15 = load i32, ptr %14, align 4, !dbg !4225, !tbaa !933
  %16 = icmp ne i32 %15, 9, !dbg !4226
  %17 = sext i1 %16 to i32, !dbg !4227
  br label %21, !dbg !4227

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4228

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !4230
  store i32 0, ptr %20, align 4, !dbg !4232, !tbaa !933
  br label %21, !dbg !4230

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4209
  ret i32 %22, !dbg !4233
}

; Function Attrs: nounwind
declare !dbg !4234 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4277, metadata !DIExpression()), !dbg !4280
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4281
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4278, metadata !DIExpression()), !dbg !4280
  %3 = icmp slt i32 %2, 0, !dbg !4282
  br i1 %3, label %4, label %6, !dbg !4284

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4285
  br label %24, !dbg !4286

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4287
  %8 = icmp eq i32 %7, 0, !dbg !4287
  br i1 %8, label %13, label %9, !dbg !4289

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4290
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !4291
  %12 = icmp eq i64 %11, -1, !dbg !4292
  br i1 %12, label %16, label %13, !dbg !4293

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !4294
  %15 = icmp eq i32 %14, 0, !dbg !4294
  br i1 %15, label %16, label %18, !dbg !4295

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4277, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4280
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4279, metadata !DIExpression()), !dbg !4280
  br label %24, !dbg !4297

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !4298
  %20 = load i32, ptr %19, align 4, !dbg !4298, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4277, metadata !DIExpression()), !dbg !4280
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4279, metadata !DIExpression()), !dbg !4280
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4296
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4279, metadata !DIExpression()), !dbg !4280
  %22 = icmp eq i32 %20, 0, !dbg !4299
  br i1 %22, label %24, label %23, !dbg !4297

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4301, !tbaa !933
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4279, metadata !DIExpression()), !dbg !4280
  br label %24, !dbg !4303

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4280
  ret i32 %25, !dbg !4304
}

; Function Attrs: nofree nounwind
declare !dbg !4305 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4306 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4307 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4308 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4311 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4349, metadata !DIExpression()), !dbg !4350
  %2 = icmp eq ptr %0, null, !dbg !4351
  br i1 %2, label %6, label %3, !dbg !4353

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4354
  %5 = icmp eq i32 %4, 0, !dbg !4354
  br i1 %5, label %6, label %8, !dbg !4355

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4356
  br label %16, !dbg !4357

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4363
  %9 = load i32, ptr %0, align 8, !dbg !4365, !tbaa !4217
  %10 = and i32 %9, 256, !dbg !4367
  %11 = icmp eq i32 %10, 0, !dbg !4367
  br i1 %11, label %14, label %12, !dbg !4368

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4369
  br label %14, !dbg !4369

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4370
  br label %16, !dbg !4371

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4350
  ret i32 %17, !dbg !4372
}

; Function Attrs: nofree nounwind
declare !dbg !4373 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4374 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4413, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4414, metadata !DIExpression()), !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4415, metadata !DIExpression()), !dbg !4419
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4420
  %5 = load ptr, ptr %4, align 8, !dbg !4420, !tbaa !4421
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4422
  %7 = load ptr, ptr %6, align 8, !dbg !4422, !tbaa !4423
  %8 = icmp eq ptr %5, %7, !dbg !4424
  br i1 %8, label %9, label %27, !dbg !4425

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4426
  %11 = load ptr, ptr %10, align 8, !dbg !4426, !tbaa !1477
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4427
  %13 = load ptr, ptr %12, align 8, !dbg !4427, !tbaa !4428
  %14 = icmp eq ptr %11, %13, !dbg !4429
  br i1 %14, label %15, label %27, !dbg !4430

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4431
  %17 = load ptr, ptr %16, align 8, !dbg !4431, !tbaa !4432
  %18 = icmp eq ptr %17, null, !dbg !4433
  br i1 %18, label %19, label %27, !dbg !4434

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4435
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4436
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4416, metadata !DIExpression()), !dbg !4437
  %22 = icmp eq i64 %21, -1, !dbg !4438
  br i1 %22, label %29, label %23, !dbg !4440

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4441, !tbaa !4217
  %25 = and i32 %24, -17, !dbg !4441
  store i32 %25, ptr %0, align 8, !dbg !4441, !tbaa !4217
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4442
  store i64 %21, ptr %26, align 8, !dbg !4443, !tbaa !4444
  br label %29, !dbg !4445

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4446
  br label %29, !dbg !4447

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4419
  ret i32 %30, !dbg !4448
}

; Function Attrs: nofree nounwind
declare !dbg !4449 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4452 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4457, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4459, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4460, metadata !DIExpression()), !dbg !4462
  %5 = icmp eq ptr %1, null, !dbg !4463
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4465
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4465
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4465
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4459, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4457, metadata !DIExpression()), !dbg !4462
  %9 = icmp eq ptr %3, null, !dbg !4466
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4468
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4460, metadata !DIExpression()), !dbg !4462
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !4469
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4461, metadata !DIExpression()), !dbg !4462
  %12 = icmp ult i64 %11, -3, !dbg !4470
  br i1 %12, label %13, label %17, !dbg !4472

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !4473
  %15 = icmp eq i32 %14, 0, !dbg !4473
  br i1 %15, label %16, label %29, !dbg !4474

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4475, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata ptr %10, metadata !4482, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i32 0, metadata !4485, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i64 8, metadata !4486, metadata !DIExpression()), !dbg !4487
  store i64 0, ptr %10, align 1, !dbg !4489
  br label %29, !dbg !4490

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4491
  br i1 %18, label %19, label %20, !dbg !4493

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4494
  unreachable, !dbg !4494

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4495

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4497
  br i1 %23, label %29, label %24, !dbg !4498

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4499
  br i1 %25, label %29, label %26, !dbg !4502

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4503, !tbaa !942
  %28 = zext i8 %27 to i32, !dbg !4504
  store i32 %28, ptr %6, align 4, !dbg !4505, !tbaa !933
  br label %29, !dbg !4506

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4462
  ret i64 %30, !dbg !4507
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4508 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4516, metadata !DIExpression()), !dbg !4520
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4517, metadata !DIExpression()), !dbg !4520
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4518, metadata !DIExpression()), !dbg !4520
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4521
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4521
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4519, metadata !DIExpression()), !dbg !4520
  br i1 %5, label %6, label %8, !dbg !4523

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !4524
  store i32 12, ptr %7, align 4, !dbg !4526, !tbaa !933
  br label %12, !dbg !4527

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4521
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4519, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata ptr %0, metadata !4528, metadata !DIExpression()), !dbg !4532
  call void @llvm.dbg.value(metadata i64 %9, metadata !4531, metadata !DIExpression()), !dbg !4532
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4534
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4535
  br label %12, !dbg !4536

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4520
  ret ptr %13, !dbg !4537
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4538 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4547
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4543, metadata !DIExpression(), metadata !4547, metadata ptr %2, metadata !DIExpression()), !dbg !4548
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4542, metadata !DIExpression()), !dbg !4548
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4549
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4550
  %4 = icmp eq i32 %3, 0, !dbg !4550
  br i1 %4, label %5, label %12, !dbg !4552

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4553, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !4556, metadata !DIExpression()), !dbg !4557
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.162, i64 2), !dbg !4560
  %7 = icmp eq i32 %6, 0, !dbg !4561
  br i1 %7, label %11, label %8, !dbg !4562

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4553, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.value(metadata ptr @.str.1.163, metadata !4556, metadata !DIExpression()), !dbg !4563
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.163, i64 6), !dbg !4565
  %10 = icmp eq i32 %9, 0, !dbg !4566
  br i1 %10, label %11, label %12, !dbg !4567

11:                                               ; preds = %8, %5
  br label %12, !dbg !4568

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4548
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4569
  ret i1 %13, !dbg !4569
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4570 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4574, metadata !DIExpression()), !dbg !4577
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4575, metadata !DIExpression()), !dbg !4577
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4576, metadata !DIExpression()), !dbg !4577
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4578
  ret i32 %4, !dbg !4579
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4580 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4584, metadata !DIExpression()), !dbg !4585
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4586
  ret ptr %2, !dbg !4587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4588 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()), !dbg !4592
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4593
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4591, metadata !DIExpression()), !dbg !4592
  ret ptr %2, !dbg !4594
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4595 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4597, metadata !DIExpression()), !dbg !4604
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4598, metadata !DIExpression()), !dbg !4604
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4599, metadata !DIExpression()), !dbg !4604
  call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()), !dbg !4605
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4607
  call void @llvm.dbg.value(metadata ptr %4, metadata !4591, metadata !DIExpression()), !dbg !4605
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4600, metadata !DIExpression()), !dbg !4604
  %5 = icmp eq ptr %4, null, !dbg !4608
  br i1 %5, label %6, label %9, !dbg !4609

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4610
  br i1 %7, label %19, label %8, !dbg !4613

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4614, !tbaa !942
  br label %19, !dbg !4615

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4616
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4601, metadata !DIExpression()), !dbg !4617
  %11 = icmp ult i64 %10, %2, !dbg !4618
  br i1 %11, label %12, label %14, !dbg !4620

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4621
  call void @llvm.dbg.value(metadata ptr %1, metadata !4623, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata ptr %4, metadata !4626, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 %13, metadata !4627, metadata !DIExpression()), !dbg !4628
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !4630
  br label %19, !dbg !4631

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4632
  br i1 %15, label %19, label %16, !dbg !4635

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4636
  call void @llvm.dbg.value(metadata ptr %1, metadata !4623, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %4, metadata !4626, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %17, metadata !4627, metadata !DIExpression()), !dbg !4638
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4640
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4641
  store i8 0, ptr %18, align 1, !dbg !4642, !tbaa !942
  br label %19, !dbg !4643

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4644
  ret i32 %20, !dbg !4645
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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!81, !760, !433, !437, !452, !726, !762, !764, !766, !505, !519, !567, !775, !720, !782, !817, !819, !828, !830, !832, !834, !742, !836, !838, !840, !842}
!llvm.ident = !{!844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844, !844}
!llvm.module.flags = !{!845, !846, !847, !848, !849, !850, !851, !852}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "71829bff1470ae8ec88dbb00f89cc303")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 47)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 79)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 64)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1016, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 127)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2088, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 261)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !34, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 185)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 10)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 24)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "longopts", scope: !81, file: !2, line: 37, type: !418, isLocal: true, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/mknod.o -MD -MP -MF src/.deps/mknod.Tpo -c src/mknod.c -o src/.mknod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !127, globals: !141, splitDebugInlining: false, nameTableKind: None)
!82 = !{!83, !89, !98, !112}
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 337, baseType: !85, size: 32, elements: !86)
!84 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!88 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !90, line: 30, baseType: !91, size: 32, elements: !92)
!90 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!94 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!95 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!96 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!97 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !99, line: 42, baseType: !91, size: 32, elements: !100)
!99 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!101 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!102 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!103 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!104 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!105 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!106 = !DIEnumerator(name: "c_quoting_style", value: 5)
!107 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!108 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!109 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!110 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!111 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 46, baseType: !91, size: 32, elements: !114)
!113 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!115 = !DIEnumerator(name: "_ISupper", value: 256)
!116 = !DIEnumerator(name: "_ISlower", value: 512)
!117 = !DIEnumerator(name: "_ISalpha", value: 1024)
!118 = !DIEnumerator(name: "_ISdigit", value: 2048)
!119 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!120 = !DIEnumerator(name: "_ISspace", value: 8192)
!121 = !DIEnumerator(name: "_ISprint", value: 16384)
!122 = !DIEnumerator(name: "_ISgraph", value: 32768)
!123 = !DIEnumerator(name: "_ISblank", value: 1)
!124 = !DIEnumerator(name: "_IScntrl", value: 2)
!125 = !DIEnumerator(name: "_ISpunct", value: 4)
!126 = !DIEnumerator(name: "_ISalnum", value: 8)
!127 = !{!128, !129, !91, !130, !85, !135, !136, !138, !140, !132}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 59, baseType: !132)
!131 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !133, line: 145, baseType: !134)
!133 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 18, baseType: !134)
!137 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !64, !69, !74, !142, !147, !152, !157, !162, !167, !169, !174, !176, !181, !186, !188, !190, !195, !197, !202, !207, !212, !217, !222, !304, !309, !311, !313, !315, !320, !322, !324, !326, !328, !330, !332, !337, !342, !344, !346, !348, !350, !352, !354, !356, !361, !366, !371, !373, !375, !377, !379, !381, !386, !388, !390, !395, !400, !405, !410, !412, !414, !416, !79}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 73)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 14)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 13)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 44)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !154, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 25)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !76, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 54)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 17)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !39, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !39, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 31)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !192, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 21)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 3)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 23)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 29)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !84, line: 736, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 75)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !224, file: !84, line: 575, type: !85, isLocal: true, isDefinition: true)
!224 = distinct !DISubprogram(name: "oputs_", scope: !84, file: !84, line: 573, type: !225, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !227)
!225 = !DISubroutineType(cc: DW_CC_nocall, types: !226)
!226 = !{null, !138, !138}
!227 = !{!228, !229, !230, !233, !235, !236, !237, !241, !242, !243, !244, !246, !298, !299, !300, !302, !303}
!228 = !DILocalVariable(name: "program", arg: 1, scope: !224, file: !84, line: 573, type: !138)
!229 = !DILocalVariable(name: "option", arg: 2, scope: !224, file: !84, line: 573, type: !138)
!230 = !DILocalVariable(name: "term", scope: !231, file: !84, line: 585, type: !138)
!231 = distinct !DILexicalBlock(scope: !232, file: !84, line: 582, column: 5)
!232 = distinct !DILexicalBlock(scope: !224, file: !84, line: 581, column: 7)
!233 = !DILocalVariable(name: "double_space", scope: !224, file: !84, line: 594, type: !234)
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !DILocalVariable(name: "first_word", scope: !224, file: !84, line: 595, type: !138)
!236 = !DILocalVariable(name: "option_text", scope: !224, file: !84, line: 596, type: !138)
!237 = !DILocalVariable(name: "s", scope: !238, file: !84, line: 608, type: !138)
!238 = distinct !DILexicalBlock(scope: !239, file: !84, line: 605, column: 5)
!239 = distinct !DILexicalBlock(scope: !240, file: !84, line: 604, column: 12)
!240 = distinct !DILexicalBlock(scope: !224, file: !84, line: 597, column: 7)
!241 = !DILocalVariable(name: "spaces", scope: !238, file: !84, line: 609, type: !136)
!242 = !DILocalVariable(name: "anchor_len", scope: !224, file: !84, line: 620, type: !136)
!243 = !DILocalVariable(name: "desc_text", scope: !224, file: !84, line: 625, type: !138)
!244 = !DILocalVariable(name: "__ptr", scope: !245, file: !84, line: 644, type: !138)
!245 = distinct !DILexicalBlock(scope: !224, file: !84, line: 644, column: 3)
!246 = !DILocalVariable(name: "__stream", scope: !245, file: !84, line: 644, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !250)
!249 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !252)
!251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !268, !270, !271, !272, !275, !276, !278, !279, !282, !284, !287, !290, !291, !292, !293, !294}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !250, file: !251, line: 51, baseType: !85, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !250, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !250, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !250, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !250, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !250, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !250, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !250, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !250, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !250, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !250, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !250, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !250, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !251, line: 36, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !250, file: !251, line: 70, baseType: !269, size: 64, offset: 832)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !250, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !250, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !250, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !133, line: 152, baseType: !274)
!274 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !250, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !250, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!277 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !250, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !250, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !251, line: 43, baseType: null)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !250, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !133, line: 153, baseType: !274)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !250, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !251, line: 37, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !250, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !251, line: 38, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !250, file: !251, line: 93, baseType: !269, size: 64, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !250, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !250, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !250, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !250, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 20)
!298 = !DILocalVariable(name: "__cnt", scope: !245, file: !84, line: 644, type: !136)
!299 = !DILocalVariable(name: "url_program", scope: !224, file: !84, line: 648, type: !138)
!300 = !DILocalVariable(name: "__ptr", scope: !301, file: !84, line: 686, type: !138)
!301 = distinct !DILexicalBlock(scope: !224, file: !84, line: 686, column: 3)
!302 = !DILocalVariable(name: "__stream", scope: !301, file: !84, line: 686, type: !247)
!303 = !DILocalVariable(name: "__cnt", scope: !301, file: !84, line: 686, type: !136)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !84, line: 585, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 5)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !84, line: 586, type: !306, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !84, line: 595, type: !76, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !84, line: 620, type: !19, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !84, line: 648, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 2)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !84, line: 648, type: !306, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !84, line: 649, type: !76, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !84, line: 649, type: !204, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !84, line: 650, type: !306, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !84, line: 651, type: !19, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !84, line: 651, type: !19, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !84, line: 652, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 7)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !84, line: 653, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 8)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !84, line: 654, type: !66, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !84, line: 655, type: !66, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !84, line: 656, type: !66, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !84, line: 657, type: !66, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !84, line: 663, type: !334, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !84, line: 664, type: !66, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !183, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 40)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 15)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 61)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !84, line: 679, type: !204, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !84, line: 683, type: !306, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !306, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !84, line: 691, type: !339, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !84, line: 839, type: !154, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !84, line: 840, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 22)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !84, line: 841, type: !363, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !84, line: 862, type: !76, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !84, line: 868, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 71)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !84, line: 875, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 27)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !84, line: 877, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 51)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !84, line: 877, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 12)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !339, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !306, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !306, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !339, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 1280, elements: !307)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !421, line: 50, size: 256, elements: !422)
!421 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!422 = !{!423, !424, !425, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !421, line: 52, baseType: !138, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !420, file: !421, line: 55, baseType: !85, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !420, file: !421, line: 56, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !421, line: 57, baseType: !85, size: 32, offset: 192)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !430, line: 3, type: !363, isLocal: true, isDefinition: true)
!430 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "Version", scope: !433, file: !430, line: 3, type: !138, isLocal: false, isDefinition: true)
!433 = distinct !DICompileUnit(language: DW_LANG_C11, file: !430, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !434, splitDebugInlining: false, nameTableKind: None)
!434 = !{!428, !431}
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "file_name", scope: !437, file: !438, line: 45, type: !138, isLocal: true, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C11, file: !438, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !439, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!439 = !{!440, !442, !444, !446, !435, !448}
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !438, line: 121, type: !334, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !438, line: 121, type: !407, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !438, line: 123, type: !334, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !438, line: 126, type: !204, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !437, file: !438, line: 55, type: !234, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !452, file: !453, line: 66, type: !500, isLocal: false, isDefinition: true)
!452 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !454, globals: !455, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!454 = !{!129, !140}
!455 = !{!456, !458, !482, !484, !486, !488, !450, !490, !492, !494, !496, !498}
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 272, type: !306, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "old_file_name", scope: !460, file: !453, line: 304, type: !138, isLocal: true, isDefinition: true)
!460 = distinct !DISubprogram(name: "verror_at_line", scope: !453, file: !453, line: 298, type: !461, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !475)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !85, !85, !138, !91, !138, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !464, line: 52, baseType: !465)
!464 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !466, line: 12, baseType: !467)
!466 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !453, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !469)
!469 = !{!470, !471, !472, !473, !474}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !468, file: !453, baseType: !129, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !468, file: !453, baseType: !129, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !468, file: !453, baseType: !129, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !468, file: !453, baseType: !85, size: 32, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !468, file: !453, baseType: !85, size: 32, offset: 224)
!475 = !{!476, !477, !478, !479, !480, !481}
!476 = !DILocalVariable(name: "status", arg: 1, scope: !460, file: !453, line: 298, type: !85)
!477 = !DILocalVariable(name: "errnum", arg: 2, scope: !460, file: !453, line: 298, type: !85)
!478 = !DILocalVariable(name: "file_name", arg: 3, scope: !460, file: !453, line: 298, type: !138)
!479 = !DILocalVariable(name: "line_number", arg: 4, scope: !460, file: !453, line: 298, type: !91)
!480 = !DILocalVariable(name: "message", arg: 5, scope: !460, file: !453, line: 298, type: !138)
!481 = !DILocalVariable(name: "args", arg: 6, scope: !460, file: !453, line: 298, type: !463)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "old_line_number", scope: !460, file: !453, line: 305, type: !91, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !453, line: 338, type: !76, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !339, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !453, line: 346, type: !317, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "error_message_count", scope: !452, file: !453, line: 69, type: !91, isLocal: false, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !452, file: !453, line: 295, type: !85, isLocal: false, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !334, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !453, line: 208, type: !199, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !453, line: 214, type: !306, isLocal: true, isDefinition: true)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null}
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "program_name", scope: !505, file: !506, line: 31, type: !138, isLocal: false, isDefinition: true)
!505 = distinct !DICompileUnit(language: DW_LANG_C11, file: !506, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !507, globals: !508, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!507 = !{!129, !128}
!508 = !{!503, !509, !511}
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !506, line: 46, type: !339, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !506, line: 49, type: !76, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "utf07FF", scope: !515, file: !516, line: 46, type: !543, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "proper_name_lite", scope: !516, file: !516, line: 38, type: !517, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !521)
!516 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!517 = !DISubroutineType(types: !518)
!518 = !{!138, !138, !138}
!519 = distinct !DICompileUnit(language: DW_LANG_C11, file: !516, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !520, splitDebugInlining: false, nameTableKind: None)
!520 = !{!513}
!521 = !{!522, !523, !524, !525, !530}
!522 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !515, file: !516, line: 38, type: !138)
!523 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !515, file: !516, line: 38, type: !138)
!524 = !DILocalVariable(name: "translation", scope: !515, file: !516, line: 40, type: !138)
!525 = !DILocalVariable(name: "w", scope: !515, file: !516, line: 47, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !527, line: 37, baseType: !528)
!527 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !133, line: 57, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !133, line: 42, baseType: !91)
!530 = !DILocalVariable(name: "mbs", scope: !515, file: !516, line: 48, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !532, line: 6, baseType: !533)
!532 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !534, line: 21, baseType: !535)
!534 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 13, size: 64, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !535, file: !534, line: 15, baseType: !85, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !535, file: !534, line: 20, baseType: !539, size: 32, offset: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !534, line: 16, size: 32, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !539, file: !534, line: 18, baseType: !91, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !539, file: !534, line: 19, baseType: !76, size: 32)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16, elements: !318)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !546, line: 78, type: !339, isLocal: true, isDefinition: true)
!546 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !546, line: 79, type: !19, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !546, line: 80, type: !159, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !546, line: 81, type: !159, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !546, line: 82, type: !295, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !546, line: 83, type: !317, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !546, line: 84, type: !339, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !546, line: 85, type: !334, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !546, line: 86, type: !334, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !546, line: 87, type: !339, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !567, file: !546, line: 76, type: !641, isLocal: false, isDefinition: true)
!567 = distinct !DICompileUnit(language: DW_LANG_C11, file: !546, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !568, retainedTypes: !576, globals: !577, splitDebugInlining: false, nameTableKind: None)
!568 = !{!569, !571, !112}
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !570, line: 42, baseType: !91, size: 32, elements: !100)
!570 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !570, line: 254, baseType: !91, size: 32, elements: !572)
!572 = !{!573, !574, !575}
!573 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!574 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!575 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!576 = !{!129, !85, !135, !136}
!577 = !{!544, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !578, !582, !592, !594, !599, !601, !603, !605, !607, !630, !637, !639}
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !567, file: !546, line: 92, type: !580, isLocal: false, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 320, elements: !67)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !567, file: !546, line: 1040, type: !584, isLocal: false, isDefinition: true)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !546, line: 56, size: 448, elements: !585)
!585 = !{!586, !587, !588, !590, !591}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !584, file: !546, line: 59, baseType: !569, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !546, line: 62, baseType: !85, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !584, file: !546, line: 66, baseType: !589, size: 256, offset: 64)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !340)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !584, file: !546, line: 69, baseType: !138, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !584, file: !546, line: 72, baseType: !138, size: 64, offset: 384)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !567, file: !546, line: 107, type: !584, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "slot0", scope: !567, file: !546, line: 831, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 256)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !546, line: 321, type: !317, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !546, line: 357, type: !317, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !546, line: 358, type: !317, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !546, line: 199, type: !334, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quote", scope: !609, file: !546, line: 228, type: !628, isLocal: true, isDefinition: true)
!609 = distinct !DISubprogram(name: "gettext_quote", scope: !546, file: !546, line: 197, type: !610, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!138, !138, !569}
!612 = !{!613, !614, !615, !616, !617}
!613 = !DILocalVariable(name: "msgid", arg: 1, scope: !609, file: !546, line: 197, type: !138)
!614 = !DILocalVariable(name: "s", arg: 2, scope: !609, file: !546, line: 197, type: !569)
!615 = !DILocalVariable(name: "translation", scope: !609, file: !546, line: 199, type: !138)
!616 = !DILocalVariable(name: "w", scope: !609, file: !546, line: 229, type: !526)
!617 = !DILocalVariable(name: "mbs", scope: !609, file: !546, line: 230, type: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !532, line: 6, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !534, line: 21, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 13, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !620, file: !534, line: 15, baseType: !85, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !620, file: !534, line: 20, baseType: !624, size: 32, offset: 32)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !534, line: 16, size: 32, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !624, file: !534, line: 18, baseType: !91, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !624, file: !534, line: 19, baseType: !76, size: 32)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !629)
!629 = !{!319, !78}
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "slotvec", scope: !567, file: !546, line: 834, type: !632, isLocal: true, isDefinition: true)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !546, line: 823, size: 128, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !633, file: !546, line: 825, baseType: !136, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !546, line: 826, baseType: !128, size: 64, offset: 64)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "nslots", scope: !567, file: !546, line: 832, type: !85, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "slotvec0", scope: !567, file: !546, line: 833, type: !633, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 704, elements: !643)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!643 = !{!644}
!644 = !DISubrange(count: 11)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !647, line: 67, type: !407, isLocal: true, isDefinition: true)
!647 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !647, line: 69, type: !334, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !647, line: 83, type: !334, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !647, line: 83, type: !76, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !647, line: 85, type: !317, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !647, line: 88, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 171)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !647, line: 88, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 34)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !647, line: 105, type: !154, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !647, line: 109, type: !209, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !647, line: 113, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 28)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !647, line: 120, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 32)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !647, line: 127, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 36)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !647, line: 134, type: !358, isLocal: true, isDefinition: true)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !647, line: 142, type: !164, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(scope: null, file: !647, line: 150, type: !691, isLocal: true, isDefinition: true)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 48)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !647, line: 159, type: !696, isLocal: true, isDefinition: true)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 52)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !647, line: 170, type: !701, isLocal: true, isDefinition: true)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !702)
!702 = !{!703}
!703 = !DISubrange(count: 60)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !647, line: 248, type: !295, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !647, line: 248, type: !383, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !647, line: 254, type: !295, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !647, line: 254, type: !149, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !647, line: 254, type: !358, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !647, line: 259, type: !3, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !647, line: 259, type: !214, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !720, file: !721, line: 26, type: !723, isLocal: false, isDefinition: true)
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!722 = !{!718}
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 376, elements: !10)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "exit_failure", scope: !726, file: !727, line: 24, type: !729, isLocal: false, isDefinition: true)
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !728, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!728 = !{!724}
!729 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !732, line: 34, type: !204, isLocal: true, isDefinition: true)
!732 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !732, line: 34, type: !334, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !732, line: 34, type: !183, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !739, line: 108, type: !61, isLocal: true, isDefinition: true)
!739 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "internal_state", scope: !742, file: !739, line: 97, type: !745, isLocal: true, isDefinition: true)
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !743, globals: !744, splitDebugInlining: false, nameTableKind: None)
!743 = !{!129, !136, !140}
!744 = !{!737, !740}
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !532, line: 6, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !534, line: 21, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 13, size: 64, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !747, file: !534, line: 15, baseType: !85, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !747, file: !534, line: 20, baseType: !751, size: 32, offset: 32)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !534, line: 16, size: 32, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !751, file: !534, line: 18, baseType: !91, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !751, file: !534, line: 19, baseType: !76, size: 32)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !757, line: 35, type: !317, isLocal: true, isDefinition: true)
!757 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !757, line: 35, type: !19, isLocal: true, isDefinition: true)
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/selinux.o -MD -MP -MF src/.deps/selinux.Tpo -c src/selinux.c -o src/.selinux.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mknod.o -MD -MP -MF lib/.deps/libcoreutils_a-mknod.Tpo -c lib/mknod.c -o lib/.libcoreutils_a-mknod.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a1171358cd5346ce916515df55db10ad")
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-modechange.o -MD -MP -MF lib/.deps/libcoreutils_a-modechange.Tpo -c lib/modechange.c -o lib/.libcoreutils_a-modechange.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !768, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!768 = !{!769}
!769 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !767, line: 78, baseType: !91, size: 32, elements: !770)
!770 = !{!771, !772, !773, !774}
!771 = !DIEnumerator(name: "MODE_DONE", value: 0)
!772 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!773 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!774 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !647, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !776, retainedTypes: !780, globals: !781, splitDebugInlining: false, nameTableKind: None)
!776 = !{!777}
!777 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !647, line: 40, baseType: !91, size: 32, elements: !778)
!778 = !{!779}
!779 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!780 = !{!129}
!781 = !{!645, !648, !650, !652, !654, !656, !661, !666, !668, !670, !675, !680, !685, !687, !689, !694, !699, !704, !706, !708, !710, !712, !714, !716}
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !784, retainedTypes: !816, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!784 = !{!785, !797}
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !786, file: !783, line: 188, baseType: !91, size: 32, elements: !795)
!786 = distinct !DISubprogram(name: "x2nrealloc", scope: !783, file: !783, line: 176, type: !787, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !790)
!787 = !DISubroutineType(types: !788)
!788 = !{!129, !129, !789, !136}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(name: "p", arg: 1, scope: !786, file: !783, line: 176, type: !129)
!792 = !DILocalVariable(name: "pn", arg: 2, scope: !786, file: !783, line: 176, type: !789)
!793 = !DILocalVariable(name: "s", arg: 3, scope: !786, file: !783, line: 176, type: !136)
!794 = !DILocalVariable(name: "n", scope: !786, file: !783, line: 178, type: !136)
!795 = !{!796}
!796 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!797 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !798, file: !783, line: 228, baseType: !91, size: 32, elements: !795)
!798 = distinct !DISubprogram(name: "xpalloc", scope: !783, file: !783, line: 223, type: !799, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !806)
!799 = !DISubroutineType(types: !800)
!800 = !{!129, !129, !801, !802, !804, !802}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !803, line: 130, baseType: !804)
!803 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !805, line: 18, baseType: !274)
!805 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815}
!807 = !DILocalVariable(name: "pa", arg: 1, scope: !798, file: !783, line: 223, type: !129)
!808 = !DILocalVariable(name: "pn", arg: 2, scope: !798, file: !783, line: 223, type: !801)
!809 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !798, file: !783, line: 223, type: !802)
!810 = !DILocalVariable(name: "n_max", arg: 4, scope: !798, file: !783, line: 223, type: !804)
!811 = !DILocalVariable(name: "s", arg: 5, scope: !798, file: !783, line: 223, type: !802)
!812 = !DILocalVariable(name: "n0", scope: !798, file: !783, line: 230, type: !802)
!813 = !DILocalVariable(name: "n", scope: !798, file: !783, line: 237, type: !802)
!814 = !DILocalVariable(name: "nbytes", scope: !798, file: !783, line: 248, type: !802)
!815 = !DILocalVariable(name: "adjusted_nbytes", scope: !798, file: !783, line: 252, type: !802)
!816 = !{!128, !129}
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !818, splitDebugInlining: false, nameTableKind: None)
!818 = !{!730, !733, !735}
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !820, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoumax.Tpo -c lib/xstrtoumax.c -o lib/.libcoreutils_a-xstrtoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !821, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!821 = !{!822, !112}
!822 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !823, line: 30, baseType: !91, size: 32, elements: !92)
!823 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!824 = !{!85, !135, !128, !825}
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !826, line: 102, baseType: !827)
!826 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !133, line: 73, baseType: !134)
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!830 = distinct !DICompileUnit(language: DW_LANG_C11, file: !831, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!832 = distinct !DICompileUnit(language: DW_LANG_C11, file: !833, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!833 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!834 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!836 = distinct !DICompileUnit(language: DW_LANG_C11, file: !837, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!837 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!838 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !839, splitDebugInlining: false, nameTableKind: None)
!839 = !{!755, !758}
!840 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!841 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!842 = distinct !DICompileUnit(language: DW_LANG_C11, file: !843, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!844 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!845 = !{i32 7, !"Dwarf Version", i32 5}
!846 = !{i32 2, !"Debug Info Version", i32 3}
!847 = !{i32 1, !"wchar_size", i32 4}
!848 = !{i32 8, !"PIC Level", i32 2}
!849 = !{i32 7, !"PIE Level", i32 2}
!850 = !{i32 7, !"uwtable", i32 2}
!851 = !{i32 7, !"frame-pointer", i32 1}
!852 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!853 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 47, type: !854, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !856)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !85}
!856 = !{!857}
!857 = !DILocalVariable(name: "status", arg: 1, scope: !853, file: !2, line: 47, type: !85)
!858 = !DILocation(line: 0, scope: !853)
!859 = !DILocation(line: 49, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !2, line: 49, column: 7)
!861 = !DILocation(line: 49, column: 7, scope: !853)
!862 = !DILocation(line: 50, column: 5, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !2, line: 50, column: 5)
!864 = !{!865, !865, i64 0}
!865 = !{!"any pointer", !866, i64 0}
!866 = !{!"omnipotent char", !867, i64 0}
!867 = !{!"Simple C/C++ TBAA"}
!868 = !DILocation(line: 53, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !860, file: !2, line: 52, column: 5)
!870 = !DILocation(line: 55, column: 7, scope: !869)
!871 = !DILocation(line: 736, column: 3, scope: !872, inlinedAt: !873)
!872 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !84, file: !84, line: 734, type: !501, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81)
!873 = distinct !DILocation(line: 59, column: 7, scope: !869)
!874 = !DILocation(line: 61, column: 7, scope: !869)
!875 = !DILocation(line: 65, column: 7, scope: !869)
!876 = !DILocation(line: 69, column: 7, scope: !869)
!877 = !DILocation(line: 74, column: 7, scope: !869)
!878 = !DILocation(line: 75, column: 7, scope: !869)
!879 = !DILocation(line: 76, column: 7, scope: !869)
!880 = !DILocation(line: 83, column: 7, scope: !869)
!881 = !DILocation(line: 89, column: 7, scope: !869)
!882 = !DILocalVariable(name: "program", arg: 1, scope: !883, file: !84, line: 836, type: !138)
!883 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !884, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !138}
!886 = !{!882, !887, !894, !895, !897, !898}
!887 = !DILocalVariable(name: "infomap", scope: !883, file: !84, line: 838, type: !888)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 896, elements: !335)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !883, file: !84, line: 838, size: 128, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !890, file: !84, line: 838, baseType: !138, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !890, file: !84, line: 838, baseType: !138, size: 64, offset: 64)
!894 = !DILocalVariable(name: "node", scope: !883, file: !84, line: 848, type: !138)
!895 = !DILocalVariable(name: "map_prog", scope: !883, file: !84, line: 849, type: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!897 = !DILocalVariable(name: "lc_messages", scope: !883, file: !84, line: 861, type: !138)
!898 = !DILocalVariable(name: "url_program", scope: !883, file: !84, line: 874, type: !138)
!899 = !DILocation(line: 0, scope: !883, inlinedAt: !900)
!900 = distinct !DILocation(line: 90, column: 7, scope: !869)
!901 = !{}
!902 = !DILocation(line: 857, column: 3, scope: !883, inlinedAt: !900)
!903 = !DILocation(line: 861, column: 29, scope: !883, inlinedAt: !900)
!904 = !DILocation(line: 862, column: 7, scope: !905, inlinedAt: !900)
!905 = distinct !DILexicalBlock(scope: !883, file: !84, line: 862, column: 7)
!906 = !DILocation(line: 862, column: 19, scope: !905, inlinedAt: !900)
!907 = !DILocation(line: 862, column: 22, scope: !905, inlinedAt: !900)
!908 = !DILocation(line: 862, column: 7, scope: !883, inlinedAt: !900)
!909 = !DILocation(line: 868, column: 7, scope: !910, inlinedAt: !900)
!910 = distinct !DILexicalBlock(scope: !905, file: !84, line: 863, column: 5)
!911 = !DILocation(line: 870, column: 5, scope: !910, inlinedAt: !900)
!912 = !DILocation(line: 875, column: 3, scope: !883, inlinedAt: !900)
!913 = !DILocation(line: 877, column: 3, scope: !883, inlinedAt: !900)
!914 = !DILocation(line: 92, column: 3, scope: !853)
!915 = !DISubprogram(name: "dcgettext", scope: !916, file: !916, line: 51, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!917 = !DISubroutineType(types: !918)
!918 = !{!128, !138, !138, !85}
!919 = !DISubprogram(name: "__fprintf_chk", scope: !920, file: !920, line: 93, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!921 = !DISubroutineType(types: !922)
!922 = !{!85, !923, !85, !924, null}
!923 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!925 = !DISubprogram(name: "__printf_chk", scope: !920, file: !920, line: 95, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DISubroutineType(types: !927)
!927 = !{!85, !85, !924, null}
!928 = !DISubprogram(name: "fputs_unlocked", scope: !464, file: !464, line: 691, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = !DISubroutineType(types: !930)
!930 = !{!85, !924, !923}
!931 = !DILocation(line: 0, scope: !224)
!932 = !DILocation(line: 581, column: 7, scope: !232)
!933 = !{!934, !934, i64 0}
!934 = !{!"int", !866, i64 0}
!935 = !DILocation(line: 581, column: 19, scope: !232)
!936 = !DILocation(line: 581, column: 7, scope: !224)
!937 = !DILocation(line: 585, column: 26, scope: !231)
!938 = !DILocation(line: 0, scope: !231)
!939 = !DILocation(line: 586, column: 23, scope: !231)
!940 = !DILocation(line: 586, column: 28, scope: !231)
!941 = !DILocation(line: 586, column: 32, scope: !231)
!942 = !{!866, !866, i64 0}
!943 = !DILocation(line: 586, column: 38, scope: !231)
!944 = !DILocalVariable(name: "__s1", arg: 1, scope: !945, file: !946, line: 1359, type: !138)
!945 = distinct !DISubprogram(name: "streq", scope: !946, file: !946, line: 1359, type: !947, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !949)
!946 = !DIFile(filename: "./lib/string.h", directory: "/src")
!947 = !DISubroutineType(types: !948)
!948 = !{!234, !138, !138}
!949 = !{!944, !950}
!950 = !DILocalVariable(name: "__s2", arg: 2, scope: !945, file: !946, line: 1359, type: !138)
!951 = !DILocation(line: 0, scope: !945, inlinedAt: !952)
!952 = distinct !DILocation(line: 586, column: 41, scope: !231)
!953 = !DILocation(line: 1361, column: 11, scope: !945, inlinedAt: !952)
!954 = !DILocation(line: 1361, column: 10, scope: !945, inlinedAt: !952)
!955 = !DILocation(line: 586, column: 19, scope: !231)
!956 = !DILocation(line: 587, column: 5, scope: !231)
!957 = !DILocation(line: 588, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !224, file: !84, line: 588, column: 7)
!959 = !DILocation(line: 588, column: 7, scope: !224)
!960 = !DILocation(line: 590, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !84, line: 589, column: 5)
!962 = !DILocation(line: 591, column: 7, scope: !961)
!963 = !DILocation(line: 595, column: 37, scope: !224)
!964 = !DILocation(line: 595, column: 35, scope: !224)
!965 = !DILocation(line: 596, column: 29, scope: !224)
!966 = !DILocation(line: 597, column: 8, scope: !240)
!967 = !DILocation(line: 597, column: 7, scope: !224)
!968 = !DILocation(line: 604, column: 24, scope: !239)
!969 = !DILocation(line: 604, column: 12, scope: !240)
!970 = !DILocation(line: 0, scope: !238)
!971 = !DILocation(line: 610, column: 16, scope: !238)
!972 = !DILocation(line: 610, column: 7, scope: !238)
!973 = !DILocation(line: 611, column: 21, scope: !238)
!974 = !{!975, !975, i64 0}
!975 = !{!"short", !866, i64 0}
!976 = !DILocation(line: 611, column: 19, scope: !238)
!977 = !DILocation(line: 611, column: 16, scope: !238)
!978 = !DILocation(line: 610, column: 30, scope: !238)
!979 = distinct !{!979, !972, !973, !980}
!980 = !{!"llvm.loop.mustprogress"}
!981 = !DILocation(line: 612, column: 18, scope: !982)
!982 = distinct !DILexicalBlock(scope: !238, file: !84, line: 612, column: 11)
!983 = !DILocation(line: 612, column: 11, scope: !238)
!984 = !DILocation(line: 620, column: 23, scope: !224)
!985 = !DILocation(line: 625, column: 39, scope: !224)
!986 = !DILocation(line: 626, column: 3, scope: !224)
!987 = !DILocation(line: 626, column: 10, scope: !224)
!988 = !DILocation(line: 626, column: 21, scope: !224)
!989 = !DILocation(line: 628, column: 44, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !84, line: 628, column: 11)
!991 = distinct !DILexicalBlock(scope: !224, file: !84, line: 627, column: 5)
!992 = !DILocation(line: 628, column: 32, scope: !990)
!993 = !DILocation(line: 628, column: 49, scope: !990)
!994 = !DILocation(line: 628, column: 11, scope: !991)
!995 = !DILocation(line: 630, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !84, line: 630, column: 11)
!997 = !DILocation(line: 630, column: 11, scope: !991)
!998 = !DILocation(line: 632, column: 26, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !84, line: 632, column: 15)
!1000 = distinct !DILexicalBlock(scope: !996, file: !84, line: 631, column: 9)
!1001 = !DILocation(line: 632, column: 34, scope: !999)
!1002 = !DILocation(line: 632, column: 37, scope: !999)
!1003 = !DILocation(line: 632, column: 15, scope: !1000)
!1004 = !DILocation(line: 640, column: 16, scope: !991)
!1005 = distinct !{!1005, !986, !1006, !980}
!1006 = !DILocation(line: 641, column: 5, scope: !224)
!1007 = !DILocation(line: 644, column: 3, scope: !224)
!1008 = !DILocation(line: 0, scope: !945, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 648, column: 31, scope: !224)
!1010 = !DILocation(line: 0, scope: !945, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 649, column: 31, scope: !224)
!1012 = !DILocation(line: 0, scope: !945, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 650, column: 31, scope: !224)
!1014 = !DILocation(line: 0, scope: !945, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 651, column: 31, scope: !224)
!1016 = !DILocation(line: 0, scope: !945, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 652, column: 31, scope: !224)
!1018 = !DILocation(line: 0, scope: !945, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 653, column: 31, scope: !224)
!1020 = !DILocation(line: 0, scope: !945, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 654, column: 31, scope: !224)
!1022 = !DILocation(line: 0, scope: !945, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 655, column: 31, scope: !224)
!1024 = !DILocation(line: 0, scope: !945, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 656, column: 31, scope: !224)
!1026 = !DILocation(line: 0, scope: !945, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 657, column: 31, scope: !224)
!1028 = !DILocation(line: 663, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !224, file: !84, line: 663, column: 7)
!1030 = !DILocation(line: 664, column: 7, scope: !1029)
!1031 = !DILocation(line: 664, column: 10, scope: !1029)
!1032 = !DILocation(line: 663, column: 7, scope: !224)
!1033 = !DILocation(line: 669, column: 7, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !84, line: 665, column: 5)
!1035 = !DILocation(line: 671, column: 5, scope: !1034)
!1036 = !DILocation(line: 676, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !84, line: 673, column: 5)
!1038 = !DILocation(line: 679, column: 3, scope: !224)
!1039 = !DILocation(line: 683, column: 3, scope: !224)
!1040 = !DILocation(line: 686, column: 3, scope: !224)
!1041 = !DILocation(line: 688, column: 3, scope: !224)
!1042 = !DILocation(line: 691, column: 3, scope: !224)
!1043 = !DILocation(line: 695, column: 3, scope: !224)
!1044 = !DILocation(line: 696, column: 1, scope: !224)
!1045 = !DISubprogram(name: "setlocale", scope: !1046, file: !1046, line: 122, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!128, !85, !138}
!1049 = !DISubprogram(name: "strncmp", scope: !1050, file: !1050, line: 159, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!85, !138, !138, !136}
!1053 = !DISubprogram(name: "exit", scope: !1054, file: !1054, line: 624, type: !854, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1055 = !DISubprogram(name: "getenv", scope: !1054, file: !1054, line: 641, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!128, !138}
!1058 = !DISubprogram(name: "strcmp", scope: !1050, file: !1050, line: 156, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!85, !138, !138}
!1061 = !DISubprogram(name: "strspn", scope: !1050, file: !1050, line: 297, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!134, !138, !138}
!1064 = !DISubprogram(name: "strchr", scope: !1050, file: !1050, line: 246, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!128, !138, !85}
!1067 = !DISubprogram(name: "__ctype_b_loc", scope: !113, file: !113, line: 79, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!1073 = !DISubprogram(name: "strcspn", scope: !1050, file: !1050, line: 293, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1074 = !DISubprogram(name: "fwrite_unlocked", scope: !464, file: !464, line: 704, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!136, !1077, !136, !136, !923}
!1077 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1080 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 96, type: !1081, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1084)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!85, !85, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1093, !1094, !1097, !1103, !1104, !1105, !1108, !1109, !1111, !1113, !1114, !1115, !1116}
!1085 = !DILocalVariable(name: "argc", arg: 1, scope: !1080, file: !2, line: 96, type: !85)
!1086 = !DILocalVariable(name: "argv", arg: 2, scope: !1080, file: !2, line: 96, type: !1083)
!1087 = !DILocalVariable(name: "specified_mode", scope: !1080, file: !2, line: 98, type: !138)
!1088 = !DILocalVariable(name: "scontext", scope: !1080, file: !2, line: 99, type: !138)
!1089 = !DILocalVariable(name: "set_security_context", scope: !1080, file: !2, line: 100, type: !1090)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !1092, line: 53, flags: DIFlagFwdDecl)
!1092 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!1093 = !DILocalVariable(name: "optc", scope: !1080, file: !2, line: 110, type: !85)
!1094 = !DILocalVariable(name: "newmode", scope: !1080, file: !2, line: 150, type: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !131, line: 69, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !133, line: 150, baseType: !91)
!1097 = !DILocalVariable(name: "change", scope: !1098, file: !2, line: 153, type: !1100)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 152, column: 5)
!1099 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 151, column: 7)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !1102, line: 35, flags: DIFlagFwdDecl)
!1102 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!1103 = !DILocalVariable(name: "umask_value", scope: !1098, file: !2, line: 156, type: !1095)
!1104 = !DILocalVariable(name: "expected_operands", scope: !1080, file: !2, line: 168, type: !85)
!1105 = !DILocalVariable(name: "ret", scope: !1106, file: !2, line: 196, type: !85)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 195, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 194, column: 7)
!1108 = !DILocalVariable(name: "node_type", scope: !1080, file: !2, line: 211, type: !1095)
!1109 = !DILabel(scope: !1110, name: "block_or_character", file: !2, line: 231)
!1110 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 213, column: 5)
!1111 = !DILocalVariable(name: "s_major", scope: !1112, file: !2, line: 233, type: !138)
!1112 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 232, column: 7)
!1113 = !DILocalVariable(name: "i_major", scope: !1112, file: !2, line: 234, type: !825)
!1114 = !DILocalVariable(name: "s_minor", scope: !1112, file: !2, line: 240, type: !138)
!1115 = !DILocalVariable(name: "i_minor", scope: !1112, file: !2, line: 241, type: !825)
!1116 = !DILocalVariable(name: "device", scope: !1112, file: !2, line: 247, type: !130)
!1117 = distinct !DIAssignID()
!1118 = !DILocation(line: 0, scope: !1112)
!1119 = distinct !DIAssignID()
!1120 = !DILocation(line: 0, scope: !1080)
!1121 = !DILocation(line: 103, column: 21, scope: !1080)
!1122 = !DILocation(line: 103, column: 3, scope: !1080)
!1123 = !DILocation(line: 104, column: 3, scope: !1080)
!1124 = !DILocation(line: 105, column: 3, scope: !1080)
!1125 = !DILocation(line: 106, column: 3, scope: !1080)
!1126 = !DILocation(line: 108, column: 3, scope: !1080)
!1127 = !DILocation(line: 111, column: 3, scope: !1080)
!1128 = !DILocation(line: 111, column: 18, scope: !1080)
!1129 = !DILocation(line: 116, column: 28, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 114, column: 9)
!1131 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 112, column: 5)
!1132 = !DILocation(line: 117, column: 11, scope: !1130)
!1133 = distinct !{!1133, !1127, !1134, !980}
!1134 = !DILocation(line: 148, column: 5, scope: !1080)
!1135 = !DILocation(line: 136, column: 20, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 136, column: 20)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 124, column: 20)
!1138 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 119, column: 15)
!1139 = !DILocation(line: 136, column: 20, scope: !1137)
!1140 = !DILocation(line: 138, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 137, column: 13)
!1142 = !DILocation(line: 141, column: 13, scope: !1141)
!1143 = !DILocation(line: 143, column: 9, scope: !1130)
!1144 = !DILocation(line: 144, column: 9, scope: !1130)
!1145 = !DILocation(line: 146, column: 11, scope: !1130)
!1146 = !DILocation(line: 151, column: 7, scope: !1099)
!1147 = !DILocation(line: 151, column: 7, scope: !1080)
!1148 = !DILocation(line: 153, column: 36, scope: !1098)
!1149 = !DILocation(line: 0, scope: !1098)
!1150 = !DILocation(line: 154, column: 12, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 154, column: 11)
!1152 = !DILocation(line: 154, column: 11, scope: !1098)
!1153 = !DILocation(line: 155, column: 9, scope: !1151)
!1154 = !DILocation(line: 156, column: 28, scope: !1098)
!1155 = !DILocation(line: 157, column: 7, scope: !1098)
!1156 = !DILocation(line: 158, column: 17, scope: !1098)
!1157 = !DILocation(line: 159, column: 7, scope: !1098)
!1158 = !DILocation(line: 160, column: 19, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 160, column: 11)
!1160 = !DILocation(line: 160, column: 11, scope: !1098)
!1161 = !DILocation(line: 161, column: 9, scope: !1159)
!1162 = !DILocation(line: 168, column: 36, scope: !1080)
!1163 = !DILocation(line: 168, column: 33, scope: !1080)
!1164 = !DILocation(line: 169, column: 28, scope: !1080)
!1165 = !DILocation(line: 169, column: 39, scope: !1080)
!1166 = !DILocation(line: 169, column: 43, scope: !1080)
!1167 = !DILocation(line: 169, column: 50, scope: !1080)
!1168 = !DILocation(line: 169, column: 53, scope: !1080)
!1169 = !DILocation(line: 169, column: 73, scope: !1080)
!1170 = !DILocation(line: 168, column: 28, scope: !1080)
!1171 = !DILocation(line: 172, column: 12, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 172, column: 7)
!1173 = !DILocation(line: 172, column: 21, scope: !1172)
!1174 = !DILocation(line: 172, column: 7, scope: !1080)
!1175 = !DILocation(line: 177, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 174, column: 11)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 173, column: 5)
!1178 = !DILocation(line: 178, column: 34, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 178, column: 11)
!1180 = !DILocation(line: 178, column: 44, scope: !1179)
!1181 = !DILocation(line: 178, column: 42, scope: !1179)
!1182 = !DILocation(line: 178, column: 51, scope: !1179)
!1183 = !DILocation(line: 178, column: 11, scope: !1177)
!1184 = !DILocation(line: 179, column: 9, scope: !1179)
!1185 = !DILocation(line: 175, column: 9, scope: !1176)
!1186 = !DILocation(line: 181, column: 7, scope: !1177)
!1187 = !DILocation(line: 184, column: 25, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 184, column: 7)
!1189 = !DILocation(line: 184, column: 7, scope: !1080)
!1190 = !DILocation(line: 186, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 185, column: 5)
!1192 = !DILocation(line: 188, column: 34, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 188, column: 11)
!1194 = !DILocation(line: 188, column: 44, scope: !1193)
!1195 = !DILocation(line: 188, column: 42, scope: !1193)
!1196 = !DILocation(line: 188, column: 51, scope: !1193)
!1197 = !DILocation(line: 188, column: 11, scope: !1191)
!1198 = !DILocation(line: 189, column: 9, scope: !1193)
!1199 = !DILocation(line: 191, column: 7, scope: !1191)
!1200 = !DILocation(line: 212, column: 11, scope: !1080)
!1201 = !DILocation(line: 212, column: 3, scope: !1080)
!1202 = !DILocation(line: 229, column: 7, scope: !1110)
!1203 = !DILocation(line: 0, scope: !1110)
!1204 = !DILocation(line: 231, column: 5, scope: !1110)
!1205 = !DILocation(line: 233, column: 31, scope: !1112)
!1206 = !DILocation(line: 234, column: 9, scope: !1112)
!1207 = !DILocation(line: 235, column: 13, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 235, column: 13)
!1209 = !DILocation(line: 235, column: 57, scope: !1208)
!1210 = !DILocation(line: 236, column: 13, scope: !1208)
!1211 = !DILocation(line: 237, column: 11, scope: !1208)
!1212 = !DILocation(line: 240, column: 36, scope: !1112)
!1213 = !DILocation(line: 240, column: 31, scope: !1112)
!1214 = !DILocation(line: 241, column: 9, scope: !1112)
!1215 = !DILocation(line: 242, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 242, column: 13)
!1217 = !DILocation(line: 242, column: 57, scope: !1216)
!1218 = !DILocation(line: 243, column: 13, scope: !1216)
!1219 = !DILocation(line: 243, column: 16, scope: !1216)
!1220 = !{!1221, !1221, i64 0}
!1221 = !{!"long", !866, i64 0}
!1222 = !DILocation(line: 243, column: 24, scope: !1216)
!1223 = !DILocation(line: 242, column: 13, scope: !1112)
!1224 = !DILocation(line: 244, column: 11, scope: !1216)
!1225 = !DILocation(line: 247, column: 24, scope: !1112)
!1226 = !DILocalVariable(name: "__major", arg: 1, scope: !1227, file: !1228, line: 43, type: !91)
!1227 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !1228, file: !1228, line: 43, type: !1229, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !81, retainedNodes: !1231)
!1228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/sysmacros.h", directory: "", checksumkind: CSK_MD5, checksum: "55fcf1d6b566cf23c756196786ec2d1a")
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!132, !91, !91}
!1231 = !{!1226, !1232, !1233}
!1232 = !DILocalVariable(name: "__minor", arg: 2, scope: !1227, file: !1228, line: 43, type: !91)
!1233 = !DILocalVariable(name: "__dev", scope: !1227, file: !1228, line: 43, type: !132)
!1234 = !DILocation(line: 0, scope: !1227, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 247, column: 24, scope: !1112)
!1236 = !DILocation(line: 43, column: 1, scope: !1227, inlinedAt: !1235)
!1237 = !DILocation(line: 249, column: 20, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 249, column: 13)
!1239 = !DILocation(line: 249, column: 13, scope: !1112)
!1240 = !DILocation(line: 250, column: 11, scope: !1238)
!1241 = !DILocation(line: 257, column: 25, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 257, column: 13)
!1243 = !DILocation(line: 257, column: 20, scope: !1242)
!1244 = !DILocation(line: 257, column: 42, scope: !1242)
!1245 = !DILocation(line: 257, column: 13, scope: !1242)
!1246 = !DILocation(line: 257, column: 63, scope: !1242)
!1247 = !DILocation(line: 257, column: 13, scope: !1112)
!1248 = !DILocation(line: 258, column: 11, scope: !1242)
!1249 = !DILocation(line: 259, column: 7, scope: !1110)
!1250 = !DILocation(line: 260, column: 7, scope: !1110)
!1251 = !DILocation(line: 265, column: 19, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 265, column: 11)
!1253 = !DILocation(line: 265, column: 11, scope: !1252)
!1254 = !DILocation(line: 265, column: 42, scope: !1252)
!1255 = !DILocation(line: 265, column: 11, scope: !1110)
!1256 = !DILocation(line: 266, column: 9, scope: !1252)
!1257 = !DILocation(line: 270, column: 7, scope: !1110)
!1258 = !DILocation(line: 271, column: 7, scope: !1110)
!1259 = !DILocation(line: 274, column: 22, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 274, column: 7)
!1261 = !DILocation(line: 274, column: 38, scope: !1260)
!1262 = !DILocation(line: 274, column: 33, scope: !1260)
!1263 = !DILocation(line: 274, column: 25, scope: !1260)
!1264 = !DILocation(line: 274, column: 56, scope: !1260)
!1265 = !DILocation(line: 274, column: 7, scope: !1080)
!1266 = !DILocation(line: 275, column: 5, scope: !1260)
!1267 = !DILocation(line: 278, column: 3, scope: !1080)
!1268 = !DISubprogram(name: "bindtextdomain", scope: !916, file: !916, line: 86, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!128, !138, !138}
!1271 = !DISubprogram(name: "textdomain", scope: !916, file: !916, line: 82, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubprogram(name: "atexit", scope: !1054, file: !1054, line: 602, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!85, !500}
!1275 = !DISubprogram(name: "getopt_long", scope: !421, file: !421, line: 66, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!85, !85, !1278, !138, !1280, !426}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1281 = !DISubprogram(name: "umask", scope: !1282, file: !1282, line: 380, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1282 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1096, !1096}
!1285 = !DISubprogram(name: "free", scope: !1054, file: !1054, line: 555, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !129}
!1288 = !DISubprogram(name: "__errno_location", scope: !1289, file: !1289, line: 37, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!426}
!1292 = !DISubprogram(name: "mkfifo", scope: !1282, file: !1282, line: 418, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!85, !138, !1096}
!1295 = !DISubprogram(name: "lchmod", scope: !1282, file: !1282, line: 359, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !438, file: !438, line: 50, type: !884, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1297)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "file", arg: 1, scope: !1296, file: !438, line: 50, type: !138)
!1299 = !DILocation(line: 0, scope: !1296)
!1300 = !DILocation(line: 52, column: 13, scope: !1296)
!1301 = !DILocation(line: 53, column: 1, scope: !1296)
!1302 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !438, file: !438, line: 87, type: !1303, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !234}
!1305 = !{!1306}
!1306 = !DILocalVariable(name: "ignore", arg: 1, scope: !1302, file: !438, line: 87, type: !234)
!1307 = !DILocation(line: 0, scope: !1302)
!1308 = !DILocation(line: 89, column: 16, scope: !1302)
!1309 = !{!1310, !1310, i64 0}
!1310 = !{!"_Bool", !866, i64 0}
!1311 = !DILocation(line: 90, column: 1, scope: !1302)
!1312 = distinct !DISubprogram(name: "close_stdout", scope: !438, file: !438, line: 116, type: !501, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1313)
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "write_error", scope: !1315, file: !438, line: 121, type: !138)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !438, line: 120, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !438, line: 118, column: 7)
!1317 = !DILocation(line: 118, column: 21, scope: !1316)
!1318 = !DILocation(line: 118, column: 7, scope: !1316)
!1319 = !DILocation(line: 118, column: 29, scope: !1316)
!1320 = !DILocation(line: 119, column: 7, scope: !1316)
!1321 = !DILocation(line: 119, column: 12, scope: !1316)
!1322 = !{i8 0, i8 2}
!1323 = !DILocation(line: 119, column: 25, scope: !1316)
!1324 = !DILocation(line: 119, column: 28, scope: !1316)
!1325 = !DILocation(line: 119, column: 34, scope: !1316)
!1326 = !DILocation(line: 118, column: 7, scope: !1312)
!1327 = !DILocation(line: 121, column: 33, scope: !1315)
!1328 = !DILocation(line: 0, scope: !1315)
!1329 = !DILocation(line: 122, column: 11, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1315, file: !438, line: 122, column: 11)
!1331 = !DILocation(line: 0, scope: !1330)
!1332 = !DILocation(line: 122, column: 11, scope: !1315)
!1333 = !DILocation(line: 123, column: 9, scope: !1330)
!1334 = !DILocation(line: 126, column: 9, scope: !1330)
!1335 = !DILocation(line: 128, column: 14, scope: !1315)
!1336 = !DILocation(line: 128, column: 7, scope: !1315)
!1337 = !DILocation(line: 133, column: 42, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1312, file: !438, line: 133, column: 7)
!1339 = !DILocation(line: 133, column: 28, scope: !1338)
!1340 = !DILocation(line: 133, column: 50, scope: !1338)
!1341 = !DILocation(line: 133, column: 7, scope: !1312)
!1342 = !DILocation(line: 134, column: 12, scope: !1338)
!1343 = !DILocation(line: 134, column: 5, scope: !1338)
!1344 = !DILocation(line: 135, column: 1, scope: !1312)
!1345 = !DISubprogram(name: "_exit", scope: !1346, file: !1346, line: 624, type: !854, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1346 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1347 = distinct !DISubprogram(name: "verror", scope: !453, file: !453, line: 251, type: !1348, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !85, !85, !138, !463}
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DILocalVariable(name: "status", arg: 1, scope: !1347, file: !453, line: 251, type: !85)
!1352 = !DILocalVariable(name: "errnum", arg: 2, scope: !1347, file: !453, line: 251, type: !85)
!1353 = !DILocalVariable(name: "message", arg: 3, scope: !1347, file: !453, line: 251, type: !138)
!1354 = !DILocalVariable(name: "args", arg: 4, scope: !1347, file: !453, line: 251, type: !463)
!1355 = !DILocation(line: 0, scope: !1347)
!1356 = !DILocation(line: 261, column: 3, scope: !1347)
!1357 = !DILocation(line: 265, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1347, file: !453, line: 265, column: 7)
!1359 = !DILocation(line: 265, column: 7, scope: !1347)
!1360 = !DILocation(line: 266, column: 5, scope: !1358)
!1361 = !DILocation(line: 272, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !453, line: 268, column: 5)
!1363 = !DILocation(line: 276, column: 3, scope: !1347)
!1364 = !{i64 0, i64 8, !864, i64 8, i64 8, !864, i64 16, i64 8, !864, i64 24, i64 4, !933, i64 28, i64 4, !933}
!1365 = !DILocation(line: 282, column: 1, scope: !1347)
!1366 = distinct !DISubprogram(name: "flush_stdout", scope: !453, file: !453, line: 163, type: !501, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1367)
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "stdout_fd", scope: !1366, file: !453, line: 166, type: !85)
!1369 = !DILocation(line: 0, scope: !1366)
!1370 = !DILocalVariable(name: "fd", arg: 1, scope: !1371, file: !453, line: 145, type: !85)
!1371 = distinct !DISubprogram(name: "is_open", scope: !453, file: !453, line: 145, type: !1372, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!85, !85}
!1374 = !{!1370}
!1375 = !DILocation(line: 0, scope: !1371, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 182, column: 25, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1366, file: !453, line: 182, column: 7)
!1378 = !DILocation(line: 157, column: 15, scope: !1371, inlinedAt: !1376)
!1379 = !DILocation(line: 157, column: 12, scope: !1371, inlinedAt: !1376)
!1380 = !DILocation(line: 182, column: 7, scope: !1366)
!1381 = !DILocation(line: 184, column: 5, scope: !1377)
!1382 = !DILocation(line: 185, column: 1, scope: !1366)
!1383 = distinct !DISubprogram(name: "error_tail", scope: !453, file: !453, line: 219, type: !1348, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DILocalVariable(name: "status", arg: 1, scope: !1383, file: !453, line: 219, type: !85)
!1386 = !DILocalVariable(name: "errnum", arg: 2, scope: !1383, file: !453, line: 219, type: !85)
!1387 = !DILocalVariable(name: "message", arg: 3, scope: !1383, file: !453, line: 219, type: !138)
!1388 = !DILocalVariable(name: "args", arg: 4, scope: !1383, file: !453, line: 219, type: !463)
!1389 = distinct !DIAssignID()
!1390 = !DILocation(line: 0, scope: !1383)
!1391 = !DILocation(line: 229, column: 13, scope: !1383)
!1392 = !DILocation(line: 135, column: 10, scope: !1393, inlinedAt: !1435)
!1393 = distinct !DISubprogram(name: "vfprintf", scope: !920, file: !920, line: 132, type: !1394, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1431)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!85, !1396, !924, !465}
!1396 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1399, file: !251, line: 51, baseType: !85, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1399, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1399, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1399, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1399, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1399, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1399, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1399, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1399, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1399, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1399, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1399, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1399, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1399, file: !251, line: 70, baseType: !1415, size: 64, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1399, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1399, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1399, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1399, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1399, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1399, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1399, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1399, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1399, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1399, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1399, file: !251, line: 93, baseType: !1415, size: 64, offset: 1344)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1399, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1399, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1399, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1399, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!1431 = !{!1432, !1433, !1434}
!1432 = !DILocalVariable(name: "__stream", arg: 1, scope: !1393, file: !920, line: 132, type: !1396)
!1433 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1393, file: !920, line: 133, type: !924)
!1434 = !DILocalVariable(name: "__ap", arg: 3, scope: !1393, file: !920, line: 133, type: !465)
!1435 = distinct !DILocation(line: 229, column: 3, scope: !1383)
!1436 = !{!1437, !1439}
!1437 = distinct !{!1437, !1438, !"vfprintf.inline: argument 0"}
!1438 = distinct !{!1438, !"vfprintf.inline"}
!1439 = distinct !{!1439, !1438, !"vfprintf.inline: argument 1"}
!1440 = !DILocation(line: 229, column: 3, scope: !1383)
!1441 = !DILocation(line: 0, scope: !1393, inlinedAt: !1435)
!1442 = !DILocation(line: 232, column: 3, scope: !1383)
!1443 = !DILocation(line: 233, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1383, file: !453, line: 233, column: 7)
!1445 = !DILocation(line: 233, column: 7, scope: !1383)
!1446 = !DILocalVariable(name: "errbuf", scope: !1447, file: !453, line: 193, type: !1451)
!1447 = distinct !DISubprogram(name: "print_errno_message", scope: !453, file: !453, line: 188, type: !854, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1448)
!1448 = !{!1449, !1450, !1446}
!1449 = !DILocalVariable(name: "errnum", arg: 1, scope: !1447, file: !453, line: 188, type: !85)
!1450 = !DILocalVariable(name: "s", scope: !1447, file: !453, line: 190, type: !138)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 1024)
!1454 = !DILocation(line: 0, scope: !1447, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 234, column: 5, scope: !1444)
!1456 = !DILocation(line: 193, column: 3, scope: !1447, inlinedAt: !1455)
!1457 = !DILocation(line: 195, column: 7, scope: !1447, inlinedAt: !1455)
!1458 = !DILocation(line: 207, column: 9, scope: !1459, inlinedAt: !1455)
!1459 = distinct !DILexicalBlock(scope: !1447, file: !453, line: 207, column: 7)
!1460 = !DILocation(line: 207, column: 7, scope: !1447, inlinedAt: !1455)
!1461 = !DILocation(line: 208, column: 9, scope: !1459, inlinedAt: !1455)
!1462 = !DILocation(line: 208, column: 5, scope: !1459, inlinedAt: !1455)
!1463 = !DILocation(line: 214, column: 3, scope: !1447, inlinedAt: !1455)
!1464 = !DILocation(line: 216, column: 1, scope: !1447, inlinedAt: !1455)
!1465 = !DILocation(line: 234, column: 5, scope: !1444)
!1466 = !DILocation(line: 238, column: 3, scope: !1383)
!1467 = !DILocalVariable(name: "__c", arg: 1, scope: !1468, file: !1469, line: 101, type: !85)
!1468 = distinct !DISubprogram(name: "putc_unlocked", scope: !1469, file: !1469, line: 101, type: !1470, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1472)
!1469 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!85, !85, !1397}
!1472 = !{!1467, !1473}
!1473 = !DILocalVariable(name: "__stream", arg: 2, scope: !1468, file: !1469, line: 101, type: !1397)
!1474 = !DILocation(line: 0, scope: !1468, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 238, column: 3, scope: !1383)
!1476 = !DILocation(line: 103, column: 10, scope: !1468, inlinedAt: !1475)
!1477 = !{!1478, !865, i64 40}
!1478 = !{!"_IO_FILE", !934, i64 0, !865, i64 8, !865, i64 16, !865, i64 24, !865, i64 32, !865, i64 40, !865, i64 48, !865, i64 56, !865, i64 64, !865, i64 72, !865, i64 80, !865, i64 88, !865, i64 96, !865, i64 104, !934, i64 112, !934, i64 116, !1221, i64 120, !975, i64 128, !866, i64 130, !866, i64 131, !865, i64 136, !1221, i64 144, !865, i64 152, !865, i64 160, !865, i64 168, !865, i64 176, !1221, i64 184, !934, i64 192, !866, i64 196}
!1479 = !{!1478, !865, i64 48}
!1480 = !{!"branch_weights", i32 2000, i32 1}
!1481 = !DILocation(line: 240, column: 3, scope: !1383)
!1482 = !DILocation(line: 241, column: 7, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1383, file: !453, line: 241, column: 7)
!1484 = !DILocation(line: 241, column: 7, scope: !1383)
!1485 = !DILocation(line: 242, column: 5, scope: !1483)
!1486 = !DILocation(line: 243, column: 1, scope: !1383)
!1487 = !DISubprogram(name: "__vfprintf_chk", scope: !920, file: !920, line: 96, type: !1488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!85, !1396, !85, !924, !465}
!1490 = !DISubprogram(name: "strerror_r", scope: !1050, file: !1050, line: 444, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!128, !85, !128, !136}
!1493 = !DISubprogram(name: "__overflow", scope: !464, file: !464, line: 886, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!85, !1397, !85}
!1496 = !DISubprogram(name: "fflush_unlocked", scope: !464, file: !464, line: 239, type: !1497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!85, !1397}
!1499 = !DISubprogram(name: "fcntl", scope: !1500, file: !1500, line: 149, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!85, !85, !85, null}
!1503 = distinct !DISubprogram(name: "error", scope: !453, file: !453, line: 285, type: !1504, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !85, !85, !138, null}
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DILocalVariable(name: "status", arg: 1, scope: !1503, file: !453, line: 285, type: !85)
!1508 = !DILocalVariable(name: "errnum", arg: 2, scope: !1503, file: !453, line: 285, type: !85)
!1509 = !DILocalVariable(name: "message", arg: 3, scope: !1503, file: !453, line: 285, type: !138)
!1510 = !DILocalVariable(name: "ap", scope: !1503, file: !453, line: 287, type: !463)
!1511 = distinct !DIAssignID()
!1512 = !DILocation(line: 0, scope: !1503)
!1513 = !DILocation(line: 287, column: 3, scope: !1503)
!1514 = !DILocation(line: 288, column: 3, scope: !1503)
!1515 = !DILocation(line: 289, column: 3, scope: !1503)
!1516 = !DILocation(line: 290, column: 3, scope: !1503)
!1517 = !DILocation(line: 291, column: 1, scope: !1503)
!1518 = !DILocation(line: 0, scope: !460)
!1519 = !DILocation(line: 302, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !460, file: !453, line: 302, column: 7)
!1521 = !DILocation(line: 302, column: 7, scope: !460)
!1522 = !DILocation(line: 307, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !453, line: 307, column: 11)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !453, line: 303, column: 5)
!1525 = !DILocation(line: 307, column: 27, scope: !1523)
!1526 = !DILocation(line: 308, column: 11, scope: !1523)
!1527 = !DILocation(line: 308, column: 28, scope: !1523)
!1528 = !DILocation(line: 308, column: 25, scope: !1523)
!1529 = !DILocation(line: 309, column: 15, scope: !1523)
!1530 = !DILocation(line: 309, column: 33, scope: !1523)
!1531 = !DILocation(line: 310, column: 19, scope: !1523)
!1532 = !DILocation(line: 311, column: 22, scope: !1523)
!1533 = !DILocation(line: 311, column: 56, scope: !1523)
!1534 = !DILocation(line: 307, column: 11, scope: !1524)
!1535 = !DILocation(line: 316, column: 21, scope: !1524)
!1536 = !DILocation(line: 317, column: 23, scope: !1524)
!1537 = !DILocation(line: 318, column: 5, scope: !1524)
!1538 = !DILocation(line: 327, column: 3, scope: !460)
!1539 = !DILocation(line: 331, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !460, file: !453, line: 331, column: 7)
!1541 = !DILocation(line: 331, column: 7, scope: !460)
!1542 = !DILocation(line: 332, column: 5, scope: !1540)
!1543 = !DILocation(line: 338, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !453, line: 334, column: 5)
!1545 = !DILocation(line: 346, column: 3, scope: !460)
!1546 = !DILocation(line: 350, column: 3, scope: !460)
!1547 = !DILocation(line: 356, column: 1, scope: !460)
!1548 = distinct !DISubprogram(name: "error_at_line", scope: !453, file: !453, line: 359, type: !1549, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !85, !85, !138, !91, !138, null}
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557}
!1552 = !DILocalVariable(name: "status", arg: 1, scope: !1548, file: !453, line: 359, type: !85)
!1553 = !DILocalVariable(name: "errnum", arg: 2, scope: !1548, file: !453, line: 359, type: !85)
!1554 = !DILocalVariable(name: "file_name", arg: 3, scope: !1548, file: !453, line: 359, type: !138)
!1555 = !DILocalVariable(name: "line_number", arg: 4, scope: !1548, file: !453, line: 360, type: !91)
!1556 = !DILocalVariable(name: "message", arg: 5, scope: !1548, file: !453, line: 360, type: !138)
!1557 = !DILocalVariable(name: "ap", scope: !1548, file: !453, line: 362, type: !463)
!1558 = distinct !DIAssignID()
!1559 = !DILocation(line: 0, scope: !1548)
!1560 = !DILocation(line: 362, column: 3, scope: !1548)
!1561 = !DILocation(line: 363, column: 3, scope: !1548)
!1562 = !DILocation(line: 364, column: 3, scope: !1548)
!1563 = !DILocation(line: 366, column: 3, scope: !1548)
!1564 = !DILocation(line: 367, column: 1, scope: !1548)
!1565 = distinct !DISubprogram(name: "getprogname", scope: !763, file: !763, line: 54, type: !1566, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!138}
!1568 = !DILocation(line: 58, column: 10, scope: !1565)
!1569 = !DILocation(line: 58, column: 3, scope: !1565)
!1570 = distinct !DISubprogram(name: "rpl_mknod", scope: !765, file: !765, line: 47, type: !1571, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!85, !138, !1095, !130}
!1573 = !{!1574, !1575, !1576}
!1574 = !DILocalVariable(name: "name", arg: 1, scope: !1570, file: !765, line: 47, type: !138)
!1575 = !DILocalVariable(name: "mode", arg: 2, scope: !1570, file: !765, line: 47, type: !1095)
!1576 = !DILocalVariable(name: "dev", arg: 3, scope: !1570, file: !765, line: 47, type: !130)
!1577 = !DILocation(line: 0, scope: !1570)
!1578 = !DILocation(line: 68, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1570, file: !765, line: 68, column: 7)
!1580 = !DILocation(line: 68, column: 23, scope: !1579)
!1581 = !DILocation(line: 69, column: 31, scope: !1579)
!1582 = !DILocation(line: 69, column: 12, scope: !1579)
!1583 = !DILocation(line: 69, column: 5, scope: !1579)
!1584 = !DILocation(line: 71, column: 10, scope: !1570)
!1585 = !DILocation(line: 71, column: 3, scope: !1570)
!1586 = !DILocation(line: 72, column: 1, scope: !1570)
!1587 = !DISubprogram(name: "mknod", scope: !1282, file: !1282, line: 404, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!85, !138, !1096, !132}
!1590 = distinct !DISubprogram(name: "mode_compile", scope: !767, file: !767, line: 134, type: !1591, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1601)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!1593, !138}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !767, line: 98, size: 128, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1594, file: !767, line: 100, baseType: !4, size: 8)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1594, file: !767, line: 101, baseType: !4, size: 8, offset: 8)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1594, file: !767, line: 102, baseType: !1095, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1594, file: !767, line: 103, baseType: !1095, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1594, file: !767, line: 104, baseType: !1095, size: 32, offset: 96)
!1601 = !{!1602, !1603, !1606, !1607, !1608, !1609, !1610, !1612, !1614, !1615, !1616, !1620, !1621, !1623, !1624, !1625, !1626, !1629, !1630, !1631}
!1602 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1590, file: !767, line: 134, type: !138)
!1603 = !DILocalVariable(name: "p", scope: !1604, file: !767, line: 138, type: !138)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !767, line: 137, column: 5)
!1605 = distinct !DILexicalBlock(scope: !1590, file: !767, line: 136, column: 7)
!1606 = !DILocalVariable(name: "octal_mode", scope: !1604, file: !767, line: 139, type: !91)
!1607 = !DILocalVariable(name: "mode", scope: !1604, file: !767, line: 140, type: !1095)
!1608 = !DILocalVariable(name: "mentioned", scope: !1604, file: !767, line: 141, type: !1095)
!1609 = !DILocalVariable(name: "mc", scope: !1590, file: !767, line: 163, type: !1593)
!1610 = !DILocalVariable(name: "needed", scope: !1611, file: !767, line: 167, type: !136)
!1611 = distinct !DILexicalBlock(scope: !1590, file: !767, line: 166, column: 3)
!1612 = !DILocalVariable(name: "p", scope: !1613, file: !767, line: 168, type: !138)
!1613 = distinct !DILexicalBlock(scope: !1611, file: !767, line: 168, column: 5)
!1614 = !DILocalVariable(name: "used", scope: !1590, file: !767, line: 175, type: !136)
!1615 = !DILocalVariable(name: "p", scope: !1590, file: !767, line: 176, type: !138)
!1616 = !DILocalVariable(name: "affected", scope: !1617, file: !767, line: 180, type: !1095)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !767, line: 178, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !767, line: 177, column: 3)
!1619 = distinct !DILexicalBlock(scope: !1590, file: !767, line: 177, column: 3)
!1620 = !DILabel(scope: !1617, name: "no_more_affected", file: !767, line: 203)
!1621 = !DILocalVariable(name: "op", scope: !1622, file: !767, line: 207, type: !4)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !767, line: 206, column: 9)
!1623 = !DILocalVariable(name: "value", scope: !1622, file: !767, line: 208, type: !1095)
!1624 = !DILocalVariable(name: "mentioned", scope: !1622, file: !767, line: 209, type: !1095)
!1625 = !DILocalVariable(name: "flag", scope: !1622, file: !767, line: 210, type: !4)
!1626 = !DILocalVariable(name: "octal_mode", scope: !1627, file: !767, line: 217, type: !91)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !767, line: 216, column: 15)
!1628 = distinct !DILexicalBlock(scope: !1622, file: !767, line: 213, column: 13)
!1629 = !DILabel(scope: !1628, name: "no_more_values", file: !767, line: 284)
!1630 = !DILocalVariable(name: "change", scope: !1622, file: !767, line: 287, type: !1593)
!1631 = !DILabel(scope: !1590, name: "invalid", file: !767, line: 308)
!1632 = !DILocation(line: 0, scope: !1590)
!1633 = !DILocation(line: 136, column: 14, scope: !1605)
!1634 = !DILocation(line: 136, column: 27, scope: !1605)
!1635 = !DILocation(line: 168, column: 5, scope: !1613)
!1636 = !DILocation(line: 144, column: 7, scope: !1604)
!1637 = !DILocation(line: 146, column: 41, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1604, file: !767, line: 145, column: 9)
!1639 = !DILocation(line: 0, scope: !1604)
!1640 = !DILocation(line: 146, column: 26, scope: !1638)
!1641 = !DILocation(line: 146, column: 39, scope: !1638)
!1642 = !DILocation(line: 146, column: 46, scope: !1638)
!1643 = !DILocation(line: 147, column: 20, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1638, file: !767, line: 147, column: 15)
!1645 = !DILocation(line: 147, column: 15, scope: !1638)
!1646 = !DILocation(line: 146, column: 43, scope: !1638)
!1647 = !DILocation(line: 150, column: 21, scope: !1604)
!1648 = !DILocation(line: 150, column: 24, scope: !1604)
!1649 = distinct !{!1649, !1636, !1650, !980}
!1650 = !DILocation(line: 150, column: 35, scope: !1604)
!1651 = !DILocation(line: 152, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1604, file: !767, line: 152, column: 11)
!1653 = !DILocation(line: 152, column: 11, scope: !1604)
!1654 = !DILocation(line: 156, column: 22, scope: !1604)
!1655 = !DILocation(line: 156, column: 36, scope: !1604)
!1656 = !DILocation(line: 156, column: 20, scope: !1604)
!1657 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1658, file: !767, line: 112, type: !1095)
!1658 = distinct !DISubprogram(name: "make_node_op_equals", scope: !767, file: !767, line: 112, type: !1659, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!1593, !1095, !1095}
!1661 = !{!1657, !1662, !1663}
!1662 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1658, file: !767, line: 112, type: !1095)
!1663 = !DILocalVariable(name: "p", scope: !1658, file: !767, line: 114, type: !1593)
!1664 = !DILocation(line: 0, scope: !1658, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 159, column: 14, scope: !1604)
!1666 = !DILocation(line: 114, column: 27, scope: !1658, inlinedAt: !1665)
!1667 = !DILocation(line: 115, column: 9, scope: !1658, inlinedAt: !1665)
!1668 = !{!1669, !866, i64 0}
!1669 = !{!"mode_change", !866, i64 0, !866, i64 1, !934, i64 4, !934, i64 8, !934, i64 12}
!1670 = !DILocation(line: 116, column: 6, scope: !1658, inlinedAt: !1665)
!1671 = !DILocation(line: 116, column: 11, scope: !1658, inlinedAt: !1665)
!1672 = !{!1669, !866, i64 1}
!1673 = !DILocation(line: 117, column: 6, scope: !1658, inlinedAt: !1665)
!1674 = !DILocation(line: 117, column: 15, scope: !1658, inlinedAt: !1665)
!1675 = !{!1669, !934, i64 4}
!1676 = !DILocation(line: 118, column: 6, scope: !1658, inlinedAt: !1665)
!1677 = !DILocation(line: 118, column: 12, scope: !1658, inlinedAt: !1665)
!1678 = !{!1669, !934, i64 8}
!1679 = !DILocation(line: 119, column: 6, scope: !1658, inlinedAt: !1665)
!1680 = !DILocation(line: 119, column: 16, scope: !1658, inlinedAt: !1665)
!1681 = !{!1669, !934, i64 12}
!1682 = !DILocation(line: 120, column: 8, scope: !1658, inlinedAt: !1665)
!1683 = !DILocation(line: 120, column: 13, scope: !1658, inlinedAt: !1665)
!1684 = !DILocation(line: 159, column: 7, scope: !1604)
!1685 = !DILocation(line: 168, column: 39, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1613, file: !767, line: 168, column: 5)
!1687 = !DILocation(line: 0, scope: !1611)
!1688 = !DILocation(line: 168, scope: !1613)
!1689 = !DILocation(line: 0, scope: !1613)
!1690 = !DILocation(line: 170, column: 10, scope: !1611)
!1691 = !DILocation(line: 177, column: 8, scope: !1619)
!1692 = !DILocation(line: 169, column: 41, scope: !1686)
!1693 = !DILocation(line: 169, column: 14, scope: !1686)
!1694 = !DILocation(line: 168, column: 44, scope: !1686)
!1695 = !DILocation(line: 168, column: 5, scope: !1686)
!1696 = distinct !{!1696, !1635, !1697, !980}
!1697 = !DILocation(line: 169, column: 53, scope: !1613)
!1698 = !DILocation(line: 175, column: 10, scope: !1590)
!1699 = !DILocation(line: 177, scope: !1619)
!1700 = !DILocation(line: 0, scope: !1622)
!1701 = !DILocation(line: 0, scope: !1617)
!1702 = !DILocation(line: 183, column: 7, scope: !1617)
!1703 = !DILocation(line: 0, scope: !1619)
!1704 = !DILocation(line: 184, column: 17, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !767, line: 183, column: 7)
!1706 = distinct !DILexicalBlock(scope: !1617, file: !767, line: 183, column: 7)
!1707 = !DILocation(line: 184, column: 9, scope: !1705)
!1708 = !DILocation(line: 212, column: 11, scope: !1622)
!1709 = !DILocation(line: 189, column: 22, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !767, line: 185, column: 11)
!1711 = !DILocation(line: 190, column: 13, scope: !1710)
!1712 = !DILocation(line: 192, column: 22, scope: !1710)
!1713 = !DILocation(line: 193, column: 13, scope: !1710)
!1714 = !DILocation(line: 195, column: 22, scope: !1710)
!1715 = !DILocation(line: 196, column: 13, scope: !1710)
!1716 = !DILocation(line: 0, scope: !1710)
!1717 = !DILocation(line: 183, column: 16, scope: !1705)
!1718 = !DILocation(line: 183, column: 7, scope: !1705)
!1719 = distinct !{!1719, !1720, !1721}
!1720 = !DILocation(line: 183, column: 7, scope: !1706)
!1721 = !DILocation(line: 202, column: 11, scope: !1706)
!1722 = !DILocation(line: 207, column: 21, scope: !1622)
!1723 = !DILocation(line: 180, column: 14, scope: !1617)
!1724 = !DILocation(line: 207, column: 23, scope: !1622)
!1725 = !DILocation(line: 212, column: 19, scope: !1622)
!1726 = !DILocation(line: 258, column: 15, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1628, file: !767, line: 258, column: 15)
!1728 = !DILocation(line: 219, column: 17, scope: !1627)
!1729 = !DILocation(line: 221, column: 51, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1627, file: !767, line: 220, column: 19)
!1731 = !DILocation(line: 0, scope: !1627)
!1732 = !DILocation(line: 221, column: 36, scope: !1730)
!1733 = !DILocation(line: 221, column: 49, scope: !1730)
!1734 = !DILocation(line: 221, column: 56, scope: !1730)
!1735 = !DILocation(line: 222, column: 30, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1730, file: !767, line: 222, column: 25)
!1737 = !DILocation(line: 222, column: 25, scope: !1730)
!1738 = !DILocation(line: 221, column: 53, scope: !1730)
!1739 = !DILocation(line: 225, column: 31, scope: !1627)
!1740 = !DILocation(line: 225, column: 34, scope: !1627)
!1741 = distinct !{!1741, !1728, !1742, !980}
!1742 = !DILocation(line: 225, column: 45, scope: !1627)
!1743 = !DILocation(line: 227, column: 21, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1627, file: !767, line: 227, column: 21)
!1745 = !DILocation(line: 227, column: 30, scope: !1744)
!1746 = !DILocation(line: 227, column: 37, scope: !1744)
!1747 = !DILocation(line: 239, column: 16, scope: !1628)
!1748 = !DILocation(line: 240, column: 15, scope: !1628)
!1749 = !DILocation(line: 245, column: 16, scope: !1628)
!1750 = !DILocation(line: 246, column: 15, scope: !1628)
!1751 = !DILocation(line: 251, column: 16, scope: !1628)
!1752 = !DILocation(line: 252, column: 15, scope: !1628)
!1753 = !DILocation(line: 259, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1727, file: !767, line: 258, column: 15)
!1755 = !DILocation(line: 0, scope: !1628)
!1756 = !DILocation(line: 256, column: 20, scope: !1628)
!1757 = !DILocation(line: 259, column: 17, scope: !1754)
!1758 = !DILocation(line: 262, column: 27, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1754, file: !767, line: 260, column: 19)
!1760 = !DILocation(line: 263, column: 21, scope: !1759)
!1761 = !DILocation(line: 265, column: 27, scope: !1759)
!1762 = !DILocation(line: 266, column: 21, scope: !1759)
!1763 = !DILocation(line: 268, column: 27, scope: !1759)
!1764 = !DILocation(line: 269, column: 21, scope: !1759)
!1765 = !DILocation(line: 275, column: 27, scope: !1759)
!1766 = !DILocation(line: 276, column: 21, scope: !1759)
!1767 = !DILocation(line: 279, column: 27, scope: !1759)
!1768 = !DILocation(line: 280, column: 21, scope: !1759)
!1769 = !DILocation(line: 258, column: 24, scope: !1754)
!1770 = !DILocation(line: 258, column: 15, scope: !1754)
!1771 = distinct !{!1771, !1726, !1772}
!1772 = !DILocation(line: 283, column: 19, scope: !1727)
!1773 = !DILocation(line: 294, column: 14, scope: !1622)
!1774 = !DILocation(line: 209, column: 18, scope: !1622)
!1775 = !DILocation(line: 288, column: 28, scope: !1622)
!1776 = !DILocation(line: 288, column: 21, scope: !1622)
!1777 = !DILocation(line: 289, column: 22, scope: !1622)
!1778 = !DILocation(line: 290, column: 19, scope: !1622)
!1779 = !DILocation(line: 290, column: 24, scope: !1622)
!1780 = !DILocation(line: 291, column: 19, scope: !1622)
!1781 = !DILocation(line: 291, column: 28, scope: !1622)
!1782 = !DILocation(line: 292, column: 19, scope: !1622)
!1783 = !DILocation(line: 292, column: 25, scope: !1622)
!1784 = !DILocation(line: 293, column: 19, scope: !1622)
!1785 = !DILocation(line: 293, column: 29, scope: !1622)
!1786 = !DILocation(line: 296, column: 14, scope: !1617)
!1787 = !DILocation(line: 296, column: 24, scope: !1617)
!1788 = !DILocation(line: 177, column: 28, scope: !1618)
!1789 = !DILocation(line: 177, column: 3, scope: !1618)
!1790 = distinct !{!1790, !1791, !1792}
!1791 = !DILocation(line: 177, column: 3, scope: !1619)
!1792 = !DILocation(line: 300, column: 5, scope: !1619)
!1793 = !DILocation(line: 304, column: 16, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !767, line: 303, column: 5)
!1795 = distinct !DILexicalBlock(scope: !1590, file: !767, line: 302, column: 7)
!1796 = !DILocation(line: 304, column: 21, scope: !1794)
!1797 = !DILocation(line: 305, column: 7, scope: !1794)
!1798 = !DILocation(line: 309, column: 3, scope: !1590)
!1799 = !DILocation(line: 308, column: 1, scope: !1590)
!1800 = !DILocation(line: 310, column: 3, scope: !1590)
!1801 = !DILocation(line: 311, column: 1, scope: !1590)
!1802 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !767, file: !767, line: 317, type: !1591, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1803)
!1803 = !{!1804, !1805}
!1804 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1802, file: !767, line: 317, type: !138)
!1805 = !DILocalVariable(name: "ref_stats", scope: !1802, file: !767, line: 319, type: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1807, line: 44, size: 1024, elements: !1808)
!1807 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1808 = !{!1809, !1810, !1812, !1813, !1815, !1817, !1819, !1820, !1821, !1822, !1824, !1825, !1827, !1835, !1836, !1837}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1806, file: !1807, line: 46, baseType: !132, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1806, file: !1807, line: 47, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !133, line: 148, baseType: !134)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1806, file: !1807, line: 48, baseType: !1096, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1806, file: !1807, line: 49, baseType: !1814, size: 32, offset: 160)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !133, line: 151, baseType: !91)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1806, file: !1807, line: 50, baseType: !1816, size: 32, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !133, line: 146, baseType: !91)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1806, file: !1807, line: 51, baseType: !1818, size: 32, offset: 224)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !133, line: 147, baseType: !91)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1806, file: !1807, line: 52, baseType: !132, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1806, file: !1807, line: 53, baseType: !132, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1806, file: !1807, line: 54, baseType: !273, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1806, file: !1807, line: 55, baseType: !1823, size: 32, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !133, line: 175, baseType: !85)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1806, file: !1807, line: 56, baseType: !85, size: 32, offset: 480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1806, file: !1807, line: 57, baseType: !1826, size: 64, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !133, line: 180, baseType: !274)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1806, file: !1807, line: 65, baseType: !1828, size: 128, offset: 576)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1829, line: 11, size: 128, elements: !1830)
!1829 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1830 = !{!1831, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1828, file: !1829, line: 16, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !133, line: 160, baseType: !274)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1828, file: !1829, line: 21, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !133, line: 197, baseType: !274)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1806, file: !1807, line: 66, baseType: !1828, size: 128, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1806, file: !1807, line: 67, baseType: !1828, size: 128, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1806, file: !1807, line: 79, baseType: !1838, size: 64, offset: 960)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !318)
!1839 = distinct !DIAssignID()
!1840 = !DILocation(line: 0, scope: !1802)
!1841 = !DILocation(line: 319, column: 3, scope: !1802)
!1842 = !DILocation(line: 321, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1802, file: !767, line: 321, column: 7)
!1844 = !DILocation(line: 321, column: 35, scope: !1843)
!1845 = !DILocation(line: 321, column: 7, scope: !1802)
!1846 = !DILocation(line: 323, column: 41, scope: !1802)
!1847 = !{!1848, !934, i64 16}
!1848 = !{!"stat", !1221, i64 0, !1221, i64 8, !934, i64 16, !934, i64 20, !934, i64 24, !934, i64 28, !1221, i64 32, !1221, i64 40, !1221, i64 48, !934, i64 56, !934, i64 60, !1221, i64 64, !1849, i64 72, !1849, i64 88, !1849, i64 104, !866, i64 120}
!1849 = !{!"timespec", !1221, i64 0, !1221, i64 8}
!1850 = !DILocation(line: 0, scope: !1658, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 323, column: 10, scope: !1802)
!1852 = !DILocation(line: 114, column: 27, scope: !1658, inlinedAt: !1851)
!1853 = !DILocation(line: 115, column: 9, scope: !1658, inlinedAt: !1851)
!1854 = !DILocation(line: 116, column: 6, scope: !1658, inlinedAt: !1851)
!1855 = !DILocation(line: 116, column: 11, scope: !1658, inlinedAt: !1851)
!1856 = !DILocation(line: 117, column: 6, scope: !1658, inlinedAt: !1851)
!1857 = !DILocation(line: 117, column: 15, scope: !1658, inlinedAt: !1851)
!1858 = !DILocation(line: 118, column: 6, scope: !1658, inlinedAt: !1851)
!1859 = !DILocation(line: 118, column: 12, scope: !1658, inlinedAt: !1851)
!1860 = !DILocation(line: 119, column: 6, scope: !1658, inlinedAt: !1851)
!1861 = !DILocation(line: 119, column: 16, scope: !1658, inlinedAt: !1851)
!1862 = !DILocation(line: 120, column: 8, scope: !1658, inlinedAt: !1851)
!1863 = !DILocation(line: 120, column: 13, scope: !1658, inlinedAt: !1851)
!1864 = !DILocation(line: 323, column: 3, scope: !1802)
!1865 = !DILocation(line: 324, column: 1, scope: !1802)
!1866 = !DISubprogram(name: "stat", scope: !1282, file: !1282, line: 205, type: !1867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!85, !924, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1871 = distinct !DISubprogram(name: "mode_adjust", scope: !767, file: !767, line: 340, type: !1872, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1877)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!1095, !1095, !234, !1095, !1874, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1889, !1890, !1891}
!1878 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1871, file: !767, line: 340, type: !1095)
!1879 = !DILocalVariable(name: "dir", arg: 2, scope: !1871, file: !767, line: 340, type: !234)
!1880 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1871, file: !767, line: 340, type: !1095)
!1881 = !DILocalVariable(name: "changes", arg: 4, scope: !1871, file: !767, line: 341, type: !1874)
!1882 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1871, file: !767, line: 341, type: !1876)
!1883 = !DILocalVariable(name: "newmode", scope: !1871, file: !767, line: 344, type: !1095)
!1884 = !DILocalVariable(name: "mode_bits", scope: !1871, file: !767, line: 347, type: !1095)
!1885 = !DILocalVariable(name: "affected", scope: !1886, file: !767, line: 351, type: !1095)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !767, line: 350, column: 5)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !767, line: 349, column: 3)
!1888 = distinct !DILexicalBlock(scope: !1871, file: !767, line: 349, column: 3)
!1889 = !DILocalVariable(name: "omit_change", scope: !1886, file: !767, line: 352, type: !1095)
!1890 = !DILocalVariable(name: "value", scope: !1886, file: !767, line: 354, type: !1095)
!1891 = !DILocalVariable(name: "preserved", scope: !1892, file: !767, line: 394, type: !1095)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !767, line: 393, column: 11)
!1893 = distinct !DILexicalBlock(scope: !1886, file: !767, line: 388, column: 9)
!1894 = !DILocation(line: 0, scope: !1871)
!1895 = !DILocation(line: 344, column: 28, scope: !1871)
!1896 = !DILocation(line: 349, column: 19, scope: !1887)
!1897 = !DILocation(line: 349, column: 24, scope: !1887)
!1898 = !DILocation(line: 349, column: 3, scope: !1888)
!1899 = !DILocation(line: 351, column: 34, scope: !1886)
!1900 = !DILocation(line: 0, scope: !1886)
!1901 = !DILocation(line: 353, column: 52, scope: !1886)
!1902 = !DILocation(line: 353, column: 41, scope: !1886)
!1903 = !DILocation(line: 353, column: 39, scope: !1886)
!1904 = !DILocation(line: 354, column: 31, scope: !1886)
!1905 = !DILocation(line: 356, column: 7, scope: !1886)
!1906 = !DILocation(line: 363, column: 17, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1886, file: !767, line: 357, column: 9)
!1908 = !DILocation(line: 366, column: 28, scope: !1907)
!1909 = !DILocation(line: 366, column: 22, scope: !1907)
!1910 = !DILocation(line: 368, column: 30, scope: !1907)
!1911 = !DILocation(line: 368, column: 24, scope: !1907)
!1912 = !DILocation(line: 370, column: 30, scope: !1907)
!1913 = !DILocation(line: 370, column: 24, scope: !1907)
!1914 = !DILocation(line: 370, column: 21, scope: !1907)
!1915 = !DILocation(line: 366, column: 17, scope: !1907)
!1916 = !DILocation(line: 372, column: 11, scope: !1907)
!1917 = !DILocation(line: 377, column: 24, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1907, file: !767, line: 377, column: 15)
!1919 = !DILocation(line: 377, column: 57, scope: !1918)
!1920 = !DILocation(line: 377, column: 15, scope: !1907)
!1921 = !DILocation(line: 385, column: 17, scope: !1886)
!1922 = !DILocation(line: 385, column: 55, scope: !1886)
!1923 = !DILocation(line: 385, column: 53, scope: !1886)
!1924 = !DILocation(line: 385, column: 13, scope: !1886)
!1925 = !DILocation(line: 387, column: 24, scope: !1886)
!1926 = !DILocation(line: 387, column: 7, scope: !1886)
!1927 = !DILocation(line: 394, column: 33, scope: !1892)
!1928 = !DILocation(line: 394, column: 59, scope: !1892)
!1929 = !DILocation(line: 0, scope: !1892)
!1930 = !DILocation(line: 395, column: 42, scope: !1892)
!1931 = !DILocation(line: 395, column: 23, scope: !1892)
!1932 = !DILocation(line: 396, column: 32, scope: !1892)
!1933 = !DILocation(line: 396, column: 45, scope: !1892)
!1934 = !DILocation(line: 401, column: 21, scope: !1893)
!1935 = !DILocation(line: 402, column: 19, scope: !1893)
!1936 = !DILocation(line: 403, column: 11, scope: !1893)
!1937 = !DILocation(line: 406, column: 21, scope: !1893)
!1938 = !DILocation(line: 407, column: 22, scope: !1893)
!1939 = !DILocation(line: 407, column: 19, scope: !1893)
!1940 = !DILocation(line: 408, column: 11, scope: !1893)
!1941 = !DILocation(line: 349, column: 45, scope: !1887)
!1942 = distinct !{!1942, !1898, !1943, !980}
!1943 = !DILocation(line: 410, column: 5, scope: !1888)
!1944 = !DILocation(line: 412, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1871, file: !767, line: 412, column: 7)
!1946 = !DILocation(line: 347, column: 10, scope: !1871)
!1947 = !DILocation(line: 344, column: 10, scope: !1871)
!1948 = !DILocation(line: 412, column: 7, scope: !1871)
!1949 = !DILocation(line: 413, column: 17, scope: !1945)
!1950 = !DILocation(line: 413, column: 5, scope: !1945)
!1951 = !DILocation(line: 414, column: 3, scope: !1871)
!1952 = distinct !DISubprogram(name: "set_program_name", scope: !506, file: !506, line: 37, type: !884, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DILocalVariable(name: "argv0", arg: 1, scope: !1952, file: !506, line: 37, type: !138)
!1955 = !DILocalVariable(name: "slash", scope: !1952, file: !506, line: 44, type: !138)
!1956 = !DILocalVariable(name: "base", scope: !1952, file: !506, line: 45, type: !138)
!1957 = !DILocation(line: 0, scope: !1952)
!1958 = !DILocation(line: 44, column: 23, scope: !1952)
!1959 = !DILocation(line: 45, column: 22, scope: !1952)
!1960 = !DILocation(line: 46, column: 17, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !506, line: 46, column: 7)
!1962 = !DILocation(line: 46, column: 9, scope: !1961)
!1963 = !DILocation(line: 46, column: 25, scope: !1961)
!1964 = !DILocation(line: 46, column: 40, scope: !1961)
!1965 = !DILocalVariable(name: "__s1", arg: 1, scope: !1966, file: !946, line: 974, type: !1078)
!1966 = distinct !DISubprogram(name: "memeq", scope: !946, file: !946, line: 974, type: !1967, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!234, !1078, !1078, !136}
!1969 = !{!1965, !1970, !1971}
!1970 = !DILocalVariable(name: "__s2", arg: 2, scope: !1966, file: !946, line: 974, type: !1078)
!1971 = !DILocalVariable(name: "__n", arg: 3, scope: !1966, file: !946, line: 974, type: !136)
!1972 = !DILocation(line: 0, scope: !1966, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 46, column: 28, scope: !1961)
!1974 = !DILocation(line: 976, column: 11, scope: !1966, inlinedAt: !1973)
!1975 = !DILocation(line: 976, column: 10, scope: !1966, inlinedAt: !1973)
!1976 = !DILocation(line: 46, column: 7, scope: !1952)
!1977 = !DILocation(line: 49, column: 11, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !506, line: 49, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1961, file: !506, line: 47, column: 5)
!1980 = !DILocation(line: 49, column: 36, scope: !1978)
!1981 = !DILocation(line: 49, column: 11, scope: !1979)
!1982 = !DILocation(line: 65, column: 16, scope: !1952)
!1983 = !DILocation(line: 71, column: 27, scope: !1952)
!1984 = !DILocation(line: 74, column: 33, scope: !1952)
!1985 = !DILocation(line: 76, column: 1, scope: !1952)
!1986 = !DISubprogram(name: "strrchr", scope: !1050, file: !1050, line: 273, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1987 = distinct !DIAssignID()
!1988 = !DILocation(line: 0, scope: !515)
!1989 = distinct !DIAssignID()
!1990 = !DILocation(line: 40, column: 29, scope: !515)
!1991 = !DILocation(line: 41, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !515, file: !516, line: 41, column: 7)
!1993 = !DILocation(line: 41, column: 7, scope: !515)
!1994 = !DILocation(line: 47, column: 3, scope: !515)
!1995 = !DILocation(line: 48, column: 3, scope: !515)
!1996 = !DILocalVariable(name: "ps", arg: 1, scope: !1997, file: !1998, line: 1135, type: !2001)
!1997 = distinct !DISubprogram(name: "mbszero", scope: !1998, file: !1998, line: 1135, type: !1999, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2002)
!1998 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2002 = !{!1996}
!2003 = !DILocation(line: 0, scope: !1997, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 48, column: 18, scope: !515)
!2005 = !DILocalVariable(name: "__dest", arg: 1, scope: !2006, file: !2007, line: 57, type: !129)
!2006 = distinct !DISubprogram(name: "memset", scope: !2007, file: !2007, line: 57, type: !2008, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !2010)
!2007 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!129, !129, !85, !136}
!2010 = !{!2005, !2011, !2012}
!2011 = !DILocalVariable(name: "__ch", arg: 2, scope: !2006, file: !2007, line: 57, type: !85)
!2012 = !DILocalVariable(name: "__len", arg: 3, scope: !2006, file: !2007, line: 57, type: !136)
!2013 = !DILocation(line: 0, scope: !2006, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 1137, column: 3, scope: !1997, inlinedAt: !2004)
!2015 = !DILocation(line: 59, column: 10, scope: !2006, inlinedAt: !2014)
!2016 = !DILocation(line: 49, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !515, file: !516, line: 49, column: 7)
!2018 = !DILocation(line: 49, column: 39, scope: !2017)
!2019 = !DILocation(line: 49, column: 44, scope: !2017)
!2020 = !DILocation(line: 54, column: 1, scope: !515)
!2021 = !DISubprogram(name: "mbrtoc32", scope: !527, file: !527, line: 57, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!136, !2024, !924, !136, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2001)
!2027 = distinct !DISubprogram(name: "clone_quoting_options", scope: !546, file: !546, line: 113, type: !2028, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2031)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2030, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!2031 = !{!2032, !2033, !2034}
!2032 = !DILocalVariable(name: "o", arg: 1, scope: !2027, file: !546, line: 113, type: !2030)
!2033 = !DILocalVariable(name: "saved_errno", scope: !2027, file: !546, line: 115, type: !85)
!2034 = !DILocalVariable(name: "p", scope: !2027, file: !546, line: 116, type: !2030)
!2035 = !DILocation(line: 0, scope: !2027)
!2036 = !DILocation(line: 115, column: 21, scope: !2027)
!2037 = !DILocation(line: 116, column: 40, scope: !2027)
!2038 = !DILocation(line: 116, column: 31, scope: !2027)
!2039 = !DILocation(line: 118, column: 9, scope: !2027)
!2040 = !DILocation(line: 119, column: 3, scope: !2027)
!2041 = distinct !DISubprogram(name: "get_quoting_style", scope: !546, file: !546, line: 124, type: !2042, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2046)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!569, !2044}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "o", arg: 1, scope: !2041, file: !546, line: 124, type: !2044)
!2048 = !DILocation(line: 0, scope: !2041)
!2049 = !DILocation(line: 126, column: 11, scope: !2041)
!2050 = !DILocation(line: 126, column: 46, scope: !2041)
!2051 = !{!2052, !934, i64 0}
!2052 = !{!"quoting_options", !934, i64 0, !934, i64 4, !866, i64 8, !865, i64 40, !865, i64 48}
!2053 = !DILocation(line: 126, column: 3, scope: !2041)
!2054 = distinct !DISubprogram(name: "set_quoting_style", scope: !546, file: !546, line: 132, type: !2055, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2057)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !2030, !569}
!2057 = !{!2058, !2059}
!2058 = !DILocalVariable(name: "o", arg: 1, scope: !2054, file: !546, line: 132, type: !2030)
!2059 = !DILocalVariable(name: "s", arg: 2, scope: !2054, file: !546, line: 132, type: !569)
!2060 = !DILocation(line: 0, scope: !2054)
!2061 = !DILocation(line: 134, column: 4, scope: !2054)
!2062 = !DILocation(line: 134, column: 45, scope: !2054)
!2063 = !DILocation(line: 135, column: 1, scope: !2054)
!2064 = distinct !DISubprogram(name: "set_char_quoting", scope: !546, file: !546, line: 143, type: !2065, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!85, !2030, !4, !85}
!2067 = !{!2068, !2069, !2070, !2071, !2072, !2074, !2075}
!2068 = !DILocalVariable(name: "o", arg: 1, scope: !2064, file: !546, line: 143, type: !2030)
!2069 = !DILocalVariable(name: "c", arg: 2, scope: !2064, file: !546, line: 143, type: !4)
!2070 = !DILocalVariable(name: "i", arg: 3, scope: !2064, file: !546, line: 143, type: !85)
!2071 = !DILocalVariable(name: "uc", scope: !2064, file: !546, line: 145, type: !140)
!2072 = !DILocalVariable(name: "p", scope: !2064, file: !546, line: 146, type: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2074 = !DILocalVariable(name: "shift", scope: !2064, file: !546, line: 148, type: !85)
!2075 = !DILocalVariable(name: "r", scope: !2064, file: !546, line: 149, type: !91)
!2076 = !DILocation(line: 0, scope: !2064)
!2077 = !DILocation(line: 147, column: 6, scope: !2064)
!2078 = !DILocation(line: 147, column: 41, scope: !2064)
!2079 = !DILocation(line: 147, column: 62, scope: !2064)
!2080 = !DILocation(line: 147, column: 57, scope: !2064)
!2081 = !DILocation(line: 148, column: 15, scope: !2064)
!2082 = !DILocation(line: 149, column: 21, scope: !2064)
!2083 = !DILocation(line: 149, column: 24, scope: !2064)
!2084 = !DILocation(line: 149, column: 34, scope: !2064)
!2085 = !DILocation(line: 150, column: 19, scope: !2064)
!2086 = !DILocation(line: 150, column: 24, scope: !2064)
!2087 = !DILocation(line: 150, column: 6, scope: !2064)
!2088 = !DILocation(line: 151, column: 3, scope: !2064)
!2089 = distinct !DISubprogram(name: "set_quoting_flags", scope: !546, file: !546, line: 159, type: !2090, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!85, !2030, !85}
!2092 = !{!2093, !2094, !2095}
!2093 = !DILocalVariable(name: "o", arg: 1, scope: !2089, file: !546, line: 159, type: !2030)
!2094 = !DILocalVariable(name: "i", arg: 2, scope: !2089, file: !546, line: 159, type: !85)
!2095 = !DILocalVariable(name: "r", scope: !2089, file: !546, line: 163, type: !85)
!2096 = !DILocation(line: 0, scope: !2089)
!2097 = !DILocation(line: 161, column: 8, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2089, file: !546, line: 161, column: 7)
!2099 = !DILocation(line: 161, column: 7, scope: !2089)
!2100 = !DILocation(line: 163, column: 14, scope: !2089)
!2101 = !{!2052, !934, i64 4}
!2102 = !DILocation(line: 164, column: 12, scope: !2089)
!2103 = !DILocation(line: 165, column: 3, scope: !2089)
!2104 = distinct !DISubprogram(name: "set_custom_quoting", scope: !546, file: !546, line: 169, type: !2105, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !2030, !138, !138}
!2107 = !{!2108, !2109, !2110}
!2108 = !DILocalVariable(name: "o", arg: 1, scope: !2104, file: !546, line: 169, type: !2030)
!2109 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2104, file: !546, line: 170, type: !138)
!2110 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2104, file: !546, line: 170, type: !138)
!2111 = !DILocation(line: 0, scope: !2104)
!2112 = !DILocation(line: 172, column: 8, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2104, file: !546, line: 172, column: 7)
!2114 = !DILocation(line: 172, column: 7, scope: !2104)
!2115 = !DILocation(line: 174, column: 12, scope: !2104)
!2116 = !DILocation(line: 175, column: 8, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2104, file: !546, line: 175, column: 7)
!2118 = !DILocation(line: 175, column: 19, scope: !2117)
!2119 = !DILocation(line: 176, column: 5, scope: !2117)
!2120 = !DILocation(line: 177, column: 6, scope: !2104)
!2121 = !DILocation(line: 177, column: 17, scope: !2104)
!2122 = !{!2052, !865, i64 40}
!2123 = !DILocation(line: 178, column: 6, scope: !2104)
!2124 = !DILocation(line: 178, column: 18, scope: !2104)
!2125 = !{!2052, !865, i64 48}
!2126 = !DILocation(line: 179, column: 1, scope: !2104)
!2127 = !DISubprogram(name: "abort", scope: !1054, file: !1054, line: 598, type: !501, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2128 = distinct !DISubprogram(name: "quotearg_buffer", scope: !546, file: !546, line: 774, type: !2129, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!136, !128, !136, !138, !136, !2044}
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139}
!2132 = !DILocalVariable(name: "buffer", arg: 1, scope: !2128, file: !546, line: 774, type: !128)
!2133 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2128, file: !546, line: 774, type: !136)
!2134 = !DILocalVariable(name: "arg", arg: 3, scope: !2128, file: !546, line: 775, type: !138)
!2135 = !DILocalVariable(name: "argsize", arg: 4, scope: !2128, file: !546, line: 775, type: !136)
!2136 = !DILocalVariable(name: "o", arg: 5, scope: !2128, file: !546, line: 776, type: !2044)
!2137 = !DILocalVariable(name: "p", scope: !2128, file: !546, line: 778, type: !2044)
!2138 = !DILocalVariable(name: "saved_errno", scope: !2128, file: !546, line: 779, type: !85)
!2139 = !DILocalVariable(name: "r", scope: !2128, file: !546, line: 780, type: !136)
!2140 = !DILocation(line: 0, scope: !2128)
!2141 = !DILocation(line: 778, column: 37, scope: !2128)
!2142 = !DILocation(line: 779, column: 21, scope: !2128)
!2143 = !DILocation(line: 781, column: 43, scope: !2128)
!2144 = !DILocation(line: 781, column: 53, scope: !2128)
!2145 = !DILocation(line: 781, column: 63, scope: !2128)
!2146 = !DILocation(line: 782, column: 43, scope: !2128)
!2147 = !DILocation(line: 782, column: 58, scope: !2128)
!2148 = !DILocation(line: 780, column: 14, scope: !2128)
!2149 = !DILocation(line: 783, column: 9, scope: !2128)
!2150 = !DILocation(line: 784, column: 3, scope: !2128)
!2151 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !546, file: !546, line: 251, type: !2152, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2156)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!136, !128, !136, !138, !136, !569, !85, !2154, !138, !138}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2182, !2184, !2187, !2188, !2189, !2190, !2193, !2194, !2196, !2197, !2200, !2204, !2205, !2213, !2216, !2217, !2218}
!2157 = !DILocalVariable(name: "buffer", arg: 1, scope: !2151, file: !546, line: 251, type: !128)
!2158 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2151, file: !546, line: 251, type: !136)
!2159 = !DILocalVariable(name: "arg", arg: 3, scope: !2151, file: !546, line: 252, type: !138)
!2160 = !DILocalVariable(name: "argsize", arg: 4, scope: !2151, file: !546, line: 252, type: !136)
!2161 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2151, file: !546, line: 253, type: !569)
!2162 = !DILocalVariable(name: "flags", arg: 6, scope: !2151, file: !546, line: 253, type: !85)
!2163 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2151, file: !546, line: 254, type: !2154)
!2164 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2151, file: !546, line: 255, type: !138)
!2165 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2151, file: !546, line: 256, type: !138)
!2166 = !DILocalVariable(name: "unibyte_locale", scope: !2151, file: !546, line: 258, type: !234)
!2167 = !DILocalVariable(name: "len", scope: !2151, file: !546, line: 260, type: !136)
!2168 = !DILocalVariable(name: "orig_buffersize", scope: !2151, file: !546, line: 261, type: !136)
!2169 = !DILocalVariable(name: "quote_string", scope: !2151, file: !546, line: 262, type: !138)
!2170 = !DILocalVariable(name: "quote_string_len", scope: !2151, file: !546, line: 263, type: !136)
!2171 = !DILocalVariable(name: "backslash_escapes", scope: !2151, file: !546, line: 264, type: !234)
!2172 = !DILocalVariable(name: "elide_outer_quotes", scope: !2151, file: !546, line: 265, type: !234)
!2173 = !DILocalVariable(name: "encountered_single_quote", scope: !2151, file: !546, line: 266, type: !234)
!2174 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2151, file: !546, line: 267, type: !234)
!2175 = !DILabel(scope: !2151, name: "process_input", file: !546, line: 308)
!2176 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2151, file: !546, line: 309, type: !234)
!2177 = !DILocalVariable(name: "lq", scope: !2178, file: !546, line: 361, type: !138)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !546, line: 361, column: 11)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !546, line: 360, column: 13)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !546, line: 333, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 312, column: 5)
!2182 = !DILocalVariable(name: "i", scope: !2183, file: !546, line: 395, type: !136)
!2183 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 395, column: 3)
!2184 = !DILocalVariable(name: "is_right_quote", scope: !2185, file: !546, line: 397, type: !234)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !546, line: 396, column: 5)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !546, line: 395, column: 3)
!2187 = !DILocalVariable(name: "escaping", scope: !2185, file: !546, line: 398, type: !234)
!2188 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2185, file: !546, line: 399, type: !234)
!2189 = !DILocalVariable(name: "c", scope: !2185, file: !546, line: 417, type: !140)
!2190 = !DILabel(scope: !2191, name: "c_and_shell_escape", file: !546, line: 502)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 478, column: 9)
!2192 = distinct !DILexicalBlock(scope: !2185, file: !546, line: 419, column: 9)
!2193 = !DILabel(scope: !2191, name: "c_escape", file: !546, line: 507)
!2194 = !DILocalVariable(name: "m", scope: !2195, file: !546, line: 598, type: !136)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 596, column: 11)
!2196 = !DILocalVariable(name: "printable", scope: !2195, file: !546, line: 600, type: !234)
!2197 = !DILocalVariable(name: "mbs", scope: !2198, file: !546, line: 609, type: !618)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !546, line: 608, column: 15)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !546, line: 602, column: 17)
!2200 = !DILocalVariable(name: "w", scope: !2201, file: !546, line: 618, type: !526)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !546, line: 617, column: 19)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !546, line: 616, column: 17)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !546, line: 616, column: 17)
!2204 = !DILocalVariable(name: "bytes", scope: !2201, file: !546, line: 619, type: !136)
!2205 = !DILocalVariable(name: "j", scope: !2206, file: !546, line: 648, type: !136)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !546, line: 648, column: 29)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !546, line: 647, column: 27)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !546, line: 645, column: 29)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !546, line: 636, column: 23)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !546, line: 628, column: 30)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !546, line: 623, column: 30)
!2212 = distinct !DILexicalBlock(scope: !2201, file: !546, line: 621, column: 25)
!2213 = !DILocalVariable(name: "ilim", scope: !2214, file: !546, line: 674, type: !136)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !546, line: 671, column: 15)
!2215 = distinct !DILexicalBlock(scope: !2195, file: !546, line: 670, column: 17)
!2216 = !DILabel(scope: !2185, name: "store_escape", file: !546, line: 709)
!2217 = !DILabel(scope: !2185, name: "store_c", file: !546, line: 712)
!2218 = !DILabel(scope: !2151, name: "force_outer_quoting_style", file: !546, line: 753)
!2219 = distinct !DIAssignID()
!2220 = distinct !DIAssignID()
!2221 = distinct !DIAssignID()
!2222 = distinct !DIAssignID()
!2223 = distinct !DIAssignID()
!2224 = !DILocation(line: 0, scope: !2198)
!2225 = distinct !DIAssignID()
!2226 = !DILocation(line: 0, scope: !2201)
!2227 = !DILocation(line: 0, scope: !2151)
!2228 = !DILocation(line: 258, column: 25, scope: !2151)
!2229 = !DILocation(line: 258, column: 36, scope: !2151)
!2230 = !DILocation(line: 267, column: 3, scope: !2151)
!2231 = !DILocation(line: 261, column: 10, scope: !2151)
!2232 = !DILocation(line: 262, column: 15, scope: !2151)
!2233 = !DILocation(line: 263, column: 10, scope: !2151)
!2234 = !DILocation(line: 308, column: 2, scope: !2151)
!2235 = !DILocation(line: 311, column: 3, scope: !2151)
!2236 = !DILocation(line: 318, column: 11, scope: !2181)
!2237 = !DILocation(line: 319, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !546, line: 319, column: 9)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !546, line: 319, column: 9)
!2240 = distinct !DILexicalBlock(scope: !2181, file: !546, line: 318, column: 11)
!2241 = !DILocation(line: 319, column: 9, scope: !2239)
!2242 = !DILocation(line: 0, scope: !609, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 357, column: 26, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !546, line: 335, column: 11)
!2245 = distinct !DILexicalBlock(scope: !2180, file: !546, line: 334, column: 13)
!2246 = !DILocation(line: 199, column: 29, scope: !609, inlinedAt: !2243)
!2247 = !DILocation(line: 201, column: 19, scope: !2248, inlinedAt: !2243)
!2248 = distinct !DILexicalBlock(scope: !609, file: !546, line: 201, column: 7)
!2249 = !DILocation(line: 201, column: 7, scope: !609, inlinedAt: !2243)
!2250 = !DILocation(line: 229, column: 3, scope: !609, inlinedAt: !2243)
!2251 = !DILocation(line: 230, column: 3, scope: !609, inlinedAt: !2243)
!2252 = !DILocalVariable(name: "ps", arg: 1, scope: !2253, file: !1998, line: 1135, type: !2256)
!2253 = distinct !DISubprogram(name: "mbszero", scope: !1998, file: !1998, line: 1135, type: !2254, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2257)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!2257 = !{!2252}
!2258 = !DILocation(line: 0, scope: !2253, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 230, column: 18, scope: !609, inlinedAt: !2243)
!2260 = !DILocalVariable(name: "__dest", arg: 1, scope: !2261, file: !2007, line: 57, type: !129)
!2261 = distinct !DISubprogram(name: "memset", scope: !2007, file: !2007, line: 57, type: !2008, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2262)
!2262 = !{!2260, !2263, !2264}
!2263 = !DILocalVariable(name: "__ch", arg: 2, scope: !2261, file: !2007, line: 57, type: !85)
!2264 = !DILocalVariable(name: "__len", arg: 3, scope: !2261, file: !2007, line: 57, type: !136)
!2265 = !DILocation(line: 0, scope: !2261, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 1137, column: 3, scope: !2253, inlinedAt: !2259)
!2267 = !DILocation(line: 59, column: 10, scope: !2261, inlinedAt: !2266)
!2268 = !DILocation(line: 231, column: 7, scope: !2269, inlinedAt: !2243)
!2269 = distinct !DILexicalBlock(scope: !609, file: !546, line: 231, column: 7)
!2270 = !DILocation(line: 231, column: 40, scope: !2269, inlinedAt: !2243)
!2271 = !DILocation(line: 231, column: 45, scope: !2269, inlinedAt: !2243)
!2272 = !DILocation(line: 235, column: 1, scope: !609, inlinedAt: !2243)
!2273 = !DILocation(line: 0, scope: !609, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 358, column: 27, scope: !2244)
!2275 = !DILocation(line: 199, column: 29, scope: !609, inlinedAt: !2274)
!2276 = !DILocation(line: 201, column: 19, scope: !2248, inlinedAt: !2274)
!2277 = !DILocation(line: 201, column: 7, scope: !609, inlinedAt: !2274)
!2278 = !DILocation(line: 229, column: 3, scope: !609, inlinedAt: !2274)
!2279 = !DILocation(line: 230, column: 3, scope: !609, inlinedAt: !2274)
!2280 = !DILocation(line: 0, scope: !2253, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 230, column: 18, scope: !609, inlinedAt: !2274)
!2282 = !DILocation(line: 0, scope: !2261, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 1137, column: 3, scope: !2253, inlinedAt: !2281)
!2284 = !DILocation(line: 59, column: 10, scope: !2261, inlinedAt: !2283)
!2285 = !DILocation(line: 231, column: 7, scope: !2269, inlinedAt: !2274)
!2286 = !DILocation(line: 231, column: 40, scope: !2269, inlinedAt: !2274)
!2287 = !DILocation(line: 231, column: 45, scope: !2269, inlinedAt: !2274)
!2288 = !DILocation(line: 235, column: 1, scope: !609, inlinedAt: !2274)
!2289 = !DILocation(line: 360, column: 13, scope: !2180)
!2290 = !DILocation(line: 0, scope: !2178)
!2291 = !DILocation(line: 361, column: 45, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2178, file: !546, line: 361, column: 11)
!2293 = !DILocation(line: 361, column: 11, scope: !2178)
!2294 = !DILocation(line: 362, column: 13, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !546, line: 362, column: 13)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !546, line: 362, column: 13)
!2297 = !DILocation(line: 362, column: 13, scope: !2296)
!2298 = !DILocation(line: 361, column: 52, scope: !2292)
!2299 = distinct !{!2299, !2293, !2300, !980}
!2300 = !DILocation(line: 362, column: 13, scope: !2178)
!2301 = !DILocation(line: 365, column: 28, scope: !2180)
!2302 = !DILocation(line: 260, column: 10, scope: !2151)
!2303 = !DILocation(line: 367, column: 7, scope: !2181)
!2304 = !DILocation(line: 373, column: 7, scope: !2181)
!2305 = !DILocation(line: 381, column: 11, scope: !2181)
!2306 = !DILocation(line: 376, column: 11, scope: !2181)
!2307 = !DILocation(line: 382, column: 9, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !546, line: 382, column: 9)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !546, line: 382, column: 9)
!2310 = distinct !DILexicalBlock(scope: !2181, file: !546, line: 381, column: 11)
!2311 = !DILocation(line: 382, column: 9, scope: !2309)
!2312 = !DILocation(line: 389, column: 7, scope: !2181)
!2313 = !DILocation(line: 392, column: 7, scope: !2181)
!2314 = !DILocation(line: 0, scope: !2183)
!2315 = !DILocation(line: 395, column: 8, scope: !2183)
!2316 = !DILocation(line: 395, scope: !2183)
!2317 = !DILocation(line: 395, column: 34, scope: !2186)
!2318 = !DILocation(line: 395, column: 26, scope: !2186)
!2319 = !DILocation(line: 395, column: 48, scope: !2186)
!2320 = !DILocation(line: 395, column: 55, scope: !2186)
!2321 = !DILocation(line: 395, column: 3, scope: !2183)
!2322 = !DILocation(line: 395, column: 67, scope: !2186)
!2323 = !DILocation(line: 0, scope: !2185)
!2324 = !DILocation(line: 402, column: 11, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2185, file: !546, line: 401, column: 11)
!2326 = !DILocation(line: 404, column: 17, scope: !2325)
!2327 = !DILocation(line: 405, column: 39, scope: !2325)
!2328 = !DILocation(line: 409, column: 32, scope: !2325)
!2329 = !DILocation(line: 405, column: 19, scope: !2325)
!2330 = !DILocation(line: 405, column: 15, scope: !2325)
!2331 = !DILocation(line: 410, column: 11, scope: !2325)
!2332 = !DILocation(line: 410, column: 25, scope: !2325)
!2333 = !DILocalVariable(name: "__s1", arg: 1, scope: !2334, file: !946, line: 974, type: !1078)
!2334 = distinct !DISubprogram(name: "memeq", scope: !946, file: !946, line: 974, type: !1967, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2335)
!2335 = !{!2333, !2336, !2337}
!2336 = !DILocalVariable(name: "__s2", arg: 2, scope: !2334, file: !946, line: 974, type: !1078)
!2337 = !DILocalVariable(name: "__n", arg: 3, scope: !2334, file: !946, line: 974, type: !136)
!2338 = !DILocation(line: 0, scope: !2334, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 410, column: 14, scope: !2325)
!2340 = !DILocation(line: 976, column: 11, scope: !2334, inlinedAt: !2339)
!2341 = !DILocation(line: 976, column: 10, scope: !2334, inlinedAt: !2339)
!2342 = !DILocation(line: 401, column: 11, scope: !2185)
!2343 = !DILocation(line: 417, column: 25, scope: !2185)
!2344 = !DILocation(line: 418, column: 7, scope: !2185)
!2345 = !DILocation(line: 421, column: 15, scope: !2192)
!2346 = !DILocation(line: 423, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !546, line: 423, column: 15)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !546, line: 422, column: 13)
!2349 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 421, column: 15)
!2350 = !DILocation(line: 423, column: 15, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !546, line: 423, column: 15)
!2352 = !DILocation(line: 423, column: 15, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !546, line: 423, column: 15)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !546, line: 423, column: 15)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !546, line: 423, column: 15)
!2356 = !DILocation(line: 423, column: 15, scope: !2354)
!2357 = !DILocation(line: 423, column: 15, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !546, line: 423, column: 15)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !546, line: 423, column: 15)
!2360 = !DILocation(line: 423, column: 15, scope: !2359)
!2361 = !DILocation(line: 423, column: 15, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !546, line: 423, column: 15)
!2363 = distinct !DILexicalBlock(scope: !2355, file: !546, line: 423, column: 15)
!2364 = !DILocation(line: 423, column: 15, scope: !2363)
!2365 = !DILocation(line: 423, column: 15, scope: !2355)
!2366 = !DILocation(line: 423, column: 15, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !546, line: 423, column: 15)
!2368 = distinct !DILexicalBlock(scope: !2347, file: !546, line: 423, column: 15)
!2369 = !DILocation(line: 423, column: 15, scope: !2368)
!2370 = !DILocation(line: 431, column: 19, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2348, file: !546, line: 430, column: 19)
!2372 = !DILocation(line: 431, column: 24, scope: !2371)
!2373 = !DILocation(line: 431, column: 28, scope: !2371)
!2374 = !DILocation(line: 431, column: 38, scope: !2371)
!2375 = !DILocation(line: 431, column: 48, scope: !2371)
!2376 = !DILocation(line: 431, column: 59, scope: !2371)
!2377 = !DILocation(line: 433, column: 19, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !546, line: 433, column: 19)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !546, line: 433, column: 19)
!2380 = distinct !DILexicalBlock(scope: !2371, file: !546, line: 432, column: 17)
!2381 = !DILocation(line: 433, column: 19, scope: !2379)
!2382 = !DILocation(line: 434, column: 19, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !546, line: 434, column: 19)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !546, line: 434, column: 19)
!2385 = !DILocation(line: 434, column: 19, scope: !2384)
!2386 = !DILocation(line: 435, column: 17, scope: !2380)
!2387 = !DILocation(line: 442, column: 20, scope: !2349)
!2388 = !DILocation(line: 447, column: 11, scope: !2192)
!2389 = !DILocation(line: 450, column: 19, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 448, column: 13)
!2391 = !DILocation(line: 456, column: 19, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2390, file: !546, line: 455, column: 19)
!2393 = !DILocation(line: 456, column: 24, scope: !2392)
!2394 = !DILocation(line: 456, column: 28, scope: !2392)
!2395 = !DILocation(line: 456, column: 38, scope: !2392)
!2396 = !DILocation(line: 456, column: 41, scope: !2392)
!2397 = !DILocation(line: 456, column: 52, scope: !2392)
!2398 = !DILocation(line: 455, column: 19, scope: !2390)
!2399 = !DILocation(line: 457, column: 25, scope: !2392)
!2400 = !DILocation(line: 457, column: 17, scope: !2392)
!2401 = !DILocation(line: 464, column: 25, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2392, file: !546, line: 458, column: 19)
!2403 = !DILocation(line: 468, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !546, line: 468, column: 21)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !546, line: 468, column: 21)
!2406 = !DILocation(line: 468, column: 21, scope: !2405)
!2407 = !DILocation(line: 469, column: 21, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !546, line: 469, column: 21)
!2409 = distinct !DILexicalBlock(scope: !2402, file: !546, line: 469, column: 21)
!2410 = !DILocation(line: 469, column: 21, scope: !2409)
!2411 = !DILocation(line: 470, column: 21, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !546, line: 470, column: 21)
!2413 = distinct !DILexicalBlock(scope: !2402, file: !546, line: 470, column: 21)
!2414 = !DILocation(line: 470, column: 21, scope: !2413)
!2415 = !DILocation(line: 471, column: 21, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !546, line: 471, column: 21)
!2417 = distinct !DILexicalBlock(scope: !2402, file: !546, line: 471, column: 21)
!2418 = !DILocation(line: 471, column: 21, scope: !2417)
!2419 = !DILocation(line: 472, column: 21, scope: !2402)
!2420 = !DILocation(line: 482, column: 33, scope: !2191)
!2421 = !DILocation(line: 483, column: 33, scope: !2191)
!2422 = !DILocation(line: 485, column: 33, scope: !2191)
!2423 = !DILocation(line: 486, column: 33, scope: !2191)
!2424 = !DILocation(line: 487, column: 33, scope: !2191)
!2425 = !DILocation(line: 490, column: 17, scope: !2191)
!2426 = !DILocation(line: 492, column: 21, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !546, line: 491, column: 15)
!2428 = distinct !DILexicalBlock(scope: !2191, file: !546, line: 490, column: 17)
!2429 = !DILocation(line: 499, column: 35, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2191, file: !546, line: 499, column: 17)
!2431 = !DILocation(line: 0, scope: !2191)
!2432 = !DILocation(line: 502, column: 11, scope: !2191)
!2433 = !DILocation(line: 504, column: 17, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2191, file: !546, line: 503, column: 17)
!2435 = !DILocation(line: 507, column: 11, scope: !2191)
!2436 = !DILocation(line: 508, column: 17, scope: !2191)
!2437 = !DILocation(line: 517, column: 15, scope: !2192)
!2438 = !DILocation(line: 517, column: 40, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 517, column: 15)
!2440 = !DILocation(line: 517, column: 47, scope: !2439)
!2441 = !DILocation(line: 517, column: 18, scope: !2439)
!2442 = !DILocation(line: 521, column: 17, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 521, column: 15)
!2444 = !DILocation(line: 521, column: 15, scope: !2192)
!2445 = !DILocation(line: 525, column: 11, scope: !2192)
!2446 = !DILocation(line: 537, column: 15, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 536, column: 15)
!2448 = !DILocation(line: 536, column: 15, scope: !2192)
!2449 = !DILocation(line: 544, column: 15, scope: !2192)
!2450 = !DILocation(line: 546, column: 19, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !546, line: 545, column: 13)
!2452 = distinct !DILexicalBlock(scope: !2192, file: !546, line: 544, column: 15)
!2453 = !DILocation(line: 549, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !546, line: 549, column: 19)
!2455 = !DILocation(line: 549, column: 30, scope: !2454)
!2456 = !DILocation(line: 558, column: 15, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !546, line: 558, column: 15)
!2458 = distinct !DILexicalBlock(scope: !2451, file: !546, line: 558, column: 15)
!2459 = !DILocation(line: 558, column: 15, scope: !2458)
!2460 = !DILocation(line: 559, column: 15, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !546, line: 559, column: 15)
!2462 = distinct !DILexicalBlock(scope: !2451, file: !546, line: 559, column: 15)
!2463 = !DILocation(line: 559, column: 15, scope: !2462)
!2464 = !DILocation(line: 560, column: 15, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !546, line: 560, column: 15)
!2466 = distinct !DILexicalBlock(scope: !2451, file: !546, line: 560, column: 15)
!2467 = !DILocation(line: 560, column: 15, scope: !2466)
!2468 = !DILocation(line: 562, column: 13, scope: !2451)
!2469 = !DILocation(line: 602, column: 17, scope: !2195)
!2470 = !DILocation(line: 0, scope: !2195)
!2471 = !DILocation(line: 605, column: 29, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2199, file: !546, line: 603, column: 15)
!2473 = !DILocation(line: 605, column: 41, scope: !2472)
!2474 = !DILocation(line: 606, column: 15, scope: !2472)
!2475 = !DILocation(line: 609, column: 17, scope: !2198)
!2476 = !DILocation(line: 0, scope: !2253, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 609, column: 32, scope: !2198)
!2478 = !DILocation(line: 0, scope: !2261, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1137, column: 3, scope: !2253, inlinedAt: !2477)
!2480 = !DILocation(line: 59, column: 10, scope: !2261, inlinedAt: !2479)
!2481 = !DILocation(line: 613, column: 29, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2198, file: !546, line: 613, column: 21)
!2483 = !DILocation(line: 613, column: 21, scope: !2198)
!2484 = !DILocation(line: 614, column: 29, scope: !2482)
!2485 = !DILocation(line: 614, column: 19, scope: !2482)
!2486 = !DILocation(line: 618, column: 21, scope: !2201)
!2487 = !DILocation(line: 620, column: 54, scope: !2201)
!2488 = !DILocation(line: 619, column: 36, scope: !2201)
!2489 = !DILocation(line: 621, column: 25, scope: !2201)
!2490 = !DILocation(line: 631, column: 38, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2210, file: !546, line: 629, column: 23)
!2492 = !DILocation(line: 631, column: 48, scope: !2491)
!2493 = !DILocation(line: 631, column: 25, scope: !2491)
!2494 = !DILocation(line: 626, column: 25, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2211, file: !546, line: 624, column: 23)
!2496 = !DILocation(line: 631, column: 51, scope: !2491)
!2497 = !DILocation(line: 632, column: 28, scope: !2491)
!2498 = !DILocation(line: 631, column: 34, scope: !2491)
!2499 = distinct !{!2499, !2493, !2497, !980}
!2500 = !DILocation(line: 0, scope: !2206)
!2501 = !DILocation(line: 646, column: 29, scope: !2208)
!2502 = !DILocation(line: 648, column: 29, scope: !2206)
!2503 = !DILocation(line: 649, column: 39, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2206, file: !546, line: 648, column: 29)
!2505 = !DILocation(line: 649, column: 31, scope: !2504)
!2506 = !DILocation(line: 648, column: 60, scope: !2504)
!2507 = !DILocation(line: 648, column: 50, scope: !2504)
!2508 = distinct !{!2508, !2502, !2509, !980}
!2509 = !DILocation(line: 654, column: 33, scope: !2206)
!2510 = !DILocation(line: 657, column: 43, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2209, file: !546, line: 657, column: 29)
!2512 = !DILocalVariable(name: "wc", arg: 1, scope: !2513, file: !2514, line: 865, type: !2517)
!2513 = distinct !DISubprogram(name: "c32isprint", scope: !2514, file: !2514, line: 865, type: !2515, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2519)
!2514 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!85, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2518, line: 20, baseType: !91)
!2518 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2519 = !{!2512}
!2520 = !DILocation(line: 0, scope: !2513, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 657, column: 31, scope: !2511)
!2522 = !DILocation(line: 871, column: 10, scope: !2513, inlinedAt: !2521)
!2523 = !DILocation(line: 657, column: 31, scope: !2511)
!2524 = !DILocation(line: 664, column: 23, scope: !2201)
!2525 = !DILocation(line: 665, column: 19, scope: !2202)
!2526 = !DILocation(line: 666, column: 15, scope: !2199)
!2527 = !DILocation(line: 753, column: 2, scope: !2151)
!2528 = !DILocation(line: 756, column: 51, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 756, column: 7)
!2530 = !DILocation(line: 0, scope: !2199)
!2531 = !DILocation(line: 670, column: 19, scope: !2215)
!2532 = !DILocation(line: 670, column: 23, scope: !2215)
!2533 = !DILocation(line: 674, column: 33, scope: !2214)
!2534 = !DILocation(line: 0, scope: !2214)
!2535 = !DILocation(line: 676, column: 17, scope: !2214)
!2536 = !DILocation(line: 678, column: 43, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !546, line: 678, column: 25)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !546, line: 677, column: 19)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !546, line: 676, column: 17)
!2540 = distinct !DILexicalBlock(scope: !2214, file: !546, line: 676, column: 17)
!2541 = !DILocation(line: 680, column: 25, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !546, line: 680, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !546, line: 679, column: 23)
!2544 = !DILocation(line: 680, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !546, line: 680, column: 25)
!2546 = !DILocation(line: 680, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !546, line: 680, column: 25)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !546, line: 680, column: 25)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !546, line: 680, column: 25)
!2550 = !DILocation(line: 680, column: 25, scope: !2548)
!2551 = !DILocation(line: 680, column: 25, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !546, line: 680, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !546, line: 680, column: 25)
!2554 = !DILocation(line: 680, column: 25, scope: !2553)
!2555 = !DILocation(line: 680, column: 25, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !546, line: 680, column: 25)
!2557 = distinct !DILexicalBlock(scope: !2549, file: !546, line: 680, column: 25)
!2558 = !DILocation(line: 680, column: 25, scope: !2557)
!2559 = !DILocation(line: 680, column: 25, scope: !2549)
!2560 = !DILocation(line: 680, column: 25, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !546, line: 680, column: 25)
!2562 = distinct !DILexicalBlock(scope: !2542, file: !546, line: 680, column: 25)
!2563 = !DILocation(line: 680, column: 25, scope: !2562)
!2564 = !DILocation(line: 681, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !546, line: 681, column: 25)
!2566 = distinct !DILexicalBlock(scope: !2543, file: !546, line: 681, column: 25)
!2567 = !DILocation(line: 681, column: 25, scope: !2566)
!2568 = !DILocation(line: 682, column: 25, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !546, line: 682, column: 25)
!2570 = distinct !DILexicalBlock(scope: !2543, file: !546, line: 682, column: 25)
!2571 = !DILocation(line: 682, column: 25, scope: !2570)
!2572 = !DILocation(line: 683, column: 38, scope: !2543)
!2573 = !DILocation(line: 683, column: 33, scope: !2543)
!2574 = !DILocation(line: 684, column: 23, scope: !2543)
!2575 = !DILocation(line: 685, column: 30, scope: !2537)
!2576 = !DILocation(line: 687, column: 25, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !546, line: 687, column: 25)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !546, line: 687, column: 25)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !546, line: 686, column: 23)
!2580 = distinct !DILexicalBlock(scope: !2537, file: !546, line: 685, column: 30)
!2581 = !DILocation(line: 687, column: 25, scope: !2578)
!2582 = !DILocation(line: 689, column: 23, scope: !2579)
!2583 = !DILocation(line: 690, column: 35, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2538, file: !546, line: 690, column: 25)
!2585 = !DILocation(line: 690, column: 30, scope: !2584)
!2586 = !DILocation(line: 690, column: 25, scope: !2538)
!2587 = !DILocation(line: 692, column: 21, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !546, line: 692, column: 21)
!2589 = distinct !DILexicalBlock(scope: !2538, file: !546, line: 692, column: 21)
!2590 = !DILocation(line: 692, column: 21, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !546, line: 692, column: 21)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !546, line: 692, column: 21)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !546, line: 692, column: 21)
!2594 = !DILocation(line: 692, column: 21, scope: !2592)
!2595 = !DILocation(line: 692, column: 21, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !546, line: 692, column: 21)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !546, line: 692, column: 21)
!2598 = !DILocation(line: 692, column: 21, scope: !2597)
!2599 = !DILocation(line: 692, column: 21, scope: !2593)
!2600 = !DILocation(line: 0, scope: !2538)
!2601 = !DILocation(line: 693, column: 21, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !546, line: 693, column: 21)
!2603 = distinct !DILexicalBlock(scope: !2538, file: !546, line: 693, column: 21)
!2604 = !DILocation(line: 693, column: 21, scope: !2603)
!2605 = !DILocation(line: 694, column: 25, scope: !2538)
!2606 = !DILocation(line: 676, column: 17, scope: !2539)
!2607 = distinct !{!2607, !2608, !2609}
!2608 = !DILocation(line: 676, column: 17, scope: !2540)
!2609 = !DILocation(line: 695, column: 19, scope: !2540)
!2610 = !DILocation(line: 409, column: 30, scope: !2325)
!2611 = !DILocation(line: 702, column: 34, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2185, file: !546, line: 702, column: 11)
!2613 = !DILocation(line: 704, column: 14, scope: !2612)
!2614 = !DILocation(line: 705, column: 14, scope: !2612)
!2615 = !DILocation(line: 705, column: 35, scope: !2612)
!2616 = !DILocation(line: 705, column: 17, scope: !2612)
!2617 = !DILocation(line: 705, column: 47, scope: !2612)
!2618 = !DILocation(line: 705, column: 65, scope: !2612)
!2619 = !DILocation(line: 706, column: 11, scope: !2612)
!2620 = !DILocation(line: 702, column: 11, scope: !2185)
!2621 = !DILocation(line: 395, column: 15, scope: !2183)
!2622 = !DILocation(line: 709, column: 5, scope: !2185)
!2623 = !DILocation(line: 710, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2185, file: !546, line: 710, column: 7)
!2625 = !DILocation(line: 710, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2624, file: !546, line: 710, column: 7)
!2627 = !DILocation(line: 710, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !546, line: 710, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !546, line: 710, column: 7)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !546, line: 710, column: 7)
!2631 = !DILocation(line: 710, column: 7, scope: !2629)
!2632 = !DILocation(line: 710, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !546, line: 710, column: 7)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !546, line: 710, column: 7)
!2635 = !DILocation(line: 710, column: 7, scope: !2634)
!2636 = !DILocation(line: 710, column: 7, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !546, line: 710, column: 7)
!2638 = distinct !DILexicalBlock(scope: !2630, file: !546, line: 710, column: 7)
!2639 = !DILocation(line: 710, column: 7, scope: !2638)
!2640 = !DILocation(line: 710, column: 7, scope: !2630)
!2641 = !DILocation(line: 710, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !546, line: 710, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2624, file: !546, line: 710, column: 7)
!2644 = !DILocation(line: 710, column: 7, scope: !2643)
!2645 = !DILocation(line: 712, column: 5, scope: !2185)
!2646 = !DILocation(line: 713, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !546, line: 713, column: 7)
!2648 = distinct !DILexicalBlock(scope: !2185, file: !546, line: 713, column: 7)
!2649 = !DILocation(line: 417, column: 21, scope: !2185)
!2650 = !DILocation(line: 713, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !546, line: 713, column: 7)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !546, line: 713, column: 7)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !546, line: 713, column: 7)
!2654 = !DILocation(line: 713, column: 7, scope: !2652)
!2655 = !DILocation(line: 713, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !546, line: 713, column: 7)
!2657 = distinct !DILexicalBlock(scope: !2653, file: !546, line: 713, column: 7)
!2658 = !DILocation(line: 713, column: 7, scope: !2657)
!2659 = !DILocation(line: 713, column: 7, scope: !2653)
!2660 = !DILocation(line: 714, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !546, line: 714, column: 7)
!2662 = distinct !DILexicalBlock(scope: !2185, file: !546, line: 714, column: 7)
!2663 = !DILocation(line: 714, column: 7, scope: !2662)
!2664 = !DILocation(line: 716, column: 11, scope: !2185)
!2665 = !DILocation(line: 718, column: 5, scope: !2186)
!2666 = !DILocation(line: 395, column: 82, scope: !2186)
!2667 = !DILocation(line: 395, column: 3, scope: !2186)
!2668 = distinct !{!2668, !2321, !2669, !980}
!2669 = !DILocation(line: 718, column: 5, scope: !2183)
!2670 = !DILocation(line: 720, column: 11, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 720, column: 7)
!2672 = !DILocation(line: 720, column: 16, scope: !2671)
!2673 = !DILocation(line: 728, column: 51, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 728, column: 7)
!2675 = !DILocation(line: 731, column: 11, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2674, file: !546, line: 730, column: 5)
!2677 = !DILocation(line: 732, column: 16, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2676, file: !546, line: 731, column: 11)
!2679 = !DILocation(line: 732, column: 9, scope: !2678)
!2680 = !DILocation(line: 736, column: 18, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !546, line: 736, column: 16)
!2682 = !DILocation(line: 736, column: 29, scope: !2681)
!2683 = !DILocation(line: 745, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 745, column: 7)
!2685 = !DILocation(line: 745, column: 20, scope: !2684)
!2686 = !DILocation(line: 746, column: 12, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !546, line: 746, column: 5)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !546, line: 746, column: 5)
!2689 = !DILocation(line: 746, column: 5, scope: !2688)
!2690 = !DILocation(line: 747, column: 7, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !546, line: 747, column: 7)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !546, line: 747, column: 7)
!2693 = !DILocation(line: 747, column: 7, scope: !2692)
!2694 = !DILocation(line: 746, column: 39, scope: !2687)
!2695 = distinct !{!2695, !2689, !2696, !980}
!2696 = !DILocation(line: 747, column: 7, scope: !2688)
!2697 = !DILocation(line: 749, column: 11, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2151, file: !546, line: 749, column: 7)
!2699 = !DILocation(line: 749, column: 7, scope: !2151)
!2700 = !DILocation(line: 750, column: 5, scope: !2698)
!2701 = !DILocation(line: 750, column: 17, scope: !2698)
!2702 = !DILocation(line: 756, column: 21, scope: !2529)
!2703 = !DILocation(line: 760, column: 42, scope: !2151)
!2704 = !DILocation(line: 758, column: 10, scope: !2151)
!2705 = !DILocation(line: 758, column: 3, scope: !2151)
!2706 = !DILocation(line: 762, column: 1, scope: !2151)
!2707 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1054, file: !1054, line: 98, type: !2708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!136}
!2710 = !DISubprogram(name: "strlen", scope: !1050, file: !1050, line: 407, type: !2711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!134, !138}
!2713 = !DISubprogram(name: "iswprint", scope: !2714, file: !2714, line: 120, type: !2515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2714 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2715 = distinct !DISubprogram(name: "quotearg_alloc", scope: !546, file: !546, line: 788, type: !2716, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!128, !138, !136, !2044}
!2718 = !{!2719, !2720, !2721}
!2719 = !DILocalVariable(name: "arg", arg: 1, scope: !2715, file: !546, line: 788, type: !138)
!2720 = !DILocalVariable(name: "argsize", arg: 2, scope: !2715, file: !546, line: 788, type: !136)
!2721 = !DILocalVariable(name: "o", arg: 3, scope: !2715, file: !546, line: 789, type: !2044)
!2722 = !DILocation(line: 0, scope: !2715)
!2723 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !546, line: 801, type: !138)
!2724 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !546, file: !546, line: 801, type: !2725, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!128, !138, !136, !789, !2044}
!2727 = !{!2723, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2724, file: !546, line: 801, type: !136)
!2729 = !DILocalVariable(name: "size", arg: 3, scope: !2724, file: !546, line: 801, type: !789)
!2730 = !DILocalVariable(name: "o", arg: 4, scope: !2724, file: !546, line: 802, type: !2044)
!2731 = !DILocalVariable(name: "p", scope: !2724, file: !546, line: 804, type: !2044)
!2732 = !DILocalVariable(name: "saved_errno", scope: !2724, file: !546, line: 805, type: !85)
!2733 = !DILocalVariable(name: "flags", scope: !2724, file: !546, line: 807, type: !85)
!2734 = !DILocalVariable(name: "bufsize", scope: !2724, file: !546, line: 808, type: !136)
!2735 = !DILocalVariable(name: "buf", scope: !2724, file: !546, line: 812, type: !128)
!2736 = !DILocation(line: 0, scope: !2724, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 791, column: 10, scope: !2715)
!2738 = !DILocation(line: 804, column: 37, scope: !2724, inlinedAt: !2737)
!2739 = !DILocation(line: 805, column: 21, scope: !2724, inlinedAt: !2737)
!2740 = !DILocation(line: 807, column: 18, scope: !2724, inlinedAt: !2737)
!2741 = !DILocation(line: 807, column: 24, scope: !2724, inlinedAt: !2737)
!2742 = !DILocation(line: 808, column: 72, scope: !2724, inlinedAt: !2737)
!2743 = !DILocation(line: 809, column: 56, scope: !2724, inlinedAt: !2737)
!2744 = !DILocation(line: 810, column: 49, scope: !2724, inlinedAt: !2737)
!2745 = !DILocation(line: 811, column: 49, scope: !2724, inlinedAt: !2737)
!2746 = !DILocation(line: 808, column: 20, scope: !2724, inlinedAt: !2737)
!2747 = !DILocation(line: 811, column: 62, scope: !2724, inlinedAt: !2737)
!2748 = !DILocation(line: 812, column: 15, scope: !2724, inlinedAt: !2737)
!2749 = !DILocation(line: 813, column: 60, scope: !2724, inlinedAt: !2737)
!2750 = !DILocation(line: 815, column: 32, scope: !2724, inlinedAt: !2737)
!2751 = !DILocation(line: 815, column: 47, scope: !2724, inlinedAt: !2737)
!2752 = !DILocation(line: 813, column: 3, scope: !2724, inlinedAt: !2737)
!2753 = !DILocation(line: 816, column: 9, scope: !2724, inlinedAt: !2737)
!2754 = !DILocation(line: 791, column: 3, scope: !2715)
!2755 = !DILocation(line: 0, scope: !2724)
!2756 = !DILocation(line: 804, column: 37, scope: !2724)
!2757 = !DILocation(line: 805, column: 21, scope: !2724)
!2758 = !DILocation(line: 807, column: 18, scope: !2724)
!2759 = !DILocation(line: 807, column: 27, scope: !2724)
!2760 = !DILocation(line: 807, column: 24, scope: !2724)
!2761 = !DILocation(line: 808, column: 72, scope: !2724)
!2762 = !DILocation(line: 809, column: 56, scope: !2724)
!2763 = !DILocation(line: 810, column: 49, scope: !2724)
!2764 = !DILocation(line: 811, column: 49, scope: !2724)
!2765 = !DILocation(line: 808, column: 20, scope: !2724)
!2766 = !DILocation(line: 811, column: 62, scope: !2724)
!2767 = !DILocation(line: 812, column: 15, scope: !2724)
!2768 = !DILocation(line: 813, column: 60, scope: !2724)
!2769 = !DILocation(line: 815, column: 32, scope: !2724)
!2770 = !DILocation(line: 815, column: 47, scope: !2724)
!2771 = !DILocation(line: 813, column: 3, scope: !2724)
!2772 = !DILocation(line: 816, column: 9, scope: !2724)
!2773 = !DILocation(line: 817, column: 7, scope: !2724)
!2774 = !DILocation(line: 818, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2724, file: !546, line: 817, column: 7)
!2776 = !DILocation(line: 818, column: 5, scope: !2775)
!2777 = !DILocation(line: 819, column: 3, scope: !2724)
!2778 = distinct !DISubprogram(name: "quotearg_free", scope: !546, file: !546, line: 837, type: !501, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2779)
!2779 = !{!2780, !2781}
!2780 = !DILocalVariable(name: "sv", scope: !2778, file: !546, line: 839, type: !632)
!2781 = !DILocalVariable(name: "i", scope: !2782, file: !546, line: 840, type: !85)
!2782 = distinct !DILexicalBlock(scope: !2778, file: !546, line: 840, column: 3)
!2783 = !DILocation(line: 839, column: 24, scope: !2778)
!2784 = !DILocation(line: 0, scope: !2778)
!2785 = !DILocation(line: 0, scope: !2782)
!2786 = !DILocation(line: 840, column: 21, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !546, line: 840, column: 3)
!2788 = !DILocation(line: 840, column: 3, scope: !2782)
!2789 = !DILocation(line: 842, column: 13, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2778, file: !546, line: 842, column: 7)
!2791 = !{!2792, !865, i64 8}
!2792 = !{!"slotvec", !1221, i64 0, !865, i64 8}
!2793 = !DILocation(line: 842, column: 17, scope: !2790)
!2794 = !DILocation(line: 842, column: 7, scope: !2778)
!2795 = !DILocation(line: 841, column: 17, scope: !2787)
!2796 = !DILocation(line: 841, column: 5, scope: !2787)
!2797 = !DILocation(line: 840, column: 32, scope: !2787)
!2798 = distinct !{!2798, !2788, !2799, !980}
!2799 = !DILocation(line: 841, column: 20, scope: !2782)
!2800 = !DILocation(line: 844, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2790, file: !546, line: 843, column: 5)
!2802 = !DILocation(line: 845, column: 21, scope: !2801)
!2803 = !{!2792, !1221, i64 0}
!2804 = !DILocation(line: 846, column: 20, scope: !2801)
!2805 = !DILocation(line: 847, column: 5, scope: !2801)
!2806 = !DILocation(line: 848, column: 10, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2778, file: !546, line: 848, column: 7)
!2808 = !DILocation(line: 848, column: 7, scope: !2778)
!2809 = !DILocation(line: 850, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !546, line: 849, column: 5)
!2811 = !DILocation(line: 851, column: 15, scope: !2810)
!2812 = !DILocation(line: 852, column: 5, scope: !2810)
!2813 = !DILocation(line: 853, column: 10, scope: !2778)
!2814 = !DILocation(line: 854, column: 1, scope: !2778)
!2815 = distinct !DISubprogram(name: "quotearg_n", scope: !546, file: !546, line: 919, type: !1047, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2816)
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !546, line: 919, type: !85)
!2818 = !DILocalVariable(name: "arg", arg: 2, scope: !2815, file: !546, line: 919, type: !138)
!2819 = !DILocation(line: 0, scope: !2815)
!2820 = !DILocation(line: 921, column: 10, scope: !2815)
!2821 = !DILocation(line: 921, column: 3, scope: !2815)
!2822 = distinct !DISubprogram(name: "quotearg_n_options", scope: !546, file: !546, line: 866, type: !2823, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!128, !85, !138, !136, !2044}
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2836, !2837, !2839, !2840, !2841}
!2826 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !546, line: 866, type: !85)
!2827 = !DILocalVariable(name: "arg", arg: 2, scope: !2822, file: !546, line: 866, type: !138)
!2828 = !DILocalVariable(name: "argsize", arg: 3, scope: !2822, file: !546, line: 866, type: !136)
!2829 = !DILocalVariable(name: "options", arg: 4, scope: !2822, file: !546, line: 867, type: !2044)
!2830 = !DILocalVariable(name: "saved_errno", scope: !2822, file: !546, line: 869, type: !85)
!2831 = !DILocalVariable(name: "sv", scope: !2822, file: !546, line: 871, type: !632)
!2832 = !DILocalVariable(name: "nslots_max", scope: !2822, file: !546, line: 873, type: !85)
!2833 = !DILocalVariable(name: "preallocated", scope: !2834, file: !546, line: 879, type: !234)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !546, line: 878, column: 5)
!2835 = distinct !DILexicalBlock(scope: !2822, file: !546, line: 877, column: 7)
!2836 = !DILocalVariable(name: "new_nslots", scope: !2834, file: !546, line: 880, type: !802)
!2837 = !DILocalVariable(name: "size", scope: !2838, file: !546, line: 891, type: !136)
!2838 = distinct !DILexicalBlock(scope: !2822, file: !546, line: 890, column: 3)
!2839 = !DILocalVariable(name: "val", scope: !2838, file: !546, line: 892, type: !128)
!2840 = !DILocalVariable(name: "flags", scope: !2838, file: !546, line: 894, type: !85)
!2841 = !DILocalVariable(name: "qsize", scope: !2838, file: !546, line: 895, type: !136)
!2842 = distinct !DIAssignID()
!2843 = !DILocation(line: 0, scope: !2834)
!2844 = !DILocation(line: 0, scope: !2822)
!2845 = !DILocation(line: 869, column: 21, scope: !2822)
!2846 = !DILocation(line: 871, column: 24, scope: !2822)
!2847 = !DILocation(line: 874, column: 17, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2822, file: !546, line: 874, column: 7)
!2849 = !DILocation(line: 875, column: 5, scope: !2848)
!2850 = !DILocation(line: 877, column: 7, scope: !2835)
!2851 = !DILocation(line: 877, column: 14, scope: !2835)
!2852 = !DILocation(line: 877, column: 7, scope: !2822)
!2853 = !DILocation(line: 879, column: 31, scope: !2834)
!2854 = !DILocation(line: 880, column: 7, scope: !2834)
!2855 = !DILocation(line: 880, column: 26, scope: !2834)
!2856 = !DILocation(line: 880, column: 13, scope: !2834)
!2857 = distinct !DIAssignID()
!2858 = !DILocation(line: 882, column: 31, scope: !2834)
!2859 = !DILocation(line: 883, column: 33, scope: !2834)
!2860 = !DILocation(line: 883, column: 42, scope: !2834)
!2861 = !DILocation(line: 883, column: 31, scope: !2834)
!2862 = !DILocation(line: 882, column: 22, scope: !2834)
!2863 = !DILocation(line: 882, column: 15, scope: !2834)
!2864 = !DILocation(line: 884, column: 11, scope: !2834)
!2865 = !DILocation(line: 885, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2834, file: !546, line: 884, column: 11)
!2867 = !{i64 0, i64 8, !1220, i64 8, i64 8, !864}
!2868 = !DILocation(line: 885, column: 9, scope: !2866)
!2869 = !DILocation(line: 886, column: 20, scope: !2834)
!2870 = !DILocation(line: 886, column: 18, scope: !2834)
!2871 = !DILocation(line: 886, column: 32, scope: !2834)
!2872 = !DILocation(line: 886, column: 43, scope: !2834)
!2873 = !DILocation(line: 886, column: 53, scope: !2834)
!2874 = !DILocation(line: 0, scope: !2261, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 886, column: 7, scope: !2834)
!2876 = !DILocation(line: 59, column: 10, scope: !2261, inlinedAt: !2875)
!2877 = !DILocation(line: 887, column: 16, scope: !2834)
!2878 = !DILocation(line: 887, column: 14, scope: !2834)
!2879 = !DILocation(line: 888, column: 5, scope: !2835)
!2880 = !DILocation(line: 888, column: 5, scope: !2834)
!2881 = !DILocation(line: 891, column: 19, scope: !2838)
!2882 = !DILocation(line: 891, column: 25, scope: !2838)
!2883 = !DILocation(line: 0, scope: !2838)
!2884 = !DILocation(line: 892, column: 23, scope: !2838)
!2885 = !DILocation(line: 894, column: 26, scope: !2838)
!2886 = !DILocation(line: 894, column: 32, scope: !2838)
!2887 = !DILocation(line: 896, column: 55, scope: !2838)
!2888 = !DILocation(line: 897, column: 55, scope: !2838)
!2889 = !DILocation(line: 898, column: 55, scope: !2838)
!2890 = !DILocation(line: 899, column: 55, scope: !2838)
!2891 = !DILocation(line: 895, column: 20, scope: !2838)
!2892 = !DILocation(line: 901, column: 14, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2838, file: !546, line: 901, column: 9)
!2894 = !DILocation(line: 901, column: 9, scope: !2838)
!2895 = !DILocation(line: 903, column: 35, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !546, line: 902, column: 7)
!2897 = !DILocation(line: 903, column: 20, scope: !2896)
!2898 = !DILocation(line: 904, column: 17, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !546, line: 904, column: 13)
!2900 = !DILocation(line: 904, column: 13, scope: !2896)
!2901 = !DILocation(line: 905, column: 11, scope: !2899)
!2902 = !DILocation(line: 906, column: 27, scope: !2896)
!2903 = !DILocation(line: 906, column: 19, scope: !2896)
!2904 = !DILocation(line: 907, column: 69, scope: !2896)
!2905 = !DILocation(line: 909, column: 44, scope: !2896)
!2906 = !DILocation(line: 910, column: 44, scope: !2896)
!2907 = !DILocation(line: 907, column: 9, scope: !2896)
!2908 = !DILocation(line: 911, column: 7, scope: !2896)
!2909 = !DILocation(line: 913, column: 11, scope: !2838)
!2910 = !DILocation(line: 914, column: 5, scope: !2838)
!2911 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !546, file: !546, line: 925, type: !2912, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!128, !85, !138, !136}
!2914 = !{!2915, !2916, !2917}
!2915 = !DILocalVariable(name: "n", arg: 1, scope: !2911, file: !546, line: 925, type: !85)
!2916 = !DILocalVariable(name: "arg", arg: 2, scope: !2911, file: !546, line: 925, type: !138)
!2917 = !DILocalVariable(name: "argsize", arg: 3, scope: !2911, file: !546, line: 925, type: !136)
!2918 = !DILocation(line: 0, scope: !2911)
!2919 = !DILocation(line: 927, column: 10, scope: !2911)
!2920 = !DILocation(line: 927, column: 3, scope: !2911)
!2921 = distinct !DISubprogram(name: "quotearg", scope: !546, file: !546, line: 931, type: !1056, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2922)
!2922 = !{!2923}
!2923 = !DILocalVariable(name: "arg", arg: 1, scope: !2921, file: !546, line: 931, type: !138)
!2924 = !DILocation(line: 0, scope: !2921)
!2925 = !DILocation(line: 0, scope: !2815, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 933, column: 10, scope: !2921)
!2927 = !DILocation(line: 921, column: 10, scope: !2815, inlinedAt: !2926)
!2928 = !DILocation(line: 933, column: 3, scope: !2921)
!2929 = distinct !DISubprogram(name: "quotearg_mem", scope: !546, file: !546, line: 937, type: !2930, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!128, !138, !136}
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "arg", arg: 1, scope: !2929, file: !546, line: 937, type: !138)
!2934 = !DILocalVariable(name: "argsize", arg: 2, scope: !2929, file: !546, line: 937, type: !136)
!2935 = !DILocation(line: 0, scope: !2929)
!2936 = !DILocation(line: 0, scope: !2911, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 939, column: 10, scope: !2929)
!2938 = !DILocation(line: 927, column: 10, scope: !2911, inlinedAt: !2937)
!2939 = !DILocation(line: 939, column: 3, scope: !2929)
!2940 = distinct !DISubprogram(name: "quotearg_n_style", scope: !546, file: !546, line: 943, type: !2941, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!128, !85, !569, !138}
!2943 = !{!2944, !2945, !2946, !2947}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !546, line: 943, type: !85)
!2945 = !DILocalVariable(name: "s", arg: 2, scope: !2940, file: !546, line: 943, type: !569)
!2946 = !DILocalVariable(name: "arg", arg: 3, scope: !2940, file: !546, line: 943, type: !138)
!2947 = !DILocalVariable(name: "o", scope: !2940, file: !546, line: 945, type: !2045)
!2948 = distinct !DIAssignID()
!2949 = !DILocation(line: 0, scope: !2940)
!2950 = !DILocation(line: 945, column: 3, scope: !2940)
!2951 = !{!2952}
!2952 = distinct !{!2952, !2953, !"quoting_options_from_style: argument 0"}
!2953 = distinct !{!2953, !"quoting_options_from_style"}
!2954 = !DILocation(line: 945, column: 36, scope: !2940)
!2955 = !DILocalVariable(name: "style", arg: 1, scope: !2956, file: !546, line: 183, type: !569)
!2956 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !546, file: !546, line: 183, type: !2957, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!584, !569}
!2959 = !{!2955, !2960}
!2960 = !DILocalVariable(name: "o", scope: !2956, file: !546, line: 185, type: !584)
!2961 = !DILocation(line: 0, scope: !2956, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 945, column: 36, scope: !2940)
!2963 = !DILocation(line: 185, column: 26, scope: !2956, inlinedAt: !2962)
!2964 = distinct !DIAssignID()
!2965 = !DILocation(line: 186, column: 13, scope: !2966, inlinedAt: !2962)
!2966 = distinct !DILexicalBlock(scope: !2956, file: !546, line: 186, column: 7)
!2967 = !DILocation(line: 186, column: 7, scope: !2956, inlinedAt: !2962)
!2968 = !DILocation(line: 187, column: 5, scope: !2966, inlinedAt: !2962)
!2969 = !DILocation(line: 188, column: 11, scope: !2956, inlinedAt: !2962)
!2970 = distinct !DIAssignID()
!2971 = !DILocation(line: 946, column: 10, scope: !2940)
!2972 = !DILocation(line: 947, column: 1, scope: !2940)
!2973 = !DILocation(line: 946, column: 3, scope: !2940)
!2974 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !546, file: !546, line: 950, type: !2975, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!128, !85, !569, !138, !136}
!2977 = !{!2978, !2979, !2980, !2981, !2982}
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !546, line: 950, type: !85)
!2979 = !DILocalVariable(name: "s", arg: 2, scope: !2974, file: !546, line: 950, type: !569)
!2980 = !DILocalVariable(name: "arg", arg: 3, scope: !2974, file: !546, line: 951, type: !138)
!2981 = !DILocalVariable(name: "argsize", arg: 4, scope: !2974, file: !546, line: 951, type: !136)
!2982 = !DILocalVariable(name: "o", scope: !2974, file: !546, line: 953, type: !2045)
!2983 = distinct !DIAssignID()
!2984 = !DILocation(line: 0, scope: !2974)
!2985 = !DILocation(line: 953, column: 3, scope: !2974)
!2986 = !{!2987}
!2987 = distinct !{!2987, !2988, !"quoting_options_from_style: argument 0"}
!2988 = distinct !{!2988, !"quoting_options_from_style"}
!2989 = !DILocation(line: 953, column: 36, scope: !2974)
!2990 = !DILocation(line: 0, scope: !2956, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 953, column: 36, scope: !2974)
!2992 = !DILocation(line: 185, column: 26, scope: !2956, inlinedAt: !2991)
!2993 = distinct !DIAssignID()
!2994 = !DILocation(line: 186, column: 13, scope: !2966, inlinedAt: !2991)
!2995 = !DILocation(line: 186, column: 7, scope: !2956, inlinedAt: !2991)
!2996 = !DILocation(line: 187, column: 5, scope: !2966, inlinedAt: !2991)
!2997 = !DILocation(line: 188, column: 11, scope: !2956, inlinedAt: !2991)
!2998 = distinct !DIAssignID()
!2999 = !DILocation(line: 954, column: 10, scope: !2974)
!3000 = !DILocation(line: 955, column: 1, scope: !2974)
!3001 = !DILocation(line: 954, column: 3, scope: !2974)
!3002 = distinct !DISubprogram(name: "quotearg_style", scope: !546, file: !546, line: 958, type: !3003, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!128, !569, !138}
!3005 = !{!3006, !3007}
!3006 = !DILocalVariable(name: "s", arg: 1, scope: !3002, file: !546, line: 958, type: !569)
!3007 = !DILocalVariable(name: "arg", arg: 2, scope: !3002, file: !546, line: 958, type: !138)
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 0, scope: !3002)
!3010 = !DILocation(line: 0, scope: !2940, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 960, column: 10, scope: !3002)
!3012 = !DILocation(line: 945, column: 3, scope: !2940, inlinedAt: !3011)
!3013 = !{!3014}
!3014 = distinct !{!3014, !3015, !"quoting_options_from_style: argument 0"}
!3015 = distinct !{!3015, !"quoting_options_from_style"}
!3016 = !DILocation(line: 945, column: 36, scope: !2940, inlinedAt: !3011)
!3017 = !DILocation(line: 0, scope: !2956, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 945, column: 36, scope: !2940, inlinedAt: !3011)
!3019 = !DILocation(line: 185, column: 26, scope: !2956, inlinedAt: !3018)
!3020 = distinct !DIAssignID()
!3021 = !DILocation(line: 186, column: 13, scope: !2966, inlinedAt: !3018)
!3022 = !DILocation(line: 186, column: 7, scope: !2956, inlinedAt: !3018)
!3023 = !DILocation(line: 187, column: 5, scope: !2966, inlinedAt: !3018)
!3024 = !DILocation(line: 188, column: 11, scope: !2956, inlinedAt: !3018)
!3025 = distinct !DIAssignID()
!3026 = !DILocation(line: 946, column: 10, scope: !2940, inlinedAt: !3011)
!3027 = !DILocation(line: 947, column: 1, scope: !2940, inlinedAt: !3011)
!3028 = !DILocation(line: 960, column: 3, scope: !3002)
!3029 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !546, file: !546, line: 964, type: !3030, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!128, !569, !138, !136}
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "s", arg: 1, scope: !3029, file: !546, line: 964, type: !569)
!3034 = !DILocalVariable(name: "arg", arg: 2, scope: !3029, file: !546, line: 964, type: !138)
!3035 = !DILocalVariable(name: "argsize", arg: 3, scope: !3029, file: !546, line: 964, type: !136)
!3036 = distinct !DIAssignID()
!3037 = !DILocation(line: 0, scope: !3029)
!3038 = !DILocation(line: 0, scope: !2974, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 966, column: 10, scope: !3029)
!3040 = !DILocation(line: 953, column: 3, scope: !2974, inlinedAt: !3039)
!3041 = !{!3042}
!3042 = distinct !{!3042, !3043, !"quoting_options_from_style: argument 0"}
!3043 = distinct !{!3043, !"quoting_options_from_style"}
!3044 = !DILocation(line: 953, column: 36, scope: !2974, inlinedAt: !3039)
!3045 = !DILocation(line: 0, scope: !2956, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 953, column: 36, scope: !2974, inlinedAt: !3039)
!3047 = !DILocation(line: 185, column: 26, scope: !2956, inlinedAt: !3046)
!3048 = distinct !DIAssignID()
!3049 = !DILocation(line: 186, column: 13, scope: !2966, inlinedAt: !3046)
!3050 = !DILocation(line: 186, column: 7, scope: !2956, inlinedAt: !3046)
!3051 = !DILocation(line: 187, column: 5, scope: !2966, inlinedAt: !3046)
!3052 = !DILocation(line: 188, column: 11, scope: !2956, inlinedAt: !3046)
!3053 = distinct !DIAssignID()
!3054 = !DILocation(line: 954, column: 10, scope: !2974, inlinedAt: !3039)
!3055 = !DILocation(line: 955, column: 1, scope: !2974, inlinedAt: !3039)
!3056 = !DILocation(line: 966, column: 3, scope: !3029)
!3057 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !546, file: !546, line: 970, type: !3058, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!128, !138, !136, !4}
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DILocalVariable(name: "arg", arg: 1, scope: !3057, file: !546, line: 970, type: !138)
!3062 = !DILocalVariable(name: "argsize", arg: 2, scope: !3057, file: !546, line: 970, type: !136)
!3063 = !DILocalVariable(name: "ch", arg: 3, scope: !3057, file: !546, line: 970, type: !4)
!3064 = !DILocalVariable(name: "options", scope: !3057, file: !546, line: 972, type: !584)
!3065 = distinct !DIAssignID()
!3066 = !DILocation(line: 0, scope: !3057)
!3067 = !DILocation(line: 972, column: 3, scope: !3057)
!3068 = !DILocation(line: 973, column: 13, scope: !3057)
!3069 = !{i64 0, i64 4, !933, i64 4, i64 4, !933, i64 8, i64 32, !942, i64 40, i64 8, !864, i64 48, i64 8, !864}
!3070 = distinct !DIAssignID()
!3071 = !DILocation(line: 0, scope: !2064, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 974, column: 3, scope: !3057)
!3073 = !DILocation(line: 147, column: 41, scope: !2064, inlinedAt: !3072)
!3074 = !DILocation(line: 147, column: 62, scope: !2064, inlinedAt: !3072)
!3075 = !DILocation(line: 147, column: 57, scope: !2064, inlinedAt: !3072)
!3076 = !DILocation(line: 148, column: 15, scope: !2064, inlinedAt: !3072)
!3077 = !DILocation(line: 149, column: 21, scope: !2064, inlinedAt: !3072)
!3078 = !DILocation(line: 149, column: 24, scope: !2064, inlinedAt: !3072)
!3079 = !DILocation(line: 150, column: 19, scope: !2064, inlinedAt: !3072)
!3080 = !DILocation(line: 150, column: 24, scope: !2064, inlinedAt: !3072)
!3081 = !DILocation(line: 150, column: 6, scope: !2064, inlinedAt: !3072)
!3082 = !DILocation(line: 975, column: 10, scope: !3057)
!3083 = !DILocation(line: 976, column: 1, scope: !3057)
!3084 = !DILocation(line: 975, column: 3, scope: !3057)
!3085 = distinct !DISubprogram(name: "quotearg_char", scope: !546, file: !546, line: 979, type: !3086, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!128, !138, !4}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "arg", arg: 1, scope: !3085, file: !546, line: 979, type: !138)
!3090 = !DILocalVariable(name: "ch", arg: 2, scope: !3085, file: !546, line: 979, type: !4)
!3091 = distinct !DIAssignID()
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocation(line: 0, scope: !3057, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 981, column: 10, scope: !3085)
!3095 = !DILocation(line: 972, column: 3, scope: !3057, inlinedAt: !3094)
!3096 = !DILocation(line: 973, column: 13, scope: !3057, inlinedAt: !3094)
!3097 = distinct !DIAssignID()
!3098 = !DILocation(line: 0, scope: !2064, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 974, column: 3, scope: !3057, inlinedAt: !3094)
!3100 = !DILocation(line: 147, column: 41, scope: !2064, inlinedAt: !3099)
!3101 = !DILocation(line: 147, column: 62, scope: !2064, inlinedAt: !3099)
!3102 = !DILocation(line: 147, column: 57, scope: !2064, inlinedAt: !3099)
!3103 = !DILocation(line: 148, column: 15, scope: !2064, inlinedAt: !3099)
!3104 = !DILocation(line: 149, column: 21, scope: !2064, inlinedAt: !3099)
!3105 = !DILocation(line: 149, column: 24, scope: !2064, inlinedAt: !3099)
!3106 = !DILocation(line: 150, column: 19, scope: !2064, inlinedAt: !3099)
!3107 = !DILocation(line: 150, column: 24, scope: !2064, inlinedAt: !3099)
!3108 = !DILocation(line: 150, column: 6, scope: !2064, inlinedAt: !3099)
!3109 = !DILocation(line: 975, column: 10, scope: !3057, inlinedAt: !3094)
!3110 = !DILocation(line: 976, column: 1, scope: !3057, inlinedAt: !3094)
!3111 = !DILocation(line: 981, column: 3, scope: !3085)
!3112 = distinct !DISubprogram(name: "quotearg_colon", scope: !546, file: !546, line: 985, type: !1056, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3113)
!3113 = !{!3114}
!3114 = !DILocalVariable(name: "arg", arg: 1, scope: !3112, file: !546, line: 985, type: !138)
!3115 = distinct !DIAssignID()
!3116 = !DILocation(line: 0, scope: !3112)
!3117 = !DILocation(line: 0, scope: !3085, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 987, column: 10, scope: !3112)
!3119 = !DILocation(line: 0, scope: !3057, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 981, column: 10, scope: !3085, inlinedAt: !3118)
!3121 = !DILocation(line: 972, column: 3, scope: !3057, inlinedAt: !3120)
!3122 = !DILocation(line: 973, column: 13, scope: !3057, inlinedAt: !3120)
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 0, scope: !2064, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 974, column: 3, scope: !3057, inlinedAt: !3120)
!3126 = !DILocation(line: 147, column: 57, scope: !2064, inlinedAt: !3125)
!3127 = !DILocation(line: 149, column: 21, scope: !2064, inlinedAt: !3125)
!3128 = !DILocation(line: 150, column: 6, scope: !2064, inlinedAt: !3125)
!3129 = !DILocation(line: 975, column: 10, scope: !3057, inlinedAt: !3120)
!3130 = !DILocation(line: 976, column: 1, scope: !3057, inlinedAt: !3120)
!3131 = !DILocation(line: 987, column: 3, scope: !3112)
!3132 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !546, file: !546, line: 991, type: !2930, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3133)
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "arg", arg: 1, scope: !3132, file: !546, line: 991, type: !138)
!3135 = !DILocalVariable(name: "argsize", arg: 2, scope: !3132, file: !546, line: 991, type: !136)
!3136 = distinct !DIAssignID()
!3137 = !DILocation(line: 0, scope: !3132)
!3138 = !DILocation(line: 0, scope: !3057, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 993, column: 10, scope: !3132)
!3140 = !DILocation(line: 972, column: 3, scope: !3057, inlinedAt: !3139)
!3141 = !DILocation(line: 973, column: 13, scope: !3057, inlinedAt: !3139)
!3142 = distinct !DIAssignID()
!3143 = !DILocation(line: 0, scope: !2064, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 974, column: 3, scope: !3057, inlinedAt: !3139)
!3145 = !DILocation(line: 147, column: 57, scope: !2064, inlinedAt: !3144)
!3146 = !DILocation(line: 149, column: 21, scope: !2064, inlinedAt: !3144)
!3147 = !DILocation(line: 150, column: 6, scope: !2064, inlinedAt: !3144)
!3148 = !DILocation(line: 975, column: 10, scope: !3057, inlinedAt: !3139)
!3149 = !DILocation(line: 976, column: 1, scope: !3057, inlinedAt: !3139)
!3150 = !DILocation(line: 993, column: 3, scope: !3132)
!3151 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !546, file: !546, line: 997, type: !2941, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3152)
!3152 = !{!3153, !3154, !3155, !3156}
!3153 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !546, line: 997, type: !85)
!3154 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !546, line: 997, type: !569)
!3155 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !546, line: 997, type: !138)
!3156 = !DILocalVariable(name: "options", scope: !3151, file: !546, line: 999, type: !584)
!3157 = distinct !DIAssignID()
!3158 = !DILocation(line: 0, scope: !3151)
!3159 = !DILocation(line: 185, column: 26, scope: !2956, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1000, column: 13, scope: !3151)
!3161 = !DILocation(line: 999, column: 3, scope: !3151)
!3162 = !DILocation(line: 0, scope: !2956, inlinedAt: !3160)
!3163 = !DILocation(line: 186, column: 13, scope: !2966, inlinedAt: !3160)
!3164 = !DILocation(line: 186, column: 7, scope: !2956, inlinedAt: !3160)
!3165 = !DILocation(line: 187, column: 5, scope: !2966, inlinedAt: !3160)
!3166 = !{!3167}
!3167 = distinct !{!3167, !3168, !"quoting_options_from_style: argument 0"}
!3168 = distinct !{!3168, !"quoting_options_from_style"}
!3169 = !DILocation(line: 1000, column: 13, scope: !3151)
!3170 = distinct !DIAssignID()
!3171 = distinct !DIAssignID()
!3172 = !DILocation(line: 0, scope: !2064, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1001, column: 3, scope: !3151)
!3174 = !DILocation(line: 147, column: 57, scope: !2064, inlinedAt: !3173)
!3175 = !DILocation(line: 149, column: 21, scope: !2064, inlinedAt: !3173)
!3176 = !DILocation(line: 150, column: 6, scope: !2064, inlinedAt: !3173)
!3177 = distinct !DIAssignID()
!3178 = !DILocation(line: 1002, column: 10, scope: !3151)
!3179 = !DILocation(line: 1003, column: 1, scope: !3151)
!3180 = !DILocation(line: 1002, column: 3, scope: !3151)
!3181 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !546, file: !546, line: 1006, type: !3182, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!128, !85, !138, !138, !138}
!3184 = !{!3185, !3186, !3187, !3188}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !546, line: 1006, type: !85)
!3186 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3181, file: !546, line: 1006, type: !138)
!3187 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3181, file: !546, line: 1007, type: !138)
!3188 = !DILocalVariable(name: "arg", arg: 4, scope: !3181, file: !546, line: 1007, type: !138)
!3189 = distinct !DIAssignID()
!3190 = !DILocation(line: 0, scope: !3181)
!3191 = !DILocalVariable(name: "o", scope: !3192, file: !546, line: 1018, type: !584)
!3192 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !546, file: !546, line: 1014, type: !3193, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!128, !85, !138, !138, !138, !136}
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3191}
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3192, file: !546, line: 1014, type: !85)
!3197 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3192, file: !546, line: 1014, type: !138)
!3198 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3192, file: !546, line: 1015, type: !138)
!3199 = !DILocalVariable(name: "arg", arg: 4, scope: !3192, file: !546, line: 1016, type: !138)
!3200 = !DILocalVariable(name: "argsize", arg: 5, scope: !3192, file: !546, line: 1016, type: !136)
!3201 = !DILocation(line: 0, scope: !3192, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 1009, column: 10, scope: !3181)
!3203 = !DILocation(line: 1018, column: 3, scope: !3192, inlinedAt: !3202)
!3204 = !DILocation(line: 1018, column: 30, scope: !3192, inlinedAt: !3202)
!3205 = distinct !DIAssignID()
!3206 = distinct !DIAssignID()
!3207 = !DILocation(line: 0, scope: !2104, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 1019, column: 3, scope: !3192, inlinedAt: !3202)
!3209 = !DILocation(line: 174, column: 12, scope: !2104, inlinedAt: !3208)
!3210 = distinct !DIAssignID()
!3211 = !DILocation(line: 175, column: 8, scope: !2117, inlinedAt: !3208)
!3212 = !DILocation(line: 175, column: 19, scope: !2117, inlinedAt: !3208)
!3213 = !DILocation(line: 176, column: 5, scope: !2117, inlinedAt: !3208)
!3214 = !DILocation(line: 177, column: 6, scope: !2104, inlinedAt: !3208)
!3215 = !DILocation(line: 177, column: 17, scope: !2104, inlinedAt: !3208)
!3216 = distinct !DIAssignID()
!3217 = !DILocation(line: 178, column: 6, scope: !2104, inlinedAt: !3208)
!3218 = !DILocation(line: 178, column: 18, scope: !2104, inlinedAt: !3208)
!3219 = distinct !DIAssignID()
!3220 = !DILocation(line: 1020, column: 10, scope: !3192, inlinedAt: !3202)
!3221 = !DILocation(line: 1021, column: 1, scope: !3192, inlinedAt: !3202)
!3222 = !DILocation(line: 1009, column: 3, scope: !3181)
!3223 = distinct !DIAssignID()
!3224 = !DILocation(line: 0, scope: !3192)
!3225 = !DILocation(line: 1018, column: 3, scope: !3192)
!3226 = !DILocation(line: 1018, column: 30, scope: !3192)
!3227 = distinct !DIAssignID()
!3228 = distinct !DIAssignID()
!3229 = !DILocation(line: 0, scope: !2104, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 1019, column: 3, scope: !3192)
!3231 = !DILocation(line: 174, column: 12, scope: !2104, inlinedAt: !3230)
!3232 = distinct !DIAssignID()
!3233 = !DILocation(line: 175, column: 8, scope: !2117, inlinedAt: !3230)
!3234 = !DILocation(line: 175, column: 19, scope: !2117, inlinedAt: !3230)
!3235 = !DILocation(line: 176, column: 5, scope: !2117, inlinedAt: !3230)
!3236 = !DILocation(line: 177, column: 6, scope: !2104, inlinedAt: !3230)
!3237 = !DILocation(line: 177, column: 17, scope: !2104, inlinedAt: !3230)
!3238 = distinct !DIAssignID()
!3239 = !DILocation(line: 178, column: 6, scope: !2104, inlinedAt: !3230)
!3240 = !DILocation(line: 178, column: 18, scope: !2104, inlinedAt: !3230)
!3241 = distinct !DIAssignID()
!3242 = !DILocation(line: 1020, column: 10, scope: !3192)
!3243 = !DILocation(line: 1021, column: 1, scope: !3192)
!3244 = !DILocation(line: 1020, column: 3, scope: !3192)
!3245 = distinct !DISubprogram(name: "quotearg_custom", scope: !546, file: !546, line: 1024, type: !3246, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!128, !138, !138, !138}
!3248 = !{!3249, !3250, !3251}
!3249 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3245, file: !546, line: 1024, type: !138)
!3250 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3245, file: !546, line: 1024, type: !138)
!3251 = !DILocalVariable(name: "arg", arg: 3, scope: !3245, file: !546, line: 1025, type: !138)
!3252 = distinct !DIAssignID()
!3253 = !DILocation(line: 0, scope: !3245)
!3254 = !DILocation(line: 0, scope: !3181, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 1027, column: 10, scope: !3245)
!3256 = !DILocation(line: 0, scope: !3192, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1009, column: 10, scope: !3181, inlinedAt: !3255)
!3258 = !DILocation(line: 1018, column: 3, scope: !3192, inlinedAt: !3257)
!3259 = !DILocation(line: 1018, column: 30, scope: !3192, inlinedAt: !3257)
!3260 = distinct !DIAssignID()
!3261 = distinct !DIAssignID()
!3262 = !DILocation(line: 0, scope: !2104, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 1019, column: 3, scope: !3192, inlinedAt: !3257)
!3264 = !DILocation(line: 174, column: 12, scope: !2104, inlinedAt: !3263)
!3265 = distinct !DIAssignID()
!3266 = !DILocation(line: 175, column: 8, scope: !2117, inlinedAt: !3263)
!3267 = !DILocation(line: 175, column: 19, scope: !2117, inlinedAt: !3263)
!3268 = !DILocation(line: 176, column: 5, scope: !2117, inlinedAt: !3263)
!3269 = !DILocation(line: 177, column: 6, scope: !2104, inlinedAt: !3263)
!3270 = !DILocation(line: 177, column: 17, scope: !2104, inlinedAt: !3263)
!3271 = distinct !DIAssignID()
!3272 = !DILocation(line: 178, column: 6, scope: !2104, inlinedAt: !3263)
!3273 = !DILocation(line: 178, column: 18, scope: !2104, inlinedAt: !3263)
!3274 = distinct !DIAssignID()
!3275 = !DILocation(line: 1020, column: 10, scope: !3192, inlinedAt: !3257)
!3276 = !DILocation(line: 1021, column: 1, scope: !3192, inlinedAt: !3257)
!3277 = !DILocation(line: 1027, column: 3, scope: !3245)
!3278 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !546, file: !546, line: 1031, type: !3279, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!128, !138, !138, !138, !136}
!3281 = !{!3282, !3283, !3284, !3285}
!3282 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3278, file: !546, line: 1031, type: !138)
!3283 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3278, file: !546, line: 1031, type: !138)
!3284 = !DILocalVariable(name: "arg", arg: 3, scope: !3278, file: !546, line: 1032, type: !138)
!3285 = !DILocalVariable(name: "argsize", arg: 4, scope: !3278, file: !546, line: 1032, type: !136)
!3286 = distinct !DIAssignID()
!3287 = !DILocation(line: 0, scope: !3278)
!3288 = !DILocation(line: 0, scope: !3192, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1034, column: 10, scope: !3278)
!3290 = !DILocation(line: 1018, column: 3, scope: !3192, inlinedAt: !3289)
!3291 = !DILocation(line: 1018, column: 30, scope: !3192, inlinedAt: !3289)
!3292 = distinct !DIAssignID()
!3293 = distinct !DIAssignID()
!3294 = !DILocation(line: 0, scope: !2104, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 1019, column: 3, scope: !3192, inlinedAt: !3289)
!3296 = !DILocation(line: 174, column: 12, scope: !2104, inlinedAt: !3295)
!3297 = distinct !DIAssignID()
!3298 = !DILocation(line: 175, column: 8, scope: !2117, inlinedAt: !3295)
!3299 = !DILocation(line: 175, column: 19, scope: !2117, inlinedAt: !3295)
!3300 = !DILocation(line: 176, column: 5, scope: !2117, inlinedAt: !3295)
!3301 = !DILocation(line: 177, column: 6, scope: !2104, inlinedAt: !3295)
!3302 = !DILocation(line: 177, column: 17, scope: !2104, inlinedAt: !3295)
!3303 = distinct !DIAssignID()
!3304 = !DILocation(line: 178, column: 6, scope: !2104, inlinedAt: !3295)
!3305 = !DILocation(line: 178, column: 18, scope: !2104, inlinedAt: !3295)
!3306 = distinct !DIAssignID()
!3307 = !DILocation(line: 1020, column: 10, scope: !3192, inlinedAt: !3289)
!3308 = !DILocation(line: 1021, column: 1, scope: !3192, inlinedAt: !3289)
!3309 = !DILocation(line: 1034, column: 3, scope: !3278)
!3310 = distinct !DISubprogram(name: "quote_n_mem", scope: !546, file: !546, line: 1049, type: !3311, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!138, !85, !138, !136}
!3313 = !{!3314, !3315, !3316}
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3310, file: !546, line: 1049, type: !85)
!3315 = !DILocalVariable(name: "arg", arg: 2, scope: !3310, file: !546, line: 1049, type: !138)
!3316 = !DILocalVariable(name: "argsize", arg: 3, scope: !3310, file: !546, line: 1049, type: !136)
!3317 = !DILocation(line: 0, scope: !3310)
!3318 = !DILocation(line: 1051, column: 10, scope: !3310)
!3319 = !DILocation(line: 1051, column: 3, scope: !3310)
!3320 = distinct !DISubprogram(name: "quote_mem", scope: !546, file: !546, line: 1055, type: !3321, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!138, !138, !136}
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "arg", arg: 1, scope: !3320, file: !546, line: 1055, type: !138)
!3325 = !DILocalVariable(name: "argsize", arg: 2, scope: !3320, file: !546, line: 1055, type: !136)
!3326 = !DILocation(line: 0, scope: !3320)
!3327 = !DILocation(line: 0, scope: !3310, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 1057, column: 10, scope: !3320)
!3329 = !DILocation(line: 1051, column: 10, scope: !3310, inlinedAt: !3328)
!3330 = !DILocation(line: 1057, column: 3, scope: !3320)
!3331 = distinct !DISubprogram(name: "quote_n", scope: !546, file: !546, line: 1061, type: !3332, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!138, !85, !138}
!3334 = !{!3335, !3336}
!3335 = !DILocalVariable(name: "n", arg: 1, scope: !3331, file: !546, line: 1061, type: !85)
!3336 = !DILocalVariable(name: "arg", arg: 2, scope: !3331, file: !546, line: 1061, type: !138)
!3337 = !DILocation(line: 0, scope: !3331)
!3338 = !DILocation(line: 0, scope: !3310, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 1063, column: 10, scope: !3331)
!3340 = !DILocation(line: 1051, column: 10, scope: !3310, inlinedAt: !3339)
!3341 = !DILocation(line: 1063, column: 3, scope: !3331)
!3342 = distinct !DISubprogram(name: "quote", scope: !546, file: !546, line: 1067, type: !3343, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!138, !138}
!3345 = !{!3346}
!3346 = !DILocalVariable(name: "arg", arg: 1, scope: !3342, file: !546, line: 1067, type: !138)
!3347 = !DILocation(line: 0, scope: !3342)
!3348 = !DILocation(line: 0, scope: !3331, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 1069, column: 10, scope: !3342)
!3350 = !DILocation(line: 0, scope: !3310, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 1063, column: 10, scope: !3331, inlinedAt: !3349)
!3352 = !DILocation(line: 1051, column: 10, scope: !3310, inlinedAt: !3351)
!3353 = !DILocation(line: 1069, column: 3, scope: !3342)
!3354 = distinct !DISubprogram(name: "version_etc_arn", scope: !647, file: !647, line: 61, type: !3355, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3392)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3357, !138, !138, !138, !3391, !136}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3359)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3359, file: !251, line: 51, baseType: !85, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3359, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3359, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3359, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3359, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3359, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3359, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3359, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3359, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3359, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3359, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3359, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3359, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3359, file: !251, line: 70, baseType: !3375, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3359, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3359, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3359, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3359, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3359, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3359, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3359, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3359, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3359, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3359, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3359, file: !251, line: 93, baseType: !3375, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3359, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3359, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3359, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3359, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398}
!3393 = !DILocalVariable(name: "stream", arg: 1, scope: !3354, file: !647, line: 61, type: !3357)
!3394 = !DILocalVariable(name: "command_name", arg: 2, scope: !3354, file: !647, line: 62, type: !138)
!3395 = !DILocalVariable(name: "package", arg: 3, scope: !3354, file: !647, line: 62, type: !138)
!3396 = !DILocalVariable(name: "version", arg: 4, scope: !3354, file: !647, line: 63, type: !138)
!3397 = !DILocalVariable(name: "authors", arg: 5, scope: !3354, file: !647, line: 64, type: !3391)
!3398 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3354, file: !647, line: 64, type: !136)
!3399 = !DILocation(line: 0, scope: !3354)
!3400 = !DILocation(line: 66, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3354, file: !647, line: 66, column: 7)
!3402 = !DILocation(line: 66, column: 7, scope: !3354)
!3403 = !DILocation(line: 67, column: 5, scope: !3401)
!3404 = !DILocation(line: 69, column: 5, scope: !3401)
!3405 = !DILocation(line: 83, column: 3, scope: !3354)
!3406 = !DILocation(line: 85, column: 3, scope: !3354)
!3407 = !DILocation(line: 88, column: 3, scope: !3354)
!3408 = !DILocation(line: 95, column: 3, scope: !3354)
!3409 = !DILocation(line: 97, column: 3, scope: !3354)
!3410 = !DILocation(line: 105, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3354, file: !647, line: 98, column: 5)
!3412 = !DILocation(line: 106, column: 7, scope: !3411)
!3413 = !DILocation(line: 109, column: 7, scope: !3411)
!3414 = !DILocation(line: 110, column: 7, scope: !3411)
!3415 = !DILocation(line: 113, column: 7, scope: !3411)
!3416 = !DILocation(line: 115, column: 7, scope: !3411)
!3417 = !DILocation(line: 120, column: 7, scope: !3411)
!3418 = !DILocation(line: 122, column: 7, scope: !3411)
!3419 = !DILocation(line: 127, column: 7, scope: !3411)
!3420 = !DILocation(line: 129, column: 7, scope: !3411)
!3421 = !DILocation(line: 134, column: 7, scope: !3411)
!3422 = !DILocation(line: 137, column: 7, scope: !3411)
!3423 = !DILocation(line: 142, column: 7, scope: !3411)
!3424 = !DILocation(line: 145, column: 7, scope: !3411)
!3425 = !DILocation(line: 150, column: 7, scope: !3411)
!3426 = !DILocation(line: 154, column: 7, scope: !3411)
!3427 = !DILocation(line: 159, column: 7, scope: !3411)
!3428 = !DILocation(line: 163, column: 7, scope: !3411)
!3429 = !DILocation(line: 170, column: 7, scope: !3411)
!3430 = !DILocation(line: 174, column: 7, scope: !3411)
!3431 = !DILocation(line: 176, column: 1, scope: !3354)
!3432 = distinct !DISubprogram(name: "version_etc_ar", scope: !647, file: !647, line: 183, type: !3433, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3357, !138, !138, !138, !3391}
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441}
!3436 = !DILocalVariable(name: "stream", arg: 1, scope: !3432, file: !647, line: 183, type: !3357)
!3437 = !DILocalVariable(name: "command_name", arg: 2, scope: !3432, file: !647, line: 184, type: !138)
!3438 = !DILocalVariable(name: "package", arg: 3, scope: !3432, file: !647, line: 184, type: !138)
!3439 = !DILocalVariable(name: "version", arg: 4, scope: !3432, file: !647, line: 185, type: !138)
!3440 = !DILocalVariable(name: "authors", arg: 5, scope: !3432, file: !647, line: 185, type: !3391)
!3441 = !DILocalVariable(name: "n_authors", scope: !3432, file: !647, line: 187, type: !136)
!3442 = !DILocation(line: 0, scope: !3432)
!3443 = !DILocation(line: 189, column: 8, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3432, file: !647, line: 189, column: 3)
!3445 = !DILocation(line: 189, scope: !3444)
!3446 = !DILocation(line: 189, column: 23, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !647, line: 189, column: 3)
!3448 = !DILocation(line: 189, column: 3, scope: !3444)
!3449 = !DILocation(line: 189, column: 52, scope: !3447)
!3450 = distinct !{!3450, !3448, !3451, !980}
!3451 = !DILocation(line: 190, column: 5, scope: !3444)
!3452 = !DILocation(line: 191, column: 3, scope: !3432)
!3453 = !DILocation(line: 192, column: 1, scope: !3432)
!3454 = distinct !DISubprogram(name: "version_etc_va", scope: !647, file: !647, line: 199, type: !3455, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3467)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3357, !138, !138, !138, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !464, line: 52, baseType: !3458)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !466, line: 12, baseType: !3459)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !647, baseType: !3460)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3460, file: !647, line: 192, baseType: !129, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3460, file: !647, line: 192, baseType: !129, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3460, file: !647, line: 192, baseType: !129, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3460, file: !647, line: 192, baseType: !85, size: 32, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3460, file: !647, line: 192, baseType: !85, size: 32, offset: 224)
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473, !3474}
!3468 = !DILocalVariable(name: "stream", arg: 1, scope: !3454, file: !647, line: 199, type: !3357)
!3469 = !DILocalVariable(name: "command_name", arg: 2, scope: !3454, file: !647, line: 200, type: !138)
!3470 = !DILocalVariable(name: "package", arg: 3, scope: !3454, file: !647, line: 200, type: !138)
!3471 = !DILocalVariable(name: "version", arg: 4, scope: !3454, file: !647, line: 201, type: !138)
!3472 = !DILocalVariable(name: "authors", arg: 5, scope: !3454, file: !647, line: 201, type: !3457)
!3473 = !DILocalVariable(name: "n_authors", scope: !3454, file: !647, line: 203, type: !136)
!3474 = !DILocalVariable(name: "authtab", scope: !3454, file: !647, line: 204, type: !3475)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 640, elements: !67)
!3476 = distinct !DIAssignID()
!3477 = !DILocation(line: 0, scope: !3454)
!3478 = !DILocation(line: 204, column: 3, scope: !3454)
!3479 = !DILocation(line: 208, column: 35, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !647, line: 206, column: 3)
!3481 = distinct !DILexicalBlock(scope: !3454, file: !647, line: 206, column: 3)
!3482 = !DILocation(line: 208, column: 33, scope: !3480)
!3483 = !DILocation(line: 208, column: 67, scope: !3480)
!3484 = !DILocation(line: 206, column: 3, scope: !3481)
!3485 = !DILocation(line: 208, column: 14, scope: !3480)
!3486 = !DILocation(line: 0, scope: !3481)
!3487 = !DILocation(line: 211, column: 3, scope: !3454)
!3488 = !DILocation(line: 213, column: 1, scope: !3454)
!3489 = distinct !DISubprogram(name: "version_etc", scope: !647, file: !647, line: 230, type: !3490, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3492)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3357, !138, !138, !138, null}
!3492 = !{!3493, !3494, !3495, !3496, !3497}
!3493 = !DILocalVariable(name: "stream", arg: 1, scope: !3489, file: !647, line: 230, type: !3357)
!3494 = !DILocalVariable(name: "command_name", arg: 2, scope: !3489, file: !647, line: 231, type: !138)
!3495 = !DILocalVariable(name: "package", arg: 3, scope: !3489, file: !647, line: 231, type: !138)
!3496 = !DILocalVariable(name: "version", arg: 4, scope: !3489, file: !647, line: 232, type: !138)
!3497 = !DILocalVariable(name: "authors", scope: !3489, file: !647, line: 234, type: !3457)
!3498 = distinct !DIAssignID()
!3499 = !DILocation(line: 0, scope: !3489)
!3500 = !DILocation(line: 234, column: 3, scope: !3489)
!3501 = !DILocation(line: 235, column: 3, scope: !3489)
!3502 = !DILocation(line: 236, column: 3, scope: !3489)
!3503 = !DILocation(line: 237, column: 3, scope: !3489)
!3504 = !DILocation(line: 238, column: 1, scope: !3489)
!3505 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !647, file: !647, line: 241, type: !501, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775)
!3506 = !DILocation(line: 243, column: 3, scope: !3505)
!3507 = !DILocation(line: 248, column: 3, scope: !3505)
!3508 = !DILocation(line: 254, column: 3, scope: !3505)
!3509 = !DILocation(line: 259, column: 3, scope: !3505)
!3510 = !DILocation(line: 261, column: 1, scope: !3505)
!3511 = distinct !DISubprogram(name: "xnrealloc", scope: !3512, file: !3512, line: 147, type: !3513, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3515)
!3512 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!129, !129, !136, !136}
!3515 = !{!3516, !3517, !3518}
!3516 = !DILocalVariable(name: "p", arg: 1, scope: !3511, file: !3512, line: 147, type: !129)
!3517 = !DILocalVariable(name: "n", arg: 2, scope: !3511, file: !3512, line: 147, type: !136)
!3518 = !DILocalVariable(name: "s", arg: 3, scope: !3511, file: !3512, line: 147, type: !136)
!3519 = !DILocation(line: 0, scope: !3511)
!3520 = !DILocalVariable(name: "p", arg: 1, scope: !3521, file: !783, line: 83, type: !129)
!3521 = distinct !DISubprogram(name: "xreallocarray", scope: !783, file: !783, line: 83, type: !3513, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3522)
!3522 = !{!3520, !3523, !3524}
!3523 = !DILocalVariable(name: "n", arg: 2, scope: !3521, file: !783, line: 83, type: !136)
!3524 = !DILocalVariable(name: "s", arg: 3, scope: !3521, file: !783, line: 83, type: !136)
!3525 = !DILocation(line: 0, scope: !3521, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 149, column: 10, scope: !3511)
!3527 = !DILocation(line: 85, column: 25, scope: !3521, inlinedAt: !3526)
!3528 = !DILocalVariable(name: "p", arg: 1, scope: !3529, file: !783, line: 37, type: !129)
!3529 = distinct !DISubprogram(name: "check_nonnull", scope: !783, file: !783, line: 37, type: !3530, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!129, !129}
!3532 = !{!3528}
!3533 = !DILocation(line: 0, scope: !3529, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 85, column: 10, scope: !3521, inlinedAt: !3526)
!3535 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3534)
!3536 = distinct !DILexicalBlock(scope: !3529, file: !783, line: 39, column: 7)
!3537 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3534)
!3538 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3534)
!3539 = !DILocation(line: 149, column: 3, scope: !3511)
!3540 = !DILocation(line: 0, scope: !3521)
!3541 = !DILocation(line: 85, column: 25, scope: !3521)
!3542 = !DILocation(line: 0, scope: !3529, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 85, column: 10, scope: !3521)
!3544 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3543)
!3545 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3543)
!3546 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3543)
!3547 = !DILocation(line: 85, column: 3, scope: !3521)
!3548 = distinct !DISubprogram(name: "xmalloc", scope: !783, file: !783, line: 47, type: !3549, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!129, !136}
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "s", arg: 1, scope: !3548, file: !783, line: 47, type: !136)
!3553 = !DILocation(line: 0, scope: !3548)
!3554 = !DILocation(line: 49, column: 25, scope: !3548)
!3555 = !DILocation(line: 0, scope: !3529, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 49, column: 10, scope: !3548)
!3557 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3556)
!3558 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3556)
!3559 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3556)
!3560 = !DILocation(line: 49, column: 3, scope: !3548)
!3561 = !DISubprogram(name: "malloc", scope: !1054, file: !1054, line: 540, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3562 = distinct !DISubprogram(name: "ximalloc", scope: !783, file: !783, line: 53, type: !3563, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!129, !802}
!3565 = !{!3566}
!3566 = !DILocalVariable(name: "s", arg: 1, scope: !3562, file: !783, line: 53, type: !802)
!3567 = !DILocation(line: 0, scope: !3562)
!3568 = !DILocalVariable(name: "s", arg: 1, scope: !3569, file: !3570, line: 55, type: !802)
!3569 = distinct !DISubprogram(name: "imalloc", scope: !3570, file: !3570, line: 55, type: !3563, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3571)
!3570 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3571 = !{!3568}
!3572 = !DILocation(line: 0, scope: !3569, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 55, column: 25, scope: !3562)
!3574 = !DILocation(line: 57, column: 26, scope: !3569, inlinedAt: !3573)
!3575 = !DILocation(line: 0, scope: !3529, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 55, column: 10, scope: !3562)
!3577 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3576)
!3578 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3576)
!3579 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3576)
!3580 = !DILocation(line: 55, column: 3, scope: !3562)
!3581 = distinct !DISubprogram(name: "xcharalloc", scope: !783, file: !783, line: 59, type: !3582, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!128, !136}
!3584 = !{!3585}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !783, line: 59, type: !136)
!3586 = !DILocation(line: 0, scope: !3581)
!3587 = !DILocation(line: 0, scope: !3548, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 61, column: 10, scope: !3581)
!3589 = !DILocation(line: 49, column: 25, scope: !3548, inlinedAt: !3588)
!3590 = !DILocation(line: 0, scope: !3529, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 49, column: 10, scope: !3548, inlinedAt: !3588)
!3592 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3591)
!3593 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3591)
!3594 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3591)
!3595 = !DILocation(line: 61, column: 3, scope: !3581)
!3596 = distinct !DISubprogram(name: "xrealloc", scope: !783, file: !783, line: 68, type: !3597, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!129, !129, !136}
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "p", arg: 1, scope: !3596, file: !783, line: 68, type: !129)
!3601 = !DILocalVariable(name: "s", arg: 2, scope: !3596, file: !783, line: 68, type: !136)
!3602 = !DILocation(line: 0, scope: !3596)
!3603 = !DILocalVariable(name: "ptr", arg: 1, scope: !3604, file: !3605, line: 2057, type: !129)
!3604 = distinct !DISubprogram(name: "rpl_realloc", scope: !3605, file: !3605, line: 2057, type: !3597, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3606)
!3605 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3606 = !{!3603, !3607}
!3607 = !DILocalVariable(name: "size", arg: 2, scope: !3604, file: !3605, line: 2057, type: !136)
!3608 = !DILocation(line: 0, scope: !3604, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 70, column: 25, scope: !3596)
!3610 = !DILocation(line: 2059, column: 24, scope: !3604, inlinedAt: !3609)
!3611 = !DILocation(line: 2059, column: 10, scope: !3604, inlinedAt: !3609)
!3612 = !DILocation(line: 0, scope: !3529, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 70, column: 10, scope: !3596)
!3614 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3613)
!3615 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3613)
!3616 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3613)
!3617 = !DILocation(line: 70, column: 3, scope: !3596)
!3618 = !DISubprogram(name: "realloc", scope: !1054, file: !1054, line: 551, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3619 = distinct !DISubprogram(name: "xirealloc", scope: !783, file: !783, line: 74, type: !3620, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!129, !129, !802}
!3622 = !{!3623, !3624}
!3623 = !DILocalVariable(name: "p", arg: 1, scope: !3619, file: !783, line: 74, type: !129)
!3624 = !DILocalVariable(name: "s", arg: 2, scope: !3619, file: !783, line: 74, type: !802)
!3625 = !DILocation(line: 0, scope: !3619)
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3627, file: !3570, line: 66, type: !129)
!3627 = distinct !DISubprogram(name: "irealloc", scope: !3570, file: !3570, line: 66, type: !3620, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3628)
!3628 = !{!3626, !3629}
!3629 = !DILocalVariable(name: "s", arg: 2, scope: !3627, file: !3570, line: 66, type: !802)
!3630 = !DILocation(line: 0, scope: !3627, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 76, column: 25, scope: !3619)
!3632 = !DILocation(line: 0, scope: !3604, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 68, column: 26, scope: !3627, inlinedAt: !3631)
!3634 = !DILocation(line: 2059, column: 24, scope: !3604, inlinedAt: !3633)
!3635 = !DILocation(line: 2059, column: 10, scope: !3604, inlinedAt: !3633)
!3636 = !DILocation(line: 0, scope: !3529, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 76, column: 10, scope: !3619)
!3638 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3637)
!3639 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3637)
!3640 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3637)
!3641 = !DILocation(line: 76, column: 3, scope: !3619)
!3642 = distinct !DISubprogram(name: "xireallocarray", scope: !783, file: !783, line: 89, type: !3643, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!129, !129, !802, !802}
!3645 = !{!3646, !3647, !3648}
!3646 = !DILocalVariable(name: "p", arg: 1, scope: !3642, file: !783, line: 89, type: !129)
!3647 = !DILocalVariable(name: "n", arg: 2, scope: !3642, file: !783, line: 89, type: !802)
!3648 = !DILocalVariable(name: "s", arg: 3, scope: !3642, file: !783, line: 89, type: !802)
!3649 = !DILocation(line: 0, scope: !3642)
!3650 = !DILocalVariable(name: "p", arg: 1, scope: !3651, file: !3570, line: 98, type: !129)
!3651 = distinct !DISubprogram(name: "ireallocarray", scope: !3570, file: !3570, line: 98, type: !3643, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3652)
!3652 = !{!3650, !3653, !3654}
!3653 = !DILocalVariable(name: "n", arg: 2, scope: !3651, file: !3570, line: 98, type: !802)
!3654 = !DILocalVariable(name: "s", arg: 3, scope: !3651, file: !3570, line: 98, type: !802)
!3655 = !DILocation(line: 0, scope: !3651, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 91, column: 25, scope: !3642)
!3657 = !DILocation(line: 101, column: 13, scope: !3651, inlinedAt: !3656)
!3658 = !DILocation(line: 0, scope: !3529, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 91, column: 10, scope: !3642)
!3660 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3659)
!3661 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3659)
!3662 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3659)
!3663 = !DILocation(line: 91, column: 3, scope: !3642)
!3664 = distinct !DISubprogram(name: "xnmalloc", scope: !783, file: !783, line: 98, type: !3665, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!129, !136, !136}
!3667 = !{!3668, !3669}
!3668 = !DILocalVariable(name: "n", arg: 1, scope: !3664, file: !783, line: 98, type: !136)
!3669 = !DILocalVariable(name: "s", arg: 2, scope: !3664, file: !783, line: 98, type: !136)
!3670 = !DILocation(line: 0, scope: !3664)
!3671 = !DILocation(line: 0, scope: !3521, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 100, column: 10, scope: !3664)
!3673 = !DILocation(line: 85, column: 25, scope: !3521, inlinedAt: !3672)
!3674 = !DILocation(line: 0, scope: !3529, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 85, column: 10, scope: !3521, inlinedAt: !3672)
!3676 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3675)
!3677 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3675)
!3678 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3675)
!3679 = !DILocation(line: 100, column: 3, scope: !3664)
!3680 = distinct !DISubprogram(name: "xinmalloc", scope: !783, file: !783, line: 104, type: !3681, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3683)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!129, !802, !802}
!3683 = !{!3684, !3685}
!3684 = !DILocalVariable(name: "n", arg: 1, scope: !3680, file: !783, line: 104, type: !802)
!3685 = !DILocalVariable(name: "s", arg: 2, scope: !3680, file: !783, line: 104, type: !802)
!3686 = !DILocation(line: 0, scope: !3680)
!3687 = !DILocation(line: 0, scope: !3642, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 106, column: 10, scope: !3680)
!3689 = !DILocation(line: 0, scope: !3651, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 91, column: 25, scope: !3642, inlinedAt: !3688)
!3691 = !DILocation(line: 101, column: 13, scope: !3651, inlinedAt: !3690)
!3692 = !DILocation(line: 0, scope: !3529, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 91, column: 10, scope: !3642, inlinedAt: !3688)
!3694 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3693)
!3695 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3693)
!3696 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3693)
!3697 = !DILocation(line: 106, column: 3, scope: !3680)
!3698 = distinct !DISubprogram(name: "x2realloc", scope: !783, file: !783, line: 116, type: !3699, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3701)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!129, !129, !789}
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "p", arg: 1, scope: !3698, file: !783, line: 116, type: !129)
!3703 = !DILocalVariable(name: "ps", arg: 2, scope: !3698, file: !783, line: 116, type: !789)
!3704 = !DILocation(line: 0, scope: !3698)
!3705 = !DILocation(line: 0, scope: !786, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 118, column: 10, scope: !3698)
!3707 = !DILocation(line: 178, column: 14, scope: !786, inlinedAt: !3706)
!3708 = !DILocation(line: 180, column: 9, scope: !3709, inlinedAt: !3706)
!3709 = distinct !DILexicalBlock(scope: !786, file: !783, line: 180, column: 7)
!3710 = !DILocation(line: 180, column: 7, scope: !786, inlinedAt: !3706)
!3711 = !DILocation(line: 182, column: 13, scope: !3712, inlinedAt: !3706)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !783, line: 182, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !783, line: 181, column: 5)
!3714 = !DILocation(line: 182, column: 11, scope: !3713, inlinedAt: !3706)
!3715 = !DILocation(line: 197, column: 11, scope: !3716, inlinedAt: !3706)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !783, line: 197, column: 11)
!3717 = distinct !DILexicalBlock(scope: !3709, file: !783, line: 195, column: 5)
!3718 = !DILocation(line: 197, column: 11, scope: !3717, inlinedAt: !3706)
!3719 = !DILocation(line: 198, column: 9, scope: !3716, inlinedAt: !3706)
!3720 = !DILocation(line: 0, scope: !3521, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 201, column: 7, scope: !786, inlinedAt: !3706)
!3722 = !DILocation(line: 85, column: 25, scope: !3521, inlinedAt: !3721)
!3723 = !DILocation(line: 0, scope: !3529, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 85, column: 10, scope: !3521, inlinedAt: !3721)
!3725 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3724)
!3726 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3724)
!3727 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3724)
!3728 = !DILocation(line: 202, column: 7, scope: !786, inlinedAt: !3706)
!3729 = !DILocation(line: 118, column: 3, scope: !3698)
!3730 = !DILocation(line: 0, scope: !786)
!3731 = !DILocation(line: 178, column: 14, scope: !786)
!3732 = !DILocation(line: 180, column: 9, scope: !3709)
!3733 = !DILocation(line: 180, column: 7, scope: !786)
!3734 = !DILocation(line: 182, column: 13, scope: !3712)
!3735 = !DILocation(line: 182, column: 11, scope: !3713)
!3736 = !DILocation(line: 190, column: 30, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3712, file: !783, line: 183, column: 9)
!3738 = !DILocation(line: 191, column: 16, scope: !3737)
!3739 = !DILocation(line: 191, column: 13, scope: !3737)
!3740 = !DILocation(line: 192, column: 9, scope: !3737)
!3741 = !DILocation(line: 197, column: 11, scope: !3716)
!3742 = !DILocation(line: 197, column: 11, scope: !3717)
!3743 = !DILocation(line: 198, column: 9, scope: !3716)
!3744 = !DILocation(line: 0, scope: !3521, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 201, column: 7, scope: !786)
!3746 = !DILocation(line: 85, column: 25, scope: !3521, inlinedAt: !3745)
!3747 = !DILocation(line: 0, scope: !3529, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 85, column: 10, scope: !3521, inlinedAt: !3745)
!3749 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3748)
!3750 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3748)
!3751 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3748)
!3752 = !DILocation(line: 202, column: 7, scope: !786)
!3753 = !DILocation(line: 203, column: 3, scope: !786)
!3754 = !DILocation(line: 0, scope: !798)
!3755 = !DILocation(line: 230, column: 14, scope: !798)
!3756 = !DILocation(line: 238, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !798, file: !783, line: 238, column: 7)
!3758 = !DILocation(line: 238, column: 7, scope: !798)
!3759 = !DILocation(line: 240, column: 9, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !798, file: !783, line: 240, column: 7)
!3761 = !DILocation(line: 240, column: 18, scope: !3760)
!3762 = !DILocation(line: 253, column: 8, scope: !798)
!3763 = !DILocation(line: 256, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !798, file: !783, line: 256, column: 7)
!3765 = !DILocation(line: 256, column: 7, scope: !798)
!3766 = !DILocation(line: 258, column: 27, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !783, line: 257, column: 5)
!3768 = !DILocation(line: 259, column: 32, scope: !3767)
!3769 = !DILocation(line: 260, column: 5, scope: !3767)
!3770 = !DILocation(line: 262, column: 9, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !798, file: !783, line: 262, column: 7)
!3772 = !DILocation(line: 262, column: 7, scope: !798)
!3773 = !DILocation(line: 263, column: 9, scope: !3771)
!3774 = !DILocation(line: 263, column: 5, scope: !3771)
!3775 = !DILocation(line: 264, column: 9, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !798, file: !783, line: 264, column: 7)
!3777 = !DILocation(line: 264, column: 14, scope: !3776)
!3778 = !DILocation(line: 265, column: 7, scope: !3776)
!3779 = !DILocation(line: 265, column: 11, scope: !3776)
!3780 = !DILocation(line: 266, column: 11, scope: !3776)
!3781 = !DILocation(line: 267, column: 14, scope: !3776)
!3782 = !DILocation(line: 264, column: 7, scope: !798)
!3783 = !DILocation(line: 268, column: 5, scope: !3776)
!3784 = !DILocation(line: 0, scope: !3596, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 269, column: 8, scope: !798)
!3786 = !DILocation(line: 0, scope: !3604, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 70, column: 25, scope: !3596, inlinedAt: !3785)
!3788 = !DILocation(line: 2059, column: 24, scope: !3604, inlinedAt: !3787)
!3789 = !DILocation(line: 2059, column: 10, scope: !3604, inlinedAt: !3787)
!3790 = !DILocation(line: 0, scope: !3529, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 70, column: 10, scope: !3596, inlinedAt: !3785)
!3792 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3791)
!3793 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3791)
!3794 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3791)
!3795 = !DILocation(line: 270, column: 7, scope: !798)
!3796 = !DILocation(line: 271, column: 3, scope: !798)
!3797 = distinct !DISubprogram(name: "xzalloc", scope: !783, file: !783, line: 279, type: !3549, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3798)
!3798 = !{!3799}
!3799 = !DILocalVariable(name: "s", arg: 1, scope: !3797, file: !783, line: 279, type: !136)
!3800 = !DILocation(line: 0, scope: !3797)
!3801 = !DILocalVariable(name: "n", arg: 1, scope: !3802, file: !783, line: 294, type: !136)
!3802 = distinct !DISubprogram(name: "xcalloc", scope: !783, file: !783, line: 294, type: !3665, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3803)
!3803 = !{!3801, !3804}
!3804 = !DILocalVariable(name: "s", arg: 2, scope: !3802, file: !783, line: 294, type: !136)
!3805 = !DILocation(line: 0, scope: !3802, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 281, column: 10, scope: !3797)
!3807 = !DILocation(line: 296, column: 25, scope: !3802, inlinedAt: !3806)
!3808 = !DILocation(line: 0, scope: !3529, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 296, column: 10, scope: !3802, inlinedAt: !3806)
!3810 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3809)
!3811 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3809)
!3812 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3809)
!3813 = !DILocation(line: 281, column: 3, scope: !3797)
!3814 = !DISubprogram(name: "calloc", scope: !1054, file: !1054, line: 543, type: !3665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3815 = !DILocation(line: 0, scope: !3802)
!3816 = !DILocation(line: 296, column: 25, scope: !3802)
!3817 = !DILocation(line: 0, scope: !3529, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 296, column: 10, scope: !3802)
!3819 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3818)
!3820 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3818)
!3821 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3818)
!3822 = !DILocation(line: 296, column: 3, scope: !3802)
!3823 = distinct !DISubprogram(name: "xizalloc", scope: !783, file: !783, line: 285, type: !3563, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3824)
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "s", arg: 1, scope: !3823, file: !783, line: 285, type: !802)
!3826 = !DILocation(line: 0, scope: !3823)
!3827 = !DILocalVariable(name: "n", arg: 1, scope: !3828, file: !783, line: 300, type: !802)
!3828 = distinct !DISubprogram(name: "xicalloc", scope: !783, file: !783, line: 300, type: !3681, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3829)
!3829 = !{!3827, !3830}
!3830 = !DILocalVariable(name: "s", arg: 2, scope: !3828, file: !783, line: 300, type: !802)
!3831 = !DILocation(line: 0, scope: !3828, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 287, column: 10, scope: !3823)
!3833 = !DILocalVariable(name: "n", arg: 1, scope: !3834, file: !3570, line: 77, type: !802)
!3834 = distinct !DISubprogram(name: "icalloc", scope: !3570, file: !3570, line: 77, type: !3681, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3835)
!3835 = !{!3833, !3836}
!3836 = !DILocalVariable(name: "s", arg: 2, scope: !3834, file: !3570, line: 77, type: !802)
!3837 = !DILocation(line: 0, scope: !3834, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 302, column: 25, scope: !3828, inlinedAt: !3832)
!3839 = !DILocation(line: 91, column: 10, scope: !3834, inlinedAt: !3838)
!3840 = !DILocation(line: 0, scope: !3529, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 302, column: 10, scope: !3828, inlinedAt: !3832)
!3842 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3841)
!3843 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3841)
!3844 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3841)
!3845 = !DILocation(line: 287, column: 3, scope: !3823)
!3846 = !DILocation(line: 0, scope: !3828)
!3847 = !DILocation(line: 0, scope: !3834, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 302, column: 25, scope: !3828)
!3849 = !DILocation(line: 91, column: 10, scope: !3834, inlinedAt: !3848)
!3850 = !DILocation(line: 0, scope: !3529, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 302, column: 10, scope: !3828)
!3852 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3851)
!3853 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3851)
!3854 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3851)
!3855 = !DILocation(line: 302, column: 3, scope: !3828)
!3856 = distinct !DISubprogram(name: "xmemdup", scope: !783, file: !783, line: 310, type: !3857, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!129, !1078, !136}
!3859 = !{!3860, !3861}
!3860 = !DILocalVariable(name: "p", arg: 1, scope: !3856, file: !783, line: 310, type: !1078)
!3861 = !DILocalVariable(name: "s", arg: 2, scope: !3856, file: !783, line: 310, type: !136)
!3862 = !DILocation(line: 0, scope: !3856)
!3863 = !DILocation(line: 0, scope: !3548, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 312, column: 18, scope: !3856)
!3865 = !DILocation(line: 49, column: 25, scope: !3548, inlinedAt: !3864)
!3866 = !DILocation(line: 0, scope: !3529, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 49, column: 10, scope: !3548, inlinedAt: !3864)
!3868 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3867)
!3869 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3867)
!3870 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3867)
!3871 = !DILocalVariable(name: "__dest", arg: 1, scope: !3872, file: !2007, line: 26, type: !3875)
!3872 = distinct !DISubprogram(name: "memcpy", scope: !2007, file: !2007, line: 26, type: !3873, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3876)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!129, !3875, !1077, !136}
!3875 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!3876 = !{!3871, !3877, !3878}
!3877 = !DILocalVariable(name: "__src", arg: 2, scope: !3872, file: !2007, line: 26, type: !1077)
!3878 = !DILocalVariable(name: "__len", arg: 3, scope: !3872, file: !2007, line: 26, type: !136)
!3879 = !DILocation(line: 0, scope: !3872, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 312, column: 10, scope: !3856)
!3881 = !DILocation(line: 29, column: 10, scope: !3872, inlinedAt: !3880)
!3882 = !DILocation(line: 312, column: 3, scope: !3856)
!3883 = distinct !DISubprogram(name: "ximemdup", scope: !783, file: !783, line: 316, type: !3884, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!129, !1078, !802}
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "p", arg: 1, scope: !3883, file: !783, line: 316, type: !1078)
!3888 = !DILocalVariable(name: "s", arg: 2, scope: !3883, file: !783, line: 316, type: !802)
!3889 = !DILocation(line: 0, scope: !3883)
!3890 = !DILocation(line: 0, scope: !3562, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 318, column: 18, scope: !3883)
!3892 = !DILocation(line: 0, scope: !3569, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 55, column: 25, scope: !3562, inlinedAt: !3891)
!3894 = !DILocation(line: 57, column: 26, scope: !3569, inlinedAt: !3893)
!3895 = !DILocation(line: 0, scope: !3529, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 55, column: 10, scope: !3562, inlinedAt: !3891)
!3897 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3896)
!3898 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3896)
!3899 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3896)
!3900 = !DILocation(line: 0, scope: !3872, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 318, column: 10, scope: !3883)
!3902 = !DILocation(line: 29, column: 10, scope: !3872, inlinedAt: !3901)
!3903 = !DILocation(line: 318, column: 3, scope: !3883)
!3904 = distinct !DISubprogram(name: "ximemdup0", scope: !783, file: !783, line: 325, type: !3905, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!128, !1078, !802}
!3907 = !{!3908, !3909, !3910}
!3908 = !DILocalVariable(name: "p", arg: 1, scope: !3904, file: !783, line: 325, type: !1078)
!3909 = !DILocalVariable(name: "s", arg: 2, scope: !3904, file: !783, line: 325, type: !802)
!3910 = !DILocalVariable(name: "result", scope: !3904, file: !783, line: 327, type: !128)
!3911 = !DILocation(line: 0, scope: !3904)
!3912 = !DILocation(line: 327, column: 30, scope: !3904)
!3913 = !DILocation(line: 0, scope: !3562, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 327, column: 18, scope: !3904)
!3915 = !DILocation(line: 0, scope: !3569, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 55, column: 25, scope: !3562, inlinedAt: !3914)
!3917 = !DILocation(line: 57, column: 26, scope: !3569, inlinedAt: !3916)
!3918 = !DILocation(line: 0, scope: !3529, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 55, column: 10, scope: !3562, inlinedAt: !3914)
!3920 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3919)
!3921 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3919)
!3922 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3919)
!3923 = !DILocation(line: 328, column: 3, scope: !3904)
!3924 = !DILocation(line: 328, column: 13, scope: !3904)
!3925 = !DILocation(line: 0, scope: !3872, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 329, column: 10, scope: !3904)
!3927 = !DILocation(line: 29, column: 10, scope: !3872, inlinedAt: !3926)
!3928 = !DILocation(line: 329, column: 3, scope: !3904)
!3929 = distinct !DISubprogram(name: "xstrdup", scope: !783, file: !783, line: 335, type: !1056, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3930)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "string", arg: 1, scope: !3929, file: !783, line: 335, type: !138)
!3932 = !DILocation(line: 0, scope: !3929)
!3933 = !DILocation(line: 337, column: 27, scope: !3929)
!3934 = !DILocation(line: 337, column: 43, scope: !3929)
!3935 = !DILocation(line: 0, scope: !3856, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 337, column: 10, scope: !3929)
!3937 = !DILocation(line: 0, scope: !3548, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 312, column: 18, scope: !3856, inlinedAt: !3936)
!3939 = !DILocation(line: 49, column: 25, scope: !3548, inlinedAt: !3938)
!3940 = !DILocation(line: 0, scope: !3529, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 49, column: 10, scope: !3548, inlinedAt: !3938)
!3942 = !DILocation(line: 39, column: 8, scope: !3536, inlinedAt: !3941)
!3943 = !DILocation(line: 39, column: 7, scope: !3529, inlinedAt: !3941)
!3944 = !DILocation(line: 40, column: 5, scope: !3536, inlinedAt: !3941)
!3945 = !DILocation(line: 0, scope: !3872, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 312, column: 10, scope: !3856, inlinedAt: !3936)
!3947 = !DILocation(line: 29, column: 10, scope: !3872, inlinedAt: !3946)
!3948 = !DILocation(line: 337, column: 3, scope: !3929)
!3949 = distinct !DISubprogram(name: "xalloc_die", scope: !732, file: !732, line: 32, type: !501, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !3950)
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "__errstatus", scope: !3952, file: !732, line: 34, type: !3953)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !732, line: 34, column: 3)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3954 = !DILocation(line: 34, column: 3, scope: !3952)
!3955 = !DILocation(line: 0, scope: !3952)
!3956 = !DILocation(line: 40, column: 3, scope: !3949)
!3957 = distinct !DISubprogram(name: "xstrtoumax", scope: !3958, file: !3958, line: 71, type: !3959, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !3963)
!3958 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!3961, !138, !1083, !85, !3962, !138}
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !823, line: 43, baseType: !822)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3974, !3975, !3976, !3977, !3980, !3981}
!3964 = !DILocalVariable(name: "nptr", arg: 1, scope: !3957, file: !3958, line: 71, type: !138)
!3965 = !DILocalVariable(name: "endptr", arg: 2, scope: !3957, file: !3958, line: 71, type: !1083)
!3966 = !DILocalVariable(name: "base", arg: 3, scope: !3957, file: !3958, line: 71, type: !85)
!3967 = !DILocalVariable(name: "val", arg: 4, scope: !3957, file: !3958, line: 72, type: !3962)
!3968 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3957, file: !3958, line: 72, type: !138)
!3969 = !DILocalVariable(name: "t_ptr", scope: !3957, file: !3958, line: 74, type: !128)
!3970 = !DILocalVariable(name: "p", scope: !3957, file: !3958, line: 75, type: !1083)
!3971 = !DILocalVariable(name: "q", scope: !3972, file: !3958, line: 79, type: !138)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !3958, line: 78, column: 5)
!3973 = distinct !DILexicalBlock(scope: !3957, file: !3958, line: 77, column: 7)
!3974 = !DILocalVariable(name: "ch", scope: !3972, file: !3958, line: 80, type: !140)
!3975 = !DILocalVariable(name: "tmp", scope: !3957, file: !3958, line: 91, type: !825)
!3976 = !DILocalVariable(name: "err", scope: !3957, file: !3958, line: 92, type: !3961)
!3977 = !DILocalVariable(name: "xbase", scope: !3978, file: !3958, line: 126, type: !85)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !3958, line: 119, column: 5)
!3979 = distinct !DILexicalBlock(scope: !3957, file: !3958, line: 118, column: 7)
!3980 = !DILocalVariable(name: "suffixes", scope: !3978, file: !3958, line: 127, type: !85)
!3981 = !DILocalVariable(name: "overflow", scope: !3978, file: !3958, line: 156, type: !3961)
!3982 = distinct !DIAssignID()
!3983 = !DILocation(line: 0, scope: !3957)
!3984 = !DILocation(line: 74, column: 3, scope: !3957)
!3985 = !DILocation(line: 75, column: 14, scope: !3957)
!3986 = !DILocation(line: 0, scope: !3972)
!3987 = !DILocation(line: 81, column: 7, scope: !3972)
!3988 = !DILocation(line: 81, column: 14, scope: !3972)
!3989 = !DILocation(line: 82, column: 15, scope: !3972)
!3990 = distinct !{!3990, !3987, !3991, !980}
!3991 = !DILocation(line: 82, column: 17, scope: !3972)
!3992 = !DILocation(line: 83, column: 14, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3972, file: !3958, line: 83, column: 11)
!3994 = !DILocation(line: 83, column: 11, scope: !3972)
!3995 = !DILocation(line: 85, column: 14, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !3958, line: 84, column: 9)
!3997 = !DILocation(line: 90, column: 3, scope: !3957)
!3998 = !DILocation(line: 90, column: 9, scope: !3957)
!3999 = !DILocation(line: 91, column: 20, scope: !3957)
!4000 = !DILocation(line: 94, column: 7, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3957, file: !3958, line: 94, column: 7)
!4002 = !DILocation(line: 94, column: 10, scope: !4001)
!4003 = !DILocation(line: 94, column: 7, scope: !3957)
!4004 = !DILocation(line: 98, column: 14, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !3958, line: 98, column: 11)
!4006 = distinct !DILexicalBlock(scope: !4001, file: !3958, line: 95, column: 5)
!4007 = !DILocation(line: 98, column: 29, scope: !4005)
!4008 = !DILocation(line: 98, column: 32, scope: !4005)
!4009 = !DILocation(line: 98, column: 38, scope: !4005)
!4010 = !DILocation(line: 98, column: 41, scope: !4005)
!4011 = !DILocation(line: 98, column: 11, scope: !4006)
!4012 = !DILocation(line: 102, column: 12, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4001, file: !3958, line: 102, column: 12)
!4014 = !DILocation(line: 102, column: 12, scope: !4001)
!4015 = !DILocation(line: 107, column: 5, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4013, file: !3958, line: 103, column: 5)
!4017 = !DILocation(line: 112, column: 8, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3957, file: !3958, line: 112, column: 7)
!4019 = !DILocation(line: 112, column: 7, scope: !3957)
!4020 = !DILocation(line: 114, column: 12, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !3958, line: 113, column: 5)
!4022 = !DILocation(line: 115, column: 7, scope: !4021)
!4023 = !DILocation(line: 118, column: 7, scope: !3979)
!4024 = !DILocation(line: 118, column: 11, scope: !3979)
!4025 = !DILocation(line: 118, column: 7, scope: !3957)
!4026 = !DILocation(line: 120, column: 12, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3978, file: !3958, line: 120, column: 11)
!4028 = !DILocation(line: 120, column: 11, scope: !3978)
!4029 = !DILocation(line: 122, column: 16, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4027, file: !3958, line: 121, column: 9)
!4031 = !DILocation(line: 123, column: 22, scope: !4030)
!4032 = !DILocation(line: 123, column: 11, scope: !4030)
!4033 = !DILocation(line: 0, scope: !3978)
!4034 = !DILocation(line: 128, column: 7, scope: !3978)
!4035 = !DILocation(line: 140, column: 15, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !3958, line: 140, column: 15)
!4037 = distinct !DILexicalBlock(scope: !3978, file: !3958, line: 129, column: 9)
!4038 = !DILocation(line: 140, column: 15, scope: !4037)
!4039 = !DILocation(line: 141, column: 21, scope: !4036)
!4040 = !DILocation(line: 141, column: 13, scope: !4036)
!4041 = !DILocation(line: 144, column: 21, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !3958, line: 144, column: 21)
!4043 = distinct !DILexicalBlock(scope: !4036, file: !3958, line: 142, column: 15)
!4044 = !DILocation(line: 144, column: 29, scope: !4042)
!4045 = !DILocation(line: 144, column: 21, scope: !4043)
!4046 = !DILocation(line: 152, column: 17, scope: !4043)
!4047 = !DILocation(line: 157, column: 7, scope: !3978)
!4048 = !DILocalVariable(name: "err", scope: !4049, file: !3958, line: 64, type: !3961)
!4049 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3958, file: !3958, line: 62, type: !4050, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!3961, !3962, !85, !85}
!4052 = !{!4053, !4054, !4055, !4048}
!4053 = !DILocalVariable(name: "x", arg: 1, scope: !4049, file: !3958, line: 62, type: !3962)
!4054 = !DILocalVariable(name: "base", arg: 2, scope: !4049, file: !3958, line: 62, type: !85)
!4055 = !DILocalVariable(name: "power", arg: 3, scope: !4049, file: !3958, line: 62, type: !85)
!4056 = !DILocation(line: 0, scope: !4049, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 219, column: 22, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3978, file: !3958, line: 158, column: 9)
!4059 = !DILocalVariable(name: "x", arg: 1, scope: !4060, file: !3958, line: 47, type: !3962)
!4060 = distinct !DISubprogram(name: "bkm_scale", scope: !3958, file: !3958, line: 47, type: !4061, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!3961, !3962, !85}
!4063 = !{!4059, !4064, !4065}
!4064 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4060, file: !3958, line: 47, type: !85)
!4065 = !DILocalVariable(name: "scaled", scope: !4060, file: !3958, line: 49, type: !825)
!4066 = !DILocation(line: 0, scope: !4060, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4057)
!4068 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4067)
!4069 = distinct !DILexicalBlock(scope: !4060, file: !3958, line: 50, column: 7)
!4070 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4067)
!4071 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4057)
!4072 = !DILocation(line: 227, column: 11, scope: !3978)
!4073 = !DILocation(line: 0, scope: !4049, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 215, column: 22, scope: !4058)
!4075 = !DILocation(line: 0, scope: !4060, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4074)
!4077 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4076)
!4078 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4076)
!4079 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4074)
!4080 = !DILocation(line: 0, scope: !4049, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 202, column: 22, scope: !4058)
!4082 = !DILocation(line: 0, scope: !4060, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4081)
!4084 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4083)
!4085 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4083)
!4086 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4081)
!4087 = !DILocation(line: 0, scope: !4049, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 198, column: 22, scope: !4058)
!4089 = !DILocation(line: 0, scope: !4060, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4088)
!4091 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4090)
!4092 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4090)
!4093 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4088)
!4094 = !DILocation(line: 0, scope: !4049, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 194, column: 22, scope: !4058)
!4096 = !DILocation(line: 0, scope: !4060, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4095)
!4098 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4097)
!4099 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4097)
!4100 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4095)
!4101 = !DILocation(line: 0, scope: !4049, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 175, column: 22, scope: !4058)
!4103 = !DILocation(line: 0, scope: !4060, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4102)
!4105 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4104)
!4106 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4104)
!4107 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4102)
!4108 = !DILocation(line: 0, scope: !4060, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 160, column: 22, scope: !4058)
!4110 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4109)
!4111 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4109)
!4112 = !DILocation(line: 161, column: 11, scope: !4058)
!4113 = !DILocation(line: 0, scope: !4060, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 167, column: 22, scope: !4058)
!4115 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4114)
!4116 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4114)
!4117 = !DILocation(line: 168, column: 11, scope: !4058)
!4118 = !DILocation(line: 0, scope: !4049, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 180, column: 22, scope: !4058)
!4120 = !DILocation(line: 0, scope: !4060, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4119)
!4122 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4121)
!4123 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4121)
!4124 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4119)
!4125 = !DILocation(line: 0, scope: !4049, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 185, column: 22, scope: !4058)
!4127 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4126)
!4129 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4128)
!4130 = !DILocation(line: 0, scope: !4060, inlinedAt: !4128)
!4131 = !DILocation(line: 0, scope: !4049, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 190, column: 22, scope: !4058)
!4133 = !DILocation(line: 0, scope: !4060, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4132)
!4135 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4134)
!4136 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4134)
!4137 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4132)
!4138 = !DILocation(line: 0, scope: !4049, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 207, column: 22, scope: !4058)
!4140 = !DILocation(line: 0, scope: !4060, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 66, column: 12, scope: !4049, inlinedAt: !4139)
!4142 = !DILocation(line: 50, column: 7, scope: !4069, inlinedAt: !4141)
!4143 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4141)
!4144 = !DILocation(line: 66, column: 9, scope: !4049, inlinedAt: !4139)
!4145 = !DILocation(line: 0, scope: !4060, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 211, column: 22, scope: !4058)
!4147 = !DILocation(line: 50, column: 7, scope: !4060, inlinedAt: !4146)
!4148 = !DILocation(line: 212, column: 11, scope: !4058)
!4149 = !DILocation(line: 0, scope: !4058)
!4150 = !DILocation(line: 228, column: 10, scope: !3978)
!4151 = !DILocation(line: 229, column: 11, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !3978, file: !3958, line: 229, column: 11)
!4153 = !DILocation(line: 229, column: 11, scope: !3978)
!4154 = !DILocation(line: 223, column: 16, scope: !4058)
!4155 = !DILocation(line: 224, column: 22, scope: !4058)
!4156 = !DILocation(line: 100, column: 11, scope: !4006)
!4157 = !DILocation(line: 92, column: 16, scope: !3957)
!4158 = !DILocation(line: 233, column: 8, scope: !3957)
!4159 = !DILocation(line: 234, column: 3, scope: !3957)
!4160 = !DILocation(line: 235, column: 1, scope: !3957)
!4161 = !DISubprogram(name: "strtoumax", scope: !4162, file: !4162, line: 301, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!825, !924, !4165, !85}
!4165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1083)
!4166 = distinct !DISubprogram(name: "close_stream", scope: !829, file: !829, line: 55, type: !4167, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4203)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!85, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4171, file: !251, line: 51, baseType: !85, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4171, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4171, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4171, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4171, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4171, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4171, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4171, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4171, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4171, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4171, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4171, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4171, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4171, file: !251, line: 70, baseType: !4187, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4171, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4171, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4171, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4171, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4171, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4171, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4171, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4171, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4171, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4171, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4171, file: !251, line: 93, baseType: !4187, size: 64, offset: 1344)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4171, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4171, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4171, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4171, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4203 = !{!4204, !4205, !4207, !4208}
!4204 = !DILocalVariable(name: "stream", arg: 1, scope: !4166, file: !829, line: 55, type: !4169)
!4205 = !DILocalVariable(name: "some_pending", scope: !4166, file: !829, line: 57, type: !4206)
!4206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!4207 = !DILocalVariable(name: "prev_fail", scope: !4166, file: !829, line: 58, type: !4206)
!4208 = !DILocalVariable(name: "fclose_fail", scope: !4166, file: !829, line: 59, type: !4206)
!4209 = !DILocation(line: 0, scope: !4166)
!4210 = !DILocation(line: 57, column: 30, scope: !4166)
!4211 = !DILocalVariable(name: "__stream", arg: 1, scope: !4212, file: !1469, line: 135, type: !4169)
!4212 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1469, file: !1469, line: 135, type: !4167, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !828, retainedNodes: !4213)
!4213 = !{!4211}
!4214 = !DILocation(line: 0, scope: !4212, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 58, column: 27, scope: !4166)
!4216 = !DILocation(line: 137, column: 10, scope: !4212, inlinedAt: !4215)
!4217 = !{!1478, !934, i64 0}
!4218 = !DILocation(line: 58, column: 43, scope: !4166)
!4219 = !DILocation(line: 59, column: 29, scope: !4166)
!4220 = !DILocation(line: 59, column: 45, scope: !4166)
!4221 = !DILocation(line: 69, column: 17, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4166, file: !829, line: 69, column: 7)
!4223 = !DILocation(line: 57, column: 50, scope: !4166)
!4224 = !DILocation(line: 69, column: 33, scope: !4222)
!4225 = !DILocation(line: 69, column: 53, scope: !4222)
!4226 = !DILocation(line: 69, column: 59, scope: !4222)
!4227 = !DILocation(line: 69, column: 7, scope: !4166)
!4228 = !DILocation(line: 71, column: 11, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4222, file: !829, line: 70, column: 5)
!4230 = !DILocation(line: 72, column: 9, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4229, file: !829, line: 71, column: 11)
!4232 = !DILocation(line: 72, column: 15, scope: !4231)
!4233 = !DILocation(line: 77, column: 1, scope: !4166)
!4234 = !DISubprogram(name: "__fpending", scope: !4235, file: !4235, line: 75, type: !4236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4235 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!136, !4169}
!4238 = distinct !DISubprogram(name: "rpl_fclose", scope: !831, file: !831, line: 58, type: !4239, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4275)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!85, !4241}
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4243)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4244)
!4244 = !{!4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4243, file: !251, line: 51, baseType: !85, size: 32)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4243, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4243, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4243, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4243, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4243, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4243, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4243, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4243, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4243, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4243, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4243, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4243, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4243, file: !251, line: 70, baseType: !4259, size: 64, offset: 832)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4243, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4243, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4243, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4243, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4243, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4243, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4243, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4243, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4243, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4243, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4243, file: !251, line: 93, baseType: !4259, size: 64, offset: 1344)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4243, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4243, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4243, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4243, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DILocalVariable(name: "fp", arg: 1, scope: !4238, file: !831, line: 58, type: !4241)
!4277 = !DILocalVariable(name: "saved_errno", scope: !4238, file: !831, line: 60, type: !85)
!4278 = !DILocalVariable(name: "fd", scope: !4238, file: !831, line: 63, type: !85)
!4279 = !DILocalVariable(name: "result", scope: !4238, file: !831, line: 74, type: !85)
!4280 = !DILocation(line: 0, scope: !4238)
!4281 = !DILocation(line: 63, column: 12, scope: !4238)
!4282 = !DILocation(line: 64, column: 10, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4238, file: !831, line: 64, column: 7)
!4284 = !DILocation(line: 64, column: 7, scope: !4238)
!4285 = !DILocation(line: 65, column: 12, scope: !4283)
!4286 = !DILocation(line: 65, column: 5, scope: !4283)
!4287 = !DILocation(line: 70, column: 9, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4238, file: !831, line: 70, column: 7)
!4289 = !DILocation(line: 70, column: 23, scope: !4288)
!4290 = !DILocation(line: 70, column: 33, scope: !4288)
!4291 = !DILocation(line: 70, column: 26, scope: !4288)
!4292 = !DILocation(line: 70, column: 59, scope: !4288)
!4293 = !DILocation(line: 71, column: 7, scope: !4288)
!4294 = !DILocation(line: 71, column: 10, scope: !4288)
!4295 = !DILocation(line: 70, column: 7, scope: !4238)
!4296 = !DILocation(line: 100, column: 12, scope: !4238)
!4297 = !DILocation(line: 105, column: 7, scope: !4238)
!4298 = !DILocation(line: 72, column: 19, scope: !4288)
!4299 = !DILocation(line: 105, column: 19, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4238, file: !831, line: 105, column: 7)
!4301 = !DILocation(line: 107, column: 13, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4300, file: !831, line: 106, column: 5)
!4303 = !DILocation(line: 109, column: 5, scope: !4302)
!4304 = !DILocation(line: 112, column: 1, scope: !4238)
!4305 = !DISubprogram(name: "fileno", scope: !464, file: !464, line: 809, type: !4239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4306 = !DISubprogram(name: "fclose", scope: !464, file: !464, line: 178, type: !4239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4307 = !DISubprogram(name: "__freading", scope: !4235, file: !4235, line: 51, type: !4239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4308 = !DISubprogram(name: "lseek", scope: !1346, file: !1346, line: 339, type: !4309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!273, !85, !273, !85}
!4311 = distinct !DISubprogram(name: "rpl_fflush", scope: !833, file: !833, line: 130, type: !4312, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4348)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!85, !4314}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4316)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4317)
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4316, file: !251, line: 51, baseType: !85, size: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4316, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4316, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4316, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4316, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4316, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4316, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4316, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4316, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4316, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4316, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4316, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4316, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4316, file: !251, line: 70, baseType: !4332, size: 64, offset: 832)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4316, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4316, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4316, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4316, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4316, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4316, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4316, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4316, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4316, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4316, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4316, file: !251, line: 93, baseType: !4332, size: 64, offset: 1344)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4316, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4316, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4316, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4316, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4348 = !{!4349}
!4349 = !DILocalVariable(name: "stream", arg: 1, scope: !4311, file: !833, line: 130, type: !4314)
!4350 = !DILocation(line: 0, scope: !4311)
!4351 = !DILocation(line: 151, column: 14, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4311, file: !833, line: 151, column: 7)
!4353 = !DILocation(line: 151, column: 22, scope: !4352)
!4354 = !DILocation(line: 151, column: 27, scope: !4352)
!4355 = !DILocation(line: 151, column: 7, scope: !4311)
!4356 = !DILocation(line: 152, column: 12, scope: !4352)
!4357 = !DILocation(line: 152, column: 5, scope: !4352)
!4358 = !DILocalVariable(name: "fp", arg: 1, scope: !4359, file: !833, line: 42, type: !4314)
!4359 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !833, file: !833, line: 42, type: !4360, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !832, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4314}
!4362 = !{!4358}
!4363 = !DILocation(line: 0, scope: !4359, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 157, column: 3, scope: !4311)
!4365 = !DILocation(line: 44, column: 12, scope: !4366, inlinedAt: !4364)
!4366 = distinct !DILexicalBlock(scope: !4359, file: !833, line: 44, column: 7)
!4367 = !DILocation(line: 44, column: 19, scope: !4366, inlinedAt: !4364)
!4368 = !DILocation(line: 44, column: 7, scope: !4359, inlinedAt: !4364)
!4369 = !DILocation(line: 46, column: 5, scope: !4366, inlinedAt: !4364)
!4370 = !DILocation(line: 159, column: 10, scope: !4311)
!4371 = !DILocation(line: 159, column: 3, scope: !4311)
!4372 = !DILocation(line: 236, column: 1, scope: !4311)
!4373 = !DISubprogram(name: "fflush", scope: !464, file: !464, line: 230, type: !4312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4374 = distinct !DISubprogram(name: "rpl_fseeko", scope: !835, file: !835, line: 28, type: !4375, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !4412)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!85, !4377, !4411, !85}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !4379)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4379, file: !251, line: 51, baseType: !85, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4379, file: !251, line: 54, baseType: !128, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4379, file: !251, line: 55, baseType: !128, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4379, file: !251, line: 56, baseType: !128, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4379, file: !251, line: 57, baseType: !128, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4379, file: !251, line: 58, baseType: !128, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4379, file: !251, line: 59, baseType: !128, size: 64, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4379, file: !251, line: 60, baseType: !128, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4379, file: !251, line: 61, baseType: !128, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4379, file: !251, line: 64, baseType: !128, size: 64, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4379, file: !251, line: 65, baseType: !128, size: 64, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4379, file: !251, line: 66, baseType: !128, size: 64, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4379, file: !251, line: 68, baseType: !266, size: 64, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4379, file: !251, line: 70, baseType: !4395, size: 64, offset: 832)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4379, file: !251, line: 72, baseType: !85, size: 32, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4379, file: !251, line: 73, baseType: !85, size: 32, offset: 928)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4379, file: !251, line: 74, baseType: !273, size: 64, offset: 960)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4379, file: !251, line: 77, baseType: !135, size: 16, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4379, file: !251, line: 78, baseType: !277, size: 8, offset: 1040)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4379, file: !251, line: 79, baseType: !61, size: 8, offset: 1048)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4379, file: !251, line: 81, baseType: !280, size: 64, offset: 1088)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4379, file: !251, line: 89, baseType: !283, size: 64, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4379, file: !251, line: 91, baseType: !285, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4379, file: !251, line: 92, baseType: !288, size: 64, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4379, file: !251, line: 93, baseType: !4395, size: 64, offset: 1344)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4379, file: !251, line: 94, baseType: !129, size: 64, offset: 1408)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4379, file: !251, line: 95, baseType: !136, size: 64, offset: 1472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4379, file: !251, line: 96, baseType: !85, size: 32, offset: 1536)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4379, file: !251, line: 98, baseType: !295, size: 160, offset: 1568)
!4411 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !464, line: 63, baseType: !273)
!4412 = !{!4413, !4414, !4415, !4416}
!4413 = !DILocalVariable(name: "fp", arg: 1, scope: !4374, file: !835, line: 28, type: !4377)
!4414 = !DILocalVariable(name: "offset", arg: 2, scope: !4374, file: !835, line: 28, type: !4411)
!4415 = !DILocalVariable(name: "whence", arg: 3, scope: !4374, file: !835, line: 28, type: !85)
!4416 = !DILocalVariable(name: "pos", scope: !4417, file: !835, line: 123, type: !4411)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !835, line: 119, column: 5)
!4418 = distinct !DILexicalBlock(scope: !4374, file: !835, line: 55, column: 7)
!4419 = !DILocation(line: 0, scope: !4374)
!4420 = !DILocation(line: 55, column: 12, scope: !4418)
!4421 = !{!1478, !865, i64 16}
!4422 = !DILocation(line: 55, column: 33, scope: !4418)
!4423 = !{!1478, !865, i64 8}
!4424 = !DILocation(line: 55, column: 25, scope: !4418)
!4425 = !DILocation(line: 56, column: 7, scope: !4418)
!4426 = !DILocation(line: 56, column: 15, scope: !4418)
!4427 = !DILocation(line: 56, column: 37, scope: !4418)
!4428 = !{!1478, !865, i64 32}
!4429 = !DILocation(line: 56, column: 29, scope: !4418)
!4430 = !DILocation(line: 57, column: 7, scope: !4418)
!4431 = !DILocation(line: 57, column: 15, scope: !4418)
!4432 = !{!1478, !865, i64 72}
!4433 = !DILocation(line: 57, column: 29, scope: !4418)
!4434 = !DILocation(line: 55, column: 7, scope: !4374)
!4435 = !DILocation(line: 123, column: 26, scope: !4417)
!4436 = !DILocation(line: 123, column: 19, scope: !4417)
!4437 = !DILocation(line: 0, scope: !4417)
!4438 = !DILocation(line: 124, column: 15, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4417, file: !835, line: 124, column: 11)
!4440 = !DILocation(line: 124, column: 11, scope: !4417)
!4441 = !DILocation(line: 135, column: 19, scope: !4417)
!4442 = !DILocation(line: 136, column: 12, scope: !4417)
!4443 = !DILocation(line: 136, column: 20, scope: !4417)
!4444 = !{!1478, !1221, i64 144}
!4445 = !DILocation(line: 167, column: 7, scope: !4417)
!4446 = !DILocation(line: 169, column: 10, scope: !4374)
!4447 = !DILocation(line: 169, column: 3, scope: !4374)
!4448 = !DILocation(line: 170, column: 1, scope: !4374)
!4449 = !DISubprogram(name: "fseeko", scope: !464, file: !464, line: 736, type: !4450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!85, !4377, !273, !85}
!4452 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !739, file: !739, line: 100, type: !4453, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !4456)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!136, !2025, !138, !136, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!4456 = !{!4457, !4458, !4459, !4460, !4461}
!4457 = !DILocalVariable(name: "pwc", arg: 1, scope: !4452, file: !739, line: 100, type: !2025)
!4458 = !DILocalVariable(name: "s", arg: 2, scope: !4452, file: !739, line: 100, type: !138)
!4459 = !DILocalVariable(name: "n", arg: 3, scope: !4452, file: !739, line: 100, type: !136)
!4460 = !DILocalVariable(name: "ps", arg: 4, scope: !4452, file: !739, line: 100, type: !4455)
!4461 = !DILocalVariable(name: "ret", scope: !4452, file: !739, line: 130, type: !136)
!4462 = !DILocation(line: 0, scope: !4452)
!4463 = !DILocation(line: 105, column: 9, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4452, file: !739, line: 105, column: 7)
!4465 = !DILocation(line: 105, column: 7, scope: !4452)
!4466 = !DILocation(line: 117, column: 10, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4452, file: !739, line: 117, column: 7)
!4468 = !DILocation(line: 117, column: 7, scope: !4452)
!4469 = !DILocation(line: 130, column: 16, scope: !4452)
!4470 = !DILocation(line: 135, column: 11, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4452, file: !739, line: 135, column: 7)
!4472 = !DILocation(line: 135, column: 25, scope: !4471)
!4473 = !DILocation(line: 135, column: 30, scope: !4471)
!4474 = !DILocation(line: 135, column: 7, scope: !4452)
!4475 = !DILocalVariable(name: "ps", arg: 1, scope: !4476, file: !1998, line: 1135, type: !4455)
!4476 = distinct !DISubprogram(name: "mbszero", scope: !1998, file: !1998, line: 1135, type: !4477, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !4455}
!4479 = !{!4475}
!4480 = !DILocation(line: 0, scope: !4476, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 137, column: 5, scope: !4471)
!4482 = !DILocalVariable(name: "__dest", arg: 1, scope: !4483, file: !2007, line: 57, type: !129)
!4483 = distinct !DISubprogram(name: "memset", scope: !2007, file: !2007, line: 57, type: !2008, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !4484)
!4484 = !{!4482, !4485, !4486}
!4485 = !DILocalVariable(name: "__ch", arg: 2, scope: !4483, file: !2007, line: 57, type: !85)
!4486 = !DILocalVariable(name: "__len", arg: 3, scope: !4483, file: !2007, line: 57, type: !136)
!4487 = !DILocation(line: 0, scope: !4483, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 1137, column: 3, scope: !4476, inlinedAt: !4481)
!4489 = !DILocation(line: 59, column: 10, scope: !4483, inlinedAt: !4488)
!4490 = !DILocation(line: 137, column: 5, scope: !4471)
!4491 = !DILocation(line: 138, column: 11, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4452, file: !739, line: 138, column: 7)
!4493 = !DILocation(line: 138, column: 7, scope: !4452)
!4494 = !DILocation(line: 139, column: 5, scope: !4492)
!4495 = !DILocation(line: 143, column: 26, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4452, file: !739, line: 143, column: 7)
!4497 = !DILocation(line: 143, column: 41, scope: !4496)
!4498 = !DILocation(line: 143, column: 7, scope: !4452)
!4499 = !DILocation(line: 145, column: 15, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !739, line: 145, column: 11)
!4501 = distinct !DILexicalBlock(scope: !4496, file: !739, line: 144, column: 5)
!4502 = !DILocation(line: 145, column: 11, scope: !4501)
!4503 = !DILocation(line: 146, column: 32, scope: !4500)
!4504 = !DILocation(line: 146, column: 16, scope: !4500)
!4505 = !DILocation(line: 146, column: 14, scope: !4500)
!4506 = !DILocation(line: 146, column: 9, scope: !4500)
!4507 = !DILocation(line: 286, column: 1, scope: !4452)
!4508 = !DISubprogram(name: "mbsinit", scope: !4509, file: !4509, line: 293, type: !4510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4509 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!85, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!4514 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !837, file: !837, line: 27, type: !3513, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4515)
!4515 = !{!4516, !4517, !4518, !4519}
!4516 = !DILocalVariable(name: "ptr", arg: 1, scope: !4514, file: !837, line: 27, type: !129)
!4517 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4514, file: !837, line: 27, type: !136)
!4518 = !DILocalVariable(name: "size", arg: 3, scope: !4514, file: !837, line: 27, type: !136)
!4519 = !DILocalVariable(name: "nbytes", scope: !4514, file: !837, line: 29, type: !136)
!4520 = !DILocation(line: 0, scope: !4514)
!4521 = !DILocation(line: 30, column: 7, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4514, file: !837, line: 30, column: 7)
!4523 = !DILocation(line: 30, column: 7, scope: !4514)
!4524 = !DILocation(line: 32, column: 7, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !837, line: 31, column: 5)
!4526 = !DILocation(line: 32, column: 13, scope: !4525)
!4527 = !DILocation(line: 33, column: 7, scope: !4525)
!4528 = !DILocalVariable(name: "ptr", arg: 1, scope: !4529, file: !3605, line: 2057, type: !129)
!4529 = distinct !DISubprogram(name: "rpl_realloc", scope: !3605, file: !3605, line: 2057, type: !3597, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4530)
!4530 = !{!4528, !4531}
!4531 = !DILocalVariable(name: "size", arg: 2, scope: !4529, file: !3605, line: 2057, type: !136)
!4532 = !DILocation(line: 0, scope: !4529, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 37, column: 10, scope: !4514)
!4534 = !DILocation(line: 2059, column: 24, scope: !4529, inlinedAt: !4533)
!4535 = !DILocation(line: 2059, column: 10, scope: !4529, inlinedAt: !4533)
!4536 = !DILocation(line: 37, column: 3, scope: !4514)
!4537 = !DILocation(line: 38, column: 1, scope: !4514)
!4538 = distinct !DISubprogram(name: "hard_locale", scope: !757, file: !757, line: 28, type: !4539, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!234, !85}
!4541 = !{!4542, !4543}
!4542 = !DILocalVariable(name: "category", arg: 1, scope: !4538, file: !757, line: 28, type: !85)
!4543 = !DILocalVariable(name: "locale", scope: !4538, file: !757, line: 30, type: !4544)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4545)
!4545 = !{!4546}
!4546 = !DISubrange(count: 257)
!4547 = distinct !DIAssignID()
!4548 = !DILocation(line: 0, scope: !4538)
!4549 = !DILocation(line: 30, column: 3, scope: !4538)
!4550 = !DILocation(line: 32, column: 7, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4538, file: !757, line: 32, column: 7)
!4552 = !DILocation(line: 32, column: 7, scope: !4538)
!4553 = !DILocalVariable(name: "__s1", arg: 1, scope: !4554, file: !946, line: 1359, type: !138)
!4554 = distinct !DISubprogram(name: "streq", scope: !946, file: !946, line: 1359, type: !947, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !838, retainedNodes: !4555)
!4555 = !{!4553, !4556}
!4556 = !DILocalVariable(name: "__s2", arg: 2, scope: !4554, file: !946, line: 1359, type: !138)
!4557 = !DILocation(line: 0, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 35, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4538, file: !757, line: 35, column: 7)
!4560 = !DILocation(line: 1361, column: 11, scope: !4554, inlinedAt: !4558)
!4561 = !DILocation(line: 1361, column: 10, scope: !4554, inlinedAt: !4558)
!4562 = !DILocation(line: 35, column: 29, scope: !4559)
!4563 = !DILocation(line: 0, scope: !4554, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 35, column: 32, scope: !4559)
!4565 = !DILocation(line: 1361, column: 11, scope: !4554, inlinedAt: !4564)
!4566 = !DILocation(line: 1361, column: 10, scope: !4554, inlinedAt: !4564)
!4567 = !DILocation(line: 35, column: 7, scope: !4538)
!4568 = !DILocation(line: 46, column: 3, scope: !4538)
!4569 = !DILocation(line: 47, column: 1, scope: !4538)
!4570 = distinct !DISubprogram(name: "setlocale_null_r", scope: !841, file: !841, line: 154, type: !4571, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!85, !85, !128, !136}
!4573 = !{!4574, !4575, !4576}
!4574 = !DILocalVariable(name: "category", arg: 1, scope: !4570, file: !841, line: 154, type: !85)
!4575 = !DILocalVariable(name: "buf", arg: 2, scope: !4570, file: !841, line: 154, type: !128)
!4576 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4570, file: !841, line: 154, type: !136)
!4577 = !DILocation(line: 0, scope: !4570)
!4578 = !DILocation(line: 159, column: 10, scope: !4570)
!4579 = !DILocation(line: 159, column: 3, scope: !4570)
!4580 = distinct !DISubprogram(name: "setlocale_null", scope: !841, file: !841, line: 186, type: !4581, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !840, retainedNodes: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!138, !85}
!4583 = !{!4584}
!4584 = !DILocalVariable(name: "category", arg: 1, scope: !4580, file: !841, line: 186, type: !85)
!4585 = !DILocation(line: 0, scope: !4580)
!4586 = !DILocation(line: 189, column: 10, scope: !4580)
!4587 = !DILocation(line: 189, column: 3, scope: !4580)
!4588 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !843, file: !843, line: 35, type: !4581, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4589)
!4589 = !{!4590, !4591}
!4590 = !DILocalVariable(name: "category", arg: 1, scope: !4588, file: !843, line: 35, type: !85)
!4591 = !DILocalVariable(name: "result", scope: !4588, file: !843, line: 37, type: !138)
!4592 = !DILocation(line: 0, scope: !4588)
!4593 = !DILocation(line: 37, column: 24, scope: !4588)
!4594 = !DILocation(line: 62, column: 3, scope: !4588)
!4595 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !843, file: !843, line: 66, type: !4571, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601}
!4597 = !DILocalVariable(name: "category", arg: 1, scope: !4595, file: !843, line: 66, type: !85)
!4598 = !DILocalVariable(name: "buf", arg: 2, scope: !4595, file: !843, line: 66, type: !128)
!4599 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4595, file: !843, line: 66, type: !136)
!4600 = !DILocalVariable(name: "result", scope: !4595, file: !843, line: 111, type: !138)
!4601 = !DILocalVariable(name: "length", scope: !4602, file: !843, line: 125, type: !136)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !843, line: 124, column: 5)
!4603 = distinct !DILexicalBlock(scope: !4595, file: !843, line: 113, column: 7)
!4604 = !DILocation(line: 0, scope: !4595)
!4605 = !DILocation(line: 0, scope: !4588, inlinedAt: !4606)
!4606 = distinct !DILocation(line: 111, column: 24, scope: !4595)
!4607 = !DILocation(line: 37, column: 24, scope: !4588, inlinedAt: !4606)
!4608 = !DILocation(line: 113, column: 14, scope: !4603)
!4609 = !DILocation(line: 113, column: 7, scope: !4595)
!4610 = !DILocation(line: 116, column: 19, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !843, line: 116, column: 11)
!4612 = distinct !DILexicalBlock(scope: !4603, file: !843, line: 114, column: 5)
!4613 = !DILocation(line: 116, column: 11, scope: !4612)
!4614 = !DILocation(line: 120, column: 16, scope: !4611)
!4615 = !DILocation(line: 120, column: 9, scope: !4611)
!4616 = !DILocation(line: 125, column: 23, scope: !4602)
!4617 = !DILocation(line: 0, scope: !4602)
!4618 = !DILocation(line: 126, column: 18, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4602, file: !843, line: 126, column: 11)
!4620 = !DILocation(line: 126, column: 11, scope: !4602)
!4621 = !DILocation(line: 128, column: 39, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !843, line: 127, column: 9)
!4623 = !DILocalVariable(name: "__dest", arg: 1, scope: !4624, file: !2007, line: 26, type: !3875)
!4624 = distinct !DISubprogram(name: "memcpy", scope: !2007, file: !2007, line: 26, type: !3873, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !842, retainedNodes: !4625)
!4625 = !{!4623, !4626, !4627}
!4626 = !DILocalVariable(name: "__src", arg: 2, scope: !4624, file: !2007, line: 26, type: !1077)
!4627 = !DILocalVariable(name: "__len", arg: 3, scope: !4624, file: !2007, line: 26, type: !136)
!4628 = !DILocation(line: 0, scope: !4624, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 128, column: 11, scope: !4622)
!4630 = !DILocation(line: 29, column: 10, scope: !4624, inlinedAt: !4629)
!4631 = !DILocation(line: 129, column: 11, scope: !4622)
!4632 = !DILocation(line: 133, column: 23, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !843, line: 133, column: 15)
!4634 = distinct !DILexicalBlock(scope: !4619, file: !843, line: 132, column: 9)
!4635 = !DILocation(line: 133, column: 15, scope: !4634)
!4636 = !DILocation(line: 138, column: 44, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4633, file: !843, line: 134, column: 13)
!4638 = !DILocation(line: 0, scope: !4624, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 138, column: 15, scope: !4637)
!4640 = !DILocation(line: 29, column: 10, scope: !4624, inlinedAt: !4639)
!4641 = !DILocation(line: 139, column: 15, scope: !4637)
!4642 = !DILocation(line: 139, column: 32, scope: !4637)
!4643 = !DILocation(line: 140, column: 13, scope: !4637)
!4644 = !DILocation(line: 0, scope: !4603)
!4645 = !DILocation(line: 145, column: 1, scope: !4595)
