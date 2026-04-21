; ModuleID = 'src/nohup.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !401
@.str.34 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !393
@.str.1.35 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !395
@.str.2.36 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !397
@.str.3.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !399
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !403
@stderr = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !409
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !440
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !411
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !430
@.str.1.44 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !432
@.str.2.46 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !434
@.str.3.45 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !436
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !438
@.str.4.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !442
@.str.5.40 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !444
@.str.6.41 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !449
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !454
@opterr = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !472
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.64, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.65, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !475
@optind = external local_unnamed_addr global i32, align 4
@.str.1.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !480
@.str.2.64 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !482
@.str.3.65 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !484
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !496
@.str.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !502
@.str.1.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !504
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !506
@.str.77 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !537
@.str.1.78 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !540
@.str.2.79 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !542
@.str.3.80 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !544
@.str.4.81 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !546
@.str.5.82 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !548
@.str.6.83 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !550
@.str.7.84 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !552
@.str.8.85 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !554
@.str.9.86 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !556
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.77, ptr @.str.1.78, ptr @.str.2.79, ptr @.str.3.80, ptr @.str.4.81, ptr @.str.5.82, ptr @.str.6.83, ptr @.str.7.84, ptr @.str.8.85, ptr @.str.9.86, ptr null], align 16, !dbg !558
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !571
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !585
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !623
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !630
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !587
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !632
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !575
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !592
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !594
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !596
@.str.13.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !598
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !600
@.str.95 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !638
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !641
@.str.2.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !643
@.str.3.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !645
@.str.4.99 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !647
@.str.5.100 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !649
@.str.6.101 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !654
@.str.7.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !656
@.str.8.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !658
@.str.9.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !660
@.str.10.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !665
@.str.11.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !670
@.str.12.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !675
@.str.13.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !677
@.str.14.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !682
@.str.15.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !687
@.str.16.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !692
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.116 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !697
@.str.18.117 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !699
@.str.19.118 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !701
@.str.20.119 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !703
@.str.21.120 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !705
@.str.22.121 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !707
@.str.23.122 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !709
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !714
@exit_failure = dso_local global i32 1, align 4, !dbg !722
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !728
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !731
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !733
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !735
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !738
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !753

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !836 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !838, metadata !DIExpression()), !dbg !839
  %2 = icmp eq i32 %0, 0, !dbg !840
  br i1 %2, label %8, label %3, !dbg !842

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !843, !tbaa !845
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !843
  %6 = load ptr, ptr @program_name, align 8, !dbg !843, !tbaa !845
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !843
  br label %38, !dbg !843

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !849
  %10 = load ptr, ptr @program_name, align 8, !dbg !849, !tbaa !845
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #40, !dbg !849
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !851
  %13 = load ptr, ptr @stdout, align 8, !dbg !851, !tbaa !845
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !851
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !852
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !852
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !853
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !853
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !854
  %18 = load ptr, ptr @program_name, align 8, !dbg !854, !tbaa !845
  %19 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %17, ptr noundef %18) #40, !dbg !854
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !855
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #40, !dbg !855
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !856, metadata !DIExpression()), !dbg !861
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !863
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #40, !dbg !863
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !864, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata !881, metadata !875, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata ptr poison, metadata !874, metadata !DIExpression()), !dbg !879
  tail call void @emit_bug_reporting_address() #40, !dbg !882
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !883
  call void @llvm.dbg.value(metadata ptr %24, metadata !877, metadata !DIExpression()), !dbg !879
  %25 = icmp eq ptr %24, null, !dbg !884
  br i1 %25, label %33, label %26, !dbg !886

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #41, !dbg !887
  %28 = icmp eq i32 %27, 0, !dbg !887
  br i1 %28, label %33, label %29, !dbg !888

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #40, !dbg !889
  %31 = load ptr, ptr @stdout, align 8, !dbg !889, !tbaa !845
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !889
  br label %33, !dbg !891

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !874, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !878, metadata !DIExpression()), !dbg !879
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #40, !dbg !892
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #40, !dbg !892
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #40, !dbg !893
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #40, !dbg !893
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !894
  unreachable, !dbg !894
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !895 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !899 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !905 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !908 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !130 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !303, metadata !DIExpression()), !dbg !912
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !912
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !913, !tbaa !914
  %3 = icmp eq i32 %2, -1, !dbg !916
  br i1 %3, label %4, label %16, !dbg !917

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #40, !dbg !918
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !305, metadata !DIExpression()), !dbg !919
  %6 = icmp eq ptr %5, null, !dbg !920
  br i1 %6, label %14, label %7, !dbg !921

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !922, !tbaa !923
  %9 = icmp eq i8 %8, 0, !dbg !922
  br i1 %9, label %14, label %10, !dbg !924

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !925, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !931, metadata !DIExpression()), !dbg !932
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #41, !dbg !934
  %12 = icmp eq i32 %11, 0, !dbg !935
  %13 = zext i1 %12 to i32, !dbg !924
  br label %14, !dbg !924

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !936, !tbaa !914
  br label %16, !dbg !937

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !938
  %18 = icmp eq i32 %17, 0, !dbg !938
  br i1 %18, label %22, label %19, !dbg !940

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !941, !tbaa !845
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !941
  br label %124, !dbg !943

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !308, metadata !DIExpression()), !dbg !912
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #41, !dbg !944
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !945
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !310, metadata !DIExpression()), !dbg !912
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !946
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !311, metadata !DIExpression()), !dbg !912
  %26 = icmp eq ptr %25, null, !dbg !947
  br i1 %26, label %54, label %27, !dbg !948

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !949
  br i1 %28, label %54, label %29, !dbg !950

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !312, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i64 0, metadata !316, metadata !DIExpression()), !dbg !951
  %30 = icmp ult ptr %24, %25, !dbg !952
  br i1 %30, label %31, label %54, !dbg !953

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !912
  %33 = load ptr, ptr %32, align 8, !tbaa !845
  br label %34, !dbg !953

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !312, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !316, metadata !DIExpression()), !dbg !951
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !954
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !312, metadata !DIExpression()), !dbg !951
  %38 = load i8, ptr %35, align 1, !dbg !954, !tbaa !923
  %39 = sext i8 %38 to i64, !dbg !954
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !954
  %41 = load i16, ptr %40, align 2, !dbg !954, !tbaa !955
  %42 = freeze i16 %41, !dbg !957
  %43 = lshr i16 %42, 13, !dbg !957
  %44 = and i16 %43, 1, !dbg !957
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !316, metadata !DIExpression()), !dbg !951
  %47 = icmp ult ptr %37, %25, !dbg !952
  %48 = icmp ult i64 %46, 2, !dbg !959
  %49 = select i1 %47, i1 %48, i1 false, !dbg !959
  br i1 %49, label %34, label %50, !dbg !953, !llvm.loop !960

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !962
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !964
  %53 = zext i1 %51 to i8, !dbg !964
  br label %54, !dbg !964

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !912
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !912
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !308, metadata !DIExpression()), !dbg !912
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !311, metadata !DIExpression()), !dbg !912
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.30) #41, !dbg !965
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !317, metadata !DIExpression()), !dbg !912
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !966
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !318, metadata !DIExpression()), !dbg !912
  br label %59, !dbg !967

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !912
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !912
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !308, metadata !DIExpression()), !dbg !912
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !318, metadata !DIExpression()), !dbg !912
  %62 = load i8, ptr %60, align 1, !dbg !968, !tbaa !923
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !969

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !970
  %65 = load i8, ptr %64, align 1, !dbg !973, !tbaa !923
  %66 = icmp eq i8 %65, 45, !dbg !974
  %67 = select i1 %66, i8 0, i8 %61, !dbg !975
  br label %68, !dbg !975

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !912
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !308, metadata !DIExpression()), !dbg !912
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !976
  %71 = load ptr, ptr %70, align 8, !dbg !976, !tbaa !845
  %72 = sext i8 %62 to i64, !dbg !976
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !976
  %74 = load i16, ptr %73, align 2, !dbg !976, !tbaa !955
  %75 = and i16 %74, 8192, !dbg !976
  %76 = icmp eq i16 %75, 0, !dbg !976
  br i1 %76, label %92, label %77, !dbg !978

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !979
  br i1 %78, label %94, label %79, !dbg !982

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !983
  %81 = load i8, ptr %80, align 1, !dbg !983, !tbaa !923
  %82 = sext i8 %81 to i64, !dbg !983
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !983
  %84 = load i16, ptr %83, align 2, !dbg !983, !tbaa !955
  %85 = and i16 %84, 8192, !dbg !983
  %86 = icmp eq i16 %85, 0, !dbg !983
  br i1 %86, label %87, label %94, !dbg !984

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !985
  %89 = icmp ne i8 %88, 0, !dbg !985
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !987
  br i1 %91, label %92, label %94, !dbg !987

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !988
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !318, metadata !DIExpression()), !dbg !912
  br label %59, !dbg !967, !llvm.loop !989

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !991
  %96 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !845
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata !881, metadata !931, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !376, metadata !DIExpression()), !dbg !912
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #41, !dbg !1012
  %99 = icmp eq i32 %98, 0, !dbg !1012
  br i1 %99, label %103, label %100, !dbg !1014

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #41, !dbg !1015
  %102 = icmp eq i32 %101, 0, !dbg !1015
  br i1 %102, label %103, label %106, !dbg !1016

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1017
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !1017
  br label %109, !dbg !1019

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1020
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !1020
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !845
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %110), !dbg !1022
  %112 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !845
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %112), !dbg !1023
  %114 = ptrtoint ptr %60 to i64, !dbg !1024
  %115 = sub i64 %114, %95, !dbg !1024
  %116 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !845
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1024
  %118 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !845
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %118), !dbg !1025
  %120 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !845
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %120), !dbg !1026
  %122 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !845
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1027
  br label %124, !dbg !1028

124:                                              ; preds = %109, %19
  ret void, !dbg !1028
}

; Function Attrs: nounwind
declare !dbg !1029 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1033 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1037 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1039 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1042 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1045 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1048 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1051 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1057 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1058 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1064 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1069, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1070, metadata !DIExpression()), !dbg !1109
  %3 = load ptr, ptr %1, align 8, !dbg !1110, !tbaa !845
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1111
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #40, !dbg !1112
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #40, !dbg !1113
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #40, !dbg !1114
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.11) #40, !dbg !1115
  %8 = icmp eq ptr %7, null, !dbg !1115
  %9 = select i1 %8, i32 125, i32 127, !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1071, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1116, metadata !DIExpression()), !dbg !1119
  store volatile i32 %9, ptr @exit_failure, align 4, !dbg !1121, !tbaa !914
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1123
  %11 = load ptr, ptr @Version, align 8, !dbg !1124, !tbaa !845
  %12 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #40, !dbg !1125
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %11, i1 noundef zeroext false, ptr noundef nonnull @usage, ptr noundef %12, ptr noundef null) #40, !dbg !1126
  %13 = load i32, ptr @optind, align 4, !dbg !1127, !tbaa !914
  %14 = icmp slt i32 %13, %0, !dbg !1129
  br i1 %14, label %17, label %15, !dbg !1130

15:                                               ; preds = %2
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1131
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #40, !dbg !1131
  tail call void @usage(i32 noundef %9) #44, !dbg !1133
  unreachable, !dbg !1133

17:                                               ; preds = %2
  %18 = tail call i32 @isatty(i32 noundef 0) #40, !dbg !1134
  %19 = icmp eq i32 %18, 0, !dbg !1134
  tail call void @llvm.dbg.value(metadata i1 %19, metadata !1072, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1109
  %20 = tail call i32 @isatty(i32 noundef 1) #40, !dbg !1135
  %21 = icmp eq i32 %20, 0, !dbg !1135
  tail call void @llvm.dbg.value(metadata i1 %21, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1109
  br i1 %21, label %22, label %26, !dbg !1136

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #43, !dbg !1137
  %24 = load i32, ptr %23, align 4, !dbg !1137, !tbaa !914
  %25 = icmp eq i32 %24, 9, !dbg !1138
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ], !dbg !1109
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !1074, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1109
  %28 = tail call i32 @isatty(i32 noundef 2) #40, !dbg !1139
  %29 = icmp eq i32 %28, 0, !dbg !1139
  tail call void @llvm.dbg.value(metadata i1 %29, metadata !1075, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1109
  br i1 %19, label %41, label %30, !dbg !1140

30:                                               ; preds = %26
  %31 = tail call i32 @fd_reopen(i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0) #40, !dbg !1141
  %32 = icmp slt i32 %31, 0, !dbg !1142
  br i1 %32, label %33, label %37, !dbg !1143

33:                                               ; preds = %30
  %34 = tail call ptr @__errno_location() #43, !dbg !1144
  %35 = load i32, ptr %34, align 4, !dbg !1144, !tbaa !914
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !1144
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %35, ptr noundef %36) #40, !dbg !1144
  unreachable, !dbg !1144

37:                                               ; preds = %30
  %38 = select i1 %21, i1 %29, i1 false, !dbg !1145
  br i1 %38, label %39, label %41, !dbg !1145

39:                                               ; preds = %37
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !1147
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40) #40, !dbg !1147
  br label %41, !dbg !1147

41:                                               ; preds = %37, %39, %26
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1082, metadata !DIExpression()), !dbg !1109
  %42 = xor i1 %27, true
  %43 = select i1 %29, i1 true, i1 %42
  %44 = select i1 %21, i1 %43, i1 false, !dbg !1148
  br i1 %44, label %87, label %45, !dbg !1148

45:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1083, metadata !DIExpression()), !dbg !1149
  tail call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1086, metadata !DIExpression()), !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 1089, metadata !1087, metadata !DIExpression()), !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 384, metadata !1088, metadata !DIExpression()), !dbg !1149
  %46 = tail call i32 @umask(i32 noundef 0) #40, !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !1092, metadata !DIExpression()), !dbg !1149
  br i1 %21, label %49, label %47, !dbg !1151

47:                                               ; preds = %45
  %48 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #40, !dbg !1152
  br label %51, !dbg !1151

49:                                               ; preds = %45
  %50 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #40, !dbg !1153
  br label %51, !dbg !1151

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ], !dbg !1151
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1082, metadata !DIExpression()), !dbg !1109
  %53 = icmp slt i32 %52, 0, !dbg !1154
  br i1 %53, label %54, label %79, !dbg !1155

54:                                               ; preds = %51
  %55 = tail call ptr @__errno_location() #43, !dbg !1156
  %56 = load i32, ptr %55, align 4, !dbg !1156, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !1093, metadata !DIExpression()), !dbg !1157
  %57 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #40, !dbg !1158
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !1096, metadata !DIExpression()), !dbg !1157
  %58 = icmp eq ptr %57, null, !dbg !1159
  br i1 %58, label %70, label %59, !dbg !1161

59:                                               ; preds = %54
  %60 = tail call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %57, ptr noundef nonnull @.str.18, ptr noundef null) #40, !dbg !1162
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !1083, metadata !DIExpression()), !dbg !1149
  br i1 %21, label %63, label %61, !dbg !1164

61:                                               ; preds = %59
  %62 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #40, !dbg !1165
  br label %65, !dbg !1164

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #40, !dbg !1166
  br label %65, !dbg !1164

65:                                               ; preds = %61, %63
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 %66, metadata !1082, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !1083, metadata !DIExpression()), !dbg !1149
  %67 = icmp sgt i32 %66, -1, !dbg !1167
  br i1 %67, label %79, label %68, !dbg !1168

68:                                               ; preds = %65
  %69 = load i32, ptr %55, align 4, !dbg !1169, !tbaa !914
  br label %70, !dbg !1168

70:                                               ; preds = %68, %54
  %71 = phi i32 [ %69, %68 ], [ %56, %54 ], !dbg !1169
  %72 = phi ptr [ %60, %68 ], [ null, %54 ]
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1097, metadata !DIExpression()), !dbg !1170
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !1171
  %74 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.18) #40, !dbg !1171
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %56, ptr noundef %73, ptr noundef %74) #40, !dbg !1171
  %75 = icmp eq ptr %72, null, !dbg !1172
  br i1 %75, label %127, label %76, !dbg !1174

76:                                               ; preds = %70
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !1175
  %78 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %72) #40, !dbg !1175
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %77, ptr noundef %78) #40, !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1086, metadata !DIExpression()), !dbg !1149
  br label %127

79:                                               ; preds = %65, %51
  %80 = phi ptr [ @.str.18, %51 ], [ %60, %65 ], !dbg !1176
  %81 = phi ptr [ null, %51 ], [ %60, %65 ], !dbg !1149
  %82 = phi i32 [ %52, %51 ], [ %66, %65 ], !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1082, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata ptr %81, metadata !1083, metadata !DIExpression()), !dbg !1149
  tail call void @llvm.dbg.value(metadata ptr %80, metadata !1086, metadata !DIExpression()), !dbg !1149
  %83 = tail call i32 @umask(i32 noundef %46) #40, !dbg !1177
  %84 = select i1 %19, ptr @.str.22, ptr @.str.21, !dbg !1178
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %84, i32 noundef 5) #40, !dbg !1178
  %86 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %80) #40, !dbg !1178
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #40, !dbg !1178
  tail call void @free(ptr noundef %81) #40, !dbg !1179
  br label %87

87:                                               ; preds = %79, %41
  %88 = phi i32 [ %82, %79 ], [ 1, %41 ], !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1082, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1100, metadata !DIExpression()), !dbg !1109
  br i1 %29, label %104, label %89, !dbg !1180

89:                                               ; preds = %87
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3) #40, !dbg !1181
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1100, metadata !DIExpression()), !dbg !1109
  br i1 %21, label %91, label %94, !dbg !1182

91:                                               ; preds = %89
  %92 = select i1 %19, ptr @.str.24, ptr @.str.23, !dbg !1183
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %92, i32 noundef 5) #40, !dbg !1183
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %93) #40, !dbg !1183
  br label %94, !dbg !1183

94:                                               ; preds = %91, %89
  %95 = tail call i32 @dup2(i32 noundef %88, i32 noundef 2) #40, !dbg !1185
  %96 = icmp slt i32 %95, 0, !dbg !1186
  br i1 %96, label %97, label %101, !dbg !1187

97:                                               ; preds = %94
  %98 = tail call ptr @__errno_location() #43, !dbg !1188
  %99 = load i32, ptr %98, align 4, !dbg !1188, !tbaa !914
  %100 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !1188
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %99, ptr noundef %100) #40, !dbg !1188
  unreachable, !dbg !1188

101:                                              ; preds = %94
  br i1 %27, label %102, label %104, !dbg !1189

102:                                              ; preds = %101
  %103 = tail call i32 @close(i32 noundef %88) #40, !dbg !1190
  br label %104, !dbg !1190

104:                                              ; preds = %101, %102, %87
  %105 = phi i32 [ %90, %102 ], [ %90, %101 ], [ 2, %87 ], !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !1100, metadata !DIExpression()), !dbg !1109
  %106 = load ptr, ptr @stderr, align 8, !dbg !1192, !tbaa !845
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1194, metadata !DIExpression()), !dbg !1200
  %107 = load i32, ptr %106, align 8, !dbg !1202, !tbaa !1203
  %108 = and i32 %107, 32, !dbg !1192
  %109 = icmp eq i32 %108, 0, !dbg !1192
  br i1 %109, label %110, label %127, !dbg !1206

110:                                              ; preds = %104
  %111 = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1207
  %112 = load i32, ptr @optind, align 4, !dbg !1208, !tbaa !914
  %113 = sext i32 %112 to i64, !dbg !1209
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113, !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %114, metadata !1106, metadata !DIExpression()), !dbg !1109
  %115 = load ptr, ptr %114, align 8, !dbg !1210, !tbaa !845
  %116 = tail call i32 @execvp(ptr noundef %115, ptr noundef nonnull %114) #40, !dbg !1211
  %117 = tail call ptr @__errno_location() #43, !dbg !1212
  %118 = load i32, ptr %117, align 4, !dbg !1212, !tbaa !914
  %119 = icmp eq i32 %118, 2, !dbg !1213
  %120 = select i1 %119, i32 127, i32 126, !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1107, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !1108, metadata !DIExpression()), !dbg !1109
  %121 = tail call i32 @dup2(i32 noundef %105, i32 noundef 2) #40, !dbg !1214
  %122 = icmp eq i32 %121, 2, !dbg !1216
  br i1 %122, label %123, label %127, !dbg !1217

123:                                              ; preds = %110
  %124 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !1218
  %125 = load ptr, ptr %114, align 8, !dbg !1218, !tbaa !845
  %126 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %125) #40, !dbg !1218
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %118, ptr noundef %124, ptr noundef %126) #40, !dbg !1218
  br label %127, !dbg !1218

127:                                              ; preds = %70, %76, %104, %123, %110
  %128 = phi i32 [ %9, %104 ], [ %120, %123 ], [ %120, %110 ], [ %9, %76 ], [ %9, %70 ], !dbg !1109
  ret i32 %128, !dbg !1219
}

; Function Attrs: nounwind
declare !dbg !1220 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1223 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1224 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1227 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1231 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1235 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1239 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1243 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1246 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1247 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1248 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1251 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1256 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1258, metadata !DIExpression()), !dbg !1259
  store ptr %0, ptr @file_name, align 8, !dbg !1260, !tbaa !845
  ret void, !dbg !1261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1262 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1268, !tbaa !1269
  ret void, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1272 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !845
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1278
  %3 = icmp eq i32 %2, 0, !dbg !1279
  br i1 %3, label %22, label %4, !dbg !1280

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1281, !tbaa !1269, !range !1282, !noundef !881
  %6 = icmp eq i8 %5, 0, !dbg !1281
  br i1 %6, label %11, label %7, !dbg !1283

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1284
  %9 = load i32, ptr %8, align 4, !dbg !1284, !tbaa !914
  %10 = icmp eq i32 %9, 32, !dbg !1285
  br i1 %10, label %22, label %11, !dbg !1286

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1.35, i32 noundef 5) #40, !dbg !1287
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1274, metadata !DIExpression()), !dbg !1288
  %13 = load ptr, ptr @file_name, align 8, !dbg !1289, !tbaa !845
  %14 = icmp eq ptr %13, null, !dbg !1289
  %15 = tail call ptr @__errno_location() #43, !dbg !1291
  %16 = load i32, ptr %15, align 4, !dbg !1291, !tbaa !914
  br i1 %14, label %19, label %17, !dbg !1292

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1293
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.36, ptr noundef %18, ptr noundef %12) #40, !dbg !1293
  br label %20, !dbg !1293

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.37, ptr noundef %12) #40, !dbg !1294
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1295, !tbaa !914
  tail call void @_exit(i32 noundef %21) #42, !dbg !1296
  unreachable, !dbg !1296

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1297, !tbaa !845
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1299
  %25 = icmp eq i32 %24, 0, !dbg !1300
  br i1 %25, label %28, label %26, !dbg !1301

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1302, !tbaa !914
  tail call void @_exit(i32 noundef %27) #42, !dbg !1303
  unreachable, !dbg !1303

28:                                               ; preds = %22
  ret void, !dbg !1304
}

; Function Attrs: noreturn
declare !dbg !1305 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1306 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1310, metadata !DIExpression()), !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1311, metadata !DIExpression()), !dbg !1314
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1312, metadata !DIExpression()), !dbg !1314
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1313, metadata !DIExpression()), !dbg !1314
  tail call fastcc void @flush_stdout(), !dbg !1315
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1316, !tbaa !845
  %6 = icmp eq ptr %5, null, !dbg !1316
  br i1 %6, label %8, label %7, !dbg !1318

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1319
  br label %12, !dbg !1319

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1320, !tbaa !845
  %10 = tail call ptr @getprogname() #41, !dbg !1320
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %10) #40, !dbg !1320
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1322
  ret void, !dbg !1323
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1324 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata i32 1, metadata !1328, metadata !DIExpression()), !dbg !1331
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1334
  %2 = icmp slt i32 %1, 0, !dbg !1335
  br i1 %2, label %6, label %3, !dbg !1336

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1337, !tbaa !845
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1337
  br label %6, !dbg !1337

6:                                                ; preds = %3, %0
  ret void, !dbg !1338
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1339 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1345
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1341, metadata !DIExpression()), !dbg !1346
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1342, metadata !DIExpression()), !dbg !1346
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1343, metadata !DIExpression()), !dbg !1346
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1344, metadata !DIExpression()), !dbg !1346
  %6 = load ptr, ptr @stderr, align 8, !dbg !1347, !tbaa !845
  call void @llvm.dbg.value(metadata ptr %6, metadata !1348, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr %2, metadata !1388, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr %3, metadata !1389, metadata !DIExpression()), !dbg !1390
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1392
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1393, !tbaa !914
  %9 = add i32 %8, 1, !dbg !1393
  store i32 %9, ptr @error_message_count, align 4, !dbg !1393, !tbaa !914
  %10 = icmp eq i32 %1, 0, !dbg !1394
  br i1 %10, label %20, label %11, !dbg !1396

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1397, metadata !DIExpression(), metadata !1345, metadata ptr %5, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i32 %1, metadata !1400, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1407
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1408
  call void @llvm.dbg.value(metadata ptr %12, metadata !1401, metadata !DIExpression()), !dbg !1405
  %13 = icmp eq ptr %12, null, !dbg !1409
  br i1 %13, label %14, label %16, !dbg !1411

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.39, ptr noundef nonnull @.str.5.40, i32 noundef 5) #40, !dbg !1412
  call void @llvm.dbg.value(metadata ptr %15, metadata !1401, metadata !DIExpression()), !dbg !1405
  br label %16, !dbg !1413

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1405
  call void @llvm.dbg.value(metadata ptr %17, metadata !1401, metadata !DIExpression()), !dbg !1405
  %18 = load ptr, ptr @stderr, align 8, !dbg !1414, !tbaa !845
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.41, ptr noundef %17) #40, !dbg !1414
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1415
  br label %20, !dbg !1416

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1417, !tbaa !845
  call void @llvm.dbg.value(metadata i32 10, metadata !1418, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata ptr %21, metadata !1423, metadata !DIExpression()), !dbg !1424
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1426
  %23 = load ptr, ptr %22, align 8, !dbg !1426, !tbaa !1427
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1426
  %25 = load ptr, ptr %24, align 8, !dbg !1426, !tbaa !1428
  %26 = icmp ult ptr %23, %25, !dbg !1426
  br i1 %26, label %29, label %27, !dbg !1426, !prof !1429

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1426
  br label %31, !dbg !1426

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1426
  store ptr %30, ptr %22, align 8, !dbg !1426, !tbaa !1427
  store i8 10, ptr %23, align 1, !dbg !1426, !tbaa !923
  br label %31, !dbg !1426

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1430, !tbaa !845
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1430
  %34 = icmp eq i32 %0, 0, !dbg !1431
  br i1 %34, label %36, label %35, !dbg !1433

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1434
  unreachable, !dbg !1434

36:                                               ; preds = %31
  ret void, !dbg !1435
}

declare !dbg !1436 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nounwind
declare !dbg !1439 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

declare !dbg !1442 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1445 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1448 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1451 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1464
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1458, metadata !DIExpression(), metadata !1464, metadata ptr %4, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1455, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1456, metadata !DIExpression()), !dbg !1465
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1457, metadata !DIExpression()), !dbg !1465
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1466
  call void @llvm.va_start(ptr nonnull %4), !dbg !1467
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1468
  call void @llvm.va_end(ptr nonnull %4), !dbg !1469
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1470
  ret void, !dbg !1470
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !413 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !424, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !425, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !427, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !428, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !429, metadata !DIExpression()), !dbg !1471
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1472, !tbaa !914
  %8 = icmp eq i32 %7, 0, !dbg !1472
  br i1 %8, label %23, label %9, !dbg !1474

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1475, !tbaa !914
  %11 = icmp eq i32 %10, %3, !dbg !1478
  br i1 %11, label %12, label %22, !dbg !1479

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1480, !tbaa !845
  %14 = icmp eq ptr %13, %2, !dbg !1481
  br i1 %14, label %36, label %15, !dbg !1482

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1483
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1484
  br i1 %18, label %19, label %22, !dbg !1484

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1485
  %21 = icmp eq i32 %20, 0, !dbg !1486
  br i1 %21, label %36, label %22, !dbg !1487

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1488, !tbaa !845
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1489, !tbaa !914
  br label %23, !dbg !1490

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1491
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1492, !tbaa !845
  %25 = icmp eq ptr %24, null, !dbg !1492
  br i1 %25, label %27, label %26, !dbg !1494

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1495
  br label %31, !dbg !1495

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !845
  %29 = tail call ptr @getprogname() #41, !dbg !1496
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.44, ptr noundef %29) #40, !dbg !1496
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1498, !tbaa !845
  %33 = icmp eq ptr %2, null, !dbg !1498
  %34 = select i1 %33, ptr @.str.3.45, ptr @.str.2.46, !dbg !1498
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1498
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1499
  br label %36, !dbg !1500

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1500
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1501 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1510, metadata !DIExpression(), metadata !1511, metadata ptr %6, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1505, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1506, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1507, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1508, metadata !DIExpression()), !dbg !1512
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1513
  call void @llvm.va_start(ptr nonnull %6), !dbg !1514
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1515
  call void @llvm.va_end(ptr nonnull %6), !dbg !1516
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1517
  ret void, !dbg !1517
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1518 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1545
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1522, metadata !DIExpression(), metadata !1545, metadata ptr %3, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1520, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1546
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !1547
  call void @llvm.va_start(ptr nonnull %3), !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1533, metadata !DIExpression()), !dbg !1546
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
  ], !dbg !1549

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !1550
  %6 = icmp ult i32 %5, 41, !dbg !1550
  br i1 %6, label %7, label %13, !dbg !1550

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1550
  %9 = load ptr, ptr %8, align 16, !dbg !1550
  %10 = zext nneg i32 %5 to i64, !dbg !1550
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !1550
  %12 = add nuw nsw i32 %5, 8, !dbg !1550
  store i32 %12, ptr %3, align 16, !dbg !1550, !DIAssignID !1551
  call void @llvm.dbg.assign(metadata i32 %12, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1551, metadata ptr %3, metadata !DIExpression()), !dbg !1546
  br label %17, !dbg !1550

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1550
  %15 = load ptr, ptr %14, align 8, !dbg !1550
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !1550
  store ptr %16, ptr %14, align 8, !dbg !1550, !DIAssignID !1552
  call void @llvm.dbg.assign(metadata ptr %16, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1552, metadata ptr %14, metadata !DIExpression()), !dbg !1546
  br label %17, !dbg !1550

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !1550
  %19 = load i32, ptr %18, align 4, !dbg !1550
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1534, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i32 %0, metadata !1554, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %19, metadata !1557, metadata !DIExpression()), !dbg !1559
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #40, !dbg !1561
  call void @llvm.dbg.value(metadata i32 %20, metadata !1558, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1533, metadata !DIExpression()), !dbg !1546
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !1562
  %23 = icmp ult i32 %22, 41, !dbg !1562
  br i1 %23, label %24, label %30, !dbg !1562

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1562
  %26 = load ptr, ptr %25, align 16, !dbg !1562
  %27 = zext nneg i32 %22 to i64, !dbg !1562
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !1562
  %29 = add nuw nsw i32 %22, 8, !dbg !1562
  store i32 %29, ptr %3, align 16, !dbg !1562, !DIAssignID !1563
  call void @llvm.dbg.assign(metadata i32 %29, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1563, metadata ptr %3, metadata !DIExpression()), !dbg !1546
  br label %34, !dbg !1562

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1562
  %32 = load ptr, ptr %31, align 8, !dbg !1562
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !1562
  store ptr %33, ptr %31, align 8, !dbg !1562, !DIAssignID !1564
  call void @llvm.dbg.assign(metadata ptr %33, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1564, metadata ptr %31, metadata !DIExpression()), !dbg !1546
  br label %34, !dbg !1562

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !1562
  %36 = load i32, ptr %35, align 4, !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1537, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %0, metadata !463, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %36, metadata !464, metadata !DIExpression()), !dbg !1566
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1568, !tbaa !914
  %38 = icmp sgt i32 %37, -1, !dbg !1570
  br i1 %38, label %39, label %51, !dbg !1571

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #40, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %40, metadata !465, metadata !DIExpression()), !dbg !1566
  %41 = icmp sgt i32 %40, -1, !dbg !1574
  br i1 %41, label %46, label %42, !dbg !1576

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #43, !dbg !1577
  %44 = load i32, ptr %43, align 4, !dbg !1577, !tbaa !914
  %45 = icmp eq i32 %44, 22, !dbg !1578
  br i1 %45, label %47, label %46, !dbg !1579

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1580, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %40, metadata !465, metadata !DIExpression()), !dbg !1566
  br label %107, !dbg !1582

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1554, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %36, metadata !1557, metadata !DIExpression()), !dbg !1583
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %48, metadata !1558, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %48, metadata !465, metadata !DIExpression()), !dbg !1566
  %49 = icmp sgt i32 %48, -1, !dbg !1587
  br i1 %49, label %50, label %107, !dbg !1589

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1590, !tbaa !914
  br label %55, !dbg !1591

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !1554, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %36, metadata !1557, metadata !DIExpression()), !dbg !1592
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %52, metadata !1558, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %52, metadata !465, metadata !DIExpression()), !dbg !1566
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !1595
  call void @llvm.dbg.value(metadata i32 %57, metadata !465, metadata !DIExpression()), !dbg !1566
  %58 = icmp sgt i32 %57, -1, !dbg !1596
  %59 = select i1 %58, i1 %56, i1 false, !dbg !1582
  br i1 %59, label %60, label %107, !dbg !1582

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #40, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %61, metadata !466, metadata !DIExpression()), !dbg !1598
  %62 = icmp slt i32 %61, 0, !dbg !1599
  br i1 %62, label %67, label %63, !dbg !1600

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !1601
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #40, !dbg !1602
  %66 = icmp eq i32 %65, -1, !dbg !1603
  br i1 %66, label %67, label %107, !dbg !1604

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #43, !dbg !1605
  %69 = load i32, ptr %68, align 4, !dbg !1605, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %69, metadata !469, metadata !DIExpression()), !dbg !1606
  %70 = call i32 @close(i32 noundef %57) #40, !dbg !1607
  store i32 %69, ptr %68, align 4, !dbg !1608, !tbaa !914
  call void @llvm.dbg.value(metadata i32 -1, metadata !465, metadata !DIExpression()), !dbg !1566
  br label %107, !dbg !1609

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !1610
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1533, metadata !DIExpression()), !dbg !1546
  br label %107, !dbg !1611

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !1612
  %75 = icmp ult i32 %74, 41, !dbg !1612
  br i1 %75, label %76, label %82, !dbg !1612

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1612
  %78 = load ptr, ptr %77, align 16, !dbg !1612
  %79 = zext nneg i32 %74 to i64, !dbg !1612
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !1612
  %81 = add nuw nsw i32 %74, 8, !dbg !1612
  store i32 %81, ptr %3, align 16, !dbg !1612, !DIAssignID !1613
  call void @llvm.dbg.assign(metadata i32 %81, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1613, metadata ptr %3, metadata !DIExpression()), !dbg !1546
  br label %86, !dbg !1612

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1612
  %84 = load ptr, ptr %83, align 8, !dbg !1612
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !1612
  store ptr %85, ptr %83, align 8, !dbg !1612, !DIAssignID !1614
  call void @llvm.dbg.assign(metadata ptr %85, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1614, metadata ptr %83, metadata !DIExpression()), !dbg !1546
  br label %86, !dbg !1612

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !1612
  %88 = load i32, ptr %87, align 4, !dbg !1612
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1539, metadata !DIExpression()), !dbg !1615
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #40, !dbg !1616
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !1533, metadata !DIExpression()), !dbg !1546
  br label %107, !dbg !1617

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !1618
  %92 = icmp ult i32 %91, 41, !dbg !1618
  br i1 %92, label %93, label %99, !dbg !1618

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1618
  %95 = load ptr, ptr %94, align 16, !dbg !1618
  %96 = zext nneg i32 %91 to i64, !dbg !1618
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !1618
  %98 = add nuw nsw i32 %91, 8, !dbg !1618
  store i32 %98, ptr %3, align 16, !dbg !1618, !DIAssignID !1619
  call void @llvm.dbg.assign(metadata i32 %98, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1619, metadata ptr %3, metadata !DIExpression()), !dbg !1546
  br label %103, !dbg !1618

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1618
  %101 = load ptr, ptr %100, align 8, !dbg !1618
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !1618
  store ptr %102, ptr %100, align 8, !dbg !1618, !DIAssignID !1620
  call void @llvm.dbg.assign(metadata ptr %102, metadata !1522, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1620, metadata ptr %100, metadata !DIExpression()), !dbg !1546
  br label %103, !dbg !1618

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !1618
  %105 = load ptr, ptr %104, align 8, !dbg !1618
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !1543, metadata !DIExpression()), !dbg !1621
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #40, !dbg !1622
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1533, metadata !DIExpression()), !dbg !1546
  br label %107, !dbg !1623

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !1624
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1533, metadata !DIExpression()), !dbg !1546
  call void @llvm.va_end(ptr nonnull %3), !dbg !1625
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !1626
  ret i32 %108, !dbg !1627
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, ptr nocapture noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !1628 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1632, metadata !DIExpression()), !dbg !1641
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1633, metadata !DIExpression()), !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1634, metadata !DIExpression()), !dbg !1641
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1635, metadata !DIExpression()), !dbg !1641
  %5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #40, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1636, metadata !DIExpression()), !dbg !1641
  %6 = icmp eq i32 %5, %0, !dbg !1643
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7, !dbg !1644
  br i1 %8, label %14, label %9, !dbg !1644

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 noundef %5, i32 noundef %0) #40, !dbg !1645
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1637, metadata !DIExpression()), !dbg !1646
  %11 = tail call ptr @__errno_location() #43, !dbg !1647
  %12 = load i32, ptr %11, align 4, !dbg !1647, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1640, metadata !DIExpression()), !dbg !1646
  %13 = tail call i32 @close(i32 noundef %5) #40, !dbg !1648
  store i32 %12, ptr %11, align 4, !dbg !1649, !tbaa !914
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1650
  ret i32 %15, !dbg !1651
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1657, metadata !DIExpression()), !dbg !1660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1658, metadata !DIExpression()), !dbg !1660
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #40, !dbg !1661
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1659, metadata !DIExpression()), !dbg !1660
  %5 = icmp eq ptr %4, null, !dbg !1662
  br i1 %5, label %6, label %7, !dbg !1664

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !1665
  unreachable, !dbg !1665

7:                                                ; preds = %3
  ret ptr %4, !dbg !1666
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #18 !dbg !1667 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1669, metadata !DIExpression()), !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1670, metadata !DIExpression()), !dbg !1680
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1671, metadata !DIExpression()), !dbg !1680
  %4 = tail call ptr @last_component(ptr noundef %0) #41, !dbg !1681
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1672, metadata !DIExpression()), !dbg !1680
  %5 = tail call i64 @base_len(ptr noundef %4) #41, !dbg !1682
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1673, metadata !DIExpression()), !dbg !1680
  %6 = ptrtoint ptr %4 to i64, !dbg !1683
  %7 = ptrtoint ptr %0 to i64, !dbg !1683
  %8 = sub i64 %6, %7, !dbg !1683
  %9 = add i64 %8, %5, !dbg !1684
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1674, metadata !DIExpression()), !dbg !1680
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1675, metadata !DIExpression()), !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1676, metadata !DIExpression()), !dbg !1680
  %11 = icmp eq i64 %5, 0, !dbg !1686
  br i1 %11, label %21, label %12, !dbg !1688

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i64 %9, !dbg !1689
  %14 = getelementptr i8, ptr %13, i64 -1, !dbg !1689
  %15 = load i8, ptr %14, align 1, !dbg !1689, !tbaa !923
  %16 = icmp eq i8 %15, 47, !dbg !1689
  br i1 %16, label %25, label %17, !dbg !1692

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1693, !tbaa !923
  %19 = icmp ne i8 %18, 47, !dbg !1693
  %20 = select i1 %19, i8 47, i8 0, !dbg !1694
  br label %25, !dbg !1694

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1695, !tbaa !923
  %23 = icmp eq i8 %22, 47, !dbg !1695
  %24 = select i1 %23, i8 46, i8 0, !dbg !1697
  br label %25, !dbg !1697

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1680
  %28 = zext i1 %26 to i64, !dbg !1680
  tail call void @llvm.dbg.value(metadata i8 %27, metadata !1676, metadata !DIExpression()), !dbg !1680
  %29 = add i64 %10, 1, !dbg !1698
  %30 = add i64 %29, %9, !dbg !1699
  %31 = add i64 %30, %28, !dbg !1700
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #46, !dbg !1701
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !1677, metadata !DIExpression()), !dbg !1680
  %33 = icmp eq ptr %32, null, !dbg !1702
  br i1 %33, label %41, label %34, !dbg !1704

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1705, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %0, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 %9, metadata !1713, metadata !DIExpression()), !dbg !1714
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #40, !dbg !1716
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1716
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !1678, metadata !DIExpression()), !dbg !1717
  store i8 %27, ptr %35, align 1, !dbg !1718, !tbaa !923
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1719
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1678, metadata !DIExpression()), !dbg !1717
  %37 = icmp eq ptr %2, null, !dbg !1720
  br i1 %37, label %39, label %38, !dbg !1722

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1723, !tbaa !845
  br label %39, !dbg !1724

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1705, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %1, metadata !1712, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %10, metadata !1713, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #40, !dbg !1727
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1727
  tail call void @llvm.dbg.value(metadata ptr %40, metadata !1678, metadata !DIExpression()), !dbg !1717
  store i8 0, ptr %40, align 1, !dbg !1728, !tbaa !923
  br label %41, !dbg !1729

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1730
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1731 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1734 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !1737 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1740, !tbaa !845
  ret ptr %1, !dbg !1741
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1742 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1756, metadata !DIExpression(), metadata !1771, metadata ptr %7, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1746, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1747, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1748, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1749, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1750, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1751, metadata !DIExpression()), !dbg !1773
  %8 = load i32, ptr @opterr, align 4, !dbg !1774, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1752, metadata !DIExpression()), !dbg !1773
  store i32 0, ptr @opterr, align 4, !dbg !1775, !tbaa !914
  %9 = icmp eq i32 %0, 2, !dbg !1776
  br i1 %9, label %10, label %15, !dbg !1777

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1778
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1753, metadata !DIExpression()), !dbg !1779
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1780

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #40, !dbg !1781
  br label %15, !dbg !1782

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #40, !dbg !1783
  call void @llvm.va_start(ptr nonnull %7), !dbg !1784
  %14 = load ptr, ptr @stdout, align 8, !dbg !1785, !tbaa !845
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #40, !dbg !1786
  call void @exit(i32 noundef 0) #42, !dbg !1787
  unreachable, !dbg !1787

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1788, !tbaa !914
  store i32 0, ptr @optind, align 4, !dbg !1789, !tbaa !914
  ret void, !dbg !1790
}

; Function Attrs: nounwind
declare !dbg !1791 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1795 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1814
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1809, metadata !DIExpression(), metadata !1814, metadata ptr %8, metadata !DIExpression()), !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1799, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1800, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1801, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1802, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1803, metadata !DIExpression()), !dbg !1816
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1816
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1805, metadata !DIExpression()), !dbg !1816
  %9 = load i32, ptr @opterr, align 4, !dbg !1817, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1806, metadata !DIExpression()), !dbg !1816
  store i32 1, ptr @opterr, align 4, !dbg !1818, !tbaa !914
  %10 = select i1 %5, ptr @.str.1.68, ptr @.str.63, !dbg !1819
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1807, metadata !DIExpression()), !dbg !1816
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1820
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1808, metadata !DIExpression()), !dbg !1816
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1821

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #40, !dbg !1822
  call void @llvm.va_start(ptr nonnull %8), !dbg !1823
  %13 = load ptr, ptr @stdout, align 8, !dbg !1824, !tbaa !845
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #40, !dbg !1825
  call void @exit(i32 noundef 0) #42, !dbg !1826
  unreachable, !dbg !1826

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1827, !tbaa !914
  br label %16, !dbg !1828

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #40, !dbg !1829
  br label %18, !dbg !1830

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1830, !tbaa !914
  ret void, !dbg !1831
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1832 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1834, metadata !DIExpression()), !dbg !1837
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !1838
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1835, metadata !DIExpression()), !dbg !1837
  %3 = icmp eq ptr %2, null, !dbg !1839
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1839
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1839
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1836, metadata !DIExpression()), !dbg !1837
  %6 = ptrtoint ptr %5 to i64, !dbg !1840
  %7 = ptrtoint ptr %0 to i64, !dbg !1840
  %8 = sub i64 %6, %7, !dbg !1840
  %9 = icmp sgt i64 %8, 6, !dbg !1842
  br i1 %9, label %10, label %19, !dbg !1843

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1844
  call void @llvm.dbg.value(metadata ptr %11, metadata !1845, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr @.str.73, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i64 7, metadata !1851, metadata !DIExpression()), !dbg !1852
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.73, i64 7), !dbg !1854
  %13 = icmp eq i32 %12, 0, !dbg !1855
  br i1 %13, label %14, label %19, !dbg !1856

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1834, metadata !DIExpression()), !dbg !1837
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.74, i64 noundef 3) #41, !dbg !1857
  %16 = icmp eq i32 %15, 0, !dbg !1860
  %17 = select i1 %16, i64 3, i64 0, !dbg !1861
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1861
  br label %19, !dbg !1861

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1837
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1836, metadata !DIExpression()), !dbg !1837
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1834, metadata !DIExpression()), !dbg !1837
  store ptr %20, ptr @program_name, align 8, !dbg !1862, !tbaa !845
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1863, !tbaa !845
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1864, !tbaa !845
  ret void, !dbg !1865
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1866 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !508 {
  %3 = alloca i32, align 4, !DIAssignID !1867
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !1867, metadata ptr %3, metadata !DIExpression()), !dbg !1868
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !523, metadata !DIExpression(), metadata !1869, metadata ptr %4, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !515, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !516, metadata !DIExpression()), !dbg !1868
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !1870
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !517, metadata !DIExpression()), !dbg !1868
  %6 = icmp eq ptr %5, %0, !dbg !1871
  br i1 %6, label %7, label %14, !dbg !1873

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !1874
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %4, metadata !1876, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata ptr %4, metadata !1885, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i32 0, metadata !1890, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 8, metadata !1891, metadata !DIExpression()), !dbg !1892
  store i64 0, ptr %4, align 8, !dbg !1894
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !1895
  %9 = icmp eq i64 %8, 2, !dbg !1897
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1898
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1868
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1899
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1899
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1868
  ret ptr %15, !dbg !1899
}

; Function Attrs: nounwind
declare !dbg !1900 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1911, metadata !DIExpression()), !dbg !1914
  %2 = tail call ptr @__errno_location() #43, !dbg !1915
  %3 = load i32, ptr %2, align 4, !dbg !1915, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1912, metadata !DIExpression()), !dbg !1914
  %4 = icmp eq ptr %0, null, !dbg !1916
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1916
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !1917
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1913, metadata !DIExpression()), !dbg !1914
  store i32 %3, ptr %2, align 4, !dbg !1918, !tbaa !914
  ret ptr %6, !dbg !1919
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !1920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1926, metadata !DIExpression()), !dbg !1927
  %2 = icmp eq ptr %0, null, !dbg !1928
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1928
  %4 = load i32, ptr %3, align 8, !dbg !1929, !tbaa !1930
  ret i32 %4, !dbg !1932
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1937, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1938, metadata !DIExpression()), !dbg !1939
  %3 = icmp eq ptr %0, null, !dbg !1940
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1940
  store i32 %1, ptr %4, align 8, !dbg !1941, !tbaa !1930
  ret void, !dbg !1942
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !1943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1947, metadata !DIExpression()), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1948, metadata !DIExpression()), !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1949, metadata !DIExpression()), !dbg !1955
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1950, metadata !DIExpression()), !dbg !1955
  %4 = icmp eq ptr %0, null, !dbg !1956
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1956
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1957
  %7 = lshr i8 %1, 5, !dbg !1958
  %8 = zext nneg i8 %7 to i64, !dbg !1958
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1959
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1951, metadata !DIExpression()), !dbg !1955
  %10 = and i8 %1, 31, !dbg !1960
  %11 = zext nneg i8 %10 to i32, !dbg !1960
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1953, metadata !DIExpression()), !dbg !1955
  %12 = load i32, ptr %9, align 4, !dbg !1961, !tbaa !914
  %13 = lshr i32 %12, %11, !dbg !1962
  %14 = and i32 %13, 1, !dbg !1963
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1954, metadata !DIExpression()), !dbg !1955
  %15 = xor i32 %13, %2, !dbg !1964
  %16 = and i32 %15, 1, !dbg !1964
  %17 = shl nuw i32 %16, %11, !dbg !1965
  %18 = xor i32 %17, %12, !dbg !1966
  store i32 %18, ptr %9, align 4, !dbg !1966, !tbaa !914
  ret i32 %14, !dbg !1967
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !1968 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1972, metadata !DIExpression()), !dbg !1975
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1973, metadata !DIExpression()), !dbg !1975
  %3 = icmp eq ptr %0, null, !dbg !1976
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1978
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1972, metadata !DIExpression()), !dbg !1975
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1979
  %6 = load i32, ptr %5, align 4, !dbg !1979, !tbaa !1980
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1974, metadata !DIExpression()), !dbg !1975
  store i32 %1, ptr %5, align 4, !dbg !1981, !tbaa !1980
  ret i32 %6, !dbg !1982
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1983 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1987, metadata !DIExpression()), !dbg !1990
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1988, metadata !DIExpression()), !dbg !1990
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1989, metadata !DIExpression()), !dbg !1990
  %4 = icmp eq ptr %0, null, !dbg !1991
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1993
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1987, metadata !DIExpression()), !dbg !1990
  store i32 10, ptr %5, align 8, !dbg !1994, !tbaa !1930
  %6 = icmp ne ptr %1, null, !dbg !1995
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1997
  br i1 %8, label %10, label %9, !dbg !1997

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !1998
  unreachable, !dbg !1998

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1999
  store ptr %1, ptr %11, align 8, !dbg !2000, !tbaa !2001
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2002
  store ptr %2, ptr %12, align 8, !dbg !2003, !tbaa !2004
  ret void, !dbg !2005
}

; Function Attrs: noreturn nounwind
declare !dbg !2006 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2007 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2011, metadata !DIExpression()), !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2012, metadata !DIExpression()), !dbg !2019
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2013, metadata !DIExpression()), !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2014, metadata !DIExpression()), !dbg !2019
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2015, metadata !DIExpression()), !dbg !2019
  %6 = icmp eq ptr %4, null, !dbg !2020
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2020
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2016, metadata !DIExpression()), !dbg !2019
  %8 = tail call ptr @__errno_location() #43, !dbg !2021
  %9 = load i32, ptr %8, align 4, !dbg !2021, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2017, metadata !DIExpression()), !dbg !2019
  %10 = load i32, ptr %7, align 8, !dbg !2022, !tbaa !1930
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2023
  %12 = load i32, ptr %11, align 4, !dbg !2023, !tbaa !1980
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2024
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2025
  %15 = load ptr, ptr %14, align 8, !dbg !2025, !tbaa !2001
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2026
  %17 = load ptr, ptr %16, align 8, !dbg !2026, !tbaa !2004
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2018, metadata !DIExpression()), !dbg !2019
  store i32 %9, ptr %8, align 4, !dbg !2028, !tbaa !914
  ret i64 %18, !dbg !2029
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2030 {
  %10 = alloca i32, align 4, !DIAssignID !2098
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2099
  %12 = alloca i32, align 4, !DIAssignID !2100
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2101
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2076, metadata !DIExpression(), metadata !2102, metadata ptr %14, metadata !DIExpression()), !dbg !2103
  %15 = alloca i32, align 4, !DIAssignID !2104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2079, metadata !DIExpression(), metadata !2104, metadata ptr %15, metadata !DIExpression()), !dbg !2105
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2036, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2038, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2039, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2040, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2041, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2042, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2043, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2044, metadata !DIExpression()), !dbg !2106
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2107
  %17 = icmp eq i64 %16, 1, !dbg !2108
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2048, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2049, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2106
  %18 = trunc i32 %5 to i8, !dbg !2109
  %19 = lshr i8 %18, 1, !dbg !2109
  %20 = and i8 %19, 1, !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2106
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2110

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2111
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2112
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2113
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2114
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2106
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2115
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2116
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2053, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2050, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2049, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2048, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2039, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2044, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2043, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2040, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2054), !dbg !2117
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2106
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
  ], !dbg !2118

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2040, metadata !DIExpression()), !dbg !2106
  br label %114, !dbg !2119

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2040, metadata !DIExpression()), !dbg !2106
  %43 = and i8 %37, 1, !dbg !2120
  %44 = icmp eq i8 %43, 0, !dbg !2120
  br i1 %44, label %45, label %114, !dbg !2119

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2122
  br i1 %46, label %114, label %47, !dbg !2125

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2122, !tbaa !923
  br label %114, !dbg !2122

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !609, metadata !DIExpression(), metadata !2100, metadata ptr %12, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !2101, metadata ptr %13, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr @.str.11.87, metadata !606, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %29, metadata !607, metadata !DIExpression()), !dbg !2126
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.11.87, i32 noundef 5) #40, !dbg !2130
  call void @llvm.dbg.value(metadata ptr %49, metadata !608, metadata !DIExpression()), !dbg !2126
  %50 = icmp eq ptr %49, @.str.11.87, !dbg !2131
  br i1 %50, label %51, label %60, !dbg !2133

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %13, metadata !2136, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata ptr %13, metadata !2144, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 8, metadata !2148, metadata !DIExpression()), !dbg !2149
  store i64 0, ptr %13, align 8, !dbg !2151
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2152
  %53 = icmp eq i64 %52, 3, !dbg !2154
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2155
  %57 = icmp eq i32 %29, 9, !dbg !2155
  %58 = select i1 %57, ptr @.str.10.89, ptr @.str.12.90, !dbg !2155
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2156
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2126
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2043, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.assign(metadata i1 undef, metadata !609, metadata !DIExpression(), metadata !2098, metadata ptr %10, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !610, metadata !DIExpression(), metadata !2099, metadata ptr %11, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata ptr @.str.12.90, metadata !606, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i32 %29, metadata !607, metadata !DIExpression()), !dbg !2157
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.12.90, i32 noundef 5) #40, !dbg !2159
  call void @llvm.dbg.value(metadata ptr %62, metadata !608, metadata !DIExpression()), !dbg !2157
  %63 = icmp eq ptr %62, @.str.12.90, !dbg !2160
  br i1 %63, label %64, label %73, !dbg !2161

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %11, metadata !2136, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata ptr %11, metadata !2144, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 8, metadata !2148, metadata !DIExpression()), !dbg !2166
  store i64 0, ptr %11, align 8, !dbg !2168
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2169
  %66 = icmp eq i64 %65, 3, !dbg !2170
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2171
  %70 = icmp eq i32 %29, 9, !dbg !2171
  %71 = select i1 %70, ptr @.str.10.89, ptr @.str.12.90, !dbg !2171
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2172
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2044, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2043, metadata !DIExpression()), !dbg !2106
  %76 = and i8 %37, 1, !dbg !2173
  %77 = icmp eq i8 %76, 0, !dbg !2173
  br i1 %77, label %78, label %93, !dbg !2174

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2056, metadata !DIExpression()), !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2046, metadata !DIExpression()), !dbg !2106
  %79 = load i8, ptr %74, align 1, !dbg !2176, !tbaa !923
  %80 = icmp eq i8 %79, 0, !dbg !2178
  br i1 %80, label %93, label %81, !dbg !2178

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2056, metadata !DIExpression()), !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2046, metadata !DIExpression()), !dbg !2106
  %85 = icmp ult i64 %84, %40, !dbg !2179
  br i1 %85, label %86, label %88, !dbg !2182

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2179
  store i8 %82, ptr %87, align 1, !dbg !2179, !tbaa !923
  br label %88, !dbg !2179

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2046, metadata !DIExpression()), !dbg !2106
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2183
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2056, metadata !DIExpression()), !dbg !2175
  %91 = load i8, ptr %90, align 1, !dbg !2176, !tbaa !923
  %92 = icmp eq i8 %91, 0, !dbg !2178
  br i1 %92, label %93, label %81, !dbg !2178, !llvm.loop !2184

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2048, metadata !DIExpression()), !dbg !2106
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2187
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2049, metadata !DIExpression()), !dbg !2106
  br label %114, !dbg !2188

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2106
  br label %98, !dbg !2189

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2050, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2106
  br label %98, !dbg !2190

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2114
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2050, metadata !DIExpression()), !dbg !2106
  %101 = and i8 %100, 1, !dbg !2191
  %102 = icmp eq i8 %101, 0, !dbg !2191
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2193
  br label %104, !dbg !2193

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2106
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2109
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2050, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2040, metadata !DIExpression()), !dbg !2106
  %107 = and i8 %106, 1, !dbg !2194
  %108 = icmp eq i8 %107, 0, !dbg !2194
  br i1 %108, label %109, label %114, !dbg !2196

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2197
  br i1 %110, label %114, label %111, !dbg !2200

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2197, !tbaa !923
  br label %114, !dbg !2197

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2106
  br label %114, !dbg !2201

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2202
  unreachable, !dbg !2202

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2186
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.89, %45 ], [ @.str.10.89, %47 ], [ @.str.10.89, %42 ], [ %34, %28 ], [ @.str.12.90, %109 ], [ @.str.12.90, %111 ], [ @.str.12.90, %104 ], [ @.str.10.89, %41 ], !dbg !2106
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2106
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2106
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2051, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2050, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2049, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2048, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2044, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2043, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2040, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2061, metadata !DIExpression()), !dbg !2203
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
  br label %138, !dbg !2204

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2186
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2111
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2115
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2116
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2205
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2206
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2053, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2039, metadata !DIExpression()), !dbg !2106
  %147 = icmp eq i64 %139, -1, !dbg !2207
  br i1 %147, label %148, label %152, !dbg !2208

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2209
  %150 = load i8, ptr %149, align 1, !dbg !2209, !tbaa !923
  %151 = icmp eq i8 %150, 0, !dbg !2210
  br i1 %151, label %612, label %154, !dbg !2211

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2212
  br i1 %153, label %612, label %154, !dbg !2211

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2067, metadata !DIExpression()), !dbg !2213
  br i1 %128, label %155, label %170, !dbg !2214

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2216
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2217
  br i1 %157, label %158, label %160, !dbg !2217

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2218
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2039, metadata !DIExpression()), !dbg !2106
  br label %160, !dbg !2219

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2039, metadata !DIExpression()), !dbg !2106
  %162 = icmp ugt i64 %156, %161, !dbg !2220
  br i1 %162, label %170, label %163, !dbg !2221

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2222
  call void @llvm.dbg.value(metadata ptr %164, metadata !2223, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata ptr %119, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i64 %120, metadata !2227, metadata !DIExpression()), !dbg !2228
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2230
  %166 = icmp ne i32 %165, 0, !dbg !2231
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2232
  %168 = xor i1 %166, true, !dbg !2232
  %169 = zext i1 %168 to i8, !dbg !2232
  br i1 %167, label %170, label %666, !dbg !2232

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2213
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2039, metadata !DIExpression()), !dbg !2106
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2233
  %175 = load i8, ptr %174, align 1, !dbg !2233, !tbaa !923
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2068, metadata !DIExpression()), !dbg !2213
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
  ], !dbg !2234

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2235

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2236

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2066, metadata !DIExpression()), !dbg !2213
  %179 = and i8 %144, 1, !dbg !2240
  %180 = icmp eq i8 %179, 0, !dbg !2240
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2240
  br i1 %181, label %182, label %198, !dbg !2240

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2242
  br i1 %183, label %184, label %186, !dbg !2246

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2242
  store i8 39, ptr %185, align 1, !dbg !2242, !tbaa !923
  br label %186, !dbg !2242

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2046, metadata !DIExpression()), !dbg !2106
  %188 = icmp ult i64 %187, %146, !dbg !2247
  br i1 %188, label %189, label %191, !dbg !2250

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2247
  store i8 36, ptr %190, align 1, !dbg !2247, !tbaa !923
  br label %191, !dbg !2247

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2250
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2046, metadata !DIExpression()), !dbg !2106
  %193 = icmp ult i64 %192, %146, !dbg !2251
  br i1 %193, label %194, label %196, !dbg !2254

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2251
  store i8 39, ptr %195, align 1, !dbg !2251, !tbaa !923
  br label %196, !dbg !2251

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2055, metadata !DIExpression()), !dbg !2106
  br label %198, !dbg !2255

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2106
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2046, metadata !DIExpression()), !dbg !2106
  %201 = icmp ult i64 %199, %146, !dbg !2256
  br i1 %201, label %202, label %204, !dbg !2259

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2256
  store i8 92, ptr %203, align 1, !dbg !2256, !tbaa !923
  br label %204, !dbg !2256

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2046, metadata !DIExpression()), !dbg !2106
  br i1 %125, label %206, label %476, !dbg !2260

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2262
  %208 = icmp ult i64 %207, %171, !dbg !2263
  br i1 %208, label %209, label %465, !dbg !2264

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2265
  %211 = load i8, ptr %210, align 1, !dbg !2265, !tbaa !923
  %212 = add i8 %211, -48, !dbg !2266
  %213 = icmp ult i8 %212, 10, !dbg !2266
  br i1 %213, label %214, label %465, !dbg !2266

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2267
  br i1 %215, label %216, label %218, !dbg !2271

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2267
  store i8 48, ptr %217, align 1, !dbg !2267, !tbaa !923
  br label %218, !dbg !2267

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2046, metadata !DIExpression()), !dbg !2106
  %220 = icmp ult i64 %219, %146, !dbg !2272
  br i1 %220, label %221, label %223, !dbg !2275

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2272
  store i8 48, ptr %222, align 1, !dbg !2272, !tbaa !923
  br label %223, !dbg !2272

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2046, metadata !DIExpression()), !dbg !2106
  br label %465, !dbg !2276

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2277

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2278

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2279

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2281

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2283
  %231 = icmp ult i64 %230, %171, !dbg !2284
  br i1 %231, label %232, label %465, !dbg !2285

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2286
  %234 = load i8, ptr %233, align 1, !dbg !2286, !tbaa !923
  %235 = icmp eq i8 %234, 63, !dbg !2287
  br i1 %235, label %236, label %465, !dbg !2288

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2289
  %238 = load i8, ptr %237, align 1, !dbg !2289, !tbaa !923
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
  ], !dbg !2290

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2291

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2061, metadata !DIExpression()), !dbg !2203
  %241 = icmp ult i64 %140, %146, !dbg !2293
  br i1 %241, label %242, label %244, !dbg !2296

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2293
  store i8 63, ptr %243, align 1, !dbg !2293, !tbaa !923
  br label %244, !dbg !2293

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2046, metadata !DIExpression()), !dbg !2106
  %246 = icmp ult i64 %245, %146, !dbg !2297
  br i1 %246, label %247, label %249, !dbg !2300

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2297
  store i8 34, ptr %248, align 1, !dbg !2297, !tbaa !923
  br label %249, !dbg !2297

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2300
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2046, metadata !DIExpression()), !dbg !2106
  %251 = icmp ult i64 %250, %146, !dbg !2301
  br i1 %251, label %252, label %254, !dbg !2304

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2301
  store i8 34, ptr %253, align 1, !dbg !2301, !tbaa !923
  br label %254, !dbg !2301

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2304
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2046, metadata !DIExpression()), !dbg !2106
  %256 = icmp ult i64 %255, %146, !dbg !2305
  br i1 %256, label %257, label %259, !dbg !2308

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2305
  store i8 63, ptr %258, align 1, !dbg !2305, !tbaa !923
  br label %259, !dbg !2305

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2308
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2046, metadata !DIExpression()), !dbg !2106
  br label %465, !dbg !2309

261:                                              ; preds = %170
  br label %272, !dbg !2310

262:                                              ; preds = %170
  br label %272, !dbg !2311

263:                                              ; preds = %170
  br label %270, !dbg !2312

264:                                              ; preds = %170
  br label %270, !dbg !2313

265:                                              ; preds = %170
  br label %272, !dbg !2314

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2315

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2316

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2319

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2321

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2322
  call void @llvm.dbg.label(metadata !2069), !dbg !2323
  br i1 %133, label %272, label %655, !dbg !2324

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2322
  call void @llvm.dbg.label(metadata !2072), !dbg !2326
  br i1 %124, label %520, label %476, !dbg !2327

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2328

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2329, !tbaa !923
  %277 = icmp eq i8 %276, 0, !dbg !2331
  br i1 %277, label %278, label %465, !dbg !2332

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2333
  br i1 %279, label %280, label %465, !dbg !2335

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2067, metadata !DIExpression()), !dbg !2213
  br label %281, !dbg !2336

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2067, metadata !DIExpression()), !dbg !2213
  br i1 %133, label %465, label %655, !dbg !2337

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2067, metadata !DIExpression()), !dbg !2213
  br i1 %132, label %284, label %465, !dbg !2339

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2340

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2343
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2345
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2345
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2047, metadata !DIExpression()), !dbg !2106
  %291 = icmp ult i64 %140, %290, !dbg !2346
  br i1 %291, label %292, label %294, !dbg !2349

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2346
  store i8 39, ptr %293, align 1, !dbg !2346, !tbaa !923
  br label %294, !dbg !2346

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2046, metadata !DIExpression()), !dbg !2106
  %296 = icmp ult i64 %295, %290, !dbg !2350
  br i1 %296, label %297, label %299, !dbg !2353

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2350
  store i8 92, ptr %298, align 1, !dbg !2350, !tbaa !923
  br label %299, !dbg !2350

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2046, metadata !DIExpression()), !dbg !2106
  %301 = icmp ult i64 %300, %290, !dbg !2354
  br i1 %301, label %302, label %304, !dbg !2357

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2354
  store i8 39, ptr %303, align 1, !dbg !2354, !tbaa !923
  br label %304, !dbg !2354

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2106
  br label %465, !dbg !2358

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2359

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2073, metadata !DIExpression()), !dbg !2360
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2361
  %309 = load ptr, ptr %308, align 8, !dbg !2361, !tbaa !845
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2361
  %312 = load i16, ptr %311, align 2, !dbg !2361, !tbaa !955
  %313 = and i16 %312, 16384, !dbg !2363
  %314 = icmp ne i16 %313, 0, !dbg !2363
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2075, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2360
  br label %355, !dbg !2364

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2365
  call void @llvm.dbg.value(metadata ptr %14, metadata !2136, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %14, metadata !2144, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 8, metadata !2148, metadata !DIExpression()), !dbg !2368
  store i64 0, ptr %14, align 8, !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2073, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2075, metadata !DIExpression()), !dbg !2360
  %316 = icmp eq i64 %171, -1, !dbg !2371
  br i1 %316, label %317, label %319, !dbg !2373

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2374
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2039, metadata !DIExpression()), !dbg !2106
  br label %319, !dbg !2375

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2039, metadata !DIExpression()), !dbg !2106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2376
  %321 = sub i64 %320, %145, !dbg !2377
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2378
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2083, metadata !DIExpression()), !dbg !2105
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2379

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2073, metadata !DIExpression()), !dbg !2360
  %324 = icmp ult i64 %145, %320, !dbg !2380
  br i1 %324, label %326, label %351, !dbg !2382

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2075, metadata !DIExpression()), !dbg !2360
  br label %351, !dbg !2383

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2073, metadata !DIExpression()), !dbg !2360
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2385
  %330 = load i8, ptr %329, align 1, !dbg !2385, !tbaa !923
  %331 = icmp eq i8 %330, 0, !dbg !2382
  br i1 %331, label %351, label %332, !dbg !2386

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2387
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2073, metadata !DIExpression()), !dbg !2360
  %334 = add i64 %333, %145, !dbg !2388
  %335 = icmp eq i64 %333, %321, !dbg !2380
  br i1 %335, label %351, label %326, !dbg !2382, !llvm.loop !2389

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2084, metadata !DIExpression()), !dbg !2390
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2391
  %339 = and i1 %338, %132, !dbg !2391
  br i1 %339, label %340, label %347, !dbg !2391

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2084, metadata !DIExpression()), !dbg !2390
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2392
  %343 = load i8, ptr %342, align 1, !dbg !2392, !tbaa !923
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2394

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2395
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2084, metadata !DIExpression()), !dbg !2390
  %346 = icmp eq i64 %345, %322, !dbg !2396
  br i1 %346, label %347, label %340, !dbg !2397, !llvm.loop !2398

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2400, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %348, metadata !2402, metadata !DIExpression()), !dbg !2410
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2412
  %350 = icmp ne i32 %349, 0, !dbg !2413
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2075, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2073, metadata !DIExpression()), !dbg !2360
  br label %351, !dbg !2414

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2075, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2073, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2416
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2075, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2073, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2416
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2213
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2417
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2417
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2075, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2073, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2039, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2067, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2213
  %359 = icmp ult i64 %357, 2, !dbg !2418
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2419
  br i1 %361, label %461, label %362, !dbg !2419

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2420
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2092, metadata !DIExpression()), !dbg !2421
  br label %364, !dbg !2422

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2106
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2205
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2203
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2213
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2423
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2046, metadata !DIExpression()), !dbg !2106
  br i1 %360, label %417, label %371, !dbg !2424

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2429

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2066, metadata !DIExpression()), !dbg !2213
  %373 = and i8 %366, 1, !dbg !2432
  %374 = icmp eq i8 %373, 0, !dbg !2432
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2432
  br i1 %375, label %376, label %392, !dbg !2432

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2434
  br i1 %377, label %378, label %380, !dbg !2438

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2434
  store i8 39, ptr %379, align 1, !dbg !2434, !tbaa !923
  br label %380, !dbg !2434

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2046, metadata !DIExpression()), !dbg !2106
  %382 = icmp ult i64 %381, %146, !dbg !2439
  br i1 %382, label %383, label %385, !dbg !2442

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2439
  store i8 36, ptr %384, align 1, !dbg !2439, !tbaa !923
  br label %385, !dbg !2439

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2442
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2046, metadata !DIExpression()), !dbg !2106
  %387 = icmp ult i64 %386, %146, !dbg !2443
  br i1 %387, label %388, label %390, !dbg !2446

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2443
  store i8 39, ptr %389, align 1, !dbg !2443, !tbaa !923
  br label %390, !dbg !2443

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2055, metadata !DIExpression()), !dbg !2106
  br label %392, !dbg !2447

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2106
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2046, metadata !DIExpression()), !dbg !2106
  %395 = icmp ult i64 %393, %146, !dbg !2448
  br i1 %395, label %396, label %398, !dbg !2451

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2448
  store i8 92, ptr %397, align 1, !dbg !2448, !tbaa !923
  br label %398, !dbg !2448

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2451
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2046, metadata !DIExpression()), !dbg !2106
  %400 = icmp ult i64 %399, %146, !dbg !2452
  br i1 %400, label %401, label %405, !dbg !2455

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2452
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2452
  store i8 %403, ptr %404, align 1, !dbg !2452, !tbaa !923
  br label %405, !dbg !2452

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2455
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2046, metadata !DIExpression()), !dbg !2106
  %407 = icmp ult i64 %406, %146, !dbg !2456
  br i1 %407, label %408, label %413, !dbg !2459

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2456
  %411 = or disjoint i8 %410, 48, !dbg !2456
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2456
  store i8 %411, ptr %412, align 1, !dbg !2456, !tbaa !923
  br label %413, !dbg !2456

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2046, metadata !DIExpression()), !dbg !2106
  %415 = and i8 %370, 7, !dbg !2460
  %416 = or disjoint i8 %415, 48, !dbg !2461
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2068, metadata !DIExpression()), !dbg !2213
  br label %426, !dbg !2462

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2463
  %419 = icmp eq i8 %418, 0, !dbg !2463
  br i1 %419, label %426, label %420, !dbg !2465

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2466
  br i1 %421, label %422, label %424, !dbg !2470

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2466
  store i8 92, ptr %423, align 1, !dbg !2466, !tbaa !923
  br label %424, !dbg !2466

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2213
  br label %426, !dbg !2471

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2106
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2205
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2213
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2213
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2046, metadata !DIExpression()), !dbg !2106
  %432 = add i64 %367, 1, !dbg !2472
  %433 = icmp ugt i64 %363, %432, !dbg !2474
  br i1 %433, label %434, label %463, !dbg !2475

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2476
  %436 = icmp ne i8 %435, 0, !dbg !2476
  %437 = and i8 %430, 1, !dbg !2476
  %438 = icmp eq i8 %437, 0, !dbg !2476
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2476
  br i1 %439, label %440, label %451, !dbg !2476

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2479
  br i1 %441, label %442, label %444, !dbg !2483

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2479
  store i8 39, ptr %443, align 1, !dbg !2479, !tbaa !923
  br label %444, !dbg !2479

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2483
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2046, metadata !DIExpression()), !dbg !2106
  %446 = icmp ult i64 %445, %146, !dbg !2484
  br i1 %446, label %447, label %449, !dbg !2487

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2484
  store i8 39, ptr %448, align 1, !dbg !2484, !tbaa !923
  br label %449, !dbg !2484

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2106
  br label %451, !dbg !2488

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2489
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2046, metadata !DIExpression()), !dbg !2106
  %454 = icmp ult i64 %452, %146, !dbg !2490
  br i1 %454, label %455, label %457, !dbg !2493

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2490
  store i8 %431, ptr %456, align 1, !dbg !2490, !tbaa !923
  br label %457, !dbg !2490

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2061, metadata !DIExpression()), !dbg !2203
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2494
  %460 = load i8, ptr %459, align 1, !dbg !2494, !tbaa !923
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2068, metadata !DIExpression()), !dbg !2213
  br label %364, !dbg !2495, !llvm.loop !2496

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2067, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2039, metadata !DIExpression()), !dbg !2106
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2067, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2039, metadata !DIExpression()), !dbg !2106
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2499
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2106
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2111
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2106
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2106
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2203
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2213
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2213
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2213
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2067, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2063, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2039, metadata !DIExpression()), !dbg !2106
  br i1 %126, label %487, label %476, !dbg !2500

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
  br i1 %137, label %488, label %509, !dbg !2502

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2503

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
  %499 = lshr i8 %490, 5, !dbg !2504
  %500 = zext nneg i8 %499 to i64, !dbg !2504
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2505
  %502 = load i32, ptr %501, align 4, !dbg !2505, !tbaa !914
  %503 = and i8 %490, 31, !dbg !2506
  %504 = zext nneg i8 %503 to i32, !dbg !2506
  %505 = shl nuw i32 1, %504, !dbg !2507
  %506 = and i32 %502, %505, !dbg !2507
  %507 = icmp eq i32 %506, 0, !dbg !2507
  %508 = and i1 %172, %507, !dbg !2508
  br i1 %508, label %558, label %520, !dbg !2508

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
  br i1 %172, label %558, label %520, !dbg !2509

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2499
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2106
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2111
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2115
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2205
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2510
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2213
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2213
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2067, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2039, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2095), !dbg !2511
  br i1 %131, label %530, label %659, !dbg !2512

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2066, metadata !DIExpression()), !dbg !2213
  %531 = and i8 %525, 1, !dbg !2514
  %532 = icmp eq i8 %531, 0, !dbg !2514
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2514
  br i1 %533, label %534, label %550, !dbg !2514

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2516
  br i1 %535, label %536, label %538, !dbg !2520

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2516
  store i8 39, ptr %537, align 1, !dbg !2516, !tbaa !923
  br label %538, !dbg !2516

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2520
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2046, metadata !DIExpression()), !dbg !2106
  %540 = icmp ult i64 %539, %529, !dbg !2521
  br i1 %540, label %541, label %543, !dbg !2524

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2521
  store i8 36, ptr %542, align 1, !dbg !2521, !tbaa !923
  br label %543, !dbg !2521

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2524
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2046, metadata !DIExpression()), !dbg !2106
  %545 = icmp ult i64 %544, %529, !dbg !2525
  br i1 %545, label %546, label %548, !dbg !2528

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2525
  store i8 39, ptr %547, align 1, !dbg !2525, !tbaa !923
  br label %548, !dbg !2525

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2055, metadata !DIExpression()), !dbg !2106
  br label %550, !dbg !2529

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2213
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2046, metadata !DIExpression()), !dbg !2106
  %553 = icmp ult i64 %551, %529, !dbg !2530
  br i1 %553, label %554, label %556, !dbg !2533

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2530
  store i8 92, ptr %555, align 1, !dbg !2530, !tbaa !923
  br label %556, !dbg !2530

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2533
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2067, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2039, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2096), !dbg !2534
  br label %585, !dbg !2535

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2499
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2106
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2111
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2115
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2205
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2510
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2213
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2213
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2538
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2068, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2067, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2066, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2039, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.label(metadata !2096), !dbg !2534
  %569 = and i8 %563, 1, !dbg !2535
  %570 = icmp ne i8 %569, 0, !dbg !2535
  %571 = and i8 %565, 1, !dbg !2535
  %572 = icmp eq i8 %571, 0, !dbg !2535
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2535
  br i1 %573, label %574, label %585, !dbg !2535

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2539
  br i1 %575, label %576, label %578, !dbg !2543

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2539
  store i8 39, ptr %577, align 1, !dbg !2539, !tbaa !923
  br label %578, !dbg !2539

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2046, metadata !DIExpression()), !dbg !2106
  %580 = icmp ult i64 %579, %568, !dbg !2544
  br i1 %580, label %581, label %583, !dbg !2547

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2544
  store i8 39, ptr %582, align 1, !dbg !2544, !tbaa !923
  br label %583, !dbg !2544

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2547
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2106
  br label %585, !dbg !2548

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2213
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2046, metadata !DIExpression()), !dbg !2106
  %595 = icmp ult i64 %593, %586, !dbg !2549
  br i1 %595, label %596, label %598, !dbg !2552

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2549
  store i8 %587, ptr %597, align 1, !dbg !2549, !tbaa !923
  br label %598, !dbg !2549

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2552
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2046, metadata !DIExpression()), !dbg !2106
  %600 = icmp eq i8 %588, 0, !dbg !2553
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2555
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2053, metadata !DIExpression()), !dbg !2106
  br label %602, !dbg !2556

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2499
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2106
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2111
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2115
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2116
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2205
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2510
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2061, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2055, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2053, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2039, metadata !DIExpression()), !dbg !2106
  %611 = add i64 %609, 1, !dbg !2557
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2061, metadata !DIExpression()), !dbg !2203
  br label %138, !dbg !2558, !llvm.loop !2559

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2037, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2053, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2052, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2047, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2046, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2039, metadata !DIExpression()), !dbg !2106
  %613 = icmp eq i64 %140, 0, !dbg !2561
  %614 = and i1 %132, %613, !dbg !2563
  %615 = xor i1 %614, true, !dbg !2563
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2563
  br i1 %616, label %617, label %655, !dbg !2563

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2564
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2564
  br i1 %621, label %622, label %631, !dbg !2564

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2566
  %624 = icmp eq i8 %623, 0, !dbg !2566
  br i1 %624, label %627, label %625, !dbg !2569

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2570
  br label %672, !dbg !2571

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2572
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2574
  br i1 %630, label %28, label %631, !dbg !2574

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2575
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2577
  br i1 %634, label %635, label %650, !dbg !2577

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2048, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2046, metadata !DIExpression()), !dbg !2106
  %636 = load i8, ptr %119, align 1, !dbg !2578, !tbaa !923
  %637 = icmp eq i8 %636, 0, !dbg !2581
  br i1 %637, label %650, label %638, !dbg !2581

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2048, metadata !DIExpression()), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2046, metadata !DIExpression()), !dbg !2106
  %642 = icmp ult i64 %641, %146, !dbg !2582
  br i1 %642, label %643, label %645, !dbg !2585

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2582
  store i8 %639, ptr %644, align 1, !dbg !2582, !tbaa !923
  br label %645, !dbg !2582

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2046, metadata !DIExpression()), !dbg !2106
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2586
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2048, metadata !DIExpression()), !dbg !2106
  %648 = load i8, ptr %647, align 1, !dbg !2578, !tbaa !923
  %649 = icmp eq i8 %648, 0, !dbg !2581
  br i1 %649, label %650, label %638, !dbg !2581, !llvm.loop !2587

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2186
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2046, metadata !DIExpression()), !dbg !2106
  %652 = icmp ult i64 %651, %146, !dbg !2589
  br i1 %652, label %653, label %672, !dbg !2591

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2592
  store i8 0, ptr %654, align 1, !dbg !2593, !tbaa !923
  br label %672, !dbg !2592

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2097), !dbg !2594
  %657 = icmp eq i8 %123, 0, !dbg !2595
  %658 = select i1 %657, i32 2, i32 4, !dbg !2595
  br label %666, !dbg !2595

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2097), !dbg !2594
  %662 = icmp eq i32 %115, 2, !dbg !2597
  %663 = icmp eq i8 %123, 0, !dbg !2595
  %664 = select i1 %663, i32 2, i32 4, !dbg !2595
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2595
  br label %666, !dbg !2595

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2040, metadata !DIExpression()), !dbg !2106
  %670 = and i32 %5, -3, !dbg !2598
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2599
  br label %672, !dbg !2600

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2601
}

; Function Attrs: nounwind
declare !dbg !2602 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2605 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2607 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2611, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2612, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %0, metadata !2615, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 %1, metadata !2620, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr null, metadata !2621, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr %2, metadata !2622, metadata !DIExpression()), !dbg !2628
  %4 = icmp eq ptr %2, null, !dbg !2630
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2630
  call void @llvm.dbg.value(metadata ptr %5, metadata !2623, metadata !DIExpression()), !dbg !2628
  %6 = tail call ptr @__errno_location() #43, !dbg !2631
  %7 = load i32, ptr %6, align 4, !dbg !2631, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %7, metadata !2624, metadata !DIExpression()), !dbg !2628
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2632
  %9 = load i32, ptr %8, align 4, !dbg !2632, !tbaa !1980
  %10 = or i32 %9, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %10, metadata !2625, metadata !DIExpression()), !dbg !2628
  %11 = load i32, ptr %5, align 8, !dbg !2634, !tbaa !1930
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2635
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2636
  %14 = load ptr, ptr %13, align 8, !dbg !2636, !tbaa !2001
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2637
  %16 = load ptr, ptr %15, align 8, !dbg !2637, !tbaa !2004
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2638
  %18 = add i64 %17, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %18, metadata !2626, metadata !DIExpression()), !dbg !2628
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #46, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %19, metadata !2627, metadata !DIExpression()), !dbg !2628
  %20 = load i32, ptr %5, align 8, !dbg !2641, !tbaa !1930
  %21 = load ptr, ptr %13, align 8, !dbg !2642, !tbaa !2001
  %22 = load ptr, ptr %15, align 8, !dbg !2643, !tbaa !2004
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2644
  store i32 %7, ptr %6, align 4, !dbg !2645, !tbaa !914
  ret ptr %19, !dbg !2646
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2616 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2615, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2620, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2621, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2622, metadata !DIExpression()), !dbg !2647
  %5 = icmp eq ptr %3, null, !dbg !2648
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2648
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2623, metadata !DIExpression()), !dbg !2647
  %7 = tail call ptr @__errno_location() #43, !dbg !2649
  %8 = load i32, ptr %7, align 4, !dbg !2649, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2624, metadata !DIExpression()), !dbg !2647
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2650
  %10 = load i32, ptr %9, align 4, !dbg !2650, !tbaa !1980
  %11 = icmp eq ptr %2, null, !dbg !2651
  %12 = zext i1 %11 to i32, !dbg !2651
  %13 = or i32 %10, %12, !dbg !2652
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2625, metadata !DIExpression()), !dbg !2647
  %14 = load i32, ptr %6, align 8, !dbg !2653, !tbaa !1930
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2654
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2655
  %17 = load ptr, ptr %16, align 8, !dbg !2655, !tbaa !2001
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2656
  %19 = load ptr, ptr %18, align 8, !dbg !2656, !tbaa !2004
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2657
  %21 = add i64 %20, 1, !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2626, metadata !DIExpression()), !dbg !2647
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #46, !dbg !2659
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2627, metadata !DIExpression()), !dbg !2647
  %23 = load i32, ptr %6, align 8, !dbg !2660, !tbaa !1930
  %24 = load ptr, ptr %16, align 8, !dbg !2661, !tbaa !2001
  %25 = load ptr, ptr %18, align 8, !dbg !2662, !tbaa !2004
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2663
  store i32 %8, ptr %7, align 4, !dbg !2664, !tbaa !914
  br i1 %11, label %28, label %27, !dbg !2665

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2666, !tbaa !2668
  br label %28, !dbg !2669

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2670
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2671 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2676, !tbaa !845
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2673, metadata !DIExpression()), !dbg !2677
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2674, metadata !DIExpression()), !dbg !2678
  %2 = load i32, ptr @nslots, align 4, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2674, metadata !DIExpression()), !dbg !2678
  %3 = icmp sgt i32 %2, 1, !dbg !2679
  br i1 %3, label %4, label %6, !dbg !2681

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2679
  br label %10, !dbg !2681

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2682
  %8 = load ptr, ptr %7, align 8, !dbg !2682, !tbaa !2684
  %9 = icmp eq ptr %8, @slot0, !dbg !2686
  br i1 %9, label %17, label %16, !dbg !2687

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2674, metadata !DIExpression()), !dbg !2678
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2688
  %13 = load ptr, ptr %12, align 8, !dbg !2688, !tbaa !2684
  tail call void @free(ptr noundef %13) #40, !dbg !2689
  %14 = add nuw nsw i64 %11, 1, !dbg !2690
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2674, metadata !DIExpression()), !dbg !2678
  %15 = icmp eq i64 %14, %5, !dbg !2679
  br i1 %15, label %6, label %10, !dbg !2681, !llvm.loop !2691

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2693
  store i64 256, ptr @slotvec0, align 8, !dbg !2695, !tbaa !2696
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2697, !tbaa !2684
  br label %17, !dbg !2698

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2699
  br i1 %18, label %20, label %19, !dbg !2701

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2702
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2704, !tbaa !845
  br label %20, !dbg !2705

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2706, !tbaa !914
  ret void, !dbg !2707
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2708 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2710, metadata !DIExpression()), !dbg !2712
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2711, metadata !DIExpression()), !dbg !2712
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2713
  ret ptr %3, !dbg !2714
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2715 {
  %5 = alloca i64, align 8, !DIAssignID !2735
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2729, metadata !DIExpression(), metadata !2735, metadata ptr %5, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2719, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2720, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2721, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2722, metadata !DIExpression()), !dbg !2737
  %6 = tail call ptr @__errno_location() #43, !dbg !2738
  %7 = load i32, ptr %6, align 4, !dbg !2738, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2723, metadata !DIExpression()), !dbg !2737
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2739, !tbaa !845
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2724, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2725, metadata !DIExpression()), !dbg !2737
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2740
  br i1 %9, label %10, label %11, !dbg !2740

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2742
  unreachable, !dbg !2742

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2743, !tbaa !914
  %13 = icmp sgt i32 %12, %0, !dbg !2744
  br i1 %13, label %32, label %14, !dbg !2745

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2746
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2736
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2747
  %16 = sext i32 %12 to i64, !dbg !2748
  store i64 %16, ptr %5, align 8, !dbg !2749, !tbaa !2668, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2729, metadata !DIExpression(), metadata !2750, metadata ptr %5, metadata !DIExpression()), !dbg !2736
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2751
  %18 = add nuw nsw i32 %0, 1, !dbg !2752
  %19 = sub i32 %18, %12, !dbg !2753
  %20 = sext i32 %19 to i64, !dbg !2754
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2755
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2724, metadata !DIExpression()), !dbg !2737
  store ptr %21, ptr @slotvec, align 8, !dbg !2756, !tbaa !845
  br i1 %15, label %22, label %23, !dbg !2757

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2758, !tbaa.struct !2760
  br label %23, !dbg !2761

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2762, !tbaa !914
  %25 = sext i32 %24 to i64, !dbg !2763
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2763
  %27 = load i64, ptr %5, align 8, !dbg !2764, !tbaa !2668
  %28 = sub nsw i64 %27, %25, !dbg !2765
  %29 = shl i64 %28, 4, !dbg !2766
  call void @llvm.dbg.value(metadata ptr %26, metadata !2144, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 %29, metadata !2148, metadata !DIExpression()), !dbg !2767
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !2769
  %30 = load i64, ptr %5, align 8, !dbg !2770, !tbaa !2668
  %31 = trunc i64 %30 to i32, !dbg !2770
  store i32 %31, ptr @nslots, align 4, !dbg !2771, !tbaa !914
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !2772
  br label %32, !dbg !2773

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2737
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2724, metadata !DIExpression()), !dbg !2737
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2774
  %36 = load i64, ptr %35, align 8, !dbg !2775, !tbaa !2696
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2730, metadata !DIExpression()), !dbg !2776
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2777
  %38 = load ptr, ptr %37, align 8, !dbg !2777, !tbaa !2684
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2732, metadata !DIExpression()), !dbg !2776
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2778
  %40 = load i32, ptr %39, align 4, !dbg !2778, !tbaa !1980
  %41 = or i32 %40, 1, !dbg !2779
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2733, metadata !DIExpression()), !dbg !2776
  %42 = load i32, ptr %3, align 8, !dbg !2780, !tbaa !1930
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2781
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2782
  %45 = load ptr, ptr %44, align 8, !dbg !2782, !tbaa !2001
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2783
  %47 = load ptr, ptr %46, align 8, !dbg !2783, !tbaa !2004
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2734, metadata !DIExpression()), !dbg !2776
  %49 = icmp ugt i64 %36, %48, !dbg !2785
  br i1 %49, label %60, label %50, !dbg !2787

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2730, metadata !DIExpression()), !dbg !2776
  store i64 %51, ptr %35, align 8, !dbg !2790, !tbaa !2696
  %52 = icmp eq ptr %38, @slot0, !dbg !2791
  br i1 %52, label %54, label %53, !dbg !2793

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !2794
  br label %54, !dbg !2794

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #46, !dbg !2795
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2732, metadata !DIExpression()), !dbg !2776
  store ptr %55, ptr %37, align 8, !dbg !2796, !tbaa !2684
  %56 = load i32, ptr %3, align 8, !dbg !2797, !tbaa !1930
  %57 = load ptr, ptr %44, align 8, !dbg !2798, !tbaa !2001
  %58 = load ptr, ptr %46, align 8, !dbg !2799, !tbaa !2004
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2800
  br label %60, !dbg !2801

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2732, metadata !DIExpression()), !dbg !2776
  store i32 %7, ptr %6, align 4, !dbg !2802, !tbaa !914
  ret ptr %61, !dbg !2803
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2804 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2809, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2810, metadata !DIExpression()), !dbg !2811
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2812
  ret ptr %4, !dbg !2813
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2814 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2710, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %0, metadata !2711, metadata !DIExpression()), !dbg !2818
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2820
  ret ptr %2, !dbg !2821
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2826, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2827, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %0, metadata !2809, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()), !dbg !2829
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2831
  ret ptr %3, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2833 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2841
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2840, metadata !DIExpression(), metadata !2841, metadata ptr %4, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2838, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2843
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2856, !alias.scope !2844, !DIAssignID !2857
  call void @llvm.dbg.assign(metadata i8 0, metadata !2840, metadata !DIExpression(), metadata !2857, metadata ptr %4, metadata !DIExpression()), !dbg !2842
  %5 = icmp eq i32 %1, 10, !dbg !2858
  br i1 %5, label %6, label %7, !dbg !2860

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2861, !noalias !2844
  unreachable, !dbg !2861

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2862, !tbaa !1930, !alias.scope !2844, !DIAssignID !2863
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2863, metadata ptr %4, metadata !DIExpression()), !dbg !2842
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2865
  ret ptr %8, !dbg !2866
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2867 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2876, metadata ptr %5, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2871, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2872, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2873, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879), !dbg !2882
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2853, metadata !DIExpression()), !dbg !2885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2885, !alias.scope !2879, !DIAssignID !2886
  call void @llvm.dbg.assign(metadata i8 0, metadata !2875, metadata !DIExpression(), metadata !2886, metadata ptr %5, metadata !DIExpression()), !dbg !2877
  %6 = icmp eq i32 %1, 10, !dbg !2887
  br i1 %6, label %7, label %8, !dbg !2888

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2889, !noalias !2879
  unreachable, !dbg !2889

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2890, !tbaa !1930, !alias.scope !2879, !DIAssignID !2891
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2875, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2891, metadata ptr %5, metadata !DIExpression()), !dbg !2877
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2892
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2893
  ret ptr %9, !dbg !2894
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2895 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2901
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2899, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2840, metadata !DIExpression(), metadata !2901, metadata ptr %3, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2837, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %1, metadata !2839, metadata !DIExpression()), !dbg !2903
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2905
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906), !dbg !2909
  call void @llvm.dbg.value(metadata i32 %0, metadata !2848, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2853, metadata !DIExpression()), !dbg !2912
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2912, !alias.scope !2906, !DIAssignID !2913
  call void @llvm.dbg.assign(metadata i8 0, metadata !2840, metadata !DIExpression(), metadata !2913, metadata ptr %3, metadata !DIExpression()), !dbg !2903
  %4 = icmp eq i32 %0, 10, !dbg !2914
  br i1 %4, label %5, label %6, !dbg !2915

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !2916, !noalias !2906
  unreachable, !dbg !2916

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2917, !tbaa !1930, !alias.scope !2906, !DIAssignID !2918
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2918, metadata ptr %3, metadata !DIExpression()), !dbg !2903
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2919
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2920
  ret ptr %7, !dbg !2921
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2922 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2929
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()), !dbg !2930
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2927, metadata !DIExpression()), !dbg !2930
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2928, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2875, metadata !DIExpression(), metadata !2929, metadata ptr %4, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 0, metadata !2871, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 %0, metadata !2872, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %1, metadata !2873, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %2, metadata !2874, metadata !DIExpression()), !dbg !2931
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2934), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %0, metadata !2848, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2853, metadata !DIExpression()), !dbg !2940
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2940, !alias.scope !2934, !DIAssignID !2941
  call void @llvm.dbg.assign(metadata i8 0, metadata !2875, metadata !DIExpression(), metadata !2941, metadata ptr %4, metadata !DIExpression()), !dbg !2931
  %5 = icmp eq i32 %0, 10, !dbg !2942
  br i1 %5, label %6, label %7, !dbg !2943

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2944, !noalias !2934
  unreachable, !dbg !2944

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2945, !tbaa !1930, !alias.scope !2934, !DIAssignID !2946
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2875, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2946, metadata ptr %4, metadata !DIExpression()), !dbg !2931
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2947
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2948
  ret ptr %8, !dbg !2949
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2958
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !2958, metadata ptr %4, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2956, metadata !DIExpression()), !dbg !2959
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2961, !tbaa.struct !2962, !DIAssignID !2963
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !2963, metadata ptr %4, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1947, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1948, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1950, metadata !DIExpression()), !dbg !2964
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2966
  %6 = lshr i8 %2, 5, !dbg !2967
  %7 = zext nneg i8 %6 to i64, !dbg !2967
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2968
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1951, metadata !DIExpression()), !dbg !2964
  %9 = and i8 %2, 31, !dbg !2969
  %10 = zext nneg i8 %9 to i32, !dbg !2969
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1953, metadata !DIExpression()), !dbg !2964
  %11 = load i32, ptr %8, align 4, !dbg !2970, !tbaa !914
  %12 = lshr i32 %11, %10, !dbg !2971
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1954, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2964
  %13 = and i32 %12, 1, !dbg !2972
  %14 = xor i32 %13, 1, !dbg !2972
  %15 = shl nuw i32 %14, %10, !dbg !2973
  %16 = xor i32 %15, %11, !dbg !2974
  store i32 %16, ptr %8, align 4, !dbg !2974, !tbaa !914
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2975
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2976
  ret ptr %17, !dbg !2977
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2978 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2984
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !2985
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !2984, metadata ptr %3, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 -1, metadata !2955, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %1, metadata !2956, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2989, !tbaa.struct !2962, !DIAssignID !2990
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !2990, metadata ptr %3, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata ptr %3, metadata !1947, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8 %1, metadata !1948, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8 %1, metadata !1950, metadata !DIExpression()), !dbg !2991
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2993
  %5 = lshr i8 %1, 5, !dbg !2994
  %6 = zext nneg i8 %5 to i64, !dbg !2994
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %7, metadata !1951, metadata !DIExpression()), !dbg !2991
  %8 = and i8 %1, 31, !dbg !2996
  %9 = zext nneg i8 %8 to i32, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %9, metadata !1953, metadata !DIExpression()), !dbg !2991
  %10 = load i32, ptr %7, align 4, !dbg !2997, !tbaa !914
  %11 = lshr i32 %10, %9, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %11, metadata !1954, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2991
  %12 = and i32 %11, 1, !dbg !2999
  %13 = xor i32 %12, 1, !dbg !2999
  %14 = shl nuw i32 %13, %9, !dbg !3000
  %15 = xor i32 %14, %10, !dbg !3001
  store i32 %15, ptr %7, align 4, !dbg !3001, !tbaa !914
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3002
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3003
  ret ptr %16, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3005 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3008
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8 58, metadata !2983, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !3008, metadata ptr %2, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 -1, metadata !2955, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i8 58, metadata !2956, metadata !DIExpression()), !dbg !3012
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3015, !tbaa.struct !2962, !DIAssignID !3016
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !3016, metadata ptr %2, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata ptr %2, metadata !1947, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8 58, metadata !1948, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8 58, metadata !1950, metadata !DIExpression()), !dbg !3017
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3019
  call void @llvm.dbg.value(metadata ptr %3, metadata !1951, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 26, metadata !1953, metadata !DIExpression()), !dbg !3017
  %4 = load i32, ptr %3, align 4, !dbg !3020, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %4, metadata !1954, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3017
  %5 = or i32 %4, 67108864, !dbg !3021
  store i32 %5, ptr %3, align 4, !dbg !3021, !tbaa !914
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3022
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3023
  ret ptr %6, !dbg !3024
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3025 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3029
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3027, metadata !DIExpression()), !dbg !3030
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !3029, metadata ptr %3, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8 58, metadata !2956, metadata !DIExpression()), !dbg !3031
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3034, !tbaa.struct !2962, !DIAssignID !3035
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2957, metadata !DIExpression(), metadata !3035, metadata ptr %3, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %3, metadata !1947, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 58, metadata !1948, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 58, metadata !1950, metadata !DIExpression()), !dbg !3036
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3038
  call void @llvm.dbg.value(metadata ptr %4, metadata !1951, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 26, metadata !1953, metadata !DIExpression()), !dbg !3036
  %5 = load i32, ptr %4, align 4, !dbg !3039, !tbaa !914
  call void @llvm.dbg.value(metadata i32 %5, metadata !1954, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3036
  %6 = or i32 %5, 67108864, !dbg !3040
  store i32 %6, ptr %4, align 4, !dbg !3040, !tbaa !914
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3041
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3042
  ret ptr %7, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3044 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3049, metadata !DIExpression(), metadata !3050, metadata ptr %4, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2853, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3052
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3046, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3047, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3048, metadata !DIExpression()), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3055
  %5 = icmp eq i32 %1, 10, !dbg !3056
  br i1 %5, label %6, label %7, !dbg !3057

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3058, !noalias !3059
  unreachable, !dbg !3058

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2853, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3055
  store i32 %1, ptr %4, align 8, !dbg !3062, !tbaa.struct !2962, !DIAssignID !3063
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3062
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3062
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3049, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3063, metadata ptr %4, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3049, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3064, metadata ptr %8, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1947, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1948, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1950, metadata !DIExpression()), !dbg !3065
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3067
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1951, metadata !DIExpression()), !dbg !3065
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1953, metadata !DIExpression()), !dbg !3065
  %10 = load i32, ptr %9, align 4, !dbg !3068, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1954, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3065
  %11 = or i32 %10, 67108864, !dbg !3069
  store i32 %11, ptr %9, align 4, !dbg !3069, !tbaa !914, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3049, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3070, metadata ptr %9, metadata !DIExpression()), !dbg !3051
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3071
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3072
  ret ptr %12, !dbg !3073
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3074 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3082
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3078, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3079, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3080, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3082, metadata ptr %5, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %1, metadata !3090, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %2, metadata !3091, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %3, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 -1, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3097, !tbaa.struct !2962, !DIAssignID !3098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3098, metadata ptr %5, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3099, metadata ptr undef, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata ptr %5, metadata !1987, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %1, metadata !1988, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %2, metadata !1989, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %5, metadata !1987, metadata !DIExpression()), !dbg !3100
  store i32 10, ptr %5, align 8, !dbg !3102, !tbaa !1930, !DIAssignID !3103
  call void @llvm.dbg.assign(metadata i32 10, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3103, metadata ptr %5, metadata !DIExpression()), !dbg !3094
  %6 = icmp ne ptr %1, null, !dbg !3104
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3105
  br i1 %8, label %10, label %9, !dbg !3105

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3106
  unreachable, !dbg !3106

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3107
  store ptr %1, ptr %11, align 8, !dbg !3108, !tbaa !2001, !DIAssignID !3109
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3109, metadata ptr %11, metadata !DIExpression()), !dbg !3094
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3110
  store ptr %2, ptr %12, align 8, !dbg !3111, !tbaa !2004, !DIAssignID !3112
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3112, metadata ptr %12, metadata !DIExpression()), !dbg !3094
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3113
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3114
  ret ptr %13, !dbg !3115
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3085 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3116, metadata ptr %6, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3090, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3091, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3092, metadata !DIExpression()), !dbg !3117
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3093, metadata !DIExpression()), !dbg !3117
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3119, !tbaa.struct !2962, !DIAssignID !3120
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3120, metadata ptr %6, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3121, metadata ptr undef, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %6, metadata !1987, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %1, metadata !1988, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !1989, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %6, metadata !1987, metadata !DIExpression()), !dbg !3122
  store i32 10, ptr %6, align 8, !dbg !3124, !tbaa !1930, !DIAssignID !3125
  call void @llvm.dbg.assign(metadata i32 10, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3125, metadata ptr %6, metadata !DIExpression()), !dbg !3117
  %7 = icmp ne ptr %1, null, !dbg !3126
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3127
  br i1 %9, label %11, label %10, !dbg !3127

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3128
  unreachable, !dbg !3128

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3129
  store ptr %1, ptr %12, align 8, !dbg !3130, !tbaa !2001, !DIAssignID !3131
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3131, metadata ptr %12, metadata !DIExpression()), !dbg !3117
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3132
  store ptr %2, ptr %13, align 8, !dbg !3133, !tbaa !2004, !DIAssignID !3134
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3134, metadata ptr %13, metadata !DIExpression()), !dbg !3117
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3135
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3136
  ret ptr %14, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3138 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3145
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3142, metadata !DIExpression()), !dbg !3146
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3143, metadata !DIExpression()), !dbg !3146
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 0, metadata !3078, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %1, metadata !3080, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %2, metadata !3081, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3145, metadata ptr %4, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %1, metadata !3091, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 -1, metadata !3093, metadata !DIExpression()), !dbg !3149
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3152, !tbaa.struct !2962, !DIAssignID !3153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3153, metadata ptr %4, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3154, metadata ptr undef, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %4, metadata !1987, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %0, metadata !1988, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %1, metadata !1989, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %4, metadata !1987, metadata !DIExpression()), !dbg !3155
  store i32 10, ptr %4, align 8, !dbg !3157, !tbaa !1930, !DIAssignID !3158
  call void @llvm.dbg.assign(metadata i32 10, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3158, metadata ptr %4, metadata !DIExpression()), !dbg !3149
  %5 = icmp ne ptr %0, null, !dbg !3159
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3160
  br i1 %7, label %9, label %8, !dbg !3160

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3161
  unreachable, !dbg !3161

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3162
  store ptr %0, ptr %10, align 8, !dbg !3163, !tbaa !2001, !DIAssignID !3164
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3164, metadata ptr %10, metadata !DIExpression()), !dbg !3149
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3165
  store ptr %1, ptr %11, align 8, !dbg !3166, !tbaa !2004, !DIAssignID !3167
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3167, metadata ptr %11, metadata !DIExpression()), !dbg !3149
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3168
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3169
  ret ptr %12, !dbg !3170
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3171 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3179
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3175, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3176, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3177, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3179, metadata ptr %5, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %1, metadata !3091, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %3, metadata !3093, metadata !DIExpression()), !dbg !3181
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3184, !tbaa.struct !2962, !DIAssignID !3185
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(), metadata !3185, metadata ptr %5, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3186, metadata ptr undef, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %5, metadata !1987, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %0, metadata !1988, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %1, metadata !1989, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %5, metadata !1987, metadata !DIExpression()), !dbg !3187
  store i32 10, ptr %5, align 8, !dbg !3189, !tbaa !1930, !DIAssignID !3190
  call void @llvm.dbg.assign(metadata i32 10, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3190, metadata ptr %5, metadata !DIExpression()), !dbg !3181
  %6 = icmp ne ptr %0, null, !dbg !3191
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3192
  br i1 %8, label %10, label %9, !dbg !3192

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3193
  unreachable, !dbg !3193

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3194
  store ptr %0, ptr %11, align 8, !dbg !3195, !tbaa !2001, !DIAssignID !3196
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3196, metadata ptr %11, metadata !DIExpression()), !dbg !3181
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3197
  store ptr %1, ptr %12, align 8, !dbg !3198, !tbaa !2004, !DIAssignID !3199
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3084, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3199, metadata ptr %12, metadata !DIExpression()), !dbg !3181
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3200
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3201
  ret ptr %13, !dbg !3202
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3203 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3207, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3208, metadata !DIExpression()), !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3209, metadata !DIExpression()), !dbg !3210
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3211
  ret ptr %4, !dbg !3212
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3213 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 0, metadata !3207, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()), !dbg !3220
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3222
  ret ptr %3, !dbg !3223
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3224 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3230
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %0, metadata !3207, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata ptr %1, metadata !3208, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 -1, metadata !3209, metadata !DIExpression()), !dbg !3231
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3233
  ret ptr %3, !dbg !3234
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3235 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 0, metadata !3228, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %0, metadata !3229, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 0, metadata !3207, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 -1, metadata !3209, metadata !DIExpression()), !dbg !3243
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3245
  ret ptr %2, !dbg !3246
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3247 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3287, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3288, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3289, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3290, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3291, metadata !DIExpression()), !dbg !3292
  %7 = icmp eq ptr %1, null, !dbg !3293
  br i1 %7, label %10, label %8, !dbg !3295

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.95, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3296
  br label %12, !dbg !3296

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.96, ptr noundef %2, ptr noundef %3) #40, !dbg !3297
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.3.98, i32 noundef 5) #40, !dbg !3298
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3298
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3299
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.5.100, i32 noundef 5) #40, !dbg !3300
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.101) #40, !dbg !3300
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3301
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
  ], !dbg !3302

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.7.102, i32 noundef 5) #40, !dbg !3303
  %21 = load ptr, ptr %4, align 8, !dbg !3303, !tbaa !845
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3303
  br label %147, !dbg !3305

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.8.103, i32 noundef 5) #40, !dbg !3306
  %25 = load ptr, ptr %4, align 8, !dbg !3306, !tbaa !845
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3306
  %27 = load ptr, ptr %26, align 8, !dbg !3306, !tbaa !845
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3306
  br label %147, !dbg !3307

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.9.104, i32 noundef 5) #40, !dbg !3308
  %31 = load ptr, ptr %4, align 8, !dbg !3308, !tbaa !845
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3308
  %33 = load ptr, ptr %32, align 8, !dbg !3308, !tbaa !845
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3308
  %35 = load ptr, ptr %34, align 8, !dbg !3308, !tbaa !845
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3308
  br label %147, !dbg !3309

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.10.105, i32 noundef 5) #40, !dbg !3310
  %39 = load ptr, ptr %4, align 8, !dbg !3310, !tbaa !845
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3310
  %41 = load ptr, ptr %40, align 8, !dbg !3310, !tbaa !845
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3310
  %43 = load ptr, ptr %42, align 8, !dbg !3310, !tbaa !845
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3310
  %45 = load ptr, ptr %44, align 8, !dbg !3310, !tbaa !845
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3310
  br label %147, !dbg !3311

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.11.106, i32 noundef 5) #40, !dbg !3312
  %49 = load ptr, ptr %4, align 8, !dbg !3312, !tbaa !845
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3312
  %51 = load ptr, ptr %50, align 8, !dbg !3312, !tbaa !845
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3312
  %53 = load ptr, ptr %52, align 8, !dbg !3312, !tbaa !845
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3312
  %55 = load ptr, ptr %54, align 8, !dbg !3312, !tbaa !845
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3312
  %57 = load ptr, ptr %56, align 8, !dbg !3312, !tbaa !845
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3312
  br label %147, !dbg !3313

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.12.107, i32 noundef 5) #40, !dbg !3314
  %61 = load ptr, ptr %4, align 8, !dbg !3314, !tbaa !845
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3314
  %63 = load ptr, ptr %62, align 8, !dbg !3314, !tbaa !845
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3314
  %65 = load ptr, ptr %64, align 8, !dbg !3314, !tbaa !845
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3314
  %67 = load ptr, ptr %66, align 8, !dbg !3314, !tbaa !845
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3314
  %69 = load ptr, ptr %68, align 8, !dbg !3314, !tbaa !845
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3314
  %71 = load ptr, ptr %70, align 8, !dbg !3314, !tbaa !845
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3314
  br label %147, !dbg !3315

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.13.108, i32 noundef 5) #40, !dbg !3316
  %75 = load ptr, ptr %4, align 8, !dbg !3316, !tbaa !845
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3316
  %77 = load ptr, ptr %76, align 8, !dbg !3316, !tbaa !845
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3316
  %79 = load ptr, ptr %78, align 8, !dbg !3316, !tbaa !845
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3316
  %81 = load ptr, ptr %80, align 8, !dbg !3316, !tbaa !845
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3316
  %83 = load ptr, ptr %82, align 8, !dbg !3316, !tbaa !845
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3316
  %85 = load ptr, ptr %84, align 8, !dbg !3316, !tbaa !845
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3316
  %87 = load ptr, ptr %86, align 8, !dbg !3316, !tbaa !845
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3316
  br label %147, !dbg !3317

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.14.109, i32 noundef 5) #40, !dbg !3318
  %91 = load ptr, ptr %4, align 8, !dbg !3318, !tbaa !845
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3318
  %93 = load ptr, ptr %92, align 8, !dbg !3318, !tbaa !845
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3318
  %95 = load ptr, ptr %94, align 8, !dbg !3318, !tbaa !845
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3318
  %97 = load ptr, ptr %96, align 8, !dbg !3318, !tbaa !845
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3318
  %99 = load ptr, ptr %98, align 8, !dbg !3318, !tbaa !845
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3318
  %101 = load ptr, ptr %100, align 8, !dbg !3318, !tbaa !845
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3318
  %103 = load ptr, ptr %102, align 8, !dbg !3318, !tbaa !845
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3318
  %105 = load ptr, ptr %104, align 8, !dbg !3318, !tbaa !845
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3318
  br label %147, !dbg !3319

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.15.110, i32 noundef 5) #40, !dbg !3320
  %109 = load ptr, ptr %4, align 8, !dbg !3320, !tbaa !845
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3320
  %111 = load ptr, ptr %110, align 8, !dbg !3320, !tbaa !845
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3320
  %113 = load ptr, ptr %112, align 8, !dbg !3320, !tbaa !845
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3320
  %115 = load ptr, ptr %114, align 8, !dbg !3320, !tbaa !845
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3320
  %117 = load ptr, ptr %116, align 8, !dbg !3320, !tbaa !845
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3320
  %119 = load ptr, ptr %118, align 8, !dbg !3320, !tbaa !845
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3320
  %121 = load ptr, ptr %120, align 8, !dbg !3320, !tbaa !845
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3320
  %123 = load ptr, ptr %122, align 8, !dbg !3320, !tbaa !845
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3320
  %125 = load ptr, ptr %124, align 8, !dbg !3320, !tbaa !845
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3320
  br label %147, !dbg !3321

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.16.111, i32 noundef 5) #40, !dbg !3322
  %129 = load ptr, ptr %4, align 8, !dbg !3322, !tbaa !845
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3322
  %131 = load ptr, ptr %130, align 8, !dbg !3322, !tbaa !845
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3322
  %133 = load ptr, ptr %132, align 8, !dbg !3322, !tbaa !845
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3322
  %135 = load ptr, ptr %134, align 8, !dbg !3322, !tbaa !845
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3322
  %137 = load ptr, ptr %136, align 8, !dbg !3322, !tbaa !845
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3322
  %139 = load ptr, ptr %138, align 8, !dbg !3322, !tbaa !845
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3322
  %141 = load ptr, ptr %140, align 8, !dbg !3322, !tbaa !845
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3322
  %143 = load ptr, ptr %142, align 8, !dbg !3322, !tbaa !845
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3322
  %145 = load ptr, ptr %144, align 8, !dbg !3322, !tbaa !845
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3322
  br label %147, !dbg !3323

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3324
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3325 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3329, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3330, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3331, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3332, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3333, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3334, metadata !DIExpression()), !dbg !3335
  br label %6, !dbg !3336

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3334, metadata !DIExpression()), !dbg !3335
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3339
  %9 = load ptr, ptr %8, align 8, !dbg !3339, !tbaa !845
  %10 = icmp eq ptr %9, null, !dbg !3341
  %11 = add i64 %7, 1, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3334, metadata !DIExpression()), !dbg !3335
  br i1 %10, label %12, label %6, !dbg !3341, !llvm.loop !3343

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3345
  ret void, !dbg !3346
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3347 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3364, metadata !DIExpression(), metadata !3366, metadata ptr %6, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3358, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3359, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3360, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3361, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3362, metadata !DIExpression()), !dbg !3367
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3363, metadata !DIExpression()), !dbg !3367
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3363, metadata !DIExpression()), !dbg !3367
  %10 = icmp ult i32 %9, 41, !dbg !3369
  br i1 %10, label %11, label %16, !dbg !3369

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3369
  %13 = zext nneg i32 %9 to i64, !dbg !3369
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3369
  %15 = add nuw nsw i32 %9, 8, !dbg !3369
  store i32 %15, ptr %4, align 8, !dbg !3369
  br label %19, !dbg !3369

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3369
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3369
  store ptr %18, ptr %7, align 8, !dbg !3369
  br label %19, !dbg !3369

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3369
  %22 = load ptr, ptr %21, align 8, !dbg !3369
  store ptr %22, ptr %6, align 16, !dbg !3372, !tbaa !845
  %23 = icmp eq ptr %22, null, !dbg !3373
  br i1 %23, label %128, label %24, !dbg !3374

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3363, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3363, metadata !DIExpression()), !dbg !3367
  %25 = icmp ult i32 %20, 41, !dbg !3369
  br i1 %25, label %29, label %26, !dbg !3369

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3369
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3369
  store ptr %28, ptr %7, align 8, !dbg !3369
  br label %34, !dbg !3369

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3369
  %31 = zext nneg i32 %20 to i64, !dbg !3369
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3369
  %33 = add nuw nsw i32 %20, 8, !dbg !3369
  store i32 %33, ptr %4, align 8, !dbg !3369
  br label %34, !dbg !3369

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3369
  %37 = load ptr, ptr %36, align 8, !dbg !3369
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3375
  store ptr %37, ptr %38, align 8, !dbg !3372, !tbaa !845
  %39 = icmp eq ptr %37, null, !dbg !3373
  br i1 %39, label %128, label %40, !dbg !3374

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3363, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3363, metadata !DIExpression()), !dbg !3367
  %41 = icmp ult i32 %35, 41, !dbg !3369
  br i1 %41, label %45, label %42, !dbg !3369

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3369
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3369
  store ptr %44, ptr %7, align 8, !dbg !3369
  br label %50, !dbg !3369

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3369
  %47 = zext nneg i32 %35 to i64, !dbg !3369
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3369
  %49 = add nuw nsw i32 %35, 8, !dbg !3369
  store i32 %49, ptr %4, align 8, !dbg !3369
  br label %50, !dbg !3369

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3369
  %53 = load ptr, ptr %52, align 8, !dbg !3369
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3375
  store ptr %53, ptr %54, align 16, !dbg !3372, !tbaa !845
  %55 = icmp eq ptr %53, null, !dbg !3373
  br i1 %55, label %128, label %56, !dbg !3374

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3363, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3363, metadata !DIExpression()), !dbg !3367
  %57 = icmp ult i32 %51, 41, !dbg !3369
  br i1 %57, label %61, label %58, !dbg !3369

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3369
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3369
  store ptr %60, ptr %7, align 8, !dbg !3369
  br label %66, !dbg !3369

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3369
  %63 = zext nneg i32 %51 to i64, !dbg !3369
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3369
  %65 = add nuw nsw i32 %51, 8, !dbg !3369
  store i32 %65, ptr %4, align 8, !dbg !3369
  br label %66, !dbg !3369

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3369
  %69 = load ptr, ptr %68, align 8, !dbg !3369
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3375
  store ptr %69, ptr %70, align 8, !dbg !3372, !tbaa !845
  %71 = icmp eq ptr %69, null, !dbg !3373
  br i1 %71, label %128, label %72, !dbg !3374

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3363, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3363, metadata !DIExpression()), !dbg !3367
  %73 = icmp ult i32 %67, 41, !dbg !3369
  br i1 %73, label %77, label %74, !dbg !3369

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3369
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3369
  store ptr %76, ptr %7, align 8, !dbg !3369
  br label %82, !dbg !3369

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3369
  %79 = zext nneg i32 %67 to i64, !dbg !3369
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3369
  %81 = add nuw nsw i32 %67, 8, !dbg !3369
  store i32 %81, ptr %4, align 8, !dbg !3369
  br label %82, !dbg !3369

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3369
  %85 = load ptr, ptr %84, align 8, !dbg !3369
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3375
  store ptr %85, ptr %86, align 16, !dbg !3372, !tbaa !845
  %87 = icmp eq ptr %85, null, !dbg !3373
  br i1 %87, label %128, label %88, !dbg !3374

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3363, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3363, metadata !DIExpression()), !dbg !3367
  %89 = icmp ult i32 %83, 41, !dbg !3369
  br i1 %89, label %93, label %90, !dbg !3369

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3369
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3369
  store ptr %92, ptr %7, align 8, !dbg !3369
  br label %98, !dbg !3369

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3369
  %95 = zext nneg i32 %83 to i64, !dbg !3369
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3369
  %97 = add nuw nsw i32 %83, 8, !dbg !3369
  store i32 %97, ptr %4, align 8, !dbg !3369
  br label %98, !dbg !3369

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3369
  %100 = load ptr, ptr %99, align 8, !dbg !3369
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3375
  store ptr %100, ptr %101, align 8, !dbg !3372, !tbaa !845
  %102 = icmp eq ptr %100, null, !dbg !3373
  br i1 %102, label %128, label %103, !dbg !3374

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3363, metadata !DIExpression()), !dbg !3367
  %104 = load ptr, ptr %7, align 8, !dbg !3369
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3369
  store ptr %105, ptr %7, align 8, !dbg !3369
  %106 = load ptr, ptr %104, align 8, !dbg !3369
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3375
  store ptr %106, ptr %107, align 16, !dbg !3372, !tbaa !845
  %108 = icmp eq ptr %106, null, !dbg !3373
  br i1 %108, label %128, label %109, !dbg !3374

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3363, metadata !DIExpression()), !dbg !3367
  %110 = load ptr, ptr %7, align 8, !dbg !3369
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3369
  store ptr %111, ptr %7, align 8, !dbg !3369
  %112 = load ptr, ptr %110, align 8, !dbg !3369
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3375
  store ptr %112, ptr %113, align 8, !dbg !3372, !tbaa !845
  %114 = icmp eq ptr %112, null, !dbg !3373
  br i1 %114, label %128, label %115, !dbg !3374

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3363, metadata !DIExpression()), !dbg !3367
  %116 = load ptr, ptr %7, align 8, !dbg !3369
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3369
  store ptr %117, ptr %7, align 8, !dbg !3369
  %118 = load ptr, ptr %116, align 8, !dbg !3369
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3375
  store ptr %118, ptr %119, align 16, !dbg !3372, !tbaa !845
  %120 = icmp eq ptr %118, null, !dbg !3373
  br i1 %120, label %128, label %121, !dbg !3374

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3363, metadata !DIExpression()), !dbg !3367
  %122 = load ptr, ptr %7, align 8, !dbg !3369
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3369
  store ptr %123, ptr %7, align 8, !dbg !3369
  %124 = load ptr, ptr %122, align 8, !dbg !3369
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3375
  store ptr %124, ptr %125, align 8, !dbg !3372, !tbaa !845
  %126 = icmp eq ptr %124, null, !dbg !3373
  %127 = select i1 %126, i64 9, i64 10, !dbg !3374
  br label %128, !dbg !3374

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3376
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3377
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3378
  ret void, !dbg !3378
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3379 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3387, metadata !DIExpression(), metadata !3392, metadata ptr %5, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3383, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3384, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3385, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3386, metadata !DIExpression()), !dbg !3393
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !3394
  call void @llvm.va_start(ptr nonnull %5), !dbg !3395
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3396
  call void @llvm.va_end(ptr nonnull %5), !dbg !3397
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !3398
  ret void, !dbg !3398
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3399 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3400, !tbaa !845
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %1), !dbg !3400
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.17.116, i32 noundef 5) #40, !dbg !3401
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.117) #40, !dbg !3401
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.19.118, i32 noundef 5) #40, !dbg !3402
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.119, ptr noundef nonnull @.str.21.120) #40, !dbg !3402
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.22.121, i32 noundef 5) #40, !dbg !3403
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.122) #40, !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3411, metadata !DIExpression()), !dbg !3413
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %1, metadata !3417, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()), !dbg !3419
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3427
  %5 = icmp eq ptr %4, null, !dbg !3429
  br i1 %5, label %6, label %7, !dbg !3431

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3432
  unreachable, !dbg !3432

7:                                                ; preds = %3
  ret ptr %4, !dbg !3433
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3415 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3417, metadata !DIExpression()), !dbg !3434
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()), !dbg !3434
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3435
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3436
  %5 = icmp eq ptr %4, null, !dbg !3438
  br i1 %5, label %6, label %7, !dbg !3439

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3440
  unreachable, !dbg !3440

7:                                                ; preds = %3
  ret ptr %4, !dbg !3441
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3442 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3444, metadata !DIExpression()), !dbg !3445
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3446
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3447
  %3 = icmp eq ptr %2, null, !dbg !3449
  br i1 %3, label %4, label %5, !dbg !3450

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3451
  unreachable, !dbg !3451

5:                                                ; preds = %1
  ret ptr %2, !dbg !3452
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3453 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64 %0, metadata !3459, metadata !DIExpression()), !dbg !3463
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3466
  %3 = icmp eq ptr %2, null, !dbg !3468
  br i1 %3, label %4, label %5, !dbg !3469

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3470
  unreachable, !dbg !3470

5:                                                ; preds = %1
  ret ptr %2, !dbg !3471
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3472 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i64 %0, metadata !3444, metadata !DIExpression()), !dbg !3478
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #46, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3481
  %3 = icmp eq ptr %2, null, !dbg !3483
  br i1 %3, label %4, label %5, !dbg !3484

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3485
  unreachable, !dbg !3485

5:                                                ; preds = %1
  ret ptr %2, !dbg !3486
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3487 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata ptr %0, metadata !3494, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3499
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3501
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3502
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3503
  %5 = icmp eq ptr %4, null, !dbg !3505
  br i1 %5, label %6, label %7, !dbg !3506

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3507
  unreachable, !dbg !3507

7:                                                ; preds = %2
  ret ptr %4, !dbg !3508
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3509 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3510 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3516
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %0, metadata !3517, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %1, metadata !3520, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata ptr %0, metadata !3494, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3523
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3525
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3526
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3527
  %5 = icmp eq ptr %4, null, !dbg !3529
  br i1 %5, label %6, label %7, !dbg !3530

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3531
  unreachable, !dbg !3531

7:                                                ; preds = %2
  ret ptr %4, !dbg !3532
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3533 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3537, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3538, metadata !DIExpression()), !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3539, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %2, metadata !3545, metadata !DIExpression()), !dbg !3546
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3548
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3549
  %5 = icmp eq ptr %4, null, !dbg !3551
  br i1 %5, label %6, label %7, !dbg !3552

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3553
  unreachable, !dbg !3553

7:                                                ; preds = %3
  ret ptr %4, !dbg !3554
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3555 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3559, metadata !DIExpression()), !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3560, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr null, metadata !3414, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %0, metadata !3417, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3418, metadata !DIExpression()), !dbg !3562
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %3, metadata !3422, metadata !DIExpression()), !dbg !3565
  %4 = icmp eq ptr %3, null, !dbg !3567
  br i1 %4, label %5, label %6, !dbg !3568

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3569
  unreachable, !dbg !3569

6:                                                ; preds = %2
  ret ptr %3, !dbg !3570
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3571 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3575, metadata !DIExpression()), !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3576, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr null, metadata !3537, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %0, metadata !3538, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr null, metadata !3541, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %0, metadata !3544, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()), !dbg !3580
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3582
  call void @llvm.dbg.value(metadata ptr %3, metadata !3422, metadata !DIExpression()), !dbg !3583
  %4 = icmp eq ptr %3, null, !dbg !3585
  br i1 %4, label %5, label %6, !dbg !3586

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3587
  unreachable, !dbg !3587

6:                                                ; preds = %2
  ret ptr %3, !dbg !3588
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3593, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3594, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %0, metadata !779, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !780, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 1, metadata !781, metadata !DIExpression()), !dbg !3596
  %3 = load i64, ptr %1, align 8, !dbg !3598, !tbaa !2668
  call void @llvm.dbg.value(metadata i64 %3, metadata !782, metadata !DIExpression()), !dbg !3596
  %4 = icmp eq ptr %0, null, !dbg !3599
  br i1 %4, label %5, label %8, !dbg !3601

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3602
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3605
  br label %15, !dbg !3605

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3606
  %10 = add nuw i64 %9, 1, !dbg !3606
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3606
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3606
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %13, metadata !782, metadata !DIExpression()), !dbg !3596
  br i1 %12, label %14, label %15, !dbg !3609

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3610
  unreachable, !dbg !3610

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3596
  call void @llvm.dbg.value(metadata i64 %16, metadata !782, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %16, metadata !3417, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 1, metadata !3418, metadata !DIExpression()), !dbg !3611
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3613
  call void @llvm.dbg.value(metadata ptr %17, metadata !3422, metadata !DIExpression()), !dbg !3614
  %18 = icmp eq ptr %17, null, !dbg !3616
  br i1 %18, label %19, label %20, !dbg !3617

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3618
  unreachable, !dbg !3618

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !779, metadata !DIExpression()), !dbg !3596
  store i64 %16, ptr %1, align 8, !dbg !3619, !tbaa !2668
  ret ptr %17, !dbg !3620
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !779, metadata !DIExpression()), !dbg !3621
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !780, metadata !DIExpression()), !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !781, metadata !DIExpression()), !dbg !3621
  %4 = load i64, ptr %1, align 8, !dbg !3622, !tbaa !2668
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !782, metadata !DIExpression()), !dbg !3621
  %5 = icmp eq ptr %0, null, !dbg !3623
  br i1 %5, label %6, label %13, !dbg !3624

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3625
  br i1 %7, label %8, label %20, !dbg !3626

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3627
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !782, metadata !DIExpression()), !dbg !3621
  %10 = icmp ugt i64 %2, 128, !dbg !3629
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !782, metadata !DIExpression()), !dbg !3621
  br label %20, !dbg !3631

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3632
  %15 = add nuw i64 %14, 1, !dbg !3632
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3632
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3632
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !782, metadata !DIExpression()), !dbg !3621
  br i1 %17, label %19, label %20, !dbg !3633

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3634
  unreachable, !dbg !3634

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !782, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i64 %21, metadata !3417, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i64 %2, metadata !3418, metadata !DIExpression()), !dbg !3635
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %22, metadata !3422, metadata !DIExpression()), !dbg !3638
  %23 = icmp eq ptr %22, null, !dbg !3640
  br i1 %23, label %24, label %25, !dbg !3641

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3642
  unreachable, !dbg !3642

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !779, metadata !DIExpression()), !dbg !3621
  store i64 %21, ptr %1, align 8, !dbg !3643, !tbaa !2668
  ret ptr %22, !dbg !3644
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !786 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !795, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !796, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !797, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !798, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !799, metadata !DIExpression()), !dbg !3645
  %6 = load i64, ptr %1, align 8, !dbg !3646, !tbaa !2668
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !800, metadata !DIExpression()), !dbg !3645
  %7 = ashr i64 %6, 1, !dbg !3647
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3647
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3647
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !801, metadata !DIExpression()), !dbg !3645
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !801, metadata !DIExpression()), !dbg !3645
  %12 = icmp sgt i64 %3, -1, !dbg !3650
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3652
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !801, metadata !DIExpression()), !dbg !3645
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3653
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3653
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3653
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !802, metadata !DIExpression()), !dbg !3645
  %18 = icmp slt i64 %17, 128, !dbg !3653
  %19 = select i1 %18, i64 128, i64 0, !dbg !3653
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3653
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !803, metadata !DIExpression()), !dbg !3645
  %21 = icmp eq i64 %20, 0, !dbg !3654
  br i1 %21, label %26, label %22, !dbg !3656

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !801, metadata !DIExpression()), !dbg !3645
  %24 = srem i64 %20, %4, !dbg !3659
  %25 = sub nsw i64 %20, %24, !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !802, metadata !DIExpression()), !dbg !3645
  br label %26, !dbg !3661

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3645
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !802, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !801, metadata !DIExpression()), !dbg !3645
  %29 = icmp eq ptr %0, null, !dbg !3662
  br i1 %29, label %30, label %31, !dbg !3664

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3665, !tbaa !2668
  br label %31, !dbg !3666

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3667
  %33 = icmp slt i64 %32, %2, !dbg !3669
  br i1 %33, label %34, label %46, !dbg !3670

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3671
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3671
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !801, metadata !DIExpression()), !dbg !3645
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3672
  br i1 %40, label %45, label %41, !dbg !3672

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3673
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3673
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3673
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !802, metadata !DIExpression()), !dbg !3645
  br i1 %43, label %45, label %46, !dbg !3674

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !3675
  unreachable, !dbg !3675

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3645
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !802, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !801, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %48, metadata !3492, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %0, metadata !3494, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %48, metadata !3498, metadata !DIExpression()), !dbg !3678
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3680
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !3681
  call void @llvm.dbg.value(metadata ptr %50, metadata !3422, metadata !DIExpression()), !dbg !3682
  %51 = icmp eq ptr %50, null, !dbg !3684
  br i1 %51, label %52, label %53, !dbg !3685

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !3686
  unreachable, !dbg !3686

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !795, metadata !DIExpression()), !dbg !3645
  store i64 %47, ptr %1, align 8, !dbg !3687, !tbaa !2668
  ret ptr %50, !dbg !3688
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3689 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %0, metadata !3693, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 1, metadata !3696, metadata !DIExpression()), !dbg !3697
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3699
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3700
  %3 = icmp eq ptr %2, null, !dbg !3702
  br i1 %3, label %4, label %5, !dbg !3703

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3704
  unreachable, !dbg !3704

5:                                                ; preds = %1
  ret ptr %2, !dbg !3705
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3706 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3693, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3696, metadata !DIExpression()), !dbg !3707
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3708
  call void @llvm.dbg.value(metadata ptr %3, metadata !3422, metadata !DIExpression()), !dbg !3709
  %4 = icmp eq ptr %3, null, !dbg !3711
  br i1 %4, label %5, label %6, !dbg !3712

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3713
  unreachable, !dbg !3713

6:                                                ; preds = %2
  ret ptr %3, !dbg !3714
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3715 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %0, metadata !3719, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 1, metadata !3722, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 1, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 1, metadata !3728, metadata !DIExpression()), !dbg !3729
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3731
  call void @llvm.dbg.value(metadata ptr %2, metadata !3422, metadata !DIExpression()), !dbg !3732
  %3 = icmp eq ptr %2, null, !dbg !3734
  br i1 %3, label %4, label %5, !dbg !3735

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3736
  unreachable, !dbg !3736

5:                                                ; preds = %1
  ret ptr %2, !dbg !3737
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3720 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3719, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3722, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %0, metadata !3725, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %0, metadata !3725, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()), !dbg !3739
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3741
  call void @llvm.dbg.value(metadata ptr %3, metadata !3422, metadata !DIExpression()), !dbg !3742
  %4 = icmp eq ptr %3, null, !dbg !3744
  br i1 %4, label %5, label %6, !dbg !3745

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3746
  unreachable, !dbg !3746

6:                                                ; preds = %2
  ret ptr %3, !dbg !3747
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3752, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3753, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3755
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3757
  call void @llvm.dbg.value(metadata ptr %3, metadata !3422, metadata !DIExpression()), !dbg !3758
  %4 = icmp eq ptr %3, null, !dbg !3760
  br i1 %4, label %5, label %6, !dbg !3761

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3762
  unreachable, !dbg !3762

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3763, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3770
  ret ptr %3, !dbg !3771
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3772 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3776, metadata !DIExpression()), !dbg !3778
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3777, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %1, metadata !3457, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 %1, metadata !3459, metadata !DIExpression()), !dbg !3781
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #46, !dbg !3783
  call void @llvm.dbg.value(metadata ptr %3, metadata !3422, metadata !DIExpression()), !dbg !3784
  %4 = icmp eq ptr %3, null, !dbg !3786
  br i1 %4, label %5, label %6, !dbg !3787

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3788
  unreachable, !dbg !3788

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3763, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3789
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3791
  ret ptr %3, !dbg !3792
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3793 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3797, metadata !DIExpression()), !dbg !3800
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3798, metadata !DIExpression()), !dbg !3800
  %3 = add nsw i64 %1, 1, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %3, metadata !3457, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i64 %3, metadata !3459, metadata !DIExpression()), !dbg !3804
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3806
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3807
  %5 = icmp eq ptr %4, null, !dbg !3809
  br i1 %5, label %6, label %7, !dbg !3810

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3811
  unreachable, !dbg !3811

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3799, metadata !DIExpression()), !dbg !3800
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3812
  store i8 0, ptr %8, align 1, !dbg !3813, !tbaa !923
  call void @llvm.dbg.value(metadata ptr %4, metadata !3763, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3816
  ret ptr %4, !dbg !3817
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3818 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3820, metadata !DIExpression()), !dbg !3821
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3822
  %3 = add i64 %2, 1, !dbg !3823
  call void @llvm.dbg.value(metadata ptr %0, metadata !3752, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %3, metadata !3753, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %3, metadata !3444, metadata !DIExpression()), !dbg !3826
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #46, !dbg !3828
  call void @llvm.dbg.value(metadata ptr %4, metadata !3422, metadata !DIExpression()), !dbg !3829
  %5 = icmp eq ptr %4, null, !dbg !3831
  br i1 %5, label %6, label %7, !dbg !3832

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3833
  unreachable, !dbg !3833

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3763, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64 %3, metadata !3767, metadata !DIExpression()), !dbg !3834
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !3836
  ret ptr %4, !dbg !3837
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3838 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3842, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3840, metadata !DIExpression()), !dbg !3843
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #40, !dbg !3842
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #40, !dbg !3842
  %3 = icmp eq i32 %1, 0, !dbg !3842
  tail call void @llvm.assume(i1 %3), !dbg !3842
  tail call void @abort() #42, !dbg !3844
  unreachable, !dbg !3844
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !3845 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3848, metadata !DIExpression()), !dbg !3852
  br label %2, !dbg !3853

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3848, metadata !DIExpression()), !dbg !3852
  %4 = load i8, ptr %3, align 1, !dbg !3854, !tbaa !923
  %5 = icmp eq i8 %4, 47, !dbg !3854
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3855
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3848, metadata !DIExpression()), !dbg !3852
  br i1 %5, label %2, label %7, !dbg !3853, !llvm.loop !3856

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3857
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3859
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3852
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3860
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3850, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !3849, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3848, metadata !DIExpression()), !dbg !3852
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3862

12:                                               ; preds = %7
  ret ptr %9, !dbg !3863

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3864
  %15 = icmp eq i8 %14, 0, !dbg !3864
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3868
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3868
  br label %18, !dbg !3868

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3852
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3852
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3849, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !3848, metadata !DIExpression()), !dbg !3852
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3850, metadata !DIExpression()), !dbg !3861
  %22 = load i8, ptr %21, align 1, !dbg !3857, !tbaa !923
  br label %7, !dbg !3870, !llvm.loop !3871
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #37 !dbg !3873 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3880
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3881
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3878, metadata !DIExpression()), !dbg !3880
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3878, metadata !DIExpression()), !dbg !3880
  %4 = icmp ugt i64 %2, 1, !dbg !3884
  br i1 %4, label %5, label %13, !dbg !3886

5:                                                ; preds = %1, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %1 ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3878, metadata !DIExpression()), !dbg !3880
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3887
  %8 = load i8, ptr %7, align 1, !dbg !3887, !tbaa !923
  %9 = icmp eq i8 %8, 47, !dbg !3887
  br i1 %9, label %10, label %13, !dbg !3888

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3878, metadata !DIExpression()), !dbg !3880
  %12 = icmp ugt i64 %11, 1, !dbg !3884
  br i1 %12, label %5, label %13, !dbg !3886, !llvm.loop !3890

13:                                               ; preds = %5, %10, %1
  %14 = phi i64 [ %2, %1 ], [ 1, %10 ], [ %6, %5 ], !dbg !3892
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3879, metadata !DIExpression()), !dbg !3880
  ret i64 %14, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3894 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3932, metadata !DIExpression()), !dbg !3937
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !3938
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3933, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3937
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !3942
  %3 = load i32, ptr %0, align 8, !dbg !3944, !tbaa !1203
  %4 = and i32 %3, 32, !dbg !3945
  %5 = icmp eq i32 %4, 0, !dbg !3945
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3935, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3937
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !3946
  %7 = icmp eq i32 %6, 0, !dbg !3947
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3936, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3937
  br i1 %5, label %8, label %18, !dbg !3948

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3950
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3933, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3937
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3951
  %11 = xor i1 %7, true, !dbg !3951
  %12 = sext i1 %11 to i32, !dbg !3951
  br i1 %10, label %21, label %13, !dbg !3951

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !3952
  %15 = load i32, ptr %14, align 4, !dbg !3952, !tbaa !914
  %16 = icmp ne i32 %15, 9, !dbg !3953
  %17 = sext i1 %16 to i32, !dbg !3954
  br label %21, !dbg !3954

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3955

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !3957
  store i32 0, ptr %20, align 4, !dbg !3959, !tbaa !914
  br label %21, !dbg !3957

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3937
  ret i32 %22, !dbg !3960
}

; Function Attrs: nounwind
declare !dbg !3961 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3965 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4003, metadata !DIExpression()), !dbg !4007
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4004, metadata !DIExpression()), !dbg !4007
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4008
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4005, metadata !DIExpression()), !dbg !4007
  %3 = icmp slt i32 %2, 0, !dbg !4009
  br i1 %3, label %4, label %6, !dbg !4011

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4012
  br label %24, !dbg !4013

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4014
  %8 = icmp eq i32 %7, 0, !dbg !4014
  br i1 %8, label %13, label %9, !dbg !4016

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4017
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4018
  %12 = icmp eq i64 %11, -1, !dbg !4019
  br i1 %12, label %16, label %13, !dbg !4020

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4021
  %15 = icmp eq i32 %14, 0, !dbg !4021
  br i1 %15, label %16, label %18, !dbg !4022

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4004, metadata !DIExpression()), !dbg !4007
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4006, metadata !DIExpression()), !dbg !4007
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4023
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4006, metadata !DIExpression()), !dbg !4007
  br label %24, !dbg !4024

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4025
  %20 = load i32, ptr %19, align 4, !dbg !4025, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4004, metadata !DIExpression()), !dbg !4007
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4006, metadata !DIExpression()), !dbg !4007
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4023
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4006, metadata !DIExpression()), !dbg !4007
  %22 = icmp eq i32 %20, 0, !dbg !4026
  br i1 %22, label %24, label %23, !dbg !4024

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4028, !tbaa !914
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4006, metadata !DIExpression()), !dbg !4007
  br label %24, !dbg !4030

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4007
  ret i32 %25, !dbg !4031
}

; Function Attrs: nofree nounwind
declare !dbg !4032 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4033 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4034 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4035 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4038 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4076, metadata !DIExpression()), !dbg !4077
  %2 = icmp eq ptr %0, null, !dbg !4078
  br i1 %2, label %6, label %3, !dbg !4080

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4081
  %5 = icmp eq i32 %4, 0, !dbg !4081
  br i1 %5, label %6, label %8, !dbg !4082

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4083
  br label %16, !dbg !4084

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4085, metadata !DIExpression()), !dbg !4090
  %9 = load i32, ptr %0, align 8, !dbg !4092, !tbaa !1203
  %10 = and i32 %9, 256, !dbg !4094
  %11 = icmp eq i32 %10, 0, !dbg !4094
  br i1 %11, label %14, label %12, !dbg !4095

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4096
  br label %14, !dbg !4096

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4097
  br label %16, !dbg !4098

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4077
  ret i32 %17, !dbg !4099
}

; Function Attrs: nofree nounwind
declare !dbg !4100 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4101 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4140, metadata !DIExpression()), !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4141, metadata !DIExpression()), !dbg !4146
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4142, metadata !DIExpression()), !dbg !4146
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4147
  %5 = load ptr, ptr %4, align 8, !dbg !4147, !tbaa !4148
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4149
  %7 = load ptr, ptr %6, align 8, !dbg !4149, !tbaa !4150
  %8 = icmp eq ptr %5, %7, !dbg !4151
  br i1 %8, label %9, label %27, !dbg !4152

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4153
  %11 = load ptr, ptr %10, align 8, !dbg !4153, !tbaa !1427
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4154
  %13 = load ptr, ptr %12, align 8, !dbg !4154, !tbaa !4155
  %14 = icmp eq ptr %11, %13, !dbg !4156
  br i1 %14, label %15, label %27, !dbg !4157

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4158
  %17 = load ptr, ptr %16, align 8, !dbg !4158, !tbaa !4159
  %18 = icmp eq ptr %17, null, !dbg !4160
  br i1 %18, label %19, label %27, !dbg !4161

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4162
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4143, metadata !DIExpression()), !dbg !4164
  %22 = icmp eq i64 %21, -1, !dbg !4165
  br i1 %22, label %29, label %23, !dbg !4167

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4168, !tbaa !1203
  %25 = and i32 %24, -17, !dbg !4168
  store i32 %25, ptr %0, align 8, !dbg !4168, !tbaa !1203
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4169
  store i64 %21, ptr %26, align 8, !dbg !4170, !tbaa !4171
  br label %29, !dbg !4172

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4173
  br label %29, !dbg !4174

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4146
  ret i32 %30, !dbg !4175
}

; Function Attrs: nofree nounwind
declare !dbg !4176 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4179 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4184, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4185, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4186, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4187, metadata !DIExpression()), !dbg !4189
  %5 = icmp eq ptr %1, null, !dbg !4190
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4192
  %7 = select i1 %5, ptr @.str.150, ptr %1, !dbg !4192
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4192
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4186, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4185, metadata !DIExpression()), !dbg !4189
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4184, metadata !DIExpression()), !dbg !4189
  %9 = icmp eq ptr %3, null, !dbg !4193
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4195
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4187, metadata !DIExpression()), !dbg !4189
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4196
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4188, metadata !DIExpression()), !dbg !4189
  %12 = icmp ult i64 %11, -3, !dbg !4197
  br i1 %12, label %13, label %17, !dbg !4199

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4200
  %15 = icmp eq i32 %14, 0, !dbg !4200
  br i1 %15, label %16, label %29, !dbg !4201

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4202, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %10, metadata !4209, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i32 0, metadata !4212, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i64 8, metadata !4213, metadata !DIExpression()), !dbg !4214
  store i64 0, ptr %10, align 1, !dbg !4216
  br label %29, !dbg !4217

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4218
  br i1 %18, label %19, label %20, !dbg !4220

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4221
  unreachable, !dbg !4221

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4222

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4224
  br i1 %23, label %29, label %24, !dbg !4225

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4226
  br i1 %25, label %29, label %26, !dbg !4229

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4230, !tbaa !923
  %28 = zext i8 %27 to i32, !dbg !4231
  store i32 %28, ptr %6, align 4, !dbg !4232, !tbaa !914
  br label %29, !dbg !4233

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4189
  ret i64 %30, !dbg !4234
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4235 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4241 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4243, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4245, metadata !DIExpression()), !dbg !4247
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4248
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4246, metadata !DIExpression()), !dbg !4247
  br i1 %5, label %6, label %8, !dbg !4250

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4251
  store i32 12, ptr %7, align 4, !dbg !4253, !tbaa !914
  br label %12, !dbg !4254

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4248
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %0, metadata !4255, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %9, metadata !4258, metadata !DIExpression()), !dbg !4259
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4261
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !4262
  br label %12, !dbg !4263

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4247
  ret ptr %13, !dbg !4264
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4265 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4270, metadata !DIExpression(), metadata !4274, metadata ptr %2, metadata !DIExpression()), !dbg !4275
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4269, metadata !DIExpression()), !dbg !4275
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4276
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4277
  %4 = icmp eq i32 %3, 0, !dbg !4277
  br i1 %4, label %5, label %12, !dbg !4279

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4280, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata !881, metadata !4283, metadata !DIExpression()), !dbg !4284
  %6 = load i16, ptr %2, align 16, !dbg !4287
  %7 = icmp eq i16 %6, 67, !dbg !4287
  br i1 %7, label %11, label %8, !dbg !4288

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4280, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr @.str.1.155, metadata !4283, metadata !DIExpression()), !dbg !4289
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.155, i64 6), !dbg !4291
  %10 = icmp eq i32 %9, 0, !dbg !4292
  br i1 %10, label %11, label %12, !dbg !4293

11:                                               ; preds = %8, %5
  br label %12, !dbg !4294

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4275
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4295
  ret i1 %13, !dbg !4295
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4296 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4300, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4301, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4302, metadata !DIExpression()), !dbg !4303
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4304
  ret i32 %4, !dbg !4305
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4306 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4310, metadata !DIExpression()), !dbg !4311
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4312
  ret ptr %2, !dbg !4313
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4314 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4316, metadata !DIExpression()), !dbg !4318
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4319
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4317, metadata !DIExpression()), !dbg !4318
  ret ptr %2, !dbg !4320
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4321 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4323, metadata !DIExpression()), !dbg !4330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4324, metadata !DIExpression()), !dbg !4330
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4325, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %0, metadata !4316, metadata !DIExpression()), !dbg !4331
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4333
  call void @llvm.dbg.value(metadata ptr %4, metadata !4317, metadata !DIExpression()), !dbg !4331
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4326, metadata !DIExpression()), !dbg !4330
  %5 = icmp eq ptr %4, null, !dbg !4334
  br i1 %5, label %6, label %9, !dbg !4335

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4336
  br i1 %7, label %19, label %8, !dbg !4339

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4340, !tbaa !923
  br label %19, !dbg !4341

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4342
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4327, metadata !DIExpression()), !dbg !4343
  %11 = icmp ult i64 %10, %2, !dbg !4344
  br i1 %11, label %12, label %14, !dbg !4346

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4347
  call void @llvm.dbg.value(metadata ptr %1, metadata !4349, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata ptr %4, metadata !4352, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %13, metadata !4353, metadata !DIExpression()), !dbg !4354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4356
  br label %19, !dbg !4357

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4358
  br i1 %15, label %19, label %16, !dbg !4361

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4362
  call void @llvm.dbg.value(metadata ptr %1, metadata !4349, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata ptr %4, metadata !4352, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %17, metadata !4353, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4366
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4367
  store i8 0, ptr %18, align 1, !dbg !4368, !tbaa !923
  br label %19, !dbg !4369

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4370
  ret i32 %20, !dbg !4371
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
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!136, !386, !390, !405, !724, !460, !756, !758, !760, !762, !477, !498, !512, !560, !764, !716, !770, !805, !807, !810, !812, !814, !816, !740, !818, !820, !824, !826}
!llvm.ident = !{!828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828, !828}
!llvm.module.flags = !{!829, !830, !831, !832, !833, !834, !835}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/nohup.c", directory: "/src", checksumkind: CSK_MD5, checksum: "62665220fb9257e4a1baafbd9a0ef09b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!404 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !405, file: !406, line: 66, type: !451, isLocal: false, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!407 = !{!178, !189}
!408 = !{!409, !411, !430, !432, !434, !436, !403, !438, !440, !442, !444, !449}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 272, type: !90, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "old_file_name", scope: !413, file: !406, line: 304, type: !134, isLocal: true, isDefinition: true)
!413 = distinct !DISubprogram(name: "verror_at_line", scope: !406, file: !406, line: 298, type: !414, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !423)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !184, !184, !134, !139, !134, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !418)
!418 = !{!419, !420, !421, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !417, file: !406, baseType: !139, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !417, file: !406, baseType: !139, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !417, file: !406, baseType: !178, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !417, file: !406, baseType: !178, size: 64, offset: 128)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DILocalVariable(name: "status", arg: 1, scope: !413, file: !406, line: 298, type: !184)
!425 = !DILocalVariable(name: "errnum", arg: 2, scope: !413, file: !406, line: 298, type: !184)
!426 = !DILocalVariable(name: "file_name", arg: 3, scope: !413, file: !406, line: 298, type: !134)
!427 = !DILocalVariable(name: "line_number", arg: 4, scope: !413, file: !406, line: 298, type: !139)
!428 = !DILocalVariable(name: "message", arg: 5, scope: !413, file: !406, line: 298, type: !134)
!429 = !DILocalVariable(name: "args", arg: 6, scope: !413, file: !406, line: 298, type: !416)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "old_line_number", scope: !413, file: !406, line: 305, type: !139, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !406, line: 338, type: !197, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !229, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !204, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "error_message_count", scope: !405, file: !406, line: 69, type: !139, isLocal: false, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !405, file: !406, line: 295, type: !184, isLocal: false, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !224, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 21)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !406, line: 214, type: !90, isLocal: true, isDefinition: true)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null}
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !456, file: !457, line: 506, type: !184, isLocal: true, isDefinition: true)
!456 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !457, file: !457, line: 485, type: !458, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !462)
!457 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!458 = !DISubroutineType(types: !459)
!459 = !{!184, !184, !184}
!460 = distinct !DICompileUnit(language: DW_LANG_C11, file: !457, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !461, splitDebugInlining: false, nameTableKind: None)
!461 = !{!454}
!462 = !{!463, !464, !465, !466, !469}
!463 = !DILocalVariable(name: "fd", arg: 1, scope: !456, file: !457, line: 485, type: !184)
!464 = !DILocalVariable(name: "target", arg: 2, scope: !456, file: !457, line: 485, type: !184)
!465 = !DILocalVariable(name: "result", scope: !456, file: !457, line: 487, type: !184)
!466 = !DILocalVariable(name: "flags", scope: !467, file: !457, line: 530, type: !184)
!467 = distinct !DILexicalBlock(scope: !468, file: !457, line: 529, column: 5)
!468 = distinct !DILexicalBlock(scope: !456, file: !457, line: 528, column: 7)
!469 = !DILocalVariable(name: "saved_errno", scope: !470, file: !457, line: 533, type: !184)
!470 = distinct !DILexicalBlock(scope: !471, file: !457, line: 532, column: 9)
!471 = distinct !DILexicalBlock(scope: !467, file: !457, line: 531, column: 11)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !474, line: 60, type: !204, isLocal: true, isDefinition: true)
!474 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "long_options", scope: !477, file: !474, line: 34, type: !486, isLocal: true, isDefinition: true)
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !474, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, globals: !479, splitDebugInlining: false, nameTableKind: None)
!478 = !{!178}
!479 = !{!472, !480, !482, !484, !475}
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !474, line: 112, type: !44, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !474, line: 36, type: !90, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !474, line: 37, type: !229, isLocal: true, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 768, elements: !214)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !489, line: 50, size: 256, elements: !490)
!489 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!490 = !{!491, !492, !493, !495}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !488, file: !489, line: 52, baseType: !134, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !488, file: !489, line: 55, baseType: !184, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !488, file: !489, line: 56, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !488, file: !489, line: 57, baseType: !184, size: 32, offset: 192)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "program_name", scope: !498, file: !499, line: 31, type: !134, isLocal: false, isDefinition: true)
!498 = distinct !DICompileUnit(language: DW_LANG_C11, file: !499, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !500, globals: !501, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!500 = !{!178, !330}
!501 = !{!496, !502, !504}
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !499, line: 46, type: !229, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !499, line: 49, type: !197, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "utf07FF", scope: !508, file: !509, line: 46, type: !536, isLocal: true, isDefinition: true)
!508 = distinct !DISubprogram(name: "proper_name_lite", scope: !509, file: !509, line: 38, type: !510, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !514)
!509 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!510 = !DISubroutineType(types: !511)
!511 = !{!134, !134, !134}
!512 = distinct !DICompileUnit(language: DW_LANG_C11, file: !509, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !513, splitDebugInlining: false, nameTableKind: None)
!513 = !{!506}
!514 = !{!515, !516, !517, !518, !523}
!515 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !508, file: !509, line: 38, type: !134)
!516 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !508, file: !509, line: 38, type: !134)
!517 = !DILocalVariable(name: "translation", scope: !508, file: !509, line: 40, type: !134)
!518 = !DILocalVariable(name: "w", scope: !508, file: !509, line: 47, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !520, line: 37, baseType: !521)
!520 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !350, line: 57, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !350, line: 42, baseType: !139)
!523 = !DILocalVariable(name: "mbs", scope: !508, file: !509, line: 48, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !525, line: 6, baseType: !526)
!525 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !527, line: 21, baseType: !528)
!527 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 13, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !528, file: !527, line: 15, baseType: !184, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !528, file: !527, line: 20, baseType: !532, size: 32, offset: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !527, line: 16, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !532, file: !527, line: 18, baseType: !139, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !532, file: !527, line: 19, baseType: !197, size: 32)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16, elements: !205)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !539, line: 78, type: !229, isLocal: true, isDefinition: true)
!539 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !539, line: 79, type: !19, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !539, line: 80, type: !69, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !539, line: 81, type: !69, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !539, line: 82, type: !372, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !539, line: 83, type: !204, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !539, line: 84, type: !229, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !539, line: 85, type: !224, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !539, line: 86, type: !224, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !539, line: 87, type: !229, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !560, file: !539, line: 76, type: !634, isLocal: false, isDefinition: true)
!560 = distinct !DICompileUnit(language: DW_LANG_C11, file: !539, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !569, globals: !570, splitDebugInlining: false, nameTableKind: None)
!561 = !{!562, !564, !162}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !563, line: 42, baseType: !139, size: 32, elements: !150)
!563 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !563, line: 254, baseType: !139, size: 32, elements: !565)
!565 = !{!566, !567, !568}
!566 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!567 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!568 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!569 = !{!178, !184, !185, !186}
!570 = !{!537, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !571, !575, !585, !587, !592, !594, !596, !598, !600, !623, !630, !632}
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !560, file: !539, line: 92, type: !573, isLocal: false, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 320, elements: !50)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !560, file: !539, line: 1040, type: !577, isLocal: false, isDefinition: true)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !539, line: 56, size: 448, elements: !578)
!578 = !{!579, !580, !581, !583, !584}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !577, file: !539, line: 59, baseType: !562, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !539, line: 62, baseType: !184, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !577, file: !539, line: 66, baseType: !582, size: 256, offset: 64)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !230)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !577, file: !539, line: 69, baseType: !134, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !577, file: !539, line: 72, baseType: !134, size: 64, offset: 384)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !560, file: !539, line: 107, type: !577, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "slot0", scope: !560, file: !539, line: 831, type: !589, isLocal: true, isDefinition: true)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !590)
!590 = !{!591}
!591 = !DISubrange(count: 256)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !539, line: 321, type: !204, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !539, line: 357, type: !204, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !539, line: 358, type: !204, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !539, line: 199, type: !224, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "quote", scope: !602, file: !539, line: 228, type: !621, isLocal: true, isDefinition: true)
!602 = distinct !DISubprogram(name: "gettext_quote", scope: !539, file: !539, line: 197, type: !603, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!134, !134, !562}
!605 = !{!606, !607, !608, !609, !610}
!606 = !DILocalVariable(name: "msgid", arg: 1, scope: !602, file: !539, line: 197, type: !134)
!607 = !DILocalVariable(name: "s", arg: 2, scope: !602, file: !539, line: 197, type: !562)
!608 = !DILocalVariable(name: "translation", scope: !602, file: !539, line: 199, type: !134)
!609 = !DILocalVariable(name: "w", scope: !602, file: !539, line: 229, type: !519)
!610 = !DILocalVariable(name: "mbs", scope: !602, file: !539, line: 230, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !525, line: 6, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !527, line: 21, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 13, size: 64, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !613, file: !527, line: 15, baseType: !184, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !613, file: !527, line: 20, baseType: !617, size: 32, offset: 32)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !527, line: 16, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !617, file: !527, line: 18, baseType: !139, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !617, file: !527, line: 19, baseType: !197, size: 32)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !622)
!622 = !{!206, !199}
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "slotvec", scope: !560, file: !539, line: 834, type: !625, isLocal: true, isDefinition: true)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !539, line: 823, size: 128, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !626, file: !539, line: 825, baseType: !186, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !539, line: 826, baseType: !330, size: 64, offset: 64)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "nslots", scope: !560, file: !539, line: 832, type: !184, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "slotvec0", scope: !560, file: !539, line: 833, type: !626, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 704, elements: !636)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!636 = !{!637}
!637 = !DISubrange(count: 11)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !640, line: 67, type: !299, isLocal: true, isDefinition: true)
!640 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !640, line: 69, type: !224, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !640, line: 83, type: !224, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !640, line: 83, type: !197, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !640, line: 85, type: !204, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !640, line: 88, type: !651, isLocal: true, isDefinition: true)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 171)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !640, line: 88, type: !120, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !640, line: 105, type: !59, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !640, line: 109, type: !105, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !640, line: 113, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 28)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !640, line: 120, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 32)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !640, line: 127, type: !672, isLocal: true, isDefinition: true)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 36)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !640, line: 134, type: !14, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !640, line: 142, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 44)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !640, line: 150, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 48)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !640, line: 159, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 52)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !640, line: 170, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 60)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !640, line: 248, type: !372, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !640, line: 248, type: !275, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !640, line: 254, type: !372, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !640, line: 254, type: !64, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !640, line: 254, type: !14, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !640, line: 259, type: !3, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !640, line: 259, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 29)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !716, file: !717, line: 26, type: !719, isLocal: false, isDefinition: true)
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!718 = !{!714}
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 47)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "exit_failure", scope: !724, file: !725, line: 24, type: !727, isLocal: false, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!726 = !{!722}
!727 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !213, isLocal: true, isDefinition: true)
!730 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !224, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !730, line: 34, type: !246, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !737, line: 108, type: !44, isLocal: true, isDefinition: true)
!737 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "internal_state", scope: !740, file: !737, line: 97, type: !743, isLocal: true, isDefinition: true)
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !741, globals: !742, splitDebugInlining: false, nameTableKind: None)
!741 = !{!178, !186, !189}
!742 = !{!735, !738}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !525, line: 6, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !527, line: 21, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 13, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !745, file: !527, line: 15, baseType: !184, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !745, file: !527, line: 20, baseType: !749, size: 32, offset: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !527, line: 16, size: 32, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !749, file: !527, line: 18, baseType: !139, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !749, file: !527, line: 19, baseType: !197, size: 32)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !755, line: 35, type: !19, isLocal: true, isDefinition: true)
!755 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-reopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-reopen.Tpo -c lib/fd-reopen.c -o lib/.libcoreutils_a-fd-reopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/fd-reopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "062fe9c324b2740011a864ab02c109e2")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat.Tpo -c lib/filenamecat.c -o lib/.libcoreutils_a-filenamecat.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-filenamecat-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-filenamecat-lgpl.Tpo -c lib/filenamecat-lgpl.c -o lib/.libcoreutils_a-filenamecat-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !765, retainedTypes: !478, globals: !769, splitDebugInlining: false, nameTableKind: None)
!765 = !{!766}
!766 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !640, line: 40, baseType: !139, size: 32, elements: !767)
!767 = !{!768}
!768 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!769 = !{!638, !641, !643, !645, !647, !649, !654, !656, !658, !660, !665, !670, !675, !677, !682, !687, !692, !697, !699, !701, !703, !705, !707, !709}
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !772, retainedTypes: !804, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!772 = !{!773, !785}
!773 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !774, file: !771, line: 188, baseType: !139, size: 32, elements: !783)
!774 = distinct !DISubprogram(name: "x2nrealloc", scope: !771, file: !771, line: 176, type: !775, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !778)
!775 = !DISubroutineType(types: !776)
!776 = !{!178, !178, !777, !186}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!778 = !{!779, !780, !781, !782}
!779 = !DILocalVariable(name: "p", arg: 1, scope: !774, file: !771, line: 176, type: !178)
!780 = !DILocalVariable(name: "pn", arg: 2, scope: !774, file: !771, line: 176, type: !777)
!781 = !DILocalVariable(name: "s", arg: 3, scope: !774, file: !771, line: 176, type: !186)
!782 = !DILocalVariable(name: "n", scope: !774, file: !771, line: 178, type: !186)
!783 = !{!784}
!784 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!785 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !786, file: !771, line: 228, baseType: !139, size: 32, elements: !783)
!786 = distinct !DISubprogram(name: "xpalloc", scope: !771, file: !771, line: 223, type: !787, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !794)
!787 = !DISubroutineType(types: !788)
!788 = !{!178, !178, !789, !790, !792, !790}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !791, line: 130, baseType: !792)
!791 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !793, line: 18, baseType: !351)
!793 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803}
!795 = !DILocalVariable(name: "pa", arg: 1, scope: !786, file: !771, line: 223, type: !178)
!796 = !DILocalVariable(name: "pn", arg: 2, scope: !786, file: !771, line: 223, type: !789)
!797 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !786, file: !771, line: 223, type: !790)
!798 = !DILocalVariable(name: "n_max", arg: 4, scope: !786, file: !771, line: 223, type: !792)
!799 = !DILocalVariable(name: "s", arg: 5, scope: !786, file: !771, line: 223, type: !790)
!800 = !DILocalVariable(name: "n0", scope: !786, file: !771, line: 230, type: !790)
!801 = !DILocalVariable(name: "n", scope: !786, file: !771, line: 237, type: !790)
!802 = !DILocalVariable(name: "nbytes", scope: !786, file: !771, line: 248, type: !790)
!803 = !DILocalVariable(name: "adjusted_nbytes", scope: !786, file: !771, line: 252, type: !790)
!804 = !{!330, !178}
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !806, splitDebugInlining: false, nameTableKind: None)
!806 = !{!728, !731, !733}
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!809 = !{!330}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !821, splitDebugInlining: false, nameTableKind: None)
!821 = !{!822, !753}
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !755, line: 35, type: !204, isLocal: true, isDefinition: true)
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!828 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!829 = !{i32 7, !"Dwarf Version", i32 5}
!830 = !{i32 2, !"Debug Info Version", i32 3}
!831 = !{i32 1, !"wchar_size", i32 4}
!832 = !{i32 8, !"PIC Level", i32 2}
!833 = !{i32 7, !"PIE Level", i32 2}
!834 = !{i32 7, !"uwtable", i32 2}
!835 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!836 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !182, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !837)
!837 = !{!838}
!838 = !DILocalVariable(name: "status", arg: 1, scope: !836, file: !2, line: 43, type: !184)
!839 = !DILocation(line: 0, scope: !836)
!840 = !DILocation(line: 45, column: 14, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !2, line: 45, column: 7)
!842 = !DILocation(line: 45, column: 7, scope: !836)
!843 = !DILocation(line: 46, column: 5, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !2, line: 46, column: 5)
!845 = !{!846, !846, i64 0}
!846 = !{!"any pointer", !847, i64 0}
!847 = !{!"omnipotent char", !848, i64 0}
!848 = !{!"Simple C/C++ TBAA"}
!849 = !DILocation(line: 49, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !841, file: !2, line: 48, column: 5)
!851 = !DILocation(line: 55, column: 7, scope: !850)
!852 = !DILocation(line: 59, column: 7, scope: !850)
!853 = !DILocation(line: 60, column: 7, scope: !850)
!854 = !DILocation(line: 61, column: 7, scope: !850)
!855 = !DILocation(line: 68, column: 7, scope: !850)
!856 = !DILocalVariable(name: "program", arg: 1, scope: !857, file: !131, line: 824, type: !134)
!857 = distinct !DISubprogram(name: "emit_exec_status", scope: !131, file: !131, line: 824, type: !858, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !134}
!860 = !{!856}
!861 = !DILocation(line: 0, scope: !857, inlinedAt: !862)
!862 = distinct !DILocation(line: 69, column: 7, scope: !850)
!863 = !DILocation(line: 826, column: 7, scope: !857, inlinedAt: !862)
!864 = !DILocalVariable(name: "program", arg: 1, scope: !865, file: !131, line: 836, type: !134)
!865 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !131, file: !131, line: 836, type: !858, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !866)
!866 = !{!864, !867, !874, !875, !877, !878}
!867 = !DILocalVariable(name: "infomap", scope: !865, file: !131, line: 838, type: !868)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 896, elements: !225)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !865, file: !131, line: 838, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !870, file: !131, line: 838, baseType: !134, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !870, file: !131, line: 838, baseType: !134, size: 64, offset: 64)
!874 = !DILocalVariable(name: "node", scope: !865, file: !131, line: 848, type: !134)
!875 = !DILocalVariable(name: "map_prog", scope: !865, file: !131, line: 849, type: !876)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!877 = !DILocalVariable(name: "lc_messages", scope: !865, file: !131, line: 861, type: !134)
!878 = !DILocalVariable(name: "url_program", scope: !865, file: !131, line: 874, type: !134)
!879 = !DILocation(line: 0, scope: !865, inlinedAt: !880)
!880 = distinct !DILocation(line: 70, column: 7, scope: !850)
!881 = !{}
!882 = !DILocation(line: 857, column: 3, scope: !865, inlinedAt: !880)
!883 = !DILocation(line: 861, column: 29, scope: !865, inlinedAt: !880)
!884 = !DILocation(line: 862, column: 7, scope: !885, inlinedAt: !880)
!885 = distinct !DILexicalBlock(scope: !865, file: !131, line: 862, column: 7)
!886 = !DILocation(line: 862, column: 19, scope: !885, inlinedAt: !880)
!887 = !DILocation(line: 862, column: 22, scope: !885, inlinedAt: !880)
!888 = !DILocation(line: 862, column: 7, scope: !865, inlinedAt: !880)
!889 = !DILocation(line: 868, column: 7, scope: !890, inlinedAt: !880)
!890 = distinct !DILexicalBlock(scope: !885, file: !131, line: 863, column: 5)
!891 = !DILocation(line: 870, column: 5, scope: !890, inlinedAt: !880)
!892 = !DILocation(line: 875, column: 3, scope: !865, inlinedAt: !880)
!893 = !DILocation(line: 877, column: 3, scope: !865, inlinedAt: !880)
!894 = !DILocation(line: 72, column: 3, scope: !836)
!895 = !DISubprogram(name: "dcgettext", scope: !896, file: !896, line: 51, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!896 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!897 = !DISubroutineType(types: !898)
!898 = !{!330, !134, !134, !184}
!899 = !DISubprogram(name: "__fprintf_chk", scope: !900, file: !900, line: 93, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!901 = !DISubroutineType(types: !902)
!902 = !{!184, !903, !184, !904, null}
!903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!904 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!905 = !DISubprogram(name: "__printf_chk", scope: !900, file: !900, line: 95, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DISubroutineType(types: !907)
!907 = !{!184, !184, !904, null}
!908 = !DISubprogram(name: "fputs_unlocked", scope: !909, file: !909, line: 691, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!910 = !DISubroutineType(types: !911)
!911 = !{!184, !904, !903}
!912 = !DILocation(line: 0, scope: !130)
!913 = !DILocation(line: 581, column: 7, scope: !307)
!914 = !{!915, !915, i64 0}
!915 = !{!"int", !847, i64 0}
!916 = !DILocation(line: 581, column: 19, scope: !307)
!917 = !DILocation(line: 581, column: 7, scope: !130)
!918 = !DILocation(line: 585, column: 26, scope: !306)
!919 = !DILocation(line: 0, scope: !306)
!920 = !DILocation(line: 586, column: 23, scope: !306)
!921 = !DILocation(line: 586, column: 28, scope: !306)
!922 = !DILocation(line: 586, column: 32, scope: !306)
!923 = !{!847, !847, i64 0}
!924 = !DILocation(line: 586, column: 38, scope: !306)
!925 = !DILocalVariable(name: "__s1", arg: 1, scope: !926, file: !927, line: 1359, type: !134)
!926 = distinct !DISubprogram(name: "streq", scope: !927, file: !927, line: 1359, type: !928, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !930)
!927 = !DIFile(filename: "./lib/string.h", directory: "/src")
!928 = !DISubroutineType(types: !929)
!929 = !{!309, !134, !134}
!930 = !{!925, !931}
!931 = !DILocalVariable(name: "__s2", arg: 2, scope: !926, file: !927, line: 1359, type: !134)
!932 = !DILocation(line: 0, scope: !926, inlinedAt: !933)
!933 = distinct !DILocation(line: 586, column: 41, scope: !306)
!934 = !DILocation(line: 1361, column: 11, scope: !926, inlinedAt: !933)
!935 = !DILocation(line: 1361, column: 10, scope: !926, inlinedAt: !933)
!936 = !DILocation(line: 586, column: 19, scope: !306)
!937 = !DILocation(line: 587, column: 5, scope: !306)
!938 = !DILocation(line: 588, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !130, file: !131, line: 588, column: 7)
!940 = !DILocation(line: 588, column: 7, scope: !130)
!941 = !DILocation(line: 590, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !131, line: 589, column: 5)
!943 = !DILocation(line: 591, column: 7, scope: !942)
!944 = !DILocation(line: 595, column: 37, scope: !130)
!945 = !DILocation(line: 595, column: 35, scope: !130)
!946 = !DILocation(line: 596, column: 29, scope: !130)
!947 = !DILocation(line: 597, column: 8, scope: !315)
!948 = !DILocation(line: 597, column: 7, scope: !130)
!949 = !DILocation(line: 604, column: 24, scope: !314)
!950 = !DILocation(line: 604, column: 12, scope: !315)
!951 = !DILocation(line: 0, scope: !313)
!952 = !DILocation(line: 610, column: 16, scope: !313)
!953 = !DILocation(line: 610, column: 7, scope: !313)
!954 = !DILocation(line: 611, column: 21, scope: !313)
!955 = !{!956, !956, i64 0}
!956 = !{!"short", !847, i64 0}
!957 = !DILocation(line: 611, column: 19, scope: !313)
!958 = !DILocation(line: 611, column: 16, scope: !313)
!959 = !DILocation(line: 610, column: 30, scope: !313)
!960 = distinct !{!960, !953, !954, !961}
!961 = !{!"llvm.loop.mustprogress"}
!962 = !DILocation(line: 612, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !313, file: !131, line: 612, column: 11)
!964 = !DILocation(line: 612, column: 11, scope: !313)
!965 = !DILocation(line: 620, column: 23, scope: !130)
!966 = !DILocation(line: 625, column: 39, scope: !130)
!967 = !DILocation(line: 626, column: 3, scope: !130)
!968 = !DILocation(line: 626, column: 10, scope: !130)
!969 = !DILocation(line: 626, column: 21, scope: !130)
!970 = !DILocation(line: 628, column: 44, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !131, line: 628, column: 11)
!972 = distinct !DILexicalBlock(scope: !130, file: !131, line: 627, column: 5)
!973 = !DILocation(line: 628, column: 32, scope: !971)
!974 = !DILocation(line: 628, column: 49, scope: !971)
!975 = !DILocation(line: 628, column: 11, scope: !972)
!976 = !DILocation(line: 630, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !131, line: 630, column: 11)
!978 = !DILocation(line: 630, column: 11, scope: !972)
!979 = !DILocation(line: 632, column: 26, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !131, line: 632, column: 15)
!981 = distinct !DILexicalBlock(scope: !977, file: !131, line: 631, column: 9)
!982 = !DILocation(line: 632, column: 34, scope: !980)
!983 = !DILocation(line: 632, column: 37, scope: !980)
!984 = !DILocation(line: 632, column: 15, scope: !981)
!985 = !DILocation(line: 636, column: 16, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !131, line: 636, column: 15)
!987 = !DILocation(line: 636, column: 29, scope: !986)
!988 = !DILocation(line: 640, column: 16, scope: !972)
!989 = distinct !{!989, !967, !990, !961}
!990 = !DILocation(line: 641, column: 5, scope: !130)
!991 = !DILocation(line: 644, column: 3, scope: !130)
!992 = !DILocation(line: 0, scope: !926, inlinedAt: !993)
!993 = distinct !DILocation(line: 648, column: 31, scope: !130)
!994 = !DILocation(line: 0, scope: !926, inlinedAt: !995)
!995 = distinct !DILocation(line: 649, column: 31, scope: !130)
!996 = !DILocation(line: 0, scope: !926, inlinedAt: !997)
!997 = distinct !DILocation(line: 650, column: 31, scope: !130)
!998 = !DILocation(line: 0, scope: !926, inlinedAt: !999)
!999 = distinct !DILocation(line: 651, column: 31, scope: !130)
!1000 = !DILocation(line: 0, scope: !926, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 652, column: 31, scope: !130)
!1002 = !DILocation(line: 0, scope: !926, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 653, column: 31, scope: !130)
!1004 = !DILocation(line: 0, scope: !926, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 654, column: 31, scope: !130)
!1006 = !DILocation(line: 0, scope: !926, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 655, column: 31, scope: !130)
!1008 = !DILocation(line: 0, scope: !926, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 656, column: 31, scope: !130)
!1010 = !DILocation(line: 0, scope: !926, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 657, column: 31, scope: !130)
!1012 = !DILocation(line: 663, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !130, file: !131, line: 663, column: 7)
!1014 = !DILocation(line: 664, column: 7, scope: !1013)
!1015 = !DILocation(line: 664, column: 10, scope: !1013)
!1016 = !DILocation(line: 663, column: 7, scope: !130)
!1017 = !DILocation(line: 669, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !131, line: 665, column: 5)
!1019 = !DILocation(line: 671, column: 5, scope: !1018)
!1020 = !DILocation(line: 676, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !131, line: 673, column: 5)
!1022 = !DILocation(line: 679, column: 3, scope: !130)
!1023 = !DILocation(line: 683, column: 3, scope: !130)
!1024 = !DILocation(line: 686, column: 3, scope: !130)
!1025 = !DILocation(line: 688, column: 3, scope: !130)
!1026 = !DILocation(line: 691, column: 3, scope: !130)
!1027 = !DILocation(line: 695, column: 3, scope: !130)
!1028 = !DILocation(line: 696, column: 1, scope: !130)
!1029 = !DISubprogram(name: "setlocale", scope: !1030, file: !1030, line: 122, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!330, !184, !134}
!1033 = !DISubprogram(name: "strncmp", scope: !1034, file: !1034, line: 159, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!184, !134, !134, !186}
!1037 = !DISubprogram(name: "exit", scope: !1038, file: !1038, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1038 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1039 = !DISubprogram(name: "getenv", scope: !1038, file: !1038, line: 641, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!330, !134}
!1042 = !DISubprogram(name: "strcmp", scope: !1034, file: !1034, line: 156, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!184, !134, !134}
!1045 = !DISubprogram(name: "strspn", scope: !1034, file: !1034, line: 297, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!188, !134, !134}
!1048 = !DISubprogram(name: "strchr", scope: !1034, file: !1034, line: 246, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!330, !134, !184}
!1051 = !DISubprogram(name: "__ctype_b_loc", scope: !163, file: !163, line: 79, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1057 = !DISubprogram(name: "strcspn", scope: !1034, file: !1034, line: 293, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubprogram(name: "fwrite_unlocked", scope: !909, file: !909, line: 704, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!186, !1061, !186, !186, !903}
!1061 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1064 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !1065, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1068)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!184, !184, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1082, !1083, !1086, !1087, !1088, !1092, !1093, !1096, !1097, !1100, !1101, !1106, !1107, !1108}
!1069 = !DILocalVariable(name: "argc", arg: 1, scope: !1064, file: !2, line: 82, type: !184)
!1070 = !DILocalVariable(name: "argv", arg: 2, scope: !1064, file: !2, line: 82, type: !1067)
!1071 = !DILocalVariable(name: "exit_internal_failure", scope: !1064, file: !2, line: 94, type: !184)
!1072 = !DILocalVariable(name: "ignoring_input", scope: !1064, file: !2, line: 109, type: !309)
!1073 = !DILocalVariable(name: "redirecting_stdout", scope: !1064, file: !2, line: 110, type: !309)
!1074 = !DILocalVariable(name: "stdout_is_closed", scope: !1064, file: !2, line: 111, type: !309)
!1075 = !DILocalVariable(name: "redirecting_stderr", scope: !1064, file: !2, line: 112, type: !309)
!1076 = !DILocalVariable(name: "__errstatus", scope: !1077, file: !2, line: 120, type: !1081)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 120, column: 9)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 119, column: 11)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 118, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 117, column: 7)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1082 = !DILocalVariable(name: "out_fd", scope: !1064, file: !2, line: 130, type: !184)
!1083 = !DILocalVariable(name: "in_home", scope: !1084, file: !2, line: 133, type: !330)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 132, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 131, column: 7)
!1086 = !DILocalVariable(name: "file", scope: !1084, file: !2, line: 134, type: !134)
!1087 = !DILocalVariable(name: "flags", scope: !1084, file: !2, line: 135, type: !184)
!1088 = !DILocalVariable(name: "mode", scope: !1084, file: !2, line: 136, type: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1090, line: 69, baseType: !1091)
!1090 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !350, line: 150, baseType: !139)
!1092 = !DILocalVariable(name: "umask_value", scope: !1084, file: !2, line: 137, type: !1089)
!1093 = !DILocalVariable(name: "saved_errno", scope: !1094, file: !2, line: 144, type: !184)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 143, column: 9)
!1095 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 142, column: 11)
!1096 = !DILocalVariable(name: "home", scope: !1094, file: !2, line: 145, type: !134)
!1097 = !DILocalVariable(name: "saved_errno2", scope: !1098, file: !2, line: 155, type: !184)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 154, column: 13)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 153, column: 15)
!1100 = !DILocalVariable(name: "saved_stderr_fd", scope: !1064, file: !2, line: 175, type: !184)
!1101 = !DILocalVariable(name: "__errstatus", scope: !1102, file: !2, line: 193, type: !1081)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 193, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 192, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 177, column: 5)
!1105 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 176, column: 7)
!1106 = !DILocalVariable(name: "cmd", scope: !1064, file: !2, line: 211, type: !1067)
!1107 = !DILocalVariable(name: "exit_status", scope: !1064, file: !2, line: 213, type: !184)
!1108 = !DILocalVariable(name: "saved_errno", scope: !1064, file: !2, line: 214, type: !184)
!1109 = !DILocation(line: 0, scope: !1064)
!1110 = !DILocation(line: 85, column: 21, scope: !1064)
!1111 = !DILocation(line: 85, column: 3, scope: !1064)
!1112 = !DILocation(line: 86, column: 3, scope: !1064)
!1113 = !DILocation(line: 87, column: 3, scope: !1064)
!1114 = !DILocation(line: 88, column: 3, scope: !1064)
!1115 = !DILocation(line: 94, column: 32, scope: !1064)
!1116 = !DILocalVariable(name: "status", arg: 1, scope: !1117, file: !131, line: 102, type: !184)
!1117 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !131, file: !131, line: 102, type: !182, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1118)
!1118 = !{!1116}
!1119 = !DILocation(line: 0, scope: !1117, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 96, column: 3, scope: !1064)
!1121 = !DILocation(line: 105, column: 18, scope: !1122, inlinedAt: !1120)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !131, line: 104, column: 7)
!1123 = !DILocation(line: 97, column: 3, scope: !1064)
!1124 = !DILocation(line: 100, column: 36, scope: !1064)
!1125 = !DILocation(line: 100, column: 59, scope: !1064)
!1126 = !DILocation(line: 99, column: 3, scope: !1064)
!1127 = !DILocation(line: 103, column: 15, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 103, column: 7)
!1129 = !DILocation(line: 103, column: 12, scope: !1128)
!1130 = !DILocation(line: 103, column: 7, scope: !1064)
!1131 = !DILocation(line: 105, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 104, column: 5)
!1133 = !DILocation(line: 106, column: 7, scope: !1132)
!1134 = !DILocation(line: 109, column: 25, scope: !1064)
!1135 = !DILocation(line: 110, column: 29, scope: !1064)
!1136 = !DILocation(line: 111, column: 48, scope: !1064)
!1137 = !DILocation(line: 111, column: 51, scope: !1064)
!1138 = !DILocation(line: 111, column: 57, scope: !1064)
!1139 = !DILocation(line: 112, column: 29, scope: !1064)
!1140 = !DILocation(line: 117, column: 7, scope: !1064)
!1141 = !DILocation(line: 119, column: 11, scope: !1078)
!1142 = !DILocation(line: 119, column: 62, scope: !1078)
!1143 = !DILocation(line: 119, column: 11, scope: !1079)
!1144 = !DILocation(line: 120, column: 9, scope: !1078)
!1145 = !DILocation(line: 122, column: 31, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 122, column: 11)
!1147 = !DILocation(line: 123, column: 9, scope: !1146)
!1148 = !DILocation(line: 131, column: 26, scope: !1085)
!1149 = !DILocation(line: 0, scope: !1084)
!1150 = !DILocation(line: 137, column: 28, scope: !1084)
!1151 = !DILocation(line: 138, column: 17, scope: !1084)
!1152 = !DILocation(line: 139, column: 19, scope: !1084)
!1153 = !DILocation(line: 140, column: 19, scope: !1084)
!1154 = !DILocation(line: 142, column: 18, scope: !1095)
!1155 = !DILocation(line: 142, column: 11, scope: !1084)
!1156 = !DILocation(line: 144, column: 29, scope: !1094)
!1157 = !DILocation(line: 0, scope: !1094)
!1158 = !DILocation(line: 145, column: 30, scope: !1094)
!1159 = !DILocation(line: 146, column: 15, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 146, column: 15)
!1161 = !DILocation(line: 146, column: 15, scope: !1094)
!1162 = !DILocation(line: 148, column: 25, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 147, column: 13)
!1164 = !DILocation(line: 149, column: 25, scope: !1163)
!1165 = !DILocation(line: 150, column: 27, scope: !1163)
!1166 = !DILocation(line: 151, column: 27, scope: !1163)
!1167 = !DILocation(line: 153, column: 22, scope: !1099)
!1168 = !DILocation(line: 153, column: 15, scope: !1094)
!1169 = !DILocation(line: 155, column: 34, scope: !1098)
!1170 = !DILocation(line: 0, scope: !1098)
!1171 = !DILocation(line: 156, column: 15, scope: !1098)
!1172 = !DILocation(line: 157, column: 19, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 157, column: 19)
!1174 = !DILocation(line: 157, column: 19, scope: !1098)
!1175 = !DILocation(line: 158, column: 17, scope: !1173)
!1176 = !DILocation(line: 134, column: 19, scope: !1084)
!1177 = !DILocation(line: 165, column: 7, scope: !1084)
!1178 = !DILocation(line: 166, column: 7, scope: !1084)
!1179 = !DILocation(line: 171, column: 7, scope: !1084)
!1180 = !DILocation(line: 176, column: 7, scope: !1064)
!1181 = !DILocation(line: 182, column: 25, scope: !1104)
!1182 = !DILocation(line: 185, column: 11, scope: !1104)
!1183 = !DILocation(line: 186, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 185, column: 11)
!1185 = !DILocation(line: 192, column: 11, scope: !1103)
!1186 = !DILocation(line: 192, column: 40, scope: !1103)
!1187 = !DILocation(line: 192, column: 11, scope: !1104)
!1188 = !DILocation(line: 193, column: 9, scope: !1103)
!1189 = !DILocation(line: 196, column: 11, scope: !1104)
!1190 = !DILocation(line: 197, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 196, column: 11)
!1192 = !DILocation(line: 206, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 206, column: 7)
!1194 = !DILocalVariable(name: "__stream", arg: 1, scope: !1195, file: !1196, line: 135, type: !322)
!1195 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1196, file: !1196, line: 135, type: !1197, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1199)
!1196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!184, !322}
!1199 = !{!1194}
!1200 = !DILocation(line: 0, scope: !1195, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 206, column: 7, scope: !1193)
!1202 = !DILocation(line: 137, column: 10, scope: !1195, inlinedAt: !1201)
!1203 = !{!1204, !915, i64 0}
!1204 = !{!"_IO_FILE", !915, i64 0, !846, i64 8, !846, i64 16, !846, i64 24, !846, i64 32, !846, i64 40, !846, i64 48, !846, i64 56, !846, i64 64, !846, i64 72, !846, i64 80, !846, i64 88, !846, i64 96, !846, i64 104, !915, i64 112, !915, i64 116, !1205, i64 120, !956, i64 128, !847, i64 130, !847, i64 131, !846, i64 136, !1205, i64 144, !846, i64 152, !846, i64 160, !846, i64 168, !846, i64 176, !1205, i64 184, !915, i64 192, !847, i64 196}
!1205 = !{!"long", !847, i64 0}
!1206 = !DILocation(line: 206, column: 7, scope: !1064)
!1207 = !DILocation(line: 209, column: 3, scope: !1064)
!1208 = !DILocation(line: 211, column: 23, scope: !1064)
!1209 = !DILocation(line: 211, column: 21, scope: !1064)
!1210 = !DILocation(line: 212, column: 11, scope: !1064)
!1211 = !DILocation(line: 212, column: 3, scope: !1064)
!1212 = !DILocation(line: 213, column: 21, scope: !1064)
!1213 = !DILocation(line: 213, column: 27, scope: !1064)
!1214 = !DILocation(line: 222, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 222, column: 7)
!1216 = !DILocation(line: 222, column: 45, scope: !1215)
!1217 = !DILocation(line: 222, column: 7, scope: !1064)
!1218 = !DILocation(line: 223, column: 5, scope: !1215)
!1219 = !DILocation(line: 226, column: 1, scope: !1064)
!1220 = !DISubprogram(name: "bindtextdomain", scope: !896, file: !896, line: 86, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!330, !134, !134}
!1223 = !DISubprogram(name: "textdomain", scope: !896, file: !896, line: 82, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DISubprogram(name: "atexit", scope: !1038, file: !1038, line: 602, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!184, !451}
!1227 = !DISubprogram(name: "isatty", scope: !1228, file: !1228, line: 809, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!184, !184}
!1231 = !DISubprogram(name: "__errno_location", scope: !1232, file: !1232, line: 37, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!494}
!1235 = !DISubprogram(name: "umask", scope: !1236, file: !1236, line: 380, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!1091, !1091}
!1239 = !DISubprogram(name: "open", scope: !1240, file: !1240, line: 181, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!184, !134, !184, null}
!1243 = !DISubprogram(name: "free", scope: !1038, file: !1038, line: 555, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !178}
!1246 = !DISubprogram(name: "dup2", scope: !1228, file: !1228, line: 555, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubprogram(name: "close", scope: !1228, file: !1228, line: 358, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubprogram(name: "signal", scope: !180, file: !180, line: 88, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!179, !184, !179}
!1251 = !DISubprogram(name: "execvp", scope: !1228, file: !1228, line: 599, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!184, !134, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!1256 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !391, file: !391, line: 50, type: !858, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1257)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "file", arg: 1, scope: !1256, file: !391, line: 50, type: !134)
!1259 = !DILocation(line: 0, scope: !1256)
!1260 = !DILocation(line: 52, column: 13, scope: !1256)
!1261 = !DILocation(line: 53, column: 1, scope: !1256)
!1262 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !391, file: !391, line: 87, type: !1263, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !309}
!1265 = !{!1266}
!1266 = !DILocalVariable(name: "ignore", arg: 1, scope: !1262, file: !391, line: 87, type: !309)
!1267 = !DILocation(line: 0, scope: !1262)
!1268 = !DILocation(line: 89, column: 16, scope: !1262)
!1269 = !{!1270, !1270, i64 0}
!1270 = !{!"_Bool", !847, i64 0}
!1271 = !DILocation(line: 90, column: 1, scope: !1262)
!1272 = distinct !DISubprogram(name: "close_stdout", scope: !391, file: !391, line: 116, type: !452, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "write_error", scope: !1275, file: !391, line: 121, type: !134)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !391, line: 120, column: 5)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !391, line: 118, column: 7)
!1277 = !DILocation(line: 118, column: 21, scope: !1276)
!1278 = !DILocation(line: 118, column: 7, scope: !1276)
!1279 = !DILocation(line: 118, column: 29, scope: !1276)
!1280 = !DILocation(line: 119, column: 7, scope: !1276)
!1281 = !DILocation(line: 119, column: 12, scope: !1276)
!1282 = !{i8 0, i8 2}
!1283 = !DILocation(line: 119, column: 25, scope: !1276)
!1284 = !DILocation(line: 119, column: 28, scope: !1276)
!1285 = !DILocation(line: 119, column: 34, scope: !1276)
!1286 = !DILocation(line: 118, column: 7, scope: !1272)
!1287 = !DILocation(line: 121, column: 33, scope: !1275)
!1288 = !DILocation(line: 0, scope: !1275)
!1289 = !DILocation(line: 122, column: 11, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1275, file: !391, line: 122, column: 11)
!1291 = !DILocation(line: 0, scope: !1290)
!1292 = !DILocation(line: 122, column: 11, scope: !1275)
!1293 = !DILocation(line: 123, column: 9, scope: !1290)
!1294 = !DILocation(line: 126, column: 9, scope: !1290)
!1295 = !DILocation(line: 128, column: 14, scope: !1275)
!1296 = !DILocation(line: 128, column: 7, scope: !1275)
!1297 = !DILocation(line: 133, column: 42, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1272, file: !391, line: 133, column: 7)
!1299 = !DILocation(line: 133, column: 28, scope: !1298)
!1300 = !DILocation(line: 133, column: 50, scope: !1298)
!1301 = !DILocation(line: 133, column: 7, scope: !1272)
!1302 = !DILocation(line: 134, column: 12, scope: !1298)
!1303 = !DILocation(line: 134, column: 5, scope: !1298)
!1304 = !DILocation(line: 135, column: 1, scope: !1272)
!1305 = !DISubprogram(name: "_exit", scope: !1228, file: !1228, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1306 = distinct !DISubprogram(name: "verror", scope: !406, file: !406, line: 251, type: !1307, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1309)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !184, !184, !134, !416}
!1309 = !{!1310, !1311, !1312, !1313}
!1310 = !DILocalVariable(name: "status", arg: 1, scope: !1306, file: !406, line: 251, type: !184)
!1311 = !DILocalVariable(name: "errnum", arg: 2, scope: !1306, file: !406, line: 251, type: !184)
!1312 = !DILocalVariable(name: "message", arg: 3, scope: !1306, file: !406, line: 251, type: !134)
!1313 = !DILocalVariable(name: "args", arg: 4, scope: !1306, file: !406, line: 251, type: !416)
!1314 = !DILocation(line: 0, scope: !1306)
!1315 = !DILocation(line: 261, column: 3, scope: !1306)
!1316 = !DILocation(line: 265, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1306, file: !406, line: 265, column: 7)
!1318 = !DILocation(line: 265, column: 7, scope: !1306)
!1319 = !DILocation(line: 266, column: 5, scope: !1317)
!1320 = !DILocation(line: 272, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !406, line: 268, column: 5)
!1322 = !DILocation(line: 276, column: 3, scope: !1306)
!1323 = !DILocation(line: 282, column: 1, scope: !1306)
!1324 = distinct !DISubprogram(name: "flush_stdout", scope: !406, file: !406, line: 163, type: !452, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1325)
!1325 = !{!1326}
!1326 = !DILocalVariable(name: "stdout_fd", scope: !1324, file: !406, line: 166, type: !184)
!1327 = !DILocation(line: 0, scope: !1324)
!1328 = !DILocalVariable(name: "fd", arg: 1, scope: !1329, file: !406, line: 145, type: !184)
!1329 = distinct !DISubprogram(name: "is_open", scope: !406, file: !406, line: 145, type: !1229, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1330)
!1330 = !{!1328}
!1331 = !DILocation(line: 0, scope: !1329, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 182, column: 25, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !406, line: 182, column: 7)
!1334 = !DILocation(line: 157, column: 15, scope: !1329, inlinedAt: !1332)
!1335 = !DILocation(line: 157, column: 12, scope: !1329, inlinedAt: !1332)
!1336 = !DILocation(line: 182, column: 7, scope: !1324)
!1337 = !DILocation(line: 184, column: 5, scope: !1333)
!1338 = !DILocation(line: 185, column: 1, scope: !1324)
!1339 = distinct !DISubprogram(name: "error_tail", scope: !406, file: !406, line: 219, type: !1307, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1340)
!1340 = !{!1341, !1342, !1343, !1344}
!1341 = !DILocalVariable(name: "status", arg: 1, scope: !1339, file: !406, line: 219, type: !184)
!1342 = !DILocalVariable(name: "errnum", arg: 2, scope: !1339, file: !406, line: 219, type: !184)
!1343 = !DILocalVariable(name: "message", arg: 3, scope: !1339, file: !406, line: 219, type: !134)
!1344 = !DILocalVariable(name: "args", arg: 4, scope: !1339, file: !406, line: 219, type: !416)
!1345 = distinct !DIAssignID()
!1346 = !DILocation(line: 0, scope: !1339)
!1347 = !DILocation(line: 229, column: 13, scope: !1339)
!1348 = !DILocalVariable(name: "__stream", arg: 1, scope: !1349, file: !900, line: 132, type: !1352)
!1349 = distinct !DISubprogram(name: "vfprintf", scope: !900, file: !900, line: 132, type: !1350, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1387)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!184, !1352, !904, !416}
!1352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1355, file: !326, line: 51, baseType: !184, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1355, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1355, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1355, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1355, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1355, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1355, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1355, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1355, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1355, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1355, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1355, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1355, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1355, file: !326, line: 70, baseType: !1371, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1355, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1355, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1355, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1355, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1355, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1355, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1355, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1355, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1355, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1355, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1355, file: !326, line: 93, baseType: !1371, size: 64, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1355, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1355, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1355, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1355, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!1387 = !{!1348, !1388, !1389}
!1388 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1349, file: !900, line: 133, type: !904)
!1389 = !DILocalVariable(name: "__ap", arg: 3, scope: !1349, file: !900, line: 133, type: !416)
!1390 = !DILocation(line: 0, scope: !1349, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 229, column: 3, scope: !1339)
!1392 = !DILocation(line: 135, column: 10, scope: !1349, inlinedAt: !1391)
!1393 = !DILocation(line: 232, column: 3, scope: !1339)
!1394 = !DILocation(line: 233, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1339, file: !406, line: 233, column: 7)
!1396 = !DILocation(line: 233, column: 7, scope: !1339)
!1397 = !DILocalVariable(name: "errbuf", scope: !1398, file: !406, line: 193, type: !1402)
!1398 = distinct !DISubprogram(name: "print_errno_message", scope: !406, file: !406, line: 188, type: !182, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1399)
!1399 = !{!1400, !1401, !1397}
!1400 = !DILocalVariable(name: "errnum", arg: 1, scope: !1398, file: !406, line: 188, type: !184)
!1401 = !DILocalVariable(name: "s", scope: !1398, file: !406, line: 190, type: !134)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1403)
!1403 = !{!1404}
!1404 = !DISubrange(count: 1024)
!1405 = !DILocation(line: 0, scope: !1398, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 234, column: 5, scope: !1395)
!1407 = !DILocation(line: 193, column: 3, scope: !1398, inlinedAt: !1406)
!1408 = !DILocation(line: 195, column: 7, scope: !1398, inlinedAt: !1406)
!1409 = !DILocation(line: 207, column: 9, scope: !1410, inlinedAt: !1406)
!1410 = distinct !DILexicalBlock(scope: !1398, file: !406, line: 207, column: 7)
!1411 = !DILocation(line: 207, column: 7, scope: !1398, inlinedAt: !1406)
!1412 = !DILocation(line: 208, column: 9, scope: !1410, inlinedAt: !1406)
!1413 = !DILocation(line: 208, column: 5, scope: !1410, inlinedAt: !1406)
!1414 = !DILocation(line: 214, column: 3, scope: !1398, inlinedAt: !1406)
!1415 = !DILocation(line: 216, column: 1, scope: !1398, inlinedAt: !1406)
!1416 = !DILocation(line: 234, column: 5, scope: !1395)
!1417 = !DILocation(line: 238, column: 3, scope: !1339)
!1418 = !DILocalVariable(name: "__c", arg: 1, scope: !1419, file: !1196, line: 101, type: !184)
!1419 = distinct !DISubprogram(name: "putc_unlocked", scope: !1196, file: !1196, line: 101, type: !1420, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!184, !184, !1353}
!1422 = !{!1418, !1423}
!1423 = !DILocalVariable(name: "__stream", arg: 2, scope: !1419, file: !1196, line: 101, type: !1353)
!1424 = !DILocation(line: 0, scope: !1419, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 238, column: 3, scope: !1339)
!1426 = !DILocation(line: 103, column: 10, scope: !1419, inlinedAt: !1425)
!1427 = !{!1204, !846, i64 40}
!1428 = !{!1204, !846, i64 48}
!1429 = !{!"branch_weights", i32 2000, i32 1}
!1430 = !DILocation(line: 240, column: 3, scope: !1339)
!1431 = !DILocation(line: 241, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1339, file: !406, line: 241, column: 7)
!1433 = !DILocation(line: 241, column: 7, scope: !1339)
!1434 = !DILocation(line: 242, column: 5, scope: !1432)
!1435 = !DILocation(line: 243, column: 1, scope: !1339)
!1436 = !DISubprogram(name: "__vfprintf_chk", scope: !900, file: !900, line: 96, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!184, !1352, !184, !904, !416}
!1439 = !DISubprogram(name: "strerror_r", scope: !1034, file: !1034, line: 444, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!330, !184, !330, !186}
!1442 = !DISubprogram(name: "__overflow", scope: !909, file: !909, line: 886, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!184, !1353, !184}
!1445 = !DISubprogram(name: "fflush_unlocked", scope: !909, file: !909, line: 239, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!184, !1353}
!1448 = !DISubprogram(name: "fcntl", scope: !1240, file: !1240, line: 149, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!184, !184, !184, null}
!1451 = distinct !DISubprogram(name: "error", scope: !406, file: !406, line: 285, type: !1452, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !184, !184, !134, null}
!1454 = !{!1455, !1456, !1457, !1458}
!1455 = !DILocalVariable(name: "status", arg: 1, scope: !1451, file: !406, line: 285, type: !184)
!1456 = !DILocalVariable(name: "errnum", arg: 2, scope: !1451, file: !406, line: 285, type: !184)
!1457 = !DILocalVariable(name: "message", arg: 3, scope: !1451, file: !406, line: 285, type: !134)
!1458 = !DILocalVariable(name: "ap", scope: !1451, file: !406, line: 287, type: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !909, line: 52, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1461, line: 12, baseType: !1462)
!1461 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !406, baseType: !1463)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 192, elements: !45)
!1464 = distinct !DIAssignID()
!1465 = !DILocation(line: 0, scope: !1451)
!1466 = !DILocation(line: 287, column: 3, scope: !1451)
!1467 = !DILocation(line: 288, column: 3, scope: !1451)
!1468 = !DILocation(line: 289, column: 3, scope: !1451)
!1469 = !DILocation(line: 290, column: 3, scope: !1451)
!1470 = !DILocation(line: 291, column: 1, scope: !1451)
!1471 = !DILocation(line: 0, scope: !413)
!1472 = !DILocation(line: 302, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !413, file: !406, line: 302, column: 7)
!1474 = !DILocation(line: 302, column: 7, scope: !413)
!1475 = !DILocation(line: 307, column: 11, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !406, line: 307, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !406, line: 303, column: 5)
!1478 = !DILocation(line: 307, column: 27, scope: !1476)
!1479 = !DILocation(line: 308, column: 11, scope: !1476)
!1480 = !DILocation(line: 308, column: 28, scope: !1476)
!1481 = !DILocation(line: 308, column: 25, scope: !1476)
!1482 = !DILocation(line: 309, column: 15, scope: !1476)
!1483 = !DILocation(line: 309, column: 33, scope: !1476)
!1484 = !DILocation(line: 310, column: 19, scope: !1476)
!1485 = !DILocation(line: 311, column: 22, scope: !1476)
!1486 = !DILocation(line: 311, column: 56, scope: !1476)
!1487 = !DILocation(line: 307, column: 11, scope: !1477)
!1488 = !DILocation(line: 316, column: 21, scope: !1477)
!1489 = !DILocation(line: 317, column: 23, scope: !1477)
!1490 = !DILocation(line: 318, column: 5, scope: !1477)
!1491 = !DILocation(line: 327, column: 3, scope: !413)
!1492 = !DILocation(line: 331, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !413, file: !406, line: 331, column: 7)
!1494 = !DILocation(line: 331, column: 7, scope: !413)
!1495 = !DILocation(line: 332, column: 5, scope: !1493)
!1496 = !DILocation(line: 338, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !406, line: 334, column: 5)
!1498 = !DILocation(line: 346, column: 3, scope: !413)
!1499 = !DILocation(line: 350, column: 3, scope: !413)
!1500 = !DILocation(line: 356, column: 1, scope: !413)
!1501 = distinct !DISubprogram(name: "error_at_line", scope: !406, file: !406, line: 359, type: !1502, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !184, !184, !134, !139, !134, null}
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510}
!1505 = !DILocalVariable(name: "status", arg: 1, scope: !1501, file: !406, line: 359, type: !184)
!1506 = !DILocalVariable(name: "errnum", arg: 2, scope: !1501, file: !406, line: 359, type: !184)
!1507 = !DILocalVariable(name: "file_name", arg: 3, scope: !1501, file: !406, line: 359, type: !134)
!1508 = !DILocalVariable(name: "line_number", arg: 4, scope: !1501, file: !406, line: 360, type: !139)
!1509 = !DILocalVariable(name: "message", arg: 5, scope: !1501, file: !406, line: 360, type: !134)
!1510 = !DILocalVariable(name: "ap", scope: !1501, file: !406, line: 362, type: !1459)
!1511 = distinct !DIAssignID()
!1512 = !DILocation(line: 0, scope: !1501)
!1513 = !DILocation(line: 362, column: 3, scope: !1501)
!1514 = !DILocation(line: 363, column: 3, scope: !1501)
!1515 = !DILocation(line: 364, column: 3, scope: !1501)
!1516 = !DILocation(line: 366, column: 3, scope: !1501)
!1517 = !DILocation(line: 367, column: 1, scope: !1501)
!1518 = distinct !DISubprogram(name: "rpl_fcntl", scope: !457, file: !457, line: 202, type: !1449, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1533, !1534, !1537, !1539, !1543}
!1520 = !DILocalVariable(name: "fd", arg: 1, scope: !1518, file: !457, line: 202, type: !184)
!1521 = !DILocalVariable(name: "action", arg: 2, scope: !1518, file: !457, line: 202, type: !184)
!1522 = !DILocalVariable(name: "arg", scope: !1518, file: !457, line: 208, type: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1524, line: 12, baseType: !1525)
!1524 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !457, baseType: !1526)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1527, size: 192, elements: !45)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1527, file: !457, line: 208, baseType: !139, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1527, file: !457, line: 208, baseType: !139, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1527, file: !457, line: 208, baseType: !178, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1527, file: !457, line: 208, baseType: !178, size: 64, offset: 128)
!1533 = !DILocalVariable(name: "result", scope: !1518, file: !457, line: 211, type: !184)
!1534 = !DILocalVariable(name: "target", scope: !1535, file: !457, line: 216, type: !184)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !457, line: 215, column: 7)
!1536 = distinct !DILexicalBlock(scope: !1518, file: !457, line: 213, column: 5)
!1537 = !DILocalVariable(name: "target", scope: !1538, file: !457, line: 223, type: !184)
!1538 = distinct !DILexicalBlock(scope: !1536, file: !457, line: 222, column: 7)
!1539 = !DILocalVariable(name: "x", scope: !1540, file: !457, line: 418, type: !184)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !457, line: 417, column: 13)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !457, line: 261, column: 11)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !457, line: 258, column: 7)
!1543 = !DILocalVariable(name: "p", scope: !1544, file: !457, line: 426, type: !178)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !457, line: 425, column: 13)
!1545 = distinct !DIAssignID()
!1546 = !DILocation(line: 0, scope: !1518)
!1547 = !DILocation(line: 208, column: 3, scope: !1518)
!1548 = !DILocation(line: 209, column: 3, scope: !1518)
!1549 = !DILocation(line: 212, column: 3, scope: !1518)
!1550 = !DILocation(line: 216, column: 22, scope: !1535)
!1551 = distinct !DIAssignID()
!1552 = distinct !DIAssignID()
!1553 = !DILocation(line: 0, scope: !1535)
!1554 = !DILocalVariable(name: "fd", arg: 1, scope: !1555, file: !457, line: 444, type: !184)
!1555 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !457, file: !457, line: 444, type: !458, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1556)
!1556 = !{!1554, !1557, !1558}
!1557 = !DILocalVariable(name: "target", arg: 2, scope: !1555, file: !457, line: 444, type: !184)
!1558 = !DILocalVariable(name: "result", scope: !1555, file: !457, line: 446, type: !184)
!1559 = !DILocation(line: 0, scope: !1555, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 217, column: 18, scope: !1535)
!1561 = !DILocation(line: 479, column: 12, scope: !1555, inlinedAt: !1560)
!1562 = !DILocation(line: 223, column: 22, scope: !1538)
!1563 = distinct !DIAssignID()
!1564 = distinct !DIAssignID()
!1565 = !DILocation(line: 0, scope: !1538)
!1566 = !DILocation(line: 0, scope: !456, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 224, column: 18, scope: !1538)
!1568 = !DILocation(line: 507, column: 12, scope: !1569, inlinedAt: !1567)
!1569 = distinct !DILexicalBlock(scope: !456, file: !457, line: 507, column: 7)
!1570 = !DILocation(line: 507, column: 9, scope: !1569, inlinedAt: !1567)
!1571 = !DILocation(line: 507, column: 7, scope: !456, inlinedAt: !1567)
!1572 = !DILocation(line: 509, column: 16, scope: !1573, inlinedAt: !1567)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !457, line: 508, column: 5)
!1574 = !DILocation(line: 510, column: 13, scope: !1575, inlinedAt: !1567)
!1575 = distinct !DILexicalBlock(scope: !1573, file: !457, line: 510, column: 11)
!1576 = !DILocation(line: 510, column: 23, scope: !1575, inlinedAt: !1567)
!1577 = !DILocation(line: 510, column: 26, scope: !1575, inlinedAt: !1567)
!1578 = !DILocation(line: 510, column: 32, scope: !1575, inlinedAt: !1567)
!1579 = !DILocation(line: 510, column: 11, scope: !1573, inlinedAt: !1567)
!1580 = !DILocation(line: 512, column: 30, scope: !1581, inlinedAt: !1567)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !457, line: 511, column: 9)
!1582 = !DILocation(line: 528, column: 19, scope: !468, inlinedAt: !1567)
!1583 = !DILocation(line: 0, scope: !1555, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 520, column: 20, scope: !1585, inlinedAt: !1567)
!1585 = distinct !DILexicalBlock(scope: !1575, file: !457, line: 519, column: 9)
!1586 = !DILocation(line: 479, column: 12, scope: !1555, inlinedAt: !1584)
!1587 = !DILocation(line: 521, column: 22, scope: !1588, inlinedAt: !1567)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !457, line: 521, column: 15)
!1589 = !DILocation(line: 521, column: 15, scope: !1585, inlinedAt: !1567)
!1590 = !DILocation(line: 522, column: 32, scope: !1588, inlinedAt: !1567)
!1591 = !DILocation(line: 522, column: 13, scope: !1588, inlinedAt: !1567)
!1592 = !DILocation(line: 0, scope: !1555, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 527, column: 14, scope: !1569, inlinedAt: !1567)
!1594 = !DILocation(line: 479, column: 12, scope: !1555, inlinedAt: !1593)
!1595 = !DILocation(line: 0, scope: !1569, inlinedAt: !1567)
!1596 = !DILocation(line: 528, column: 9, scope: !468, inlinedAt: !1567)
!1597 = !DILocation(line: 530, column: 19, scope: !467, inlinedAt: !1567)
!1598 = !DILocation(line: 0, scope: !467, inlinedAt: !1567)
!1599 = !DILocation(line: 531, column: 17, scope: !471, inlinedAt: !1567)
!1600 = !DILocation(line: 531, column: 21, scope: !471, inlinedAt: !1567)
!1601 = !DILocation(line: 531, column: 54, scope: !471, inlinedAt: !1567)
!1602 = !DILocation(line: 531, column: 24, scope: !471, inlinedAt: !1567)
!1603 = !DILocation(line: 531, column: 68, scope: !471, inlinedAt: !1567)
!1604 = !DILocation(line: 531, column: 11, scope: !467, inlinedAt: !1567)
!1605 = !DILocation(line: 533, column: 29, scope: !470, inlinedAt: !1567)
!1606 = !DILocation(line: 0, scope: !470, inlinedAt: !1567)
!1607 = !DILocation(line: 534, column: 11, scope: !470, inlinedAt: !1567)
!1608 = !DILocation(line: 535, column: 17, scope: !470, inlinedAt: !1567)
!1609 = !DILocation(line: 537, column: 9, scope: !470, inlinedAt: !1567)
!1610 = !DILocation(line: 329, column: 22, scope: !1541)
!1611 = !DILocation(line: 330, column: 13, scope: !1541)
!1612 = !DILocation(line: 418, column: 23, scope: !1540)
!1613 = distinct !DIAssignID()
!1614 = distinct !DIAssignID()
!1615 = !DILocation(line: 0, scope: !1540)
!1616 = !DILocation(line: 419, column: 24, scope: !1540)
!1617 = !DILocation(line: 421, column: 13, scope: !1541)
!1618 = !DILocation(line: 426, column: 25, scope: !1544)
!1619 = distinct !DIAssignID()
!1620 = distinct !DIAssignID()
!1621 = !DILocation(line: 0, scope: !1544)
!1622 = !DILocation(line: 427, column: 24, scope: !1544)
!1623 = !DILocation(line: 429, column: 13, scope: !1541)
!1624 = !DILocation(line: 0, scope: !1536)
!1625 = !DILocation(line: 438, column: 3, scope: !1518)
!1626 = !DILocation(line: 441, column: 1, scope: !1518)
!1627 = !DILocation(line: 440, column: 3, scope: !1518)
!1628 = distinct !DISubprogram(name: "fd_reopen", scope: !757, file: !757, line: 32, type: !1629, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!184, !184, !134, !184, !1089}
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1640}
!1632 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1628, file: !757, line: 32, type: !184)
!1633 = !DILocalVariable(name: "file", arg: 2, scope: !1628, file: !757, line: 32, type: !134)
!1634 = !DILocalVariable(name: "flags", arg: 3, scope: !1628, file: !757, line: 32, type: !184)
!1635 = !DILocalVariable(name: "mode", arg: 4, scope: !1628, file: !757, line: 32, type: !1089)
!1636 = !DILocalVariable(name: "fd", scope: !1628, file: !757, line: 34, type: !184)
!1637 = !DILocalVariable(name: "fd2", scope: !1638, file: !757, line: 40, type: !184)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !757, line: 39, column: 5)
!1639 = distinct !DILexicalBlock(scope: !1628, file: !757, line: 36, column: 7)
!1640 = !DILocalVariable(name: "saved_errno", scope: !1638, file: !757, line: 41, type: !184)
!1641 = !DILocation(line: 0, scope: !1628)
!1642 = !DILocation(line: 34, column: 12, scope: !1628)
!1643 = !DILocation(line: 36, column: 10, scope: !1639)
!1644 = !DILocation(line: 36, column: 24, scope: !1639)
!1645 = !DILocation(line: 40, column: 17, scope: !1638)
!1646 = !DILocation(line: 0, scope: !1638)
!1647 = !DILocation(line: 41, column: 25, scope: !1638)
!1648 = !DILocation(line: 42, column: 7, scope: !1638)
!1649 = !DILocation(line: 43, column: 13, scope: !1638)
!1650 = !DILocation(line: 0, scope: !1639)
!1651 = !DILocation(line: 46, column: 1, scope: !1628)
!1652 = distinct !DISubprogram(name: "file_name_concat", scope: !759, file: !759, line: 35, type: !1653, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!330, !134, !134, !1067}
!1655 = !{!1656, !1657, !1658, !1659}
!1656 = !DILocalVariable(name: "dir", arg: 1, scope: !1652, file: !759, line: 35, type: !134)
!1657 = !DILocalVariable(name: "base", arg: 2, scope: !1652, file: !759, line: 35, type: !134)
!1658 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1652, file: !759, line: 35, type: !1067)
!1659 = !DILocalVariable(name: "p", scope: !1652, file: !759, line: 37, type: !330)
!1660 = !DILocation(line: 0, scope: !1652)
!1661 = !DILocation(line: 37, column: 13, scope: !1652)
!1662 = !DILocation(line: 38, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1652, file: !759, line: 38, column: 7)
!1664 = !DILocation(line: 38, column: 7, scope: !1652)
!1665 = !DILocation(line: 39, column: 5, scope: !1663)
!1666 = !DILocation(line: 40, column: 3, scope: !1652)
!1667 = distinct !DISubprogram(name: "mfile_name_concat", scope: !761, file: !761, line: 48, type: !1653, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1669 = !DILocalVariable(name: "dir", arg: 1, scope: !1667, file: !761, line: 48, type: !134)
!1670 = !DILocalVariable(name: "base", arg: 2, scope: !1667, file: !761, line: 48, type: !134)
!1671 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1667, file: !761, line: 48, type: !1067)
!1672 = !DILocalVariable(name: "dirbase", scope: !1667, file: !761, line: 50, type: !134)
!1673 = !DILocalVariable(name: "dirbaselen", scope: !1667, file: !761, line: 51, type: !186)
!1674 = !DILocalVariable(name: "dirlen", scope: !1667, file: !761, line: 52, type: !186)
!1675 = !DILocalVariable(name: "baselen", scope: !1667, file: !761, line: 53, type: !186)
!1676 = !DILocalVariable(name: "sep", scope: !1667, file: !761, line: 54, type: !4)
!1677 = !DILocalVariable(name: "p_concat", scope: !1667, file: !761, line: 71, type: !330)
!1678 = !DILocalVariable(name: "p", scope: !1679, file: !761, line: 76, type: !330)
!1679 = distinct !DILexicalBlock(scope: !1667, file: !761, line: 75, column: 3)
!1680 = !DILocation(line: 0, scope: !1667)
!1681 = !DILocation(line: 50, column: 25, scope: !1667)
!1682 = !DILocation(line: 51, column: 23, scope: !1667)
!1683 = !DILocation(line: 52, column: 27, scope: !1667)
!1684 = !DILocation(line: 52, column: 33, scope: !1667)
!1685 = !DILocation(line: 53, column: 20, scope: !1667)
!1686 = !DILocation(line: 55, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1667, file: !761, line: 55, column: 7)
!1688 = !DILocation(line: 55, column: 7, scope: !1667)
!1689 = !DILocation(line: 58, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !761, line: 58, column: 11)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !761, line: 56, column: 5)
!1692 = !DILocation(line: 58, column: 39, scope: !1690)
!1693 = !DILocation(line: 58, column: 44, scope: !1690)
!1694 = !DILocation(line: 58, column: 11, scope: !1691)
!1695 = !DILocation(line: 61, column: 12, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !761, line: 61, column: 12)
!1697 = !DILocation(line: 61, column: 12, scope: !1687)
!1698 = !DILocation(line: 71, column: 35, scope: !1667)
!1699 = !DILocation(line: 71, column: 52, scope: !1667)
!1700 = !DILocation(line: 71, column: 62, scope: !1667)
!1701 = !DILocation(line: 71, column: 20, scope: !1667)
!1702 = !DILocation(line: 72, column: 16, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1667, file: !761, line: 72, column: 7)
!1704 = !DILocation(line: 72, column: 7, scope: !1667)
!1705 = !DILocalVariable(name: "__dest", arg: 1, scope: !1706, file: !1707, line: 42, type: !1710)
!1706 = distinct !DISubprogram(name: "mempcpy", scope: !1707, file: !1707, line: 42, type: !1708, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !1711)
!1707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!178, !1710, !1061, !186}
!1710 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1711 = !{!1705, !1712, !1713}
!1712 = !DILocalVariable(name: "__src", arg: 2, scope: !1706, file: !1707, line: 42, type: !1061)
!1713 = !DILocalVariable(name: "__len", arg: 3, scope: !1706, file: !1707, line: 42, type: !186)
!1714 = !DILocation(line: 0, scope: !1706, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 78, column: 9, scope: !1679)
!1716 = !DILocation(line: 45, column: 10, scope: !1706, inlinedAt: !1715)
!1717 = !DILocation(line: 0, scope: !1679)
!1718 = !DILocation(line: 79, column: 8, scope: !1679)
!1719 = !DILocation(line: 80, column: 7, scope: !1679)
!1720 = !DILocation(line: 82, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1679, file: !761, line: 82, column: 9)
!1722 = !DILocation(line: 82, column: 9, scope: !1679)
!1723 = !DILocation(line: 83, column: 23, scope: !1721)
!1724 = !DILocation(line: 83, column: 7, scope: !1721)
!1725 = !DILocation(line: 0, scope: !1706, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 85, column: 9, scope: !1679)
!1727 = !DILocation(line: 45, column: 10, scope: !1706, inlinedAt: !1726)
!1728 = !DILocation(line: 86, column: 8, scope: !1679)
!1729 = !DILocation(line: 89, column: 3, scope: !1667)
!1730 = !DILocation(line: 90, column: 1, scope: !1667)
!1731 = !DISubprogram(name: "strlen", scope: !1034, file: !1034, line: 407, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!188, !134}
!1734 = !DISubprogram(name: "malloc", scope: !1038, file: !1038, line: 540, type: !1735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!178, !186}
!1737 = distinct !DISubprogram(name: "getprogname", scope: !763, file: !763, line: 54, type: !1738, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!134}
!1740 = !DILocation(line: 58, column: 10, scope: !1737)
!1741 = !DILocation(line: 58, column: 3, scope: !1737)
!1742 = distinct !DISubprogram(name: "parse_long_options", scope: !474, file: !474, line: 45, type: !1743, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !184, !1067, !134, !134, !134, !181, null}
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1756}
!1746 = !DILocalVariable(name: "argc", arg: 1, scope: !1742, file: !474, line: 45, type: !184)
!1747 = !DILocalVariable(name: "argv", arg: 2, scope: !1742, file: !474, line: 46, type: !1067)
!1748 = !DILocalVariable(name: "command_name", arg: 3, scope: !1742, file: !474, line: 47, type: !134)
!1749 = !DILocalVariable(name: "package", arg: 4, scope: !1742, file: !474, line: 48, type: !134)
!1750 = !DILocalVariable(name: "version", arg: 5, scope: !1742, file: !474, line: 49, type: !134)
!1751 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1742, file: !474, line: 50, type: !181)
!1752 = !DILocalVariable(name: "saved_opterr", scope: !1742, file: !474, line: 53, type: !184)
!1753 = !DILocalVariable(name: "c", scope: !1754, file: !474, line: 60, type: !184)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !474, line: 59, column: 5)
!1755 = distinct !DILexicalBlock(scope: !1742, file: !474, line: 58, column: 7)
!1756 = !DILocalVariable(name: "authors", scope: !1757, file: !474, line: 71, type: !1761)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !474, line: 70, column: 15)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !474, line: 64, column: 13)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !474, line: 62, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1754, file: !474, line: 61, column: 11)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !909, line: 52, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1461, line: 12, baseType: !1763)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !474, baseType: !1764)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1765, size: 192, elements: !45)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1765, file: !474, line: 71, baseType: !139, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1765, file: !474, line: 71, baseType: !139, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1765, file: !474, line: 71, baseType: !178, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1765, file: !474, line: 71, baseType: !178, size: 64, offset: 128)
!1771 = distinct !DIAssignID()
!1772 = !DILocation(line: 0, scope: !1757)
!1773 = !DILocation(line: 0, scope: !1742)
!1774 = !DILocation(line: 53, column: 22, scope: !1742)
!1775 = !DILocation(line: 56, column: 10, scope: !1742)
!1776 = !DILocation(line: 58, column: 12, scope: !1755)
!1777 = !DILocation(line: 58, column: 7, scope: !1742)
!1778 = !DILocation(line: 60, column: 15, scope: !1754)
!1779 = !DILocation(line: 0, scope: !1754)
!1780 = !DILocation(line: 61, column: 11, scope: !1754)
!1781 = !DILocation(line: 66, column: 15, scope: !1758)
!1782 = !DILocation(line: 67, column: 15, scope: !1758)
!1783 = !DILocation(line: 71, column: 17, scope: !1757)
!1784 = !DILocation(line: 72, column: 17, scope: !1757)
!1785 = !DILocation(line: 73, column: 33, scope: !1757)
!1786 = !DILocation(line: 73, column: 17, scope: !1757)
!1787 = !DILocation(line: 74, column: 17, scope: !1757)
!1788 = !DILocation(line: 85, column: 10, scope: !1742)
!1789 = !DILocation(line: 89, column: 10, scope: !1742)
!1790 = !DILocation(line: 90, column: 1, scope: !1742)
!1791 = !DISubprogram(name: "getopt_long", scope: !489, file: !489, line: 66, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!184, !184, !1254, !134, !1794, !494}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1795 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !474, file: !474, line: 98, type: !1796, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !184, !1067, !134, !134, !134, !309, !181, null}
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1799 = !DILocalVariable(name: "argc", arg: 1, scope: !1795, file: !474, line: 98, type: !184)
!1800 = !DILocalVariable(name: "argv", arg: 2, scope: !1795, file: !474, line: 99, type: !1067)
!1801 = !DILocalVariable(name: "command_name", arg: 3, scope: !1795, file: !474, line: 100, type: !134)
!1802 = !DILocalVariable(name: "package", arg: 4, scope: !1795, file: !474, line: 101, type: !134)
!1803 = !DILocalVariable(name: "version", arg: 5, scope: !1795, file: !474, line: 102, type: !134)
!1804 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1795, file: !474, line: 103, type: !309)
!1805 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1795, file: !474, line: 104, type: !181)
!1806 = !DILocalVariable(name: "saved_opterr", scope: !1795, file: !474, line: 107, type: !184)
!1807 = !DILocalVariable(name: "optstring", scope: !1795, file: !474, line: 112, type: !134)
!1808 = !DILocalVariable(name: "c", scope: !1795, file: !474, line: 114, type: !184)
!1809 = !DILocalVariable(name: "authors", scope: !1810, file: !474, line: 125, type: !1761)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !474, line: 124, column: 11)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !474, line: 118, column: 9)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !474, line: 116, column: 5)
!1813 = distinct !DILexicalBlock(scope: !1795, file: !474, line: 115, column: 7)
!1814 = distinct !DIAssignID()
!1815 = !DILocation(line: 0, scope: !1810)
!1816 = !DILocation(line: 0, scope: !1795)
!1817 = !DILocation(line: 107, column: 22, scope: !1795)
!1818 = !DILocation(line: 110, column: 10, scope: !1795)
!1819 = !DILocation(line: 112, column: 27, scope: !1795)
!1820 = !DILocation(line: 114, column: 11, scope: !1795)
!1821 = !DILocation(line: 115, column: 7, scope: !1795)
!1822 = !DILocation(line: 125, column: 13, scope: !1810)
!1823 = !DILocation(line: 126, column: 13, scope: !1810)
!1824 = !DILocation(line: 127, column: 29, scope: !1810)
!1825 = !DILocation(line: 127, column: 13, scope: !1810)
!1826 = !DILocation(line: 128, column: 13, scope: !1810)
!1827 = !DILocation(line: 132, column: 26, scope: !1811)
!1828 = !DILocation(line: 133, column: 11, scope: !1811)
!1829 = !DILocation(line: 0, scope: !1811)
!1830 = !DILocation(line: 138, column: 10, scope: !1795)
!1831 = !DILocation(line: 139, column: 1, scope: !1795)
!1832 = distinct !DISubprogram(name: "set_program_name", scope: !499, file: !499, line: 37, type: !858, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1833)
!1833 = !{!1834, !1835, !1836}
!1834 = !DILocalVariable(name: "argv0", arg: 1, scope: !1832, file: !499, line: 37, type: !134)
!1835 = !DILocalVariable(name: "slash", scope: !1832, file: !499, line: 44, type: !134)
!1836 = !DILocalVariable(name: "base", scope: !1832, file: !499, line: 45, type: !134)
!1837 = !DILocation(line: 0, scope: !1832)
!1838 = !DILocation(line: 44, column: 23, scope: !1832)
!1839 = !DILocation(line: 45, column: 22, scope: !1832)
!1840 = !DILocation(line: 46, column: 17, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !499, line: 46, column: 7)
!1842 = !DILocation(line: 46, column: 9, scope: !1841)
!1843 = !DILocation(line: 46, column: 25, scope: !1841)
!1844 = !DILocation(line: 46, column: 40, scope: !1841)
!1845 = !DILocalVariable(name: "__s1", arg: 1, scope: !1846, file: !927, line: 974, type: !1062)
!1846 = distinct !DISubprogram(name: "memeq", scope: !927, file: !927, line: 974, type: !1847, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!309, !1062, !1062, !186}
!1849 = !{!1845, !1850, !1851}
!1850 = !DILocalVariable(name: "__s2", arg: 2, scope: !1846, file: !927, line: 974, type: !1062)
!1851 = !DILocalVariable(name: "__n", arg: 3, scope: !1846, file: !927, line: 974, type: !186)
!1852 = !DILocation(line: 0, scope: !1846, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 46, column: 28, scope: !1841)
!1854 = !DILocation(line: 976, column: 11, scope: !1846, inlinedAt: !1853)
!1855 = !DILocation(line: 976, column: 10, scope: !1846, inlinedAt: !1853)
!1856 = !DILocation(line: 46, column: 7, scope: !1832)
!1857 = !DILocation(line: 49, column: 11, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !499, line: 49, column: 11)
!1859 = distinct !DILexicalBlock(scope: !1841, file: !499, line: 47, column: 5)
!1860 = !DILocation(line: 49, column: 36, scope: !1858)
!1861 = !DILocation(line: 49, column: 11, scope: !1859)
!1862 = !DILocation(line: 65, column: 16, scope: !1832)
!1863 = !DILocation(line: 71, column: 27, scope: !1832)
!1864 = !DILocation(line: 74, column: 33, scope: !1832)
!1865 = !DILocation(line: 76, column: 1, scope: !1832)
!1866 = !DISubprogram(name: "strrchr", scope: !1034, file: !1034, line: 273, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1867 = distinct !DIAssignID()
!1868 = !DILocation(line: 0, scope: !508)
!1869 = distinct !DIAssignID()
!1870 = !DILocation(line: 40, column: 29, scope: !508)
!1871 = !DILocation(line: 41, column: 19, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !508, file: !509, line: 41, column: 7)
!1873 = !DILocation(line: 41, column: 7, scope: !508)
!1874 = !DILocation(line: 47, column: 3, scope: !508)
!1875 = !DILocation(line: 48, column: 3, scope: !508)
!1876 = !DILocalVariable(name: "ps", arg: 1, scope: !1877, file: !1878, line: 1135, type: !1881)
!1877 = distinct !DISubprogram(name: "mbszero", scope: !1878, file: !1878, line: 1135, type: !1879, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1882)
!1878 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !1881}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1882 = !{!1876}
!1883 = !DILocation(line: 0, scope: !1877, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 48, column: 18, scope: !508)
!1885 = !DILocalVariable(name: "__dest", arg: 1, scope: !1886, file: !1707, line: 57, type: !178)
!1886 = distinct !DISubprogram(name: "memset", scope: !1707, file: !1707, line: 57, type: !1887, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!178, !178, !184, !186}
!1889 = !{!1885, !1890, !1891}
!1890 = !DILocalVariable(name: "__ch", arg: 2, scope: !1886, file: !1707, line: 57, type: !184)
!1891 = !DILocalVariable(name: "__len", arg: 3, scope: !1886, file: !1707, line: 57, type: !186)
!1892 = !DILocation(line: 0, scope: !1886, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 1137, column: 3, scope: !1877, inlinedAt: !1884)
!1894 = !DILocation(line: 59, column: 10, scope: !1886, inlinedAt: !1893)
!1895 = !DILocation(line: 49, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !508, file: !509, line: 49, column: 7)
!1897 = !DILocation(line: 49, column: 39, scope: !1896)
!1898 = !DILocation(line: 49, column: 44, scope: !1896)
!1899 = !DILocation(line: 54, column: 1, scope: !508)
!1900 = !DISubprogram(name: "mbrtoc32", scope: !520, file: !520, line: 57, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!186, !1903, !904, !186, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1881)
!1906 = distinct !DISubprogram(name: "clone_quoting_options", scope: !539, file: !539, line: 113, type: !1907, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1910)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1909, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !539, line: 113, type: !1909)
!1912 = !DILocalVariable(name: "saved_errno", scope: !1906, file: !539, line: 115, type: !184)
!1913 = !DILocalVariable(name: "p", scope: !1906, file: !539, line: 116, type: !1909)
!1914 = !DILocation(line: 0, scope: !1906)
!1915 = !DILocation(line: 115, column: 21, scope: !1906)
!1916 = !DILocation(line: 116, column: 40, scope: !1906)
!1917 = !DILocation(line: 116, column: 31, scope: !1906)
!1918 = !DILocation(line: 118, column: 9, scope: !1906)
!1919 = !DILocation(line: 119, column: 3, scope: !1906)
!1920 = distinct !DISubprogram(name: "get_quoting_style", scope: !539, file: !539, line: 124, type: !1921, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1925)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!562, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!1925 = !{!1926}
!1926 = !DILocalVariable(name: "o", arg: 1, scope: !1920, file: !539, line: 124, type: !1923)
!1927 = !DILocation(line: 0, scope: !1920)
!1928 = !DILocation(line: 126, column: 11, scope: !1920)
!1929 = !DILocation(line: 126, column: 46, scope: !1920)
!1930 = !{!1931, !915, i64 0}
!1931 = !{!"quoting_options", !915, i64 0, !915, i64 4, !847, i64 8, !846, i64 40, !846, i64 48}
!1932 = !DILocation(line: 126, column: 3, scope: !1920)
!1933 = distinct !DISubprogram(name: "set_quoting_style", scope: !539, file: !539, line: 132, type: !1934, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !1909, !562}
!1936 = !{!1937, !1938}
!1937 = !DILocalVariable(name: "o", arg: 1, scope: !1933, file: !539, line: 132, type: !1909)
!1938 = !DILocalVariable(name: "s", arg: 2, scope: !1933, file: !539, line: 132, type: !562)
!1939 = !DILocation(line: 0, scope: !1933)
!1940 = !DILocation(line: 134, column: 4, scope: !1933)
!1941 = !DILocation(line: 134, column: 45, scope: !1933)
!1942 = !DILocation(line: 135, column: 1, scope: !1933)
!1943 = distinct !DISubprogram(name: "set_char_quoting", scope: !539, file: !539, line: 143, type: !1944, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!184, !1909, !4, !184}
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1953, !1954}
!1947 = !DILocalVariable(name: "o", arg: 1, scope: !1943, file: !539, line: 143, type: !1909)
!1948 = !DILocalVariable(name: "c", arg: 2, scope: !1943, file: !539, line: 143, type: !4)
!1949 = !DILocalVariable(name: "i", arg: 3, scope: !1943, file: !539, line: 143, type: !184)
!1950 = !DILocalVariable(name: "uc", scope: !1943, file: !539, line: 145, type: !189)
!1951 = !DILocalVariable(name: "p", scope: !1943, file: !539, line: 146, type: !1952)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1953 = !DILocalVariable(name: "shift", scope: !1943, file: !539, line: 148, type: !184)
!1954 = !DILocalVariable(name: "r", scope: !1943, file: !539, line: 149, type: !139)
!1955 = !DILocation(line: 0, scope: !1943)
!1956 = !DILocation(line: 147, column: 6, scope: !1943)
!1957 = !DILocation(line: 147, column: 41, scope: !1943)
!1958 = !DILocation(line: 147, column: 62, scope: !1943)
!1959 = !DILocation(line: 147, column: 57, scope: !1943)
!1960 = !DILocation(line: 148, column: 15, scope: !1943)
!1961 = !DILocation(line: 149, column: 21, scope: !1943)
!1962 = !DILocation(line: 149, column: 24, scope: !1943)
!1963 = !DILocation(line: 149, column: 34, scope: !1943)
!1964 = !DILocation(line: 150, column: 19, scope: !1943)
!1965 = !DILocation(line: 150, column: 24, scope: !1943)
!1966 = !DILocation(line: 150, column: 6, scope: !1943)
!1967 = !DILocation(line: 151, column: 3, scope: !1943)
!1968 = distinct !DISubprogram(name: "set_quoting_flags", scope: !539, file: !539, line: 159, type: !1969, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!184, !1909, !184}
!1971 = !{!1972, !1973, !1974}
!1972 = !DILocalVariable(name: "o", arg: 1, scope: !1968, file: !539, line: 159, type: !1909)
!1973 = !DILocalVariable(name: "i", arg: 2, scope: !1968, file: !539, line: 159, type: !184)
!1974 = !DILocalVariable(name: "r", scope: !1968, file: !539, line: 163, type: !184)
!1975 = !DILocation(line: 0, scope: !1968)
!1976 = !DILocation(line: 161, column: 8, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1968, file: !539, line: 161, column: 7)
!1978 = !DILocation(line: 161, column: 7, scope: !1968)
!1979 = !DILocation(line: 163, column: 14, scope: !1968)
!1980 = !{!1931, !915, i64 4}
!1981 = !DILocation(line: 164, column: 12, scope: !1968)
!1982 = !DILocation(line: 165, column: 3, scope: !1968)
!1983 = distinct !DISubprogram(name: "set_custom_quoting", scope: !539, file: !539, line: 169, type: !1984, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1909, !134, !134}
!1986 = !{!1987, !1988, !1989}
!1987 = !DILocalVariable(name: "o", arg: 1, scope: !1983, file: !539, line: 169, type: !1909)
!1988 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1983, file: !539, line: 170, type: !134)
!1989 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1983, file: !539, line: 170, type: !134)
!1990 = !DILocation(line: 0, scope: !1983)
!1991 = !DILocation(line: 172, column: 8, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1983, file: !539, line: 172, column: 7)
!1993 = !DILocation(line: 172, column: 7, scope: !1983)
!1994 = !DILocation(line: 174, column: 12, scope: !1983)
!1995 = !DILocation(line: 175, column: 8, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1983, file: !539, line: 175, column: 7)
!1997 = !DILocation(line: 175, column: 19, scope: !1996)
!1998 = !DILocation(line: 176, column: 5, scope: !1996)
!1999 = !DILocation(line: 177, column: 6, scope: !1983)
!2000 = !DILocation(line: 177, column: 17, scope: !1983)
!2001 = !{!1931, !846, i64 40}
!2002 = !DILocation(line: 178, column: 6, scope: !1983)
!2003 = !DILocation(line: 178, column: 18, scope: !1983)
!2004 = !{!1931, !846, i64 48}
!2005 = !DILocation(line: 179, column: 1, scope: !1983)
!2006 = !DISubprogram(name: "abort", scope: !1038, file: !1038, line: 598, type: !452, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2007 = distinct !DISubprogram(name: "quotearg_buffer", scope: !539, file: !539, line: 774, type: !2008, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!186, !330, !186, !134, !186, !1923}
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018}
!2011 = !DILocalVariable(name: "buffer", arg: 1, scope: !2007, file: !539, line: 774, type: !330)
!2012 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2007, file: !539, line: 774, type: !186)
!2013 = !DILocalVariable(name: "arg", arg: 3, scope: !2007, file: !539, line: 775, type: !134)
!2014 = !DILocalVariable(name: "argsize", arg: 4, scope: !2007, file: !539, line: 775, type: !186)
!2015 = !DILocalVariable(name: "o", arg: 5, scope: !2007, file: !539, line: 776, type: !1923)
!2016 = !DILocalVariable(name: "p", scope: !2007, file: !539, line: 778, type: !1923)
!2017 = !DILocalVariable(name: "saved_errno", scope: !2007, file: !539, line: 779, type: !184)
!2018 = !DILocalVariable(name: "r", scope: !2007, file: !539, line: 780, type: !186)
!2019 = !DILocation(line: 0, scope: !2007)
!2020 = !DILocation(line: 778, column: 37, scope: !2007)
!2021 = !DILocation(line: 779, column: 21, scope: !2007)
!2022 = !DILocation(line: 781, column: 43, scope: !2007)
!2023 = !DILocation(line: 781, column: 53, scope: !2007)
!2024 = !DILocation(line: 781, column: 63, scope: !2007)
!2025 = !DILocation(line: 782, column: 43, scope: !2007)
!2026 = !DILocation(line: 782, column: 58, scope: !2007)
!2027 = !DILocation(line: 780, column: 14, scope: !2007)
!2028 = !DILocation(line: 783, column: 9, scope: !2007)
!2029 = !DILocation(line: 784, column: 3, scope: !2007)
!2030 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !539, file: !539, line: 251, type: !2031, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2035)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!186, !330, !186, !134, !186, !562, !184, !2033, !134, !134}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2061, !2063, !2066, !2067, !2068, !2069, !2072, !2073, !2075, !2076, !2079, !2083, !2084, !2092, !2095, !2096, !2097}
!2036 = !DILocalVariable(name: "buffer", arg: 1, scope: !2030, file: !539, line: 251, type: !330)
!2037 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2030, file: !539, line: 251, type: !186)
!2038 = !DILocalVariable(name: "arg", arg: 3, scope: !2030, file: !539, line: 252, type: !134)
!2039 = !DILocalVariable(name: "argsize", arg: 4, scope: !2030, file: !539, line: 252, type: !186)
!2040 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2030, file: !539, line: 253, type: !562)
!2041 = !DILocalVariable(name: "flags", arg: 6, scope: !2030, file: !539, line: 253, type: !184)
!2042 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2030, file: !539, line: 254, type: !2033)
!2043 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2030, file: !539, line: 255, type: !134)
!2044 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2030, file: !539, line: 256, type: !134)
!2045 = !DILocalVariable(name: "unibyte_locale", scope: !2030, file: !539, line: 258, type: !309)
!2046 = !DILocalVariable(name: "len", scope: !2030, file: !539, line: 260, type: !186)
!2047 = !DILocalVariable(name: "orig_buffersize", scope: !2030, file: !539, line: 261, type: !186)
!2048 = !DILocalVariable(name: "quote_string", scope: !2030, file: !539, line: 262, type: !134)
!2049 = !DILocalVariable(name: "quote_string_len", scope: !2030, file: !539, line: 263, type: !186)
!2050 = !DILocalVariable(name: "backslash_escapes", scope: !2030, file: !539, line: 264, type: !309)
!2051 = !DILocalVariable(name: "elide_outer_quotes", scope: !2030, file: !539, line: 265, type: !309)
!2052 = !DILocalVariable(name: "encountered_single_quote", scope: !2030, file: !539, line: 266, type: !309)
!2053 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2030, file: !539, line: 267, type: !309)
!2054 = !DILabel(scope: !2030, name: "process_input", file: !539, line: 308)
!2055 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2030, file: !539, line: 309, type: !309)
!2056 = !DILocalVariable(name: "lq", scope: !2057, file: !539, line: 361, type: !134)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 361, column: 11)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !539, line: 360, column: 13)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !539, line: 333, column: 7)
!2060 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 312, column: 5)
!2061 = !DILocalVariable(name: "i", scope: !2062, file: !539, line: 395, type: !186)
!2062 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 395, column: 3)
!2063 = !DILocalVariable(name: "is_right_quote", scope: !2064, file: !539, line: 397, type: !309)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !539, line: 396, column: 5)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !539, line: 395, column: 3)
!2066 = !DILocalVariable(name: "escaping", scope: !2064, file: !539, line: 398, type: !309)
!2067 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2064, file: !539, line: 399, type: !309)
!2068 = !DILocalVariable(name: "c", scope: !2064, file: !539, line: 417, type: !189)
!2069 = !DILabel(scope: !2070, name: "c_and_shell_escape", file: !539, line: 502)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 478, column: 9)
!2071 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 419, column: 9)
!2072 = !DILabel(scope: !2070, name: "c_escape", file: !539, line: 507)
!2073 = !DILocalVariable(name: "m", scope: !2074, file: !539, line: 598, type: !186)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 596, column: 11)
!2075 = !DILocalVariable(name: "printable", scope: !2074, file: !539, line: 600, type: !309)
!2076 = !DILocalVariable(name: "mbs", scope: !2077, file: !539, line: 609, type: !611)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !539, line: 608, column: 15)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !539, line: 602, column: 17)
!2079 = !DILocalVariable(name: "w", scope: !2080, file: !539, line: 618, type: !519)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !539, line: 617, column: 19)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !539, line: 616, column: 17)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !539, line: 616, column: 17)
!2083 = !DILocalVariable(name: "bytes", scope: !2080, file: !539, line: 619, type: !186)
!2084 = !DILocalVariable(name: "j", scope: !2085, file: !539, line: 648, type: !186)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !539, line: 648, column: 29)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !539, line: 647, column: 27)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !539, line: 645, column: 29)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !539, line: 636, column: 23)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !539, line: 628, column: 30)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !539, line: 623, column: 30)
!2091 = distinct !DILexicalBlock(scope: !2080, file: !539, line: 621, column: 25)
!2092 = !DILocalVariable(name: "ilim", scope: !2093, file: !539, line: 674, type: !186)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !539, line: 671, column: 15)
!2094 = distinct !DILexicalBlock(scope: !2074, file: !539, line: 670, column: 17)
!2095 = !DILabel(scope: !2064, name: "store_escape", file: !539, line: 709)
!2096 = !DILabel(scope: !2064, name: "store_c", file: !539, line: 712)
!2097 = !DILabel(scope: !2030, name: "force_outer_quoting_style", file: !539, line: 753)
!2098 = distinct !DIAssignID()
!2099 = distinct !DIAssignID()
!2100 = distinct !DIAssignID()
!2101 = distinct !DIAssignID()
!2102 = distinct !DIAssignID()
!2103 = !DILocation(line: 0, scope: !2077)
!2104 = distinct !DIAssignID()
!2105 = !DILocation(line: 0, scope: !2080)
!2106 = !DILocation(line: 0, scope: !2030)
!2107 = !DILocation(line: 258, column: 25, scope: !2030)
!2108 = !DILocation(line: 258, column: 36, scope: !2030)
!2109 = !DILocation(line: 265, column: 8, scope: !2030)
!2110 = !DILocation(line: 267, column: 3, scope: !2030)
!2111 = !DILocation(line: 261, column: 10, scope: !2030)
!2112 = !DILocation(line: 262, column: 15, scope: !2030)
!2113 = !DILocation(line: 263, column: 10, scope: !2030)
!2114 = !DILocation(line: 264, column: 8, scope: !2030)
!2115 = !DILocation(line: 266, column: 8, scope: !2030)
!2116 = !DILocation(line: 267, column: 8, scope: !2030)
!2117 = !DILocation(line: 308, column: 2, scope: !2030)
!2118 = !DILocation(line: 311, column: 3, scope: !2030)
!2119 = !DILocation(line: 318, column: 11, scope: !2060)
!2120 = !DILocation(line: 318, column: 12, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2060, file: !539, line: 318, column: 11)
!2122 = !DILocation(line: 319, column: 9, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !539, line: 319, column: 9)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !539, line: 319, column: 9)
!2125 = !DILocation(line: 319, column: 9, scope: !2124)
!2126 = !DILocation(line: 0, scope: !602, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 357, column: 26, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !539, line: 335, column: 11)
!2129 = distinct !DILexicalBlock(scope: !2059, file: !539, line: 334, column: 13)
!2130 = !DILocation(line: 199, column: 29, scope: !602, inlinedAt: !2127)
!2131 = !DILocation(line: 201, column: 19, scope: !2132, inlinedAt: !2127)
!2132 = distinct !DILexicalBlock(scope: !602, file: !539, line: 201, column: 7)
!2133 = !DILocation(line: 201, column: 7, scope: !602, inlinedAt: !2127)
!2134 = !DILocation(line: 229, column: 3, scope: !602, inlinedAt: !2127)
!2135 = !DILocation(line: 230, column: 3, scope: !602, inlinedAt: !2127)
!2136 = !DILocalVariable(name: "ps", arg: 1, scope: !2137, file: !1878, line: 1135, type: !2140)
!2137 = distinct !DISubprogram(name: "mbszero", scope: !1878, file: !1878, line: 1135, type: !2138, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2141)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2141 = !{!2136}
!2142 = !DILocation(line: 0, scope: !2137, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 230, column: 18, scope: !602, inlinedAt: !2127)
!2144 = !DILocalVariable(name: "__dest", arg: 1, scope: !2145, file: !1707, line: 57, type: !178)
!2145 = distinct !DISubprogram(name: "memset", scope: !1707, file: !1707, line: 57, type: !1887, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2146)
!2146 = !{!2144, !2147, !2148}
!2147 = !DILocalVariable(name: "__ch", arg: 2, scope: !2145, file: !1707, line: 57, type: !184)
!2148 = !DILocalVariable(name: "__len", arg: 3, scope: !2145, file: !1707, line: 57, type: !186)
!2149 = !DILocation(line: 0, scope: !2145, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 1137, column: 3, scope: !2137, inlinedAt: !2143)
!2151 = !DILocation(line: 59, column: 10, scope: !2145, inlinedAt: !2150)
!2152 = !DILocation(line: 231, column: 7, scope: !2153, inlinedAt: !2127)
!2153 = distinct !DILexicalBlock(scope: !602, file: !539, line: 231, column: 7)
!2154 = !DILocation(line: 231, column: 40, scope: !2153, inlinedAt: !2127)
!2155 = !DILocation(line: 231, column: 45, scope: !2153, inlinedAt: !2127)
!2156 = !DILocation(line: 235, column: 1, scope: !602, inlinedAt: !2127)
!2157 = !DILocation(line: 0, scope: !602, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 358, column: 27, scope: !2128)
!2159 = !DILocation(line: 199, column: 29, scope: !602, inlinedAt: !2158)
!2160 = !DILocation(line: 201, column: 19, scope: !2132, inlinedAt: !2158)
!2161 = !DILocation(line: 201, column: 7, scope: !602, inlinedAt: !2158)
!2162 = !DILocation(line: 229, column: 3, scope: !602, inlinedAt: !2158)
!2163 = !DILocation(line: 230, column: 3, scope: !602, inlinedAt: !2158)
!2164 = !DILocation(line: 0, scope: !2137, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 230, column: 18, scope: !602, inlinedAt: !2158)
!2166 = !DILocation(line: 0, scope: !2145, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 1137, column: 3, scope: !2137, inlinedAt: !2165)
!2168 = !DILocation(line: 59, column: 10, scope: !2145, inlinedAt: !2167)
!2169 = !DILocation(line: 231, column: 7, scope: !2153, inlinedAt: !2158)
!2170 = !DILocation(line: 231, column: 40, scope: !2153, inlinedAt: !2158)
!2171 = !DILocation(line: 231, column: 45, scope: !2153, inlinedAt: !2158)
!2172 = !DILocation(line: 235, column: 1, scope: !602, inlinedAt: !2158)
!2173 = !DILocation(line: 360, column: 14, scope: !2058)
!2174 = !DILocation(line: 360, column: 13, scope: !2059)
!2175 = !DILocation(line: 0, scope: !2057)
!2176 = !DILocation(line: 361, column: 45, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2057, file: !539, line: 361, column: 11)
!2178 = !DILocation(line: 361, column: 11, scope: !2057)
!2179 = !DILocation(line: 362, column: 13, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !539, line: 362, column: 13)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !539, line: 362, column: 13)
!2182 = !DILocation(line: 362, column: 13, scope: !2181)
!2183 = !DILocation(line: 361, column: 52, scope: !2177)
!2184 = distinct !{!2184, !2178, !2185, !961}
!2185 = !DILocation(line: 362, column: 13, scope: !2057)
!2186 = !DILocation(line: 260, column: 10, scope: !2030)
!2187 = !DILocation(line: 365, column: 28, scope: !2059)
!2188 = !DILocation(line: 367, column: 7, scope: !2060)
!2189 = !DILocation(line: 370, column: 7, scope: !2060)
!2190 = !DILocation(line: 373, column: 7, scope: !2060)
!2191 = !DILocation(line: 376, column: 12, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2060, file: !539, line: 376, column: 11)
!2193 = !DILocation(line: 376, column: 11, scope: !2060)
!2194 = !DILocation(line: 381, column: 12, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2060, file: !539, line: 381, column: 11)
!2196 = !DILocation(line: 381, column: 11, scope: !2060)
!2197 = !DILocation(line: 382, column: 9, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !539, line: 382, column: 9)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !539, line: 382, column: 9)
!2200 = !DILocation(line: 382, column: 9, scope: !2199)
!2201 = !DILocation(line: 389, column: 7, scope: !2060)
!2202 = !DILocation(line: 392, column: 7, scope: !2060)
!2203 = !DILocation(line: 0, scope: !2062)
!2204 = !DILocation(line: 395, column: 8, scope: !2062)
!2205 = !DILocation(line: 309, column: 8, scope: !2030)
!2206 = !DILocation(line: 395, scope: !2062)
!2207 = !DILocation(line: 395, column: 34, scope: !2065)
!2208 = !DILocation(line: 395, column: 26, scope: !2065)
!2209 = !DILocation(line: 395, column: 48, scope: !2065)
!2210 = !DILocation(line: 395, column: 55, scope: !2065)
!2211 = !DILocation(line: 395, column: 3, scope: !2062)
!2212 = !DILocation(line: 395, column: 67, scope: !2065)
!2213 = !DILocation(line: 0, scope: !2064)
!2214 = !DILocation(line: 402, column: 11, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 401, column: 11)
!2216 = !DILocation(line: 404, column: 17, scope: !2215)
!2217 = !DILocation(line: 405, column: 39, scope: !2215)
!2218 = !DILocation(line: 409, column: 32, scope: !2215)
!2219 = !DILocation(line: 405, column: 19, scope: !2215)
!2220 = !DILocation(line: 405, column: 15, scope: !2215)
!2221 = !DILocation(line: 410, column: 11, scope: !2215)
!2222 = !DILocation(line: 410, column: 25, scope: !2215)
!2223 = !DILocalVariable(name: "__s1", arg: 1, scope: !2224, file: !927, line: 974, type: !1062)
!2224 = distinct !DISubprogram(name: "memeq", scope: !927, file: !927, line: 974, type: !1847, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2225)
!2225 = !{!2223, !2226, !2227}
!2226 = !DILocalVariable(name: "__s2", arg: 2, scope: !2224, file: !927, line: 974, type: !1062)
!2227 = !DILocalVariable(name: "__n", arg: 3, scope: !2224, file: !927, line: 974, type: !186)
!2228 = !DILocation(line: 0, scope: !2224, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 410, column: 14, scope: !2215)
!2230 = !DILocation(line: 976, column: 11, scope: !2224, inlinedAt: !2229)
!2231 = !DILocation(line: 976, column: 10, scope: !2224, inlinedAt: !2229)
!2232 = !DILocation(line: 401, column: 11, scope: !2064)
!2233 = !DILocation(line: 417, column: 25, scope: !2064)
!2234 = !DILocation(line: 418, column: 7, scope: !2064)
!2235 = !DILocation(line: 421, column: 15, scope: !2071)
!2236 = !DILocation(line: 423, column: 15, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !539, line: 423, column: 15)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !539, line: 422, column: 13)
!2239 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 421, column: 15)
!2240 = !DILocation(line: 423, column: 15, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !539, line: 423, column: 15)
!2242 = !DILocation(line: 423, column: 15, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !539, line: 423, column: 15)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !539, line: 423, column: 15)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !539, line: 423, column: 15)
!2246 = !DILocation(line: 423, column: 15, scope: !2244)
!2247 = !DILocation(line: 423, column: 15, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !539, line: 423, column: 15)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !539, line: 423, column: 15)
!2250 = !DILocation(line: 423, column: 15, scope: !2249)
!2251 = !DILocation(line: 423, column: 15, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !539, line: 423, column: 15)
!2253 = distinct !DILexicalBlock(scope: !2245, file: !539, line: 423, column: 15)
!2254 = !DILocation(line: 423, column: 15, scope: !2253)
!2255 = !DILocation(line: 423, column: 15, scope: !2245)
!2256 = !DILocation(line: 423, column: 15, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !539, line: 423, column: 15)
!2258 = distinct !DILexicalBlock(scope: !2237, file: !539, line: 423, column: 15)
!2259 = !DILocation(line: 423, column: 15, scope: !2258)
!2260 = !DILocation(line: 431, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2238, file: !539, line: 430, column: 19)
!2262 = !DILocation(line: 431, column: 24, scope: !2261)
!2263 = !DILocation(line: 431, column: 28, scope: !2261)
!2264 = !DILocation(line: 431, column: 38, scope: !2261)
!2265 = !DILocation(line: 431, column: 48, scope: !2261)
!2266 = !DILocation(line: 431, column: 59, scope: !2261)
!2267 = !DILocation(line: 433, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !539, line: 433, column: 19)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !539, line: 433, column: 19)
!2270 = distinct !DILexicalBlock(scope: !2261, file: !539, line: 432, column: 17)
!2271 = !DILocation(line: 433, column: 19, scope: !2269)
!2272 = !DILocation(line: 434, column: 19, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !539, line: 434, column: 19)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !539, line: 434, column: 19)
!2275 = !DILocation(line: 434, column: 19, scope: !2274)
!2276 = !DILocation(line: 435, column: 17, scope: !2270)
!2277 = !DILocation(line: 442, column: 20, scope: !2239)
!2278 = !DILocation(line: 447, column: 11, scope: !2071)
!2279 = !DILocation(line: 450, column: 19, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 448, column: 13)
!2281 = !DILocation(line: 456, column: 19, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2280, file: !539, line: 455, column: 19)
!2283 = !DILocation(line: 456, column: 24, scope: !2282)
!2284 = !DILocation(line: 456, column: 28, scope: !2282)
!2285 = !DILocation(line: 456, column: 38, scope: !2282)
!2286 = !DILocation(line: 456, column: 41, scope: !2282)
!2287 = !DILocation(line: 456, column: 52, scope: !2282)
!2288 = !DILocation(line: 455, column: 19, scope: !2280)
!2289 = !DILocation(line: 457, column: 25, scope: !2282)
!2290 = !DILocation(line: 457, column: 17, scope: !2282)
!2291 = !DILocation(line: 464, column: 25, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2282, file: !539, line: 458, column: 19)
!2293 = !DILocation(line: 468, column: 21, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !539, line: 468, column: 21)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !539, line: 468, column: 21)
!2296 = !DILocation(line: 468, column: 21, scope: !2295)
!2297 = !DILocation(line: 469, column: 21, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !539, line: 469, column: 21)
!2299 = distinct !DILexicalBlock(scope: !2292, file: !539, line: 469, column: 21)
!2300 = !DILocation(line: 469, column: 21, scope: !2299)
!2301 = !DILocation(line: 470, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !539, line: 470, column: 21)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !539, line: 470, column: 21)
!2304 = !DILocation(line: 470, column: 21, scope: !2303)
!2305 = !DILocation(line: 471, column: 21, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !539, line: 471, column: 21)
!2307 = distinct !DILexicalBlock(scope: !2292, file: !539, line: 471, column: 21)
!2308 = !DILocation(line: 471, column: 21, scope: !2307)
!2309 = !DILocation(line: 472, column: 21, scope: !2292)
!2310 = !DILocation(line: 482, column: 33, scope: !2070)
!2311 = !DILocation(line: 483, column: 33, scope: !2070)
!2312 = !DILocation(line: 485, column: 33, scope: !2070)
!2313 = !DILocation(line: 486, column: 33, scope: !2070)
!2314 = !DILocation(line: 487, column: 33, scope: !2070)
!2315 = !DILocation(line: 490, column: 17, scope: !2070)
!2316 = !DILocation(line: 492, column: 21, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !539, line: 491, column: 15)
!2318 = distinct !DILexicalBlock(scope: !2070, file: !539, line: 490, column: 17)
!2319 = !DILocation(line: 499, column: 35, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2070, file: !539, line: 499, column: 17)
!2321 = !DILocation(line: 499, column: 57, scope: !2320)
!2322 = !DILocation(line: 0, scope: !2070)
!2323 = !DILocation(line: 502, column: 11, scope: !2070)
!2324 = !DILocation(line: 504, column: 17, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2070, file: !539, line: 503, column: 17)
!2326 = !DILocation(line: 507, column: 11, scope: !2070)
!2327 = !DILocation(line: 508, column: 17, scope: !2070)
!2328 = !DILocation(line: 517, column: 15, scope: !2071)
!2329 = !DILocation(line: 517, column: 40, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 517, column: 15)
!2331 = !DILocation(line: 517, column: 47, scope: !2330)
!2332 = !DILocation(line: 517, column: 18, scope: !2330)
!2333 = !DILocation(line: 521, column: 17, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 521, column: 15)
!2335 = !DILocation(line: 521, column: 15, scope: !2071)
!2336 = !DILocation(line: 525, column: 11, scope: !2071)
!2337 = !DILocation(line: 537, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 536, column: 15)
!2339 = !DILocation(line: 544, column: 15, scope: !2071)
!2340 = !DILocation(line: 546, column: 19, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !539, line: 545, column: 13)
!2342 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 544, column: 15)
!2343 = !DILocation(line: 549, column: 19, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !539, line: 549, column: 19)
!2345 = !DILocation(line: 549, column: 30, scope: !2344)
!2346 = !DILocation(line: 558, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !539, line: 558, column: 15)
!2348 = distinct !DILexicalBlock(scope: !2341, file: !539, line: 558, column: 15)
!2349 = !DILocation(line: 558, column: 15, scope: !2348)
!2350 = !DILocation(line: 559, column: 15, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !539, line: 559, column: 15)
!2352 = distinct !DILexicalBlock(scope: !2341, file: !539, line: 559, column: 15)
!2353 = !DILocation(line: 559, column: 15, scope: !2352)
!2354 = !DILocation(line: 560, column: 15, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !539, line: 560, column: 15)
!2356 = distinct !DILexicalBlock(scope: !2341, file: !539, line: 560, column: 15)
!2357 = !DILocation(line: 560, column: 15, scope: !2356)
!2358 = !DILocation(line: 562, column: 13, scope: !2341)
!2359 = !DILocation(line: 602, column: 17, scope: !2074)
!2360 = !DILocation(line: 0, scope: !2074)
!2361 = !DILocation(line: 605, column: 29, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2078, file: !539, line: 603, column: 15)
!2363 = !DILocation(line: 605, column: 27, scope: !2362)
!2364 = !DILocation(line: 606, column: 15, scope: !2362)
!2365 = !DILocation(line: 609, column: 17, scope: !2077)
!2366 = !DILocation(line: 0, scope: !2137, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 609, column: 32, scope: !2077)
!2368 = !DILocation(line: 0, scope: !2145, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1137, column: 3, scope: !2137, inlinedAt: !2367)
!2370 = !DILocation(line: 59, column: 10, scope: !2145, inlinedAt: !2369)
!2371 = !DILocation(line: 613, column: 29, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2077, file: !539, line: 613, column: 21)
!2373 = !DILocation(line: 613, column: 21, scope: !2077)
!2374 = !DILocation(line: 614, column: 29, scope: !2372)
!2375 = !DILocation(line: 614, column: 19, scope: !2372)
!2376 = !DILocation(line: 618, column: 21, scope: !2080)
!2377 = !DILocation(line: 620, column: 54, scope: !2080)
!2378 = !DILocation(line: 619, column: 36, scope: !2080)
!2379 = !DILocation(line: 621, column: 25, scope: !2080)
!2380 = !DILocation(line: 631, column: 38, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2089, file: !539, line: 629, column: 23)
!2382 = !DILocation(line: 631, column: 48, scope: !2381)
!2383 = !DILocation(line: 626, column: 25, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2090, file: !539, line: 624, column: 23)
!2385 = !DILocation(line: 631, column: 51, scope: !2381)
!2386 = !DILocation(line: 631, column: 25, scope: !2381)
!2387 = !DILocation(line: 632, column: 28, scope: !2381)
!2388 = !DILocation(line: 631, column: 34, scope: !2381)
!2389 = distinct !{!2389, !2386, !2387, !961}
!2390 = !DILocation(line: 0, scope: !2085)
!2391 = !DILocation(line: 646, column: 29, scope: !2087)
!2392 = !DILocation(line: 649, column: 39, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2085, file: !539, line: 648, column: 29)
!2394 = !DILocation(line: 649, column: 31, scope: !2393)
!2395 = !DILocation(line: 648, column: 60, scope: !2393)
!2396 = !DILocation(line: 648, column: 50, scope: !2393)
!2397 = !DILocation(line: 648, column: 29, scope: !2085)
!2398 = distinct !{!2398, !2397, !2399, !961}
!2399 = !DILocation(line: 654, column: 33, scope: !2085)
!2400 = !DILocation(line: 657, column: 43, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2088, file: !539, line: 657, column: 29)
!2402 = !DILocalVariable(name: "wc", arg: 1, scope: !2403, file: !2404, line: 865, type: !2407)
!2403 = distinct !DISubprogram(name: "c32isprint", scope: !2404, file: !2404, line: 865, type: !2405, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2409)
!2404 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!184, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2408, line: 20, baseType: !139)
!2408 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2409 = !{!2402}
!2410 = !DILocation(line: 0, scope: !2403, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 657, column: 31, scope: !2401)
!2412 = !DILocation(line: 871, column: 10, scope: !2403, inlinedAt: !2411)
!2413 = !DILocation(line: 657, column: 31, scope: !2401)
!2414 = !DILocation(line: 664, column: 23, scope: !2080)
!2415 = !DILocation(line: 665, column: 19, scope: !2081)
!2416 = !DILocation(line: 666, column: 15, scope: !2078)
!2417 = !DILocation(line: 0, scope: !2078)
!2418 = !DILocation(line: 670, column: 19, scope: !2094)
!2419 = !DILocation(line: 670, column: 23, scope: !2094)
!2420 = !DILocation(line: 674, column: 33, scope: !2093)
!2421 = !DILocation(line: 0, scope: !2093)
!2422 = !DILocation(line: 676, column: 17, scope: !2093)
!2423 = !DILocation(line: 398, column: 12, scope: !2064)
!2424 = !DILocation(line: 678, column: 43, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !539, line: 678, column: 25)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !539, line: 677, column: 19)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !539, line: 676, column: 17)
!2428 = distinct !DILexicalBlock(scope: !2093, file: !539, line: 676, column: 17)
!2429 = !DILocation(line: 680, column: 25, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !539, line: 680, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2425, file: !539, line: 679, column: 23)
!2432 = !DILocation(line: 680, column: 25, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !539, line: 680, column: 25)
!2434 = !DILocation(line: 680, column: 25, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !539, line: 680, column: 25)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !539, line: 680, column: 25)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !539, line: 680, column: 25)
!2438 = !DILocation(line: 680, column: 25, scope: !2436)
!2439 = !DILocation(line: 680, column: 25, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !539, line: 680, column: 25)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !539, line: 680, column: 25)
!2442 = !DILocation(line: 680, column: 25, scope: !2441)
!2443 = !DILocation(line: 680, column: 25, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !539, line: 680, column: 25)
!2445 = distinct !DILexicalBlock(scope: !2437, file: !539, line: 680, column: 25)
!2446 = !DILocation(line: 680, column: 25, scope: !2445)
!2447 = !DILocation(line: 680, column: 25, scope: !2437)
!2448 = !DILocation(line: 680, column: 25, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !539, line: 680, column: 25)
!2450 = distinct !DILexicalBlock(scope: !2430, file: !539, line: 680, column: 25)
!2451 = !DILocation(line: 680, column: 25, scope: !2450)
!2452 = !DILocation(line: 681, column: 25, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !539, line: 681, column: 25)
!2454 = distinct !DILexicalBlock(scope: !2431, file: !539, line: 681, column: 25)
!2455 = !DILocation(line: 681, column: 25, scope: !2454)
!2456 = !DILocation(line: 682, column: 25, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !539, line: 682, column: 25)
!2458 = distinct !DILexicalBlock(scope: !2431, file: !539, line: 682, column: 25)
!2459 = !DILocation(line: 682, column: 25, scope: !2458)
!2460 = !DILocation(line: 683, column: 38, scope: !2431)
!2461 = !DILocation(line: 683, column: 33, scope: !2431)
!2462 = !DILocation(line: 684, column: 23, scope: !2431)
!2463 = !DILocation(line: 685, column: 30, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2425, file: !539, line: 685, column: 30)
!2465 = !DILocation(line: 685, column: 30, scope: !2425)
!2466 = !DILocation(line: 687, column: 25, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !539, line: 687, column: 25)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !539, line: 687, column: 25)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !539, line: 686, column: 23)
!2470 = !DILocation(line: 687, column: 25, scope: !2468)
!2471 = !DILocation(line: 689, column: 23, scope: !2469)
!2472 = !DILocation(line: 690, column: 35, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2426, file: !539, line: 690, column: 25)
!2474 = !DILocation(line: 690, column: 30, scope: !2473)
!2475 = !DILocation(line: 690, column: 25, scope: !2426)
!2476 = !DILocation(line: 692, column: 21, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !539, line: 692, column: 21)
!2478 = distinct !DILexicalBlock(scope: !2426, file: !539, line: 692, column: 21)
!2479 = !DILocation(line: 692, column: 21, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !539, line: 692, column: 21)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !539, line: 692, column: 21)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !539, line: 692, column: 21)
!2483 = !DILocation(line: 692, column: 21, scope: !2481)
!2484 = !DILocation(line: 692, column: 21, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !539, line: 692, column: 21)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !539, line: 692, column: 21)
!2487 = !DILocation(line: 692, column: 21, scope: !2486)
!2488 = !DILocation(line: 692, column: 21, scope: !2482)
!2489 = !DILocation(line: 0, scope: !2426)
!2490 = !DILocation(line: 693, column: 21, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !539, line: 693, column: 21)
!2492 = distinct !DILexicalBlock(scope: !2426, file: !539, line: 693, column: 21)
!2493 = !DILocation(line: 693, column: 21, scope: !2492)
!2494 = !DILocation(line: 694, column: 25, scope: !2426)
!2495 = !DILocation(line: 676, column: 17, scope: !2427)
!2496 = distinct !{!2496, !2497, !2498}
!2497 = !DILocation(line: 676, column: 17, scope: !2428)
!2498 = !DILocation(line: 695, column: 19, scope: !2428)
!2499 = !DILocation(line: 409, column: 30, scope: !2215)
!2500 = !DILocation(line: 702, column: 34, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 702, column: 11)
!2502 = !DILocation(line: 704, column: 14, scope: !2501)
!2503 = !DILocation(line: 705, column: 14, scope: !2501)
!2504 = !DILocation(line: 705, column: 35, scope: !2501)
!2505 = !DILocation(line: 705, column: 17, scope: !2501)
!2506 = !DILocation(line: 705, column: 47, scope: !2501)
!2507 = !DILocation(line: 705, column: 65, scope: !2501)
!2508 = !DILocation(line: 706, column: 11, scope: !2501)
!2509 = !DILocation(line: 702, column: 11, scope: !2064)
!2510 = !DILocation(line: 395, column: 15, scope: !2062)
!2511 = !DILocation(line: 709, column: 5, scope: !2064)
!2512 = !DILocation(line: 710, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 710, column: 7)
!2514 = !DILocation(line: 710, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2513, file: !539, line: 710, column: 7)
!2516 = !DILocation(line: 710, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !539, line: 710, column: 7)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !539, line: 710, column: 7)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !539, line: 710, column: 7)
!2520 = !DILocation(line: 710, column: 7, scope: !2518)
!2521 = !DILocation(line: 710, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !539, line: 710, column: 7)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !539, line: 710, column: 7)
!2524 = !DILocation(line: 710, column: 7, scope: !2523)
!2525 = !DILocation(line: 710, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !539, line: 710, column: 7)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !539, line: 710, column: 7)
!2528 = !DILocation(line: 710, column: 7, scope: !2527)
!2529 = !DILocation(line: 710, column: 7, scope: !2519)
!2530 = !DILocation(line: 710, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !539, line: 710, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2513, file: !539, line: 710, column: 7)
!2533 = !DILocation(line: 710, column: 7, scope: !2532)
!2534 = !DILocation(line: 712, column: 5, scope: !2064)
!2535 = !DILocation(line: 713, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !539, line: 713, column: 7)
!2537 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 713, column: 7)
!2538 = !DILocation(line: 417, column: 21, scope: !2064)
!2539 = !DILocation(line: 713, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !539, line: 713, column: 7)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !539, line: 713, column: 7)
!2542 = distinct !DILexicalBlock(scope: !2536, file: !539, line: 713, column: 7)
!2543 = !DILocation(line: 713, column: 7, scope: !2541)
!2544 = !DILocation(line: 713, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !539, line: 713, column: 7)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !539, line: 713, column: 7)
!2547 = !DILocation(line: 713, column: 7, scope: !2546)
!2548 = !DILocation(line: 713, column: 7, scope: !2542)
!2549 = !DILocation(line: 714, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !539, line: 714, column: 7)
!2551 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 714, column: 7)
!2552 = !DILocation(line: 714, column: 7, scope: !2551)
!2553 = !DILocation(line: 716, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 716, column: 11)
!2555 = !DILocation(line: 716, column: 11, scope: !2064)
!2556 = !DILocation(line: 718, column: 5, scope: !2065)
!2557 = !DILocation(line: 395, column: 82, scope: !2065)
!2558 = !DILocation(line: 395, column: 3, scope: !2065)
!2559 = distinct !{!2559, !2211, !2560, !961}
!2560 = !DILocation(line: 718, column: 5, scope: !2062)
!2561 = !DILocation(line: 720, column: 11, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 720, column: 7)
!2563 = !DILocation(line: 720, column: 16, scope: !2562)
!2564 = !DILocation(line: 728, column: 51, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 728, column: 7)
!2566 = !DILocation(line: 731, column: 11, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !539, line: 731, column: 11)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !539, line: 730, column: 5)
!2569 = !DILocation(line: 731, column: 11, scope: !2568)
!2570 = !DILocation(line: 732, column: 16, scope: !2567)
!2571 = !DILocation(line: 732, column: 9, scope: !2567)
!2572 = !DILocation(line: 736, column: 18, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2567, file: !539, line: 736, column: 16)
!2574 = !DILocation(line: 736, column: 29, scope: !2573)
!2575 = !DILocation(line: 745, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 745, column: 7)
!2577 = !DILocation(line: 745, column: 20, scope: !2576)
!2578 = !DILocation(line: 746, column: 12, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !539, line: 746, column: 5)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !539, line: 746, column: 5)
!2581 = !DILocation(line: 746, column: 5, scope: !2580)
!2582 = !DILocation(line: 747, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !539, line: 747, column: 7)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !539, line: 747, column: 7)
!2585 = !DILocation(line: 747, column: 7, scope: !2584)
!2586 = !DILocation(line: 746, column: 39, scope: !2579)
!2587 = distinct !{!2587, !2581, !2588, !961}
!2588 = !DILocation(line: 747, column: 7, scope: !2580)
!2589 = !DILocation(line: 749, column: 11, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 749, column: 7)
!2591 = !DILocation(line: 749, column: 7, scope: !2030)
!2592 = !DILocation(line: 750, column: 5, scope: !2590)
!2593 = !DILocation(line: 750, column: 17, scope: !2590)
!2594 = !DILocation(line: 753, column: 2, scope: !2030)
!2595 = !DILocation(line: 756, column: 51, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2030, file: !539, line: 756, column: 7)
!2597 = !DILocation(line: 756, column: 21, scope: !2596)
!2598 = !DILocation(line: 760, column: 42, scope: !2030)
!2599 = !DILocation(line: 758, column: 10, scope: !2030)
!2600 = !DILocation(line: 758, column: 3, scope: !2030)
!2601 = !DILocation(line: 762, column: 1, scope: !2030)
!2602 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1038, file: !1038, line: 98, type: !2603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!186}
!2605 = !DISubprogram(name: "iswprint", scope: !2606, file: !2606, line: 120, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2606 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2607 = distinct !DISubprogram(name: "quotearg_alloc", scope: !539, file: !539, line: 788, type: !2608, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2610)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!330, !134, !186, !1923}
!2610 = !{!2611, !2612, !2613}
!2611 = !DILocalVariable(name: "arg", arg: 1, scope: !2607, file: !539, line: 788, type: !134)
!2612 = !DILocalVariable(name: "argsize", arg: 2, scope: !2607, file: !539, line: 788, type: !186)
!2613 = !DILocalVariable(name: "o", arg: 3, scope: !2607, file: !539, line: 789, type: !1923)
!2614 = !DILocation(line: 0, scope: !2607)
!2615 = !DILocalVariable(name: "arg", arg: 1, scope: !2616, file: !539, line: 801, type: !134)
!2616 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !539, file: !539, line: 801, type: !2617, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!330, !134, !186, !777, !1923}
!2619 = !{!2615, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627}
!2620 = !DILocalVariable(name: "argsize", arg: 2, scope: !2616, file: !539, line: 801, type: !186)
!2621 = !DILocalVariable(name: "size", arg: 3, scope: !2616, file: !539, line: 801, type: !777)
!2622 = !DILocalVariable(name: "o", arg: 4, scope: !2616, file: !539, line: 802, type: !1923)
!2623 = !DILocalVariable(name: "p", scope: !2616, file: !539, line: 804, type: !1923)
!2624 = !DILocalVariable(name: "saved_errno", scope: !2616, file: !539, line: 805, type: !184)
!2625 = !DILocalVariable(name: "flags", scope: !2616, file: !539, line: 807, type: !184)
!2626 = !DILocalVariable(name: "bufsize", scope: !2616, file: !539, line: 808, type: !186)
!2627 = !DILocalVariable(name: "buf", scope: !2616, file: !539, line: 812, type: !330)
!2628 = !DILocation(line: 0, scope: !2616, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 791, column: 10, scope: !2607)
!2630 = !DILocation(line: 804, column: 37, scope: !2616, inlinedAt: !2629)
!2631 = !DILocation(line: 805, column: 21, scope: !2616, inlinedAt: !2629)
!2632 = !DILocation(line: 807, column: 18, scope: !2616, inlinedAt: !2629)
!2633 = !DILocation(line: 807, column: 24, scope: !2616, inlinedAt: !2629)
!2634 = !DILocation(line: 808, column: 72, scope: !2616, inlinedAt: !2629)
!2635 = !DILocation(line: 809, column: 56, scope: !2616, inlinedAt: !2629)
!2636 = !DILocation(line: 810, column: 49, scope: !2616, inlinedAt: !2629)
!2637 = !DILocation(line: 811, column: 49, scope: !2616, inlinedAt: !2629)
!2638 = !DILocation(line: 808, column: 20, scope: !2616, inlinedAt: !2629)
!2639 = !DILocation(line: 811, column: 62, scope: !2616, inlinedAt: !2629)
!2640 = !DILocation(line: 812, column: 15, scope: !2616, inlinedAt: !2629)
!2641 = !DILocation(line: 813, column: 60, scope: !2616, inlinedAt: !2629)
!2642 = !DILocation(line: 815, column: 32, scope: !2616, inlinedAt: !2629)
!2643 = !DILocation(line: 815, column: 47, scope: !2616, inlinedAt: !2629)
!2644 = !DILocation(line: 813, column: 3, scope: !2616, inlinedAt: !2629)
!2645 = !DILocation(line: 816, column: 9, scope: !2616, inlinedAt: !2629)
!2646 = !DILocation(line: 791, column: 3, scope: !2607)
!2647 = !DILocation(line: 0, scope: !2616)
!2648 = !DILocation(line: 804, column: 37, scope: !2616)
!2649 = !DILocation(line: 805, column: 21, scope: !2616)
!2650 = !DILocation(line: 807, column: 18, scope: !2616)
!2651 = !DILocation(line: 807, column: 27, scope: !2616)
!2652 = !DILocation(line: 807, column: 24, scope: !2616)
!2653 = !DILocation(line: 808, column: 72, scope: !2616)
!2654 = !DILocation(line: 809, column: 56, scope: !2616)
!2655 = !DILocation(line: 810, column: 49, scope: !2616)
!2656 = !DILocation(line: 811, column: 49, scope: !2616)
!2657 = !DILocation(line: 808, column: 20, scope: !2616)
!2658 = !DILocation(line: 811, column: 62, scope: !2616)
!2659 = !DILocation(line: 812, column: 15, scope: !2616)
!2660 = !DILocation(line: 813, column: 60, scope: !2616)
!2661 = !DILocation(line: 815, column: 32, scope: !2616)
!2662 = !DILocation(line: 815, column: 47, scope: !2616)
!2663 = !DILocation(line: 813, column: 3, scope: !2616)
!2664 = !DILocation(line: 816, column: 9, scope: !2616)
!2665 = !DILocation(line: 817, column: 7, scope: !2616)
!2666 = !DILocation(line: 818, column: 11, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2616, file: !539, line: 817, column: 7)
!2668 = !{!1205, !1205, i64 0}
!2669 = !DILocation(line: 818, column: 5, scope: !2667)
!2670 = !DILocation(line: 819, column: 3, scope: !2616)
!2671 = distinct !DISubprogram(name: "quotearg_free", scope: !539, file: !539, line: 837, type: !452, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2672)
!2672 = !{!2673, !2674}
!2673 = !DILocalVariable(name: "sv", scope: !2671, file: !539, line: 839, type: !625)
!2674 = !DILocalVariable(name: "i", scope: !2675, file: !539, line: 840, type: !184)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !539, line: 840, column: 3)
!2676 = !DILocation(line: 839, column: 24, scope: !2671)
!2677 = !DILocation(line: 0, scope: !2671)
!2678 = !DILocation(line: 0, scope: !2675)
!2679 = !DILocation(line: 840, column: 21, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2675, file: !539, line: 840, column: 3)
!2681 = !DILocation(line: 840, column: 3, scope: !2675)
!2682 = !DILocation(line: 842, column: 13, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2671, file: !539, line: 842, column: 7)
!2684 = !{!2685, !846, i64 8}
!2685 = !{!"slotvec", !1205, i64 0, !846, i64 8}
!2686 = !DILocation(line: 842, column: 17, scope: !2683)
!2687 = !DILocation(line: 842, column: 7, scope: !2671)
!2688 = !DILocation(line: 841, column: 17, scope: !2680)
!2689 = !DILocation(line: 841, column: 5, scope: !2680)
!2690 = !DILocation(line: 840, column: 32, scope: !2680)
!2691 = distinct !{!2691, !2681, !2692, !961}
!2692 = !DILocation(line: 841, column: 20, scope: !2675)
!2693 = !DILocation(line: 844, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2683, file: !539, line: 843, column: 5)
!2695 = !DILocation(line: 845, column: 21, scope: !2694)
!2696 = !{!2685, !1205, i64 0}
!2697 = !DILocation(line: 846, column: 20, scope: !2694)
!2698 = !DILocation(line: 847, column: 5, scope: !2694)
!2699 = !DILocation(line: 848, column: 10, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2671, file: !539, line: 848, column: 7)
!2701 = !DILocation(line: 848, column: 7, scope: !2671)
!2702 = !DILocation(line: 850, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !539, line: 849, column: 5)
!2704 = !DILocation(line: 851, column: 15, scope: !2703)
!2705 = !DILocation(line: 852, column: 5, scope: !2703)
!2706 = !DILocation(line: 853, column: 10, scope: !2671)
!2707 = !DILocation(line: 854, column: 1, scope: !2671)
!2708 = distinct !DISubprogram(name: "quotearg_n", scope: !539, file: !539, line: 919, type: !1031, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2709)
!2709 = !{!2710, !2711}
!2710 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !539, line: 919, type: !184)
!2711 = !DILocalVariable(name: "arg", arg: 2, scope: !2708, file: !539, line: 919, type: !134)
!2712 = !DILocation(line: 0, scope: !2708)
!2713 = !DILocation(line: 921, column: 10, scope: !2708)
!2714 = !DILocation(line: 921, column: 3, scope: !2708)
!2715 = distinct !DISubprogram(name: "quotearg_n_options", scope: !539, file: !539, line: 866, type: !2716, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!330, !184, !134, !186, !1923}
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2729, !2730, !2732, !2733, !2734}
!2719 = !DILocalVariable(name: "n", arg: 1, scope: !2715, file: !539, line: 866, type: !184)
!2720 = !DILocalVariable(name: "arg", arg: 2, scope: !2715, file: !539, line: 866, type: !134)
!2721 = !DILocalVariable(name: "argsize", arg: 3, scope: !2715, file: !539, line: 866, type: !186)
!2722 = !DILocalVariable(name: "options", arg: 4, scope: !2715, file: !539, line: 867, type: !1923)
!2723 = !DILocalVariable(name: "saved_errno", scope: !2715, file: !539, line: 869, type: !184)
!2724 = !DILocalVariable(name: "sv", scope: !2715, file: !539, line: 871, type: !625)
!2725 = !DILocalVariable(name: "nslots_max", scope: !2715, file: !539, line: 873, type: !184)
!2726 = !DILocalVariable(name: "preallocated", scope: !2727, file: !539, line: 879, type: !309)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !539, line: 878, column: 5)
!2728 = distinct !DILexicalBlock(scope: !2715, file: !539, line: 877, column: 7)
!2729 = !DILocalVariable(name: "new_nslots", scope: !2727, file: !539, line: 880, type: !790)
!2730 = !DILocalVariable(name: "size", scope: !2731, file: !539, line: 891, type: !186)
!2731 = distinct !DILexicalBlock(scope: !2715, file: !539, line: 890, column: 3)
!2732 = !DILocalVariable(name: "val", scope: !2731, file: !539, line: 892, type: !330)
!2733 = !DILocalVariable(name: "flags", scope: !2731, file: !539, line: 894, type: !184)
!2734 = !DILocalVariable(name: "qsize", scope: !2731, file: !539, line: 895, type: !186)
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 0, scope: !2727)
!2737 = !DILocation(line: 0, scope: !2715)
!2738 = !DILocation(line: 869, column: 21, scope: !2715)
!2739 = !DILocation(line: 871, column: 24, scope: !2715)
!2740 = !DILocation(line: 874, column: 17, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2715, file: !539, line: 874, column: 7)
!2742 = !DILocation(line: 875, column: 5, scope: !2741)
!2743 = !DILocation(line: 877, column: 7, scope: !2728)
!2744 = !DILocation(line: 877, column: 14, scope: !2728)
!2745 = !DILocation(line: 877, column: 7, scope: !2715)
!2746 = !DILocation(line: 879, column: 31, scope: !2727)
!2747 = !DILocation(line: 880, column: 7, scope: !2727)
!2748 = !DILocation(line: 880, column: 26, scope: !2727)
!2749 = !DILocation(line: 880, column: 13, scope: !2727)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 882, column: 31, scope: !2727)
!2752 = !DILocation(line: 883, column: 33, scope: !2727)
!2753 = !DILocation(line: 883, column: 42, scope: !2727)
!2754 = !DILocation(line: 883, column: 31, scope: !2727)
!2755 = !DILocation(line: 882, column: 22, scope: !2727)
!2756 = !DILocation(line: 882, column: 15, scope: !2727)
!2757 = !DILocation(line: 884, column: 11, scope: !2727)
!2758 = !DILocation(line: 885, column: 15, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2727, file: !539, line: 884, column: 11)
!2760 = !{i64 0, i64 8, !2668, i64 8, i64 8, !845}
!2761 = !DILocation(line: 885, column: 9, scope: !2759)
!2762 = !DILocation(line: 886, column: 20, scope: !2727)
!2763 = !DILocation(line: 886, column: 18, scope: !2727)
!2764 = !DILocation(line: 886, column: 32, scope: !2727)
!2765 = !DILocation(line: 886, column: 43, scope: !2727)
!2766 = !DILocation(line: 886, column: 53, scope: !2727)
!2767 = !DILocation(line: 0, scope: !2145, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 886, column: 7, scope: !2727)
!2769 = !DILocation(line: 59, column: 10, scope: !2145, inlinedAt: !2768)
!2770 = !DILocation(line: 887, column: 16, scope: !2727)
!2771 = !DILocation(line: 887, column: 14, scope: !2727)
!2772 = !DILocation(line: 888, column: 5, scope: !2728)
!2773 = !DILocation(line: 888, column: 5, scope: !2727)
!2774 = !DILocation(line: 891, column: 19, scope: !2731)
!2775 = !DILocation(line: 891, column: 25, scope: !2731)
!2776 = !DILocation(line: 0, scope: !2731)
!2777 = !DILocation(line: 892, column: 23, scope: !2731)
!2778 = !DILocation(line: 894, column: 26, scope: !2731)
!2779 = !DILocation(line: 894, column: 32, scope: !2731)
!2780 = !DILocation(line: 896, column: 55, scope: !2731)
!2781 = !DILocation(line: 897, column: 55, scope: !2731)
!2782 = !DILocation(line: 898, column: 55, scope: !2731)
!2783 = !DILocation(line: 899, column: 55, scope: !2731)
!2784 = !DILocation(line: 895, column: 20, scope: !2731)
!2785 = !DILocation(line: 901, column: 14, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2731, file: !539, line: 901, column: 9)
!2787 = !DILocation(line: 901, column: 9, scope: !2731)
!2788 = !DILocation(line: 903, column: 35, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2786, file: !539, line: 902, column: 7)
!2790 = !DILocation(line: 903, column: 20, scope: !2789)
!2791 = !DILocation(line: 904, column: 17, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !539, line: 904, column: 13)
!2793 = !DILocation(line: 904, column: 13, scope: !2789)
!2794 = !DILocation(line: 905, column: 11, scope: !2792)
!2795 = !DILocation(line: 906, column: 27, scope: !2789)
!2796 = !DILocation(line: 906, column: 19, scope: !2789)
!2797 = !DILocation(line: 907, column: 69, scope: !2789)
!2798 = !DILocation(line: 909, column: 44, scope: !2789)
!2799 = !DILocation(line: 910, column: 44, scope: !2789)
!2800 = !DILocation(line: 907, column: 9, scope: !2789)
!2801 = !DILocation(line: 911, column: 7, scope: !2789)
!2802 = !DILocation(line: 913, column: 11, scope: !2731)
!2803 = !DILocation(line: 914, column: 5, scope: !2731)
!2804 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !539, file: !539, line: 925, type: !2805, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!330, !184, !134, !186}
!2807 = !{!2808, !2809, !2810}
!2808 = !DILocalVariable(name: "n", arg: 1, scope: !2804, file: !539, line: 925, type: !184)
!2809 = !DILocalVariable(name: "arg", arg: 2, scope: !2804, file: !539, line: 925, type: !134)
!2810 = !DILocalVariable(name: "argsize", arg: 3, scope: !2804, file: !539, line: 925, type: !186)
!2811 = !DILocation(line: 0, scope: !2804)
!2812 = !DILocation(line: 927, column: 10, scope: !2804)
!2813 = !DILocation(line: 927, column: 3, scope: !2804)
!2814 = distinct !DISubprogram(name: "quotearg", scope: !539, file: !539, line: 931, type: !1040, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2815)
!2815 = !{!2816}
!2816 = !DILocalVariable(name: "arg", arg: 1, scope: !2814, file: !539, line: 931, type: !134)
!2817 = !DILocation(line: 0, scope: !2814)
!2818 = !DILocation(line: 0, scope: !2708, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 933, column: 10, scope: !2814)
!2820 = !DILocation(line: 921, column: 10, scope: !2708, inlinedAt: !2819)
!2821 = !DILocation(line: 933, column: 3, scope: !2814)
!2822 = distinct !DISubprogram(name: "quotearg_mem", scope: !539, file: !539, line: 937, type: !2823, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!330, !134, !186}
!2825 = !{!2826, !2827}
!2826 = !DILocalVariable(name: "arg", arg: 1, scope: !2822, file: !539, line: 937, type: !134)
!2827 = !DILocalVariable(name: "argsize", arg: 2, scope: !2822, file: !539, line: 937, type: !186)
!2828 = !DILocation(line: 0, scope: !2822)
!2829 = !DILocation(line: 0, scope: !2804, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 939, column: 10, scope: !2822)
!2831 = !DILocation(line: 927, column: 10, scope: !2804, inlinedAt: !2830)
!2832 = !DILocation(line: 939, column: 3, scope: !2822)
!2833 = distinct !DISubprogram(name: "quotearg_n_style", scope: !539, file: !539, line: 943, type: !2834, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!330, !184, !562, !134}
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2833, file: !539, line: 943, type: !184)
!2838 = !DILocalVariable(name: "s", arg: 2, scope: !2833, file: !539, line: 943, type: !562)
!2839 = !DILocalVariable(name: "arg", arg: 3, scope: !2833, file: !539, line: 943, type: !134)
!2840 = !DILocalVariable(name: "o", scope: !2833, file: !539, line: 945, type: !1924)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 0, scope: !2833)
!2843 = !DILocation(line: 945, column: 3, scope: !2833)
!2844 = !{!2845}
!2845 = distinct !{!2845, !2846, !"quoting_options_from_style: argument 0"}
!2846 = distinct !{!2846, !"quoting_options_from_style"}
!2847 = !DILocation(line: 945, column: 36, scope: !2833)
!2848 = !DILocalVariable(name: "style", arg: 1, scope: !2849, file: !539, line: 183, type: !562)
!2849 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !539, file: !539, line: 183, type: !2850, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!577, !562}
!2852 = !{!2848, !2853}
!2853 = !DILocalVariable(name: "o", scope: !2849, file: !539, line: 185, type: !577)
!2854 = !DILocation(line: 0, scope: !2849, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 945, column: 36, scope: !2833)
!2856 = !DILocation(line: 185, column: 26, scope: !2849, inlinedAt: !2855)
!2857 = distinct !DIAssignID()
!2858 = !DILocation(line: 186, column: 13, scope: !2859, inlinedAt: !2855)
!2859 = distinct !DILexicalBlock(scope: !2849, file: !539, line: 186, column: 7)
!2860 = !DILocation(line: 186, column: 7, scope: !2849, inlinedAt: !2855)
!2861 = !DILocation(line: 187, column: 5, scope: !2859, inlinedAt: !2855)
!2862 = !DILocation(line: 188, column: 11, scope: !2849, inlinedAt: !2855)
!2863 = distinct !DIAssignID()
!2864 = !DILocation(line: 946, column: 10, scope: !2833)
!2865 = !DILocation(line: 947, column: 1, scope: !2833)
!2866 = !DILocation(line: 946, column: 3, scope: !2833)
!2867 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !539, file: !539, line: 950, type: !2868, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!330, !184, !562, !134, !186}
!2870 = !{!2871, !2872, !2873, !2874, !2875}
!2871 = !DILocalVariable(name: "n", arg: 1, scope: !2867, file: !539, line: 950, type: !184)
!2872 = !DILocalVariable(name: "s", arg: 2, scope: !2867, file: !539, line: 950, type: !562)
!2873 = !DILocalVariable(name: "arg", arg: 3, scope: !2867, file: !539, line: 951, type: !134)
!2874 = !DILocalVariable(name: "argsize", arg: 4, scope: !2867, file: !539, line: 951, type: !186)
!2875 = !DILocalVariable(name: "o", scope: !2867, file: !539, line: 953, type: !1924)
!2876 = distinct !DIAssignID()
!2877 = !DILocation(line: 0, scope: !2867)
!2878 = !DILocation(line: 953, column: 3, scope: !2867)
!2879 = !{!2880}
!2880 = distinct !{!2880, !2881, !"quoting_options_from_style: argument 0"}
!2881 = distinct !{!2881, !"quoting_options_from_style"}
!2882 = !DILocation(line: 953, column: 36, scope: !2867)
!2883 = !DILocation(line: 0, scope: !2849, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 953, column: 36, scope: !2867)
!2885 = !DILocation(line: 185, column: 26, scope: !2849, inlinedAt: !2884)
!2886 = distinct !DIAssignID()
!2887 = !DILocation(line: 186, column: 13, scope: !2859, inlinedAt: !2884)
!2888 = !DILocation(line: 186, column: 7, scope: !2849, inlinedAt: !2884)
!2889 = !DILocation(line: 187, column: 5, scope: !2859, inlinedAt: !2884)
!2890 = !DILocation(line: 188, column: 11, scope: !2849, inlinedAt: !2884)
!2891 = distinct !DIAssignID()
!2892 = !DILocation(line: 954, column: 10, scope: !2867)
!2893 = !DILocation(line: 955, column: 1, scope: !2867)
!2894 = !DILocation(line: 954, column: 3, scope: !2867)
!2895 = distinct !DISubprogram(name: "quotearg_style", scope: !539, file: !539, line: 958, type: !2896, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!330, !562, !134}
!2898 = !{!2899, !2900}
!2899 = !DILocalVariable(name: "s", arg: 1, scope: !2895, file: !539, line: 958, type: !562)
!2900 = !DILocalVariable(name: "arg", arg: 2, scope: !2895, file: !539, line: 958, type: !134)
!2901 = distinct !DIAssignID()
!2902 = !DILocation(line: 0, scope: !2895)
!2903 = !DILocation(line: 0, scope: !2833, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 960, column: 10, scope: !2895)
!2905 = !DILocation(line: 945, column: 3, scope: !2833, inlinedAt: !2904)
!2906 = !{!2907}
!2907 = distinct !{!2907, !2908, !"quoting_options_from_style: argument 0"}
!2908 = distinct !{!2908, !"quoting_options_from_style"}
!2909 = !DILocation(line: 945, column: 36, scope: !2833, inlinedAt: !2904)
!2910 = !DILocation(line: 0, scope: !2849, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 945, column: 36, scope: !2833, inlinedAt: !2904)
!2912 = !DILocation(line: 185, column: 26, scope: !2849, inlinedAt: !2911)
!2913 = distinct !DIAssignID()
!2914 = !DILocation(line: 186, column: 13, scope: !2859, inlinedAt: !2911)
!2915 = !DILocation(line: 186, column: 7, scope: !2849, inlinedAt: !2911)
!2916 = !DILocation(line: 187, column: 5, scope: !2859, inlinedAt: !2911)
!2917 = !DILocation(line: 188, column: 11, scope: !2849, inlinedAt: !2911)
!2918 = distinct !DIAssignID()
!2919 = !DILocation(line: 946, column: 10, scope: !2833, inlinedAt: !2904)
!2920 = !DILocation(line: 947, column: 1, scope: !2833, inlinedAt: !2904)
!2921 = !DILocation(line: 960, column: 3, scope: !2895)
!2922 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !539, file: !539, line: 964, type: !2923, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!330, !562, !134, !186}
!2925 = !{!2926, !2927, !2928}
!2926 = !DILocalVariable(name: "s", arg: 1, scope: !2922, file: !539, line: 964, type: !562)
!2927 = !DILocalVariable(name: "arg", arg: 2, scope: !2922, file: !539, line: 964, type: !134)
!2928 = !DILocalVariable(name: "argsize", arg: 3, scope: !2922, file: !539, line: 964, type: !186)
!2929 = distinct !DIAssignID()
!2930 = !DILocation(line: 0, scope: !2922)
!2931 = !DILocation(line: 0, scope: !2867, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 966, column: 10, scope: !2922)
!2933 = !DILocation(line: 953, column: 3, scope: !2867, inlinedAt: !2932)
!2934 = !{!2935}
!2935 = distinct !{!2935, !2936, !"quoting_options_from_style: argument 0"}
!2936 = distinct !{!2936, !"quoting_options_from_style"}
!2937 = !DILocation(line: 953, column: 36, scope: !2867, inlinedAt: !2932)
!2938 = !DILocation(line: 0, scope: !2849, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 953, column: 36, scope: !2867, inlinedAt: !2932)
!2940 = !DILocation(line: 185, column: 26, scope: !2849, inlinedAt: !2939)
!2941 = distinct !DIAssignID()
!2942 = !DILocation(line: 186, column: 13, scope: !2859, inlinedAt: !2939)
!2943 = !DILocation(line: 186, column: 7, scope: !2849, inlinedAt: !2939)
!2944 = !DILocation(line: 187, column: 5, scope: !2859, inlinedAt: !2939)
!2945 = !DILocation(line: 188, column: 11, scope: !2849, inlinedAt: !2939)
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 954, column: 10, scope: !2867, inlinedAt: !2932)
!2948 = !DILocation(line: 955, column: 1, scope: !2867, inlinedAt: !2932)
!2949 = !DILocation(line: 966, column: 3, scope: !2922)
!2950 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !539, file: !539, line: 970, type: !2951, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!330, !134, !186, !4}
!2953 = !{!2954, !2955, !2956, !2957}
!2954 = !DILocalVariable(name: "arg", arg: 1, scope: !2950, file: !539, line: 970, type: !134)
!2955 = !DILocalVariable(name: "argsize", arg: 2, scope: !2950, file: !539, line: 970, type: !186)
!2956 = !DILocalVariable(name: "ch", arg: 3, scope: !2950, file: !539, line: 970, type: !4)
!2957 = !DILocalVariable(name: "options", scope: !2950, file: !539, line: 972, type: !577)
!2958 = distinct !DIAssignID()
!2959 = !DILocation(line: 0, scope: !2950)
!2960 = !DILocation(line: 972, column: 3, scope: !2950)
!2961 = !DILocation(line: 973, column: 13, scope: !2950)
!2962 = !{i64 0, i64 4, !914, i64 4, i64 4, !914, i64 8, i64 32, !923, i64 40, i64 8, !845, i64 48, i64 8, !845}
!2963 = distinct !DIAssignID()
!2964 = !DILocation(line: 0, scope: !1943, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 974, column: 3, scope: !2950)
!2966 = !DILocation(line: 147, column: 41, scope: !1943, inlinedAt: !2965)
!2967 = !DILocation(line: 147, column: 62, scope: !1943, inlinedAt: !2965)
!2968 = !DILocation(line: 147, column: 57, scope: !1943, inlinedAt: !2965)
!2969 = !DILocation(line: 148, column: 15, scope: !1943, inlinedAt: !2965)
!2970 = !DILocation(line: 149, column: 21, scope: !1943, inlinedAt: !2965)
!2971 = !DILocation(line: 149, column: 24, scope: !1943, inlinedAt: !2965)
!2972 = !DILocation(line: 150, column: 19, scope: !1943, inlinedAt: !2965)
!2973 = !DILocation(line: 150, column: 24, scope: !1943, inlinedAt: !2965)
!2974 = !DILocation(line: 150, column: 6, scope: !1943, inlinedAt: !2965)
!2975 = !DILocation(line: 975, column: 10, scope: !2950)
!2976 = !DILocation(line: 976, column: 1, scope: !2950)
!2977 = !DILocation(line: 975, column: 3, scope: !2950)
!2978 = distinct !DISubprogram(name: "quotearg_char", scope: !539, file: !539, line: 979, type: !2979, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!330, !134, !4}
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "arg", arg: 1, scope: !2978, file: !539, line: 979, type: !134)
!2983 = !DILocalVariable(name: "ch", arg: 2, scope: !2978, file: !539, line: 979, type: !4)
!2984 = distinct !DIAssignID()
!2985 = !DILocation(line: 0, scope: !2978)
!2986 = !DILocation(line: 0, scope: !2950, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 981, column: 10, scope: !2978)
!2988 = !DILocation(line: 972, column: 3, scope: !2950, inlinedAt: !2987)
!2989 = !DILocation(line: 973, column: 13, scope: !2950, inlinedAt: !2987)
!2990 = distinct !DIAssignID()
!2991 = !DILocation(line: 0, scope: !1943, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 974, column: 3, scope: !2950, inlinedAt: !2987)
!2993 = !DILocation(line: 147, column: 41, scope: !1943, inlinedAt: !2992)
!2994 = !DILocation(line: 147, column: 62, scope: !1943, inlinedAt: !2992)
!2995 = !DILocation(line: 147, column: 57, scope: !1943, inlinedAt: !2992)
!2996 = !DILocation(line: 148, column: 15, scope: !1943, inlinedAt: !2992)
!2997 = !DILocation(line: 149, column: 21, scope: !1943, inlinedAt: !2992)
!2998 = !DILocation(line: 149, column: 24, scope: !1943, inlinedAt: !2992)
!2999 = !DILocation(line: 150, column: 19, scope: !1943, inlinedAt: !2992)
!3000 = !DILocation(line: 150, column: 24, scope: !1943, inlinedAt: !2992)
!3001 = !DILocation(line: 150, column: 6, scope: !1943, inlinedAt: !2992)
!3002 = !DILocation(line: 975, column: 10, scope: !2950, inlinedAt: !2987)
!3003 = !DILocation(line: 976, column: 1, scope: !2950, inlinedAt: !2987)
!3004 = !DILocation(line: 981, column: 3, scope: !2978)
!3005 = distinct !DISubprogram(name: "quotearg_colon", scope: !539, file: !539, line: 985, type: !1040, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3006)
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "arg", arg: 1, scope: !3005, file: !539, line: 985, type: !134)
!3008 = distinct !DIAssignID()
!3009 = !DILocation(line: 0, scope: !3005)
!3010 = !DILocation(line: 0, scope: !2978, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 987, column: 10, scope: !3005)
!3012 = !DILocation(line: 0, scope: !2950, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 981, column: 10, scope: !2978, inlinedAt: !3011)
!3014 = !DILocation(line: 972, column: 3, scope: !2950, inlinedAt: !3013)
!3015 = !DILocation(line: 973, column: 13, scope: !2950, inlinedAt: !3013)
!3016 = distinct !DIAssignID()
!3017 = !DILocation(line: 0, scope: !1943, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 974, column: 3, scope: !2950, inlinedAt: !3013)
!3019 = !DILocation(line: 147, column: 57, scope: !1943, inlinedAt: !3018)
!3020 = !DILocation(line: 149, column: 21, scope: !1943, inlinedAt: !3018)
!3021 = !DILocation(line: 150, column: 6, scope: !1943, inlinedAt: !3018)
!3022 = !DILocation(line: 975, column: 10, scope: !2950, inlinedAt: !3013)
!3023 = !DILocation(line: 976, column: 1, scope: !2950, inlinedAt: !3013)
!3024 = !DILocation(line: 987, column: 3, scope: !3005)
!3025 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !539, file: !539, line: 991, type: !2823, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3026)
!3026 = !{!3027, !3028}
!3027 = !DILocalVariable(name: "arg", arg: 1, scope: !3025, file: !539, line: 991, type: !134)
!3028 = !DILocalVariable(name: "argsize", arg: 2, scope: !3025, file: !539, line: 991, type: !186)
!3029 = distinct !DIAssignID()
!3030 = !DILocation(line: 0, scope: !3025)
!3031 = !DILocation(line: 0, scope: !2950, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 993, column: 10, scope: !3025)
!3033 = !DILocation(line: 972, column: 3, scope: !2950, inlinedAt: !3032)
!3034 = !DILocation(line: 973, column: 13, scope: !2950, inlinedAt: !3032)
!3035 = distinct !DIAssignID()
!3036 = !DILocation(line: 0, scope: !1943, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 974, column: 3, scope: !2950, inlinedAt: !3032)
!3038 = !DILocation(line: 147, column: 57, scope: !1943, inlinedAt: !3037)
!3039 = !DILocation(line: 149, column: 21, scope: !1943, inlinedAt: !3037)
!3040 = !DILocation(line: 150, column: 6, scope: !1943, inlinedAt: !3037)
!3041 = !DILocation(line: 975, column: 10, scope: !2950, inlinedAt: !3032)
!3042 = !DILocation(line: 976, column: 1, scope: !2950, inlinedAt: !3032)
!3043 = !DILocation(line: 993, column: 3, scope: !3025)
!3044 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !539, file: !539, line: 997, type: !2834, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3045)
!3045 = !{!3046, !3047, !3048, !3049}
!3046 = !DILocalVariable(name: "n", arg: 1, scope: !3044, file: !539, line: 997, type: !184)
!3047 = !DILocalVariable(name: "s", arg: 2, scope: !3044, file: !539, line: 997, type: !562)
!3048 = !DILocalVariable(name: "arg", arg: 3, scope: !3044, file: !539, line: 997, type: !134)
!3049 = !DILocalVariable(name: "options", scope: !3044, file: !539, line: 999, type: !577)
!3050 = distinct !DIAssignID()
!3051 = !DILocation(line: 0, scope: !3044)
!3052 = !DILocation(line: 185, column: 26, scope: !2849, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1000, column: 13, scope: !3044)
!3054 = !DILocation(line: 999, column: 3, scope: !3044)
!3055 = !DILocation(line: 0, scope: !2849, inlinedAt: !3053)
!3056 = !DILocation(line: 186, column: 13, scope: !2859, inlinedAt: !3053)
!3057 = !DILocation(line: 186, column: 7, scope: !2849, inlinedAt: !3053)
!3058 = !DILocation(line: 187, column: 5, scope: !2859, inlinedAt: !3053)
!3059 = !{!3060}
!3060 = distinct !{!3060, !3061, !"quoting_options_from_style: argument 0"}
!3061 = distinct !{!3061, !"quoting_options_from_style"}
!3062 = !DILocation(line: 1000, column: 13, scope: !3044)
!3063 = distinct !DIAssignID()
!3064 = distinct !DIAssignID()
!3065 = !DILocation(line: 0, scope: !1943, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 1001, column: 3, scope: !3044)
!3067 = !DILocation(line: 147, column: 57, scope: !1943, inlinedAt: !3066)
!3068 = !DILocation(line: 149, column: 21, scope: !1943, inlinedAt: !3066)
!3069 = !DILocation(line: 150, column: 6, scope: !1943, inlinedAt: !3066)
!3070 = distinct !DIAssignID()
!3071 = !DILocation(line: 1002, column: 10, scope: !3044)
!3072 = !DILocation(line: 1003, column: 1, scope: !3044)
!3073 = !DILocation(line: 1002, column: 3, scope: !3044)
!3074 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !539, file: !539, line: 1006, type: !3075, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!330, !184, !134, !134, !134}
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DILocalVariable(name: "n", arg: 1, scope: !3074, file: !539, line: 1006, type: !184)
!3079 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3074, file: !539, line: 1006, type: !134)
!3080 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3074, file: !539, line: 1007, type: !134)
!3081 = !DILocalVariable(name: "arg", arg: 4, scope: !3074, file: !539, line: 1007, type: !134)
!3082 = distinct !DIAssignID()
!3083 = !DILocation(line: 0, scope: !3074)
!3084 = !DILocalVariable(name: "o", scope: !3085, file: !539, line: 1018, type: !577)
!3085 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !539, file: !539, line: 1014, type: !3086, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!330, !184, !134, !134, !134, !186}
!3088 = !{!3089, !3090, !3091, !3092, !3093, !3084}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !539, line: 1014, type: !184)
!3090 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3085, file: !539, line: 1014, type: !134)
!3091 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3085, file: !539, line: 1015, type: !134)
!3092 = !DILocalVariable(name: "arg", arg: 4, scope: !3085, file: !539, line: 1016, type: !134)
!3093 = !DILocalVariable(name: "argsize", arg: 5, scope: !3085, file: !539, line: 1016, type: !186)
!3094 = !DILocation(line: 0, scope: !3085, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 1009, column: 10, scope: !3074)
!3096 = !DILocation(line: 1018, column: 3, scope: !3085, inlinedAt: !3095)
!3097 = !DILocation(line: 1018, column: 30, scope: !3085, inlinedAt: !3095)
!3098 = distinct !DIAssignID()
!3099 = distinct !DIAssignID()
!3100 = !DILocation(line: 0, scope: !1983, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 1019, column: 3, scope: !3085, inlinedAt: !3095)
!3102 = !DILocation(line: 174, column: 12, scope: !1983, inlinedAt: !3101)
!3103 = distinct !DIAssignID()
!3104 = !DILocation(line: 175, column: 8, scope: !1996, inlinedAt: !3101)
!3105 = !DILocation(line: 175, column: 19, scope: !1996, inlinedAt: !3101)
!3106 = !DILocation(line: 176, column: 5, scope: !1996, inlinedAt: !3101)
!3107 = !DILocation(line: 177, column: 6, scope: !1983, inlinedAt: !3101)
!3108 = !DILocation(line: 177, column: 17, scope: !1983, inlinedAt: !3101)
!3109 = distinct !DIAssignID()
!3110 = !DILocation(line: 178, column: 6, scope: !1983, inlinedAt: !3101)
!3111 = !DILocation(line: 178, column: 18, scope: !1983, inlinedAt: !3101)
!3112 = distinct !DIAssignID()
!3113 = !DILocation(line: 1020, column: 10, scope: !3085, inlinedAt: !3095)
!3114 = !DILocation(line: 1021, column: 1, scope: !3085, inlinedAt: !3095)
!3115 = !DILocation(line: 1009, column: 3, scope: !3074)
!3116 = distinct !DIAssignID()
!3117 = !DILocation(line: 0, scope: !3085)
!3118 = !DILocation(line: 1018, column: 3, scope: !3085)
!3119 = !DILocation(line: 1018, column: 30, scope: !3085)
!3120 = distinct !DIAssignID()
!3121 = distinct !DIAssignID()
!3122 = !DILocation(line: 0, scope: !1983, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 1019, column: 3, scope: !3085)
!3124 = !DILocation(line: 174, column: 12, scope: !1983, inlinedAt: !3123)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 175, column: 8, scope: !1996, inlinedAt: !3123)
!3127 = !DILocation(line: 175, column: 19, scope: !1996, inlinedAt: !3123)
!3128 = !DILocation(line: 176, column: 5, scope: !1996, inlinedAt: !3123)
!3129 = !DILocation(line: 177, column: 6, scope: !1983, inlinedAt: !3123)
!3130 = !DILocation(line: 177, column: 17, scope: !1983, inlinedAt: !3123)
!3131 = distinct !DIAssignID()
!3132 = !DILocation(line: 178, column: 6, scope: !1983, inlinedAt: !3123)
!3133 = !DILocation(line: 178, column: 18, scope: !1983, inlinedAt: !3123)
!3134 = distinct !DIAssignID()
!3135 = !DILocation(line: 1020, column: 10, scope: !3085)
!3136 = !DILocation(line: 1021, column: 1, scope: !3085)
!3137 = !DILocation(line: 1020, column: 3, scope: !3085)
!3138 = distinct !DISubprogram(name: "quotearg_custom", scope: !539, file: !539, line: 1024, type: !3139, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!330, !134, !134, !134}
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3138, file: !539, line: 1024, type: !134)
!3143 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3138, file: !539, line: 1024, type: !134)
!3144 = !DILocalVariable(name: "arg", arg: 3, scope: !3138, file: !539, line: 1025, type: !134)
!3145 = distinct !DIAssignID()
!3146 = !DILocation(line: 0, scope: !3138)
!3147 = !DILocation(line: 0, scope: !3074, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 1027, column: 10, scope: !3138)
!3149 = !DILocation(line: 0, scope: !3085, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1009, column: 10, scope: !3074, inlinedAt: !3148)
!3151 = !DILocation(line: 1018, column: 3, scope: !3085, inlinedAt: !3150)
!3152 = !DILocation(line: 1018, column: 30, scope: !3085, inlinedAt: !3150)
!3153 = distinct !DIAssignID()
!3154 = distinct !DIAssignID()
!3155 = !DILocation(line: 0, scope: !1983, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1019, column: 3, scope: !3085, inlinedAt: !3150)
!3157 = !DILocation(line: 174, column: 12, scope: !1983, inlinedAt: !3156)
!3158 = distinct !DIAssignID()
!3159 = !DILocation(line: 175, column: 8, scope: !1996, inlinedAt: !3156)
!3160 = !DILocation(line: 175, column: 19, scope: !1996, inlinedAt: !3156)
!3161 = !DILocation(line: 176, column: 5, scope: !1996, inlinedAt: !3156)
!3162 = !DILocation(line: 177, column: 6, scope: !1983, inlinedAt: !3156)
!3163 = !DILocation(line: 177, column: 17, scope: !1983, inlinedAt: !3156)
!3164 = distinct !DIAssignID()
!3165 = !DILocation(line: 178, column: 6, scope: !1983, inlinedAt: !3156)
!3166 = !DILocation(line: 178, column: 18, scope: !1983, inlinedAt: !3156)
!3167 = distinct !DIAssignID()
!3168 = !DILocation(line: 1020, column: 10, scope: !3085, inlinedAt: !3150)
!3169 = !DILocation(line: 1021, column: 1, scope: !3085, inlinedAt: !3150)
!3170 = !DILocation(line: 1027, column: 3, scope: !3138)
!3171 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !539, file: !539, line: 1031, type: !3172, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!330, !134, !134, !134, !186}
!3174 = !{!3175, !3176, !3177, !3178}
!3175 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3171, file: !539, line: 1031, type: !134)
!3176 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3171, file: !539, line: 1031, type: !134)
!3177 = !DILocalVariable(name: "arg", arg: 3, scope: !3171, file: !539, line: 1032, type: !134)
!3178 = !DILocalVariable(name: "argsize", arg: 4, scope: !3171, file: !539, line: 1032, type: !186)
!3179 = distinct !DIAssignID()
!3180 = !DILocation(line: 0, scope: !3171)
!3181 = !DILocation(line: 0, scope: !3085, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1034, column: 10, scope: !3171)
!3183 = !DILocation(line: 1018, column: 3, scope: !3085, inlinedAt: !3182)
!3184 = !DILocation(line: 1018, column: 30, scope: !3085, inlinedAt: !3182)
!3185 = distinct !DIAssignID()
!3186 = distinct !DIAssignID()
!3187 = !DILocation(line: 0, scope: !1983, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1019, column: 3, scope: !3085, inlinedAt: !3182)
!3189 = !DILocation(line: 174, column: 12, scope: !1983, inlinedAt: !3188)
!3190 = distinct !DIAssignID()
!3191 = !DILocation(line: 175, column: 8, scope: !1996, inlinedAt: !3188)
!3192 = !DILocation(line: 175, column: 19, scope: !1996, inlinedAt: !3188)
!3193 = !DILocation(line: 176, column: 5, scope: !1996, inlinedAt: !3188)
!3194 = !DILocation(line: 177, column: 6, scope: !1983, inlinedAt: !3188)
!3195 = !DILocation(line: 177, column: 17, scope: !1983, inlinedAt: !3188)
!3196 = distinct !DIAssignID()
!3197 = !DILocation(line: 178, column: 6, scope: !1983, inlinedAt: !3188)
!3198 = !DILocation(line: 178, column: 18, scope: !1983, inlinedAt: !3188)
!3199 = distinct !DIAssignID()
!3200 = !DILocation(line: 1020, column: 10, scope: !3085, inlinedAt: !3182)
!3201 = !DILocation(line: 1021, column: 1, scope: !3085, inlinedAt: !3182)
!3202 = !DILocation(line: 1034, column: 3, scope: !3171)
!3203 = distinct !DISubprogram(name: "quote_n_mem", scope: !539, file: !539, line: 1049, type: !3204, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!134, !184, !134, !186}
!3206 = !{!3207, !3208, !3209}
!3207 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !539, line: 1049, type: !184)
!3208 = !DILocalVariable(name: "arg", arg: 2, scope: !3203, file: !539, line: 1049, type: !134)
!3209 = !DILocalVariable(name: "argsize", arg: 3, scope: !3203, file: !539, line: 1049, type: !186)
!3210 = !DILocation(line: 0, scope: !3203)
!3211 = !DILocation(line: 1051, column: 10, scope: !3203)
!3212 = !DILocation(line: 1051, column: 3, scope: !3203)
!3213 = distinct !DISubprogram(name: "quote_mem", scope: !539, file: !539, line: 1055, type: !3214, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!134, !134, !186}
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "arg", arg: 1, scope: !3213, file: !539, line: 1055, type: !134)
!3218 = !DILocalVariable(name: "argsize", arg: 2, scope: !3213, file: !539, line: 1055, type: !186)
!3219 = !DILocation(line: 0, scope: !3213)
!3220 = !DILocation(line: 0, scope: !3203, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1057, column: 10, scope: !3213)
!3222 = !DILocation(line: 1051, column: 10, scope: !3203, inlinedAt: !3221)
!3223 = !DILocation(line: 1057, column: 3, scope: !3213)
!3224 = distinct !DISubprogram(name: "quote_n", scope: !539, file: !539, line: 1061, type: !3225, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!134, !184, !134}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !539, line: 1061, type: !184)
!3229 = !DILocalVariable(name: "arg", arg: 2, scope: !3224, file: !539, line: 1061, type: !134)
!3230 = !DILocation(line: 0, scope: !3224)
!3231 = !DILocation(line: 0, scope: !3203, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 1063, column: 10, scope: !3224)
!3233 = !DILocation(line: 1051, column: 10, scope: !3203, inlinedAt: !3232)
!3234 = !DILocation(line: 1063, column: 3, scope: !3224)
!3235 = distinct !DISubprogram(name: "quote", scope: !539, file: !539, line: 1067, type: !3236, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!134, !134}
!3238 = !{!3239}
!3239 = !DILocalVariable(name: "arg", arg: 1, scope: !3235, file: !539, line: 1067, type: !134)
!3240 = !DILocation(line: 0, scope: !3235)
!3241 = !DILocation(line: 0, scope: !3224, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 1069, column: 10, scope: !3235)
!3243 = !DILocation(line: 0, scope: !3203, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 1063, column: 10, scope: !3224, inlinedAt: !3242)
!3245 = !DILocation(line: 1051, column: 10, scope: !3203, inlinedAt: !3244)
!3246 = !DILocation(line: 1069, column: 3, scope: !3235)
!3247 = distinct !DISubprogram(name: "version_etc_arn", scope: !640, file: !640, line: 61, type: !3248, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3285)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !3250, !134, !134, !134, !3284, !186}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3253)
!3253 = !{!3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3252, file: !326, line: 51, baseType: !184, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3252, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3252, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3252, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3252, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3252, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3252, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3252, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3252, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3252, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3252, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3252, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3252, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3252, file: !326, line: 70, baseType: !3268, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3252, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3252, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3252, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3252, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3252, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3252, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3252, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3252, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3252, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3252, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3252, file: !326, line: 93, baseType: !3268, size: 64, offset: 1344)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3252, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3252, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3252, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3252, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291}
!3286 = !DILocalVariable(name: "stream", arg: 1, scope: !3247, file: !640, line: 61, type: !3250)
!3287 = !DILocalVariable(name: "command_name", arg: 2, scope: !3247, file: !640, line: 62, type: !134)
!3288 = !DILocalVariable(name: "package", arg: 3, scope: !3247, file: !640, line: 62, type: !134)
!3289 = !DILocalVariable(name: "version", arg: 4, scope: !3247, file: !640, line: 63, type: !134)
!3290 = !DILocalVariable(name: "authors", arg: 5, scope: !3247, file: !640, line: 64, type: !3284)
!3291 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3247, file: !640, line: 64, type: !186)
!3292 = !DILocation(line: 0, scope: !3247)
!3293 = !DILocation(line: 66, column: 7, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3247, file: !640, line: 66, column: 7)
!3295 = !DILocation(line: 66, column: 7, scope: !3247)
!3296 = !DILocation(line: 67, column: 5, scope: !3294)
!3297 = !DILocation(line: 69, column: 5, scope: !3294)
!3298 = !DILocation(line: 83, column: 3, scope: !3247)
!3299 = !DILocation(line: 85, column: 3, scope: !3247)
!3300 = !DILocation(line: 88, column: 3, scope: !3247)
!3301 = !DILocation(line: 95, column: 3, scope: !3247)
!3302 = !DILocation(line: 97, column: 3, scope: !3247)
!3303 = !DILocation(line: 105, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3247, file: !640, line: 98, column: 5)
!3305 = !DILocation(line: 106, column: 7, scope: !3304)
!3306 = !DILocation(line: 109, column: 7, scope: !3304)
!3307 = !DILocation(line: 110, column: 7, scope: !3304)
!3308 = !DILocation(line: 113, column: 7, scope: !3304)
!3309 = !DILocation(line: 115, column: 7, scope: !3304)
!3310 = !DILocation(line: 120, column: 7, scope: !3304)
!3311 = !DILocation(line: 122, column: 7, scope: !3304)
!3312 = !DILocation(line: 127, column: 7, scope: !3304)
!3313 = !DILocation(line: 129, column: 7, scope: !3304)
!3314 = !DILocation(line: 134, column: 7, scope: !3304)
!3315 = !DILocation(line: 137, column: 7, scope: !3304)
!3316 = !DILocation(line: 142, column: 7, scope: !3304)
!3317 = !DILocation(line: 145, column: 7, scope: !3304)
!3318 = !DILocation(line: 150, column: 7, scope: !3304)
!3319 = !DILocation(line: 154, column: 7, scope: !3304)
!3320 = !DILocation(line: 159, column: 7, scope: !3304)
!3321 = !DILocation(line: 163, column: 7, scope: !3304)
!3322 = !DILocation(line: 170, column: 7, scope: !3304)
!3323 = !DILocation(line: 174, column: 7, scope: !3304)
!3324 = !DILocation(line: 176, column: 1, scope: !3247)
!3325 = distinct !DISubprogram(name: "version_etc_ar", scope: !640, file: !640, line: 183, type: !3326, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3328)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !3250, !134, !134, !134, !3284}
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334}
!3329 = !DILocalVariable(name: "stream", arg: 1, scope: !3325, file: !640, line: 183, type: !3250)
!3330 = !DILocalVariable(name: "command_name", arg: 2, scope: !3325, file: !640, line: 184, type: !134)
!3331 = !DILocalVariable(name: "package", arg: 3, scope: !3325, file: !640, line: 184, type: !134)
!3332 = !DILocalVariable(name: "version", arg: 4, scope: !3325, file: !640, line: 185, type: !134)
!3333 = !DILocalVariable(name: "authors", arg: 5, scope: !3325, file: !640, line: 185, type: !3284)
!3334 = !DILocalVariable(name: "n_authors", scope: !3325, file: !640, line: 187, type: !186)
!3335 = !DILocation(line: 0, scope: !3325)
!3336 = !DILocation(line: 189, column: 8, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3325, file: !640, line: 189, column: 3)
!3338 = !DILocation(line: 189, scope: !3337)
!3339 = !DILocation(line: 189, column: 23, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !640, line: 189, column: 3)
!3341 = !DILocation(line: 189, column: 3, scope: !3337)
!3342 = !DILocation(line: 189, column: 52, scope: !3340)
!3343 = distinct !{!3343, !3341, !3344, !961}
!3344 = !DILocation(line: 190, column: 5, scope: !3337)
!3345 = !DILocation(line: 191, column: 3, scope: !3325)
!3346 = !DILocation(line: 192, column: 1, scope: !3325)
!3347 = distinct !DISubprogram(name: "version_etc_va", scope: !640, file: !640, line: 199, type: !3348, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3357)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{null, !3250, !134, !134, !134, !3350}
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3351, file: !640, line: 192, baseType: !139, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3351, file: !640, line: 192, baseType: !139, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3351, file: !640, line: 192, baseType: !178, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3351, file: !640, line: 192, baseType: !178, size: 64, offset: 128)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3358 = !DILocalVariable(name: "stream", arg: 1, scope: !3347, file: !640, line: 199, type: !3250)
!3359 = !DILocalVariable(name: "command_name", arg: 2, scope: !3347, file: !640, line: 200, type: !134)
!3360 = !DILocalVariable(name: "package", arg: 3, scope: !3347, file: !640, line: 200, type: !134)
!3361 = !DILocalVariable(name: "version", arg: 4, scope: !3347, file: !640, line: 201, type: !134)
!3362 = !DILocalVariable(name: "authors", arg: 5, scope: !3347, file: !640, line: 201, type: !3350)
!3363 = !DILocalVariable(name: "n_authors", scope: !3347, file: !640, line: 203, type: !186)
!3364 = !DILocalVariable(name: "authtab", scope: !3347, file: !640, line: 204, type: !3365)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !50)
!3366 = distinct !DIAssignID()
!3367 = !DILocation(line: 0, scope: !3347)
!3368 = !DILocation(line: 204, column: 3, scope: !3347)
!3369 = !DILocation(line: 208, column: 35, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !640, line: 206, column: 3)
!3371 = distinct !DILexicalBlock(scope: !3347, file: !640, line: 206, column: 3)
!3372 = !DILocation(line: 208, column: 33, scope: !3370)
!3373 = !DILocation(line: 208, column: 67, scope: !3370)
!3374 = !DILocation(line: 206, column: 3, scope: !3371)
!3375 = !DILocation(line: 208, column: 14, scope: !3370)
!3376 = !DILocation(line: 0, scope: !3371)
!3377 = !DILocation(line: 211, column: 3, scope: !3347)
!3378 = !DILocation(line: 213, column: 1, scope: !3347)
!3379 = distinct !DISubprogram(name: "version_etc", scope: !640, file: !640, line: 230, type: !3380, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !3250, !134, !134, !134, null}
!3382 = !{!3383, !3384, !3385, !3386, !3387}
!3383 = !DILocalVariable(name: "stream", arg: 1, scope: !3379, file: !640, line: 230, type: !3250)
!3384 = !DILocalVariable(name: "command_name", arg: 2, scope: !3379, file: !640, line: 231, type: !134)
!3385 = !DILocalVariable(name: "package", arg: 3, scope: !3379, file: !640, line: 231, type: !134)
!3386 = !DILocalVariable(name: "version", arg: 4, scope: !3379, file: !640, line: 232, type: !134)
!3387 = !DILocalVariable(name: "authors", scope: !3379, file: !640, line: 234, type: !3388)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !909, line: 52, baseType: !3389)
!3389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1461, line: 12, baseType: !3390)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !640, baseType: !3391)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 192, elements: !45)
!3392 = distinct !DIAssignID()
!3393 = !DILocation(line: 0, scope: !3379)
!3394 = !DILocation(line: 234, column: 3, scope: !3379)
!3395 = !DILocation(line: 235, column: 3, scope: !3379)
!3396 = !DILocation(line: 236, column: 3, scope: !3379)
!3397 = !DILocation(line: 237, column: 3, scope: !3379)
!3398 = !DILocation(line: 238, column: 1, scope: !3379)
!3399 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !640, file: !640, line: 241, type: !452, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764)
!3400 = !DILocation(line: 243, column: 3, scope: !3399)
!3401 = !DILocation(line: 248, column: 3, scope: !3399)
!3402 = !DILocation(line: 254, column: 3, scope: !3399)
!3403 = !DILocation(line: 259, column: 3, scope: !3399)
!3404 = !DILocation(line: 261, column: 1, scope: !3399)
!3405 = distinct !DISubprogram(name: "xnrealloc", scope: !3406, file: !3406, line: 147, type: !3407, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3409)
!3406 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!178, !178, !186, !186}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "p", arg: 1, scope: !3405, file: !3406, line: 147, type: !178)
!3411 = !DILocalVariable(name: "n", arg: 2, scope: !3405, file: !3406, line: 147, type: !186)
!3412 = !DILocalVariable(name: "s", arg: 3, scope: !3405, file: !3406, line: 147, type: !186)
!3413 = !DILocation(line: 0, scope: !3405)
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3415, file: !771, line: 83, type: !178)
!3415 = distinct !DISubprogram(name: "xreallocarray", scope: !771, file: !771, line: 83, type: !3407, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3416)
!3416 = !{!3414, !3417, !3418}
!3417 = !DILocalVariable(name: "n", arg: 2, scope: !3415, file: !771, line: 83, type: !186)
!3418 = !DILocalVariable(name: "s", arg: 3, scope: !3415, file: !771, line: 83, type: !186)
!3419 = !DILocation(line: 0, scope: !3415, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 149, column: 10, scope: !3405)
!3421 = !DILocation(line: 85, column: 25, scope: !3415, inlinedAt: !3420)
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3423, file: !771, line: 37, type: !178)
!3423 = distinct !DISubprogram(name: "check_nonnull", scope: !771, file: !771, line: 37, type: !3424, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!178, !178}
!3426 = !{!3422}
!3427 = !DILocation(line: 0, scope: !3423, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 85, column: 10, scope: !3415, inlinedAt: !3420)
!3429 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3428)
!3430 = distinct !DILexicalBlock(scope: !3423, file: !771, line: 39, column: 7)
!3431 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3428)
!3432 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3428)
!3433 = !DILocation(line: 149, column: 3, scope: !3405)
!3434 = !DILocation(line: 0, scope: !3415)
!3435 = !DILocation(line: 85, column: 25, scope: !3415)
!3436 = !DILocation(line: 0, scope: !3423, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 85, column: 10, scope: !3415)
!3438 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3437)
!3439 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3437)
!3440 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3437)
!3441 = !DILocation(line: 85, column: 3, scope: !3415)
!3442 = distinct !DISubprogram(name: "xmalloc", scope: !771, file: !771, line: 47, type: !1735, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3443)
!3443 = !{!3444}
!3444 = !DILocalVariable(name: "s", arg: 1, scope: !3442, file: !771, line: 47, type: !186)
!3445 = !DILocation(line: 0, scope: !3442)
!3446 = !DILocation(line: 49, column: 25, scope: !3442)
!3447 = !DILocation(line: 0, scope: !3423, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 49, column: 10, scope: !3442)
!3449 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3448)
!3450 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3448)
!3451 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3448)
!3452 = !DILocation(line: 49, column: 3, scope: !3442)
!3453 = distinct !DISubprogram(name: "ximalloc", scope: !771, file: !771, line: 53, type: !3454, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!178, !790}
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "s", arg: 1, scope: !3453, file: !771, line: 53, type: !790)
!3458 = !DILocation(line: 0, scope: !3453)
!3459 = !DILocalVariable(name: "s", arg: 1, scope: !3460, file: !3461, line: 55, type: !790)
!3460 = distinct !DISubprogram(name: "imalloc", scope: !3461, file: !3461, line: 55, type: !3454, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3462)
!3461 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3462 = !{!3459}
!3463 = !DILocation(line: 0, scope: !3460, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 55, column: 25, scope: !3453)
!3465 = !DILocation(line: 57, column: 26, scope: !3460, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3423, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 55, column: 10, scope: !3453)
!3468 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3467)
!3471 = !DILocation(line: 55, column: 3, scope: !3453)
!3472 = distinct !DISubprogram(name: "xcharalloc", scope: !771, file: !771, line: 59, type: !3473, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!330, !186}
!3475 = !{!3476}
!3476 = !DILocalVariable(name: "n", arg: 1, scope: !3472, file: !771, line: 59, type: !186)
!3477 = !DILocation(line: 0, scope: !3472)
!3478 = !DILocation(line: 0, scope: !3442, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 61, column: 10, scope: !3472)
!3480 = !DILocation(line: 49, column: 25, scope: !3442, inlinedAt: !3479)
!3481 = !DILocation(line: 0, scope: !3423, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 49, column: 10, scope: !3442, inlinedAt: !3479)
!3483 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3482)
!3484 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3482)
!3485 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3482)
!3486 = !DILocation(line: 61, column: 3, scope: !3472)
!3487 = distinct !DISubprogram(name: "xrealloc", scope: !771, file: !771, line: 68, type: !3488, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!178, !178, !186}
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "p", arg: 1, scope: !3487, file: !771, line: 68, type: !178)
!3492 = !DILocalVariable(name: "s", arg: 2, scope: !3487, file: !771, line: 68, type: !186)
!3493 = !DILocation(line: 0, scope: !3487)
!3494 = !DILocalVariable(name: "ptr", arg: 1, scope: !3495, file: !3496, line: 2057, type: !178)
!3495 = distinct !DISubprogram(name: "rpl_realloc", scope: !3496, file: !3496, line: 2057, type: !3488, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3497)
!3496 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3497 = !{!3494, !3498}
!3498 = !DILocalVariable(name: "size", arg: 2, scope: !3495, file: !3496, line: 2057, type: !186)
!3499 = !DILocation(line: 0, scope: !3495, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 70, column: 25, scope: !3487)
!3501 = !DILocation(line: 2059, column: 24, scope: !3495, inlinedAt: !3500)
!3502 = !DILocation(line: 2059, column: 10, scope: !3495, inlinedAt: !3500)
!3503 = !DILocation(line: 0, scope: !3423, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 70, column: 10, scope: !3487)
!3505 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3504)
!3506 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3504)
!3507 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3504)
!3508 = !DILocation(line: 70, column: 3, scope: !3487)
!3509 = !DISubprogram(name: "realloc", scope: !1038, file: !1038, line: 551, type: !3488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3510 = distinct !DISubprogram(name: "xirealloc", scope: !771, file: !771, line: 74, type: !3511, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!178, !178, !790}
!3513 = !{!3514, !3515}
!3514 = !DILocalVariable(name: "p", arg: 1, scope: !3510, file: !771, line: 74, type: !178)
!3515 = !DILocalVariable(name: "s", arg: 2, scope: !3510, file: !771, line: 74, type: !790)
!3516 = !DILocation(line: 0, scope: !3510)
!3517 = !DILocalVariable(name: "p", arg: 1, scope: !3518, file: !3461, line: 66, type: !178)
!3518 = distinct !DISubprogram(name: "irealloc", scope: !3461, file: !3461, line: 66, type: !3511, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3519)
!3519 = !{!3517, !3520}
!3520 = !DILocalVariable(name: "s", arg: 2, scope: !3518, file: !3461, line: 66, type: !790)
!3521 = !DILocation(line: 0, scope: !3518, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 76, column: 25, scope: !3510)
!3523 = !DILocation(line: 0, scope: !3495, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 68, column: 26, scope: !3518, inlinedAt: !3522)
!3525 = !DILocation(line: 2059, column: 24, scope: !3495, inlinedAt: !3524)
!3526 = !DILocation(line: 2059, column: 10, scope: !3495, inlinedAt: !3524)
!3527 = !DILocation(line: 0, scope: !3423, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 76, column: 10, scope: !3510)
!3529 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3528)
!3530 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3528)
!3531 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3528)
!3532 = !DILocation(line: 76, column: 3, scope: !3510)
!3533 = distinct !DISubprogram(name: "xireallocarray", scope: !771, file: !771, line: 89, type: !3534, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!178, !178, !790, !790}
!3536 = !{!3537, !3538, !3539}
!3537 = !DILocalVariable(name: "p", arg: 1, scope: !3533, file: !771, line: 89, type: !178)
!3538 = !DILocalVariable(name: "n", arg: 2, scope: !3533, file: !771, line: 89, type: !790)
!3539 = !DILocalVariable(name: "s", arg: 3, scope: !3533, file: !771, line: 89, type: !790)
!3540 = !DILocation(line: 0, scope: !3533)
!3541 = !DILocalVariable(name: "p", arg: 1, scope: !3542, file: !3461, line: 98, type: !178)
!3542 = distinct !DISubprogram(name: "ireallocarray", scope: !3461, file: !3461, line: 98, type: !3534, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3543)
!3543 = !{!3541, !3544, !3545}
!3544 = !DILocalVariable(name: "n", arg: 2, scope: !3542, file: !3461, line: 98, type: !790)
!3545 = !DILocalVariable(name: "s", arg: 3, scope: !3542, file: !3461, line: 98, type: !790)
!3546 = !DILocation(line: 0, scope: !3542, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 91, column: 25, scope: !3533)
!3548 = !DILocation(line: 101, column: 13, scope: !3542, inlinedAt: !3547)
!3549 = !DILocation(line: 0, scope: !3423, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 91, column: 10, scope: !3533)
!3551 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3550)
!3552 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3550)
!3553 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3550)
!3554 = !DILocation(line: 91, column: 3, scope: !3533)
!3555 = distinct !DISubprogram(name: "xnmalloc", scope: !771, file: !771, line: 98, type: !3556, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!178, !186, !186}
!3558 = !{!3559, !3560}
!3559 = !DILocalVariable(name: "n", arg: 1, scope: !3555, file: !771, line: 98, type: !186)
!3560 = !DILocalVariable(name: "s", arg: 2, scope: !3555, file: !771, line: 98, type: !186)
!3561 = !DILocation(line: 0, scope: !3555)
!3562 = !DILocation(line: 0, scope: !3415, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 100, column: 10, scope: !3555)
!3564 = !DILocation(line: 85, column: 25, scope: !3415, inlinedAt: !3563)
!3565 = !DILocation(line: 0, scope: !3423, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 85, column: 10, scope: !3415, inlinedAt: !3563)
!3567 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3566)
!3568 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3566)
!3569 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3566)
!3570 = !DILocation(line: 100, column: 3, scope: !3555)
!3571 = distinct !DISubprogram(name: "xinmalloc", scope: !771, file: !771, line: 104, type: !3572, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!178, !790, !790}
!3574 = !{!3575, !3576}
!3575 = !DILocalVariable(name: "n", arg: 1, scope: !3571, file: !771, line: 104, type: !790)
!3576 = !DILocalVariable(name: "s", arg: 2, scope: !3571, file: !771, line: 104, type: !790)
!3577 = !DILocation(line: 0, scope: !3571)
!3578 = !DILocation(line: 0, scope: !3533, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 106, column: 10, scope: !3571)
!3580 = !DILocation(line: 0, scope: !3542, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 91, column: 25, scope: !3533, inlinedAt: !3579)
!3582 = !DILocation(line: 101, column: 13, scope: !3542, inlinedAt: !3581)
!3583 = !DILocation(line: 0, scope: !3423, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 91, column: 10, scope: !3533, inlinedAt: !3579)
!3585 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3584)
!3586 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3584)
!3587 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3584)
!3588 = !DILocation(line: 106, column: 3, scope: !3571)
!3589 = distinct !DISubprogram(name: "x2realloc", scope: !771, file: !771, line: 116, type: !3590, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!178, !178, !777}
!3592 = !{!3593, !3594}
!3593 = !DILocalVariable(name: "p", arg: 1, scope: !3589, file: !771, line: 116, type: !178)
!3594 = !DILocalVariable(name: "ps", arg: 2, scope: !3589, file: !771, line: 116, type: !777)
!3595 = !DILocation(line: 0, scope: !3589)
!3596 = !DILocation(line: 0, scope: !774, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 118, column: 10, scope: !3589)
!3598 = !DILocation(line: 178, column: 14, scope: !774, inlinedAt: !3597)
!3599 = !DILocation(line: 180, column: 9, scope: !3600, inlinedAt: !3597)
!3600 = distinct !DILexicalBlock(scope: !774, file: !771, line: 180, column: 7)
!3601 = !DILocation(line: 180, column: 7, scope: !774, inlinedAt: !3597)
!3602 = !DILocation(line: 182, column: 13, scope: !3603, inlinedAt: !3597)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !771, line: 182, column: 11)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !771, line: 181, column: 5)
!3605 = !DILocation(line: 182, column: 11, scope: !3604, inlinedAt: !3597)
!3606 = !DILocation(line: 197, column: 11, scope: !3607, inlinedAt: !3597)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !771, line: 197, column: 11)
!3608 = distinct !DILexicalBlock(scope: !3600, file: !771, line: 195, column: 5)
!3609 = !DILocation(line: 197, column: 11, scope: !3608, inlinedAt: !3597)
!3610 = !DILocation(line: 198, column: 9, scope: !3607, inlinedAt: !3597)
!3611 = !DILocation(line: 0, scope: !3415, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 201, column: 7, scope: !774, inlinedAt: !3597)
!3613 = !DILocation(line: 85, column: 25, scope: !3415, inlinedAt: !3612)
!3614 = !DILocation(line: 0, scope: !3423, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 85, column: 10, scope: !3415, inlinedAt: !3612)
!3616 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3615)
!3617 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3615)
!3618 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3615)
!3619 = !DILocation(line: 202, column: 7, scope: !774, inlinedAt: !3597)
!3620 = !DILocation(line: 118, column: 3, scope: !3589)
!3621 = !DILocation(line: 0, scope: !774)
!3622 = !DILocation(line: 178, column: 14, scope: !774)
!3623 = !DILocation(line: 180, column: 9, scope: !3600)
!3624 = !DILocation(line: 180, column: 7, scope: !774)
!3625 = !DILocation(line: 182, column: 13, scope: !3603)
!3626 = !DILocation(line: 182, column: 11, scope: !3604)
!3627 = !DILocation(line: 190, column: 30, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3603, file: !771, line: 183, column: 9)
!3629 = !DILocation(line: 191, column: 16, scope: !3628)
!3630 = !DILocation(line: 191, column: 13, scope: !3628)
!3631 = !DILocation(line: 192, column: 9, scope: !3628)
!3632 = !DILocation(line: 197, column: 11, scope: !3607)
!3633 = !DILocation(line: 197, column: 11, scope: !3608)
!3634 = !DILocation(line: 198, column: 9, scope: !3607)
!3635 = !DILocation(line: 0, scope: !3415, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 201, column: 7, scope: !774)
!3637 = !DILocation(line: 85, column: 25, scope: !3415, inlinedAt: !3636)
!3638 = !DILocation(line: 0, scope: !3423, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 85, column: 10, scope: !3415, inlinedAt: !3636)
!3640 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3639)
!3641 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3639)
!3642 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3639)
!3643 = !DILocation(line: 202, column: 7, scope: !774)
!3644 = !DILocation(line: 203, column: 3, scope: !774)
!3645 = !DILocation(line: 0, scope: !786)
!3646 = !DILocation(line: 230, column: 14, scope: !786)
!3647 = !DILocation(line: 238, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !786, file: !771, line: 238, column: 7)
!3649 = !DILocation(line: 238, column: 7, scope: !786)
!3650 = !DILocation(line: 240, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !786, file: !771, line: 240, column: 7)
!3652 = !DILocation(line: 240, column: 18, scope: !3651)
!3653 = !DILocation(line: 253, column: 8, scope: !786)
!3654 = !DILocation(line: 256, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !786, file: !771, line: 256, column: 7)
!3656 = !DILocation(line: 256, column: 7, scope: !786)
!3657 = !DILocation(line: 258, column: 27, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3655, file: !771, line: 257, column: 5)
!3659 = !DILocation(line: 259, column: 50, scope: !3658)
!3660 = !DILocation(line: 259, column: 32, scope: !3658)
!3661 = !DILocation(line: 260, column: 5, scope: !3658)
!3662 = !DILocation(line: 262, column: 9, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !786, file: !771, line: 262, column: 7)
!3664 = !DILocation(line: 262, column: 7, scope: !786)
!3665 = !DILocation(line: 263, column: 9, scope: !3663)
!3666 = !DILocation(line: 263, column: 5, scope: !3663)
!3667 = !DILocation(line: 264, column: 9, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !786, file: !771, line: 264, column: 7)
!3669 = !DILocation(line: 264, column: 14, scope: !3668)
!3670 = !DILocation(line: 265, column: 7, scope: !3668)
!3671 = !DILocation(line: 265, column: 11, scope: !3668)
!3672 = !DILocation(line: 266, column: 11, scope: !3668)
!3673 = !DILocation(line: 267, column: 14, scope: !3668)
!3674 = !DILocation(line: 264, column: 7, scope: !786)
!3675 = !DILocation(line: 268, column: 5, scope: !3668)
!3676 = !DILocation(line: 0, scope: !3487, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 269, column: 8, scope: !786)
!3678 = !DILocation(line: 0, scope: !3495, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 70, column: 25, scope: !3487, inlinedAt: !3677)
!3680 = !DILocation(line: 2059, column: 24, scope: !3495, inlinedAt: !3679)
!3681 = !DILocation(line: 2059, column: 10, scope: !3495, inlinedAt: !3679)
!3682 = !DILocation(line: 0, scope: !3423, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 70, column: 10, scope: !3487, inlinedAt: !3677)
!3684 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3683)
!3685 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3683)
!3686 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3683)
!3687 = !DILocation(line: 270, column: 7, scope: !786)
!3688 = !DILocation(line: 271, column: 3, scope: !786)
!3689 = distinct !DISubprogram(name: "xzalloc", scope: !771, file: !771, line: 279, type: !1735, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3690)
!3690 = !{!3691}
!3691 = !DILocalVariable(name: "s", arg: 1, scope: !3689, file: !771, line: 279, type: !186)
!3692 = !DILocation(line: 0, scope: !3689)
!3693 = !DILocalVariable(name: "n", arg: 1, scope: !3694, file: !771, line: 294, type: !186)
!3694 = distinct !DISubprogram(name: "xcalloc", scope: !771, file: !771, line: 294, type: !3556, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3695)
!3695 = !{!3693, !3696}
!3696 = !DILocalVariable(name: "s", arg: 2, scope: !3694, file: !771, line: 294, type: !186)
!3697 = !DILocation(line: 0, scope: !3694, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 281, column: 10, scope: !3689)
!3699 = !DILocation(line: 296, column: 25, scope: !3694, inlinedAt: !3698)
!3700 = !DILocation(line: 0, scope: !3423, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 296, column: 10, scope: !3694, inlinedAt: !3698)
!3702 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3701)
!3703 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3701)
!3704 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3701)
!3705 = !DILocation(line: 281, column: 3, scope: !3689)
!3706 = !DISubprogram(name: "calloc", scope: !1038, file: !1038, line: 543, type: !3556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3707 = !DILocation(line: 0, scope: !3694)
!3708 = !DILocation(line: 296, column: 25, scope: !3694)
!3709 = !DILocation(line: 0, scope: !3423, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 296, column: 10, scope: !3694)
!3711 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3710)
!3712 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3710)
!3713 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3710)
!3714 = !DILocation(line: 296, column: 3, scope: !3694)
!3715 = distinct !DISubprogram(name: "xizalloc", scope: !771, file: !771, line: 285, type: !3454, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3716)
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "s", arg: 1, scope: !3715, file: !771, line: 285, type: !790)
!3718 = !DILocation(line: 0, scope: !3715)
!3719 = !DILocalVariable(name: "n", arg: 1, scope: !3720, file: !771, line: 300, type: !790)
!3720 = distinct !DISubprogram(name: "xicalloc", scope: !771, file: !771, line: 300, type: !3572, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3721)
!3721 = !{!3719, !3722}
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3720, file: !771, line: 300, type: !790)
!3723 = !DILocation(line: 0, scope: !3720, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 287, column: 10, scope: !3715)
!3725 = !DILocalVariable(name: "n", arg: 1, scope: !3726, file: !3461, line: 77, type: !790)
!3726 = distinct !DISubprogram(name: "icalloc", scope: !3461, file: !3461, line: 77, type: !3572, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3727)
!3727 = !{!3725, !3728}
!3728 = !DILocalVariable(name: "s", arg: 2, scope: !3726, file: !3461, line: 77, type: !790)
!3729 = !DILocation(line: 0, scope: !3726, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 302, column: 25, scope: !3720, inlinedAt: !3724)
!3731 = !DILocation(line: 91, column: 10, scope: !3726, inlinedAt: !3730)
!3732 = !DILocation(line: 0, scope: !3423, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 302, column: 10, scope: !3720, inlinedAt: !3724)
!3734 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3733)
!3735 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3733)
!3736 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3733)
!3737 = !DILocation(line: 287, column: 3, scope: !3715)
!3738 = !DILocation(line: 0, scope: !3720)
!3739 = !DILocation(line: 0, scope: !3726, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 302, column: 25, scope: !3720)
!3741 = !DILocation(line: 91, column: 10, scope: !3726, inlinedAt: !3740)
!3742 = !DILocation(line: 0, scope: !3423, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 302, column: 10, scope: !3720)
!3744 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3743)
!3745 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3743)
!3746 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3743)
!3747 = !DILocation(line: 302, column: 3, scope: !3720)
!3748 = distinct !DISubprogram(name: "xmemdup", scope: !771, file: !771, line: 310, type: !3749, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!178, !1062, !186}
!3751 = !{!3752, !3753}
!3752 = !DILocalVariable(name: "p", arg: 1, scope: !3748, file: !771, line: 310, type: !1062)
!3753 = !DILocalVariable(name: "s", arg: 2, scope: !3748, file: !771, line: 310, type: !186)
!3754 = !DILocation(line: 0, scope: !3748)
!3755 = !DILocation(line: 0, scope: !3442, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 312, column: 18, scope: !3748)
!3757 = !DILocation(line: 49, column: 25, scope: !3442, inlinedAt: !3756)
!3758 = !DILocation(line: 0, scope: !3423, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 49, column: 10, scope: !3442, inlinedAt: !3756)
!3760 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3759)
!3761 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3759)
!3762 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3759)
!3763 = !DILocalVariable(name: "__dest", arg: 1, scope: !3764, file: !1707, line: 26, type: !1710)
!3764 = distinct !DISubprogram(name: "memcpy", scope: !1707, file: !1707, line: 26, type: !1708, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3765)
!3765 = !{!3763, !3766, !3767}
!3766 = !DILocalVariable(name: "__src", arg: 2, scope: !3764, file: !1707, line: 26, type: !1061)
!3767 = !DILocalVariable(name: "__len", arg: 3, scope: !3764, file: !1707, line: 26, type: !186)
!3768 = !DILocation(line: 0, scope: !3764, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 312, column: 10, scope: !3748)
!3770 = !DILocation(line: 29, column: 10, scope: !3764, inlinedAt: !3769)
!3771 = !DILocation(line: 312, column: 3, scope: !3748)
!3772 = distinct !DISubprogram(name: "ximemdup", scope: !771, file: !771, line: 316, type: !3773, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!178, !1062, !790}
!3775 = !{!3776, !3777}
!3776 = !DILocalVariable(name: "p", arg: 1, scope: !3772, file: !771, line: 316, type: !1062)
!3777 = !DILocalVariable(name: "s", arg: 2, scope: !3772, file: !771, line: 316, type: !790)
!3778 = !DILocation(line: 0, scope: !3772)
!3779 = !DILocation(line: 0, scope: !3453, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 318, column: 18, scope: !3772)
!3781 = !DILocation(line: 0, scope: !3460, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 55, column: 25, scope: !3453, inlinedAt: !3780)
!3783 = !DILocation(line: 57, column: 26, scope: !3460, inlinedAt: !3782)
!3784 = !DILocation(line: 0, scope: !3423, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 55, column: 10, scope: !3453, inlinedAt: !3780)
!3786 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3785)
!3787 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3785)
!3788 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3785)
!3789 = !DILocation(line: 0, scope: !3764, inlinedAt: !3790)
!3790 = distinct !DILocation(line: 318, column: 10, scope: !3772)
!3791 = !DILocation(line: 29, column: 10, scope: !3764, inlinedAt: !3790)
!3792 = !DILocation(line: 318, column: 3, scope: !3772)
!3793 = distinct !DISubprogram(name: "ximemdup0", scope: !771, file: !771, line: 325, type: !3794, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!330, !1062, !790}
!3796 = !{!3797, !3798, !3799}
!3797 = !DILocalVariable(name: "p", arg: 1, scope: !3793, file: !771, line: 325, type: !1062)
!3798 = !DILocalVariable(name: "s", arg: 2, scope: !3793, file: !771, line: 325, type: !790)
!3799 = !DILocalVariable(name: "result", scope: !3793, file: !771, line: 327, type: !330)
!3800 = !DILocation(line: 0, scope: !3793)
!3801 = !DILocation(line: 327, column: 30, scope: !3793)
!3802 = !DILocation(line: 0, scope: !3453, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 327, column: 18, scope: !3793)
!3804 = !DILocation(line: 0, scope: !3460, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 55, column: 25, scope: !3453, inlinedAt: !3803)
!3806 = !DILocation(line: 57, column: 26, scope: !3460, inlinedAt: !3805)
!3807 = !DILocation(line: 0, scope: !3423, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 55, column: 10, scope: !3453, inlinedAt: !3803)
!3809 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3808)
!3810 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3808)
!3811 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3808)
!3812 = !DILocation(line: 328, column: 3, scope: !3793)
!3813 = !DILocation(line: 328, column: 13, scope: !3793)
!3814 = !DILocation(line: 0, scope: !3764, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 329, column: 10, scope: !3793)
!3816 = !DILocation(line: 29, column: 10, scope: !3764, inlinedAt: !3815)
!3817 = !DILocation(line: 329, column: 3, scope: !3793)
!3818 = distinct !DISubprogram(name: "xstrdup", scope: !771, file: !771, line: 335, type: !1040, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3819)
!3819 = !{!3820}
!3820 = !DILocalVariable(name: "string", arg: 1, scope: !3818, file: !771, line: 335, type: !134)
!3821 = !DILocation(line: 0, scope: !3818)
!3822 = !DILocation(line: 337, column: 27, scope: !3818)
!3823 = !DILocation(line: 337, column: 43, scope: !3818)
!3824 = !DILocation(line: 0, scope: !3748, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 337, column: 10, scope: !3818)
!3826 = !DILocation(line: 0, scope: !3442, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 312, column: 18, scope: !3748, inlinedAt: !3825)
!3828 = !DILocation(line: 49, column: 25, scope: !3442, inlinedAt: !3827)
!3829 = !DILocation(line: 0, scope: !3423, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 49, column: 10, scope: !3442, inlinedAt: !3827)
!3831 = !DILocation(line: 39, column: 8, scope: !3430, inlinedAt: !3830)
!3832 = !DILocation(line: 39, column: 7, scope: !3423, inlinedAt: !3830)
!3833 = !DILocation(line: 40, column: 5, scope: !3430, inlinedAt: !3830)
!3834 = !DILocation(line: 0, scope: !3764, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 312, column: 10, scope: !3748, inlinedAt: !3825)
!3836 = !DILocation(line: 29, column: 10, scope: !3764, inlinedAt: !3835)
!3837 = !DILocation(line: 337, column: 3, scope: !3818)
!3838 = distinct !DISubprogram(name: "xalloc_die", scope: !730, file: !730, line: 32, type: !452, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3839)
!3839 = !{!3840}
!3840 = !DILocalVariable(name: "__errstatus", scope: !3841, file: !730, line: 34, type: !1081)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !730, line: 34, column: 3)
!3842 = !DILocation(line: 34, column: 3, scope: !3841)
!3843 = !DILocation(line: 0, scope: !3841)
!3844 = !DILocation(line: 40, column: 3, scope: !3838)
!3845 = distinct !DISubprogram(name: "last_component", scope: !808, file: !808, line: 29, type: !1040, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3846)
!3846 = !{!3847, !3848, !3849, !3850}
!3847 = !DILocalVariable(name: "name", arg: 1, scope: !3845, file: !808, line: 29, type: !134)
!3848 = !DILocalVariable(name: "base", scope: !3845, file: !808, line: 31, type: !134)
!3849 = !DILocalVariable(name: "last_was_slash", scope: !3845, file: !808, line: 35, type: !309)
!3850 = !DILocalVariable(name: "p", scope: !3851, file: !808, line: 36, type: !134)
!3851 = distinct !DILexicalBlock(scope: !3845, file: !808, line: 36, column: 3)
!3852 = !DILocation(line: 0, scope: !3845)
!3853 = !DILocation(line: 32, column: 3, scope: !3845)
!3854 = !DILocation(line: 32, column: 10, scope: !3845)
!3855 = !DILocation(line: 33, column: 9, scope: !3845)
!3856 = distinct !{!3856, !3853, !3855, !961}
!3857 = !DILocation(line: 36, column: 30, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3851, file: !808, line: 36, column: 3)
!3859 = !DILocation(line: 31, column: 15, scope: !3845)
!3860 = !DILocation(line: 36, scope: !3851)
!3861 = !DILocation(line: 0, scope: !3851)
!3862 = !DILocation(line: 36, column: 3, scope: !3851)
!3863 = !DILocation(line: 47, column: 3, scope: !3845)
!3864 = !DILocation(line: 40, column: 16, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !808, line: 40, column: 16)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !808, line: 38, column: 11)
!3867 = distinct !DILexicalBlock(scope: !3858, file: !808, line: 37, column: 5)
!3868 = !DILocation(line: 40, column: 16, scope: !3866)
!3869 = !DILocation(line: 36, column: 35, scope: !3858)
!3870 = !DILocation(line: 36, column: 3, scope: !3858)
!3871 = distinct !{!3871, !3862, !3872, !961}
!3872 = !DILocation(line: 45, column: 5, scope: !3851)
!3873 = distinct !DISubprogram(name: "base_len", scope: !808, file: !808, line: 51, type: !3874, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!186, !134}
!3876 = !{!3877, !3878, !3879}
!3877 = !DILocalVariable(name: "name", arg: 1, scope: !3873, file: !808, line: 51, type: !134)
!3878 = !DILocalVariable(name: "len", scope: !3873, file: !808, line: 53, type: !186)
!3879 = !DILocalVariable(name: "prefix_len", scope: !3873, file: !808, line: 61, type: !186)
!3880 = !DILocation(line: 0, scope: !3873)
!3881 = !DILocation(line: 54, column: 14, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3873, file: !808, line: 54, column: 3)
!3883 = !DILocation(line: 54, column: 8, scope: !3882)
!3884 = !DILocation(line: 54, column: 32, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !808, line: 54, column: 3)
!3886 = !DILocation(line: 54, column: 38, scope: !3885)
!3887 = !DILocation(line: 54, column: 41, scope: !3885)
!3888 = !DILocation(line: 54, column: 3, scope: !3882)
!3889 = !DILocation(line: 54, column: 70, scope: !3885)
!3890 = distinct !{!3890, !3888, !3891, !961}
!3891 = !DILocation(line: 55, column: 5, scope: !3882)
!3892 = !DILocation(line: 54, scope: !3882)
!3893 = !DILocation(line: 66, column: 3, scope: !3873)
!3894 = distinct !DISubprogram(name: "close_stream", scope: !811, file: !811, line: 55, type: !3895, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3931)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!184, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3899)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3900)
!3900 = !{!3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3899, file: !326, line: 51, baseType: !184, size: 32)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3899, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3899, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3899, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3899, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3899, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3899, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3899, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3899, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3899, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3899, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3899, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3899, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3899, file: !326, line: 70, baseType: !3915, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3899, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3899, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3899, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3899, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3899, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3899, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3899, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3899, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3899, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3899, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3899, file: !326, line: 93, baseType: !3915, size: 64, offset: 1344)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3899, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3899, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3899, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3899, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3931 = !{!3932, !3933, !3935, !3936}
!3932 = !DILocalVariable(name: "stream", arg: 1, scope: !3894, file: !811, line: 55, type: !3897)
!3933 = !DILocalVariable(name: "some_pending", scope: !3894, file: !811, line: 57, type: !3934)
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!3935 = !DILocalVariable(name: "prev_fail", scope: !3894, file: !811, line: 58, type: !3934)
!3936 = !DILocalVariable(name: "fclose_fail", scope: !3894, file: !811, line: 59, type: !3934)
!3937 = !DILocation(line: 0, scope: !3894)
!3938 = !DILocation(line: 57, column: 30, scope: !3894)
!3939 = !DILocalVariable(name: "__stream", arg: 1, scope: !3940, file: !1196, line: 135, type: !3897)
!3940 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1196, file: !1196, line: 135, type: !3895, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3941)
!3941 = !{!3939}
!3942 = !DILocation(line: 0, scope: !3940, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 58, column: 27, scope: !3894)
!3944 = !DILocation(line: 137, column: 10, scope: !3940, inlinedAt: !3943)
!3945 = !DILocation(line: 58, column: 43, scope: !3894)
!3946 = !DILocation(line: 59, column: 29, scope: !3894)
!3947 = !DILocation(line: 59, column: 45, scope: !3894)
!3948 = !DILocation(line: 69, column: 17, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3894, file: !811, line: 69, column: 7)
!3950 = !DILocation(line: 57, column: 50, scope: !3894)
!3951 = !DILocation(line: 69, column: 33, scope: !3949)
!3952 = !DILocation(line: 69, column: 53, scope: !3949)
!3953 = !DILocation(line: 69, column: 59, scope: !3949)
!3954 = !DILocation(line: 69, column: 7, scope: !3894)
!3955 = !DILocation(line: 71, column: 11, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3949, file: !811, line: 70, column: 5)
!3957 = !DILocation(line: 72, column: 9, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3956, file: !811, line: 71, column: 11)
!3959 = !DILocation(line: 72, column: 15, scope: !3958)
!3960 = !DILocation(line: 77, column: 1, scope: !3894)
!3961 = !DISubprogram(name: "__fpending", scope: !3962, file: !3962, line: 75, type: !3963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3962 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!186, !3897}
!3965 = distinct !DISubprogram(name: "rpl_fclose", scope: !813, file: !813, line: 58, type: !3966, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !4002)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!184, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3970)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3970, file: !326, line: 51, baseType: !184, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3970, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3970, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3970, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3970, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3970, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3970, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3970, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3970, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3970, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3970, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3970, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3970, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3970, file: !326, line: 70, baseType: !3986, size: 64, offset: 832)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3970, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3970, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3970, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3970, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3970, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3970, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3970, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3970, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3970, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3970, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3970, file: !326, line: 93, baseType: !3986, size: 64, offset: 1344)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3970, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3970, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3970, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3970, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4002 = !{!4003, !4004, !4005, !4006}
!4003 = !DILocalVariable(name: "fp", arg: 1, scope: !3965, file: !813, line: 58, type: !3968)
!4004 = !DILocalVariable(name: "saved_errno", scope: !3965, file: !813, line: 60, type: !184)
!4005 = !DILocalVariable(name: "fd", scope: !3965, file: !813, line: 63, type: !184)
!4006 = !DILocalVariable(name: "result", scope: !3965, file: !813, line: 74, type: !184)
!4007 = !DILocation(line: 0, scope: !3965)
!4008 = !DILocation(line: 63, column: 12, scope: !3965)
!4009 = !DILocation(line: 64, column: 10, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3965, file: !813, line: 64, column: 7)
!4011 = !DILocation(line: 64, column: 7, scope: !3965)
!4012 = !DILocation(line: 65, column: 12, scope: !4010)
!4013 = !DILocation(line: 65, column: 5, scope: !4010)
!4014 = !DILocation(line: 70, column: 9, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3965, file: !813, line: 70, column: 7)
!4016 = !DILocation(line: 70, column: 23, scope: !4015)
!4017 = !DILocation(line: 70, column: 33, scope: !4015)
!4018 = !DILocation(line: 70, column: 26, scope: !4015)
!4019 = !DILocation(line: 70, column: 59, scope: !4015)
!4020 = !DILocation(line: 71, column: 7, scope: !4015)
!4021 = !DILocation(line: 71, column: 10, scope: !4015)
!4022 = !DILocation(line: 70, column: 7, scope: !3965)
!4023 = !DILocation(line: 100, column: 12, scope: !3965)
!4024 = !DILocation(line: 105, column: 7, scope: !3965)
!4025 = !DILocation(line: 72, column: 19, scope: !4015)
!4026 = !DILocation(line: 105, column: 19, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3965, file: !813, line: 105, column: 7)
!4028 = !DILocation(line: 107, column: 13, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4027, file: !813, line: 106, column: 5)
!4030 = !DILocation(line: 109, column: 5, scope: !4029)
!4031 = !DILocation(line: 112, column: 1, scope: !3965)
!4032 = !DISubprogram(name: "fileno", scope: !909, file: !909, line: 809, type: !3966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4033 = !DISubprogram(name: "fclose", scope: !909, file: !909, line: 178, type: !3966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4034 = !DISubprogram(name: "__freading", scope: !3962, file: !3962, line: 51, type: !3966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4035 = !DISubprogram(name: "lseek", scope: !1228, file: !1228, line: 339, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!349, !184, !349, !184}
!4038 = distinct !DISubprogram(name: "rpl_fflush", scope: !815, file: !815, line: 130, type: !4039, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4075)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!184, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !4043)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4043, file: !326, line: 51, baseType: !184, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4043, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4043, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4043, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4043, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4043, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4043, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4043, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4043, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4043, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4043, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4043, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4043, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4043, file: !326, line: 70, baseType: !4059, size: 64, offset: 832)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4043, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4043, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4043, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4043, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4043, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4043, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4043, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4043, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4043, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4043, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4043, file: !326, line: 93, baseType: !4059, size: 64, offset: 1344)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4043, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4043, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4043, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4043, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "stream", arg: 1, scope: !4038, file: !815, line: 130, type: !4041)
!4077 = !DILocation(line: 0, scope: !4038)
!4078 = !DILocation(line: 151, column: 14, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4038, file: !815, line: 151, column: 7)
!4080 = !DILocation(line: 151, column: 22, scope: !4079)
!4081 = !DILocation(line: 151, column: 27, scope: !4079)
!4082 = !DILocation(line: 151, column: 7, scope: !4038)
!4083 = !DILocation(line: 152, column: 12, scope: !4079)
!4084 = !DILocation(line: 152, column: 5, scope: !4079)
!4085 = !DILocalVariable(name: "fp", arg: 1, scope: !4086, file: !815, line: 42, type: !4041)
!4086 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !815, file: !815, line: 42, type: !4087, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !4041}
!4089 = !{!4085}
!4090 = !DILocation(line: 0, scope: !4086, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 157, column: 3, scope: !4038)
!4092 = !DILocation(line: 44, column: 12, scope: !4093, inlinedAt: !4091)
!4093 = distinct !DILexicalBlock(scope: !4086, file: !815, line: 44, column: 7)
!4094 = !DILocation(line: 44, column: 19, scope: !4093, inlinedAt: !4091)
!4095 = !DILocation(line: 44, column: 7, scope: !4086, inlinedAt: !4091)
!4096 = !DILocation(line: 46, column: 5, scope: !4093, inlinedAt: !4091)
!4097 = !DILocation(line: 159, column: 10, scope: !4038)
!4098 = !DILocation(line: 159, column: 3, scope: !4038)
!4099 = !DILocation(line: 236, column: 1, scope: !4038)
!4100 = !DISubprogram(name: "fflush", scope: !909, file: !909, line: 230, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4101 = distinct !DISubprogram(name: "rpl_fseeko", scope: !817, file: !817, line: 28, type: !4102, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !4139)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!184, !4104, !4138, !184}
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !4106)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4106, file: !326, line: 51, baseType: !184, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4106, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4106, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4106, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4106, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4106, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4106, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4106, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4106, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4106, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4106, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4106, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4106, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4106, file: !326, line: 70, baseType: !4122, size: 64, offset: 832)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4106, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4106, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4106, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4106, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4106, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4106, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4106, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4106, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4106, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4106, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4106, file: !326, line: 93, baseType: !4122, size: 64, offset: 1344)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4106, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4106, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4106, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4106, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4138 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !909, line: 63, baseType: !349)
!4139 = !{!4140, !4141, !4142, !4143}
!4140 = !DILocalVariable(name: "fp", arg: 1, scope: !4101, file: !817, line: 28, type: !4104)
!4141 = !DILocalVariable(name: "offset", arg: 2, scope: !4101, file: !817, line: 28, type: !4138)
!4142 = !DILocalVariable(name: "whence", arg: 3, scope: !4101, file: !817, line: 28, type: !184)
!4143 = !DILocalVariable(name: "pos", scope: !4144, file: !817, line: 123, type: !4138)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !817, line: 119, column: 5)
!4145 = distinct !DILexicalBlock(scope: !4101, file: !817, line: 55, column: 7)
!4146 = !DILocation(line: 0, scope: !4101)
!4147 = !DILocation(line: 55, column: 12, scope: !4145)
!4148 = !{!1204, !846, i64 16}
!4149 = !DILocation(line: 55, column: 33, scope: !4145)
!4150 = !{!1204, !846, i64 8}
!4151 = !DILocation(line: 55, column: 25, scope: !4145)
!4152 = !DILocation(line: 56, column: 7, scope: !4145)
!4153 = !DILocation(line: 56, column: 15, scope: !4145)
!4154 = !DILocation(line: 56, column: 37, scope: !4145)
!4155 = !{!1204, !846, i64 32}
!4156 = !DILocation(line: 56, column: 29, scope: !4145)
!4157 = !DILocation(line: 57, column: 7, scope: !4145)
!4158 = !DILocation(line: 57, column: 15, scope: !4145)
!4159 = !{!1204, !846, i64 72}
!4160 = !DILocation(line: 57, column: 29, scope: !4145)
!4161 = !DILocation(line: 55, column: 7, scope: !4101)
!4162 = !DILocation(line: 123, column: 26, scope: !4144)
!4163 = !DILocation(line: 123, column: 19, scope: !4144)
!4164 = !DILocation(line: 0, scope: !4144)
!4165 = !DILocation(line: 124, column: 15, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4144, file: !817, line: 124, column: 11)
!4167 = !DILocation(line: 124, column: 11, scope: !4144)
!4168 = !DILocation(line: 135, column: 19, scope: !4144)
!4169 = !DILocation(line: 136, column: 12, scope: !4144)
!4170 = !DILocation(line: 136, column: 20, scope: !4144)
!4171 = !{!1204, !1205, i64 144}
!4172 = !DILocation(line: 167, column: 7, scope: !4144)
!4173 = !DILocation(line: 169, column: 10, scope: !4101)
!4174 = !DILocation(line: 169, column: 3, scope: !4101)
!4175 = !DILocation(line: 170, column: 1, scope: !4101)
!4176 = !DISubprogram(name: "fseeko", scope: !909, file: !909, line: 736, type: !4177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!184, !4104, !349, !184}
!4179 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !737, file: !737, line: 100, type: !4180, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4183)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!186, !1904, !134, !186, !4182}
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!4183 = !{!4184, !4185, !4186, !4187, !4188}
!4184 = !DILocalVariable(name: "pwc", arg: 1, scope: !4179, file: !737, line: 100, type: !1904)
!4185 = !DILocalVariable(name: "s", arg: 2, scope: !4179, file: !737, line: 100, type: !134)
!4186 = !DILocalVariable(name: "n", arg: 3, scope: !4179, file: !737, line: 100, type: !186)
!4187 = !DILocalVariable(name: "ps", arg: 4, scope: !4179, file: !737, line: 100, type: !4182)
!4188 = !DILocalVariable(name: "ret", scope: !4179, file: !737, line: 130, type: !186)
!4189 = !DILocation(line: 0, scope: !4179)
!4190 = !DILocation(line: 105, column: 9, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4179, file: !737, line: 105, column: 7)
!4192 = !DILocation(line: 105, column: 7, scope: !4179)
!4193 = !DILocation(line: 117, column: 10, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4179, file: !737, line: 117, column: 7)
!4195 = !DILocation(line: 117, column: 7, scope: !4179)
!4196 = !DILocation(line: 130, column: 16, scope: !4179)
!4197 = !DILocation(line: 135, column: 11, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4179, file: !737, line: 135, column: 7)
!4199 = !DILocation(line: 135, column: 25, scope: !4198)
!4200 = !DILocation(line: 135, column: 30, scope: !4198)
!4201 = !DILocation(line: 135, column: 7, scope: !4179)
!4202 = !DILocalVariable(name: "ps", arg: 1, scope: !4203, file: !1878, line: 1135, type: !4182)
!4203 = distinct !DISubprogram(name: "mbszero", scope: !1878, file: !1878, line: 1135, type: !4204, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !4182}
!4206 = !{!4202}
!4207 = !DILocation(line: 0, scope: !4203, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 137, column: 5, scope: !4198)
!4209 = !DILocalVariable(name: "__dest", arg: 1, scope: !4210, file: !1707, line: 57, type: !178)
!4210 = distinct !DISubprogram(name: "memset", scope: !1707, file: !1707, line: 57, type: !1887, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !4211)
!4211 = !{!4209, !4212, !4213}
!4212 = !DILocalVariable(name: "__ch", arg: 2, scope: !4210, file: !1707, line: 57, type: !184)
!4213 = !DILocalVariable(name: "__len", arg: 3, scope: !4210, file: !1707, line: 57, type: !186)
!4214 = !DILocation(line: 0, scope: !4210, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 1137, column: 3, scope: !4203, inlinedAt: !4208)
!4216 = !DILocation(line: 59, column: 10, scope: !4210, inlinedAt: !4215)
!4217 = !DILocation(line: 137, column: 5, scope: !4198)
!4218 = !DILocation(line: 138, column: 11, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4179, file: !737, line: 138, column: 7)
!4220 = !DILocation(line: 138, column: 7, scope: !4179)
!4221 = !DILocation(line: 139, column: 5, scope: !4219)
!4222 = !DILocation(line: 143, column: 26, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4179, file: !737, line: 143, column: 7)
!4224 = !DILocation(line: 143, column: 41, scope: !4223)
!4225 = !DILocation(line: 143, column: 7, scope: !4179)
!4226 = !DILocation(line: 145, column: 15, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !737, line: 145, column: 11)
!4228 = distinct !DILexicalBlock(scope: !4223, file: !737, line: 144, column: 5)
!4229 = !DILocation(line: 145, column: 11, scope: !4228)
!4230 = !DILocation(line: 146, column: 32, scope: !4227)
!4231 = !DILocation(line: 146, column: 16, scope: !4227)
!4232 = !DILocation(line: 146, column: 14, scope: !4227)
!4233 = !DILocation(line: 146, column: 9, scope: !4227)
!4234 = !DILocation(line: 286, column: 1, scope: !4179)
!4235 = !DISubprogram(name: "mbsinit", scope: !4236, file: !4236, line: 293, type: !4237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4236 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!184, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!4241 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !819, file: !819, line: 27, type: !3407, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4242)
!4242 = !{!4243, !4244, !4245, !4246}
!4243 = !DILocalVariable(name: "ptr", arg: 1, scope: !4241, file: !819, line: 27, type: !178)
!4244 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4241, file: !819, line: 27, type: !186)
!4245 = !DILocalVariable(name: "size", arg: 3, scope: !4241, file: !819, line: 27, type: !186)
!4246 = !DILocalVariable(name: "nbytes", scope: !4241, file: !819, line: 29, type: !186)
!4247 = !DILocation(line: 0, scope: !4241)
!4248 = !DILocation(line: 30, column: 7, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4241, file: !819, line: 30, column: 7)
!4250 = !DILocation(line: 30, column: 7, scope: !4241)
!4251 = !DILocation(line: 32, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !819, line: 31, column: 5)
!4253 = !DILocation(line: 32, column: 13, scope: !4252)
!4254 = !DILocation(line: 33, column: 7, scope: !4252)
!4255 = !DILocalVariable(name: "ptr", arg: 1, scope: !4256, file: !3496, line: 2057, type: !178)
!4256 = distinct !DISubprogram(name: "rpl_realloc", scope: !3496, file: !3496, line: 2057, type: !3488, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4257)
!4257 = !{!4255, !4258}
!4258 = !DILocalVariable(name: "size", arg: 2, scope: !4256, file: !3496, line: 2057, type: !186)
!4259 = !DILocation(line: 0, scope: !4256, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 37, column: 10, scope: !4241)
!4261 = !DILocation(line: 2059, column: 24, scope: !4256, inlinedAt: !4260)
!4262 = !DILocation(line: 2059, column: 10, scope: !4256, inlinedAt: !4260)
!4263 = !DILocation(line: 37, column: 3, scope: !4241)
!4264 = !DILocation(line: 38, column: 1, scope: !4241)
!4265 = distinct !DISubprogram(name: "hard_locale", scope: !755, file: !755, line: 28, type: !4266, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4268)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!309, !184}
!4268 = !{!4269, !4270}
!4269 = !DILocalVariable(name: "category", arg: 1, scope: !4265, file: !755, line: 28, type: !184)
!4270 = !DILocalVariable(name: "locale", scope: !4265, file: !755, line: 30, type: !4271)
!4271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4272)
!4272 = !{!4273}
!4273 = !DISubrange(count: 257)
!4274 = distinct !DIAssignID()
!4275 = !DILocation(line: 0, scope: !4265)
!4276 = !DILocation(line: 30, column: 3, scope: !4265)
!4277 = !DILocation(line: 32, column: 7, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4265, file: !755, line: 32, column: 7)
!4279 = !DILocation(line: 32, column: 7, scope: !4265)
!4280 = !DILocalVariable(name: "__s1", arg: 1, scope: !4281, file: !927, line: 1359, type: !134)
!4281 = distinct !DISubprogram(name: "streq", scope: !927, file: !927, line: 1359, type: !928, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4282)
!4282 = !{!4280, !4283}
!4283 = !DILocalVariable(name: "__s2", arg: 2, scope: !4281, file: !927, line: 1359, type: !134)
!4284 = !DILocation(line: 0, scope: !4281, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 35, column: 9, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4265, file: !755, line: 35, column: 7)
!4287 = !DILocation(line: 1361, column: 11, scope: !4281, inlinedAt: !4285)
!4288 = !DILocation(line: 35, column: 29, scope: !4286)
!4289 = !DILocation(line: 0, scope: !4281, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 35, column: 32, scope: !4286)
!4291 = !DILocation(line: 1361, column: 11, scope: !4281, inlinedAt: !4290)
!4292 = !DILocation(line: 1361, column: 10, scope: !4281, inlinedAt: !4290)
!4293 = !DILocation(line: 35, column: 7, scope: !4265)
!4294 = !DILocation(line: 46, column: 3, scope: !4265)
!4295 = !DILocation(line: 47, column: 1, scope: !4265)
!4296 = distinct !DISubprogram(name: "setlocale_null_r", scope: !825, file: !825, line: 154, type: !4297, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!184, !184, !330, !186}
!4299 = !{!4300, !4301, !4302}
!4300 = !DILocalVariable(name: "category", arg: 1, scope: !4296, file: !825, line: 154, type: !184)
!4301 = !DILocalVariable(name: "buf", arg: 2, scope: !4296, file: !825, line: 154, type: !330)
!4302 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4296, file: !825, line: 154, type: !186)
!4303 = !DILocation(line: 0, scope: !4296)
!4304 = !DILocation(line: 159, column: 10, scope: !4296)
!4305 = !DILocation(line: 159, column: 3, scope: !4296)
!4306 = distinct !DISubprogram(name: "setlocale_null", scope: !825, file: !825, line: 186, type: !4307, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!134, !184}
!4309 = !{!4310}
!4310 = !DILocalVariable(name: "category", arg: 1, scope: !4306, file: !825, line: 186, type: !184)
!4311 = !DILocation(line: 0, scope: !4306)
!4312 = !DILocation(line: 189, column: 10, scope: !4306)
!4313 = !DILocation(line: 189, column: 3, scope: !4306)
!4314 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !827, file: !827, line: 35, type: !4307, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4315)
!4315 = !{!4316, !4317}
!4316 = !DILocalVariable(name: "category", arg: 1, scope: !4314, file: !827, line: 35, type: !184)
!4317 = !DILocalVariable(name: "result", scope: !4314, file: !827, line: 37, type: !134)
!4318 = !DILocation(line: 0, scope: !4314)
!4319 = !DILocation(line: 37, column: 24, scope: !4314)
!4320 = !DILocation(line: 62, column: 3, scope: !4314)
!4321 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !827, file: !827, line: 66, type: !4297, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4322)
!4322 = !{!4323, !4324, !4325, !4326, !4327}
!4323 = !DILocalVariable(name: "category", arg: 1, scope: !4321, file: !827, line: 66, type: !184)
!4324 = !DILocalVariable(name: "buf", arg: 2, scope: !4321, file: !827, line: 66, type: !330)
!4325 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4321, file: !827, line: 66, type: !186)
!4326 = !DILocalVariable(name: "result", scope: !4321, file: !827, line: 111, type: !134)
!4327 = !DILocalVariable(name: "length", scope: !4328, file: !827, line: 125, type: !186)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !827, line: 124, column: 5)
!4329 = distinct !DILexicalBlock(scope: !4321, file: !827, line: 113, column: 7)
!4330 = !DILocation(line: 0, scope: !4321)
!4331 = !DILocation(line: 0, scope: !4314, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 111, column: 24, scope: !4321)
!4333 = !DILocation(line: 37, column: 24, scope: !4314, inlinedAt: !4332)
!4334 = !DILocation(line: 113, column: 14, scope: !4329)
!4335 = !DILocation(line: 113, column: 7, scope: !4321)
!4336 = !DILocation(line: 116, column: 19, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4338, file: !827, line: 116, column: 11)
!4338 = distinct !DILexicalBlock(scope: !4329, file: !827, line: 114, column: 5)
!4339 = !DILocation(line: 116, column: 11, scope: !4338)
!4340 = !DILocation(line: 120, column: 16, scope: !4337)
!4341 = !DILocation(line: 120, column: 9, scope: !4337)
!4342 = !DILocation(line: 125, column: 23, scope: !4328)
!4343 = !DILocation(line: 0, scope: !4328)
!4344 = !DILocation(line: 126, column: 18, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4328, file: !827, line: 126, column: 11)
!4346 = !DILocation(line: 126, column: 11, scope: !4328)
!4347 = !DILocation(line: 128, column: 39, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4345, file: !827, line: 127, column: 9)
!4349 = !DILocalVariable(name: "__dest", arg: 1, scope: !4350, file: !1707, line: 26, type: !1710)
!4350 = distinct !DISubprogram(name: "memcpy", scope: !1707, file: !1707, line: 26, type: !1708, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4351)
!4351 = !{!4349, !4352, !4353}
!4352 = !DILocalVariable(name: "__src", arg: 2, scope: !4350, file: !1707, line: 26, type: !1061)
!4353 = !DILocalVariable(name: "__len", arg: 3, scope: !4350, file: !1707, line: 26, type: !186)
!4354 = !DILocation(line: 0, scope: !4350, inlinedAt: !4355)
!4355 = distinct !DILocation(line: 128, column: 11, scope: !4348)
!4356 = !DILocation(line: 29, column: 10, scope: !4350, inlinedAt: !4355)
!4357 = !DILocation(line: 129, column: 11, scope: !4348)
!4358 = !DILocation(line: 133, column: 23, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !827, line: 133, column: 15)
!4360 = distinct !DILexicalBlock(scope: !4345, file: !827, line: 132, column: 9)
!4361 = !DILocation(line: 133, column: 15, scope: !4360)
!4362 = !DILocation(line: 138, column: 44, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4359, file: !827, line: 134, column: 13)
!4364 = !DILocation(line: 0, scope: !4350, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 138, column: 15, scope: !4363)
!4366 = !DILocation(line: 29, column: 10, scope: !4350, inlinedAt: !4365)
!4367 = !DILocation(line: 139, column: 15, scope: !4363)
!4368 = !DILocation(line: 139, column: 32, scope: !4363)
!4369 = !DILocation(line: 140, column: 13, scope: !4363)
!4370 = !DILocation(line: 0, scope: !4329)
!4371 = !DILocation(line: 145, column: 1, scope: !4321)
