; ModuleID = 'src/nohup.bc'
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

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1, !dbg !81
@.str.18 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1, !dbg !88
@.str.20 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1, !dbg !98
@.str.22 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1, !dbg !103
@.str.23 = private unnamed_addr constant [65 x i8] c"ignoring input and redirecting standard error to standard output\00", align 1, !dbg !108
@.str.24 = private unnamed_addr constant [46 x i8] c"redirecting standard error to standard output\00", align 1, !dbg !113
@.str.25 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1, !dbg !118
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1, !dbg !123
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !128
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !191
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !193
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !195
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !200
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !240
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !242
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !244
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !249
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !251
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !253
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !258
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !260
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !262
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !264
@.str.54 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1, !dbg !266
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !280
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !282
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !287
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !292
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !297
@.str.31 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !381
@Version = dso_local local_unnamed_addr global ptr @.str.31, align 8, !dbg !384
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !388
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !401
@.str.34 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !393
@.str.1.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !395
@.str.2.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !397
@.str.3.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !399
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !403
@stderr = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !409
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !445
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !411
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !435
@.str.1.44 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !437
@.str.2.46 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !439
@.str.3.45 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !441
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !443
@.str.4.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !447
@.str.5.40 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !449
@.str.6.41 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !454
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !459
@opterr = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !477
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.64, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.65, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !480
@optind = external local_unnamed_addr global i32, align 4
@.str.1.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !485
@.str.2.64 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !487
@.str.3.65 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !489
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !501
@.str.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !507
@.str.1.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !509
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !511
@.str.77 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !542
@.str.1.78 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !545
@.str.2.79 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !547
@.str.3.80 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !549
@.str.4.81 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !551
@.str.5.82 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !553
@.str.6.83 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !555
@.str.7.84 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !557
@.str.8.85 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !559
@.str.9.86 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !561
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.77, ptr @.str.1.78, ptr @.str.2.79, ptr @.str.3.80, ptr @.str.4.81, ptr @.str.5.82, ptr @.str.6.83, ptr @.str.7.84, ptr @.str.8.85, ptr @.str.9.86, ptr null], align 8, !dbg !563
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !576
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !590
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !628
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !635
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !592
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !637
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !580
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !597
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !599
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !601
@.str.13.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !603
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !605
@.str.95 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !643
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !646
@.str.2.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !648
@.str.3.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !650
@.str.4.99 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !652
@.str.5.100 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !654
@.str.6.101 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !659
@.str.7.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !661
@.str.8.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !663
@.str.9.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !665
@.str.10.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !670
@.str.11.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !675
@.str.12.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !680
@.str.13.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !682
@.str.14.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !687
@.str.15.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !692
@.str.16.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !697
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.116 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !702
@.str.18.117 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !704
@.str.19.118 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !706
@.str.20.119 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !708
@.str.21.120 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !710
@.str.22.121 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !712
@.str.23.122 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !714
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !719
@exit_failure = dso_local global i32 1, align 4, !dbg !727
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !733
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !736
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !738
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !740
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !743
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !758
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !761

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !842 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !844, metadata !DIExpression()), !dbg !845
  %2 = icmp eq i32 %0, 0, !dbg !846
  br i1 %2, label %8, label %3, !dbg !848

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !849, !tbaa !851
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !849
  %6 = load ptr, ptr @program_name, align 8, !dbg !849, !tbaa !851
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !849
  br label %38, !dbg !849

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !855
  %10 = load ptr, ptr @program_name, align 8, !dbg !855, !tbaa !851
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #40, !dbg !855
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !857
  %13 = load ptr, ptr @stdout, align 8, !dbg !857, !tbaa !851
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !857
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !858
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !858
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !859
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !859
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !860
  %18 = load ptr, ptr @program_name, align 8, !dbg !860, !tbaa !851
  %19 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %17, ptr noundef %18) #40, !dbg !860
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !861
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #40, !dbg !861
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !867
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !869
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #40, !dbg !869
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !870, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata !887, metadata !881, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr poison, metadata !880, metadata !DIExpression()), !dbg !885
  tail call void @emit_bug_reporting_address() #40, !dbg !888
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !889
  call void @llvm.dbg.value(metadata ptr %24, metadata !883, metadata !DIExpression()), !dbg !885
  %25 = icmp eq ptr %24, null, !dbg !890
  br i1 %25, label %33, label %26, !dbg !892

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #41, !dbg !893
  %28 = icmp eq i32 %27, 0, !dbg !893
  br i1 %28, label %33, label %29, !dbg !894

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #40, !dbg !895
  %31 = load ptr, ptr @stdout, align 8, !dbg !895, !tbaa !851
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !895
  br label %33, !dbg !897

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !884, metadata !DIExpression()), !dbg !885
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #40, !dbg !898
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #40, !dbg !898
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #40, !dbg !899
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #40, !dbg !899
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !900
  unreachable, !dbg !900
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !901 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !905 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !911 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !914 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !130 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !303, metadata !DIExpression()), !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !917
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !918, !tbaa !919
  %3 = icmp eq i32 %2, -1, !dbg !921
  br i1 %3, label %4, label %16, !dbg !922

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #40, !dbg !923
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !305, metadata !DIExpression()), !dbg !924
  %6 = icmp eq ptr %5, null, !dbg !925
  br i1 %6, label %14, label %7, !dbg !926

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !927, !tbaa !928
  %9 = icmp eq i8 %8, 0, !dbg !927
  br i1 %9, label %14, label %10, !dbg !929

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !930, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !936, metadata !DIExpression()), !dbg !937
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #41, !dbg !939
  %12 = icmp eq i32 %11, 0, !dbg !940
  %13 = zext i1 %12 to i32, !dbg !929
  br label %14, !dbg !929

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !941, !tbaa !919
  br label %16, !dbg !942

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !943
  %18 = icmp eq i32 %17, 0, !dbg !943
  br i1 %18, label %22, label %19, !dbg !945

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !946, !tbaa !851
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !946
  br label %121, !dbg !948

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !308, metadata !DIExpression()), !dbg !917
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #41, !dbg !949
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !950
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !310, metadata !DIExpression()), !dbg !917
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !951
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !311, metadata !DIExpression()), !dbg !917
  %26 = icmp eq ptr %25, null, !dbg !952
  br i1 %26, label %53, label %27, !dbg !953

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !954
  br i1 %28, label %53, label %29, !dbg !955

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !312, metadata !DIExpression()), !dbg !956
  tail call void @llvm.dbg.value(metadata i64 0, metadata !316, metadata !DIExpression()), !dbg !956
  %30 = icmp ult ptr %24, %25, !dbg !957
  br i1 %30, label %31, label %53, !dbg !958

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !917
  %33 = load ptr, ptr %32, align 8, !tbaa !851
  br label %34, !dbg !958

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !312, metadata !DIExpression()), !dbg !956
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !316, metadata !DIExpression()), !dbg !956
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !959
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !312, metadata !DIExpression()), !dbg !956
  %38 = load i8, ptr %35, align 1, !dbg !959, !tbaa !928
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !959
  %41 = load i16, ptr %40, align 2, !dbg !959, !tbaa !960
  %42 = freeze i16 %41, !dbg !962
  %43 = lshr i16 %42, 13, !dbg !962
  %44 = and i16 %43, 1, !dbg !962
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !316, metadata !DIExpression()), !dbg !956
  %47 = icmp ult ptr %37, %25, !dbg !957
  %48 = icmp ult i64 %46, 2, !dbg !964
  %49 = select i1 %47, i1 %48, i1 false, !dbg !964
  br i1 %49, label %34, label %50, !dbg !958, !llvm.loop !965

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !963
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !967
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !969
  br label %53, !dbg !969

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !917
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !308, metadata !DIExpression()), !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !311, metadata !DIExpression()), !dbg !917
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.30) #41, !dbg !970
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !317, metadata !DIExpression()), !dbg !917
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !971
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !318, metadata !DIExpression()), !dbg !917
  br label %58, !dbg !972

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !917
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !308, metadata !DIExpression()), !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !318, metadata !DIExpression()), !dbg !917
  %61 = load i8, ptr %59, align 1, !dbg !973, !tbaa !928
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !974

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !975
  %64 = load i8, ptr %63, align 1, !dbg !978, !tbaa !928
  %65 = icmp ne i8 %64, 45, !dbg !979
  %66 = select i1 %65, i1 %60, i1 false, !dbg !980
  br label %67, !dbg !980

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !308, metadata !DIExpression()), !dbg !917
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !981
  %70 = load ptr, ptr %69, align 8, !dbg !981, !tbaa !851
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !981
  %73 = load i16, ptr %72, align 2, !dbg !981, !tbaa !960
  %74 = and i16 %73, 8192, !dbg !981
  %75 = icmp eq i16 %74, 0, !dbg !981
  br i1 %75, label %89, label %76, !dbg !983

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !984
  br i1 %77, label %91, label %78, !dbg !987

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !988
  %80 = load i8, ptr %79, align 1, !dbg !988, !tbaa !928
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !988
  %83 = load i16, ptr %82, align 2, !dbg !988, !tbaa !960
  %84 = and i16 %83, 8192, !dbg !988
  %85 = icmp eq i16 %84, 0, !dbg !988
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !989
  br i1 %88, label %89, label %91, !dbg !989

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !318, metadata !DIExpression()), !dbg !917
  br label %58, !dbg !972, !llvm.loop !991

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !917
  %92 = ptrtoint ptr %24 to i64, !dbg !993
  %93 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !851
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !930, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata !887, metadata !936, metadata !DIExpression()), !dbg !1012
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !376, metadata !DIExpression()), !dbg !917
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #41, !dbg !1014
  %96 = icmp eq i32 %95, 0, !dbg !1014
  br i1 %96, label %100, label %97, !dbg !1016

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #41, !dbg !1017
  %99 = icmp eq i32 %98, 0, !dbg !1017
  br i1 %99, label %100, label %103, !dbg !1018

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1019
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !1019
  br label %106, !dbg !1021

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1022
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !1022
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !851
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %107), !dbg !1024
  %109 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !851
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %109), !dbg !1025
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1026
  %112 = sub i64 %111, %92, !dbg !1026
  %113 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !851
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1026
  %115 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !851
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %115), !dbg !1027
  %117 = load ptr, ptr @stdout, align 8, !dbg !1028, !tbaa !851
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %117), !dbg !1028
  %119 = load ptr, ptr @stdout, align 8, !dbg !1029, !tbaa !851
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1029
  br label %121, !dbg !1030

121:                                              ; preds = %106, %19
  ret void, !dbg !1030
}

; Function Attrs: nounwind
declare !dbg !1031 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1035 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1039 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1041 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1044 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1047 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1050 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1053 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1059 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1060 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1066 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1071, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1072, metadata !DIExpression()), !dbg !1111
  %3 = load ptr, ptr %1, align 8, !dbg !1112, !tbaa !851
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1113
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #40, !dbg !1114
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #40, !dbg !1115
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #40, !dbg !1116
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.11) #40, !dbg !1117
  %8 = icmp eq ptr %7, null, !dbg !1117
  %9 = select i1 %8, i32 125, i32 127, !dbg !1117
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1073, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1118, metadata !DIExpression()), !dbg !1121
  store volatile i32 %9, ptr @exit_failure, align 4, !dbg !1123, !tbaa !919
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1125
  %11 = load ptr, ptr @Version, align 8, !dbg !1126, !tbaa !851
  %12 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #40, !dbg !1127
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %11, i1 noundef false, ptr noundef nonnull @usage, ptr noundef %12, ptr noundef null) #40, !dbg !1128
  %13 = load i32, ptr @optind, align 4, !dbg !1129, !tbaa !919
  %14 = icmp slt i32 %13, %0, !dbg !1131
  br i1 %14, label %17, label %15, !dbg !1132

15:                                               ; preds = %2
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1133
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #40, !dbg !1133
  tail call void @usage(i32 noundef %9) #44, !dbg !1135
  unreachable, !dbg !1135

17:                                               ; preds = %2
  %18 = tail call i32 @isatty(i32 noundef 0) #40, !dbg !1136
  %19 = icmp eq i32 %18, 0, !dbg !1136
  tail call void @llvm.dbg.value(metadata i1 %19, metadata !1074, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  %20 = tail call i32 @isatty(i32 noundef 1) #40, !dbg !1137
  %21 = icmp eq i32 %20, 0, !dbg !1137
  tail call void @llvm.dbg.value(metadata i1 %21, metadata !1075, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  br i1 %21, label %22, label %26, !dbg !1138

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #43, !dbg !1139
  %24 = load i32, ptr %23, align 4, !dbg !1139, !tbaa !919
  %25 = icmp eq i32 %24, 9, !dbg !1140
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ], !dbg !1111
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !1076, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  %28 = tail call i32 @isatty(i32 noundef 2) #40, !dbg !1141
  %29 = icmp eq i32 %28, 0, !dbg !1141
  tail call void @llvm.dbg.value(metadata i1 %29, metadata !1077, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1111
  br i1 %19, label %41, label %30, !dbg !1142

30:                                               ; preds = %26
  %31 = tail call i32 @fd_reopen(i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0) #40, !dbg !1143
  %32 = icmp slt i32 %31, 0, !dbg !1144
  br i1 %32, label %33, label %37, !dbg !1145

33:                                               ; preds = %30
  %34 = tail call ptr @__errno_location() #43, !dbg !1146
  %35 = load i32, ptr %34, align 4, !dbg !1146, !tbaa !919
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1146
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %35, ptr noundef %36) #40, !dbg !1146
  unreachable, !dbg !1146

37:                                               ; preds = %30
  %38 = select i1 %21, i1 %29, i1 false, !dbg !1147
  br i1 %38, label %39, label %41, !dbg !1147

39:                                               ; preds = %37
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1149
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40) #40, !dbg !1149
  br label %41, !dbg !1149

41:                                               ; preds = %37, %39, %26
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1084, metadata !DIExpression()), !dbg !1111
  %42 = xor i1 %27, true
  %43 = select i1 %29, i1 true, i1 %42
  %44 = select i1 %21, i1 %43, i1 false, !dbg !1150
  br i1 %44, label %87, label %45, !dbg !1150

45:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1085, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1088, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 1089, metadata !1089, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 384, metadata !1090, metadata !DIExpression()), !dbg !1151
  %46 = tail call i32 @umask(i32 noundef 0) #40, !dbg !1152
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !1094, metadata !DIExpression()), !dbg !1151
  br i1 %21, label %49, label %47, !dbg !1153

47:                                               ; preds = %45
  %48 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #40, !dbg !1154
  br label %51, !dbg !1153

49:                                               ; preds = %45
  %50 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #40, !dbg !1155
  br label %51, !dbg !1153

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ], !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1084, metadata !DIExpression()), !dbg !1111
  %53 = icmp slt i32 %52, 0, !dbg !1156
  br i1 %53, label %54, label %79, !dbg !1157

54:                                               ; preds = %51
  %55 = tail call ptr @__errno_location() #43, !dbg !1158
  %56 = load i32, ptr %55, align 4, !dbg !1158, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !1095, metadata !DIExpression()), !dbg !1159
  %57 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #40, !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !1098, metadata !DIExpression()), !dbg !1159
  %58 = icmp eq ptr %57, null, !dbg !1161
  br i1 %58, label %70, label %59, !dbg !1163

59:                                               ; preds = %54
  %60 = tail call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %57, ptr noundef nonnull @.str.18, ptr noundef null) #40, !dbg !1164
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !1085, metadata !DIExpression()), !dbg !1151
  br i1 %21, label %63, label %61, !dbg !1166

61:                                               ; preds = %59
  %62 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #40, !dbg !1167
  br label %65, !dbg !1166

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #40, !dbg !1168
  br label %65, !dbg !1166

65:                                               ; preds = %61, %63
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1084, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !1085, metadata !DIExpression()), !dbg !1151
  %67 = icmp sgt i32 %66, -1, !dbg !1169
  br i1 %67, label %79, label %68, !dbg !1170

68:                                               ; preds = %65
  %69 = load i32, ptr %55, align 4, !dbg !1171, !tbaa !919
  br label %70, !dbg !1170

70:                                               ; preds = %68, %54
  %71 = phi i32 [ %69, %68 ], [ %56, %54 ], !dbg !1171
  %72 = phi ptr [ %60, %68 ], [ null, %54 ]
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1099, metadata !DIExpression()), !dbg !1172
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !1173
  %74 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.18) #40, !dbg !1173
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %56, ptr noundef %73, ptr noundef %74) #40, !dbg !1173
  %75 = icmp eq ptr %72, null, !dbg !1174
  br i1 %75, label %127, label %76, !dbg !1176

76:                                               ; preds = %70
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !1177
  %78 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %72) #40, !dbg !1177
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %77, ptr noundef %78) #40, !dbg !1177
  tail call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1088, metadata !DIExpression()), !dbg !1151
  br label %127

79:                                               ; preds = %65, %51
  %80 = phi ptr [ @.str.18, %51 ], [ %60, %65 ], !dbg !1178
  %81 = phi ptr [ null, %51 ], [ %60, %65 ], !dbg !1151
  %82 = phi i32 [ %52, %51 ], [ %66, %65 ], !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1084, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !1085, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr %80, metadata !1088, metadata !DIExpression()), !dbg !1151
  %83 = tail call i32 @umask(i32 noundef %46) #40, !dbg !1179
  %84 = select i1 %19, ptr @.str.22, ptr @.str.21, !dbg !1180
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %84, i32 noundef 5) #40, !dbg !1180
  %86 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %80) #40, !dbg !1180
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #40, !dbg !1180
  tail call void @free(ptr noundef %81) #40, !dbg !1181
  br label %87

87:                                               ; preds = %79, %41
  %88 = phi i32 [ %82, %79 ], [ 1, %41 ], !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1084, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1102, metadata !DIExpression()), !dbg !1111
  br i1 %29, label %104, label %89, !dbg !1182

89:                                               ; preds = %87
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3) #40, !dbg !1183
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1102, metadata !DIExpression()), !dbg !1111
  br i1 %21, label %91, label %94, !dbg !1184

91:                                               ; preds = %89
  %92 = select i1 %19, ptr @.str.24, ptr @.str.23, !dbg !1185
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %92, i32 noundef 5) #40, !dbg !1185
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %93) #40, !dbg !1185
  br label %94, !dbg !1185

94:                                               ; preds = %91, %89
  %95 = tail call i32 @dup2(i32 noundef %88, i32 noundef 2) #40, !dbg !1187
  %96 = icmp slt i32 %95, 0, !dbg !1188
  br i1 %96, label %97, label %101, !dbg !1189

97:                                               ; preds = %94
  %98 = tail call ptr @__errno_location() #43, !dbg !1190
  %99 = load i32, ptr %98, align 4, !dbg !1190, !tbaa !919
  %100 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1190
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %99, ptr noundef %100) #40, !dbg !1190
  unreachable, !dbg !1190

101:                                              ; preds = %94
  br i1 %27, label %102, label %104, !dbg !1191

102:                                              ; preds = %101
  %103 = tail call i32 @close(i32 noundef %88) #40, !dbg !1192
  br label %104, !dbg !1192

104:                                              ; preds = %101, %102, %87
  %105 = phi i32 [ %90, %102 ], [ %90, %101 ], [ 2, %87 ], !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !1102, metadata !DIExpression()), !dbg !1111
  %106 = load ptr, ptr @stderr, align 8, !dbg !1194, !tbaa !851
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1196, metadata !DIExpression()), !dbg !1202
  %107 = load i32, ptr %106, align 8, !dbg !1204, !tbaa !1205
  %108 = and i32 %107, 32, !dbg !1194
  %109 = icmp eq i32 %108, 0, !dbg !1194
  br i1 %109, label %110, label %127, !dbg !1208

110:                                              ; preds = %104
  %111 = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1209
  %112 = load i32, ptr @optind, align 4, !dbg !1210, !tbaa !919
  %113 = sext i32 %112 to i64, !dbg !1211
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113, !dbg !1211
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !1108, metadata !DIExpression()), !dbg !1111
  %115 = load ptr, ptr %114, align 8, !dbg !1212, !tbaa !851
  %116 = tail call i32 @execvp(ptr noundef %115, ptr noundef nonnull %114) #40, !dbg !1213
  %117 = tail call ptr @__errno_location() #43, !dbg !1214
  %118 = load i32, ptr %117, align 4, !dbg !1214, !tbaa !919
  %119 = icmp eq i32 %118, 2, !dbg !1215
  %120 = select i1 %119, i32 127, i32 126, !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1109, metadata !DIExpression()), !dbg !1111
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !1110, metadata !DIExpression()), !dbg !1111
  %121 = tail call i32 @dup2(i32 noundef %105, i32 noundef 2) #40, !dbg !1216
  %122 = icmp eq i32 %121, 2, !dbg !1218
  br i1 %122, label %123, label %127, !dbg !1219

123:                                              ; preds = %110
  %124 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1220
  %125 = load ptr, ptr %114, align 8, !dbg !1220, !tbaa !851
  %126 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %125) #40, !dbg !1220
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %118, ptr noundef %124, ptr noundef %126) #40, !dbg !1220
  br label %127, !dbg !1220

127:                                              ; preds = %70, %76, %104, %123, %110
  %128 = phi i32 [ %9, %104 ], [ %120, %123 ], [ %120, %110 ], [ %9, %76 ], [ %9, %70 ], !dbg !1111
  ret i32 %128, !dbg !1221
}

; Function Attrs: nounwind
declare !dbg !1222 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1225 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1226 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1229 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1233 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1237 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1241 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1245 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1248 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1249 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1250 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1253 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1258 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1260, metadata !DIExpression()), !dbg !1261
  store ptr %0, ptr @file_name, align 8, !dbg !1262, !tbaa !851
  ret void, !dbg !1263
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1264 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1268, metadata !DIExpression()), !dbg !1269
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1270, !tbaa !1271
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1274 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1279, !tbaa !851
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1280
  %3 = icmp eq i32 %2, 0, !dbg !1281
  br i1 %3, label %22, label %4, !dbg !1282

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1283, !tbaa !1271, !range !1284, !noundef !887
  %6 = icmp eq i8 %5, 0, !dbg !1283
  br i1 %6, label %11, label %7, !dbg !1285

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1286
  %9 = load i32, ptr %8, align 4, !dbg !1286, !tbaa !919
  %10 = icmp eq i32 %9, 32, !dbg !1287
  br i1 %10, label %22, label %11, !dbg !1288

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1.35, i32 noundef 5) #40, !dbg !1289
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1276, metadata !DIExpression()), !dbg !1290
  %13 = load ptr, ptr @file_name, align 8, !dbg !1291, !tbaa !851
  %14 = icmp eq ptr %13, null, !dbg !1291
  %15 = tail call ptr @__errno_location() #43, !dbg !1293
  %16 = load i32, ptr %15, align 4, !dbg !1293, !tbaa !919
  br i1 %14, label %19, label %17, !dbg !1294

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1295
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.36, ptr noundef %18, ptr noundef %12) #40, !dbg !1295
  br label %20, !dbg !1295

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.37, ptr noundef %12) #40, !dbg !1296
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1297, !tbaa !919
  tail call void @_exit(i32 noundef %21) #42, !dbg !1298
  unreachable, !dbg !1298

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1299, !tbaa !851
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1301
  %25 = icmp eq i32 %24, 0, !dbg !1302
  br i1 %25, label %28, label %26, !dbg !1303

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1304, !tbaa !919
  tail call void @_exit(i32 noundef %27) #42, !dbg !1305
  unreachable, !dbg !1305

28:                                               ; preds = %22
  ret void, !dbg !1306
}

; Function Attrs: noreturn
declare !dbg !1307 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1308 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1312, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1313, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1314, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1315, metadata !DIExpression(DW_OP_deref)), !dbg !1316
  tail call fastcc void @flush_stdout(), !dbg !1317
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1318, !tbaa !851
  %7 = icmp eq ptr %6, null, !dbg !1318
  br i1 %7, label %9, label %8, !dbg !1320

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1321
  br label %13, !dbg !1321

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1322, !tbaa !851
  %11 = tail call ptr @getprogname() #41, !dbg !1322
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %11) #40, !dbg !1322
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1324, !tbaa.struct !1325
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1324
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1324
  ret void, !dbg !1326
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1327 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i32 1, metadata !1331, metadata !DIExpression()), !dbg !1334
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1337
  %2 = icmp slt i32 %1, 0, !dbg !1338
  br i1 %2, label %6, label %3, !dbg !1339

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1340, !tbaa !851
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1340
  br label %6, !dbg !1340

6:                                                ; preds = %3, %0
  ret void, !dbg !1341
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1342 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1348
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1344, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1345, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1346, metadata !DIExpression()), !dbg !1349
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1347, metadata !DIExpression(DW_OP_deref)), !dbg !1349
  %7 = load ptr, ptr @stderr, align 8, !dbg !1350, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1351, !noalias !1395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %7, metadata !1391, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata ptr %2, metadata !1392, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata ptr poison, metadata !1393, metadata !DIExpression(DW_OP_deref)), !dbg !1400
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1351, !noalias !1395
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1401, !tbaa !919
  %10 = add i32 %9, 1, !dbg !1401
  store i32 %10, ptr @error_message_count, align 4, !dbg !1401, !tbaa !919
  %11 = icmp eq i32 %1, 0, !dbg !1402
  br i1 %11, label %21, label %12, !dbg !1404

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1405, metadata !DIExpression(), metadata !1348, metadata ptr %5, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i32 %1, metadata !1408, metadata !DIExpression()), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1415
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %13, metadata !1409, metadata !DIExpression()), !dbg !1413
  %14 = icmp eq ptr %13, null, !dbg !1417
  br i1 %14, label %15, label %17, !dbg !1419

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.39, ptr noundef nonnull @.str.5.40, i32 noundef 5) #40, !dbg !1420
  call void @llvm.dbg.value(metadata ptr %16, metadata !1409, metadata !DIExpression()), !dbg !1413
  br label %17, !dbg !1421

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1413
  call void @llvm.dbg.value(metadata ptr %18, metadata !1409, metadata !DIExpression()), !dbg !1413
  %19 = load ptr, ptr @stderr, align 8, !dbg !1422, !tbaa !851
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.41, ptr noundef %18) #40, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1423
  br label %21, !dbg !1424

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1425, !tbaa !851
  call void @llvm.dbg.value(metadata i32 10, metadata !1426, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %22, metadata !1431, metadata !DIExpression()), !dbg !1432
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1434
  %24 = load ptr, ptr %23, align 8, !dbg !1434, !tbaa !1435
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1434
  %26 = load ptr, ptr %25, align 8, !dbg !1434, !tbaa !1436
  %27 = icmp ult ptr %24, %26, !dbg !1434
  br i1 %27, label %30, label %28, !dbg !1434, !prof !1437

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1434
  br label %32, !dbg !1434

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1434
  store ptr %31, ptr %23, align 8, !dbg !1434, !tbaa !1435
  store i8 10, ptr %24, align 1, !dbg !1434, !tbaa !928
  br label %32, !dbg !1434

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1438, !tbaa !851
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1438
  %35 = icmp eq i32 %0, 0, !dbg !1439
  br i1 %35, label %37, label %36, !dbg !1441

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1442
  unreachable, !dbg !1442

37:                                               ; preds = %32
  ret void, !dbg !1443
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

declare !dbg !1444 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1447 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1450 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1453 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1456 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1459 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1467
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1466, metadata !DIExpression(), metadata !1467, metadata ptr %4, metadata !DIExpression()), !dbg !1468
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1463, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1464, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1465, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1469
  call void @llvm.va_start(ptr nonnull %4), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1471, !tbaa.struct !1325
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1471
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1471
  call void @llvm.va_end(ptr nonnull %4), !dbg !1472
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1473
  ret void, !dbg !1473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !413 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !429, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !430, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !431, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !432, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !433, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !434, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1475, !tbaa !919
  %9 = icmp eq i32 %8, 0, !dbg !1475
  br i1 %9, label %24, label %10, !dbg !1477

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1478, !tbaa !919
  %12 = icmp eq i32 %11, %3, !dbg !1481
  br i1 %12, label %13, label %23, !dbg !1482

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1483, !tbaa !851
  %15 = icmp eq ptr %14, %2, !dbg !1484
  br i1 %15, label %37, label %16, !dbg !1485

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1486
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1487
  br i1 %19, label %20, label %23, !dbg !1487

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1488
  %22 = icmp eq i32 %21, 0, !dbg !1489
  br i1 %22, label %37, label %23, !dbg !1490

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1491, !tbaa !851
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1492, !tbaa !919
  br label %24, !dbg !1493

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1494
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1495, !tbaa !851
  %26 = icmp eq ptr %25, null, !dbg !1495
  br i1 %26, label %28, label %27, !dbg !1497

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1498
  br label %32, !dbg !1498

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1499, !tbaa !851
  %30 = tail call ptr @getprogname() #41, !dbg !1499
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.44, ptr noundef %30) #40, !dbg !1499
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1501, !tbaa !851
  %34 = icmp eq ptr %2, null, !dbg !1501
  %35 = select i1 %34, ptr @.str.3.45, ptr @.str.2.46, !dbg !1501
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1501
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1502, !tbaa.struct !1325
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1502
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1502
  br label %37, !dbg !1503

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1503
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1504 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1513, metadata !DIExpression(), metadata !1514, metadata ptr %6, metadata !DIExpression()), !dbg !1515
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1508, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1509, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1510, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1511, metadata !DIExpression()), !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1516
  call void @llvm.va_start(ptr nonnull %6), !dbg !1517
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1518, !tbaa.struct !1325
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1518
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1518
  call void @llvm.va_end(ptr nonnull %6), !dbg !1519
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1520
  ret void, !dbg !1520
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1521 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !1548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1525, metadata !DIExpression(), metadata !1548, metadata ptr %3, metadata !DIExpression()), !dbg !1549
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1523, metadata !DIExpression()), !dbg !1549
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1524, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !1550
  call void @llvm.va_start(ptr nonnull %3), !dbg !1551
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1536, metadata !DIExpression()), !dbg !1549
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
  ], !dbg !1552

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1553
  %6 = load i32, ptr %5, align 8, !dbg !1553
  %7 = icmp sgt i32 %6, -1, !dbg !1553
  br i1 %7, label %16, label %8, !dbg !1553

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !1553
  store i32 %9, ptr %5, align 8, !dbg !1553, !DIAssignID !1554
  call void @llvm.dbg.assign(metadata i32 %9, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1554, metadata ptr %5, metadata !DIExpression()), !dbg !1549
  %10 = icmp ult i32 %6, -7, !dbg !1553
  br i1 %10, label %11, label %16, !dbg !1553

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1553
  %13 = load ptr, ptr %12, align 8, !dbg !1553
  %14 = sext i32 %6 to i64, !dbg !1553
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !1553
  br label %19, !dbg !1553

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !1553
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1553
  store ptr %18, ptr %3, align 8, !dbg !1553, !DIAssignID !1555
  call void @llvm.dbg.assign(metadata ptr %18, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1555, metadata ptr %3, metadata !DIExpression()), !dbg !1549
  br label %19, !dbg !1553

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !1553
  %21 = load i32, ptr %20, align 8, !dbg !1553
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1537, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %0, metadata !1557, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i32 %21, metadata !1560, metadata !DIExpression()), !dbg !1562
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #40, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %22, metadata !1561, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1536, metadata !DIExpression()), !dbg !1549
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1565
  %25 = load i32, ptr %24, align 8, !dbg !1565
  %26 = icmp sgt i32 %25, -1, !dbg !1565
  br i1 %26, label %35, label %27, !dbg !1565

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !1565
  store i32 %28, ptr %24, align 8, !dbg !1565, !DIAssignID !1566
  call void @llvm.dbg.assign(metadata i32 %28, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1566, metadata ptr %24, metadata !DIExpression()), !dbg !1549
  %29 = icmp ult i32 %25, -7, !dbg !1565
  br i1 %29, label %30, label %35, !dbg !1565

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1565
  %32 = load ptr, ptr %31, align 8, !dbg !1565
  %33 = sext i32 %25 to i64, !dbg !1565
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !1565
  br label %38, !dbg !1565

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !1565
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !1565
  store ptr %37, ptr %3, align 8, !dbg !1565, !DIAssignID !1567
  call void @llvm.dbg.assign(metadata ptr %37, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1567, metadata ptr %3, metadata !DIExpression()), !dbg !1549
  br label %38, !dbg !1565

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !1565
  %40 = load i32, ptr %39, align 8, !dbg !1565
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1540, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %0, metadata !468, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %40, metadata !469, metadata !DIExpression()), !dbg !1569
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1571, !tbaa !919
  %42 = icmp sgt i32 %41, -1, !dbg !1573
  br i1 %42, label %43, label %55, !dbg !1574

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #40, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %44, metadata !470, metadata !DIExpression()), !dbg !1569
  %45 = icmp sgt i32 %44, -1, !dbg !1577
  br i1 %45, label %50, label %46, !dbg !1579

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #43, !dbg !1580
  %48 = load i32, ptr %47, align 4, !dbg !1580, !tbaa !919
  %49 = icmp eq i32 %48, 22, !dbg !1581
  br i1 %49, label %51, label %50, !dbg !1582

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1583, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %44, metadata !470, metadata !DIExpression()), !dbg !1569
  br label %115, !dbg !1585

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !1557, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %40, metadata !1560, metadata !DIExpression()), !dbg !1586
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !1589
  call void @llvm.dbg.value(metadata i32 %52, metadata !1561, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %52, metadata !470, metadata !DIExpression()), !dbg !1569
  %53 = icmp sgt i32 %52, -1, !dbg !1590
  br i1 %53, label %54, label %115, !dbg !1592

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1593, !tbaa !919
  br label %59, !dbg !1594

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !1557, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 %40, metadata !1560, metadata !DIExpression()), !dbg !1595
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %56, metadata !1561, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i32 %56, metadata !470, metadata !DIExpression()), !dbg !1569
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !1598
  call void @llvm.dbg.value(metadata i32 %61, metadata !470, metadata !DIExpression()), !dbg !1569
  %62 = icmp sgt i32 %61, -1, !dbg !1599
  %63 = select i1 %62, i1 %60, i1 false, !dbg !1585
  br i1 %63, label %64, label %115, !dbg !1585

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #40, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %65, metadata !471, metadata !DIExpression()), !dbg !1601
  %66 = icmp slt i32 %65, 0, !dbg !1602
  br i1 %66, label %71, label %67, !dbg !1603

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !1604
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #40, !dbg !1605
  %70 = icmp eq i32 %69, -1, !dbg !1606
  br i1 %70, label %71, label %115, !dbg !1607

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #43, !dbg !1608
  %73 = load i32, ptr %72, align 4, !dbg !1608, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %73, metadata !474, metadata !DIExpression()), !dbg !1609
  %74 = call i32 @close(i32 noundef %61) #40, !dbg !1610
  store i32 %73, ptr %72, align 4, !dbg !1611, !tbaa !919
  call void @llvm.dbg.value(metadata i32 -1, metadata !470, metadata !DIExpression()), !dbg !1569
  br label %115, !dbg !1612

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !1613
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1536, metadata !DIExpression()), !dbg !1549
  br label %115, !dbg !1614

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1615
  %79 = load i32, ptr %78, align 8, !dbg !1615
  %80 = icmp sgt i32 %79, -1, !dbg !1615
  br i1 %80, label %89, label %81, !dbg !1615

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !1615
  store i32 %82, ptr %78, align 8, !dbg !1615, !DIAssignID !1616
  call void @llvm.dbg.assign(metadata i32 %82, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1616, metadata ptr %78, metadata !DIExpression()), !dbg !1549
  %83 = icmp ult i32 %79, -7, !dbg !1615
  br i1 %83, label %84, label %89, !dbg !1615

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1615
  %86 = load ptr, ptr %85, align 8, !dbg !1615
  %87 = sext i32 %79 to i64, !dbg !1615
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !1615
  br label %92, !dbg !1615

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !1615
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !1615
  store ptr %91, ptr %3, align 8, !dbg !1615, !DIAssignID !1617
  call void @llvm.dbg.assign(metadata ptr %91, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1617, metadata ptr %3, metadata !DIExpression()), !dbg !1549
  br label %92, !dbg !1615

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !1615
  %94 = load i32, ptr %93, align 8, !dbg !1615
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1542, metadata !DIExpression()), !dbg !1618
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #40, !dbg !1619
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !1536, metadata !DIExpression()), !dbg !1549
  br label %115, !dbg !1620

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1621
  %98 = load i32, ptr %97, align 8, !dbg !1621
  %99 = icmp sgt i32 %98, -1, !dbg !1621
  br i1 %99, label %108, label %100, !dbg !1621

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !1621
  store i32 %101, ptr %97, align 8, !dbg !1621, !DIAssignID !1622
  call void @llvm.dbg.assign(metadata i32 %101, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1622, metadata ptr %97, metadata !DIExpression()), !dbg !1549
  %102 = icmp ult i32 %98, -7, !dbg !1621
  br i1 %102, label %103, label %108, !dbg !1621

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1621
  %105 = load ptr, ptr %104, align 8, !dbg !1621
  %106 = sext i32 %98 to i64, !dbg !1621
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !1621
  br label %111, !dbg !1621

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !1621
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !1621
  store ptr %110, ptr %3, align 8, !dbg !1621, !DIAssignID !1623
  call void @llvm.dbg.assign(metadata ptr %110, metadata !1525, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1623, metadata ptr %3, metadata !DIExpression()), !dbg !1549
  br label %111, !dbg !1621

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !1621
  %113 = load ptr, ptr %112, align 8, !dbg !1621
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !1546, metadata !DIExpression()), !dbg !1624
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #40, !dbg !1625
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !1536, metadata !DIExpression()), !dbg !1549
  br label %115, !dbg !1626

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !1627
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1536, metadata !DIExpression()), !dbg !1549
  call void @llvm.va_end(ptr nonnull %3), !dbg !1628
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !1629
  ret i32 %116, !dbg !1630
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, ptr nocapture noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !1631 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1635, metadata !DIExpression()), !dbg !1644
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1636, metadata !DIExpression()), !dbg !1644
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1637, metadata !DIExpression()), !dbg !1644
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1638, metadata !DIExpression()), !dbg !1644
  %5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #40, !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1639, metadata !DIExpression()), !dbg !1644
  %6 = icmp eq i32 %5, %0, !dbg !1646
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7, !dbg !1647
  br i1 %8, label %14, label %9, !dbg !1647

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 noundef %5, i32 noundef %0) #40, !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1640, metadata !DIExpression()), !dbg !1649
  %11 = tail call ptr @__errno_location() #43, !dbg !1650
  %12 = load i32, ptr %11, align 4, !dbg !1650, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1643, metadata !DIExpression()), !dbg !1649
  %13 = tail call i32 @close(i32 noundef %5) #40, !dbg !1651
  store i32 %12, ptr %11, align 4, !dbg !1652, !tbaa !919
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1653
  ret i32 %15, !dbg !1654
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1655 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1659, metadata !DIExpression()), !dbg !1663
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1660, metadata !DIExpression()), !dbg !1663
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1661, metadata !DIExpression()), !dbg !1663
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #40, !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1662, metadata !DIExpression()), !dbg !1663
  %5 = icmp eq ptr %4, null, !dbg !1665
  br i1 %5, label %6, label %7, !dbg !1667

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !1668
  unreachable, !dbg !1668

7:                                                ; preds = %3
  ret ptr %4, !dbg !1669
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #19 !dbg !1670 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1672, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1673, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1674, metadata !DIExpression()), !dbg !1683
  %4 = tail call ptr @last_component(ptr noundef %0) #41, !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1675, metadata !DIExpression()), !dbg !1683
  %5 = tail call i64 @base_len(ptr noundef %4) #41, !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1676, metadata !DIExpression()), !dbg !1683
  %6 = ptrtoint ptr %4 to i64, !dbg !1686
  %7 = ptrtoint ptr %0 to i64, !dbg !1686
  %8 = sub i64 %6, %7, !dbg !1686
  %9 = add i64 %8, %5, !dbg !1687
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1677, metadata !DIExpression()), !dbg !1683
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1678, metadata !DIExpression()), !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()), !dbg !1683
  %11 = icmp eq i64 %5, 0, !dbg !1689
  br i1 %11, label %21, label %12, !dbg !1691

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i64 %9, !dbg !1692
  %14 = getelementptr i8, ptr %13, i64 -1, !dbg !1692
  %15 = load i8, ptr %14, align 1, !dbg !1692, !tbaa !928
  %16 = icmp eq i8 %15, 47, !dbg !1692
  br i1 %16, label %25, label %17, !dbg !1695

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1696, !tbaa !928
  %19 = icmp ne i8 %18, 47, !dbg !1696
  %20 = select i1 %19, i8 47, i8 0, !dbg !1697
  br label %25, !dbg !1697

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1698, !tbaa !928
  %23 = icmp eq i8 %22, 47, !dbg !1698
  %24 = select i1 %23, i8 46, i8 0, !dbg !1700
  br label %25, !dbg !1700

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1683
  %28 = zext i1 %26 to i64, !dbg !1683
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !1679, metadata !DIExpression()), !dbg !1683
  %29 = add i64 %10, 1, !dbg !1701
  %30 = add i64 %29, %9, !dbg !1702
  %31 = add i64 %30, %28, !dbg !1703
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #46, !dbg !1704
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !1680, metadata !DIExpression()), !dbg !1683
  %33 = icmp eq ptr %32, null, !dbg !1705
  br i1 %33, label %41, label %34, !dbg !1707

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1708, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %0, metadata !1715, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 %9, metadata !1716, metadata !DIExpression()), !dbg !1717
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #40, !dbg !1719
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1719
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !1681, metadata !DIExpression()), !dbg !1720
  store i8 %27, ptr %35, align 1, !dbg !1721, !tbaa !928
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1722
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1681, metadata !DIExpression()), !dbg !1720
  %37 = icmp eq ptr %2, null, !dbg !1723
  br i1 %37, label %39, label %38, !dbg !1725

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1726, !tbaa !851
  br label %39, !dbg !1727

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1708, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %1, metadata !1715, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i64 %10, metadata !1716, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #40, !dbg !1730
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1730
  tail call void @llvm.dbg.value(metadata ptr %40, metadata !1681, metadata !DIExpression()), !dbg !1720
  store i8 0, ptr %40, align 1, !dbg !1731, !tbaa !928
  br label %41, !dbg !1732

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1733
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1734 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1737 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !1740 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1743, !tbaa !851
  ret ptr %1, !dbg !1744
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1745 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1774
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1759, metadata !DIExpression(), metadata !1774, metadata ptr %7, metadata !DIExpression()), !dbg !1775
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1749, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1750, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1751, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1752, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1753, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1754, metadata !DIExpression()), !dbg !1776
  %9 = load i32, ptr @opterr, align 4, !dbg !1777, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1755, metadata !DIExpression()), !dbg !1776
  store i32 0, ptr @opterr, align 4, !dbg !1778, !tbaa !919
  %10 = icmp eq i32 %0, 2, !dbg !1779
  br i1 %10, label %11, label %16, !dbg !1780

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1781
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1756, metadata !DIExpression()), !dbg !1782
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1783

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #40, !dbg !1784
  br label %16, !dbg !1785

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1786
  call void @llvm.va_start(ptr nonnull %7), !dbg !1787
  %15 = load ptr, ptr @stdout, align 8, !dbg !1788, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #40, !dbg !1789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1789, !tbaa.struct !1325
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #40, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #40, !dbg !1789
  call void @exit(i32 noundef 0) #42, !dbg !1790
  unreachable, !dbg !1790

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1791, !tbaa !919
  store i32 0, ptr @optind, align 4, !dbg !1792, !tbaa !919
  ret void, !dbg !1793
}

; Function Attrs: nounwind
declare !dbg !1794 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1798 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1817
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1812, metadata !DIExpression(), metadata !1817, metadata ptr %8, metadata !DIExpression()), !dbg !1818
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1802, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1803, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1804, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1805, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1806, metadata !DIExpression()), !dbg !1819
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1807, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1819
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1808, metadata !DIExpression()), !dbg !1819
  %10 = load i32, ptr @opterr, align 4, !dbg !1820, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1809, metadata !DIExpression()), !dbg !1819
  store i32 1, ptr @opterr, align 4, !dbg !1821, !tbaa !919
  %11 = select i1 %5, ptr @.str.1.68, ptr @.str.63, !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1810, metadata !DIExpression()), !dbg !1819
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1811, metadata !DIExpression()), !dbg !1819
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1824

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #40, !dbg !1825
  call void @llvm.va_start(ptr nonnull %8), !dbg !1826
  %14 = load ptr, ptr @stdout, align 8, !dbg !1827, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #40, !dbg !1828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1828, !tbaa.struct !1325
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #40, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #40, !dbg !1828
  call void @exit(i32 noundef 0) #42, !dbg !1829
  unreachable, !dbg !1829

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1830, !tbaa !919
  br label %17, !dbg !1831

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #40, !dbg !1832
  br label %19, !dbg !1833

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1833, !tbaa !919
  ret void, !dbg !1834
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1835 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1837, metadata !DIExpression()), !dbg !1840
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1838, metadata !DIExpression()), !dbg !1840
  %3 = icmp eq ptr %2, null, !dbg !1842
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1842
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1842
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1839, metadata !DIExpression()), !dbg !1840
  %6 = ptrtoint ptr %5 to i64, !dbg !1843
  %7 = ptrtoint ptr %0 to i64, !dbg !1843
  %8 = sub i64 %6, %7, !dbg !1843
  %9 = icmp sgt i64 %8, 6, !dbg !1845
  br i1 %9, label %10, label %19, !dbg !1846

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %11, metadata !1848, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr @.str.73, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 7, metadata !1854, metadata !DIExpression()), !dbg !1855
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.73, i64 7), !dbg !1857
  %13 = icmp eq i32 %12, 0, !dbg !1858
  br i1 %13, label %14, label %19, !dbg !1859

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1837, metadata !DIExpression()), !dbg !1840
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.74, i64 noundef 3) #41, !dbg !1860
  %16 = icmp eq i32 %15, 0, !dbg !1863
  %17 = select i1 %16, i64 3, i64 0, !dbg !1864
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1864
  br label %19, !dbg !1864

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1840
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1839, metadata !DIExpression()), !dbg !1840
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1837, metadata !DIExpression()), !dbg !1840
  store ptr %20, ptr @program_name, align 8, !dbg !1865, !tbaa !851
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1866, !tbaa !851
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1867, !tbaa !851
  ret void, !dbg !1868
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1869 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !513 {
  %3 = alloca i32, align 4, !DIAssignID !1870
  call void @llvm.dbg.assign(metadata i1 undef, metadata !523, metadata !DIExpression(), metadata !1870, metadata ptr %3, metadata !DIExpression()), !dbg !1871
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !528, metadata !DIExpression(), metadata !1872, metadata ptr %4, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !520, metadata !DIExpression()), !dbg !1871
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !521, metadata !DIExpression()), !dbg !1871
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !522, metadata !DIExpression()), !dbg !1871
  %6 = icmp eq ptr %5, %0, !dbg !1874
  br i1 %6, label %7, label %14, !dbg !1876

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !1877
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %4, metadata !1879, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata ptr %4, metadata !1888, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i32 0, metadata !1893, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i64 8, metadata !1894, metadata !DIExpression()), !dbg !1895
  store i64 0, ptr %4, align 8, !dbg !1897
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !1898
  %9 = icmp eq i64 %8, 2, !dbg !1900
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1901
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1871
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1902
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1902
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1871
  ret ptr %15, !dbg !1902
}

; Function Attrs: nounwind
declare !dbg !1903 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1909 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !1917
  %2 = tail call ptr @__errno_location() #43, !dbg !1918
  %3 = load i32, ptr %2, align 4, !dbg !1918, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1915, metadata !DIExpression()), !dbg !1917
  %4 = icmp eq ptr %0, null, !dbg !1919
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1919
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !1920
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1916, metadata !DIExpression()), !dbg !1917
  store i32 %3, ptr %2, align 4, !dbg !1921, !tbaa !919
  ret ptr %6, !dbg !1922
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !1923 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1929, metadata !DIExpression()), !dbg !1930
  %2 = icmp eq ptr %0, null, !dbg !1931
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1931
  %4 = load i32, ptr %3, align 8, !dbg !1932, !tbaa !1933
  ret i32 %4, !dbg !1935
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1936 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1940, metadata !DIExpression()), !dbg !1942
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1941, metadata !DIExpression()), !dbg !1942
  %3 = icmp eq ptr %0, null, !dbg !1943
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1943
  store i32 %1, ptr %4, align 8, !dbg !1944, !tbaa !1933
  ret void, !dbg !1945
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !1946 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1950, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1951, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1952, metadata !DIExpression()), !dbg !1958
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1953, metadata !DIExpression()), !dbg !1958
  %4 = icmp eq ptr %0, null, !dbg !1959
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1959
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1960
  %7 = lshr i8 %1, 5, !dbg !1961
  %8 = zext nneg i8 %7 to i64, !dbg !1961
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1962
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1954, metadata !DIExpression()), !dbg !1958
  %10 = and i8 %1, 31, !dbg !1963
  %11 = zext nneg i8 %10 to i32, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1956, metadata !DIExpression()), !dbg !1958
  %12 = load i32, ptr %9, align 4, !dbg !1964, !tbaa !919
  %13 = lshr i32 %12, %11, !dbg !1965
  %14 = and i32 %13, 1, !dbg !1966
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1957, metadata !DIExpression()), !dbg !1958
  %15 = xor i32 %13, %2, !dbg !1967
  %16 = and i32 %15, 1, !dbg !1967
  %17 = shl nuw i32 %16, %11, !dbg !1968
  %18 = xor i32 %17, %12, !dbg !1969
  store i32 %18, ptr %9, align 4, !dbg !1969, !tbaa !919
  ret i32 %14, !dbg !1970
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !1971 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1975, metadata !DIExpression()), !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1976, metadata !DIExpression()), !dbg !1978
  %3 = icmp eq ptr %0, null, !dbg !1979
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1981
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1975, metadata !DIExpression()), !dbg !1978
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1982
  %6 = load i32, ptr %5, align 4, !dbg !1982, !tbaa !1983
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1977, metadata !DIExpression()), !dbg !1978
  store i32 %1, ptr %5, align 4, !dbg !1984, !tbaa !1983
  ret i32 %6, !dbg !1985
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1986 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1990, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1991, metadata !DIExpression()), !dbg !1993
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1992, metadata !DIExpression()), !dbg !1993
  %4 = icmp eq ptr %0, null, !dbg !1994
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1996
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1990, metadata !DIExpression()), !dbg !1993
  store i32 10, ptr %5, align 8, !dbg !1997, !tbaa !1933
  %6 = icmp ne ptr %1, null, !dbg !1998
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2000
  br i1 %8, label %10, label %9, !dbg !2000

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2001
  unreachable, !dbg !2001

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2002
  store ptr %1, ptr %11, align 8, !dbg !2003, !tbaa !2004
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2005
  store ptr %2, ptr %12, align 8, !dbg !2006, !tbaa !2007
  ret void, !dbg !2008
}

; Function Attrs: noreturn nounwind
declare !dbg !2009 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2010 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2014, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2015, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2016, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2017, metadata !DIExpression()), !dbg !2022
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2018, metadata !DIExpression()), !dbg !2022
  %6 = icmp eq ptr %4, null, !dbg !2023
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2023
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2019, metadata !DIExpression()), !dbg !2022
  %8 = tail call ptr @__errno_location() #43, !dbg !2024
  %9 = load i32, ptr %8, align 4, !dbg !2024, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2020, metadata !DIExpression()), !dbg !2022
  %10 = load i32, ptr %7, align 8, !dbg !2025, !tbaa !1933
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2026
  %12 = load i32, ptr %11, align 4, !dbg !2026, !tbaa !1983
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2027
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2028
  %15 = load ptr, ptr %14, align 8, !dbg !2028, !tbaa !2004
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2029
  %17 = load ptr, ptr %16, align 8, !dbg !2029, !tbaa !2007
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2021, metadata !DIExpression()), !dbg !2022
  store i32 %9, ptr %8, align 4, !dbg !2031, !tbaa !919
  ret i64 %18, !dbg !2032
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2033 {
  %10 = alloca i32, align 4, !DIAssignID !2101
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2102
  %12 = alloca i32, align 4, !DIAssignID !2103
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2104
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2105
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2079, metadata !DIExpression(), metadata !2105, metadata ptr %14, metadata !DIExpression()), !dbg !2106
  %15 = alloca i32, align 4, !DIAssignID !2107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2082, metadata !DIExpression(), metadata !2107, metadata ptr %15, metadata !DIExpression()), !dbg !2108
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2039, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2041, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2042, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2043, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2044, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2045, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2046, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2047, metadata !DIExpression()), !dbg !2109
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2110
  %17 = icmp eq i64 %16, 1, !dbg !2111
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2048, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2051, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2054, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2056, metadata !DIExpression()), !dbg !2109
  %18 = and i32 %5, 2, !dbg !2112
  %19 = icmp ne i32 %18, 0, !dbg !2112
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2112

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2113
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2114
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2115
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2052, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2051, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2042, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2047, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2046, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2043, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.label(metadata !2057), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2109
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
  ], !dbg !2117

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2043, metadata !DIExpression()), !dbg !2109
  br label %101, !dbg !2118

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2043, metadata !DIExpression()), !dbg !2109
  br i1 %36, label %101, label %42, !dbg !2118

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2119
  br i1 %43, label %101, label %44, !dbg !2123

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2119, !tbaa !928
  br label %101, !dbg !2119

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !2103, metadata ptr %12, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !2104, metadata ptr %13, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata ptr @.str.11.87, metadata !611, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %28, metadata !612, metadata !DIExpression()), !dbg !2124
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.11.87, i32 noundef 5) #40, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %46, metadata !613, metadata !DIExpression()), !dbg !2124
  %47 = icmp eq ptr %46, @.str.11.87, !dbg !2129
  br i1 %47, label %48, label %57, !dbg !2131

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2132
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %13, metadata !2134, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata ptr %13, metadata !2142, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 8, metadata !2146, metadata !DIExpression()), !dbg !2147
  store i64 0, ptr %13, align 8, !dbg !2149
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2150
  %50 = icmp eq i64 %49, 3, !dbg !2152
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2153
  %54 = icmp eq i32 %28, 9, !dbg !2153
  %55 = select i1 %54, ptr @.str.10.89, ptr @.str.12.90, !dbg !2153
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2154
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2124
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2046, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !2101, metadata ptr %10, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !2102, metadata ptr %11, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata ptr @.str.12.90, metadata !611, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %28, metadata !612, metadata !DIExpression()), !dbg !2155
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.12.90, i32 noundef 5) #40, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %59, metadata !613, metadata !DIExpression()), !dbg !2155
  %60 = icmp eq ptr %59, @.str.12.90, !dbg !2158
  br i1 %60, label %61, label %70, !dbg !2159

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2161
  call void @llvm.dbg.value(metadata ptr %11, metadata !2134, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %11, metadata !2142, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i64 8, metadata !2146, metadata !DIExpression()), !dbg !2164
  store i64 0, ptr %11, align 8, !dbg !2166
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2167
  %63 = icmp eq i64 %62, 3, !dbg !2168
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2169
  %67 = icmp eq i32 %28, 9, !dbg !2169
  %68 = select i1 %67, ptr @.str.10.89, ptr @.str.12.90, !dbg !2169
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2170
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2047, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2046, metadata !DIExpression()), !dbg !2109
  br i1 %36, label %88, label %73, !dbg !2171

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2059, metadata !DIExpression()), !dbg !2172
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2049, metadata !DIExpression()), !dbg !2109
  %74 = load i8, ptr %71, align 1, !dbg !2173, !tbaa !928
  %75 = icmp eq i8 %74, 0, !dbg !2175
  br i1 %75, label %88, label %.preheader11, !dbg !2175

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2175

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2059, metadata !DIExpression()), !dbg !2172
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2049, metadata !DIExpression()), !dbg !2109
  %80 = icmp ult i64 %79, %39, !dbg !2176
  br i1 %80, label %81, label %83, !dbg !2179

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2176
  store i8 %77, ptr %82, align 1, !dbg !2176, !tbaa !928
  br label %83, !dbg !2176

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2179
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2049, metadata !DIExpression()), !dbg !2109
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2180
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2059, metadata !DIExpression()), !dbg !2172
  %86 = load i8, ptr %85, align 1, !dbg !2173, !tbaa !928
  %87 = icmp eq i8 %86, 0, !dbg !2175
  br i1 %87, label %.loopexit12, label %76, !dbg !2175, !llvm.loop !2181

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2179
  br label %88, !dbg !2183

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2051, metadata !DIExpression()), !dbg !2109
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2052, metadata !DIExpression()), !dbg !2109
  br label %101, !dbg !2185

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2109
  br label %101, !dbg !2186

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2043, metadata !DIExpression()), !dbg !2109
  br label %101, !dbg !2187

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2109
  br i1 %36, label %101, label %95, !dbg !2188

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2043, metadata !DIExpression()), !dbg !2109
  br i1 %36, label %101, label %95, !dbg !2187

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2189
  br i1 %97, label %101, label %98, !dbg !2193

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2189, !tbaa !928
  br label %101, !dbg !2189

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2109
  br label %101, !dbg !2194

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2195
  unreachable, !dbg !2195

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2184
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.89, %42 ], [ @.str.10.89, %44 ], [ @.str.10.89, %41 ], [ %33, %27 ], [ @.str.12.90, %95 ], [ @.str.12.90, %98 ], [ @.str.12.90, %94 ], [ @.str.10.89, %40 ], [ @.str.12.90, %91 ], [ @.str.12.90, %92 ], [ @.str.12.90, %93 ], !dbg !2109
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2109
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2054, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2052, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2051, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2047, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2046, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2043, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2064, metadata !DIExpression()), !dbg !2196
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
  br label %121, !dbg !2197

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2184
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2113
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2198
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2042, metadata !DIExpression()), !dbg !2109
  %130 = icmp eq i64 %122, -1, !dbg !2199
  br i1 %130, label %131, label %135, !dbg !2200

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2201
  %133 = load i8, ptr %132, align 1, !dbg !2201, !tbaa !928
  %134 = icmp eq i8 %133, 0, !dbg !2202
  br i1 %134, label %573, label %137, !dbg !2203

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2204
  br i1 %136, label %573, label %137, !dbg !2203

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2205
  br i1 %113, label %138, label %151, !dbg !2206

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2208
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2209
  br i1 %140, label %141, label %143, !dbg !2209

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2042, metadata !DIExpression()), !dbg !2109
  br label %143, !dbg !2211

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2042, metadata !DIExpression()), !dbg !2109
  %145 = icmp ugt i64 %139, %144, !dbg !2212
  br i1 %145, label %151, label %146, !dbg !2213

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2214
  call void @llvm.dbg.value(metadata ptr %147, metadata !2215, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr %106, metadata !2218, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64 %107, metadata !2219, metadata !DIExpression()), !dbg !2220
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2222
  %149 = icmp eq i32 %148, 0, !dbg !2223
  %150 = and i1 %149, %109, !dbg !2224
  br i1 %150, label %.loopexit7, label %151, !dbg !2224

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2066, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2042, metadata !DIExpression()), !dbg !2109
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2225
  %155 = load i8, ptr %154, align 1, !dbg !2225, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2071, metadata !DIExpression()), !dbg !2205
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
  ], !dbg !2226

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2227

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2228

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2205
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2232
  br i1 %159, label %176, label %160, !dbg !2232

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2234
  br i1 %161, label %162, label %164, !dbg !2238

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2234
  store i8 39, ptr %163, align 1, !dbg !2234, !tbaa !928
  br label %164, !dbg !2234

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2049, metadata !DIExpression()), !dbg !2109
  %166 = icmp ult i64 %165, %129, !dbg !2239
  br i1 %166, label %167, label %169, !dbg !2242

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2239
  store i8 36, ptr %168, align 1, !dbg !2239, !tbaa !928
  br label %169, !dbg !2239

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2242
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2049, metadata !DIExpression()), !dbg !2109
  %171 = icmp ult i64 %170, %129, !dbg !2243
  br i1 %171, label %172, label %174, !dbg !2246

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2243
  store i8 39, ptr %173, align 1, !dbg !2243, !tbaa !928
  br label %174, !dbg !2243

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2109
  br label %176, !dbg !2247

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2109
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2049, metadata !DIExpression()), !dbg !2109
  %179 = icmp ult i64 %177, %129, !dbg !2248
  br i1 %179, label %180, label %182, !dbg !2251

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2248
  store i8 92, ptr %181, align 1, !dbg !2248, !tbaa !928
  br label %182, !dbg !2248

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2049, metadata !DIExpression()), !dbg !2109
  br i1 %110, label %184, label %476, !dbg !2252

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2254
  %186 = icmp ult i64 %185, %152, !dbg !2255
  br i1 %186, label %187, label %433, !dbg !2256

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2257
  %189 = load i8, ptr %188, align 1, !dbg !2257, !tbaa !928
  %190 = add i8 %189, -48, !dbg !2258
  %191 = icmp ult i8 %190, 10, !dbg !2258
  br i1 %191, label %192, label %433, !dbg !2258

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2259
  br i1 %193, label %194, label %196, !dbg !2263

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2259
  store i8 48, ptr %195, align 1, !dbg !2259, !tbaa !928
  br label %196, !dbg !2259

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2263
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2049, metadata !DIExpression()), !dbg !2109
  %198 = icmp ult i64 %197, %129, !dbg !2264
  br i1 %198, label %199, label %201, !dbg !2267

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2264
  store i8 48, ptr %200, align 1, !dbg !2264, !tbaa !928
  br label %201, !dbg !2264

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2267
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2049, metadata !DIExpression()), !dbg !2109
  br label %433, !dbg !2268

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2269

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2270

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2271

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2273

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2275
  %209 = icmp ult i64 %208, %152, !dbg !2276
  br i1 %209, label %210, label %433, !dbg !2277

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2278
  %212 = load i8, ptr %211, align 1, !dbg !2278, !tbaa !928
  %213 = icmp eq i8 %212, 63, !dbg !2279
  br i1 %213, label %214, label %433, !dbg !2280

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2281
  %216 = load i8, ptr %215, align 1, !dbg !2281, !tbaa !928
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
  ], !dbg !2282

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2283

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2064, metadata !DIExpression()), !dbg !2196
  %219 = icmp ult i64 %123, %129, !dbg !2285
  br i1 %219, label %220, label %222, !dbg !2288

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2285
  store i8 63, ptr %221, align 1, !dbg !2285, !tbaa !928
  br label %222, !dbg !2285

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2049, metadata !DIExpression()), !dbg !2109
  %224 = icmp ult i64 %223, %129, !dbg !2289
  br i1 %224, label %225, label %227, !dbg !2292

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2289
  store i8 34, ptr %226, align 1, !dbg !2289, !tbaa !928
  br label %227, !dbg !2289

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2049, metadata !DIExpression()), !dbg !2109
  %229 = icmp ult i64 %228, %129, !dbg !2293
  br i1 %229, label %230, label %232, !dbg !2296

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2293
  store i8 34, ptr %231, align 1, !dbg !2293, !tbaa !928
  br label %232, !dbg !2293

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2049, metadata !DIExpression()), !dbg !2109
  %234 = icmp ult i64 %233, %129, !dbg !2297
  br i1 %234, label %235, label %237, !dbg !2300

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2297
  store i8 63, ptr %236, align 1, !dbg !2297, !tbaa !928
  br label %237, !dbg !2297

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2049, metadata !DIExpression()), !dbg !2109
  br label %433, !dbg !2301

239:                                              ; preds = %151
  br label %249, !dbg !2302

240:                                              ; preds = %151
  br label %249, !dbg !2303

241:                                              ; preds = %151
  br label %247, !dbg !2304

242:                                              ; preds = %151
  br label %247, !dbg !2305

243:                                              ; preds = %151
  br label %249, !dbg !2306

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2307

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2308

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2311

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2313
  call void @llvm.dbg.label(metadata !2072), !dbg !2314
  br i1 %118, label %.loopexit8, label %249, !dbg !2315

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2313
  call void @llvm.dbg.label(metadata !2075), !dbg !2317
  br i1 %108, label %487, label %444, !dbg !2318

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2319

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2320, !tbaa !928
  %254 = icmp eq i8 %253, 0, !dbg !2322
  br i1 %254, label %255, label %433, !dbg !2323

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2324
  br i1 %256, label %257, label %433, !dbg !2326

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2205
  br label %258, !dbg !2327

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2070, metadata !DIExpression()), !dbg !2205
  br i1 %115, label %260, label %433, !dbg !2328

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2330

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2070, metadata !DIExpression()), !dbg !2205
  br i1 %115, label %262, label %433, !dbg !2331

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2332

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2335
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2337
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2337
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2337
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2050, metadata !DIExpression()), !dbg !2109
  %269 = icmp ult i64 %123, %268, !dbg !2338
  br i1 %269, label %270, label %272, !dbg !2341

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2338
  store i8 39, ptr %271, align 1, !dbg !2338, !tbaa !928
  br label %272, !dbg !2338

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2049, metadata !DIExpression()), !dbg !2109
  %274 = icmp ult i64 %273, %268, !dbg !2342
  br i1 %274, label %275, label %277, !dbg !2345

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2342
  store i8 92, ptr %276, align 1, !dbg !2342, !tbaa !928
  br label %277, !dbg !2342

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2049, metadata !DIExpression()), !dbg !2109
  %279 = icmp ult i64 %278, %268, !dbg !2346
  br i1 %279, label %280, label %282, !dbg !2349

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2346
  store i8 39, ptr %281, align 1, !dbg !2346, !tbaa !928
  br label %282, !dbg !2346

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2109
  br label %433, !dbg !2350

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2351

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2076, metadata !DIExpression()), !dbg !2352
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2353
  %287 = load ptr, ptr %286, align 8, !dbg !2353, !tbaa !851
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2353
  %290 = load i16, ptr %289, align 2, !dbg !2353, !tbaa !960
  %291 = and i16 %290, 16384, !dbg !2353
  %292 = icmp ne i16 %291, 0, !dbg !2355
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2078, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2352
  br label %334, !dbg !2356

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %14, metadata !2134, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata ptr %14, metadata !2142, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i64 8, metadata !2146, metadata !DIExpression()), !dbg !2360
  store i64 0, ptr %14, align 8, !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2078, metadata !DIExpression()), !dbg !2352
  %294 = icmp eq i64 %152, -1, !dbg !2363
  br i1 %294, label %295, label %297, !dbg !2365

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2366
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2042, metadata !DIExpression()), !dbg !2109
  br label %297, !dbg !2367

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2042, metadata !DIExpression()), !dbg !2109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2368
  %299 = sub i64 %298, %128, !dbg !2369
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2086, metadata !DIExpression()), !dbg !2108
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2371

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2352
  %302 = icmp ult i64 %128, %298, !dbg !2372
  br i1 %302, label %.preheader5, label %329, !dbg !2374

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2375

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2352
  br label %329, !dbg !2376

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2076, metadata !DIExpression()), !dbg !2352
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2378
  %308 = load i8, ptr %307, align 1, !dbg !2378, !tbaa !928
  %309 = icmp eq i8 %308, 0, !dbg !2374
  br i1 %309, label %.loopexit6, label %310, !dbg !2375

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2379
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2076, metadata !DIExpression()), !dbg !2352
  %312 = add i64 %311, %128, !dbg !2380
  %313 = icmp eq i64 %311, %299, !dbg !2372
  br i1 %313, label %.loopexit6, label %304, !dbg !2374, !llvm.loop !2381

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2087, metadata !DIExpression()), !dbg !2382
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2383
  %317 = and i1 %316, %109, !dbg !2383
  br i1 %317, label %.preheader3, label %325, !dbg !2383

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2384

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2087, metadata !DIExpression()), !dbg !2382
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2385
  %321 = load i8, ptr %320, align 1, !dbg !2385, !tbaa !928
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2387

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2388
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2087, metadata !DIExpression()), !dbg !2382
  %324 = icmp eq i64 %323, %300, !dbg !2389
  br i1 %324, label %.loopexit4, label %318, !dbg !2384, !llvm.loop !2390

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2392

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2392, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %326, metadata !2394, metadata !DIExpression()), !dbg !2402
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2404
  %328 = icmp ne i32 %327, 0, !dbg !2405
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2078, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2076, metadata !DIExpression()), !dbg !2352
  br label %329, !dbg !2406

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2407

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2078, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2076, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2408
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2078, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2407
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2408
  call void @llvm.dbg.label(metadata !2100), !dbg !2409
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2410
  br label %624, !dbg !2410

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2205
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2412
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2078, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2076, metadata !DIExpression()), !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2042, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2205
  %338 = icmp ult i64 %336, 2, !dbg !2413
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2414
  br i1 %340, label %433, label %341, !dbg !2414

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2095, metadata !DIExpression()), !dbg !2416
  br label %343, !dbg !2417

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2109
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2196
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2069, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2066, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2049, metadata !DIExpression()), !dbg !2109
  br i1 %339, label %394, label %350, !dbg !2418

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2423

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2205
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2426
  br i1 %352, label %369, label %353, !dbg !2426

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2428
  br i1 %354, label %355, label %357, !dbg !2432

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2428
  store i8 39, ptr %356, align 1, !dbg !2428, !tbaa !928
  br label %357, !dbg !2428

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2049, metadata !DIExpression()), !dbg !2109
  %359 = icmp ult i64 %358, %129, !dbg !2433
  br i1 %359, label %360, label %362, !dbg !2436

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2433
  store i8 36, ptr %361, align 1, !dbg !2433, !tbaa !928
  br label %362, !dbg !2433

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2049, metadata !DIExpression()), !dbg !2109
  %364 = icmp ult i64 %363, %129, !dbg !2437
  br i1 %364, label %365, label %367, !dbg !2440

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2437
  store i8 39, ptr %366, align 1, !dbg !2437, !tbaa !928
  br label %367, !dbg !2437

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2440
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2109
  br label %369, !dbg !2441

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2109
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2049, metadata !DIExpression()), !dbg !2109
  %372 = icmp ult i64 %370, %129, !dbg !2442
  br i1 %372, label %373, label %375, !dbg !2445

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2442
  store i8 92, ptr %374, align 1, !dbg !2442, !tbaa !928
  br label %375, !dbg !2442

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2445
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2049, metadata !DIExpression()), !dbg !2109
  %377 = icmp ult i64 %376, %129, !dbg !2446
  br i1 %377, label %378, label %382, !dbg !2449

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2446
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2446
  store i8 %380, ptr %381, align 1, !dbg !2446, !tbaa !928
  br label %382, !dbg !2446

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2049, metadata !DIExpression()), !dbg !2109
  %384 = icmp ult i64 %383, %129, !dbg !2450
  br i1 %384, label %385, label %390, !dbg !2453

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2450
  %388 = or disjoint i8 %387, 48, !dbg !2450
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2450
  store i8 %388, ptr %389, align 1, !dbg !2450, !tbaa !928
  br label %390, !dbg !2450

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2453
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2049, metadata !DIExpression()), !dbg !2109
  %392 = and i8 %349, 7, !dbg !2454
  %393 = or disjoint i8 %392, 48, !dbg !2455
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2071, metadata !DIExpression()), !dbg !2205
  br label %401, !dbg !2456

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2457

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2458
  br i1 %396, label %397, label %399, !dbg !2463

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2458
  store i8 92, ptr %398, align 1, !dbg !2458, !tbaa !928
  br label %399, !dbg !2458

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2205
  br label %401, !dbg !2464

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2109
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2069, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2066, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2049, metadata !DIExpression()), !dbg !2109
  %407 = add i64 %346, 1, !dbg !2465
  %408 = icmp ugt i64 %342, %407, !dbg !2467
  br i1 %408, label %409, label %.loopexit2, !dbg !2468

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2469
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2469
  br i1 %411, label %423, label %412, !dbg !2469

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2472
  br i1 %413, label %414, label %416, !dbg !2476

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2472
  store i8 39, ptr %415, align 1, !dbg !2472, !tbaa !928
  br label %416, !dbg !2472

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2049, metadata !DIExpression()), !dbg !2109
  %418 = icmp ult i64 %417, %129, !dbg !2477
  br i1 %418, label %419, label %421, !dbg !2480

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2477
  store i8 39, ptr %420, align 1, !dbg !2477, !tbaa !928
  br label %421, !dbg !2477

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2480
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2109
  br label %423, !dbg !2481

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2482
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2049, metadata !DIExpression()), !dbg !2109
  %426 = icmp ult i64 %424, %129, !dbg !2483
  br i1 %426, label %427, label %429, !dbg !2486

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2483
  store i8 %406, ptr %428, align 1, !dbg !2483, !tbaa !928
  br label %429, !dbg !2483

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2064, metadata !DIExpression()), !dbg !2196
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2487
  %432 = load i8, ptr %431, align 1, !dbg !2487, !tbaa !928
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2071, metadata !DIExpression()), !dbg !2205
  br label %343, !dbg !2488, !llvm.loop !2489

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2492
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2109
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2113
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2196
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2205
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2070, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2069, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2066, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2042, metadata !DIExpression()), !dbg !2109
  br i1 %111, label %455, label %444, !dbg !2493

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
  br i1 %120, label %456, label %476, !dbg !2495

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2496

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
  %467 = lshr i8 %458, 5, !dbg !2497
  %468 = zext nneg i8 %467 to i64, !dbg !2497
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2498
  %470 = load i32, ptr %469, align 4, !dbg !2498, !tbaa !919
  %471 = and i8 %458, 31, !dbg !2499
  %472 = zext nneg i8 %471 to i32, !dbg !2499
  %473 = shl nuw i32 1, %472, !dbg !2500
  %474 = and i32 %470, %473, !dbg !2500
  %475 = icmp eq i32 %474, 0, !dbg !2500
  br i1 %475, label %476, label %487, !dbg !2501

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
  br i1 %153, label %487, label %523, !dbg !2502

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2492
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2109
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2113
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2503
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2205
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2070, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2042, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.label(metadata !2098), !dbg !2504
  br i1 %109, label %.loopexit8, label %497, !dbg !2505

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2069, metadata !DIExpression()), !dbg !2205
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2507
  br i1 %498, label %515, label %499, !dbg !2507

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2509
  br i1 %500, label %501, label %503, !dbg !2513

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2509
  store i8 39, ptr %502, align 1, !dbg !2509, !tbaa !928
  br label %503, !dbg !2509

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2049, metadata !DIExpression()), !dbg !2109
  %505 = icmp ult i64 %504, %496, !dbg !2514
  br i1 %505, label %506, label %508, !dbg !2517

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2514
  store i8 36, ptr %507, align 1, !dbg !2514, !tbaa !928
  br label %508, !dbg !2514

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2049, metadata !DIExpression()), !dbg !2109
  %510 = icmp ult i64 %509, %496, !dbg !2518
  br i1 %510, label %511, label %513, !dbg !2521

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2518
  store i8 39, ptr %512, align 1, !dbg !2518, !tbaa !928
  br label %513, !dbg !2518

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2521
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2058, metadata !DIExpression()), !dbg !2109
  br label %515, !dbg !2522

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2205
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2049, metadata !DIExpression()), !dbg !2109
  %518 = icmp ult i64 %516, %496, !dbg !2523
  br i1 %518, label %519, label %521, !dbg !2526

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2523
  store i8 92, ptr %520, align 1, !dbg !2523, !tbaa !928
  br label %521, !dbg !2523

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2070, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2069, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2042, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.label(metadata !2099), !dbg !2527
  br label %547, !dbg !2528

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2109
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2205
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2196
  br label %523, !dbg !2528

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2492
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2109
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2113
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2503
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2531
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2071, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2070, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2069, metadata !DIExpression()), !dbg !2205
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2042, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.label(metadata !2099), !dbg !2527
  %534 = xor i1 %528, true, !dbg !2528
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2528
  br i1 %535, label %547, label %536, !dbg !2528

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2532
  br i1 %537, label %538, label %540, !dbg !2536

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2532
  store i8 39, ptr %539, align 1, !dbg !2532, !tbaa !928
  br label %540, !dbg !2532

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2536
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2049, metadata !DIExpression()), !dbg !2109
  %542 = icmp ult i64 %541, %533, !dbg !2537
  br i1 %542, label %543, label %545, !dbg !2540

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2537
  store i8 39, ptr %544, align 1, !dbg !2537, !tbaa !928
  br label %545, !dbg !2537

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2540
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2058, metadata !DIExpression()), !dbg !2109
  br label %547, !dbg !2541

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2205
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2049, metadata !DIExpression()), !dbg !2109
  %557 = icmp ult i64 %555, %548, !dbg !2542
  br i1 %557, label %558, label %560, !dbg !2545

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2542
  store i8 %549, ptr %559, align 1, !dbg !2542, !tbaa !928
  br label %560, !dbg !2542

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2545
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2049, metadata !DIExpression()), !dbg !2109
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2546
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2109
  br label %563, !dbg !2547

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2492
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2109
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2113
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2503
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2064, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2058, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2042, metadata !DIExpression()), !dbg !2109
  %572 = add i64 %570, 1, !dbg !2548
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2064, metadata !DIExpression()), !dbg !2196
  br label %121, !dbg !2549, !llvm.loop !2550

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2184
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2113
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2040, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2050, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2049, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2042, metadata !DIExpression()), !dbg !2109
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2552
  %575 = xor i1 %109, true, !dbg !2554
  %576 = or i1 %574, %575, !dbg !2554
  %577 = or i1 %576, %110, !dbg !2554
  br i1 %577, label %578, label %.loopexit13, !dbg !2554

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2555
  %580 = xor i1 %.lcssa38, true, !dbg !2555
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2555
  br i1 %581, label %589, label %582, !dbg !2555

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2557

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2113
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2559
  br label %638, !dbg !2561

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2562
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2564
  br i1 %588, label %27, label %589, !dbg !2564

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2109
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2184
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2565
  %592 = or i1 %591, %590, !dbg !2567
  br i1 %592, label %608, label %593, !dbg !2567

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2051, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2049, metadata !DIExpression()), !dbg !2109
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2568, !tbaa !928
  %595 = icmp eq i8 %594, 0, !dbg !2571
  br i1 %595, label %608, label %.preheader, !dbg !2571

.preheader:                                       ; preds = %593
  br label %596, !dbg !2571

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2051, metadata !DIExpression()), !dbg !2109
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2049, metadata !DIExpression()), !dbg !2109
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2572
  br i1 %600, label %601, label %603, !dbg !2575

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2572
  store i8 %597, ptr %602, align 1, !dbg !2572, !tbaa !928
  br label %603, !dbg !2572

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2575
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2049, metadata !DIExpression()), !dbg !2109
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2576
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2051, metadata !DIExpression()), !dbg !2109
  %606 = load i8, ptr %605, align 1, !dbg !2568, !tbaa !928
  %607 = icmp eq i8 %606, 0, !dbg !2571
  br i1 %607, label %.loopexit, label %596, !dbg !2571, !llvm.loop !2577

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2575
  br label %608, !dbg !2579

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2184
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2049, metadata !DIExpression()), !dbg !2109
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2579
  br i1 %610, label %611, label %638, !dbg !2581

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2582
  store i8 0, ptr %612, align 1, !dbg !2583, !tbaa !928
  br label %638, !dbg !2582

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2100), !dbg !2409
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2584
  br i1 %614, label %624, label %630, !dbg !2410

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2205
  br label %615, !dbg !2584

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2584

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2584

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2100), !dbg !2409
  %622 = icmp eq i32 %616, 2, !dbg !2584
  %623 = select i1 %619, i32 4, i32 2, !dbg !2410
  br i1 %622, label %624, label %630, !dbg !2410

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2410

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2211
  br label %630, !dbg !2585

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2043, metadata !DIExpression()), !dbg !2109
  %636 = and i32 %5, -3, !dbg !2585
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2586
  br label %638, !dbg !2587

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2588
}

; Function Attrs: nounwind
declare !dbg !2589 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2592 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2594 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr null, metadata !2608, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2615
  %4 = icmp eq ptr %2, null, !dbg !2617
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %5, metadata !2610, metadata !DIExpression()), !dbg !2615
  %6 = tail call ptr @__errno_location() #43, !dbg !2618
  %7 = load i32, ptr %6, align 4, !dbg !2618, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %7, metadata !2611, metadata !DIExpression()), !dbg !2615
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2619
  %9 = load i32, ptr %8, align 4, !dbg !2619, !tbaa !1983
  %10 = or i32 %9, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %10, metadata !2612, metadata !DIExpression()), !dbg !2615
  %11 = load i32, ptr %5, align 8, !dbg !2621, !tbaa !1933
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2622
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2623
  %14 = load ptr, ptr %13, align 8, !dbg !2623, !tbaa !2004
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2624
  %16 = load ptr, ptr %15, align 8, !dbg !2624, !tbaa !2007
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2625
  %18 = add i64 %17, 1, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %18, metadata !2613, metadata !DIExpression()), !dbg !2615
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %19, metadata !2614, metadata !DIExpression()), !dbg !2615
  %20 = load i32, ptr %5, align 8, !dbg !2628, !tbaa !1933
  %21 = load ptr, ptr %13, align 8, !dbg !2629, !tbaa !2004
  %22 = load ptr, ptr %15, align 8, !dbg !2630, !tbaa !2007
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2631
  store i32 %7, ptr %6, align 4, !dbg !2632, !tbaa !919
  ret ptr %19, !dbg !2633
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2603 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2609, metadata !DIExpression()), !dbg !2634
  %5 = icmp eq ptr %3, null, !dbg !2635
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2635
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2610, metadata !DIExpression()), !dbg !2634
  %7 = tail call ptr @__errno_location() #43, !dbg !2636
  %8 = load i32, ptr %7, align 4, !dbg !2636, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2611, metadata !DIExpression()), !dbg !2634
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2637
  %10 = load i32, ptr %9, align 4, !dbg !2637, !tbaa !1983
  %11 = icmp eq ptr %2, null, !dbg !2638
  %12 = zext i1 %11 to i32, !dbg !2638
  %13 = or i32 %10, %12, !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2612, metadata !DIExpression()), !dbg !2634
  %14 = load i32, ptr %6, align 8, !dbg !2640, !tbaa !1933
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2641
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2642
  %17 = load ptr, ptr %16, align 8, !dbg !2642, !tbaa !2004
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2643
  %19 = load ptr, ptr %18, align 8, !dbg !2643, !tbaa !2007
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2644
  %21 = add i64 %20, 1, !dbg !2645
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2613, metadata !DIExpression()), !dbg !2634
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2646
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2614, metadata !DIExpression()), !dbg !2634
  %23 = load i32, ptr %6, align 8, !dbg !2647, !tbaa !1933
  %24 = load ptr, ptr %16, align 8, !dbg !2648, !tbaa !2004
  %25 = load ptr, ptr %18, align 8, !dbg !2649, !tbaa !2007
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2650
  store i32 %8, ptr %7, align 4, !dbg !2651, !tbaa !919
  br i1 %11, label %28, label %27, !dbg !2652

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2653, !tbaa !2655
  br label %28, !dbg !2656

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2658 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2663, !tbaa !851
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2664
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2661, metadata !DIExpression()), !dbg !2665
  %2 = load i32, ptr @nslots, align 4, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2661, metadata !DIExpression()), !dbg !2665
  %3 = icmp sgt i32 %2, 1, !dbg !2666
  br i1 %3, label %4, label %6, !dbg !2668

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2666
  br label %10, !dbg !2668

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2669

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2669
  %8 = load ptr, ptr %7, align 8, !dbg !2669, !tbaa !2671
  %9 = icmp eq ptr %8, @slot0, !dbg !2673
  br i1 %9, label %17, label %16, !dbg !2674

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2661, metadata !DIExpression()), !dbg !2665
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2675
  %13 = load ptr, ptr %12, align 8, !dbg !2675, !tbaa !2671
  tail call void @free(ptr noundef %13) #40, !dbg !2676
  %14 = add nuw nsw i64 %11, 1, !dbg !2677
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2661, metadata !DIExpression()), !dbg !2665
  %15 = icmp eq i64 %14, %5, !dbg !2666
  br i1 %15, label %.loopexit, label %10, !dbg !2668, !llvm.loop !2678

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2680
  store i64 256, ptr @slotvec0, align 8, !dbg !2682, !tbaa !2683
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2684, !tbaa !2671
  br label %17, !dbg !2685

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2686
  br i1 %18, label %20, label %19, !dbg !2688

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2689
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2691, !tbaa !851
  br label %20, !dbg !2692

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2693, !tbaa !919
  ret void, !dbg !2694
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2695 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2699
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2700
  ret ptr %3, !dbg !2701
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2702 {
  %5 = alloca i64, align 8, !DIAssignID !2722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2716, metadata !DIExpression(), metadata !2722, metadata ptr %5, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2706, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2708, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2709, metadata !DIExpression()), !dbg !2724
  %6 = tail call ptr @__errno_location() #43, !dbg !2725
  %7 = load i32, ptr %6, align 4, !dbg !2725, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2710, metadata !DIExpression()), !dbg !2724
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2726, !tbaa !851
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2711, metadata !DIExpression()), !dbg !2724
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2712, metadata !DIExpression()), !dbg !2724
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2727
  br i1 %9, label %10, label %11, !dbg !2727

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2729
  unreachable, !dbg !2729

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2730, !tbaa !919
  %13 = icmp sgt i32 %12, %0, !dbg !2731
  br i1 %13, label %32, label %14, !dbg !2732

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2733
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2713, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2734
  %16 = sext i32 %12 to i64, !dbg !2735
  store i64 %16, ptr %5, align 8, !dbg !2736, !tbaa !2655, !DIAssignID !2737
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2716, metadata !DIExpression(), metadata !2737, metadata ptr %5, metadata !DIExpression()), !dbg !2723
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2738
  %18 = add nuw nsw i32 %0, 1, !dbg !2739
  %19 = sub i32 %18, %12, !dbg !2740
  %20 = sext i32 %19 to i64, !dbg !2741
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2742
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2711, metadata !DIExpression()), !dbg !2724
  store ptr %21, ptr @slotvec, align 8, !dbg !2743, !tbaa !851
  br i1 %15, label %22, label %23, !dbg !2744

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2745, !tbaa.struct !2747
  br label %23, !dbg !2748

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2749, !tbaa !919
  %25 = sext i32 %24 to i64, !dbg !2750
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2750
  %27 = load i64, ptr %5, align 8, !dbg !2751, !tbaa !2655
  %28 = sub nsw i64 %27, %25, !dbg !2752
  %29 = shl i64 %28, 4, !dbg !2753
  call void @llvm.dbg.value(metadata ptr %26, metadata !2142, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2145, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i64 %29, metadata !2146, metadata !DIExpression()), !dbg !2754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !2756
  %30 = load i64, ptr %5, align 8, !dbg !2757, !tbaa !2655
  %31 = trunc i64 %30 to i32, !dbg !2757
  store i32 %31, ptr @nslots, align 4, !dbg !2758, !tbaa !919
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !2759
  br label %32, !dbg !2760

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2724
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2711, metadata !DIExpression()), !dbg !2724
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2761
  %36 = load i64, ptr %35, align 8, !dbg !2762, !tbaa !2683
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2717, metadata !DIExpression()), !dbg !2763
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2764
  %38 = load ptr, ptr %37, align 8, !dbg !2764, !tbaa !2671
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2719, metadata !DIExpression()), !dbg !2763
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2765
  %40 = load i32, ptr %39, align 4, !dbg !2765, !tbaa !1983
  %41 = or i32 %40, 1, !dbg !2766
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2720, metadata !DIExpression()), !dbg !2763
  %42 = load i32, ptr %3, align 8, !dbg !2767, !tbaa !1933
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2768
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2769
  %45 = load ptr, ptr %44, align 8, !dbg !2769, !tbaa !2004
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2770
  %47 = load ptr, ptr %46, align 8, !dbg !2770, !tbaa !2007
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2721, metadata !DIExpression()), !dbg !2763
  %49 = icmp ugt i64 %36, %48, !dbg !2772
  br i1 %49, label %60, label %50, !dbg !2774

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2717, metadata !DIExpression()), !dbg !2763
  store i64 %51, ptr %35, align 8, !dbg !2777, !tbaa !2683
  %52 = icmp eq ptr %38, @slot0, !dbg !2778
  br i1 %52, label %54, label %53, !dbg !2780

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !2781
  br label %54, !dbg !2781

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2782
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2719, metadata !DIExpression()), !dbg !2763
  store ptr %55, ptr %37, align 8, !dbg !2783, !tbaa !2671
  %56 = load i32, ptr %3, align 8, !dbg !2784, !tbaa !1933
  %57 = load ptr, ptr %44, align 8, !dbg !2785, !tbaa !2004
  %58 = load ptr, ptr %46, align 8, !dbg !2786, !tbaa !2007
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2787
  br label %60, !dbg !2788

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2763
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2719, metadata !DIExpression()), !dbg !2763
  store i32 %7, ptr %6, align 4, !dbg !2789, !tbaa !919
  ret ptr %61, !dbg !2790
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2791 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()), !dbg !2798
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2796, metadata !DIExpression()), !dbg !2798
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2797, metadata !DIExpression()), !dbg !2798
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2799
  ret ptr %4, !dbg !2800
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2801 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2805
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2807
  ret ptr %2, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2809 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2813, metadata !DIExpression()), !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %0, metadata !2796, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2797, metadata !DIExpression()), !dbg !2816
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2818
  ret ptr %3, !dbg !2819
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2820 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2828
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2827, metadata !DIExpression(), metadata !2828, metadata ptr %4, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2825, metadata !DIExpression()), !dbg !2829
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2830
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2831), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %1, metadata !2835, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2840, metadata !DIExpression()), !dbg !2843
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2843, !alias.scope !2831, !DIAssignID !2844
  call void @llvm.dbg.assign(metadata i8 0, metadata !2827, metadata !DIExpression(), metadata !2844, metadata ptr %4, metadata !DIExpression()), !dbg !2829
  %5 = icmp eq i32 %1, 10, !dbg !2845
  br i1 %5, label %6, label %7, !dbg !2847

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2848, !noalias !2831
  unreachable, !dbg !2848

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2849, !tbaa !1933, !alias.scope !2831, !DIAssignID !2850
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2827, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2850, metadata ptr %4, metadata !DIExpression()), !dbg !2829
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2851
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2852
  ret ptr %8, !dbg !2853
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2854 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2863
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2862, metadata !DIExpression(), metadata !2863, metadata ptr %5, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2858, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2859, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %1, metadata !2835, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2840, metadata !DIExpression()), !dbg !2872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2872, !alias.scope !2866, !DIAssignID !2873
  call void @llvm.dbg.assign(metadata i8 0, metadata !2862, metadata !DIExpression(), metadata !2873, metadata ptr %5, metadata !DIExpression()), !dbg !2864
  %6 = icmp eq i32 %1, 10, !dbg !2874
  br i1 %6, label %7, label %8, !dbg !2875

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2876, !noalias !2866
  unreachable, !dbg !2876

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2877, !tbaa !1933, !alias.scope !2866, !DIAssignID !2878
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2862, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2878, metadata ptr %5, metadata !DIExpression()), !dbg !2864
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2879
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2880
  ret ptr %9, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2882 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2888
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2886, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2827, metadata !DIExpression(), metadata !2888, metadata ptr %3, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2824, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %0, metadata !2825, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2893), !dbg !2896
  call void @llvm.dbg.value(metadata i32 %0, metadata !2835, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2840, metadata !DIExpression()), !dbg !2899
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2899, !alias.scope !2893, !DIAssignID !2900
  call void @llvm.dbg.assign(metadata i8 0, metadata !2827, metadata !DIExpression(), metadata !2900, metadata ptr %3, metadata !DIExpression()), !dbg !2890
  %4 = icmp eq i32 %0, 10, !dbg !2901
  br i1 %4, label %5, label %6, !dbg !2902

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !2903, !noalias !2893
  unreachable, !dbg !2903

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2904, !tbaa !1933, !alias.scope !2893, !DIAssignID !2905
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2827, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2905, metadata ptr %3, metadata !DIExpression()), !dbg !2890
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2906
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2907
  ret ptr %7, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2909 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2916
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2914, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2862, metadata !DIExpression(), metadata !2916, metadata ptr %4, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2858, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 %0, metadata !2859, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata ptr %1, metadata !2860, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %2, metadata !2861, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2920
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2921), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %0, metadata !2835, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2840, metadata !DIExpression()), !dbg !2927
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2927, !alias.scope !2921, !DIAssignID !2928
  call void @llvm.dbg.assign(metadata i8 0, metadata !2862, metadata !DIExpression(), metadata !2928, metadata ptr %4, metadata !DIExpression()), !dbg !2918
  %5 = icmp eq i32 %0, 10, !dbg !2929
  br i1 %5, label %6, label %7, !dbg !2930

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2931, !noalias !2921
  unreachable, !dbg !2931

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2932, !tbaa !1933, !alias.scope !2921, !DIAssignID !2933
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2862, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2933, metadata ptr %4, metadata !DIExpression()), !dbg !2918
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2934
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2935
  ret ptr %8, !dbg !2936
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2937 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2945
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !2945, metadata ptr %4, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2948, !tbaa.struct !2949, !DIAssignID !2950
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !2950, metadata ptr %4, metadata !DIExpression()), !dbg !2946
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1950, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1951, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1952, metadata !DIExpression()), !dbg !2951
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1953, metadata !DIExpression()), !dbg !2951
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2953
  %6 = lshr i8 %2, 5, !dbg !2954
  %7 = zext nneg i8 %6 to i64, !dbg !2954
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2955
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1954, metadata !DIExpression()), !dbg !2951
  %9 = and i8 %2, 31, !dbg !2956
  %10 = zext nneg i8 %9 to i32, !dbg !2956
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1956, metadata !DIExpression()), !dbg !2951
  %11 = load i32, ptr %8, align 4, !dbg !2957, !tbaa !919
  %12 = lshr i32 %11, %10, !dbg !2958
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1957, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2951
  %13 = and i32 %12, 1, !dbg !2959
  %14 = xor i32 %13, 1, !dbg !2959
  %15 = shl nuw i32 %14, %10, !dbg !2960
  %16 = xor i32 %15, %11, !dbg !2961
  store i32 %16, ptr %8, align 4, !dbg !2961, !tbaa !919
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2962
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2963
  ret ptr %17, !dbg !2964
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2965 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2971
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2969, metadata !DIExpression()), !dbg !2972
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !2971, metadata ptr %3, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 -1, metadata !2942, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i8 %1, metadata !2943, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2976, !tbaa.struct !2949, !DIAssignID !2977
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !2977, metadata ptr %3, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata ptr %3, metadata !1950, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 %1, metadata !1951, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 1, metadata !1952, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 %1, metadata !1953, metadata !DIExpression()), !dbg !2978
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2980
  %5 = lshr i8 %1, 5, !dbg !2981
  %6 = zext nneg i8 %5 to i64, !dbg !2981
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2982
  call void @llvm.dbg.value(metadata ptr %7, metadata !1954, metadata !DIExpression()), !dbg !2978
  %8 = and i8 %1, 31, !dbg !2983
  %9 = zext nneg i8 %8 to i32, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %9, metadata !1956, metadata !DIExpression()), !dbg !2978
  %10 = load i32, ptr %7, align 4, !dbg !2984, !tbaa !919
  %11 = lshr i32 %10, %9, !dbg !2985
  call void @llvm.dbg.value(metadata i32 %11, metadata !1957, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2978
  %12 = and i32 %11, 1, !dbg !2986
  %13 = xor i32 %12, 1, !dbg !2986
  %14 = shl nuw i32 %13, %9, !dbg !2987
  %15 = xor i32 %14, %10, !dbg !2988
  store i32 %15, ptr %7, align 4, !dbg !2988, !tbaa !919
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2989
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2990
  ret ptr %16, !dbg !2991
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2992 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2995
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %0, metadata !2969, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8 58, metadata !2970, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !2995, metadata ptr %2, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 -1, metadata !2942, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8 58, metadata !2943, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3002, !tbaa.struct !2949, !DIAssignID !3003
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !3003, metadata ptr %2, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata ptr %2, metadata !1950, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 58, metadata !1951, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 1, metadata !1952, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 58, metadata !1953, metadata !DIExpression()), !dbg !3004
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %3, metadata !1954, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 26, metadata !1956, metadata !DIExpression()), !dbg !3004
  %4 = load i32, ptr %3, align 4, !dbg !3007, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %4, metadata !1957, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3004
  %5 = or i32 %4, 67108864, !dbg !3008
  store i32 %5, ptr %3, align 4, !dbg !3008, !tbaa !919
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3009
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3010
  ret ptr %6, !dbg !3011
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3012 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3016
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !3016, metadata ptr %3, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %0, metadata !2941, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i8 58, metadata !2943, metadata !DIExpression()), !dbg !3018
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3021, !tbaa.struct !2949, !DIAssignID !3022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2944, metadata !DIExpression(), metadata !3022, metadata ptr %3, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata ptr %3, metadata !1950, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 58, metadata !1951, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 1, metadata !1952, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 58, metadata !1953, metadata !DIExpression()), !dbg !3023
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3025
  call void @llvm.dbg.value(metadata ptr %4, metadata !1954, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 26, metadata !1956, metadata !DIExpression()), !dbg !3023
  %5 = load i32, ptr %4, align 4, !dbg !3026, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %5, metadata !1957, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3023
  %6 = or i32 %5, 67108864, !dbg !3027
  store i32 %6, ptr %4, align 4, !dbg !3027, !tbaa !919
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3028
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3029
  ret ptr %7, !dbg !3030
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3031 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3037
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3036, metadata !DIExpression(), metadata !3037, metadata ptr %4, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2840, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3039
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3033, metadata !DIExpression()), !dbg !3038
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3034, metadata !DIExpression()), !dbg !3038
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3035, metadata !DIExpression()), !dbg !3038
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3041
  call void @llvm.dbg.value(metadata i32 %1, metadata !2835, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3042
  %5 = icmp eq i32 %1, 10, !dbg !3043
  br i1 %5, label %6, label %7, !dbg !3044

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3045, !noalias !3046
  unreachable, !dbg !3045

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3042
  store i32 %1, ptr %4, align 8, !dbg !3049, !tbaa.struct !2949, !DIAssignID !3050
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3049
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3049
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3036, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3050, metadata ptr %4, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3036, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3051, metadata ptr %8, metadata !DIExpression()), !dbg !3038
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1950, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1951, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1952, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1953, metadata !DIExpression()), !dbg !3052
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3054
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1954, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1956, metadata !DIExpression()), !dbg !3052
  %10 = load i32, ptr %9, align 4, !dbg !3055, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1957, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3052
  %11 = or i32 %10, 67108864, !dbg !3056
  store i32 %11, ptr %9, align 4, !dbg !3056, !tbaa !919, !DIAssignID !3057
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3036, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3057, metadata ptr %9, metadata !DIExpression()), !dbg !3038
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3058
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3059
  ret ptr %12, !dbg !3060
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3061 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3069
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3065, metadata !DIExpression()), !dbg !3070
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3066, metadata !DIExpression()), !dbg !3070
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3067, metadata !DIExpression()), !dbg !3070
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3069, metadata ptr %5, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %1, metadata !3077, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %2, metadata !3078, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %3, metadata !3079, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 -1, metadata !3080, metadata !DIExpression()), !dbg !3081
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3084, !tbaa.struct !2949, !DIAssignID !3085
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3085, metadata ptr %5, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3086, metadata ptr undef, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %5, metadata !1990, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %1, metadata !1991, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %2, metadata !1992, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %5, metadata !1990, metadata !DIExpression()), !dbg !3087
  store i32 10, ptr %5, align 8, !dbg !3089, !tbaa !1933, !DIAssignID !3090
  call void @llvm.dbg.assign(metadata i32 10, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3090, metadata ptr %5, metadata !DIExpression()), !dbg !3081
  %6 = icmp ne ptr %1, null, !dbg !3091
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3092
  br i1 %8, label %10, label %9, !dbg !3092

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3093
  unreachable, !dbg !3093

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3094
  store ptr %1, ptr %11, align 8, !dbg !3095, !tbaa !2004, !DIAssignID !3096
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3096, metadata ptr %11, metadata !DIExpression()), !dbg !3081
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3097
  store ptr %2, ptr %12, align 8, !dbg !3098, !tbaa !2007, !DIAssignID !3099
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3099, metadata ptr %12, metadata !DIExpression()), !dbg !3081
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3100
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3101
  ret ptr %13, !dbg !3102
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3072 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3103, metadata ptr %6, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3077, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3078, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3079, metadata !DIExpression()), !dbg !3104
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3080, metadata !DIExpression()), !dbg !3104
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3106, !tbaa.struct !2949, !DIAssignID !3107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3107, metadata ptr %6, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3108, metadata ptr undef, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %6, metadata !1990, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %1, metadata !1991, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %2, metadata !1992, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %6, metadata !1990, metadata !DIExpression()), !dbg !3109
  store i32 10, ptr %6, align 8, !dbg !3111, !tbaa !1933, !DIAssignID !3112
  call void @llvm.dbg.assign(metadata i32 10, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3112, metadata ptr %6, metadata !DIExpression()), !dbg !3104
  %7 = icmp ne ptr %1, null, !dbg !3113
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3114
  br i1 %9, label %11, label %10, !dbg !3114

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3115
  unreachable, !dbg !3115

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3116
  store ptr %1, ptr %12, align 8, !dbg !3117, !tbaa !2004, !DIAssignID !3118
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3118, metadata ptr %12, metadata !DIExpression()), !dbg !3104
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3119
  store ptr %2, ptr %13, align 8, !dbg !3120, !tbaa !2007, !DIAssignID !3121
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3121, metadata ptr %13, metadata !DIExpression()), !dbg !3104
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3122
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3123
  ret ptr %14, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3125 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3132
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3129, metadata !DIExpression()), !dbg !3133
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3130, metadata !DIExpression()), !dbg !3133
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i32 0, metadata !3065, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %0, metadata !3066, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %1, metadata !3067, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %2, metadata !3068, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3132, metadata ptr %4, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3076, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %1, metadata !3078, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %2, metadata !3079, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 -1, metadata !3080, metadata !DIExpression()), !dbg !3136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3139, !tbaa.struct !2949, !DIAssignID !3140
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3140, metadata ptr %4, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3141, metadata ptr undef, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %4, metadata !1990, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %0, metadata !1991, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %1, metadata !1992, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %4, metadata !1990, metadata !DIExpression()), !dbg !3142
  store i32 10, ptr %4, align 8, !dbg !3144, !tbaa !1933, !DIAssignID !3145
  call void @llvm.dbg.assign(metadata i32 10, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3145, metadata ptr %4, metadata !DIExpression()), !dbg !3136
  %5 = icmp ne ptr %0, null, !dbg !3146
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3147
  br i1 %7, label %9, label %8, !dbg !3147

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3148
  unreachable, !dbg !3148

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3149
  store ptr %0, ptr %10, align 8, !dbg !3150, !tbaa !2004, !DIAssignID !3151
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3151, metadata ptr %10, metadata !DIExpression()), !dbg !3136
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3152
  store ptr %1, ptr %11, align 8, !dbg !3153, !tbaa !2007, !DIAssignID !3154
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3154, metadata ptr %11, metadata !DIExpression()), !dbg !3136
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3155
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3156
  ret ptr %12, !dbg !3157
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3158 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3166
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3162, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3163, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3164, metadata !DIExpression()), !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3166, metadata ptr %5, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i32 0, metadata !3076, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %1, metadata !3078, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %2, metadata !3079, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %3, metadata !3080, metadata !DIExpression()), !dbg !3168
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3171, !tbaa.struct !2949, !DIAssignID !3172
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(), metadata !3172, metadata ptr %5, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3173, metadata ptr undef, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata ptr %5, metadata !1990, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %0, metadata !1991, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %1, metadata !1992, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %5, metadata !1990, metadata !DIExpression()), !dbg !3174
  store i32 10, ptr %5, align 8, !dbg !3176, !tbaa !1933, !DIAssignID !3177
  call void @llvm.dbg.assign(metadata i32 10, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3177, metadata ptr %5, metadata !DIExpression()), !dbg !3168
  %6 = icmp ne ptr %0, null, !dbg !3178
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3179
  br i1 %8, label %10, label %9, !dbg !3179

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3180
  unreachable, !dbg !3180

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3181
  store ptr %0, ptr %11, align 8, !dbg !3182, !tbaa !2004, !DIAssignID !3183
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3183, metadata ptr %11, metadata !DIExpression()), !dbg !3168
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3184
  store ptr %1, ptr %12, align 8, !dbg !3185, !tbaa !2007, !DIAssignID !3186
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3071, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3186, metadata ptr %12, metadata !DIExpression()), !dbg !3168
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3187
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3188
  ret ptr %13, !dbg !3189
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3190 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3195, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3196, metadata !DIExpression()), !dbg !3197
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3198
  ret ptr %4, !dbg !3199
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3200 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3204, metadata !DIExpression()), !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3194, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %0, metadata !3195, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3207
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3209
  ret ptr %3, !dbg !3210
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3211 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()), !dbg !3217
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3216, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3195, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 -1, metadata !3196, metadata !DIExpression()), !dbg !3218
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3220
  ret ptr %3, !dbg !3221
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3222 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 0, metadata !3194, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %0, metadata !3195, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 -1, metadata !3196, metadata !DIExpression()), !dbg !3230
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3232
  ret ptr %2, !dbg !3233
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3234 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3273, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3274, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3275, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3276, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3277, metadata !DIExpression()), !dbg !3279
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3278, metadata !DIExpression()), !dbg !3279
  %7 = icmp eq ptr %1, null, !dbg !3280
  br i1 %7, label %10, label %8, !dbg !3282

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.95, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3283
  br label %12, !dbg !3283

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.96, ptr noundef %2, ptr noundef %3) #40, !dbg !3284
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.3.98, i32 noundef 5) #40, !dbg !3285
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3285
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3286
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.5.100, i32 noundef 5) #40, !dbg !3287
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.101) #40, !dbg !3287
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3288
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
  ], !dbg !3289

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.7.102, i32 noundef 5) #40, !dbg !3290
  %21 = load ptr, ptr %4, align 8, !dbg !3290, !tbaa !851
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3290
  br label %147, !dbg !3292

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.8.103, i32 noundef 5) #40, !dbg !3293
  %25 = load ptr, ptr %4, align 8, !dbg !3293, !tbaa !851
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3293
  %27 = load ptr, ptr %26, align 8, !dbg !3293, !tbaa !851
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3293
  br label %147, !dbg !3294

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.9.104, i32 noundef 5) #40, !dbg !3295
  %31 = load ptr, ptr %4, align 8, !dbg !3295, !tbaa !851
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3295
  %33 = load ptr, ptr %32, align 8, !dbg !3295, !tbaa !851
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3295
  %35 = load ptr, ptr %34, align 8, !dbg !3295, !tbaa !851
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3295
  br label %147, !dbg !3296

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.10.105, i32 noundef 5) #40, !dbg !3297
  %39 = load ptr, ptr %4, align 8, !dbg !3297, !tbaa !851
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3297
  %41 = load ptr, ptr %40, align 8, !dbg !3297, !tbaa !851
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3297
  %43 = load ptr, ptr %42, align 8, !dbg !3297, !tbaa !851
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3297
  %45 = load ptr, ptr %44, align 8, !dbg !3297, !tbaa !851
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3297
  br label %147, !dbg !3298

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.11.106, i32 noundef 5) #40, !dbg !3299
  %49 = load ptr, ptr %4, align 8, !dbg !3299, !tbaa !851
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3299
  %51 = load ptr, ptr %50, align 8, !dbg !3299, !tbaa !851
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3299
  %53 = load ptr, ptr %52, align 8, !dbg !3299, !tbaa !851
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3299
  %55 = load ptr, ptr %54, align 8, !dbg !3299, !tbaa !851
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3299
  %57 = load ptr, ptr %56, align 8, !dbg !3299, !tbaa !851
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3299
  br label %147, !dbg !3300

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.12.107, i32 noundef 5) #40, !dbg !3301
  %61 = load ptr, ptr %4, align 8, !dbg !3301, !tbaa !851
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3301
  %63 = load ptr, ptr %62, align 8, !dbg !3301, !tbaa !851
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3301
  %65 = load ptr, ptr %64, align 8, !dbg !3301, !tbaa !851
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3301
  %67 = load ptr, ptr %66, align 8, !dbg !3301, !tbaa !851
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3301
  %69 = load ptr, ptr %68, align 8, !dbg !3301, !tbaa !851
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3301
  %71 = load ptr, ptr %70, align 8, !dbg !3301, !tbaa !851
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3301
  br label %147, !dbg !3302

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.13.108, i32 noundef 5) #40, !dbg !3303
  %75 = load ptr, ptr %4, align 8, !dbg !3303, !tbaa !851
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3303
  %77 = load ptr, ptr %76, align 8, !dbg !3303, !tbaa !851
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3303
  %79 = load ptr, ptr %78, align 8, !dbg !3303, !tbaa !851
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3303
  %81 = load ptr, ptr %80, align 8, !dbg !3303, !tbaa !851
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3303
  %83 = load ptr, ptr %82, align 8, !dbg !3303, !tbaa !851
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3303
  %85 = load ptr, ptr %84, align 8, !dbg !3303, !tbaa !851
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3303
  %87 = load ptr, ptr %86, align 8, !dbg !3303, !tbaa !851
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3303
  br label %147, !dbg !3304

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.14.109, i32 noundef 5) #40, !dbg !3305
  %91 = load ptr, ptr %4, align 8, !dbg !3305, !tbaa !851
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3305
  %93 = load ptr, ptr %92, align 8, !dbg !3305, !tbaa !851
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3305
  %95 = load ptr, ptr %94, align 8, !dbg !3305, !tbaa !851
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3305
  %97 = load ptr, ptr %96, align 8, !dbg !3305, !tbaa !851
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3305
  %99 = load ptr, ptr %98, align 8, !dbg !3305, !tbaa !851
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3305
  %101 = load ptr, ptr %100, align 8, !dbg !3305, !tbaa !851
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3305
  %103 = load ptr, ptr %102, align 8, !dbg !3305, !tbaa !851
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3305
  %105 = load ptr, ptr %104, align 8, !dbg !3305, !tbaa !851
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3305
  br label %147, !dbg !3306

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.15.110, i32 noundef 5) #40, !dbg !3307
  %109 = load ptr, ptr %4, align 8, !dbg !3307, !tbaa !851
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3307
  %111 = load ptr, ptr %110, align 8, !dbg !3307, !tbaa !851
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3307
  %113 = load ptr, ptr %112, align 8, !dbg !3307, !tbaa !851
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3307
  %115 = load ptr, ptr %114, align 8, !dbg !3307, !tbaa !851
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3307
  %117 = load ptr, ptr %116, align 8, !dbg !3307, !tbaa !851
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3307
  %119 = load ptr, ptr %118, align 8, !dbg !3307, !tbaa !851
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3307
  %121 = load ptr, ptr %120, align 8, !dbg !3307, !tbaa !851
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3307
  %123 = load ptr, ptr %122, align 8, !dbg !3307, !tbaa !851
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3307
  %125 = load ptr, ptr %124, align 8, !dbg !3307, !tbaa !851
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3307
  br label %147, !dbg !3308

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.16.111, i32 noundef 5) #40, !dbg !3309
  %129 = load ptr, ptr %4, align 8, !dbg !3309, !tbaa !851
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3309
  %131 = load ptr, ptr %130, align 8, !dbg !3309, !tbaa !851
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3309
  %133 = load ptr, ptr %132, align 8, !dbg !3309, !tbaa !851
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3309
  %135 = load ptr, ptr %134, align 8, !dbg !3309, !tbaa !851
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3309
  %137 = load ptr, ptr %136, align 8, !dbg !3309, !tbaa !851
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3309
  %139 = load ptr, ptr %138, align 8, !dbg !3309, !tbaa !851
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3309
  %141 = load ptr, ptr %140, align 8, !dbg !3309, !tbaa !851
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3309
  %143 = load ptr, ptr %142, align 8, !dbg !3309, !tbaa !851
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3309
  %145 = load ptr, ptr %144, align 8, !dbg !3309, !tbaa !851
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3309
  br label %147, !dbg !3310

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3311
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3317, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3318, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3319, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3320, metadata !DIExpression()), !dbg !3322
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3321, metadata !DIExpression()), !dbg !3322
  br label %6, !dbg !3323

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3321, metadata !DIExpression()), !dbg !3322
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3326
  %9 = load ptr, ptr %8, align 8, !dbg !3326, !tbaa !851
  %10 = icmp eq ptr %9, null, !dbg !3328
  %11 = add i64 %7, 1, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3321, metadata !DIExpression()), !dbg !3322
  br i1 %10, label %12, label %6, !dbg !3328, !llvm.loop !3330

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3325
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3332
  ret void, !dbg !3333
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3334 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3356
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3354, metadata !DIExpression(), metadata !3356, metadata ptr %6, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3349, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3350, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3351, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression(DW_OP_deref)), !dbg !3357
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3357
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3353, metadata !DIExpression()), !dbg !3357
  %10 = icmp sgt i32 %9, -1, !dbg !3359
  br i1 %10, label %18, label %11, !dbg !3359

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3359
  store i32 %12, ptr %7, align 8, !dbg !3359
  %13 = icmp ult i32 %9, -7, !dbg !3359
  br i1 %13, label %14, label %18, !dbg !3359

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3359
  %16 = sext i32 %9 to i64, !dbg !3359
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3359
  br label %22, !dbg !3359

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3359
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3359
  store ptr %21, ptr %4, align 8, !dbg !3359
  br label %22, !dbg !3359

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3359
  %25 = load ptr, ptr %24, align 8, !dbg !3359
  store ptr %25, ptr %6, align 8, !dbg !3362, !tbaa !851
  %26 = icmp eq ptr %25, null, !dbg !3363
  br i1 %26, label %197, label %27, !dbg !3364

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3353, metadata !DIExpression()), !dbg !3357
  %28 = icmp sgt i32 %23, -1, !dbg !3359
  br i1 %28, label %36, label %29, !dbg !3359

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3359
  store i32 %30, ptr %7, align 8, !dbg !3359
  %31 = icmp ult i32 %23, -7, !dbg !3359
  br i1 %31, label %32, label %36, !dbg !3359

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3359
  %34 = sext i32 %23 to i64, !dbg !3359
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3359
  br label %40, !dbg !3359

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3359
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3359
  store ptr %39, ptr %4, align 8, !dbg !3359
  br label %40, !dbg !3359

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3359
  %43 = load ptr, ptr %42, align 8, !dbg !3359
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3365
  store ptr %43, ptr %44, align 8, !dbg !3362, !tbaa !851
  %45 = icmp eq ptr %43, null, !dbg !3363
  br i1 %45, label %197, label %46, !dbg !3364

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3353, metadata !DIExpression()), !dbg !3357
  %47 = icmp sgt i32 %41, -1, !dbg !3359
  br i1 %47, label %55, label %48, !dbg !3359

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3359
  store i32 %49, ptr %7, align 8, !dbg !3359
  %50 = icmp ult i32 %41, -7, !dbg !3359
  br i1 %50, label %51, label %55, !dbg !3359

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3359
  %53 = sext i32 %41 to i64, !dbg !3359
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3359
  br label %59, !dbg !3359

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3359
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3359
  store ptr %58, ptr %4, align 8, !dbg !3359
  br label %59, !dbg !3359

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3359
  %62 = load ptr, ptr %61, align 8, !dbg !3359
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3365
  store ptr %62, ptr %63, align 8, !dbg !3362, !tbaa !851
  %64 = icmp eq ptr %62, null, !dbg !3363
  br i1 %64, label %197, label %65, !dbg !3364

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3353, metadata !DIExpression()), !dbg !3357
  %66 = icmp sgt i32 %60, -1, !dbg !3359
  br i1 %66, label %74, label %67, !dbg !3359

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3359
  store i32 %68, ptr %7, align 8, !dbg !3359
  %69 = icmp ult i32 %60, -7, !dbg !3359
  br i1 %69, label %70, label %74, !dbg !3359

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3359
  %72 = sext i32 %60 to i64, !dbg !3359
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3359
  br label %78, !dbg !3359

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3359
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3359
  store ptr %77, ptr %4, align 8, !dbg !3359
  br label %78, !dbg !3359

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3359
  %81 = load ptr, ptr %80, align 8, !dbg !3359
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3365
  store ptr %81, ptr %82, align 8, !dbg !3362, !tbaa !851
  %83 = icmp eq ptr %81, null, !dbg !3363
  br i1 %83, label %197, label %84, !dbg !3364

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3353, metadata !DIExpression()), !dbg !3357
  %85 = icmp sgt i32 %79, -1, !dbg !3359
  br i1 %85, label %93, label %86, !dbg !3359

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3359
  store i32 %87, ptr %7, align 8, !dbg !3359
  %88 = icmp ult i32 %79, -7, !dbg !3359
  br i1 %88, label %89, label %93, !dbg !3359

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3359
  %91 = sext i32 %79 to i64, !dbg !3359
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3359
  br label %97, !dbg !3359

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3359
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3359
  store ptr %96, ptr %4, align 8, !dbg !3359
  br label %97, !dbg !3359

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3359
  %100 = load ptr, ptr %99, align 8, !dbg !3359
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3365
  store ptr %100, ptr %101, align 8, !dbg !3362, !tbaa !851
  %102 = icmp eq ptr %100, null, !dbg !3363
  br i1 %102, label %197, label %103, !dbg !3364

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3353, metadata !DIExpression()), !dbg !3357
  %104 = icmp sgt i32 %98, -1, !dbg !3359
  br i1 %104, label %112, label %105, !dbg !3359

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3359
  store i32 %106, ptr %7, align 8, !dbg !3359
  %107 = icmp ult i32 %98, -7, !dbg !3359
  br i1 %107, label %108, label %112, !dbg !3359

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3359
  %110 = sext i32 %98 to i64, !dbg !3359
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3359
  br label %116, !dbg !3359

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3359
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3359
  store ptr %115, ptr %4, align 8, !dbg !3359
  br label %116, !dbg !3359

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3359
  %119 = load ptr, ptr %118, align 8, !dbg !3359
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3365
  store ptr %119, ptr %120, align 8, !dbg !3362, !tbaa !851
  %121 = icmp eq ptr %119, null, !dbg !3363
  br i1 %121, label %197, label %122, !dbg !3364

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3353, metadata !DIExpression()), !dbg !3357
  %123 = icmp sgt i32 %117, -1, !dbg !3359
  br i1 %123, label %131, label %124, !dbg !3359

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3359
  store i32 %125, ptr %7, align 8, !dbg !3359
  %126 = icmp ult i32 %117, -7, !dbg !3359
  br i1 %126, label %127, label %131, !dbg !3359

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3359
  %129 = sext i32 %117 to i64, !dbg !3359
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3359
  br label %135, !dbg !3359

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3359
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3359
  store ptr %134, ptr %4, align 8, !dbg !3359
  br label %135, !dbg !3359

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3359
  %138 = load ptr, ptr %137, align 8, !dbg !3359
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3365
  store ptr %138, ptr %139, align 8, !dbg !3362, !tbaa !851
  %140 = icmp eq ptr %138, null, !dbg !3363
  br i1 %140, label %197, label %141, !dbg !3364

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3353, metadata !DIExpression()), !dbg !3357
  %142 = icmp sgt i32 %136, -1, !dbg !3359
  br i1 %142, label %150, label %143, !dbg !3359

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3359
  store i32 %144, ptr %7, align 8, !dbg !3359
  %145 = icmp ult i32 %136, -7, !dbg !3359
  br i1 %145, label %146, label %150, !dbg !3359

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3359
  %148 = sext i32 %136 to i64, !dbg !3359
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3359
  br label %154, !dbg !3359

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3359
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3359
  store ptr %153, ptr %4, align 8, !dbg !3359
  br label %154, !dbg !3359

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3359
  %157 = load ptr, ptr %156, align 8, !dbg !3359
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3365
  store ptr %157, ptr %158, align 8, !dbg !3362, !tbaa !851
  %159 = icmp eq ptr %157, null, !dbg !3363
  br i1 %159, label %197, label %160, !dbg !3364

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3353, metadata !DIExpression()), !dbg !3357
  %161 = icmp sgt i32 %155, -1, !dbg !3359
  br i1 %161, label %169, label %162, !dbg !3359

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3359
  store i32 %163, ptr %7, align 8, !dbg !3359
  %164 = icmp ult i32 %155, -7, !dbg !3359
  br i1 %164, label %165, label %169, !dbg !3359

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3359
  %167 = sext i32 %155 to i64, !dbg !3359
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3359
  br label %173, !dbg !3359

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3359
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3359
  store ptr %172, ptr %4, align 8, !dbg !3359
  br label %173, !dbg !3359

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3359
  %176 = load ptr, ptr %175, align 8, !dbg !3359
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3365
  store ptr %176, ptr %177, align 8, !dbg !3362, !tbaa !851
  %178 = icmp eq ptr %176, null, !dbg !3363
  br i1 %178, label %197, label %179, !dbg !3364

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3353, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3353, metadata !DIExpression()), !dbg !3357
  %180 = icmp sgt i32 %174, -1, !dbg !3359
  br i1 %180, label %188, label %181, !dbg !3359

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3359
  store i32 %182, ptr %7, align 8, !dbg !3359
  %183 = icmp ult i32 %174, -7, !dbg !3359
  br i1 %183, label %184, label %188, !dbg !3359

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3359
  %186 = sext i32 %174 to i64, !dbg !3359
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3359
  br label %191, !dbg !3359

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3359
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3359
  store ptr %190, ptr %4, align 8, !dbg !3359
  br label %191, !dbg !3359

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3359
  %193 = load ptr, ptr %192, align 8, !dbg !3359
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3365
  store ptr %193, ptr %194, align 8, !dbg !3362, !tbaa !851
  %195 = icmp eq ptr %193, null, !dbg !3363
  %196 = select i1 %195, i64 9, i64 10, !dbg !3364
  br label %197, !dbg !3364

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3366
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3367
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3368
  ret void, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3369 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3377, metadata !DIExpression(), metadata !3378, metadata ptr %5, metadata !DIExpression()), !dbg !3379
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3373, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3374, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3375, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3380
  call void @llvm.va_start(ptr nonnull %5), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !3382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3382, !tbaa.struct !1325
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3382
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !3382
  call void @llvm.va_end(ptr nonnull %5), !dbg !3383
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3384
  ret void, !dbg !3384
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3385 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3386, !tbaa !851
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %1), !dbg !3386
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.17.116, i32 noundef 5) #40, !dbg !3387
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.117) #40, !dbg !3387
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.19.118, i32 noundef 5) #40, !dbg !3388
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.119, ptr noundef nonnull @.str.21.120) #40, !dbg !3388
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.22.121, i32 noundef 5) #40, !dbg !3389
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.122) #40, !dbg !3389
  ret void, !dbg !3390
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3391 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()), !dbg !3405
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3413
  %5 = icmp eq ptr %4, null, !dbg !3415
  br i1 %5, label %6, label %7, !dbg !3417

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3418
  unreachable, !dbg !3418

7:                                                ; preds = %3
  ret ptr %4, !dbg !3419
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3403, metadata !DIExpression()), !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()), !dbg !3420
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3422
  %5 = icmp eq ptr %4, null, !dbg !3424
  br i1 %5, label %6, label %7, !dbg !3425

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3426
  unreachable, !dbg !3426

7:                                                ; preds = %3
  ret ptr %4, !dbg !3427
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3428 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3430, metadata !DIExpression()), !dbg !3431
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %2, metadata !3408, metadata !DIExpression()), !dbg !3433
  %3 = icmp eq ptr %2, null, !dbg !3435
  br i1 %3, label %4, label %5, !dbg !3436

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3437
  unreachable, !dbg !3437

5:                                                ; preds = %1
  ret ptr %2, !dbg !3438
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3439 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %0, metadata !3445, metadata !DIExpression()), !dbg !3449
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3451
  call void @llvm.dbg.value(metadata ptr %2, metadata !3408, metadata !DIExpression()), !dbg !3452
  %3 = icmp eq ptr %2, null, !dbg !3454
  br i1 %3, label %4, label %5, !dbg !3455

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3456
  unreachable, !dbg !3456

5:                                                ; preds = %1
  ret ptr %2, !dbg !3457
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3458 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3462, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 %0, metadata !3430, metadata !DIExpression()), !dbg !3464
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %2, metadata !3408, metadata !DIExpression()), !dbg !3467
  %3 = icmp eq ptr %2, null, !dbg !3469
  br i1 %3, label %4, label %5, !dbg !3470

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3471
  unreachable, !dbg !3471

5:                                                ; preds = %1
  ret ptr %2, !dbg !3472
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3485
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3487
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3489
  %5 = icmp eq ptr %4, null, !dbg !3491
  br i1 %5, label %6, label %7, !dbg !3492

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3493
  unreachable, !dbg !3493

7:                                                ; preds = %2
  ret ptr %4, !dbg !3494
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3495 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3496 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3500, metadata !DIExpression()), !dbg !3502
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr %0, metadata !3503, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %1, metadata !3484, metadata !DIExpression()), !dbg !3509
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3511
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3513
  %5 = icmp eq ptr %4, null, !dbg !3515
  br i1 %5, label %6, label %7, !dbg !3516

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3517
  unreachable, !dbg !3517

7:                                                ; preds = %2
  ret ptr %4, !dbg !3518
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3519 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3525, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %0, metadata !3527, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %2, metadata !3531, metadata !DIExpression()), !dbg !3532
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3535
  %5 = icmp eq ptr %4, null, !dbg !3537
  br i1 %5, label %6, label %7, !dbg !3538

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3539
  unreachable, !dbg !3539

7:                                                ; preds = %3
  ret ptr %4, !dbg !3540
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3541 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3545, metadata !DIExpression()), !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3546, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr null, metadata !3400, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3548
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3550
  call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3551
  %4 = icmp eq ptr %3, null, !dbg !3553
  br i1 %4, label %5, label %6, !dbg !3554

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3555
  unreachable, !dbg !3555

6:                                                ; preds = %2
  ret ptr %3, !dbg !3556
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3557 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3561, metadata !DIExpression()), !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr null, metadata !3523, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %0, metadata !3524, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i64 %1, metadata !3525, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata ptr null, metadata !3527, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %0, metadata !3530, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3566
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3569
  %4 = icmp eq ptr %3, null, !dbg !3571
  br i1 %4, label %5, label %6, !dbg !3572

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3573
  unreachable, !dbg !3573

6:                                                ; preds = %2
  ret ptr %3, !dbg !3574
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3575 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3579, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3580, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %1, metadata !787, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 1, metadata !788, metadata !DIExpression()), !dbg !3582
  %3 = load i64, ptr %1, align 8, !dbg !3584, !tbaa !2655
  call void @llvm.dbg.value(metadata i64 %3, metadata !789, metadata !DIExpression()), !dbg !3582
  %4 = icmp eq ptr %0, null, !dbg !3585
  br i1 %4, label %5, label %8, !dbg !3587

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3588
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3591
  br label %15, !dbg !3591

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3592
  %10 = add nuw i64 %9, 1, !dbg !3592
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3592
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3592
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %13, metadata !789, metadata !DIExpression()), !dbg !3582
  br i1 %12, label %14, label %15, !dbg !3595

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3596
  unreachable, !dbg !3596

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3582
  call void @llvm.dbg.value(metadata i64 %16, metadata !789, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %16, metadata !3403, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 1, metadata !3404, metadata !DIExpression()), !dbg !3597
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3599
  call void @llvm.dbg.value(metadata ptr %17, metadata !3408, metadata !DIExpression()), !dbg !3600
  %18 = icmp eq ptr %17, null, !dbg !3602
  br i1 %18, label %19, label %20, !dbg !3603

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3604
  unreachable, !dbg !3604

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !786, metadata !DIExpression()), !dbg !3582
  store i64 %16, ptr %1, align 8, !dbg !3605, !tbaa !2655
  ret ptr %17, !dbg !3606
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !781 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !3607
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !787, metadata !DIExpression()), !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !788, metadata !DIExpression()), !dbg !3607
  %4 = load i64, ptr %1, align 8, !dbg !3608, !tbaa !2655
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !789, metadata !DIExpression()), !dbg !3607
  %5 = icmp eq ptr %0, null, !dbg !3609
  br i1 %5, label %6, label %13, !dbg !3610

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3611
  br i1 %7, label %8, label %20, !dbg !3612

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3613
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !789, metadata !DIExpression()), !dbg !3607
  %10 = icmp ugt i64 %2, 128, !dbg !3615
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !789, metadata !DIExpression()), !dbg !3607
  br label %20, !dbg !3617

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3618
  %15 = add nuw i64 %14, 1, !dbg !3618
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3618
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3618
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3618
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !789, metadata !DIExpression()), !dbg !3607
  br i1 %17, label %19, label %20, !dbg !3619

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3620
  unreachable, !dbg !3620

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3607
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !789, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata ptr %0, metadata !3400, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %21, metadata !3403, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()), !dbg !3621
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %22, metadata !3408, metadata !DIExpression()), !dbg !3624
  %23 = icmp eq ptr %22, null, !dbg !3626
  br i1 %23, label %24, label %25, !dbg !3627

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3628
  unreachable, !dbg !3628

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !786, metadata !DIExpression()), !dbg !3607
  store i64 %21, ptr %1, align 8, !dbg !3629, !tbaa !2655
  ret ptr %22, !dbg !3630
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !793 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !802, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !803, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !804, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !805, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !806, metadata !DIExpression()), !dbg !3631
  %6 = load i64, ptr %1, align 8, !dbg !3632, !tbaa !2655
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !807, metadata !DIExpression()), !dbg !3631
  %7 = ashr i64 %6, 1, !dbg !3633
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3633
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3633
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3633
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !808, metadata !DIExpression()), !dbg !3631
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3635
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !808, metadata !DIExpression()), !dbg !3631
  %12 = icmp sgt i64 %3, -1, !dbg !3636
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3638
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3638
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !808, metadata !DIExpression()), !dbg !3631
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3639
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3639
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !809, metadata !DIExpression()), !dbg !3631
  %18 = icmp slt i64 %17, 128, !dbg !3639
  %19 = select i1 %18, i64 128, i64 0, !dbg !3639
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !810, metadata !DIExpression()), !dbg !3631
  %21 = icmp eq i64 %20, 0, !dbg !3640
  br i1 %21, label %28, label %22, !dbg !3642

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !808, metadata !DIExpression()), !dbg !3631
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !809, metadata !DIExpression()), !dbg !3631
  br label %28, !dbg !3646

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3631
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !809, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !808, metadata !DIExpression()), !dbg !3631
  %31 = icmp eq ptr %0, null, !dbg !3647
  br i1 %31, label %32, label %33, !dbg !3649

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3650, !tbaa !2655
  br label %33, !dbg !3651

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3652
  %35 = icmp slt i64 %34, %2, !dbg !3654
  br i1 %35, label %36, label %48, !dbg !3655

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3656
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3656
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !808, metadata !DIExpression()), !dbg !3631
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3657
  br i1 %42, label %47, label %43, !dbg !3657

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3658
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3658
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !809, metadata !DIExpression()), !dbg !3631
  br i1 %45, label %47, label %48, !dbg !3659

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !3660
  unreachable, !dbg !3660

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3631
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !809, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !808, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %50, metadata !3478, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %50, metadata !3484, metadata !DIExpression()), !dbg !3663
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3665
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %52, metadata !3408, metadata !DIExpression()), !dbg !3667
  %53 = icmp eq ptr %52, null, !dbg !3669
  br i1 %53, label %54, label %55, !dbg !3670

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !3671
  unreachable, !dbg !3671

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !802, metadata !DIExpression()), !dbg !3631
  store i64 %49, ptr %1, align 8, !dbg !3672, !tbaa !2655
  ret ptr %52, !dbg !3673
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3674 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3676, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 1, metadata !3681, metadata !DIExpression()), !dbg !3682
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3684
  call void @llvm.dbg.value(metadata ptr %2, metadata !3408, metadata !DIExpression()), !dbg !3685
  %3 = icmp eq ptr %2, null, !dbg !3687
  br i1 %3, label %4, label %5, !dbg !3688

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3689
  unreachable, !dbg !3689

5:                                                ; preds = %1
  ret ptr %2, !dbg !3690
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3691 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3679 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3692
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3693
  call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3694
  %4 = icmp eq ptr %3, null, !dbg !3696
  br i1 %4, label %5, label %6, !dbg !3697

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3698
  unreachable, !dbg !3698

6:                                                ; preds = %2
  ret ptr %3, !dbg !3699
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3700 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3702, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %0, metadata !3704, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 1, metadata !3707, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %0, metadata !3710, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 1, metadata !3713, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %0, metadata !3710, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 1, metadata !3713, metadata !DIExpression()), !dbg !3714
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3716
  call void @llvm.dbg.value(metadata ptr %2, metadata !3408, metadata !DIExpression()), !dbg !3717
  %3 = icmp eq ptr %2, null, !dbg !3719
  br i1 %3, label %4, label %5, !dbg !3720

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3721
  unreachable, !dbg !3721

5:                                                ; preds = %1
  ret ptr %2, !dbg !3722
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3705 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3704, metadata !DIExpression()), !dbg !3723
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3707, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %0, metadata !3710, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %1, metadata !3713, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %0, metadata !3710, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %1, metadata !3713, metadata !DIExpression()), !dbg !3724
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3726
  call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3727
  %4 = icmp eq ptr %3, null, !dbg !3729
  br i1 %4, label %5, label %6, !dbg !3730

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3731
  unreachable, !dbg !3731

6:                                                ; preds = %2
  ret ptr %3, !dbg !3732
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3733 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3740
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3742
  call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3743
  %4 = icmp eq ptr %3, null, !dbg !3745
  br i1 %4, label %5, label %6, !dbg !3746

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3747
  unreachable, !dbg !3747

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3748, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3755
  ret ptr %3, !dbg !3756
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %1, metadata !3445, metadata !DIExpression()), !dbg !3766
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3768
  call void @llvm.dbg.value(metadata ptr %3, metadata !3408, metadata !DIExpression()), !dbg !3769
  %4 = icmp eq ptr %3, null, !dbg !3771
  br i1 %4, label %5, label %6, !dbg !3772

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3773
  unreachable, !dbg !3773

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3748, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3774
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3776
  ret ptr %3, !dbg !3777
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3778 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3782, metadata !DIExpression()), !dbg !3785
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3783, metadata !DIExpression()), !dbg !3785
  %3 = add nsw i64 %1, 1, !dbg !3786
  call void @llvm.dbg.value(metadata i64 %3, metadata !3443, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i64 %3, metadata !3445, metadata !DIExpression()), !dbg !3789
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3791
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3792
  %5 = icmp eq ptr %4, null, !dbg !3794
  br i1 %5, label %6, label %7, !dbg !3795

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3796
  unreachable, !dbg !3796

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3785
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3797
  store i8 0, ptr %8, align 1, !dbg !3798, !tbaa !928
  call void @llvm.dbg.value(metadata ptr %4, metadata !3748, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3799
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3801
  ret ptr %4, !dbg !3802
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3803 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3805, metadata !DIExpression()), !dbg !3806
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3807
  %3 = add i64 %2, 1, !dbg !3808
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %3, metadata !3738, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i64 %3, metadata !3430, metadata !DIExpression()), !dbg !3811
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3813
  call void @llvm.dbg.value(metadata ptr %4, metadata !3408, metadata !DIExpression()), !dbg !3814
  %5 = icmp eq ptr %4, null, !dbg !3816
  br i1 %5, label %6, label %7, !dbg !3817

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3818
  unreachable, !dbg !3818

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3748, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %3, metadata !3752, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !3821
  ret ptr %4, !dbg !3822
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3823 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3827, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3825, metadata !DIExpression()), !dbg !3828
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #40, !dbg !3827
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #40, !dbg !3827
  %3 = icmp eq i32 %1, 0, !dbg !3827
  tail call void @llvm.assume(i1 %3), !dbg !3827
  tail call void @abort() #42, !dbg !3829
  unreachable, !dbg !3829
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !3830 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3832, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3833, metadata !DIExpression()), !dbg !3837
  br label %2, !dbg !3838

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3833, metadata !DIExpression()), !dbg !3837
  %4 = load i8, ptr %3, align 1, !dbg !3839, !tbaa !928
  %5 = icmp eq i8 %4, 47, !dbg !3839
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3840
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3833, metadata !DIExpression()), !dbg !3837
  br i1 %5, label %2, label %.preheader, !dbg !3838, !llvm.loop !3841

.preheader:                                       ; preds = %2
  %.lcssa2 = phi ptr [ %3, %2 ], !dbg !3837
  %.lcssa1 = phi i8 [ %4, %2 ], !dbg !3839
  br label %7, !dbg !3842

7:                                                ; preds = %.preheader, %15
  %8 = phi i8 [ %19, %15 ], [ %.lcssa1, %.preheader ], !dbg !3843
  %9 = phi ptr [ %16, %15 ], [ %.lcssa2, %.preheader ], !dbg !3845
  %10 = phi i1 [ %17, %15 ], [ false, %.preheader ]
  %11 = phi ptr [ %18, %15 ], [ %.lcssa2, %.preheader ], !dbg !3846
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3835, metadata !DIExpression()), !dbg !3847
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3834, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3833, metadata !DIExpression()), !dbg !3837
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3842

12:                                               ; preds = %7
  %.lcssa = phi ptr [ %9, %7 ], !dbg !3845
  ret ptr %.lcssa, !dbg !3848

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3849
  br label %15, !dbg !3849

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3837
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3834, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !3833, metadata !DIExpression()), !dbg !3837
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3835, metadata !DIExpression()), !dbg !3847
  %19 = load i8, ptr %18, align 1, !dbg !3843, !tbaa !928
  br label %7, !dbg !3853, !llvm.loop !3854
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #37 !dbg !3856 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3860, metadata !DIExpression()), !dbg !3863
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()), !dbg !3863
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3866
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()), !dbg !3863
  %4 = icmp ugt i64 %2, 1, !dbg !3867
  br i1 %4, label %.preheader, label %13, !dbg !3869

.preheader:                                       ; preds = %1
  br label %5, !dbg !3870

5:                                                ; preds = %.preheader, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3861, metadata !DIExpression()), !dbg !3863
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3871
  %8 = load i8, ptr %7, align 1, !dbg !3871, !tbaa !928
  %9 = icmp eq i8 %8, 47, !dbg !3871
  br i1 %9, label %10, label %.loopexit, !dbg !3870

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3861, metadata !DIExpression()), !dbg !3863
  %12 = icmp ugt i64 %11, 1, !dbg !3867
  br i1 %12, label %5, label %.loopexit, !dbg !3869, !llvm.loop !3873

.loopexit:                                        ; preds = %10, %5
  %.ph = phi i64 [ %6, %5 ], [ 1, %10 ]
  br label %13, !dbg !3875

13:                                               ; preds = %.loopexit, %1
  %14 = phi i64 [ %2, %1 ], [ %.ph, %.loopexit ], !dbg !3876
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3862, metadata !DIExpression()), !dbg !3863
  ret i64 %14, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3877 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3915, metadata !DIExpression()), !dbg !3920
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !3921
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3916, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3920
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3922, metadata !DIExpression()), !dbg !3925
  %3 = load i32, ptr %0, align 8, !dbg !3927, !tbaa !1205
  %4 = and i32 %3, 32, !dbg !3928
  %5 = icmp eq i32 %4, 0, !dbg !3928
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3918, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3920
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !3929
  %7 = icmp eq i32 %6, 0, !dbg !3930
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3920
  br i1 %5, label %8, label %18, !dbg !3931

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3933
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3920
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3934
  %11 = xor i1 %7, true, !dbg !3934
  %12 = sext i1 %11 to i32, !dbg !3934
  br i1 %10, label %21, label %13, !dbg !3934

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !3935
  %15 = load i32, ptr %14, align 4, !dbg !3935, !tbaa !919
  %16 = icmp ne i32 %15, 9, !dbg !3936
  %17 = sext i1 %16 to i32, !dbg !3937
  br label %21, !dbg !3937

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3938

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !3940
  store i32 0, ptr %20, align 4, !dbg !3942, !tbaa !919
  br label %21, !dbg !3940

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3920
  ret i32 %22, !dbg !3943
}

; Function Attrs: nounwind
declare !dbg !3944 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3948 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3986, metadata !DIExpression()), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3987, metadata !DIExpression()), !dbg !3990
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3988, metadata !DIExpression()), !dbg !3990
  %3 = icmp slt i32 %2, 0, !dbg !3992
  br i1 %3, label %4, label %6, !dbg !3994

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3995
  br label %24, !dbg !3996

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !3997
  %8 = icmp eq i32 %7, 0, !dbg !3997
  br i1 %8, label %13, label %9, !dbg !3999

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4000
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4001
  %12 = icmp eq i64 %11, -1, !dbg !4002
  br i1 %12, label %16, label %13, !dbg !4003

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4004
  %15 = icmp eq i32 %14, 0, !dbg !4004
  br i1 %15, label %16, label %18, !dbg !4005

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3987, metadata !DIExpression()), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3989, metadata !DIExpression()), !dbg !3990
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3989, metadata !DIExpression()), !dbg !3990
  br label %24, !dbg !4007

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4008
  %20 = load i32, ptr %19, align 4, !dbg !4008, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3987, metadata !DIExpression()), !dbg !3990
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3989, metadata !DIExpression()), !dbg !3990
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4006
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3989, metadata !DIExpression()), !dbg !3990
  %22 = icmp eq i32 %20, 0, !dbg !4009
  br i1 %22, label %24, label %23, !dbg !4007

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4011, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3989, metadata !DIExpression()), !dbg !3990
  br label %24, !dbg !4013

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3990
  ret i32 %25, !dbg !4014
}

; Function Attrs: nofree nounwind
declare !dbg !4015 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4016 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4017 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4018 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4021 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4059, metadata !DIExpression()), !dbg !4060
  %2 = icmp eq ptr %0, null, !dbg !4061
  br i1 %2, label %6, label %3, !dbg !4063

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4064
  %5 = icmp eq i32 %4, 0, !dbg !4064
  br i1 %5, label %6, label %8, !dbg !4065

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4066
  br label %16, !dbg !4067

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4073
  %9 = load i32, ptr %0, align 8, !dbg !4075, !tbaa !1205
  %10 = and i32 %9, 256, !dbg !4077
  %11 = icmp eq i32 %10, 0, !dbg !4077
  br i1 %11, label %14, label %12, !dbg !4078

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4079
  br label %14, !dbg !4079

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4080
  br label %16, !dbg !4081

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4060
  ret i32 %17, !dbg !4082
}

; Function Attrs: nofree nounwind
declare !dbg !4083 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4084 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4123, metadata !DIExpression()), !dbg !4129
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4129
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4125, metadata !DIExpression()), !dbg !4129
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4130
  %5 = load ptr, ptr %4, align 8, !dbg !4130, !tbaa !4131
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4132
  %7 = load ptr, ptr %6, align 8, !dbg !4132, !tbaa !4133
  %8 = icmp eq ptr %5, %7, !dbg !4134
  br i1 %8, label %9, label %27, !dbg !4135

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4136
  %11 = load ptr, ptr %10, align 8, !dbg !4136, !tbaa !1435
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4137
  %13 = load ptr, ptr %12, align 8, !dbg !4137, !tbaa !4138
  %14 = icmp eq ptr %11, %13, !dbg !4139
  br i1 %14, label %15, label %27, !dbg !4140

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4141
  %17 = load ptr, ptr %16, align 8, !dbg !4141, !tbaa !4142
  %18 = icmp eq ptr %17, null, !dbg !4143
  br i1 %18, label %19, label %27, !dbg !4144

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4145
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4126, metadata !DIExpression()), !dbg !4147
  %22 = icmp eq i64 %21, -1, !dbg !4148
  br i1 %22, label %29, label %23, !dbg !4150

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4151, !tbaa !1205
  %25 = and i32 %24, -17, !dbg !4151
  store i32 %25, ptr %0, align 8, !dbg !4151, !tbaa !1205
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4152
  store i64 %21, ptr %26, align 8, !dbg !4153, !tbaa !4154
  br label %29, !dbg !4155

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4156
  br label %29, !dbg !4157

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4129
  ret i32 %30, !dbg !4158
}

; Function Attrs: nofree nounwind
declare !dbg !4159 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4167, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4168, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4169, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4170, metadata !DIExpression()), !dbg !4172
  %5 = icmp eq ptr %1, null, !dbg !4173
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4175
  %7 = select i1 %5, ptr @.str.150, ptr %1, !dbg !4175
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4169, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4168, metadata !DIExpression()), !dbg !4172
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4167, metadata !DIExpression()), !dbg !4172
  %9 = icmp eq ptr %3, null, !dbg !4176
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4178
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4170, metadata !DIExpression()), !dbg !4172
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4171, metadata !DIExpression()), !dbg !4172
  %12 = icmp ult i64 %11, -3, !dbg !4180
  br i1 %12, label %13, label %17, !dbg !4182

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4183
  %15 = icmp eq i32 %14, 0, !dbg !4183
  br i1 %15, label %16, label %29, !dbg !4184

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4185, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata ptr %10, metadata !4192, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i32 0, metadata !4195, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 8, metadata !4196, metadata !DIExpression()), !dbg !4197
  store i64 0, ptr %10, align 1, !dbg !4199
  br label %29, !dbg !4200

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4201
  br i1 %18, label %19, label %20, !dbg !4203

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4204
  unreachable, !dbg !4204

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4205

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4207
  br i1 %23, label %29, label %24, !dbg !4208

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4209
  br i1 %25, label %29, label %26, !dbg !4212

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4213, !tbaa !928
  %28 = zext i8 %27 to i32, !dbg !4214
  store i32 %28, ptr %6, align 4, !dbg !4215, !tbaa !919
  br label %29, !dbg !4216

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4172
  ret i64 %30, !dbg !4217
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4218 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4224 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4226, metadata !DIExpression()), !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4227, metadata !DIExpression()), !dbg !4230
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4228, metadata !DIExpression()), !dbg !4230
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4231
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4231
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4229, metadata !DIExpression()), !dbg !4230
  br i1 %5, label %6, label %8, !dbg !4233

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4234
  store i32 12, ptr %7, align 4, !dbg !4236, !tbaa !919
  br label %12, !dbg !4237

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4231
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4229, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %0, metadata !4238, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i64 %9, metadata !4241, metadata !DIExpression()), !dbg !4242
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4244
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !4245
  br label %12, !dbg !4246

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4230
  ret ptr %13, !dbg !4247
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4248 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4253, metadata !DIExpression(), metadata !4257, metadata ptr %2, metadata !DIExpression()), !dbg !4258
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4252, metadata !DIExpression()), !dbg !4258
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4259
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4260
  %4 = icmp eq i32 %3, 0, !dbg !4260
  br i1 %4, label %5, label %12, !dbg !4262

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4263, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr @.str.155, metadata !4266, metadata !DIExpression()), !dbg !4267
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.155, i64 2), !dbg !4270
  %7 = icmp eq i32 %6, 0, !dbg !4271
  br i1 %7, label %11, label %8, !dbg !4272

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4263, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr @.str.1.156, metadata !4266, metadata !DIExpression()), !dbg !4273
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.156, i64 6), !dbg !4275
  %10 = icmp eq i32 %9, 0, !dbg !4276
  br i1 %10, label %11, label %12, !dbg !4277

11:                                               ; preds = %8, %5
  br label %12, !dbg !4278

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4258
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4279
  ret i1 %13, !dbg !4279
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4280 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4284, metadata !DIExpression()), !dbg !4287
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4285, metadata !DIExpression()), !dbg !4287
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4286, metadata !DIExpression()), !dbg !4287
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4288
  ret i32 %4, !dbg !4289
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4290 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4294, metadata !DIExpression()), !dbg !4295
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4296
  ret ptr %2, !dbg !4297
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4298 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4300, metadata !DIExpression()), !dbg !4302
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4303
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4301, metadata !DIExpression()), !dbg !4302
  ret ptr %2, !dbg !4304
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4305 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4307, metadata !DIExpression()), !dbg !4314
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4308, metadata !DIExpression()), !dbg !4314
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4309, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 %0, metadata !4300, metadata !DIExpression()), !dbg !4315
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4317
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4315
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4310, metadata !DIExpression()), !dbg !4314
  %5 = icmp eq ptr %4, null, !dbg !4318
  br i1 %5, label %6, label %9, !dbg !4319

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4320
  br i1 %7, label %19, label %8, !dbg !4323

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4324, !tbaa !928
  br label %19, !dbg !4325

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4311, metadata !DIExpression()), !dbg !4327
  %11 = icmp ult i64 %10, %2, !dbg !4328
  br i1 %11, label %12, label %14, !dbg !4330

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4331
  call void @llvm.dbg.value(metadata ptr %1, metadata !4333, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata ptr %4, metadata !4336, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64 %13, metadata !4337, metadata !DIExpression()), !dbg !4338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4340
  br label %19, !dbg !4341

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4342
  br i1 %15, label %19, label %16, !dbg !4345

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4346
  call void @llvm.dbg.value(metadata ptr %1, metadata !4333, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata ptr %4, metadata !4336, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %17, metadata !4337, metadata !DIExpression()), !dbg !4348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4350
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4351
  store i8 0, ptr %18, align 1, !dbg !4352, !tbaa !928
  br label %19, !dbg !4353

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4354
  ret i32 %20, !dbg !4355
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
attributes #11 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!136, !386, !390, !405, !729, !465, !763, !765, !767, !769, !482, !503, !517, !565, !771, !721, !777, !812, !814, !817, !819, !821, !823, !745, !825, !827, !829, !831}
!llvm.ident = !{!833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833, !833}
!llvm.module.flags = !{!834, !835, !836, !837, !838, !839, !840, !841}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nohup.c", directory: "/src", checksumkind: CSK_MD5, checksum: "62665220fb9257e4a1baafbd9a0ef09b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 45)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 40)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2328, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 291)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 185)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 16)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 14)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 13)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !59, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !49, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 41)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 15)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !49, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 5)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 18)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 42)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 166, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 23)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 65)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 46)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 34)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !130, file: !131, line: 575, type: !184, isLocal: true, isDefinition: true)
!130 = distinct !DISubprogram(name: "oputs_", scope: !131, file: !131, line: 573, type: !132, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !302)
!131 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!132 = !DISubroutineType(cc: DW_CC_nocall, types: !133)
!133 = !{null, !134, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!136 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/nohup.o -MD -MP -MF src/.deps/nohup.Tpo -c src/nohup.c -o src/.nohup.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !137, retainedTypes: !177, globals: !190, splitDebugInlining: false, nameTableKind: None)
!137 = !{!138, !142, !148, !162}
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 36, baseType: !139, size: 32, elements: !140)
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !{!141}
!141 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 90, baseType: !139, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!145 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!146 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!147 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !149, line: 42, baseType: !139, size: 32, elements: !150)
!149 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!151 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!152 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!153 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!154 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!155 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!156 = !DIEnumerator(name: "c_quoting_style", value: 5)
!157 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!158 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!159 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!160 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!161 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !163, line: 46, baseType: !139, size: 32, elements: !164)
!163 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!165 = !DIEnumerator(name: "_ISupper", value: 256)
!166 = !DIEnumerator(name: "_ISlower", value: 512)
!167 = !DIEnumerator(name: "_ISalpha", value: 1024)
!168 = !DIEnumerator(name: "_ISdigit", value: 2048)
!169 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!170 = !DIEnumerator(name: "_ISspace", value: 8192)
!171 = !DIEnumerator(name: "_ISprint", value: 16384)
!172 = !DIEnumerator(name: "_ISgraph", value: 32768)
!173 = !DIEnumerator(name: "_ISblank", value: 1)
!174 = !DIEnumerator(name: "_IScntrl", value: 2)
!175 = !DIEnumerator(name: "_ISpunct", value: 4)
!176 = !DIEnumerator(name: "_ISalnum", value: 8)
!177 = !{!134, !178, !179, !184, !185, !186, !189}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !180, line: 72, baseType: !181)
!180 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184}
!184 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 18, baseType: !188)
!187 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!188 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!189 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!190 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !74, !76, !81, !86, !88, !93, !98, !103, !108, !113, !118, !123, !128, !191, !193, !195, !200, !202, !207, !209, !211, !216, !218, !220, !222, !227, !232, !234, !236, !238, !240, !242, !244, !249, !251, !253, !258, !260, !262, !264, !266, !271, !273, !278, !280, !282, !287, !292, !297}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !131, line: 585, type: !90, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !131, line: 586, type: !90, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !131, line: 595, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 4)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !131, line: 620, type: !19, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !131, line: 648, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 2)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !131, line: 648, type: !90, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !131, line: 649, type: !197, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !131, line: 649, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 3)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !131, line: 650, type: !90, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !131, line: 651, type: !19, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !131, line: 651, type: !19, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !131, line: 652, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 7)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !131, line: 653, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 8)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !131, line: 654, type: !49, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !131, line: 655, type: !49, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !131, line: 656, type: !49, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !131, line: 657, type: !49, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !131, line: 663, type: !224, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !131, line: 664, type: !49, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !131, line: 669, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 17)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !131, line: 669, type: !14, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !131, line: 676, type: !83, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !131, line: 676, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 61)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !131, line: 679, type: !213, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !131, line: 683, type: !90, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !131, line: 688, type: !90, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !131, line: 691, type: !229, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !131, line: 826, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1440, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 180)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !131, line: 839, type: !59, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !131, line: 840, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 22)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !131, line: 841, type: !83, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !131, line: 862, type: !197, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !131, line: 868, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 71)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !131, line: 875, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 27)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !131, line: 877, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 51)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !131, line: 877, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 12)
!302 = !{!303, !304, !305, !308, !310, !311, !312, !316, !317, !318, !319, !321, !375, !376, !377, !379, !380}
!303 = !DILocalVariable(name: "program", arg: 1, scope: !130, file: !131, line: 573, type: !134)
!304 = !DILocalVariable(name: "option", arg: 2, scope: !130, file: !131, line: 573, type: !134)
!305 = !DILocalVariable(name: "term", scope: !306, file: !131, line: 585, type: !134)
!306 = distinct !DILexicalBlock(scope: !307, file: !131, line: 582, column: 5)
!307 = distinct !DILexicalBlock(scope: !130, file: !131, line: 581, column: 7)
!308 = !DILocalVariable(name: "double_space", scope: !130, file: !131, line: 594, type: !309)
!309 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!310 = !DILocalVariable(name: "first_word", scope: !130, file: !131, line: 595, type: !134)
!311 = !DILocalVariable(name: "option_text", scope: !130, file: !131, line: 596, type: !134)
!312 = !DILocalVariable(name: "s", scope: !313, file: !131, line: 608, type: !134)
!313 = distinct !DILexicalBlock(scope: !314, file: !131, line: 605, column: 5)
!314 = distinct !DILexicalBlock(scope: !315, file: !131, line: 604, column: 12)
!315 = distinct !DILexicalBlock(scope: !130, file: !131, line: 597, column: 7)
!316 = !DILocalVariable(name: "spaces", scope: !313, file: !131, line: 609, type: !186)
!317 = !DILocalVariable(name: "anchor_len", scope: !130, file: !131, line: 620, type: !186)
!318 = !DILocalVariable(name: "desc_text", scope: !130, file: !131, line: 625, type: !134)
!319 = !DILocalVariable(name: "__ptr", scope: !320, file: !131, line: 644, type: !134)
!320 = distinct !DILexicalBlock(scope: !130, file: !131, line: 644, column: 3)
!321 = !DILocalVariable(name: "__stream", scope: !320, file: !131, line: 644, type: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !325)
!324 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !327)
!326 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!327 = !{!328, !329, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !344, !346, !347, !348, !352, !353, !355, !356, !359, !361, !364, !367, !368, !369, !370, !371}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !325, file: !326, line: 51, baseType: !184, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !325, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !325, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !325, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !325, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !325, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !325, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !325, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !325, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !325, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !325, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !325, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !325, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !326, line: 36, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !325, file: !326, line: 70, baseType: !345, size: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !325, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !325, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !325, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !350, line: 152, baseType: !351)
!350 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!351 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !325, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !325, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!354 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !325, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !325, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !326, line: 43, baseType: null)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !325, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !350, line: 153, baseType: !351)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !325, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !326, line: 37, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !325, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !326, line: 38, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !325, file: !326, line: 93, baseType: !345, size: 64, offset: 1344)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !325, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !325, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !325, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !325, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 20)
!375 = !DILocalVariable(name: "__cnt", scope: !320, file: !131, line: 644, type: !186)
!376 = !DILocalVariable(name: "url_program", scope: !130, file: !131, line: 648, type: !134)
!377 = !DILocalVariable(name: "__ptr", scope: !378, file: !131, line: 686, type: !134)
!378 = distinct !DILexicalBlock(scope: !130, file: !131, line: 686, column: 3)
!379 = !DILocalVariable(name: "__stream", scope: !378, file: !131, line: 686, type: !322)
!380 = !DILocalVariable(name: "__cnt", scope: !378, file: !131, line: 686, type: !186)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !383, line: 3, type: !83, isLocal: true, isDefinition: true)
!383 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "Version", scope: !386, file: !383, line: 3, type: !134, isLocal: false, isDefinition: true)
!386 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !387, splitDebugInlining: false, nameTableKind: None)
!387 = !{!381, !384}
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "file_name", scope: !390, file: !391, line: 45, type: !134, isLocal: true, isDefinition: true)
!390 = distinct !DICompileUnit(language: DW_LANG_C11, file: !391, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !392, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!392 = !{!393, !395, !397, !399, !388, !401}
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !391, line: 121, type: !224, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !391, line: 121, type: !299, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !391, line: 123, type: !224, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !391, line: 126, type: !213, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !390, file: !391, line: 55, type: !309, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !405, file: !406, line: 66, type: !456, isLocal: false, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!407 = !{!178, !189}
!408 = !{!409, !411, !435, !437, !439, !441, !403, !443, !445, !447, !449, !454}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 272, type: !90, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "old_file_name", scope: !413, file: !406, line: 304, type: !134, isLocal: true, isDefinition: true)
!413 = distinct !DISubprogram(name: "verror_at_line", scope: !406, file: !406, line: 298, type: !414, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !428)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !184, !184, !134, !139, !134, !416}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !417, line: 52, baseType: !418)
!417 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !419, line: 12, baseType: !420)
!419 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !406, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !421, file: !406, baseType: !178, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !421, file: !406, baseType: !178, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !421, file: !406, baseType: !178, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !421, file: !406, baseType: !184, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !421, file: !406, baseType: !184, size: 32, offset: 224)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DILocalVariable(name: "status", arg: 1, scope: !413, file: !406, line: 298, type: !184)
!430 = !DILocalVariable(name: "errnum", arg: 2, scope: !413, file: !406, line: 298, type: !184)
!431 = !DILocalVariable(name: "file_name", arg: 3, scope: !413, file: !406, line: 298, type: !134)
!432 = !DILocalVariable(name: "line_number", arg: 4, scope: !413, file: !406, line: 298, type: !139)
!433 = !DILocalVariable(name: "message", arg: 5, scope: !413, file: !406, line: 298, type: !134)
!434 = !DILocalVariable(name: "args", arg: 6, scope: !413, file: !406, line: 298, type: !416)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "old_line_number", scope: !413, file: !406, line: 305, type: !139, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !406, line: 338, type: !197, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !229, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !204, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "error_message_count", scope: !405, file: !406, line: 69, type: !139, isLocal: false, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !405, file: !406, line: 295, type: !184, isLocal: false, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !224, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 21)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !406, line: 214, type: !90, isLocal: true, isDefinition: true)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null}
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !461, file: !462, line: 506, type: !184, isLocal: true, isDefinition: true)
!461 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !462, file: !462, line: 485, type: !463, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !467)
!462 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!463 = !DISubroutineType(types: !464)
!464 = !{!184, !184, !184}
!465 = distinct !DICompileUnit(language: DW_LANG_C11, file: !462, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !466, splitDebugInlining: false, nameTableKind: None)
!466 = !{!459}
!467 = !{!468, !469, !470, !471, !474}
!468 = !DILocalVariable(name: "fd", arg: 1, scope: !461, file: !462, line: 485, type: !184)
!469 = !DILocalVariable(name: "target", arg: 2, scope: !461, file: !462, line: 485, type: !184)
!470 = !DILocalVariable(name: "result", scope: !461, file: !462, line: 487, type: !184)
!471 = !DILocalVariable(name: "flags", scope: !472, file: !462, line: 530, type: !184)
!472 = distinct !DILexicalBlock(scope: !473, file: !462, line: 529, column: 5)
!473 = distinct !DILexicalBlock(scope: !461, file: !462, line: 528, column: 7)
!474 = !DILocalVariable(name: "saved_errno", scope: !475, file: !462, line: 533, type: !184)
!475 = distinct !DILexicalBlock(scope: !476, file: !462, line: 532, column: 9)
!476 = distinct !DILexicalBlock(scope: !472, file: !462, line: 531, column: 11)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !479, line: 60, type: !204, isLocal: true, isDefinition: true)
!479 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "long_options", scope: !482, file: !479, line: 34, type: !491, isLocal: true, isDefinition: true)
!482 = distinct !DICompileUnit(language: DW_LANG_C11, file: !479, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, globals: !484, splitDebugInlining: false, nameTableKind: None)
!483 = !{!178}
!484 = !{!477, !485, !487, !489, !480}
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !479, line: 112, type: !44, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !479, line: 36, type: !90, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !479, line: 37, type: !229, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 768, elements: !214)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !494, line: 50, size: 256, elements: !495)
!494 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!495 = !{!496, !497, !498, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !494, line: 52, baseType: !134, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !493, file: !494, line: 55, baseType: !184, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !493, file: !494, line: 56, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !493, file: !494, line: 57, baseType: !184, size: 32, offset: 192)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "program_name", scope: !503, file: !504, line: 31, type: !134, isLocal: false, isDefinition: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C11, file: !504, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, globals: !506, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!505 = !{!178, !330}
!506 = !{!501, !507, !509}
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !504, line: 46, type: !229, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !504, line: 49, type: !197, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "utf07FF", scope: !513, file: !514, line: 46, type: !541, isLocal: true, isDefinition: true)
!513 = distinct !DISubprogram(name: "proper_name_lite", scope: !514, file: !514, line: 38, type: !515, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !519)
!514 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!515 = !DISubroutineType(types: !516)
!516 = !{!134, !134, !134}
!517 = distinct !DICompileUnit(language: DW_LANG_C11, file: !514, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !518, splitDebugInlining: false, nameTableKind: None)
!518 = !{!511}
!519 = !{!520, !521, !522, !523, !528}
!520 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !513, file: !514, line: 38, type: !134)
!521 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !513, file: !514, line: 38, type: !134)
!522 = !DILocalVariable(name: "translation", scope: !513, file: !514, line: 40, type: !134)
!523 = !DILocalVariable(name: "w", scope: !513, file: !514, line: 47, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !525, line: 37, baseType: !526)
!525 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !350, line: 57, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !350, line: 42, baseType: !139)
!528 = !DILocalVariable(name: "mbs", scope: !513, file: !514, line: 48, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !531)
!530 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !533)
!532 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !533, file: !532, line: 15, baseType: !184, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !533, file: !532, line: 20, baseType: !537, size: 32, offset: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !532, line: 16, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !537, file: !532, line: 18, baseType: !139, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !537, file: !532, line: 19, baseType: !197, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16, elements: !205)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !544, line: 78, type: !229, isLocal: true, isDefinition: true)
!544 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !544, line: 79, type: !19, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !544, line: 80, type: !69, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !544, line: 81, type: !69, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !544, line: 82, type: !372, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !544, line: 83, type: !204, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !544, line: 84, type: !229, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !544, line: 85, type: !224, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !544, line: 86, type: !224, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !544, line: 87, type: !229, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !565, file: !544, line: 76, type: !639, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !544, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !574, globals: !575, splitDebugInlining: false, nameTableKind: None)
!566 = !{!567, !569, !162}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !568, line: 42, baseType: !139, size: 32, elements: !150)
!568 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !568, line: 254, baseType: !139, size: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!572 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!573 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!574 = !{!178, !184, !185, !186}
!575 = !{!542, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !576, !580, !590, !592, !597, !599, !601, !603, !605, !628, !635, !637}
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !565, file: !544, line: 92, type: !578, isLocal: false, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 320, elements: !50)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !565, file: !544, line: 1040, type: !582, isLocal: false, isDefinition: true)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !544, line: 56, size: 448, elements: !583)
!583 = !{!584, !585, !586, !588, !589}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !582, file: !544, line: 59, baseType: !567, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !544, line: 62, baseType: !184, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !582, file: !544, line: 66, baseType: !587, size: 256, offset: 64)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !230)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !582, file: !544, line: 69, baseType: !134, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !582, file: !544, line: 72, baseType: !134, size: 64, offset: 384)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !565, file: !544, line: 107, type: !582, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "slot0", scope: !565, file: !544, line: 831, type: !594, isLocal: true, isDefinition: true)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 256)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !544, line: 321, type: !204, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !544, line: 357, type: !204, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !544, line: 358, type: !204, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !544, line: 199, type: !224, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "quote", scope: !607, file: !544, line: 228, type: !626, isLocal: true, isDefinition: true)
!607 = distinct !DISubprogram(name: "gettext_quote", scope: !544, file: !544, line: 197, type: !608, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{!134, !134, !567}
!610 = !{!611, !612, !613, !614, !615}
!611 = !DILocalVariable(name: "msgid", arg: 1, scope: !607, file: !544, line: 197, type: !134)
!612 = !DILocalVariable(name: "s", arg: 2, scope: !607, file: !544, line: 197, type: !567)
!613 = !DILocalVariable(name: "translation", scope: !607, file: !544, line: 199, type: !134)
!614 = !DILocalVariable(name: "w", scope: !607, file: !544, line: 229, type: !524)
!615 = !DILocalVariable(name: "mbs", scope: !607, file: !544, line: 230, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !618, file: !532, line: 15, baseType: !184, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !618, file: !532, line: 20, baseType: !622, size: 32, offset: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !532, line: 16, size: 32, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !622, file: !532, line: 18, baseType: !139, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !622, file: !532, line: 19, baseType: !197, size: 32)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !627)
!627 = !{!206, !199}
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "slotvec", scope: !565, file: !544, line: 834, type: !630, isLocal: true, isDefinition: true)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !544, line: 823, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !631, file: !544, line: 825, baseType: !186, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !631, file: !544, line: 826, baseType: !330, size: 64, offset: 64)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "nslots", scope: !565, file: !544, line: 832, type: !184, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "slotvec0", scope: !565, file: !544, line: 833, type: !631, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 704, elements: !641)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!641 = !{!642}
!642 = !DISubrange(count: 11)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !645, line: 67, type: !299, isLocal: true, isDefinition: true)
!645 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !645, line: 69, type: !224, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !645, line: 83, type: !224, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !645, line: 83, type: !197, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !645, line: 85, type: !204, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !645, line: 88, type: !656, isLocal: true, isDefinition: true)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 171)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !645, line: 88, type: !120, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !645, line: 105, type: !59, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !645, line: 109, type: !105, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !645, line: 113, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 28)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !645, line: 120, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 32)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !645, line: 127, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 36)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !645, line: 134, type: !14, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !645, line: 142, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 44)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !645, line: 150, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 48)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !645, line: 159, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 52)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !645, line: 170, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 60)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !645, line: 248, type: !372, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !645, line: 248, type: !275, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !645, line: 254, type: !372, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !645, line: 254, type: !64, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !645, line: 254, type: !14, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !645, line: 259, type: !3, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !645, line: 259, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 29)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !721, file: !722, line: 26, type: !724, isLocal: false, isDefinition: true)
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !723, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!723 = !{!719}
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 47)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "exit_failure", scope: !729, file: !730, line: 24, type: !732, isLocal: false, isDefinition: true)
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !731, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!731 = !{!727}
!732 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !735, line: 34, type: !213, isLocal: true, isDefinition: true)
!735 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !735, line: 34, type: !224, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !735, line: 34, type: !246, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !742, line: 108, type: !44, isLocal: true, isDefinition: true)
!742 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "internal_state", scope: !745, file: !742, line: 97, type: !748, isLocal: true, isDefinition: true)
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !742, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !746, globals: !747, splitDebugInlining: false, nameTableKind: None)
!746 = !{!178, !186, !189}
!747 = !{!740, !743}
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !750, file: !532, line: 15, baseType: !184, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !750, file: !532, line: 20, baseType: !754, size: 32, offset: 32)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !750, file: !532, line: 16, size: 32, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !754, file: !532, line: 18, baseType: !139, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !754, file: !532, line: 19, baseType: !197, size: 32)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !760, line: 35, type: !204, isLocal: true, isDefinition: true)
!760 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !760, line: 35, type: !19, isLocal: true, isDefinition: true)
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-reopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-reopen.Tpo -c lib/fd-reopen.c -o lib/.libcoreutils_a-fd-reopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/fd-reopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "062fe9c324b2740011a864ab02c109e2")
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat.Tpo -c lib/filenamecat.c -o lib/.libcoreutils_a-filenamecat.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat-lgpl.Tpo -c lib/filenamecat-lgpl.c -o lib/.libcoreutils_a-filenamecat-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!768 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !772, retainedTypes: !483, globals: !776, splitDebugInlining: false, nameTableKind: None)
!772 = !{!773}
!773 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !645, line: 40, baseType: !139, size: 32, elements: !774)
!774 = !{!775}
!775 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!776 = !{!643, !646, !648, !650, !652, !654, !659, !661, !663, !665, !670, !675, !680, !682, !687, !692, !697, !702, !704, !706, !708, !710, !712, !714}
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !779, retainedTypes: !811, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!779 = !{!780, !792}
!780 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !781, file: !778, line: 188, baseType: !139, size: 32, elements: !790)
!781 = distinct !DISubprogram(name: "x2nrealloc", scope: !778, file: !778, line: 176, type: !782, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !785)
!782 = !DISubroutineType(types: !783)
!783 = !{!178, !178, !784, !186}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!785 = !{!786, !787, !788, !789}
!786 = !DILocalVariable(name: "p", arg: 1, scope: !781, file: !778, line: 176, type: !178)
!787 = !DILocalVariable(name: "pn", arg: 2, scope: !781, file: !778, line: 176, type: !784)
!788 = !DILocalVariable(name: "s", arg: 3, scope: !781, file: !778, line: 176, type: !186)
!789 = !DILocalVariable(name: "n", scope: !781, file: !778, line: 178, type: !186)
!790 = !{!791}
!791 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!792 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !793, file: !778, line: 228, baseType: !139, size: 32, elements: !790)
!793 = distinct !DISubprogram(name: "xpalloc", scope: !778, file: !778, line: 223, type: !794, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !801)
!794 = !DISubroutineType(types: !795)
!795 = !{!178, !178, !796, !797, !799, !797}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !798, line: 130, baseType: !799)
!798 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !800, line: 18, baseType: !351)
!800 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810}
!802 = !DILocalVariable(name: "pa", arg: 1, scope: !793, file: !778, line: 223, type: !178)
!803 = !DILocalVariable(name: "pn", arg: 2, scope: !793, file: !778, line: 223, type: !796)
!804 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !793, file: !778, line: 223, type: !797)
!805 = !DILocalVariable(name: "n_max", arg: 4, scope: !793, file: !778, line: 223, type: !799)
!806 = !DILocalVariable(name: "s", arg: 5, scope: !793, file: !778, line: 223, type: !797)
!807 = !DILocalVariable(name: "n0", scope: !793, file: !778, line: 230, type: !797)
!808 = !DILocalVariable(name: "n", scope: !793, file: !778, line: 237, type: !797)
!809 = !DILocalVariable(name: "nbytes", scope: !793, file: !778, line: 248, type: !797)
!810 = !DILocalVariable(name: "adjusted_nbytes", scope: !793, file: !778, line: 252, type: !797)
!811 = !{!330, !178}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !813, splitDebugInlining: false, nameTableKind: None)
!813 = !{!733, !736, !738}
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !816, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!816 = !{!330}
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !820, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!820 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !828, splitDebugInlining: false, nameTableKind: None)
!828 = !{!758, !761}
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!831 = distinct !DICompileUnit(language: DW_LANG_C11, file: !832, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !483, splitDebugInlining: false, nameTableKind: None)
!832 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!833 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!834 = !{i32 7, !"Dwarf Version", i32 5}
!835 = !{i32 2, !"Debug Info Version", i32 3}
!836 = !{i32 1, !"wchar_size", i32 4}
!837 = !{i32 8, !"PIC Level", i32 2}
!838 = !{i32 7, !"PIE Level", i32 2}
!839 = !{i32 7, !"uwtable", i32 2}
!840 = !{i32 7, !"frame-pointer", i32 1}
!841 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!842 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !182, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !843)
!843 = !{!844}
!844 = !DILocalVariable(name: "status", arg: 1, scope: !842, file: !2, line: 43, type: !184)
!845 = !DILocation(line: 0, scope: !842)
!846 = !DILocation(line: 45, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !2, line: 45, column: 7)
!848 = !DILocation(line: 45, column: 7, scope: !842)
!849 = !DILocation(line: 46, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !2, line: 46, column: 5)
!851 = !{!852, !852, i64 0}
!852 = !{!"any pointer", !853, i64 0}
!853 = !{!"omnipotent char", !854, i64 0}
!854 = !{!"Simple C/C++ TBAA"}
!855 = !DILocation(line: 49, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !847, file: !2, line: 48, column: 5)
!857 = !DILocation(line: 55, column: 7, scope: !856)
!858 = !DILocation(line: 59, column: 7, scope: !856)
!859 = !DILocation(line: 60, column: 7, scope: !856)
!860 = !DILocation(line: 61, column: 7, scope: !856)
!861 = !DILocation(line: 68, column: 7, scope: !856)
!862 = !DILocalVariable(name: "program", arg: 1, scope: !863, file: !131, line: 824, type: !134)
!863 = distinct !DISubprogram(name: "emit_exec_status", scope: !131, file: !131, line: 824, type: !864, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !134}
!866 = !{!862}
!867 = !DILocation(line: 0, scope: !863, inlinedAt: !868)
!868 = distinct !DILocation(line: 69, column: 7, scope: !856)
!869 = !DILocation(line: 826, column: 7, scope: !863, inlinedAt: !868)
!870 = !DILocalVariable(name: "program", arg: 1, scope: !871, file: !131, line: 836, type: !134)
!871 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !131, file: !131, line: 836, type: !864, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !872)
!872 = !{!870, !873, !880, !881, !883, !884}
!873 = !DILocalVariable(name: "infomap", scope: !871, file: !131, line: 838, type: !874)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 896, elements: !225)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !871, file: !131, line: 838, size: 128, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !876, file: !131, line: 838, baseType: !134, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !876, file: !131, line: 838, baseType: !134, size: 64, offset: 64)
!880 = !DILocalVariable(name: "node", scope: !871, file: !131, line: 848, type: !134)
!881 = !DILocalVariable(name: "map_prog", scope: !871, file: !131, line: 849, type: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!883 = !DILocalVariable(name: "lc_messages", scope: !871, file: !131, line: 861, type: !134)
!884 = !DILocalVariable(name: "url_program", scope: !871, file: !131, line: 874, type: !134)
!885 = !DILocation(line: 0, scope: !871, inlinedAt: !886)
!886 = distinct !DILocation(line: 70, column: 7, scope: !856)
!887 = !{}
!888 = !DILocation(line: 857, column: 3, scope: !871, inlinedAt: !886)
!889 = !DILocation(line: 861, column: 29, scope: !871, inlinedAt: !886)
!890 = !DILocation(line: 862, column: 7, scope: !891, inlinedAt: !886)
!891 = distinct !DILexicalBlock(scope: !871, file: !131, line: 862, column: 7)
!892 = !DILocation(line: 862, column: 19, scope: !891, inlinedAt: !886)
!893 = !DILocation(line: 862, column: 22, scope: !891, inlinedAt: !886)
!894 = !DILocation(line: 862, column: 7, scope: !871, inlinedAt: !886)
!895 = !DILocation(line: 868, column: 7, scope: !896, inlinedAt: !886)
!896 = distinct !DILexicalBlock(scope: !891, file: !131, line: 863, column: 5)
!897 = !DILocation(line: 870, column: 5, scope: !896, inlinedAt: !886)
!898 = !DILocation(line: 875, column: 3, scope: !871, inlinedAt: !886)
!899 = !DILocation(line: 877, column: 3, scope: !871, inlinedAt: !886)
!900 = !DILocation(line: 72, column: 3, scope: !842)
!901 = !DISubprogram(name: "dcgettext", scope: !902, file: !902, line: 51, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!903 = !DISubroutineType(types: !904)
!904 = !{!330, !134, !134, !184}
!905 = !DISubprogram(name: "__fprintf_chk", scope: !906, file: !906, line: 93, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!907 = !DISubroutineType(types: !908)
!908 = !{!184, !909, !184, !910, null}
!909 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!910 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!911 = !DISubprogram(name: "__printf_chk", scope: !906, file: !906, line: 95, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubroutineType(types: !913)
!913 = !{!184, !184, !910, null}
!914 = !DISubprogram(name: "fputs_unlocked", scope: !417, file: !417, line: 691, type: !915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubroutineType(types: !916)
!916 = !{!184, !910, !909}
!917 = !DILocation(line: 0, scope: !130)
!918 = !DILocation(line: 581, column: 7, scope: !307)
!919 = !{!920, !920, i64 0}
!920 = !{!"int", !853, i64 0}
!921 = !DILocation(line: 581, column: 19, scope: !307)
!922 = !DILocation(line: 581, column: 7, scope: !130)
!923 = !DILocation(line: 585, column: 26, scope: !306)
!924 = !DILocation(line: 0, scope: !306)
!925 = !DILocation(line: 586, column: 23, scope: !306)
!926 = !DILocation(line: 586, column: 28, scope: !306)
!927 = !DILocation(line: 586, column: 32, scope: !306)
!928 = !{!853, !853, i64 0}
!929 = !DILocation(line: 586, column: 38, scope: !306)
!930 = !DILocalVariable(name: "__s1", arg: 1, scope: !931, file: !932, line: 1359, type: !134)
!931 = distinct !DISubprogram(name: "streq", scope: !932, file: !932, line: 1359, type: !933, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !935)
!932 = !DIFile(filename: "./lib/string.h", directory: "/src")
!933 = !DISubroutineType(types: !934)
!934 = !{!309, !134, !134}
!935 = !{!930, !936}
!936 = !DILocalVariable(name: "__s2", arg: 2, scope: !931, file: !932, line: 1359, type: !134)
!937 = !DILocation(line: 0, scope: !931, inlinedAt: !938)
!938 = distinct !DILocation(line: 586, column: 41, scope: !306)
!939 = !DILocation(line: 1361, column: 11, scope: !931, inlinedAt: !938)
!940 = !DILocation(line: 1361, column: 10, scope: !931, inlinedAt: !938)
!941 = !DILocation(line: 586, column: 19, scope: !306)
!942 = !DILocation(line: 587, column: 5, scope: !306)
!943 = !DILocation(line: 588, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !130, file: !131, line: 588, column: 7)
!945 = !DILocation(line: 588, column: 7, scope: !130)
!946 = !DILocation(line: 590, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !131, line: 589, column: 5)
!948 = !DILocation(line: 591, column: 7, scope: !947)
!949 = !DILocation(line: 595, column: 37, scope: !130)
!950 = !DILocation(line: 595, column: 35, scope: !130)
!951 = !DILocation(line: 596, column: 29, scope: !130)
!952 = !DILocation(line: 597, column: 8, scope: !315)
!953 = !DILocation(line: 597, column: 7, scope: !130)
!954 = !DILocation(line: 604, column: 24, scope: !314)
!955 = !DILocation(line: 604, column: 12, scope: !315)
!956 = !DILocation(line: 0, scope: !313)
!957 = !DILocation(line: 610, column: 16, scope: !313)
!958 = !DILocation(line: 610, column: 7, scope: !313)
!959 = !DILocation(line: 611, column: 21, scope: !313)
!960 = !{!961, !961, i64 0}
!961 = !{!"short", !853, i64 0}
!962 = !DILocation(line: 611, column: 19, scope: !313)
!963 = !DILocation(line: 611, column: 16, scope: !313)
!964 = !DILocation(line: 610, column: 30, scope: !313)
!965 = distinct !{!965, !958, !959, !966}
!966 = !{!"llvm.loop.mustprogress"}
!967 = !DILocation(line: 612, column: 18, scope: !968)
!968 = distinct !DILexicalBlock(scope: !313, file: !131, line: 612, column: 11)
!969 = !DILocation(line: 612, column: 11, scope: !313)
!970 = !DILocation(line: 620, column: 23, scope: !130)
!971 = !DILocation(line: 625, column: 39, scope: !130)
!972 = !DILocation(line: 626, column: 3, scope: !130)
!973 = !DILocation(line: 626, column: 10, scope: !130)
!974 = !DILocation(line: 626, column: 21, scope: !130)
!975 = !DILocation(line: 628, column: 44, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !131, line: 628, column: 11)
!977 = distinct !DILexicalBlock(scope: !130, file: !131, line: 627, column: 5)
!978 = !DILocation(line: 628, column: 32, scope: !976)
!979 = !DILocation(line: 628, column: 49, scope: !976)
!980 = !DILocation(line: 628, column: 11, scope: !977)
!981 = !DILocation(line: 630, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !131, line: 630, column: 11)
!983 = !DILocation(line: 630, column: 11, scope: !977)
!984 = !DILocation(line: 632, column: 26, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !131, line: 632, column: 15)
!986 = distinct !DILexicalBlock(scope: !982, file: !131, line: 631, column: 9)
!987 = !DILocation(line: 632, column: 34, scope: !985)
!988 = !DILocation(line: 632, column: 37, scope: !985)
!989 = !DILocation(line: 632, column: 15, scope: !986)
!990 = !DILocation(line: 640, column: 16, scope: !977)
!991 = distinct !{!991, !972, !992, !966}
!992 = !DILocation(line: 641, column: 5, scope: !130)
!993 = !DILocation(line: 644, column: 3, scope: !130)
!994 = !DILocation(line: 0, scope: !931, inlinedAt: !995)
!995 = distinct !DILocation(line: 648, column: 31, scope: !130)
!996 = !DILocation(line: 0, scope: !931, inlinedAt: !997)
!997 = distinct !DILocation(line: 649, column: 31, scope: !130)
!998 = !DILocation(line: 0, scope: !931, inlinedAt: !999)
!999 = distinct !DILocation(line: 650, column: 31, scope: !130)
!1000 = !DILocation(line: 0, scope: !931, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 651, column: 31, scope: !130)
!1002 = !DILocation(line: 0, scope: !931, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 652, column: 31, scope: !130)
!1004 = !DILocation(line: 0, scope: !931, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 653, column: 31, scope: !130)
!1006 = !DILocation(line: 0, scope: !931, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 654, column: 31, scope: !130)
!1008 = !DILocation(line: 0, scope: !931, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 655, column: 31, scope: !130)
!1010 = !DILocation(line: 0, scope: !931, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 656, column: 31, scope: !130)
!1012 = !DILocation(line: 0, scope: !931, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 657, column: 31, scope: !130)
!1014 = !DILocation(line: 663, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !130, file: !131, line: 663, column: 7)
!1016 = !DILocation(line: 664, column: 7, scope: !1015)
!1017 = !DILocation(line: 664, column: 10, scope: !1015)
!1018 = !DILocation(line: 663, column: 7, scope: !130)
!1019 = !DILocation(line: 669, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !131, line: 665, column: 5)
!1021 = !DILocation(line: 671, column: 5, scope: !1020)
!1022 = !DILocation(line: 676, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !131, line: 673, column: 5)
!1024 = !DILocation(line: 679, column: 3, scope: !130)
!1025 = !DILocation(line: 683, column: 3, scope: !130)
!1026 = !DILocation(line: 686, column: 3, scope: !130)
!1027 = !DILocation(line: 688, column: 3, scope: !130)
!1028 = !DILocation(line: 691, column: 3, scope: !130)
!1029 = !DILocation(line: 695, column: 3, scope: !130)
!1030 = !DILocation(line: 696, column: 1, scope: !130)
!1031 = !DISubprogram(name: "setlocale", scope: !1032, file: !1032, line: 122, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!330, !184, !134}
!1035 = !DISubprogram(name: "strncmp", scope: !1036, file: !1036, line: 159, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!184, !134, !134, !186}
!1039 = !DISubprogram(name: "exit", scope: !1040, file: !1040, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1040 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1041 = !DISubprogram(name: "getenv", scope: !1040, file: !1040, line: 641, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!330, !134}
!1044 = !DISubprogram(name: "strcmp", scope: !1036, file: !1036, line: 156, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!184, !134, !134}
!1047 = !DISubprogram(name: "strspn", scope: !1036, file: !1036, line: 297, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!188, !134, !134}
!1050 = !DISubprogram(name: "strchr", scope: !1036, file: !1036, line: 246, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!330, !134, !184}
!1053 = !DISubprogram(name: "__ctype_b_loc", scope: !163, file: !163, line: 79, type: !1054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1059 = !DISubprogram(name: "strcspn", scope: !1036, file: !1036, line: 293, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1060 = !DISubprogram(name: "fwrite_unlocked", scope: !417, file: !417, line: 704, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!186, !1063, !186, !186, !909}
!1063 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1066 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !1067, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1070)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!184, !184, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1084, !1085, !1088, !1089, !1090, !1094, !1095, !1098, !1099, !1102, !1103, !1108, !1109, !1110}
!1071 = !DILocalVariable(name: "argc", arg: 1, scope: !1066, file: !2, line: 82, type: !184)
!1072 = !DILocalVariable(name: "argv", arg: 2, scope: !1066, file: !2, line: 82, type: !1069)
!1073 = !DILocalVariable(name: "exit_internal_failure", scope: !1066, file: !2, line: 94, type: !184)
!1074 = !DILocalVariable(name: "ignoring_input", scope: !1066, file: !2, line: 109, type: !309)
!1075 = !DILocalVariable(name: "redirecting_stdout", scope: !1066, file: !2, line: 110, type: !309)
!1076 = !DILocalVariable(name: "stdout_is_closed", scope: !1066, file: !2, line: 111, type: !309)
!1077 = !DILocalVariable(name: "redirecting_stderr", scope: !1066, file: !2, line: 112, type: !309)
!1078 = !DILocalVariable(name: "__errstatus", scope: !1079, file: !2, line: 120, type: !1083)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 120, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 119, column: 11)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 118, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 117, column: 7)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1084 = !DILocalVariable(name: "out_fd", scope: !1066, file: !2, line: 130, type: !184)
!1085 = !DILocalVariable(name: "in_home", scope: !1086, file: !2, line: 133, type: !330)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 132, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 131, column: 7)
!1088 = !DILocalVariable(name: "file", scope: !1086, file: !2, line: 134, type: !134)
!1089 = !DILocalVariable(name: "flags", scope: !1086, file: !2, line: 135, type: !184)
!1090 = !DILocalVariable(name: "mode", scope: !1086, file: !2, line: 136, type: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1092, line: 69, baseType: !1093)
!1092 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !350, line: 150, baseType: !139)
!1094 = !DILocalVariable(name: "umask_value", scope: !1086, file: !2, line: 137, type: !1091)
!1095 = !DILocalVariable(name: "saved_errno", scope: !1096, file: !2, line: 144, type: !184)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 143, column: 9)
!1097 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 142, column: 11)
!1098 = !DILocalVariable(name: "home", scope: !1096, file: !2, line: 145, type: !134)
!1099 = !DILocalVariable(name: "saved_errno2", scope: !1100, file: !2, line: 155, type: !184)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 154, column: 13)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 153, column: 15)
!1102 = !DILocalVariable(name: "saved_stderr_fd", scope: !1066, file: !2, line: 175, type: !184)
!1103 = !DILocalVariable(name: "__errstatus", scope: !1104, file: !2, line: 193, type: !1083)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 193, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 192, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !2, line: 177, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 176, column: 7)
!1108 = !DILocalVariable(name: "cmd", scope: !1066, file: !2, line: 211, type: !1069)
!1109 = !DILocalVariable(name: "exit_status", scope: !1066, file: !2, line: 213, type: !184)
!1110 = !DILocalVariable(name: "saved_errno", scope: !1066, file: !2, line: 214, type: !184)
!1111 = !DILocation(line: 0, scope: !1066)
!1112 = !DILocation(line: 85, column: 21, scope: !1066)
!1113 = !DILocation(line: 85, column: 3, scope: !1066)
!1114 = !DILocation(line: 86, column: 3, scope: !1066)
!1115 = !DILocation(line: 87, column: 3, scope: !1066)
!1116 = !DILocation(line: 88, column: 3, scope: !1066)
!1117 = !DILocation(line: 94, column: 32, scope: !1066)
!1118 = !DILocalVariable(name: "status", arg: 1, scope: !1119, file: !131, line: 102, type: !184)
!1119 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !131, file: !131, line: 102, type: !182, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1120)
!1120 = !{!1118}
!1121 = !DILocation(line: 0, scope: !1119, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 96, column: 3, scope: !1066)
!1123 = !DILocation(line: 105, column: 18, scope: !1124, inlinedAt: !1122)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !131, line: 104, column: 7)
!1125 = !DILocation(line: 97, column: 3, scope: !1066)
!1126 = !DILocation(line: 100, column: 36, scope: !1066)
!1127 = !DILocation(line: 100, column: 59, scope: !1066)
!1128 = !DILocation(line: 99, column: 3, scope: !1066)
!1129 = !DILocation(line: 103, column: 15, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 103, column: 7)
!1131 = !DILocation(line: 103, column: 12, scope: !1130)
!1132 = !DILocation(line: 103, column: 7, scope: !1066)
!1133 = !DILocation(line: 105, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 104, column: 5)
!1135 = !DILocation(line: 106, column: 7, scope: !1134)
!1136 = !DILocation(line: 109, column: 25, scope: !1066)
!1137 = !DILocation(line: 110, column: 29, scope: !1066)
!1138 = !DILocation(line: 111, column: 48, scope: !1066)
!1139 = !DILocation(line: 111, column: 51, scope: !1066)
!1140 = !DILocation(line: 111, column: 57, scope: !1066)
!1141 = !DILocation(line: 112, column: 29, scope: !1066)
!1142 = !DILocation(line: 117, column: 7, scope: !1066)
!1143 = !DILocation(line: 119, column: 11, scope: !1080)
!1144 = !DILocation(line: 119, column: 62, scope: !1080)
!1145 = !DILocation(line: 119, column: 11, scope: !1081)
!1146 = !DILocation(line: 120, column: 9, scope: !1080)
!1147 = !DILocation(line: 122, column: 31, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 122, column: 11)
!1149 = !DILocation(line: 123, column: 9, scope: !1148)
!1150 = !DILocation(line: 131, column: 26, scope: !1087)
!1151 = !DILocation(line: 0, scope: !1086)
!1152 = !DILocation(line: 137, column: 28, scope: !1086)
!1153 = !DILocation(line: 138, column: 17, scope: !1086)
!1154 = !DILocation(line: 139, column: 19, scope: !1086)
!1155 = !DILocation(line: 140, column: 19, scope: !1086)
!1156 = !DILocation(line: 142, column: 18, scope: !1097)
!1157 = !DILocation(line: 142, column: 11, scope: !1086)
!1158 = !DILocation(line: 144, column: 29, scope: !1096)
!1159 = !DILocation(line: 0, scope: !1096)
!1160 = !DILocation(line: 145, column: 30, scope: !1096)
!1161 = !DILocation(line: 146, column: 15, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 146, column: 15)
!1163 = !DILocation(line: 146, column: 15, scope: !1096)
!1164 = !DILocation(line: 148, column: 25, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 147, column: 13)
!1166 = !DILocation(line: 149, column: 25, scope: !1165)
!1167 = !DILocation(line: 150, column: 27, scope: !1165)
!1168 = !DILocation(line: 151, column: 27, scope: !1165)
!1169 = !DILocation(line: 153, column: 22, scope: !1101)
!1170 = !DILocation(line: 153, column: 15, scope: !1096)
!1171 = !DILocation(line: 155, column: 34, scope: !1100)
!1172 = !DILocation(line: 0, scope: !1100)
!1173 = !DILocation(line: 156, column: 15, scope: !1100)
!1174 = !DILocation(line: 157, column: 19, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 157, column: 19)
!1176 = !DILocation(line: 157, column: 19, scope: !1100)
!1177 = !DILocation(line: 158, column: 17, scope: !1175)
!1178 = !DILocation(line: 134, column: 19, scope: !1086)
!1179 = !DILocation(line: 165, column: 7, scope: !1086)
!1180 = !DILocation(line: 166, column: 7, scope: !1086)
!1181 = !DILocation(line: 171, column: 7, scope: !1086)
!1182 = !DILocation(line: 176, column: 7, scope: !1066)
!1183 = !DILocation(line: 182, column: 25, scope: !1106)
!1184 = !DILocation(line: 185, column: 11, scope: !1106)
!1185 = !DILocation(line: 186, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 185, column: 11)
!1187 = !DILocation(line: 192, column: 11, scope: !1105)
!1188 = !DILocation(line: 192, column: 40, scope: !1105)
!1189 = !DILocation(line: 192, column: 11, scope: !1106)
!1190 = !DILocation(line: 193, column: 9, scope: !1105)
!1191 = !DILocation(line: 196, column: 11, scope: !1106)
!1192 = !DILocation(line: 197, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 196, column: 11)
!1194 = !DILocation(line: 206, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 206, column: 7)
!1196 = !DILocalVariable(name: "__stream", arg: 1, scope: !1197, file: !1198, line: 135, type: !322)
!1197 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1198, file: !1198, line: 135, type: !1199, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1201)
!1198 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!184, !322}
!1201 = !{!1196}
!1202 = !DILocation(line: 0, scope: !1197, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 206, column: 7, scope: !1195)
!1204 = !DILocation(line: 137, column: 10, scope: !1197, inlinedAt: !1203)
!1205 = !{!1206, !920, i64 0}
!1206 = !{!"_IO_FILE", !920, i64 0, !852, i64 8, !852, i64 16, !852, i64 24, !852, i64 32, !852, i64 40, !852, i64 48, !852, i64 56, !852, i64 64, !852, i64 72, !852, i64 80, !852, i64 88, !852, i64 96, !852, i64 104, !920, i64 112, !920, i64 116, !1207, i64 120, !961, i64 128, !853, i64 130, !853, i64 131, !852, i64 136, !1207, i64 144, !852, i64 152, !852, i64 160, !852, i64 168, !852, i64 176, !1207, i64 184, !920, i64 192, !853, i64 196}
!1207 = !{!"long", !853, i64 0}
!1208 = !DILocation(line: 206, column: 7, scope: !1066)
!1209 = !DILocation(line: 209, column: 3, scope: !1066)
!1210 = !DILocation(line: 211, column: 23, scope: !1066)
!1211 = !DILocation(line: 211, column: 21, scope: !1066)
!1212 = !DILocation(line: 212, column: 11, scope: !1066)
!1213 = !DILocation(line: 212, column: 3, scope: !1066)
!1214 = !DILocation(line: 213, column: 21, scope: !1066)
!1215 = !DILocation(line: 213, column: 27, scope: !1066)
!1216 = !DILocation(line: 222, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 222, column: 7)
!1218 = !DILocation(line: 222, column: 45, scope: !1217)
!1219 = !DILocation(line: 222, column: 7, scope: !1066)
!1220 = !DILocation(line: 223, column: 5, scope: !1217)
!1221 = !DILocation(line: 226, column: 1, scope: !1066)
!1222 = !DISubprogram(name: "bindtextdomain", scope: !902, file: !902, line: 86, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!330, !134, !134}
!1225 = !DISubprogram(name: "textdomain", scope: !902, file: !902, line: 82, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubprogram(name: "atexit", scope: !1040, file: !1040, line: 602, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!184, !456}
!1229 = !DISubprogram(name: "isatty", scope: !1230, file: !1230, line: 809, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!184, !184}
!1233 = !DISubprogram(name: "__errno_location", scope: !1234, file: !1234, line: 37, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!499}
!1237 = !DISubprogram(name: "umask", scope: !1238, file: !1238, line: 380, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1093, !1093}
!1241 = !DISubprogram(name: "open", scope: !1242, file: !1242, line: 181, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!184, !134, !184, null}
!1245 = !DISubprogram(name: "free", scope: !1040, file: !1040, line: 555, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !178}
!1248 = !DISubprogram(name: "dup2", scope: !1230, file: !1230, line: 555, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubprogram(name: "close", scope: !1230, file: !1230, line: 358, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DISubprogram(name: "signal", scope: !180, file: !180, line: 88, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!179, !184, !179}
!1253 = !DISubprogram(name: "execvp", scope: !1230, file: !1230, line: 599, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!184, !134, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!1258 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !391, file: !391, line: 50, type: !864, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1259)
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "file", arg: 1, scope: !1258, file: !391, line: 50, type: !134)
!1261 = !DILocation(line: 0, scope: !1258)
!1262 = !DILocation(line: 52, column: 13, scope: !1258)
!1263 = !DILocation(line: 53, column: 1, scope: !1258)
!1264 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !391, file: !391, line: 87, type: !1265, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !309}
!1267 = !{!1268}
!1268 = !DILocalVariable(name: "ignore", arg: 1, scope: !1264, file: !391, line: 87, type: !309)
!1269 = !DILocation(line: 0, scope: !1264)
!1270 = !DILocation(line: 89, column: 16, scope: !1264)
!1271 = !{!1272, !1272, i64 0}
!1272 = !{!"_Bool", !853, i64 0}
!1273 = !DILocation(line: 90, column: 1, scope: !1264)
!1274 = distinct !DISubprogram(name: "close_stdout", scope: !391, file: !391, line: 116, type: !457, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1275)
!1275 = !{!1276}
!1276 = !DILocalVariable(name: "write_error", scope: !1277, file: !391, line: 121, type: !134)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !391, line: 120, column: 5)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !391, line: 118, column: 7)
!1279 = !DILocation(line: 118, column: 21, scope: !1278)
!1280 = !DILocation(line: 118, column: 7, scope: !1278)
!1281 = !DILocation(line: 118, column: 29, scope: !1278)
!1282 = !DILocation(line: 119, column: 7, scope: !1278)
!1283 = !DILocation(line: 119, column: 12, scope: !1278)
!1284 = !{i8 0, i8 2}
!1285 = !DILocation(line: 119, column: 25, scope: !1278)
!1286 = !DILocation(line: 119, column: 28, scope: !1278)
!1287 = !DILocation(line: 119, column: 34, scope: !1278)
!1288 = !DILocation(line: 118, column: 7, scope: !1274)
!1289 = !DILocation(line: 121, column: 33, scope: !1277)
!1290 = !DILocation(line: 0, scope: !1277)
!1291 = !DILocation(line: 122, column: 11, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1277, file: !391, line: 122, column: 11)
!1293 = !DILocation(line: 0, scope: !1292)
!1294 = !DILocation(line: 122, column: 11, scope: !1277)
!1295 = !DILocation(line: 123, column: 9, scope: !1292)
!1296 = !DILocation(line: 126, column: 9, scope: !1292)
!1297 = !DILocation(line: 128, column: 14, scope: !1277)
!1298 = !DILocation(line: 128, column: 7, scope: !1277)
!1299 = !DILocation(line: 133, column: 42, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1274, file: !391, line: 133, column: 7)
!1301 = !DILocation(line: 133, column: 28, scope: !1300)
!1302 = !DILocation(line: 133, column: 50, scope: !1300)
!1303 = !DILocation(line: 133, column: 7, scope: !1274)
!1304 = !DILocation(line: 134, column: 12, scope: !1300)
!1305 = !DILocation(line: 134, column: 5, scope: !1300)
!1306 = !DILocation(line: 135, column: 1, scope: !1274)
!1307 = !DISubprogram(name: "_exit", scope: !1230, file: !1230, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1308 = distinct !DISubprogram(name: "verror", scope: !406, file: !406, line: 251, type: !1309, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !184, !184, !134, !416}
!1311 = !{!1312, !1313, !1314, !1315}
!1312 = !DILocalVariable(name: "status", arg: 1, scope: !1308, file: !406, line: 251, type: !184)
!1313 = !DILocalVariable(name: "errnum", arg: 2, scope: !1308, file: !406, line: 251, type: !184)
!1314 = !DILocalVariable(name: "message", arg: 3, scope: !1308, file: !406, line: 251, type: !134)
!1315 = !DILocalVariable(name: "args", arg: 4, scope: !1308, file: !406, line: 251, type: !416)
!1316 = !DILocation(line: 0, scope: !1308)
!1317 = !DILocation(line: 261, column: 3, scope: !1308)
!1318 = !DILocation(line: 265, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1308, file: !406, line: 265, column: 7)
!1320 = !DILocation(line: 265, column: 7, scope: !1308)
!1321 = !DILocation(line: 266, column: 5, scope: !1319)
!1322 = !DILocation(line: 272, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !406, line: 268, column: 5)
!1324 = !DILocation(line: 276, column: 3, scope: !1308)
!1325 = !{i64 0, i64 8, !851, i64 8, i64 8, !851, i64 16, i64 8, !851, i64 24, i64 4, !919, i64 28, i64 4, !919}
!1326 = !DILocation(line: 282, column: 1, scope: !1308)
!1327 = distinct !DISubprogram(name: "flush_stdout", scope: !406, file: !406, line: 163, type: !457, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1328)
!1328 = !{!1329}
!1329 = !DILocalVariable(name: "stdout_fd", scope: !1327, file: !406, line: 166, type: !184)
!1330 = !DILocation(line: 0, scope: !1327)
!1331 = !DILocalVariable(name: "fd", arg: 1, scope: !1332, file: !406, line: 145, type: !184)
!1332 = distinct !DISubprogram(name: "is_open", scope: !406, file: !406, line: 145, type: !1231, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1333)
!1333 = !{!1331}
!1334 = !DILocation(line: 0, scope: !1332, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 182, column: 25, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1327, file: !406, line: 182, column: 7)
!1337 = !DILocation(line: 157, column: 15, scope: !1332, inlinedAt: !1335)
!1338 = !DILocation(line: 157, column: 12, scope: !1332, inlinedAt: !1335)
!1339 = !DILocation(line: 182, column: 7, scope: !1327)
!1340 = !DILocation(line: 184, column: 5, scope: !1336)
!1341 = !DILocation(line: 185, column: 1, scope: !1327)
!1342 = distinct !DISubprogram(name: "error_tail", scope: !406, file: !406, line: 219, type: !1309, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1343)
!1343 = !{!1344, !1345, !1346, !1347}
!1344 = !DILocalVariable(name: "status", arg: 1, scope: !1342, file: !406, line: 219, type: !184)
!1345 = !DILocalVariable(name: "errnum", arg: 2, scope: !1342, file: !406, line: 219, type: !184)
!1346 = !DILocalVariable(name: "message", arg: 3, scope: !1342, file: !406, line: 219, type: !134)
!1347 = !DILocalVariable(name: "args", arg: 4, scope: !1342, file: !406, line: 219, type: !416)
!1348 = distinct !DIAssignID()
!1349 = !DILocation(line: 0, scope: !1342)
!1350 = !DILocation(line: 229, column: 13, scope: !1342)
!1351 = !DILocation(line: 135, column: 10, scope: !1352, inlinedAt: !1394)
!1352 = distinct !DISubprogram(name: "vfprintf", scope: !906, file: !906, line: 132, type: !1353, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1390)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!184, !1355, !910, !418}
!1355 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1358, file: !326, line: 51, baseType: !184, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1358, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1358, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1358, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1358, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1358, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1358, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1358, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1358, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1358, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1358, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1358, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1358, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1358, file: !326, line: 70, baseType: !1374, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1358, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1358, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1358, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1358, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1358, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1358, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1358, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1358, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1358, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1358, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1358, file: !326, line: 93, baseType: !1374, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1358, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1358, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1358, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1358, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!1390 = !{!1391, !1392, !1393}
!1391 = !DILocalVariable(name: "__stream", arg: 1, scope: !1352, file: !906, line: 132, type: !1355)
!1392 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1352, file: !906, line: 133, type: !910)
!1393 = !DILocalVariable(name: "__ap", arg: 3, scope: !1352, file: !906, line: 133, type: !418)
!1394 = distinct !DILocation(line: 229, column: 3, scope: !1342)
!1395 = !{!1396, !1398}
!1396 = distinct !{!1396, !1397, !"vfprintf.inline: argument 0"}
!1397 = distinct !{!1397, !"vfprintf.inline"}
!1398 = distinct !{!1398, !1397, !"vfprintf.inline: argument 1"}
!1399 = !DILocation(line: 229, column: 3, scope: !1342)
!1400 = !DILocation(line: 0, scope: !1352, inlinedAt: !1394)
!1401 = !DILocation(line: 232, column: 3, scope: !1342)
!1402 = !DILocation(line: 233, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1342, file: !406, line: 233, column: 7)
!1404 = !DILocation(line: 233, column: 7, scope: !1342)
!1405 = !DILocalVariable(name: "errbuf", scope: !1406, file: !406, line: 193, type: !1410)
!1406 = distinct !DISubprogram(name: "print_errno_message", scope: !406, file: !406, line: 188, type: !182, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1407)
!1407 = !{!1408, !1409, !1405}
!1408 = !DILocalVariable(name: "errnum", arg: 1, scope: !1406, file: !406, line: 188, type: !184)
!1409 = !DILocalVariable(name: "s", scope: !1406, file: !406, line: 190, type: !134)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 1024)
!1413 = !DILocation(line: 0, scope: !1406, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 234, column: 5, scope: !1403)
!1415 = !DILocation(line: 193, column: 3, scope: !1406, inlinedAt: !1414)
!1416 = !DILocation(line: 195, column: 7, scope: !1406, inlinedAt: !1414)
!1417 = !DILocation(line: 207, column: 9, scope: !1418, inlinedAt: !1414)
!1418 = distinct !DILexicalBlock(scope: !1406, file: !406, line: 207, column: 7)
!1419 = !DILocation(line: 207, column: 7, scope: !1406, inlinedAt: !1414)
!1420 = !DILocation(line: 208, column: 9, scope: !1418, inlinedAt: !1414)
!1421 = !DILocation(line: 208, column: 5, scope: !1418, inlinedAt: !1414)
!1422 = !DILocation(line: 214, column: 3, scope: !1406, inlinedAt: !1414)
!1423 = !DILocation(line: 216, column: 1, scope: !1406, inlinedAt: !1414)
!1424 = !DILocation(line: 234, column: 5, scope: !1403)
!1425 = !DILocation(line: 238, column: 3, scope: !1342)
!1426 = !DILocalVariable(name: "__c", arg: 1, scope: !1427, file: !1198, line: 101, type: !184)
!1427 = distinct !DISubprogram(name: "putc_unlocked", scope: !1198, file: !1198, line: 101, type: !1428, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!184, !184, !1356}
!1430 = !{!1426, !1431}
!1431 = !DILocalVariable(name: "__stream", arg: 2, scope: !1427, file: !1198, line: 101, type: !1356)
!1432 = !DILocation(line: 0, scope: !1427, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 238, column: 3, scope: !1342)
!1434 = !DILocation(line: 103, column: 10, scope: !1427, inlinedAt: !1433)
!1435 = !{!1206, !852, i64 40}
!1436 = !{!1206, !852, i64 48}
!1437 = !{!"branch_weights", i32 2000, i32 1}
!1438 = !DILocation(line: 240, column: 3, scope: !1342)
!1439 = !DILocation(line: 241, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1342, file: !406, line: 241, column: 7)
!1441 = !DILocation(line: 241, column: 7, scope: !1342)
!1442 = !DILocation(line: 242, column: 5, scope: !1440)
!1443 = !DILocation(line: 243, column: 1, scope: !1342)
!1444 = !DISubprogram(name: "__vfprintf_chk", scope: !906, file: !906, line: 96, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!184, !1355, !184, !910, !418}
!1447 = !DISubprogram(name: "strerror_r", scope: !1036, file: !1036, line: 444, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!330, !184, !330, !186}
!1450 = !DISubprogram(name: "__overflow", scope: !417, file: !417, line: 886, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!184, !1356, !184}
!1453 = !DISubprogram(name: "fflush_unlocked", scope: !417, file: !417, line: 239, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!184, !1356}
!1456 = !DISubprogram(name: "fcntl", scope: !1242, file: !1242, line: 149, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!184, !184, !184, null}
!1459 = distinct !DISubprogram(name: "error", scope: !406, file: !406, line: 285, type: !1460, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !184, !184, !134, null}
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "status", arg: 1, scope: !1459, file: !406, line: 285, type: !184)
!1464 = !DILocalVariable(name: "errnum", arg: 2, scope: !1459, file: !406, line: 285, type: !184)
!1465 = !DILocalVariable(name: "message", arg: 3, scope: !1459, file: !406, line: 285, type: !134)
!1466 = !DILocalVariable(name: "ap", scope: !1459, file: !406, line: 287, type: !416)
!1467 = distinct !DIAssignID()
!1468 = !DILocation(line: 0, scope: !1459)
!1469 = !DILocation(line: 287, column: 3, scope: !1459)
!1470 = !DILocation(line: 288, column: 3, scope: !1459)
!1471 = !DILocation(line: 289, column: 3, scope: !1459)
!1472 = !DILocation(line: 290, column: 3, scope: !1459)
!1473 = !DILocation(line: 291, column: 1, scope: !1459)
!1474 = !DILocation(line: 0, scope: !413)
!1475 = !DILocation(line: 302, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !413, file: !406, line: 302, column: 7)
!1477 = !DILocation(line: 302, column: 7, scope: !413)
!1478 = !DILocation(line: 307, column: 11, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !406, line: 307, column: 11)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !406, line: 303, column: 5)
!1481 = !DILocation(line: 307, column: 27, scope: !1479)
!1482 = !DILocation(line: 308, column: 11, scope: !1479)
!1483 = !DILocation(line: 308, column: 28, scope: !1479)
!1484 = !DILocation(line: 308, column: 25, scope: !1479)
!1485 = !DILocation(line: 309, column: 15, scope: !1479)
!1486 = !DILocation(line: 309, column: 33, scope: !1479)
!1487 = !DILocation(line: 310, column: 19, scope: !1479)
!1488 = !DILocation(line: 311, column: 22, scope: !1479)
!1489 = !DILocation(line: 311, column: 56, scope: !1479)
!1490 = !DILocation(line: 307, column: 11, scope: !1480)
!1491 = !DILocation(line: 316, column: 21, scope: !1480)
!1492 = !DILocation(line: 317, column: 23, scope: !1480)
!1493 = !DILocation(line: 318, column: 5, scope: !1480)
!1494 = !DILocation(line: 327, column: 3, scope: !413)
!1495 = !DILocation(line: 331, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !413, file: !406, line: 331, column: 7)
!1497 = !DILocation(line: 331, column: 7, scope: !413)
!1498 = !DILocation(line: 332, column: 5, scope: !1496)
!1499 = !DILocation(line: 338, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !406, line: 334, column: 5)
!1501 = !DILocation(line: 346, column: 3, scope: !413)
!1502 = !DILocation(line: 350, column: 3, scope: !413)
!1503 = !DILocation(line: 356, column: 1, scope: !413)
!1504 = distinct !DISubprogram(name: "error_at_line", scope: !406, file: !406, line: 359, type: !1505, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !184, !184, !134, !139, !134, null}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513}
!1508 = !DILocalVariable(name: "status", arg: 1, scope: !1504, file: !406, line: 359, type: !184)
!1509 = !DILocalVariable(name: "errnum", arg: 2, scope: !1504, file: !406, line: 359, type: !184)
!1510 = !DILocalVariable(name: "file_name", arg: 3, scope: !1504, file: !406, line: 359, type: !134)
!1511 = !DILocalVariable(name: "line_number", arg: 4, scope: !1504, file: !406, line: 360, type: !139)
!1512 = !DILocalVariable(name: "message", arg: 5, scope: !1504, file: !406, line: 360, type: !134)
!1513 = !DILocalVariable(name: "ap", scope: !1504, file: !406, line: 362, type: !416)
!1514 = distinct !DIAssignID()
!1515 = !DILocation(line: 0, scope: !1504)
!1516 = !DILocation(line: 362, column: 3, scope: !1504)
!1517 = !DILocation(line: 363, column: 3, scope: !1504)
!1518 = !DILocation(line: 364, column: 3, scope: !1504)
!1519 = !DILocation(line: 366, column: 3, scope: !1504)
!1520 = !DILocation(line: 367, column: 1, scope: !1504)
!1521 = distinct !DISubprogram(name: "rpl_fcntl", scope: !462, file: !462, line: 202, type: !1457, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1522)
!1522 = !{!1523, !1524, !1525, !1536, !1537, !1540, !1542, !1546}
!1523 = !DILocalVariable(name: "fd", arg: 1, scope: !1521, file: !462, line: 202, type: !184)
!1524 = !DILocalVariable(name: "action", arg: 2, scope: !1521, file: !462, line: 202, type: !184)
!1525 = !DILocalVariable(name: "arg", scope: !1521, file: !462, line: 208, type: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1527, line: 12, baseType: !1528)
!1527 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !462, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1529, file: !462, line: 208, baseType: !178, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1529, file: !462, line: 208, baseType: !178, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1529, file: !462, line: 208, baseType: !178, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1529, file: !462, line: 208, baseType: !184, size: 32, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1529, file: !462, line: 208, baseType: !184, size: 32, offset: 224)
!1536 = !DILocalVariable(name: "result", scope: !1521, file: !462, line: 211, type: !184)
!1537 = !DILocalVariable(name: "target", scope: !1538, file: !462, line: 216, type: !184)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !462, line: 215, column: 7)
!1539 = distinct !DILexicalBlock(scope: !1521, file: !462, line: 213, column: 5)
!1540 = !DILocalVariable(name: "target", scope: !1541, file: !462, line: 223, type: !184)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !462, line: 222, column: 7)
!1542 = !DILocalVariable(name: "x", scope: !1543, file: !462, line: 418, type: !184)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !462, line: 417, column: 13)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !462, line: 261, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !462, line: 258, column: 7)
!1546 = !DILocalVariable(name: "p", scope: !1547, file: !462, line: 426, type: !178)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !462, line: 425, column: 13)
!1548 = distinct !DIAssignID()
!1549 = !DILocation(line: 0, scope: !1521)
!1550 = !DILocation(line: 208, column: 3, scope: !1521)
!1551 = !DILocation(line: 209, column: 3, scope: !1521)
!1552 = !DILocation(line: 212, column: 3, scope: !1521)
!1553 = !DILocation(line: 216, column: 22, scope: !1538)
!1554 = distinct !DIAssignID()
!1555 = distinct !DIAssignID()
!1556 = !DILocation(line: 0, scope: !1538)
!1557 = !DILocalVariable(name: "fd", arg: 1, scope: !1558, file: !462, line: 444, type: !184)
!1558 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !462, file: !462, line: 444, type: !463, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1559)
!1559 = !{!1557, !1560, !1561}
!1560 = !DILocalVariable(name: "target", arg: 2, scope: !1558, file: !462, line: 444, type: !184)
!1561 = !DILocalVariable(name: "result", scope: !1558, file: !462, line: 446, type: !184)
!1562 = !DILocation(line: 0, scope: !1558, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 217, column: 18, scope: !1538)
!1564 = !DILocation(line: 479, column: 12, scope: !1558, inlinedAt: !1563)
!1565 = !DILocation(line: 223, column: 22, scope: !1541)
!1566 = distinct !DIAssignID()
!1567 = distinct !DIAssignID()
!1568 = !DILocation(line: 0, scope: !1541)
!1569 = !DILocation(line: 0, scope: !461, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 224, column: 18, scope: !1541)
!1571 = !DILocation(line: 507, column: 12, scope: !1572, inlinedAt: !1570)
!1572 = distinct !DILexicalBlock(scope: !461, file: !462, line: 507, column: 7)
!1573 = !DILocation(line: 507, column: 9, scope: !1572, inlinedAt: !1570)
!1574 = !DILocation(line: 507, column: 7, scope: !461, inlinedAt: !1570)
!1575 = !DILocation(line: 509, column: 16, scope: !1576, inlinedAt: !1570)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !462, line: 508, column: 5)
!1577 = !DILocation(line: 510, column: 13, scope: !1578, inlinedAt: !1570)
!1578 = distinct !DILexicalBlock(scope: !1576, file: !462, line: 510, column: 11)
!1579 = !DILocation(line: 510, column: 23, scope: !1578, inlinedAt: !1570)
!1580 = !DILocation(line: 510, column: 26, scope: !1578, inlinedAt: !1570)
!1581 = !DILocation(line: 510, column: 32, scope: !1578, inlinedAt: !1570)
!1582 = !DILocation(line: 510, column: 11, scope: !1576, inlinedAt: !1570)
!1583 = !DILocation(line: 512, column: 30, scope: !1584, inlinedAt: !1570)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !462, line: 511, column: 9)
!1585 = !DILocation(line: 528, column: 19, scope: !473, inlinedAt: !1570)
!1586 = !DILocation(line: 0, scope: !1558, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 520, column: 20, scope: !1588, inlinedAt: !1570)
!1588 = distinct !DILexicalBlock(scope: !1578, file: !462, line: 519, column: 9)
!1589 = !DILocation(line: 479, column: 12, scope: !1558, inlinedAt: !1587)
!1590 = !DILocation(line: 521, column: 22, scope: !1591, inlinedAt: !1570)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !462, line: 521, column: 15)
!1592 = !DILocation(line: 521, column: 15, scope: !1588, inlinedAt: !1570)
!1593 = !DILocation(line: 522, column: 32, scope: !1591, inlinedAt: !1570)
!1594 = !DILocation(line: 522, column: 13, scope: !1591, inlinedAt: !1570)
!1595 = !DILocation(line: 0, scope: !1558, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 527, column: 14, scope: !1572, inlinedAt: !1570)
!1597 = !DILocation(line: 479, column: 12, scope: !1558, inlinedAt: !1596)
!1598 = !DILocation(line: 0, scope: !1572, inlinedAt: !1570)
!1599 = !DILocation(line: 528, column: 9, scope: !473, inlinedAt: !1570)
!1600 = !DILocation(line: 530, column: 19, scope: !472, inlinedAt: !1570)
!1601 = !DILocation(line: 0, scope: !472, inlinedAt: !1570)
!1602 = !DILocation(line: 531, column: 17, scope: !476, inlinedAt: !1570)
!1603 = !DILocation(line: 531, column: 21, scope: !476, inlinedAt: !1570)
!1604 = !DILocation(line: 531, column: 54, scope: !476, inlinedAt: !1570)
!1605 = !DILocation(line: 531, column: 24, scope: !476, inlinedAt: !1570)
!1606 = !DILocation(line: 531, column: 68, scope: !476, inlinedAt: !1570)
!1607 = !DILocation(line: 531, column: 11, scope: !472, inlinedAt: !1570)
!1608 = !DILocation(line: 533, column: 29, scope: !475, inlinedAt: !1570)
!1609 = !DILocation(line: 0, scope: !475, inlinedAt: !1570)
!1610 = !DILocation(line: 534, column: 11, scope: !475, inlinedAt: !1570)
!1611 = !DILocation(line: 535, column: 17, scope: !475, inlinedAt: !1570)
!1612 = !DILocation(line: 537, column: 9, scope: !475, inlinedAt: !1570)
!1613 = !DILocation(line: 329, column: 22, scope: !1544)
!1614 = !DILocation(line: 330, column: 13, scope: !1544)
!1615 = !DILocation(line: 418, column: 23, scope: !1543)
!1616 = distinct !DIAssignID()
!1617 = distinct !DIAssignID()
!1618 = !DILocation(line: 0, scope: !1543)
!1619 = !DILocation(line: 419, column: 24, scope: !1543)
!1620 = !DILocation(line: 421, column: 13, scope: !1544)
!1621 = !DILocation(line: 426, column: 25, scope: !1547)
!1622 = distinct !DIAssignID()
!1623 = distinct !DIAssignID()
!1624 = !DILocation(line: 0, scope: !1547)
!1625 = !DILocation(line: 427, column: 24, scope: !1547)
!1626 = !DILocation(line: 429, column: 13, scope: !1544)
!1627 = !DILocation(line: 0, scope: !1539)
!1628 = !DILocation(line: 438, column: 3, scope: !1521)
!1629 = !DILocation(line: 441, column: 1, scope: !1521)
!1630 = !DILocation(line: 440, column: 3, scope: !1521)
!1631 = distinct !DISubprogram(name: "fd_reopen", scope: !764, file: !764, line: 32, type: !1632, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!184, !184, !134, !184, !1091}
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1643}
!1635 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1631, file: !764, line: 32, type: !184)
!1636 = !DILocalVariable(name: "file", arg: 2, scope: !1631, file: !764, line: 32, type: !134)
!1637 = !DILocalVariable(name: "flags", arg: 3, scope: !1631, file: !764, line: 32, type: !184)
!1638 = !DILocalVariable(name: "mode", arg: 4, scope: !1631, file: !764, line: 32, type: !1091)
!1639 = !DILocalVariable(name: "fd", scope: !1631, file: !764, line: 34, type: !184)
!1640 = !DILocalVariable(name: "fd2", scope: !1641, file: !764, line: 40, type: !184)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !764, line: 39, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1631, file: !764, line: 36, column: 7)
!1643 = !DILocalVariable(name: "saved_errno", scope: !1641, file: !764, line: 41, type: !184)
!1644 = !DILocation(line: 0, scope: !1631)
!1645 = !DILocation(line: 34, column: 12, scope: !1631)
!1646 = !DILocation(line: 36, column: 10, scope: !1642)
!1647 = !DILocation(line: 36, column: 24, scope: !1642)
!1648 = !DILocation(line: 40, column: 17, scope: !1641)
!1649 = !DILocation(line: 0, scope: !1641)
!1650 = !DILocation(line: 41, column: 25, scope: !1641)
!1651 = !DILocation(line: 42, column: 7, scope: !1641)
!1652 = !DILocation(line: 43, column: 13, scope: !1641)
!1653 = !DILocation(line: 0, scope: !1642)
!1654 = !DILocation(line: 46, column: 1, scope: !1631)
!1655 = distinct !DISubprogram(name: "file_name_concat", scope: !766, file: !766, line: 35, type: !1656, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!330, !134, !134, !1069}
!1658 = !{!1659, !1660, !1661, !1662}
!1659 = !DILocalVariable(name: "dir", arg: 1, scope: !1655, file: !766, line: 35, type: !134)
!1660 = !DILocalVariable(name: "base", arg: 2, scope: !1655, file: !766, line: 35, type: !134)
!1661 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1655, file: !766, line: 35, type: !1069)
!1662 = !DILocalVariable(name: "p", scope: !1655, file: !766, line: 37, type: !330)
!1663 = !DILocation(line: 0, scope: !1655)
!1664 = !DILocation(line: 37, column: 13, scope: !1655)
!1665 = !DILocation(line: 38, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1655, file: !766, line: 38, column: 7)
!1667 = !DILocation(line: 38, column: 7, scope: !1655)
!1668 = !DILocation(line: 39, column: 5, scope: !1666)
!1669 = !DILocation(line: 40, column: 3, scope: !1655)
!1670 = distinct !DISubprogram(name: "mfile_name_concat", scope: !768, file: !768, line: 48, type: !1656, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1672 = !DILocalVariable(name: "dir", arg: 1, scope: !1670, file: !768, line: 48, type: !134)
!1673 = !DILocalVariable(name: "base", arg: 2, scope: !1670, file: !768, line: 48, type: !134)
!1674 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1670, file: !768, line: 48, type: !1069)
!1675 = !DILocalVariable(name: "dirbase", scope: !1670, file: !768, line: 50, type: !134)
!1676 = !DILocalVariable(name: "dirbaselen", scope: !1670, file: !768, line: 51, type: !186)
!1677 = !DILocalVariable(name: "dirlen", scope: !1670, file: !768, line: 52, type: !186)
!1678 = !DILocalVariable(name: "baselen", scope: !1670, file: !768, line: 53, type: !186)
!1679 = !DILocalVariable(name: "sep", scope: !1670, file: !768, line: 54, type: !4)
!1680 = !DILocalVariable(name: "p_concat", scope: !1670, file: !768, line: 71, type: !330)
!1681 = !DILocalVariable(name: "p", scope: !1682, file: !768, line: 76, type: !330)
!1682 = distinct !DILexicalBlock(scope: !1670, file: !768, line: 75, column: 3)
!1683 = !DILocation(line: 0, scope: !1670)
!1684 = !DILocation(line: 50, column: 25, scope: !1670)
!1685 = !DILocation(line: 51, column: 23, scope: !1670)
!1686 = !DILocation(line: 52, column: 27, scope: !1670)
!1687 = !DILocation(line: 52, column: 33, scope: !1670)
!1688 = !DILocation(line: 53, column: 20, scope: !1670)
!1689 = !DILocation(line: 55, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1670, file: !768, line: 55, column: 7)
!1691 = !DILocation(line: 55, column: 7, scope: !1670)
!1692 = !DILocation(line: 58, column: 13, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !768, line: 58, column: 11)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !768, line: 56, column: 5)
!1695 = !DILocation(line: 58, column: 39, scope: !1693)
!1696 = !DILocation(line: 58, column: 44, scope: !1693)
!1697 = !DILocation(line: 58, column: 11, scope: !1694)
!1698 = !DILocation(line: 61, column: 12, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1690, file: !768, line: 61, column: 12)
!1700 = !DILocation(line: 61, column: 12, scope: !1690)
!1701 = !DILocation(line: 71, column: 35, scope: !1670)
!1702 = !DILocation(line: 71, column: 52, scope: !1670)
!1703 = !DILocation(line: 71, column: 62, scope: !1670)
!1704 = !DILocation(line: 71, column: 20, scope: !1670)
!1705 = !DILocation(line: 72, column: 16, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1670, file: !768, line: 72, column: 7)
!1707 = !DILocation(line: 72, column: 7, scope: !1670)
!1708 = !DILocalVariable(name: "__dest", arg: 1, scope: !1709, file: !1710, line: 42, type: !1713)
!1709 = distinct !DISubprogram(name: "mempcpy", scope: !1710, file: !1710, line: 42, type: !1711, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !1714)
!1710 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!178, !1713, !1063, !186}
!1713 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1714 = !{!1708, !1715, !1716}
!1715 = !DILocalVariable(name: "__src", arg: 2, scope: !1709, file: !1710, line: 42, type: !1063)
!1716 = !DILocalVariable(name: "__len", arg: 3, scope: !1709, file: !1710, line: 42, type: !186)
!1717 = !DILocation(line: 0, scope: !1709, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 78, column: 9, scope: !1682)
!1719 = !DILocation(line: 45, column: 10, scope: !1709, inlinedAt: !1718)
!1720 = !DILocation(line: 0, scope: !1682)
!1721 = !DILocation(line: 79, column: 8, scope: !1682)
!1722 = !DILocation(line: 80, column: 7, scope: !1682)
!1723 = !DILocation(line: 82, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1682, file: !768, line: 82, column: 9)
!1725 = !DILocation(line: 82, column: 9, scope: !1682)
!1726 = !DILocation(line: 83, column: 23, scope: !1724)
!1727 = !DILocation(line: 83, column: 7, scope: !1724)
!1728 = !DILocation(line: 0, scope: !1709, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 85, column: 9, scope: !1682)
!1730 = !DILocation(line: 45, column: 10, scope: !1709, inlinedAt: !1729)
!1731 = !DILocation(line: 86, column: 8, scope: !1682)
!1732 = !DILocation(line: 89, column: 3, scope: !1670)
!1733 = !DILocation(line: 90, column: 1, scope: !1670)
!1734 = !DISubprogram(name: "strlen", scope: !1036, file: !1036, line: 407, type: !1735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!188, !134}
!1737 = !DISubprogram(name: "malloc", scope: !1040, file: !1040, line: 540, type: !1738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!178, !186}
!1740 = distinct !DISubprogram(name: "getprogname", scope: !770, file: !770, line: 54, type: !1741, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!134}
!1743 = !DILocation(line: 58, column: 10, scope: !1740)
!1744 = !DILocation(line: 58, column: 3, scope: !1740)
!1745 = distinct !DISubprogram(name: "parse_long_options", scope: !479, file: !479, line: 45, type: !1746, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1748)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !184, !1069, !134, !134, !134, !181, null}
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1759}
!1749 = !DILocalVariable(name: "argc", arg: 1, scope: !1745, file: !479, line: 45, type: !184)
!1750 = !DILocalVariable(name: "argv", arg: 2, scope: !1745, file: !479, line: 46, type: !1069)
!1751 = !DILocalVariable(name: "command_name", arg: 3, scope: !1745, file: !479, line: 47, type: !134)
!1752 = !DILocalVariable(name: "package", arg: 4, scope: !1745, file: !479, line: 48, type: !134)
!1753 = !DILocalVariable(name: "version", arg: 5, scope: !1745, file: !479, line: 49, type: !134)
!1754 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1745, file: !479, line: 50, type: !181)
!1755 = !DILocalVariable(name: "saved_opterr", scope: !1745, file: !479, line: 53, type: !184)
!1756 = !DILocalVariable(name: "c", scope: !1757, file: !479, line: 60, type: !184)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !479, line: 59, column: 5)
!1758 = distinct !DILexicalBlock(scope: !1745, file: !479, line: 58, column: 7)
!1759 = !DILocalVariable(name: "authors", scope: !1760, file: !479, line: 71, type: !1764)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !479, line: 70, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !479, line: 64, column: 13)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !479, line: 62, column: 9)
!1763 = distinct !DILexicalBlock(scope: !1757, file: !479, line: 61, column: 11)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !417, line: 52, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !419, line: 12, baseType: !1766)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !479, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1767, file: !479, line: 71, baseType: !178, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1767, file: !479, line: 71, baseType: !178, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1767, file: !479, line: 71, baseType: !178, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1767, file: !479, line: 71, baseType: !184, size: 32, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1767, file: !479, line: 71, baseType: !184, size: 32, offset: 224)
!1774 = distinct !DIAssignID()
!1775 = !DILocation(line: 0, scope: !1760)
!1776 = !DILocation(line: 0, scope: !1745)
!1777 = !DILocation(line: 53, column: 22, scope: !1745)
!1778 = !DILocation(line: 56, column: 10, scope: !1745)
!1779 = !DILocation(line: 58, column: 12, scope: !1758)
!1780 = !DILocation(line: 58, column: 7, scope: !1745)
!1781 = !DILocation(line: 60, column: 15, scope: !1757)
!1782 = !DILocation(line: 0, scope: !1757)
!1783 = !DILocation(line: 61, column: 11, scope: !1757)
!1784 = !DILocation(line: 66, column: 15, scope: !1761)
!1785 = !DILocation(line: 67, column: 15, scope: !1761)
!1786 = !DILocation(line: 71, column: 17, scope: !1760)
!1787 = !DILocation(line: 72, column: 17, scope: !1760)
!1788 = !DILocation(line: 73, column: 33, scope: !1760)
!1789 = !DILocation(line: 73, column: 17, scope: !1760)
!1790 = !DILocation(line: 74, column: 17, scope: !1760)
!1791 = !DILocation(line: 85, column: 10, scope: !1745)
!1792 = !DILocation(line: 89, column: 10, scope: !1745)
!1793 = !DILocation(line: 90, column: 1, scope: !1745)
!1794 = !DISubprogram(name: "getopt_long", scope: !494, file: !494, line: 66, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!184, !184, !1256, !134, !1797, !499}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1798 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !479, file: !479, line: 98, type: !1799, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !184, !1069, !134, !134, !134, !309, !181, null}
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1802 = !DILocalVariable(name: "argc", arg: 1, scope: !1798, file: !479, line: 98, type: !184)
!1803 = !DILocalVariable(name: "argv", arg: 2, scope: !1798, file: !479, line: 99, type: !1069)
!1804 = !DILocalVariable(name: "command_name", arg: 3, scope: !1798, file: !479, line: 100, type: !134)
!1805 = !DILocalVariable(name: "package", arg: 4, scope: !1798, file: !479, line: 101, type: !134)
!1806 = !DILocalVariable(name: "version", arg: 5, scope: !1798, file: !479, line: 102, type: !134)
!1807 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1798, file: !479, line: 103, type: !309)
!1808 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1798, file: !479, line: 104, type: !181)
!1809 = !DILocalVariable(name: "saved_opterr", scope: !1798, file: !479, line: 107, type: !184)
!1810 = !DILocalVariable(name: "optstring", scope: !1798, file: !479, line: 112, type: !134)
!1811 = !DILocalVariable(name: "c", scope: !1798, file: !479, line: 114, type: !184)
!1812 = !DILocalVariable(name: "authors", scope: !1813, file: !479, line: 125, type: !1764)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !479, line: 124, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !479, line: 118, column: 9)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !479, line: 116, column: 5)
!1816 = distinct !DILexicalBlock(scope: !1798, file: !479, line: 115, column: 7)
!1817 = distinct !DIAssignID()
!1818 = !DILocation(line: 0, scope: !1813)
!1819 = !DILocation(line: 0, scope: !1798)
!1820 = !DILocation(line: 107, column: 22, scope: !1798)
!1821 = !DILocation(line: 110, column: 10, scope: !1798)
!1822 = !DILocation(line: 112, column: 27, scope: !1798)
!1823 = !DILocation(line: 114, column: 11, scope: !1798)
!1824 = !DILocation(line: 115, column: 7, scope: !1798)
!1825 = !DILocation(line: 125, column: 13, scope: !1813)
!1826 = !DILocation(line: 126, column: 13, scope: !1813)
!1827 = !DILocation(line: 127, column: 29, scope: !1813)
!1828 = !DILocation(line: 127, column: 13, scope: !1813)
!1829 = !DILocation(line: 128, column: 13, scope: !1813)
!1830 = !DILocation(line: 132, column: 26, scope: !1814)
!1831 = !DILocation(line: 133, column: 11, scope: !1814)
!1832 = !DILocation(line: 0, scope: !1814)
!1833 = !DILocation(line: 138, column: 10, scope: !1798)
!1834 = !DILocation(line: 139, column: 1, scope: !1798)
!1835 = distinct !DISubprogram(name: "set_program_name", scope: !504, file: !504, line: 37, type: !864, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "argv0", arg: 1, scope: !1835, file: !504, line: 37, type: !134)
!1838 = !DILocalVariable(name: "slash", scope: !1835, file: !504, line: 44, type: !134)
!1839 = !DILocalVariable(name: "base", scope: !1835, file: !504, line: 45, type: !134)
!1840 = !DILocation(line: 0, scope: !1835)
!1841 = !DILocation(line: 44, column: 23, scope: !1835)
!1842 = !DILocation(line: 45, column: 22, scope: !1835)
!1843 = !DILocation(line: 46, column: 17, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1835, file: !504, line: 46, column: 7)
!1845 = !DILocation(line: 46, column: 9, scope: !1844)
!1846 = !DILocation(line: 46, column: 25, scope: !1844)
!1847 = !DILocation(line: 46, column: 40, scope: !1844)
!1848 = !DILocalVariable(name: "__s1", arg: 1, scope: !1849, file: !932, line: 974, type: !1064)
!1849 = distinct !DISubprogram(name: "memeq", scope: !932, file: !932, line: 974, type: !1850, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1852)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!309, !1064, !1064, !186}
!1852 = !{!1848, !1853, !1854}
!1853 = !DILocalVariable(name: "__s2", arg: 2, scope: !1849, file: !932, line: 974, type: !1064)
!1854 = !DILocalVariable(name: "__n", arg: 3, scope: !1849, file: !932, line: 974, type: !186)
!1855 = !DILocation(line: 0, scope: !1849, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 46, column: 28, scope: !1844)
!1857 = !DILocation(line: 976, column: 11, scope: !1849, inlinedAt: !1856)
!1858 = !DILocation(line: 976, column: 10, scope: !1849, inlinedAt: !1856)
!1859 = !DILocation(line: 46, column: 7, scope: !1835)
!1860 = !DILocation(line: 49, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !504, line: 49, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1844, file: !504, line: 47, column: 5)
!1863 = !DILocation(line: 49, column: 36, scope: !1861)
!1864 = !DILocation(line: 49, column: 11, scope: !1862)
!1865 = !DILocation(line: 65, column: 16, scope: !1835)
!1866 = !DILocation(line: 71, column: 27, scope: !1835)
!1867 = !DILocation(line: 74, column: 33, scope: !1835)
!1868 = !DILocation(line: 76, column: 1, scope: !1835)
!1869 = !DISubprogram(name: "strrchr", scope: !1036, file: !1036, line: 273, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1870 = distinct !DIAssignID()
!1871 = !DILocation(line: 0, scope: !513)
!1872 = distinct !DIAssignID()
!1873 = !DILocation(line: 40, column: 29, scope: !513)
!1874 = !DILocation(line: 41, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !513, file: !514, line: 41, column: 7)
!1876 = !DILocation(line: 41, column: 7, scope: !513)
!1877 = !DILocation(line: 47, column: 3, scope: !513)
!1878 = !DILocation(line: 48, column: 3, scope: !513)
!1879 = !DILocalVariable(name: "ps", arg: 1, scope: !1880, file: !1881, line: 1135, type: !1884)
!1880 = distinct !DISubprogram(name: "mbszero", scope: !1881, file: !1881, line: 1135, type: !1882, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !1885)
!1881 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1882 = !DISubroutineType(types: !1883)
!1883 = !{null, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1885 = !{!1879}
!1886 = !DILocation(line: 0, scope: !1880, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 48, column: 18, scope: !513)
!1888 = !DILocalVariable(name: "__dest", arg: 1, scope: !1889, file: !1710, line: 57, type: !178)
!1889 = distinct !DISubprogram(name: "memset", scope: !1710, file: !1710, line: 57, type: !1890, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!178, !178, !184, !186}
!1892 = !{!1888, !1893, !1894}
!1893 = !DILocalVariable(name: "__ch", arg: 2, scope: !1889, file: !1710, line: 57, type: !184)
!1894 = !DILocalVariable(name: "__len", arg: 3, scope: !1889, file: !1710, line: 57, type: !186)
!1895 = !DILocation(line: 0, scope: !1889, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 1137, column: 3, scope: !1880, inlinedAt: !1887)
!1897 = !DILocation(line: 59, column: 10, scope: !1889, inlinedAt: !1896)
!1898 = !DILocation(line: 49, column: 7, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !513, file: !514, line: 49, column: 7)
!1900 = !DILocation(line: 49, column: 39, scope: !1899)
!1901 = !DILocation(line: 49, column: 44, scope: !1899)
!1902 = !DILocation(line: 54, column: 1, scope: !513)
!1903 = !DISubprogram(name: "mbrtoc32", scope: !525, file: !525, line: 57, type: !1904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!186, !1906, !910, !186, !1908}
!1906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1884)
!1909 = distinct !DISubprogram(name: "clone_quoting_options", scope: !544, file: !544, line: 113, type: !1910, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1913)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1912, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!1913 = !{!1914, !1915, !1916}
!1914 = !DILocalVariable(name: "o", arg: 1, scope: !1909, file: !544, line: 113, type: !1912)
!1915 = !DILocalVariable(name: "saved_errno", scope: !1909, file: !544, line: 115, type: !184)
!1916 = !DILocalVariable(name: "p", scope: !1909, file: !544, line: 116, type: !1912)
!1917 = !DILocation(line: 0, scope: !1909)
!1918 = !DILocation(line: 115, column: 21, scope: !1909)
!1919 = !DILocation(line: 116, column: 40, scope: !1909)
!1920 = !DILocation(line: 116, column: 31, scope: !1909)
!1921 = !DILocation(line: 118, column: 9, scope: !1909)
!1922 = !DILocation(line: 119, column: 3, scope: !1909)
!1923 = distinct !DISubprogram(name: "get_quoting_style", scope: !544, file: !544, line: 124, type: !1924, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1928)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!567, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "o", arg: 1, scope: !1923, file: !544, line: 124, type: !1926)
!1930 = !DILocation(line: 0, scope: !1923)
!1931 = !DILocation(line: 126, column: 11, scope: !1923)
!1932 = !DILocation(line: 126, column: 46, scope: !1923)
!1933 = !{!1934, !920, i64 0}
!1934 = !{!"quoting_options", !920, i64 0, !920, i64 4, !853, i64 8, !852, i64 40, !852, i64 48}
!1935 = !DILocation(line: 126, column: 3, scope: !1923)
!1936 = distinct !DISubprogram(name: "set_quoting_style", scope: !544, file: !544, line: 132, type: !1937, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1912, !567}
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "o", arg: 1, scope: !1936, file: !544, line: 132, type: !1912)
!1941 = !DILocalVariable(name: "s", arg: 2, scope: !1936, file: !544, line: 132, type: !567)
!1942 = !DILocation(line: 0, scope: !1936)
!1943 = !DILocation(line: 134, column: 4, scope: !1936)
!1944 = !DILocation(line: 134, column: 45, scope: !1936)
!1945 = !DILocation(line: 135, column: 1, scope: !1936)
!1946 = distinct !DISubprogram(name: "set_char_quoting", scope: !544, file: !544, line: 143, type: !1947, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!184, !1912, !4, !184}
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1956, !1957}
!1950 = !DILocalVariable(name: "o", arg: 1, scope: !1946, file: !544, line: 143, type: !1912)
!1951 = !DILocalVariable(name: "c", arg: 2, scope: !1946, file: !544, line: 143, type: !4)
!1952 = !DILocalVariable(name: "i", arg: 3, scope: !1946, file: !544, line: 143, type: !184)
!1953 = !DILocalVariable(name: "uc", scope: !1946, file: !544, line: 145, type: !189)
!1954 = !DILocalVariable(name: "p", scope: !1946, file: !544, line: 146, type: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1956 = !DILocalVariable(name: "shift", scope: !1946, file: !544, line: 148, type: !184)
!1957 = !DILocalVariable(name: "r", scope: !1946, file: !544, line: 149, type: !139)
!1958 = !DILocation(line: 0, scope: !1946)
!1959 = !DILocation(line: 147, column: 6, scope: !1946)
!1960 = !DILocation(line: 147, column: 41, scope: !1946)
!1961 = !DILocation(line: 147, column: 62, scope: !1946)
!1962 = !DILocation(line: 147, column: 57, scope: !1946)
!1963 = !DILocation(line: 148, column: 15, scope: !1946)
!1964 = !DILocation(line: 149, column: 21, scope: !1946)
!1965 = !DILocation(line: 149, column: 24, scope: !1946)
!1966 = !DILocation(line: 149, column: 34, scope: !1946)
!1967 = !DILocation(line: 150, column: 19, scope: !1946)
!1968 = !DILocation(line: 150, column: 24, scope: !1946)
!1969 = !DILocation(line: 150, column: 6, scope: !1946)
!1970 = !DILocation(line: 151, column: 3, scope: !1946)
!1971 = distinct !DISubprogram(name: "set_quoting_flags", scope: !544, file: !544, line: 159, type: !1972, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!184, !1912, !184}
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "o", arg: 1, scope: !1971, file: !544, line: 159, type: !1912)
!1976 = !DILocalVariable(name: "i", arg: 2, scope: !1971, file: !544, line: 159, type: !184)
!1977 = !DILocalVariable(name: "r", scope: !1971, file: !544, line: 163, type: !184)
!1978 = !DILocation(line: 0, scope: !1971)
!1979 = !DILocation(line: 161, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1971, file: !544, line: 161, column: 7)
!1981 = !DILocation(line: 161, column: 7, scope: !1971)
!1982 = !DILocation(line: 163, column: 14, scope: !1971)
!1983 = !{!1934, !920, i64 4}
!1984 = !DILocation(line: 164, column: 12, scope: !1971)
!1985 = !DILocation(line: 165, column: 3, scope: !1971)
!1986 = distinct !DISubprogram(name: "set_custom_quoting", scope: !544, file: !544, line: 169, type: !1987, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1912, !134, !134}
!1989 = !{!1990, !1991, !1992}
!1990 = !DILocalVariable(name: "o", arg: 1, scope: !1986, file: !544, line: 169, type: !1912)
!1991 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1986, file: !544, line: 170, type: !134)
!1992 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1986, file: !544, line: 170, type: !134)
!1993 = !DILocation(line: 0, scope: !1986)
!1994 = !DILocation(line: 172, column: 8, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !544, line: 172, column: 7)
!1996 = !DILocation(line: 172, column: 7, scope: !1986)
!1997 = !DILocation(line: 174, column: 12, scope: !1986)
!1998 = !DILocation(line: 175, column: 8, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1986, file: !544, line: 175, column: 7)
!2000 = !DILocation(line: 175, column: 19, scope: !1999)
!2001 = !DILocation(line: 176, column: 5, scope: !1999)
!2002 = !DILocation(line: 177, column: 6, scope: !1986)
!2003 = !DILocation(line: 177, column: 17, scope: !1986)
!2004 = !{!1934, !852, i64 40}
!2005 = !DILocation(line: 178, column: 6, scope: !1986)
!2006 = !DILocation(line: 178, column: 18, scope: !1986)
!2007 = !{!1934, !852, i64 48}
!2008 = !DILocation(line: 179, column: 1, scope: !1986)
!2009 = !DISubprogram(name: "abort", scope: !1040, file: !1040, line: 598, type: !457, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2010 = distinct !DISubprogram(name: "quotearg_buffer", scope: !544, file: !544, line: 774, type: !2011, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!186, !330, !186, !134, !186, !1926}
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!2014 = !DILocalVariable(name: "buffer", arg: 1, scope: !2010, file: !544, line: 774, type: !330)
!2015 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2010, file: !544, line: 774, type: !186)
!2016 = !DILocalVariable(name: "arg", arg: 3, scope: !2010, file: !544, line: 775, type: !134)
!2017 = !DILocalVariable(name: "argsize", arg: 4, scope: !2010, file: !544, line: 775, type: !186)
!2018 = !DILocalVariable(name: "o", arg: 5, scope: !2010, file: !544, line: 776, type: !1926)
!2019 = !DILocalVariable(name: "p", scope: !2010, file: !544, line: 778, type: !1926)
!2020 = !DILocalVariable(name: "saved_errno", scope: !2010, file: !544, line: 779, type: !184)
!2021 = !DILocalVariable(name: "r", scope: !2010, file: !544, line: 780, type: !186)
!2022 = !DILocation(line: 0, scope: !2010)
!2023 = !DILocation(line: 778, column: 37, scope: !2010)
!2024 = !DILocation(line: 779, column: 21, scope: !2010)
!2025 = !DILocation(line: 781, column: 43, scope: !2010)
!2026 = !DILocation(line: 781, column: 53, scope: !2010)
!2027 = !DILocation(line: 781, column: 63, scope: !2010)
!2028 = !DILocation(line: 782, column: 43, scope: !2010)
!2029 = !DILocation(line: 782, column: 58, scope: !2010)
!2030 = !DILocation(line: 780, column: 14, scope: !2010)
!2031 = !DILocation(line: 783, column: 9, scope: !2010)
!2032 = !DILocation(line: 784, column: 3, scope: !2010)
!2033 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !544, file: !544, line: 251, type: !2034, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2038)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!186, !330, !186, !134, !186, !567, !184, !2036, !134, !134}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2064, !2066, !2069, !2070, !2071, !2072, !2075, !2076, !2078, !2079, !2082, !2086, !2087, !2095, !2098, !2099, !2100}
!2039 = !DILocalVariable(name: "buffer", arg: 1, scope: !2033, file: !544, line: 251, type: !330)
!2040 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2033, file: !544, line: 251, type: !186)
!2041 = !DILocalVariable(name: "arg", arg: 3, scope: !2033, file: !544, line: 252, type: !134)
!2042 = !DILocalVariable(name: "argsize", arg: 4, scope: !2033, file: !544, line: 252, type: !186)
!2043 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2033, file: !544, line: 253, type: !567)
!2044 = !DILocalVariable(name: "flags", arg: 6, scope: !2033, file: !544, line: 253, type: !184)
!2045 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2033, file: !544, line: 254, type: !2036)
!2046 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2033, file: !544, line: 255, type: !134)
!2047 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2033, file: !544, line: 256, type: !134)
!2048 = !DILocalVariable(name: "unibyte_locale", scope: !2033, file: !544, line: 258, type: !309)
!2049 = !DILocalVariable(name: "len", scope: !2033, file: !544, line: 260, type: !186)
!2050 = !DILocalVariable(name: "orig_buffersize", scope: !2033, file: !544, line: 261, type: !186)
!2051 = !DILocalVariable(name: "quote_string", scope: !2033, file: !544, line: 262, type: !134)
!2052 = !DILocalVariable(name: "quote_string_len", scope: !2033, file: !544, line: 263, type: !186)
!2053 = !DILocalVariable(name: "backslash_escapes", scope: !2033, file: !544, line: 264, type: !309)
!2054 = !DILocalVariable(name: "elide_outer_quotes", scope: !2033, file: !544, line: 265, type: !309)
!2055 = !DILocalVariable(name: "encountered_single_quote", scope: !2033, file: !544, line: 266, type: !309)
!2056 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2033, file: !544, line: 267, type: !309)
!2057 = !DILabel(scope: !2033, name: "process_input", file: !544, line: 308)
!2058 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2033, file: !544, line: 309, type: !309)
!2059 = !DILocalVariable(name: "lq", scope: !2060, file: !544, line: 361, type: !134)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !544, line: 361, column: 11)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !544, line: 360, column: 13)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !544, line: 333, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 312, column: 5)
!2064 = !DILocalVariable(name: "i", scope: !2065, file: !544, line: 395, type: !186)
!2065 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 395, column: 3)
!2066 = !DILocalVariable(name: "is_right_quote", scope: !2067, file: !544, line: 397, type: !309)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !544, line: 396, column: 5)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !544, line: 395, column: 3)
!2069 = !DILocalVariable(name: "escaping", scope: !2067, file: !544, line: 398, type: !309)
!2070 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2067, file: !544, line: 399, type: !309)
!2071 = !DILocalVariable(name: "c", scope: !2067, file: !544, line: 417, type: !189)
!2072 = !DILabel(scope: !2073, name: "c_and_shell_escape", file: !544, line: 502)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 478, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 419, column: 9)
!2075 = !DILabel(scope: !2073, name: "c_escape", file: !544, line: 507)
!2076 = !DILocalVariable(name: "m", scope: !2077, file: !544, line: 598, type: !186)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 596, column: 11)
!2078 = !DILocalVariable(name: "printable", scope: !2077, file: !544, line: 600, type: !309)
!2079 = !DILocalVariable(name: "mbs", scope: !2080, file: !544, line: 609, type: !616)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !544, line: 608, column: 15)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !544, line: 602, column: 17)
!2082 = !DILocalVariable(name: "w", scope: !2083, file: !544, line: 618, type: !524)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !544, line: 617, column: 19)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !544, line: 616, column: 17)
!2085 = distinct !DILexicalBlock(scope: !2080, file: !544, line: 616, column: 17)
!2086 = !DILocalVariable(name: "bytes", scope: !2083, file: !544, line: 619, type: !186)
!2087 = !DILocalVariable(name: "j", scope: !2088, file: !544, line: 648, type: !186)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !544, line: 648, column: 29)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !544, line: 647, column: 27)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !544, line: 645, column: 29)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !544, line: 636, column: 23)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !544, line: 628, column: 30)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !544, line: 623, column: 30)
!2094 = distinct !DILexicalBlock(scope: !2083, file: !544, line: 621, column: 25)
!2095 = !DILocalVariable(name: "ilim", scope: !2096, file: !544, line: 674, type: !186)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !544, line: 671, column: 15)
!2097 = distinct !DILexicalBlock(scope: !2077, file: !544, line: 670, column: 17)
!2098 = !DILabel(scope: !2067, name: "store_escape", file: !544, line: 709)
!2099 = !DILabel(scope: !2067, name: "store_c", file: !544, line: 712)
!2100 = !DILabel(scope: !2033, name: "force_outer_quoting_style", file: !544, line: 753)
!2101 = distinct !DIAssignID()
!2102 = distinct !DIAssignID()
!2103 = distinct !DIAssignID()
!2104 = distinct !DIAssignID()
!2105 = distinct !DIAssignID()
!2106 = !DILocation(line: 0, scope: !2080)
!2107 = distinct !DIAssignID()
!2108 = !DILocation(line: 0, scope: !2083)
!2109 = !DILocation(line: 0, scope: !2033)
!2110 = !DILocation(line: 258, column: 25, scope: !2033)
!2111 = !DILocation(line: 258, column: 36, scope: !2033)
!2112 = !DILocation(line: 267, column: 3, scope: !2033)
!2113 = !DILocation(line: 261, column: 10, scope: !2033)
!2114 = !DILocation(line: 262, column: 15, scope: !2033)
!2115 = !DILocation(line: 263, column: 10, scope: !2033)
!2116 = !DILocation(line: 308, column: 2, scope: !2033)
!2117 = !DILocation(line: 311, column: 3, scope: !2033)
!2118 = !DILocation(line: 318, column: 11, scope: !2063)
!2119 = !DILocation(line: 319, column: 9, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !544, line: 319, column: 9)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !544, line: 319, column: 9)
!2122 = distinct !DILexicalBlock(scope: !2063, file: !544, line: 318, column: 11)
!2123 = !DILocation(line: 319, column: 9, scope: !2121)
!2124 = !DILocation(line: 0, scope: !607, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 357, column: 26, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !544, line: 335, column: 11)
!2127 = distinct !DILexicalBlock(scope: !2062, file: !544, line: 334, column: 13)
!2128 = !DILocation(line: 199, column: 29, scope: !607, inlinedAt: !2125)
!2129 = !DILocation(line: 201, column: 19, scope: !2130, inlinedAt: !2125)
!2130 = distinct !DILexicalBlock(scope: !607, file: !544, line: 201, column: 7)
!2131 = !DILocation(line: 201, column: 7, scope: !607, inlinedAt: !2125)
!2132 = !DILocation(line: 229, column: 3, scope: !607, inlinedAt: !2125)
!2133 = !DILocation(line: 230, column: 3, scope: !607, inlinedAt: !2125)
!2134 = !DILocalVariable(name: "ps", arg: 1, scope: !2135, file: !1881, line: 1135, type: !2138)
!2135 = distinct !DISubprogram(name: "mbszero", scope: !1881, file: !1881, line: 1135, type: !2136, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2139)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{null, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2139 = !{!2134}
!2140 = !DILocation(line: 0, scope: !2135, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 230, column: 18, scope: !607, inlinedAt: !2125)
!2142 = !DILocalVariable(name: "__dest", arg: 1, scope: !2143, file: !1710, line: 57, type: !178)
!2143 = distinct !DISubprogram(name: "memset", scope: !1710, file: !1710, line: 57, type: !1890, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2144)
!2144 = !{!2142, !2145, !2146}
!2145 = !DILocalVariable(name: "__ch", arg: 2, scope: !2143, file: !1710, line: 57, type: !184)
!2146 = !DILocalVariable(name: "__len", arg: 3, scope: !2143, file: !1710, line: 57, type: !186)
!2147 = !DILocation(line: 0, scope: !2143, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 1137, column: 3, scope: !2135, inlinedAt: !2141)
!2149 = !DILocation(line: 59, column: 10, scope: !2143, inlinedAt: !2148)
!2150 = !DILocation(line: 231, column: 7, scope: !2151, inlinedAt: !2125)
!2151 = distinct !DILexicalBlock(scope: !607, file: !544, line: 231, column: 7)
!2152 = !DILocation(line: 231, column: 40, scope: !2151, inlinedAt: !2125)
!2153 = !DILocation(line: 231, column: 45, scope: !2151, inlinedAt: !2125)
!2154 = !DILocation(line: 235, column: 1, scope: !607, inlinedAt: !2125)
!2155 = !DILocation(line: 0, scope: !607, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 358, column: 27, scope: !2126)
!2157 = !DILocation(line: 199, column: 29, scope: !607, inlinedAt: !2156)
!2158 = !DILocation(line: 201, column: 19, scope: !2130, inlinedAt: !2156)
!2159 = !DILocation(line: 201, column: 7, scope: !607, inlinedAt: !2156)
!2160 = !DILocation(line: 229, column: 3, scope: !607, inlinedAt: !2156)
!2161 = !DILocation(line: 230, column: 3, scope: !607, inlinedAt: !2156)
!2162 = !DILocation(line: 0, scope: !2135, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 230, column: 18, scope: !607, inlinedAt: !2156)
!2164 = !DILocation(line: 0, scope: !2143, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 1137, column: 3, scope: !2135, inlinedAt: !2163)
!2166 = !DILocation(line: 59, column: 10, scope: !2143, inlinedAt: !2165)
!2167 = !DILocation(line: 231, column: 7, scope: !2151, inlinedAt: !2156)
!2168 = !DILocation(line: 231, column: 40, scope: !2151, inlinedAt: !2156)
!2169 = !DILocation(line: 231, column: 45, scope: !2151, inlinedAt: !2156)
!2170 = !DILocation(line: 235, column: 1, scope: !607, inlinedAt: !2156)
!2171 = !DILocation(line: 360, column: 13, scope: !2062)
!2172 = !DILocation(line: 0, scope: !2060)
!2173 = !DILocation(line: 361, column: 45, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2060, file: !544, line: 361, column: 11)
!2175 = !DILocation(line: 361, column: 11, scope: !2060)
!2176 = !DILocation(line: 362, column: 13, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !544, line: 362, column: 13)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !544, line: 362, column: 13)
!2179 = !DILocation(line: 362, column: 13, scope: !2178)
!2180 = !DILocation(line: 361, column: 52, scope: !2174)
!2181 = distinct !{!2181, !2175, !2182, !966}
!2182 = !DILocation(line: 362, column: 13, scope: !2060)
!2183 = !DILocation(line: 365, column: 28, scope: !2062)
!2184 = !DILocation(line: 260, column: 10, scope: !2033)
!2185 = !DILocation(line: 367, column: 7, scope: !2063)
!2186 = !DILocation(line: 373, column: 7, scope: !2063)
!2187 = !DILocation(line: 381, column: 11, scope: !2063)
!2188 = !DILocation(line: 376, column: 11, scope: !2063)
!2189 = !DILocation(line: 382, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !544, line: 382, column: 9)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !544, line: 382, column: 9)
!2192 = distinct !DILexicalBlock(scope: !2063, file: !544, line: 381, column: 11)
!2193 = !DILocation(line: 382, column: 9, scope: !2191)
!2194 = !DILocation(line: 389, column: 7, scope: !2063)
!2195 = !DILocation(line: 392, column: 7, scope: !2063)
!2196 = !DILocation(line: 0, scope: !2065)
!2197 = !DILocation(line: 395, column: 8, scope: !2065)
!2198 = !DILocation(line: 395, scope: !2065)
!2199 = !DILocation(line: 395, column: 34, scope: !2068)
!2200 = !DILocation(line: 395, column: 26, scope: !2068)
!2201 = !DILocation(line: 395, column: 48, scope: !2068)
!2202 = !DILocation(line: 395, column: 55, scope: !2068)
!2203 = !DILocation(line: 395, column: 3, scope: !2065)
!2204 = !DILocation(line: 395, column: 67, scope: !2068)
!2205 = !DILocation(line: 0, scope: !2067)
!2206 = !DILocation(line: 402, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 401, column: 11)
!2208 = !DILocation(line: 404, column: 17, scope: !2207)
!2209 = !DILocation(line: 405, column: 39, scope: !2207)
!2210 = !DILocation(line: 409, column: 32, scope: !2207)
!2211 = !DILocation(line: 405, column: 19, scope: !2207)
!2212 = !DILocation(line: 405, column: 15, scope: !2207)
!2213 = !DILocation(line: 410, column: 11, scope: !2207)
!2214 = !DILocation(line: 410, column: 25, scope: !2207)
!2215 = !DILocalVariable(name: "__s1", arg: 1, scope: !2216, file: !932, line: 974, type: !1064)
!2216 = distinct !DISubprogram(name: "memeq", scope: !932, file: !932, line: 974, type: !1850, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2217)
!2217 = !{!2215, !2218, !2219}
!2218 = !DILocalVariable(name: "__s2", arg: 2, scope: !2216, file: !932, line: 974, type: !1064)
!2219 = !DILocalVariable(name: "__n", arg: 3, scope: !2216, file: !932, line: 974, type: !186)
!2220 = !DILocation(line: 0, scope: !2216, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 410, column: 14, scope: !2207)
!2222 = !DILocation(line: 976, column: 11, scope: !2216, inlinedAt: !2221)
!2223 = !DILocation(line: 976, column: 10, scope: !2216, inlinedAt: !2221)
!2224 = !DILocation(line: 401, column: 11, scope: !2067)
!2225 = !DILocation(line: 417, column: 25, scope: !2067)
!2226 = !DILocation(line: 418, column: 7, scope: !2067)
!2227 = !DILocation(line: 421, column: 15, scope: !2074)
!2228 = !DILocation(line: 423, column: 15, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !544, line: 423, column: 15)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !544, line: 422, column: 13)
!2231 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 421, column: 15)
!2232 = !DILocation(line: 423, column: 15, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !544, line: 423, column: 15)
!2234 = !DILocation(line: 423, column: 15, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !544, line: 423, column: 15)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !544, line: 423, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !544, line: 423, column: 15)
!2238 = !DILocation(line: 423, column: 15, scope: !2236)
!2239 = !DILocation(line: 423, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !544, line: 423, column: 15)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !544, line: 423, column: 15)
!2242 = !DILocation(line: 423, column: 15, scope: !2241)
!2243 = !DILocation(line: 423, column: 15, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !544, line: 423, column: 15)
!2245 = distinct !DILexicalBlock(scope: !2237, file: !544, line: 423, column: 15)
!2246 = !DILocation(line: 423, column: 15, scope: !2245)
!2247 = !DILocation(line: 423, column: 15, scope: !2237)
!2248 = !DILocation(line: 423, column: 15, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !544, line: 423, column: 15)
!2250 = distinct !DILexicalBlock(scope: !2229, file: !544, line: 423, column: 15)
!2251 = !DILocation(line: 423, column: 15, scope: !2250)
!2252 = !DILocation(line: 431, column: 19, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2230, file: !544, line: 430, column: 19)
!2254 = !DILocation(line: 431, column: 24, scope: !2253)
!2255 = !DILocation(line: 431, column: 28, scope: !2253)
!2256 = !DILocation(line: 431, column: 38, scope: !2253)
!2257 = !DILocation(line: 431, column: 48, scope: !2253)
!2258 = !DILocation(line: 431, column: 59, scope: !2253)
!2259 = !DILocation(line: 433, column: 19, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !544, line: 433, column: 19)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !544, line: 433, column: 19)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !544, line: 432, column: 17)
!2263 = !DILocation(line: 433, column: 19, scope: !2261)
!2264 = !DILocation(line: 434, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !544, line: 434, column: 19)
!2266 = distinct !DILexicalBlock(scope: !2262, file: !544, line: 434, column: 19)
!2267 = !DILocation(line: 434, column: 19, scope: !2266)
!2268 = !DILocation(line: 435, column: 17, scope: !2262)
!2269 = !DILocation(line: 442, column: 20, scope: !2231)
!2270 = !DILocation(line: 447, column: 11, scope: !2074)
!2271 = !DILocation(line: 450, column: 19, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 448, column: 13)
!2273 = !DILocation(line: 456, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2272, file: !544, line: 455, column: 19)
!2275 = !DILocation(line: 456, column: 24, scope: !2274)
!2276 = !DILocation(line: 456, column: 28, scope: !2274)
!2277 = !DILocation(line: 456, column: 38, scope: !2274)
!2278 = !DILocation(line: 456, column: 41, scope: !2274)
!2279 = !DILocation(line: 456, column: 52, scope: !2274)
!2280 = !DILocation(line: 455, column: 19, scope: !2272)
!2281 = !DILocation(line: 457, column: 25, scope: !2274)
!2282 = !DILocation(line: 457, column: 17, scope: !2274)
!2283 = !DILocation(line: 464, column: 25, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2274, file: !544, line: 458, column: 19)
!2285 = !DILocation(line: 468, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !544, line: 468, column: 21)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !544, line: 468, column: 21)
!2288 = !DILocation(line: 468, column: 21, scope: !2287)
!2289 = !DILocation(line: 469, column: 21, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !544, line: 469, column: 21)
!2291 = distinct !DILexicalBlock(scope: !2284, file: !544, line: 469, column: 21)
!2292 = !DILocation(line: 469, column: 21, scope: !2291)
!2293 = !DILocation(line: 470, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !544, line: 470, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2284, file: !544, line: 470, column: 21)
!2296 = !DILocation(line: 470, column: 21, scope: !2295)
!2297 = !DILocation(line: 471, column: 21, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !544, line: 471, column: 21)
!2299 = distinct !DILexicalBlock(scope: !2284, file: !544, line: 471, column: 21)
!2300 = !DILocation(line: 471, column: 21, scope: !2299)
!2301 = !DILocation(line: 472, column: 21, scope: !2284)
!2302 = !DILocation(line: 482, column: 33, scope: !2073)
!2303 = !DILocation(line: 483, column: 33, scope: !2073)
!2304 = !DILocation(line: 485, column: 33, scope: !2073)
!2305 = !DILocation(line: 486, column: 33, scope: !2073)
!2306 = !DILocation(line: 487, column: 33, scope: !2073)
!2307 = !DILocation(line: 490, column: 17, scope: !2073)
!2308 = !DILocation(line: 492, column: 21, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !544, line: 491, column: 15)
!2310 = distinct !DILexicalBlock(scope: !2073, file: !544, line: 490, column: 17)
!2311 = !DILocation(line: 499, column: 35, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2073, file: !544, line: 499, column: 17)
!2313 = !DILocation(line: 0, scope: !2073)
!2314 = !DILocation(line: 502, column: 11, scope: !2073)
!2315 = !DILocation(line: 504, column: 17, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2073, file: !544, line: 503, column: 17)
!2317 = !DILocation(line: 507, column: 11, scope: !2073)
!2318 = !DILocation(line: 508, column: 17, scope: !2073)
!2319 = !DILocation(line: 517, column: 15, scope: !2074)
!2320 = !DILocation(line: 517, column: 40, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 517, column: 15)
!2322 = !DILocation(line: 517, column: 47, scope: !2321)
!2323 = !DILocation(line: 517, column: 18, scope: !2321)
!2324 = !DILocation(line: 521, column: 17, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 521, column: 15)
!2326 = !DILocation(line: 521, column: 15, scope: !2074)
!2327 = !DILocation(line: 525, column: 11, scope: !2074)
!2328 = !DILocation(line: 537, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 536, column: 15)
!2330 = !DILocation(line: 536, column: 15, scope: !2074)
!2331 = !DILocation(line: 544, column: 15, scope: !2074)
!2332 = !DILocation(line: 546, column: 19, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !544, line: 545, column: 13)
!2334 = distinct !DILexicalBlock(scope: !2074, file: !544, line: 544, column: 15)
!2335 = !DILocation(line: 549, column: 19, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !544, line: 549, column: 19)
!2337 = !DILocation(line: 549, column: 30, scope: !2336)
!2338 = !DILocation(line: 558, column: 15, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !544, line: 558, column: 15)
!2340 = distinct !DILexicalBlock(scope: !2333, file: !544, line: 558, column: 15)
!2341 = !DILocation(line: 558, column: 15, scope: !2340)
!2342 = !DILocation(line: 559, column: 15, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !544, line: 559, column: 15)
!2344 = distinct !DILexicalBlock(scope: !2333, file: !544, line: 559, column: 15)
!2345 = !DILocation(line: 559, column: 15, scope: !2344)
!2346 = !DILocation(line: 560, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !544, line: 560, column: 15)
!2348 = distinct !DILexicalBlock(scope: !2333, file: !544, line: 560, column: 15)
!2349 = !DILocation(line: 560, column: 15, scope: !2348)
!2350 = !DILocation(line: 562, column: 13, scope: !2333)
!2351 = !DILocation(line: 602, column: 17, scope: !2077)
!2352 = !DILocation(line: 0, scope: !2077)
!2353 = !DILocation(line: 605, column: 29, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2081, file: !544, line: 603, column: 15)
!2355 = !DILocation(line: 605, column: 41, scope: !2354)
!2356 = !DILocation(line: 606, column: 15, scope: !2354)
!2357 = !DILocation(line: 609, column: 17, scope: !2080)
!2358 = !DILocation(line: 0, scope: !2135, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 609, column: 32, scope: !2080)
!2360 = !DILocation(line: 0, scope: !2143, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 1137, column: 3, scope: !2135, inlinedAt: !2359)
!2362 = !DILocation(line: 59, column: 10, scope: !2143, inlinedAt: !2361)
!2363 = !DILocation(line: 613, column: 29, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2080, file: !544, line: 613, column: 21)
!2365 = !DILocation(line: 613, column: 21, scope: !2080)
!2366 = !DILocation(line: 614, column: 29, scope: !2364)
!2367 = !DILocation(line: 614, column: 19, scope: !2364)
!2368 = !DILocation(line: 618, column: 21, scope: !2083)
!2369 = !DILocation(line: 620, column: 54, scope: !2083)
!2370 = !DILocation(line: 619, column: 36, scope: !2083)
!2371 = !DILocation(line: 621, column: 25, scope: !2083)
!2372 = !DILocation(line: 631, column: 38, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2092, file: !544, line: 629, column: 23)
!2374 = !DILocation(line: 631, column: 48, scope: !2373)
!2375 = !DILocation(line: 631, column: 25, scope: !2373)
!2376 = !DILocation(line: 626, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2093, file: !544, line: 624, column: 23)
!2378 = !DILocation(line: 631, column: 51, scope: !2373)
!2379 = !DILocation(line: 632, column: 28, scope: !2373)
!2380 = !DILocation(line: 631, column: 34, scope: !2373)
!2381 = distinct !{!2381, !2375, !2379, !966}
!2382 = !DILocation(line: 0, scope: !2088)
!2383 = !DILocation(line: 646, column: 29, scope: !2090)
!2384 = !DILocation(line: 648, column: 29, scope: !2088)
!2385 = !DILocation(line: 649, column: 39, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2088, file: !544, line: 648, column: 29)
!2387 = !DILocation(line: 649, column: 31, scope: !2386)
!2388 = !DILocation(line: 648, column: 60, scope: !2386)
!2389 = !DILocation(line: 648, column: 50, scope: !2386)
!2390 = distinct !{!2390, !2384, !2391, !966}
!2391 = !DILocation(line: 654, column: 33, scope: !2088)
!2392 = !DILocation(line: 657, column: 43, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2091, file: !544, line: 657, column: 29)
!2394 = !DILocalVariable(name: "wc", arg: 1, scope: !2395, file: !2396, line: 865, type: !2399)
!2395 = distinct !DISubprogram(name: "c32isprint", scope: !2396, file: !2396, line: 865, type: !2397, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2401)
!2396 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!184, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2400, line: 20, baseType: !139)
!2400 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2401 = !{!2394}
!2402 = !DILocation(line: 0, scope: !2395, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 657, column: 31, scope: !2393)
!2404 = !DILocation(line: 871, column: 10, scope: !2395, inlinedAt: !2403)
!2405 = !DILocation(line: 657, column: 31, scope: !2393)
!2406 = !DILocation(line: 664, column: 23, scope: !2083)
!2407 = !DILocation(line: 665, column: 19, scope: !2084)
!2408 = !DILocation(line: 666, column: 15, scope: !2081)
!2409 = !DILocation(line: 753, column: 2, scope: !2033)
!2410 = !DILocation(line: 756, column: 51, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 756, column: 7)
!2412 = !DILocation(line: 0, scope: !2081)
!2413 = !DILocation(line: 670, column: 19, scope: !2097)
!2414 = !DILocation(line: 670, column: 23, scope: !2097)
!2415 = !DILocation(line: 674, column: 33, scope: !2096)
!2416 = !DILocation(line: 0, scope: !2096)
!2417 = !DILocation(line: 676, column: 17, scope: !2096)
!2418 = !DILocation(line: 678, column: 43, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !544, line: 678, column: 25)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !544, line: 677, column: 19)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !544, line: 676, column: 17)
!2422 = distinct !DILexicalBlock(scope: !2096, file: !544, line: 676, column: 17)
!2423 = !DILocation(line: 680, column: 25, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !544, line: 680, column: 25)
!2425 = distinct !DILexicalBlock(scope: !2419, file: !544, line: 679, column: 23)
!2426 = !DILocation(line: 680, column: 25, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !544, line: 680, column: 25)
!2428 = !DILocation(line: 680, column: 25, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !544, line: 680, column: 25)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !544, line: 680, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !544, line: 680, column: 25)
!2432 = !DILocation(line: 680, column: 25, scope: !2430)
!2433 = !DILocation(line: 680, column: 25, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !544, line: 680, column: 25)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !544, line: 680, column: 25)
!2436 = !DILocation(line: 680, column: 25, scope: !2435)
!2437 = !DILocation(line: 680, column: 25, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !544, line: 680, column: 25)
!2439 = distinct !DILexicalBlock(scope: !2431, file: !544, line: 680, column: 25)
!2440 = !DILocation(line: 680, column: 25, scope: !2439)
!2441 = !DILocation(line: 680, column: 25, scope: !2431)
!2442 = !DILocation(line: 680, column: 25, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !544, line: 680, column: 25)
!2444 = distinct !DILexicalBlock(scope: !2424, file: !544, line: 680, column: 25)
!2445 = !DILocation(line: 680, column: 25, scope: !2444)
!2446 = !DILocation(line: 681, column: 25, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !544, line: 681, column: 25)
!2448 = distinct !DILexicalBlock(scope: !2425, file: !544, line: 681, column: 25)
!2449 = !DILocation(line: 681, column: 25, scope: !2448)
!2450 = !DILocation(line: 682, column: 25, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !544, line: 682, column: 25)
!2452 = distinct !DILexicalBlock(scope: !2425, file: !544, line: 682, column: 25)
!2453 = !DILocation(line: 682, column: 25, scope: !2452)
!2454 = !DILocation(line: 683, column: 38, scope: !2425)
!2455 = !DILocation(line: 683, column: 33, scope: !2425)
!2456 = !DILocation(line: 684, column: 23, scope: !2425)
!2457 = !DILocation(line: 685, column: 30, scope: !2419)
!2458 = !DILocation(line: 687, column: 25, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !544, line: 687, column: 25)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !544, line: 687, column: 25)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !544, line: 686, column: 23)
!2462 = distinct !DILexicalBlock(scope: !2419, file: !544, line: 685, column: 30)
!2463 = !DILocation(line: 687, column: 25, scope: !2460)
!2464 = !DILocation(line: 689, column: 23, scope: !2461)
!2465 = !DILocation(line: 690, column: 35, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2420, file: !544, line: 690, column: 25)
!2467 = !DILocation(line: 690, column: 30, scope: !2466)
!2468 = !DILocation(line: 690, column: 25, scope: !2420)
!2469 = !DILocation(line: 692, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !544, line: 692, column: 21)
!2471 = distinct !DILexicalBlock(scope: !2420, file: !544, line: 692, column: 21)
!2472 = !DILocation(line: 692, column: 21, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !544, line: 692, column: 21)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !544, line: 692, column: 21)
!2475 = distinct !DILexicalBlock(scope: !2470, file: !544, line: 692, column: 21)
!2476 = !DILocation(line: 692, column: 21, scope: !2474)
!2477 = !DILocation(line: 692, column: 21, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !544, line: 692, column: 21)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !544, line: 692, column: 21)
!2480 = !DILocation(line: 692, column: 21, scope: !2479)
!2481 = !DILocation(line: 692, column: 21, scope: !2475)
!2482 = !DILocation(line: 0, scope: !2420)
!2483 = !DILocation(line: 693, column: 21, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !544, line: 693, column: 21)
!2485 = distinct !DILexicalBlock(scope: !2420, file: !544, line: 693, column: 21)
!2486 = !DILocation(line: 693, column: 21, scope: !2485)
!2487 = !DILocation(line: 694, column: 25, scope: !2420)
!2488 = !DILocation(line: 676, column: 17, scope: !2421)
!2489 = distinct !{!2489, !2490, !2491}
!2490 = !DILocation(line: 676, column: 17, scope: !2422)
!2491 = !DILocation(line: 695, column: 19, scope: !2422)
!2492 = !DILocation(line: 409, column: 30, scope: !2207)
!2493 = !DILocation(line: 702, column: 34, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 702, column: 11)
!2495 = !DILocation(line: 704, column: 14, scope: !2494)
!2496 = !DILocation(line: 705, column: 14, scope: !2494)
!2497 = !DILocation(line: 705, column: 35, scope: !2494)
!2498 = !DILocation(line: 705, column: 17, scope: !2494)
!2499 = !DILocation(line: 705, column: 47, scope: !2494)
!2500 = !DILocation(line: 705, column: 65, scope: !2494)
!2501 = !DILocation(line: 706, column: 11, scope: !2494)
!2502 = !DILocation(line: 702, column: 11, scope: !2067)
!2503 = !DILocation(line: 395, column: 15, scope: !2065)
!2504 = !DILocation(line: 709, column: 5, scope: !2067)
!2505 = !DILocation(line: 710, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 710, column: 7)
!2507 = !DILocation(line: 710, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !544, line: 710, column: 7)
!2509 = !DILocation(line: 710, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !544, line: 710, column: 7)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !544, line: 710, column: 7)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !544, line: 710, column: 7)
!2513 = !DILocation(line: 710, column: 7, scope: !2511)
!2514 = !DILocation(line: 710, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !544, line: 710, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2512, file: !544, line: 710, column: 7)
!2517 = !DILocation(line: 710, column: 7, scope: !2516)
!2518 = !DILocation(line: 710, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !544, line: 710, column: 7)
!2520 = distinct !DILexicalBlock(scope: !2512, file: !544, line: 710, column: 7)
!2521 = !DILocation(line: 710, column: 7, scope: !2520)
!2522 = !DILocation(line: 710, column: 7, scope: !2512)
!2523 = !DILocation(line: 710, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !544, line: 710, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2506, file: !544, line: 710, column: 7)
!2526 = !DILocation(line: 710, column: 7, scope: !2525)
!2527 = !DILocation(line: 712, column: 5, scope: !2067)
!2528 = !DILocation(line: 713, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !544, line: 713, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 713, column: 7)
!2531 = !DILocation(line: 417, column: 21, scope: !2067)
!2532 = !DILocation(line: 713, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !544, line: 713, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !544, line: 713, column: 7)
!2535 = distinct !DILexicalBlock(scope: !2529, file: !544, line: 713, column: 7)
!2536 = !DILocation(line: 713, column: 7, scope: !2534)
!2537 = !DILocation(line: 713, column: 7, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !544, line: 713, column: 7)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !544, line: 713, column: 7)
!2540 = !DILocation(line: 713, column: 7, scope: !2539)
!2541 = !DILocation(line: 713, column: 7, scope: !2535)
!2542 = !DILocation(line: 714, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !544, line: 714, column: 7)
!2544 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 714, column: 7)
!2545 = !DILocation(line: 714, column: 7, scope: !2544)
!2546 = !DILocation(line: 716, column: 11, scope: !2067)
!2547 = !DILocation(line: 718, column: 5, scope: !2068)
!2548 = !DILocation(line: 395, column: 82, scope: !2068)
!2549 = !DILocation(line: 395, column: 3, scope: !2068)
!2550 = distinct !{!2550, !2203, !2551, !966}
!2551 = !DILocation(line: 718, column: 5, scope: !2065)
!2552 = !DILocation(line: 720, column: 11, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 720, column: 7)
!2554 = !DILocation(line: 720, column: 16, scope: !2553)
!2555 = !DILocation(line: 728, column: 51, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 728, column: 7)
!2557 = !DILocation(line: 731, column: 11, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2556, file: !544, line: 730, column: 5)
!2559 = !DILocation(line: 732, column: 16, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2558, file: !544, line: 731, column: 11)
!2561 = !DILocation(line: 732, column: 9, scope: !2560)
!2562 = !DILocation(line: 736, column: 18, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !544, line: 736, column: 16)
!2564 = !DILocation(line: 736, column: 29, scope: !2563)
!2565 = !DILocation(line: 745, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 745, column: 7)
!2567 = !DILocation(line: 745, column: 20, scope: !2566)
!2568 = !DILocation(line: 746, column: 12, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !544, line: 746, column: 5)
!2570 = distinct !DILexicalBlock(scope: !2566, file: !544, line: 746, column: 5)
!2571 = !DILocation(line: 746, column: 5, scope: !2570)
!2572 = !DILocation(line: 747, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !544, line: 747, column: 7)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !544, line: 747, column: 7)
!2575 = !DILocation(line: 747, column: 7, scope: !2574)
!2576 = !DILocation(line: 746, column: 39, scope: !2569)
!2577 = distinct !{!2577, !2571, !2578, !966}
!2578 = !DILocation(line: 747, column: 7, scope: !2570)
!2579 = !DILocation(line: 749, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2033, file: !544, line: 749, column: 7)
!2581 = !DILocation(line: 749, column: 7, scope: !2033)
!2582 = !DILocation(line: 750, column: 5, scope: !2580)
!2583 = !DILocation(line: 750, column: 17, scope: !2580)
!2584 = !DILocation(line: 756, column: 21, scope: !2411)
!2585 = !DILocation(line: 760, column: 42, scope: !2033)
!2586 = !DILocation(line: 758, column: 10, scope: !2033)
!2587 = !DILocation(line: 758, column: 3, scope: !2033)
!2588 = !DILocation(line: 762, column: 1, scope: !2033)
!2589 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1040, file: !1040, line: 98, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!186}
!2592 = !DISubprogram(name: "iswprint", scope: !2593, file: !2593, line: 120, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2593 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2594 = distinct !DISubprogram(name: "quotearg_alloc", scope: !544, file: !544, line: 788, type: !2595, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!330, !134, !186, !1926}
!2597 = !{!2598, !2599, !2600}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2594, file: !544, line: 788, type: !134)
!2599 = !DILocalVariable(name: "argsize", arg: 2, scope: !2594, file: !544, line: 788, type: !186)
!2600 = !DILocalVariable(name: "o", arg: 3, scope: !2594, file: !544, line: 789, type: !1926)
!2601 = !DILocation(line: 0, scope: !2594)
!2602 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !544, line: 801, type: !134)
!2603 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !544, file: !544, line: 801, type: !2604, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!330, !134, !186, !784, !1926}
!2606 = !{!2602, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2607 = !DILocalVariable(name: "argsize", arg: 2, scope: !2603, file: !544, line: 801, type: !186)
!2608 = !DILocalVariable(name: "size", arg: 3, scope: !2603, file: !544, line: 801, type: !784)
!2609 = !DILocalVariable(name: "o", arg: 4, scope: !2603, file: !544, line: 802, type: !1926)
!2610 = !DILocalVariable(name: "p", scope: !2603, file: !544, line: 804, type: !1926)
!2611 = !DILocalVariable(name: "saved_errno", scope: !2603, file: !544, line: 805, type: !184)
!2612 = !DILocalVariable(name: "flags", scope: !2603, file: !544, line: 807, type: !184)
!2613 = !DILocalVariable(name: "bufsize", scope: !2603, file: !544, line: 808, type: !186)
!2614 = !DILocalVariable(name: "buf", scope: !2603, file: !544, line: 812, type: !330)
!2615 = !DILocation(line: 0, scope: !2603, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 791, column: 10, scope: !2594)
!2617 = !DILocation(line: 804, column: 37, scope: !2603, inlinedAt: !2616)
!2618 = !DILocation(line: 805, column: 21, scope: !2603, inlinedAt: !2616)
!2619 = !DILocation(line: 807, column: 18, scope: !2603, inlinedAt: !2616)
!2620 = !DILocation(line: 807, column: 24, scope: !2603, inlinedAt: !2616)
!2621 = !DILocation(line: 808, column: 72, scope: !2603, inlinedAt: !2616)
!2622 = !DILocation(line: 809, column: 56, scope: !2603, inlinedAt: !2616)
!2623 = !DILocation(line: 810, column: 49, scope: !2603, inlinedAt: !2616)
!2624 = !DILocation(line: 811, column: 49, scope: !2603, inlinedAt: !2616)
!2625 = !DILocation(line: 808, column: 20, scope: !2603, inlinedAt: !2616)
!2626 = !DILocation(line: 811, column: 62, scope: !2603, inlinedAt: !2616)
!2627 = !DILocation(line: 812, column: 15, scope: !2603, inlinedAt: !2616)
!2628 = !DILocation(line: 813, column: 60, scope: !2603, inlinedAt: !2616)
!2629 = !DILocation(line: 815, column: 32, scope: !2603, inlinedAt: !2616)
!2630 = !DILocation(line: 815, column: 47, scope: !2603, inlinedAt: !2616)
!2631 = !DILocation(line: 813, column: 3, scope: !2603, inlinedAt: !2616)
!2632 = !DILocation(line: 816, column: 9, scope: !2603, inlinedAt: !2616)
!2633 = !DILocation(line: 791, column: 3, scope: !2594)
!2634 = !DILocation(line: 0, scope: !2603)
!2635 = !DILocation(line: 804, column: 37, scope: !2603)
!2636 = !DILocation(line: 805, column: 21, scope: !2603)
!2637 = !DILocation(line: 807, column: 18, scope: !2603)
!2638 = !DILocation(line: 807, column: 27, scope: !2603)
!2639 = !DILocation(line: 807, column: 24, scope: !2603)
!2640 = !DILocation(line: 808, column: 72, scope: !2603)
!2641 = !DILocation(line: 809, column: 56, scope: !2603)
!2642 = !DILocation(line: 810, column: 49, scope: !2603)
!2643 = !DILocation(line: 811, column: 49, scope: !2603)
!2644 = !DILocation(line: 808, column: 20, scope: !2603)
!2645 = !DILocation(line: 811, column: 62, scope: !2603)
!2646 = !DILocation(line: 812, column: 15, scope: !2603)
!2647 = !DILocation(line: 813, column: 60, scope: !2603)
!2648 = !DILocation(line: 815, column: 32, scope: !2603)
!2649 = !DILocation(line: 815, column: 47, scope: !2603)
!2650 = !DILocation(line: 813, column: 3, scope: !2603)
!2651 = !DILocation(line: 816, column: 9, scope: !2603)
!2652 = !DILocation(line: 817, column: 7, scope: !2603)
!2653 = !DILocation(line: 818, column: 11, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2603, file: !544, line: 817, column: 7)
!2655 = !{!1207, !1207, i64 0}
!2656 = !DILocation(line: 818, column: 5, scope: !2654)
!2657 = !DILocation(line: 819, column: 3, scope: !2603)
!2658 = distinct !DISubprogram(name: "quotearg_free", scope: !544, file: !544, line: 837, type: !457, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2659)
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "sv", scope: !2658, file: !544, line: 839, type: !630)
!2661 = !DILocalVariable(name: "i", scope: !2662, file: !544, line: 840, type: !184)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !544, line: 840, column: 3)
!2663 = !DILocation(line: 839, column: 24, scope: !2658)
!2664 = !DILocation(line: 0, scope: !2658)
!2665 = !DILocation(line: 0, scope: !2662)
!2666 = !DILocation(line: 840, column: 21, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !544, line: 840, column: 3)
!2668 = !DILocation(line: 840, column: 3, scope: !2662)
!2669 = !DILocation(line: 842, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2658, file: !544, line: 842, column: 7)
!2671 = !{!2672, !852, i64 8}
!2672 = !{!"slotvec", !1207, i64 0, !852, i64 8}
!2673 = !DILocation(line: 842, column: 17, scope: !2670)
!2674 = !DILocation(line: 842, column: 7, scope: !2658)
!2675 = !DILocation(line: 841, column: 17, scope: !2667)
!2676 = !DILocation(line: 841, column: 5, scope: !2667)
!2677 = !DILocation(line: 840, column: 32, scope: !2667)
!2678 = distinct !{!2678, !2668, !2679, !966}
!2679 = !DILocation(line: 841, column: 20, scope: !2662)
!2680 = !DILocation(line: 844, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2670, file: !544, line: 843, column: 5)
!2682 = !DILocation(line: 845, column: 21, scope: !2681)
!2683 = !{!2672, !1207, i64 0}
!2684 = !DILocation(line: 846, column: 20, scope: !2681)
!2685 = !DILocation(line: 847, column: 5, scope: !2681)
!2686 = !DILocation(line: 848, column: 10, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2658, file: !544, line: 848, column: 7)
!2688 = !DILocation(line: 848, column: 7, scope: !2658)
!2689 = !DILocation(line: 850, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !544, line: 849, column: 5)
!2691 = !DILocation(line: 851, column: 15, scope: !2690)
!2692 = !DILocation(line: 852, column: 5, scope: !2690)
!2693 = !DILocation(line: 853, column: 10, scope: !2658)
!2694 = !DILocation(line: 854, column: 1, scope: !2658)
!2695 = distinct !DISubprogram(name: "quotearg_n", scope: !544, file: !544, line: 919, type: !1033, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2696)
!2696 = !{!2697, !2698}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !544, line: 919, type: !184)
!2698 = !DILocalVariable(name: "arg", arg: 2, scope: !2695, file: !544, line: 919, type: !134)
!2699 = !DILocation(line: 0, scope: !2695)
!2700 = !DILocation(line: 921, column: 10, scope: !2695)
!2701 = !DILocation(line: 921, column: 3, scope: !2695)
!2702 = distinct !DISubprogram(name: "quotearg_n_options", scope: !544, file: !544, line: 866, type: !2703, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!330, !184, !134, !186, !1926}
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2716, !2717, !2719, !2720, !2721}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !544, line: 866, type: !184)
!2707 = !DILocalVariable(name: "arg", arg: 2, scope: !2702, file: !544, line: 866, type: !134)
!2708 = !DILocalVariable(name: "argsize", arg: 3, scope: !2702, file: !544, line: 866, type: !186)
!2709 = !DILocalVariable(name: "options", arg: 4, scope: !2702, file: !544, line: 867, type: !1926)
!2710 = !DILocalVariable(name: "saved_errno", scope: !2702, file: !544, line: 869, type: !184)
!2711 = !DILocalVariable(name: "sv", scope: !2702, file: !544, line: 871, type: !630)
!2712 = !DILocalVariable(name: "nslots_max", scope: !2702, file: !544, line: 873, type: !184)
!2713 = !DILocalVariable(name: "preallocated", scope: !2714, file: !544, line: 879, type: !309)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !544, line: 878, column: 5)
!2715 = distinct !DILexicalBlock(scope: !2702, file: !544, line: 877, column: 7)
!2716 = !DILocalVariable(name: "new_nslots", scope: !2714, file: !544, line: 880, type: !797)
!2717 = !DILocalVariable(name: "size", scope: !2718, file: !544, line: 891, type: !186)
!2718 = distinct !DILexicalBlock(scope: !2702, file: !544, line: 890, column: 3)
!2719 = !DILocalVariable(name: "val", scope: !2718, file: !544, line: 892, type: !330)
!2720 = !DILocalVariable(name: "flags", scope: !2718, file: !544, line: 894, type: !184)
!2721 = !DILocalVariable(name: "qsize", scope: !2718, file: !544, line: 895, type: !186)
!2722 = distinct !DIAssignID()
!2723 = !DILocation(line: 0, scope: !2714)
!2724 = !DILocation(line: 0, scope: !2702)
!2725 = !DILocation(line: 869, column: 21, scope: !2702)
!2726 = !DILocation(line: 871, column: 24, scope: !2702)
!2727 = !DILocation(line: 874, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2702, file: !544, line: 874, column: 7)
!2729 = !DILocation(line: 875, column: 5, scope: !2728)
!2730 = !DILocation(line: 877, column: 7, scope: !2715)
!2731 = !DILocation(line: 877, column: 14, scope: !2715)
!2732 = !DILocation(line: 877, column: 7, scope: !2702)
!2733 = !DILocation(line: 879, column: 31, scope: !2714)
!2734 = !DILocation(line: 880, column: 7, scope: !2714)
!2735 = !DILocation(line: 880, column: 26, scope: !2714)
!2736 = !DILocation(line: 880, column: 13, scope: !2714)
!2737 = distinct !DIAssignID()
!2738 = !DILocation(line: 882, column: 31, scope: !2714)
!2739 = !DILocation(line: 883, column: 33, scope: !2714)
!2740 = !DILocation(line: 883, column: 42, scope: !2714)
!2741 = !DILocation(line: 883, column: 31, scope: !2714)
!2742 = !DILocation(line: 882, column: 22, scope: !2714)
!2743 = !DILocation(line: 882, column: 15, scope: !2714)
!2744 = !DILocation(line: 884, column: 11, scope: !2714)
!2745 = !DILocation(line: 885, column: 15, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2714, file: !544, line: 884, column: 11)
!2747 = !{i64 0, i64 8, !2655, i64 8, i64 8, !851}
!2748 = !DILocation(line: 885, column: 9, scope: !2746)
!2749 = !DILocation(line: 886, column: 20, scope: !2714)
!2750 = !DILocation(line: 886, column: 18, scope: !2714)
!2751 = !DILocation(line: 886, column: 32, scope: !2714)
!2752 = !DILocation(line: 886, column: 43, scope: !2714)
!2753 = !DILocation(line: 886, column: 53, scope: !2714)
!2754 = !DILocation(line: 0, scope: !2143, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 886, column: 7, scope: !2714)
!2756 = !DILocation(line: 59, column: 10, scope: !2143, inlinedAt: !2755)
!2757 = !DILocation(line: 887, column: 16, scope: !2714)
!2758 = !DILocation(line: 887, column: 14, scope: !2714)
!2759 = !DILocation(line: 888, column: 5, scope: !2715)
!2760 = !DILocation(line: 888, column: 5, scope: !2714)
!2761 = !DILocation(line: 891, column: 19, scope: !2718)
!2762 = !DILocation(line: 891, column: 25, scope: !2718)
!2763 = !DILocation(line: 0, scope: !2718)
!2764 = !DILocation(line: 892, column: 23, scope: !2718)
!2765 = !DILocation(line: 894, column: 26, scope: !2718)
!2766 = !DILocation(line: 894, column: 32, scope: !2718)
!2767 = !DILocation(line: 896, column: 55, scope: !2718)
!2768 = !DILocation(line: 897, column: 55, scope: !2718)
!2769 = !DILocation(line: 898, column: 55, scope: !2718)
!2770 = !DILocation(line: 899, column: 55, scope: !2718)
!2771 = !DILocation(line: 895, column: 20, scope: !2718)
!2772 = !DILocation(line: 901, column: 14, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2718, file: !544, line: 901, column: 9)
!2774 = !DILocation(line: 901, column: 9, scope: !2718)
!2775 = !DILocation(line: 903, column: 35, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !544, line: 902, column: 7)
!2777 = !DILocation(line: 903, column: 20, scope: !2776)
!2778 = !DILocation(line: 904, column: 17, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !544, line: 904, column: 13)
!2780 = !DILocation(line: 904, column: 13, scope: !2776)
!2781 = !DILocation(line: 905, column: 11, scope: !2779)
!2782 = !DILocation(line: 906, column: 27, scope: !2776)
!2783 = !DILocation(line: 906, column: 19, scope: !2776)
!2784 = !DILocation(line: 907, column: 69, scope: !2776)
!2785 = !DILocation(line: 909, column: 44, scope: !2776)
!2786 = !DILocation(line: 910, column: 44, scope: !2776)
!2787 = !DILocation(line: 907, column: 9, scope: !2776)
!2788 = !DILocation(line: 911, column: 7, scope: !2776)
!2789 = !DILocation(line: 913, column: 11, scope: !2718)
!2790 = !DILocation(line: 914, column: 5, scope: !2718)
!2791 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !544, file: !544, line: 925, type: !2792, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!330, !184, !134, !186}
!2794 = !{!2795, !2796, !2797}
!2795 = !DILocalVariable(name: "n", arg: 1, scope: !2791, file: !544, line: 925, type: !184)
!2796 = !DILocalVariable(name: "arg", arg: 2, scope: !2791, file: !544, line: 925, type: !134)
!2797 = !DILocalVariable(name: "argsize", arg: 3, scope: !2791, file: !544, line: 925, type: !186)
!2798 = !DILocation(line: 0, scope: !2791)
!2799 = !DILocation(line: 927, column: 10, scope: !2791)
!2800 = !DILocation(line: 927, column: 3, scope: !2791)
!2801 = distinct !DISubprogram(name: "quotearg", scope: !544, file: !544, line: 931, type: !1042, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2802)
!2802 = !{!2803}
!2803 = !DILocalVariable(name: "arg", arg: 1, scope: !2801, file: !544, line: 931, type: !134)
!2804 = !DILocation(line: 0, scope: !2801)
!2805 = !DILocation(line: 0, scope: !2695, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 933, column: 10, scope: !2801)
!2807 = !DILocation(line: 921, column: 10, scope: !2695, inlinedAt: !2806)
!2808 = !DILocation(line: 933, column: 3, scope: !2801)
!2809 = distinct !DISubprogram(name: "quotearg_mem", scope: !544, file: !544, line: 937, type: !2810, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!330, !134, !186}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "arg", arg: 1, scope: !2809, file: !544, line: 937, type: !134)
!2814 = !DILocalVariable(name: "argsize", arg: 2, scope: !2809, file: !544, line: 937, type: !186)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 0, scope: !2791, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 939, column: 10, scope: !2809)
!2818 = !DILocation(line: 927, column: 10, scope: !2791, inlinedAt: !2817)
!2819 = !DILocation(line: 939, column: 3, scope: !2809)
!2820 = distinct !DISubprogram(name: "quotearg_n_style", scope: !544, file: !544, line: 943, type: !2821, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!330, !184, !567, !134}
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DILocalVariable(name: "n", arg: 1, scope: !2820, file: !544, line: 943, type: !184)
!2825 = !DILocalVariable(name: "s", arg: 2, scope: !2820, file: !544, line: 943, type: !567)
!2826 = !DILocalVariable(name: "arg", arg: 3, scope: !2820, file: !544, line: 943, type: !134)
!2827 = !DILocalVariable(name: "o", scope: !2820, file: !544, line: 945, type: !1927)
!2828 = distinct !DIAssignID()
!2829 = !DILocation(line: 0, scope: !2820)
!2830 = !DILocation(line: 945, column: 3, scope: !2820)
!2831 = !{!2832}
!2832 = distinct !{!2832, !2833, !"quoting_options_from_style: argument 0"}
!2833 = distinct !{!2833, !"quoting_options_from_style"}
!2834 = !DILocation(line: 945, column: 36, scope: !2820)
!2835 = !DILocalVariable(name: "style", arg: 1, scope: !2836, file: !544, line: 183, type: !567)
!2836 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !544, file: !544, line: 183, type: !2837, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!582, !567}
!2839 = !{!2835, !2840}
!2840 = !DILocalVariable(name: "o", scope: !2836, file: !544, line: 185, type: !582)
!2841 = !DILocation(line: 0, scope: !2836, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 945, column: 36, scope: !2820)
!2843 = !DILocation(line: 185, column: 26, scope: !2836, inlinedAt: !2842)
!2844 = distinct !DIAssignID()
!2845 = !DILocation(line: 186, column: 13, scope: !2846, inlinedAt: !2842)
!2846 = distinct !DILexicalBlock(scope: !2836, file: !544, line: 186, column: 7)
!2847 = !DILocation(line: 186, column: 7, scope: !2836, inlinedAt: !2842)
!2848 = !DILocation(line: 187, column: 5, scope: !2846, inlinedAt: !2842)
!2849 = !DILocation(line: 188, column: 11, scope: !2836, inlinedAt: !2842)
!2850 = distinct !DIAssignID()
!2851 = !DILocation(line: 946, column: 10, scope: !2820)
!2852 = !DILocation(line: 947, column: 1, scope: !2820)
!2853 = !DILocation(line: 946, column: 3, scope: !2820)
!2854 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !544, file: !544, line: 950, type: !2855, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!330, !184, !567, !134, !186}
!2857 = !{!2858, !2859, !2860, !2861, !2862}
!2858 = !DILocalVariable(name: "n", arg: 1, scope: !2854, file: !544, line: 950, type: !184)
!2859 = !DILocalVariable(name: "s", arg: 2, scope: !2854, file: !544, line: 950, type: !567)
!2860 = !DILocalVariable(name: "arg", arg: 3, scope: !2854, file: !544, line: 951, type: !134)
!2861 = !DILocalVariable(name: "argsize", arg: 4, scope: !2854, file: !544, line: 951, type: !186)
!2862 = !DILocalVariable(name: "o", scope: !2854, file: !544, line: 953, type: !1927)
!2863 = distinct !DIAssignID()
!2864 = !DILocation(line: 0, scope: !2854)
!2865 = !DILocation(line: 953, column: 3, scope: !2854)
!2866 = !{!2867}
!2867 = distinct !{!2867, !2868, !"quoting_options_from_style: argument 0"}
!2868 = distinct !{!2868, !"quoting_options_from_style"}
!2869 = !DILocation(line: 953, column: 36, scope: !2854)
!2870 = !DILocation(line: 0, scope: !2836, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 953, column: 36, scope: !2854)
!2872 = !DILocation(line: 185, column: 26, scope: !2836, inlinedAt: !2871)
!2873 = distinct !DIAssignID()
!2874 = !DILocation(line: 186, column: 13, scope: !2846, inlinedAt: !2871)
!2875 = !DILocation(line: 186, column: 7, scope: !2836, inlinedAt: !2871)
!2876 = !DILocation(line: 187, column: 5, scope: !2846, inlinedAt: !2871)
!2877 = !DILocation(line: 188, column: 11, scope: !2836, inlinedAt: !2871)
!2878 = distinct !DIAssignID()
!2879 = !DILocation(line: 954, column: 10, scope: !2854)
!2880 = !DILocation(line: 955, column: 1, scope: !2854)
!2881 = !DILocation(line: 954, column: 3, scope: !2854)
!2882 = distinct !DISubprogram(name: "quotearg_style", scope: !544, file: !544, line: 958, type: !2883, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!330, !567, !134}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "s", arg: 1, scope: !2882, file: !544, line: 958, type: !567)
!2887 = !DILocalVariable(name: "arg", arg: 2, scope: !2882, file: !544, line: 958, type: !134)
!2888 = distinct !DIAssignID()
!2889 = !DILocation(line: 0, scope: !2882)
!2890 = !DILocation(line: 0, scope: !2820, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 960, column: 10, scope: !2882)
!2892 = !DILocation(line: 945, column: 3, scope: !2820, inlinedAt: !2891)
!2893 = !{!2894}
!2894 = distinct !{!2894, !2895, !"quoting_options_from_style: argument 0"}
!2895 = distinct !{!2895, !"quoting_options_from_style"}
!2896 = !DILocation(line: 945, column: 36, scope: !2820, inlinedAt: !2891)
!2897 = !DILocation(line: 0, scope: !2836, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 945, column: 36, scope: !2820, inlinedAt: !2891)
!2899 = !DILocation(line: 185, column: 26, scope: !2836, inlinedAt: !2898)
!2900 = distinct !DIAssignID()
!2901 = !DILocation(line: 186, column: 13, scope: !2846, inlinedAt: !2898)
!2902 = !DILocation(line: 186, column: 7, scope: !2836, inlinedAt: !2898)
!2903 = !DILocation(line: 187, column: 5, scope: !2846, inlinedAt: !2898)
!2904 = !DILocation(line: 188, column: 11, scope: !2836, inlinedAt: !2898)
!2905 = distinct !DIAssignID()
!2906 = !DILocation(line: 946, column: 10, scope: !2820, inlinedAt: !2891)
!2907 = !DILocation(line: 947, column: 1, scope: !2820, inlinedAt: !2891)
!2908 = !DILocation(line: 960, column: 3, scope: !2882)
!2909 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !544, file: !544, line: 964, type: !2910, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!330, !567, !134, !186}
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "s", arg: 1, scope: !2909, file: !544, line: 964, type: !567)
!2914 = !DILocalVariable(name: "arg", arg: 2, scope: !2909, file: !544, line: 964, type: !134)
!2915 = !DILocalVariable(name: "argsize", arg: 3, scope: !2909, file: !544, line: 964, type: !186)
!2916 = distinct !DIAssignID()
!2917 = !DILocation(line: 0, scope: !2909)
!2918 = !DILocation(line: 0, scope: !2854, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 966, column: 10, scope: !2909)
!2920 = !DILocation(line: 953, column: 3, scope: !2854, inlinedAt: !2919)
!2921 = !{!2922}
!2922 = distinct !{!2922, !2923, !"quoting_options_from_style: argument 0"}
!2923 = distinct !{!2923, !"quoting_options_from_style"}
!2924 = !DILocation(line: 953, column: 36, scope: !2854, inlinedAt: !2919)
!2925 = !DILocation(line: 0, scope: !2836, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 953, column: 36, scope: !2854, inlinedAt: !2919)
!2927 = !DILocation(line: 185, column: 26, scope: !2836, inlinedAt: !2926)
!2928 = distinct !DIAssignID()
!2929 = !DILocation(line: 186, column: 13, scope: !2846, inlinedAt: !2926)
!2930 = !DILocation(line: 186, column: 7, scope: !2836, inlinedAt: !2926)
!2931 = !DILocation(line: 187, column: 5, scope: !2846, inlinedAt: !2926)
!2932 = !DILocation(line: 188, column: 11, scope: !2836, inlinedAt: !2926)
!2933 = distinct !DIAssignID()
!2934 = !DILocation(line: 954, column: 10, scope: !2854, inlinedAt: !2919)
!2935 = !DILocation(line: 955, column: 1, scope: !2854, inlinedAt: !2919)
!2936 = !DILocation(line: 966, column: 3, scope: !2909)
!2937 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !544, file: !544, line: 970, type: !2938, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!330, !134, !186, !4}
!2940 = !{!2941, !2942, !2943, !2944}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2937, file: !544, line: 970, type: !134)
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2937, file: !544, line: 970, type: !186)
!2943 = !DILocalVariable(name: "ch", arg: 3, scope: !2937, file: !544, line: 970, type: !4)
!2944 = !DILocalVariable(name: "options", scope: !2937, file: !544, line: 972, type: !582)
!2945 = distinct !DIAssignID()
!2946 = !DILocation(line: 0, scope: !2937)
!2947 = !DILocation(line: 972, column: 3, scope: !2937)
!2948 = !DILocation(line: 973, column: 13, scope: !2937)
!2949 = !{i64 0, i64 4, !919, i64 4, i64 4, !919, i64 8, i64 32, !928, i64 40, i64 8, !851, i64 48, i64 8, !851}
!2950 = distinct !DIAssignID()
!2951 = !DILocation(line: 0, scope: !1946, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 974, column: 3, scope: !2937)
!2953 = !DILocation(line: 147, column: 41, scope: !1946, inlinedAt: !2952)
!2954 = !DILocation(line: 147, column: 62, scope: !1946, inlinedAt: !2952)
!2955 = !DILocation(line: 147, column: 57, scope: !1946, inlinedAt: !2952)
!2956 = !DILocation(line: 148, column: 15, scope: !1946, inlinedAt: !2952)
!2957 = !DILocation(line: 149, column: 21, scope: !1946, inlinedAt: !2952)
!2958 = !DILocation(line: 149, column: 24, scope: !1946, inlinedAt: !2952)
!2959 = !DILocation(line: 150, column: 19, scope: !1946, inlinedAt: !2952)
!2960 = !DILocation(line: 150, column: 24, scope: !1946, inlinedAt: !2952)
!2961 = !DILocation(line: 150, column: 6, scope: !1946, inlinedAt: !2952)
!2962 = !DILocation(line: 975, column: 10, scope: !2937)
!2963 = !DILocation(line: 976, column: 1, scope: !2937)
!2964 = !DILocation(line: 975, column: 3, scope: !2937)
!2965 = distinct !DISubprogram(name: "quotearg_char", scope: !544, file: !544, line: 979, type: !2966, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!330, !134, !4}
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "arg", arg: 1, scope: !2965, file: !544, line: 979, type: !134)
!2970 = !DILocalVariable(name: "ch", arg: 2, scope: !2965, file: !544, line: 979, type: !4)
!2971 = distinct !DIAssignID()
!2972 = !DILocation(line: 0, scope: !2965)
!2973 = !DILocation(line: 0, scope: !2937, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 981, column: 10, scope: !2965)
!2975 = !DILocation(line: 972, column: 3, scope: !2937, inlinedAt: !2974)
!2976 = !DILocation(line: 973, column: 13, scope: !2937, inlinedAt: !2974)
!2977 = distinct !DIAssignID()
!2978 = !DILocation(line: 0, scope: !1946, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 974, column: 3, scope: !2937, inlinedAt: !2974)
!2980 = !DILocation(line: 147, column: 41, scope: !1946, inlinedAt: !2979)
!2981 = !DILocation(line: 147, column: 62, scope: !1946, inlinedAt: !2979)
!2982 = !DILocation(line: 147, column: 57, scope: !1946, inlinedAt: !2979)
!2983 = !DILocation(line: 148, column: 15, scope: !1946, inlinedAt: !2979)
!2984 = !DILocation(line: 149, column: 21, scope: !1946, inlinedAt: !2979)
!2985 = !DILocation(line: 149, column: 24, scope: !1946, inlinedAt: !2979)
!2986 = !DILocation(line: 150, column: 19, scope: !1946, inlinedAt: !2979)
!2987 = !DILocation(line: 150, column: 24, scope: !1946, inlinedAt: !2979)
!2988 = !DILocation(line: 150, column: 6, scope: !1946, inlinedAt: !2979)
!2989 = !DILocation(line: 975, column: 10, scope: !2937, inlinedAt: !2974)
!2990 = !DILocation(line: 976, column: 1, scope: !2937, inlinedAt: !2974)
!2991 = !DILocation(line: 981, column: 3, scope: !2965)
!2992 = distinct !DISubprogram(name: "quotearg_colon", scope: !544, file: !544, line: 985, type: !1042, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2993)
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "arg", arg: 1, scope: !2992, file: !544, line: 985, type: !134)
!2995 = distinct !DIAssignID()
!2996 = !DILocation(line: 0, scope: !2992)
!2997 = !DILocation(line: 0, scope: !2965, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 987, column: 10, scope: !2992)
!2999 = !DILocation(line: 0, scope: !2937, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 981, column: 10, scope: !2965, inlinedAt: !2998)
!3001 = !DILocation(line: 972, column: 3, scope: !2937, inlinedAt: !3000)
!3002 = !DILocation(line: 973, column: 13, scope: !2937, inlinedAt: !3000)
!3003 = distinct !DIAssignID()
!3004 = !DILocation(line: 0, scope: !1946, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 974, column: 3, scope: !2937, inlinedAt: !3000)
!3006 = !DILocation(line: 147, column: 57, scope: !1946, inlinedAt: !3005)
!3007 = !DILocation(line: 149, column: 21, scope: !1946, inlinedAt: !3005)
!3008 = !DILocation(line: 150, column: 6, scope: !1946, inlinedAt: !3005)
!3009 = !DILocation(line: 975, column: 10, scope: !2937, inlinedAt: !3000)
!3010 = !DILocation(line: 976, column: 1, scope: !2937, inlinedAt: !3000)
!3011 = !DILocation(line: 987, column: 3, scope: !2992)
!3012 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !544, file: !544, line: 991, type: !2810, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3013)
!3013 = !{!3014, !3015}
!3014 = !DILocalVariable(name: "arg", arg: 1, scope: !3012, file: !544, line: 991, type: !134)
!3015 = !DILocalVariable(name: "argsize", arg: 2, scope: !3012, file: !544, line: 991, type: !186)
!3016 = distinct !DIAssignID()
!3017 = !DILocation(line: 0, scope: !3012)
!3018 = !DILocation(line: 0, scope: !2937, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 993, column: 10, scope: !3012)
!3020 = !DILocation(line: 972, column: 3, scope: !2937, inlinedAt: !3019)
!3021 = !DILocation(line: 973, column: 13, scope: !2937, inlinedAt: !3019)
!3022 = distinct !DIAssignID()
!3023 = !DILocation(line: 0, scope: !1946, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 974, column: 3, scope: !2937, inlinedAt: !3019)
!3025 = !DILocation(line: 147, column: 57, scope: !1946, inlinedAt: !3024)
!3026 = !DILocation(line: 149, column: 21, scope: !1946, inlinedAt: !3024)
!3027 = !DILocation(line: 150, column: 6, scope: !1946, inlinedAt: !3024)
!3028 = !DILocation(line: 975, column: 10, scope: !2937, inlinedAt: !3019)
!3029 = !DILocation(line: 976, column: 1, scope: !2937, inlinedAt: !3019)
!3030 = !DILocation(line: 993, column: 3, scope: !3012)
!3031 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !544, file: !544, line: 997, type: !2821, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3032)
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DILocalVariable(name: "n", arg: 1, scope: !3031, file: !544, line: 997, type: !184)
!3034 = !DILocalVariable(name: "s", arg: 2, scope: !3031, file: !544, line: 997, type: !567)
!3035 = !DILocalVariable(name: "arg", arg: 3, scope: !3031, file: !544, line: 997, type: !134)
!3036 = !DILocalVariable(name: "options", scope: !3031, file: !544, line: 999, type: !582)
!3037 = distinct !DIAssignID()
!3038 = !DILocation(line: 0, scope: !3031)
!3039 = !DILocation(line: 185, column: 26, scope: !2836, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1000, column: 13, scope: !3031)
!3041 = !DILocation(line: 999, column: 3, scope: !3031)
!3042 = !DILocation(line: 0, scope: !2836, inlinedAt: !3040)
!3043 = !DILocation(line: 186, column: 13, scope: !2846, inlinedAt: !3040)
!3044 = !DILocation(line: 186, column: 7, scope: !2836, inlinedAt: !3040)
!3045 = !DILocation(line: 187, column: 5, scope: !2846, inlinedAt: !3040)
!3046 = !{!3047}
!3047 = distinct !{!3047, !3048, !"quoting_options_from_style: argument 0"}
!3048 = distinct !{!3048, !"quoting_options_from_style"}
!3049 = !DILocation(line: 1000, column: 13, scope: !3031)
!3050 = distinct !DIAssignID()
!3051 = distinct !DIAssignID()
!3052 = !DILocation(line: 0, scope: !1946, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1001, column: 3, scope: !3031)
!3054 = !DILocation(line: 147, column: 57, scope: !1946, inlinedAt: !3053)
!3055 = !DILocation(line: 149, column: 21, scope: !1946, inlinedAt: !3053)
!3056 = !DILocation(line: 150, column: 6, scope: !1946, inlinedAt: !3053)
!3057 = distinct !DIAssignID()
!3058 = !DILocation(line: 1002, column: 10, scope: !3031)
!3059 = !DILocation(line: 1003, column: 1, scope: !3031)
!3060 = !DILocation(line: 1002, column: 3, scope: !3031)
!3061 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !544, file: !544, line: 1006, type: !3062, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!330, !184, !134, !134, !134}
!3064 = !{!3065, !3066, !3067, !3068}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3061, file: !544, line: 1006, type: !184)
!3066 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3061, file: !544, line: 1006, type: !134)
!3067 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3061, file: !544, line: 1007, type: !134)
!3068 = !DILocalVariable(name: "arg", arg: 4, scope: !3061, file: !544, line: 1007, type: !134)
!3069 = distinct !DIAssignID()
!3070 = !DILocation(line: 0, scope: !3061)
!3071 = !DILocalVariable(name: "o", scope: !3072, file: !544, line: 1018, type: !582)
!3072 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !544, file: !544, line: 1014, type: !3073, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!330, !184, !134, !134, !134, !186}
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3071}
!3076 = !DILocalVariable(name: "n", arg: 1, scope: !3072, file: !544, line: 1014, type: !184)
!3077 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3072, file: !544, line: 1014, type: !134)
!3078 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3072, file: !544, line: 1015, type: !134)
!3079 = !DILocalVariable(name: "arg", arg: 4, scope: !3072, file: !544, line: 1016, type: !134)
!3080 = !DILocalVariable(name: "argsize", arg: 5, scope: !3072, file: !544, line: 1016, type: !186)
!3081 = !DILocation(line: 0, scope: !3072, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1009, column: 10, scope: !3061)
!3083 = !DILocation(line: 1018, column: 3, scope: !3072, inlinedAt: !3082)
!3084 = !DILocation(line: 1018, column: 30, scope: !3072, inlinedAt: !3082)
!3085 = distinct !DIAssignID()
!3086 = distinct !DIAssignID()
!3087 = !DILocation(line: 0, scope: !1986, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 1019, column: 3, scope: !3072, inlinedAt: !3082)
!3089 = !DILocation(line: 174, column: 12, scope: !1986, inlinedAt: !3088)
!3090 = distinct !DIAssignID()
!3091 = !DILocation(line: 175, column: 8, scope: !1999, inlinedAt: !3088)
!3092 = !DILocation(line: 175, column: 19, scope: !1999, inlinedAt: !3088)
!3093 = !DILocation(line: 176, column: 5, scope: !1999, inlinedAt: !3088)
!3094 = !DILocation(line: 177, column: 6, scope: !1986, inlinedAt: !3088)
!3095 = !DILocation(line: 177, column: 17, scope: !1986, inlinedAt: !3088)
!3096 = distinct !DIAssignID()
!3097 = !DILocation(line: 178, column: 6, scope: !1986, inlinedAt: !3088)
!3098 = !DILocation(line: 178, column: 18, scope: !1986, inlinedAt: !3088)
!3099 = distinct !DIAssignID()
!3100 = !DILocation(line: 1020, column: 10, scope: !3072, inlinedAt: !3082)
!3101 = !DILocation(line: 1021, column: 1, scope: !3072, inlinedAt: !3082)
!3102 = !DILocation(line: 1009, column: 3, scope: !3061)
!3103 = distinct !DIAssignID()
!3104 = !DILocation(line: 0, scope: !3072)
!3105 = !DILocation(line: 1018, column: 3, scope: !3072)
!3106 = !DILocation(line: 1018, column: 30, scope: !3072)
!3107 = distinct !DIAssignID()
!3108 = distinct !DIAssignID()
!3109 = !DILocation(line: 0, scope: !1986, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 1019, column: 3, scope: !3072)
!3111 = !DILocation(line: 174, column: 12, scope: !1986, inlinedAt: !3110)
!3112 = distinct !DIAssignID()
!3113 = !DILocation(line: 175, column: 8, scope: !1999, inlinedAt: !3110)
!3114 = !DILocation(line: 175, column: 19, scope: !1999, inlinedAt: !3110)
!3115 = !DILocation(line: 176, column: 5, scope: !1999, inlinedAt: !3110)
!3116 = !DILocation(line: 177, column: 6, scope: !1986, inlinedAt: !3110)
!3117 = !DILocation(line: 177, column: 17, scope: !1986, inlinedAt: !3110)
!3118 = distinct !DIAssignID()
!3119 = !DILocation(line: 178, column: 6, scope: !1986, inlinedAt: !3110)
!3120 = !DILocation(line: 178, column: 18, scope: !1986, inlinedAt: !3110)
!3121 = distinct !DIAssignID()
!3122 = !DILocation(line: 1020, column: 10, scope: !3072)
!3123 = !DILocation(line: 1021, column: 1, scope: !3072)
!3124 = !DILocation(line: 1020, column: 3, scope: !3072)
!3125 = distinct !DISubprogram(name: "quotearg_custom", scope: !544, file: !544, line: 1024, type: !3126, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!330, !134, !134, !134}
!3128 = !{!3129, !3130, !3131}
!3129 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3125, file: !544, line: 1024, type: !134)
!3130 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3125, file: !544, line: 1024, type: !134)
!3131 = !DILocalVariable(name: "arg", arg: 3, scope: !3125, file: !544, line: 1025, type: !134)
!3132 = distinct !DIAssignID()
!3133 = !DILocation(line: 0, scope: !3125)
!3134 = !DILocation(line: 0, scope: !3061, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1027, column: 10, scope: !3125)
!3136 = !DILocation(line: 0, scope: !3072, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 1009, column: 10, scope: !3061, inlinedAt: !3135)
!3138 = !DILocation(line: 1018, column: 3, scope: !3072, inlinedAt: !3137)
!3139 = !DILocation(line: 1018, column: 30, scope: !3072, inlinedAt: !3137)
!3140 = distinct !DIAssignID()
!3141 = distinct !DIAssignID()
!3142 = !DILocation(line: 0, scope: !1986, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1019, column: 3, scope: !3072, inlinedAt: !3137)
!3144 = !DILocation(line: 174, column: 12, scope: !1986, inlinedAt: !3143)
!3145 = distinct !DIAssignID()
!3146 = !DILocation(line: 175, column: 8, scope: !1999, inlinedAt: !3143)
!3147 = !DILocation(line: 175, column: 19, scope: !1999, inlinedAt: !3143)
!3148 = !DILocation(line: 176, column: 5, scope: !1999, inlinedAt: !3143)
!3149 = !DILocation(line: 177, column: 6, scope: !1986, inlinedAt: !3143)
!3150 = !DILocation(line: 177, column: 17, scope: !1986, inlinedAt: !3143)
!3151 = distinct !DIAssignID()
!3152 = !DILocation(line: 178, column: 6, scope: !1986, inlinedAt: !3143)
!3153 = !DILocation(line: 178, column: 18, scope: !1986, inlinedAt: !3143)
!3154 = distinct !DIAssignID()
!3155 = !DILocation(line: 1020, column: 10, scope: !3072, inlinedAt: !3137)
!3156 = !DILocation(line: 1021, column: 1, scope: !3072, inlinedAt: !3137)
!3157 = !DILocation(line: 1027, column: 3, scope: !3125)
!3158 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !544, file: !544, line: 1031, type: !3159, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3161)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!330, !134, !134, !134, !186}
!3161 = !{!3162, !3163, !3164, !3165}
!3162 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3158, file: !544, line: 1031, type: !134)
!3163 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3158, file: !544, line: 1031, type: !134)
!3164 = !DILocalVariable(name: "arg", arg: 3, scope: !3158, file: !544, line: 1032, type: !134)
!3165 = !DILocalVariable(name: "argsize", arg: 4, scope: !3158, file: !544, line: 1032, type: !186)
!3166 = distinct !DIAssignID()
!3167 = !DILocation(line: 0, scope: !3158)
!3168 = !DILocation(line: 0, scope: !3072, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 1034, column: 10, scope: !3158)
!3170 = !DILocation(line: 1018, column: 3, scope: !3072, inlinedAt: !3169)
!3171 = !DILocation(line: 1018, column: 30, scope: !3072, inlinedAt: !3169)
!3172 = distinct !DIAssignID()
!3173 = distinct !DIAssignID()
!3174 = !DILocation(line: 0, scope: !1986, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1019, column: 3, scope: !3072, inlinedAt: !3169)
!3176 = !DILocation(line: 174, column: 12, scope: !1986, inlinedAt: !3175)
!3177 = distinct !DIAssignID()
!3178 = !DILocation(line: 175, column: 8, scope: !1999, inlinedAt: !3175)
!3179 = !DILocation(line: 175, column: 19, scope: !1999, inlinedAt: !3175)
!3180 = !DILocation(line: 176, column: 5, scope: !1999, inlinedAt: !3175)
!3181 = !DILocation(line: 177, column: 6, scope: !1986, inlinedAt: !3175)
!3182 = !DILocation(line: 177, column: 17, scope: !1986, inlinedAt: !3175)
!3183 = distinct !DIAssignID()
!3184 = !DILocation(line: 178, column: 6, scope: !1986, inlinedAt: !3175)
!3185 = !DILocation(line: 178, column: 18, scope: !1986, inlinedAt: !3175)
!3186 = distinct !DIAssignID()
!3187 = !DILocation(line: 1020, column: 10, scope: !3072, inlinedAt: !3169)
!3188 = !DILocation(line: 1021, column: 1, scope: !3072, inlinedAt: !3169)
!3189 = !DILocation(line: 1034, column: 3, scope: !3158)
!3190 = distinct !DISubprogram(name: "quote_n_mem", scope: !544, file: !544, line: 1049, type: !3191, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!134, !184, !134, !186}
!3193 = !{!3194, !3195, !3196}
!3194 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !544, line: 1049, type: !184)
!3195 = !DILocalVariable(name: "arg", arg: 2, scope: !3190, file: !544, line: 1049, type: !134)
!3196 = !DILocalVariable(name: "argsize", arg: 3, scope: !3190, file: !544, line: 1049, type: !186)
!3197 = !DILocation(line: 0, scope: !3190)
!3198 = !DILocation(line: 1051, column: 10, scope: !3190)
!3199 = !DILocation(line: 1051, column: 3, scope: !3190)
!3200 = distinct !DISubprogram(name: "quote_mem", scope: !544, file: !544, line: 1055, type: !3201, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!134, !134, !186}
!3203 = !{!3204, !3205}
!3204 = !DILocalVariable(name: "arg", arg: 1, scope: !3200, file: !544, line: 1055, type: !134)
!3205 = !DILocalVariable(name: "argsize", arg: 2, scope: !3200, file: !544, line: 1055, type: !186)
!3206 = !DILocation(line: 0, scope: !3200)
!3207 = !DILocation(line: 0, scope: !3190, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 1057, column: 10, scope: !3200)
!3209 = !DILocation(line: 1051, column: 10, scope: !3190, inlinedAt: !3208)
!3210 = !DILocation(line: 1057, column: 3, scope: !3200)
!3211 = distinct !DISubprogram(name: "quote_n", scope: !544, file: !544, line: 1061, type: !3212, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!134, !184, !134}
!3214 = !{!3215, !3216}
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3211, file: !544, line: 1061, type: !184)
!3216 = !DILocalVariable(name: "arg", arg: 2, scope: !3211, file: !544, line: 1061, type: !134)
!3217 = !DILocation(line: 0, scope: !3211)
!3218 = !DILocation(line: 0, scope: !3190, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1063, column: 10, scope: !3211)
!3220 = !DILocation(line: 1051, column: 10, scope: !3190, inlinedAt: !3219)
!3221 = !DILocation(line: 1063, column: 3, scope: !3211)
!3222 = distinct !DISubprogram(name: "quote", scope: !544, file: !544, line: 1067, type: !3223, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!134, !134}
!3225 = !{!3226}
!3226 = !DILocalVariable(name: "arg", arg: 1, scope: !3222, file: !544, line: 1067, type: !134)
!3227 = !DILocation(line: 0, scope: !3222)
!3228 = !DILocation(line: 0, scope: !3211, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 1069, column: 10, scope: !3222)
!3230 = !DILocation(line: 0, scope: !3190, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 1063, column: 10, scope: !3211, inlinedAt: !3229)
!3232 = !DILocation(line: 1051, column: 10, scope: !3190, inlinedAt: !3231)
!3233 = !DILocation(line: 1069, column: 3, scope: !3222)
!3234 = distinct !DISubprogram(name: "version_etc_arn", scope: !645, file: !645, line: 61, type: !3235, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3272)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3237, !134, !134, !134, !3271, !186}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3239, file: !326, line: 51, baseType: !184, size: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3239, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3239, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3239, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3239, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3239, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3239, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3239, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3239, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3239, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3239, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3239, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3239, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3239, file: !326, line: 70, baseType: !3255, size: 64, offset: 832)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3239, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3239, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3239, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3239, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3239, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3239, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3239, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3239, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3239, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3239, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3239, file: !326, line: 93, baseType: !3255, size: 64, offset: 1344)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3239, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3239, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3239, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3239, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278}
!3273 = !DILocalVariable(name: "stream", arg: 1, scope: !3234, file: !645, line: 61, type: !3237)
!3274 = !DILocalVariable(name: "command_name", arg: 2, scope: !3234, file: !645, line: 62, type: !134)
!3275 = !DILocalVariable(name: "package", arg: 3, scope: !3234, file: !645, line: 62, type: !134)
!3276 = !DILocalVariable(name: "version", arg: 4, scope: !3234, file: !645, line: 63, type: !134)
!3277 = !DILocalVariable(name: "authors", arg: 5, scope: !3234, file: !645, line: 64, type: !3271)
!3278 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3234, file: !645, line: 64, type: !186)
!3279 = !DILocation(line: 0, scope: !3234)
!3280 = !DILocation(line: 66, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3234, file: !645, line: 66, column: 7)
!3282 = !DILocation(line: 66, column: 7, scope: !3234)
!3283 = !DILocation(line: 67, column: 5, scope: !3281)
!3284 = !DILocation(line: 69, column: 5, scope: !3281)
!3285 = !DILocation(line: 83, column: 3, scope: !3234)
!3286 = !DILocation(line: 85, column: 3, scope: !3234)
!3287 = !DILocation(line: 88, column: 3, scope: !3234)
!3288 = !DILocation(line: 95, column: 3, scope: !3234)
!3289 = !DILocation(line: 97, column: 3, scope: !3234)
!3290 = !DILocation(line: 105, column: 7, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3234, file: !645, line: 98, column: 5)
!3292 = !DILocation(line: 106, column: 7, scope: !3291)
!3293 = !DILocation(line: 109, column: 7, scope: !3291)
!3294 = !DILocation(line: 110, column: 7, scope: !3291)
!3295 = !DILocation(line: 113, column: 7, scope: !3291)
!3296 = !DILocation(line: 115, column: 7, scope: !3291)
!3297 = !DILocation(line: 120, column: 7, scope: !3291)
!3298 = !DILocation(line: 122, column: 7, scope: !3291)
!3299 = !DILocation(line: 127, column: 7, scope: !3291)
!3300 = !DILocation(line: 129, column: 7, scope: !3291)
!3301 = !DILocation(line: 134, column: 7, scope: !3291)
!3302 = !DILocation(line: 137, column: 7, scope: !3291)
!3303 = !DILocation(line: 142, column: 7, scope: !3291)
!3304 = !DILocation(line: 145, column: 7, scope: !3291)
!3305 = !DILocation(line: 150, column: 7, scope: !3291)
!3306 = !DILocation(line: 154, column: 7, scope: !3291)
!3307 = !DILocation(line: 159, column: 7, scope: !3291)
!3308 = !DILocation(line: 163, column: 7, scope: !3291)
!3309 = !DILocation(line: 170, column: 7, scope: !3291)
!3310 = !DILocation(line: 174, column: 7, scope: !3291)
!3311 = !DILocation(line: 176, column: 1, scope: !3234)
!3312 = distinct !DISubprogram(name: "version_etc_ar", scope: !645, file: !645, line: 183, type: !3313, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{null, !3237, !134, !134, !134, !3271}
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321}
!3316 = !DILocalVariable(name: "stream", arg: 1, scope: !3312, file: !645, line: 183, type: !3237)
!3317 = !DILocalVariable(name: "command_name", arg: 2, scope: !3312, file: !645, line: 184, type: !134)
!3318 = !DILocalVariable(name: "package", arg: 3, scope: !3312, file: !645, line: 184, type: !134)
!3319 = !DILocalVariable(name: "version", arg: 4, scope: !3312, file: !645, line: 185, type: !134)
!3320 = !DILocalVariable(name: "authors", arg: 5, scope: !3312, file: !645, line: 185, type: !3271)
!3321 = !DILocalVariable(name: "n_authors", scope: !3312, file: !645, line: 187, type: !186)
!3322 = !DILocation(line: 0, scope: !3312)
!3323 = !DILocation(line: 189, column: 8, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3312, file: !645, line: 189, column: 3)
!3325 = !DILocation(line: 189, scope: !3324)
!3326 = !DILocation(line: 189, column: 23, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !645, line: 189, column: 3)
!3328 = !DILocation(line: 189, column: 3, scope: !3324)
!3329 = !DILocation(line: 189, column: 52, scope: !3327)
!3330 = distinct !{!3330, !3328, !3331, !966}
!3331 = !DILocation(line: 190, column: 5, scope: !3324)
!3332 = !DILocation(line: 191, column: 3, scope: !3312)
!3333 = !DILocation(line: 192, column: 1, scope: !3312)
!3334 = distinct !DISubprogram(name: "version_etc_va", scope: !645, file: !645, line: 199, type: !3335, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3347)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{null, !3237, !134, !134, !134, !3337}
!3337 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !417, line: 52, baseType: !3338)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !419, line: 12, baseType: !3339)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !645, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3340, file: !645, line: 192, baseType: !178, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3340, file: !645, line: 192, baseType: !178, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3340, file: !645, line: 192, baseType: !178, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3340, file: !645, line: 192, baseType: !184, size: 32, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3340, file: !645, line: 192, baseType: !184, size: 32, offset: 224)
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354}
!3348 = !DILocalVariable(name: "stream", arg: 1, scope: !3334, file: !645, line: 199, type: !3237)
!3349 = !DILocalVariable(name: "command_name", arg: 2, scope: !3334, file: !645, line: 200, type: !134)
!3350 = !DILocalVariable(name: "package", arg: 3, scope: !3334, file: !645, line: 200, type: !134)
!3351 = !DILocalVariable(name: "version", arg: 4, scope: !3334, file: !645, line: 201, type: !134)
!3352 = !DILocalVariable(name: "authors", arg: 5, scope: !3334, file: !645, line: 201, type: !3337)
!3353 = !DILocalVariable(name: "n_authors", scope: !3334, file: !645, line: 203, type: !186)
!3354 = !DILocalVariable(name: "authtab", scope: !3334, file: !645, line: 204, type: !3355)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !50)
!3356 = distinct !DIAssignID()
!3357 = !DILocation(line: 0, scope: !3334)
!3358 = !DILocation(line: 204, column: 3, scope: !3334)
!3359 = !DILocation(line: 208, column: 35, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !645, line: 206, column: 3)
!3361 = distinct !DILexicalBlock(scope: !3334, file: !645, line: 206, column: 3)
!3362 = !DILocation(line: 208, column: 33, scope: !3360)
!3363 = !DILocation(line: 208, column: 67, scope: !3360)
!3364 = !DILocation(line: 206, column: 3, scope: !3361)
!3365 = !DILocation(line: 208, column: 14, scope: !3360)
!3366 = !DILocation(line: 0, scope: !3361)
!3367 = !DILocation(line: 211, column: 3, scope: !3334)
!3368 = !DILocation(line: 213, column: 1, scope: !3334)
!3369 = distinct !DISubprogram(name: "version_etc", scope: !645, file: !645, line: 230, type: !3370, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3237, !134, !134, !134, null}
!3372 = !{!3373, !3374, !3375, !3376, !3377}
!3373 = !DILocalVariable(name: "stream", arg: 1, scope: !3369, file: !645, line: 230, type: !3237)
!3374 = !DILocalVariable(name: "command_name", arg: 2, scope: !3369, file: !645, line: 231, type: !134)
!3375 = !DILocalVariable(name: "package", arg: 3, scope: !3369, file: !645, line: 231, type: !134)
!3376 = !DILocalVariable(name: "version", arg: 4, scope: !3369, file: !645, line: 232, type: !134)
!3377 = !DILocalVariable(name: "authors", scope: !3369, file: !645, line: 234, type: !3337)
!3378 = distinct !DIAssignID()
!3379 = !DILocation(line: 0, scope: !3369)
!3380 = !DILocation(line: 234, column: 3, scope: !3369)
!3381 = !DILocation(line: 235, column: 3, scope: !3369)
!3382 = !DILocation(line: 236, column: 3, scope: !3369)
!3383 = !DILocation(line: 237, column: 3, scope: !3369)
!3384 = !DILocation(line: 238, column: 1, scope: !3369)
!3385 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !645, file: !645, line: 241, type: !457, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771)
!3386 = !DILocation(line: 243, column: 3, scope: !3385)
!3387 = !DILocation(line: 248, column: 3, scope: !3385)
!3388 = !DILocation(line: 254, column: 3, scope: !3385)
!3389 = !DILocation(line: 259, column: 3, scope: !3385)
!3390 = !DILocation(line: 261, column: 1, scope: !3385)
!3391 = distinct !DISubprogram(name: "xnrealloc", scope: !3392, file: !3392, line: 147, type: !3393, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3395)
!3392 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!178, !178, !186, !186}
!3395 = !{!3396, !3397, !3398}
!3396 = !DILocalVariable(name: "p", arg: 1, scope: !3391, file: !3392, line: 147, type: !178)
!3397 = !DILocalVariable(name: "n", arg: 2, scope: !3391, file: !3392, line: 147, type: !186)
!3398 = !DILocalVariable(name: "s", arg: 3, scope: !3391, file: !3392, line: 147, type: !186)
!3399 = !DILocation(line: 0, scope: !3391)
!3400 = !DILocalVariable(name: "p", arg: 1, scope: !3401, file: !778, line: 83, type: !178)
!3401 = distinct !DISubprogram(name: "xreallocarray", scope: !778, file: !778, line: 83, type: !3393, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3402)
!3402 = !{!3400, !3403, !3404}
!3403 = !DILocalVariable(name: "n", arg: 2, scope: !3401, file: !778, line: 83, type: !186)
!3404 = !DILocalVariable(name: "s", arg: 3, scope: !3401, file: !778, line: 83, type: !186)
!3405 = !DILocation(line: 0, scope: !3401, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 149, column: 10, scope: !3391)
!3407 = !DILocation(line: 85, column: 25, scope: !3401, inlinedAt: !3406)
!3408 = !DILocalVariable(name: "p", arg: 1, scope: !3409, file: !778, line: 37, type: !178)
!3409 = distinct !DISubprogram(name: "check_nonnull", scope: !778, file: !778, line: 37, type: !3410, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!178, !178}
!3412 = !{!3408}
!3413 = !DILocation(line: 0, scope: !3409, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 85, column: 10, scope: !3401, inlinedAt: !3406)
!3415 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3414)
!3416 = distinct !DILexicalBlock(scope: !3409, file: !778, line: 39, column: 7)
!3417 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3414)
!3418 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3414)
!3419 = !DILocation(line: 149, column: 3, scope: !3391)
!3420 = !DILocation(line: 0, scope: !3401)
!3421 = !DILocation(line: 85, column: 25, scope: !3401)
!3422 = !DILocation(line: 0, scope: !3409, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 85, column: 10, scope: !3401)
!3424 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3423)
!3425 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3423)
!3426 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3423)
!3427 = !DILocation(line: 85, column: 3, scope: !3401)
!3428 = distinct !DISubprogram(name: "xmalloc", scope: !778, file: !778, line: 47, type: !1738, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3429)
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "s", arg: 1, scope: !3428, file: !778, line: 47, type: !186)
!3431 = !DILocation(line: 0, scope: !3428)
!3432 = !DILocation(line: 49, column: 25, scope: !3428)
!3433 = !DILocation(line: 0, scope: !3409, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 49, column: 10, scope: !3428)
!3435 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3434)
!3436 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3434)
!3437 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3434)
!3438 = !DILocation(line: 49, column: 3, scope: !3428)
!3439 = distinct !DISubprogram(name: "ximalloc", scope: !778, file: !778, line: 53, type: !3440, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!178, !797}
!3442 = !{!3443}
!3443 = !DILocalVariable(name: "s", arg: 1, scope: !3439, file: !778, line: 53, type: !797)
!3444 = !DILocation(line: 0, scope: !3439)
!3445 = !DILocalVariable(name: "s", arg: 1, scope: !3446, file: !3447, line: 55, type: !797)
!3446 = distinct !DISubprogram(name: "imalloc", scope: !3447, file: !3447, line: 55, type: !3440, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3448)
!3447 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3448 = !{!3445}
!3449 = !DILocation(line: 0, scope: !3446, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 55, column: 25, scope: !3439)
!3451 = !DILocation(line: 57, column: 26, scope: !3446, inlinedAt: !3450)
!3452 = !DILocation(line: 0, scope: !3409, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 55, column: 10, scope: !3439)
!3454 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3453)
!3455 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3453)
!3456 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3453)
!3457 = !DILocation(line: 55, column: 3, scope: !3439)
!3458 = distinct !DISubprogram(name: "xcharalloc", scope: !778, file: !778, line: 59, type: !3459, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3461)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!330, !186}
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "n", arg: 1, scope: !3458, file: !778, line: 59, type: !186)
!3463 = !DILocation(line: 0, scope: !3458)
!3464 = !DILocation(line: 0, scope: !3428, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 61, column: 10, scope: !3458)
!3466 = !DILocation(line: 49, column: 25, scope: !3428, inlinedAt: !3465)
!3467 = !DILocation(line: 0, scope: !3409, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 49, column: 10, scope: !3428, inlinedAt: !3465)
!3469 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3468)
!3470 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3468)
!3471 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3468)
!3472 = !DILocation(line: 61, column: 3, scope: !3458)
!3473 = distinct !DISubprogram(name: "xrealloc", scope: !778, file: !778, line: 68, type: !3474, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!178, !178, !186}
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "p", arg: 1, scope: !3473, file: !778, line: 68, type: !178)
!3478 = !DILocalVariable(name: "s", arg: 2, scope: !3473, file: !778, line: 68, type: !186)
!3479 = !DILocation(line: 0, scope: !3473)
!3480 = !DILocalVariable(name: "ptr", arg: 1, scope: !3481, file: !3482, line: 2057, type: !178)
!3481 = distinct !DISubprogram(name: "rpl_realloc", scope: !3482, file: !3482, line: 2057, type: !3474, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3483)
!3482 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3483 = !{!3480, !3484}
!3484 = !DILocalVariable(name: "size", arg: 2, scope: !3481, file: !3482, line: 2057, type: !186)
!3485 = !DILocation(line: 0, scope: !3481, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 70, column: 25, scope: !3473)
!3487 = !DILocation(line: 2059, column: 24, scope: !3481, inlinedAt: !3486)
!3488 = !DILocation(line: 2059, column: 10, scope: !3481, inlinedAt: !3486)
!3489 = !DILocation(line: 0, scope: !3409, inlinedAt: !3490)
!3490 = distinct !DILocation(line: 70, column: 10, scope: !3473)
!3491 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3490)
!3492 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3490)
!3493 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3490)
!3494 = !DILocation(line: 70, column: 3, scope: !3473)
!3495 = !DISubprogram(name: "realloc", scope: !1040, file: !1040, line: 551, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3496 = distinct !DISubprogram(name: "xirealloc", scope: !778, file: !778, line: 74, type: !3497, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!178, !178, !797}
!3499 = !{!3500, !3501}
!3500 = !DILocalVariable(name: "p", arg: 1, scope: !3496, file: !778, line: 74, type: !178)
!3501 = !DILocalVariable(name: "s", arg: 2, scope: !3496, file: !778, line: 74, type: !797)
!3502 = !DILocation(line: 0, scope: !3496)
!3503 = !DILocalVariable(name: "p", arg: 1, scope: !3504, file: !3447, line: 66, type: !178)
!3504 = distinct !DISubprogram(name: "irealloc", scope: !3447, file: !3447, line: 66, type: !3497, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3505)
!3505 = !{!3503, !3506}
!3506 = !DILocalVariable(name: "s", arg: 2, scope: !3504, file: !3447, line: 66, type: !797)
!3507 = !DILocation(line: 0, scope: !3504, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 76, column: 25, scope: !3496)
!3509 = !DILocation(line: 0, scope: !3481, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 68, column: 26, scope: !3504, inlinedAt: !3508)
!3511 = !DILocation(line: 2059, column: 24, scope: !3481, inlinedAt: !3510)
!3512 = !DILocation(line: 2059, column: 10, scope: !3481, inlinedAt: !3510)
!3513 = !DILocation(line: 0, scope: !3409, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 76, column: 10, scope: !3496)
!3515 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3514)
!3516 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3514)
!3517 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3514)
!3518 = !DILocation(line: 76, column: 3, scope: !3496)
!3519 = distinct !DISubprogram(name: "xireallocarray", scope: !778, file: !778, line: 89, type: !3520, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!178, !178, !797, !797}
!3522 = !{!3523, !3524, !3525}
!3523 = !DILocalVariable(name: "p", arg: 1, scope: !3519, file: !778, line: 89, type: !178)
!3524 = !DILocalVariable(name: "n", arg: 2, scope: !3519, file: !778, line: 89, type: !797)
!3525 = !DILocalVariable(name: "s", arg: 3, scope: !3519, file: !778, line: 89, type: !797)
!3526 = !DILocation(line: 0, scope: !3519)
!3527 = !DILocalVariable(name: "p", arg: 1, scope: !3528, file: !3447, line: 98, type: !178)
!3528 = distinct !DISubprogram(name: "ireallocarray", scope: !3447, file: !3447, line: 98, type: !3520, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3529)
!3529 = !{!3527, !3530, !3531}
!3530 = !DILocalVariable(name: "n", arg: 2, scope: !3528, file: !3447, line: 98, type: !797)
!3531 = !DILocalVariable(name: "s", arg: 3, scope: !3528, file: !3447, line: 98, type: !797)
!3532 = !DILocation(line: 0, scope: !3528, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 91, column: 25, scope: !3519)
!3534 = !DILocation(line: 101, column: 13, scope: !3528, inlinedAt: !3533)
!3535 = !DILocation(line: 0, scope: !3409, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 91, column: 10, scope: !3519)
!3537 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3536)
!3538 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3536)
!3539 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3536)
!3540 = !DILocation(line: 91, column: 3, scope: !3519)
!3541 = distinct !DISubprogram(name: "xnmalloc", scope: !778, file: !778, line: 98, type: !3542, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!178, !186, !186}
!3544 = !{!3545, !3546}
!3545 = !DILocalVariable(name: "n", arg: 1, scope: !3541, file: !778, line: 98, type: !186)
!3546 = !DILocalVariable(name: "s", arg: 2, scope: !3541, file: !778, line: 98, type: !186)
!3547 = !DILocation(line: 0, scope: !3541)
!3548 = !DILocation(line: 0, scope: !3401, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 100, column: 10, scope: !3541)
!3550 = !DILocation(line: 85, column: 25, scope: !3401, inlinedAt: !3549)
!3551 = !DILocation(line: 0, scope: !3409, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 85, column: 10, scope: !3401, inlinedAt: !3549)
!3553 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3552)
!3554 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3552)
!3555 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3552)
!3556 = !DILocation(line: 100, column: 3, scope: !3541)
!3557 = distinct !DISubprogram(name: "xinmalloc", scope: !778, file: !778, line: 104, type: !3558, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!178, !797, !797}
!3560 = !{!3561, !3562}
!3561 = !DILocalVariable(name: "n", arg: 1, scope: !3557, file: !778, line: 104, type: !797)
!3562 = !DILocalVariable(name: "s", arg: 2, scope: !3557, file: !778, line: 104, type: !797)
!3563 = !DILocation(line: 0, scope: !3557)
!3564 = !DILocation(line: 0, scope: !3519, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 106, column: 10, scope: !3557)
!3566 = !DILocation(line: 0, scope: !3528, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 91, column: 25, scope: !3519, inlinedAt: !3565)
!3568 = !DILocation(line: 101, column: 13, scope: !3528, inlinedAt: !3567)
!3569 = !DILocation(line: 0, scope: !3409, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 91, column: 10, scope: !3519, inlinedAt: !3565)
!3571 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3570)
!3572 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3570)
!3573 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3570)
!3574 = !DILocation(line: 106, column: 3, scope: !3557)
!3575 = distinct !DISubprogram(name: "x2realloc", scope: !778, file: !778, line: 116, type: !3576, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!178, !178, !784}
!3578 = !{!3579, !3580}
!3579 = !DILocalVariable(name: "p", arg: 1, scope: !3575, file: !778, line: 116, type: !178)
!3580 = !DILocalVariable(name: "ps", arg: 2, scope: !3575, file: !778, line: 116, type: !784)
!3581 = !DILocation(line: 0, scope: !3575)
!3582 = !DILocation(line: 0, scope: !781, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 118, column: 10, scope: !3575)
!3584 = !DILocation(line: 178, column: 14, scope: !781, inlinedAt: !3583)
!3585 = !DILocation(line: 180, column: 9, scope: !3586, inlinedAt: !3583)
!3586 = distinct !DILexicalBlock(scope: !781, file: !778, line: 180, column: 7)
!3587 = !DILocation(line: 180, column: 7, scope: !781, inlinedAt: !3583)
!3588 = !DILocation(line: 182, column: 13, scope: !3589, inlinedAt: !3583)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !778, line: 182, column: 11)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !778, line: 181, column: 5)
!3591 = !DILocation(line: 182, column: 11, scope: !3590, inlinedAt: !3583)
!3592 = !DILocation(line: 197, column: 11, scope: !3593, inlinedAt: !3583)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !778, line: 197, column: 11)
!3594 = distinct !DILexicalBlock(scope: !3586, file: !778, line: 195, column: 5)
!3595 = !DILocation(line: 197, column: 11, scope: !3594, inlinedAt: !3583)
!3596 = !DILocation(line: 198, column: 9, scope: !3593, inlinedAt: !3583)
!3597 = !DILocation(line: 0, scope: !3401, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 201, column: 7, scope: !781, inlinedAt: !3583)
!3599 = !DILocation(line: 85, column: 25, scope: !3401, inlinedAt: !3598)
!3600 = !DILocation(line: 0, scope: !3409, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 85, column: 10, scope: !3401, inlinedAt: !3598)
!3602 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3601)
!3603 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3601)
!3604 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3601)
!3605 = !DILocation(line: 202, column: 7, scope: !781, inlinedAt: !3583)
!3606 = !DILocation(line: 118, column: 3, scope: !3575)
!3607 = !DILocation(line: 0, scope: !781)
!3608 = !DILocation(line: 178, column: 14, scope: !781)
!3609 = !DILocation(line: 180, column: 9, scope: !3586)
!3610 = !DILocation(line: 180, column: 7, scope: !781)
!3611 = !DILocation(line: 182, column: 13, scope: !3589)
!3612 = !DILocation(line: 182, column: 11, scope: !3590)
!3613 = !DILocation(line: 190, column: 30, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3589, file: !778, line: 183, column: 9)
!3615 = !DILocation(line: 191, column: 16, scope: !3614)
!3616 = !DILocation(line: 191, column: 13, scope: !3614)
!3617 = !DILocation(line: 192, column: 9, scope: !3614)
!3618 = !DILocation(line: 197, column: 11, scope: !3593)
!3619 = !DILocation(line: 197, column: 11, scope: !3594)
!3620 = !DILocation(line: 198, column: 9, scope: !3593)
!3621 = !DILocation(line: 0, scope: !3401, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 201, column: 7, scope: !781)
!3623 = !DILocation(line: 85, column: 25, scope: !3401, inlinedAt: !3622)
!3624 = !DILocation(line: 0, scope: !3409, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 85, column: 10, scope: !3401, inlinedAt: !3622)
!3626 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3625)
!3627 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3625)
!3628 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3625)
!3629 = !DILocation(line: 202, column: 7, scope: !781)
!3630 = !DILocation(line: 203, column: 3, scope: !781)
!3631 = !DILocation(line: 0, scope: !793)
!3632 = !DILocation(line: 230, column: 14, scope: !793)
!3633 = !DILocation(line: 238, column: 7, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !793, file: !778, line: 238, column: 7)
!3635 = !DILocation(line: 238, column: 7, scope: !793)
!3636 = !DILocation(line: 240, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !793, file: !778, line: 240, column: 7)
!3638 = !DILocation(line: 240, column: 18, scope: !3637)
!3639 = !DILocation(line: 253, column: 8, scope: !793)
!3640 = !DILocation(line: 256, column: 7, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !793, file: !778, line: 256, column: 7)
!3642 = !DILocation(line: 256, column: 7, scope: !793)
!3643 = !DILocation(line: 258, column: 27, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3641, file: !778, line: 257, column: 5)
!3645 = !DILocation(line: 259, column: 32, scope: !3644)
!3646 = !DILocation(line: 260, column: 5, scope: !3644)
!3647 = !DILocation(line: 262, column: 9, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !793, file: !778, line: 262, column: 7)
!3649 = !DILocation(line: 262, column: 7, scope: !793)
!3650 = !DILocation(line: 263, column: 9, scope: !3648)
!3651 = !DILocation(line: 263, column: 5, scope: !3648)
!3652 = !DILocation(line: 264, column: 9, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !793, file: !778, line: 264, column: 7)
!3654 = !DILocation(line: 264, column: 14, scope: !3653)
!3655 = !DILocation(line: 265, column: 7, scope: !3653)
!3656 = !DILocation(line: 265, column: 11, scope: !3653)
!3657 = !DILocation(line: 266, column: 11, scope: !3653)
!3658 = !DILocation(line: 267, column: 14, scope: !3653)
!3659 = !DILocation(line: 264, column: 7, scope: !793)
!3660 = !DILocation(line: 268, column: 5, scope: !3653)
!3661 = !DILocation(line: 0, scope: !3473, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 269, column: 8, scope: !793)
!3663 = !DILocation(line: 0, scope: !3481, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 70, column: 25, scope: !3473, inlinedAt: !3662)
!3665 = !DILocation(line: 2059, column: 24, scope: !3481, inlinedAt: !3664)
!3666 = !DILocation(line: 2059, column: 10, scope: !3481, inlinedAt: !3664)
!3667 = !DILocation(line: 0, scope: !3409, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 70, column: 10, scope: !3473, inlinedAt: !3662)
!3669 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3668)
!3670 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3668)
!3671 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3668)
!3672 = !DILocation(line: 270, column: 7, scope: !793)
!3673 = !DILocation(line: 271, column: 3, scope: !793)
!3674 = distinct !DISubprogram(name: "xzalloc", scope: !778, file: !778, line: 279, type: !1738, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3675)
!3675 = !{!3676}
!3676 = !DILocalVariable(name: "s", arg: 1, scope: !3674, file: !778, line: 279, type: !186)
!3677 = !DILocation(line: 0, scope: !3674)
!3678 = !DILocalVariable(name: "n", arg: 1, scope: !3679, file: !778, line: 294, type: !186)
!3679 = distinct !DISubprogram(name: "xcalloc", scope: !778, file: !778, line: 294, type: !3542, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3680)
!3680 = !{!3678, !3681}
!3681 = !DILocalVariable(name: "s", arg: 2, scope: !3679, file: !778, line: 294, type: !186)
!3682 = !DILocation(line: 0, scope: !3679, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 281, column: 10, scope: !3674)
!3684 = !DILocation(line: 296, column: 25, scope: !3679, inlinedAt: !3683)
!3685 = !DILocation(line: 0, scope: !3409, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 296, column: 10, scope: !3679, inlinedAt: !3683)
!3687 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3686)
!3688 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3686)
!3689 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3686)
!3690 = !DILocation(line: 281, column: 3, scope: !3674)
!3691 = !DISubprogram(name: "calloc", scope: !1040, file: !1040, line: 543, type: !3542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3692 = !DILocation(line: 0, scope: !3679)
!3693 = !DILocation(line: 296, column: 25, scope: !3679)
!3694 = !DILocation(line: 0, scope: !3409, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 296, column: 10, scope: !3679)
!3696 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3695)
!3697 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3695)
!3698 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3695)
!3699 = !DILocation(line: 296, column: 3, scope: !3679)
!3700 = distinct !DISubprogram(name: "xizalloc", scope: !778, file: !778, line: 285, type: !3440, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3701)
!3701 = !{!3702}
!3702 = !DILocalVariable(name: "s", arg: 1, scope: !3700, file: !778, line: 285, type: !797)
!3703 = !DILocation(line: 0, scope: !3700)
!3704 = !DILocalVariable(name: "n", arg: 1, scope: !3705, file: !778, line: 300, type: !797)
!3705 = distinct !DISubprogram(name: "xicalloc", scope: !778, file: !778, line: 300, type: !3558, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3706)
!3706 = !{!3704, !3707}
!3707 = !DILocalVariable(name: "s", arg: 2, scope: !3705, file: !778, line: 300, type: !797)
!3708 = !DILocation(line: 0, scope: !3705, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 287, column: 10, scope: !3700)
!3710 = !DILocalVariable(name: "n", arg: 1, scope: !3711, file: !3447, line: 77, type: !797)
!3711 = distinct !DISubprogram(name: "icalloc", scope: !3447, file: !3447, line: 77, type: !3558, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3712)
!3712 = !{!3710, !3713}
!3713 = !DILocalVariable(name: "s", arg: 2, scope: !3711, file: !3447, line: 77, type: !797)
!3714 = !DILocation(line: 0, scope: !3711, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 302, column: 25, scope: !3705, inlinedAt: !3709)
!3716 = !DILocation(line: 91, column: 10, scope: !3711, inlinedAt: !3715)
!3717 = !DILocation(line: 0, scope: !3409, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 302, column: 10, scope: !3705, inlinedAt: !3709)
!3719 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3718)
!3720 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3718)
!3721 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3718)
!3722 = !DILocation(line: 287, column: 3, scope: !3700)
!3723 = !DILocation(line: 0, scope: !3705)
!3724 = !DILocation(line: 0, scope: !3711, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 302, column: 25, scope: !3705)
!3726 = !DILocation(line: 91, column: 10, scope: !3711, inlinedAt: !3725)
!3727 = !DILocation(line: 0, scope: !3409, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 302, column: 10, scope: !3705)
!3729 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3728)
!3730 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3728)
!3731 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3728)
!3732 = !DILocation(line: 302, column: 3, scope: !3705)
!3733 = distinct !DISubprogram(name: "xmemdup", scope: !778, file: !778, line: 310, type: !3734, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!178, !1064, !186}
!3736 = !{!3737, !3738}
!3737 = !DILocalVariable(name: "p", arg: 1, scope: !3733, file: !778, line: 310, type: !1064)
!3738 = !DILocalVariable(name: "s", arg: 2, scope: !3733, file: !778, line: 310, type: !186)
!3739 = !DILocation(line: 0, scope: !3733)
!3740 = !DILocation(line: 0, scope: !3428, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 312, column: 18, scope: !3733)
!3742 = !DILocation(line: 49, column: 25, scope: !3428, inlinedAt: !3741)
!3743 = !DILocation(line: 0, scope: !3409, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 49, column: 10, scope: !3428, inlinedAt: !3741)
!3745 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3744)
!3746 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3744)
!3747 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3744)
!3748 = !DILocalVariable(name: "__dest", arg: 1, scope: !3749, file: !1710, line: 26, type: !1713)
!3749 = distinct !DISubprogram(name: "memcpy", scope: !1710, file: !1710, line: 26, type: !1711, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3750)
!3750 = !{!3748, !3751, !3752}
!3751 = !DILocalVariable(name: "__src", arg: 2, scope: !3749, file: !1710, line: 26, type: !1063)
!3752 = !DILocalVariable(name: "__len", arg: 3, scope: !3749, file: !1710, line: 26, type: !186)
!3753 = !DILocation(line: 0, scope: !3749, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 312, column: 10, scope: !3733)
!3755 = !DILocation(line: 29, column: 10, scope: !3749, inlinedAt: !3754)
!3756 = !DILocation(line: 312, column: 3, scope: !3733)
!3757 = distinct !DISubprogram(name: "ximemdup", scope: !778, file: !778, line: 316, type: !3758, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!178, !1064, !797}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "p", arg: 1, scope: !3757, file: !778, line: 316, type: !1064)
!3762 = !DILocalVariable(name: "s", arg: 2, scope: !3757, file: !778, line: 316, type: !797)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocation(line: 0, scope: !3439, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 318, column: 18, scope: !3757)
!3766 = !DILocation(line: 0, scope: !3446, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 55, column: 25, scope: !3439, inlinedAt: !3765)
!3768 = !DILocation(line: 57, column: 26, scope: !3446, inlinedAt: !3767)
!3769 = !DILocation(line: 0, scope: !3409, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 55, column: 10, scope: !3439, inlinedAt: !3765)
!3771 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3770)
!3772 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3770)
!3773 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3770)
!3774 = !DILocation(line: 0, scope: !3749, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 318, column: 10, scope: !3757)
!3776 = !DILocation(line: 29, column: 10, scope: !3749, inlinedAt: !3775)
!3777 = !DILocation(line: 318, column: 3, scope: !3757)
!3778 = distinct !DISubprogram(name: "ximemdup0", scope: !778, file: !778, line: 325, type: !3779, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!330, !1064, !797}
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "p", arg: 1, scope: !3778, file: !778, line: 325, type: !1064)
!3783 = !DILocalVariable(name: "s", arg: 2, scope: !3778, file: !778, line: 325, type: !797)
!3784 = !DILocalVariable(name: "result", scope: !3778, file: !778, line: 327, type: !330)
!3785 = !DILocation(line: 0, scope: !3778)
!3786 = !DILocation(line: 327, column: 30, scope: !3778)
!3787 = !DILocation(line: 0, scope: !3439, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 327, column: 18, scope: !3778)
!3789 = !DILocation(line: 0, scope: !3446, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 55, column: 25, scope: !3439, inlinedAt: !3788)
!3791 = !DILocation(line: 57, column: 26, scope: !3446, inlinedAt: !3790)
!3792 = !DILocation(line: 0, scope: !3409, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 55, column: 10, scope: !3439, inlinedAt: !3788)
!3794 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3793)
!3795 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3793)
!3796 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3793)
!3797 = !DILocation(line: 328, column: 3, scope: !3778)
!3798 = !DILocation(line: 328, column: 13, scope: !3778)
!3799 = !DILocation(line: 0, scope: !3749, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 329, column: 10, scope: !3778)
!3801 = !DILocation(line: 29, column: 10, scope: !3749, inlinedAt: !3800)
!3802 = !DILocation(line: 329, column: 3, scope: !3778)
!3803 = distinct !DISubprogram(name: "xstrdup", scope: !778, file: !778, line: 335, type: !1042, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3804)
!3804 = !{!3805}
!3805 = !DILocalVariable(name: "string", arg: 1, scope: !3803, file: !778, line: 335, type: !134)
!3806 = !DILocation(line: 0, scope: !3803)
!3807 = !DILocation(line: 337, column: 27, scope: !3803)
!3808 = !DILocation(line: 337, column: 43, scope: !3803)
!3809 = !DILocation(line: 0, scope: !3733, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 337, column: 10, scope: !3803)
!3811 = !DILocation(line: 0, scope: !3428, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 312, column: 18, scope: !3733, inlinedAt: !3810)
!3813 = !DILocation(line: 49, column: 25, scope: !3428, inlinedAt: !3812)
!3814 = !DILocation(line: 0, scope: !3409, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 49, column: 10, scope: !3428, inlinedAt: !3812)
!3816 = !DILocation(line: 39, column: 8, scope: !3416, inlinedAt: !3815)
!3817 = !DILocation(line: 39, column: 7, scope: !3409, inlinedAt: !3815)
!3818 = !DILocation(line: 40, column: 5, scope: !3416, inlinedAt: !3815)
!3819 = !DILocation(line: 0, scope: !3749, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 312, column: 10, scope: !3733, inlinedAt: !3810)
!3821 = !DILocation(line: 29, column: 10, scope: !3749, inlinedAt: !3820)
!3822 = !DILocation(line: 337, column: 3, scope: !3803)
!3823 = distinct !DISubprogram(name: "xalloc_die", scope: !735, file: !735, line: 32, type: !457, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3824)
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "__errstatus", scope: !3826, file: !735, line: 34, type: !1083)
!3826 = distinct !DILexicalBlock(scope: !3823, file: !735, line: 34, column: 3)
!3827 = !DILocation(line: 34, column: 3, scope: !3826)
!3828 = !DILocation(line: 0, scope: !3826)
!3829 = !DILocation(line: 40, column: 3, scope: !3823)
!3830 = distinct !DISubprogram(name: "last_component", scope: !815, file: !815, line: 29, type: !1042, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3831)
!3831 = !{!3832, !3833, !3834, !3835}
!3832 = !DILocalVariable(name: "name", arg: 1, scope: !3830, file: !815, line: 29, type: !134)
!3833 = !DILocalVariable(name: "base", scope: !3830, file: !815, line: 31, type: !134)
!3834 = !DILocalVariable(name: "last_was_slash", scope: !3830, file: !815, line: 35, type: !309)
!3835 = !DILocalVariable(name: "p", scope: !3836, file: !815, line: 36, type: !134)
!3836 = distinct !DILexicalBlock(scope: !3830, file: !815, line: 36, column: 3)
!3837 = !DILocation(line: 0, scope: !3830)
!3838 = !DILocation(line: 32, column: 3, scope: !3830)
!3839 = !DILocation(line: 32, column: 10, scope: !3830)
!3840 = !DILocation(line: 33, column: 9, scope: !3830)
!3841 = distinct !{!3841, !3838, !3840, !966}
!3842 = !DILocation(line: 36, column: 3, scope: !3836)
!3843 = !DILocation(line: 36, column: 30, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3836, file: !815, line: 36, column: 3)
!3845 = !DILocation(line: 31, column: 15, scope: !3830)
!3846 = !DILocation(line: 36, scope: !3836)
!3847 = !DILocation(line: 0, scope: !3836)
!3848 = !DILocation(line: 47, column: 3, scope: !3830)
!3849 = !DILocation(line: 40, column: 16, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !815, line: 38, column: 11)
!3851 = distinct !DILexicalBlock(scope: !3844, file: !815, line: 37, column: 5)
!3852 = !DILocation(line: 36, column: 35, scope: !3844)
!3853 = !DILocation(line: 36, column: 3, scope: !3844)
!3854 = distinct !{!3854, !3842, !3855, !966}
!3855 = !DILocation(line: 45, column: 5, scope: !3836)
!3856 = distinct !DISubprogram(name: "base_len", scope: !815, file: !815, line: 51, type: !3857, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!186, !134}
!3859 = !{!3860, !3861, !3862}
!3860 = !DILocalVariable(name: "name", arg: 1, scope: !3856, file: !815, line: 51, type: !134)
!3861 = !DILocalVariable(name: "len", scope: !3856, file: !815, line: 53, type: !186)
!3862 = !DILocalVariable(name: "prefix_len", scope: !3856, file: !815, line: 61, type: !186)
!3863 = !DILocation(line: 0, scope: !3856)
!3864 = !DILocation(line: 54, column: 14, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3856, file: !815, line: 54, column: 3)
!3866 = !DILocation(line: 54, column: 8, scope: !3865)
!3867 = !DILocation(line: 54, column: 32, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3865, file: !815, line: 54, column: 3)
!3869 = !DILocation(line: 54, column: 38, scope: !3868)
!3870 = !DILocation(line: 54, column: 3, scope: !3865)
!3871 = !DILocation(line: 54, column: 41, scope: !3868)
!3872 = !DILocation(line: 54, column: 70, scope: !3868)
!3873 = distinct !{!3873, !3870, !3874, !966}
!3874 = !DILocation(line: 55, column: 5, scope: !3865)
!3875 = !DILocation(line: 66, column: 3, scope: !3856)
!3876 = !DILocation(line: 54, scope: !3865)
!3877 = distinct !DISubprogram(name: "close_stream", scope: !818, file: !818, line: 55, type: !3878, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !3914)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!184, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3882, file: !326, line: 51, baseType: !184, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3882, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3882, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3882, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3882, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3882, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3882, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3882, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3882, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3882, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3882, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3882, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3882, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3882, file: !326, line: 70, baseType: !3898, size: 64, offset: 832)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3882, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3882, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3882, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3882, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3882, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3882, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3882, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3882, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3882, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3882, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3882, file: !326, line: 93, baseType: !3898, size: 64, offset: 1344)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3882, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3882, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3882, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3882, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3914 = !{!3915, !3916, !3918, !3919}
!3915 = !DILocalVariable(name: "stream", arg: 1, scope: !3877, file: !818, line: 55, type: !3880)
!3916 = !DILocalVariable(name: "some_pending", scope: !3877, file: !818, line: 57, type: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!3918 = !DILocalVariable(name: "prev_fail", scope: !3877, file: !818, line: 58, type: !3917)
!3919 = !DILocalVariable(name: "fclose_fail", scope: !3877, file: !818, line: 59, type: !3917)
!3920 = !DILocation(line: 0, scope: !3877)
!3921 = !DILocation(line: 57, column: 30, scope: !3877)
!3922 = !DILocalVariable(name: "__stream", arg: 1, scope: !3923, file: !1198, line: 135, type: !3880)
!3923 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1198, file: !1198, line: 135, type: !3878, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !3924)
!3924 = !{!3922}
!3925 = !DILocation(line: 0, scope: !3923, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 58, column: 27, scope: !3877)
!3927 = !DILocation(line: 137, column: 10, scope: !3923, inlinedAt: !3926)
!3928 = !DILocation(line: 58, column: 43, scope: !3877)
!3929 = !DILocation(line: 59, column: 29, scope: !3877)
!3930 = !DILocation(line: 59, column: 45, scope: !3877)
!3931 = !DILocation(line: 69, column: 17, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3877, file: !818, line: 69, column: 7)
!3933 = !DILocation(line: 57, column: 50, scope: !3877)
!3934 = !DILocation(line: 69, column: 33, scope: !3932)
!3935 = !DILocation(line: 69, column: 53, scope: !3932)
!3936 = !DILocation(line: 69, column: 59, scope: !3932)
!3937 = !DILocation(line: 69, column: 7, scope: !3877)
!3938 = !DILocation(line: 71, column: 11, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3932, file: !818, line: 70, column: 5)
!3940 = !DILocation(line: 72, column: 9, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3939, file: !818, line: 71, column: 11)
!3942 = !DILocation(line: 72, column: 15, scope: !3941)
!3943 = !DILocation(line: 77, column: 1, scope: !3877)
!3944 = !DISubprogram(name: "__fpending", scope: !3945, file: !3945, line: 75, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3945 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!186, !3880}
!3948 = distinct !DISubprogram(name: "rpl_fclose", scope: !820, file: !820, line: 58, type: !3949, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !3985)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!184, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3953)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3953, file: !326, line: 51, baseType: !184, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3953, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3953, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3953, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3953, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3953, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3953, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3953, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3953, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3953, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3953, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3953, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3953, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3953, file: !326, line: 70, baseType: !3969, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3953, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3953, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3953, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3953, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3953, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3953, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3953, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3953, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3953, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3953, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3953, file: !326, line: 93, baseType: !3969, size: 64, offset: 1344)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3953, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3953, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3953, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3953, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3985 = !{!3986, !3987, !3988, !3989}
!3986 = !DILocalVariable(name: "fp", arg: 1, scope: !3948, file: !820, line: 58, type: !3951)
!3987 = !DILocalVariable(name: "saved_errno", scope: !3948, file: !820, line: 60, type: !184)
!3988 = !DILocalVariable(name: "fd", scope: !3948, file: !820, line: 63, type: !184)
!3989 = !DILocalVariable(name: "result", scope: !3948, file: !820, line: 74, type: !184)
!3990 = !DILocation(line: 0, scope: !3948)
!3991 = !DILocation(line: 63, column: 12, scope: !3948)
!3992 = !DILocation(line: 64, column: 10, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3948, file: !820, line: 64, column: 7)
!3994 = !DILocation(line: 64, column: 7, scope: !3948)
!3995 = !DILocation(line: 65, column: 12, scope: !3993)
!3996 = !DILocation(line: 65, column: 5, scope: !3993)
!3997 = !DILocation(line: 70, column: 9, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3948, file: !820, line: 70, column: 7)
!3999 = !DILocation(line: 70, column: 23, scope: !3998)
!4000 = !DILocation(line: 70, column: 33, scope: !3998)
!4001 = !DILocation(line: 70, column: 26, scope: !3998)
!4002 = !DILocation(line: 70, column: 59, scope: !3998)
!4003 = !DILocation(line: 71, column: 7, scope: !3998)
!4004 = !DILocation(line: 71, column: 10, scope: !3998)
!4005 = !DILocation(line: 70, column: 7, scope: !3948)
!4006 = !DILocation(line: 100, column: 12, scope: !3948)
!4007 = !DILocation(line: 105, column: 7, scope: !3948)
!4008 = !DILocation(line: 72, column: 19, scope: !3998)
!4009 = !DILocation(line: 105, column: 19, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3948, file: !820, line: 105, column: 7)
!4011 = !DILocation(line: 107, column: 13, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4010, file: !820, line: 106, column: 5)
!4013 = !DILocation(line: 109, column: 5, scope: !4012)
!4014 = !DILocation(line: 112, column: 1, scope: !3948)
!4015 = !DISubprogram(name: "fileno", scope: !417, file: !417, line: 809, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4016 = !DISubprogram(name: "fclose", scope: !417, file: !417, line: 178, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4017 = !DISubprogram(name: "__freading", scope: !3945, file: !3945, line: 51, type: !3949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4018 = !DISubprogram(name: "lseek", scope: !1230, file: !1230, line: 339, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!349, !184, !349, !184}
!4021 = distinct !DISubprogram(name: "rpl_fflush", scope: !822, file: !822, line: 130, type: !4022, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4058)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!184, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !4026)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !4027)
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4026, file: !326, line: 51, baseType: !184, size: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4026, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4026, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4026, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4026, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4026, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4026, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4026, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4026, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4026, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4026, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4026, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4026, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4026, file: !326, line: 70, baseType: !4042, size: 64, offset: 832)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4026, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4026, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4026, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4026, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4026, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4026, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4026, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4026, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4026, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4026, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4026, file: !326, line: 93, baseType: !4042, size: 64, offset: 1344)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4026, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4026, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4026, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4026, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4058 = !{!4059}
!4059 = !DILocalVariable(name: "stream", arg: 1, scope: !4021, file: !822, line: 130, type: !4024)
!4060 = !DILocation(line: 0, scope: !4021)
!4061 = !DILocation(line: 151, column: 14, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4021, file: !822, line: 151, column: 7)
!4063 = !DILocation(line: 151, column: 22, scope: !4062)
!4064 = !DILocation(line: 151, column: 27, scope: !4062)
!4065 = !DILocation(line: 151, column: 7, scope: !4021)
!4066 = !DILocation(line: 152, column: 12, scope: !4062)
!4067 = !DILocation(line: 152, column: 5, scope: !4062)
!4068 = !DILocalVariable(name: "fp", arg: 1, scope: !4069, file: !822, line: 42, type: !4024)
!4069 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !822, file: !822, line: 42, type: !4070, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !4024}
!4072 = !{!4068}
!4073 = !DILocation(line: 0, scope: !4069, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 157, column: 3, scope: !4021)
!4075 = !DILocation(line: 44, column: 12, scope: !4076, inlinedAt: !4074)
!4076 = distinct !DILexicalBlock(scope: !4069, file: !822, line: 44, column: 7)
!4077 = !DILocation(line: 44, column: 19, scope: !4076, inlinedAt: !4074)
!4078 = !DILocation(line: 44, column: 7, scope: !4069, inlinedAt: !4074)
!4079 = !DILocation(line: 46, column: 5, scope: !4076, inlinedAt: !4074)
!4080 = !DILocation(line: 159, column: 10, scope: !4021)
!4081 = !DILocation(line: 159, column: 3, scope: !4021)
!4082 = !DILocation(line: 236, column: 1, scope: !4021)
!4083 = !DISubprogram(name: "fflush", scope: !417, file: !417, line: 230, type: !4022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4084 = distinct !DISubprogram(name: "rpl_fseeko", scope: !824, file: !824, line: 28, type: !4085, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823, retainedNodes: !4122)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!184, !4087, !4121, !184}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !4089)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4089, file: !326, line: 51, baseType: !184, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4089, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4089, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4089, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4089, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4089, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4089, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4089, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4089, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4089, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4089, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4089, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4089, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4089, file: !326, line: 70, baseType: !4105, size: 64, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4089, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4089, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4089, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4089, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4089, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4089, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4089, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4089, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4089, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4089, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4089, file: !326, line: 93, baseType: !4105, size: 64, offset: 1344)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4089, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4089, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4089, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4089, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !417, line: 63, baseType: !349)
!4122 = !{!4123, !4124, !4125, !4126}
!4123 = !DILocalVariable(name: "fp", arg: 1, scope: !4084, file: !824, line: 28, type: !4087)
!4124 = !DILocalVariable(name: "offset", arg: 2, scope: !4084, file: !824, line: 28, type: !4121)
!4125 = !DILocalVariable(name: "whence", arg: 3, scope: !4084, file: !824, line: 28, type: !184)
!4126 = !DILocalVariable(name: "pos", scope: !4127, file: !824, line: 123, type: !4121)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !824, line: 119, column: 5)
!4128 = distinct !DILexicalBlock(scope: !4084, file: !824, line: 55, column: 7)
!4129 = !DILocation(line: 0, scope: !4084)
!4130 = !DILocation(line: 55, column: 12, scope: !4128)
!4131 = !{!1206, !852, i64 16}
!4132 = !DILocation(line: 55, column: 33, scope: !4128)
!4133 = !{!1206, !852, i64 8}
!4134 = !DILocation(line: 55, column: 25, scope: !4128)
!4135 = !DILocation(line: 56, column: 7, scope: !4128)
!4136 = !DILocation(line: 56, column: 15, scope: !4128)
!4137 = !DILocation(line: 56, column: 37, scope: !4128)
!4138 = !{!1206, !852, i64 32}
!4139 = !DILocation(line: 56, column: 29, scope: !4128)
!4140 = !DILocation(line: 57, column: 7, scope: !4128)
!4141 = !DILocation(line: 57, column: 15, scope: !4128)
!4142 = !{!1206, !852, i64 72}
!4143 = !DILocation(line: 57, column: 29, scope: !4128)
!4144 = !DILocation(line: 55, column: 7, scope: !4084)
!4145 = !DILocation(line: 123, column: 26, scope: !4127)
!4146 = !DILocation(line: 123, column: 19, scope: !4127)
!4147 = !DILocation(line: 0, scope: !4127)
!4148 = !DILocation(line: 124, column: 15, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4127, file: !824, line: 124, column: 11)
!4150 = !DILocation(line: 124, column: 11, scope: !4127)
!4151 = !DILocation(line: 135, column: 19, scope: !4127)
!4152 = !DILocation(line: 136, column: 12, scope: !4127)
!4153 = !DILocation(line: 136, column: 20, scope: !4127)
!4154 = !{!1206, !1207, i64 144}
!4155 = !DILocation(line: 167, column: 7, scope: !4127)
!4156 = !DILocation(line: 169, column: 10, scope: !4084)
!4157 = !DILocation(line: 169, column: 3, scope: !4084)
!4158 = !DILocation(line: 170, column: 1, scope: !4084)
!4159 = !DISubprogram(name: "fseeko", scope: !417, file: !417, line: 736, type: !4160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!184, !4087, !349, !184}
!4162 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !742, file: !742, line: 100, type: !4163, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !4166)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!186, !1907, !134, !186, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!4166 = !{!4167, !4168, !4169, !4170, !4171}
!4167 = !DILocalVariable(name: "pwc", arg: 1, scope: !4162, file: !742, line: 100, type: !1907)
!4168 = !DILocalVariable(name: "s", arg: 2, scope: !4162, file: !742, line: 100, type: !134)
!4169 = !DILocalVariable(name: "n", arg: 3, scope: !4162, file: !742, line: 100, type: !186)
!4170 = !DILocalVariable(name: "ps", arg: 4, scope: !4162, file: !742, line: 100, type: !4165)
!4171 = !DILocalVariable(name: "ret", scope: !4162, file: !742, line: 130, type: !186)
!4172 = !DILocation(line: 0, scope: !4162)
!4173 = !DILocation(line: 105, column: 9, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4162, file: !742, line: 105, column: 7)
!4175 = !DILocation(line: 105, column: 7, scope: !4162)
!4176 = !DILocation(line: 117, column: 10, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4162, file: !742, line: 117, column: 7)
!4178 = !DILocation(line: 117, column: 7, scope: !4162)
!4179 = !DILocation(line: 130, column: 16, scope: !4162)
!4180 = !DILocation(line: 135, column: 11, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4162, file: !742, line: 135, column: 7)
!4182 = !DILocation(line: 135, column: 25, scope: !4181)
!4183 = !DILocation(line: 135, column: 30, scope: !4181)
!4184 = !DILocation(line: 135, column: 7, scope: !4162)
!4185 = !DILocalVariable(name: "ps", arg: 1, scope: !4186, file: !1881, line: 1135, type: !4165)
!4186 = distinct !DISubprogram(name: "mbszero", scope: !1881, file: !1881, line: 1135, type: !4187, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !4165}
!4189 = !{!4185}
!4190 = !DILocation(line: 0, scope: !4186, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 137, column: 5, scope: !4181)
!4192 = !DILocalVariable(name: "__dest", arg: 1, scope: !4193, file: !1710, line: 57, type: !178)
!4193 = distinct !DISubprogram(name: "memset", scope: !1710, file: !1710, line: 57, type: !1890, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !4194)
!4194 = !{!4192, !4195, !4196}
!4195 = !DILocalVariable(name: "__ch", arg: 2, scope: !4193, file: !1710, line: 57, type: !184)
!4196 = !DILocalVariable(name: "__len", arg: 3, scope: !4193, file: !1710, line: 57, type: !186)
!4197 = !DILocation(line: 0, scope: !4193, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 1137, column: 3, scope: !4186, inlinedAt: !4191)
!4199 = !DILocation(line: 59, column: 10, scope: !4193, inlinedAt: !4198)
!4200 = !DILocation(line: 137, column: 5, scope: !4181)
!4201 = !DILocation(line: 138, column: 11, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4162, file: !742, line: 138, column: 7)
!4203 = !DILocation(line: 138, column: 7, scope: !4162)
!4204 = !DILocation(line: 139, column: 5, scope: !4202)
!4205 = !DILocation(line: 143, column: 26, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4162, file: !742, line: 143, column: 7)
!4207 = !DILocation(line: 143, column: 41, scope: !4206)
!4208 = !DILocation(line: 143, column: 7, scope: !4162)
!4209 = !DILocation(line: 145, column: 15, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !742, line: 145, column: 11)
!4211 = distinct !DILexicalBlock(scope: !4206, file: !742, line: 144, column: 5)
!4212 = !DILocation(line: 145, column: 11, scope: !4211)
!4213 = !DILocation(line: 146, column: 32, scope: !4210)
!4214 = !DILocation(line: 146, column: 16, scope: !4210)
!4215 = !DILocation(line: 146, column: 14, scope: !4210)
!4216 = !DILocation(line: 146, column: 9, scope: !4210)
!4217 = !DILocation(line: 286, column: 1, scope: !4162)
!4218 = !DISubprogram(name: "mbsinit", scope: !4219, file: !4219, line: 293, type: !4220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4219 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!184, !4222}
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!4224 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !826, file: !826, line: 27, type: !3393, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4225)
!4225 = !{!4226, !4227, !4228, !4229}
!4226 = !DILocalVariable(name: "ptr", arg: 1, scope: !4224, file: !826, line: 27, type: !178)
!4227 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4224, file: !826, line: 27, type: !186)
!4228 = !DILocalVariable(name: "size", arg: 3, scope: !4224, file: !826, line: 27, type: !186)
!4229 = !DILocalVariable(name: "nbytes", scope: !4224, file: !826, line: 29, type: !186)
!4230 = !DILocation(line: 0, scope: !4224)
!4231 = !DILocation(line: 30, column: 7, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4224, file: !826, line: 30, column: 7)
!4233 = !DILocation(line: 30, column: 7, scope: !4224)
!4234 = !DILocation(line: 32, column: 7, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !826, line: 31, column: 5)
!4236 = !DILocation(line: 32, column: 13, scope: !4235)
!4237 = !DILocation(line: 33, column: 7, scope: !4235)
!4238 = !DILocalVariable(name: "ptr", arg: 1, scope: !4239, file: !3482, line: 2057, type: !178)
!4239 = distinct !DISubprogram(name: "rpl_realloc", scope: !3482, file: !3482, line: 2057, type: !3474, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4240)
!4240 = !{!4238, !4241}
!4241 = !DILocalVariable(name: "size", arg: 2, scope: !4239, file: !3482, line: 2057, type: !186)
!4242 = !DILocation(line: 0, scope: !4239, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 37, column: 10, scope: !4224)
!4244 = !DILocation(line: 2059, column: 24, scope: !4239, inlinedAt: !4243)
!4245 = !DILocation(line: 2059, column: 10, scope: !4239, inlinedAt: !4243)
!4246 = !DILocation(line: 37, column: 3, scope: !4224)
!4247 = !DILocation(line: 38, column: 1, scope: !4224)
!4248 = distinct !DISubprogram(name: "hard_locale", scope: !760, file: !760, line: 28, type: !4249, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!309, !184}
!4251 = !{!4252, !4253}
!4252 = !DILocalVariable(name: "category", arg: 1, scope: !4248, file: !760, line: 28, type: !184)
!4253 = !DILocalVariable(name: "locale", scope: !4248, file: !760, line: 30, type: !4254)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4255)
!4255 = !{!4256}
!4256 = !DISubrange(count: 257)
!4257 = distinct !DIAssignID()
!4258 = !DILocation(line: 0, scope: !4248)
!4259 = !DILocation(line: 30, column: 3, scope: !4248)
!4260 = !DILocation(line: 32, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4248, file: !760, line: 32, column: 7)
!4262 = !DILocation(line: 32, column: 7, scope: !4248)
!4263 = !DILocalVariable(name: "__s1", arg: 1, scope: !4264, file: !932, line: 1359, type: !134)
!4264 = distinct !DISubprogram(name: "streq", scope: !932, file: !932, line: 1359, type: !933, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4265)
!4265 = !{!4263, !4266}
!4266 = !DILocalVariable(name: "__s2", arg: 2, scope: !4264, file: !932, line: 1359, type: !134)
!4267 = !DILocation(line: 0, scope: !4264, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 35, column: 9, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4248, file: !760, line: 35, column: 7)
!4270 = !DILocation(line: 1361, column: 11, scope: !4264, inlinedAt: !4268)
!4271 = !DILocation(line: 1361, column: 10, scope: !4264, inlinedAt: !4268)
!4272 = !DILocation(line: 35, column: 29, scope: !4269)
!4273 = !DILocation(line: 0, scope: !4264, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 35, column: 32, scope: !4269)
!4275 = !DILocation(line: 1361, column: 11, scope: !4264, inlinedAt: !4274)
!4276 = !DILocation(line: 1361, column: 10, scope: !4264, inlinedAt: !4274)
!4277 = !DILocation(line: 35, column: 7, scope: !4248)
!4278 = !DILocation(line: 46, column: 3, scope: !4248)
!4279 = !DILocation(line: 47, column: 1, scope: !4248)
!4280 = distinct !DISubprogram(name: "setlocale_null_r", scope: !830, file: !830, line: 154, type: !4281, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!184, !184, !330, !186}
!4283 = !{!4284, !4285, !4286}
!4284 = !DILocalVariable(name: "category", arg: 1, scope: !4280, file: !830, line: 154, type: !184)
!4285 = !DILocalVariable(name: "buf", arg: 2, scope: !4280, file: !830, line: 154, type: !330)
!4286 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4280, file: !830, line: 154, type: !186)
!4287 = !DILocation(line: 0, scope: !4280)
!4288 = !DILocation(line: 159, column: 10, scope: !4280)
!4289 = !DILocation(line: 159, column: 3, scope: !4280)
!4290 = distinct !DISubprogram(name: "setlocale_null", scope: !830, file: !830, line: 186, type: !4291, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!134, !184}
!4293 = !{!4294}
!4294 = !DILocalVariable(name: "category", arg: 1, scope: !4290, file: !830, line: 186, type: !184)
!4295 = !DILocation(line: 0, scope: !4290)
!4296 = !DILocation(line: 189, column: 10, scope: !4290)
!4297 = !DILocation(line: 189, column: 3, scope: !4290)
!4298 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !832, file: !832, line: 35, type: !4291, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4299)
!4299 = !{!4300, !4301}
!4300 = !DILocalVariable(name: "category", arg: 1, scope: !4298, file: !832, line: 35, type: !184)
!4301 = !DILocalVariable(name: "result", scope: !4298, file: !832, line: 37, type: !134)
!4302 = !DILocation(line: 0, scope: !4298)
!4303 = !DILocation(line: 37, column: 24, scope: !4298)
!4304 = !DILocation(line: 62, column: 3, scope: !4298)
!4305 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !832, file: !832, line: 66, type: !4281, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4311}
!4307 = !DILocalVariable(name: "category", arg: 1, scope: !4305, file: !832, line: 66, type: !184)
!4308 = !DILocalVariable(name: "buf", arg: 2, scope: !4305, file: !832, line: 66, type: !330)
!4309 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4305, file: !832, line: 66, type: !186)
!4310 = !DILocalVariable(name: "result", scope: !4305, file: !832, line: 111, type: !134)
!4311 = !DILocalVariable(name: "length", scope: !4312, file: !832, line: 125, type: !186)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !832, line: 124, column: 5)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !832, line: 113, column: 7)
!4314 = !DILocation(line: 0, scope: !4305)
!4315 = !DILocation(line: 0, scope: !4298, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 111, column: 24, scope: !4305)
!4317 = !DILocation(line: 37, column: 24, scope: !4298, inlinedAt: !4316)
!4318 = !DILocation(line: 113, column: 14, scope: !4313)
!4319 = !DILocation(line: 113, column: 7, scope: !4305)
!4320 = !DILocation(line: 116, column: 19, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4322, file: !832, line: 116, column: 11)
!4322 = distinct !DILexicalBlock(scope: !4313, file: !832, line: 114, column: 5)
!4323 = !DILocation(line: 116, column: 11, scope: !4322)
!4324 = !DILocation(line: 120, column: 16, scope: !4321)
!4325 = !DILocation(line: 120, column: 9, scope: !4321)
!4326 = !DILocation(line: 125, column: 23, scope: !4312)
!4327 = !DILocation(line: 0, scope: !4312)
!4328 = !DILocation(line: 126, column: 18, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4312, file: !832, line: 126, column: 11)
!4330 = !DILocation(line: 126, column: 11, scope: !4312)
!4331 = !DILocation(line: 128, column: 39, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4329, file: !832, line: 127, column: 9)
!4333 = !DILocalVariable(name: "__dest", arg: 1, scope: !4334, file: !1710, line: 26, type: !1713)
!4334 = distinct !DISubprogram(name: "memcpy", scope: !1710, file: !1710, line: 26, type: !1711, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !4335)
!4335 = !{!4333, !4336, !4337}
!4336 = !DILocalVariable(name: "__src", arg: 2, scope: !4334, file: !1710, line: 26, type: !1063)
!4337 = !DILocalVariable(name: "__len", arg: 3, scope: !4334, file: !1710, line: 26, type: !186)
!4338 = !DILocation(line: 0, scope: !4334, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 128, column: 11, scope: !4332)
!4340 = !DILocation(line: 29, column: 10, scope: !4334, inlinedAt: !4339)
!4341 = !DILocation(line: 129, column: 11, scope: !4332)
!4342 = !DILocation(line: 133, column: 23, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !832, line: 133, column: 15)
!4344 = distinct !DILexicalBlock(scope: !4329, file: !832, line: 132, column: 9)
!4345 = !DILocation(line: 133, column: 15, scope: !4344)
!4346 = !DILocation(line: 138, column: 44, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4343, file: !832, line: 134, column: 13)
!4348 = !DILocation(line: 0, scope: !4334, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 138, column: 15, scope: !4347)
!4350 = !DILocation(line: 29, column: 10, scope: !4334, inlinedAt: !4349)
!4351 = !DILocation(line: 139, column: 15, scope: !4347)
!4352 = !DILocation(line: 139, column: 32, scope: !4347)
!4353 = !DILocation(line: 140, column: 13, scope: !4347)
!4354 = !DILocation(line: 0, scope: !4313)
!4355 = !DILocation(line: 145, column: 1, scope: !4305)
