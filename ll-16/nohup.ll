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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !446
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !411
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !436
@.str.1.44 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !438
@.str.2.46 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !440
@.str.3.45 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !442
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !444
@.str.4.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !448
@.str.5.40 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !450
@.str.6.41 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !455
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !460
@opterr = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !478
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.64, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.65, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !481
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !574
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !588
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !626
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !633
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !590
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !635
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !578
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !595
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !597
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !599
@.str.13.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !601
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !603
@.str.95 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !641
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !644
@.str.2.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !646
@.str.3.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !648
@.str.4.99 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !650
@.str.5.100 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !652
@.str.6.101 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !657
@.str.7.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !659
@.str.8.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !661
@.str.9.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !663
@.str.10.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !668
@.str.11.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !673
@.str.12.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !678
@.str.13.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !680
@.str.14.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !685
@.str.15.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !690
@.str.16.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !695
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.116 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !700
@.str.18.117 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !702
@.str.19.118 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !704
@.str.20.119 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !706
@.str.21.120 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !708
@.str.22.121 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !710
@.str.23.122 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !712
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !717
@exit_failure = dso_local global i32 1, align 4, !dbg !725
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !731
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !734
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !736
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !738
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !741
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !756
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !759

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !839 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !841, metadata !DIExpression()), !dbg !842
  %2 = icmp eq i32 %0, 0, !dbg !843
  br i1 %2, label %8, label %3, !dbg !845

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !846, !tbaa !848
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !846
  %6 = load ptr, ptr @program_name, align 8, !dbg !846, !tbaa !848
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !846
  br label %38, !dbg !846

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !852
  %10 = load ptr, ptr @program_name, align 8, !dbg !852, !tbaa !848
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !852
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !854
  %13 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !848
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !854
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !855
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !855
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !856
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !856
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !857
  %18 = load ptr, ptr @program_name, align 8, !dbg !857, !tbaa !848
  %19 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %17, ptr noundef %18) #39, !dbg !857
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !858
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #39, !dbg !858
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !859, metadata !DIExpression()), !dbg !864
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !866
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #39, !dbg !866
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !867, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr poison, metadata !877, metadata !DIExpression()), !dbg !882
  tail call void @emit_bug_reporting_address() #39, !dbg !884
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !885
  call void @llvm.dbg.value(metadata ptr %24, metadata !880, metadata !DIExpression()), !dbg !882
  %25 = icmp eq ptr %24, null, !dbg !886
  br i1 %25, label %33, label %26, !dbg !888

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #40, !dbg !889
  %28 = icmp eq i32 %27, 0, !dbg !889
  br i1 %28, label %33, label %29, !dbg !890

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #39, !dbg !891
  %31 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !848
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !891
  br label %33, !dbg !893

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !877, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !881, metadata !DIExpression()), !dbg !882
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #39, !dbg !894
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #39, !dbg !894
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #39, !dbg !895
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #39, !dbg !895
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !896
  unreachable, !dbg !896
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !897 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !902 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !908 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !911 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !130 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !303, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !914
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !915, !tbaa !916
  %3 = icmp eq i32 %2, -1, !dbg !918
  br i1 %3, label %4, label %16, !dbg !919

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !920
  call void @llvm.dbg.value(metadata ptr %5, metadata !305, metadata !DIExpression()), !dbg !921
  %6 = icmp eq ptr %5, null, !dbg !922
  br i1 %6, label %14, label %7, !dbg !923

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !924, !tbaa !925
  %9 = icmp eq i8 %8, 0, !dbg !924
  br i1 %9, label %14, label %10, !dbg !926

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !927, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !933, metadata !DIExpression()), !dbg !934
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #40, !dbg !936
  %12 = icmp eq i32 %11, 0, !dbg !937
  %13 = zext i1 %12 to i32, !dbg !926
  br label %14, !dbg !926

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !938, !tbaa !916
  br label %16, !dbg !939

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !940
  %18 = icmp eq i32 %17, 0, !dbg !940
  br i1 %18, label %22, label %19, !dbg !942

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !943, !tbaa !848
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !943
  br label %122, !dbg !945

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !308, metadata !DIExpression()), !dbg !914
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #40, !dbg !946
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !947
  call void @llvm.dbg.value(metadata ptr %24, metadata !310, metadata !DIExpression()), !dbg !914
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !948
  call void @llvm.dbg.value(metadata ptr %25, metadata !311, metadata !DIExpression()), !dbg !914
  %26 = icmp eq ptr %25, null, !dbg !949
  br i1 %26, label %54, label %27, !dbg !950

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !951
  br i1 %28, label %54, label %29, !dbg !952

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !312, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i64 0, metadata !316, metadata !DIExpression()), !dbg !953
  %30 = icmp ult ptr %24, %25, !dbg !954
  br i1 %30, label %31, label %52, !dbg !955

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !914
  %33 = load ptr, ptr %32, align 8, !tbaa !848
  br label %34, !dbg !955

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !312, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i64 %36, metadata !316, metadata !DIExpression()), !dbg !953
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !956
  call void @llvm.dbg.value(metadata ptr %37, metadata !312, metadata !DIExpression()), !dbg !953
  %38 = load i8, ptr %35, align 1, !dbg !956, !tbaa !925
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !956
  %41 = load i16, ptr %40, align 2, !dbg !956, !tbaa !957
  %42 = freeze i16 %41, !dbg !959
  %43 = lshr i16 %42, 13, !dbg !959
  %44 = and i16 %43, 1, !dbg !959
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !960
  call void @llvm.dbg.value(metadata i64 %46, metadata !316, metadata !DIExpression()), !dbg !953
  %47 = icmp ult ptr %37, %25, !dbg !954
  %48 = icmp ult i64 %46, 2, !dbg !961
  %49 = select i1 %47, i1 %48, i1 false, !dbg !961
  br i1 %49, label %34, label %50, !dbg !955, !llvm.loop !962

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !964
  br i1 %51, label %52, label %54, !dbg !966

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !966

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !914
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !308, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr %55, metadata !311, metadata !DIExpression()), !dbg !914
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.30) #40, !dbg !967
  call void @llvm.dbg.value(metadata i64 %57, metadata !317, metadata !DIExpression()), !dbg !914
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !968
  call void @llvm.dbg.value(metadata ptr %58, metadata !318, metadata !DIExpression()), !dbg !914
  br label %59, !dbg !969

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !914
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !308, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr %60, metadata !318, metadata !DIExpression()), !dbg !914
  %62 = load i8, ptr %60, align 1, !dbg !970, !tbaa !925
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !971

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !972
  %65 = load i8, ptr %64, align 1, !dbg !975, !tbaa !925
  %66 = icmp ne i8 %65, 45, !dbg !976
  %67 = select i1 %66, i1 %61, i1 false, !dbg !977
  br label %68, !dbg !977

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !308, metadata !DIExpression()), !dbg !914
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !978
  %71 = load ptr, ptr %70, align 8, !dbg !978, !tbaa !848
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !978
  %74 = load i16, ptr %73, align 2, !dbg !978, !tbaa !957
  %75 = and i16 %74, 8192, !dbg !978
  %76 = icmp eq i16 %75, 0, !dbg !978
  br i1 %76, label %90, label %77, !dbg !980

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !981
  br i1 %78, label %92, label %79, !dbg !984

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !985
  %81 = load i8, ptr %80, align 1, !dbg !985, !tbaa !925
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !985
  %84 = load i16, ptr %83, align 2, !dbg !985, !tbaa !957
  %85 = and i16 %84, 8192, !dbg !985
  %86 = icmp eq i16 %85, 0, !dbg !985
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !986
  br i1 %89, label %90, label %92, !dbg !986

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !987
  call void @llvm.dbg.value(metadata ptr %91, metadata !318, metadata !DIExpression()), !dbg !914
  br label %59, !dbg !969, !llvm.loop !988

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !990
  %94 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !848
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !927, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !376, metadata !DIExpression()), !dbg !914
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #40, !dbg !1011
  %97 = icmp eq i32 %96, 0, !dbg !1011
  br i1 %97, label %101, label %98, !dbg !1013

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #40, !dbg !1014
  %100 = icmp eq i32 %99, 0, !dbg !1014
  br i1 %100, label %101, label %104, !dbg !1015

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1016
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !1016
  br label %107, !dbg !1018

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1019
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !1019
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !848
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %108), !dbg !1021
  %110 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !848
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %110), !dbg !1022
  %112 = ptrtoint ptr %60 to i64, !dbg !1023
  %113 = sub i64 %112, %93, !dbg !1023
  %114 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !848
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1023
  %116 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !848
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %116), !dbg !1024
  %118 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !848
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %118), !dbg !1025
  %120 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !848
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1026
  br label %122, !dbg !1027

122:                                              ; preds = %107, %19
  ret void, !dbg !1027
}

; Function Attrs: nounwind
declare !dbg !1028 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1032 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1036 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1038 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1041 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1044 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1047 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1050 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1056 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1057 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1068, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %1, metadata !1069, metadata !DIExpression()), !dbg !1108
  %3 = load ptr, ptr %1, align 8, !dbg !1109, !tbaa !848
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1110
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1111
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1112
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1113
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.11) #39, !dbg !1114
  %8 = icmp eq ptr %7, null, !dbg !1114
  %9 = select i1 %8, i32 125, i32 127, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %9, metadata !1070, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %9, metadata !1115, metadata !DIExpression()), !dbg !1118
  store volatile i32 %9, ptr @exit_failure, align 4, !dbg !1120, !tbaa !916
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1122
  %11 = load ptr, ptr @Version, align 8, !dbg !1123, !tbaa !848
  %12 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1124
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %11, i1 noundef false, ptr noundef nonnull @usage, ptr noundef %12, ptr noundef null) #39, !dbg !1125
  %13 = load i32, ptr @optind, align 4, !dbg !1126, !tbaa !916
  %14 = icmp slt i32 %13, %0, !dbg !1128
  br i1 %14, label %17, label %15, !dbg !1129

15:                                               ; preds = %2
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1130
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #39, !dbg !1130
  tail call void @usage(i32 noundef %9) #43, !dbg !1132
  unreachable, !dbg !1132

17:                                               ; preds = %2
  %18 = tail call i32 @isatty(i32 noundef 0) #39, !dbg !1133
  %19 = icmp eq i32 %18, 0, !dbg !1133
  call void @llvm.dbg.value(metadata i1 %19, metadata !1071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1108
  %20 = tail call i32 @isatty(i32 noundef 1) #39, !dbg !1134
  %21 = icmp eq i32 %20, 0, !dbg !1134
  call void @llvm.dbg.value(metadata i1 %21, metadata !1072, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1108
  br i1 %21, label %22, label %26, !dbg !1135

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #42, !dbg !1136
  %24 = load i32, ptr %23, align 4, !dbg !1136, !tbaa !916
  %25 = icmp eq i32 %24, 9, !dbg !1137
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ], !dbg !1108
  call void @llvm.dbg.value(metadata i1 %27, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1108
  %28 = tail call i32 @isatty(i32 noundef 2) #39, !dbg !1138
  %29 = icmp eq i32 %28, 0, !dbg !1138
  call void @llvm.dbg.value(metadata i1 %29, metadata !1074, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1108
  br i1 %19, label %41, label %30, !dbg !1139

30:                                               ; preds = %26
  %31 = tail call i32 @fd_reopen(i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0) #39, !dbg !1140
  %32 = icmp slt i32 %31, 0, !dbg !1141
  br i1 %32, label %33, label %37, !dbg !1142

33:                                               ; preds = %30
  %34 = tail call ptr @__errno_location() #42, !dbg !1143
  %35 = load i32, ptr %34, align 4, !dbg !1143, !tbaa !916
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1143
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %35, ptr noundef %36) #39, !dbg !1143
  unreachable, !dbg !1143

37:                                               ; preds = %30
  %38 = select i1 %21, i1 %29, i1 false, !dbg !1144
  br i1 %38, label %39, label %41, !dbg !1144

39:                                               ; preds = %37
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1146
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40) #39, !dbg !1146
  br label %41, !dbg !1146

41:                                               ; preds = %37, %39, %26
  call void @llvm.dbg.value(metadata i32 1, metadata !1081, metadata !DIExpression()), !dbg !1108
  %42 = xor i1 %27, true
  %43 = select i1 %29, i1 true, i1 %42
  %44 = select i1 %21, i1 %43, i1 false, !dbg !1147
  br i1 %44, label %87, label %45, !dbg !1147

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1085, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i32 1089, metadata !1086, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i32 384, metadata !1087, metadata !DIExpression()), !dbg !1148
  %46 = tail call i32 @umask(i32 noundef 0) #39, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %46, metadata !1091, metadata !DIExpression()), !dbg !1148
  br i1 %21, label %49, label %47, !dbg !1150

47:                                               ; preds = %45
  %48 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #39, !dbg !1151
  br label %51, !dbg !1150

49:                                               ; preds = %45
  %50 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #39, !dbg !1152
  br label %51, !dbg !1150

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ], !dbg !1150
  call void @llvm.dbg.value(metadata i32 %52, metadata !1081, metadata !DIExpression()), !dbg !1108
  %53 = icmp slt i32 %52, 0, !dbg !1153
  br i1 %53, label %54, label %79, !dbg !1154

54:                                               ; preds = %51
  %55 = tail call ptr @__errno_location() #42, !dbg !1155
  %56 = load i32, ptr %55, align 4, !dbg !1155, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %56, metadata !1092, metadata !DIExpression()), !dbg !1156
  %57 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !1157
  call void @llvm.dbg.value(metadata ptr %57, metadata !1095, metadata !DIExpression()), !dbg !1156
  %58 = icmp eq ptr %57, null, !dbg !1158
  br i1 %58, label %70, label %59, !dbg !1160

59:                                               ; preds = %54
  %60 = tail call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %57, ptr noundef nonnull @.str.18, ptr noundef null) #39, !dbg !1161
  call void @llvm.dbg.value(metadata ptr %60, metadata !1082, metadata !DIExpression()), !dbg !1148
  br i1 %21, label %63, label %61, !dbg !1163

61:                                               ; preds = %59
  %62 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #39, !dbg !1164
  br label %65, !dbg !1163

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #39, !dbg !1165
  br label %65, !dbg !1163

65:                                               ; preds = %61, %63
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], !dbg !1148
  call void @llvm.dbg.value(metadata i32 %66, metadata !1081, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %60, metadata !1082, metadata !DIExpression()), !dbg !1148
  %67 = icmp sgt i32 %66, -1, !dbg !1166
  br i1 %67, label %79, label %68, !dbg !1167

68:                                               ; preds = %65
  %69 = load i32, ptr %55, align 4, !dbg !1168, !tbaa !916
  br label %70, !dbg !1167

70:                                               ; preds = %68, %54
  %71 = phi i32 [ %69, %68 ], [ %56, %54 ], !dbg !1168
  %72 = phi ptr [ %60, %68 ], [ null, %54 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !1096, metadata !DIExpression()), !dbg !1169
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1170
  %74 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.18) #39, !dbg !1170
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %56, ptr noundef %73, ptr noundef %74) #39, !dbg !1170
  %75 = icmp eq ptr %72, null, !dbg !1171
  br i1 %75, label %127, label %76, !dbg !1173

76:                                               ; preds = %70
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1174
  %78 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %72) #39, !dbg !1174
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %77, ptr noundef %78) #39, !dbg !1174
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1085, metadata !DIExpression()), !dbg !1148
  br label %127

79:                                               ; preds = %65, %51
  %80 = phi ptr [ @.str.18, %51 ], [ %60, %65 ], !dbg !1175
  %81 = phi ptr [ null, %51 ], [ %60, %65 ], !dbg !1148
  %82 = phi i32 [ %52, %51 ], [ %66, %65 ], !dbg !1148
  call void @llvm.dbg.value(metadata i32 %82, metadata !1081, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %81, metadata !1082, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %80, metadata !1085, metadata !DIExpression()), !dbg !1148
  %83 = tail call i32 @umask(i32 noundef %46) #39, !dbg !1176
  %84 = select i1 %19, ptr @.str.22, ptr @.str.21, !dbg !1177
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %84, i32 noundef 5) #39, !dbg !1177
  %86 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %80) #39, !dbg !1177
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #39, !dbg !1177
  tail call void @free(ptr noundef %81) #39, !dbg !1178
  br label %87

87:                                               ; preds = %79, %41
  %88 = phi i32 [ %82, %79 ], [ 1, %41 ], !dbg !1108
  call void @llvm.dbg.value(metadata i32 %88, metadata !1081, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 2, metadata !1099, metadata !DIExpression()), !dbg !1108
  br i1 %29, label %104, label %89, !dbg !1179

89:                                               ; preds = %87
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3) #39, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %90, metadata !1099, metadata !DIExpression()), !dbg !1108
  br i1 %21, label %91, label %94, !dbg !1181

91:                                               ; preds = %89
  %92 = select i1 %19, ptr @.str.24, ptr @.str.23, !dbg !1182
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %92, i32 noundef 5) #39, !dbg !1182
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %93) #39, !dbg !1182
  br label %94, !dbg !1182

94:                                               ; preds = %91, %89
  %95 = tail call i32 @dup2(i32 noundef %88, i32 noundef 2) #39, !dbg !1184
  %96 = icmp slt i32 %95, 0, !dbg !1185
  br i1 %96, label %97, label %101, !dbg !1186

97:                                               ; preds = %94
  %98 = tail call ptr @__errno_location() #42, !dbg !1187
  %99 = load i32, ptr %98, align 4, !dbg !1187, !tbaa !916
  %100 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !1187
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %99, ptr noundef %100) #39, !dbg !1187
  unreachable, !dbg !1187

101:                                              ; preds = %94
  br i1 %27, label %102, label %104, !dbg !1188

102:                                              ; preds = %101
  %103 = tail call i32 @close(i32 noundef %88) #39, !dbg !1189
  br label %104, !dbg !1189

104:                                              ; preds = %101, %102, %87
  %105 = phi i32 [ %90, %102 ], [ %90, %101 ], [ 2, %87 ], !dbg !1108
  call void @llvm.dbg.value(metadata i32 %105, metadata !1099, metadata !DIExpression()), !dbg !1108
  %106 = load ptr, ptr @stderr, align 8, !dbg !1191, !tbaa !848
  call void @llvm.dbg.value(metadata ptr %106, metadata !1193, metadata !DIExpression()), !dbg !1199
  %107 = load i32, ptr %106, align 8, !dbg !1201, !tbaa !1202
  %108 = and i32 %107, 32, !dbg !1191
  %109 = icmp eq i32 %108, 0, !dbg !1191
  br i1 %109, label %110, label %127, !dbg !1205

110:                                              ; preds = %104
  %111 = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #39, !dbg !1206
  %112 = load i32, ptr @optind, align 4, !dbg !1207, !tbaa !916
  %113 = sext i32 %112 to i64, !dbg !1208
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113, !dbg !1208
  call void @llvm.dbg.value(metadata ptr %114, metadata !1105, metadata !DIExpression()), !dbg !1108
  %115 = load ptr, ptr %114, align 8, !dbg !1209, !tbaa !848
  %116 = tail call i32 @execvp(ptr noundef %115, ptr noundef nonnull %114) #39, !dbg !1210
  %117 = tail call ptr @__errno_location() #42, !dbg !1211
  %118 = load i32, ptr %117, align 4, !dbg !1211, !tbaa !916
  %119 = icmp eq i32 %118, 2, !dbg !1212
  %120 = select i1 %119, i32 127, i32 126, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %120, metadata !1106, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %118, metadata !1107, metadata !DIExpression()), !dbg !1108
  %121 = tail call i32 @dup2(i32 noundef %105, i32 noundef 2) #39, !dbg !1213
  %122 = icmp eq i32 %121, 2, !dbg !1215
  br i1 %122, label %123, label %127, !dbg !1216

123:                                              ; preds = %110
  %124 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1217
  %125 = load ptr, ptr %114, align 8, !dbg !1217, !tbaa !848
  %126 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %125) #39, !dbg !1217
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %118, ptr noundef %124, ptr noundef %126) #39, !dbg !1217
  br label %127, !dbg !1217

127:                                              ; preds = %70, %76, %104, %123, %110
  %128 = phi i32 [ %9, %104 ], [ %120, %123 ], [ %120, %110 ], [ %9, %76 ], [ %9, %70 ], !dbg !1108
  ret i32 %128, !dbg !1218
}

; Function Attrs: nounwind
declare !dbg !1219 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1222 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1223 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1226 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1230 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1234 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1238 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1242 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1245 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1246 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1247 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1250 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1257, metadata !DIExpression()), !dbg !1258
  store ptr %0, ptr @file_name, align 8, !dbg !1259, !tbaa !848
  ret void, !dbg !1260
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #13 !dbg !1261 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1265, metadata !DIExpression()), !dbg !1266
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1267, !tbaa !1268
  ret void, !dbg !1270
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1271 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1276, !tbaa !848
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1277
  %3 = icmp eq i32 %2, 0, !dbg !1278
  br i1 %3, label %22, label %4, !dbg !1279

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1280, !tbaa !1268, !range !1281, !noundef !901
  %6 = icmp eq i8 %5, 0, !dbg !1280
  br i1 %6, label %11, label %7, !dbg !1282

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1283
  %9 = load i32, ptr %8, align 4, !dbg !1283, !tbaa !916
  %10 = icmp eq i32 %9, 32, !dbg !1284
  br i1 %10, label %22, label %11, !dbg !1285

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1.35, i32 noundef 5) #39, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %12, metadata !1273, metadata !DIExpression()), !dbg !1287
  %13 = load ptr, ptr @file_name, align 8, !dbg !1288, !tbaa !848
  %14 = icmp eq ptr %13, null, !dbg !1288
  %15 = tail call ptr @__errno_location() #42, !dbg !1290
  %16 = load i32, ptr %15, align 4, !dbg !1290, !tbaa !916
  br i1 %14, label %19, label %17, !dbg !1291

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1292
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.36, ptr noundef %18, ptr noundef %12) #39, !dbg !1292
  br label %20, !dbg !1292

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.37, ptr noundef %12) #39, !dbg !1293
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1294, !tbaa !916
  tail call void @_exit(i32 noundef %21) #41, !dbg !1295
  unreachable, !dbg !1295

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1296, !tbaa !848
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1298
  %25 = icmp eq i32 %24, 0, !dbg !1299
  br i1 %25, label %28, label %26, !dbg !1300

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1301, !tbaa !916
  tail call void @_exit(i32 noundef %27) #41, !dbg !1302
  unreachable, !dbg !1302

28:                                               ; preds = %22
  ret void, !dbg !1303
}

; Function Attrs: noreturn
declare !dbg !1304 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #15 !dbg !1305 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %1, metadata !1310, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata ptr %2, metadata !1311, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1312, metadata !DIExpression()), !dbg !1314
  tail call fastcc void @flush_stdout(), !dbg !1315
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1316, !tbaa !848
  %7 = icmp eq ptr %6, null, !dbg !1316
  br i1 %7, label %9, label %8, !dbg !1318

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1319
  br label %13, !dbg !1319

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1320, !tbaa !848
  %11 = tail call ptr @getprogname() #40, !dbg !1320
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %11) #39, !dbg !1320
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1322, !tbaa.struct !1323
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1322
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1322
  ret void, !dbg !1324
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1325 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 1, metadata !1329, metadata !DIExpression()), !dbg !1332
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1335
  %2 = icmp slt i32 %1, 0, !dbg !1336
  br i1 %2, label %6, label %3, !dbg !1337

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1338, !tbaa !848
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1338
  br label %6, !dbg !1338

6:                                                ; preds = %3, %0
  ret void, !dbg !1339
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1340 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1342, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i32 %1, metadata !1343, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata ptr %2, metadata !1344, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1345, metadata !DIExpression()), !dbg !1347
  %7 = load ptr, ptr @stderr, align 8, !dbg !1348, !tbaa !848
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1349, !noalias !1393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1397
  call void @llvm.dbg.value(metadata ptr %7, metadata !1389, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata ptr %2, metadata !1390, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1391, metadata !DIExpression()), !dbg !1399
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1349
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1349, !noalias !1393
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1400, !tbaa !916
  %10 = add i32 %9, 1, !dbg !1400
  store i32 %10, ptr @error_message_count, align 4, !dbg !1400, !tbaa !916
  %11 = icmp eq i32 %1, 0, !dbg !1401
  br i1 %11, label %21, label %12, !dbg !1403

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1404, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1408, metadata !DIExpression()), !dbg !1415
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %13, metadata !1407, metadata !DIExpression()), !dbg !1412
  %14 = icmp eq ptr %13, null, !dbg !1417
  br i1 %14, label %15, label %17, !dbg !1419

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.39, ptr noundef nonnull @.str.5.40, i32 noundef 5) #39, !dbg !1420
  call void @llvm.dbg.value(metadata ptr %16, metadata !1407, metadata !DIExpression()), !dbg !1412
  br label %17, !dbg !1421

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1412
  call void @llvm.dbg.value(metadata ptr %18, metadata !1407, metadata !DIExpression()), !dbg !1412
  %19 = load ptr, ptr @stderr, align 8, !dbg !1422, !tbaa !848
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.41, ptr noundef %18) #39, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1423
  br label %21, !dbg !1424

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1425, !tbaa !848
  call void @llvm.dbg.value(metadata i32 10, metadata !1426, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %22, metadata !1431, metadata !DIExpression()), !dbg !1432
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1434
  %24 = load ptr, ptr %23, align 8, !dbg !1434, !tbaa !1435
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1434
  %26 = load ptr, ptr %25, align 8, !dbg !1434, !tbaa !1436
  %27 = icmp ult ptr %24, %26, !dbg !1434
  br i1 %27, label %30, label %28, !dbg !1434, !prof !1437

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1434
  br label %32, !dbg !1434

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1434
  store ptr %31, ptr %23, align 8, !dbg !1434, !tbaa !1435
  store i8 10, ptr %24, align 1, !dbg !1434, !tbaa !925
  br label %32, !dbg !1434

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1438, !tbaa !848
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1438
  %35 = icmp eq i32 %0, 0, !dbg !1439
  br i1 %35, label %37, label %36, !dbg !1441

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1442
  unreachable, !dbg !1442

37:                                               ; preds = %32
  ret void, !dbg !1443
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

declare !dbg !1444 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1447 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1450 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1453 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1456 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1459 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1463, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %1, metadata !1464, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %2, metadata !1465, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1466, metadata !DIExpression()), !dbg !1469
  call void @llvm.va_start(ptr nonnull %4), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1471, !tbaa.struct !1323
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1471
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1471
  call void @llvm.va_end(ptr nonnull %4), !dbg !1472
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1473
  ret void, !dbg !1473
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #15 !dbg !413 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !430, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %1, metadata !431, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %2, metadata !432, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %3, metadata !433, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %4, metadata !434, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata ptr %5, metadata !435, metadata !DIExpression()), !dbg !1475
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1476, !tbaa !916
  %9 = icmp eq i32 %8, 0, !dbg !1476
  br i1 %9, label %24, label %10, !dbg !1478

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1479, !tbaa !916
  %12 = icmp eq i32 %11, %3, !dbg !1482
  br i1 %12, label %13, label %23, !dbg !1483

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1484, !tbaa !848
  %15 = icmp eq ptr %14, %2, !dbg !1485
  br i1 %15, label %37, label %16, !dbg !1486

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1487
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1488
  br i1 %19, label %20, label %23, !dbg !1488

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1489
  %22 = icmp eq i32 %21, 0, !dbg !1490
  br i1 %22, label %37, label %23, !dbg !1491

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1492, !tbaa !848
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1493, !tbaa !916
  br label %24, !dbg !1494

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1495
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1496, !tbaa !848
  %26 = icmp eq ptr %25, null, !dbg !1496
  br i1 %26, label %28, label %27, !dbg !1498

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1499
  br label %32, !dbg !1499

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1500, !tbaa !848
  %30 = tail call ptr @getprogname() #40, !dbg !1500
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.44, ptr noundef %30) #39, !dbg !1500
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1502, !tbaa !848
  %34 = icmp eq ptr %2, null, !dbg !1502
  %35 = select i1 %34, ptr @.str.3.45, ptr @.str.2.46, !dbg !1502
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1502
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1503, !tbaa.struct !1323
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1503
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1503
  br label %37, !dbg !1504

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1504
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1505 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1509, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %1, metadata !1510, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %2, metadata !1511, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %3, metadata !1512, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.va_start(ptr nonnull %6), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1519, !tbaa.struct !1323
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1519
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1519
  call void @llvm.va_end(ptr nonnull %6), !dbg !1520
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1521
  ret void, !dbg !1521
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1522 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1524, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %1, metadata !1525, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1526, metadata !DIExpression()), !dbg !1551
  call void @llvm.va_start(ptr nonnull %3), !dbg !1552
  call void @llvm.dbg.value(metadata i32 -1, metadata !1537, metadata !DIExpression()), !dbg !1549
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
  ], !dbg !1553

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1554
  %6 = load i32, ptr %5, align 8, !dbg !1554
  %7 = icmp sgt i32 %6, -1, !dbg !1554
  br i1 %7, label %16, label %8, !dbg !1554

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !1554
  store i32 %9, ptr %5, align 8, !dbg !1554
  %10 = icmp ult i32 %6, -7, !dbg !1554
  br i1 %10, label %11, label %16, !dbg !1554

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1554
  %13 = load ptr, ptr %12, align 8, !dbg !1554
  %14 = sext i32 %6 to i64, !dbg !1554
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !1554
  br label %19, !dbg !1554

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !1554
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1554
  store ptr %18, ptr %3, align 8, !dbg !1554
  br label %19, !dbg !1554

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !1554
  %21 = load i32, ptr %20, align 8, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %21, metadata !1538, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %0, metadata !1556, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i32 %21, metadata !1559, metadata !DIExpression()), !dbg !1561
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #39, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %22, metadata !1560, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.value(metadata i32 %22, metadata !1537, metadata !DIExpression()), !dbg !1549
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1564
  %25 = load i32, ptr %24, align 8, !dbg !1564
  %26 = icmp sgt i32 %25, -1, !dbg !1564
  br i1 %26, label %35, label %27, !dbg !1564

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !1564
  store i32 %28, ptr %24, align 8, !dbg !1564
  %29 = icmp ult i32 %25, -7, !dbg !1564
  br i1 %29, label %30, label %35, !dbg !1564

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1564
  %32 = load ptr, ptr %31, align 8, !dbg !1564
  %33 = sext i32 %25 to i64, !dbg !1564
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !1564
  br label %38, !dbg !1564

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !1564
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !1564
  store ptr %37, ptr %3, align 8, !dbg !1564
  br label %38, !dbg !1564

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !1564
  %40 = load i32, ptr %39, align 8, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %40, metadata !1541, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i32 %0, metadata !469, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %40, metadata !470, metadata !DIExpression()), !dbg !1566
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1568, !tbaa !916
  %42 = icmp sgt i32 %41, -1, !dbg !1570
  br i1 %42, label %43, label %55, !dbg !1571

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #39, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %44, metadata !471, metadata !DIExpression()), !dbg !1566
  %45 = icmp sgt i32 %44, -1, !dbg !1574
  br i1 %45, label %50, label %46, !dbg !1576

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #42, !dbg !1577
  %48 = load i32, ptr %47, align 4, !dbg !1577, !tbaa !916
  %49 = icmp eq i32 %48, 22, !dbg !1578
  br i1 %49, label %51, label %50, !dbg !1579

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1580, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %44, metadata !471, metadata !DIExpression()), !dbg !1566
  br label %115, !dbg !1582

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !1556, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %40, metadata !1559, metadata !DIExpression()), !dbg !1583
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %52, metadata !1560, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %52, metadata !471, metadata !DIExpression()), !dbg !1566
  %53 = icmp sgt i32 %52, -1, !dbg !1587
  br i1 %53, label %54, label %115, !dbg !1589

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1590, !tbaa !916
  br label %59, !dbg !1591

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !1556, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %40, metadata !1559, metadata !DIExpression()), !dbg !1592
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %56, metadata !1560, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %56, metadata !471, metadata !DIExpression()), !dbg !1566
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !1595
  call void @llvm.dbg.value(metadata i32 %61, metadata !471, metadata !DIExpression()), !dbg !1566
  %62 = icmp sgt i32 %61, -1, !dbg !1596
  %63 = select i1 %62, i1 %60, i1 false, !dbg !1582
  br i1 %63, label %64, label %115, !dbg !1582

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #39, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %65, metadata !472, metadata !DIExpression()), !dbg !1598
  %66 = icmp slt i32 %65, 0, !dbg !1599
  br i1 %66, label %71, label %67, !dbg !1600

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !1601
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #39, !dbg !1602
  %70 = icmp eq i32 %69, -1, !dbg !1603
  br i1 %70, label %71, label %115, !dbg !1604

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #42, !dbg !1605
  %73 = load i32, ptr %72, align 4, !dbg !1605, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %73, metadata !475, metadata !DIExpression()), !dbg !1606
  %74 = call i32 @close(i32 noundef %61) #39, !dbg !1607
  store i32 %73, ptr %72, align 4, !dbg !1608, !tbaa !916
  call void @llvm.dbg.value(metadata i32 -1, metadata !471, metadata !DIExpression()), !dbg !1566
  br label %115, !dbg !1609

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %76, metadata !1537, metadata !DIExpression()), !dbg !1549
  br label %115, !dbg !1611

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1612
  %79 = load i32, ptr %78, align 8, !dbg !1612
  %80 = icmp sgt i32 %79, -1, !dbg !1612
  br i1 %80, label %89, label %81, !dbg !1612

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !1612
  store i32 %82, ptr %78, align 8, !dbg !1612
  %83 = icmp ult i32 %79, -7, !dbg !1612
  br i1 %83, label %84, label %89, !dbg !1612

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1612
  %86 = load ptr, ptr %85, align 8, !dbg !1612
  %87 = sext i32 %79 to i64, !dbg !1612
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !1612
  br label %92, !dbg !1612

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !1612
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !1612
  store ptr %91, ptr %3, align 8, !dbg !1612
  br label %92, !dbg !1612

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !1612
  %94 = load i32, ptr %93, align 8, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %94, metadata !1543, metadata !DIExpression()), !dbg !1613
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #39, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %95, metadata !1537, metadata !DIExpression()), !dbg !1549
  br label %115, !dbg !1615

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1616
  %98 = load i32, ptr %97, align 8, !dbg !1616
  %99 = icmp sgt i32 %98, -1, !dbg !1616
  br i1 %99, label %108, label %100, !dbg !1616

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !1616
  store i32 %101, ptr %97, align 8, !dbg !1616
  %102 = icmp ult i32 %98, -7, !dbg !1616
  br i1 %102, label %103, label %108, !dbg !1616

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1616
  %105 = load ptr, ptr %104, align 8, !dbg !1616
  %106 = sext i32 %98 to i64, !dbg !1616
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !1616
  br label %111, !dbg !1616

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !1616
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !1616
  store ptr %110, ptr %3, align 8, !dbg !1616
  br label %111, !dbg !1616

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !1616
  %113 = load ptr, ptr %112, align 8, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %113, metadata !1547, metadata !DIExpression()), !dbg !1617
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #39, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %114, metadata !1537, metadata !DIExpression()), !dbg !1549
  br label %115, !dbg !1619

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !1620
  call void @llvm.dbg.value(metadata i32 %116, metadata !1537, metadata !DIExpression()), !dbg !1549
  call void @llvm.va_end(ptr nonnull %3), !dbg !1621
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !1622
  ret i32 %116, !dbg !1623
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, ptr nocapture noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !1624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1628, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata ptr %1, metadata !1629, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %2, metadata !1630, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i32 %3, metadata !1631, metadata !DIExpression()), !dbg !1637
  %5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #39, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %5, metadata !1632, metadata !DIExpression()), !dbg !1637
  %6 = icmp eq i32 %5, %0, !dbg !1639
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7, !dbg !1640
  br i1 %8, label %14, label %9, !dbg !1640

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 noundef %5, i32 noundef %0) #39, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %10, metadata !1633, metadata !DIExpression()), !dbg !1642
  %11 = tail call ptr @__errno_location() #42, !dbg !1643
  %12 = load i32, ptr %11, align 4, !dbg !1643, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %12, metadata !1636, metadata !DIExpression()), !dbg !1642
  %13 = tail call i32 @close(i32 noundef %5) #39, !dbg !1644
  store i32 %12, ptr %11, align 4, !dbg !1645, !tbaa !916
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1646
  ret i32 %15, !dbg !1647
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1648 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1652, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata ptr %1, metadata !1653, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata ptr %2, metadata !1654, metadata !DIExpression()), !dbg !1656
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #39, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %4, metadata !1655, metadata !DIExpression()), !dbg !1656
  %5 = icmp eq ptr %4, null, !dbg !1658
  br i1 %5, label %6, label %7, !dbg !1660

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !1661
  unreachable, !dbg !1661

7:                                                ; preds = %3
  ret ptr %4, !dbg !1662
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #19 !dbg !1663 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1665, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %1, metadata !1666, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %2, metadata !1667, metadata !DIExpression()), !dbg !1676
  %4 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1677
  call void @llvm.dbg.value(metadata ptr %4, metadata !1668, metadata !DIExpression()), !dbg !1676
  %5 = tail call i64 @base_len(ptr noundef %4) #40, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %5, metadata !1669, metadata !DIExpression()), !dbg !1676
  %6 = ptrtoint ptr %4 to i64, !dbg !1679
  %7 = ptrtoint ptr %0 to i64, !dbg !1679
  %8 = sub i64 %6, %7, !dbg !1679
  %9 = add i64 %8, %5, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %9, metadata !1670, metadata !DIExpression()), !dbg !1676
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %10, metadata !1671, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1672, metadata !DIExpression()), !dbg !1676
  %11 = icmp eq i64 %5, 0, !dbg !1682
  br i1 %11, label %21, label %12, !dbg !1684

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1685
  %14 = getelementptr inbounds i8, ptr %0, i64 %13, !dbg !1685
  %15 = load i8, ptr %14, align 1, !dbg !1685, !tbaa !925
  %16 = icmp eq i8 %15, 47, !dbg !1685
  br i1 %16, label %25, label %17, !dbg !1688

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1689, !tbaa !925
  %19 = icmp ne i8 %18, 47, !dbg !1689
  %20 = select i1 %19, i8 47, i8 0, !dbg !1690
  br label %25, !dbg !1690

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1691, !tbaa !925
  %23 = icmp eq i8 %22, 47, !dbg !1691
  %24 = select i1 %23, i8 46, i8 0, !dbg !1693
  br label %25, !dbg !1693

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1676
  %28 = zext i1 %26 to i64
  call void @llvm.dbg.value(metadata i8 %27, metadata !1672, metadata !DIExpression()), !dbg !1676
  %29 = add i64 %10, 1, !dbg !1694
  %30 = add i64 %29, %9, !dbg !1695
  %31 = add i64 %30, %28, !dbg !1696
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #45, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %32, metadata !1673, metadata !DIExpression()), !dbg !1676
  %33 = icmp eq ptr %32, null, !dbg !1698
  br i1 %33, label %41, label %34, !dbg !1700

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1701, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata ptr %0, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %9, metadata !1709, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #39, !dbg !1712
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %35, metadata !1674, metadata !DIExpression()), !dbg !1713
  store i8 %27, ptr %35, align 1, !dbg !1714, !tbaa !925
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %36, metadata !1674, metadata !DIExpression()), !dbg !1713
  %37 = icmp eq ptr %2, null, !dbg !1716
  br i1 %37, label %39, label %38, !dbg !1718

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1719, !tbaa !848
  br label %39, !dbg !1720

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1701, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata ptr %1, metadata !1708, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 %10, metadata !1709, metadata !DIExpression()), !dbg !1721
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #39, !dbg !1723
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %40, metadata !1674, metadata !DIExpression()), !dbg !1713
  store i8 0, ptr %40, align 1, !dbg !1724, !tbaa !925
  br label %41, !dbg !1725

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1726
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1727 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1730 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !1733 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1736, !tbaa !848
  ret ptr %1, !dbg !1737
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1738 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1742, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %1, metadata !1743, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %2, metadata !1744, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %3, metadata !1745, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %4, metadata !1746, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata ptr %5, metadata !1747, metadata !DIExpression()), !dbg !1768
  %9 = load i32, ptr @opterr, align 4, !dbg !1769, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %9, metadata !1748, metadata !DIExpression()), !dbg !1768
  store i32 0, ptr @opterr, align 4, !dbg !1770, !tbaa !916
  %10 = icmp eq i32 %0, 2, !dbg !1771
  br i1 %10, label %11, label %16, !dbg !1772

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %12, metadata !1749, metadata !DIExpression()), !dbg !1774
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1775

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #39, !dbg !1776
  br label %16, !dbg !1777

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1778
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1752, metadata !DIExpression()), !dbg !1779
  call void @llvm.va_start(ptr nonnull %7), !dbg !1780
  %15 = load ptr, ptr @stdout, align 8, !dbg !1781, !tbaa !848
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1782, !tbaa.struct !1323
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1782
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39, !dbg !1782
  call void @exit(i32 noundef 0) #41, !dbg !1783
  unreachable, !dbg !1783

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1784, !tbaa !916
  store i32 0, ptr @optind, align 4, !dbg !1785, !tbaa !916
  ret void, !dbg !1786
}

; Function Attrs: nounwind
declare !dbg !1787 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1791 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1795, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %1, metadata !1796, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %2, metadata !1797, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %3, metadata !1798, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %4, metadata !1799, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i1 %5, metadata !1800, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %6, metadata !1801, metadata !DIExpression()), !dbg !1810
  %10 = load i32, ptr @opterr, align 4, !dbg !1811, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %10, metadata !1802, metadata !DIExpression()), !dbg !1810
  store i32 1, ptr @opterr, align 4, !dbg !1812, !tbaa !916
  %11 = select i1 %5, ptr @.str.1.68, ptr @.str.63, !dbg !1813
  call void @llvm.dbg.value(metadata ptr %11, metadata !1803, metadata !DIExpression()), !dbg !1810
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %12, metadata !1804, metadata !DIExpression()), !dbg !1810
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1815

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1816
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1805, metadata !DIExpression()), !dbg !1817
  call void @llvm.va_start(ptr nonnull %8), !dbg !1818
  %14 = load ptr, ptr @stdout, align 8, !dbg !1819, !tbaa !848
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #39, !dbg !1820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1820, !tbaa.struct !1323
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #39, !dbg !1820
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39, !dbg !1820
  call void @exit(i32 noundef 0) #41, !dbg !1821
  unreachable, !dbg !1821

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1822, !tbaa !916
  br label %17, !dbg !1823

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #39, !dbg !1824
  br label %19, !dbg !1825

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1825, !tbaa !916
  ret void, !dbg !1826
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1827 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1829, metadata !DIExpression()), !dbg !1832
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %2, metadata !1830, metadata !DIExpression()), !dbg !1832
  %3 = icmp eq ptr %2, null, !dbg !1834
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1834
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %5, metadata !1831, metadata !DIExpression()), !dbg !1832
  %6 = ptrtoint ptr %5 to i64, !dbg !1835
  %7 = ptrtoint ptr %0 to i64, !dbg !1835
  %8 = sub i64 %6, %7, !dbg !1835
  %9 = icmp sgt i64 %8, 6, !dbg !1837
  br i1 %9, label %10, label %19, !dbg !1838

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %11, metadata !1840, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata ptr @.str.73, metadata !1845, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 7, metadata !1846, metadata !DIExpression()), !dbg !1847
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.73, i64 7), !dbg !1849
  %13 = icmp eq i32 %12, 0, !dbg !1850
  br i1 %13, label %14, label %19, !dbg !1851

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1829, metadata !DIExpression()), !dbg !1832
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.74, i64 noundef 3) #40, !dbg !1852
  %16 = icmp eq i32 %15, 0, !dbg !1855
  %17 = select i1 %16, i64 3, i64 0, !dbg !1856
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1856
  br label %19, !dbg !1856

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1832
  call void @llvm.dbg.value(metadata ptr %21, metadata !1831, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata ptr %20, metadata !1829, metadata !DIExpression()), !dbg !1832
  store ptr %20, ptr @program_name, align 8, !dbg !1857, !tbaa !848
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1858, !tbaa !848
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1859, !tbaa !848
  ret void, !dbg !1860
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1861 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !513 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !520, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %1, metadata !521, metadata !DIExpression()), !dbg !1862
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %5, metadata !522, metadata !DIExpression()), !dbg !1862
  %6 = icmp eq ptr %5, %0, !dbg !1864
  br i1 %6, label %7, label %14, !dbg !1866

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1867
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %4, metadata !528, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr %4, metadata !1870, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata ptr %4, metadata !1879, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i32 0, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64 8, metadata !1885, metadata !DIExpression()), !dbg !1886
  store i64 0, ptr %4, align 8, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %3, metadata !523, metadata !DIExpression(DW_OP_deref)), !dbg !1862
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1889
  %9 = icmp eq i64 %8, 2, !dbg !1891
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !523, metadata !DIExpression()), !dbg !1862
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1892
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1862
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1893
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1893
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1862
  ret ptr %15, !dbg !1893
}

; Function Attrs: nounwind
declare !dbg !1894 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1900 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1905, metadata !DIExpression()), !dbg !1908
  %2 = tail call ptr @__errno_location() #42, !dbg !1909
  %3 = load i32, ptr %2, align 4, !dbg !1909, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %3, metadata !1906, metadata !DIExpression()), !dbg !1908
  %4 = icmp eq ptr %0, null, !dbg !1910
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1910
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %6, metadata !1907, metadata !DIExpression()), !dbg !1908
  store i32 %3, ptr %2, align 4, !dbg !1912, !tbaa !916
  ret ptr %6, !dbg !1913
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !1914 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1920, metadata !DIExpression()), !dbg !1921
  %2 = icmp eq ptr %0, null, !dbg !1922
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1922
  %4 = load i32, ptr %3, align 8, !dbg !1923, !tbaa !1924
  ret i32 %4, !dbg !1926
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1927 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %1, metadata !1932, metadata !DIExpression()), !dbg !1933
  %3 = icmp eq ptr %0, null, !dbg !1934
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1934
  store i32 %1, ptr %4, align 8, !dbg !1935, !tbaa !1924
  ret void, !dbg !1936
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !1937 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1941, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8 %1, metadata !1942, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %2, metadata !1943, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8 %1, metadata !1944, metadata !DIExpression()), !dbg !1949
  %4 = icmp eq ptr %0, null, !dbg !1950
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1950
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1951
  %7 = lshr i8 %1, 5, !dbg !1952
  %8 = zext i8 %7 to i64, !dbg !1952
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1953
  call void @llvm.dbg.value(metadata ptr %9, metadata !1945, metadata !DIExpression()), !dbg !1949
  %10 = and i8 %1, 31, !dbg !1954
  %11 = zext i8 %10 to i32, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %11, metadata !1947, metadata !DIExpression()), !dbg !1949
  %12 = load i32, ptr %9, align 4, !dbg !1955, !tbaa !916
  %13 = lshr i32 %12, %11, !dbg !1956
  %14 = and i32 %13, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %14, metadata !1948, metadata !DIExpression()), !dbg !1949
  %15 = xor i32 %13, %2, !dbg !1958
  %16 = and i32 %15, 1, !dbg !1958
  %17 = shl nuw i32 %16, %11, !dbg !1959
  %18 = xor i32 %17, %12, !dbg !1960
  store i32 %18, ptr %9, align 4, !dbg !1960, !tbaa !916
  ret i32 %14, !dbg !1961
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !1962 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1966, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i32 %1, metadata !1967, metadata !DIExpression()), !dbg !1969
  %3 = icmp eq ptr %0, null, !dbg !1970
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1972
  call void @llvm.dbg.value(metadata ptr %4, metadata !1966, metadata !DIExpression()), !dbg !1969
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1973
  %6 = load i32, ptr %5, align 4, !dbg !1973, !tbaa !1974
  call void @llvm.dbg.value(metadata i32 %6, metadata !1968, metadata !DIExpression()), !dbg !1969
  store i32 %1, ptr %5, align 4, !dbg !1975, !tbaa !1974
  ret i32 %6, !dbg !1976
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1977 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %1, metadata !1982, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %2, metadata !1983, metadata !DIExpression()), !dbg !1984
  %4 = icmp eq ptr %0, null, !dbg !1985
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1987
  call void @llvm.dbg.value(metadata ptr %5, metadata !1981, metadata !DIExpression()), !dbg !1984
  store i32 10, ptr %5, align 8, !dbg !1988, !tbaa !1924
  %6 = icmp ne ptr %1, null, !dbg !1989
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1991
  br i1 %8, label %10, label %9, !dbg !1991

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1992
  unreachable, !dbg !1992

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1993
  store ptr %1, ptr %11, align 8, !dbg !1994, !tbaa !1995
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1996
  store ptr %2, ptr %12, align 8, !dbg !1997, !tbaa !1998
  ret void, !dbg !1999
}

; Function Attrs: noreturn nounwind
declare !dbg !2000 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2001 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2005, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %1, metadata !2006, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata ptr %2, metadata !2007, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %3, metadata !2008, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata ptr %4, metadata !2009, metadata !DIExpression()), !dbg !2013
  %6 = icmp eq ptr %4, null, !dbg !2014
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %7, metadata !2010, metadata !DIExpression()), !dbg !2013
  %8 = tail call ptr @__errno_location() #42, !dbg !2015
  %9 = load i32, ptr %8, align 4, !dbg !2015, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %9, metadata !2011, metadata !DIExpression()), !dbg !2013
  %10 = load i32, ptr %7, align 8, !dbg !2016, !tbaa !1924
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2017
  %12 = load i32, ptr %11, align 4, !dbg !2017, !tbaa !1974
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2018
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2019
  %15 = load ptr, ptr %14, align 8, !dbg !2019, !tbaa !1995
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2020
  %17 = load ptr, ptr %16, align 8, !dbg !2020, !tbaa !1998
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %18, metadata !2012, metadata !DIExpression()), !dbg !2013
  store i32 %9, ptr %8, align 4, !dbg !2022, !tbaa !916
  ret i64 %18, !dbg !2023
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2024 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2030, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %1, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %2, metadata !2032, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %3, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %4, metadata !2034, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %5, metadata !2035, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %6, metadata !2036, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %7, metadata !2037, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %8, metadata !2038, metadata !DIExpression()), !dbg !2092
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2093
  %17 = icmp eq i64 %16, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i1 %17, metadata !2039, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr null, metadata !2042, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2043, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %5, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2047, metadata !DIExpression()), !dbg !2092
  %18 = and i32 %5, 2, !dbg !2095
  %19 = icmp ne i32 %18, 0, !dbg !2095
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2095

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2096
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2097
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2098
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2047, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2044, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %34, metadata !2043, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %33, metadata !2042, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %32, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %31, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %30, metadata !2038, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %29, metadata !2037, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %28, metadata !2034, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2085), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2092
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
  ], !dbg !2100

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 5, metadata !2034, metadata !DIExpression()), !dbg !2092
  br label %102, !dbg !2101

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 5, metadata !2034, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %102, label %42, !dbg !2101

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2102
  br i1 %43, label %102, label %44, !dbg !2106

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2102, !tbaa !925
  br label %102, !dbg !2102

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.87, metadata !609, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32 %28, metadata !610, metadata !DIExpression()), !dbg !2107
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.11.87, i32 noundef 5) #39, !dbg !2111
  call void @llvm.dbg.value(metadata ptr %46, metadata !611, metadata !DIExpression()), !dbg !2107
  %47 = icmp eq ptr %46, @.str.11.87, !dbg !2112
  br i1 %47, label %48, label %57, !dbg !2114

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %13, metadata !613, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata ptr %13, metadata !2118, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata ptr %13, metadata !2126, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i64 8, metadata !2130, metadata !DIExpression()), !dbg !2131
  store i64 0, ptr %13, align 8, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %12, metadata !612, metadata !DIExpression(DW_OP_deref)), !dbg !2107
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2134
  %50 = icmp eq i64 %49, 3, !dbg !2136
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !612, metadata !DIExpression()), !dbg !2107
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2137
  %54 = icmp eq i32 %28, 9, !dbg !2137
  %55 = select i1 %54, ptr @.str.10.89, ptr @.str.12.90, !dbg !2137
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2138
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2107
  call void @llvm.dbg.value(metadata ptr %58, metadata !2037, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr @.str.12.90, metadata !609, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %28, metadata !610, metadata !DIExpression()), !dbg !2139
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.12.90, i32 noundef 5) #39, !dbg !2141
  call void @llvm.dbg.value(metadata ptr %59, metadata !611, metadata !DIExpression()), !dbg !2139
  %60 = icmp eq ptr %59, @.str.12.90, !dbg !2142
  br i1 %60, label %61, label %70, !dbg !2143

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2145
  call void @llvm.dbg.declare(metadata ptr %11, metadata !613, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr %11, metadata !2118, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata ptr %11, metadata !2126, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 8, metadata !2130, metadata !DIExpression()), !dbg !2149
  store i64 0, ptr %11, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %10, metadata !612, metadata !DIExpression(DW_OP_deref)), !dbg !2139
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2152
  %63 = icmp eq i64 %62, 3, !dbg !2153
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !612, metadata !DIExpression()), !dbg !2139
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2154
  %67 = icmp eq i32 %28, 9, !dbg !2154
  %68 = select i1 %67, ptr @.str.10.89, ptr @.str.12.90, !dbg !2154
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2155
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2038, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %71, metadata !2037, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %88, label %73, !dbg !2156

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2049, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !2040, metadata !DIExpression()), !dbg !2092
  %74 = load i8, ptr %71, align 1, !dbg !2158, !tbaa !925
  %75 = icmp eq i8 %74, 0, !dbg !2160
  br i1 %75, label %88, label %76, !dbg !2160

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2049, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %79, metadata !2040, metadata !DIExpression()), !dbg !2092
  %80 = icmp ult i64 %79, %39, !dbg !2161
  br i1 %80, label %81, label %83, !dbg !2164

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2161
  store i8 %77, ptr %82, align 1, !dbg !2161, !tbaa !925
  br label %83, !dbg !2161

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %84, metadata !2040, metadata !DIExpression()), !dbg !2092
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2165
  call void @llvm.dbg.value(metadata ptr %85, metadata !2049, metadata !DIExpression()), !dbg !2157
  %86 = load i8, ptr %85, align 1, !dbg !2158, !tbaa !925
  %87 = icmp eq i8 %86, 0, !dbg !2160
  br i1 %87, label %88, label %76, !dbg !2160, !llvm.loop !2166

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2168
  call void @llvm.dbg.value(metadata i64 %89, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2044, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %72, metadata !2042, metadata !DIExpression()), !dbg !2092
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %90, metadata !2043, metadata !DIExpression()), !dbg !2092
  br label %102, !dbg !2170

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2044, metadata !DIExpression()), !dbg !2092
  br label %93, !dbg !2171

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2044, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %102, label %96, !dbg !2172

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2044, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 2, metadata !2034, metadata !DIExpression()), !dbg !2092
  br label %102, !dbg !2173

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2044, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 2, metadata !2034, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %102, label %96, !dbg !2173

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2174
  br i1 %98, label %102, label %99, !dbg !2178

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2174, !tbaa !925
  br label %102, !dbg !2174

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2045, metadata !DIExpression()), !dbg !2092
  br label %102, !dbg !2179

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2180
  unreachable, !dbg !2180

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2168
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.89, %42 ], [ @.str.10.89, %44 ], [ @.str.10.89, %41 ], [ %33, %27 ], [ @.str.12.90, %96 ], [ @.str.12.90, %99 ], [ @.str.12.90, %95 ], [ @.str.10.89, %40 ], [ @.str.12.90, %93 ], [ @.str.12.90, %92 ], !dbg !2092
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2092
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2045, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2044, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %108, metadata !2043, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %107, metadata !2042, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %106, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %105, metadata !2038, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata ptr %104, metadata !2037, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %103, metadata !2034, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2181
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
  br label %122, !dbg !2182

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2168
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2096
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2183
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %129, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2047, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %125, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2092
  %131 = icmp eq i64 %123, -1, !dbg !2184
  br i1 %131, label %132, label %136, !dbg !2185

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2186
  %134 = load i8, ptr %133, align 1, !dbg !2186, !tbaa !925
  %135 = icmp eq i8 %134, 0, !dbg !2187
  br i1 %135, label %579, label %138, !dbg !2188

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2189
  br i1 %137, label %579, label %138, !dbg !2188

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 0, metadata !2060, metadata !DIExpression()), !dbg !2190
  br i1 %114, label %139, label %152, !dbg !2191

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2193
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2194
  br i1 %141, label %142, label %144, !dbg !2194

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %143, metadata !2033, metadata !DIExpression()), !dbg !2092
  br label %144, !dbg !2196

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2196
  call void @llvm.dbg.value(metadata i64 %145, metadata !2033, metadata !DIExpression()), !dbg !2092
  %146 = icmp ugt i64 %140, %145, !dbg !2197
  br i1 %146, label %152, label %147, !dbg !2198

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2199
  call void @llvm.dbg.value(metadata ptr %148, metadata !2200, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %107, metadata !2203, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i64 %108, metadata !2204, metadata !DIExpression()), !dbg !2205
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2207
  %150 = icmp eq i32 %149, 0, !dbg !2208
  %151 = and i1 %150, %110, !dbg !2209
  br i1 %151, label %630, label %152, !dbg !2209

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %153, metadata !2033, metadata !DIExpression()), !dbg !2092
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2210
  %156 = load i8, ptr %155, align 1, !dbg !2210, !tbaa !925
  call void @llvm.dbg.value(metadata i8 %156, metadata !2061, metadata !DIExpression()), !dbg !2190
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
  ], !dbg !2211

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2212

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2213

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2190
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2217
  br i1 %160, label %177, label %161, !dbg !2217

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2219
  br i1 %162, label %163, label %165, !dbg !2223

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2219
  store i8 39, ptr %164, align 1, !dbg !2219, !tbaa !925
  br label %165, !dbg !2219

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %166, metadata !2040, metadata !DIExpression()), !dbg !2092
  %167 = icmp ult i64 %166, %130, !dbg !2224
  br i1 %167, label %168, label %170, !dbg !2227

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2224
  store i8 36, ptr %169, align 1, !dbg !2224, !tbaa !925
  br label %170, !dbg !2224

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %171, metadata !2040, metadata !DIExpression()), !dbg !2092
  %172 = icmp ult i64 %171, %130, !dbg !2228
  br i1 %172, label %173, label %175, !dbg !2231

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2228
  store i8 39, ptr %174, align 1, !dbg !2228, !tbaa !925
  br label %175, !dbg !2228

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %176, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2048, metadata !DIExpression()), !dbg !2092
  br label %177, !dbg !2232

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2092
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %178, metadata !2040, metadata !DIExpression()), !dbg !2092
  %180 = icmp ult i64 %178, %130, !dbg !2233
  br i1 %180, label %181, label %183, !dbg !2236

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2233
  store i8 92, ptr %182, align 1, !dbg !2233, !tbaa !925
  br label %183, !dbg !2233

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %184, metadata !2040, metadata !DIExpression()), !dbg !2092
  br i1 %111, label %185, label %482, !dbg !2237

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2239
  %187 = icmp ult i64 %186, %153, !dbg !2240
  br i1 %187, label %188, label %439, !dbg !2241

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2242
  %190 = load i8, ptr %189, align 1, !dbg !2242, !tbaa !925
  %191 = add i8 %190, -48, !dbg !2243
  %192 = icmp ult i8 %191, 10, !dbg !2243
  br i1 %192, label %193, label %439, !dbg !2243

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2244
  br i1 %194, label %195, label %197, !dbg !2248

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2244
  store i8 48, ptr %196, align 1, !dbg !2244, !tbaa !925
  br label %197, !dbg !2244

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %198, metadata !2040, metadata !DIExpression()), !dbg !2092
  %199 = icmp ult i64 %198, %130, !dbg !2249
  br i1 %199, label %200, label %202, !dbg !2252

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2249
  store i8 48, ptr %201, align 1, !dbg !2249, !tbaa !925
  br label %202, !dbg !2249

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %203, metadata !2040, metadata !DIExpression()), !dbg !2092
  br label %439, !dbg !2253

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2254

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2255

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2256

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2258

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2260
  %210 = icmp ult i64 %209, %153, !dbg !2261
  br i1 %210, label %211, label %439, !dbg !2262

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2263
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2264
  %214 = load i8, ptr %213, align 1, !dbg !2264, !tbaa !925
  %215 = icmp eq i8 %214, 63, !dbg !2265
  br i1 %215, label %216, label %439, !dbg !2266

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2267
  %218 = load i8, ptr %217, align 1, !dbg !2267, !tbaa !925
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
  ], !dbg !2268

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2269

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %209, metadata !2054, metadata !DIExpression()), !dbg !2181
  %221 = icmp ult i64 %124, %130, !dbg !2271
  br i1 %221, label %222, label %224, !dbg !2274

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2271
  store i8 63, ptr %223, align 1, !dbg !2271, !tbaa !925
  br label %224, !dbg !2271

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %225, metadata !2040, metadata !DIExpression()), !dbg !2092
  %226 = icmp ult i64 %225, %130, !dbg !2275
  br i1 %226, label %227, label %229, !dbg !2278

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2275
  store i8 34, ptr %228, align 1, !dbg !2275, !tbaa !925
  br label %229, !dbg !2275

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %230, metadata !2040, metadata !DIExpression()), !dbg !2092
  %231 = icmp ult i64 %230, %130, !dbg !2279
  br i1 %231, label %232, label %234, !dbg !2282

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2279
  store i8 34, ptr %233, align 1, !dbg !2279, !tbaa !925
  br label %234, !dbg !2279

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %235, metadata !2040, metadata !DIExpression()), !dbg !2092
  %236 = icmp ult i64 %235, %130, !dbg !2283
  br i1 %236, label %237, label %239, !dbg !2286

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2283
  store i8 63, ptr %238, align 1, !dbg !2283, !tbaa !925
  br label %239, !dbg !2283

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2286
  call void @llvm.dbg.value(metadata i64 %240, metadata !2040, metadata !DIExpression()), !dbg !2092
  br label %439, !dbg !2287

241:                                              ; preds = %152
  br label %251, !dbg !2288

242:                                              ; preds = %152
  br label %251, !dbg !2289

243:                                              ; preds = %152
  br label %249, !dbg !2290

244:                                              ; preds = %152
  br label %249, !dbg !2291

245:                                              ; preds = %152
  br label %251, !dbg !2292

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2293

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2294

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2297

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2299
  call void @llvm.dbg.label(metadata !2086), !dbg !2300
  br i1 %119, label %621, label %251, !dbg !2301

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2299
  call void @llvm.dbg.label(metadata !2088), !dbg !2303
  br i1 %109, label %493, label %450, !dbg !2304

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2305

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2306, !tbaa !925
  %256 = icmp eq i8 %255, 0, !dbg !2308
  br i1 %256, label %257, label %439, !dbg !2309

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2310
  br i1 %258, label %259, label %439, !dbg !2312

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2190
  br label %260, !dbg !2313

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2060, metadata !DIExpression()), !dbg !2190
  br i1 %116, label %262, label %439, !dbg !2314

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2316

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2060, metadata !DIExpression()), !dbg !2190
  br i1 %116, label %264, label %439, !dbg !2317

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2318

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2321
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2323
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2323
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %270, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %269, metadata !2041, metadata !DIExpression()), !dbg !2092
  %271 = icmp ult i64 %124, %270, !dbg !2324
  br i1 %271, label %272, label %274, !dbg !2327

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2324
  store i8 39, ptr %273, align 1, !dbg !2324, !tbaa !925
  br label %274, !dbg !2324

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %275, metadata !2040, metadata !DIExpression()), !dbg !2092
  %276 = icmp ult i64 %275, %270, !dbg !2328
  br i1 %276, label %277, label %279, !dbg !2331

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2328
  store i8 92, ptr %278, align 1, !dbg !2328, !tbaa !925
  br label %279, !dbg !2328

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %280, metadata !2040, metadata !DIExpression()), !dbg !2092
  %281 = icmp ult i64 %280, %270, !dbg !2332
  br i1 %281, label %282, label %284, !dbg !2335

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2332
  store i8 39, ptr %283, align 1, !dbg !2332, !tbaa !925
  br label %284, !dbg !2332

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %285, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2092
  br label %439, !dbg !2336

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2337

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2062, metadata !DIExpression()), !dbg !2338
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2339
  %289 = load ptr, ptr %288, align 8, !dbg !2339, !tbaa !848
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2339
  %292 = load i16, ptr %291, align 2, !dbg !2339, !tbaa !957
  %293 = and i16 %292, 16384, !dbg !2339
  %294 = icmp ne i16 %293, 0, !dbg !2341
  call void @llvm.dbg.value(metadata i1 %294, metadata !2065, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2338
  br label %337, !dbg !2342

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2343
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2066, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata ptr %14, metadata !2118, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata ptr %14, metadata !2126, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i64 8, metadata !2130, metadata !DIExpression()), !dbg !2347
  store i64 0, ptr %14, align 8, !dbg !2349
  call void @llvm.dbg.value(metadata i64 0, metadata !2062, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2065, metadata !DIExpression()), !dbg !2338
  %296 = icmp eq i64 %153, -1, !dbg !2350
  br i1 %296, label %297, label %299, !dbg !2352

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %298, metadata !2033, metadata !DIExpression()), !dbg !2092
  br label %299, !dbg !2354

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2190
  call void @llvm.dbg.value(metadata i64 %300, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2355
  %301 = sub i64 %300, %129, !dbg !2356
  call void @llvm.dbg.value(metadata ptr %15, metadata !2069, metadata !DIExpression(DW_OP_deref)), !dbg !2357
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %302, metadata !2073, metadata !DIExpression()), !dbg !2357
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2359

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2062, metadata !DIExpression()), !dbg !2338
  %304 = icmp ugt i64 %300, %129, !dbg !2360
  br i1 %304, label %306, label %332, !dbg !2362

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2065, metadata !DIExpression()), !dbg !2338
  br label %332, !dbg !2363

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2062, metadata !DIExpression()), !dbg !2338
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2365
  %310 = load i8, ptr %309, align 1, !dbg !2365, !tbaa !925
  %311 = icmp eq i8 %310, 0, !dbg !2362
  br i1 %311, label %332, label %312, !dbg !2366

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %313, metadata !2062, metadata !DIExpression()), !dbg !2338
  %314 = add i64 %313, %129, !dbg !2368
  %315 = icmp eq i64 %313, %301, !dbg !2360
  br i1 %315, label %332, label %306, !dbg !2362, !llvm.loop !2369

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2370
  %319 = and i1 %318, %110, !dbg !2370
  call void @llvm.dbg.value(metadata i64 1, metadata !2074, metadata !DIExpression()), !dbg !2371
  br i1 %319, label %320, label %328, !dbg !2370

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2074, metadata !DIExpression()), !dbg !2371
  %322 = add i64 %321, %129, !dbg !2372
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2374
  %324 = load i8, ptr %323, align 1, !dbg !2374, !tbaa !925
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2375

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %326, metadata !2074, metadata !DIExpression()), !dbg !2371
  %327 = icmp eq i64 %326, %302, !dbg !2377
  br i1 %327, label %328, label %320, !dbg !2378, !llvm.loop !2379

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2381, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %329, metadata !2069, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %329, metadata !2383, metadata !DIExpression()), !dbg !2391
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2393
  %331 = icmp ne i32 %330, 0, !dbg !2394
  call void @llvm.dbg.value(metadata i8 poison, metadata !2065, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %302, metadata !2062, metadata !DIExpression()), !dbg !2338
  br label %332, !dbg !2395

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2065, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %333, metadata !2062, metadata !DIExpression()), !dbg !2338
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2396
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2397
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2065, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 0, metadata !2062, metadata !DIExpression()), !dbg !2338
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2396
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2397
  call void @llvm.dbg.label(metadata !2091), !dbg !2398
  %336 = select i1 %109, i32 4, i32 2, !dbg !2399
  br label %626, !dbg !2399

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2190
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2401
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2065, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %339, metadata !2062, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %338, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i1 %340, metadata !2060, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2190
  %341 = icmp ult i64 %339, 2, !dbg !2402
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2403
  br i1 %343, label %439, label %344, !dbg !2403

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %345, metadata !2082, metadata !DIExpression()), !dbg !2405
  br label %346, !dbg !2406

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2092
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2181
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2407
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %352, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %351, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %349, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %347, metadata !2040, metadata !DIExpression()), !dbg !2092
  br i1 %342, label %397, label %353, !dbg !2408

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2413

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2190
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2416
  br i1 %355, label %372, label %356, !dbg !2416

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2418
  br i1 %357, label %358, label %360, !dbg !2422

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2418
  store i8 39, ptr %359, align 1, !dbg !2418, !tbaa !925
  br label %360, !dbg !2418

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %361, metadata !2040, metadata !DIExpression()), !dbg !2092
  %362 = icmp ult i64 %361, %130, !dbg !2423
  br i1 %362, label %363, label %365, !dbg !2426

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2423
  store i8 36, ptr %364, align 1, !dbg !2423, !tbaa !925
  br label %365, !dbg !2423

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %366, metadata !2040, metadata !DIExpression()), !dbg !2092
  %367 = icmp ult i64 %366, %130, !dbg !2427
  br i1 %367, label %368, label %370, !dbg !2430

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2427
  store i8 39, ptr %369, align 1, !dbg !2427, !tbaa !925
  br label %370, !dbg !2427

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %371, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2048, metadata !DIExpression()), !dbg !2092
  br label %372, !dbg !2431

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2092
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %373, metadata !2040, metadata !DIExpression()), !dbg !2092
  %375 = icmp ult i64 %373, %130, !dbg !2432
  br i1 %375, label %376, label %378, !dbg !2435

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2432
  store i8 92, ptr %377, align 1, !dbg !2432, !tbaa !925
  br label %378, !dbg !2432

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %379, metadata !2040, metadata !DIExpression()), !dbg !2092
  %380 = icmp ult i64 %379, %130, !dbg !2436
  br i1 %380, label %381, label %385, !dbg !2439

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2436
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2436
  store i8 %383, ptr %384, align 1, !dbg !2436, !tbaa !925
  br label %385, !dbg !2436

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %386, metadata !2040, metadata !DIExpression()), !dbg !2092
  %387 = icmp ult i64 %386, %130, !dbg !2440
  br i1 %387, label %388, label %393, !dbg !2443

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2440
  %391 = or i8 %390, 48, !dbg !2440
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2440
  store i8 %391, ptr %392, align 1, !dbg !2440, !tbaa !925
  br label %393, !dbg !2440

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %394, metadata !2040, metadata !DIExpression()), !dbg !2092
  %395 = and i8 %352, 7, !dbg !2444
  %396 = or i8 %395, 48, !dbg !2445
  call void @llvm.dbg.value(metadata i8 %396, metadata !2061, metadata !DIExpression()), !dbg !2190
  br label %404, !dbg !2446

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2447

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2448
  br i1 %399, label %400, label %402, !dbg !2453

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2448
  store i8 92, ptr %401, align 1, !dbg !2448, !tbaa !925
  br label %402, !dbg !2448

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %403, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2190
  br label %404, !dbg !2454

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2092
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2190
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2190
  call void @llvm.dbg.value(metadata i8 %409, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %408, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %405, metadata !2040, metadata !DIExpression()), !dbg !2092
  %410 = add i64 %349, 1, !dbg !2455
  %411 = icmp ugt i64 %345, %410, !dbg !2457
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2458

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2459
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2459
  br i1 %415, label %416, label %427, !dbg !2459

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2462
  br i1 %417, label %418, label %420, !dbg !2466

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2462
  store i8 39, ptr %419, align 1, !dbg !2462, !tbaa !925
  br label %420, !dbg !2462

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %421, metadata !2040, metadata !DIExpression()), !dbg !2092
  %422 = icmp ult i64 %421, %130, !dbg !2467
  br i1 %422, label %423, label %425, !dbg !2470

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2467
  store i8 39, ptr %424, align 1, !dbg !2467, !tbaa !925
  br label %425, !dbg !2467

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %426, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2092
  br label %427, !dbg !2471

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2472
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %428, metadata !2040, metadata !DIExpression()), !dbg !2092
  %430 = icmp ult i64 %428, %130, !dbg !2473
  br i1 %430, label %431, label %433, !dbg !2476

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2473
  store i8 %409, ptr %432, align 1, !dbg !2473, !tbaa !925
  br label %433, !dbg !2473

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %434, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %410, metadata !2054, metadata !DIExpression()), !dbg !2181
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2477
  %436 = load i8, ptr %435, align 1, !dbg !2477, !tbaa !925
  call void @llvm.dbg.value(metadata i8 %436, metadata !2061, metadata !DIExpression()), !dbg !2190
  br label %346, !dbg !2478, !llvm.loop !2479

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i1 %340, metadata !2060, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2190
  call void @llvm.dbg.value(metadata i8 %408, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %349, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %405, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %338, metadata !2033, metadata !DIExpression()), !dbg !2092
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2482
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2092
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2096
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2181
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2190
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %448, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2060, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2056, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %445, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %442, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %441, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %440, metadata !2033, metadata !DIExpression()), !dbg !2092
  br i1 %112, label %461, label %450, !dbg !2483

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
  br i1 %121, label %462, label %482, !dbg !2485

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2486

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
  %473 = lshr i8 %464, 5, !dbg !2487
  %474 = zext i8 %473 to i64, !dbg !2487
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2488
  %476 = load i32, ptr %475, align 4, !dbg !2488, !tbaa !916
  %477 = and i8 %464, 31, !dbg !2489
  %478 = zext i8 %477 to i32, !dbg !2489
  %479 = shl nuw i32 1, %478, !dbg !2490
  %480 = and i32 %476, %479, !dbg !2490
  %481 = icmp eq i32 %480, 0, !dbg !2490
  br i1 %481, label %482, label %493, !dbg !2491

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
  br i1 %154, label %493, label %529, !dbg !2492

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2482
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2092
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2096
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2493
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2190
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %501, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2060, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %499, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %496, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %495, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %494, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2089), !dbg !2494
  br i1 %110, label %621, label %503, !dbg !2495

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2190
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2497
  br i1 %504, label %521, label %505, !dbg !2497

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2499
  br i1 %506, label %507, label %509, !dbg !2503

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2499
  store i8 39, ptr %508, align 1, !dbg !2499, !tbaa !925
  br label %509, !dbg !2499

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %510, metadata !2040, metadata !DIExpression()), !dbg !2092
  %511 = icmp ult i64 %510, %502, !dbg !2504
  br i1 %511, label %512, label %514, !dbg !2507

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2504
  store i8 36, ptr %513, align 1, !dbg !2504, !tbaa !925
  br label %514, !dbg !2504

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %515, metadata !2040, metadata !DIExpression()), !dbg !2092
  %516 = icmp ult i64 %515, %502, !dbg !2508
  br i1 %516, label %517, label %519, !dbg !2511

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2508
  store i8 39, ptr %518, align 1, !dbg !2508, !tbaa !925
  br label %519, !dbg !2508

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %520, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 1, metadata !2048, metadata !DIExpression()), !dbg !2092
  br label %521, !dbg !2512

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2190
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %522, metadata !2040, metadata !DIExpression()), !dbg !2092
  %524 = icmp ult i64 %522, %502, !dbg !2513
  br i1 %524, label %525, label %527, !dbg !2516

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2513
  store i8 92, ptr %526, align 1, !dbg !2513, !tbaa !925
  br label %527, !dbg !2513

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %502, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %501, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2060, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %499, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %496, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %528, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %494, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2090), !dbg !2517
  br label %553, !dbg !2518

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2482
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2092
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2096
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2493
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2521
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 %538, metadata !2061, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2060, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i64 %535, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %532, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %531, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %530, metadata !2033, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2090), !dbg !2517
  %540 = xor i1 %534, true, !dbg !2518
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2518
  br i1 %541, label %553, label %542, !dbg !2518

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2522
  br i1 %543, label %544, label %546, !dbg !2526

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2522
  store i8 39, ptr %545, align 1, !dbg !2522, !tbaa !925
  br label %546, !dbg !2522

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %547, metadata !2040, metadata !DIExpression()), !dbg !2092
  %548 = icmp ult i64 %547, %539, !dbg !2527
  br i1 %548, label %549, label %551, !dbg !2530

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2527
  store i8 39, ptr %550, align 1, !dbg !2527, !tbaa !925
  br label %551, !dbg !2527

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %552, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2092
  br label %553, !dbg !2531

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2190
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %561, metadata !2040, metadata !DIExpression()), !dbg !2092
  %563 = icmp ult i64 %561, %554, !dbg !2532
  br i1 %563, label %564, label %566, !dbg !2535

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2532
  store i8 %555, ptr %565, align 1, !dbg !2532, !tbaa !925
  br label %566, !dbg !2532

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %567, metadata !2040, metadata !DIExpression()), !dbg !2092
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2536
  call void @llvm.dbg.value(metadata i8 poison, metadata !2047, metadata !DIExpression()), !dbg !2092
  br label %569, !dbg !2537

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2482
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2092
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2096
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2493
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %576, metadata !2054, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8 poison, metadata !2048, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2047, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %572, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %571, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %570, metadata !2033, metadata !DIExpression()), !dbg !2092
  %578 = add i64 %576, 1, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %578, metadata !2054, metadata !DIExpression()), !dbg !2181
  br label %122, !dbg !2539, !llvm.loop !2540

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2031, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2047, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %125, metadata !2041, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2040, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %123, metadata !2033, metadata !DIExpression()), !dbg !2092
  %580 = icmp ne i64 %124, 0, !dbg !2542
  %581 = xor i1 %110, true, !dbg !2544
  %582 = or i1 %580, %581, !dbg !2544
  %583 = or i1 %582, %111, !dbg !2544
  br i1 %583, label %584, label %621, !dbg !2544

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2545
  %586 = xor i1 %126, true, !dbg !2545
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2545
  br i1 %587, label %595, label %588, !dbg !2545

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2547

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2549
  br label %636, !dbg !2551

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2552
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2554
  br i1 %594, label %27, label %595, !dbg !2554

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2555
  %598 = or i1 %597, %596, !dbg !2557
  br i1 %598, label %614, label %599, !dbg !2557

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2042, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %124, metadata !2040, metadata !DIExpression()), !dbg !2092
  %600 = load i8, ptr %107, align 1, !dbg !2558, !tbaa !925
  %601 = icmp eq i8 %600, 0, !dbg !2561
  br i1 %601, label %614, label %602, !dbg !2561

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2042, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %605, metadata !2040, metadata !DIExpression()), !dbg !2092
  %606 = icmp ult i64 %605, %130, !dbg !2562
  br i1 %606, label %607, label %609, !dbg !2565

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2562
  store i8 %603, ptr %608, align 1, !dbg !2562, !tbaa !925
  br label %609, !dbg !2562

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %610, metadata !2040, metadata !DIExpression()), !dbg !2092
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %611, metadata !2042, metadata !DIExpression()), !dbg !2092
  %612 = load i8, ptr %611, align 1, !dbg !2558, !tbaa !925
  %613 = icmp eq i8 %612, 0, !dbg !2561
  br i1 %613, label %614, label %602, !dbg !2561, !llvm.loop !2567

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2168
  call void @llvm.dbg.value(metadata i64 %615, metadata !2040, metadata !DIExpression()), !dbg !2092
  %616 = icmp ult i64 %615, %130, !dbg !2569
  br i1 %616, label %617, label %636, !dbg !2571

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2572
  store i8 0, ptr %618, align 1, !dbg !2573, !tbaa !925
  br label %636, !dbg !2572

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2091), !dbg !2398
  %620 = icmp eq i32 %103, 2, !dbg !2574
  br i1 %620, label %626, label %630, !dbg !2399

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2091), !dbg !2398
  %624 = icmp eq i32 %103, 2, !dbg !2574
  %625 = select i1 %109, i32 4, i32 2, !dbg !2399
  br i1 %624, label %626, label %630, !dbg !2399

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2399

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2034, metadata !DIExpression()), !dbg !2092
  %634 = and i32 %5, -3, !dbg !2575
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2576
  br label %636, !dbg !2577

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2578
}

; Function Attrs: nounwind
declare !dbg !2579 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2582 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64 %1, metadata !2589, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata ptr %2, metadata !2590, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata ptr null, metadata !2598, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2605
  %4 = icmp eq ptr %2, null, !dbg !2607
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %5, metadata !2600, metadata !DIExpression()), !dbg !2605
  %6 = tail call ptr @__errno_location() #42, !dbg !2608
  %7 = load i32, ptr %6, align 4, !dbg !2608, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %7, metadata !2601, metadata !DIExpression()), !dbg !2605
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2609
  %9 = load i32, ptr %8, align 4, !dbg !2609, !tbaa !1974
  %10 = or i32 %9, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %10, metadata !2602, metadata !DIExpression()), !dbg !2605
  %11 = load i32, ptr %5, align 8, !dbg !2611, !tbaa !1924
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2612
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2613
  %14 = load ptr, ptr %13, align 8, !dbg !2613, !tbaa !1995
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2614
  %16 = load ptr, ptr %15, align 8, !dbg !2614, !tbaa !1998
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2615
  %18 = add i64 %17, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %18, metadata !2603, metadata !DIExpression()), !dbg !2605
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %19, metadata !2604, metadata !DIExpression()), !dbg !2605
  %20 = load i32, ptr %5, align 8, !dbg !2618, !tbaa !1924
  %21 = load ptr, ptr %13, align 8, !dbg !2619, !tbaa !1995
  %22 = load ptr, ptr %15, align 8, !dbg !2620, !tbaa !1998
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2621
  store i32 %7, ptr %6, align 4, !dbg !2622, !tbaa !916
  ret ptr %19, !dbg !2623
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2593 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2592, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %2, metadata !2598, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata ptr %3, metadata !2599, metadata !DIExpression()), !dbg !2624
  %5 = icmp eq ptr %3, null, !dbg !2625
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %6, metadata !2600, metadata !DIExpression()), !dbg !2624
  %7 = tail call ptr @__errno_location() #42, !dbg !2626
  %8 = load i32, ptr %7, align 4, !dbg !2626, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %8, metadata !2601, metadata !DIExpression()), !dbg !2624
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2627
  %10 = load i32, ptr %9, align 4, !dbg !2627, !tbaa !1974
  %11 = icmp eq ptr %2, null, !dbg !2628
  %12 = zext i1 %11 to i32, !dbg !2628
  %13 = or i32 %10, %12, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %13, metadata !2602, metadata !DIExpression()), !dbg !2624
  %14 = load i32, ptr %6, align 8, !dbg !2630, !tbaa !1924
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2631
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2632
  %17 = load ptr, ptr %16, align 8, !dbg !2632, !tbaa !1995
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2633
  %19 = load ptr, ptr %18, align 8, !dbg !2633, !tbaa !1998
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2634
  %21 = add i64 %20, 1, !dbg !2635
  call void @llvm.dbg.value(metadata i64 %21, metadata !2603, metadata !DIExpression()), !dbg !2624
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2636
  call void @llvm.dbg.value(metadata ptr %22, metadata !2604, metadata !DIExpression()), !dbg !2624
  %23 = load i32, ptr %6, align 8, !dbg !2637, !tbaa !1924
  %24 = load ptr, ptr %16, align 8, !dbg !2638, !tbaa !1995
  %25 = load ptr, ptr %18, align 8, !dbg !2639, !tbaa !1998
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2640
  store i32 %8, ptr %7, align 4, !dbg !2641, !tbaa !916
  br i1 %11, label %28, label %27, !dbg !2642

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2643, !tbaa !2645
  br label %28, !dbg !2646

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2647
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2648 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2653, !tbaa !848
  call void @llvm.dbg.value(metadata ptr %1, metadata !2650, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 1, metadata !2651, metadata !DIExpression()), !dbg !2655
  %2 = load i32, ptr @nslots, align 4, !tbaa !916
  call void @llvm.dbg.value(metadata i32 1, metadata !2651, metadata !DIExpression()), !dbg !2655
  %3 = icmp sgt i32 %2, 1, !dbg !2656
  br i1 %3, label %4, label %6, !dbg !2658

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2656
  br label %10, !dbg !2658

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2659
  %8 = load ptr, ptr %7, align 8, !dbg !2659, !tbaa !2661
  %9 = icmp eq ptr %8, @slot0, !dbg !2663
  br i1 %9, label %17, label %16, !dbg !2664

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2651, metadata !DIExpression()), !dbg !2655
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2665
  %13 = load ptr, ptr %12, align 8, !dbg !2665, !tbaa !2661
  tail call void @free(ptr noundef %13) #39, !dbg !2666
  %14 = add nuw nsw i64 %11, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %14, metadata !2651, metadata !DIExpression()), !dbg !2655
  %15 = icmp eq i64 %14, %5, !dbg !2656
  br i1 %15, label %6, label %10, !dbg !2658, !llvm.loop !2668

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2670
  store i64 256, ptr @slotvec0, align 8, !dbg !2672, !tbaa !2673
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2674, !tbaa !2661
  br label %17, !dbg !2675

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2676
  br i1 %18, label %20, label %19, !dbg !2678

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2679
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2681, !tbaa !848
  br label %20, !dbg !2682

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2683, !tbaa !916
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2687, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %1, metadata !2688, metadata !DIExpression()), !dbg !2689
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2690
  ret ptr %3, !dbg !2691
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2692 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata ptr %1, metadata !2697, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i64 %2, metadata !2698, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata ptr %3, metadata !2699, metadata !DIExpression()), !dbg !2712
  %6 = tail call ptr @__errno_location() #42, !dbg !2713
  %7 = load i32, ptr %6, align 4, !dbg !2713, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %7, metadata !2700, metadata !DIExpression()), !dbg !2712
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2714, !tbaa !848
  call void @llvm.dbg.value(metadata ptr %8, metadata !2701, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2702, metadata !DIExpression()), !dbg !2712
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2715
  br i1 %9, label %10, label %11, !dbg !2715

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2717
  unreachable, !dbg !2717

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2718, !tbaa !916
  %13 = icmp sgt i32 %12, %0, !dbg !2719
  br i1 %13, label %32, label %14, !dbg !2720

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2721
  call void @llvm.dbg.value(metadata i1 %15, metadata !2703, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2722
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2723
  %16 = sext i32 %12 to i64, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %16, metadata !2706, metadata !DIExpression()), !dbg !2722
  store i64 %16, ptr %5, align 8, !dbg !2725, !tbaa !2645
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2726
  %18 = add nuw nsw i32 %0, 1, !dbg !2727
  %19 = sub i32 %18, %12, !dbg !2728
  %20 = sext i32 %19 to i64, !dbg !2729
  call void @llvm.dbg.value(metadata ptr %5, metadata !2706, metadata !DIExpression(DW_OP_deref)), !dbg !2722
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %21, metadata !2701, metadata !DIExpression()), !dbg !2712
  store ptr %21, ptr @slotvec, align 8, !dbg !2731, !tbaa !848
  br i1 %15, label %22, label %23, !dbg !2732

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2733, !tbaa.struct !2735
  br label %23, !dbg !2736

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2737, !tbaa !916
  %25 = sext i32 %24 to i64, !dbg !2738
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2738
  %27 = load i64, ptr %5, align 8, !dbg !2739, !tbaa !2645
  call void @llvm.dbg.value(metadata i64 %27, metadata !2706, metadata !DIExpression()), !dbg !2722
  %28 = sub nsw i64 %27, %25, !dbg !2740
  %29 = shl i64 %28, 4, !dbg !2741
  call void @llvm.dbg.value(metadata ptr %26, metadata !2126, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %29, metadata !2130, metadata !DIExpression()), !dbg !2742
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2744
  %30 = load i64, ptr %5, align 8, !dbg !2745, !tbaa !2645
  call void @llvm.dbg.value(metadata i64 %30, metadata !2706, metadata !DIExpression()), !dbg !2722
  %31 = trunc i64 %30 to i32, !dbg !2745
  store i32 %31, ptr @nslots, align 4, !dbg !2746, !tbaa !916
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2747
  br label %32, !dbg !2748

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2712
  call void @llvm.dbg.value(metadata ptr %33, metadata !2701, metadata !DIExpression()), !dbg !2712
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2749
  %36 = load i64, ptr %35, align 8, !dbg !2750, !tbaa !2673
  call void @llvm.dbg.value(metadata i64 %36, metadata !2707, metadata !DIExpression()), !dbg !2751
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2752
  %38 = load ptr, ptr %37, align 8, !dbg !2752, !tbaa !2661
  call void @llvm.dbg.value(metadata ptr %38, metadata !2709, metadata !DIExpression()), !dbg !2751
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2753
  %40 = load i32, ptr %39, align 4, !dbg !2753, !tbaa !1974
  %41 = or i32 %40, 1, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %41, metadata !2710, metadata !DIExpression()), !dbg !2751
  %42 = load i32, ptr %3, align 8, !dbg !2755, !tbaa !1924
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2756
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2757
  %45 = load ptr, ptr %44, align 8, !dbg !2757, !tbaa !1995
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2758
  %47 = load ptr, ptr %46, align 8, !dbg !2758, !tbaa !1998
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %48, metadata !2711, metadata !DIExpression()), !dbg !2751
  %49 = icmp ugt i64 %36, %48, !dbg !2760
  br i1 %49, label %60, label %50, !dbg !2762

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %51, metadata !2707, metadata !DIExpression()), !dbg !2751
  store i64 %51, ptr %35, align 8, !dbg !2765, !tbaa !2673
  %52 = icmp eq ptr %38, @slot0, !dbg !2766
  br i1 %52, label %54, label %53, !dbg !2768

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2769
  br label %54, !dbg !2769

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2770
  call void @llvm.dbg.value(metadata ptr %55, metadata !2709, metadata !DIExpression()), !dbg !2751
  store ptr %55, ptr %37, align 8, !dbg !2771, !tbaa !2661
  %56 = load i32, ptr %3, align 8, !dbg !2772, !tbaa !1924
  %57 = load ptr, ptr %44, align 8, !dbg !2773, !tbaa !1995
  %58 = load ptr, ptr %46, align 8, !dbg !2774, !tbaa !1998
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2775
  br label %60, !dbg !2776

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2751
  call void @llvm.dbg.value(metadata ptr %61, metadata !2709, metadata !DIExpression()), !dbg !2751
  store i32 %7, ptr %6, align 4, !dbg !2777, !tbaa !916
  ret ptr %61, !dbg !2778
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2779 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata ptr %1, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %2, metadata !2785, metadata !DIExpression()), !dbg !2786
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2787
  ret ptr %4, !dbg !2788
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2789 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2687, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %0, metadata !2688, metadata !DIExpression()), !dbg !2793
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2795
  ret ptr %2, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2797 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 0, metadata !2783, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata ptr %0, metadata !2784, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()), !dbg !2804
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2806
  ret ptr %3, !dbg !2807
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2808 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %1, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2815, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2819), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %1, metadata !2823, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2831, !alias.scope !2819
  %5 = icmp eq i32 %1, 10, !dbg !2832
  br i1 %5, label %6, label %7, !dbg !2834

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2835, !noalias !2819
  unreachable, !dbg !2835

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2836, !tbaa !1924, !alias.scope !2819
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2837
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2838
  ret ptr %8, !dbg !2839
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2840 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2844, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %1, metadata !2845, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %2, metadata !2846, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %3, metadata !2847, metadata !DIExpression()), !dbg !2849
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2850
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2848, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2852), !dbg !2855
  call void @llvm.dbg.value(metadata i32 %1, metadata !2823, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2828, metadata !DIExpression()), !dbg !2858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2858, !alias.scope !2852
  %6 = icmp eq i32 %1, 10, !dbg !2859
  br i1 %6, label %7, label %8, !dbg !2860

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2861, !noalias !2852
  unreachable, !dbg !2861

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2862, !tbaa !1924, !alias.scope !2852
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2863
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2864
  ret ptr %9, !dbg !2865
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2866 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2870, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %1, metadata !2871, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 0, metadata !2812, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata ptr %1, metadata !2814, metadata !DIExpression()), !dbg !2873
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2875
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2815, metadata !DIExpression()), !dbg !2876
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877), !dbg !2880
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2828, metadata !DIExpression()), !dbg !2883
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2883, !alias.scope !2877
  %4 = icmp eq i32 %0, 10, !dbg !2884
  br i1 %4, label %5, label %6, !dbg !2885

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2886, !noalias !2877
  unreachable, !dbg !2886

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2887, !tbaa !1924, !alias.scope !2877
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2888
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2889
  ret ptr %7, !dbg !2890
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2891 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata ptr %1, metadata !2896, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 %2, metadata !2897, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 0, metadata !2844, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %1, metadata !2846, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2899
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2848, metadata !DIExpression()), !dbg !2902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2828, metadata !DIExpression()), !dbg !2909
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2909, !alias.scope !2903
  %5 = icmp eq i32 %0, 10, !dbg !2910
  br i1 %5, label %6, label %7, !dbg !2911

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2912, !noalias !2903
  unreachable, !dbg !2912

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2913, !tbaa !1924, !alias.scope !2903
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2914
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2915
  ret ptr %8, !dbg !2916
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2917 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8 %2, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2926
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2924, metadata !DIExpression()), !dbg !2927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2928, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %4, metadata !1941, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %2, metadata !1942, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 1, metadata !1943, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %2, metadata !1944, metadata !DIExpression()), !dbg !2930
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2932
  %6 = lshr i8 %2, 5, !dbg !2933
  %7 = zext i8 %6 to i64, !dbg !2933
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %8, metadata !1945, metadata !DIExpression()), !dbg !2930
  %9 = and i8 %2, 31, !dbg !2935
  %10 = zext i8 %9 to i32, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %10, metadata !1947, metadata !DIExpression()), !dbg !2930
  %11 = load i32, ptr %8, align 4, !dbg !2936, !tbaa !916
  %12 = lshr i32 %11, %10, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %12, metadata !1948, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2930
  %13 = and i32 %12, 1, !dbg !2938
  %14 = xor i32 %13, 1, !dbg !2938
  %15 = shl nuw i32 %14, %10, !dbg !2939
  %16 = xor i32 %15, %11, !dbg !2940
  store i32 %16, ptr %8, align 4, !dbg !2940, !tbaa !916
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2941
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2942
  ret ptr %17, !dbg !2943
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2944 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2948, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8 %1, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i64 -1, metadata !2922, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8 %1, metadata !2923, metadata !DIExpression()), !dbg !2951
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2953
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2924, metadata !DIExpression()), !dbg !2954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2955, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %3, metadata !1941, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8 %1, metadata !1942, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 1, metadata !1943, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8 %1, metadata !1944, metadata !DIExpression()), !dbg !2956
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2958
  %5 = lshr i8 %1, 5, !dbg !2959
  %6 = zext i8 %5 to i64, !dbg !2959
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2960
  call void @llvm.dbg.value(metadata ptr %7, metadata !1945, metadata !DIExpression()), !dbg !2956
  %8 = and i8 %1, 31, !dbg !2961
  %9 = zext i8 %8 to i32, !dbg !2961
  call void @llvm.dbg.value(metadata i32 %9, metadata !1947, metadata !DIExpression()), !dbg !2956
  %10 = load i32, ptr %7, align 4, !dbg !2962, !tbaa !916
  %11 = lshr i32 %10, %9, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %11, metadata !1948, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2956
  %12 = and i32 %11, 1, !dbg !2964
  %13 = xor i32 %12, 1, !dbg !2964
  %14 = shl nuw i32 %13, %9, !dbg !2965
  %15 = xor i32 %14, %10, !dbg !2966
  store i32 %15, ptr %7, align 4, !dbg !2966, !tbaa !916
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2967
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2968
  ret ptr %16, !dbg !2969
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2970 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata ptr %0, metadata !2948, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 58, metadata !2949, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 -1, metadata !2922, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !2923, metadata !DIExpression()), !dbg !2976
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2978
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !2979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2980, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %2, metadata !1941, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 58, metadata !1942, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 1, metadata !1943, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 58, metadata !1944, metadata !DIExpression()), !dbg !2981
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %3, metadata !1945, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 26, metadata !1947, metadata !DIExpression()), !dbg !2981
  %4 = load i32, ptr %3, align 4, !dbg !2984, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %4, metadata !1948, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2981
  %5 = or i32 %4, 67108864, !dbg !2985
  store i32 %5, ptr %3, align 4, !dbg !2985, !tbaa !916
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2986
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2987
  ret ptr %6, !dbg !2988
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2989 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2991, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata ptr %0, metadata !2921, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8 58, metadata !2923, metadata !DIExpression()), !dbg !2994
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2996
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2924, metadata !DIExpression()), !dbg !2997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2998, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %3, metadata !1941, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8 58, metadata !1942, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 1, metadata !1943, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8 58, metadata !1944, metadata !DIExpression()), !dbg !2999
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3001
  call void @llvm.dbg.value(metadata ptr %4, metadata !1945, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 26, metadata !1947, metadata !DIExpression()), !dbg !2999
  %5 = load i32, ptr %4, align 4, !dbg !3002, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %5, metadata !1948, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2999
  %6 = or i32 %5, 67108864, !dbg !3003
  store i32 %6, ptr %4, align 4, !dbg !3003, !tbaa !916
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3004
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3005
  ret ptr %7, !dbg !3006
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3007 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2828, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 %1, metadata !3010, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %2, metadata !3011, metadata !DIExpression()), !dbg !3015
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3016
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3012, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %1, metadata !2823, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 0, metadata !2828, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3018
  %5 = icmp eq i32 %1, 10, !dbg !3019
  br i1 %5, label %6, label %7, !dbg !3020

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3021, !noalias !3022
  unreachable, !dbg !3021

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2828, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3018
  store i32 %1, ptr %4, align 8, !dbg !3025, !tbaa.struct !2929
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %4, metadata !1941, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8 58, metadata !1942, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 1, metadata !1943, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8 58, metadata !1944, metadata !DIExpression()), !dbg !3026
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3028
  call void @llvm.dbg.value(metadata ptr %9, metadata !1945, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 26, metadata !1947, metadata !DIExpression()), !dbg !3026
  %10 = load i32, ptr %9, align 4, !dbg !3029, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %10, metadata !1948, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3026
  %11 = or i32 %10, 67108864, !dbg !3030
  store i32 %11, ptr %9, align 4, !dbg !3030, !tbaa !916
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3031
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3032
  ret ptr %12, !dbg !3033
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3034 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %1, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %2, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %3, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %0, metadata !3043, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %1, metadata !3048, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %2, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata ptr %3, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 -1, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3052, metadata !DIExpression()), !dbg !3056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3057, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %5, metadata !1981, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %1, metadata !1982, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %2, metadata !1983, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %5, metadata !1981, metadata !DIExpression()), !dbg !3058
  store i32 10, ptr %5, align 8, !dbg !3060, !tbaa !1924
  %6 = icmp ne ptr %1, null, !dbg !3061
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3062
  br i1 %8, label %10, label %9, !dbg !3062

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3063
  unreachable, !dbg !3063

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3064
  store ptr %1, ptr %11, align 8, !dbg !3065, !tbaa !1995
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3066
  store ptr %2, ptr %12, align 8, !dbg !3067, !tbaa !1998
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3068
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3069
  ret ptr %13, !dbg !3070
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3044 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3043, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %1, metadata !3048, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %2, metadata !3049, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %3, metadata !3050, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %4, metadata !3051, metadata !DIExpression()), !dbg !3071
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3072
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3052, metadata !DIExpression()), !dbg !3073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3074, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %6, metadata !1981, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %1, metadata !1982, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %2, metadata !1983, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %6, metadata !1981, metadata !DIExpression()), !dbg !3075
  store i32 10, ptr %6, align 8, !dbg !3077, !tbaa !1924
  %7 = icmp ne ptr %1, null, !dbg !3078
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3079
  br i1 %9, label %11, label %10, !dbg !3079

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3080
  unreachable, !dbg !3080

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3081
  store ptr %1, ptr %12, align 8, !dbg !3082, !tbaa !1995
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3083
  store ptr %2, ptr %13, align 8, !dbg !3084, !tbaa !1998
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3085
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3086
  ret ptr %14, !dbg !3087
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3088 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata ptr %1, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata ptr %2, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %0, metadata !3039, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %1, metadata !3040, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %2, metadata !3041, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3043, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 -1, metadata !3051, metadata !DIExpression()), !dbg !3098
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3100
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3052, metadata !DIExpression()), !dbg !3101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3102, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %4, metadata !1981, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %0, metadata !1982, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %1, metadata !1983, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %4, metadata !1981, metadata !DIExpression()), !dbg !3103
  store i32 10, ptr %4, align 8, !dbg !3105, !tbaa !1924
  %5 = icmp ne ptr %0, null, !dbg !3106
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3107
  br i1 %7, label %9, label %8, !dbg !3107

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3108
  unreachable, !dbg !3108

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3109
  store ptr %0, ptr %10, align 8, !dbg !3110, !tbaa !1995
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3111
  store ptr %1, ptr %11, align 8, !dbg !3112, !tbaa !1998
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3113
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3114
  ret ptr %12, !dbg !3115
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3116 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %1, metadata !3121, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %3, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 0, metadata !3043, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %3, metadata !3051, metadata !DIExpression()), !dbg !3125
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3127
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3052, metadata !DIExpression()), !dbg !3128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3129, !tbaa.struct !2929
  call void @llvm.dbg.value(metadata ptr %5, metadata !1981, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %0, metadata !1982, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %1, metadata !1983, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %5, metadata !1981, metadata !DIExpression()), !dbg !3130
  store i32 10, ptr %5, align 8, !dbg !3132, !tbaa !1924
  %6 = icmp ne ptr %0, null, !dbg !3133
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3134
  br i1 %8, label %10, label %9, !dbg !3134

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3135
  unreachable, !dbg !3135

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3136
  store ptr %0, ptr %11, align 8, !dbg !3137, !tbaa !1995
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3138
  store ptr %1, ptr %12, align 8, !dbg !3139, !tbaa !1998
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3140
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3141
  ret ptr %13, !dbg !3142
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3143 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %1, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %2, metadata !3149, metadata !DIExpression()), !dbg !3150
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3151
  ret ptr %4, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3153 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3157, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 0, metadata !3147, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %1, metadata !3149, metadata !DIExpression()), !dbg !3160
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3162
  ret ptr %3, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !3148, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 -1, metadata !3149, metadata !DIExpression()), !dbg !3171
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3173
  ret ptr %3, !dbg !3174
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3175 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 0, metadata !3147, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 -1, metadata !3149, metadata !DIExpression()), !dbg !3183
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3185
  ret ptr %2, !dbg !3186
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3187 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3226, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %1, metadata !3227, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %2, metadata !3228, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %3, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %4, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %5, metadata !3231, metadata !DIExpression()), !dbg !3232
  %7 = icmp eq ptr %1, null, !dbg !3233
  br i1 %7, label %10, label %8, !dbg !3235

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.95, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3236
  br label %12, !dbg !3236

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.96, ptr noundef %2, ptr noundef %3) #39, !dbg !3237
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.3.98, i32 noundef 5) #39, !dbg !3238
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3238
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3239
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.5.100, i32 noundef 5) #39, !dbg !3240
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.101) #39, !dbg !3240
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3241
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
  ], !dbg !3242

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.7.102, i32 noundef 5) #39, !dbg !3243
  %21 = load ptr, ptr %4, align 8, !dbg !3243, !tbaa !848
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3243
  br label %147, !dbg !3245

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.8.103, i32 noundef 5) #39, !dbg !3246
  %25 = load ptr, ptr %4, align 8, !dbg !3246, !tbaa !848
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3246
  %27 = load ptr, ptr %26, align 8, !dbg !3246, !tbaa !848
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3246
  br label %147, !dbg !3247

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.9.104, i32 noundef 5) #39, !dbg !3248
  %31 = load ptr, ptr %4, align 8, !dbg !3248, !tbaa !848
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3248
  %33 = load ptr, ptr %32, align 8, !dbg !3248, !tbaa !848
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3248
  %35 = load ptr, ptr %34, align 8, !dbg !3248, !tbaa !848
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3248
  br label %147, !dbg !3249

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.10.105, i32 noundef 5) #39, !dbg !3250
  %39 = load ptr, ptr %4, align 8, !dbg !3250, !tbaa !848
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3250
  %41 = load ptr, ptr %40, align 8, !dbg !3250, !tbaa !848
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3250
  %43 = load ptr, ptr %42, align 8, !dbg !3250, !tbaa !848
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3250
  %45 = load ptr, ptr %44, align 8, !dbg !3250, !tbaa !848
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3250
  br label %147, !dbg !3251

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.11.106, i32 noundef 5) #39, !dbg !3252
  %49 = load ptr, ptr %4, align 8, !dbg !3252, !tbaa !848
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3252
  %51 = load ptr, ptr %50, align 8, !dbg !3252, !tbaa !848
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3252
  %53 = load ptr, ptr %52, align 8, !dbg !3252, !tbaa !848
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3252
  %55 = load ptr, ptr %54, align 8, !dbg !3252, !tbaa !848
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3252
  %57 = load ptr, ptr %56, align 8, !dbg !3252, !tbaa !848
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3252
  br label %147, !dbg !3253

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.12.107, i32 noundef 5) #39, !dbg !3254
  %61 = load ptr, ptr %4, align 8, !dbg !3254, !tbaa !848
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3254
  %63 = load ptr, ptr %62, align 8, !dbg !3254, !tbaa !848
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3254
  %65 = load ptr, ptr %64, align 8, !dbg !3254, !tbaa !848
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3254
  %67 = load ptr, ptr %66, align 8, !dbg !3254, !tbaa !848
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3254
  %69 = load ptr, ptr %68, align 8, !dbg !3254, !tbaa !848
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3254
  %71 = load ptr, ptr %70, align 8, !dbg !3254, !tbaa !848
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3254
  br label %147, !dbg !3255

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.13.108, i32 noundef 5) #39, !dbg !3256
  %75 = load ptr, ptr %4, align 8, !dbg !3256, !tbaa !848
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3256
  %77 = load ptr, ptr %76, align 8, !dbg !3256, !tbaa !848
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3256
  %79 = load ptr, ptr %78, align 8, !dbg !3256, !tbaa !848
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3256
  %81 = load ptr, ptr %80, align 8, !dbg !3256, !tbaa !848
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3256
  %83 = load ptr, ptr %82, align 8, !dbg !3256, !tbaa !848
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3256
  %85 = load ptr, ptr %84, align 8, !dbg !3256, !tbaa !848
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3256
  %87 = load ptr, ptr %86, align 8, !dbg !3256, !tbaa !848
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3256
  br label %147, !dbg !3257

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.14.109, i32 noundef 5) #39, !dbg !3258
  %91 = load ptr, ptr %4, align 8, !dbg !3258, !tbaa !848
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3258
  %93 = load ptr, ptr %92, align 8, !dbg !3258, !tbaa !848
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3258
  %95 = load ptr, ptr %94, align 8, !dbg !3258, !tbaa !848
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3258
  %97 = load ptr, ptr %96, align 8, !dbg !3258, !tbaa !848
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3258
  %99 = load ptr, ptr %98, align 8, !dbg !3258, !tbaa !848
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3258
  %101 = load ptr, ptr %100, align 8, !dbg !3258, !tbaa !848
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3258
  %103 = load ptr, ptr %102, align 8, !dbg !3258, !tbaa !848
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3258
  %105 = load ptr, ptr %104, align 8, !dbg !3258, !tbaa !848
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3258
  br label %147, !dbg !3259

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.15.110, i32 noundef 5) #39, !dbg !3260
  %109 = load ptr, ptr %4, align 8, !dbg !3260, !tbaa !848
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3260
  %111 = load ptr, ptr %110, align 8, !dbg !3260, !tbaa !848
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3260
  %113 = load ptr, ptr %112, align 8, !dbg !3260, !tbaa !848
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3260
  %115 = load ptr, ptr %114, align 8, !dbg !3260, !tbaa !848
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3260
  %117 = load ptr, ptr %116, align 8, !dbg !3260, !tbaa !848
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3260
  %119 = load ptr, ptr %118, align 8, !dbg !3260, !tbaa !848
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3260
  %121 = load ptr, ptr %120, align 8, !dbg !3260, !tbaa !848
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3260
  %123 = load ptr, ptr %122, align 8, !dbg !3260, !tbaa !848
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3260
  %125 = load ptr, ptr %124, align 8, !dbg !3260, !tbaa !848
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3260
  br label %147, !dbg !3261

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.16.111, i32 noundef 5) #39, !dbg !3262
  %129 = load ptr, ptr %4, align 8, !dbg !3262, !tbaa !848
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3262
  %131 = load ptr, ptr %130, align 8, !dbg !3262, !tbaa !848
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3262
  %133 = load ptr, ptr %132, align 8, !dbg !3262, !tbaa !848
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3262
  %135 = load ptr, ptr %134, align 8, !dbg !3262, !tbaa !848
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3262
  %137 = load ptr, ptr %136, align 8, !dbg !3262, !tbaa !848
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3262
  %139 = load ptr, ptr %138, align 8, !dbg !3262, !tbaa !848
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3262
  %141 = load ptr, ptr %140, align 8, !dbg !3262, !tbaa !848
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3262
  %143 = load ptr, ptr %142, align 8, !dbg !3262, !tbaa !848
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3262
  %145 = load ptr, ptr %144, align 8, !dbg !3262, !tbaa !848
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3262
  br label %147, !dbg !3263

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3264
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3265 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %1, metadata !3270, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %2, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %3, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %4, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 0, metadata !3274, metadata !DIExpression()), !dbg !3275
  br label %6, !dbg !3276

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3278
  call void @llvm.dbg.value(metadata i64 %7, metadata !3274, metadata !DIExpression()), !dbg !3275
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3279
  %9 = load ptr, ptr %8, align 8, !dbg !3279, !tbaa !848
  %10 = icmp eq ptr %9, null, !dbg !3281
  %11 = add i64 %7, 1, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %11, metadata !3274, metadata !DIExpression()), !dbg !3275
  br i1 %10, label %12, label %6, !dbg !3281, !llvm.loop !3283

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3285
  ret void, !dbg !3286
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3287 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3302, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %1, metadata !3303, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %2, metadata !3304, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %3, metadata !3305, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3306, metadata !DIExpression()), !dbg !3311
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3312
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3308, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 0, metadata !3307, metadata !DIExpression()), !dbg !3310
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3307, metadata !DIExpression()), !dbg !3310
  %10 = icmp sgt i32 %9, -1, !dbg !3314
  br i1 %10, label %18, label %11, !dbg !3314

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3314
  store i32 %12, ptr %7, align 8, !dbg !3314
  %13 = icmp ult i32 %9, -7, !dbg !3314
  br i1 %13, label %14, label %18, !dbg !3314

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3314
  %16 = sext i32 %9 to i64, !dbg !3314
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3314
  br label %22, !dbg !3314

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3314
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3314
  store ptr %21, ptr %4, align 8, !dbg !3314
  br label %22, !dbg !3314

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3314
  %25 = load ptr, ptr %24, align 8, !dbg !3314
  store ptr %25, ptr %6, align 8, !dbg !3317, !tbaa !848
  %26 = icmp eq ptr %25, null, !dbg !3318
  br i1 %26, label %197, label %27, !dbg !3319

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 1, metadata !3307, metadata !DIExpression()), !dbg !3310
  %28 = icmp sgt i32 %23, -1, !dbg !3314
  br i1 %28, label %36, label %29, !dbg !3314

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3314
  store i32 %30, ptr %7, align 8, !dbg !3314
  %31 = icmp ult i32 %23, -7, !dbg !3314
  br i1 %31, label %32, label %36, !dbg !3314

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3314
  %34 = sext i32 %23 to i64, !dbg !3314
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3314
  br label %40, !dbg !3314

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3314
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3314
  store ptr %39, ptr %4, align 8, !dbg !3314
  br label %40, !dbg !3314

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3314
  %43 = load ptr, ptr %42, align 8, !dbg !3314
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3320
  store ptr %43, ptr %44, align 8, !dbg !3317, !tbaa !848
  %45 = icmp eq ptr %43, null, !dbg !3318
  br i1 %45, label %197, label %46, !dbg !3319

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 2, metadata !3307, metadata !DIExpression()), !dbg !3310
  %47 = icmp sgt i32 %41, -1, !dbg !3314
  br i1 %47, label %55, label %48, !dbg !3314

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3314
  store i32 %49, ptr %7, align 8, !dbg !3314
  %50 = icmp ult i32 %41, -7, !dbg !3314
  br i1 %50, label %51, label %55, !dbg !3314

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3314
  %53 = sext i32 %41 to i64, !dbg !3314
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3314
  br label %59, !dbg !3314

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3314
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3314
  store ptr %58, ptr %4, align 8, !dbg !3314
  br label %59, !dbg !3314

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3314
  %62 = load ptr, ptr %61, align 8, !dbg !3314
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3320
  store ptr %62, ptr %63, align 8, !dbg !3317, !tbaa !848
  %64 = icmp eq ptr %62, null, !dbg !3318
  br i1 %64, label %197, label %65, !dbg !3319

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 3, metadata !3307, metadata !DIExpression()), !dbg !3310
  %66 = icmp sgt i32 %60, -1, !dbg !3314
  br i1 %66, label %74, label %67, !dbg !3314

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3314
  store i32 %68, ptr %7, align 8, !dbg !3314
  %69 = icmp ult i32 %60, -7, !dbg !3314
  br i1 %69, label %70, label %74, !dbg !3314

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3314
  %72 = sext i32 %60 to i64, !dbg !3314
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3314
  br label %78, !dbg !3314

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3314
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3314
  store ptr %77, ptr %4, align 8, !dbg !3314
  br label %78, !dbg !3314

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3314
  %81 = load ptr, ptr %80, align 8, !dbg !3314
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3320
  store ptr %81, ptr %82, align 8, !dbg !3317, !tbaa !848
  %83 = icmp eq ptr %81, null, !dbg !3318
  br i1 %83, label %197, label %84, !dbg !3319

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 4, metadata !3307, metadata !DIExpression()), !dbg !3310
  %85 = icmp sgt i32 %79, -1, !dbg !3314
  br i1 %85, label %93, label %86, !dbg !3314

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3314
  store i32 %87, ptr %7, align 8, !dbg !3314
  %88 = icmp ult i32 %79, -7, !dbg !3314
  br i1 %88, label %89, label %93, !dbg !3314

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3314
  %91 = sext i32 %79 to i64, !dbg !3314
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3314
  br label %97, !dbg !3314

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3314
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3314
  store ptr %96, ptr %4, align 8, !dbg !3314
  br label %97, !dbg !3314

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3314
  %100 = load ptr, ptr %99, align 8, !dbg !3314
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3320
  store ptr %100, ptr %101, align 8, !dbg !3317, !tbaa !848
  %102 = icmp eq ptr %100, null, !dbg !3318
  br i1 %102, label %197, label %103, !dbg !3319

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 5, metadata !3307, metadata !DIExpression()), !dbg !3310
  %104 = icmp sgt i32 %98, -1, !dbg !3314
  br i1 %104, label %112, label %105, !dbg !3314

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3314
  store i32 %106, ptr %7, align 8, !dbg !3314
  %107 = icmp ult i32 %98, -7, !dbg !3314
  br i1 %107, label %108, label %112, !dbg !3314

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3314
  %110 = sext i32 %98 to i64, !dbg !3314
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3314
  br label %116, !dbg !3314

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3314
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3314
  store ptr %115, ptr %4, align 8, !dbg !3314
  br label %116, !dbg !3314

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3314
  %119 = load ptr, ptr %118, align 8, !dbg !3314
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3320
  store ptr %119, ptr %120, align 8, !dbg !3317, !tbaa !848
  %121 = icmp eq ptr %119, null, !dbg !3318
  br i1 %121, label %197, label %122, !dbg !3319

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 6, metadata !3307, metadata !DIExpression()), !dbg !3310
  %123 = icmp sgt i32 %117, -1, !dbg !3314
  br i1 %123, label %131, label %124, !dbg !3314

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3314
  store i32 %125, ptr %7, align 8, !dbg !3314
  %126 = icmp ult i32 %117, -7, !dbg !3314
  br i1 %126, label %127, label %131, !dbg !3314

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3314
  %129 = sext i32 %117 to i64, !dbg !3314
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3314
  br label %135, !dbg !3314

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3314
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3314
  store ptr %134, ptr %4, align 8, !dbg !3314
  br label %135, !dbg !3314

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3314
  %138 = load ptr, ptr %137, align 8, !dbg !3314
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3320
  store ptr %138, ptr %139, align 8, !dbg !3317, !tbaa !848
  %140 = icmp eq ptr %138, null, !dbg !3318
  br i1 %140, label %197, label %141, !dbg !3319

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 7, metadata !3307, metadata !DIExpression()), !dbg !3310
  %142 = icmp sgt i32 %136, -1, !dbg !3314
  br i1 %142, label %150, label %143, !dbg !3314

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3314
  store i32 %144, ptr %7, align 8, !dbg !3314
  %145 = icmp ult i32 %136, -7, !dbg !3314
  br i1 %145, label %146, label %150, !dbg !3314

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3314
  %148 = sext i32 %136 to i64, !dbg !3314
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3314
  br label %154, !dbg !3314

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3314
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3314
  store ptr %153, ptr %4, align 8, !dbg !3314
  br label %154, !dbg !3314

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3314
  %157 = load ptr, ptr %156, align 8, !dbg !3314
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3320
  store ptr %157, ptr %158, align 8, !dbg !3317, !tbaa !848
  %159 = icmp eq ptr %157, null, !dbg !3318
  br i1 %159, label %197, label %160, !dbg !3319

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 8, metadata !3307, metadata !DIExpression()), !dbg !3310
  %161 = icmp sgt i32 %155, -1, !dbg !3314
  br i1 %161, label %169, label %162, !dbg !3314

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3314
  store i32 %163, ptr %7, align 8, !dbg !3314
  %164 = icmp ult i32 %155, -7, !dbg !3314
  br i1 %164, label %165, label %169, !dbg !3314

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3314
  %167 = sext i32 %155 to i64, !dbg !3314
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3314
  br label %173, !dbg !3314

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3314
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3314
  store ptr %172, ptr %4, align 8, !dbg !3314
  br label %173, !dbg !3314

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3314
  %176 = load ptr, ptr %175, align 8, !dbg !3314
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3320
  store ptr %176, ptr %177, align 8, !dbg !3317, !tbaa !848
  %178 = icmp eq ptr %176, null, !dbg !3318
  br i1 %178, label %197, label %179, !dbg !3319

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 9, metadata !3307, metadata !DIExpression()), !dbg !3310
  %180 = icmp sgt i32 %174, -1, !dbg !3314
  br i1 %180, label %188, label %181, !dbg !3314

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3314
  store i32 %182, ptr %7, align 8, !dbg !3314
  %183 = icmp ult i32 %174, -7, !dbg !3314
  br i1 %183, label %184, label %188, !dbg !3314

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3314
  %186 = sext i32 %174 to i64, !dbg !3314
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3314
  br label %191, !dbg !3314

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3314
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3314
  store ptr %190, ptr %4, align 8, !dbg !3314
  br label %191, !dbg !3314

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3314
  %193 = load ptr, ptr %192, align 8, !dbg !3314
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3320
  store ptr %193, ptr %194, align 8, !dbg !3317, !tbaa !848
  %195 = icmp eq ptr %193, null, !dbg !3318
  %196 = select i1 %195, i64 9, i64 10, !dbg !3319
  br label %197, !dbg !3319

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3321
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3322
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3323
  ret void, !dbg !3323
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3324 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %1, metadata !3329, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %2, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %3, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3334
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.va_start(ptr nonnull %5), !dbg !3336
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3337, !tbaa.struct !1323
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3337
  call void @llvm.va_end(ptr nonnull %5), !dbg !3338
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3339
  ret void, !dbg !3339
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3340 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3341, !tbaa !848
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %1), !dbg !3341
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.17.116, i32 noundef 5) #39, !dbg !3342
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.117) #39, !dbg !3342
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.19.118, i32 noundef 5) #39, !dbg !3343
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.119, ptr noundef nonnull @.str.21.120) #39, !dbg !3343
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.22.121, i32 noundef 5) #39, !dbg !3344
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.122) #39, !dbg !3344
  ret void, !dbg !3345
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3346 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 %2, metadata !3359, metadata !DIExpression()), !dbg !3360
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3362
  call void @llvm.dbg.value(metadata ptr %4, metadata !3363, metadata !DIExpression()), !dbg !3368
  %5 = icmp eq ptr %4, null, !dbg !3370
  br i1 %5, label %6, label %7, !dbg !3372

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3373
  unreachable, !dbg !3373

7:                                                ; preds = %3
  ret ptr %4, !dbg !3374
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %1, metadata !3358, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %2, metadata !3359, metadata !DIExpression()), !dbg !3375
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3376
  call void @llvm.dbg.value(metadata ptr %4, metadata !3363, metadata !DIExpression()), !dbg !3377
  %5 = icmp eq ptr %4, null, !dbg !3379
  br i1 %5, label %6, label %7, !dbg !3380

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3381
  unreachable, !dbg !3381

7:                                                ; preds = %3
  ret ptr %4, !dbg !3382
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3383 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3386
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3387
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3388
  %3 = icmp eq ptr %2, null, !dbg !3390
  br i1 %3, label %4, label %5, !dbg !3391

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3392
  unreachable, !dbg !3392

5:                                                ; preds = %1
  ret ptr %2, !dbg !3393
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3394 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %0, metadata !3400, metadata !DIExpression()), !dbg !3404
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3407
  %3 = icmp eq ptr %2, null, !dbg !3409
  br i1 %3, label %4, label %5, !dbg !3410

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3411
  unreachable, !dbg !3411

5:                                                ; preds = %1
  ret ptr %2, !dbg !3412
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3413 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3417, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3419
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3422
  %3 = icmp eq ptr %2, null, !dbg !3424
  br i1 %3, label %4, label %5, !dbg !3425

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3426
  unreachable, !dbg !3426

5:                                                ; preds = %1
  ret ptr %2, !dbg !3427
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3428 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3440
  %3 = icmp eq i64 %1, 0, !dbg !3442
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3442
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3443
  call void @llvm.dbg.value(metadata ptr %5, metadata !3363, metadata !DIExpression()), !dbg !3444
  %6 = icmp eq ptr %5, null, !dbg !3446
  br i1 %6, label %7, label %8, !dbg !3447

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3448
  unreachable, !dbg !3448

8:                                                ; preds = %2
  ret ptr %5, !dbg !3449
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3450 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata ptr %0, metadata !3458, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3464
  %3 = icmp eq i64 %1, 0, !dbg !3466
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3466
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3467
  call void @llvm.dbg.value(metadata ptr %5, metadata !3363, metadata !DIExpression()), !dbg !3468
  %6 = icmp eq ptr %5, null, !dbg !3470
  br i1 %6, label %7, label %8, !dbg !3471

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3472
  unreachable, !dbg !3472

8:                                                ; preds = %2
  ret ptr %5, !dbg !3473
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3474 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %2, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata ptr %0, metadata !3482, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %1, metadata !3485, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %2, metadata !3486, metadata !DIExpression()), !dbg !3487
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3489
  call void @llvm.dbg.value(metadata ptr %4, metadata !3363, metadata !DIExpression()), !dbg !3490
  %5 = icmp eq ptr %4, null, !dbg !3492
  br i1 %5, label %6, label %7, !dbg !3493

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3494
  unreachable, !dbg !3494

7:                                                ; preds = %3
  ret ptr %4, !dbg !3495
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3496 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i64 %1, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata ptr null, metadata !3355, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3503
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3505
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3506
  %4 = icmp eq ptr %3, null, !dbg !3508
  br i1 %4, label %5, label %6, !dbg !3509

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3510
  unreachable, !dbg !3510

6:                                                ; preds = %2
  ret ptr %3, !dbg !3511
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3512 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3516, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata ptr null, metadata !3478, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %0, metadata !3479, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %1, metadata !3480, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata ptr null, metadata !3482, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %0, metadata !3485, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i64 %1, metadata !3486, metadata !DIExpression()), !dbg !3521
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3523
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3524
  %4 = icmp eq ptr %3, null, !dbg !3526
  br i1 %4, label %5, label %6, !dbg !3527

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3528
  unreachable, !dbg !3528

6:                                                ; preds = %2
  ret ptr %3, !dbg !3529
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3534, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %1, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %0, metadata !785, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %1, metadata !786, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i64 1, metadata !787, metadata !DIExpression()), !dbg !3537
  %3 = load i64, ptr %1, align 8, !dbg !3539, !tbaa !2645
  call void @llvm.dbg.value(metadata i64 %3, metadata !788, metadata !DIExpression()), !dbg !3537
  %4 = icmp eq ptr %0, null, !dbg !3540
  br i1 %4, label %5, label %8, !dbg !3542

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3543
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3546
  br label %15, !dbg !3546

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3547
  %10 = add nuw i64 %9, 1, !dbg !3547
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3547
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3547
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %13, metadata !788, metadata !DIExpression()), !dbg !3537
  br i1 %12, label %14, label %15, !dbg !3550

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3551
  unreachable, !dbg !3551

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3537
  call void @llvm.dbg.value(metadata i64 %16, metadata !788, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %16, metadata !3358, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 1, metadata !3359, metadata !DIExpression()), !dbg !3552
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %17, metadata !3363, metadata !DIExpression()), !dbg !3555
  %18 = icmp eq ptr %17, null, !dbg !3557
  br i1 %18, label %19, label %20, !dbg !3558

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3559
  unreachable, !dbg !3559

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !785, metadata !DIExpression()), !dbg !3537
  store i64 %16, ptr %1, align 8, !dbg !3560, !tbaa !2645
  ret ptr %17, !dbg !3561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !780 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !785, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr %1, metadata !786, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %2, metadata !787, metadata !DIExpression()), !dbg !3562
  %4 = load i64, ptr %1, align 8, !dbg !3563, !tbaa !2645
  call void @llvm.dbg.value(metadata i64 %4, metadata !788, metadata !DIExpression()), !dbg !3562
  %5 = icmp eq ptr %0, null, !dbg !3564
  br i1 %5, label %6, label %13, !dbg !3565

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3566
  br i1 %7, label %8, label %20, !dbg !3567

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %9, metadata !788, metadata !DIExpression()), !dbg !3562
  %10 = icmp ugt i64 %2, 128, !dbg !3570
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %12, metadata !788, metadata !DIExpression()), !dbg !3562
  br label %20, !dbg !3572

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3573
  %15 = add nuw i64 %14, 1, !dbg !3573
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3573
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3573
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %18, metadata !788, metadata !DIExpression()), !dbg !3562
  br i1 %17, label %19, label %20, !dbg !3574

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3575
  unreachable, !dbg !3575

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3562
  call void @llvm.dbg.value(metadata i64 %21, metadata !788, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %21, metadata !3358, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %2, metadata !3359, metadata !DIExpression()), !dbg !3576
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3578
  call void @llvm.dbg.value(metadata ptr %22, metadata !3363, metadata !DIExpression()), !dbg !3579
  %23 = icmp eq ptr %22, null, !dbg !3581
  br i1 %23, label %24, label %25, !dbg !3582

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3583
  unreachable, !dbg !3583

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !785, metadata !DIExpression()), !dbg !3562
  store i64 %21, ptr %1, align 8, !dbg !3584, !tbaa !2645
  ret ptr %22, !dbg !3585
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !792 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !800, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %1, metadata !801, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %2, metadata !802, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %3, metadata !803, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %4, metadata !804, metadata !DIExpression()), !dbg !3586
  %6 = load i64, ptr %1, align 8, !dbg !3587, !tbaa !2645
  call void @llvm.dbg.value(metadata i64 %6, metadata !805, metadata !DIExpression()), !dbg !3586
  %7 = ashr i64 %6, 1, !dbg !3588
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3588
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3588
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %10, metadata !806, metadata !DIExpression()), !dbg !3586
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3590
  call void @llvm.dbg.value(metadata i64 %11, metadata !806, metadata !DIExpression()), !dbg !3586
  %12 = icmp sgt i64 %3, -1, !dbg !3591
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3593
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %15, metadata !806, metadata !DIExpression()), !dbg !3586
  %16 = icmp slt i64 %4, 0, !dbg !3594
  br i1 %16, label %17, label %30, !dbg !3594

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3594
  br i1 %18, label %19, label %24, !dbg !3594

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3594
  %21 = udiv i64 9223372036854775807, %20, !dbg !3594
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3594
  br i1 %23, label %46, label %43, !dbg !3594

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3594
  br i1 %25, label %43, label %26, !dbg !3594

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3594
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3594
  %29 = icmp ult i64 %28, %15, !dbg !3594
  br i1 %29, label %46, label %43, !dbg !3594

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3594
  br i1 %31, label %43, label %32, !dbg !3594

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3594
  br i1 %33, label %34, label %40, !dbg !3594

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3594
  br i1 %35, label %43, label %36, !dbg !3594

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3594
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3594
  %39 = icmp ult i64 %38, %4, !dbg !3594
  br i1 %39, label %46, label %43, !dbg !3594

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3594
  br i1 %42, label %46, label %43, !dbg !3594

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3586
  %44 = mul i64 %15, %4, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %44, metadata !807, metadata !DIExpression()), !dbg !3586
  %45 = icmp slt i64 %44, 128, !dbg !3594
  br i1 %45, label %46, label %52, !dbg !3594

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !808, metadata !DIExpression()), !dbg !3586
  %48 = sdiv i64 %47, %4, !dbg !3595
  call void @llvm.dbg.value(metadata i64 %48, metadata !806, metadata !DIExpression()), !dbg !3586
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %51, metadata !807, metadata !DIExpression()), !dbg !3586
  br label %52, !dbg !3599

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3586
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3586
  call void @llvm.dbg.value(metadata i64 %54, metadata !807, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %53, metadata !806, metadata !DIExpression()), !dbg !3586
  %55 = icmp eq ptr %0, null, !dbg !3600
  br i1 %55, label %56, label %57, !dbg !3602

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3603, !tbaa !2645
  br label %57, !dbg !3604

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3605
  %59 = icmp slt i64 %58, %2, !dbg !3607
  br i1 %59, label %60, label %97, !dbg !3608

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3609
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3609
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %63, metadata !806, metadata !DIExpression()), !dbg !3586
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3610
  br i1 %66, label %96, label %67, !dbg !3610

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3611

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3611
  br i1 %69, label %70, label %75, !dbg !3611

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3611
  %72 = udiv i64 9223372036854775807, %71, !dbg !3611
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3611
  br i1 %74, label %96, label %94, !dbg !3611

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3611
  br i1 %76, label %94, label %77, !dbg !3611

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3611
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3611
  %80 = icmp ult i64 %79, %63, !dbg !3611
  br i1 %80, label %96, label %94, !dbg !3611

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3611
  br i1 %82, label %94, label %83, !dbg !3611

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3611
  br i1 %84, label %85, label %91, !dbg !3611

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3611
  br i1 %86, label %94, label %87, !dbg !3611

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3611
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3611
  %90 = icmp ult i64 %89, %4, !dbg !3611
  br i1 %90, label %96, label %94, !dbg !3611

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3611
  br i1 %93, label %96, label %94, !dbg !3611

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3586
  %95 = mul i64 %63, %4, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %95, metadata !807, metadata !DIExpression()), !dbg !3586
  br label %97, !dbg !3612

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !3613
  unreachable, !dbg !3613

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3586
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3586
  call void @llvm.dbg.value(metadata i64 %99, metadata !807, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %98, metadata !806, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i64 %99, metadata !3433, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 %99, metadata !3439, metadata !DIExpression()), !dbg !3616
  %100 = icmp eq i64 %99, 0, !dbg !3618
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3618
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !3619
  call void @llvm.dbg.value(metadata ptr %102, metadata !3363, metadata !DIExpression()), !dbg !3620
  %103 = icmp eq ptr %102, null, !dbg !3622
  br i1 %103, label %104, label %105, !dbg !3623

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !3624
  unreachable, !dbg !3624

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !800, metadata !DIExpression()), !dbg !3586
  store i64 %98, ptr %1, align 8, !dbg !3625, !tbaa !2645
  ret ptr %102, !dbg !3626
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3627 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3629, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i64 1, metadata !3634, metadata !DIExpression()), !dbg !3635
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3638
  %3 = icmp eq ptr %2, null, !dbg !3640
  br i1 %3, label %4, label %5, !dbg !3641

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3642
  unreachable, !dbg !3642

5:                                                ; preds = %1
  ret ptr %2, !dbg !3643
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3644 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3632 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3631, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3634, metadata !DIExpression()), !dbg !3645
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3646
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3647
  %4 = icmp eq ptr %3, null, !dbg !3649
  br i1 %4, label %5, label %6, !dbg !3650

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3651
  unreachable, !dbg !3651

6:                                                ; preds = %2
  ret ptr %3, !dbg !3652
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3653 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %0, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 1, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 1, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 1, metadata !3666, metadata !DIExpression()), !dbg !3667
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3669
  call void @llvm.dbg.value(metadata ptr %2, metadata !3363, metadata !DIExpression()), !dbg !3670
  %3 = icmp eq ptr %2, null, !dbg !3672
  br i1 %3, label %4, label %5, !dbg !3673

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3674
  unreachable, !dbg !3674

5:                                                ; preds = %1
  ret ptr %2, !dbg !3675
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3658 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3657, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %0, metadata !3663, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %1, metadata !3666, metadata !DIExpression()), !dbg !3677
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3680
  %4 = icmp eq ptr %3, null, !dbg !3682
  br i1 %4, label %5, label %6, !dbg !3683

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3684
  unreachable, !dbg !3684

6:                                                ; preds = %2
  ret ptr %3, !dbg !3685
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3686 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %1, metadata !3385, metadata !DIExpression()), !dbg !3693
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3695
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3696
  %4 = icmp eq ptr %3, null, !dbg !3698
  br i1 %4, label %5, label %6, !dbg !3699

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3700
  unreachable, !dbg !3700

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3706
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3708
  ret ptr %3, !dbg !3709
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3710 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i64 %1, metadata !3398, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %1, metadata !3400, metadata !DIExpression()), !dbg !3719
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3721
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3722
  %4 = icmp eq ptr %3, null, !dbg !3724
  br i1 %4, label %5, label %6, !dbg !3725

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3726
  unreachable, !dbg !3726

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3701, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3727
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3729
  ret ptr %3, !dbg !3730
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %1, metadata !3736, metadata !DIExpression()), !dbg !3738
  %3 = add nsw i64 %1, 1, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %3, metadata !3398, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %3, metadata !3400, metadata !DIExpression()), !dbg !3742
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3744
  call void @llvm.dbg.value(metadata ptr %4, metadata !3363, metadata !DIExpression()), !dbg !3745
  %5 = icmp eq ptr %4, null, !dbg !3747
  br i1 %5, label %6, label %7, !dbg !3748

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3749
  unreachable, !dbg !3749

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3737, metadata !DIExpression()), !dbg !3738
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3750
  store i8 0, ptr %8, align 1, !dbg !3751, !tbaa !925
  call void @llvm.dbg.value(metadata ptr %4, metadata !3701, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3754
  ret ptr %4, !dbg !3755
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3756 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3759
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3760
  %3 = add i64 %2, 1, !dbg !3761
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %3, metadata !3691, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %3, metadata !3385, metadata !DIExpression()), !dbg !3764
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3766
  call void @llvm.dbg.value(metadata ptr %4, metadata !3363, metadata !DIExpression()), !dbg !3767
  %5 = icmp eq ptr %4, null, !dbg !3769
  br i1 %5, label %6, label %7, !dbg !3770

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3771
  unreachable, !dbg !3771

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3701, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %3, metadata !3705, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3774
  ret ptr %4, !dbg !3775
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3776 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3780, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %1, metadata !3778, metadata !DIExpression()), !dbg !3781
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #39, !dbg !3780
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #39, !dbg !3780
  %3 = icmp eq i32 %1, 0, !dbg !3780
  tail call void @llvm.assume(i1 %3), !dbg !3780
  tail call void @abort() #41, !dbg !3782
  unreachable, !dbg !3782
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !3783 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3785, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3790
  br label %2, !dbg !3791

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3790
  call void @llvm.dbg.value(metadata ptr %3, metadata !3786, metadata !DIExpression()), !dbg !3790
  %4 = load i8, ptr %3, align 1, !dbg !3792, !tbaa !925
  %5 = icmp eq i8 %4, 47, !dbg !3792
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3793
  call void @llvm.dbg.value(metadata ptr %6, metadata !3786, metadata !DIExpression()), !dbg !3790
  br i1 %5, label %2, label %7, !dbg !3791, !llvm.loop !3794

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3795
  %9 = phi ptr [ %16, %15 ], [ %3, %2 ], !dbg !3797
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi ptr [ %18, %15 ], [ %3, %2 ], !dbg !3798
  call void @llvm.dbg.value(metadata ptr %11, metadata !3788, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i8 poison, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata ptr %9, metadata !3786, metadata !DIExpression()), !dbg !3790
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3800

12:                                               ; preds = %7
  ret ptr %9, !dbg !3801

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3802
  br label %15, !dbg !3802

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3790
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata ptr %16, metadata !3786, metadata !DIExpression()), !dbg !3790
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3805
  call void @llvm.dbg.value(metadata ptr %18, metadata !3788, metadata !DIExpression()), !dbg !3799
  %19 = load i8, ptr %18, align 1, !dbg !3795, !tbaa !925
  br label %7, !dbg !3806, !llvm.loop !3807
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3809 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3813, metadata !DIExpression()), !dbg !3816
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %2, metadata !3814, metadata !DIExpression()), !dbg !3816
  %3 = icmp ne i64 %2, 0, !dbg !3819
  %4 = zext i1 %3 to i64, !dbg !3819
  br label %5, !dbg !3819

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3820
  call void @llvm.dbg.value(metadata i64 %6, metadata !3814, metadata !DIExpression()), !dbg !3816
  %7 = icmp ugt i64 %6, 1, !dbg !3821
  br i1 %7, label %8, label %13, !dbg !3823

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3824
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3824
  %11 = load i8, ptr %10, align 1, !dbg !3824, !tbaa !925
  %12 = icmp eq i8 %11, 47, !dbg !3824
  br i1 %12, label %5, label %13, !dbg !3825, !llvm.loop !3826

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3820
  call void @llvm.dbg.value(metadata i64 0, metadata !3815, metadata !DIExpression()), !dbg !3816
  ret i64 %14, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3829 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3867, metadata !DIExpression()), !dbg !3872
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3873
  call void @llvm.dbg.value(metadata i1 poison, metadata !3868, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3877
  %3 = load i32, ptr %0, align 8, !dbg !3879, !tbaa !1202
  %4 = and i32 %3, 32, !dbg !3880
  %5 = icmp eq i32 %4, 0, !dbg !3880
  call void @llvm.dbg.value(metadata i1 %5, metadata !3870, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3872
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3881
  %7 = icmp eq i32 %6, 0, !dbg !3882
  call void @llvm.dbg.value(metadata i1 %7, metadata !3871, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3872
  br i1 %5, label %8, label %18, !dbg !3883

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %9, metadata !3868, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3872
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3886
  %11 = xor i1 %7, true, !dbg !3886
  %12 = sext i1 %11 to i32, !dbg !3886
  br i1 %10, label %21, label %13, !dbg !3886

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3887
  %15 = load i32, ptr %14, align 4, !dbg !3887, !tbaa !916
  %16 = icmp ne i32 %15, 9, !dbg !3888
  %17 = sext i1 %16 to i32, !dbg !3889
  br label %21, !dbg !3889

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3890

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3892
  store i32 0, ptr %20, align 4, !dbg !3894, !tbaa !916
  br label %21, !dbg !3892

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3872
  ret i32 %22, !dbg !3895
}

; Function Attrs: nounwind
declare !dbg !3896 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3900 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3939, metadata !DIExpression()), !dbg !3942
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %2, metadata !3940, metadata !DIExpression()), !dbg !3942
  %3 = icmp slt i32 %2, 0, !dbg !3944
  br i1 %3, label %4, label %6, !dbg !3946

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3947
  br label %24, !dbg !3948

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3949
  %8 = icmp eq i32 %7, 0, !dbg !3949
  br i1 %8, label %13, label %9, !dbg !3951

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3952
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3953
  %12 = icmp eq i64 %11, -1, !dbg !3954
  br i1 %12, label %16, label %13, !dbg !3955

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3956
  %15 = icmp eq i32 %14, 0, !dbg !3956
  br i1 %15, label %16, label %18, !dbg !3957

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3939, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3941, metadata !DIExpression()), !dbg !3942
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3958
  call void @llvm.dbg.value(metadata i32 %17, metadata !3941, metadata !DIExpression()), !dbg !3942
  br label %24, !dbg !3959

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3960
  %20 = load i32, ptr %19, align 4, !dbg !3960, !tbaa !916
  call void @llvm.dbg.value(metadata i32 %20, metadata !3939, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3941, metadata !DIExpression()), !dbg !3942
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3958
  call void @llvm.dbg.value(metadata i32 %21, metadata !3941, metadata !DIExpression()), !dbg !3942
  %22 = icmp eq i32 %20, 0, !dbg !3961
  br i1 %22, label %24, label %23, !dbg !3959

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3963, !tbaa !916
  call void @llvm.dbg.value(metadata i32 -1, metadata !3941, metadata !DIExpression()), !dbg !3942
  br label %24, !dbg !3965

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3942
  ret i32 %25, !dbg !3966
}

; Function Attrs: nofree nounwind
declare !dbg !3967 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3968 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3969 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3970 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3973 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4011, metadata !DIExpression()), !dbg !4012
  %2 = icmp eq ptr %0, null, !dbg !4013
  br i1 %2, label %6, label %3, !dbg !4015

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4016
  %5 = icmp eq i32 %4, 0, !dbg !4016
  br i1 %5, label %6, label %8, !dbg !4017

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4018
  br label %16, !dbg !4019

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4020, metadata !DIExpression()), !dbg !4025
  %9 = load i32, ptr %0, align 8, !dbg !4027, !tbaa !1202
  %10 = and i32 %9, 256, !dbg !4029
  %11 = icmp eq i32 %10, 0, !dbg !4029
  br i1 %11, label %14, label %12, !dbg !4030

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4031
  br label %14, !dbg !4031

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4032
  br label %16, !dbg !4033

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4012
  ret i32 %17, !dbg !4034
}

; Function Attrs: nofree nounwind
declare !dbg !4035 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4036 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4075, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32 %2, metadata !4077, metadata !DIExpression()), !dbg !4081
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4082
  %5 = load ptr, ptr %4, align 8, !dbg !4082, !tbaa !4083
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4084
  %7 = load ptr, ptr %6, align 8, !dbg !4084, !tbaa !4085
  %8 = icmp eq ptr %5, %7, !dbg !4086
  br i1 %8, label %9, label %27, !dbg !4087

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4088
  %11 = load ptr, ptr %10, align 8, !dbg !4088, !tbaa !1435
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4089
  %13 = load ptr, ptr %12, align 8, !dbg !4089, !tbaa !4090
  %14 = icmp eq ptr %11, %13, !dbg !4091
  br i1 %14, label %15, label %27, !dbg !4092

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4093
  %17 = load ptr, ptr %16, align 8, !dbg !4093, !tbaa !4094
  %18 = icmp eq ptr %17, null, !dbg !4095
  br i1 %18, label %19, label %27, !dbg !4096

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4097
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4098
  call void @llvm.dbg.value(metadata i64 %21, metadata !4078, metadata !DIExpression()), !dbg !4099
  %22 = icmp eq i64 %21, -1, !dbg !4100
  br i1 %22, label %29, label %23, !dbg !4102

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4103, !tbaa !1202
  %25 = and i32 %24, -17, !dbg !4103
  store i32 %25, ptr %0, align 8, !dbg !4103, !tbaa !1202
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4104
  store i64 %21, ptr %26, align 8, !dbg !4105, !tbaa !4106
  br label %29, !dbg !4107

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4108
  br label %29, !dbg !4109

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4081
  ret i32 %30, !dbg !4110
}

; Function Attrs: nofree nounwind
declare !dbg !4111 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4114 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %1, metadata !4120, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %2, metadata !4121, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %3, metadata !4122, metadata !DIExpression()), !dbg !4124
  %5 = icmp eq ptr %1, null, !dbg !4125
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4127
  %7 = select i1 %5, ptr @.str.150, ptr %1, !dbg !4127
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %8, metadata !4121, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %7, metadata !4120, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %6, metadata !4119, metadata !DIExpression()), !dbg !4124
  %9 = icmp eq ptr %3, null, !dbg !4128
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4130
  call void @llvm.dbg.value(metadata ptr %10, metadata !4122, metadata !DIExpression()), !dbg !4124
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4131
  call void @llvm.dbg.value(metadata i64 %11, metadata !4123, metadata !DIExpression()), !dbg !4124
  %12 = icmp ult i64 %11, -3, !dbg !4132
  br i1 %12, label %13, label %17, !dbg !4134

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4135
  %15 = icmp eq i32 %14, 0, !dbg !4135
  br i1 %15, label %16, label %29, !dbg !4136

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4137, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata ptr %10, metadata !4144, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 0, metadata !4147, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i64 8, metadata !4148, metadata !DIExpression()), !dbg !4149
  store i64 0, ptr %10, align 1, !dbg !4151
  br label %29, !dbg !4152

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4153
  br i1 %18, label %19, label %20, !dbg !4155

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4156
  unreachable, !dbg !4156

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4157

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4159
  br i1 %23, label %29, label %24, !dbg !4160

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4161
  br i1 %25, label %29, label %26, !dbg !4164

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4165, !tbaa !925
  %28 = zext i8 %27 to i32, !dbg !4166
  store i32 %28, ptr %6, align 4, !dbg !4167, !tbaa !916
  br label %29, !dbg !4168

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4124
  ret i64 %30, !dbg !4169
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4170 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4176 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4178, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %1, metadata !4179, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %2, metadata !4180, metadata !DIExpression()), !dbg !4182
  %4 = icmp eq i64 %2, 0, !dbg !4183
  br i1 %4, label %8, label %5, !dbg !4183

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4183
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4183
  br i1 %7, label %13, label %8, !dbg !4183

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4182
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4182
  %9 = mul i64 %2, %1, !dbg !4183
  call void @llvm.dbg.value(metadata i64 %9, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %0, metadata !4185, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %9, metadata !4188, metadata !DIExpression()), !dbg !4189
  %10 = icmp eq i64 %9, 0, !dbg !4191
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4191
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4192
  br label %15, !dbg !4193

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4181, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4182
  %14 = tail call ptr @__errno_location() #42, !dbg !4194
  store i32 12, ptr %14, align 4, !dbg !4196, !tbaa !916
  br label %15, !dbg !4197

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4182
  ret ptr %16, !dbg !4198
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4199 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4203, metadata !DIExpression()), !dbg !4208
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4209
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4204, metadata !DIExpression()), !dbg !4210
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4211
  %4 = icmp eq i32 %3, 0, !dbg !4211
  br i1 %4, label %5, label %12, !dbg !4213

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4214, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata ptr @.str.155, metadata !4217, metadata !DIExpression()), !dbg !4218
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.155, i64 2), !dbg !4221
  %7 = icmp eq i32 %6, 0, !dbg !4222
  br i1 %7, label %11, label %8, !dbg !4223

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4214, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr @.str.1.156, metadata !4217, metadata !DIExpression()), !dbg !4224
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.156, i64 6), !dbg !4226
  %10 = icmp eq i32 %9, 0, !dbg !4227
  br i1 %10, label %11, label %12, !dbg !4228

11:                                               ; preds = %8, %5
  br label %12, !dbg !4229

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4208
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4230
  ret i1 %13, !dbg !4230
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr %1, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i64 %2, metadata !4237, metadata !DIExpression()), !dbg !4238
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4239
  ret i32 %4, !dbg !4240
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4245, metadata !DIExpression()), !dbg !4246
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4247
  ret ptr %2, !dbg !4248
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4251, metadata !DIExpression()), !dbg !4253
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4254
  call void @llvm.dbg.value(metadata ptr %2, metadata !4252, metadata !DIExpression()), !dbg !4253
  ret ptr %2, !dbg !4255
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4258, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata ptr %1, metadata !4259, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %2, metadata !4260, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i32 %0, metadata !4251, metadata !DIExpression()), !dbg !4266
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4268
  call void @llvm.dbg.value(metadata ptr %4, metadata !4252, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata ptr %4, metadata !4261, metadata !DIExpression()), !dbg !4265
  %5 = icmp eq ptr %4, null, !dbg !4269
  br i1 %5, label %6, label %9, !dbg !4270

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4271
  br i1 %7, label %19, label %8, !dbg !4274

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4275, !tbaa !925
  br label %19, !dbg !4276

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4277
  call void @llvm.dbg.value(metadata i64 %10, metadata !4262, metadata !DIExpression()), !dbg !4278
  %11 = icmp ult i64 %10, %2, !dbg !4279
  br i1 %11, label %12, label %14, !dbg !4281

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4282
  call void @llvm.dbg.value(metadata ptr %1, metadata !4284, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %4, metadata !4287, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %13, metadata !4288, metadata !DIExpression()), !dbg !4289
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4291
  br label %19, !dbg !4292

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4293
  br i1 %15, label %19, label %16, !dbg !4296

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4297
  call void @llvm.dbg.value(metadata ptr %1, metadata !4284, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata ptr %4, metadata !4287, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %17, metadata !4288, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4301
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4302
  store i8 0, ptr %18, align 1, !dbg !4303, !tbaa !925
  br label %19, !dbg !4304

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4305
  ret i32 %20, !dbg !4306
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
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!136, !386, !390, !405, !727, !466, !761, !763, !766, !768, !483, !503, !517, !565, !770, !719, !776, !810, !812, !814, !816, !818, !820, !743, !822, !825, !827, !829}
!llvm.ident = !{!831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831, !831}
!llvm.module.flags = !{!832, !833, !834, !835, !836, !837, !838}

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
!136 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !137, retainedTypes: !177, globals: !190, splitDebugInlining: false, nameTableKind: None)
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
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 46, baseType: !188)
!187 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!386 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !387, splitDebugInlining: false, nameTableKind: None)
!387 = !{!381, !384}
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "file_name", scope: !390, file: !391, line: 45, type: !134, isLocal: true, isDefinition: true)
!390 = distinct !DICompileUnit(language: DW_LANG_C11, file: !391, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !392, splitDebugInlining: false, nameTableKind: None)
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
!404 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !405, file: !406, line: 66, type: !457, isLocal: false, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!407 = !{!178, !189}
!408 = !{!409, !411, !436, !438, !440, !442, !403, !444, !446, !448, !450, !455}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 272, type: !90, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "old_file_name", scope: !413, file: !406, line: 304, type: !134, isLocal: true, isDefinition: true)
!413 = distinct !DISubprogram(name: "verror_at_line", scope: !406, file: !406, line: 298, type: !414, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !429)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !184, !184, !134, !139, !134, !416}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !417, line: 52, baseType: !418)
!417 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !419, line: 14, baseType: !420)
!419 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !421, baseType: !422)
!421 = !DIFile(filename: "lib/error.c", directory: "/src")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !423)
!423 = !{!424, !425, !426, !427, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !422, file: !421, baseType: !178, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !422, file: !421, baseType: !178, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !422, file: !421, baseType: !178, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !422, file: !421, baseType: !184, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !422, file: !421, baseType: !184, size: 32, offset: 224)
!429 = !{!430, !431, !432, !433, !434, !435}
!430 = !DILocalVariable(name: "status", arg: 1, scope: !413, file: !406, line: 298, type: !184)
!431 = !DILocalVariable(name: "errnum", arg: 2, scope: !413, file: !406, line: 298, type: !184)
!432 = !DILocalVariable(name: "file_name", arg: 3, scope: !413, file: !406, line: 298, type: !134)
!433 = !DILocalVariable(name: "line_number", arg: 4, scope: !413, file: !406, line: 298, type: !139)
!434 = !DILocalVariable(name: "message", arg: 5, scope: !413, file: !406, line: 298, type: !134)
!435 = !DILocalVariable(name: "args", arg: 6, scope: !413, file: !406, line: 298, type: !416)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "old_line_number", scope: !413, file: !406, line: 305, type: !139, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !406, line: 338, type: !197, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !229, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !204, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "error_message_count", scope: !405, file: !406, line: 69, type: !139, isLocal: false, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !405, file: !406, line: 295, type: !184, isLocal: false, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !224, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 21)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !406, line: 214, type: !90, isLocal: true, isDefinition: true)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null}
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !462, file: !463, line: 506, type: !184, isLocal: true, isDefinition: true)
!462 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !463, file: !463, line: 485, type: !464, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !468)
!463 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!464 = !DISubroutineType(types: !465)
!465 = !{!184, !184, !184}
!466 = distinct !DICompileUnit(language: DW_LANG_C11, file: !463, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !467, splitDebugInlining: false, nameTableKind: None)
!467 = !{!460}
!468 = !{!469, !470, !471, !472, !475}
!469 = !DILocalVariable(name: "fd", arg: 1, scope: !462, file: !463, line: 485, type: !184)
!470 = !DILocalVariable(name: "target", arg: 2, scope: !462, file: !463, line: 485, type: !184)
!471 = !DILocalVariable(name: "result", scope: !462, file: !463, line: 487, type: !184)
!472 = !DILocalVariable(name: "flags", scope: !473, file: !463, line: 530, type: !184)
!473 = distinct !DILexicalBlock(scope: !474, file: !463, line: 529, column: 5)
!474 = distinct !DILexicalBlock(scope: !462, file: !463, line: 528, column: 7)
!475 = !DILocalVariable(name: "saved_errno", scope: !476, file: !463, line: 533, type: !184)
!476 = distinct !DILexicalBlock(scope: !477, file: !463, line: 532, column: 9)
!477 = distinct !DILexicalBlock(scope: !473, file: !463, line: 531, column: 11)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !480, line: 60, type: !204, isLocal: true, isDefinition: true)
!480 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "long_options", scope: !483, file: !480, line: 34, type: !491, isLocal: true, isDefinition: true)
!483 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !484, splitDebugInlining: false, nameTableKind: None)
!484 = !{!478, !485, !487, !489, !481}
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !480, line: 112, type: !44, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !480, line: 36, type: !90, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !480, line: 37, type: !229, isLocal: true, isDefinition: true)
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
!503 = distinct !DICompileUnit(language: DW_LANG_C11, file: !504, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, globals: !506, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!505 = !{!330}
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
!517 = distinct !DICompileUnit(language: DW_LANG_C11, file: !514, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !518, splitDebugInlining: false, nameTableKind: None)
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
!564 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !565, file: !544, line: 76, type: !637, isLocal: false, isDefinition: true)
!565 = distinct !DICompileUnit(language: DW_LANG_C11, file: !544, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !572, globals: !573, splitDebugInlining: false, nameTableKind: None)
!566 = !{!148, !567, !162}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !149, line: 254, baseType: !139, size: 32, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!570 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!571 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!572 = !{!184, !185, !186}
!573 = !{!542, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !574, !578, !588, !590, !595, !597, !599, !601, !603, !626, !633, !635}
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !565, file: !544, line: 92, type: !576, isLocal: false, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 320, elements: !50)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !565, file: !544, line: 1040, type: !580, isLocal: false, isDefinition: true)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !544, line: 56, size: 448, elements: !581)
!581 = !{!582, !583, !584, !586, !587}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !580, file: !544, line: 59, baseType: !148, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !544, line: 62, baseType: !184, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !580, file: !544, line: 66, baseType: !585, size: 256, offset: 64)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !230)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !580, file: !544, line: 69, baseType: !134, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !580, file: !544, line: 72, baseType: !134, size: 64, offset: 384)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !565, file: !544, line: 107, type: !580, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "slot0", scope: !565, file: !544, line: 831, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 256)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !544, line: 321, type: !204, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !544, line: 357, type: !204, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !544, line: 358, type: !204, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !544, line: 199, type: !224, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "quote", scope: !605, file: !544, line: 228, type: !624, isLocal: true, isDefinition: true)
!605 = distinct !DISubprogram(name: "gettext_quote", scope: !544, file: !544, line: 197, type: !606, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!134, !134, !148}
!608 = !{!609, !610, !611, !612, !613}
!609 = !DILocalVariable(name: "msgid", arg: 1, scope: !605, file: !544, line: 197, type: !134)
!610 = !DILocalVariable(name: "s", arg: 2, scope: !605, file: !544, line: 197, type: !148)
!611 = !DILocalVariable(name: "translation", scope: !605, file: !544, line: 199, type: !134)
!612 = !DILocalVariable(name: "w", scope: !605, file: !544, line: 229, type: !524)
!613 = !DILocalVariable(name: "mbs", scope: !605, file: !544, line: 230, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !616, file: !532, line: 15, baseType: !184, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !616, file: !532, line: 20, baseType: !620, size: 32, offset: 32)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !532, line: 16, size: 32, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !620, file: !532, line: 18, baseType: !139, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !620, file: !532, line: 19, baseType: !197, size: 32)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !625)
!625 = !{!206, !199}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "slotvec", scope: !565, file: !544, line: 834, type: !628, isLocal: true, isDefinition: true)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !544, line: 823, size: 128, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !629, file: !544, line: 825, baseType: !186, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !629, file: !544, line: 826, baseType: !330, size: 64, offset: 64)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "nslots", scope: !565, file: !544, line: 832, type: !184, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "slotvec0", scope: !565, file: !544, line: 833, type: !629, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 704, elements: !639)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!639 = !{!640}
!640 = !DISubrange(count: 11)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !643, line: 67, type: !299, isLocal: true, isDefinition: true)
!643 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !643, line: 69, type: !224, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !643, line: 83, type: !224, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !643, line: 83, type: !197, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !643, line: 85, type: !204, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !643, line: 88, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 171)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !643, line: 88, type: !120, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !643, line: 105, type: !59, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !643, line: 109, type: !105, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !643, line: 113, type: !665, isLocal: true, isDefinition: true)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 28)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !643, line: 120, type: !670, isLocal: true, isDefinition: true)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 32)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !643, line: 127, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 36)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !643, line: 134, type: !14, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !643, line: 142, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 44)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !643, line: 150, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 48)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !643, line: 159, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 52)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !643, line: 170, type: !697, isLocal: true, isDefinition: true)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 60)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !643, line: 248, type: !372, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !643, line: 248, type: !275, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !643, line: 254, type: !372, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !643, line: 254, type: !64, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !643, line: 254, type: !14, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !643, line: 259, type: !3, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !643, line: 259, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 29)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !719, file: !720, line: 26, type: !722, isLocal: false, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!721 = !{!717}
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 47)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "exit_failure", scope: !727, file: !728, line: 24, type: !730, isLocal: false, isDefinition: true)
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !729, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!729 = !{!725}
!730 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !733, line: 34, type: !213, isLocal: true, isDefinition: true)
!733 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !733, line: 34, type: !224, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !733, line: 34, type: !246, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !740, line: 108, type: !44, isLocal: true, isDefinition: true)
!740 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "internal_state", scope: !743, file: !740, line: 97, type: !746, isLocal: true, isDefinition: true)
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !740, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !744, globals: !745, splitDebugInlining: false, nameTableKind: None)
!744 = !{!178, !186, !189}
!745 = !{!738, !741}
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !530, line: 6, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !532, line: 21, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 13, size: 64, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !748, file: !532, line: 15, baseType: !184, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !748, file: !532, line: 20, baseType: !752, size: 32, offset: 32)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !532, line: 16, size: 32, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !752, file: !532, line: 18, baseType: !139, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !752, file: !532, line: 19, baseType: !197, size: 32)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !758, line: 35, type: !204, isLocal: true, isDefinition: true)
!758 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !758, line: 35, type: !19, isLocal: true, isDefinition: true)
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/fd-reopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "062fe9c324b2740011a864ab02c109e2")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!764 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!765 = !{!178}
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !643, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !771, retainedTypes: !765, globals: !775, splitDebugInlining: false, nameTableKind: None)
!771 = !{!772}
!772 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !643, line: 40, baseType: !139, size: 32, elements: !773)
!773 = !{!774}
!774 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!775 = !{!641, !644, !646, !648, !650, !652, !657, !659, !661, !663, !668, !673, !678, !680, !685, !690, !695, !700, !702, !704, !706, !708, !710, !712}
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !778, retainedTypes: !809, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!778 = !{!779, !791}
!779 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !780, file: !777, line: 188, baseType: !139, size: 32, elements: !789)
!780 = distinct !DISubprogram(name: "x2nrealloc", scope: !777, file: !777, line: 176, type: !781, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !784)
!781 = !DISubroutineType(types: !782)
!782 = !{!178, !178, !783, !186}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!784 = !{!785, !786, !787, !788}
!785 = !DILocalVariable(name: "p", arg: 1, scope: !780, file: !777, line: 176, type: !178)
!786 = !DILocalVariable(name: "pn", arg: 2, scope: !780, file: !777, line: 176, type: !783)
!787 = !DILocalVariable(name: "s", arg: 3, scope: !780, file: !777, line: 176, type: !186)
!788 = !DILocalVariable(name: "n", scope: !780, file: !777, line: 178, type: !186)
!789 = !{!790}
!790 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!791 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !792, file: !777, line: 228, baseType: !139, size: 32, elements: !789)
!792 = distinct !DISubprogram(name: "xpalloc", scope: !777, file: !777, line: 223, type: !793, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !799)
!793 = !DISubroutineType(types: !794)
!794 = !{!178, !178, !795, !796, !798, !796}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !797, line: 130, baseType: !798)
!797 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !187, line: 35, baseType: !351)
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808}
!800 = !DILocalVariable(name: "pa", arg: 1, scope: !792, file: !777, line: 223, type: !178)
!801 = !DILocalVariable(name: "pn", arg: 2, scope: !792, file: !777, line: 223, type: !795)
!802 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !792, file: !777, line: 223, type: !796)
!803 = !DILocalVariable(name: "n_max", arg: 4, scope: !792, file: !777, line: 223, type: !798)
!804 = !DILocalVariable(name: "s", arg: 5, scope: !792, file: !777, line: 223, type: !796)
!805 = !DILocalVariable(name: "n0", scope: !792, file: !777, line: 230, type: !796)
!806 = !DILocalVariable(name: "n", scope: !792, file: !777, line: 237, type: !796)
!807 = !DILocalVariable(name: "nbytes", scope: !792, file: !777, line: 248, type: !796)
!808 = !DILocalVariable(name: "adjusted_nbytes", scope: !792, file: !777, line: 252, type: !796)
!809 = !{!330, !178, !309, !351, !188}
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !811, splitDebugInlining: false, nameTableKind: None)
!811 = !{!731, !734, !736}
!812 = distinct !DICompileUnit(language: DW_LANG_C11, file: !813, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, splitDebugInlining: false, nameTableKind: None)
!813 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!824 = !{!309, !188, !178}
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !826, splitDebugInlining: false, nameTableKind: None)
!826 = !{!756, !759}
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !765, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!831 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!832 = !{i32 7, !"Dwarf Version", i32 5}
!833 = !{i32 2, !"Debug Info Version", i32 3}
!834 = !{i32 1, !"wchar_size", i32 4}
!835 = !{i32 8, !"PIC Level", i32 2}
!836 = !{i32 7, !"PIE Level", i32 2}
!837 = !{i32 7, !"uwtable", i32 2}
!838 = !{i32 7, !"frame-pointer", i32 1}
!839 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !182, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !840)
!840 = !{!841}
!841 = !DILocalVariable(name: "status", arg: 1, scope: !839, file: !2, line: 43, type: !184)
!842 = !DILocation(line: 0, scope: !839)
!843 = !DILocation(line: 45, column: 14, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !2, line: 45, column: 7)
!845 = !DILocation(line: 45, column: 7, scope: !839)
!846 = !DILocation(line: 46, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !2, line: 46, column: 5)
!848 = !{!849, !849, i64 0}
!849 = !{!"any pointer", !850, i64 0}
!850 = !{!"omnipotent char", !851, i64 0}
!851 = !{!"Simple C/C++ TBAA"}
!852 = !DILocation(line: 49, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !2, line: 48, column: 5)
!854 = !DILocation(line: 55, column: 7, scope: !853)
!855 = !DILocation(line: 59, column: 7, scope: !853)
!856 = !DILocation(line: 60, column: 7, scope: !853)
!857 = !DILocation(line: 61, column: 7, scope: !853)
!858 = !DILocation(line: 68, column: 7, scope: !853)
!859 = !DILocalVariable(name: "program", arg: 1, scope: !860, file: !131, line: 824, type: !134)
!860 = distinct !DISubprogram(name: "emit_exec_status", scope: !131, file: !131, line: 824, type: !861, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !134}
!863 = !{!859}
!864 = !DILocation(line: 0, scope: !860, inlinedAt: !865)
!865 = distinct !DILocation(line: 69, column: 7, scope: !853)
!866 = !DILocation(line: 826, column: 7, scope: !860, inlinedAt: !865)
!867 = !DILocalVariable(name: "program", arg: 1, scope: !868, file: !131, line: 836, type: !134)
!868 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !131, file: !131, line: 836, type: !861, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !869)
!869 = !{!867, !870, !877, !878, !880, !881}
!870 = !DILocalVariable(name: "infomap", scope: !868, file: !131, line: 838, type: !871)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 896, elements: !225)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !868, file: !131, line: 838, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !873, file: !131, line: 838, baseType: !134, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !873, file: !131, line: 838, baseType: !134, size: 64, offset: 64)
!877 = !DILocalVariable(name: "node", scope: !868, file: !131, line: 848, type: !134)
!878 = !DILocalVariable(name: "map_prog", scope: !868, file: !131, line: 849, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!880 = !DILocalVariable(name: "lc_messages", scope: !868, file: !131, line: 861, type: !134)
!881 = !DILocalVariable(name: "url_program", scope: !868, file: !131, line: 874, type: !134)
!882 = !DILocation(line: 0, scope: !868, inlinedAt: !883)
!883 = distinct !DILocation(line: 70, column: 7, scope: !853)
!884 = !DILocation(line: 857, column: 3, scope: !868, inlinedAt: !883)
!885 = !DILocation(line: 861, column: 29, scope: !868, inlinedAt: !883)
!886 = !DILocation(line: 862, column: 7, scope: !887, inlinedAt: !883)
!887 = distinct !DILexicalBlock(scope: !868, file: !131, line: 862, column: 7)
!888 = !DILocation(line: 862, column: 19, scope: !887, inlinedAt: !883)
!889 = !DILocation(line: 862, column: 22, scope: !887, inlinedAt: !883)
!890 = !DILocation(line: 862, column: 7, scope: !868, inlinedAt: !883)
!891 = !DILocation(line: 868, column: 7, scope: !892, inlinedAt: !883)
!892 = distinct !DILexicalBlock(scope: !887, file: !131, line: 863, column: 5)
!893 = !DILocation(line: 870, column: 5, scope: !892, inlinedAt: !883)
!894 = !DILocation(line: 875, column: 3, scope: !868, inlinedAt: !883)
!895 = !DILocation(line: 877, column: 3, scope: !868, inlinedAt: !883)
!896 = !DILocation(line: 72, column: 3, scope: !839)
!897 = !DISubprogram(name: "dcgettext", scope: !898, file: !898, line: 51, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!898 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!899 = !DISubroutineType(types: !900)
!900 = !{!330, !134, !134, !184}
!901 = !{}
!902 = !DISubprogram(name: "__fprintf_chk", scope: !903, file: !903, line: 93, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!903 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!904 = !DISubroutineType(types: !905)
!905 = !{!184, !906, !184, !907, null}
!906 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!907 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!908 = !DISubprogram(name: "__printf_chk", scope: !903, file: !903, line: 95, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!909 = !DISubroutineType(types: !910)
!910 = !{!184, !184, !907, null}
!911 = !DISubprogram(name: "fputs_unlocked", scope: !417, file: !417, line: 691, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!912 = !DISubroutineType(types: !913)
!913 = !{!184, !907, !906}
!914 = !DILocation(line: 0, scope: !130)
!915 = !DILocation(line: 581, column: 7, scope: !307)
!916 = !{!917, !917, i64 0}
!917 = !{!"int", !850, i64 0}
!918 = !DILocation(line: 581, column: 19, scope: !307)
!919 = !DILocation(line: 581, column: 7, scope: !130)
!920 = !DILocation(line: 585, column: 26, scope: !306)
!921 = !DILocation(line: 0, scope: !306)
!922 = !DILocation(line: 586, column: 23, scope: !306)
!923 = !DILocation(line: 586, column: 28, scope: !306)
!924 = !DILocation(line: 586, column: 32, scope: !306)
!925 = !{!850, !850, i64 0}
!926 = !DILocation(line: 586, column: 38, scope: !306)
!927 = !DILocalVariable(name: "__s1", arg: 1, scope: !928, file: !929, line: 1359, type: !134)
!928 = distinct !DISubprogram(name: "streq", scope: !929, file: !929, line: 1359, type: !930, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !932)
!929 = !DIFile(filename: "./lib/string.h", directory: "/src")
!930 = !DISubroutineType(types: !931)
!931 = !{!309, !134, !134}
!932 = !{!927, !933}
!933 = !DILocalVariable(name: "__s2", arg: 2, scope: !928, file: !929, line: 1359, type: !134)
!934 = !DILocation(line: 0, scope: !928, inlinedAt: !935)
!935 = distinct !DILocation(line: 586, column: 41, scope: !306)
!936 = !DILocation(line: 1361, column: 11, scope: !928, inlinedAt: !935)
!937 = !DILocation(line: 1361, column: 10, scope: !928, inlinedAt: !935)
!938 = !DILocation(line: 586, column: 19, scope: !306)
!939 = !DILocation(line: 587, column: 5, scope: !306)
!940 = !DILocation(line: 588, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !130, file: !131, line: 588, column: 7)
!942 = !DILocation(line: 588, column: 7, scope: !130)
!943 = !DILocation(line: 590, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !131, line: 589, column: 5)
!945 = !DILocation(line: 591, column: 7, scope: !944)
!946 = !DILocation(line: 595, column: 37, scope: !130)
!947 = !DILocation(line: 595, column: 35, scope: !130)
!948 = !DILocation(line: 596, column: 29, scope: !130)
!949 = !DILocation(line: 597, column: 8, scope: !315)
!950 = !DILocation(line: 597, column: 7, scope: !130)
!951 = !DILocation(line: 604, column: 24, scope: !314)
!952 = !DILocation(line: 604, column: 12, scope: !315)
!953 = !DILocation(line: 0, scope: !313)
!954 = !DILocation(line: 610, column: 16, scope: !313)
!955 = !DILocation(line: 610, column: 7, scope: !313)
!956 = !DILocation(line: 611, column: 21, scope: !313)
!957 = !{!958, !958, i64 0}
!958 = !{!"short", !850, i64 0}
!959 = !DILocation(line: 611, column: 19, scope: !313)
!960 = !DILocation(line: 611, column: 16, scope: !313)
!961 = !DILocation(line: 610, column: 30, scope: !313)
!962 = distinct !{!962, !955, !956, !963}
!963 = !{!"llvm.loop.mustprogress"}
!964 = !DILocation(line: 612, column: 18, scope: !965)
!965 = distinct !DILexicalBlock(scope: !313, file: !131, line: 612, column: 11)
!966 = !DILocation(line: 612, column: 11, scope: !313)
!967 = !DILocation(line: 620, column: 23, scope: !130)
!968 = !DILocation(line: 625, column: 39, scope: !130)
!969 = !DILocation(line: 626, column: 3, scope: !130)
!970 = !DILocation(line: 626, column: 10, scope: !130)
!971 = !DILocation(line: 626, column: 21, scope: !130)
!972 = !DILocation(line: 628, column: 44, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !131, line: 628, column: 11)
!974 = distinct !DILexicalBlock(scope: !130, file: !131, line: 627, column: 5)
!975 = !DILocation(line: 628, column: 32, scope: !973)
!976 = !DILocation(line: 628, column: 49, scope: !973)
!977 = !DILocation(line: 628, column: 11, scope: !974)
!978 = !DILocation(line: 630, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !131, line: 630, column: 11)
!980 = !DILocation(line: 630, column: 11, scope: !974)
!981 = !DILocation(line: 632, column: 26, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !131, line: 632, column: 15)
!983 = distinct !DILexicalBlock(scope: !979, file: !131, line: 631, column: 9)
!984 = !DILocation(line: 632, column: 34, scope: !982)
!985 = !DILocation(line: 632, column: 37, scope: !982)
!986 = !DILocation(line: 632, column: 15, scope: !983)
!987 = !DILocation(line: 640, column: 16, scope: !974)
!988 = distinct !{!988, !969, !989, !963}
!989 = !DILocation(line: 641, column: 5, scope: !130)
!990 = !DILocation(line: 644, column: 3, scope: !130)
!991 = !DILocation(line: 0, scope: !928, inlinedAt: !992)
!992 = distinct !DILocation(line: 648, column: 31, scope: !130)
!993 = !DILocation(line: 0, scope: !928, inlinedAt: !994)
!994 = distinct !DILocation(line: 649, column: 31, scope: !130)
!995 = !DILocation(line: 0, scope: !928, inlinedAt: !996)
!996 = distinct !DILocation(line: 650, column: 31, scope: !130)
!997 = !DILocation(line: 0, scope: !928, inlinedAt: !998)
!998 = distinct !DILocation(line: 651, column: 31, scope: !130)
!999 = !DILocation(line: 0, scope: !928, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 652, column: 31, scope: !130)
!1001 = !DILocation(line: 0, scope: !928, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 653, column: 31, scope: !130)
!1003 = !DILocation(line: 0, scope: !928, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 654, column: 31, scope: !130)
!1005 = !DILocation(line: 0, scope: !928, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 655, column: 31, scope: !130)
!1007 = !DILocation(line: 0, scope: !928, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 656, column: 31, scope: !130)
!1009 = !DILocation(line: 0, scope: !928, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 657, column: 31, scope: !130)
!1011 = !DILocation(line: 663, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !130, file: !131, line: 663, column: 7)
!1013 = !DILocation(line: 664, column: 7, scope: !1012)
!1014 = !DILocation(line: 664, column: 10, scope: !1012)
!1015 = !DILocation(line: 663, column: 7, scope: !130)
!1016 = !DILocation(line: 669, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !131, line: 665, column: 5)
!1018 = !DILocation(line: 671, column: 5, scope: !1017)
!1019 = !DILocation(line: 676, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1012, file: !131, line: 673, column: 5)
!1021 = !DILocation(line: 679, column: 3, scope: !130)
!1022 = !DILocation(line: 683, column: 3, scope: !130)
!1023 = !DILocation(line: 686, column: 3, scope: !130)
!1024 = !DILocation(line: 688, column: 3, scope: !130)
!1025 = !DILocation(line: 691, column: 3, scope: !130)
!1026 = !DILocation(line: 695, column: 3, scope: !130)
!1027 = !DILocation(line: 696, column: 1, scope: !130)
!1028 = !DISubprogram(name: "setlocale", scope: !1029, file: !1029, line: 122, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1029 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!330, !184, !134}
!1032 = !DISubprogram(name: "strncmp", scope: !1033, file: !1033, line: 159, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1033 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!184, !134, !134, !186}
!1036 = !DISubprogram(name: "exit", scope: !1037, file: !1037, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1037 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1038 = !DISubprogram(name: "getenv", scope: !1037, file: !1037, line: 641, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!330, !134}
!1041 = !DISubprogram(name: "strcmp", scope: !1033, file: !1033, line: 156, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!184, !134, !134}
!1044 = !DISubprogram(name: "strspn", scope: !1033, file: !1033, line: 297, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!188, !134, !134}
!1047 = !DISubprogram(name: "strchr", scope: !1033, file: !1033, line: 246, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!330, !134, !184}
!1050 = !DISubprogram(name: "__ctype_b_loc", scope: !163, file: !163, line: 79, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1056 = !DISubprogram(name: "strcspn", scope: !1033, file: !1033, line: 293, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1057 = !DISubprogram(name: "fwrite_unlocked", scope: !417, file: !417, line: 704, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!186, !1060, !186, !186, !906}
!1060 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1063 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !1064, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1067)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!184, !184, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1081, !1082, !1085, !1086, !1087, !1091, !1092, !1095, !1096, !1099, !1100, !1105, !1106, !1107}
!1068 = !DILocalVariable(name: "argc", arg: 1, scope: !1063, file: !2, line: 82, type: !184)
!1069 = !DILocalVariable(name: "argv", arg: 2, scope: !1063, file: !2, line: 82, type: !1066)
!1070 = !DILocalVariable(name: "exit_internal_failure", scope: !1063, file: !2, line: 94, type: !184)
!1071 = !DILocalVariable(name: "ignoring_input", scope: !1063, file: !2, line: 109, type: !309)
!1072 = !DILocalVariable(name: "redirecting_stdout", scope: !1063, file: !2, line: 110, type: !309)
!1073 = !DILocalVariable(name: "stdout_is_closed", scope: !1063, file: !2, line: 111, type: !309)
!1074 = !DILocalVariable(name: "redirecting_stderr", scope: !1063, file: !2, line: 112, type: !309)
!1075 = !DILocalVariable(name: "__errstatus", scope: !1076, file: !2, line: 120, type: !1080)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 120, column: 9)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 119, column: 11)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 118, column: 5)
!1079 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 117, column: 7)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1081 = !DILocalVariable(name: "out_fd", scope: !1063, file: !2, line: 130, type: !184)
!1082 = !DILocalVariable(name: "in_home", scope: !1083, file: !2, line: 133, type: !330)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 132, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 131, column: 7)
!1085 = !DILocalVariable(name: "file", scope: !1083, file: !2, line: 134, type: !134)
!1086 = !DILocalVariable(name: "flags", scope: !1083, file: !2, line: 135, type: !184)
!1087 = !DILocalVariable(name: "mode", scope: !1083, file: !2, line: 136, type: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1089, line: 69, baseType: !1090)
!1089 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !350, line: 150, baseType: !139)
!1091 = !DILocalVariable(name: "umask_value", scope: !1083, file: !2, line: 137, type: !1088)
!1092 = !DILocalVariable(name: "saved_errno", scope: !1093, file: !2, line: 144, type: !184)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 143, column: 9)
!1094 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 142, column: 11)
!1095 = !DILocalVariable(name: "home", scope: !1093, file: !2, line: 145, type: !134)
!1096 = !DILocalVariable(name: "saved_errno2", scope: !1097, file: !2, line: 155, type: !184)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 154, column: 13)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 153, column: 15)
!1099 = !DILocalVariable(name: "saved_stderr_fd", scope: !1063, file: !2, line: 175, type: !184)
!1100 = !DILocalVariable(name: "__errstatus", scope: !1101, file: !2, line: 193, type: !1080)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 193, column: 9)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 192, column: 11)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 177, column: 5)
!1104 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 176, column: 7)
!1105 = !DILocalVariable(name: "cmd", scope: !1063, file: !2, line: 211, type: !1066)
!1106 = !DILocalVariable(name: "exit_status", scope: !1063, file: !2, line: 213, type: !184)
!1107 = !DILocalVariable(name: "saved_errno", scope: !1063, file: !2, line: 214, type: !184)
!1108 = !DILocation(line: 0, scope: !1063)
!1109 = !DILocation(line: 85, column: 21, scope: !1063)
!1110 = !DILocation(line: 85, column: 3, scope: !1063)
!1111 = !DILocation(line: 86, column: 3, scope: !1063)
!1112 = !DILocation(line: 87, column: 3, scope: !1063)
!1113 = !DILocation(line: 88, column: 3, scope: !1063)
!1114 = !DILocation(line: 94, column: 32, scope: !1063)
!1115 = !DILocalVariable(name: "status", arg: 1, scope: !1116, file: !131, line: 102, type: !184)
!1116 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !131, file: !131, line: 102, type: !182, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1117)
!1117 = !{!1115}
!1118 = !DILocation(line: 0, scope: !1116, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 96, column: 3, scope: !1063)
!1120 = !DILocation(line: 105, column: 18, scope: !1121, inlinedAt: !1119)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !131, line: 104, column: 7)
!1122 = !DILocation(line: 97, column: 3, scope: !1063)
!1123 = !DILocation(line: 100, column: 36, scope: !1063)
!1124 = !DILocation(line: 100, column: 59, scope: !1063)
!1125 = !DILocation(line: 99, column: 3, scope: !1063)
!1126 = !DILocation(line: 103, column: 15, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 103, column: 7)
!1128 = !DILocation(line: 103, column: 12, scope: !1127)
!1129 = !DILocation(line: 103, column: 7, scope: !1063)
!1130 = !DILocation(line: 105, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 104, column: 5)
!1132 = !DILocation(line: 106, column: 7, scope: !1131)
!1133 = !DILocation(line: 109, column: 25, scope: !1063)
!1134 = !DILocation(line: 110, column: 29, scope: !1063)
!1135 = !DILocation(line: 111, column: 48, scope: !1063)
!1136 = !DILocation(line: 111, column: 51, scope: !1063)
!1137 = !DILocation(line: 111, column: 57, scope: !1063)
!1138 = !DILocation(line: 112, column: 29, scope: !1063)
!1139 = !DILocation(line: 117, column: 7, scope: !1063)
!1140 = !DILocation(line: 119, column: 11, scope: !1077)
!1141 = !DILocation(line: 119, column: 62, scope: !1077)
!1142 = !DILocation(line: 119, column: 11, scope: !1078)
!1143 = !DILocation(line: 120, column: 9, scope: !1077)
!1144 = !DILocation(line: 122, column: 31, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 122, column: 11)
!1146 = !DILocation(line: 123, column: 9, scope: !1145)
!1147 = !DILocation(line: 131, column: 26, scope: !1084)
!1148 = !DILocation(line: 0, scope: !1083)
!1149 = !DILocation(line: 137, column: 28, scope: !1083)
!1150 = !DILocation(line: 138, column: 17, scope: !1083)
!1151 = !DILocation(line: 139, column: 19, scope: !1083)
!1152 = !DILocation(line: 140, column: 19, scope: !1083)
!1153 = !DILocation(line: 142, column: 18, scope: !1094)
!1154 = !DILocation(line: 142, column: 11, scope: !1083)
!1155 = !DILocation(line: 144, column: 29, scope: !1093)
!1156 = !DILocation(line: 0, scope: !1093)
!1157 = !DILocation(line: 145, column: 30, scope: !1093)
!1158 = !DILocation(line: 146, column: 15, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 146, column: 15)
!1160 = !DILocation(line: 146, column: 15, scope: !1093)
!1161 = !DILocation(line: 148, column: 25, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 147, column: 13)
!1163 = !DILocation(line: 149, column: 25, scope: !1162)
!1164 = !DILocation(line: 150, column: 27, scope: !1162)
!1165 = !DILocation(line: 151, column: 27, scope: !1162)
!1166 = !DILocation(line: 153, column: 22, scope: !1098)
!1167 = !DILocation(line: 153, column: 15, scope: !1093)
!1168 = !DILocation(line: 155, column: 34, scope: !1097)
!1169 = !DILocation(line: 0, scope: !1097)
!1170 = !DILocation(line: 156, column: 15, scope: !1097)
!1171 = !DILocation(line: 157, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 157, column: 19)
!1173 = !DILocation(line: 157, column: 19, scope: !1097)
!1174 = !DILocation(line: 158, column: 17, scope: !1172)
!1175 = !DILocation(line: 134, column: 19, scope: !1083)
!1176 = !DILocation(line: 165, column: 7, scope: !1083)
!1177 = !DILocation(line: 166, column: 7, scope: !1083)
!1178 = !DILocation(line: 171, column: 7, scope: !1083)
!1179 = !DILocation(line: 176, column: 7, scope: !1063)
!1180 = !DILocation(line: 182, column: 25, scope: !1103)
!1181 = !DILocation(line: 185, column: 11, scope: !1103)
!1182 = !DILocation(line: 186, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 185, column: 11)
!1184 = !DILocation(line: 192, column: 11, scope: !1102)
!1185 = !DILocation(line: 192, column: 40, scope: !1102)
!1186 = !DILocation(line: 192, column: 11, scope: !1103)
!1187 = !DILocation(line: 193, column: 9, scope: !1102)
!1188 = !DILocation(line: 196, column: 11, scope: !1103)
!1189 = !DILocation(line: 197, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 196, column: 11)
!1191 = !DILocation(line: 206, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 206, column: 7)
!1193 = !DILocalVariable(name: "__stream", arg: 1, scope: !1194, file: !1195, line: 135, type: !322)
!1194 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1195, file: !1195, line: 135, type: !1196, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1198)
!1195 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!184, !322}
!1198 = !{!1193}
!1199 = !DILocation(line: 0, scope: !1194, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 206, column: 7, scope: !1192)
!1201 = !DILocation(line: 137, column: 10, scope: !1194, inlinedAt: !1200)
!1202 = !{!1203, !917, i64 0}
!1203 = !{!"_IO_FILE", !917, i64 0, !849, i64 8, !849, i64 16, !849, i64 24, !849, i64 32, !849, i64 40, !849, i64 48, !849, i64 56, !849, i64 64, !849, i64 72, !849, i64 80, !849, i64 88, !849, i64 96, !849, i64 104, !917, i64 112, !917, i64 116, !1204, i64 120, !958, i64 128, !850, i64 130, !850, i64 131, !849, i64 136, !1204, i64 144, !849, i64 152, !849, i64 160, !849, i64 168, !849, i64 176, !1204, i64 184, !917, i64 192, !850, i64 196}
!1204 = !{!"long", !850, i64 0}
!1205 = !DILocation(line: 206, column: 7, scope: !1063)
!1206 = !DILocation(line: 209, column: 3, scope: !1063)
!1207 = !DILocation(line: 211, column: 23, scope: !1063)
!1208 = !DILocation(line: 211, column: 21, scope: !1063)
!1209 = !DILocation(line: 212, column: 11, scope: !1063)
!1210 = !DILocation(line: 212, column: 3, scope: !1063)
!1211 = !DILocation(line: 213, column: 21, scope: !1063)
!1212 = !DILocation(line: 213, column: 27, scope: !1063)
!1213 = !DILocation(line: 222, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 222, column: 7)
!1215 = !DILocation(line: 222, column: 45, scope: !1214)
!1216 = !DILocation(line: 222, column: 7, scope: !1063)
!1217 = !DILocation(line: 223, column: 5, scope: !1214)
!1218 = !DILocation(line: 226, column: 1, scope: !1063)
!1219 = !DISubprogram(name: "bindtextdomain", scope: !898, file: !898, line: 86, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!330, !134, !134}
!1222 = !DISubprogram(name: "textdomain", scope: !898, file: !898, line: 82, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1223 = !DISubprogram(name: "atexit", scope: !1037, file: !1037, line: 602, type: !1224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!184, !457}
!1226 = !DISubprogram(name: "isatty", scope: !1227, file: !1227, line: 809, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1227 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!184, !184}
!1230 = !DISubprogram(name: "__errno_location", scope: !1231, file: !1231, line: 37, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1231 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!499}
!1234 = !DISubprogram(name: "umask", scope: !1235, file: !1235, line: 380, type: !1236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1090, !1090}
!1238 = !DISubprogram(name: "open", scope: !1239, file: !1239, line: 181, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1239 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!184, !134, !184, null}
!1242 = !DISubprogram(name: "free", scope: !1037, file: !1037, line: 555, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !178}
!1245 = !DISubprogram(name: "dup2", scope: !1227, file: !1227, line: 555, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1246 = !DISubprogram(name: "close", scope: !1227, file: !1227, line: 358, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1247 = !DISubprogram(name: "signal", scope: !180, file: !180, line: 88, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!179, !184, !179}
!1250 = !DISubprogram(name: "execvp", scope: !1227, file: !1227, line: 599, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!184, !134, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!1255 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !391, file: !391, line: 50, type: !861, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1256)
!1256 = !{!1257}
!1257 = !DILocalVariable(name: "file", arg: 1, scope: !1255, file: !391, line: 50, type: !134)
!1258 = !DILocation(line: 0, scope: !1255)
!1259 = !DILocation(line: 52, column: 13, scope: !1255)
!1260 = !DILocation(line: 53, column: 1, scope: !1255)
!1261 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !391, file: !391, line: 87, type: !1262, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !309}
!1264 = !{!1265}
!1265 = !DILocalVariable(name: "ignore", arg: 1, scope: !1261, file: !391, line: 87, type: !309)
!1266 = !DILocation(line: 0, scope: !1261)
!1267 = !DILocation(line: 89, column: 16, scope: !1261)
!1268 = !{!1269, !1269, i64 0}
!1269 = !{!"_Bool", !850, i64 0}
!1270 = !DILocation(line: 90, column: 1, scope: !1261)
!1271 = distinct !DISubprogram(name: "close_stdout", scope: !391, file: !391, line: 116, type: !458, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1272)
!1272 = !{!1273}
!1273 = !DILocalVariable(name: "write_error", scope: !1274, file: !391, line: 121, type: !134)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !391, line: 120, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !391, line: 118, column: 7)
!1276 = !DILocation(line: 118, column: 21, scope: !1275)
!1277 = !DILocation(line: 118, column: 7, scope: !1275)
!1278 = !DILocation(line: 118, column: 29, scope: !1275)
!1279 = !DILocation(line: 119, column: 7, scope: !1275)
!1280 = !DILocation(line: 119, column: 12, scope: !1275)
!1281 = !{i8 0, i8 2}
!1282 = !DILocation(line: 119, column: 25, scope: !1275)
!1283 = !DILocation(line: 119, column: 28, scope: !1275)
!1284 = !DILocation(line: 119, column: 34, scope: !1275)
!1285 = !DILocation(line: 118, column: 7, scope: !1271)
!1286 = !DILocation(line: 121, column: 33, scope: !1274)
!1287 = !DILocation(line: 0, scope: !1274)
!1288 = !DILocation(line: 122, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1274, file: !391, line: 122, column: 11)
!1290 = !DILocation(line: 0, scope: !1289)
!1291 = !DILocation(line: 122, column: 11, scope: !1274)
!1292 = !DILocation(line: 123, column: 9, scope: !1289)
!1293 = !DILocation(line: 126, column: 9, scope: !1289)
!1294 = !DILocation(line: 128, column: 14, scope: !1274)
!1295 = !DILocation(line: 128, column: 7, scope: !1274)
!1296 = !DILocation(line: 133, column: 42, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1271, file: !391, line: 133, column: 7)
!1298 = !DILocation(line: 133, column: 28, scope: !1297)
!1299 = !DILocation(line: 133, column: 50, scope: !1297)
!1300 = !DILocation(line: 133, column: 7, scope: !1271)
!1301 = !DILocation(line: 134, column: 12, scope: !1297)
!1302 = !DILocation(line: 134, column: 5, scope: !1297)
!1303 = !DILocation(line: 135, column: 1, scope: !1271)
!1304 = !DISubprogram(name: "_exit", scope: !1227, file: !1227, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1305 = distinct !DISubprogram(name: "verror", scope: !406, file: !406, line: 251, type: !1306, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !184, !184, !134, !416}
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DILocalVariable(name: "status", arg: 1, scope: !1305, file: !406, line: 251, type: !184)
!1310 = !DILocalVariable(name: "errnum", arg: 2, scope: !1305, file: !406, line: 251, type: !184)
!1311 = !DILocalVariable(name: "message", arg: 3, scope: !1305, file: !406, line: 251, type: !134)
!1312 = !DILocalVariable(name: "args", arg: 4, scope: !1305, file: !406, line: 251, type: !416)
!1313 = !DILocation(line: 0, scope: !1305)
!1314 = !DILocation(line: 251, column: 1, scope: !1305)
!1315 = !DILocation(line: 261, column: 3, scope: !1305)
!1316 = !DILocation(line: 265, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1305, file: !406, line: 265, column: 7)
!1318 = !DILocation(line: 265, column: 7, scope: !1305)
!1319 = !DILocation(line: 266, column: 5, scope: !1317)
!1320 = !DILocation(line: 272, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !406, line: 268, column: 5)
!1322 = !DILocation(line: 276, column: 3, scope: !1305)
!1323 = !{i64 0, i64 8, !848, i64 8, i64 8, !848, i64 16, i64 8, !848, i64 24, i64 4, !916, i64 28, i64 4, !916}
!1324 = !DILocation(line: 282, column: 1, scope: !1305)
!1325 = distinct !DISubprogram(name: "flush_stdout", scope: !406, file: !406, line: 163, type: !458, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1326)
!1326 = !{!1327}
!1327 = !DILocalVariable(name: "stdout_fd", scope: !1325, file: !406, line: 166, type: !184)
!1328 = !DILocation(line: 0, scope: !1325)
!1329 = !DILocalVariable(name: "fd", arg: 1, scope: !1330, file: !406, line: 145, type: !184)
!1330 = distinct !DISubprogram(name: "is_open", scope: !406, file: !406, line: 145, type: !1228, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1331)
!1331 = !{!1329}
!1332 = !DILocation(line: 0, scope: !1330, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 182, column: 25, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !406, line: 182, column: 7)
!1335 = !DILocation(line: 157, column: 15, scope: !1330, inlinedAt: !1333)
!1336 = !DILocation(line: 157, column: 12, scope: !1330, inlinedAt: !1333)
!1337 = !DILocation(line: 182, column: 7, scope: !1325)
!1338 = !DILocation(line: 184, column: 5, scope: !1334)
!1339 = !DILocation(line: 185, column: 1, scope: !1325)
!1340 = distinct !DISubprogram(name: "error_tail", scope: !406, file: !406, line: 219, type: !1306, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1341)
!1341 = !{!1342, !1343, !1344, !1345}
!1342 = !DILocalVariable(name: "status", arg: 1, scope: !1340, file: !406, line: 219, type: !184)
!1343 = !DILocalVariable(name: "errnum", arg: 2, scope: !1340, file: !406, line: 219, type: !184)
!1344 = !DILocalVariable(name: "message", arg: 3, scope: !1340, file: !406, line: 219, type: !134)
!1345 = !DILocalVariable(name: "args", arg: 4, scope: !1340, file: !406, line: 219, type: !416)
!1346 = !DILocation(line: 0, scope: !1340)
!1347 = !DILocation(line: 219, column: 1, scope: !1340)
!1348 = !DILocation(line: 229, column: 13, scope: !1340)
!1349 = !DILocation(line: 135, column: 10, scope: !1350, inlinedAt: !1392)
!1350 = distinct !DISubprogram(name: "vfprintf", scope: !903, file: !903, line: 132, type: !1351, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1388)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!184, !1353, !907, !418}
!1353 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1356, file: !326, line: 51, baseType: !184, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1356, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1356, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1356, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1356, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1356, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1356, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1356, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1356, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1356, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1356, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1356, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1356, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1356, file: !326, line: 70, baseType: !1372, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1356, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1356, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1356, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1356, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1356, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1356, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1356, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1356, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1356, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1356, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1356, file: !326, line: 93, baseType: !1372, size: 64, offset: 1344)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1356, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1356, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1356, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1356, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "__stream", arg: 1, scope: !1350, file: !903, line: 132, type: !1353)
!1390 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1350, file: !903, line: 133, type: !907)
!1391 = !DILocalVariable(name: "__ap", arg: 3, scope: !1350, file: !903, line: 133, type: !418)
!1392 = distinct !DILocation(line: 229, column: 3, scope: !1340)
!1393 = !{!1394, !1396}
!1394 = distinct !{!1394, !1395, !"vfprintf.inline: argument 0"}
!1395 = distinct !{!1395, !"vfprintf.inline"}
!1396 = distinct !{!1396, !1395, !"vfprintf.inline: argument 1"}
!1397 = !DILocation(line: 229, column: 3, scope: !1340)
!1398 = !DILocation(line: 0, scope: !1350, inlinedAt: !1392)
!1399 = !DILocation(line: 133, column: 49, scope: !1350, inlinedAt: !1392)
!1400 = !DILocation(line: 232, column: 3, scope: !1340)
!1401 = !DILocation(line: 233, column: 7, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1340, file: !406, line: 233, column: 7)
!1403 = !DILocation(line: 233, column: 7, scope: !1340)
!1404 = !DILocalVariable(name: "errnum", arg: 1, scope: !1405, file: !406, line: 188, type: !184)
!1405 = distinct !DISubprogram(name: "print_errno_message", scope: !406, file: !406, line: 188, type: !182, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1406)
!1406 = !{!1404, !1407, !1408}
!1407 = !DILocalVariable(name: "s", scope: !1405, file: !406, line: 190, type: !134)
!1408 = !DILocalVariable(name: "errbuf", scope: !1405, file: !406, line: 193, type: !1409)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 1024)
!1412 = !DILocation(line: 0, scope: !1405, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 234, column: 5, scope: !1402)
!1414 = !DILocation(line: 193, column: 3, scope: !1405, inlinedAt: !1413)
!1415 = !DILocation(line: 193, column: 8, scope: !1405, inlinedAt: !1413)
!1416 = !DILocation(line: 195, column: 7, scope: !1405, inlinedAt: !1413)
!1417 = !DILocation(line: 207, column: 9, scope: !1418, inlinedAt: !1413)
!1418 = distinct !DILexicalBlock(scope: !1405, file: !406, line: 207, column: 7)
!1419 = !DILocation(line: 207, column: 7, scope: !1405, inlinedAt: !1413)
!1420 = !DILocation(line: 208, column: 9, scope: !1418, inlinedAt: !1413)
!1421 = !DILocation(line: 208, column: 5, scope: !1418, inlinedAt: !1413)
!1422 = !DILocation(line: 214, column: 3, scope: !1405, inlinedAt: !1413)
!1423 = !DILocation(line: 216, column: 1, scope: !1405, inlinedAt: !1413)
!1424 = !DILocation(line: 234, column: 5, scope: !1402)
!1425 = !DILocation(line: 238, column: 3, scope: !1340)
!1426 = !DILocalVariable(name: "__c", arg: 1, scope: !1427, file: !1195, line: 101, type: !184)
!1427 = distinct !DISubprogram(name: "putc_unlocked", scope: !1195, file: !1195, line: 101, type: !1428, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!184, !184, !1354}
!1430 = !{!1426, !1431}
!1431 = !DILocalVariable(name: "__stream", arg: 2, scope: !1427, file: !1195, line: 101, type: !1354)
!1432 = !DILocation(line: 0, scope: !1427, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 238, column: 3, scope: !1340)
!1434 = !DILocation(line: 103, column: 10, scope: !1427, inlinedAt: !1433)
!1435 = !{!1203, !849, i64 40}
!1436 = !{!1203, !849, i64 48}
!1437 = !{!"branch_weights", i32 2000, i32 1}
!1438 = !DILocation(line: 240, column: 3, scope: !1340)
!1439 = !DILocation(line: 241, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1340, file: !406, line: 241, column: 7)
!1441 = !DILocation(line: 241, column: 7, scope: !1340)
!1442 = !DILocation(line: 242, column: 5, scope: !1440)
!1443 = !DILocation(line: 243, column: 1, scope: !1340)
!1444 = !DISubprogram(name: "__vfprintf_chk", scope: !903, file: !903, line: 96, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!184, !1353, !184, !907, !418}
!1447 = !DISubprogram(name: "strerror_r", scope: !1033, file: !1033, line: 444, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!330, !184, !330, !186}
!1450 = !DISubprogram(name: "__overflow", scope: !417, file: !417, line: 886, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!184, !1354, !184}
!1453 = !DISubprogram(name: "fflush_unlocked", scope: !417, file: !417, line: 239, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!184, !1354}
!1456 = !DISubprogram(name: "fcntl", scope: !1239, file: !1239, line: 149, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
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
!1467 = !DILocation(line: 0, scope: !1459)
!1468 = !DILocation(line: 287, column: 3, scope: !1459)
!1469 = !DILocation(line: 287, column: 11, scope: !1459)
!1470 = !DILocation(line: 288, column: 3, scope: !1459)
!1471 = !DILocation(line: 289, column: 3, scope: !1459)
!1472 = !DILocation(line: 290, column: 3, scope: !1459)
!1473 = !DILocation(line: 291, column: 1, scope: !1459)
!1474 = !DILocation(line: 0, scope: !413)
!1475 = !DILocation(line: 298, column: 1, scope: !413)
!1476 = !DILocation(line: 302, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !413, file: !406, line: 302, column: 7)
!1478 = !DILocation(line: 302, column: 7, scope: !413)
!1479 = !DILocation(line: 307, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !406, line: 307, column: 11)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !406, line: 303, column: 5)
!1482 = !DILocation(line: 307, column: 27, scope: !1480)
!1483 = !DILocation(line: 308, column: 11, scope: !1480)
!1484 = !DILocation(line: 308, column: 28, scope: !1480)
!1485 = !DILocation(line: 308, column: 25, scope: !1480)
!1486 = !DILocation(line: 309, column: 15, scope: !1480)
!1487 = !DILocation(line: 309, column: 33, scope: !1480)
!1488 = !DILocation(line: 310, column: 19, scope: !1480)
!1489 = !DILocation(line: 311, column: 22, scope: !1480)
!1490 = !DILocation(line: 311, column: 56, scope: !1480)
!1491 = !DILocation(line: 307, column: 11, scope: !1481)
!1492 = !DILocation(line: 316, column: 21, scope: !1481)
!1493 = !DILocation(line: 317, column: 23, scope: !1481)
!1494 = !DILocation(line: 318, column: 5, scope: !1481)
!1495 = !DILocation(line: 327, column: 3, scope: !413)
!1496 = !DILocation(line: 331, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !413, file: !406, line: 331, column: 7)
!1498 = !DILocation(line: 331, column: 7, scope: !413)
!1499 = !DILocation(line: 332, column: 5, scope: !1497)
!1500 = !DILocation(line: 338, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !406, line: 334, column: 5)
!1502 = !DILocation(line: 346, column: 3, scope: !413)
!1503 = !DILocation(line: 350, column: 3, scope: !413)
!1504 = !DILocation(line: 356, column: 1, scope: !413)
!1505 = distinct !DISubprogram(name: "error_at_line", scope: !406, file: !406, line: 359, type: !1506, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !184, !184, !134, !139, !134, null}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514}
!1509 = !DILocalVariable(name: "status", arg: 1, scope: !1505, file: !406, line: 359, type: !184)
!1510 = !DILocalVariable(name: "errnum", arg: 2, scope: !1505, file: !406, line: 359, type: !184)
!1511 = !DILocalVariable(name: "file_name", arg: 3, scope: !1505, file: !406, line: 359, type: !134)
!1512 = !DILocalVariable(name: "line_number", arg: 4, scope: !1505, file: !406, line: 360, type: !139)
!1513 = !DILocalVariable(name: "message", arg: 5, scope: !1505, file: !406, line: 360, type: !134)
!1514 = !DILocalVariable(name: "ap", scope: !1505, file: !406, line: 362, type: !416)
!1515 = !DILocation(line: 0, scope: !1505)
!1516 = !DILocation(line: 362, column: 3, scope: !1505)
!1517 = !DILocation(line: 362, column: 11, scope: !1505)
!1518 = !DILocation(line: 363, column: 3, scope: !1505)
!1519 = !DILocation(line: 364, column: 3, scope: !1505)
!1520 = !DILocation(line: 366, column: 3, scope: !1505)
!1521 = !DILocation(line: 367, column: 1, scope: !1505)
!1522 = distinct !DISubprogram(name: "rpl_fcntl", scope: !463, file: !463, line: 202, type: !1457, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1537, !1538, !1541, !1543, !1547}
!1524 = !DILocalVariable(name: "fd", arg: 1, scope: !1522, file: !463, line: 202, type: !184)
!1525 = !DILocalVariable(name: "action", arg: 2, scope: !1522, file: !463, line: 202, type: !184)
!1526 = !DILocalVariable(name: "arg", scope: !1522, file: !463, line: 208, type: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !419, line: 22, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1529, baseType: !1530)
!1529 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1535, !1536}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1530, file: !1529, line: 208, baseType: !178, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1530, file: !1529, line: 208, baseType: !178, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1530, file: !1529, line: 208, baseType: !178, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1530, file: !1529, line: 208, baseType: !184, size: 32, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1530, file: !1529, line: 208, baseType: !184, size: 32, offset: 224)
!1537 = !DILocalVariable(name: "result", scope: !1522, file: !463, line: 211, type: !184)
!1538 = !DILocalVariable(name: "target", scope: !1539, file: !463, line: 216, type: !184)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !463, line: 215, column: 7)
!1540 = distinct !DILexicalBlock(scope: !1522, file: !463, line: 213, column: 5)
!1541 = !DILocalVariable(name: "target", scope: !1542, file: !463, line: 223, type: !184)
!1542 = distinct !DILexicalBlock(scope: !1540, file: !463, line: 222, column: 7)
!1543 = !DILocalVariable(name: "x", scope: !1544, file: !463, line: 418, type: !184)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !463, line: 417, column: 13)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !463, line: 261, column: 11)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !463, line: 258, column: 7)
!1547 = !DILocalVariable(name: "p", scope: !1548, file: !463, line: 426, type: !178)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !463, line: 425, column: 13)
!1549 = !DILocation(line: 0, scope: !1522)
!1550 = !DILocation(line: 208, column: 3, scope: !1522)
!1551 = !DILocation(line: 208, column: 11, scope: !1522)
!1552 = !DILocation(line: 209, column: 3, scope: !1522)
!1553 = !DILocation(line: 212, column: 3, scope: !1522)
!1554 = !DILocation(line: 216, column: 22, scope: !1539)
!1555 = !DILocation(line: 0, scope: !1539)
!1556 = !DILocalVariable(name: "fd", arg: 1, scope: !1557, file: !463, line: 444, type: !184)
!1557 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !463, file: !463, line: 444, type: !464, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1558)
!1558 = !{!1556, !1559, !1560}
!1559 = !DILocalVariable(name: "target", arg: 2, scope: !1557, file: !463, line: 444, type: !184)
!1560 = !DILocalVariable(name: "result", scope: !1557, file: !463, line: 446, type: !184)
!1561 = !DILocation(line: 0, scope: !1557, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 217, column: 18, scope: !1539)
!1563 = !DILocation(line: 479, column: 12, scope: !1557, inlinedAt: !1562)
!1564 = !DILocation(line: 223, column: 22, scope: !1542)
!1565 = !DILocation(line: 0, scope: !1542)
!1566 = !DILocation(line: 0, scope: !462, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 224, column: 18, scope: !1542)
!1568 = !DILocation(line: 507, column: 12, scope: !1569, inlinedAt: !1567)
!1569 = distinct !DILexicalBlock(scope: !462, file: !463, line: 507, column: 7)
!1570 = !DILocation(line: 507, column: 9, scope: !1569, inlinedAt: !1567)
!1571 = !DILocation(line: 507, column: 7, scope: !462, inlinedAt: !1567)
!1572 = !DILocation(line: 509, column: 16, scope: !1573, inlinedAt: !1567)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !463, line: 508, column: 5)
!1574 = !DILocation(line: 510, column: 13, scope: !1575, inlinedAt: !1567)
!1575 = distinct !DILexicalBlock(scope: !1573, file: !463, line: 510, column: 11)
!1576 = !DILocation(line: 510, column: 23, scope: !1575, inlinedAt: !1567)
!1577 = !DILocation(line: 510, column: 26, scope: !1575, inlinedAt: !1567)
!1578 = !DILocation(line: 510, column: 32, scope: !1575, inlinedAt: !1567)
!1579 = !DILocation(line: 510, column: 11, scope: !1573, inlinedAt: !1567)
!1580 = !DILocation(line: 512, column: 30, scope: !1581, inlinedAt: !1567)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !463, line: 511, column: 9)
!1582 = !DILocation(line: 528, column: 19, scope: !474, inlinedAt: !1567)
!1583 = !DILocation(line: 0, scope: !1557, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 520, column: 20, scope: !1585, inlinedAt: !1567)
!1585 = distinct !DILexicalBlock(scope: !1575, file: !463, line: 519, column: 9)
!1586 = !DILocation(line: 479, column: 12, scope: !1557, inlinedAt: !1584)
!1587 = !DILocation(line: 521, column: 22, scope: !1588, inlinedAt: !1567)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !463, line: 521, column: 15)
!1589 = !DILocation(line: 521, column: 15, scope: !1585, inlinedAt: !1567)
!1590 = !DILocation(line: 522, column: 32, scope: !1588, inlinedAt: !1567)
!1591 = !DILocation(line: 522, column: 13, scope: !1588, inlinedAt: !1567)
!1592 = !DILocation(line: 0, scope: !1557, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 527, column: 14, scope: !1569, inlinedAt: !1567)
!1594 = !DILocation(line: 479, column: 12, scope: !1557, inlinedAt: !1593)
!1595 = !DILocation(line: 0, scope: !1569, inlinedAt: !1567)
!1596 = !DILocation(line: 528, column: 9, scope: !474, inlinedAt: !1567)
!1597 = !DILocation(line: 530, column: 19, scope: !473, inlinedAt: !1567)
!1598 = !DILocation(line: 0, scope: !473, inlinedAt: !1567)
!1599 = !DILocation(line: 531, column: 17, scope: !477, inlinedAt: !1567)
!1600 = !DILocation(line: 531, column: 21, scope: !477, inlinedAt: !1567)
!1601 = !DILocation(line: 531, column: 54, scope: !477, inlinedAt: !1567)
!1602 = !DILocation(line: 531, column: 24, scope: !477, inlinedAt: !1567)
!1603 = !DILocation(line: 531, column: 68, scope: !477, inlinedAt: !1567)
!1604 = !DILocation(line: 531, column: 11, scope: !473, inlinedAt: !1567)
!1605 = !DILocation(line: 533, column: 29, scope: !476, inlinedAt: !1567)
!1606 = !DILocation(line: 0, scope: !476, inlinedAt: !1567)
!1607 = !DILocation(line: 534, column: 11, scope: !476, inlinedAt: !1567)
!1608 = !DILocation(line: 535, column: 17, scope: !476, inlinedAt: !1567)
!1609 = !DILocation(line: 537, column: 9, scope: !476, inlinedAt: !1567)
!1610 = !DILocation(line: 329, column: 22, scope: !1545)
!1611 = !DILocation(line: 330, column: 13, scope: !1545)
!1612 = !DILocation(line: 418, column: 23, scope: !1544)
!1613 = !DILocation(line: 0, scope: !1544)
!1614 = !DILocation(line: 419, column: 24, scope: !1544)
!1615 = !DILocation(line: 421, column: 13, scope: !1545)
!1616 = !DILocation(line: 426, column: 25, scope: !1548)
!1617 = !DILocation(line: 0, scope: !1548)
!1618 = !DILocation(line: 427, column: 24, scope: !1548)
!1619 = !DILocation(line: 429, column: 13, scope: !1545)
!1620 = !DILocation(line: 0, scope: !1540)
!1621 = !DILocation(line: 438, column: 3, scope: !1522)
!1622 = !DILocation(line: 441, column: 1, scope: !1522)
!1623 = !DILocation(line: 440, column: 3, scope: !1522)
!1624 = distinct !DISubprogram(name: "fd_reopen", scope: !762, file: !762, line: 32, type: !1625, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!184, !184, !134, !184, !1088}
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1636}
!1628 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1624, file: !762, line: 32, type: !184)
!1629 = !DILocalVariable(name: "file", arg: 2, scope: !1624, file: !762, line: 32, type: !134)
!1630 = !DILocalVariable(name: "flags", arg: 3, scope: !1624, file: !762, line: 32, type: !184)
!1631 = !DILocalVariable(name: "mode", arg: 4, scope: !1624, file: !762, line: 32, type: !1088)
!1632 = !DILocalVariable(name: "fd", scope: !1624, file: !762, line: 34, type: !184)
!1633 = !DILocalVariable(name: "fd2", scope: !1634, file: !762, line: 40, type: !184)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !762, line: 39, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1624, file: !762, line: 36, column: 7)
!1636 = !DILocalVariable(name: "saved_errno", scope: !1634, file: !762, line: 41, type: !184)
!1637 = !DILocation(line: 0, scope: !1624)
!1638 = !DILocation(line: 34, column: 12, scope: !1624)
!1639 = !DILocation(line: 36, column: 10, scope: !1635)
!1640 = !DILocation(line: 36, column: 24, scope: !1635)
!1641 = !DILocation(line: 40, column: 17, scope: !1634)
!1642 = !DILocation(line: 0, scope: !1634)
!1643 = !DILocation(line: 41, column: 25, scope: !1634)
!1644 = !DILocation(line: 42, column: 7, scope: !1634)
!1645 = !DILocation(line: 43, column: 13, scope: !1634)
!1646 = !DILocation(line: 0, scope: !1635)
!1647 = !DILocation(line: 46, column: 1, scope: !1624)
!1648 = distinct !DISubprogram(name: "file_name_concat", scope: !764, file: !764, line: 35, type: !1649, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!330, !134, !134, !1066}
!1651 = !{!1652, !1653, !1654, !1655}
!1652 = !DILocalVariable(name: "dir", arg: 1, scope: !1648, file: !764, line: 35, type: !134)
!1653 = !DILocalVariable(name: "base", arg: 2, scope: !1648, file: !764, line: 35, type: !134)
!1654 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1648, file: !764, line: 35, type: !1066)
!1655 = !DILocalVariable(name: "p", scope: !1648, file: !764, line: 37, type: !330)
!1656 = !DILocation(line: 0, scope: !1648)
!1657 = !DILocation(line: 37, column: 13, scope: !1648)
!1658 = !DILocation(line: 38, column: 9, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !764, line: 38, column: 7)
!1660 = !DILocation(line: 38, column: 7, scope: !1648)
!1661 = !DILocation(line: 39, column: 5, scope: !1659)
!1662 = !DILocation(line: 40, column: 3, scope: !1648)
!1663 = distinct !DISubprogram(name: "mfile_name_concat", scope: !767, file: !767, line: 48, type: !1649, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1665 = !DILocalVariable(name: "dir", arg: 1, scope: !1663, file: !767, line: 48, type: !134)
!1666 = !DILocalVariable(name: "base", arg: 2, scope: !1663, file: !767, line: 48, type: !134)
!1667 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1663, file: !767, line: 48, type: !1066)
!1668 = !DILocalVariable(name: "dirbase", scope: !1663, file: !767, line: 50, type: !134)
!1669 = !DILocalVariable(name: "dirbaselen", scope: !1663, file: !767, line: 51, type: !186)
!1670 = !DILocalVariable(name: "dirlen", scope: !1663, file: !767, line: 52, type: !186)
!1671 = !DILocalVariable(name: "baselen", scope: !1663, file: !767, line: 53, type: !186)
!1672 = !DILocalVariable(name: "sep", scope: !1663, file: !767, line: 54, type: !4)
!1673 = !DILocalVariable(name: "p_concat", scope: !1663, file: !767, line: 71, type: !330)
!1674 = !DILocalVariable(name: "p", scope: !1675, file: !767, line: 76, type: !330)
!1675 = distinct !DILexicalBlock(scope: !1663, file: !767, line: 75, column: 3)
!1676 = !DILocation(line: 0, scope: !1663)
!1677 = !DILocation(line: 50, column: 25, scope: !1663)
!1678 = !DILocation(line: 51, column: 23, scope: !1663)
!1679 = !DILocation(line: 52, column: 27, scope: !1663)
!1680 = !DILocation(line: 52, column: 33, scope: !1663)
!1681 = !DILocation(line: 53, column: 20, scope: !1663)
!1682 = !DILocation(line: 55, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1663, file: !767, line: 55, column: 7)
!1684 = !DILocation(line: 55, column: 7, scope: !1663)
!1685 = !DILocation(line: 58, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !767, line: 58, column: 11)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !767, line: 56, column: 5)
!1688 = !DILocation(line: 58, column: 39, scope: !1686)
!1689 = !DILocation(line: 58, column: 44, scope: !1686)
!1690 = !DILocation(line: 58, column: 11, scope: !1687)
!1691 = !DILocation(line: 61, column: 12, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1683, file: !767, line: 61, column: 12)
!1693 = !DILocation(line: 61, column: 12, scope: !1683)
!1694 = !DILocation(line: 71, column: 35, scope: !1663)
!1695 = !DILocation(line: 71, column: 52, scope: !1663)
!1696 = !DILocation(line: 71, column: 62, scope: !1663)
!1697 = !DILocation(line: 71, column: 20, scope: !1663)
!1698 = !DILocation(line: 72, column: 16, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1663, file: !767, line: 72, column: 7)
!1700 = !DILocation(line: 72, column: 7, scope: !1663)
!1701 = !DILocalVariable(name: "__dest", arg: 1, scope: !1702, file: !1703, line: 42, type: !1706)
!1702 = distinct !DISubprogram(name: "mempcpy", scope: !1703, file: !1703, line: 42, type: !1704, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !1707)
!1703 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!178, !1706, !1060, !186}
!1706 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1707 = !{!1701, !1708, !1709}
!1708 = !DILocalVariable(name: "__src", arg: 2, scope: !1702, file: !1703, line: 42, type: !1060)
!1709 = !DILocalVariable(name: "__len", arg: 3, scope: !1702, file: !1703, line: 42, type: !186)
!1710 = !DILocation(line: 0, scope: !1702, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 78, column: 9, scope: !1675)
!1712 = !DILocation(line: 45, column: 10, scope: !1702, inlinedAt: !1711)
!1713 = !DILocation(line: 0, scope: !1675)
!1714 = !DILocation(line: 79, column: 8, scope: !1675)
!1715 = !DILocation(line: 80, column: 7, scope: !1675)
!1716 = !DILocation(line: 82, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1675, file: !767, line: 82, column: 9)
!1718 = !DILocation(line: 82, column: 9, scope: !1675)
!1719 = !DILocation(line: 83, column: 23, scope: !1717)
!1720 = !DILocation(line: 83, column: 7, scope: !1717)
!1721 = !DILocation(line: 0, scope: !1702, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 85, column: 9, scope: !1675)
!1723 = !DILocation(line: 45, column: 10, scope: !1702, inlinedAt: !1722)
!1724 = !DILocation(line: 86, column: 8, scope: !1675)
!1725 = !DILocation(line: 89, column: 3, scope: !1663)
!1726 = !DILocation(line: 90, column: 1, scope: !1663)
!1727 = !DISubprogram(name: "strlen", scope: !1033, file: !1033, line: 407, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!188, !134}
!1730 = !DISubprogram(name: "malloc", scope: !1037, file: !1037, line: 540, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!178, !186}
!1733 = distinct !DISubprogram(name: "getprogname", scope: !769, file: !769, line: 54, type: !1734, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !901)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!134}
!1736 = !DILocation(line: 58, column: 10, scope: !1733)
!1737 = !DILocation(line: 58, column: 3, scope: !1733)
!1738 = distinct !DISubprogram(name: "parse_long_options", scope: !480, file: !480, line: 45, type: !1739, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !184, !1066, !134, !134, !134, !181, null}
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1752}
!1742 = !DILocalVariable(name: "argc", arg: 1, scope: !1738, file: !480, line: 45, type: !184)
!1743 = !DILocalVariable(name: "argv", arg: 2, scope: !1738, file: !480, line: 46, type: !1066)
!1744 = !DILocalVariable(name: "command_name", arg: 3, scope: !1738, file: !480, line: 47, type: !134)
!1745 = !DILocalVariable(name: "package", arg: 4, scope: !1738, file: !480, line: 48, type: !134)
!1746 = !DILocalVariable(name: "version", arg: 5, scope: !1738, file: !480, line: 49, type: !134)
!1747 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1738, file: !480, line: 50, type: !181)
!1748 = !DILocalVariable(name: "saved_opterr", scope: !1738, file: !480, line: 53, type: !184)
!1749 = !DILocalVariable(name: "c", scope: !1750, file: !480, line: 60, type: !184)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !480, line: 59, column: 5)
!1751 = distinct !DILexicalBlock(scope: !1738, file: !480, line: 58, column: 7)
!1752 = !DILocalVariable(name: "authors", scope: !1753, file: !480, line: 71, type: !1757)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !480, line: 70, column: 15)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !480, line: 64, column: 13)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !480, line: 62, column: 9)
!1756 = distinct !DILexicalBlock(scope: !1750, file: !480, line: 61, column: 11)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !417, line: 52, baseType: !1758)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !419, line: 14, baseType: !1759)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1760, baseType: !1761)
!1760 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1761, file: !1760, line: 71, baseType: !178, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1761, file: !1760, line: 71, baseType: !178, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1761, file: !1760, line: 71, baseType: !178, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1761, file: !1760, line: 71, baseType: !184, size: 32, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1761, file: !1760, line: 71, baseType: !184, size: 32, offset: 224)
!1768 = !DILocation(line: 0, scope: !1738)
!1769 = !DILocation(line: 53, column: 22, scope: !1738)
!1770 = !DILocation(line: 56, column: 10, scope: !1738)
!1771 = !DILocation(line: 58, column: 12, scope: !1751)
!1772 = !DILocation(line: 58, column: 7, scope: !1738)
!1773 = !DILocation(line: 60, column: 15, scope: !1750)
!1774 = !DILocation(line: 0, scope: !1750)
!1775 = !DILocation(line: 61, column: 11, scope: !1750)
!1776 = !DILocation(line: 66, column: 15, scope: !1754)
!1777 = !DILocation(line: 67, column: 15, scope: !1754)
!1778 = !DILocation(line: 71, column: 17, scope: !1753)
!1779 = !DILocation(line: 71, column: 25, scope: !1753)
!1780 = !DILocation(line: 72, column: 17, scope: !1753)
!1781 = !DILocation(line: 73, column: 33, scope: !1753)
!1782 = !DILocation(line: 73, column: 17, scope: !1753)
!1783 = !DILocation(line: 74, column: 17, scope: !1753)
!1784 = !DILocation(line: 85, column: 10, scope: !1738)
!1785 = !DILocation(line: 89, column: 10, scope: !1738)
!1786 = !DILocation(line: 90, column: 1, scope: !1738)
!1787 = !DISubprogram(name: "getopt_long", scope: !494, file: !494, line: 66, type: !1788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!184, !184, !1253, !134, !1790, !499}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1791 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !480, file: !480, line: 98, type: !1792, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !184, !1066, !134, !134, !134, !309, !181, null}
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805}
!1795 = !DILocalVariable(name: "argc", arg: 1, scope: !1791, file: !480, line: 98, type: !184)
!1796 = !DILocalVariable(name: "argv", arg: 2, scope: !1791, file: !480, line: 99, type: !1066)
!1797 = !DILocalVariable(name: "command_name", arg: 3, scope: !1791, file: !480, line: 100, type: !134)
!1798 = !DILocalVariable(name: "package", arg: 4, scope: !1791, file: !480, line: 101, type: !134)
!1799 = !DILocalVariable(name: "version", arg: 5, scope: !1791, file: !480, line: 102, type: !134)
!1800 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1791, file: !480, line: 103, type: !309)
!1801 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1791, file: !480, line: 104, type: !181)
!1802 = !DILocalVariable(name: "saved_opterr", scope: !1791, file: !480, line: 107, type: !184)
!1803 = !DILocalVariable(name: "optstring", scope: !1791, file: !480, line: 112, type: !134)
!1804 = !DILocalVariable(name: "c", scope: !1791, file: !480, line: 114, type: !184)
!1805 = !DILocalVariable(name: "authors", scope: !1806, file: !480, line: 125, type: !1757)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !480, line: 124, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !480, line: 118, column: 9)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !480, line: 116, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1791, file: !480, line: 115, column: 7)
!1810 = !DILocation(line: 0, scope: !1791)
!1811 = !DILocation(line: 107, column: 22, scope: !1791)
!1812 = !DILocation(line: 110, column: 10, scope: !1791)
!1813 = !DILocation(line: 112, column: 27, scope: !1791)
!1814 = !DILocation(line: 114, column: 11, scope: !1791)
!1815 = !DILocation(line: 115, column: 7, scope: !1791)
!1816 = !DILocation(line: 125, column: 13, scope: !1806)
!1817 = !DILocation(line: 125, column: 21, scope: !1806)
!1818 = !DILocation(line: 126, column: 13, scope: !1806)
!1819 = !DILocation(line: 127, column: 29, scope: !1806)
!1820 = !DILocation(line: 127, column: 13, scope: !1806)
!1821 = !DILocation(line: 128, column: 13, scope: !1806)
!1822 = !DILocation(line: 132, column: 26, scope: !1807)
!1823 = !DILocation(line: 133, column: 11, scope: !1807)
!1824 = !DILocation(line: 0, scope: !1807)
!1825 = !DILocation(line: 138, column: 10, scope: !1791)
!1826 = !DILocation(line: 139, column: 1, scope: !1791)
!1827 = distinct !DISubprogram(name: "set_program_name", scope: !504, file: !504, line: 37, type: !861, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1828)
!1828 = !{!1829, !1830, !1831}
!1829 = !DILocalVariable(name: "argv0", arg: 1, scope: !1827, file: !504, line: 37, type: !134)
!1830 = !DILocalVariable(name: "slash", scope: !1827, file: !504, line: 44, type: !134)
!1831 = !DILocalVariable(name: "base", scope: !1827, file: !504, line: 45, type: !134)
!1832 = !DILocation(line: 0, scope: !1827)
!1833 = !DILocation(line: 44, column: 23, scope: !1827)
!1834 = !DILocation(line: 45, column: 22, scope: !1827)
!1835 = !DILocation(line: 46, column: 17, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1827, file: !504, line: 46, column: 7)
!1837 = !DILocation(line: 46, column: 9, scope: !1836)
!1838 = !DILocation(line: 46, column: 25, scope: !1836)
!1839 = !DILocation(line: 46, column: 40, scope: !1836)
!1840 = !DILocalVariable(name: "__s1", arg: 1, scope: !1841, file: !929, line: 974, type: !1061)
!1841 = distinct !DISubprogram(name: "memeq", scope: !929, file: !929, line: 974, type: !1842, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!309, !1061, !1061, !186}
!1844 = !{!1840, !1845, !1846}
!1845 = !DILocalVariable(name: "__s2", arg: 2, scope: !1841, file: !929, line: 974, type: !1061)
!1846 = !DILocalVariable(name: "__n", arg: 3, scope: !1841, file: !929, line: 974, type: !186)
!1847 = !DILocation(line: 0, scope: !1841, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 46, column: 28, scope: !1836)
!1849 = !DILocation(line: 976, column: 11, scope: !1841, inlinedAt: !1848)
!1850 = !DILocation(line: 976, column: 10, scope: !1841, inlinedAt: !1848)
!1851 = !DILocation(line: 46, column: 7, scope: !1827)
!1852 = !DILocation(line: 49, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !504, line: 49, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1836, file: !504, line: 47, column: 5)
!1855 = !DILocation(line: 49, column: 36, scope: !1853)
!1856 = !DILocation(line: 49, column: 11, scope: !1854)
!1857 = !DILocation(line: 65, column: 16, scope: !1827)
!1858 = !DILocation(line: 71, column: 27, scope: !1827)
!1859 = !DILocation(line: 74, column: 33, scope: !1827)
!1860 = !DILocation(line: 76, column: 1, scope: !1827)
!1861 = !DISubprogram(name: "strrchr", scope: !1033, file: !1033, line: 273, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1862 = !DILocation(line: 0, scope: !513)
!1863 = !DILocation(line: 40, column: 29, scope: !513)
!1864 = !DILocation(line: 41, column: 19, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !513, file: !514, line: 41, column: 7)
!1866 = !DILocation(line: 41, column: 7, scope: !513)
!1867 = !DILocation(line: 47, column: 3, scope: !513)
!1868 = !DILocation(line: 48, column: 3, scope: !513)
!1869 = !DILocation(line: 48, column: 13, scope: !513)
!1870 = !DILocalVariable(name: "ps", arg: 1, scope: !1871, file: !1872, line: 1135, type: !1875)
!1871 = distinct !DISubprogram(name: "mbszero", scope: !1872, file: !1872, line: 1135, type: !1873, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !1876)
!1872 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1876 = !{!1870}
!1877 = !DILocation(line: 0, scope: !1871, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 48, column: 18, scope: !513)
!1879 = !DILocalVariable(name: "__dest", arg: 1, scope: !1880, file: !1703, line: 57, type: !178)
!1880 = distinct !DISubprogram(name: "memset", scope: !1703, file: !1703, line: 57, type: !1881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!178, !178, !184, !186}
!1883 = !{!1879, !1884, !1885}
!1884 = !DILocalVariable(name: "__ch", arg: 2, scope: !1880, file: !1703, line: 57, type: !184)
!1885 = !DILocalVariable(name: "__len", arg: 3, scope: !1880, file: !1703, line: 57, type: !186)
!1886 = !DILocation(line: 0, scope: !1880, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 1137, column: 3, scope: !1871, inlinedAt: !1878)
!1888 = !DILocation(line: 59, column: 10, scope: !1880, inlinedAt: !1887)
!1889 = !DILocation(line: 49, column: 7, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !513, file: !514, line: 49, column: 7)
!1891 = !DILocation(line: 49, column: 39, scope: !1890)
!1892 = !DILocation(line: 49, column: 44, scope: !1890)
!1893 = !DILocation(line: 54, column: 1, scope: !513)
!1894 = !DISubprogram(name: "mbrtoc32", scope: !525, file: !525, line: 57, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!186, !1897, !907, !186, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1875)
!1900 = distinct !DISubprogram(name: "clone_quoting_options", scope: !544, file: !544, line: 113, type: !1901, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1904)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1903, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "o", arg: 1, scope: !1900, file: !544, line: 113, type: !1903)
!1906 = !DILocalVariable(name: "saved_errno", scope: !1900, file: !544, line: 115, type: !184)
!1907 = !DILocalVariable(name: "p", scope: !1900, file: !544, line: 116, type: !1903)
!1908 = !DILocation(line: 0, scope: !1900)
!1909 = !DILocation(line: 115, column: 21, scope: !1900)
!1910 = !DILocation(line: 116, column: 40, scope: !1900)
!1911 = !DILocation(line: 116, column: 31, scope: !1900)
!1912 = !DILocation(line: 118, column: 9, scope: !1900)
!1913 = !DILocation(line: 119, column: 3, scope: !1900)
!1914 = distinct !DISubprogram(name: "get_quoting_style", scope: !544, file: !544, line: 124, type: !1915, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1919)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!148, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!1919 = !{!1920}
!1920 = !DILocalVariable(name: "o", arg: 1, scope: !1914, file: !544, line: 124, type: !1917)
!1921 = !DILocation(line: 0, scope: !1914)
!1922 = !DILocation(line: 126, column: 11, scope: !1914)
!1923 = !DILocation(line: 126, column: 46, scope: !1914)
!1924 = !{!1925, !850, i64 0}
!1925 = !{!"quoting_options", !850, i64 0, !917, i64 4, !850, i64 8, !849, i64 40, !849, i64 48}
!1926 = !DILocation(line: 126, column: 3, scope: !1914)
!1927 = distinct !DISubprogram(name: "set_quoting_style", scope: !544, file: !544, line: 132, type: !1928, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1903, !148}
!1930 = !{!1931, !1932}
!1931 = !DILocalVariable(name: "o", arg: 1, scope: !1927, file: !544, line: 132, type: !1903)
!1932 = !DILocalVariable(name: "s", arg: 2, scope: !1927, file: !544, line: 132, type: !148)
!1933 = !DILocation(line: 0, scope: !1927)
!1934 = !DILocation(line: 134, column: 4, scope: !1927)
!1935 = !DILocation(line: 134, column: 45, scope: !1927)
!1936 = !DILocation(line: 135, column: 1, scope: !1927)
!1937 = distinct !DISubprogram(name: "set_char_quoting", scope: !544, file: !544, line: 143, type: !1938, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1940)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!184, !1903, !4, !184}
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1947, !1948}
!1941 = !DILocalVariable(name: "o", arg: 1, scope: !1937, file: !544, line: 143, type: !1903)
!1942 = !DILocalVariable(name: "c", arg: 2, scope: !1937, file: !544, line: 143, type: !4)
!1943 = !DILocalVariable(name: "i", arg: 3, scope: !1937, file: !544, line: 143, type: !184)
!1944 = !DILocalVariable(name: "uc", scope: !1937, file: !544, line: 145, type: !189)
!1945 = !DILocalVariable(name: "p", scope: !1937, file: !544, line: 146, type: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1947 = !DILocalVariable(name: "shift", scope: !1937, file: !544, line: 148, type: !184)
!1948 = !DILocalVariable(name: "r", scope: !1937, file: !544, line: 149, type: !139)
!1949 = !DILocation(line: 0, scope: !1937)
!1950 = !DILocation(line: 147, column: 6, scope: !1937)
!1951 = !DILocation(line: 147, column: 41, scope: !1937)
!1952 = !DILocation(line: 147, column: 62, scope: !1937)
!1953 = !DILocation(line: 147, column: 57, scope: !1937)
!1954 = !DILocation(line: 148, column: 15, scope: !1937)
!1955 = !DILocation(line: 149, column: 21, scope: !1937)
!1956 = !DILocation(line: 149, column: 24, scope: !1937)
!1957 = !DILocation(line: 149, column: 34, scope: !1937)
!1958 = !DILocation(line: 150, column: 19, scope: !1937)
!1959 = !DILocation(line: 150, column: 24, scope: !1937)
!1960 = !DILocation(line: 150, column: 6, scope: !1937)
!1961 = !DILocation(line: 151, column: 3, scope: !1937)
!1962 = distinct !DISubprogram(name: "set_quoting_flags", scope: !544, file: !544, line: 159, type: !1963, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!184, !1903, !184}
!1965 = !{!1966, !1967, !1968}
!1966 = !DILocalVariable(name: "o", arg: 1, scope: !1962, file: !544, line: 159, type: !1903)
!1967 = !DILocalVariable(name: "i", arg: 2, scope: !1962, file: !544, line: 159, type: !184)
!1968 = !DILocalVariable(name: "r", scope: !1962, file: !544, line: 163, type: !184)
!1969 = !DILocation(line: 0, scope: !1962)
!1970 = !DILocation(line: 161, column: 8, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1962, file: !544, line: 161, column: 7)
!1972 = !DILocation(line: 161, column: 7, scope: !1962)
!1973 = !DILocation(line: 163, column: 14, scope: !1962)
!1974 = !{!1925, !917, i64 4}
!1975 = !DILocation(line: 164, column: 12, scope: !1962)
!1976 = !DILocation(line: 165, column: 3, scope: !1962)
!1977 = distinct !DISubprogram(name: "set_custom_quoting", scope: !544, file: !544, line: 169, type: !1978, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !1903, !134, !134}
!1980 = !{!1981, !1982, !1983}
!1981 = !DILocalVariable(name: "o", arg: 1, scope: !1977, file: !544, line: 169, type: !1903)
!1982 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1977, file: !544, line: 170, type: !134)
!1983 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1977, file: !544, line: 170, type: !134)
!1984 = !DILocation(line: 0, scope: !1977)
!1985 = !DILocation(line: 172, column: 8, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1977, file: !544, line: 172, column: 7)
!1987 = !DILocation(line: 172, column: 7, scope: !1977)
!1988 = !DILocation(line: 174, column: 12, scope: !1977)
!1989 = !DILocation(line: 175, column: 8, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1977, file: !544, line: 175, column: 7)
!1991 = !DILocation(line: 175, column: 19, scope: !1990)
!1992 = !DILocation(line: 176, column: 5, scope: !1990)
!1993 = !DILocation(line: 177, column: 6, scope: !1977)
!1994 = !DILocation(line: 177, column: 17, scope: !1977)
!1995 = !{!1925, !849, i64 40}
!1996 = !DILocation(line: 178, column: 6, scope: !1977)
!1997 = !DILocation(line: 178, column: 18, scope: !1977)
!1998 = !{!1925, !849, i64 48}
!1999 = !DILocation(line: 179, column: 1, scope: !1977)
!2000 = !DISubprogram(name: "abort", scope: !1037, file: !1037, line: 598, type: !458, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !901)
!2001 = distinct !DISubprogram(name: "quotearg_buffer", scope: !544, file: !544, line: 774, type: !2002, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!186, !330, !186, !134, !186, !1917}
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2005 = !DILocalVariable(name: "buffer", arg: 1, scope: !2001, file: !544, line: 774, type: !330)
!2006 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2001, file: !544, line: 774, type: !186)
!2007 = !DILocalVariable(name: "arg", arg: 3, scope: !2001, file: !544, line: 775, type: !134)
!2008 = !DILocalVariable(name: "argsize", arg: 4, scope: !2001, file: !544, line: 775, type: !186)
!2009 = !DILocalVariable(name: "o", arg: 5, scope: !2001, file: !544, line: 776, type: !1917)
!2010 = !DILocalVariable(name: "p", scope: !2001, file: !544, line: 778, type: !1917)
!2011 = !DILocalVariable(name: "saved_errno", scope: !2001, file: !544, line: 779, type: !184)
!2012 = !DILocalVariable(name: "r", scope: !2001, file: !544, line: 780, type: !186)
!2013 = !DILocation(line: 0, scope: !2001)
!2014 = !DILocation(line: 778, column: 37, scope: !2001)
!2015 = !DILocation(line: 779, column: 21, scope: !2001)
!2016 = !DILocation(line: 781, column: 43, scope: !2001)
!2017 = !DILocation(line: 781, column: 53, scope: !2001)
!2018 = !DILocation(line: 781, column: 63, scope: !2001)
!2019 = !DILocation(line: 782, column: 43, scope: !2001)
!2020 = !DILocation(line: 782, column: 58, scope: !2001)
!2021 = !DILocation(line: 780, column: 14, scope: !2001)
!2022 = !DILocation(line: 783, column: 9, scope: !2001)
!2023 = !DILocation(line: 784, column: 3, scope: !2001)
!2024 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !544, file: !544, line: 251, type: !2025, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2029)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!186, !330, !186, !134, !186, !148, !184, !2027, !134, !134}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2054, !2056, !2059, !2060, !2061, !2062, !2065, !2066, !2069, !2073, !2074, !2082, !2085, !2086, !2088, !2089, !2090, !2091}
!2030 = !DILocalVariable(name: "buffer", arg: 1, scope: !2024, file: !544, line: 251, type: !330)
!2031 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2024, file: !544, line: 251, type: !186)
!2032 = !DILocalVariable(name: "arg", arg: 3, scope: !2024, file: !544, line: 252, type: !134)
!2033 = !DILocalVariable(name: "argsize", arg: 4, scope: !2024, file: !544, line: 252, type: !186)
!2034 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2024, file: !544, line: 253, type: !148)
!2035 = !DILocalVariable(name: "flags", arg: 6, scope: !2024, file: !544, line: 253, type: !184)
!2036 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2024, file: !544, line: 254, type: !2027)
!2037 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2024, file: !544, line: 255, type: !134)
!2038 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2024, file: !544, line: 256, type: !134)
!2039 = !DILocalVariable(name: "unibyte_locale", scope: !2024, file: !544, line: 258, type: !309)
!2040 = !DILocalVariable(name: "len", scope: !2024, file: !544, line: 260, type: !186)
!2041 = !DILocalVariable(name: "orig_buffersize", scope: !2024, file: !544, line: 261, type: !186)
!2042 = !DILocalVariable(name: "quote_string", scope: !2024, file: !544, line: 262, type: !134)
!2043 = !DILocalVariable(name: "quote_string_len", scope: !2024, file: !544, line: 263, type: !186)
!2044 = !DILocalVariable(name: "backslash_escapes", scope: !2024, file: !544, line: 264, type: !309)
!2045 = !DILocalVariable(name: "elide_outer_quotes", scope: !2024, file: !544, line: 265, type: !309)
!2046 = !DILocalVariable(name: "encountered_single_quote", scope: !2024, file: !544, line: 266, type: !309)
!2047 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2024, file: !544, line: 267, type: !309)
!2048 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2024, file: !544, line: 309, type: !309)
!2049 = !DILocalVariable(name: "lq", scope: !2050, file: !544, line: 361, type: !134)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !544, line: 361, column: 11)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !544, line: 360, column: 13)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !544, line: 333, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 312, column: 5)
!2054 = !DILocalVariable(name: "i", scope: !2055, file: !544, line: 395, type: !186)
!2055 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 395, column: 3)
!2056 = !DILocalVariable(name: "is_right_quote", scope: !2057, file: !544, line: 397, type: !309)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !544, line: 396, column: 5)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !544, line: 395, column: 3)
!2059 = !DILocalVariable(name: "escaping", scope: !2057, file: !544, line: 398, type: !309)
!2060 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2057, file: !544, line: 399, type: !309)
!2061 = !DILocalVariable(name: "c", scope: !2057, file: !544, line: 417, type: !189)
!2062 = !DILocalVariable(name: "m", scope: !2063, file: !544, line: 598, type: !186)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 596, column: 11)
!2064 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 419, column: 9)
!2065 = !DILocalVariable(name: "printable", scope: !2063, file: !544, line: 600, type: !309)
!2066 = !DILocalVariable(name: "mbs", scope: !2067, file: !544, line: 609, type: !614)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !544, line: 608, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !544, line: 602, column: 17)
!2069 = !DILocalVariable(name: "w", scope: !2070, file: !544, line: 618, type: !524)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !544, line: 617, column: 19)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !544, line: 616, column: 17)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 616, column: 17)
!2073 = !DILocalVariable(name: "bytes", scope: !2070, file: !544, line: 619, type: !186)
!2074 = !DILocalVariable(name: "j", scope: !2075, file: !544, line: 648, type: !186)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !544, line: 648, column: 29)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !544, line: 647, column: 27)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !544, line: 645, column: 29)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !544, line: 636, column: 23)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !544, line: 628, column: 30)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !544, line: 623, column: 30)
!2081 = distinct !DILexicalBlock(scope: !2070, file: !544, line: 621, column: 25)
!2082 = !DILocalVariable(name: "ilim", scope: !2083, file: !544, line: 674, type: !186)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !544, line: 671, column: 15)
!2084 = distinct !DILexicalBlock(scope: !2063, file: !544, line: 670, column: 17)
!2085 = !DILabel(scope: !2024, name: "process_input", file: !544, line: 308)
!2086 = !DILabel(scope: !2087, name: "c_and_shell_escape", file: !544, line: 502)
!2087 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 478, column: 9)
!2088 = !DILabel(scope: !2087, name: "c_escape", file: !544, line: 507)
!2089 = !DILabel(scope: !2057, name: "store_escape", file: !544, line: 709)
!2090 = !DILabel(scope: !2057, name: "store_c", file: !544, line: 712)
!2091 = !DILabel(scope: !2024, name: "force_outer_quoting_style", file: !544, line: 753)
!2092 = !DILocation(line: 0, scope: !2024)
!2093 = !DILocation(line: 258, column: 25, scope: !2024)
!2094 = !DILocation(line: 258, column: 36, scope: !2024)
!2095 = !DILocation(line: 267, column: 3, scope: !2024)
!2096 = !DILocation(line: 261, column: 10, scope: !2024)
!2097 = !DILocation(line: 262, column: 15, scope: !2024)
!2098 = !DILocation(line: 263, column: 10, scope: !2024)
!2099 = !DILocation(line: 308, column: 2, scope: !2024)
!2100 = !DILocation(line: 311, column: 3, scope: !2024)
!2101 = !DILocation(line: 318, column: 11, scope: !2053)
!2102 = !DILocation(line: 319, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !544, line: 319, column: 9)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !544, line: 319, column: 9)
!2105 = distinct !DILexicalBlock(scope: !2053, file: !544, line: 318, column: 11)
!2106 = !DILocation(line: 319, column: 9, scope: !2104)
!2107 = !DILocation(line: 0, scope: !605, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 357, column: 26, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !544, line: 335, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2052, file: !544, line: 334, column: 13)
!2111 = !DILocation(line: 199, column: 29, scope: !605, inlinedAt: !2108)
!2112 = !DILocation(line: 201, column: 19, scope: !2113, inlinedAt: !2108)
!2113 = distinct !DILexicalBlock(scope: !605, file: !544, line: 201, column: 7)
!2114 = !DILocation(line: 201, column: 7, scope: !605, inlinedAt: !2108)
!2115 = !DILocation(line: 229, column: 3, scope: !605, inlinedAt: !2108)
!2116 = !DILocation(line: 230, column: 3, scope: !605, inlinedAt: !2108)
!2117 = !DILocation(line: 230, column: 13, scope: !605, inlinedAt: !2108)
!2118 = !DILocalVariable(name: "ps", arg: 1, scope: !2119, file: !1872, line: 1135, type: !2122)
!2119 = distinct !DISubprogram(name: "mbszero", scope: !1872, file: !1872, line: 1135, type: !2120, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2123)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2123 = !{!2118}
!2124 = !DILocation(line: 0, scope: !2119, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 230, column: 18, scope: !605, inlinedAt: !2108)
!2126 = !DILocalVariable(name: "__dest", arg: 1, scope: !2127, file: !1703, line: 57, type: !178)
!2127 = distinct !DISubprogram(name: "memset", scope: !1703, file: !1703, line: 57, type: !1881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2128)
!2128 = !{!2126, !2129, !2130}
!2129 = !DILocalVariable(name: "__ch", arg: 2, scope: !2127, file: !1703, line: 57, type: !184)
!2130 = !DILocalVariable(name: "__len", arg: 3, scope: !2127, file: !1703, line: 57, type: !186)
!2131 = !DILocation(line: 0, scope: !2127, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 1137, column: 3, scope: !2119, inlinedAt: !2125)
!2133 = !DILocation(line: 59, column: 10, scope: !2127, inlinedAt: !2132)
!2134 = !DILocation(line: 231, column: 7, scope: !2135, inlinedAt: !2108)
!2135 = distinct !DILexicalBlock(scope: !605, file: !544, line: 231, column: 7)
!2136 = !DILocation(line: 231, column: 40, scope: !2135, inlinedAt: !2108)
!2137 = !DILocation(line: 231, column: 45, scope: !2135, inlinedAt: !2108)
!2138 = !DILocation(line: 235, column: 1, scope: !605, inlinedAt: !2108)
!2139 = !DILocation(line: 0, scope: !605, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 358, column: 27, scope: !2109)
!2141 = !DILocation(line: 199, column: 29, scope: !605, inlinedAt: !2140)
!2142 = !DILocation(line: 201, column: 19, scope: !2113, inlinedAt: !2140)
!2143 = !DILocation(line: 201, column: 7, scope: !605, inlinedAt: !2140)
!2144 = !DILocation(line: 229, column: 3, scope: !605, inlinedAt: !2140)
!2145 = !DILocation(line: 230, column: 3, scope: !605, inlinedAt: !2140)
!2146 = !DILocation(line: 230, column: 13, scope: !605, inlinedAt: !2140)
!2147 = !DILocation(line: 0, scope: !2119, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 230, column: 18, scope: !605, inlinedAt: !2140)
!2149 = !DILocation(line: 0, scope: !2127, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 1137, column: 3, scope: !2119, inlinedAt: !2148)
!2151 = !DILocation(line: 59, column: 10, scope: !2127, inlinedAt: !2150)
!2152 = !DILocation(line: 231, column: 7, scope: !2135, inlinedAt: !2140)
!2153 = !DILocation(line: 231, column: 40, scope: !2135, inlinedAt: !2140)
!2154 = !DILocation(line: 231, column: 45, scope: !2135, inlinedAt: !2140)
!2155 = !DILocation(line: 235, column: 1, scope: !605, inlinedAt: !2140)
!2156 = !DILocation(line: 360, column: 13, scope: !2052)
!2157 = !DILocation(line: 0, scope: !2050)
!2158 = !DILocation(line: 361, column: 45, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2050, file: !544, line: 361, column: 11)
!2160 = !DILocation(line: 361, column: 11, scope: !2050)
!2161 = !DILocation(line: 362, column: 13, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !544, line: 362, column: 13)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !544, line: 362, column: 13)
!2164 = !DILocation(line: 362, column: 13, scope: !2163)
!2165 = !DILocation(line: 361, column: 52, scope: !2159)
!2166 = distinct !{!2166, !2160, !2167, !963}
!2167 = !DILocation(line: 362, column: 13, scope: !2050)
!2168 = !DILocation(line: 260, column: 10, scope: !2024)
!2169 = !DILocation(line: 365, column: 28, scope: !2052)
!2170 = !DILocation(line: 367, column: 7, scope: !2053)
!2171 = !DILocation(line: 370, column: 7, scope: !2053)
!2172 = !DILocation(line: 376, column: 11, scope: !2053)
!2173 = !DILocation(line: 381, column: 11, scope: !2053)
!2174 = !DILocation(line: 382, column: 9, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !544, line: 382, column: 9)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !544, line: 382, column: 9)
!2177 = distinct !DILexicalBlock(scope: !2053, file: !544, line: 381, column: 11)
!2178 = !DILocation(line: 382, column: 9, scope: !2176)
!2179 = !DILocation(line: 389, column: 7, scope: !2053)
!2180 = !DILocation(line: 392, column: 7, scope: !2053)
!2181 = !DILocation(line: 0, scope: !2055)
!2182 = !DILocation(line: 395, column: 8, scope: !2055)
!2183 = !DILocation(line: 395, scope: !2055)
!2184 = !DILocation(line: 395, column: 34, scope: !2058)
!2185 = !DILocation(line: 395, column: 26, scope: !2058)
!2186 = !DILocation(line: 395, column: 48, scope: !2058)
!2187 = !DILocation(line: 395, column: 55, scope: !2058)
!2188 = !DILocation(line: 395, column: 3, scope: !2055)
!2189 = !DILocation(line: 395, column: 67, scope: !2058)
!2190 = !DILocation(line: 0, scope: !2057)
!2191 = !DILocation(line: 402, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 401, column: 11)
!2193 = !DILocation(line: 404, column: 17, scope: !2192)
!2194 = !DILocation(line: 405, column: 39, scope: !2192)
!2195 = !DILocation(line: 409, column: 32, scope: !2192)
!2196 = !DILocation(line: 405, column: 19, scope: !2192)
!2197 = !DILocation(line: 405, column: 15, scope: !2192)
!2198 = !DILocation(line: 410, column: 11, scope: !2192)
!2199 = !DILocation(line: 410, column: 25, scope: !2192)
!2200 = !DILocalVariable(name: "__s1", arg: 1, scope: !2201, file: !929, line: 974, type: !1061)
!2201 = distinct !DISubprogram(name: "memeq", scope: !929, file: !929, line: 974, type: !1842, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2202)
!2202 = !{!2200, !2203, !2204}
!2203 = !DILocalVariable(name: "__s2", arg: 2, scope: !2201, file: !929, line: 974, type: !1061)
!2204 = !DILocalVariable(name: "__n", arg: 3, scope: !2201, file: !929, line: 974, type: !186)
!2205 = !DILocation(line: 0, scope: !2201, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 410, column: 14, scope: !2192)
!2207 = !DILocation(line: 976, column: 11, scope: !2201, inlinedAt: !2206)
!2208 = !DILocation(line: 976, column: 10, scope: !2201, inlinedAt: !2206)
!2209 = !DILocation(line: 401, column: 11, scope: !2057)
!2210 = !DILocation(line: 417, column: 25, scope: !2057)
!2211 = !DILocation(line: 418, column: 7, scope: !2057)
!2212 = !DILocation(line: 421, column: 15, scope: !2064)
!2213 = !DILocation(line: 423, column: 15, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !544, line: 423, column: 15)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !544, line: 422, column: 13)
!2216 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 421, column: 15)
!2217 = !DILocation(line: 423, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !544, line: 423, column: 15)
!2219 = !DILocation(line: 423, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !544, line: 423, column: 15)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !544, line: 423, column: 15)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !544, line: 423, column: 15)
!2223 = !DILocation(line: 423, column: 15, scope: !2221)
!2224 = !DILocation(line: 423, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !544, line: 423, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !544, line: 423, column: 15)
!2227 = !DILocation(line: 423, column: 15, scope: !2226)
!2228 = !DILocation(line: 423, column: 15, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !544, line: 423, column: 15)
!2230 = distinct !DILexicalBlock(scope: !2222, file: !544, line: 423, column: 15)
!2231 = !DILocation(line: 423, column: 15, scope: !2230)
!2232 = !DILocation(line: 423, column: 15, scope: !2222)
!2233 = !DILocation(line: 423, column: 15, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !544, line: 423, column: 15)
!2235 = distinct !DILexicalBlock(scope: !2214, file: !544, line: 423, column: 15)
!2236 = !DILocation(line: 423, column: 15, scope: !2235)
!2237 = !DILocation(line: 431, column: 19, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2215, file: !544, line: 430, column: 19)
!2239 = !DILocation(line: 431, column: 24, scope: !2238)
!2240 = !DILocation(line: 431, column: 28, scope: !2238)
!2241 = !DILocation(line: 431, column: 38, scope: !2238)
!2242 = !DILocation(line: 431, column: 48, scope: !2238)
!2243 = !DILocation(line: 431, column: 59, scope: !2238)
!2244 = !DILocation(line: 433, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !544, line: 433, column: 19)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !544, line: 433, column: 19)
!2247 = distinct !DILexicalBlock(scope: !2238, file: !544, line: 432, column: 17)
!2248 = !DILocation(line: 433, column: 19, scope: !2246)
!2249 = !DILocation(line: 434, column: 19, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !544, line: 434, column: 19)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !544, line: 434, column: 19)
!2252 = !DILocation(line: 434, column: 19, scope: !2251)
!2253 = !DILocation(line: 435, column: 17, scope: !2247)
!2254 = !DILocation(line: 442, column: 20, scope: !2216)
!2255 = !DILocation(line: 447, column: 11, scope: !2064)
!2256 = !DILocation(line: 450, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 448, column: 13)
!2258 = !DILocation(line: 456, column: 19, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2257, file: !544, line: 455, column: 19)
!2260 = !DILocation(line: 456, column: 24, scope: !2259)
!2261 = !DILocation(line: 456, column: 28, scope: !2259)
!2262 = !DILocation(line: 456, column: 38, scope: !2259)
!2263 = !DILocation(line: 456, column: 47, scope: !2259)
!2264 = !DILocation(line: 456, column: 41, scope: !2259)
!2265 = !DILocation(line: 456, column: 52, scope: !2259)
!2266 = !DILocation(line: 455, column: 19, scope: !2257)
!2267 = !DILocation(line: 457, column: 25, scope: !2259)
!2268 = !DILocation(line: 457, column: 17, scope: !2259)
!2269 = !DILocation(line: 464, column: 25, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2259, file: !544, line: 458, column: 19)
!2271 = !DILocation(line: 468, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !544, line: 468, column: 21)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !544, line: 468, column: 21)
!2274 = !DILocation(line: 468, column: 21, scope: !2273)
!2275 = !DILocation(line: 469, column: 21, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !544, line: 469, column: 21)
!2277 = distinct !DILexicalBlock(scope: !2270, file: !544, line: 469, column: 21)
!2278 = !DILocation(line: 469, column: 21, scope: !2277)
!2279 = !DILocation(line: 470, column: 21, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !544, line: 470, column: 21)
!2281 = distinct !DILexicalBlock(scope: !2270, file: !544, line: 470, column: 21)
!2282 = !DILocation(line: 470, column: 21, scope: !2281)
!2283 = !DILocation(line: 471, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !544, line: 471, column: 21)
!2285 = distinct !DILexicalBlock(scope: !2270, file: !544, line: 471, column: 21)
!2286 = !DILocation(line: 471, column: 21, scope: !2285)
!2287 = !DILocation(line: 472, column: 21, scope: !2270)
!2288 = !DILocation(line: 482, column: 33, scope: !2087)
!2289 = !DILocation(line: 483, column: 33, scope: !2087)
!2290 = !DILocation(line: 485, column: 33, scope: !2087)
!2291 = !DILocation(line: 486, column: 33, scope: !2087)
!2292 = !DILocation(line: 487, column: 33, scope: !2087)
!2293 = !DILocation(line: 490, column: 17, scope: !2087)
!2294 = !DILocation(line: 492, column: 21, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !544, line: 491, column: 15)
!2296 = distinct !DILexicalBlock(scope: !2087, file: !544, line: 490, column: 17)
!2297 = !DILocation(line: 499, column: 35, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2087, file: !544, line: 499, column: 17)
!2299 = !DILocation(line: 0, scope: !2087)
!2300 = !DILocation(line: 502, column: 11, scope: !2087)
!2301 = !DILocation(line: 504, column: 17, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2087, file: !544, line: 503, column: 17)
!2303 = !DILocation(line: 507, column: 11, scope: !2087)
!2304 = !DILocation(line: 508, column: 17, scope: !2087)
!2305 = !DILocation(line: 517, column: 15, scope: !2064)
!2306 = !DILocation(line: 517, column: 40, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 517, column: 15)
!2308 = !DILocation(line: 517, column: 47, scope: !2307)
!2309 = !DILocation(line: 517, column: 18, scope: !2307)
!2310 = !DILocation(line: 521, column: 17, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 521, column: 15)
!2312 = !DILocation(line: 521, column: 15, scope: !2064)
!2313 = !DILocation(line: 525, column: 11, scope: !2064)
!2314 = !DILocation(line: 537, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 536, column: 15)
!2316 = !DILocation(line: 536, column: 15, scope: !2064)
!2317 = !DILocation(line: 544, column: 15, scope: !2064)
!2318 = !DILocation(line: 546, column: 19, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !544, line: 545, column: 13)
!2320 = distinct !DILexicalBlock(scope: !2064, file: !544, line: 544, column: 15)
!2321 = !DILocation(line: 549, column: 19, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !544, line: 549, column: 19)
!2323 = !DILocation(line: 549, column: 30, scope: !2322)
!2324 = !DILocation(line: 558, column: 15, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !544, line: 558, column: 15)
!2326 = distinct !DILexicalBlock(scope: !2319, file: !544, line: 558, column: 15)
!2327 = !DILocation(line: 558, column: 15, scope: !2326)
!2328 = !DILocation(line: 559, column: 15, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !544, line: 559, column: 15)
!2330 = distinct !DILexicalBlock(scope: !2319, file: !544, line: 559, column: 15)
!2331 = !DILocation(line: 559, column: 15, scope: !2330)
!2332 = !DILocation(line: 560, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !544, line: 560, column: 15)
!2334 = distinct !DILexicalBlock(scope: !2319, file: !544, line: 560, column: 15)
!2335 = !DILocation(line: 560, column: 15, scope: !2334)
!2336 = !DILocation(line: 562, column: 13, scope: !2319)
!2337 = !DILocation(line: 602, column: 17, scope: !2063)
!2338 = !DILocation(line: 0, scope: !2063)
!2339 = !DILocation(line: 605, column: 29, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2068, file: !544, line: 603, column: 15)
!2341 = !DILocation(line: 605, column: 41, scope: !2340)
!2342 = !DILocation(line: 606, column: 15, scope: !2340)
!2343 = !DILocation(line: 609, column: 17, scope: !2067)
!2344 = !DILocation(line: 609, column: 27, scope: !2067)
!2345 = !DILocation(line: 0, scope: !2119, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 609, column: 32, scope: !2067)
!2347 = !DILocation(line: 0, scope: !2127, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 1137, column: 3, scope: !2119, inlinedAt: !2346)
!2349 = !DILocation(line: 59, column: 10, scope: !2127, inlinedAt: !2348)
!2350 = !DILocation(line: 613, column: 29, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2067, file: !544, line: 613, column: 21)
!2352 = !DILocation(line: 613, column: 21, scope: !2067)
!2353 = !DILocation(line: 614, column: 29, scope: !2351)
!2354 = !DILocation(line: 614, column: 19, scope: !2351)
!2355 = !DILocation(line: 618, column: 21, scope: !2070)
!2356 = !DILocation(line: 620, column: 54, scope: !2070)
!2357 = !DILocation(line: 0, scope: !2070)
!2358 = !DILocation(line: 619, column: 36, scope: !2070)
!2359 = !DILocation(line: 621, column: 25, scope: !2070)
!2360 = !DILocation(line: 631, column: 38, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2079, file: !544, line: 629, column: 23)
!2362 = !DILocation(line: 631, column: 48, scope: !2361)
!2363 = !DILocation(line: 626, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2080, file: !544, line: 624, column: 23)
!2365 = !DILocation(line: 631, column: 51, scope: !2361)
!2366 = !DILocation(line: 631, column: 25, scope: !2361)
!2367 = !DILocation(line: 632, column: 28, scope: !2361)
!2368 = !DILocation(line: 631, column: 34, scope: !2361)
!2369 = distinct !{!2369, !2366, !2367, !963}
!2370 = !DILocation(line: 646, column: 29, scope: !2077)
!2371 = !DILocation(line: 0, scope: !2075)
!2372 = !DILocation(line: 649, column: 49, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2075, file: !544, line: 648, column: 29)
!2374 = !DILocation(line: 649, column: 39, scope: !2373)
!2375 = !DILocation(line: 649, column: 31, scope: !2373)
!2376 = !DILocation(line: 648, column: 60, scope: !2373)
!2377 = !DILocation(line: 648, column: 50, scope: !2373)
!2378 = !DILocation(line: 648, column: 29, scope: !2075)
!2379 = distinct !{!2379, !2378, !2380, !963}
!2380 = !DILocation(line: 654, column: 33, scope: !2075)
!2381 = !DILocation(line: 657, column: 43, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2078, file: !544, line: 657, column: 29)
!2383 = !DILocalVariable(name: "wc", arg: 1, scope: !2384, file: !2385, line: 865, type: !2388)
!2384 = distinct !DISubprogram(name: "c32isprint", scope: !2385, file: !2385, line: 865, type: !2386, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2390)
!2385 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!184, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2389, line: 20, baseType: !139)
!2389 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2390 = !{!2383}
!2391 = !DILocation(line: 0, scope: !2384, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 657, column: 31, scope: !2382)
!2393 = !DILocation(line: 871, column: 10, scope: !2384, inlinedAt: !2392)
!2394 = !DILocation(line: 657, column: 31, scope: !2382)
!2395 = !DILocation(line: 664, column: 23, scope: !2070)
!2396 = !DILocation(line: 665, column: 19, scope: !2071)
!2397 = !DILocation(line: 666, column: 15, scope: !2068)
!2398 = !DILocation(line: 753, column: 2, scope: !2024)
!2399 = !DILocation(line: 756, column: 51, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 756, column: 7)
!2401 = !DILocation(line: 0, scope: !2068)
!2402 = !DILocation(line: 670, column: 19, scope: !2084)
!2403 = !DILocation(line: 670, column: 23, scope: !2084)
!2404 = !DILocation(line: 674, column: 33, scope: !2083)
!2405 = !DILocation(line: 0, scope: !2083)
!2406 = !DILocation(line: 676, column: 17, scope: !2083)
!2407 = !DILocation(line: 398, column: 12, scope: !2057)
!2408 = !DILocation(line: 678, column: 43, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !544, line: 678, column: 25)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !544, line: 677, column: 19)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !544, line: 676, column: 17)
!2412 = distinct !DILexicalBlock(scope: !2083, file: !544, line: 676, column: 17)
!2413 = !DILocation(line: 680, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !544, line: 680, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2409, file: !544, line: 679, column: 23)
!2416 = !DILocation(line: 680, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !544, line: 680, column: 25)
!2418 = !DILocation(line: 680, column: 25, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !544, line: 680, column: 25)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !544, line: 680, column: 25)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !544, line: 680, column: 25)
!2422 = !DILocation(line: 680, column: 25, scope: !2420)
!2423 = !DILocation(line: 680, column: 25, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !544, line: 680, column: 25)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !544, line: 680, column: 25)
!2426 = !DILocation(line: 680, column: 25, scope: !2425)
!2427 = !DILocation(line: 680, column: 25, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !544, line: 680, column: 25)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !544, line: 680, column: 25)
!2430 = !DILocation(line: 680, column: 25, scope: !2429)
!2431 = !DILocation(line: 680, column: 25, scope: !2421)
!2432 = !DILocation(line: 680, column: 25, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !544, line: 680, column: 25)
!2434 = distinct !DILexicalBlock(scope: !2414, file: !544, line: 680, column: 25)
!2435 = !DILocation(line: 680, column: 25, scope: !2434)
!2436 = !DILocation(line: 681, column: 25, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !544, line: 681, column: 25)
!2438 = distinct !DILexicalBlock(scope: !2415, file: !544, line: 681, column: 25)
!2439 = !DILocation(line: 681, column: 25, scope: !2438)
!2440 = !DILocation(line: 682, column: 25, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !544, line: 682, column: 25)
!2442 = distinct !DILexicalBlock(scope: !2415, file: !544, line: 682, column: 25)
!2443 = !DILocation(line: 682, column: 25, scope: !2442)
!2444 = !DILocation(line: 683, column: 38, scope: !2415)
!2445 = !DILocation(line: 683, column: 33, scope: !2415)
!2446 = !DILocation(line: 684, column: 23, scope: !2415)
!2447 = !DILocation(line: 685, column: 30, scope: !2409)
!2448 = !DILocation(line: 687, column: 25, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !544, line: 687, column: 25)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !544, line: 687, column: 25)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !544, line: 686, column: 23)
!2452 = distinct !DILexicalBlock(scope: !2409, file: !544, line: 685, column: 30)
!2453 = !DILocation(line: 687, column: 25, scope: !2450)
!2454 = !DILocation(line: 689, column: 23, scope: !2451)
!2455 = !DILocation(line: 690, column: 35, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2410, file: !544, line: 690, column: 25)
!2457 = !DILocation(line: 690, column: 30, scope: !2456)
!2458 = !DILocation(line: 690, column: 25, scope: !2410)
!2459 = !DILocation(line: 692, column: 21, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !544, line: 692, column: 21)
!2461 = distinct !DILexicalBlock(scope: !2410, file: !544, line: 692, column: 21)
!2462 = !DILocation(line: 692, column: 21, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !544, line: 692, column: 21)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !544, line: 692, column: 21)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !544, line: 692, column: 21)
!2466 = !DILocation(line: 692, column: 21, scope: !2464)
!2467 = !DILocation(line: 692, column: 21, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !544, line: 692, column: 21)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !544, line: 692, column: 21)
!2470 = !DILocation(line: 692, column: 21, scope: !2469)
!2471 = !DILocation(line: 692, column: 21, scope: !2465)
!2472 = !DILocation(line: 0, scope: !2410)
!2473 = !DILocation(line: 693, column: 21, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !544, line: 693, column: 21)
!2475 = distinct !DILexicalBlock(scope: !2410, file: !544, line: 693, column: 21)
!2476 = !DILocation(line: 693, column: 21, scope: !2475)
!2477 = !DILocation(line: 694, column: 25, scope: !2410)
!2478 = !DILocation(line: 676, column: 17, scope: !2411)
!2479 = distinct !{!2479, !2480, !2481}
!2480 = !DILocation(line: 676, column: 17, scope: !2412)
!2481 = !DILocation(line: 695, column: 19, scope: !2412)
!2482 = !DILocation(line: 409, column: 30, scope: !2192)
!2483 = !DILocation(line: 702, column: 34, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 702, column: 11)
!2485 = !DILocation(line: 704, column: 14, scope: !2484)
!2486 = !DILocation(line: 705, column: 14, scope: !2484)
!2487 = !DILocation(line: 705, column: 35, scope: !2484)
!2488 = !DILocation(line: 705, column: 17, scope: !2484)
!2489 = !DILocation(line: 705, column: 47, scope: !2484)
!2490 = !DILocation(line: 705, column: 65, scope: !2484)
!2491 = !DILocation(line: 706, column: 11, scope: !2484)
!2492 = !DILocation(line: 702, column: 11, scope: !2057)
!2493 = !DILocation(line: 395, column: 15, scope: !2055)
!2494 = !DILocation(line: 709, column: 5, scope: !2057)
!2495 = !DILocation(line: 710, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 710, column: 7)
!2497 = !DILocation(line: 710, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2496, file: !544, line: 710, column: 7)
!2499 = !DILocation(line: 710, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !544, line: 710, column: 7)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !544, line: 710, column: 7)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !544, line: 710, column: 7)
!2503 = !DILocation(line: 710, column: 7, scope: !2501)
!2504 = !DILocation(line: 710, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !544, line: 710, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !544, line: 710, column: 7)
!2507 = !DILocation(line: 710, column: 7, scope: !2506)
!2508 = !DILocation(line: 710, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !544, line: 710, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2502, file: !544, line: 710, column: 7)
!2511 = !DILocation(line: 710, column: 7, scope: !2510)
!2512 = !DILocation(line: 710, column: 7, scope: !2502)
!2513 = !DILocation(line: 710, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !544, line: 710, column: 7)
!2515 = distinct !DILexicalBlock(scope: !2496, file: !544, line: 710, column: 7)
!2516 = !DILocation(line: 710, column: 7, scope: !2515)
!2517 = !DILocation(line: 712, column: 5, scope: !2057)
!2518 = !DILocation(line: 713, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !544, line: 713, column: 7)
!2520 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 713, column: 7)
!2521 = !DILocation(line: 417, column: 21, scope: !2057)
!2522 = !DILocation(line: 713, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !544, line: 713, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !544, line: 713, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2519, file: !544, line: 713, column: 7)
!2526 = !DILocation(line: 713, column: 7, scope: !2524)
!2527 = !DILocation(line: 713, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !544, line: 713, column: 7)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !544, line: 713, column: 7)
!2530 = !DILocation(line: 713, column: 7, scope: !2529)
!2531 = !DILocation(line: 713, column: 7, scope: !2525)
!2532 = !DILocation(line: 714, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !544, line: 714, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2057, file: !544, line: 714, column: 7)
!2535 = !DILocation(line: 714, column: 7, scope: !2534)
!2536 = !DILocation(line: 716, column: 11, scope: !2057)
!2537 = !DILocation(line: 718, column: 5, scope: !2058)
!2538 = !DILocation(line: 395, column: 82, scope: !2058)
!2539 = !DILocation(line: 395, column: 3, scope: !2058)
!2540 = distinct !{!2540, !2188, !2541, !963}
!2541 = !DILocation(line: 718, column: 5, scope: !2055)
!2542 = !DILocation(line: 720, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 720, column: 7)
!2544 = !DILocation(line: 720, column: 16, scope: !2543)
!2545 = !DILocation(line: 728, column: 51, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 728, column: 7)
!2547 = !DILocation(line: 731, column: 11, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2546, file: !544, line: 730, column: 5)
!2549 = !DILocation(line: 732, column: 16, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2548, file: !544, line: 731, column: 11)
!2551 = !DILocation(line: 732, column: 9, scope: !2550)
!2552 = !DILocation(line: 736, column: 18, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !544, line: 736, column: 16)
!2554 = !DILocation(line: 736, column: 29, scope: !2553)
!2555 = !DILocation(line: 745, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 745, column: 7)
!2557 = !DILocation(line: 745, column: 20, scope: !2556)
!2558 = !DILocation(line: 746, column: 12, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !544, line: 746, column: 5)
!2560 = distinct !DILexicalBlock(scope: !2556, file: !544, line: 746, column: 5)
!2561 = !DILocation(line: 746, column: 5, scope: !2560)
!2562 = !DILocation(line: 747, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !544, line: 747, column: 7)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !544, line: 747, column: 7)
!2565 = !DILocation(line: 747, column: 7, scope: !2564)
!2566 = !DILocation(line: 746, column: 39, scope: !2559)
!2567 = distinct !{!2567, !2561, !2568, !963}
!2568 = !DILocation(line: 747, column: 7, scope: !2560)
!2569 = !DILocation(line: 749, column: 11, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2024, file: !544, line: 749, column: 7)
!2571 = !DILocation(line: 749, column: 7, scope: !2024)
!2572 = !DILocation(line: 750, column: 5, scope: !2570)
!2573 = !DILocation(line: 750, column: 17, scope: !2570)
!2574 = !DILocation(line: 756, column: 21, scope: !2400)
!2575 = !DILocation(line: 760, column: 42, scope: !2024)
!2576 = !DILocation(line: 758, column: 10, scope: !2024)
!2577 = !DILocation(line: 758, column: 3, scope: !2024)
!2578 = !DILocation(line: 762, column: 1, scope: !2024)
!2579 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1037, file: !1037, line: 98, type: !2580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!186}
!2582 = !DISubprogram(name: "iswprint", scope: !2583, file: !2583, line: 120, type: !2386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!2583 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2584 = distinct !DISubprogram(name: "quotearg_alloc", scope: !544, file: !544, line: 788, type: !2585, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!330, !134, !186, !1917}
!2587 = !{!2588, !2589, !2590}
!2588 = !DILocalVariable(name: "arg", arg: 1, scope: !2584, file: !544, line: 788, type: !134)
!2589 = !DILocalVariable(name: "argsize", arg: 2, scope: !2584, file: !544, line: 788, type: !186)
!2590 = !DILocalVariable(name: "o", arg: 3, scope: !2584, file: !544, line: 789, type: !1917)
!2591 = !DILocation(line: 0, scope: !2584)
!2592 = !DILocalVariable(name: "arg", arg: 1, scope: !2593, file: !544, line: 801, type: !134)
!2593 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !544, file: !544, line: 801, type: !2594, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!330, !134, !186, !783, !1917}
!2596 = !{!2592, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604}
!2597 = !DILocalVariable(name: "argsize", arg: 2, scope: !2593, file: !544, line: 801, type: !186)
!2598 = !DILocalVariable(name: "size", arg: 3, scope: !2593, file: !544, line: 801, type: !783)
!2599 = !DILocalVariable(name: "o", arg: 4, scope: !2593, file: !544, line: 802, type: !1917)
!2600 = !DILocalVariable(name: "p", scope: !2593, file: !544, line: 804, type: !1917)
!2601 = !DILocalVariable(name: "saved_errno", scope: !2593, file: !544, line: 805, type: !184)
!2602 = !DILocalVariable(name: "flags", scope: !2593, file: !544, line: 807, type: !184)
!2603 = !DILocalVariable(name: "bufsize", scope: !2593, file: !544, line: 808, type: !186)
!2604 = !DILocalVariable(name: "buf", scope: !2593, file: !544, line: 812, type: !330)
!2605 = !DILocation(line: 0, scope: !2593, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 791, column: 10, scope: !2584)
!2607 = !DILocation(line: 804, column: 37, scope: !2593, inlinedAt: !2606)
!2608 = !DILocation(line: 805, column: 21, scope: !2593, inlinedAt: !2606)
!2609 = !DILocation(line: 807, column: 18, scope: !2593, inlinedAt: !2606)
!2610 = !DILocation(line: 807, column: 24, scope: !2593, inlinedAt: !2606)
!2611 = !DILocation(line: 808, column: 72, scope: !2593, inlinedAt: !2606)
!2612 = !DILocation(line: 809, column: 56, scope: !2593, inlinedAt: !2606)
!2613 = !DILocation(line: 810, column: 49, scope: !2593, inlinedAt: !2606)
!2614 = !DILocation(line: 811, column: 49, scope: !2593, inlinedAt: !2606)
!2615 = !DILocation(line: 808, column: 20, scope: !2593, inlinedAt: !2606)
!2616 = !DILocation(line: 811, column: 62, scope: !2593, inlinedAt: !2606)
!2617 = !DILocation(line: 812, column: 15, scope: !2593, inlinedAt: !2606)
!2618 = !DILocation(line: 813, column: 60, scope: !2593, inlinedAt: !2606)
!2619 = !DILocation(line: 815, column: 32, scope: !2593, inlinedAt: !2606)
!2620 = !DILocation(line: 815, column: 47, scope: !2593, inlinedAt: !2606)
!2621 = !DILocation(line: 813, column: 3, scope: !2593, inlinedAt: !2606)
!2622 = !DILocation(line: 816, column: 9, scope: !2593, inlinedAt: !2606)
!2623 = !DILocation(line: 791, column: 3, scope: !2584)
!2624 = !DILocation(line: 0, scope: !2593)
!2625 = !DILocation(line: 804, column: 37, scope: !2593)
!2626 = !DILocation(line: 805, column: 21, scope: !2593)
!2627 = !DILocation(line: 807, column: 18, scope: !2593)
!2628 = !DILocation(line: 807, column: 27, scope: !2593)
!2629 = !DILocation(line: 807, column: 24, scope: !2593)
!2630 = !DILocation(line: 808, column: 72, scope: !2593)
!2631 = !DILocation(line: 809, column: 56, scope: !2593)
!2632 = !DILocation(line: 810, column: 49, scope: !2593)
!2633 = !DILocation(line: 811, column: 49, scope: !2593)
!2634 = !DILocation(line: 808, column: 20, scope: !2593)
!2635 = !DILocation(line: 811, column: 62, scope: !2593)
!2636 = !DILocation(line: 812, column: 15, scope: !2593)
!2637 = !DILocation(line: 813, column: 60, scope: !2593)
!2638 = !DILocation(line: 815, column: 32, scope: !2593)
!2639 = !DILocation(line: 815, column: 47, scope: !2593)
!2640 = !DILocation(line: 813, column: 3, scope: !2593)
!2641 = !DILocation(line: 816, column: 9, scope: !2593)
!2642 = !DILocation(line: 817, column: 7, scope: !2593)
!2643 = !DILocation(line: 818, column: 11, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2593, file: !544, line: 817, column: 7)
!2645 = !{!1204, !1204, i64 0}
!2646 = !DILocation(line: 818, column: 5, scope: !2644)
!2647 = !DILocation(line: 819, column: 3, scope: !2593)
!2648 = distinct !DISubprogram(name: "quotearg_free", scope: !544, file: !544, line: 837, type: !458, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2649)
!2649 = !{!2650, !2651}
!2650 = !DILocalVariable(name: "sv", scope: !2648, file: !544, line: 839, type: !628)
!2651 = !DILocalVariable(name: "i", scope: !2652, file: !544, line: 840, type: !184)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !544, line: 840, column: 3)
!2653 = !DILocation(line: 839, column: 24, scope: !2648)
!2654 = !DILocation(line: 0, scope: !2648)
!2655 = !DILocation(line: 0, scope: !2652)
!2656 = !DILocation(line: 840, column: 21, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2652, file: !544, line: 840, column: 3)
!2658 = !DILocation(line: 840, column: 3, scope: !2652)
!2659 = !DILocation(line: 842, column: 13, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2648, file: !544, line: 842, column: 7)
!2661 = !{!2662, !849, i64 8}
!2662 = !{!"slotvec", !1204, i64 0, !849, i64 8}
!2663 = !DILocation(line: 842, column: 17, scope: !2660)
!2664 = !DILocation(line: 842, column: 7, scope: !2648)
!2665 = !DILocation(line: 841, column: 17, scope: !2657)
!2666 = !DILocation(line: 841, column: 5, scope: !2657)
!2667 = !DILocation(line: 840, column: 32, scope: !2657)
!2668 = distinct !{!2668, !2658, !2669, !963}
!2669 = !DILocation(line: 841, column: 20, scope: !2652)
!2670 = !DILocation(line: 844, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2660, file: !544, line: 843, column: 5)
!2672 = !DILocation(line: 845, column: 21, scope: !2671)
!2673 = !{!2662, !1204, i64 0}
!2674 = !DILocation(line: 846, column: 20, scope: !2671)
!2675 = !DILocation(line: 847, column: 5, scope: !2671)
!2676 = !DILocation(line: 848, column: 10, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2648, file: !544, line: 848, column: 7)
!2678 = !DILocation(line: 848, column: 7, scope: !2648)
!2679 = !DILocation(line: 850, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !544, line: 849, column: 5)
!2681 = !DILocation(line: 851, column: 15, scope: !2680)
!2682 = !DILocation(line: 852, column: 5, scope: !2680)
!2683 = !DILocation(line: 853, column: 10, scope: !2648)
!2684 = !DILocation(line: 854, column: 1, scope: !2648)
!2685 = distinct !DISubprogram(name: "quotearg_n", scope: !544, file: !544, line: 919, type: !1030, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2686)
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "n", arg: 1, scope: !2685, file: !544, line: 919, type: !184)
!2688 = !DILocalVariable(name: "arg", arg: 2, scope: !2685, file: !544, line: 919, type: !134)
!2689 = !DILocation(line: 0, scope: !2685)
!2690 = !DILocation(line: 921, column: 10, scope: !2685)
!2691 = !DILocation(line: 921, column: 3, scope: !2685)
!2692 = distinct !DISubprogram(name: "quotearg_n_options", scope: !544, file: !544, line: 866, type: !2693, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!330, !184, !134, !186, !1917}
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2706, !2707, !2709, !2710, !2711}
!2696 = !DILocalVariable(name: "n", arg: 1, scope: !2692, file: !544, line: 866, type: !184)
!2697 = !DILocalVariable(name: "arg", arg: 2, scope: !2692, file: !544, line: 866, type: !134)
!2698 = !DILocalVariable(name: "argsize", arg: 3, scope: !2692, file: !544, line: 866, type: !186)
!2699 = !DILocalVariable(name: "options", arg: 4, scope: !2692, file: !544, line: 867, type: !1917)
!2700 = !DILocalVariable(name: "saved_errno", scope: !2692, file: !544, line: 869, type: !184)
!2701 = !DILocalVariable(name: "sv", scope: !2692, file: !544, line: 871, type: !628)
!2702 = !DILocalVariable(name: "nslots_max", scope: !2692, file: !544, line: 873, type: !184)
!2703 = !DILocalVariable(name: "preallocated", scope: !2704, file: !544, line: 879, type: !309)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !544, line: 878, column: 5)
!2705 = distinct !DILexicalBlock(scope: !2692, file: !544, line: 877, column: 7)
!2706 = !DILocalVariable(name: "new_nslots", scope: !2704, file: !544, line: 880, type: !796)
!2707 = !DILocalVariable(name: "size", scope: !2708, file: !544, line: 891, type: !186)
!2708 = distinct !DILexicalBlock(scope: !2692, file: !544, line: 890, column: 3)
!2709 = !DILocalVariable(name: "val", scope: !2708, file: !544, line: 892, type: !330)
!2710 = !DILocalVariable(name: "flags", scope: !2708, file: !544, line: 894, type: !184)
!2711 = !DILocalVariable(name: "qsize", scope: !2708, file: !544, line: 895, type: !186)
!2712 = !DILocation(line: 0, scope: !2692)
!2713 = !DILocation(line: 869, column: 21, scope: !2692)
!2714 = !DILocation(line: 871, column: 24, scope: !2692)
!2715 = !DILocation(line: 874, column: 17, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2692, file: !544, line: 874, column: 7)
!2717 = !DILocation(line: 875, column: 5, scope: !2716)
!2718 = !DILocation(line: 877, column: 7, scope: !2705)
!2719 = !DILocation(line: 877, column: 14, scope: !2705)
!2720 = !DILocation(line: 877, column: 7, scope: !2692)
!2721 = !DILocation(line: 879, column: 31, scope: !2704)
!2722 = !DILocation(line: 0, scope: !2704)
!2723 = !DILocation(line: 880, column: 7, scope: !2704)
!2724 = !DILocation(line: 880, column: 26, scope: !2704)
!2725 = !DILocation(line: 880, column: 13, scope: !2704)
!2726 = !DILocation(line: 882, column: 31, scope: !2704)
!2727 = !DILocation(line: 883, column: 33, scope: !2704)
!2728 = !DILocation(line: 883, column: 42, scope: !2704)
!2729 = !DILocation(line: 883, column: 31, scope: !2704)
!2730 = !DILocation(line: 882, column: 22, scope: !2704)
!2731 = !DILocation(line: 882, column: 15, scope: !2704)
!2732 = !DILocation(line: 884, column: 11, scope: !2704)
!2733 = !DILocation(line: 885, column: 15, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2704, file: !544, line: 884, column: 11)
!2735 = !{i64 0, i64 8, !2645, i64 8, i64 8, !848}
!2736 = !DILocation(line: 885, column: 9, scope: !2734)
!2737 = !DILocation(line: 886, column: 20, scope: !2704)
!2738 = !DILocation(line: 886, column: 18, scope: !2704)
!2739 = !DILocation(line: 886, column: 32, scope: !2704)
!2740 = !DILocation(line: 886, column: 43, scope: !2704)
!2741 = !DILocation(line: 886, column: 53, scope: !2704)
!2742 = !DILocation(line: 0, scope: !2127, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 886, column: 7, scope: !2704)
!2744 = !DILocation(line: 59, column: 10, scope: !2127, inlinedAt: !2743)
!2745 = !DILocation(line: 887, column: 16, scope: !2704)
!2746 = !DILocation(line: 887, column: 14, scope: !2704)
!2747 = !DILocation(line: 888, column: 5, scope: !2705)
!2748 = !DILocation(line: 888, column: 5, scope: !2704)
!2749 = !DILocation(line: 891, column: 19, scope: !2708)
!2750 = !DILocation(line: 891, column: 25, scope: !2708)
!2751 = !DILocation(line: 0, scope: !2708)
!2752 = !DILocation(line: 892, column: 23, scope: !2708)
!2753 = !DILocation(line: 894, column: 26, scope: !2708)
!2754 = !DILocation(line: 894, column: 32, scope: !2708)
!2755 = !DILocation(line: 896, column: 55, scope: !2708)
!2756 = !DILocation(line: 897, column: 55, scope: !2708)
!2757 = !DILocation(line: 898, column: 55, scope: !2708)
!2758 = !DILocation(line: 899, column: 55, scope: !2708)
!2759 = !DILocation(line: 895, column: 20, scope: !2708)
!2760 = !DILocation(line: 901, column: 14, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2708, file: !544, line: 901, column: 9)
!2762 = !DILocation(line: 901, column: 9, scope: !2708)
!2763 = !DILocation(line: 903, column: 35, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !544, line: 902, column: 7)
!2765 = !DILocation(line: 903, column: 20, scope: !2764)
!2766 = !DILocation(line: 904, column: 17, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2764, file: !544, line: 904, column: 13)
!2768 = !DILocation(line: 904, column: 13, scope: !2764)
!2769 = !DILocation(line: 905, column: 11, scope: !2767)
!2770 = !DILocation(line: 906, column: 27, scope: !2764)
!2771 = !DILocation(line: 906, column: 19, scope: !2764)
!2772 = !DILocation(line: 907, column: 69, scope: !2764)
!2773 = !DILocation(line: 909, column: 44, scope: !2764)
!2774 = !DILocation(line: 910, column: 44, scope: !2764)
!2775 = !DILocation(line: 907, column: 9, scope: !2764)
!2776 = !DILocation(line: 911, column: 7, scope: !2764)
!2777 = !DILocation(line: 913, column: 11, scope: !2708)
!2778 = !DILocation(line: 914, column: 5, scope: !2708)
!2779 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !544, file: !544, line: 925, type: !2780, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!330, !184, !134, !186}
!2782 = !{!2783, !2784, !2785}
!2783 = !DILocalVariable(name: "n", arg: 1, scope: !2779, file: !544, line: 925, type: !184)
!2784 = !DILocalVariable(name: "arg", arg: 2, scope: !2779, file: !544, line: 925, type: !134)
!2785 = !DILocalVariable(name: "argsize", arg: 3, scope: !2779, file: !544, line: 925, type: !186)
!2786 = !DILocation(line: 0, scope: !2779)
!2787 = !DILocation(line: 927, column: 10, scope: !2779)
!2788 = !DILocation(line: 927, column: 3, scope: !2779)
!2789 = distinct !DISubprogram(name: "quotearg", scope: !544, file: !544, line: 931, type: !1039, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2790)
!2790 = !{!2791}
!2791 = !DILocalVariable(name: "arg", arg: 1, scope: !2789, file: !544, line: 931, type: !134)
!2792 = !DILocation(line: 0, scope: !2789)
!2793 = !DILocation(line: 0, scope: !2685, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 933, column: 10, scope: !2789)
!2795 = !DILocation(line: 921, column: 10, scope: !2685, inlinedAt: !2794)
!2796 = !DILocation(line: 933, column: 3, scope: !2789)
!2797 = distinct !DISubprogram(name: "quotearg_mem", scope: !544, file: !544, line: 937, type: !2798, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!330, !134, !186}
!2800 = !{!2801, !2802}
!2801 = !DILocalVariable(name: "arg", arg: 1, scope: !2797, file: !544, line: 937, type: !134)
!2802 = !DILocalVariable(name: "argsize", arg: 2, scope: !2797, file: !544, line: 937, type: !186)
!2803 = !DILocation(line: 0, scope: !2797)
!2804 = !DILocation(line: 0, scope: !2779, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 939, column: 10, scope: !2797)
!2806 = !DILocation(line: 927, column: 10, scope: !2779, inlinedAt: !2805)
!2807 = !DILocation(line: 939, column: 3, scope: !2797)
!2808 = distinct !DISubprogram(name: "quotearg_n_style", scope: !544, file: !544, line: 943, type: !2809, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!330, !184, !148, !134}
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2808, file: !544, line: 943, type: !184)
!2813 = !DILocalVariable(name: "s", arg: 2, scope: !2808, file: !544, line: 943, type: !148)
!2814 = !DILocalVariable(name: "arg", arg: 3, scope: !2808, file: !544, line: 943, type: !134)
!2815 = !DILocalVariable(name: "o", scope: !2808, file: !544, line: 945, type: !1918)
!2816 = !DILocation(line: 0, scope: !2808)
!2817 = !DILocation(line: 945, column: 3, scope: !2808)
!2818 = !DILocation(line: 945, column: 32, scope: !2808)
!2819 = !{!2820}
!2820 = distinct !{!2820, !2821, !"quoting_options_from_style: argument 0"}
!2821 = distinct !{!2821, !"quoting_options_from_style"}
!2822 = !DILocation(line: 945, column: 36, scope: !2808)
!2823 = !DILocalVariable(name: "style", arg: 1, scope: !2824, file: !544, line: 183, type: !148)
!2824 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !544, file: !544, line: 183, type: !2825, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!580, !148}
!2827 = !{!2823, !2828}
!2828 = !DILocalVariable(name: "o", scope: !2824, file: !544, line: 185, type: !580)
!2829 = !DILocation(line: 0, scope: !2824, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 945, column: 36, scope: !2808)
!2831 = !DILocation(line: 185, column: 26, scope: !2824, inlinedAt: !2830)
!2832 = !DILocation(line: 186, column: 13, scope: !2833, inlinedAt: !2830)
!2833 = distinct !DILexicalBlock(scope: !2824, file: !544, line: 186, column: 7)
!2834 = !DILocation(line: 186, column: 7, scope: !2824, inlinedAt: !2830)
!2835 = !DILocation(line: 187, column: 5, scope: !2833, inlinedAt: !2830)
!2836 = !DILocation(line: 188, column: 11, scope: !2824, inlinedAt: !2830)
!2837 = !DILocation(line: 946, column: 10, scope: !2808)
!2838 = !DILocation(line: 947, column: 1, scope: !2808)
!2839 = !DILocation(line: 946, column: 3, scope: !2808)
!2840 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !544, file: !544, line: 950, type: !2841, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!330, !184, !148, !134, !186}
!2843 = !{!2844, !2845, !2846, !2847, !2848}
!2844 = !DILocalVariable(name: "n", arg: 1, scope: !2840, file: !544, line: 950, type: !184)
!2845 = !DILocalVariable(name: "s", arg: 2, scope: !2840, file: !544, line: 950, type: !148)
!2846 = !DILocalVariable(name: "arg", arg: 3, scope: !2840, file: !544, line: 951, type: !134)
!2847 = !DILocalVariable(name: "argsize", arg: 4, scope: !2840, file: !544, line: 951, type: !186)
!2848 = !DILocalVariable(name: "o", scope: !2840, file: !544, line: 953, type: !1918)
!2849 = !DILocation(line: 0, scope: !2840)
!2850 = !DILocation(line: 953, column: 3, scope: !2840)
!2851 = !DILocation(line: 953, column: 32, scope: !2840)
!2852 = !{!2853}
!2853 = distinct !{!2853, !2854, !"quoting_options_from_style: argument 0"}
!2854 = distinct !{!2854, !"quoting_options_from_style"}
!2855 = !DILocation(line: 953, column: 36, scope: !2840)
!2856 = !DILocation(line: 0, scope: !2824, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 953, column: 36, scope: !2840)
!2858 = !DILocation(line: 185, column: 26, scope: !2824, inlinedAt: !2857)
!2859 = !DILocation(line: 186, column: 13, scope: !2833, inlinedAt: !2857)
!2860 = !DILocation(line: 186, column: 7, scope: !2824, inlinedAt: !2857)
!2861 = !DILocation(line: 187, column: 5, scope: !2833, inlinedAt: !2857)
!2862 = !DILocation(line: 188, column: 11, scope: !2824, inlinedAt: !2857)
!2863 = !DILocation(line: 954, column: 10, scope: !2840)
!2864 = !DILocation(line: 955, column: 1, scope: !2840)
!2865 = !DILocation(line: 954, column: 3, scope: !2840)
!2866 = distinct !DISubprogram(name: "quotearg_style", scope: !544, file: !544, line: 958, type: !2867, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!330, !148, !134}
!2869 = !{!2870, !2871}
!2870 = !DILocalVariable(name: "s", arg: 1, scope: !2866, file: !544, line: 958, type: !148)
!2871 = !DILocalVariable(name: "arg", arg: 2, scope: !2866, file: !544, line: 958, type: !134)
!2872 = !DILocation(line: 0, scope: !2866)
!2873 = !DILocation(line: 0, scope: !2808, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 960, column: 10, scope: !2866)
!2875 = !DILocation(line: 945, column: 3, scope: !2808, inlinedAt: !2874)
!2876 = !DILocation(line: 945, column: 32, scope: !2808, inlinedAt: !2874)
!2877 = !{!2878}
!2878 = distinct !{!2878, !2879, !"quoting_options_from_style: argument 0"}
!2879 = distinct !{!2879, !"quoting_options_from_style"}
!2880 = !DILocation(line: 945, column: 36, scope: !2808, inlinedAt: !2874)
!2881 = !DILocation(line: 0, scope: !2824, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 945, column: 36, scope: !2808, inlinedAt: !2874)
!2883 = !DILocation(line: 185, column: 26, scope: !2824, inlinedAt: !2882)
!2884 = !DILocation(line: 186, column: 13, scope: !2833, inlinedAt: !2882)
!2885 = !DILocation(line: 186, column: 7, scope: !2824, inlinedAt: !2882)
!2886 = !DILocation(line: 187, column: 5, scope: !2833, inlinedAt: !2882)
!2887 = !DILocation(line: 188, column: 11, scope: !2824, inlinedAt: !2882)
!2888 = !DILocation(line: 946, column: 10, scope: !2808, inlinedAt: !2874)
!2889 = !DILocation(line: 947, column: 1, scope: !2808, inlinedAt: !2874)
!2890 = !DILocation(line: 960, column: 3, scope: !2866)
!2891 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !544, file: !544, line: 964, type: !2892, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!330, !148, !134, !186}
!2894 = !{!2895, !2896, !2897}
!2895 = !DILocalVariable(name: "s", arg: 1, scope: !2891, file: !544, line: 964, type: !148)
!2896 = !DILocalVariable(name: "arg", arg: 2, scope: !2891, file: !544, line: 964, type: !134)
!2897 = !DILocalVariable(name: "argsize", arg: 3, scope: !2891, file: !544, line: 964, type: !186)
!2898 = !DILocation(line: 0, scope: !2891)
!2899 = !DILocation(line: 0, scope: !2840, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 966, column: 10, scope: !2891)
!2901 = !DILocation(line: 953, column: 3, scope: !2840, inlinedAt: !2900)
!2902 = !DILocation(line: 953, column: 32, scope: !2840, inlinedAt: !2900)
!2903 = !{!2904}
!2904 = distinct !{!2904, !2905, !"quoting_options_from_style: argument 0"}
!2905 = distinct !{!2905, !"quoting_options_from_style"}
!2906 = !DILocation(line: 953, column: 36, scope: !2840, inlinedAt: !2900)
!2907 = !DILocation(line: 0, scope: !2824, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 953, column: 36, scope: !2840, inlinedAt: !2900)
!2909 = !DILocation(line: 185, column: 26, scope: !2824, inlinedAt: !2908)
!2910 = !DILocation(line: 186, column: 13, scope: !2833, inlinedAt: !2908)
!2911 = !DILocation(line: 186, column: 7, scope: !2824, inlinedAt: !2908)
!2912 = !DILocation(line: 187, column: 5, scope: !2833, inlinedAt: !2908)
!2913 = !DILocation(line: 188, column: 11, scope: !2824, inlinedAt: !2908)
!2914 = !DILocation(line: 954, column: 10, scope: !2840, inlinedAt: !2900)
!2915 = !DILocation(line: 955, column: 1, scope: !2840, inlinedAt: !2900)
!2916 = !DILocation(line: 966, column: 3, scope: !2891)
!2917 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !544, file: !544, line: 970, type: !2918, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!330, !134, !186, !4}
!2920 = !{!2921, !2922, !2923, !2924}
!2921 = !DILocalVariable(name: "arg", arg: 1, scope: !2917, file: !544, line: 970, type: !134)
!2922 = !DILocalVariable(name: "argsize", arg: 2, scope: !2917, file: !544, line: 970, type: !186)
!2923 = !DILocalVariable(name: "ch", arg: 3, scope: !2917, file: !544, line: 970, type: !4)
!2924 = !DILocalVariable(name: "options", scope: !2917, file: !544, line: 972, type: !580)
!2925 = !DILocation(line: 0, scope: !2917)
!2926 = !DILocation(line: 972, column: 3, scope: !2917)
!2927 = !DILocation(line: 972, column: 26, scope: !2917)
!2928 = !DILocation(line: 973, column: 13, scope: !2917)
!2929 = !{i64 0, i64 4, !925, i64 4, i64 4, !916, i64 8, i64 32, !925, i64 40, i64 8, !848, i64 48, i64 8, !848}
!2930 = !DILocation(line: 0, scope: !1937, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 974, column: 3, scope: !2917)
!2932 = !DILocation(line: 147, column: 41, scope: !1937, inlinedAt: !2931)
!2933 = !DILocation(line: 147, column: 62, scope: !1937, inlinedAt: !2931)
!2934 = !DILocation(line: 147, column: 57, scope: !1937, inlinedAt: !2931)
!2935 = !DILocation(line: 148, column: 15, scope: !1937, inlinedAt: !2931)
!2936 = !DILocation(line: 149, column: 21, scope: !1937, inlinedAt: !2931)
!2937 = !DILocation(line: 149, column: 24, scope: !1937, inlinedAt: !2931)
!2938 = !DILocation(line: 150, column: 19, scope: !1937, inlinedAt: !2931)
!2939 = !DILocation(line: 150, column: 24, scope: !1937, inlinedAt: !2931)
!2940 = !DILocation(line: 150, column: 6, scope: !1937, inlinedAt: !2931)
!2941 = !DILocation(line: 975, column: 10, scope: !2917)
!2942 = !DILocation(line: 976, column: 1, scope: !2917)
!2943 = !DILocation(line: 975, column: 3, scope: !2917)
!2944 = distinct !DISubprogram(name: "quotearg_char", scope: !544, file: !544, line: 979, type: !2945, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!330, !134, !4}
!2947 = !{!2948, !2949}
!2948 = !DILocalVariable(name: "arg", arg: 1, scope: !2944, file: !544, line: 979, type: !134)
!2949 = !DILocalVariable(name: "ch", arg: 2, scope: !2944, file: !544, line: 979, type: !4)
!2950 = !DILocation(line: 0, scope: !2944)
!2951 = !DILocation(line: 0, scope: !2917, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 981, column: 10, scope: !2944)
!2953 = !DILocation(line: 972, column: 3, scope: !2917, inlinedAt: !2952)
!2954 = !DILocation(line: 972, column: 26, scope: !2917, inlinedAt: !2952)
!2955 = !DILocation(line: 973, column: 13, scope: !2917, inlinedAt: !2952)
!2956 = !DILocation(line: 0, scope: !1937, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 974, column: 3, scope: !2917, inlinedAt: !2952)
!2958 = !DILocation(line: 147, column: 41, scope: !1937, inlinedAt: !2957)
!2959 = !DILocation(line: 147, column: 62, scope: !1937, inlinedAt: !2957)
!2960 = !DILocation(line: 147, column: 57, scope: !1937, inlinedAt: !2957)
!2961 = !DILocation(line: 148, column: 15, scope: !1937, inlinedAt: !2957)
!2962 = !DILocation(line: 149, column: 21, scope: !1937, inlinedAt: !2957)
!2963 = !DILocation(line: 149, column: 24, scope: !1937, inlinedAt: !2957)
!2964 = !DILocation(line: 150, column: 19, scope: !1937, inlinedAt: !2957)
!2965 = !DILocation(line: 150, column: 24, scope: !1937, inlinedAt: !2957)
!2966 = !DILocation(line: 150, column: 6, scope: !1937, inlinedAt: !2957)
!2967 = !DILocation(line: 975, column: 10, scope: !2917, inlinedAt: !2952)
!2968 = !DILocation(line: 976, column: 1, scope: !2917, inlinedAt: !2952)
!2969 = !DILocation(line: 981, column: 3, scope: !2944)
!2970 = distinct !DISubprogram(name: "quotearg_colon", scope: !544, file: !544, line: 985, type: !1039, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2971)
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "arg", arg: 1, scope: !2970, file: !544, line: 985, type: !134)
!2973 = !DILocation(line: 0, scope: !2970)
!2974 = !DILocation(line: 0, scope: !2944, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 987, column: 10, scope: !2970)
!2976 = !DILocation(line: 0, scope: !2917, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 981, column: 10, scope: !2944, inlinedAt: !2975)
!2978 = !DILocation(line: 972, column: 3, scope: !2917, inlinedAt: !2977)
!2979 = !DILocation(line: 972, column: 26, scope: !2917, inlinedAt: !2977)
!2980 = !DILocation(line: 973, column: 13, scope: !2917, inlinedAt: !2977)
!2981 = !DILocation(line: 0, scope: !1937, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 974, column: 3, scope: !2917, inlinedAt: !2977)
!2983 = !DILocation(line: 147, column: 57, scope: !1937, inlinedAt: !2982)
!2984 = !DILocation(line: 149, column: 21, scope: !1937, inlinedAt: !2982)
!2985 = !DILocation(line: 150, column: 6, scope: !1937, inlinedAt: !2982)
!2986 = !DILocation(line: 975, column: 10, scope: !2917, inlinedAt: !2977)
!2987 = !DILocation(line: 976, column: 1, scope: !2917, inlinedAt: !2977)
!2988 = !DILocation(line: 987, column: 3, scope: !2970)
!2989 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !544, file: !544, line: 991, type: !2798, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !2990)
!2990 = !{!2991, !2992}
!2991 = !DILocalVariable(name: "arg", arg: 1, scope: !2989, file: !544, line: 991, type: !134)
!2992 = !DILocalVariable(name: "argsize", arg: 2, scope: !2989, file: !544, line: 991, type: !186)
!2993 = !DILocation(line: 0, scope: !2989)
!2994 = !DILocation(line: 0, scope: !2917, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 993, column: 10, scope: !2989)
!2996 = !DILocation(line: 972, column: 3, scope: !2917, inlinedAt: !2995)
!2997 = !DILocation(line: 972, column: 26, scope: !2917, inlinedAt: !2995)
!2998 = !DILocation(line: 973, column: 13, scope: !2917, inlinedAt: !2995)
!2999 = !DILocation(line: 0, scope: !1937, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 974, column: 3, scope: !2917, inlinedAt: !2995)
!3001 = !DILocation(line: 147, column: 57, scope: !1937, inlinedAt: !3000)
!3002 = !DILocation(line: 149, column: 21, scope: !1937, inlinedAt: !3000)
!3003 = !DILocation(line: 150, column: 6, scope: !1937, inlinedAt: !3000)
!3004 = !DILocation(line: 975, column: 10, scope: !2917, inlinedAt: !2995)
!3005 = !DILocation(line: 976, column: 1, scope: !2917, inlinedAt: !2995)
!3006 = !DILocation(line: 993, column: 3, scope: !2989)
!3007 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !544, file: !544, line: 997, type: !2809, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3008)
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DILocalVariable(name: "n", arg: 1, scope: !3007, file: !544, line: 997, type: !184)
!3010 = !DILocalVariable(name: "s", arg: 2, scope: !3007, file: !544, line: 997, type: !148)
!3011 = !DILocalVariable(name: "arg", arg: 3, scope: !3007, file: !544, line: 997, type: !134)
!3012 = !DILocalVariable(name: "options", scope: !3007, file: !544, line: 999, type: !580)
!3013 = !DILocation(line: 185, column: 26, scope: !2824, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 1000, column: 13, scope: !3007)
!3015 = !DILocation(line: 0, scope: !3007)
!3016 = !DILocation(line: 999, column: 3, scope: !3007)
!3017 = !DILocation(line: 999, column: 26, scope: !3007)
!3018 = !DILocation(line: 0, scope: !2824, inlinedAt: !3014)
!3019 = !DILocation(line: 186, column: 13, scope: !2833, inlinedAt: !3014)
!3020 = !DILocation(line: 186, column: 7, scope: !2824, inlinedAt: !3014)
!3021 = !DILocation(line: 187, column: 5, scope: !2833, inlinedAt: !3014)
!3022 = !{!3023}
!3023 = distinct !{!3023, !3024, !"quoting_options_from_style: argument 0"}
!3024 = distinct !{!3024, !"quoting_options_from_style"}
!3025 = !DILocation(line: 1000, column: 13, scope: !3007)
!3026 = !DILocation(line: 0, scope: !1937, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1001, column: 3, scope: !3007)
!3028 = !DILocation(line: 147, column: 57, scope: !1937, inlinedAt: !3027)
!3029 = !DILocation(line: 149, column: 21, scope: !1937, inlinedAt: !3027)
!3030 = !DILocation(line: 150, column: 6, scope: !1937, inlinedAt: !3027)
!3031 = !DILocation(line: 1002, column: 10, scope: !3007)
!3032 = !DILocation(line: 1003, column: 1, scope: !3007)
!3033 = !DILocation(line: 1002, column: 3, scope: !3007)
!3034 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !544, file: !544, line: 1006, type: !3035, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!330, !184, !134, !134, !134}
!3037 = !{!3038, !3039, !3040, !3041}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !544, line: 1006, type: !184)
!3039 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3034, file: !544, line: 1006, type: !134)
!3040 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3034, file: !544, line: 1007, type: !134)
!3041 = !DILocalVariable(name: "arg", arg: 4, scope: !3034, file: !544, line: 1007, type: !134)
!3042 = !DILocation(line: 0, scope: !3034)
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3044, file: !544, line: 1014, type: !184)
!3044 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !544, file: !544, line: 1014, type: !3045, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!330, !184, !134, !134, !134, !186}
!3047 = !{!3043, !3048, !3049, !3050, !3051, !3052}
!3048 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3044, file: !544, line: 1014, type: !134)
!3049 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3044, file: !544, line: 1015, type: !134)
!3050 = !DILocalVariable(name: "arg", arg: 4, scope: !3044, file: !544, line: 1016, type: !134)
!3051 = !DILocalVariable(name: "argsize", arg: 5, scope: !3044, file: !544, line: 1016, type: !186)
!3052 = !DILocalVariable(name: "o", scope: !3044, file: !544, line: 1018, type: !580)
!3053 = !DILocation(line: 0, scope: !3044, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 1009, column: 10, scope: !3034)
!3055 = !DILocation(line: 1018, column: 3, scope: !3044, inlinedAt: !3054)
!3056 = !DILocation(line: 1018, column: 26, scope: !3044, inlinedAt: !3054)
!3057 = !DILocation(line: 1018, column: 30, scope: !3044, inlinedAt: !3054)
!3058 = !DILocation(line: 0, scope: !1977, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 1019, column: 3, scope: !3044, inlinedAt: !3054)
!3060 = !DILocation(line: 174, column: 12, scope: !1977, inlinedAt: !3059)
!3061 = !DILocation(line: 175, column: 8, scope: !1990, inlinedAt: !3059)
!3062 = !DILocation(line: 175, column: 19, scope: !1990, inlinedAt: !3059)
!3063 = !DILocation(line: 176, column: 5, scope: !1990, inlinedAt: !3059)
!3064 = !DILocation(line: 177, column: 6, scope: !1977, inlinedAt: !3059)
!3065 = !DILocation(line: 177, column: 17, scope: !1977, inlinedAt: !3059)
!3066 = !DILocation(line: 178, column: 6, scope: !1977, inlinedAt: !3059)
!3067 = !DILocation(line: 178, column: 18, scope: !1977, inlinedAt: !3059)
!3068 = !DILocation(line: 1020, column: 10, scope: !3044, inlinedAt: !3054)
!3069 = !DILocation(line: 1021, column: 1, scope: !3044, inlinedAt: !3054)
!3070 = !DILocation(line: 1009, column: 3, scope: !3034)
!3071 = !DILocation(line: 0, scope: !3044)
!3072 = !DILocation(line: 1018, column: 3, scope: !3044)
!3073 = !DILocation(line: 1018, column: 26, scope: !3044)
!3074 = !DILocation(line: 1018, column: 30, scope: !3044)
!3075 = !DILocation(line: 0, scope: !1977, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1019, column: 3, scope: !3044)
!3077 = !DILocation(line: 174, column: 12, scope: !1977, inlinedAt: !3076)
!3078 = !DILocation(line: 175, column: 8, scope: !1990, inlinedAt: !3076)
!3079 = !DILocation(line: 175, column: 19, scope: !1990, inlinedAt: !3076)
!3080 = !DILocation(line: 176, column: 5, scope: !1990, inlinedAt: !3076)
!3081 = !DILocation(line: 177, column: 6, scope: !1977, inlinedAt: !3076)
!3082 = !DILocation(line: 177, column: 17, scope: !1977, inlinedAt: !3076)
!3083 = !DILocation(line: 178, column: 6, scope: !1977, inlinedAt: !3076)
!3084 = !DILocation(line: 178, column: 18, scope: !1977, inlinedAt: !3076)
!3085 = !DILocation(line: 1020, column: 10, scope: !3044)
!3086 = !DILocation(line: 1021, column: 1, scope: !3044)
!3087 = !DILocation(line: 1020, column: 3, scope: !3044)
!3088 = distinct !DISubprogram(name: "quotearg_custom", scope: !544, file: !544, line: 1024, type: !3089, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!330, !134, !134, !134}
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3088, file: !544, line: 1024, type: !134)
!3093 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3088, file: !544, line: 1024, type: !134)
!3094 = !DILocalVariable(name: "arg", arg: 3, scope: !3088, file: !544, line: 1025, type: !134)
!3095 = !DILocation(line: 0, scope: !3088)
!3096 = !DILocation(line: 0, scope: !3034, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 1027, column: 10, scope: !3088)
!3098 = !DILocation(line: 0, scope: !3044, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 1009, column: 10, scope: !3034, inlinedAt: !3097)
!3100 = !DILocation(line: 1018, column: 3, scope: !3044, inlinedAt: !3099)
!3101 = !DILocation(line: 1018, column: 26, scope: !3044, inlinedAt: !3099)
!3102 = !DILocation(line: 1018, column: 30, scope: !3044, inlinedAt: !3099)
!3103 = !DILocation(line: 0, scope: !1977, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 1019, column: 3, scope: !3044, inlinedAt: !3099)
!3105 = !DILocation(line: 174, column: 12, scope: !1977, inlinedAt: !3104)
!3106 = !DILocation(line: 175, column: 8, scope: !1990, inlinedAt: !3104)
!3107 = !DILocation(line: 175, column: 19, scope: !1990, inlinedAt: !3104)
!3108 = !DILocation(line: 176, column: 5, scope: !1990, inlinedAt: !3104)
!3109 = !DILocation(line: 177, column: 6, scope: !1977, inlinedAt: !3104)
!3110 = !DILocation(line: 177, column: 17, scope: !1977, inlinedAt: !3104)
!3111 = !DILocation(line: 178, column: 6, scope: !1977, inlinedAt: !3104)
!3112 = !DILocation(line: 178, column: 18, scope: !1977, inlinedAt: !3104)
!3113 = !DILocation(line: 1020, column: 10, scope: !3044, inlinedAt: !3099)
!3114 = !DILocation(line: 1021, column: 1, scope: !3044, inlinedAt: !3099)
!3115 = !DILocation(line: 1027, column: 3, scope: !3088)
!3116 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !544, file: !544, line: 1031, type: !3117, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!330, !134, !134, !134, !186}
!3119 = !{!3120, !3121, !3122, !3123}
!3120 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3116, file: !544, line: 1031, type: !134)
!3121 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3116, file: !544, line: 1031, type: !134)
!3122 = !DILocalVariable(name: "arg", arg: 3, scope: !3116, file: !544, line: 1032, type: !134)
!3123 = !DILocalVariable(name: "argsize", arg: 4, scope: !3116, file: !544, line: 1032, type: !186)
!3124 = !DILocation(line: 0, scope: !3116)
!3125 = !DILocation(line: 0, scope: !3044, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 1034, column: 10, scope: !3116)
!3127 = !DILocation(line: 1018, column: 3, scope: !3044, inlinedAt: !3126)
!3128 = !DILocation(line: 1018, column: 26, scope: !3044, inlinedAt: !3126)
!3129 = !DILocation(line: 1018, column: 30, scope: !3044, inlinedAt: !3126)
!3130 = !DILocation(line: 0, scope: !1977, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 1019, column: 3, scope: !3044, inlinedAt: !3126)
!3132 = !DILocation(line: 174, column: 12, scope: !1977, inlinedAt: !3131)
!3133 = !DILocation(line: 175, column: 8, scope: !1990, inlinedAt: !3131)
!3134 = !DILocation(line: 175, column: 19, scope: !1990, inlinedAt: !3131)
!3135 = !DILocation(line: 176, column: 5, scope: !1990, inlinedAt: !3131)
!3136 = !DILocation(line: 177, column: 6, scope: !1977, inlinedAt: !3131)
!3137 = !DILocation(line: 177, column: 17, scope: !1977, inlinedAt: !3131)
!3138 = !DILocation(line: 178, column: 6, scope: !1977, inlinedAt: !3131)
!3139 = !DILocation(line: 178, column: 18, scope: !1977, inlinedAt: !3131)
!3140 = !DILocation(line: 1020, column: 10, scope: !3044, inlinedAt: !3126)
!3141 = !DILocation(line: 1021, column: 1, scope: !3044, inlinedAt: !3126)
!3142 = !DILocation(line: 1034, column: 3, scope: !3116)
!3143 = distinct !DISubprogram(name: "quote_n_mem", scope: !544, file: !544, line: 1049, type: !3144, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!134, !184, !134, !186}
!3146 = !{!3147, !3148, !3149}
!3147 = !DILocalVariable(name: "n", arg: 1, scope: !3143, file: !544, line: 1049, type: !184)
!3148 = !DILocalVariable(name: "arg", arg: 2, scope: !3143, file: !544, line: 1049, type: !134)
!3149 = !DILocalVariable(name: "argsize", arg: 3, scope: !3143, file: !544, line: 1049, type: !186)
!3150 = !DILocation(line: 0, scope: !3143)
!3151 = !DILocation(line: 1051, column: 10, scope: !3143)
!3152 = !DILocation(line: 1051, column: 3, scope: !3143)
!3153 = distinct !DISubprogram(name: "quote_mem", scope: !544, file: !544, line: 1055, type: !3154, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!134, !134, !186}
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "arg", arg: 1, scope: !3153, file: !544, line: 1055, type: !134)
!3158 = !DILocalVariable(name: "argsize", arg: 2, scope: !3153, file: !544, line: 1055, type: !186)
!3159 = !DILocation(line: 0, scope: !3153)
!3160 = !DILocation(line: 0, scope: !3143, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1057, column: 10, scope: !3153)
!3162 = !DILocation(line: 1051, column: 10, scope: !3143, inlinedAt: !3161)
!3163 = !DILocation(line: 1057, column: 3, scope: !3153)
!3164 = distinct !DISubprogram(name: "quote_n", scope: !544, file: !544, line: 1061, type: !3165, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!134, !184, !134}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "n", arg: 1, scope: !3164, file: !544, line: 1061, type: !184)
!3169 = !DILocalVariable(name: "arg", arg: 2, scope: !3164, file: !544, line: 1061, type: !134)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocation(line: 0, scope: !3143, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 1063, column: 10, scope: !3164)
!3173 = !DILocation(line: 1051, column: 10, scope: !3143, inlinedAt: !3172)
!3174 = !DILocation(line: 1063, column: 3, scope: !3164)
!3175 = distinct !DISubprogram(name: "quote", scope: !544, file: !544, line: 1067, type: !3176, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !565, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!134, !134}
!3178 = !{!3179}
!3179 = !DILocalVariable(name: "arg", arg: 1, scope: !3175, file: !544, line: 1067, type: !134)
!3180 = !DILocation(line: 0, scope: !3175)
!3181 = !DILocation(line: 0, scope: !3164, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1069, column: 10, scope: !3175)
!3183 = !DILocation(line: 0, scope: !3143, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 1063, column: 10, scope: !3164, inlinedAt: !3182)
!3185 = !DILocation(line: 1051, column: 10, scope: !3143, inlinedAt: !3184)
!3186 = !DILocation(line: 1069, column: 3, scope: !3175)
!3187 = distinct !DISubprogram(name: "version_etc_arn", scope: !643, file: !643, line: 61, type: !3188, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3225)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !3190, !134, !134, !134, !3224, !186}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3192)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3193)
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3192, file: !326, line: 51, baseType: !184, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3192, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3192, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3192, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3192, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3192, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3192, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3192, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3192, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3192, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3192, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3192, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3192, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3192, file: !326, line: 70, baseType: !3208, size: 64, offset: 832)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3192, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3192, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3192, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3192, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3192, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3192, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3192, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3192, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3192, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3192, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3192, file: !326, line: 93, baseType: !3208, size: 64, offset: 1344)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3192, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3192, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3192, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3192, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231}
!3226 = !DILocalVariable(name: "stream", arg: 1, scope: !3187, file: !643, line: 61, type: !3190)
!3227 = !DILocalVariable(name: "command_name", arg: 2, scope: !3187, file: !643, line: 62, type: !134)
!3228 = !DILocalVariable(name: "package", arg: 3, scope: !3187, file: !643, line: 62, type: !134)
!3229 = !DILocalVariable(name: "version", arg: 4, scope: !3187, file: !643, line: 63, type: !134)
!3230 = !DILocalVariable(name: "authors", arg: 5, scope: !3187, file: !643, line: 64, type: !3224)
!3231 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3187, file: !643, line: 64, type: !186)
!3232 = !DILocation(line: 0, scope: !3187)
!3233 = !DILocation(line: 66, column: 7, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3187, file: !643, line: 66, column: 7)
!3235 = !DILocation(line: 66, column: 7, scope: !3187)
!3236 = !DILocation(line: 67, column: 5, scope: !3234)
!3237 = !DILocation(line: 69, column: 5, scope: !3234)
!3238 = !DILocation(line: 83, column: 3, scope: !3187)
!3239 = !DILocation(line: 85, column: 3, scope: !3187)
!3240 = !DILocation(line: 88, column: 3, scope: !3187)
!3241 = !DILocation(line: 95, column: 3, scope: !3187)
!3242 = !DILocation(line: 97, column: 3, scope: !3187)
!3243 = !DILocation(line: 105, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3187, file: !643, line: 98, column: 5)
!3245 = !DILocation(line: 106, column: 7, scope: !3244)
!3246 = !DILocation(line: 109, column: 7, scope: !3244)
!3247 = !DILocation(line: 110, column: 7, scope: !3244)
!3248 = !DILocation(line: 113, column: 7, scope: !3244)
!3249 = !DILocation(line: 115, column: 7, scope: !3244)
!3250 = !DILocation(line: 120, column: 7, scope: !3244)
!3251 = !DILocation(line: 122, column: 7, scope: !3244)
!3252 = !DILocation(line: 127, column: 7, scope: !3244)
!3253 = !DILocation(line: 129, column: 7, scope: !3244)
!3254 = !DILocation(line: 134, column: 7, scope: !3244)
!3255 = !DILocation(line: 137, column: 7, scope: !3244)
!3256 = !DILocation(line: 142, column: 7, scope: !3244)
!3257 = !DILocation(line: 145, column: 7, scope: !3244)
!3258 = !DILocation(line: 150, column: 7, scope: !3244)
!3259 = !DILocation(line: 154, column: 7, scope: !3244)
!3260 = !DILocation(line: 159, column: 7, scope: !3244)
!3261 = !DILocation(line: 163, column: 7, scope: !3244)
!3262 = !DILocation(line: 170, column: 7, scope: !3244)
!3263 = !DILocation(line: 174, column: 7, scope: !3244)
!3264 = !DILocation(line: 176, column: 1, scope: !3187)
!3265 = distinct !DISubprogram(name: "version_etc_ar", scope: !643, file: !643, line: 183, type: !3266, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3190, !134, !134, !134, !3224}
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274}
!3269 = !DILocalVariable(name: "stream", arg: 1, scope: !3265, file: !643, line: 183, type: !3190)
!3270 = !DILocalVariable(name: "command_name", arg: 2, scope: !3265, file: !643, line: 184, type: !134)
!3271 = !DILocalVariable(name: "package", arg: 3, scope: !3265, file: !643, line: 184, type: !134)
!3272 = !DILocalVariable(name: "version", arg: 4, scope: !3265, file: !643, line: 185, type: !134)
!3273 = !DILocalVariable(name: "authors", arg: 5, scope: !3265, file: !643, line: 185, type: !3224)
!3274 = !DILocalVariable(name: "n_authors", scope: !3265, file: !643, line: 187, type: !186)
!3275 = !DILocation(line: 0, scope: !3265)
!3276 = !DILocation(line: 189, column: 8, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3265, file: !643, line: 189, column: 3)
!3278 = !DILocation(line: 189, scope: !3277)
!3279 = !DILocation(line: 189, column: 23, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !643, line: 189, column: 3)
!3281 = !DILocation(line: 189, column: 3, scope: !3277)
!3282 = !DILocation(line: 189, column: 52, scope: !3280)
!3283 = distinct !{!3283, !3281, !3284, !963}
!3284 = !DILocation(line: 190, column: 5, scope: !3277)
!3285 = !DILocation(line: 191, column: 3, scope: !3265)
!3286 = !DILocation(line: 192, column: 1, scope: !3265)
!3287 = distinct !DISubprogram(name: "version_etc_va", scope: !643, file: !643, line: 199, type: !3288, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3301)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3190, !134, !134, !134, !3290}
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !417, line: 52, baseType: !3291)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !419, line: 14, baseType: !3292)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3293, baseType: !3294)
!3293 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3294, file: !3293, line: 192, baseType: !178, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3294, file: !3293, line: 192, baseType: !178, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3294, file: !3293, line: 192, baseType: !178, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3294, file: !3293, line: 192, baseType: !184, size: 32, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3294, file: !3293, line: 192, baseType: !184, size: 32, offset: 224)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308}
!3302 = !DILocalVariable(name: "stream", arg: 1, scope: !3287, file: !643, line: 199, type: !3190)
!3303 = !DILocalVariable(name: "command_name", arg: 2, scope: !3287, file: !643, line: 200, type: !134)
!3304 = !DILocalVariable(name: "package", arg: 3, scope: !3287, file: !643, line: 200, type: !134)
!3305 = !DILocalVariable(name: "version", arg: 4, scope: !3287, file: !643, line: 201, type: !134)
!3306 = !DILocalVariable(name: "authors", arg: 5, scope: !3287, file: !643, line: 201, type: !3290)
!3307 = !DILocalVariable(name: "n_authors", scope: !3287, file: !643, line: 203, type: !186)
!3308 = !DILocalVariable(name: "authtab", scope: !3287, file: !643, line: 204, type: !3309)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !50)
!3310 = !DILocation(line: 0, scope: !3287)
!3311 = !DILocation(line: 201, column: 46, scope: !3287)
!3312 = !DILocation(line: 204, column: 3, scope: !3287)
!3313 = !DILocation(line: 204, column: 15, scope: !3287)
!3314 = !DILocation(line: 208, column: 35, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !643, line: 206, column: 3)
!3316 = distinct !DILexicalBlock(scope: !3287, file: !643, line: 206, column: 3)
!3317 = !DILocation(line: 208, column: 33, scope: !3315)
!3318 = !DILocation(line: 208, column: 67, scope: !3315)
!3319 = !DILocation(line: 206, column: 3, scope: !3316)
!3320 = !DILocation(line: 208, column: 14, scope: !3315)
!3321 = !DILocation(line: 0, scope: !3316)
!3322 = !DILocation(line: 211, column: 3, scope: !3287)
!3323 = !DILocation(line: 213, column: 1, scope: !3287)
!3324 = distinct !DISubprogram(name: "version_etc", scope: !643, file: !643, line: 230, type: !3325, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3327)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !3190, !134, !134, !134, null}
!3327 = !{!3328, !3329, !3330, !3331, !3332}
!3328 = !DILocalVariable(name: "stream", arg: 1, scope: !3324, file: !643, line: 230, type: !3190)
!3329 = !DILocalVariable(name: "command_name", arg: 2, scope: !3324, file: !643, line: 231, type: !134)
!3330 = !DILocalVariable(name: "package", arg: 3, scope: !3324, file: !643, line: 231, type: !134)
!3331 = !DILocalVariable(name: "version", arg: 4, scope: !3324, file: !643, line: 232, type: !134)
!3332 = !DILocalVariable(name: "authors", scope: !3324, file: !643, line: 234, type: !3290)
!3333 = !DILocation(line: 0, scope: !3324)
!3334 = !DILocation(line: 234, column: 3, scope: !3324)
!3335 = !DILocation(line: 234, column: 11, scope: !3324)
!3336 = !DILocation(line: 235, column: 3, scope: !3324)
!3337 = !DILocation(line: 236, column: 3, scope: !3324)
!3338 = !DILocation(line: 237, column: 3, scope: !3324)
!3339 = !DILocation(line: 238, column: 1, scope: !3324)
!3340 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !643, file: !643, line: 241, type: !458, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !901)
!3341 = !DILocation(line: 243, column: 3, scope: !3340)
!3342 = !DILocation(line: 248, column: 3, scope: !3340)
!3343 = !DILocation(line: 254, column: 3, scope: !3340)
!3344 = !DILocation(line: 259, column: 3, scope: !3340)
!3345 = !DILocation(line: 261, column: 1, scope: !3340)
!3346 = distinct !DISubprogram(name: "xnrealloc", scope: !3347, file: !3347, line: 147, type: !3348, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3350)
!3347 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!178, !178, !186, !186}
!3350 = !{!3351, !3352, !3353}
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !3347, line: 147, type: !178)
!3352 = !DILocalVariable(name: "n", arg: 2, scope: !3346, file: !3347, line: 147, type: !186)
!3353 = !DILocalVariable(name: "s", arg: 3, scope: !3346, file: !3347, line: 147, type: !186)
!3354 = !DILocation(line: 0, scope: !3346)
!3355 = !DILocalVariable(name: "p", arg: 1, scope: !3356, file: !777, line: 83, type: !178)
!3356 = distinct !DISubprogram(name: "xreallocarray", scope: !777, file: !777, line: 83, type: !3348, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3357)
!3357 = !{!3355, !3358, !3359}
!3358 = !DILocalVariable(name: "n", arg: 2, scope: !3356, file: !777, line: 83, type: !186)
!3359 = !DILocalVariable(name: "s", arg: 3, scope: !3356, file: !777, line: 83, type: !186)
!3360 = !DILocation(line: 0, scope: !3356, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 149, column: 10, scope: !3346)
!3362 = !DILocation(line: 85, column: 25, scope: !3356, inlinedAt: !3361)
!3363 = !DILocalVariable(name: "p", arg: 1, scope: !3364, file: !777, line: 37, type: !178)
!3364 = distinct !DISubprogram(name: "check_nonnull", scope: !777, file: !777, line: 37, type: !3365, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!178, !178}
!3367 = !{!3363}
!3368 = !DILocation(line: 0, scope: !3364, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 85, column: 10, scope: !3356, inlinedAt: !3361)
!3370 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3369)
!3371 = distinct !DILexicalBlock(scope: !3364, file: !777, line: 39, column: 7)
!3372 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3369)
!3373 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3369)
!3374 = !DILocation(line: 149, column: 3, scope: !3346)
!3375 = !DILocation(line: 0, scope: !3356)
!3376 = !DILocation(line: 85, column: 25, scope: !3356)
!3377 = !DILocation(line: 0, scope: !3364, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 85, column: 10, scope: !3356)
!3379 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3378)
!3380 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3378)
!3381 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3378)
!3382 = !DILocation(line: 85, column: 3, scope: !3356)
!3383 = distinct !DISubprogram(name: "xmalloc", scope: !777, file: !777, line: 47, type: !1731, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3384)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "s", arg: 1, scope: !3383, file: !777, line: 47, type: !186)
!3386 = !DILocation(line: 0, scope: !3383)
!3387 = !DILocation(line: 49, column: 25, scope: !3383)
!3388 = !DILocation(line: 0, scope: !3364, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 49, column: 10, scope: !3383)
!3390 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3389)
!3391 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3389)
!3392 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3389)
!3393 = !DILocation(line: 49, column: 3, scope: !3383)
!3394 = distinct !DISubprogram(name: "ximalloc", scope: !777, file: !777, line: 53, type: !3395, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!178, !796}
!3397 = !{!3398}
!3398 = !DILocalVariable(name: "s", arg: 1, scope: !3394, file: !777, line: 53, type: !796)
!3399 = !DILocation(line: 0, scope: !3394)
!3400 = !DILocalVariable(name: "s", arg: 1, scope: !3401, file: !3402, line: 55, type: !796)
!3401 = distinct !DISubprogram(name: "imalloc", scope: !3402, file: !3402, line: 55, type: !3395, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3403)
!3402 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3403 = !{!3400}
!3404 = !DILocation(line: 0, scope: !3401, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 55, column: 25, scope: !3394)
!3406 = !DILocation(line: 57, column: 26, scope: !3401, inlinedAt: !3405)
!3407 = !DILocation(line: 0, scope: !3364, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 55, column: 10, scope: !3394)
!3409 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3408)
!3410 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3408)
!3411 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3408)
!3412 = !DILocation(line: 55, column: 3, scope: !3394)
!3413 = distinct !DISubprogram(name: "xcharalloc", scope: !777, file: !777, line: 59, type: !3414, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!330, !186}
!3416 = !{!3417}
!3417 = !DILocalVariable(name: "n", arg: 1, scope: !3413, file: !777, line: 59, type: !186)
!3418 = !DILocation(line: 0, scope: !3413)
!3419 = !DILocation(line: 0, scope: !3383, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 61, column: 10, scope: !3413)
!3421 = !DILocation(line: 49, column: 25, scope: !3383, inlinedAt: !3420)
!3422 = !DILocation(line: 0, scope: !3364, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 49, column: 10, scope: !3383, inlinedAt: !3420)
!3424 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3423)
!3425 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3423)
!3426 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3423)
!3427 = !DILocation(line: 61, column: 3, scope: !3413)
!3428 = distinct !DISubprogram(name: "xrealloc", scope: !777, file: !777, line: 68, type: !3429, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!178, !178, !186}
!3431 = !{!3432, !3433}
!3432 = !DILocalVariable(name: "p", arg: 1, scope: !3428, file: !777, line: 68, type: !178)
!3433 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !777, line: 68, type: !186)
!3434 = !DILocation(line: 0, scope: !3428)
!3435 = !DILocalVariable(name: "ptr", arg: 1, scope: !3436, file: !3437, line: 2057, type: !178)
!3436 = distinct !DISubprogram(name: "rpl_realloc", scope: !3437, file: !3437, line: 2057, type: !3429, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3438)
!3437 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3438 = !{!3435, !3439}
!3439 = !DILocalVariable(name: "size", arg: 2, scope: !3436, file: !3437, line: 2057, type: !186)
!3440 = !DILocation(line: 0, scope: !3436, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 70, column: 25, scope: !3428)
!3442 = !DILocation(line: 2059, column: 24, scope: !3436, inlinedAt: !3441)
!3443 = !DILocation(line: 2059, column: 10, scope: !3436, inlinedAt: !3441)
!3444 = !DILocation(line: 0, scope: !3364, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 70, column: 10, scope: !3428)
!3446 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3445)
!3447 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3445)
!3448 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3445)
!3449 = !DILocation(line: 70, column: 3, scope: !3428)
!3450 = !DISubprogram(name: "realloc", scope: !1037, file: !1037, line: 551, type: !3429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3451 = distinct !DISubprogram(name: "xirealloc", scope: !777, file: !777, line: 74, type: !3452, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!178, !178, !796}
!3454 = !{!3455, !3456}
!3455 = !DILocalVariable(name: "p", arg: 1, scope: !3451, file: !777, line: 74, type: !178)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3451, file: !777, line: 74, type: !796)
!3457 = !DILocation(line: 0, scope: !3451)
!3458 = !DILocalVariable(name: "p", arg: 1, scope: !3459, file: !3402, line: 66, type: !178)
!3459 = distinct !DISubprogram(name: "irealloc", scope: !3402, file: !3402, line: 66, type: !3452, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3460)
!3460 = !{!3458, !3461}
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3459, file: !3402, line: 66, type: !796)
!3462 = !DILocation(line: 0, scope: !3459, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 76, column: 25, scope: !3451)
!3464 = !DILocation(line: 0, scope: !3436, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 68, column: 26, scope: !3459, inlinedAt: !3463)
!3466 = !DILocation(line: 2059, column: 24, scope: !3436, inlinedAt: !3465)
!3467 = !DILocation(line: 2059, column: 10, scope: !3436, inlinedAt: !3465)
!3468 = !DILocation(line: 0, scope: !3364, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 76, column: 10, scope: !3451)
!3470 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3469)
!3471 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3469)
!3472 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3469)
!3473 = !DILocation(line: 76, column: 3, scope: !3451)
!3474 = distinct !DISubprogram(name: "xireallocarray", scope: !777, file: !777, line: 89, type: !3475, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!178, !178, !796, !796}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "p", arg: 1, scope: !3474, file: !777, line: 89, type: !178)
!3479 = !DILocalVariable(name: "n", arg: 2, scope: !3474, file: !777, line: 89, type: !796)
!3480 = !DILocalVariable(name: "s", arg: 3, scope: !3474, file: !777, line: 89, type: !796)
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocalVariable(name: "p", arg: 1, scope: !3483, file: !3402, line: 98, type: !178)
!3483 = distinct !DISubprogram(name: "ireallocarray", scope: !3402, file: !3402, line: 98, type: !3475, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3484)
!3484 = !{!3482, !3485, !3486}
!3485 = !DILocalVariable(name: "n", arg: 2, scope: !3483, file: !3402, line: 98, type: !796)
!3486 = !DILocalVariable(name: "s", arg: 3, scope: !3483, file: !3402, line: 98, type: !796)
!3487 = !DILocation(line: 0, scope: !3483, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 91, column: 25, scope: !3474)
!3489 = !DILocation(line: 101, column: 13, scope: !3483, inlinedAt: !3488)
!3490 = !DILocation(line: 0, scope: !3364, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 91, column: 10, scope: !3474)
!3492 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3491)
!3493 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3491)
!3494 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3491)
!3495 = !DILocation(line: 91, column: 3, scope: !3474)
!3496 = distinct !DISubprogram(name: "xnmalloc", scope: !777, file: !777, line: 98, type: !3497, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3499)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!178, !186, !186}
!3499 = !{!3500, !3501}
!3500 = !DILocalVariable(name: "n", arg: 1, scope: !3496, file: !777, line: 98, type: !186)
!3501 = !DILocalVariable(name: "s", arg: 2, scope: !3496, file: !777, line: 98, type: !186)
!3502 = !DILocation(line: 0, scope: !3496)
!3503 = !DILocation(line: 0, scope: !3356, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 100, column: 10, scope: !3496)
!3505 = !DILocation(line: 85, column: 25, scope: !3356, inlinedAt: !3504)
!3506 = !DILocation(line: 0, scope: !3364, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 85, column: 10, scope: !3356, inlinedAt: !3504)
!3508 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3507)
!3509 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3507)
!3510 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3507)
!3511 = !DILocation(line: 100, column: 3, scope: !3496)
!3512 = distinct !DISubprogram(name: "xinmalloc", scope: !777, file: !777, line: 104, type: !3513, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3515)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!178, !796, !796}
!3515 = !{!3516, !3517}
!3516 = !DILocalVariable(name: "n", arg: 1, scope: !3512, file: !777, line: 104, type: !796)
!3517 = !DILocalVariable(name: "s", arg: 2, scope: !3512, file: !777, line: 104, type: !796)
!3518 = !DILocation(line: 0, scope: !3512)
!3519 = !DILocation(line: 0, scope: !3474, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 106, column: 10, scope: !3512)
!3521 = !DILocation(line: 0, scope: !3483, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 91, column: 25, scope: !3474, inlinedAt: !3520)
!3523 = !DILocation(line: 101, column: 13, scope: !3483, inlinedAt: !3522)
!3524 = !DILocation(line: 0, scope: !3364, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 91, column: 10, scope: !3474, inlinedAt: !3520)
!3526 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3525)
!3527 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3525)
!3528 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3525)
!3529 = !DILocation(line: 106, column: 3, scope: !3512)
!3530 = distinct !DISubprogram(name: "x2realloc", scope: !777, file: !777, line: 116, type: !3531, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!178, !178, !783}
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "p", arg: 1, scope: !3530, file: !777, line: 116, type: !178)
!3535 = !DILocalVariable(name: "ps", arg: 2, scope: !3530, file: !777, line: 116, type: !783)
!3536 = !DILocation(line: 0, scope: !3530)
!3537 = !DILocation(line: 0, scope: !780, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 118, column: 10, scope: !3530)
!3539 = !DILocation(line: 178, column: 14, scope: !780, inlinedAt: !3538)
!3540 = !DILocation(line: 180, column: 9, scope: !3541, inlinedAt: !3538)
!3541 = distinct !DILexicalBlock(scope: !780, file: !777, line: 180, column: 7)
!3542 = !DILocation(line: 180, column: 7, scope: !780, inlinedAt: !3538)
!3543 = !DILocation(line: 182, column: 13, scope: !3544, inlinedAt: !3538)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !777, line: 182, column: 11)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !777, line: 181, column: 5)
!3546 = !DILocation(line: 182, column: 11, scope: !3545, inlinedAt: !3538)
!3547 = !DILocation(line: 197, column: 11, scope: !3548, inlinedAt: !3538)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !777, line: 197, column: 11)
!3549 = distinct !DILexicalBlock(scope: !3541, file: !777, line: 195, column: 5)
!3550 = !DILocation(line: 197, column: 11, scope: !3549, inlinedAt: !3538)
!3551 = !DILocation(line: 198, column: 9, scope: !3548, inlinedAt: !3538)
!3552 = !DILocation(line: 0, scope: !3356, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 201, column: 7, scope: !780, inlinedAt: !3538)
!3554 = !DILocation(line: 85, column: 25, scope: !3356, inlinedAt: !3553)
!3555 = !DILocation(line: 0, scope: !3364, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 85, column: 10, scope: !3356, inlinedAt: !3553)
!3557 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3556)
!3558 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3556)
!3559 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3556)
!3560 = !DILocation(line: 202, column: 7, scope: !780, inlinedAt: !3538)
!3561 = !DILocation(line: 118, column: 3, scope: !3530)
!3562 = !DILocation(line: 0, scope: !780)
!3563 = !DILocation(line: 178, column: 14, scope: !780)
!3564 = !DILocation(line: 180, column: 9, scope: !3541)
!3565 = !DILocation(line: 180, column: 7, scope: !780)
!3566 = !DILocation(line: 182, column: 13, scope: !3544)
!3567 = !DILocation(line: 182, column: 11, scope: !3545)
!3568 = !DILocation(line: 190, column: 30, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3544, file: !777, line: 183, column: 9)
!3570 = !DILocation(line: 191, column: 16, scope: !3569)
!3571 = !DILocation(line: 191, column: 13, scope: !3569)
!3572 = !DILocation(line: 192, column: 9, scope: !3569)
!3573 = !DILocation(line: 197, column: 11, scope: !3548)
!3574 = !DILocation(line: 197, column: 11, scope: !3549)
!3575 = !DILocation(line: 198, column: 9, scope: !3548)
!3576 = !DILocation(line: 0, scope: !3356, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 201, column: 7, scope: !780)
!3578 = !DILocation(line: 85, column: 25, scope: !3356, inlinedAt: !3577)
!3579 = !DILocation(line: 0, scope: !3364, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 85, column: 10, scope: !3356, inlinedAt: !3577)
!3581 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3580)
!3582 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3580)
!3583 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3580)
!3584 = !DILocation(line: 202, column: 7, scope: !780)
!3585 = !DILocation(line: 203, column: 3, scope: !780)
!3586 = !DILocation(line: 0, scope: !792)
!3587 = !DILocation(line: 230, column: 14, scope: !792)
!3588 = !DILocation(line: 238, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !792, file: !777, line: 238, column: 7)
!3590 = !DILocation(line: 238, column: 7, scope: !792)
!3591 = !DILocation(line: 240, column: 9, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !792, file: !777, line: 240, column: 7)
!3593 = !DILocation(line: 240, column: 18, scope: !3592)
!3594 = !DILocation(line: 253, column: 8, scope: !792)
!3595 = !DILocation(line: 258, column: 27, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !777, line: 257, column: 5)
!3597 = distinct !DILexicalBlock(scope: !792, file: !777, line: 256, column: 7)
!3598 = !DILocation(line: 259, column: 32, scope: !3596)
!3599 = !DILocation(line: 260, column: 5, scope: !3596)
!3600 = !DILocation(line: 262, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !792, file: !777, line: 262, column: 7)
!3602 = !DILocation(line: 262, column: 7, scope: !792)
!3603 = !DILocation(line: 263, column: 9, scope: !3601)
!3604 = !DILocation(line: 263, column: 5, scope: !3601)
!3605 = !DILocation(line: 264, column: 9, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !792, file: !777, line: 264, column: 7)
!3607 = !DILocation(line: 264, column: 14, scope: !3606)
!3608 = !DILocation(line: 265, column: 7, scope: !3606)
!3609 = !DILocation(line: 265, column: 11, scope: !3606)
!3610 = !DILocation(line: 266, column: 11, scope: !3606)
!3611 = !DILocation(line: 267, column: 14, scope: !3606)
!3612 = !DILocation(line: 264, column: 7, scope: !792)
!3613 = !DILocation(line: 268, column: 5, scope: !3606)
!3614 = !DILocation(line: 0, scope: !3428, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 269, column: 8, scope: !792)
!3616 = !DILocation(line: 0, scope: !3436, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 70, column: 25, scope: !3428, inlinedAt: !3615)
!3618 = !DILocation(line: 2059, column: 24, scope: !3436, inlinedAt: !3617)
!3619 = !DILocation(line: 2059, column: 10, scope: !3436, inlinedAt: !3617)
!3620 = !DILocation(line: 0, scope: !3364, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 70, column: 10, scope: !3428, inlinedAt: !3615)
!3622 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3621)
!3623 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3621)
!3624 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3621)
!3625 = !DILocation(line: 270, column: 7, scope: !792)
!3626 = !DILocation(line: 271, column: 3, scope: !792)
!3627 = distinct !DISubprogram(name: "xzalloc", scope: !777, file: !777, line: 279, type: !1731, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3628)
!3628 = !{!3629}
!3629 = !DILocalVariable(name: "s", arg: 1, scope: !3627, file: !777, line: 279, type: !186)
!3630 = !DILocation(line: 0, scope: !3627)
!3631 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !777, line: 294, type: !186)
!3632 = distinct !DISubprogram(name: "xcalloc", scope: !777, file: !777, line: 294, type: !3497, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3633)
!3633 = !{!3631, !3634}
!3634 = !DILocalVariable(name: "s", arg: 2, scope: !3632, file: !777, line: 294, type: !186)
!3635 = !DILocation(line: 0, scope: !3632, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 281, column: 10, scope: !3627)
!3637 = !DILocation(line: 296, column: 25, scope: !3632, inlinedAt: !3636)
!3638 = !DILocation(line: 0, scope: !3364, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 296, column: 10, scope: !3632, inlinedAt: !3636)
!3640 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3639)
!3641 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3639)
!3642 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3639)
!3643 = !DILocation(line: 281, column: 3, scope: !3627)
!3644 = !DISubprogram(name: "calloc", scope: !1037, file: !1037, line: 543, type: !3497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3645 = !DILocation(line: 0, scope: !3632)
!3646 = !DILocation(line: 296, column: 25, scope: !3632)
!3647 = !DILocation(line: 0, scope: !3364, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 296, column: 10, scope: !3632)
!3649 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3648)
!3650 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3648)
!3651 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3648)
!3652 = !DILocation(line: 296, column: 3, scope: !3632)
!3653 = distinct !DISubprogram(name: "xizalloc", scope: !777, file: !777, line: 285, type: !3395, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3654)
!3654 = !{!3655}
!3655 = !DILocalVariable(name: "s", arg: 1, scope: !3653, file: !777, line: 285, type: !796)
!3656 = !DILocation(line: 0, scope: !3653)
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3658, file: !777, line: 300, type: !796)
!3658 = distinct !DISubprogram(name: "xicalloc", scope: !777, file: !777, line: 300, type: !3513, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3659)
!3659 = !{!3657, !3660}
!3660 = !DILocalVariable(name: "s", arg: 2, scope: !3658, file: !777, line: 300, type: !796)
!3661 = !DILocation(line: 0, scope: !3658, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 287, column: 10, scope: !3653)
!3663 = !DILocalVariable(name: "n", arg: 1, scope: !3664, file: !3402, line: 77, type: !796)
!3664 = distinct !DISubprogram(name: "icalloc", scope: !3402, file: !3402, line: 77, type: !3513, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3665)
!3665 = !{!3663, !3666}
!3666 = !DILocalVariable(name: "s", arg: 2, scope: !3664, file: !3402, line: 77, type: !796)
!3667 = !DILocation(line: 0, scope: !3664, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 302, column: 25, scope: !3658, inlinedAt: !3662)
!3669 = !DILocation(line: 91, column: 10, scope: !3664, inlinedAt: !3668)
!3670 = !DILocation(line: 0, scope: !3364, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 302, column: 10, scope: !3658, inlinedAt: !3662)
!3672 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3671)
!3673 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3671)
!3674 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3671)
!3675 = !DILocation(line: 287, column: 3, scope: !3653)
!3676 = !DILocation(line: 0, scope: !3658)
!3677 = !DILocation(line: 0, scope: !3664, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 302, column: 25, scope: !3658)
!3679 = !DILocation(line: 91, column: 10, scope: !3664, inlinedAt: !3678)
!3680 = !DILocation(line: 0, scope: !3364, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 302, column: 10, scope: !3658)
!3682 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3681)
!3683 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3681)
!3684 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3681)
!3685 = !DILocation(line: 302, column: 3, scope: !3658)
!3686 = distinct !DISubprogram(name: "xmemdup", scope: !777, file: !777, line: 310, type: !3687, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!178, !1061, !186}
!3689 = !{!3690, !3691}
!3690 = !DILocalVariable(name: "p", arg: 1, scope: !3686, file: !777, line: 310, type: !1061)
!3691 = !DILocalVariable(name: "s", arg: 2, scope: !3686, file: !777, line: 310, type: !186)
!3692 = !DILocation(line: 0, scope: !3686)
!3693 = !DILocation(line: 0, scope: !3383, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 312, column: 18, scope: !3686)
!3695 = !DILocation(line: 49, column: 25, scope: !3383, inlinedAt: !3694)
!3696 = !DILocation(line: 0, scope: !3364, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 49, column: 10, scope: !3383, inlinedAt: !3694)
!3698 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3697)
!3699 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3697)
!3700 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3697)
!3701 = !DILocalVariable(name: "__dest", arg: 1, scope: !3702, file: !1703, line: 26, type: !1706)
!3702 = distinct !DISubprogram(name: "memcpy", scope: !1703, file: !1703, line: 26, type: !1704, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3703)
!3703 = !{!3701, !3704, !3705}
!3704 = !DILocalVariable(name: "__src", arg: 2, scope: !3702, file: !1703, line: 26, type: !1060)
!3705 = !DILocalVariable(name: "__len", arg: 3, scope: !3702, file: !1703, line: 26, type: !186)
!3706 = !DILocation(line: 0, scope: !3702, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 312, column: 10, scope: !3686)
!3708 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3707)
!3709 = !DILocation(line: 312, column: 3, scope: !3686)
!3710 = distinct !DISubprogram(name: "ximemdup", scope: !777, file: !777, line: 316, type: !3711, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!178, !1061, !796}
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "p", arg: 1, scope: !3710, file: !777, line: 316, type: !1061)
!3715 = !DILocalVariable(name: "s", arg: 2, scope: !3710, file: !777, line: 316, type: !796)
!3716 = !DILocation(line: 0, scope: !3710)
!3717 = !DILocation(line: 0, scope: !3394, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 318, column: 18, scope: !3710)
!3719 = !DILocation(line: 0, scope: !3401, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 55, column: 25, scope: !3394, inlinedAt: !3718)
!3721 = !DILocation(line: 57, column: 26, scope: !3401, inlinedAt: !3720)
!3722 = !DILocation(line: 0, scope: !3364, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 55, column: 10, scope: !3394, inlinedAt: !3718)
!3724 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3723)
!3725 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3723)
!3726 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3723)
!3727 = !DILocation(line: 0, scope: !3702, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 318, column: 10, scope: !3710)
!3729 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3728)
!3730 = !DILocation(line: 318, column: 3, scope: !3710)
!3731 = distinct !DISubprogram(name: "ximemdup0", scope: !777, file: !777, line: 325, type: !3732, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!330, !1061, !796}
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "p", arg: 1, scope: !3731, file: !777, line: 325, type: !1061)
!3736 = !DILocalVariable(name: "s", arg: 2, scope: !3731, file: !777, line: 325, type: !796)
!3737 = !DILocalVariable(name: "result", scope: !3731, file: !777, line: 327, type: !330)
!3738 = !DILocation(line: 0, scope: !3731)
!3739 = !DILocation(line: 327, column: 30, scope: !3731)
!3740 = !DILocation(line: 0, scope: !3394, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 327, column: 18, scope: !3731)
!3742 = !DILocation(line: 0, scope: !3401, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 55, column: 25, scope: !3394, inlinedAt: !3741)
!3744 = !DILocation(line: 57, column: 26, scope: !3401, inlinedAt: !3743)
!3745 = !DILocation(line: 0, scope: !3364, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 55, column: 10, scope: !3394, inlinedAt: !3741)
!3747 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3746)
!3748 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3746)
!3749 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3746)
!3750 = !DILocation(line: 328, column: 3, scope: !3731)
!3751 = !DILocation(line: 328, column: 13, scope: !3731)
!3752 = !DILocation(line: 0, scope: !3702, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 329, column: 10, scope: !3731)
!3754 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3753)
!3755 = !DILocation(line: 329, column: 3, scope: !3731)
!3756 = distinct !DISubprogram(name: "xstrdup", scope: !777, file: !777, line: 335, type: !1039, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3757)
!3757 = !{!3758}
!3758 = !DILocalVariable(name: "string", arg: 1, scope: !3756, file: !777, line: 335, type: !134)
!3759 = !DILocation(line: 0, scope: !3756)
!3760 = !DILocation(line: 337, column: 27, scope: !3756)
!3761 = !DILocation(line: 337, column: 43, scope: !3756)
!3762 = !DILocation(line: 0, scope: !3686, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 337, column: 10, scope: !3756)
!3764 = !DILocation(line: 0, scope: !3383, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 312, column: 18, scope: !3686, inlinedAt: !3763)
!3766 = !DILocation(line: 49, column: 25, scope: !3383, inlinedAt: !3765)
!3767 = !DILocation(line: 0, scope: !3364, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 49, column: 10, scope: !3383, inlinedAt: !3765)
!3769 = !DILocation(line: 39, column: 8, scope: !3371, inlinedAt: !3768)
!3770 = !DILocation(line: 39, column: 7, scope: !3364, inlinedAt: !3768)
!3771 = !DILocation(line: 40, column: 5, scope: !3371, inlinedAt: !3768)
!3772 = !DILocation(line: 0, scope: !3702, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 312, column: 10, scope: !3686, inlinedAt: !3763)
!3774 = !DILocation(line: 29, column: 10, scope: !3702, inlinedAt: !3773)
!3775 = !DILocation(line: 337, column: 3, scope: !3756)
!3776 = distinct !DISubprogram(name: "xalloc_die", scope: !733, file: !733, line: 32, type: !458, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3777)
!3777 = !{!3778}
!3778 = !DILocalVariable(name: "__errstatus", scope: !3779, file: !733, line: 34, type: !1080)
!3779 = distinct !DILexicalBlock(scope: !3776, file: !733, line: 34, column: 3)
!3780 = !DILocation(line: 34, column: 3, scope: !3779)
!3781 = !DILocation(line: 0, scope: !3779)
!3782 = !DILocation(line: 40, column: 3, scope: !3776)
!3783 = distinct !DISubprogram(name: "last_component", scope: !813, file: !813, line: 29, type: !1039, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3784)
!3784 = !{!3785, !3786, !3787, !3788}
!3785 = !DILocalVariable(name: "name", arg: 1, scope: !3783, file: !813, line: 29, type: !134)
!3786 = !DILocalVariable(name: "base", scope: !3783, file: !813, line: 31, type: !134)
!3787 = !DILocalVariable(name: "last_was_slash", scope: !3783, file: !813, line: 35, type: !309)
!3788 = !DILocalVariable(name: "p", scope: !3789, file: !813, line: 36, type: !134)
!3789 = distinct !DILexicalBlock(scope: !3783, file: !813, line: 36, column: 3)
!3790 = !DILocation(line: 0, scope: !3783)
!3791 = !DILocation(line: 32, column: 3, scope: !3783)
!3792 = !DILocation(line: 32, column: 10, scope: !3783)
!3793 = !DILocation(line: 33, column: 9, scope: !3783)
!3794 = distinct !{!3794, !3791, !3793, !963}
!3795 = !DILocation(line: 36, column: 30, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3789, file: !813, line: 36, column: 3)
!3797 = !DILocation(line: 31, column: 15, scope: !3783)
!3798 = !DILocation(line: 36, scope: !3789)
!3799 = !DILocation(line: 0, scope: !3789)
!3800 = !DILocation(line: 36, column: 3, scope: !3789)
!3801 = !DILocation(line: 47, column: 3, scope: !3783)
!3802 = !DILocation(line: 40, column: 16, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !813, line: 38, column: 11)
!3804 = distinct !DILexicalBlock(scope: !3796, file: !813, line: 37, column: 5)
!3805 = !DILocation(line: 36, column: 35, scope: !3796)
!3806 = !DILocation(line: 36, column: 3, scope: !3796)
!3807 = distinct !{!3807, !3800, !3808, !963}
!3808 = !DILocation(line: 45, column: 5, scope: !3789)
!3809 = distinct !DISubprogram(name: "base_len", scope: !813, file: !813, line: 51, type: !3810, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !812, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!186, !134}
!3812 = !{!3813, !3814, !3815}
!3813 = !DILocalVariable(name: "name", arg: 1, scope: !3809, file: !813, line: 51, type: !134)
!3814 = !DILocalVariable(name: "len", scope: !3809, file: !813, line: 53, type: !186)
!3815 = !DILocalVariable(name: "prefix_len", scope: !3809, file: !813, line: 61, type: !186)
!3816 = !DILocation(line: 0, scope: !3809)
!3817 = !DILocation(line: 54, column: 14, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3809, file: !813, line: 54, column: 3)
!3819 = !DILocation(line: 54, column: 8, scope: !3818)
!3820 = !DILocation(line: 54, scope: !3818)
!3821 = !DILocation(line: 54, column: 32, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3818, file: !813, line: 54, column: 3)
!3823 = !DILocation(line: 54, column: 38, scope: !3822)
!3824 = !DILocation(line: 54, column: 41, scope: !3822)
!3825 = !DILocation(line: 54, column: 3, scope: !3818)
!3826 = distinct !{!3826, !3825, !3827, !963}
!3827 = !DILocation(line: 55, column: 5, scope: !3818)
!3828 = !DILocation(line: 66, column: 3, scope: !3809)
!3829 = distinct !DISubprogram(name: "close_stream", scope: !815, file: !815, line: 55, type: !3830, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3866)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!184, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3834)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3834, file: !326, line: 51, baseType: !184, size: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3834, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3834, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3834, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3834, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3834, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3834, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3834, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3834, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3834, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3834, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3834, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3834, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3834, file: !326, line: 70, baseType: !3850, size: 64, offset: 832)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3834, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3834, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3834, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3834, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3834, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3834, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3834, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3834, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3834, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3834, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3834, file: !326, line: 93, baseType: !3850, size: 64, offset: 1344)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3834, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3834, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3834, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3834, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3866 = !{!3867, !3868, !3870, !3871}
!3867 = !DILocalVariable(name: "stream", arg: 1, scope: !3829, file: !815, line: 55, type: !3832)
!3868 = !DILocalVariable(name: "some_pending", scope: !3829, file: !815, line: 57, type: !3869)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!3870 = !DILocalVariable(name: "prev_fail", scope: !3829, file: !815, line: 58, type: !3869)
!3871 = !DILocalVariable(name: "fclose_fail", scope: !3829, file: !815, line: 59, type: !3869)
!3872 = !DILocation(line: 0, scope: !3829)
!3873 = !DILocation(line: 57, column: 30, scope: !3829)
!3874 = !DILocalVariable(name: "__stream", arg: 1, scope: !3875, file: !1195, line: 135, type: !3832)
!3875 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1195, file: !1195, line: 135, type: !3830, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !3876)
!3876 = !{!3874}
!3877 = !DILocation(line: 0, scope: !3875, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 58, column: 27, scope: !3829)
!3879 = !DILocation(line: 137, column: 10, scope: !3875, inlinedAt: !3878)
!3880 = !DILocation(line: 58, column: 43, scope: !3829)
!3881 = !DILocation(line: 59, column: 29, scope: !3829)
!3882 = !DILocation(line: 59, column: 45, scope: !3829)
!3883 = !DILocation(line: 69, column: 17, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3829, file: !815, line: 69, column: 7)
!3885 = !DILocation(line: 57, column: 50, scope: !3829)
!3886 = !DILocation(line: 69, column: 33, scope: !3884)
!3887 = !DILocation(line: 69, column: 53, scope: !3884)
!3888 = !DILocation(line: 69, column: 59, scope: !3884)
!3889 = !DILocation(line: 69, column: 7, scope: !3829)
!3890 = !DILocation(line: 71, column: 11, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3884, file: !815, line: 70, column: 5)
!3892 = !DILocation(line: 72, column: 9, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3891, file: !815, line: 71, column: 11)
!3894 = !DILocation(line: 72, column: 15, scope: !3893)
!3895 = !DILocation(line: 77, column: 1, scope: !3829)
!3896 = !DISubprogram(name: "__fpending", scope: !3897, file: !3897, line: 75, type: !3898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3897 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!186, !3832}
!3900 = distinct !DISubprogram(name: "rpl_fclose", scope: !817, file: !817, line: 58, type: !3901, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !3937)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!184, !3903}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3905)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3905, file: !326, line: 51, baseType: !184, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3905, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3905, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3905, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3905, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3905, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3905, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3905, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3905, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3905, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3905, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3905, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3905, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3905, file: !326, line: 70, baseType: !3921, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3905, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3905, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3905, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3905, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3905, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3905, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3905, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3905, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3905, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3905, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3905, file: !326, line: 93, baseType: !3921, size: 64, offset: 1344)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3905, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3905, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3905, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3905, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3937 = !{!3938, !3939, !3940, !3941}
!3938 = !DILocalVariable(name: "fp", arg: 1, scope: !3900, file: !817, line: 58, type: !3903)
!3939 = !DILocalVariable(name: "saved_errno", scope: !3900, file: !817, line: 60, type: !184)
!3940 = !DILocalVariable(name: "fd", scope: !3900, file: !817, line: 63, type: !184)
!3941 = !DILocalVariable(name: "result", scope: !3900, file: !817, line: 74, type: !184)
!3942 = !DILocation(line: 0, scope: !3900)
!3943 = !DILocation(line: 63, column: 12, scope: !3900)
!3944 = !DILocation(line: 64, column: 10, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3900, file: !817, line: 64, column: 7)
!3946 = !DILocation(line: 64, column: 7, scope: !3900)
!3947 = !DILocation(line: 65, column: 12, scope: !3945)
!3948 = !DILocation(line: 65, column: 5, scope: !3945)
!3949 = !DILocation(line: 70, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3900, file: !817, line: 70, column: 7)
!3951 = !DILocation(line: 70, column: 23, scope: !3950)
!3952 = !DILocation(line: 70, column: 33, scope: !3950)
!3953 = !DILocation(line: 70, column: 26, scope: !3950)
!3954 = !DILocation(line: 70, column: 59, scope: !3950)
!3955 = !DILocation(line: 71, column: 7, scope: !3950)
!3956 = !DILocation(line: 71, column: 10, scope: !3950)
!3957 = !DILocation(line: 70, column: 7, scope: !3900)
!3958 = !DILocation(line: 100, column: 12, scope: !3900)
!3959 = !DILocation(line: 105, column: 7, scope: !3900)
!3960 = !DILocation(line: 72, column: 19, scope: !3950)
!3961 = !DILocation(line: 105, column: 19, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3900, file: !817, line: 105, column: 7)
!3963 = !DILocation(line: 107, column: 13, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3962, file: !817, line: 106, column: 5)
!3965 = !DILocation(line: 109, column: 5, scope: !3964)
!3966 = !DILocation(line: 112, column: 1, scope: !3900)
!3967 = !DISubprogram(name: "fileno", scope: !417, file: !417, line: 809, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3968 = !DISubprogram(name: "fclose", scope: !417, file: !417, line: 178, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3969 = !DISubprogram(name: "__freading", scope: !3897, file: !3897, line: 51, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3970 = !DISubprogram(name: "lseek", scope: !1227, file: !1227, line: 339, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!349, !184, !349, !184}
!3973 = distinct !DISubprogram(name: "rpl_fflush", scope: !819, file: !819, line: 130, type: !3974, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4010)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!184, !3976}
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3978)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3978, file: !326, line: 51, baseType: !184, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3978, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3978, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3978, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3978, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3978, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3978, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3978, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3978, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3978, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3978, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3978, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3978, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3978, file: !326, line: 70, baseType: !3994, size: 64, offset: 832)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3978, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3978, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3978, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3978, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3978, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3978, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3978, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3978, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3978, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3978, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3978, file: !326, line: 93, baseType: !3994, size: 64, offset: 1344)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3978, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3978, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3978, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3978, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4010 = !{!4011}
!4011 = !DILocalVariable(name: "stream", arg: 1, scope: !3973, file: !819, line: 130, type: !3976)
!4012 = !DILocation(line: 0, scope: !3973)
!4013 = !DILocation(line: 151, column: 14, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3973, file: !819, line: 151, column: 7)
!4015 = !DILocation(line: 151, column: 22, scope: !4014)
!4016 = !DILocation(line: 151, column: 27, scope: !4014)
!4017 = !DILocation(line: 151, column: 7, scope: !3973)
!4018 = !DILocation(line: 152, column: 12, scope: !4014)
!4019 = !DILocation(line: 152, column: 5, scope: !4014)
!4020 = !DILocalVariable(name: "fp", arg: 1, scope: !4021, file: !819, line: 42, type: !3976)
!4021 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !819, file: !819, line: 42, type: !4022, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !3976}
!4024 = !{!4020}
!4025 = !DILocation(line: 0, scope: !4021, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 157, column: 3, scope: !3973)
!4027 = !DILocation(line: 44, column: 12, scope: !4028, inlinedAt: !4026)
!4028 = distinct !DILexicalBlock(scope: !4021, file: !819, line: 44, column: 7)
!4029 = !DILocation(line: 44, column: 19, scope: !4028, inlinedAt: !4026)
!4030 = !DILocation(line: 44, column: 7, scope: !4021, inlinedAt: !4026)
!4031 = !DILocation(line: 46, column: 5, scope: !4028, inlinedAt: !4026)
!4032 = !DILocation(line: 159, column: 10, scope: !3973)
!4033 = !DILocation(line: 159, column: 3, scope: !3973)
!4034 = !DILocation(line: 236, column: 1, scope: !3973)
!4035 = !DISubprogram(name: "fflush", scope: !417, file: !417, line: 230, type: !3974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!4036 = distinct !DISubprogram(name: "rpl_fseeko", scope: !821, file: !821, line: 28, type: !4037, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !4074)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!184, !4039, !4073, !184}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !4041)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4041, file: !326, line: 51, baseType: !184, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4041, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4041, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4041, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4041, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4041, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4041, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4041, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4041, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4041, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4041, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4041, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4041, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4041, file: !326, line: 70, baseType: !4057, size: 64, offset: 832)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4041, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4041, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4041, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4041, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4041, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4041, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4041, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4041, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4041, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4041, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4041, file: !326, line: 93, baseType: !4057, size: 64, offset: 1344)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4041, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4041, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4041, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4041, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !417, line: 63, baseType: !349)
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DILocalVariable(name: "fp", arg: 1, scope: !4036, file: !821, line: 28, type: !4039)
!4076 = !DILocalVariable(name: "offset", arg: 2, scope: !4036, file: !821, line: 28, type: !4073)
!4077 = !DILocalVariable(name: "whence", arg: 3, scope: !4036, file: !821, line: 28, type: !184)
!4078 = !DILocalVariable(name: "pos", scope: !4079, file: !821, line: 123, type: !4073)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !821, line: 119, column: 5)
!4080 = distinct !DILexicalBlock(scope: !4036, file: !821, line: 55, column: 7)
!4081 = !DILocation(line: 0, scope: !4036)
!4082 = !DILocation(line: 55, column: 12, scope: !4080)
!4083 = !{!1203, !849, i64 16}
!4084 = !DILocation(line: 55, column: 33, scope: !4080)
!4085 = !{!1203, !849, i64 8}
!4086 = !DILocation(line: 55, column: 25, scope: !4080)
!4087 = !DILocation(line: 56, column: 7, scope: !4080)
!4088 = !DILocation(line: 56, column: 15, scope: !4080)
!4089 = !DILocation(line: 56, column: 37, scope: !4080)
!4090 = !{!1203, !849, i64 32}
!4091 = !DILocation(line: 56, column: 29, scope: !4080)
!4092 = !DILocation(line: 57, column: 7, scope: !4080)
!4093 = !DILocation(line: 57, column: 15, scope: !4080)
!4094 = !{!1203, !849, i64 72}
!4095 = !DILocation(line: 57, column: 29, scope: !4080)
!4096 = !DILocation(line: 55, column: 7, scope: !4036)
!4097 = !DILocation(line: 123, column: 26, scope: !4079)
!4098 = !DILocation(line: 123, column: 19, scope: !4079)
!4099 = !DILocation(line: 0, scope: !4079)
!4100 = !DILocation(line: 124, column: 15, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4079, file: !821, line: 124, column: 11)
!4102 = !DILocation(line: 124, column: 11, scope: !4079)
!4103 = !DILocation(line: 135, column: 19, scope: !4079)
!4104 = !DILocation(line: 136, column: 12, scope: !4079)
!4105 = !DILocation(line: 136, column: 20, scope: !4079)
!4106 = !{!1203, !1204, i64 144}
!4107 = !DILocation(line: 167, column: 7, scope: !4079)
!4108 = !DILocation(line: 169, column: 10, scope: !4036)
!4109 = !DILocation(line: 169, column: 3, scope: !4036)
!4110 = !DILocation(line: 170, column: 1, scope: !4036)
!4111 = !DISubprogram(name: "fseeko", scope: !417, file: !417, line: 736, type: !4112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!184, !4039, !349, !184}
!4114 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !740, file: !740, line: 100, type: !4115, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !4118)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!186, !1898, !134, !186, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!4118 = !{!4119, !4120, !4121, !4122, !4123}
!4119 = !DILocalVariable(name: "pwc", arg: 1, scope: !4114, file: !740, line: 100, type: !1898)
!4120 = !DILocalVariable(name: "s", arg: 2, scope: !4114, file: !740, line: 100, type: !134)
!4121 = !DILocalVariable(name: "n", arg: 3, scope: !4114, file: !740, line: 100, type: !186)
!4122 = !DILocalVariable(name: "ps", arg: 4, scope: !4114, file: !740, line: 100, type: !4117)
!4123 = !DILocalVariable(name: "ret", scope: !4114, file: !740, line: 130, type: !186)
!4124 = !DILocation(line: 0, scope: !4114)
!4125 = !DILocation(line: 105, column: 9, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4114, file: !740, line: 105, column: 7)
!4127 = !DILocation(line: 105, column: 7, scope: !4114)
!4128 = !DILocation(line: 117, column: 10, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4114, file: !740, line: 117, column: 7)
!4130 = !DILocation(line: 117, column: 7, scope: !4114)
!4131 = !DILocation(line: 130, column: 16, scope: !4114)
!4132 = !DILocation(line: 135, column: 11, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4114, file: !740, line: 135, column: 7)
!4134 = !DILocation(line: 135, column: 25, scope: !4133)
!4135 = !DILocation(line: 135, column: 30, scope: !4133)
!4136 = !DILocation(line: 135, column: 7, scope: !4114)
!4137 = !DILocalVariable(name: "ps", arg: 1, scope: !4138, file: !1872, line: 1135, type: !4117)
!4138 = distinct !DISubprogram(name: "mbszero", scope: !1872, file: !1872, line: 1135, type: !4139, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4117}
!4141 = !{!4137}
!4142 = !DILocation(line: 0, scope: !4138, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 137, column: 5, scope: !4133)
!4144 = !DILocalVariable(name: "__dest", arg: 1, scope: !4145, file: !1703, line: 57, type: !178)
!4145 = distinct !DISubprogram(name: "memset", scope: !1703, file: !1703, line: 57, type: !1881, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !4146)
!4146 = !{!4144, !4147, !4148}
!4147 = !DILocalVariable(name: "__ch", arg: 2, scope: !4145, file: !1703, line: 57, type: !184)
!4148 = !DILocalVariable(name: "__len", arg: 3, scope: !4145, file: !1703, line: 57, type: !186)
!4149 = !DILocation(line: 0, scope: !4145, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 1137, column: 3, scope: !4138, inlinedAt: !4143)
!4151 = !DILocation(line: 59, column: 10, scope: !4145, inlinedAt: !4150)
!4152 = !DILocation(line: 137, column: 5, scope: !4133)
!4153 = !DILocation(line: 138, column: 11, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4114, file: !740, line: 138, column: 7)
!4155 = !DILocation(line: 138, column: 7, scope: !4114)
!4156 = !DILocation(line: 139, column: 5, scope: !4154)
!4157 = !DILocation(line: 143, column: 26, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4114, file: !740, line: 143, column: 7)
!4159 = !DILocation(line: 143, column: 41, scope: !4158)
!4160 = !DILocation(line: 143, column: 7, scope: !4114)
!4161 = !DILocation(line: 145, column: 15, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !740, line: 145, column: 11)
!4163 = distinct !DILexicalBlock(scope: !4158, file: !740, line: 144, column: 5)
!4164 = !DILocation(line: 145, column: 11, scope: !4163)
!4165 = !DILocation(line: 146, column: 32, scope: !4162)
!4166 = !DILocation(line: 146, column: 16, scope: !4162)
!4167 = !DILocation(line: 146, column: 14, scope: !4162)
!4168 = !DILocation(line: 146, column: 9, scope: !4162)
!4169 = !DILocation(line: 286, column: 1, scope: !4114)
!4170 = !DISubprogram(name: "mbsinit", scope: !4171, file: !4171, line: 293, type: !4172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !901)
!4171 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!184, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!4176 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !823, file: !823, line: 27, type: !3348, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4177)
!4177 = !{!4178, !4179, !4180, !4181}
!4178 = !DILocalVariable(name: "ptr", arg: 1, scope: !4176, file: !823, line: 27, type: !178)
!4179 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4176, file: !823, line: 27, type: !186)
!4180 = !DILocalVariable(name: "size", arg: 3, scope: !4176, file: !823, line: 27, type: !186)
!4181 = !DILocalVariable(name: "nbytes", scope: !4176, file: !823, line: 29, type: !186)
!4182 = !DILocation(line: 0, scope: !4176)
!4183 = !DILocation(line: 30, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4176, file: !823, line: 30, column: 7)
!4185 = !DILocalVariable(name: "ptr", arg: 1, scope: !4186, file: !3437, line: 2057, type: !178)
!4186 = distinct !DISubprogram(name: "rpl_realloc", scope: !3437, file: !3437, line: 2057, type: !3429, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4187)
!4187 = !{!4185, !4188}
!4188 = !DILocalVariable(name: "size", arg: 2, scope: !4186, file: !3437, line: 2057, type: !186)
!4189 = !DILocation(line: 0, scope: !4186, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 37, column: 10, scope: !4176)
!4191 = !DILocation(line: 2059, column: 24, scope: !4186, inlinedAt: !4190)
!4192 = !DILocation(line: 2059, column: 10, scope: !4186, inlinedAt: !4190)
!4193 = !DILocation(line: 37, column: 3, scope: !4176)
!4194 = !DILocation(line: 32, column: 7, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4184, file: !823, line: 31, column: 5)
!4196 = !DILocation(line: 32, column: 13, scope: !4195)
!4197 = !DILocation(line: 33, column: 7, scope: !4195)
!4198 = !DILocation(line: 38, column: 1, scope: !4176)
!4199 = distinct !DISubprogram(name: "hard_locale", scope: !758, file: !758, line: 28, type: !4200, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!309, !184}
!4202 = !{!4203, !4204}
!4203 = !DILocalVariable(name: "category", arg: 1, scope: !4199, file: !758, line: 28, type: !184)
!4204 = !DILocalVariable(name: "locale", scope: !4199, file: !758, line: 30, type: !4205)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4206)
!4206 = !{!4207}
!4207 = !DISubrange(count: 257)
!4208 = !DILocation(line: 0, scope: !4199)
!4209 = !DILocation(line: 30, column: 3, scope: !4199)
!4210 = !DILocation(line: 30, column: 8, scope: !4199)
!4211 = !DILocation(line: 32, column: 7, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4199, file: !758, line: 32, column: 7)
!4213 = !DILocation(line: 32, column: 7, scope: !4199)
!4214 = !DILocalVariable(name: "__s1", arg: 1, scope: !4215, file: !929, line: 1359, type: !134)
!4215 = distinct !DISubprogram(name: "streq", scope: !929, file: !929, line: 1359, type: !930, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !4216)
!4216 = !{!4214, !4217}
!4217 = !DILocalVariable(name: "__s2", arg: 2, scope: !4215, file: !929, line: 1359, type: !134)
!4218 = !DILocation(line: 0, scope: !4215, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 35, column: 9, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4199, file: !758, line: 35, column: 7)
!4221 = !DILocation(line: 1361, column: 11, scope: !4215, inlinedAt: !4219)
!4222 = !DILocation(line: 1361, column: 10, scope: !4215, inlinedAt: !4219)
!4223 = !DILocation(line: 35, column: 29, scope: !4220)
!4224 = !DILocation(line: 0, scope: !4215, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 35, column: 32, scope: !4220)
!4226 = !DILocation(line: 1361, column: 11, scope: !4215, inlinedAt: !4225)
!4227 = !DILocation(line: 1361, column: 10, scope: !4215, inlinedAt: !4225)
!4228 = !DILocation(line: 35, column: 7, scope: !4199)
!4229 = !DILocation(line: 46, column: 3, scope: !4199)
!4230 = !DILocation(line: 47, column: 1, scope: !4199)
!4231 = distinct !DISubprogram(name: "setlocale_null_r", scope: !828, file: !828, line: 154, type: !4232, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!184, !184, !330, !186}
!4234 = !{!4235, !4236, !4237}
!4235 = !DILocalVariable(name: "category", arg: 1, scope: !4231, file: !828, line: 154, type: !184)
!4236 = !DILocalVariable(name: "buf", arg: 2, scope: !4231, file: !828, line: 154, type: !330)
!4237 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4231, file: !828, line: 154, type: !186)
!4238 = !DILocation(line: 0, scope: !4231)
!4239 = !DILocation(line: 159, column: 10, scope: !4231)
!4240 = !DILocation(line: 159, column: 3, scope: !4231)
!4241 = distinct !DISubprogram(name: "setlocale_null", scope: !828, file: !828, line: 186, type: !4242, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!134, !184}
!4244 = !{!4245}
!4245 = !DILocalVariable(name: "category", arg: 1, scope: !4241, file: !828, line: 186, type: !184)
!4246 = !DILocation(line: 0, scope: !4241)
!4247 = !DILocation(line: 189, column: 10, scope: !4241)
!4248 = !DILocation(line: 189, column: 3, scope: !4241)
!4249 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !830, file: !830, line: 35, type: !4242, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4250)
!4250 = !{!4251, !4252}
!4251 = !DILocalVariable(name: "category", arg: 1, scope: !4249, file: !830, line: 35, type: !184)
!4252 = !DILocalVariable(name: "result", scope: !4249, file: !830, line: 37, type: !134)
!4253 = !DILocation(line: 0, scope: !4249)
!4254 = !DILocation(line: 37, column: 24, scope: !4249)
!4255 = !DILocation(line: 62, column: 3, scope: !4249)
!4256 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !830, file: !830, line: 66, type: !4232, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4257)
!4257 = !{!4258, !4259, !4260, !4261, !4262}
!4258 = !DILocalVariable(name: "category", arg: 1, scope: !4256, file: !830, line: 66, type: !184)
!4259 = !DILocalVariable(name: "buf", arg: 2, scope: !4256, file: !830, line: 66, type: !330)
!4260 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4256, file: !830, line: 66, type: !186)
!4261 = !DILocalVariable(name: "result", scope: !4256, file: !830, line: 111, type: !134)
!4262 = !DILocalVariable(name: "length", scope: !4263, file: !830, line: 125, type: !186)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !830, line: 124, column: 5)
!4264 = distinct !DILexicalBlock(scope: !4256, file: !830, line: 113, column: 7)
!4265 = !DILocation(line: 0, scope: !4256)
!4266 = !DILocation(line: 0, scope: !4249, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 111, column: 24, scope: !4256)
!4268 = !DILocation(line: 37, column: 24, scope: !4249, inlinedAt: !4267)
!4269 = !DILocation(line: 113, column: 14, scope: !4264)
!4270 = !DILocation(line: 113, column: 7, scope: !4256)
!4271 = !DILocation(line: 116, column: 19, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !830, line: 116, column: 11)
!4273 = distinct !DILexicalBlock(scope: !4264, file: !830, line: 114, column: 5)
!4274 = !DILocation(line: 116, column: 11, scope: !4273)
!4275 = !DILocation(line: 120, column: 16, scope: !4272)
!4276 = !DILocation(line: 120, column: 9, scope: !4272)
!4277 = !DILocation(line: 125, column: 23, scope: !4263)
!4278 = !DILocation(line: 0, scope: !4263)
!4279 = !DILocation(line: 126, column: 18, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4263, file: !830, line: 126, column: 11)
!4281 = !DILocation(line: 126, column: 11, scope: !4263)
!4282 = !DILocation(line: 128, column: 39, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !830, line: 127, column: 9)
!4284 = !DILocalVariable(name: "__dest", arg: 1, scope: !4285, file: !1703, line: 26, type: !1706)
!4285 = distinct !DISubprogram(name: "memcpy", scope: !1703, file: !1703, line: 26, type: !1704, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4286)
!4286 = !{!4284, !4287, !4288}
!4287 = !DILocalVariable(name: "__src", arg: 2, scope: !4285, file: !1703, line: 26, type: !1060)
!4288 = !DILocalVariable(name: "__len", arg: 3, scope: !4285, file: !1703, line: 26, type: !186)
!4289 = !DILocation(line: 0, scope: !4285, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 128, column: 11, scope: !4283)
!4291 = !DILocation(line: 29, column: 10, scope: !4285, inlinedAt: !4290)
!4292 = !DILocation(line: 129, column: 11, scope: !4283)
!4293 = !DILocation(line: 133, column: 23, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !830, line: 133, column: 15)
!4295 = distinct !DILexicalBlock(scope: !4280, file: !830, line: 132, column: 9)
!4296 = !DILocation(line: 133, column: 15, scope: !4295)
!4297 = !DILocation(line: 138, column: 44, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4294, file: !830, line: 134, column: 13)
!4299 = !DILocation(line: 0, scope: !4285, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 138, column: 15, scope: !4298)
!4301 = !DILocation(line: 29, column: 10, scope: !4285, inlinedAt: !4300)
!4302 = !DILocation(line: 139, column: 15, scope: !4298)
!4303 = !DILocation(line: 139, column: 32, scope: !4298)
!4304 = !DILocation(line: 140, column: 13, scope: !4298)
!4305 = !DILocation(line: 0, scope: !4264)
!4306 = !DILocation(line: 145, column: 1, scope: !4256)
