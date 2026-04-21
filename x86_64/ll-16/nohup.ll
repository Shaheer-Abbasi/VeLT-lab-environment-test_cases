; ModuleID = 'src/nohup.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !441
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !411
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !431
@.str.1.44 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !433
@.str.2.46 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !435
@.str.3.45 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !437
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !439
@.str.4.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !443
@.str.5.40 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !445
@.str.6.41 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !450
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !455
@opterr = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !473
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.64, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.65, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !476
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !569
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !583
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !621
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !628
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !585
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !630
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !573
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !590
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !592
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !594
@.str.13.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !596
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !598
@.str.95 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !636
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !639
@.str.2.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !641
@.str.3.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !643
@.str.4.99 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !645
@.str.5.100 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !647
@.str.6.101 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !652
@.str.7.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !654
@.str.8.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !656
@.str.9.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !658
@.str.10.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !663
@.str.11.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !668
@.str.12.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !673
@.str.13.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !675
@.str.14.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !680
@.str.15.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !685
@.str.16.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !690
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.116 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !695
@.str.18.117 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !697
@.str.19.118 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !699
@.str.20.119 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !701
@.str.21.120 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !703
@.str.22.121 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !705
@.str.23.122 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !707
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !712
@exit_failure = dso_local global i32 1, align 4, !dbg !720
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !726
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !729
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !731
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !733
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !736
@.str.1.155 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !751

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !835, metadata !DIExpression()), !dbg !836
  %2 = icmp eq i32 %0, 0, !dbg !837
  br i1 %2, label %8, label %3, !dbg !839

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !840, !tbaa !842
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !840
  %6 = load ptr, ptr @program_name, align 8, !dbg !840, !tbaa !842
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !840
  br label %38, !dbg !840

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !846
  %10 = load ptr, ptr @program_name, align 8, !dbg !846, !tbaa !842
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !846
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !848
  %13 = load ptr, ptr @stdout, align 8, !dbg !848, !tbaa !842
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !848
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !849
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !849
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !850
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !850
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !851
  %18 = load ptr, ptr @program_name, align 8, !dbg !851, !tbaa !842
  %19 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %17, ptr noundef %18) #39, !dbg !851
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !852
  %21 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %20, ptr noundef nonnull @.str.3) #39, !dbg !852
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !853, metadata !DIExpression()), !dbg !858
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #39, !dbg !860
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #39, !dbg !860
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !861, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr poison, metadata !871, metadata !DIExpression()), !dbg !876
  tail call void @emit_bug_reporting_address() #39, !dbg !878
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !879
  call void @llvm.dbg.value(metadata ptr %24, metadata !874, metadata !DIExpression()), !dbg !876
  %25 = icmp eq ptr %24, null, !dbg !880
  br i1 %25, label %33, label %26, !dbg !882

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.58, i64 noundef 3) #40, !dbg !883
  %28 = icmp eq i32 %27, 0, !dbg !883
  br i1 %28, label %33, label %29, !dbg !884

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #39, !dbg !885
  %31 = load ptr, ptr @stdout, align 8, !dbg !885, !tbaa !842
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !885
  br label %33, !dbg !887

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !871, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !875, metadata !DIExpression()), !dbg !876
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #39, !dbg !888
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #39, !dbg !888
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #39, !dbg !889
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.62) #39, !dbg !889
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !890
  unreachable, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !891 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !896 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !902 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !905 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !130 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !303, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %0, metadata !304, metadata !DIExpression()), !dbg !909
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !910, !tbaa !911
  %3 = icmp eq i32 %2, -1, !dbg !913
  br i1 %3, label %4, label %16, !dbg !914

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #39, !dbg !915
  call void @llvm.dbg.value(metadata ptr %5, metadata !305, metadata !DIExpression()), !dbg !916
  %6 = icmp eq ptr %5, null, !dbg !917
  br i1 %6, label %14, label %7, !dbg !918

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !919, !tbaa !920
  %9 = icmp eq i8 %8, 0, !dbg !919
  br i1 %9, label %14, label %10, !dbg !921

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !928, metadata !DIExpression()), !dbg !929
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #40, !dbg !931
  %12 = icmp eq i32 %11, 0, !dbg !932
  %13 = zext i1 %12 to i32, !dbg !921
  br label %14, !dbg !921

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !933, !tbaa !911
  br label %16, !dbg !934

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !935
  %18 = icmp eq i32 %17, 0, !dbg !935
  br i1 %18, label %22, label %19, !dbg !937

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !938, !tbaa !842
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !938
  br label %128, !dbg !940

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !308, metadata !DIExpression()), !dbg !909
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #40, !dbg !941
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !942
  call void @llvm.dbg.value(metadata ptr %24, metadata !310, metadata !DIExpression()), !dbg !909
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !943
  call void @llvm.dbg.value(metadata ptr %25, metadata !311, metadata !DIExpression()), !dbg !909
  %26 = icmp eq ptr %25, null, !dbg !944
  br i1 %26, label %58, label %27, !dbg !945

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !946
  br i1 %28, label %58, label %29, !dbg !947

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !312, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 0, metadata !316, metadata !DIExpression()), !dbg !948
  %30 = icmp ult ptr %24, %25, !dbg !949
  br i1 %30, label %31, label %52, !dbg !950

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !909
  %33 = load ptr, ptr %32, align 8, !tbaa !842
  br label %34, !dbg !950

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !312, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %36, metadata !316, metadata !DIExpression()), !dbg !948
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !951
  call void @llvm.dbg.value(metadata ptr %37, metadata !312, metadata !DIExpression()), !dbg !948
  %38 = load i8, ptr %35, align 1, !dbg !951, !tbaa !920
  %39 = sext i8 %38 to i64, !dbg !951
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !951
  %41 = load i16, ptr %40, align 2, !dbg !951, !tbaa !952
  %42 = freeze i16 %41, !dbg !954
  %43 = lshr i16 %42, 13, !dbg !954
  %44 = and i16 %43, 1, !dbg !954
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !955
  call void @llvm.dbg.value(metadata i64 %46, metadata !316, metadata !DIExpression()), !dbg !948
  %47 = icmp ult ptr %37, %25, !dbg !949
  %48 = icmp ult i64 %46, 2, !dbg !956
  %49 = select i1 %47, i1 %48, i1 false, !dbg !956
  br i1 %49, label %34, label %50, !dbg !950, !llvm.loop !957

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !959
  br i1 %51, label %52, label %54, !dbg !961

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !961

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !961
  call void @llvm.dbg.value(metadata i8 %57, metadata !308, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %56, metadata !311, metadata !DIExpression()), !dbg !909
  br label %58, !dbg !962

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !909
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !909
  call void @llvm.dbg.value(metadata i8 %60, metadata !308, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %59, metadata !311, metadata !DIExpression()), !dbg !909
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.30) #40, !dbg !963
  call void @llvm.dbg.value(metadata i64 %61, metadata !317, metadata !DIExpression()), !dbg !909
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !964
  call void @llvm.dbg.value(metadata ptr %62, metadata !318, metadata !DIExpression()), !dbg !909
  br label %63, !dbg !965

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !909
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !909
  call void @llvm.dbg.value(metadata i8 %65, metadata !308, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr %64, metadata !318, metadata !DIExpression()), !dbg !909
  %66 = load i8, ptr %64, align 1, !dbg !966, !tbaa !920
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !967

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !968
  %69 = load i8, ptr %68, align 1, !dbg !971, !tbaa !920
  %70 = icmp eq i8 %69, 45, !dbg !972
  %71 = select i1 %70, i8 0, i8 %65, !dbg !973
  br label %72, !dbg !973

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !909
  call void @llvm.dbg.value(metadata i8 %73, metadata !308, metadata !DIExpression()), !dbg !909
  %74 = tail call ptr @__ctype_b_loc() #42, !dbg !974
  %75 = load ptr, ptr %74, align 8, !dbg !974, !tbaa !842
  %76 = sext i8 %66 to i64, !dbg !974
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !974
  %78 = load i16, ptr %77, align 2, !dbg !974, !tbaa !952
  %79 = and i16 %78, 8192, !dbg !974
  %80 = icmp eq i16 %79, 0, !dbg !974
  br i1 %80, label %96, label %81, !dbg !976

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !977
  br i1 %82, label %98, label %83, !dbg !980

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !981
  %85 = load i8, ptr %84, align 1, !dbg !981, !tbaa !920
  %86 = sext i8 %85 to i64, !dbg !981
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !981
  %88 = load i16, ptr %87, align 2, !dbg !981, !tbaa !952
  %89 = and i16 %88, 8192, !dbg !981
  %90 = icmp eq i16 %89, 0, !dbg !981
  br i1 %90, label %91, label %98, !dbg !982

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !983
  %93 = icmp ne i8 %92, 0, !dbg !983
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !985
  br i1 %95, label %96, label %98, !dbg !985

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !986
  call void @llvm.dbg.value(metadata ptr %97, metadata !318, metadata !DIExpression()), !dbg !909
  br label %63, !dbg !965, !llvm.loop !987

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !989
  %100 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !842
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !989
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !922, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !376, metadata !DIExpression()), !dbg !909
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #40, !dbg !1010
  %103 = icmp eq i32 %102, 0, !dbg !1010
  br i1 %103, label %107, label %104, !dbg !1012

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #40, !dbg !1013
  %106 = icmp eq i32 %105, 0, !dbg !1013
  br i1 %106, label %107, label %110, !dbg !1014

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1015
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #39, !dbg !1015
  br label %113, !dbg !1017

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1018
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #39, !dbg !1018
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1020, !tbaa !842
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %114), !dbg !1020
  %116 = load ptr, ptr @stdout, align 8, !dbg !1021, !tbaa !842
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %116), !dbg !1021
  %118 = ptrtoint ptr %64 to i64, !dbg !1022
  %119 = sub i64 %118, %99, !dbg !1022
  %120 = load ptr, ptr @stdout, align 8, !dbg !1022, !tbaa !842
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1022
  %122 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !842
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %122), !dbg !1023
  %124 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !842
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %124), !dbg !1024
  %126 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !842
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1025
  br label %128, !dbg !1026

128:                                              ; preds = %113, %19
  ret void, !dbg !1026
}

; Function Attrs: nounwind
declare !dbg !1027 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1031 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1035 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1037 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1040 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1043 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1046 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1049 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1055 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1056 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1067, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %1, metadata !1068, metadata !DIExpression()), !dbg !1107
  %3 = load ptr, ptr %1, align 8, !dbg !1108, !tbaa !842
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1109
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1110
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1111
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1112
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.11) #39, !dbg !1113
  %8 = icmp eq ptr %7, null, !dbg !1113
  %9 = select i1 %8, i32 125, i32 127, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %9, metadata !1069, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %9, metadata !1114, metadata !DIExpression()), !dbg !1117
  store volatile i32 %9, ptr @exit_failure, align 4, !dbg !1119, !tbaa !911
  %10 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1121
  %11 = load ptr, ptr @Version, align 8, !dbg !1122, !tbaa !842
  %12 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1123
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %11, i1 noundef zeroext false, ptr noundef nonnull @usage, ptr noundef %12, ptr noundef null) #39, !dbg !1124
  %13 = load i32, ptr @optind, align 4, !dbg !1125, !tbaa !911
  %14 = icmp slt i32 %13, %0, !dbg !1127
  br i1 %14, label %17, label %15, !dbg !1128

15:                                               ; preds = %2
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !1129
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #39, !dbg !1129
  tail call void @usage(i32 noundef %9) #43, !dbg !1131
  unreachable, !dbg !1131

17:                                               ; preds = %2
  %18 = tail call i32 @isatty(i32 noundef 0) #39, !dbg !1132
  %19 = icmp eq i32 %18, 0, !dbg !1132
  call void @llvm.dbg.value(metadata i1 %19, metadata !1070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1107
  %20 = tail call i32 @isatty(i32 noundef 1) #39, !dbg !1133
  %21 = icmp eq i32 %20, 0, !dbg !1133
  call void @llvm.dbg.value(metadata i1 %21, metadata !1071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1107
  br i1 %21, label %22, label %26, !dbg !1134

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #42, !dbg !1135
  %24 = load i32, ptr %23, align 4, !dbg !1135, !tbaa !911
  %25 = icmp eq i32 %24, 9, !dbg !1136
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ], !dbg !1107
  call void @llvm.dbg.value(metadata i1 %27, metadata !1072, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1107
  %28 = tail call i32 @isatty(i32 noundef 2) #39, !dbg !1137
  %29 = icmp eq i32 %28, 0, !dbg !1137
  call void @llvm.dbg.value(metadata i1 %29, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1107
  br i1 %19, label %41, label %30, !dbg !1138

30:                                               ; preds = %26
  %31 = tail call i32 @fd_reopen(i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 0) #39, !dbg !1139
  %32 = icmp slt i32 %31, 0, !dbg !1140
  br i1 %32, label %33, label %37, !dbg !1141

33:                                               ; preds = %30
  %34 = tail call ptr @__errno_location() #42, !dbg !1142
  %35 = load i32, ptr %34, align 4, !dbg !1142, !tbaa !911
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !1142
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %35, ptr noundef %36) #39, !dbg !1142
  unreachable, !dbg !1142

37:                                               ; preds = %30
  %38 = select i1 %21, i1 %29, i1 false, !dbg !1143
  br i1 %38, label %39, label %41, !dbg !1143

39:                                               ; preds = %37
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !1145
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %40) #39, !dbg !1145
  br label %41, !dbg !1145

41:                                               ; preds = %37, %39, %26
  call void @llvm.dbg.value(metadata i32 1, metadata !1080, metadata !DIExpression()), !dbg !1107
  %42 = xor i1 %27, true
  %43 = select i1 %29, i1 true, i1 %42
  %44 = select i1 %21, i1 %43, i1 false, !dbg !1146
  br i1 %44, label %87, label %45, !dbg !1146

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr null, metadata !1081, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1084, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 1089, metadata !1085, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 384, metadata !1086, metadata !DIExpression()), !dbg !1147
  %46 = tail call i32 @umask(i32 noundef 0) #39, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %46, metadata !1090, metadata !DIExpression()), !dbg !1147
  br i1 %21, label %49, label %47, !dbg !1149

47:                                               ; preds = %45
  %48 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #39, !dbg !1150
  br label %51, !dbg !1149

49:                                               ; preds = %45
  %50 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.18, i32 noundef 1089, i32 noundef 384) #39, !dbg !1151
  br label %51, !dbg !1149

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ], !dbg !1149
  call void @llvm.dbg.value(metadata i32 %52, metadata !1080, metadata !DIExpression()), !dbg !1107
  %53 = icmp slt i32 %52, 0, !dbg !1152
  br i1 %53, label %54, label %79, !dbg !1153

54:                                               ; preds = %51
  %55 = tail call ptr @__errno_location() #42, !dbg !1154
  %56 = load i32, ptr %55, align 4, !dbg !1154, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %56, metadata !1091, metadata !DIExpression()), !dbg !1155
  %57 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #39, !dbg !1156
  call void @llvm.dbg.value(metadata ptr %57, metadata !1094, metadata !DIExpression()), !dbg !1155
  %58 = icmp eq ptr %57, null, !dbg !1157
  br i1 %58, label %70, label %59, !dbg !1159

59:                                               ; preds = %54
  %60 = tail call noalias nonnull ptr @file_name_concat(ptr noundef nonnull %57, ptr noundef nonnull @.str.18, ptr noundef null) #39, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %60, metadata !1081, metadata !DIExpression()), !dbg !1147
  br i1 %21, label %63, label %61, !dbg !1162

61:                                               ; preds = %59
  %62 = tail call i32 @fd_reopen(i32 noundef 1, ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #39, !dbg !1163
  br label %65, !dbg !1162

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %60, i32 noundef 1089, i32 noundef 384) #39, !dbg !1164
  br label %65, !dbg !1162

65:                                               ; preds = %61, %63
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ], !dbg !1147
  call void @llvm.dbg.value(metadata i32 %66, metadata !1080, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %60, metadata !1081, metadata !DIExpression()), !dbg !1147
  %67 = icmp sgt i32 %66, -1, !dbg !1165
  br i1 %67, label %79, label %68, !dbg !1166

68:                                               ; preds = %65
  %69 = load i32, ptr %55, align 4, !dbg !1167, !tbaa !911
  br label %70, !dbg !1166

70:                                               ; preds = %68, %54
  %71 = phi i32 [ %69, %68 ], [ %56, %54 ], !dbg !1167
  %72 = phi ptr [ %60, %68 ], [ null, %54 ]
  call void @llvm.dbg.value(metadata i32 %71, metadata !1095, metadata !DIExpression()), !dbg !1168
  %73 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1169
  %74 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.18) #39, !dbg !1169
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %56, ptr noundef %73, ptr noundef %74) #39, !dbg !1169
  %75 = icmp eq ptr %72, null, !dbg !1170
  br i1 %75, label %127, label %76, !dbg !1172

76:                                               ; preds = %70
  %77 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !1173
  %78 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %72) #39, !dbg !1173
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %71, ptr noundef %77, ptr noundef %78) #39, !dbg !1173
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !1084, metadata !DIExpression()), !dbg !1147
  br label %127

79:                                               ; preds = %65, %51
  %80 = phi ptr [ @.str.18, %51 ], [ %60, %65 ], !dbg !1174
  %81 = phi ptr [ null, %51 ], [ %60, %65 ], !dbg !1147
  %82 = phi i32 [ %52, %51 ], [ %66, %65 ], !dbg !1147
  call void @llvm.dbg.value(metadata i32 %82, metadata !1080, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %81, metadata !1081, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %80, metadata !1084, metadata !DIExpression()), !dbg !1147
  %83 = tail call i32 @umask(i32 noundef %46) #39, !dbg !1175
  %84 = select i1 %19, ptr @.str.22, ptr @.str.21, !dbg !1176
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %84, i32 noundef 5) #39, !dbg !1176
  %86 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %80) #39, !dbg !1176
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #39, !dbg !1176
  tail call void @free(ptr noundef %81) #39, !dbg !1177
  br label %87

87:                                               ; preds = %79, %41
  %88 = phi i32 [ %82, %79 ], [ 1, %41 ], !dbg !1107
  call void @llvm.dbg.value(metadata i32 %88, metadata !1080, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 2, metadata !1098, metadata !DIExpression()), !dbg !1107
  br i1 %29, label %104, label %89, !dbg !1178

89:                                               ; preds = %87
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3) #39, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %90, metadata !1098, metadata !DIExpression()), !dbg !1107
  br i1 %21, label %91, label %94, !dbg !1180

91:                                               ; preds = %89
  %92 = select i1 %19, ptr @.str.24, ptr @.str.23, !dbg !1181
  %93 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %92, i32 noundef 5) #39, !dbg !1181
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %93) #39, !dbg !1181
  br label %94, !dbg !1181

94:                                               ; preds = %91, %89
  %95 = tail call i32 @dup2(i32 noundef %88, i32 noundef 2) #39, !dbg !1183
  %96 = icmp slt i32 %95, 0, !dbg !1184
  br i1 %96, label %97, label %101, !dbg !1185

97:                                               ; preds = %94
  %98 = tail call ptr @__errno_location() #42, !dbg !1186
  %99 = load i32, ptr %98, align 4, !dbg !1186, !tbaa !911
  %100 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !1186
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %9, i32 noundef %99, ptr noundef %100) #39, !dbg !1186
  unreachable, !dbg !1186

101:                                              ; preds = %94
  br i1 %27, label %102, label %104, !dbg !1187

102:                                              ; preds = %101
  %103 = tail call i32 @close(i32 noundef %88) #39, !dbg !1188
  br label %104, !dbg !1188

104:                                              ; preds = %101, %102, %87
  %105 = phi i32 [ %90, %102 ], [ %90, %101 ], [ 2, %87 ], !dbg !1107
  call void @llvm.dbg.value(metadata i32 %105, metadata !1098, metadata !DIExpression()), !dbg !1107
  %106 = load ptr, ptr @stderr, align 8, !dbg !1190, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %106, metadata !1192, metadata !DIExpression()), !dbg !1198
  %107 = load i32, ptr %106, align 8, !dbg !1200, !tbaa !1201
  %108 = and i32 %107, 32, !dbg !1190
  %109 = icmp eq i32 %108, 0, !dbg !1190
  br i1 %109, label %110, label %127, !dbg !1204

110:                                              ; preds = %104
  %111 = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #39, !dbg !1205
  %112 = load i32, ptr @optind, align 4, !dbg !1206, !tbaa !911
  %113 = sext i32 %112 to i64, !dbg !1207
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %114, metadata !1104, metadata !DIExpression()), !dbg !1107
  %115 = load ptr, ptr %114, align 8, !dbg !1208, !tbaa !842
  %116 = tail call i32 @execvp(ptr noundef %115, ptr noundef nonnull %114) #39, !dbg !1209
  %117 = tail call ptr @__errno_location() #42, !dbg !1210
  %118 = load i32, ptr %117, align 4, !dbg !1210, !tbaa !911
  %119 = icmp eq i32 %118, 2, !dbg !1211
  %120 = select i1 %119, i32 127, i32 126, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %120, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %118, metadata !1106, metadata !DIExpression()), !dbg !1107
  %121 = tail call i32 @dup2(i32 noundef %105, i32 noundef 2) #39, !dbg !1212
  %122 = icmp eq i32 %121, 2, !dbg !1214
  br i1 %122, label %123, label %127, !dbg !1215

123:                                              ; preds = %110
  %124 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !1216
  %125 = load ptr, ptr %114, align 8, !dbg !1216, !tbaa !842
  %126 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %125) #39, !dbg !1216
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %118, ptr noundef %124, ptr noundef %126) #39, !dbg !1216
  br label %127, !dbg !1216

127:                                              ; preds = %70, %76, %104, %123, %110
  %128 = phi i32 [ %9, %104 ], [ %120, %123 ], [ %120, %110 ], [ %9, %76 ], [ %9, %70 ], !dbg !1107
  ret i32 %128, !dbg !1217
}

; Function Attrs: nounwind
declare !dbg !1218 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1221 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1222 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1225 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1229 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1233 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1237 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1241 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1244 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1245 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1246 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1249 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1254 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1256, metadata !DIExpression()), !dbg !1257
  store ptr %0, ptr @file_name, align 8, !dbg !1258, !tbaa !842
  ret void, !dbg !1259
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1260 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1264, metadata !DIExpression()), !dbg !1265
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1266, !tbaa !1267
  ret void, !dbg !1269
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1270 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !842
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1276
  %3 = icmp eq i32 %2, 0, !dbg !1277
  br i1 %3, label %22, label %4, !dbg !1278

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1279, !tbaa !1267, !range !1280, !noundef !895
  %6 = icmp eq i8 %5, 0, !dbg !1279
  br i1 %6, label %11, label %7, !dbg !1281

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1282
  %9 = load i32, ptr %8, align 4, !dbg !1282, !tbaa !911
  %10 = icmp eq i32 %9, 32, !dbg !1283
  br i1 %10, label %22, label %11, !dbg !1284

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1.35, i32 noundef 5) #39, !dbg !1285
  call void @llvm.dbg.value(metadata ptr %12, metadata !1272, metadata !DIExpression()), !dbg !1286
  %13 = load ptr, ptr @file_name, align 8, !dbg !1287, !tbaa !842
  %14 = icmp eq ptr %13, null, !dbg !1287
  %15 = tail call ptr @__errno_location() #42, !dbg !1289
  %16 = load i32, ptr %15, align 4, !dbg !1289, !tbaa !911
  br i1 %14, label %19, label %17, !dbg !1290

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1291
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.36, ptr noundef %18, ptr noundef %12) #39, !dbg !1291
  br label %20, !dbg !1291

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.37, ptr noundef %12) #39, !dbg !1292
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1293, !tbaa !911
  tail call void @_exit(i32 noundef %21) #41, !dbg !1294
  unreachable, !dbg !1294

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !842
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1297
  %25 = icmp eq i32 %24, 0, !dbg !1298
  br i1 %25, label %28, label %26, !dbg !1299

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1300, !tbaa !911
  tail call void @_exit(i32 noundef %27) #41, !dbg !1301
  unreachable, !dbg !1301

28:                                               ; preds = %22
  ret void, !dbg !1302
}

; Function Attrs: noreturn
declare !dbg !1303 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i32 %1, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %2, metadata !1310, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %3, metadata !1311, metadata !DIExpression()), !dbg !1312
  tail call fastcc void @flush_stdout(), !dbg !1313
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1314, !tbaa !842
  %6 = icmp eq ptr %5, null, !dbg !1314
  br i1 %6, label %8, label %7, !dbg !1316

7:                                                ; preds = %4
  tail call void %5() #39, !dbg !1317
  br label %12, !dbg !1317

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1318, !tbaa !842
  %10 = tail call ptr @getprogname() #40, !dbg !1318
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef %10) #39, !dbg !1318
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1320
  ret void, !dbg !1321
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1322 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 1, metadata !1326, metadata !DIExpression()), !dbg !1329
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1332
  %2 = icmp slt i32 %1, 0, !dbg !1333
  br i1 %2, label %6, label %3, !dbg !1334

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1335, !tbaa !842
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1335
  br label %6, !dbg !1335

6:                                                ; preds = %3, %0
  ret void, !dbg !1336
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1337 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1339, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i32 %1, metadata !1340, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %2, metadata !1341, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %3, metadata !1342, metadata !DIExpression()), !dbg !1343
  %6 = load ptr, ptr @stderr, align 8, !dbg !1344, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %6, metadata !1345, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %2, metadata !1385, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %3, metadata !1386, metadata !DIExpression()), !dbg !1387
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #39, !dbg !1389
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1390, !tbaa !911
  %9 = add i32 %8, 1, !dbg !1390
  store i32 %9, ptr @error_message_count, align 4, !dbg !1390, !tbaa !911
  %10 = icmp eq i32 %1, 0, !dbg !1391
  br i1 %10, label %20, label %11, !dbg !1393

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1394, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1398, metadata !DIExpression()), !dbg !1405
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %12, metadata !1397, metadata !DIExpression()), !dbg !1402
  %13 = icmp eq ptr %12, null, !dbg !1407
  br i1 %13, label %14, label %16, !dbg !1409

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.39, ptr noundef nonnull @.str.5.40, i32 noundef 5) #39, !dbg !1410
  call void @llvm.dbg.value(metadata ptr %15, metadata !1397, metadata !DIExpression()), !dbg !1402
  br label %16, !dbg !1411

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1402
  call void @llvm.dbg.value(metadata ptr %17, metadata !1397, metadata !DIExpression()), !dbg !1402
  %18 = load ptr, ptr @stderr, align 8, !dbg !1412, !tbaa !842
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.41, ptr noundef %17) #39, !dbg !1412
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1413
  br label %20, !dbg !1414

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1415, !tbaa !842
  call void @llvm.dbg.value(metadata i32 10, metadata !1416, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata ptr %21, metadata !1421, metadata !DIExpression()), !dbg !1422
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1424
  %23 = load ptr, ptr %22, align 8, !dbg !1424, !tbaa !1425
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1424
  %25 = load ptr, ptr %24, align 8, !dbg !1424, !tbaa !1426
  %26 = icmp ult ptr %23, %25, !dbg !1424
  br i1 %26, label %29, label %27, !dbg !1424, !prof !1427

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #39, !dbg !1424
  br label %31, !dbg !1424

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1424
  store ptr %30, ptr %22, align 8, !dbg !1424, !tbaa !1425
  store i8 10, ptr %23, align 1, !dbg !1424, !tbaa !920
  br label %31, !dbg !1424

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1428, !tbaa !842
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #39, !dbg !1428
  %34 = icmp eq i32 %0, 0, !dbg !1429
  br i1 %34, label %36, label %35, !dbg !1431

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #41, !dbg !1432
  unreachable, !dbg !1432

36:                                               ; preds = %31
  ret void, !dbg !1433
}

declare !dbg !1434 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1437 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #16

declare !dbg !1440 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1443 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1446 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1449 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1453, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %1, metadata !1454, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %2, metadata !1455, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1456, metadata !DIExpression()), !dbg !1464
  call void @llvm.va_start(ptr nonnull %4), !dbg !1465
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1466
  call void @llvm.va_end(ptr nonnull %4), !dbg !1467
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39, !dbg !1468
  ret void, !dbg !1468
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !413 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !425, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %1, metadata !426, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr %2, metadata !427, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %3, metadata !428, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr %4, metadata !429, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr %5, metadata !430, metadata !DIExpression()), !dbg !1469
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1470, !tbaa !911
  %8 = icmp eq i32 %7, 0, !dbg !1470
  br i1 %8, label %23, label %9, !dbg !1472

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1473, !tbaa !911
  %11 = icmp eq i32 %10, %3, !dbg !1476
  br i1 %11, label %12, label %22, !dbg !1477

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1478, !tbaa !842
  %14 = icmp eq ptr %13, %2, !dbg !1479
  br i1 %14, label %36, label %15, !dbg !1480

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1481
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1482
  br i1 %18, label %19, label %22, !dbg !1482

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1483
  %21 = icmp eq i32 %20, 0, !dbg !1484
  br i1 %21, label %36, label %22, !dbg !1485

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1486, !tbaa !842
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1487, !tbaa !911
  br label %23, !dbg !1488

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1489
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1490, !tbaa !842
  %25 = icmp eq ptr %24, null, !dbg !1490
  br i1 %25, label %27, label %26, !dbg !1492

26:                                               ; preds = %23
  tail call void %24() #39, !dbg !1493
  br label %31, !dbg !1493

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1494, !tbaa !842
  %29 = tail call ptr @getprogname() #40, !dbg !1494
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.44, ptr noundef %29) #39, !dbg !1494
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1496, !tbaa !842
  %33 = icmp eq ptr %2, null, !dbg !1496
  %34 = select i1 %33, ptr @.str.3.45, ptr @.str.2.46, !dbg !1496
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #39, !dbg !1496
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1497
  br label %36, !dbg !1498

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1498
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1499 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1503, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %1, metadata !1504, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata ptr %2, metadata !1505, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %3, metadata !1506, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata ptr %4, metadata !1507, metadata !DIExpression()), !dbg !1509
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #39, !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.va_start(ptr nonnull %6), !dbg !1512
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1513
  call void @llvm.va_end(ptr nonnull %6), !dbg !1514
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #39, !dbg !1515
  ret void, !dbg !1515
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1516 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1518, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %1, metadata !1519, metadata !DIExpression()), !dbg !1543
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #39, !dbg !1544
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1520, metadata !DIExpression()), !dbg !1545
  call void @llvm.va_start(ptr nonnull %3), !dbg !1546
  call void @llvm.dbg.value(metadata i32 -1, metadata !1531, metadata !DIExpression()), !dbg !1543
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
  ], !dbg !1547

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !1548
  %6 = icmp ult i32 %5, 41, !dbg !1548
  br i1 %6, label %7, label %13, !dbg !1548

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1548
  %9 = load ptr, ptr %8, align 16, !dbg !1548
  %10 = zext i32 %5 to i64, !dbg !1548
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !1548
  %12 = add nuw nsw i32 %5, 8, !dbg !1548
  store i32 %12, ptr %3, align 16, !dbg !1548
  br label %17, !dbg !1548

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1548
  %15 = load ptr, ptr %14, align 8, !dbg !1548
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !1548
  store ptr %16, ptr %14, align 8, !dbg !1548
  br label %17, !dbg !1548

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !1548
  %19 = load i32, ptr %18, align 4, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %19, metadata !1532, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %0, metadata !1550, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %19, metadata !1553, metadata !DIExpression()), !dbg !1555
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #39, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %20, metadata !1554, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %20, metadata !1531, metadata !DIExpression()), !dbg !1543
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !1558
  %23 = icmp ult i32 %22, 41, !dbg !1558
  br i1 %23, label %24, label %30, !dbg !1558

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1558
  %26 = load ptr, ptr %25, align 16, !dbg !1558
  %27 = zext i32 %22 to i64, !dbg !1558
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !1558
  %29 = add nuw nsw i32 %22, 8, !dbg !1558
  store i32 %29, ptr %3, align 16, !dbg !1558
  br label %34, !dbg !1558

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1558
  %32 = load ptr, ptr %31, align 8, !dbg !1558
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !1558
  store ptr %33, ptr %31, align 8, !dbg !1558
  br label %34, !dbg !1558

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !1558
  %36 = load i32, ptr %35, align 4, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %36, metadata !1535, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %0, metadata !464, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 %36, metadata !465, metadata !DIExpression()), !dbg !1560
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1562, !tbaa !911
  %38 = icmp sgt i32 %37, -1, !dbg !1564
  br i1 %38, label %39, label %51, !dbg !1565

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #39, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %40, metadata !466, metadata !DIExpression()), !dbg !1560
  %41 = icmp sgt i32 %40, -1, !dbg !1568
  br i1 %41, label %46, label %42, !dbg !1570

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #42, !dbg !1571
  %44 = load i32, ptr %43, align 4, !dbg !1571, !tbaa !911
  %45 = icmp eq i32 %44, 22, !dbg !1572
  br i1 %45, label %47, label %46, !dbg !1573

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1574, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %40, metadata !466, metadata !DIExpression()), !dbg !1560
  br label %107, !dbg !1576

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1550, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %36, metadata !1553, metadata !DIExpression()), !dbg !1577
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %48, metadata !1554, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %48, metadata !466, metadata !DIExpression()), !dbg !1560
  %49 = icmp sgt i32 %48, -1, !dbg !1581
  br i1 %49, label %50, label %107, !dbg !1583

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1584, !tbaa !911
  br label %55, !dbg !1585

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !1550, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %36, metadata !1553, metadata !DIExpression()), !dbg !1586
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #39, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %52, metadata !1554, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %52, metadata !466, metadata !DIExpression()), !dbg !1560
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !1589
  call void @llvm.dbg.value(metadata i32 %57, metadata !466, metadata !DIExpression()), !dbg !1560
  %58 = icmp sgt i32 %57, -1, !dbg !1590
  %59 = select i1 %58, i1 %56, i1 false, !dbg !1576
  br i1 %59, label %60, label %107, !dbg !1576

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #39, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %61, metadata !467, metadata !DIExpression()), !dbg !1592
  %62 = icmp slt i32 %61, 0, !dbg !1593
  br i1 %62, label %67, label %63, !dbg !1594

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !1595
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #39, !dbg !1596
  %66 = icmp eq i32 %65, -1, !dbg !1597
  br i1 %66, label %67, label %107, !dbg !1598

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #42, !dbg !1599
  %69 = load i32, ptr %68, align 4, !dbg !1599, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %69, metadata !470, metadata !DIExpression()), !dbg !1600
  %70 = call i32 @close(i32 noundef %57) #39, !dbg !1601
  store i32 %69, ptr %68, align 4, !dbg !1602, !tbaa !911
  call void @llvm.dbg.value(metadata i32 -1, metadata !466, metadata !DIExpression()), !dbg !1560
  br label %107, !dbg !1603

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %72, metadata !1531, metadata !DIExpression()), !dbg !1543
  br label %107, !dbg !1605

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !1606
  %75 = icmp ult i32 %74, 41, !dbg !1606
  br i1 %75, label %76, label %82, !dbg !1606

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1606
  %78 = load ptr, ptr %77, align 16, !dbg !1606
  %79 = zext i32 %74 to i64, !dbg !1606
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !1606
  %81 = add nuw nsw i32 %74, 8, !dbg !1606
  store i32 %81, ptr %3, align 16, !dbg !1606
  br label %86, !dbg !1606

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1606
  %84 = load ptr, ptr %83, align 8, !dbg !1606
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !1606
  store ptr %85, ptr %83, align 8, !dbg !1606
  br label %86, !dbg !1606

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !1606
  %88 = load i32, ptr %87, align 4, !dbg !1606
  call void @llvm.dbg.value(metadata i32 %88, metadata !1537, metadata !DIExpression()), !dbg !1607
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #39, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %89, metadata !1531, metadata !DIExpression()), !dbg !1543
  br label %107, !dbg !1609

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !1610
  %92 = icmp ult i32 %91, 41, !dbg !1610
  br i1 %92, label %93, label %99, !dbg !1610

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1610
  %95 = load ptr, ptr %94, align 16, !dbg !1610
  %96 = zext i32 %91 to i64, !dbg !1610
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !1610
  %98 = add nuw nsw i32 %91, 8, !dbg !1610
  store i32 %98, ptr %3, align 16, !dbg !1610
  br label %103, !dbg !1610

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1610
  %101 = load ptr, ptr %100, align 8, !dbg !1610
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !1610
  store ptr %102, ptr %100, align 8, !dbg !1610
  br label %103, !dbg !1610

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !1610
  %105 = load ptr, ptr %104, align 8, !dbg !1610
  call void @llvm.dbg.value(metadata ptr %105, metadata !1541, metadata !DIExpression()), !dbg !1611
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #39, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %106, metadata !1531, metadata !DIExpression()), !dbg !1543
  br label %107, !dbg !1613

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !1614
  call void @llvm.dbg.value(metadata i32 %108, metadata !1531, metadata !DIExpression()), !dbg !1543
  call void @llvm.va_end(ptr nonnull %3), !dbg !1615
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #39, !dbg !1616
  ret i32 %108, !dbg !1617
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, ptr nocapture noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !1618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1622, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata ptr %1, metadata !1623, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32 %2, metadata !1624, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32 %3, metadata !1625, metadata !DIExpression()), !dbg !1631
  %5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #39, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %5, metadata !1626, metadata !DIExpression()), !dbg !1631
  %6 = icmp eq i32 %5, %0, !dbg !1633
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7, !dbg !1634
  br i1 %8, label %14, label %9, !dbg !1634

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 noundef %5, i32 noundef %0) #39, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %10, metadata !1627, metadata !DIExpression()), !dbg !1636
  %11 = tail call ptr @__errno_location() #42, !dbg !1637
  %12 = load i32, ptr %11, align 4, !dbg !1637, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %12, metadata !1630, metadata !DIExpression()), !dbg !1636
  %13 = tail call i32 @close(i32 noundef %5) #39, !dbg !1638
  store i32 %12, ptr %11, align 4, !dbg !1639, !tbaa !911
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1640
  ret i32 %15, !dbg !1641
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @file_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1642 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1646, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata ptr %1, metadata !1647, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata ptr %2, metadata !1648, metadata !DIExpression()), !dbg !1650
  %4 = tail call noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #39, !dbg !1651
  call void @llvm.dbg.value(metadata ptr %4, metadata !1649, metadata !DIExpression()), !dbg !1650
  %5 = icmp eq ptr %4, null, !dbg !1652
  br i1 %5, label %6, label %7, !dbg !1654

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !1655
  unreachable, !dbg !1655

7:                                                ; preds = %3
  ret ptr %4, !dbg !1656
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @mfile_name_concat(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #18 !dbg !1657 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1659, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %1, metadata !1660, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %2, metadata !1661, metadata !DIExpression()), !dbg !1670
  %4 = tail call ptr @last_component(ptr noundef %0) #40, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %4, metadata !1662, metadata !DIExpression()), !dbg !1670
  %5 = tail call i64 @base_len(ptr noundef %4) #40, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %5, metadata !1663, metadata !DIExpression()), !dbg !1670
  %6 = ptrtoint ptr %4 to i64, !dbg !1673
  %7 = ptrtoint ptr %0 to i64, !dbg !1673
  %8 = sub i64 %6, %7, !dbg !1673
  %9 = add i64 %8, %5, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %9, metadata !1664, metadata !DIExpression()), !dbg !1670
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %10, metadata !1665, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1670
  %11 = icmp eq i64 %5, 0, !dbg !1676
  br i1 %11, label %21, label %12, !dbg !1678

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1679
  %14 = getelementptr inbounds i8, ptr %0, i64 %13, !dbg !1679
  %15 = load i8, ptr %14, align 1, !dbg !1679, !tbaa !920
  %16 = icmp eq i8 %15, 47, !dbg !1679
  br i1 %16, label %25, label %17, !dbg !1682

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1, !dbg !1683, !tbaa !920
  %19 = icmp ne i8 %18, 47, !dbg !1683
  %20 = select i1 %19, i8 47, i8 0, !dbg !1684
  br label %25, !dbg !1684

21:                                               ; preds = %3
  %22 = load i8, ptr %1, align 1, !dbg !1685, !tbaa !920
  %23 = icmp eq i8 %22, 47, !dbg !1685
  %24 = select i1 %23, i8 46, i8 0, !dbg !1687
  br label %25, !dbg !1687

25:                                               ; preds = %21, %17, %12
  %26 = phi i1 [ false, %12 ], [ %19, %17 ], [ %23, %21 ]
  %27 = phi i8 [ 0, %12 ], [ %20, %17 ], [ %24, %21 ], !dbg !1670
  %28 = zext i1 %26 to i64
  call void @llvm.dbg.value(metadata i8 %27, metadata !1666, metadata !DIExpression()), !dbg !1670
  %29 = add i64 %10, 1, !dbg !1688
  %30 = add i64 %29, %9, !dbg !1689
  %31 = add i64 %30, %28, !dbg !1690
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #45, !dbg !1691
  call void @llvm.dbg.value(metadata ptr %32, metadata !1667, metadata !DIExpression()), !dbg !1670
  %33 = icmp eq ptr %32, null, !dbg !1692
  br i1 %33, label %41, label %34, !dbg !1694

34:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %32, metadata !1695, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr %0, metadata !1702, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %9, metadata !1703, metadata !DIExpression()), !dbg !1704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %32, ptr noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #39, !dbg !1706
  %35 = getelementptr inbounds i8, ptr %32, i64 %9, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %35, metadata !1668, metadata !DIExpression()), !dbg !1707
  store i8 %27, ptr %35, align 1, !dbg !1708, !tbaa !920
  %36 = getelementptr inbounds i8, ptr %35, i64 %28, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %36, metadata !1668, metadata !DIExpression()), !dbg !1707
  %37 = icmp eq ptr %2, null, !dbg !1710
  br i1 %37, label %39, label %38, !dbg !1712

38:                                               ; preds = %34
  store ptr %36, ptr %2, align 8, !dbg !1713, !tbaa !842
  br label %39, !dbg !1714

39:                                               ; preds = %38, %34
  call void @llvm.dbg.value(metadata ptr %36, metadata !1695, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata ptr %1, metadata !1702, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i64 %10, metadata !1703, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %36, ptr noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #39, !dbg !1717
  %40 = getelementptr inbounds i8, ptr %36, i64 %10, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %40, metadata !1668, metadata !DIExpression()), !dbg !1707
  store i8 0, ptr %40, align 1, !dbg !1718, !tbaa !920
  br label %41, !dbg !1719

41:                                               ; preds = %25, %39
  ret ptr %32, !dbg !1720
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1721 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1724 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !1727 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1730, !tbaa !842
  ret ptr %1, !dbg !1731
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1732 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1736, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %1, metadata !1737, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %3, metadata !1739, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %4, metadata !1740, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %5, metadata !1741, metadata !DIExpression()), !dbg !1762
  %8 = load i32, ptr @opterr, align 4, !dbg !1763, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %8, metadata !1742, metadata !DIExpression()), !dbg !1762
  store i32 0, ptr @opterr, align 4, !dbg !1764, !tbaa !911
  %9 = icmp eq i32 %0, 2, !dbg !1765
  br i1 %9, label %10, label %15, !dbg !1766

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1767
  call void @llvm.dbg.value(metadata i32 %11, metadata !1743, metadata !DIExpression()), !dbg !1768
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1769

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #39, !dbg !1770
  br label %15, !dbg !1771

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #39, !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1746, metadata !DIExpression()), !dbg !1773
  call void @llvm.va_start(ptr nonnull %7), !dbg !1774
  %14 = load ptr, ptr @stdout, align 8, !dbg !1775, !tbaa !842
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #39, !dbg !1776
  call void @exit(i32 noundef 0) #41, !dbg !1777
  unreachable, !dbg !1777

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1778, !tbaa !911
  store i32 0, ptr @optind, align 4, !dbg !1779, !tbaa !911
  ret void, !dbg !1780
}

; Function Attrs: nounwind
declare !dbg !1781 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1785 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1789, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %1, metadata !1790, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %2, metadata !1791, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %3, metadata !1792, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %4, metadata !1793, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i1 %5, metadata !1794, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1804
  call void @llvm.dbg.value(metadata ptr %6, metadata !1795, metadata !DIExpression()), !dbg !1804
  %9 = load i32, ptr @opterr, align 4, !dbg !1805, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %9, metadata !1796, metadata !DIExpression()), !dbg !1804
  store i32 1, ptr @opterr, align 4, !dbg !1806, !tbaa !911
  %10 = select i1 %5, ptr @.str.1.68, ptr @.str.63, !dbg !1807
  call void @llvm.dbg.value(metadata ptr %10, metadata !1797, metadata !DIExpression()), !dbg !1804
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %11, metadata !1798, metadata !DIExpression()), !dbg !1804
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1809

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #39, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1799, metadata !DIExpression()), !dbg !1811
  call void @llvm.va_start(ptr nonnull %8), !dbg !1812
  %13 = load ptr, ptr @stdout, align 8, !dbg !1813, !tbaa !842
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1814
  call void @exit(i32 noundef 0) #41, !dbg !1815
  unreachable, !dbg !1815

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1816, !tbaa !911
  br label %16, !dbg !1817

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #39, !dbg !1818
  br label %18, !dbg !1819

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1819, !tbaa !911
  ret void, !dbg !1820
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1821 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1823, metadata !DIExpression()), !dbg !1826
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %2, metadata !1824, metadata !DIExpression()), !dbg !1826
  %3 = icmp eq ptr %2, null, !dbg !1828
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1828
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %5, metadata !1825, metadata !DIExpression()), !dbg !1826
  %6 = ptrtoint ptr %5 to i64, !dbg !1829
  %7 = ptrtoint ptr %0 to i64, !dbg !1829
  %8 = sub i64 %6, %7, !dbg !1829
  %9 = icmp sgt i64 %8, 6, !dbg !1831
  br i1 %9, label %10, label %19, !dbg !1832

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %11, metadata !1834, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata ptr @.str.73, metadata !1839, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i64 7, metadata !1840, metadata !DIExpression()), !dbg !1841
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.73, i64 7), !dbg !1843
  %13 = icmp eq i32 %12, 0, !dbg !1844
  br i1 %13, label %14, label %19, !dbg !1845

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1823, metadata !DIExpression()), !dbg !1826
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.74, i64 noundef 3) #40, !dbg !1846
  %16 = icmp eq i32 %15, 0, !dbg !1849
  %17 = select i1 %16, i64 3, i64 0, !dbg !1850
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1850
  br label %19, !dbg !1850

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1826
  call void @llvm.dbg.value(metadata ptr %21, metadata !1825, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata ptr %20, metadata !1823, metadata !DIExpression()), !dbg !1826
  store ptr %20, ptr @program_name, align 8, !dbg !1851, !tbaa !842
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1852, !tbaa !842
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1853, !tbaa !842
  ret void, !dbg !1854
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1855 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !508 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !515, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata ptr %1, metadata !516, metadata !DIExpression()), !dbg !1856
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %5, metadata !517, metadata !DIExpression()), !dbg !1856
  %6 = icmp eq ptr %5, %0, !dbg !1858
  br i1 %6, label %7, label %14, !dbg !1860

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1861
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1862
  call void @llvm.dbg.declare(metadata ptr %4, metadata !523, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %4, metadata !1864, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata ptr %4, metadata !1873, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 8, metadata !1879, metadata !DIExpression()), !dbg !1880
  store i64 0, ptr %4, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %3, metadata !518, metadata !DIExpression(DW_OP_deref)), !dbg !1856
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1883
  %9 = icmp eq i64 %8, 2, !dbg !1885
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !518, metadata !DIExpression()), !dbg !1856
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1886
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1856
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1887
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1856
  ret ptr %15, !dbg !1887
}

; Function Attrs: nounwind
declare !dbg !1888 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1899, metadata !DIExpression()), !dbg !1902
  %2 = tail call ptr @__errno_location() #42, !dbg !1903
  %3 = load i32, ptr %2, align 4, !dbg !1903, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %3, metadata !1900, metadata !DIExpression()), !dbg !1902
  %4 = icmp eq ptr %0, null, !dbg !1904
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1904
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %6, metadata !1901, metadata !DIExpression()), !dbg !1902
  store i32 %3, ptr %2, align 4, !dbg !1906, !tbaa !911
  ret ptr %6, !dbg !1907
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !1908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !1915
  %2 = icmp eq ptr %0, null, !dbg !1916
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1916
  %4 = load i32, ptr %3, align 8, !dbg !1917, !tbaa !1918
  ret i32 %4, !dbg !1920
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1921 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i32 %1, metadata !1926, metadata !DIExpression()), !dbg !1927
  %3 = icmp eq ptr %0, null, !dbg !1928
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1928
  store i32 %1, ptr %4, align 8, !dbg !1929, !tbaa !1918
  ret void, !dbg !1930
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !1931 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %1, metadata !1936, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 %2, metadata !1937, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %1, metadata !1938, metadata !DIExpression()), !dbg !1943
  %4 = icmp eq ptr %0, null, !dbg !1944
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1944
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1945
  %7 = lshr i8 %1, 5, !dbg !1946
  %8 = zext i8 %7 to i64, !dbg !1946
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1947
  call void @llvm.dbg.value(metadata ptr %9, metadata !1939, metadata !DIExpression()), !dbg !1943
  %10 = and i8 %1, 31, !dbg !1948
  %11 = zext i8 %10 to i32, !dbg !1948
  call void @llvm.dbg.value(metadata i32 %11, metadata !1941, metadata !DIExpression()), !dbg !1943
  %12 = load i32, ptr %9, align 4, !dbg !1949, !tbaa !911
  %13 = lshr i32 %12, %11, !dbg !1950
  %14 = and i32 %13, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %14, metadata !1942, metadata !DIExpression()), !dbg !1943
  %15 = xor i32 %13, %2, !dbg !1952
  %16 = and i32 %15, 1, !dbg !1952
  %17 = shl nuw i32 %16, %11, !dbg !1953
  %18 = xor i32 %17, %12, !dbg !1954
  store i32 %18, ptr %9, align 4, !dbg !1954, !tbaa !911
  ret i32 %14, !dbg !1955
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !1956 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1960, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %1, metadata !1961, metadata !DIExpression()), !dbg !1963
  %3 = icmp eq ptr %0, null, !dbg !1964
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1966
  call void @llvm.dbg.value(metadata ptr %4, metadata !1960, metadata !DIExpression()), !dbg !1963
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1967
  %6 = load i32, ptr %5, align 4, !dbg !1967, !tbaa !1968
  call void @llvm.dbg.value(metadata i32 %6, metadata !1962, metadata !DIExpression()), !dbg !1963
  store i32 %1, ptr %5, align 4, !dbg !1969, !tbaa !1968
  ret i32 %6, !dbg !1970
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1975, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata ptr %1, metadata !1976, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata ptr %2, metadata !1977, metadata !DIExpression()), !dbg !1978
  %4 = icmp eq ptr %0, null, !dbg !1979
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1981
  call void @llvm.dbg.value(metadata ptr %5, metadata !1975, metadata !DIExpression()), !dbg !1978
  store i32 10, ptr %5, align 8, !dbg !1982, !tbaa !1918
  %6 = icmp ne ptr %1, null, !dbg !1983
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1985
  br i1 %8, label %10, label %9, !dbg !1985

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1986
  unreachable, !dbg !1986

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1987
  store ptr %1, ptr %11, align 8, !dbg !1988, !tbaa !1989
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1990
  store ptr %2, ptr %12, align 8, !dbg !1991, !tbaa !1992
  ret void, !dbg !1993
}

; Function Attrs: noreturn nounwind
declare !dbg !1994 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1995 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1999, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %1, metadata !2000, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %2, metadata !2001, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %3, metadata !2002, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %4, metadata !2003, metadata !DIExpression()), !dbg !2007
  %6 = icmp eq ptr %4, null, !dbg !2008
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2008
  call void @llvm.dbg.value(metadata ptr %7, metadata !2004, metadata !DIExpression()), !dbg !2007
  %8 = tail call ptr @__errno_location() #42, !dbg !2009
  %9 = load i32, ptr %8, align 4, !dbg !2009, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %9, metadata !2005, metadata !DIExpression()), !dbg !2007
  %10 = load i32, ptr %7, align 8, !dbg !2010, !tbaa !1918
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2011
  %12 = load i32, ptr %11, align 4, !dbg !2011, !tbaa !1968
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2012
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2013
  %15 = load ptr, ptr %14, align 8, !dbg !2013, !tbaa !1989
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2014
  %17 = load ptr, ptr %16, align 8, !dbg !2014, !tbaa !1992
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2015
  call void @llvm.dbg.value(metadata i64 %18, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i32 %9, ptr %8, align 4, !dbg !2016, !tbaa !911
  ret i64 %18, !dbg !2017
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2018 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2024, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %1, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %2, metadata !2026, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %3, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %4, metadata !2028, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %5, metadata !2029, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %6, metadata !2030, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %7, metadata !2031, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %8, metadata !2032, metadata !DIExpression()), !dbg !2086
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2087
  %17 = icmp eq i64 %16, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i1 %17, metadata !2033, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr null, metadata !2036, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, metadata !2037, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2086
  %18 = trunc i32 %5 to i8, !dbg !2089
  %19 = lshr i8 %18, 1, !dbg !2089
  %20 = and i8 %19, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i8 %20, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2041, metadata !DIExpression()), !dbg !2086
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2090

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2091
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2092
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2093
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2094
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2086
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2095
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2096
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %39, metadata !2041, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %38, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %37, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %36, metadata !2038, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %35, metadata !2037, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %34, metadata !2036, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %33, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %32, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %31, metadata !2032, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %30, metadata !2031, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %29, metadata !2028, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.label(metadata !2079), !dbg !2097
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2086
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
  ], !dbg !2098

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 5, metadata !2028, metadata !DIExpression()), !dbg !2086
  br label %115, !dbg !2099

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 5, metadata !2028, metadata !DIExpression()), !dbg !2086
  %43 = and i8 %37, 1, !dbg !2100
  %44 = icmp eq i8 %43, 0, !dbg !2100
  br i1 %44, label %45, label %115, !dbg !2099

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2102
  br i1 %46, label %115, label %47, !dbg !2105

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2102, !tbaa !920
  br label %115, !dbg !2102

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.87, metadata !604, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 %29, metadata !605, metadata !DIExpression()), !dbg !2106
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.11.87, i32 noundef 5) #39, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %49, metadata !606, metadata !DIExpression()), !dbg !2106
  %50 = icmp eq ptr %49, @.str.11.87, !dbg !2111
  br i1 %50, label %51, label %60, !dbg !2113

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %13, metadata !608, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %13, metadata !2117, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata ptr %13, metadata !2125, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 8, metadata !2129, metadata !DIExpression()), !dbg !2130
  store i64 0, ptr %13, align 8, !dbg !2132
  call void @llvm.dbg.value(metadata ptr %12, metadata !607, metadata !DIExpression(DW_OP_deref)), !dbg !2106
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2133
  %53 = icmp eq i64 %52, 3, !dbg !2135
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !607, metadata !DIExpression()), !dbg !2106
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2136
  %57 = icmp eq i32 %29, 9, !dbg !2136
  %58 = select i1 %57, ptr @.str.10.89, ptr @.str.12.90, !dbg !2136
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2137
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2106
  call void @llvm.dbg.value(metadata ptr %61, metadata !2031, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr @.str.12.90, metadata !604, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %29, metadata !605, metadata !DIExpression()), !dbg !2138
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.88, ptr noundef nonnull @.str.12.90, i32 noundef 5) #39, !dbg !2140
  call void @llvm.dbg.value(metadata ptr %62, metadata !606, metadata !DIExpression()), !dbg !2138
  %63 = icmp eq ptr %62, @.str.12.90, !dbg !2141
  br i1 %63, label %64, label %73, !dbg !2142

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %11, metadata !608, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata ptr %11, metadata !2117, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr %11, metadata !2125, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 8, metadata !2129, metadata !DIExpression()), !dbg !2148
  store i64 0, ptr %11, align 8, !dbg !2150
  call void @llvm.dbg.value(metadata ptr %10, metadata !607, metadata !DIExpression(DW_OP_deref)), !dbg !2138
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2151
  %66 = icmp eq i64 %65, 3, !dbg !2152
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !607, metadata !DIExpression()), !dbg !2138
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2153
  %70 = icmp eq i32 %29, 9, !dbg !2153
  %71 = select i1 %70, ptr @.str.10.89, ptr @.str.12.90, !dbg !2153
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2154
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2032, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %74, metadata !2031, metadata !DIExpression()), !dbg !2086
  %76 = and i8 %37, 1, !dbg !2155
  %77 = icmp eq i8 %76, 0, !dbg !2155
  br i1 %77, label %78, label %93, !dbg !2156

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2043, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 0, metadata !2034, metadata !DIExpression()), !dbg !2086
  %79 = load i8, ptr %74, align 1, !dbg !2158, !tbaa !920
  %80 = icmp eq i8 %79, 0, !dbg !2160
  br i1 %80, label %93, label %81, !dbg !2160

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2043, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %84, metadata !2034, metadata !DIExpression()), !dbg !2086
  %85 = icmp ult i64 %84, %40, !dbg !2161
  br i1 %85, label %86, label %88, !dbg !2164

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2161
  store i8 %82, ptr %87, align 1, !dbg !2161, !tbaa !920
  br label %88, !dbg !2161

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %89, metadata !2034, metadata !DIExpression()), !dbg !2086
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2165
  call void @llvm.dbg.value(metadata ptr %90, metadata !2043, metadata !DIExpression()), !dbg !2157
  %91 = load i8, ptr %90, align 1, !dbg !2158, !tbaa !920
  %92 = icmp eq i8 %91, 0, !dbg !2160
  br i1 %92, label %93, label %81, !dbg !2160, !llvm.loop !2166

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2168
  call void @llvm.dbg.value(metadata i64 %94, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %75, metadata !2036, metadata !DIExpression()), !dbg !2086
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #40, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %95, metadata !2037, metadata !DIExpression()), !dbg !2086
  br label %115, !dbg !2170

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2086
  br label %97, !dbg !2171

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %98, metadata !2038, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2086
  br label %99, !dbg !2172

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2094
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %101, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %100, metadata !2038, metadata !DIExpression()), !dbg !2086
  %102 = and i8 %101, 1, !dbg !2173
  %103 = icmp eq i8 %102, 0, !dbg !2173
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2175
  br label %105, !dbg !2175

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2086
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2089
  call void @llvm.dbg.value(metadata i8 %107, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %106, metadata !2038, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 2, metadata !2028, metadata !DIExpression()), !dbg !2086
  %108 = and i8 %107, 1, !dbg !2176
  %109 = icmp eq i8 %108, 0, !dbg !2176
  br i1 %109, label %110, label %115, !dbg !2178

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2179
  br i1 %111, label %115, label %112, !dbg !2182

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2179, !tbaa !920
  br label %115, !dbg !2179

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2086
  br label %115, !dbg !2183

114:                                              ; preds = %28
  call void @abort() #41, !dbg !2184
  unreachable, !dbg !2184

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2168
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.89, %45 ], [ @.str.10.89, %47 ], [ @.str.10.89, %42 ], [ %34, %28 ], [ @.str.12.90, %110 ], [ @.str.12.90, %112 ], [ @.str.12.90, %105 ], [ @.str.10.89, %41 ], !dbg !2086
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2086
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2086
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %123, metadata !2039, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %122, metadata !2038, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %121, metadata !2037, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %120, metadata !2036, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %119, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %118, metadata !2032, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr %117, metadata !2031, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 %116, metadata !2028, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2185
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
  br label %138, !dbg !2186

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2168
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2091
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2095
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2096
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2187
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2188
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %145, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %144, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %143, metadata !2041, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %142, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %141, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %140, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %139, metadata !2027, metadata !DIExpression()), !dbg !2086
  %147 = icmp eq i64 %139, -1, !dbg !2189
  br i1 %147, label %148, label %152, !dbg !2190

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2191
  %150 = load i8, ptr %149, align 1, !dbg !2191, !tbaa !920
  %151 = icmp eq i8 %150, 0, !dbg !2192
  br i1 %151, label %627, label %154, !dbg !2193

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2194
  br i1 %153, label %627, label %154, !dbg !2193

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2195
  br i1 %129, label %155, label %170, !dbg !2196

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2198
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2199
  br i1 %157, label %158, label %160, !dbg !2199

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %159, metadata !2027, metadata !DIExpression()), !dbg !2086
  br label %160, !dbg !2201

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2201
  call void @llvm.dbg.value(metadata i64 %161, metadata !2027, metadata !DIExpression()), !dbg !2086
  %162 = icmp ugt i64 %156, %161, !dbg !2202
  br i1 %162, label %170, label %163, !dbg !2203

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2204
  call void @llvm.dbg.value(metadata ptr %164, metadata !2205, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr %120, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %121, metadata !2209, metadata !DIExpression()), !dbg !2210
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2212
  %166 = icmp ne i32 %165, 0, !dbg !2213
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2214
  %168 = xor i1 %166, true, !dbg !2214
  %169 = zext i1 %168 to i8, !dbg !2214
  br i1 %167, label %170, label %688, !dbg !2214

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2195
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2195
  call void @llvm.dbg.value(metadata i8 %173, metadata !2050, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %171, metadata !2027, metadata !DIExpression()), !dbg !2086
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2215
  %175 = load i8, ptr %174, align 1, !dbg !2215, !tbaa !920
  call void @llvm.dbg.value(metadata i8 %175, metadata !2055, metadata !DIExpression()), !dbg !2195
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
  ], !dbg !2216

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2217

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2218

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2195
  %179 = and i8 %144, 1, !dbg !2222
  %180 = icmp eq i8 %179, 0, !dbg !2222
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2222
  br i1 %181, label %182, label %198, !dbg !2222

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2224
  br i1 %183, label %184, label %186, !dbg !2228

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2224
  store i8 39, ptr %185, align 1, !dbg !2224, !tbaa !920
  br label %186, !dbg !2224

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %187, metadata !2034, metadata !DIExpression()), !dbg !2086
  %188 = icmp ult i64 %187, %146, !dbg !2229
  br i1 %188, label %189, label %191, !dbg !2232

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2229
  store i8 36, ptr %190, align 1, !dbg !2229, !tbaa !920
  br label %191, !dbg !2229

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %192, metadata !2034, metadata !DIExpression()), !dbg !2086
  %193 = icmp ult i64 %192, %146, !dbg !2233
  br i1 %193, label %194, label %196, !dbg !2236

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2233
  store i8 39, ptr %195, align 1, !dbg !2233, !tbaa !920
  br label %196, !dbg !2233

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %197, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2042, metadata !DIExpression()), !dbg !2086
  br label %198, !dbg !2237

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2086
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %200, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %199, metadata !2034, metadata !DIExpression()), !dbg !2086
  %201 = icmp ult i64 %199, %146, !dbg !2238
  br i1 %201, label %202, label %204, !dbg !2241

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2238
  store i8 92, ptr %203, align 1, !dbg !2238, !tbaa !920
  br label %204, !dbg !2238

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %205, metadata !2034, metadata !DIExpression()), !dbg !2086
  br i1 %126, label %206, label %491, !dbg !2242

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2244
  %208 = icmp ult i64 %207, %171, !dbg !2245
  br i1 %208, label %209, label %480, !dbg !2246

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2247
  %211 = load i8, ptr %210, align 1, !dbg !2247, !tbaa !920
  %212 = add i8 %211, -48, !dbg !2248
  %213 = icmp ult i8 %212, 10, !dbg !2248
  br i1 %213, label %214, label %480, !dbg !2248

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2249
  br i1 %215, label %216, label %218, !dbg !2253

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2249
  store i8 48, ptr %217, align 1, !dbg !2249, !tbaa !920
  br label %218, !dbg !2249

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %219, metadata !2034, metadata !DIExpression()), !dbg !2086
  %220 = icmp ult i64 %219, %146, !dbg !2254
  br i1 %220, label %221, label %223, !dbg !2257

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2254
  store i8 48, ptr %222, align 1, !dbg !2254, !tbaa !920
  br label %223, !dbg !2254

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %224, metadata !2034, metadata !DIExpression()), !dbg !2086
  br label %480, !dbg !2258

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2259

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2260

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2261

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2263

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2265
  %231 = icmp ult i64 %230, %171, !dbg !2266
  br i1 %231, label %232, label %480, !dbg !2267

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2268
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2269
  %235 = load i8, ptr %234, align 1, !dbg !2269, !tbaa !920
  %236 = icmp eq i8 %235, 63, !dbg !2270
  br i1 %236, label %237, label %480, !dbg !2271

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2272
  %239 = load i8, ptr %238, align 1, !dbg !2272, !tbaa !920
  %240 = sext i8 %239 to i32, !dbg !2272
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
  ], !dbg !2273

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2274

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %230, metadata !2048, metadata !DIExpression()), !dbg !2185
  %243 = icmp ult i64 %140, %146, !dbg !2276
  br i1 %243, label %244, label %246, !dbg !2279

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2276
  store i8 63, ptr %245, align 1, !dbg !2276, !tbaa !920
  br label %246, !dbg !2276

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %247, metadata !2034, metadata !DIExpression()), !dbg !2086
  %248 = icmp ult i64 %247, %146, !dbg !2280
  br i1 %248, label %249, label %251, !dbg !2283

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2280
  store i8 34, ptr %250, align 1, !dbg !2280, !tbaa !920
  br label %251, !dbg !2280

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %252, metadata !2034, metadata !DIExpression()), !dbg !2086
  %253 = icmp ult i64 %252, %146, !dbg !2284
  br i1 %253, label %254, label %256, !dbg !2287

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2284
  store i8 34, ptr %255, align 1, !dbg !2284, !tbaa !920
  br label %256, !dbg !2284

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %257, metadata !2034, metadata !DIExpression()), !dbg !2086
  %258 = icmp ult i64 %257, %146, !dbg !2288
  br i1 %258, label %259, label %261, !dbg !2291

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2288
  store i8 63, ptr %260, align 1, !dbg !2288, !tbaa !920
  br label %261, !dbg !2288

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %262, metadata !2034, metadata !DIExpression()), !dbg !2086
  br label %480, !dbg !2292

263:                                              ; preds = %170
  br label %274, !dbg !2293

264:                                              ; preds = %170
  br label %274, !dbg !2294

265:                                              ; preds = %170
  br label %272, !dbg !2295

266:                                              ; preds = %170
  br label %272, !dbg !2296

267:                                              ; preds = %170
  br label %274, !dbg !2297

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2298

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2299

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2302

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2304

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2305
  call void @llvm.dbg.label(metadata !2080), !dbg !2306
  br i1 %134, label %274, label %670, !dbg !2307

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2305
  call void @llvm.dbg.label(metadata !2082), !dbg !2309
  br i1 %125, label %535, label %491, !dbg !2310

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2311

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2312, !tbaa !920
  %279 = icmp eq i8 %278, 0, !dbg !2314
  br i1 %279, label %280, label %480, !dbg !2315

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2316
  br i1 %281, label %282, label %480, !dbg !2318

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2195
  br label %283, !dbg !2319

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2195
  call void @llvm.dbg.value(metadata i8 %284, metadata !2054, metadata !DIExpression()), !dbg !2195
  br i1 %134, label %480, label %670, !dbg !2320

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2054, metadata !DIExpression()), !dbg !2195
  br i1 %133, label %286, label %480, !dbg !2322

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2323

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2326
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2328
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2328
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %292, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %291, metadata !2035, metadata !DIExpression()), !dbg !2086
  %293 = icmp ult i64 %140, %292, !dbg !2329
  br i1 %293, label %294, label %296, !dbg !2332

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2329
  store i8 39, ptr %295, align 1, !dbg !2329, !tbaa !920
  br label %296, !dbg !2329

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %297, metadata !2034, metadata !DIExpression()), !dbg !2086
  %298 = icmp ult i64 %297, %292, !dbg !2333
  br i1 %298, label %299, label %301, !dbg !2336

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2333
  store i8 92, ptr %300, align 1, !dbg !2333, !tbaa !920
  br label %301, !dbg !2333

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %302, metadata !2034, metadata !DIExpression()), !dbg !2086
  %303 = icmp ult i64 %302, %292, !dbg !2337
  br i1 %303, label %304, label %306, !dbg !2340

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2337
  store i8 39, ptr %305, align 1, !dbg !2337, !tbaa !920
  br label %306, !dbg !2337

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %307, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2086
  br label %480, !dbg !2341

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2342

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2056, metadata !DIExpression()), !dbg !2343
  %310 = tail call ptr @__ctype_b_loc() #42, !dbg !2344
  %311 = load ptr, ptr %310, align 8, !dbg !2344, !tbaa !842
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2344
  %314 = load i16, ptr %313, align 2, !dbg !2344, !tbaa !952
  %315 = lshr i16 %314, 14, !dbg !2346
  %316 = trunc i16 %315 to i8, !dbg !2346
  %317 = and i8 %316, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i8 %317, metadata !2059, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %171, metadata !2027, metadata !DIExpression()), !dbg !2086
  %318 = icmp eq i8 %317, 0, !dbg !2347
  call void @llvm.dbg.value(metadata i1 %318, metadata !2054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2195
  br label %368, !dbg !2348

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2349
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2060, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata ptr %14, metadata !2117, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr %14, metadata !2125, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 8, metadata !2129, metadata !DIExpression()), !dbg !2353
  store i64 0, ptr %14, align 8, !dbg !2355
  call void @llvm.dbg.value(metadata i64 0, metadata !2056, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2343
  %320 = icmp eq i64 %171, -1, !dbg !2356
  br i1 %320, label %321, label %323, !dbg !2358

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %322, metadata !2027, metadata !DIExpression()), !dbg !2086
  br label %323, !dbg !2360

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2195
  call void @llvm.dbg.value(metadata i64 %324, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2361
  %325 = sub i64 %324, %145, !dbg !2362
  call void @llvm.dbg.value(metadata ptr %15, metadata !2063, metadata !DIExpression(DW_OP_deref)), !dbg !2363
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #39, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %326, metadata !2067, metadata !DIExpression()), !dbg !2363
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2365

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2056, metadata !DIExpression()), !dbg !2343
  %328 = icmp ugt i64 %324, %145, !dbg !2366
  br i1 %328, label %331, label %329, !dbg !2368

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 0, metadata !2056, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %324, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i1 true, metadata !2054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2195
  br label %368, !dbg !2348

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2343
  br label %360, !dbg !2371

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2056, metadata !DIExpression()), !dbg !2343
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2373
  %335 = load i8, ptr %334, align 1, !dbg !2373, !tbaa !920
  %336 = icmp eq i8 %335, 0, !dbg !2368
  br i1 %336, label %363, label %337, !dbg !2374

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %338, metadata !2056, metadata !DIExpression()), !dbg !2343
  %339 = add i64 %338, %145, !dbg !2376
  %340 = icmp eq i64 %338, %325, !dbg !2366
  br i1 %340, label %363, label %331, !dbg !2368, !llvm.loop !2377

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2378
  %344 = and i1 %343, %133, !dbg !2378
  call void @llvm.dbg.value(metadata i64 1, metadata !2068, metadata !DIExpression()), !dbg !2379
  br i1 %344, label %345, label %354, !dbg !2378

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2068, metadata !DIExpression()), !dbg !2379
  %347 = add i64 %346, %145, !dbg !2380
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2382
  %349 = load i8, ptr %348, align 1, !dbg !2382, !tbaa !920
  %350 = sext i8 %349 to i32, !dbg !2382
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2383

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %352, metadata !2068, metadata !DIExpression()), !dbg !2379
  %353 = icmp eq i64 %352, %326, !dbg !2385
  br i1 %353, label %354, label %345, !dbg !2386, !llvm.loop !2387

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2389, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %355, metadata !2063, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %355, metadata !2391, metadata !DIExpression()), !dbg !2399
  %356 = call i32 @iswprint(i32 noundef %355) #39, !dbg !2401
  %357 = icmp ne i32 %356, 0, !dbg !2402
  %358 = zext i1 %357 to i8, !dbg !2403
  call void @llvm.dbg.value(metadata i8 %358, metadata !2059, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %326, metadata !2056, metadata !DIExpression()), !dbg !2343
  br label %363, !dbg !2404

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 0, metadata !2056, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2370
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2059, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 0, metadata !2056, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %324, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i1 %361, metadata !2054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2195
  br label %368, !dbg !2348

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2059, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %364, metadata !2056, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2369
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %324, metadata !2027, metadata !DIExpression()), !dbg !2086
  %366 = icmp eq i8 %365, 0, !dbg !2347
  call void @llvm.dbg.value(metadata i1 %366, metadata !2054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2195
  %367 = icmp ugt i64 %364, 1, !dbg !2405
  br i1 %367, label %374, label %368, !dbg !2348

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2406
  br i1 %373, label %374, label %480, !dbg !2406

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %379, metadata !2076, metadata !DIExpression()), !dbg !2408
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2409

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2086
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2187
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2185
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2195
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2410
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2195
  call void @llvm.dbg.value(metadata i8 %387, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %386, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %385, metadata !2050, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %384, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %383, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %382, metadata !2034, metadata !DIExpression()), !dbg !2086
  br i1 %380, label %388, label %434, !dbg !2411

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2416

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2195
  %390 = and i8 %383, 1, !dbg !2419
  %391 = icmp eq i8 %390, 0, !dbg !2419
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2419
  br i1 %392, label %393, label %409, !dbg !2419

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2421
  br i1 %394, label %395, label %397, !dbg !2425

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2421
  store i8 39, ptr %396, align 1, !dbg !2421, !tbaa !920
  br label %397, !dbg !2421

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %398, metadata !2034, metadata !DIExpression()), !dbg !2086
  %399 = icmp ult i64 %398, %146, !dbg !2426
  br i1 %399, label %400, label %402, !dbg !2429

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2426
  store i8 36, ptr %401, align 1, !dbg !2426, !tbaa !920
  br label %402, !dbg !2426

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %403, metadata !2034, metadata !DIExpression()), !dbg !2086
  %404 = icmp ult i64 %403, %146, !dbg !2430
  br i1 %404, label %405, label %407, !dbg !2433

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2430
  store i8 39, ptr %406, align 1, !dbg !2430, !tbaa !920
  br label %407, !dbg !2430

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %408, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2042, metadata !DIExpression()), !dbg !2086
  br label %409, !dbg !2434

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2086
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %411, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %410, metadata !2034, metadata !DIExpression()), !dbg !2086
  %412 = icmp ult i64 %410, %146, !dbg !2435
  br i1 %412, label %413, label %415, !dbg !2438

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2435
  store i8 92, ptr %414, align 1, !dbg !2435, !tbaa !920
  br label %415, !dbg !2435

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %416, metadata !2034, metadata !DIExpression()), !dbg !2086
  %417 = icmp ult i64 %416, %146, !dbg !2439
  br i1 %417, label %418, label %422, !dbg !2442

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2439
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2439
  store i8 %420, ptr %421, align 1, !dbg !2439, !tbaa !920
  br label %422, !dbg !2439

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2442
  call void @llvm.dbg.value(metadata i64 %423, metadata !2034, metadata !DIExpression()), !dbg !2086
  %424 = icmp ult i64 %423, %146, !dbg !2443
  br i1 %424, label %425, label %430, !dbg !2446

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2443
  %428 = or i8 %427, 48, !dbg !2443
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2443
  store i8 %428, ptr %429, align 1, !dbg !2443, !tbaa !920
  br label %430, !dbg !2443

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %431, metadata !2034, metadata !DIExpression()), !dbg !2086
  %432 = and i8 %387, 7, !dbg !2447
  %433 = or i8 %432, 48, !dbg !2448
  call void @llvm.dbg.value(metadata i8 %433, metadata !2055, metadata !DIExpression()), !dbg !2195
  br label %443, !dbg !2449

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2450
  %436 = icmp eq i8 %435, 0, !dbg !2450
  br i1 %436, label %443, label %437, !dbg !2452

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2453
  br i1 %438, label %439, label %441, !dbg !2457

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2453
  store i8 92, ptr %440, align 1, !dbg !2453, !tbaa !920
  br label %441, !dbg !2453

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %442, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2195
  br label %443, !dbg !2458

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2086
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2187
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2195
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2195
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2195
  call void @llvm.dbg.value(metadata i8 %448, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %447, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %446, metadata !2050, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %445, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %444, metadata !2034, metadata !DIExpression()), !dbg !2086
  %449 = add i64 %384, 1, !dbg !2459
  %450 = icmp ugt i64 %379, %449, !dbg !2461
  br i1 %450, label %451, label %478, !dbg !2462

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2463
  %453 = icmp ne i8 %452, 0, !dbg !2463
  %454 = and i8 %447, 1, !dbg !2463
  %455 = icmp eq i8 %454, 0, !dbg !2463
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2463
  br i1 %456, label %457, label %468, !dbg !2463

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2466
  br i1 %458, label %459, label %461, !dbg !2470

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2466
  store i8 39, ptr %460, align 1, !dbg !2466, !tbaa !920
  br label %461, !dbg !2466

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i64 %462, metadata !2034, metadata !DIExpression()), !dbg !2086
  %463 = icmp ult i64 %462, %146, !dbg !2471
  br i1 %463, label %464, label %466, !dbg !2474

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2471
  store i8 39, ptr %465, align 1, !dbg !2471, !tbaa !920
  br label %466, !dbg !2471

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %467, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2086
  br label %468, !dbg !2475

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2476
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %470, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %469, metadata !2034, metadata !DIExpression()), !dbg !2086
  %471 = icmp ult i64 %469, %146, !dbg !2477
  br i1 %471, label %472, label %474, !dbg !2480

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2477
  store i8 %448, ptr %473, align 1, !dbg !2477, !tbaa !920
  br label %474, !dbg !2477

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %475, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %449, metadata !2048, metadata !DIExpression()), !dbg !2185
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2481
  %477 = load i8, ptr %476, align 1, !dbg !2481, !tbaa !920
  call void @llvm.dbg.value(metadata i8 %477, metadata !2055, metadata !DIExpression()), !dbg !2195
  br label %381, !dbg !2482, !llvm.loop !2483

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i8 %448, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %479, metadata !2054, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %447, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %446, metadata !2050, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %384, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %445, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %444, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %378, metadata !2027, metadata !DIExpression()), !dbg !2086
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2486
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2086
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2091
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2086
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2086
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2185
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2195
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2195
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2195
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %489, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %488, metadata !2054, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %487, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %173, metadata !2050, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %486, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %485, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %484, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %483, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %482, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %481, metadata !2027, metadata !DIExpression()), !dbg !2086
  br i1 %127, label %502, label %491, !dbg !2487

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
  br i1 %137, label %503, label %524, !dbg !2489

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2490

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
  %514 = lshr i8 %505, 5, !dbg !2491
  %515 = zext i8 %514 to i64, !dbg !2491
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2492
  %517 = load i32, ptr %516, align 4, !dbg !2492, !tbaa !911
  %518 = and i8 %505, 31, !dbg !2493
  %519 = zext i8 %518 to i32, !dbg !2493
  %520 = shl nuw i32 1, %519, !dbg !2494
  %521 = and i32 %517, %520, !dbg !2494
  %522 = icmp eq i32 %521, 0, !dbg !2494
  %523 = and i1 %172, %522, !dbg !2495
  br i1 %523, label %573, label %535, !dbg !2495

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
  br i1 %172, label %573, label %535, !dbg !2496

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2486
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2086
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2091
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2095
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2187
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2497
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2195
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2195
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %543, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %542, metadata !2054, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %541, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %540, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %539, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %538, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %537, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %536, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.label(metadata !2083), !dbg !2498
  br i1 %132, label %545, label %674, !dbg !2499

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2195
  %546 = and i8 %540, 1, !dbg !2501
  %547 = icmp eq i8 %546, 0, !dbg !2501
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2501
  br i1 %548, label %549, label %565, !dbg !2501

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2503
  br i1 %550, label %551, label %553, !dbg !2507

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2503
  store i8 39, ptr %552, align 1, !dbg !2503, !tbaa !920
  br label %553, !dbg !2503

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %554, metadata !2034, metadata !DIExpression()), !dbg !2086
  %555 = icmp ult i64 %554, %544, !dbg !2508
  br i1 %555, label %556, label %558, !dbg !2511

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2508
  store i8 36, ptr %557, align 1, !dbg !2508, !tbaa !920
  br label %558, !dbg !2508

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %559, metadata !2034, metadata !DIExpression()), !dbg !2086
  %560 = icmp ult i64 %559, %544, !dbg !2512
  br i1 %560, label %561, label %563, !dbg !2515

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2512
  store i8 39, ptr %562, align 1, !dbg !2512, !tbaa !920
  br label %563, !dbg !2512

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2515
  call void @llvm.dbg.value(metadata i64 %564, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 1, metadata !2042, metadata !DIExpression()), !dbg !2086
  br label %565, !dbg !2516

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2195
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %567, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %566, metadata !2034, metadata !DIExpression()), !dbg !2086
  %568 = icmp ult i64 %566, %544, !dbg !2517
  br i1 %568, label %569, label %571, !dbg !2520

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2517
  store i8 92, ptr %570, align 1, !dbg !2517, !tbaa !920
  br label %571, !dbg !2517

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %544, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %543, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %542, metadata !2054, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %541, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %567, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %539, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %538, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %572, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %536, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.label(metadata !2084), !dbg !2521
  br label %600, !dbg !2522

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2486
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2086
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2091
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2095
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2187
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2497
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2195
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2195
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2525
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %582, metadata !2055, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %581, metadata !2054, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8 %580, metadata !2053, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %579, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %578, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %577, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %576, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %575, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %574, metadata !2027, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.label(metadata !2084), !dbg !2521
  %584 = and i8 %578, 1, !dbg !2522
  %585 = icmp ne i8 %584, 0, !dbg !2522
  %586 = and i8 %580, 1, !dbg !2522
  %587 = icmp eq i8 %586, 0, !dbg !2522
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2522
  br i1 %588, label %589, label %600, !dbg !2522

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2526
  br i1 %590, label %591, label %593, !dbg !2530

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2526
  store i8 39, ptr %592, align 1, !dbg !2526, !tbaa !920
  br label %593, !dbg !2526

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %594, metadata !2034, metadata !DIExpression()), !dbg !2086
  %595 = icmp ult i64 %594, %583, !dbg !2531
  br i1 %595, label %596, label %598, !dbg !2534

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2531
  store i8 39, ptr %597, align 1, !dbg !2531, !tbaa !920
  br label %598, !dbg !2531

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %599, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2086
  br label %600, !dbg !2535

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2195
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2086
  call void @llvm.dbg.value(metadata i8 %609, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %608, metadata !2034, metadata !DIExpression()), !dbg !2086
  %610 = icmp ult i64 %608, %601, !dbg !2536
  br i1 %610, label %611, label %613, !dbg !2539

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2536
  store i8 %602, ptr %612, align 1, !dbg !2536, !tbaa !920
  br label %613, !dbg !2536

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i64 %614, metadata !2034, metadata !DIExpression()), !dbg !2086
  %615 = icmp eq i8 %603, 0, !dbg !2540
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2542
  call void @llvm.dbg.value(metadata i8 %616, metadata !2041, metadata !DIExpression()), !dbg !2086
  br label %617, !dbg !2543

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2486
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2086
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2091
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2095
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2096
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2187
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2497
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %624, metadata !2048, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8 %623, metadata !2042, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %622, metadata !2041, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %621, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %620, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %619, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %618, metadata !2027, metadata !DIExpression()), !dbg !2086
  %626 = add i64 %624, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %626, metadata !2048, metadata !DIExpression()), !dbg !2185
  br label %138, !dbg !2545, !llvm.loop !2546

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2025, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %143, metadata !2041, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 %142, metadata !2040, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %141, metadata !2035, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %140, metadata !2034, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %139, metadata !2027, metadata !DIExpression()), !dbg !2086
  %628 = icmp eq i64 %140, 0, !dbg !2548
  %629 = and i1 %133, %628, !dbg !2550
  %630 = xor i1 %629, true, !dbg !2550
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2550
  br i1 %631, label %632, label %670, !dbg !2550

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2551
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2551
  br i1 %636, label %637, label %646, !dbg !2551

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2553
  %639 = icmp eq i8 %638, 0, !dbg !2553
  br i1 %639, label %642, label %640, !dbg !2556

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2557
  br label %694, !dbg !2558

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2559
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2561
  br i1 %645, label %28, label %646, !dbg !2561

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2562
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2564
  br i1 %649, label %650, label %665, !dbg !2564

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2036, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %140, metadata !2034, metadata !DIExpression()), !dbg !2086
  %651 = load i8, ptr %120, align 1, !dbg !2565, !tbaa !920
  %652 = icmp eq i8 %651, 0, !dbg !2568
  br i1 %652, label %665, label %653, !dbg !2568

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2036, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i64 %656, metadata !2034, metadata !DIExpression()), !dbg !2086
  %657 = icmp ult i64 %656, %146, !dbg !2569
  br i1 %657, label %658, label %660, !dbg !2572

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2569
  store i8 %654, ptr %659, align 1, !dbg !2569, !tbaa !920
  br label %660, !dbg !2569

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %661, metadata !2034, metadata !DIExpression()), !dbg !2086
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2573
  call void @llvm.dbg.value(metadata ptr %662, metadata !2036, metadata !DIExpression()), !dbg !2086
  %663 = load i8, ptr %662, align 1, !dbg !2565, !tbaa !920
  %664 = icmp eq i8 %663, 0, !dbg !2568
  br i1 %664, label %665, label %653, !dbg !2568, !llvm.loop !2574

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2168
  call void @llvm.dbg.value(metadata i64 %666, metadata !2034, metadata !DIExpression()), !dbg !2086
  %667 = icmp ult i64 %666, %146, !dbg !2576
  br i1 %667, label %668, label %694, !dbg !2578

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2579
  store i8 0, ptr %669, align 1, !dbg !2580, !tbaa !920
  br label %694, !dbg !2579

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2085), !dbg !2581
  %672 = icmp eq i8 %124, 0, !dbg !2582
  %673 = select i1 %672, i32 2, i32 4, !dbg !2582
  br label %684, !dbg !2582

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2582
  %678 = select i1 %677, i32 2, i32 4, !dbg !2582
  br label %679, !dbg !2584

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2085), !dbg !2581
  %683 = icmp eq i32 %116, 2, !dbg !2584
  br i1 %683, label %684, label %688, !dbg !2582

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2582

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2028, metadata !DIExpression()), !dbg !2086
  %692 = and i32 %5, -3, !dbg !2585
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2586
  br label %694, !dbg !2587

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2588
}

; Function Attrs: nounwind
declare !dbg !2589 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2592 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2594 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr null, metadata !2608, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2615
  %4 = icmp eq ptr %2, null, !dbg !2617
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %5, metadata !2610, metadata !DIExpression()), !dbg !2615
  %6 = tail call ptr @__errno_location() #42, !dbg !2618
  %7 = load i32, ptr %6, align 4, !dbg !2618, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %7, metadata !2611, metadata !DIExpression()), !dbg !2615
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2619
  %9 = load i32, ptr %8, align 4, !dbg !2619, !tbaa !1968
  %10 = or i32 %9, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %10, metadata !2612, metadata !DIExpression()), !dbg !2615
  %11 = load i32, ptr %5, align 8, !dbg !2621, !tbaa !1918
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2622
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2623
  %14 = load ptr, ptr %13, align 8, !dbg !2623, !tbaa !1989
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2624
  %16 = load ptr, ptr %15, align 8, !dbg !2624, !tbaa !1992
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2625
  %18 = add i64 %17, 1, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %18, metadata !2613, metadata !DIExpression()), !dbg !2615
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %19, metadata !2614, metadata !DIExpression()), !dbg !2615
  %20 = load i32, ptr %5, align 8, !dbg !2628, !tbaa !1918
  %21 = load ptr, ptr %13, align 8, !dbg !2629, !tbaa !1989
  %22 = load ptr, ptr %15, align 8, !dbg !2630, !tbaa !1992
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2631
  store i32 %7, ptr %6, align 4, !dbg !2632, !tbaa !911
  ret ptr %19, !dbg !2633
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2603 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2602, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %3, metadata !2609, metadata !DIExpression()), !dbg !2634
  %5 = icmp eq ptr %3, null, !dbg !2635
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2635
  call void @llvm.dbg.value(metadata ptr %6, metadata !2610, metadata !DIExpression()), !dbg !2634
  %7 = tail call ptr @__errno_location() #42, !dbg !2636
  %8 = load i32, ptr %7, align 4, !dbg !2636, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %8, metadata !2611, metadata !DIExpression()), !dbg !2634
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2637
  %10 = load i32, ptr %9, align 4, !dbg !2637, !tbaa !1968
  %11 = icmp eq ptr %2, null, !dbg !2638
  %12 = zext i1 %11 to i32, !dbg !2638
  %13 = or i32 %10, %12, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %13, metadata !2612, metadata !DIExpression()), !dbg !2634
  %14 = load i32, ptr %6, align 8, !dbg !2640, !tbaa !1918
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2641
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2642
  %17 = load ptr, ptr %16, align 8, !dbg !2642, !tbaa !1989
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2643
  %19 = load ptr, ptr %18, align 8, !dbg !2643, !tbaa !1992
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2644
  %21 = add i64 %20, 1, !dbg !2645
  call void @llvm.dbg.value(metadata i64 %21, metadata !2613, metadata !DIExpression()), !dbg !2634
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2646
  call void @llvm.dbg.value(metadata ptr %22, metadata !2614, metadata !DIExpression()), !dbg !2634
  %23 = load i32, ptr %6, align 8, !dbg !2647, !tbaa !1918
  %24 = load ptr, ptr %16, align 8, !dbg !2648, !tbaa !1989
  %25 = load ptr, ptr %18, align 8, !dbg !2649, !tbaa !1992
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2650
  store i32 %8, ptr %7, align 4, !dbg !2651, !tbaa !911
  br i1 %11, label %28, label %27, !dbg !2652

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2653, !tbaa !2655
  br label %28, !dbg !2656

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2658 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2663, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 1, metadata !2661, metadata !DIExpression()), !dbg !2665
  %2 = load i32, ptr @nslots, align 4, !tbaa !911
  call void @llvm.dbg.value(metadata i32 1, metadata !2661, metadata !DIExpression()), !dbg !2665
  %3 = icmp sgt i32 %2, 1, !dbg !2666
  br i1 %3, label %4, label %6, !dbg !2668

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2666
  br label %10, !dbg !2668

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2669
  %8 = load ptr, ptr %7, align 8, !dbg !2669, !tbaa !2671
  %9 = icmp eq ptr %8, @slot0, !dbg !2673
  br i1 %9, label %17, label %16, !dbg !2674

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2661, metadata !DIExpression()), !dbg !2665
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2675
  %13 = load ptr, ptr %12, align 8, !dbg !2675, !tbaa !2671
  tail call void @free(ptr noundef %13) #39, !dbg !2676
  %14 = add nuw nsw i64 %11, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %14, metadata !2661, metadata !DIExpression()), !dbg !2665
  %15 = icmp eq i64 %14, %5, !dbg !2666
  br i1 %15, label %6, label %10, !dbg !2668, !llvm.loop !2678

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2680
  store i64 256, ptr @slotvec0, align 8, !dbg !2682, !tbaa !2683
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2684, !tbaa !2671
  br label %17, !dbg !2685

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2686
  br i1 %18, label %20, label %19, !dbg !2688

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2689
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2691, !tbaa !842
  br label %20, !dbg !2692

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2693, !tbaa !911
  ret void, !dbg !2694
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2699
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2700
  ret ptr %3, !dbg !2701
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2702 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2706, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %2, metadata !2708, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata ptr %3, metadata !2709, metadata !DIExpression()), !dbg !2722
  %6 = tail call ptr @__errno_location() #42, !dbg !2723
  %7 = load i32, ptr %6, align 4, !dbg !2723, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %7, metadata !2710, metadata !DIExpression()), !dbg !2722
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2724, !tbaa !842
  call void @llvm.dbg.value(metadata ptr %8, metadata !2711, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2712, metadata !DIExpression()), !dbg !2722
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2725
  br i1 %9, label %10, label %11, !dbg !2725

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2727
  unreachable, !dbg !2727

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2728, !tbaa !911
  %13 = icmp sgt i32 %12, %0, !dbg !2729
  br i1 %13, label %32, label %14, !dbg !2730

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2731
  call void @llvm.dbg.value(metadata i1 %15, metadata !2713, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2733
  %16 = sext i32 %12 to i64, !dbg !2734
  call void @llvm.dbg.value(metadata i64 %16, metadata !2716, metadata !DIExpression()), !dbg !2732
  store i64 %16, ptr %5, align 8, !dbg !2735, !tbaa !2655
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2736
  %18 = add nuw nsw i32 %0, 1, !dbg !2737
  %19 = sub i32 %18, %12, !dbg !2738
  %20 = sext i32 %19 to i64, !dbg !2739
  call void @llvm.dbg.value(metadata ptr %5, metadata !2716, metadata !DIExpression(DW_OP_deref)), !dbg !2732
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2740
  call void @llvm.dbg.value(metadata ptr %21, metadata !2711, metadata !DIExpression()), !dbg !2722
  store ptr %21, ptr @slotvec, align 8, !dbg !2741, !tbaa !842
  br i1 %15, label %22, label %23, !dbg !2742

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2743, !tbaa.struct !2745
  br label %23, !dbg !2746

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2747, !tbaa !911
  %25 = sext i32 %24 to i64, !dbg !2748
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2748
  %27 = load i64, ptr %5, align 8, !dbg !2749, !tbaa !2655
  call void @llvm.dbg.value(metadata i64 %27, metadata !2716, metadata !DIExpression()), !dbg !2732
  %28 = sub nsw i64 %27, %25, !dbg !2750
  %29 = shl i64 %28, 4, !dbg !2751
  call void @llvm.dbg.value(metadata ptr %26, metadata !2125, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 %29, metadata !2129, metadata !DIExpression()), !dbg !2752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2754
  %30 = load i64, ptr %5, align 8, !dbg !2755, !tbaa !2655
  call void @llvm.dbg.value(metadata i64 %30, metadata !2716, metadata !DIExpression()), !dbg !2732
  %31 = trunc i64 %30 to i32, !dbg !2755
  store i32 %31, ptr @nslots, align 4, !dbg !2756, !tbaa !911
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2757
  br label %32, !dbg !2758

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2722
  call void @llvm.dbg.value(metadata ptr %33, metadata !2711, metadata !DIExpression()), !dbg !2722
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2759
  %36 = load i64, ptr %35, align 8, !dbg !2760, !tbaa !2683
  call void @llvm.dbg.value(metadata i64 %36, metadata !2717, metadata !DIExpression()), !dbg !2761
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2762
  %38 = load ptr, ptr %37, align 8, !dbg !2762, !tbaa !2671
  call void @llvm.dbg.value(metadata ptr %38, metadata !2719, metadata !DIExpression()), !dbg !2761
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2763
  %40 = load i32, ptr %39, align 4, !dbg !2763, !tbaa !1968
  %41 = or i32 %40, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %41, metadata !2720, metadata !DIExpression()), !dbg !2761
  %42 = load i32, ptr %3, align 8, !dbg !2765, !tbaa !1918
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2766
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2767
  %45 = load ptr, ptr %44, align 8, !dbg !2767, !tbaa !1989
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2768
  %47 = load ptr, ptr %46, align 8, !dbg !2768, !tbaa !1992
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %48, metadata !2721, metadata !DIExpression()), !dbg !2761
  %49 = icmp ugt i64 %36, %48, !dbg !2770
  br i1 %49, label %60, label %50, !dbg !2772

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %51, metadata !2717, metadata !DIExpression()), !dbg !2761
  store i64 %51, ptr %35, align 8, !dbg !2775, !tbaa !2683
  %52 = icmp eq ptr %38, @slot0, !dbg !2776
  br i1 %52, label %54, label %53, !dbg !2778

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2779
  br label %54, !dbg !2779

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2780
  call void @llvm.dbg.value(metadata ptr %55, metadata !2719, metadata !DIExpression()), !dbg !2761
  store ptr %55, ptr %37, align 8, !dbg !2781, !tbaa !2671
  %56 = load i32, ptr %3, align 8, !dbg !2782, !tbaa !1918
  %57 = load ptr, ptr %44, align 8, !dbg !2783, !tbaa !1989
  %58 = load ptr, ptr %46, align 8, !dbg !2784, !tbaa !1992
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2785
  br label %60, !dbg !2786

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2761
  call void @llvm.dbg.value(metadata ptr %61, metadata !2719, metadata !DIExpression()), !dbg !2761
  store i32 %7, ptr %6, align 4, !dbg !2787, !tbaa !911
  ret ptr %61, !dbg !2788
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %1, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %2, metadata !2795, metadata !DIExpression()), !dbg !2796
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2797
  ret ptr %4, !dbg !2798
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2799 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2803
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2805
  ret ptr %2, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2807 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2811, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 0, metadata !2793, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2795, metadata !DIExpression()), !dbg !2814
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2816
  ret ptr %3, !dbg !2817
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2818 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 %1, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata ptr %2, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2827
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2825, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2829), !dbg !2832
  call void @llvm.dbg.value(metadata i32 %1, metadata !2833, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2841, !alias.scope !2829
  %5 = icmp eq i32 %1, 10, !dbg !2842
  br i1 %5, label %6, label %7, !dbg !2844

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2845, !noalias !2829
  unreachable, !dbg !2845

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2846, !tbaa !1918, !alias.scope !2829
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2847
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2848
  ret ptr %8, !dbg !2849
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2850 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %1, metadata !2855, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %2, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %3, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2858, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2862), !dbg !2865
  call void @llvm.dbg.value(metadata i32 %1, metadata !2833, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2838, metadata !DIExpression()), !dbg !2868
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2868, !alias.scope !2862
  %6 = icmp eq i32 %1, 10, !dbg !2869
  br i1 %6, label %7, label %8, !dbg !2870

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2871, !noalias !2862
  unreachable, !dbg !2871

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2872, !tbaa !1918, !alias.scope !2862
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2873
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2874
  ret ptr %9, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2876 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %1, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2822, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %1, metadata !2824, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2825, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2887), !dbg !2890
  call void @llvm.dbg.value(metadata i32 %0, metadata !2833, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2838, metadata !DIExpression()), !dbg !2893
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2893, !alias.scope !2887
  %4 = icmp eq i32 %0, 10, !dbg !2894
  br i1 %4, label %5, label %6, !dbg !2895

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2896, !noalias !2887
  unreachable, !dbg !2896

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2897, !tbaa !1918, !alias.scope !2887
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2898
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2899
  ret ptr %7, !dbg !2900
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2901 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata ptr %1, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %2, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 0, metadata !2854, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 %0, metadata !2855, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata ptr %1, metadata !2856, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 %2, metadata !2857, metadata !DIExpression()), !dbg !2909
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2911
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2858, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2913), !dbg !2916
  call void @llvm.dbg.value(metadata i32 %0, metadata !2833, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2838, metadata !DIExpression()), !dbg !2919
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2919, !alias.scope !2913
  %5 = icmp eq i32 %0, 10, !dbg !2920
  br i1 %5, label %6, label %7, !dbg !2921

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2922, !noalias !2913
  unreachable, !dbg !2922

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2923, !tbaa !1918, !alias.scope !2913
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2924
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2925
  ret ptr %8, !dbg !2926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2927 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %2, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2936
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2938, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %4, metadata !1935, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 %2, metadata !1936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 1, metadata !1937, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 %2, metadata !1938, metadata !DIExpression()), !dbg !2940
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2942
  %6 = lshr i8 %2, 5, !dbg !2943
  %7 = zext i8 %6 to i64, !dbg !2943
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %8, metadata !1939, metadata !DIExpression()), !dbg !2940
  %9 = and i8 %2, 31, !dbg !2945
  %10 = zext i8 %9 to i32, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %10, metadata !1941, metadata !DIExpression()), !dbg !2940
  %11 = load i32, ptr %8, align 4, !dbg !2946, !tbaa !911
  %12 = lshr i32 %11, %10, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %12, metadata !1942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2940
  %13 = and i32 %12, 1, !dbg !2948
  %14 = xor i32 %13, 1, !dbg !2948
  %15 = shl nuw i32 %14, %10, !dbg !2949
  %16 = xor i32 %15, %11, !dbg !2950
  store i32 %16, ptr %8, align 4, !dbg !2950, !tbaa !911
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2951
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2952
  ret ptr %17, !dbg !2953
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2954 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 %1, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 -1, metadata !2932, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 %1, metadata !2933, metadata !DIExpression()), !dbg !2961
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2963
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2934, metadata !DIExpression()), !dbg !2964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2965, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %3, metadata !1935, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 %1, metadata !1936, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 1, metadata !1937, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 %1, metadata !1938, metadata !DIExpression()), !dbg !2966
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2968
  %5 = lshr i8 %1, 5, !dbg !2969
  %6 = zext i8 %5 to i64, !dbg !2969
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %7, metadata !1939, metadata !DIExpression()), !dbg !2966
  %8 = and i8 %1, 31, !dbg !2971
  %9 = zext i8 %8 to i32, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %9, metadata !1941, metadata !DIExpression()), !dbg !2966
  %10 = load i32, ptr %7, align 4, !dbg !2972, !tbaa !911
  %11 = lshr i32 %10, %9, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %11, metadata !1942, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2966
  %12 = and i32 %11, 1, !dbg !2974
  %13 = xor i32 %12, 1, !dbg !2974
  %14 = shl nuw i32 %13, %9, !dbg !2975
  %15 = xor i32 %14, %10, !dbg !2976
  store i32 %15, ptr %7, align 4, !dbg !2976, !tbaa !911
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2977
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2978
  ret ptr %16, !dbg !2979
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2980 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata ptr %0, metadata !2958, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8 58, metadata !2959, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 -1, metadata !2932, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 58, metadata !2933, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2988
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2934, metadata !DIExpression()), !dbg !2989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2990, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %2, metadata !1935, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8 58, metadata !1936, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 1, metadata !1937, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8 58, metadata !1938, metadata !DIExpression()), !dbg !2991
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %3, metadata !1939, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 26, metadata !1941, metadata !DIExpression()), !dbg !2991
  %4 = load i32, ptr %3, align 4, !dbg !2994, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %4, metadata !1942, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2991
  %5 = or i32 %4, 67108864, !dbg !2995
  store i32 %5, ptr %3, align 4, !dbg !2995, !tbaa !911
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2996
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2997
  ret ptr %6, !dbg !2998
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2999 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3001, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata ptr %0, metadata !2931, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 58, metadata !2933, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3006
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2934, metadata !DIExpression()), !dbg !3007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3008, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %3, metadata !1935, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 58, metadata !1936, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 1, metadata !1937, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 58, metadata !1938, metadata !DIExpression()), !dbg !3009
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3011
  call void @llvm.dbg.value(metadata ptr %4, metadata !1939, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 26, metadata !1941, metadata !DIExpression()), !dbg !3009
  %5 = load i32, ptr %4, align 4, !dbg !3012, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %5, metadata !1942, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3009
  %6 = or i32 %5, 67108864, !dbg !3013
  store i32 %6, ptr %4, align 4, !dbg !3013, !tbaa !911
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3014
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3015
  ret ptr %7, !dbg !3016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3017 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2838, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3023
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 %1, metadata !3020, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3025
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3026
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3022, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %1, metadata !2833, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3028
  %5 = icmp eq i32 %1, 10, !dbg !3029
  br i1 %5, label %6, label %7, !dbg !3030

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3031, !noalias !3032
  unreachable, !dbg !3031

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2838, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3028
  store i32 %1, ptr %4, align 8, !dbg !3035, !tbaa.struct !2939
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3035
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3035
  call void @llvm.dbg.value(metadata ptr %4, metadata !1935, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 58, metadata !1936, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 1, metadata !1937, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 58, metadata !1938, metadata !DIExpression()), !dbg !3036
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3038
  call void @llvm.dbg.value(metadata ptr %9, metadata !1939, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 26, metadata !1941, metadata !DIExpression()), !dbg !3036
  %10 = load i32, ptr %9, align 4, !dbg !3039, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %10, metadata !1942, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3036
  %11 = or i32 %10, 67108864, !dbg !3040
  store i32 %11, ptr %9, align 4, !dbg !3040, !tbaa !911
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3041
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3042
  ret ptr %12, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3044 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3048, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %3, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %0, metadata !3053, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %1, metadata !3058, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %2, metadata !3059, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %3, metadata !3060, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 -1, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3065
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3062, metadata !DIExpression()), !dbg !3066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3067, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %5, metadata !1975, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %1, metadata !1976, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %2, metadata !1977, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %5, metadata !1975, metadata !DIExpression()), !dbg !3068
  store i32 10, ptr %5, align 8, !dbg !3070, !tbaa !1918
  %6 = icmp ne ptr %1, null, !dbg !3071
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3072
  br i1 %8, label %10, label %9, !dbg !3072

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3073
  unreachable, !dbg !3073

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3074
  store ptr %1, ptr %11, align 8, !dbg !3075, !tbaa !1989
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3076
  store ptr %2, ptr %12, align 8, !dbg !3077, !tbaa !1992
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3078
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3079
  ret ptr %13, !dbg !3080
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3054 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3053, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %1, metadata !3058, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %2, metadata !3059, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr %3, metadata !3060, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %4, metadata !3061, metadata !DIExpression()), !dbg !3081
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3062, metadata !DIExpression()), !dbg !3083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3084, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %6, metadata !1975, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %1, metadata !1976, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %2, metadata !1977, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %6, metadata !1975, metadata !DIExpression()), !dbg !3085
  store i32 10, ptr %6, align 8, !dbg !3087, !tbaa !1918
  %7 = icmp ne ptr %1, null, !dbg !3088
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3089
  br i1 %9, label %11, label %10, !dbg !3089

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3090
  unreachable, !dbg !3090

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3091
  store ptr %1, ptr %12, align 8, !dbg !3092, !tbaa !1989
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3093
  store ptr %2, ptr %13, align 8, !dbg !3094, !tbaa !1992
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3095
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3096
  ret ptr %14, !dbg !3097
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3098 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3102, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %1, metadata !3103, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %2, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 0, metadata !3048, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr %2, metadata !3051, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %1, metadata !3059, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %2, metadata !3060, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 -1, metadata !3061, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3110
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3062, metadata !DIExpression()), !dbg !3111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3112, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %4, metadata !1975, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %0, metadata !1976, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %1, metadata !1977, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %4, metadata !1975, metadata !DIExpression()), !dbg !3113
  store i32 10, ptr %4, align 8, !dbg !3115, !tbaa !1918
  %5 = icmp ne ptr %0, null, !dbg !3116
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3117
  br i1 %7, label %9, label %8, !dbg !3117

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3118
  unreachable, !dbg !3118

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3119
  store ptr %0, ptr %10, align 8, !dbg !3120, !tbaa !1989
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3121
  store ptr %1, ptr %11, align 8, !dbg !3122, !tbaa !1992
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3123
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3124
  ret ptr %12, !dbg !3125
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3126 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3130, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %1, metadata !3131, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %2, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %3, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 0, metadata !3053, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %1, metadata !3059, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %2, metadata !3060, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %3, metadata !3061, metadata !DIExpression()), !dbg !3135
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3137
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3062, metadata !DIExpression()), !dbg !3138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3139, !tbaa.struct !2939
  call void @llvm.dbg.value(metadata ptr %5, metadata !1975, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %0, metadata !1976, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %1, metadata !1977, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %5, metadata !1975, metadata !DIExpression()), !dbg !3140
  store i32 10, ptr %5, align 8, !dbg !3142, !tbaa !1918
  %6 = icmp ne ptr %0, null, !dbg !3143
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3144
  br i1 %8, label %10, label %9, !dbg !3144

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3145
  unreachable, !dbg !3145

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3146
  store ptr %0, ptr %11, align 8, !dbg !3147, !tbaa !1989
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3148
  store ptr %1, ptr %12, align 8, !dbg !3149, !tbaa !1992
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3150
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3151
  ret ptr %13, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3153 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %1, metadata !3158, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %2, metadata !3159, metadata !DIExpression()), !dbg !3160
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3161
  ret ptr %4, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3163 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3170
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3172
  ret ptr %3, !dbg !3173
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata ptr %1, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata ptr %1, metadata !3158, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 -1, metadata !3159, metadata !DIExpression()), !dbg !3181
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3183
  ret ptr %3, !dbg !3184
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3185 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3189, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 0, metadata !3178, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata ptr %0, metadata !3179, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 -1, metadata !3159, metadata !DIExpression()), !dbg !3193
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3195
  ret ptr %2, !dbg !3196
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3197 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3236, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %1, metadata !3237, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %2, metadata !3238, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %3, metadata !3239, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata ptr %4, metadata !3240, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %5, metadata !3241, metadata !DIExpression()), !dbg !3242
  %7 = icmp eq ptr %1, null, !dbg !3243
  br i1 %7, label %10, label %8, !dbg !3245

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.95, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3246
  br label %12, !dbg !3246

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.96, ptr noundef %2, ptr noundef %3) #39, !dbg !3247
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.3.98, i32 noundef 5) #39, !dbg !3248
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3248
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3249
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.5.100, i32 noundef 5) #39, !dbg !3250
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.101) #39, !dbg !3250
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %0), !dbg !3251
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
  ], !dbg !3252

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.7.102, i32 noundef 5) #39, !dbg !3253
  %21 = load ptr, ptr %4, align 8, !dbg !3253, !tbaa !842
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3253
  br label %147, !dbg !3255

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.8.103, i32 noundef 5) #39, !dbg !3256
  %25 = load ptr, ptr %4, align 8, !dbg !3256, !tbaa !842
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3256
  %27 = load ptr, ptr %26, align 8, !dbg !3256, !tbaa !842
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3256
  br label %147, !dbg !3257

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.9.104, i32 noundef 5) #39, !dbg !3258
  %31 = load ptr, ptr %4, align 8, !dbg !3258, !tbaa !842
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3258
  %33 = load ptr, ptr %32, align 8, !dbg !3258, !tbaa !842
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3258
  %35 = load ptr, ptr %34, align 8, !dbg !3258, !tbaa !842
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3258
  br label %147, !dbg !3259

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.10.105, i32 noundef 5) #39, !dbg !3260
  %39 = load ptr, ptr %4, align 8, !dbg !3260, !tbaa !842
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3260
  %41 = load ptr, ptr %40, align 8, !dbg !3260, !tbaa !842
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3260
  %43 = load ptr, ptr %42, align 8, !dbg !3260, !tbaa !842
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3260
  %45 = load ptr, ptr %44, align 8, !dbg !3260, !tbaa !842
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3260
  br label %147, !dbg !3261

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.11.106, i32 noundef 5) #39, !dbg !3262
  %49 = load ptr, ptr %4, align 8, !dbg !3262, !tbaa !842
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3262
  %51 = load ptr, ptr %50, align 8, !dbg !3262, !tbaa !842
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3262
  %53 = load ptr, ptr %52, align 8, !dbg !3262, !tbaa !842
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3262
  %55 = load ptr, ptr %54, align 8, !dbg !3262, !tbaa !842
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3262
  %57 = load ptr, ptr %56, align 8, !dbg !3262, !tbaa !842
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3262
  br label %147, !dbg !3263

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.12.107, i32 noundef 5) #39, !dbg !3264
  %61 = load ptr, ptr %4, align 8, !dbg !3264, !tbaa !842
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3264
  %63 = load ptr, ptr %62, align 8, !dbg !3264, !tbaa !842
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3264
  %65 = load ptr, ptr %64, align 8, !dbg !3264, !tbaa !842
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3264
  %67 = load ptr, ptr %66, align 8, !dbg !3264, !tbaa !842
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3264
  %69 = load ptr, ptr %68, align 8, !dbg !3264, !tbaa !842
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3264
  %71 = load ptr, ptr %70, align 8, !dbg !3264, !tbaa !842
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3264
  br label %147, !dbg !3265

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.13.108, i32 noundef 5) #39, !dbg !3266
  %75 = load ptr, ptr %4, align 8, !dbg !3266, !tbaa !842
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3266
  %77 = load ptr, ptr %76, align 8, !dbg !3266, !tbaa !842
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3266
  %79 = load ptr, ptr %78, align 8, !dbg !3266, !tbaa !842
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3266
  %81 = load ptr, ptr %80, align 8, !dbg !3266, !tbaa !842
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3266
  %83 = load ptr, ptr %82, align 8, !dbg !3266, !tbaa !842
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3266
  %85 = load ptr, ptr %84, align 8, !dbg !3266, !tbaa !842
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3266
  %87 = load ptr, ptr %86, align 8, !dbg !3266, !tbaa !842
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3266
  br label %147, !dbg !3267

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.14.109, i32 noundef 5) #39, !dbg !3268
  %91 = load ptr, ptr %4, align 8, !dbg !3268, !tbaa !842
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3268
  %93 = load ptr, ptr %92, align 8, !dbg !3268, !tbaa !842
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3268
  %95 = load ptr, ptr %94, align 8, !dbg !3268, !tbaa !842
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3268
  %97 = load ptr, ptr %96, align 8, !dbg !3268, !tbaa !842
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3268
  %99 = load ptr, ptr %98, align 8, !dbg !3268, !tbaa !842
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3268
  %101 = load ptr, ptr %100, align 8, !dbg !3268, !tbaa !842
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3268
  %103 = load ptr, ptr %102, align 8, !dbg !3268, !tbaa !842
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3268
  %105 = load ptr, ptr %104, align 8, !dbg !3268, !tbaa !842
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3268
  br label %147, !dbg !3269

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.15.110, i32 noundef 5) #39, !dbg !3270
  %109 = load ptr, ptr %4, align 8, !dbg !3270, !tbaa !842
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3270
  %111 = load ptr, ptr %110, align 8, !dbg !3270, !tbaa !842
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3270
  %113 = load ptr, ptr %112, align 8, !dbg !3270, !tbaa !842
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3270
  %115 = load ptr, ptr %114, align 8, !dbg !3270, !tbaa !842
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3270
  %117 = load ptr, ptr %116, align 8, !dbg !3270, !tbaa !842
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3270
  %119 = load ptr, ptr %118, align 8, !dbg !3270, !tbaa !842
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3270
  %121 = load ptr, ptr %120, align 8, !dbg !3270, !tbaa !842
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3270
  %123 = load ptr, ptr %122, align 8, !dbg !3270, !tbaa !842
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3270
  %125 = load ptr, ptr %124, align 8, !dbg !3270, !tbaa !842
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3270
  br label %147, !dbg !3271

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.16.111, i32 noundef 5) #39, !dbg !3272
  %129 = load ptr, ptr %4, align 8, !dbg !3272, !tbaa !842
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3272
  %131 = load ptr, ptr %130, align 8, !dbg !3272, !tbaa !842
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3272
  %133 = load ptr, ptr %132, align 8, !dbg !3272, !tbaa !842
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3272
  %135 = load ptr, ptr %134, align 8, !dbg !3272, !tbaa !842
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3272
  %137 = load ptr, ptr %136, align 8, !dbg !3272, !tbaa !842
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3272
  %139 = load ptr, ptr %138, align 8, !dbg !3272, !tbaa !842
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3272
  %141 = load ptr, ptr %140, align 8, !dbg !3272, !tbaa !842
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3272
  %143 = load ptr, ptr %142, align 8, !dbg !3272, !tbaa !842
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3272
  %145 = load ptr, ptr %144, align 8, !dbg !3272, !tbaa !842
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3272
  br label %147, !dbg !3273

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3275 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %1, metadata !3280, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %2, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata ptr %4, metadata !3283, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 0, metadata !3284, metadata !DIExpression()), !dbg !3285
  br label %6, !dbg !3286

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3288
  call void @llvm.dbg.value(metadata i64 %7, metadata !3284, metadata !DIExpression()), !dbg !3285
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3289
  %9 = load ptr, ptr %8, align 8, !dbg !3289, !tbaa !842
  %10 = icmp eq ptr %9, null, !dbg !3291
  %11 = add i64 %7, 1, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %11, metadata !3284, metadata !DIExpression()), !dbg !3285
  br i1 %10, label %12, label %6, !dbg !3291, !llvm.loop !3293

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3295
  ret void, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3297 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3309, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %1, metadata !3310, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %2, metadata !3311, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %3, metadata !3312, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %4, metadata !3313, metadata !DIExpression()), !dbg !3317
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3318
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 0, metadata !3314, metadata !DIExpression()), !dbg !3317
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3314, metadata !DIExpression()), !dbg !3317
  %10 = icmp ult i32 %9, 41, !dbg !3320
  br i1 %10, label %11, label %16, !dbg !3320

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3320
  %13 = zext i32 %9 to i64, !dbg !3320
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3320
  %15 = add nuw nsw i32 %9, 8, !dbg !3320
  store i32 %15, ptr %4, align 8, !dbg !3320
  br label %19, !dbg !3320

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3320
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3320
  store ptr %18, ptr %7, align 8, !dbg !3320
  br label %19, !dbg !3320

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3320
  %22 = load ptr, ptr %21, align 8, !dbg !3320
  store ptr %22, ptr %6, align 16, !dbg !3323, !tbaa !842
  %23 = icmp eq ptr %22, null, !dbg !3324
  br i1 %23, label %128, label %24, !dbg !3325

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 1, metadata !3314, metadata !DIExpression()), !dbg !3317
  %25 = icmp ult i32 %20, 41, !dbg !3320
  br i1 %25, label %29, label %26, !dbg !3320

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3320
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3320
  store ptr %28, ptr %7, align 8, !dbg !3320
  br label %34, !dbg !3320

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3320
  %31 = zext i32 %20 to i64, !dbg !3320
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3320
  %33 = add nuw nsw i32 %20, 8, !dbg !3320
  store i32 %33, ptr %4, align 8, !dbg !3320
  br label %34, !dbg !3320

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3320
  %37 = load ptr, ptr %36, align 8, !dbg !3320
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3326
  store ptr %37, ptr %38, align 8, !dbg !3323, !tbaa !842
  %39 = icmp eq ptr %37, null, !dbg !3324
  br i1 %39, label %128, label %40, !dbg !3325

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 2, metadata !3314, metadata !DIExpression()), !dbg !3317
  %41 = icmp ult i32 %35, 41, !dbg !3320
  br i1 %41, label %45, label %42, !dbg !3320

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3320
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3320
  store ptr %44, ptr %7, align 8, !dbg !3320
  br label %50, !dbg !3320

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3320
  %47 = zext i32 %35 to i64, !dbg !3320
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3320
  %49 = add nuw nsw i32 %35, 8, !dbg !3320
  store i32 %49, ptr %4, align 8, !dbg !3320
  br label %50, !dbg !3320

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3320
  %53 = load ptr, ptr %52, align 8, !dbg !3320
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3326
  store ptr %53, ptr %54, align 16, !dbg !3323, !tbaa !842
  %55 = icmp eq ptr %53, null, !dbg !3324
  br i1 %55, label %128, label %56, !dbg !3325

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 3, metadata !3314, metadata !DIExpression()), !dbg !3317
  %57 = icmp ult i32 %51, 41, !dbg !3320
  br i1 %57, label %61, label %58, !dbg !3320

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3320
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3320
  store ptr %60, ptr %7, align 8, !dbg !3320
  br label %66, !dbg !3320

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3320
  %63 = zext i32 %51 to i64, !dbg !3320
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3320
  %65 = add nuw nsw i32 %51, 8, !dbg !3320
  store i32 %65, ptr %4, align 8, !dbg !3320
  br label %66, !dbg !3320

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3320
  %69 = load ptr, ptr %68, align 8, !dbg !3320
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3326
  store ptr %69, ptr %70, align 8, !dbg !3323, !tbaa !842
  %71 = icmp eq ptr %69, null, !dbg !3324
  br i1 %71, label %128, label %72, !dbg !3325

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 4, metadata !3314, metadata !DIExpression()), !dbg !3317
  %73 = icmp ult i32 %67, 41, !dbg !3320
  br i1 %73, label %77, label %74, !dbg !3320

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3320
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3320
  store ptr %76, ptr %7, align 8, !dbg !3320
  br label %82, !dbg !3320

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3320
  %79 = zext i32 %67 to i64, !dbg !3320
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3320
  %81 = add nuw nsw i32 %67, 8, !dbg !3320
  store i32 %81, ptr %4, align 8, !dbg !3320
  br label %82, !dbg !3320

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3320
  %85 = load ptr, ptr %84, align 8, !dbg !3320
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3326
  store ptr %85, ptr %86, align 16, !dbg !3323, !tbaa !842
  %87 = icmp eq ptr %85, null, !dbg !3324
  br i1 %87, label %128, label %88, !dbg !3325

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3314, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 5, metadata !3314, metadata !DIExpression()), !dbg !3317
  %89 = icmp ult i32 %83, 41, !dbg !3320
  br i1 %89, label %93, label %90, !dbg !3320

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3320
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3320
  store ptr %92, ptr %7, align 8, !dbg !3320
  br label %98, !dbg !3320

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3320
  %95 = zext i32 %83 to i64, !dbg !3320
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3320
  %97 = add nuw nsw i32 %83, 8, !dbg !3320
  store i32 %97, ptr %4, align 8, !dbg !3320
  br label %98, !dbg !3320

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3320
  %100 = load ptr, ptr %99, align 8, !dbg !3320
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3326
  store ptr %100, ptr %101, align 8, !dbg !3323, !tbaa !842
  %102 = icmp eq ptr %100, null, !dbg !3324
  br i1 %102, label %128, label %103, !dbg !3325

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3314, metadata !DIExpression()), !dbg !3317
  %104 = load ptr, ptr %7, align 8, !dbg !3320
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3320
  store ptr %105, ptr %7, align 8, !dbg !3320
  %106 = load ptr, ptr %104, align 8, !dbg !3320
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3326
  store ptr %106, ptr %107, align 16, !dbg !3323, !tbaa !842
  %108 = icmp eq ptr %106, null, !dbg !3324
  br i1 %108, label %128, label %109, !dbg !3325

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3314, metadata !DIExpression()), !dbg !3317
  %110 = load ptr, ptr %7, align 8, !dbg !3320
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3320
  store ptr %111, ptr %7, align 8, !dbg !3320
  %112 = load ptr, ptr %110, align 8, !dbg !3320
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3326
  store ptr %112, ptr %113, align 8, !dbg !3323, !tbaa !842
  %114 = icmp eq ptr %112, null, !dbg !3324
  br i1 %114, label %128, label %115, !dbg !3325

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3314, metadata !DIExpression()), !dbg !3317
  %116 = load ptr, ptr %7, align 8, !dbg !3320
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3320
  store ptr %117, ptr %7, align 8, !dbg !3320
  %118 = load ptr, ptr %116, align 8, !dbg !3320
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3326
  store ptr %118, ptr %119, align 16, !dbg !3323, !tbaa !842
  %120 = icmp eq ptr %118, null, !dbg !3324
  br i1 %120, label %128, label %121, !dbg !3325

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3314, metadata !DIExpression()), !dbg !3317
  %122 = load ptr, ptr %7, align 8, !dbg !3320
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3320
  store ptr %123, ptr %7, align 8, !dbg !3320
  %124 = load ptr, ptr %122, align 8, !dbg !3320
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3326
  store ptr %124, ptr %125, align 8, !dbg !3323, !tbaa !842
  %126 = icmp eq ptr %124, null, !dbg !3324
  %127 = select i1 %126, i64 9, i64 10, !dbg !3325
  br label %128, !dbg !3325

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3327
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3328
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3329
  ret void, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3330 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3334, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %1, metadata !3335, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %2, metadata !3336, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %3, metadata !3337, metadata !DIExpression()), !dbg !3343
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #39, !dbg !3344
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3338, metadata !DIExpression()), !dbg !3345
  call void @llvm.va_start(ptr nonnull %5), !dbg !3346
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3347
  call void @llvm.va_end(ptr nonnull %5), !dbg !3348
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #39, !dbg !3349
  ret void, !dbg !3349
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3350 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3351, !tbaa !842
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.99, ptr noundef %1), !dbg !3351
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.17.116, i32 noundef 5) #39, !dbg !3352
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.117) #39, !dbg !3352
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.19.118, i32 noundef 5) #39, !dbg !3353
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.119, ptr noundef nonnull @.str.21.120) #39, !dbg !3353
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.97, ptr noundef nonnull @.str.22.121, i32 noundef 5) #39, !dbg !3354
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.122) #39, !dbg !3354
  ret void, !dbg !3355
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3362, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %2, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %2, metadata !3369, metadata !DIExpression()), !dbg !3370
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3372
  call void @llvm.dbg.value(metadata ptr %4, metadata !3373, metadata !DIExpression()), !dbg !3378
  %5 = icmp eq ptr %4, null, !dbg !3380
  br i1 %5, label %6, label %7, !dbg !3382

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3383
  unreachable, !dbg !3383

7:                                                ; preds = %3
  ret ptr %4, !dbg !3384
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3366 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %2, metadata !3369, metadata !DIExpression()), !dbg !3385
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3386
  call void @llvm.dbg.value(metadata ptr %4, metadata !3373, metadata !DIExpression()), !dbg !3387
  %5 = icmp eq ptr %4, null, !dbg !3389
  br i1 %5, label %6, label %7, !dbg !3390

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3391
  unreachable, !dbg !3391

7:                                                ; preds = %3
  ret ptr %4, !dbg !3392
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3393 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3396
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3397
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3398
  %3 = icmp eq ptr %2, null, !dbg !3400
  br i1 %3, label %4, label %5, !dbg !3401

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3402
  unreachable, !dbg !3402

5:                                                ; preds = %1
  ret ptr %2, !dbg !3403
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3404 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %0, metadata !3410, metadata !DIExpression()), !dbg !3414
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3416
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3417
  %3 = icmp eq ptr %2, null, !dbg !3419
  br i1 %3, label %4, label %5, !dbg !3420

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3421
  unreachable, !dbg !3421

5:                                                ; preds = %1
  ret ptr %2, !dbg !3422
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3423 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3429
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3431
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3432
  %3 = icmp eq ptr %2, null, !dbg !3434
  br i1 %3, label %4, label %5, !dbg !3435

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3436
  unreachable, !dbg !3436

5:                                                ; preds = %1
  ret ptr %2, !dbg !3437
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3450
  %3 = icmp eq i64 %1, 0, !dbg !3452
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3452
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3453
  call void @llvm.dbg.value(metadata ptr %5, metadata !3373, metadata !DIExpression()), !dbg !3454
  %6 = icmp eq ptr %5, null, !dbg !3456
  br i1 %6, label %7, label %8, !dbg !3457

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3458
  unreachable, !dbg !3458

8:                                                ; preds = %2
  ret ptr %5, !dbg !3459
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3460 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3474
  %3 = icmp eq i64 %1, 0, !dbg !3476
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3476
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3477
  call void @llvm.dbg.value(metadata ptr %5, metadata !3373, metadata !DIExpression()), !dbg !3478
  %6 = icmp eq ptr %5, null, !dbg !3480
  br i1 %6, label %7, label %8, !dbg !3481

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3482
  unreachable, !dbg !3482

8:                                                ; preds = %2
  ret ptr %5, !dbg !3483
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %2, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata ptr %0, metadata !3492, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %1, metadata !3495, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %2, metadata !3496, metadata !DIExpression()), !dbg !3497
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3499
  call void @llvm.dbg.value(metadata ptr %4, metadata !3373, metadata !DIExpression()), !dbg !3500
  %5 = icmp eq ptr %4, null, !dbg !3502
  br i1 %5, label %6, label %7, !dbg !3503

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3504
  unreachable, !dbg !3504

7:                                                ; preds = %3
  ret ptr %4, !dbg !3505
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3506 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3510, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %1, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr null, metadata !3365, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %0, metadata !3368, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %1, metadata !3369, metadata !DIExpression()), !dbg !3513
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3515
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3516
  %4 = icmp eq ptr %3, null, !dbg !3518
  br i1 %4, label %5, label %6, !dbg !3519

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3520
  unreachable, !dbg !3520

6:                                                ; preds = %2
  ret ptr %3, !dbg !3521
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3522 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3526, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata ptr null, metadata !3488, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %0, metadata !3489, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %1, metadata !3490, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr null, metadata !3492, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %0, metadata !3495, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %1, metadata !3496, metadata !DIExpression()), !dbg !3531
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3533
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3534
  %4 = icmp eq ptr %3, null, !dbg !3536
  br i1 %4, label %5, label %6, !dbg !3537

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3538
  unreachable, !dbg !3538

6:                                                ; preds = %2
  ret ptr %3, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr %1, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %1, metadata !779, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 1, metadata !780, metadata !DIExpression()), !dbg !3547
  %3 = load i64, ptr %1, align 8, !dbg !3549, !tbaa !2655
  call void @llvm.dbg.value(metadata i64 %3, metadata !781, metadata !DIExpression()), !dbg !3547
  %4 = icmp eq ptr %0, null, !dbg !3550
  br i1 %4, label %5, label %8, !dbg !3552

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3553
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3556
  br label %15, !dbg !3556

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3557
  %10 = add nuw i64 %9, 1, !dbg !3557
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3557
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3557
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %13, metadata !781, metadata !DIExpression()), !dbg !3547
  br i1 %12, label %14, label %15, !dbg !3560

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3561
  unreachable, !dbg !3561

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3547
  call void @llvm.dbg.value(metadata i64 %16, metadata !781, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %16, metadata !3368, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 1, metadata !3369, metadata !DIExpression()), !dbg !3562
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %17, metadata !3373, metadata !DIExpression()), !dbg !3565
  %18 = icmp eq ptr %17, null, !dbg !3567
  br i1 %18, label %19, label %20, !dbg !3568

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3569
  unreachable, !dbg !3569

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !778, metadata !DIExpression()), !dbg !3547
  store i64 %16, ptr %1, align 8, !dbg !3570, !tbaa !2655
  ret ptr %17, !dbg !3571
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !773 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata ptr %1, metadata !779, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %2, metadata !780, metadata !DIExpression()), !dbg !3572
  %4 = load i64, ptr %1, align 8, !dbg !3573, !tbaa !2655
  call void @llvm.dbg.value(metadata i64 %4, metadata !781, metadata !DIExpression()), !dbg !3572
  %5 = icmp eq ptr %0, null, !dbg !3574
  br i1 %5, label %6, label %13, !dbg !3575

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3576
  br i1 %7, label %8, label %20, !dbg !3577

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %9, metadata !781, metadata !DIExpression()), !dbg !3572
  %10 = icmp ugt i64 %2, 128, !dbg !3580
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %12, metadata !781, metadata !DIExpression()), !dbg !3572
  br label %20, !dbg !3582

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3583
  %15 = add nuw i64 %14, 1, !dbg !3583
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3583
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3583
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %18, metadata !781, metadata !DIExpression()), !dbg !3572
  br i1 %17, label %19, label %20, !dbg !3584

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3585
  unreachable, !dbg !3585

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3572
  call void @llvm.dbg.value(metadata i64 %21, metadata !781, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata ptr %0, metadata !3365, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %21, metadata !3368, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %2, metadata !3369, metadata !DIExpression()), !dbg !3586
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %22, metadata !3373, metadata !DIExpression()), !dbg !3589
  %23 = icmp eq ptr %22, null, !dbg !3591
  br i1 %23, label %24, label %25, !dbg !3592

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3593
  unreachable, !dbg !3593

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !778, metadata !DIExpression()), !dbg !3572
  store i64 %21, ptr %1, align 8, !dbg !3594, !tbaa !2655
  ret ptr %22, !dbg !3595
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !785 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !793, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %1, metadata !794, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %2, metadata !795, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %3, metadata !796, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %4, metadata !797, metadata !DIExpression()), !dbg !3596
  %6 = load i64, ptr %1, align 8, !dbg !3597, !tbaa !2655
  call void @llvm.dbg.value(metadata i64 %6, metadata !798, metadata !DIExpression()), !dbg !3596
  %7 = ashr i64 %6, 1, !dbg !3598
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3598
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3598
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3598
  call void @llvm.dbg.value(metadata i64 %10, metadata !799, metadata !DIExpression()), !dbg !3596
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %11, metadata !799, metadata !DIExpression()), !dbg !3596
  %12 = icmp sgt i64 %3, -1, !dbg !3601
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3603
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %15, metadata !799, metadata !DIExpression()), !dbg !3596
  %16 = icmp slt i64 %4, 0, !dbg !3604
  br i1 %16, label %17, label %30, !dbg !3604

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3604
  br i1 %18, label %19, label %24, !dbg !3604

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3604
  %21 = udiv i64 9223372036854775807, %20, !dbg !3604
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3604
  br i1 %23, label %46, label %43, !dbg !3604

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3604
  br i1 %25, label %43, label %26, !dbg !3604

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3604
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3604
  %29 = icmp ult i64 %28, %15, !dbg !3604
  br i1 %29, label %46, label %43, !dbg !3604

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3604
  br i1 %31, label %43, label %32, !dbg !3604

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3604
  br i1 %33, label %34, label %40, !dbg !3604

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3604
  br i1 %35, label %43, label %36, !dbg !3604

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3604
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3604
  %39 = icmp ult i64 %38, %4, !dbg !3604
  br i1 %39, label %46, label %43, !dbg !3604

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3604
  br i1 %42, label %46, label %43, !dbg !3604

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !800, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3596
  %44 = mul i64 %15, %4, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %44, metadata !800, metadata !DIExpression()), !dbg !3596
  %45 = icmp slt i64 %44, 128, !dbg !3604
  br i1 %45, label %46, label %51, !dbg !3604

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !801, metadata !DIExpression()), !dbg !3596
  %48 = sdiv i64 %47, %4, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %48, metadata !799, metadata !DIExpression()), !dbg !3596
  %49 = srem i64 %47, %4, !dbg !3608
  %50 = sub nsw i64 %47, %49, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %50, metadata !800, metadata !DIExpression()), !dbg !3596
  br label %51, !dbg !3610

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3596
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3596
  call void @llvm.dbg.value(metadata i64 %53, metadata !800, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %52, metadata !799, metadata !DIExpression()), !dbg !3596
  %54 = icmp eq ptr %0, null, !dbg !3611
  br i1 %54, label %55, label %56, !dbg !3613

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3614, !tbaa !2655
  br label %56, !dbg !3615

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3616
  %58 = icmp slt i64 %57, %2, !dbg !3618
  br i1 %58, label %59, label %96, !dbg !3619

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3620
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3620
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %62, metadata !799, metadata !DIExpression()), !dbg !3596
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3621
  br i1 %65, label %95, label %66, !dbg !3621

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3622

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3622
  br i1 %68, label %69, label %74, !dbg !3622

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3622
  %71 = udiv i64 9223372036854775807, %70, !dbg !3622
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3622
  br i1 %73, label %95, label %93, !dbg !3622

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3622
  br i1 %75, label %93, label %76, !dbg !3622

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3622
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3622
  %79 = icmp ult i64 %78, %62, !dbg !3622
  br i1 %79, label %95, label %93, !dbg !3622

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3622
  br i1 %81, label %93, label %82, !dbg !3622

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3622
  br i1 %83, label %84, label %90, !dbg !3622

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3622
  br i1 %85, label %93, label %86, !dbg !3622

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3622
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3622
  %89 = icmp ult i64 %88, %4, !dbg !3622
  br i1 %89, label %95, label %93, !dbg !3622

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3622
  br i1 %92, label %95, label %93, !dbg !3622

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !800, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3596
  %94 = mul i64 %62, %4, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %94, metadata !800, metadata !DIExpression()), !dbg !3596
  br label %96, !dbg !3623

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #41, !dbg !3624
  unreachable, !dbg !3624

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3596
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3596
  call void @llvm.dbg.value(metadata i64 %98, metadata !800, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %97, metadata !799, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %98, metadata !3443, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %98, metadata !3449, metadata !DIExpression()), !dbg !3627
  %99 = icmp eq i64 %98, 0, !dbg !3629
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3629
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #46, !dbg !3630
  call void @llvm.dbg.value(metadata ptr %101, metadata !3373, metadata !DIExpression()), !dbg !3631
  %102 = icmp eq ptr %101, null, !dbg !3633
  br i1 %102, label %103, label %104, !dbg !3634

103:                                              ; preds = %96
  tail call void @xalloc_die() #41, !dbg !3635
  unreachable, !dbg !3635

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !793, metadata !DIExpression()), !dbg !3596
  store i64 %97, ptr %1, align 8, !dbg !3636, !tbaa !2655
  ret ptr %101, !dbg !3637
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3638 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i64 %0, metadata !3642, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 1, metadata !3645, metadata !DIExpression()), !dbg !3646
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3648
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3649
  %3 = icmp eq ptr %2, null, !dbg !3651
  br i1 %3, label %4, label %5, !dbg !3652

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3653
  unreachable, !dbg !3653

5:                                                ; preds = %1
  ret ptr %2, !dbg !3654
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3655 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3643 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3642, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3656
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3657
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3658
  %4 = icmp eq ptr %3, null, !dbg !3660
  br i1 %4, label %5, label %6, !dbg !3661

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3662
  unreachable, !dbg !3662

6:                                                ; preds = %2
  ret ptr %3, !dbg !3663
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3664 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3666, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %0, metadata !3668, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 1, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %0, metadata !3674, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 1, metadata !3677, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %0, metadata !3674, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 1, metadata !3677, metadata !DIExpression()), !dbg !3678
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3680
  call void @llvm.dbg.value(metadata ptr %2, metadata !3373, metadata !DIExpression()), !dbg !3681
  %3 = icmp eq ptr %2, null, !dbg !3683
  br i1 %3, label %4, label %5, !dbg !3684

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3685
  unreachable, !dbg !3685

5:                                                ; preds = %1
  ret ptr %2, !dbg !3686
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3669 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3668, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %1, metadata !3671, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %0, metadata !3674, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %1, metadata !3677, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %0, metadata !3674, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %1, metadata !3677, metadata !DIExpression()), !dbg !3688
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3690
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3691
  %4 = icmp eq ptr %3, null, !dbg !3693
  br i1 %4, label %5, label %6, !dbg !3694

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3695
  unreachable, !dbg !3695

6:                                                ; preds = %2
  ret ptr %3, !dbg !3696
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3697 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3701, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %1, metadata !3702, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3704
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3707
  %4 = icmp eq ptr %3, null, !dbg !3709
  br i1 %4, label %5, label %6, !dbg !3710

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3711
  unreachable, !dbg !3711

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3712, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3719
  ret ptr %3, !dbg !3720
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3721 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %1, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %1, metadata !3408, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i64 %1, metadata !3410, metadata !DIExpression()), !dbg !3730
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3732
  call void @llvm.dbg.value(metadata ptr %3, metadata !3373, metadata !DIExpression()), !dbg !3733
  %4 = icmp eq ptr %3, null, !dbg !3735
  br i1 %4, label %5, label %6, !dbg !3736

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3737
  unreachable, !dbg !3737

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3712, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3740
  ret ptr %3, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %1, metadata !3747, metadata !DIExpression()), !dbg !3749
  %3 = add nsw i64 %1, 1, !dbg !3750
  call void @llvm.dbg.value(metadata i64 %3, metadata !3408, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %3, metadata !3410, metadata !DIExpression()), !dbg !3753
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3755
  call void @llvm.dbg.value(metadata ptr %4, metadata !3373, metadata !DIExpression()), !dbg !3756
  %5 = icmp eq ptr %4, null, !dbg !3758
  br i1 %5, label %6, label %7, !dbg !3759

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3760
  unreachable, !dbg !3760

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3748, metadata !DIExpression()), !dbg !3749
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3761
  store i8 0, ptr %8, align 1, !dbg !3762, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %4, metadata !3712, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !3763
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3765
  ret ptr %4, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3767 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3769, metadata !DIExpression()), !dbg !3770
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3771
  %3 = add i64 %2, 1, !dbg !3772
  call void @llvm.dbg.value(metadata ptr %0, metadata !3701, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %3, metadata !3702, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %3, metadata !3395, metadata !DIExpression()), !dbg !3775
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3777
  call void @llvm.dbg.value(metadata ptr %4, metadata !3373, metadata !DIExpression()), !dbg !3778
  %5 = icmp eq ptr %4, null, !dbg !3780
  br i1 %5, label %6, label %7, !dbg !3781

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3782
  unreachable, !dbg !3782

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3712, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %3, metadata !3716, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3785
  ret ptr %4, !dbg !3786
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3787 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3791, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %1, metadata !3789, metadata !DIExpression()), !dbg !3792
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #39, !dbg !3791
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #39, !dbg !3791
  %3 = icmp eq i32 %1, 0, !dbg !3791
  tail call void @llvm.assume(i1 %3), !dbg !3791
  tail call void @abort() #41, !dbg !3793
  unreachable, !dbg !3793
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !3794 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3796, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %0, metadata !3797, metadata !DIExpression()), !dbg !3801
  br label %2, !dbg !3802

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3801
  call void @llvm.dbg.value(metadata ptr %3, metadata !3797, metadata !DIExpression()), !dbg !3801
  %4 = load i8, ptr %3, align 1, !dbg !3803, !tbaa !920
  %5 = icmp eq i8 %4, 47, !dbg !3803
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3804
  call void @llvm.dbg.value(metadata ptr %6, metadata !3797, metadata !DIExpression()), !dbg !3801
  br i1 %5, label %2, label %7, !dbg !3802, !llvm.loop !3805

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3806
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3808
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3801
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3809
  call void @llvm.dbg.value(metadata ptr %11, metadata !3799, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8 %10, metadata !3798, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %9, metadata !3797, metadata !DIExpression()), !dbg !3801
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3811

12:                                               ; preds = %7
  ret ptr %9, !dbg !3812

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3813
  %15 = icmp eq i8 %14, 0, !dbg !3813
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3817
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3817
  br label %18, !dbg !3817

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3801
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3801
  call void @llvm.dbg.value(metadata i8 %20, metadata !3798, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %19, metadata !3797, metadata !DIExpression()), !dbg !3801
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3818
  call void @llvm.dbg.value(metadata ptr %21, metadata !3799, metadata !DIExpression()), !dbg !3810
  %22 = load i8, ptr %21, align 1, !dbg !3806, !tbaa !920
  br label %7, !dbg !3819, !llvm.loop !3820
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3822 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3826, metadata !DIExpression()), !dbg !3829
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %2, metadata !3827, metadata !DIExpression()), !dbg !3829
  %3 = icmp ne i64 %2, 0, !dbg !3832
  %4 = zext i1 %3 to i64, !dbg !3832
  br label %5, !dbg !3832

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3833
  call void @llvm.dbg.value(metadata i64 %6, metadata !3827, metadata !DIExpression()), !dbg !3829
  %7 = icmp ugt i64 %6, 1, !dbg !3834
  br i1 %7, label %8, label %13, !dbg !3836

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3837
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3837
  %11 = load i8, ptr %10, align 1, !dbg !3837, !tbaa !920
  %12 = icmp eq i8 %11, 47, !dbg !3837
  br i1 %12, label %5, label %13, !dbg !3838, !llvm.loop !3839

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3833
  call void @llvm.dbg.value(metadata i64 0, metadata !3828, metadata !DIExpression()), !dbg !3829
  ret i64 %14, !dbg !3841
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3885
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3886
  call void @llvm.dbg.value(metadata i1 poison, metadata !3881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3885
  call void @llvm.dbg.value(metadata ptr %0, metadata !3887, metadata !DIExpression()), !dbg !3890
  %3 = load i32, ptr %0, align 8, !dbg !3892, !tbaa !1201
  %4 = and i32 %3, 32, !dbg !3893
  %5 = icmp eq i32 %4, 0, !dbg !3893
  call void @llvm.dbg.value(metadata i1 %5, metadata !3883, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3885
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3894
  %7 = icmp eq i32 %6, 0, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %7, metadata !3884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3885
  br i1 %5, label %8, label %18, !dbg !3896

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3898
  call void @llvm.dbg.value(metadata i1 %9, metadata !3881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3885
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3899
  %11 = xor i1 %7, true, !dbg !3899
  %12 = sext i1 %11 to i32, !dbg !3899
  br i1 %10, label %21, label %13, !dbg !3899

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3900
  %15 = load i32, ptr %14, align 4, !dbg !3900, !tbaa !911
  %16 = icmp ne i32 %15, 9, !dbg !3901
  %17 = sext i1 %16 to i32, !dbg !3902
  br label %21, !dbg !3902

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3903

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3905
  store i32 0, ptr %20, align 4, !dbg !3907, !tbaa !911
  br label %21, !dbg !3905

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3885
  ret i32 %22, !dbg !3908
}

; Function Attrs: nounwind
declare !dbg !3909 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3913 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3951, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3952, metadata !DIExpression()), !dbg !3955
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3956
  call void @llvm.dbg.value(metadata i32 %2, metadata !3953, metadata !DIExpression()), !dbg !3955
  %3 = icmp slt i32 %2, 0, !dbg !3957
  br i1 %3, label %4, label %6, !dbg !3959

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3960
  br label %24, !dbg !3961

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3962
  %8 = icmp eq i32 %7, 0, !dbg !3962
  br i1 %8, label %13, label %9, !dbg !3964

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3965
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3966
  %12 = icmp eq i64 %11, -1, !dbg !3967
  br i1 %12, label %16, label %13, !dbg !3968

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3969
  %15 = icmp eq i32 %14, 0, !dbg !3969
  br i1 %15, label %16, label %18, !dbg !3970

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3952, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3954, metadata !DIExpression()), !dbg !3955
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3971
  call void @llvm.dbg.value(metadata i32 %17, metadata !3954, metadata !DIExpression()), !dbg !3955
  br label %24, !dbg !3972

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3973
  %20 = load i32, ptr %19, align 4, !dbg !3973, !tbaa !911
  call void @llvm.dbg.value(metadata i32 %20, metadata !3952, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3954, metadata !DIExpression()), !dbg !3955
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3971
  call void @llvm.dbg.value(metadata i32 %21, metadata !3954, metadata !DIExpression()), !dbg !3955
  %22 = icmp eq i32 %20, 0, !dbg !3974
  br i1 %22, label %24, label %23, !dbg !3972

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3976, !tbaa !911
  call void @llvm.dbg.value(metadata i32 -1, metadata !3954, metadata !DIExpression()), !dbg !3955
  br label %24, !dbg !3978

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3955
  ret i32 %25, !dbg !3979
}

; Function Attrs: nofree nounwind
declare !dbg !3980 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3981 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3982 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3983 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3986 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4025
  %2 = icmp eq ptr %0, null, !dbg !4026
  br i1 %2, label %6, label %3, !dbg !4028

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4029
  %5 = icmp eq i32 %4, 0, !dbg !4029
  br i1 %5, label %6, label %8, !dbg !4030

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4031
  br label %16, !dbg !4032

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4033, metadata !DIExpression()), !dbg !4038
  %9 = load i32, ptr %0, align 8, !dbg !4040, !tbaa !1201
  %10 = and i32 %9, 256, !dbg !4042
  %11 = icmp eq i32 %10, 0, !dbg !4042
  br i1 %11, label %14, label %12, !dbg !4043

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4044
  br label %14, !dbg !4044

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4045
  br label %16, !dbg !4046

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4025
  ret i32 %17, !dbg !4047
}

; Function Attrs: nofree nounwind
declare !dbg !4048 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4049 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4088, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %1, metadata !4089, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 %2, metadata !4090, metadata !DIExpression()), !dbg !4094
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4095
  %5 = load ptr, ptr %4, align 8, !dbg !4095, !tbaa !4096
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4097
  %7 = load ptr, ptr %6, align 8, !dbg !4097, !tbaa !4098
  %8 = icmp eq ptr %5, %7, !dbg !4099
  br i1 %8, label %9, label %27, !dbg !4100

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4101
  %11 = load ptr, ptr %10, align 8, !dbg !4101, !tbaa !1425
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4102
  %13 = load ptr, ptr %12, align 8, !dbg !4102, !tbaa !4103
  %14 = icmp eq ptr %11, %13, !dbg !4104
  br i1 %14, label %15, label %27, !dbg !4105

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4106
  %17 = load ptr, ptr %16, align 8, !dbg !4106, !tbaa !4107
  %18 = icmp eq ptr %17, null, !dbg !4108
  br i1 %18, label %19, label %27, !dbg !4109

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4110
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4111
  call void @llvm.dbg.value(metadata i64 %21, metadata !4091, metadata !DIExpression()), !dbg !4112
  %22 = icmp eq i64 %21, -1, !dbg !4113
  br i1 %22, label %29, label %23, !dbg !4115

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4116, !tbaa !1201
  %25 = and i32 %24, -17, !dbg !4116
  store i32 %25, ptr %0, align 8, !dbg !4116, !tbaa !1201
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4117
  store i64 %21, ptr %26, align 8, !dbg !4118, !tbaa !4119
  br label %29, !dbg !4120

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4121
  br label %29, !dbg !4122

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4094
  ret i32 %30, !dbg !4123
}

; Function Attrs: nofree nounwind
declare !dbg !4124 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4127 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4132, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %1, metadata !4133, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %2, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %3, metadata !4135, metadata !DIExpression()), !dbg !4137
  %5 = icmp eq ptr %1, null, !dbg !4138
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4140
  %7 = select i1 %5, ptr @.str.150, ptr %1, !dbg !4140
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4140
  call void @llvm.dbg.value(metadata i64 %8, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %7, metadata !4133, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata ptr %6, metadata !4132, metadata !DIExpression()), !dbg !4137
  %9 = icmp eq ptr %3, null, !dbg !4141
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4143
  call void @llvm.dbg.value(metadata ptr %10, metadata !4135, metadata !DIExpression()), !dbg !4137
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %11, metadata !4136, metadata !DIExpression()), !dbg !4137
  %12 = icmp ult i64 %11, -3, !dbg !4145
  br i1 %12, label %13, label %17, !dbg !4147

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4148
  %15 = icmp eq i32 %14, 0, !dbg !4148
  br i1 %15, label %16, label %29, !dbg !4149

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4150, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata ptr %10, metadata !4157, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i32 0, metadata !4160, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i64 8, metadata !4161, metadata !DIExpression()), !dbg !4162
  store i64 0, ptr %10, align 1, !dbg !4164
  br label %29, !dbg !4165

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4166
  br i1 %18, label %19, label %20, !dbg !4168

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4169
  unreachable, !dbg !4169

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4170

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #39, !dbg !4172
  br i1 %23, label %29, label %24, !dbg !4173

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4174
  br i1 %25, label %29, label %26, !dbg !4177

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4178, !tbaa !920
  %28 = zext i8 %27 to i32, !dbg !4179
  store i32 %28, ptr %6, align 4, !dbg !4180, !tbaa !911
  br label %29, !dbg !4181

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4137
  ret i64 %30, !dbg !4182
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4183 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4189 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %1, metadata !4192, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i64 %2, metadata !4193, metadata !DIExpression()), !dbg !4195
  %4 = icmp eq i64 %2, 0, !dbg !4196
  br i1 %4, label %8, label %5, !dbg !4196

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4196
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4196
  br i1 %7, label %13, label %8, !dbg !4196

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4195
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4195
  %9 = mul i64 %2, %1, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %9, metadata !4194, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i64 %9, metadata !4201, metadata !DIExpression()), !dbg !4202
  %10 = icmp eq i64 %9, 0, !dbg !4204
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4204
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !4205
  br label %15, !dbg !4206

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4194, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4195
  %14 = tail call ptr @__errno_location() #42, !dbg !4207
  store i32 12, ptr %14, align 4, !dbg !4209, !tbaa !911
  br label %15, !dbg !4210

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4195
  ret ptr %16, !dbg !4211
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4212 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4216, metadata !DIExpression()), !dbg !4221
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4217, metadata !DIExpression()), !dbg !4223
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4224
  %4 = icmp eq i32 %3, 0, !dbg !4224
  br i1 %4, label %5, label %12, !dbg !4226

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4227, metadata !DIExpression()), !dbg !4231
  %6 = load i16, ptr %2, align 16, !dbg !4234
  %7 = icmp eq i16 %6, 67, !dbg !4234
  br i1 %7, label %11, label %8, !dbg !4235

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4227, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata ptr @.str.1.155, metadata !4230, metadata !DIExpression()), !dbg !4236
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.155, i64 6), !dbg !4238
  %10 = icmp eq i32 %9, 0, !dbg !4239
  br i1 %10, label %11, label %12, !dbg !4240

11:                                               ; preds = %8, %5
  br label %12, !dbg !4241

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4221
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4242
  ret i1 %13, !dbg !4242
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4243 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4247, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %1, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %2, metadata !4249, metadata !DIExpression()), !dbg !4250
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4251
  ret i32 %4, !dbg !4252
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4257, metadata !DIExpression()), !dbg !4258
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4259
  ret ptr %2, !dbg !4260
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4263, metadata !DIExpression()), !dbg !4265
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %2, metadata !4264, metadata !DIExpression()), !dbg !4265
  ret ptr %2, !dbg !4267
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4270, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata ptr %1, metadata !4271, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %2, metadata !4272, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i32 %0, metadata !4263, metadata !DIExpression()), !dbg !4278
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4280
  call void @llvm.dbg.value(metadata ptr %4, metadata !4264, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %4, metadata !4273, metadata !DIExpression()), !dbg !4277
  %5 = icmp eq ptr %4, null, !dbg !4281
  br i1 %5, label %6, label %9, !dbg !4282

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4283
  br i1 %7, label %19, label %8, !dbg !4286

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4287, !tbaa !920
  br label %19, !dbg !4288

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4289
  call void @llvm.dbg.value(metadata i64 %10, metadata !4274, metadata !DIExpression()), !dbg !4290
  %11 = icmp ult i64 %10, %2, !dbg !4291
  br i1 %11, label %12, label %14, !dbg !4293

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4294
  call void @llvm.dbg.value(metadata ptr %1, metadata !4296, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr %4, metadata !4299, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %13, metadata !4300, metadata !DIExpression()), !dbg !4301
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4303
  br label %19, !dbg !4304

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4305
  br i1 %15, label %19, label %16, !dbg !4308

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4309
  call void @llvm.dbg.value(metadata ptr %1, metadata !4296, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata ptr %4, metadata !4299, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %17, metadata !4300, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4313
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4314
  store i8 0, ptr %18, align 1, !dbg !4315, !tbaa !920
  br label %19, !dbg !4316

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4317
  ret i32 %20, !dbg !4318
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
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!136, !386, !390, !405, !722, !461, !754, !756, !759, !761, !478, !498, !512, !560, !763, !714, !769, !803, !805, !807, !809, !811, !813, !738, !815, !818, !822, !824}
!llvm.ident = !{!826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826, !826}
!llvm.module.flags = !{!827, !828, !829, !830, !831, !832}

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
!404 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !405, file: !406, line: 66, type: !452, isLocal: false, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!407 = !{!178, !189}
!408 = !{!409, !411, !431, !433, !435, !437, !403, !439, !441, !443, !445, !450}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 272, type: !90, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "old_file_name", scope: !413, file: !406, line: 304, type: !134, isLocal: true, isDefinition: true)
!413 = distinct !DISubprogram(name: "verror_at_line", scope: !406, file: !406, line: 298, type: !414, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !424)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !184, !184, !134, !139, !134, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !418)
!418 = !{!419, !421, !422, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !417, file: !420, baseType: !139, size: 32)
!420 = !DIFile(filename: "lib/error.c", directory: "/src")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !417, file: !420, baseType: !139, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !417, file: !420, baseType: !178, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !417, file: !420, baseType: !178, size: 64, offset: 128)
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DILocalVariable(name: "status", arg: 1, scope: !413, file: !406, line: 298, type: !184)
!426 = !DILocalVariable(name: "errnum", arg: 2, scope: !413, file: !406, line: 298, type: !184)
!427 = !DILocalVariable(name: "file_name", arg: 3, scope: !413, file: !406, line: 298, type: !134)
!428 = !DILocalVariable(name: "line_number", arg: 4, scope: !413, file: !406, line: 298, type: !139)
!429 = !DILocalVariable(name: "message", arg: 5, scope: !413, file: !406, line: 298, type: !134)
!430 = !DILocalVariable(name: "args", arg: 6, scope: !413, file: !406, line: 298, type: !416)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "old_line_number", scope: !413, file: !406, line: 305, type: !139, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !406, line: 338, type: !197, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !229, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !406, line: 346, type: !204, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "error_message_count", scope: !405, file: !406, line: 69, type: !139, isLocal: false, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !405, file: !406, line: 295, type: !184, isLocal: false, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !224, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !406, line: 208, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 21)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !406, line: 214, type: !90, isLocal: true, isDefinition: true)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null}
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !457, file: !458, line: 506, type: !184, isLocal: true, isDefinition: true)
!457 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !458, file: !458, line: 485, type: !459, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !463)
!458 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!459 = !DISubroutineType(types: !460)
!460 = !{!184, !184, !184}
!461 = distinct !DICompileUnit(language: DW_LANG_C11, file: !458, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !462, splitDebugInlining: false, nameTableKind: None)
!462 = !{!455}
!463 = !{!464, !465, !466, !467, !470}
!464 = !DILocalVariable(name: "fd", arg: 1, scope: !457, file: !458, line: 485, type: !184)
!465 = !DILocalVariable(name: "target", arg: 2, scope: !457, file: !458, line: 485, type: !184)
!466 = !DILocalVariable(name: "result", scope: !457, file: !458, line: 487, type: !184)
!467 = !DILocalVariable(name: "flags", scope: !468, file: !458, line: 530, type: !184)
!468 = distinct !DILexicalBlock(scope: !469, file: !458, line: 529, column: 5)
!469 = distinct !DILexicalBlock(scope: !457, file: !458, line: 528, column: 7)
!470 = !DILocalVariable(name: "saved_errno", scope: !471, file: !458, line: 533, type: !184)
!471 = distinct !DILexicalBlock(scope: !472, file: !458, line: 532, column: 9)
!472 = distinct !DILexicalBlock(scope: !468, file: !458, line: 531, column: 11)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !475, line: 60, type: !204, isLocal: true, isDefinition: true)
!475 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "long_options", scope: !478, file: !475, line: 34, type: !486, isLocal: true, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !479, splitDebugInlining: false, nameTableKind: None)
!479 = !{!473, !480, !482, !484, !476}
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !475, line: 112, type: !44, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !475, line: 36, type: !90, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !475, line: 37, type: !229, isLocal: true, isDefinition: true)
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
!498 = distinct !DICompileUnit(language: DW_LANG_C11, file: !499, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !500, globals: !501, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!500 = !{!330}
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
!512 = distinct !DICompileUnit(language: DW_LANG_C11, file: !509, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !513, splitDebugInlining: false, nameTableKind: None)
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
!559 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !560, file: !539, line: 76, type: !632, isLocal: false, isDefinition: true)
!560 = distinct !DICompileUnit(language: DW_LANG_C11, file: !539, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !561, retainedTypes: !567, globals: !568, splitDebugInlining: false, nameTableKind: None)
!561 = !{!148, !562, !162}
!562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !149, line: 254, baseType: !139, size: 32, elements: !563)
!563 = !{!564, !565, !566}
!564 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!565 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!566 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!567 = !{!184, !185, !186}
!568 = !{!537, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !569, !573, !583, !585, !590, !592, !594, !596, !598, !621, !628, !630}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !560, file: !539, line: 92, type: !571, isLocal: false, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 320, elements: !50)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !560, file: !539, line: 1040, type: !575, isLocal: false, isDefinition: true)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !539, line: 56, size: 448, elements: !576)
!576 = !{!577, !578, !579, !581, !582}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !575, file: !539, line: 59, baseType: !148, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !539, line: 62, baseType: !184, size: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !575, file: !539, line: 66, baseType: !580, size: 256, offset: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !230)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !575, file: !539, line: 69, baseType: !134, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !575, file: !539, line: 72, baseType: !134, size: 64, offset: 384)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !560, file: !539, line: 107, type: !575, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "slot0", scope: !560, file: !539, line: 831, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 256)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !539, line: 321, type: !204, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !539, line: 357, type: !204, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !539, line: 358, type: !204, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !539, line: 199, type: !224, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "quote", scope: !600, file: !539, line: 228, type: !619, isLocal: true, isDefinition: true)
!600 = distinct !DISubprogram(name: "gettext_quote", scope: !539, file: !539, line: 197, type: !601, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!134, !134, !148}
!603 = !{!604, !605, !606, !607, !608}
!604 = !DILocalVariable(name: "msgid", arg: 1, scope: !600, file: !539, line: 197, type: !134)
!605 = !DILocalVariable(name: "s", arg: 2, scope: !600, file: !539, line: 197, type: !148)
!606 = !DILocalVariable(name: "translation", scope: !600, file: !539, line: 199, type: !134)
!607 = !DILocalVariable(name: "w", scope: !600, file: !539, line: 229, type: !519)
!608 = !DILocalVariable(name: "mbs", scope: !600, file: !539, line: 230, type: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !525, line: 6, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !527, line: 21, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 13, size: 64, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !611, file: !527, line: 15, baseType: !184, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !611, file: !527, line: 20, baseType: !615, size: 32, offset: 32)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !527, line: 16, size: 32, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !615, file: !527, line: 18, baseType: !139, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !615, file: !527, line: 19, baseType: !197, size: 32)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !620)
!620 = !{!206, !199}
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "slotvec", scope: !560, file: !539, line: 834, type: !623, isLocal: true, isDefinition: true)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !539, line: 823, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !624, file: !539, line: 825, baseType: !186, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !624, file: !539, line: 826, baseType: !330, size: 64, offset: 64)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "nslots", scope: !560, file: !539, line: 832, type: !184, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "slotvec0", scope: !560, file: !539, line: 833, type: !624, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 704, elements: !634)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!634 = !{!635}
!635 = !DISubrange(count: 11)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !638, line: 67, type: !299, isLocal: true, isDefinition: true)
!638 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !638, line: 69, type: !224, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !638, line: 83, type: !224, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !638, line: 83, type: !197, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !638, line: 85, type: !204, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !638, line: 88, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 171)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !638, line: 88, type: !120, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !638, line: 105, type: !59, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !638, line: 109, type: !105, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !638, line: 113, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 28)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !638, line: 120, type: !665, isLocal: true, isDefinition: true)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 32)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !638, line: 127, type: !670, isLocal: true, isDefinition: true)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 36)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !638, line: 134, type: !14, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !638, line: 142, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 44)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !638, line: 150, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 48)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !638, line: 159, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 52)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !638, line: 170, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 60)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !638, line: 248, type: !372, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !638, line: 248, type: !275, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !638, line: 254, type: !372, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !638, line: 254, type: !64, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !638, line: 254, type: !14, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !638, line: 259, type: !3, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !638, line: 259, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 29)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !714, file: !715, line: 26, type: !717, isLocal: false, isDefinition: true)
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!716 = !{!712}
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 47)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "exit_failure", scope: !722, file: !723, line: 24, type: !725, isLocal: false, isDefinition: true)
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !724, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!724 = !{!720}
!725 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !728, line: 34, type: !213, isLocal: true, isDefinition: true)
!728 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !728, line: 34, type: !224, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !728, line: 34, type: !246, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !735, line: 108, type: !44, isLocal: true, isDefinition: true)
!735 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "internal_state", scope: !738, file: !735, line: 97, type: !741, isLocal: true, isDefinition: true)
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !739, globals: !740, splitDebugInlining: false, nameTableKind: None)
!739 = !{!178, !186, !189}
!740 = !{!733, !736}
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !525, line: 6, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !527, line: 21, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 13, size: 64, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !743, file: !527, line: 15, baseType: !184, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !743, file: !527, line: 20, baseType: !747, size: 32, offset: 32)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !527, line: 16, size: 32, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !747, file: !527, line: 18, baseType: !139, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !747, file: !527, line: 19, baseType: !197, size: 32)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !753, line: 35, type: !19, isLocal: true, isDefinition: true)
!753 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/fd-reopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "062fe9c324b2740011a864ab02c109e2")
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!758 = !{!178}
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !764, retainedTypes: !758, globals: !768, splitDebugInlining: false, nameTableKind: None)
!764 = !{!765}
!765 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !638, line: 40, baseType: !139, size: 32, elements: !766)
!766 = !{!767}
!767 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!768 = !{!636, !639, !641, !643, !645, !647, !652, !654, !656, !658, !663, !668, !673, !675, !680, !685, !690, !695, !697, !699, !701, !703, !705, !707}
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !771, retainedTypes: !802, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!771 = !{!772, !784}
!772 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !773, file: !770, line: 188, baseType: !139, size: 32, elements: !782)
!773 = distinct !DISubprogram(name: "x2nrealloc", scope: !770, file: !770, line: 176, type: !774, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !777)
!774 = !DISubroutineType(types: !775)
!775 = !{!178, !178, !776, !186}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!777 = !{!778, !779, !780, !781}
!778 = !DILocalVariable(name: "p", arg: 1, scope: !773, file: !770, line: 176, type: !178)
!779 = !DILocalVariable(name: "pn", arg: 2, scope: !773, file: !770, line: 176, type: !776)
!780 = !DILocalVariable(name: "s", arg: 3, scope: !773, file: !770, line: 176, type: !186)
!781 = !DILocalVariable(name: "n", scope: !773, file: !770, line: 178, type: !186)
!782 = !{!783}
!783 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!784 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !785, file: !770, line: 228, baseType: !139, size: 32, elements: !782)
!785 = distinct !DISubprogram(name: "xpalloc", scope: !770, file: !770, line: 223, type: !786, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !792)
!786 = !DISubroutineType(types: !787)
!787 = !{!178, !178, !788, !789, !791, !789}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !790, line: 130, baseType: !791)
!790 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !187, line: 35, baseType: !351)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801}
!793 = !DILocalVariable(name: "pa", arg: 1, scope: !785, file: !770, line: 223, type: !178)
!794 = !DILocalVariable(name: "pn", arg: 2, scope: !785, file: !770, line: 223, type: !788)
!795 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !785, file: !770, line: 223, type: !789)
!796 = !DILocalVariable(name: "n_max", arg: 4, scope: !785, file: !770, line: 223, type: !791)
!797 = !DILocalVariable(name: "s", arg: 5, scope: !785, file: !770, line: 223, type: !789)
!798 = !DILocalVariable(name: "n0", scope: !785, file: !770, line: 230, type: !789)
!799 = !DILocalVariable(name: "n", scope: !785, file: !770, line: 237, type: !789)
!800 = !DILocalVariable(name: "nbytes", scope: !785, file: !770, line: 248, type: !789)
!801 = !DILocalVariable(name: "adjusted_nbytes", scope: !785, file: !770, line: 252, type: !789)
!802 = !{!330, !178, !309, !351, !188}
!803 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !804, splitDebugInlining: false, nameTableKind: None)
!804 = !{!726, !729, !731}
!805 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !808, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!808 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!817 = !{!309, !188, !178}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !753, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !819, splitDebugInlining: false, nameTableKind: None)
!819 = !{!820, !751}
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !753, line: 35, type: !204, isLocal: true, isDefinition: true)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !758, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!826 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!827 = !{i32 7, !"Dwarf Version", i32 5}
!828 = !{i32 2, !"Debug Info Version", i32 3}
!829 = !{i32 1, !"wchar_size", i32 4}
!830 = !{i32 8, !"PIC Level", i32 2}
!831 = !{i32 7, !"PIE Level", i32 2}
!832 = !{i32 7, !"uwtable", i32 2}
!833 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !182, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !834)
!834 = !{!835}
!835 = !DILocalVariable(name: "status", arg: 1, scope: !833, file: !2, line: 43, type: !184)
!836 = !DILocation(line: 0, scope: !833)
!837 = !DILocation(line: 45, column: 14, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !2, line: 45, column: 7)
!839 = !DILocation(line: 45, column: 7, scope: !833)
!840 = !DILocation(line: 46, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !2, line: 46, column: 5)
!842 = !{!843, !843, i64 0}
!843 = !{!"any pointer", !844, i64 0}
!844 = !{!"omnipotent char", !845, i64 0}
!845 = !{!"Simple C/C++ TBAA"}
!846 = !DILocation(line: 49, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !838, file: !2, line: 48, column: 5)
!848 = !DILocation(line: 55, column: 7, scope: !847)
!849 = !DILocation(line: 59, column: 7, scope: !847)
!850 = !DILocation(line: 60, column: 7, scope: !847)
!851 = !DILocation(line: 61, column: 7, scope: !847)
!852 = !DILocation(line: 68, column: 7, scope: !847)
!853 = !DILocalVariable(name: "program", arg: 1, scope: !854, file: !131, line: 824, type: !134)
!854 = distinct !DISubprogram(name: "emit_exec_status", scope: !131, file: !131, line: 824, type: !855, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !134}
!857 = !{!853}
!858 = !DILocation(line: 0, scope: !854, inlinedAt: !859)
!859 = distinct !DILocation(line: 69, column: 7, scope: !847)
!860 = !DILocation(line: 826, column: 7, scope: !854, inlinedAt: !859)
!861 = !DILocalVariable(name: "program", arg: 1, scope: !862, file: !131, line: 836, type: !134)
!862 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !131, file: !131, line: 836, type: !855, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !863)
!863 = !{!861, !864, !871, !872, !874, !875}
!864 = !DILocalVariable(name: "infomap", scope: !862, file: !131, line: 838, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 896, elements: !225)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !862, file: !131, line: 838, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !867, file: !131, line: 838, baseType: !134, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !867, file: !131, line: 838, baseType: !134, size: 64, offset: 64)
!871 = !DILocalVariable(name: "node", scope: !862, file: !131, line: 848, type: !134)
!872 = !DILocalVariable(name: "map_prog", scope: !862, file: !131, line: 849, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!874 = !DILocalVariable(name: "lc_messages", scope: !862, file: !131, line: 861, type: !134)
!875 = !DILocalVariable(name: "url_program", scope: !862, file: !131, line: 874, type: !134)
!876 = !DILocation(line: 0, scope: !862, inlinedAt: !877)
!877 = distinct !DILocation(line: 70, column: 7, scope: !847)
!878 = !DILocation(line: 857, column: 3, scope: !862, inlinedAt: !877)
!879 = !DILocation(line: 861, column: 29, scope: !862, inlinedAt: !877)
!880 = !DILocation(line: 862, column: 7, scope: !881, inlinedAt: !877)
!881 = distinct !DILexicalBlock(scope: !862, file: !131, line: 862, column: 7)
!882 = !DILocation(line: 862, column: 19, scope: !881, inlinedAt: !877)
!883 = !DILocation(line: 862, column: 22, scope: !881, inlinedAt: !877)
!884 = !DILocation(line: 862, column: 7, scope: !862, inlinedAt: !877)
!885 = !DILocation(line: 868, column: 7, scope: !886, inlinedAt: !877)
!886 = distinct !DILexicalBlock(scope: !881, file: !131, line: 863, column: 5)
!887 = !DILocation(line: 870, column: 5, scope: !886, inlinedAt: !877)
!888 = !DILocation(line: 875, column: 3, scope: !862, inlinedAt: !877)
!889 = !DILocation(line: 877, column: 3, scope: !862, inlinedAt: !877)
!890 = !DILocation(line: 72, column: 3, scope: !833)
!891 = !DISubprogram(name: "dcgettext", scope: !892, file: !892, line: 51, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!892 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!893 = !DISubroutineType(types: !894)
!894 = !{!330, !134, !134, !184}
!895 = !{}
!896 = !DISubprogram(name: "__fprintf_chk", scope: !897, file: !897, line: 93, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!897 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!898 = !DISubroutineType(types: !899)
!899 = !{!184, !900, !184, !901, null}
!900 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!901 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!902 = !DISubprogram(name: "__printf_chk", scope: !897, file: !897, line: 95, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!903 = !DISubroutineType(types: !904)
!904 = !{!184, !184, !901, null}
!905 = !DISubprogram(name: "fputs_unlocked", scope: !906, file: !906, line: 691, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!906 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!907 = !DISubroutineType(types: !908)
!908 = !{!184, !901, !900}
!909 = !DILocation(line: 0, scope: !130)
!910 = !DILocation(line: 581, column: 7, scope: !307)
!911 = !{!912, !912, i64 0}
!912 = !{!"int", !844, i64 0}
!913 = !DILocation(line: 581, column: 19, scope: !307)
!914 = !DILocation(line: 581, column: 7, scope: !130)
!915 = !DILocation(line: 585, column: 26, scope: !306)
!916 = !DILocation(line: 0, scope: !306)
!917 = !DILocation(line: 586, column: 23, scope: !306)
!918 = !DILocation(line: 586, column: 28, scope: !306)
!919 = !DILocation(line: 586, column: 32, scope: !306)
!920 = !{!844, !844, i64 0}
!921 = !DILocation(line: 586, column: 38, scope: !306)
!922 = !DILocalVariable(name: "__s1", arg: 1, scope: !923, file: !924, line: 1359, type: !134)
!923 = distinct !DISubprogram(name: "streq", scope: !924, file: !924, line: 1359, type: !925, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !927)
!924 = !DIFile(filename: "./lib/string.h", directory: "/src")
!925 = !DISubroutineType(types: !926)
!926 = !{!309, !134, !134}
!927 = !{!922, !928}
!928 = !DILocalVariable(name: "__s2", arg: 2, scope: !923, file: !924, line: 1359, type: !134)
!929 = !DILocation(line: 0, scope: !923, inlinedAt: !930)
!930 = distinct !DILocation(line: 586, column: 41, scope: !306)
!931 = !DILocation(line: 1361, column: 11, scope: !923, inlinedAt: !930)
!932 = !DILocation(line: 1361, column: 10, scope: !923, inlinedAt: !930)
!933 = !DILocation(line: 586, column: 19, scope: !306)
!934 = !DILocation(line: 587, column: 5, scope: !306)
!935 = !DILocation(line: 588, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !130, file: !131, line: 588, column: 7)
!937 = !DILocation(line: 588, column: 7, scope: !130)
!938 = !DILocation(line: 590, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !131, line: 589, column: 5)
!940 = !DILocation(line: 591, column: 7, scope: !939)
!941 = !DILocation(line: 595, column: 37, scope: !130)
!942 = !DILocation(line: 595, column: 35, scope: !130)
!943 = !DILocation(line: 596, column: 29, scope: !130)
!944 = !DILocation(line: 597, column: 8, scope: !315)
!945 = !DILocation(line: 597, column: 7, scope: !130)
!946 = !DILocation(line: 604, column: 24, scope: !314)
!947 = !DILocation(line: 604, column: 12, scope: !315)
!948 = !DILocation(line: 0, scope: !313)
!949 = !DILocation(line: 610, column: 16, scope: !313)
!950 = !DILocation(line: 610, column: 7, scope: !313)
!951 = !DILocation(line: 611, column: 21, scope: !313)
!952 = !{!953, !953, i64 0}
!953 = !{!"short", !844, i64 0}
!954 = !DILocation(line: 611, column: 19, scope: !313)
!955 = !DILocation(line: 611, column: 16, scope: !313)
!956 = !DILocation(line: 610, column: 30, scope: !313)
!957 = distinct !{!957, !950, !951, !958}
!958 = !{!"llvm.loop.mustprogress"}
!959 = !DILocation(line: 612, column: 18, scope: !960)
!960 = distinct !DILexicalBlock(scope: !313, file: !131, line: 612, column: 11)
!961 = !DILocation(line: 612, column: 11, scope: !313)
!962 = !DILocation(line: 618, column: 5, scope: !313)
!963 = !DILocation(line: 620, column: 23, scope: !130)
!964 = !DILocation(line: 625, column: 39, scope: !130)
!965 = !DILocation(line: 626, column: 3, scope: !130)
!966 = !DILocation(line: 626, column: 10, scope: !130)
!967 = !DILocation(line: 626, column: 21, scope: !130)
!968 = !DILocation(line: 628, column: 44, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !131, line: 628, column: 11)
!970 = distinct !DILexicalBlock(scope: !130, file: !131, line: 627, column: 5)
!971 = !DILocation(line: 628, column: 32, scope: !969)
!972 = !DILocation(line: 628, column: 49, scope: !969)
!973 = !DILocation(line: 628, column: 11, scope: !970)
!974 = !DILocation(line: 630, column: 11, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !131, line: 630, column: 11)
!976 = !DILocation(line: 630, column: 11, scope: !970)
!977 = !DILocation(line: 632, column: 26, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !131, line: 632, column: 15)
!979 = distinct !DILexicalBlock(scope: !975, file: !131, line: 631, column: 9)
!980 = !DILocation(line: 632, column: 34, scope: !978)
!981 = !DILocation(line: 632, column: 37, scope: !978)
!982 = !DILocation(line: 632, column: 15, scope: !979)
!983 = !DILocation(line: 636, column: 16, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !131, line: 636, column: 15)
!985 = !DILocation(line: 636, column: 29, scope: !984)
!986 = !DILocation(line: 640, column: 16, scope: !970)
!987 = distinct !{!987, !965, !988, !958}
!988 = !DILocation(line: 641, column: 5, scope: !130)
!989 = !DILocation(line: 644, column: 3, scope: !130)
!990 = !DILocation(line: 0, scope: !923, inlinedAt: !991)
!991 = distinct !DILocation(line: 648, column: 31, scope: !130)
!992 = !DILocation(line: 0, scope: !923, inlinedAt: !993)
!993 = distinct !DILocation(line: 649, column: 31, scope: !130)
!994 = !DILocation(line: 0, scope: !923, inlinedAt: !995)
!995 = distinct !DILocation(line: 650, column: 31, scope: !130)
!996 = !DILocation(line: 0, scope: !923, inlinedAt: !997)
!997 = distinct !DILocation(line: 651, column: 31, scope: !130)
!998 = !DILocation(line: 0, scope: !923, inlinedAt: !999)
!999 = distinct !DILocation(line: 652, column: 31, scope: !130)
!1000 = !DILocation(line: 0, scope: !923, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 653, column: 31, scope: !130)
!1002 = !DILocation(line: 0, scope: !923, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 654, column: 31, scope: !130)
!1004 = !DILocation(line: 0, scope: !923, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 655, column: 31, scope: !130)
!1006 = !DILocation(line: 0, scope: !923, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 656, column: 31, scope: !130)
!1008 = !DILocation(line: 0, scope: !923, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 657, column: 31, scope: !130)
!1010 = !DILocation(line: 663, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !130, file: !131, line: 663, column: 7)
!1012 = !DILocation(line: 664, column: 7, scope: !1011)
!1013 = !DILocation(line: 664, column: 10, scope: !1011)
!1014 = !DILocation(line: 663, column: 7, scope: !130)
!1015 = !DILocation(line: 669, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !131, line: 665, column: 5)
!1017 = !DILocation(line: 671, column: 5, scope: !1016)
!1018 = !DILocation(line: 676, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !131, line: 673, column: 5)
!1020 = !DILocation(line: 679, column: 3, scope: !130)
!1021 = !DILocation(line: 683, column: 3, scope: !130)
!1022 = !DILocation(line: 686, column: 3, scope: !130)
!1023 = !DILocation(line: 688, column: 3, scope: !130)
!1024 = !DILocation(line: 691, column: 3, scope: !130)
!1025 = !DILocation(line: 695, column: 3, scope: !130)
!1026 = !DILocation(line: 696, column: 1, scope: !130)
!1027 = !DISubprogram(name: "setlocale", scope: !1028, file: !1028, line: 122, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1028 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!330, !184, !134}
!1031 = !DISubprogram(name: "strncmp", scope: !1032, file: !1032, line: 159, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1032 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!184, !134, !134, !186}
!1035 = !DISubprogram(name: "exit", scope: !1036, file: !1036, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1036 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1037 = !DISubprogram(name: "getenv", scope: !1036, file: !1036, line: 641, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!330, !134}
!1040 = !DISubprogram(name: "strcmp", scope: !1032, file: !1032, line: 156, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!184, !134, !134}
!1043 = !DISubprogram(name: "strspn", scope: !1032, file: !1032, line: 297, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!188, !134, !134}
!1046 = !DISubprogram(name: "strchr", scope: !1032, file: !1032, line: 246, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!330, !134, !184}
!1049 = !DISubprogram(name: "__ctype_b_loc", scope: !163, file: !163, line: 79, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1055 = !DISubprogram(name: "strcspn", scope: !1032, file: !1032, line: 293, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1056 = !DISubprogram(name: "fwrite_unlocked", scope: !906, file: !906, line: 704, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!186, !1059, !186, !186, !900}
!1059 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1062 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !1063, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1066)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!184, !184, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1080, !1081, !1084, !1085, !1086, !1090, !1091, !1094, !1095, !1098, !1099, !1104, !1105, !1106}
!1067 = !DILocalVariable(name: "argc", arg: 1, scope: !1062, file: !2, line: 82, type: !184)
!1068 = !DILocalVariable(name: "argv", arg: 2, scope: !1062, file: !2, line: 82, type: !1065)
!1069 = !DILocalVariable(name: "exit_internal_failure", scope: !1062, file: !2, line: 94, type: !184)
!1070 = !DILocalVariable(name: "ignoring_input", scope: !1062, file: !2, line: 109, type: !309)
!1071 = !DILocalVariable(name: "redirecting_stdout", scope: !1062, file: !2, line: 110, type: !309)
!1072 = !DILocalVariable(name: "stdout_is_closed", scope: !1062, file: !2, line: 111, type: !309)
!1073 = !DILocalVariable(name: "redirecting_stderr", scope: !1062, file: !2, line: 112, type: !309)
!1074 = !DILocalVariable(name: "__errstatus", scope: !1075, file: !2, line: 120, type: !1079)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 120, column: 9)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 119, column: 11)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 118, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 117, column: 7)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1080 = !DILocalVariable(name: "out_fd", scope: !1062, file: !2, line: 130, type: !184)
!1081 = !DILocalVariable(name: "in_home", scope: !1082, file: !2, line: 133, type: !330)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 132, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 131, column: 7)
!1084 = !DILocalVariable(name: "file", scope: !1082, file: !2, line: 134, type: !134)
!1085 = !DILocalVariable(name: "flags", scope: !1082, file: !2, line: 135, type: !184)
!1086 = !DILocalVariable(name: "mode", scope: !1082, file: !2, line: 136, type: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1088, line: 69, baseType: !1089)
!1088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !350, line: 150, baseType: !139)
!1090 = !DILocalVariable(name: "umask_value", scope: !1082, file: !2, line: 137, type: !1087)
!1091 = !DILocalVariable(name: "saved_errno", scope: !1092, file: !2, line: 144, type: !184)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 143, column: 9)
!1093 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 142, column: 11)
!1094 = !DILocalVariable(name: "home", scope: !1092, file: !2, line: 145, type: !134)
!1095 = !DILocalVariable(name: "saved_errno2", scope: !1096, file: !2, line: 155, type: !184)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 154, column: 13)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 153, column: 15)
!1098 = !DILocalVariable(name: "saved_stderr_fd", scope: !1062, file: !2, line: 175, type: !184)
!1099 = !DILocalVariable(name: "__errstatus", scope: !1100, file: !2, line: 193, type: !1079)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 193, column: 9)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 192, column: 11)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 177, column: 5)
!1103 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 176, column: 7)
!1104 = !DILocalVariable(name: "cmd", scope: !1062, file: !2, line: 211, type: !1065)
!1105 = !DILocalVariable(name: "exit_status", scope: !1062, file: !2, line: 213, type: !184)
!1106 = !DILocalVariable(name: "saved_errno", scope: !1062, file: !2, line: 214, type: !184)
!1107 = !DILocation(line: 0, scope: !1062)
!1108 = !DILocation(line: 85, column: 21, scope: !1062)
!1109 = !DILocation(line: 85, column: 3, scope: !1062)
!1110 = !DILocation(line: 86, column: 3, scope: !1062)
!1111 = !DILocation(line: 87, column: 3, scope: !1062)
!1112 = !DILocation(line: 88, column: 3, scope: !1062)
!1113 = !DILocation(line: 94, column: 32, scope: !1062)
!1114 = !DILocalVariable(name: "status", arg: 1, scope: !1115, file: !131, line: 102, type: !184)
!1115 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !131, file: !131, line: 102, type: !182, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1116)
!1116 = !{!1114}
!1117 = !DILocation(line: 0, scope: !1115, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 96, column: 3, scope: !1062)
!1119 = !DILocation(line: 105, column: 18, scope: !1120, inlinedAt: !1118)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !131, line: 104, column: 7)
!1121 = !DILocation(line: 97, column: 3, scope: !1062)
!1122 = !DILocation(line: 100, column: 36, scope: !1062)
!1123 = !DILocation(line: 100, column: 59, scope: !1062)
!1124 = !DILocation(line: 99, column: 3, scope: !1062)
!1125 = !DILocation(line: 103, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 103, column: 7)
!1127 = !DILocation(line: 103, column: 12, scope: !1126)
!1128 = !DILocation(line: 103, column: 7, scope: !1062)
!1129 = !DILocation(line: 105, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 104, column: 5)
!1131 = !DILocation(line: 106, column: 7, scope: !1130)
!1132 = !DILocation(line: 109, column: 25, scope: !1062)
!1133 = !DILocation(line: 110, column: 29, scope: !1062)
!1134 = !DILocation(line: 111, column: 48, scope: !1062)
!1135 = !DILocation(line: 111, column: 51, scope: !1062)
!1136 = !DILocation(line: 111, column: 57, scope: !1062)
!1137 = !DILocation(line: 112, column: 29, scope: !1062)
!1138 = !DILocation(line: 117, column: 7, scope: !1062)
!1139 = !DILocation(line: 119, column: 11, scope: !1076)
!1140 = !DILocation(line: 119, column: 62, scope: !1076)
!1141 = !DILocation(line: 119, column: 11, scope: !1077)
!1142 = !DILocation(line: 120, column: 9, scope: !1076)
!1143 = !DILocation(line: 122, column: 31, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 122, column: 11)
!1145 = !DILocation(line: 123, column: 9, scope: !1144)
!1146 = !DILocation(line: 131, column: 26, scope: !1083)
!1147 = !DILocation(line: 0, scope: !1082)
!1148 = !DILocation(line: 137, column: 28, scope: !1082)
!1149 = !DILocation(line: 138, column: 17, scope: !1082)
!1150 = !DILocation(line: 139, column: 19, scope: !1082)
!1151 = !DILocation(line: 140, column: 19, scope: !1082)
!1152 = !DILocation(line: 142, column: 18, scope: !1093)
!1153 = !DILocation(line: 142, column: 11, scope: !1082)
!1154 = !DILocation(line: 144, column: 29, scope: !1092)
!1155 = !DILocation(line: 0, scope: !1092)
!1156 = !DILocation(line: 145, column: 30, scope: !1092)
!1157 = !DILocation(line: 146, column: 15, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 146, column: 15)
!1159 = !DILocation(line: 146, column: 15, scope: !1092)
!1160 = !DILocation(line: 148, column: 25, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 147, column: 13)
!1162 = !DILocation(line: 149, column: 25, scope: !1161)
!1163 = !DILocation(line: 150, column: 27, scope: !1161)
!1164 = !DILocation(line: 151, column: 27, scope: !1161)
!1165 = !DILocation(line: 153, column: 22, scope: !1097)
!1166 = !DILocation(line: 153, column: 15, scope: !1092)
!1167 = !DILocation(line: 155, column: 34, scope: !1096)
!1168 = !DILocation(line: 0, scope: !1096)
!1169 = !DILocation(line: 156, column: 15, scope: !1096)
!1170 = !DILocation(line: 157, column: 19, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 157, column: 19)
!1172 = !DILocation(line: 157, column: 19, scope: !1096)
!1173 = !DILocation(line: 158, column: 17, scope: !1171)
!1174 = !DILocation(line: 134, column: 19, scope: !1082)
!1175 = !DILocation(line: 165, column: 7, scope: !1082)
!1176 = !DILocation(line: 166, column: 7, scope: !1082)
!1177 = !DILocation(line: 171, column: 7, scope: !1082)
!1178 = !DILocation(line: 176, column: 7, scope: !1062)
!1179 = !DILocation(line: 182, column: 25, scope: !1102)
!1180 = !DILocation(line: 185, column: 11, scope: !1102)
!1181 = !DILocation(line: 186, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 185, column: 11)
!1183 = !DILocation(line: 192, column: 11, scope: !1101)
!1184 = !DILocation(line: 192, column: 40, scope: !1101)
!1185 = !DILocation(line: 192, column: 11, scope: !1102)
!1186 = !DILocation(line: 193, column: 9, scope: !1101)
!1187 = !DILocation(line: 196, column: 11, scope: !1102)
!1188 = !DILocation(line: 197, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 196, column: 11)
!1190 = !DILocation(line: 206, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 206, column: 7)
!1192 = !DILocalVariable(name: "__stream", arg: 1, scope: !1193, file: !1194, line: 135, type: !322)
!1193 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1194, file: !1194, line: 135, type: !1195, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !136, retainedNodes: !1197)
!1194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!184, !322}
!1197 = !{!1192}
!1198 = !DILocation(line: 0, scope: !1193, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 206, column: 7, scope: !1191)
!1200 = !DILocation(line: 137, column: 10, scope: !1193, inlinedAt: !1199)
!1201 = !{!1202, !912, i64 0}
!1202 = !{!"_IO_FILE", !912, i64 0, !843, i64 8, !843, i64 16, !843, i64 24, !843, i64 32, !843, i64 40, !843, i64 48, !843, i64 56, !843, i64 64, !843, i64 72, !843, i64 80, !843, i64 88, !843, i64 96, !843, i64 104, !912, i64 112, !912, i64 116, !1203, i64 120, !953, i64 128, !844, i64 130, !844, i64 131, !843, i64 136, !1203, i64 144, !843, i64 152, !843, i64 160, !843, i64 168, !843, i64 176, !1203, i64 184, !912, i64 192, !844, i64 196}
!1203 = !{!"long", !844, i64 0}
!1204 = !DILocation(line: 206, column: 7, scope: !1062)
!1205 = !DILocation(line: 209, column: 3, scope: !1062)
!1206 = !DILocation(line: 211, column: 23, scope: !1062)
!1207 = !DILocation(line: 211, column: 21, scope: !1062)
!1208 = !DILocation(line: 212, column: 11, scope: !1062)
!1209 = !DILocation(line: 212, column: 3, scope: !1062)
!1210 = !DILocation(line: 213, column: 21, scope: !1062)
!1211 = !DILocation(line: 213, column: 27, scope: !1062)
!1212 = !DILocation(line: 222, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 222, column: 7)
!1214 = !DILocation(line: 222, column: 45, scope: !1213)
!1215 = !DILocation(line: 222, column: 7, scope: !1062)
!1216 = !DILocation(line: 223, column: 5, scope: !1213)
!1217 = !DILocation(line: 226, column: 1, scope: !1062)
!1218 = !DISubprogram(name: "bindtextdomain", scope: !892, file: !892, line: 86, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!330, !134, !134}
!1221 = !DISubprogram(name: "textdomain", scope: !892, file: !892, line: 82, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1222 = !DISubprogram(name: "atexit", scope: !1036, file: !1036, line: 602, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!184, !452}
!1225 = !DISubprogram(name: "isatty", scope: !1226, file: !1226, line: 809, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1226 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!184, !184}
!1229 = !DISubprogram(name: "__errno_location", scope: !1230, file: !1230, line: 37, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1230 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!494}
!1233 = !DISubprogram(name: "umask", scope: !1234, file: !1234, line: 380, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1089, !1089}
!1237 = !DISubprogram(name: "open", scope: !1238, file: !1238, line: 181, type: !1239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1238 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!184, !134, !184, null}
!1241 = !DISubprogram(name: "free", scope: !1036, file: !1036, line: 555, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !178}
!1244 = !DISubprogram(name: "dup2", scope: !1226, file: !1226, line: 555, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1245 = !DISubprogram(name: "close", scope: !1226, file: !1226, line: 358, type: !1227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1246 = !DISubprogram(name: "signal", scope: !180, file: !180, line: 88, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!179, !184, !179}
!1249 = !DISubprogram(name: "execvp", scope: !1226, file: !1226, line: 599, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!184, !134, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!1254 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !391, file: !391, line: 50, type: !855, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1255)
!1255 = !{!1256}
!1256 = !DILocalVariable(name: "file", arg: 1, scope: !1254, file: !391, line: 50, type: !134)
!1257 = !DILocation(line: 0, scope: !1254)
!1258 = !DILocation(line: 52, column: 13, scope: !1254)
!1259 = !DILocation(line: 53, column: 1, scope: !1254)
!1260 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !391, file: !391, line: 87, type: !1261, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !309}
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "ignore", arg: 1, scope: !1260, file: !391, line: 87, type: !309)
!1265 = !DILocation(line: 0, scope: !1260)
!1266 = !DILocation(line: 89, column: 16, scope: !1260)
!1267 = !{!1268, !1268, i64 0}
!1268 = !{!"_Bool", !844, i64 0}
!1269 = !DILocation(line: 90, column: 1, scope: !1260)
!1270 = distinct !DISubprogram(name: "close_stdout", scope: !391, file: !391, line: 116, type: !453, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1271)
!1271 = !{!1272}
!1272 = !DILocalVariable(name: "write_error", scope: !1273, file: !391, line: 121, type: !134)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !391, line: 120, column: 5)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !391, line: 118, column: 7)
!1275 = !DILocation(line: 118, column: 21, scope: !1274)
!1276 = !DILocation(line: 118, column: 7, scope: !1274)
!1277 = !DILocation(line: 118, column: 29, scope: !1274)
!1278 = !DILocation(line: 119, column: 7, scope: !1274)
!1279 = !DILocation(line: 119, column: 12, scope: !1274)
!1280 = !{i8 0, i8 2}
!1281 = !DILocation(line: 119, column: 25, scope: !1274)
!1282 = !DILocation(line: 119, column: 28, scope: !1274)
!1283 = !DILocation(line: 119, column: 34, scope: !1274)
!1284 = !DILocation(line: 118, column: 7, scope: !1270)
!1285 = !DILocation(line: 121, column: 33, scope: !1273)
!1286 = !DILocation(line: 0, scope: !1273)
!1287 = !DILocation(line: 122, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1273, file: !391, line: 122, column: 11)
!1289 = !DILocation(line: 0, scope: !1288)
!1290 = !DILocation(line: 122, column: 11, scope: !1273)
!1291 = !DILocation(line: 123, column: 9, scope: !1288)
!1292 = !DILocation(line: 126, column: 9, scope: !1288)
!1293 = !DILocation(line: 128, column: 14, scope: !1273)
!1294 = !DILocation(line: 128, column: 7, scope: !1273)
!1295 = !DILocation(line: 133, column: 42, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1270, file: !391, line: 133, column: 7)
!1297 = !DILocation(line: 133, column: 28, scope: !1296)
!1298 = !DILocation(line: 133, column: 50, scope: !1296)
!1299 = !DILocation(line: 133, column: 7, scope: !1270)
!1300 = !DILocation(line: 134, column: 12, scope: !1296)
!1301 = !DILocation(line: 134, column: 5, scope: !1296)
!1302 = !DILocation(line: 135, column: 1, scope: !1270)
!1303 = !DISubprogram(name: "_exit", scope: !1226, file: !1226, line: 624, type: !182, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1304 = distinct !DISubprogram(name: "verror", scope: !406, file: !406, line: 251, type: !1305, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !184, !184, !134, !416}
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DILocalVariable(name: "status", arg: 1, scope: !1304, file: !406, line: 251, type: !184)
!1309 = !DILocalVariable(name: "errnum", arg: 2, scope: !1304, file: !406, line: 251, type: !184)
!1310 = !DILocalVariable(name: "message", arg: 3, scope: !1304, file: !406, line: 251, type: !134)
!1311 = !DILocalVariable(name: "args", arg: 4, scope: !1304, file: !406, line: 251, type: !416)
!1312 = !DILocation(line: 0, scope: !1304)
!1313 = !DILocation(line: 261, column: 3, scope: !1304)
!1314 = !DILocation(line: 265, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !406, line: 265, column: 7)
!1316 = !DILocation(line: 265, column: 7, scope: !1304)
!1317 = !DILocation(line: 266, column: 5, scope: !1315)
!1318 = !DILocation(line: 272, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !406, line: 268, column: 5)
!1320 = !DILocation(line: 276, column: 3, scope: !1304)
!1321 = !DILocation(line: 282, column: 1, scope: !1304)
!1322 = distinct !DISubprogram(name: "flush_stdout", scope: !406, file: !406, line: 163, type: !453, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1323)
!1323 = !{!1324}
!1324 = !DILocalVariable(name: "stdout_fd", scope: !1322, file: !406, line: 166, type: !184)
!1325 = !DILocation(line: 0, scope: !1322)
!1326 = !DILocalVariable(name: "fd", arg: 1, scope: !1327, file: !406, line: 145, type: !184)
!1327 = distinct !DISubprogram(name: "is_open", scope: !406, file: !406, line: 145, type: !1227, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1328)
!1328 = !{!1326}
!1329 = !DILocation(line: 0, scope: !1327, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 182, column: 25, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !406, line: 182, column: 7)
!1332 = !DILocation(line: 157, column: 15, scope: !1327, inlinedAt: !1330)
!1333 = !DILocation(line: 157, column: 12, scope: !1327, inlinedAt: !1330)
!1334 = !DILocation(line: 182, column: 7, scope: !1322)
!1335 = !DILocation(line: 184, column: 5, scope: !1331)
!1336 = !DILocation(line: 185, column: 1, scope: !1322)
!1337 = distinct !DISubprogram(name: "error_tail", scope: !406, file: !406, line: 219, type: !1305, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DILocalVariable(name: "status", arg: 1, scope: !1337, file: !406, line: 219, type: !184)
!1340 = !DILocalVariable(name: "errnum", arg: 2, scope: !1337, file: !406, line: 219, type: !184)
!1341 = !DILocalVariable(name: "message", arg: 3, scope: !1337, file: !406, line: 219, type: !134)
!1342 = !DILocalVariable(name: "args", arg: 4, scope: !1337, file: !406, line: 219, type: !416)
!1343 = !DILocation(line: 0, scope: !1337)
!1344 = !DILocation(line: 229, column: 13, scope: !1337)
!1345 = !DILocalVariable(name: "__stream", arg: 1, scope: !1346, file: !897, line: 132, type: !1349)
!1346 = distinct !DISubprogram(name: "vfprintf", scope: !897, file: !897, line: 132, type: !1347, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1384)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!184, !1349, !901, !416}
!1349 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1352, file: !326, line: 51, baseType: !184, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1352, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1352, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1352, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1352, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1352, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1352, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1352, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1352, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1352, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1352, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1352, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1352, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1352, file: !326, line: 70, baseType: !1368, size: 64, offset: 832)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1352, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1352, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1352, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1352, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1352, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1352, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1352, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1352, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1352, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1352, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1352, file: !326, line: 93, baseType: !1368, size: 64, offset: 1344)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1352, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1352, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1352, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1352, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!1384 = !{!1345, !1385, !1386}
!1385 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1346, file: !897, line: 133, type: !901)
!1386 = !DILocalVariable(name: "__ap", arg: 3, scope: !1346, file: !897, line: 133, type: !416)
!1387 = !DILocation(line: 0, scope: !1346, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 229, column: 3, scope: !1337)
!1389 = !DILocation(line: 135, column: 10, scope: !1346, inlinedAt: !1388)
!1390 = !DILocation(line: 232, column: 3, scope: !1337)
!1391 = !DILocation(line: 233, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1337, file: !406, line: 233, column: 7)
!1393 = !DILocation(line: 233, column: 7, scope: !1337)
!1394 = !DILocalVariable(name: "errnum", arg: 1, scope: !1395, file: !406, line: 188, type: !184)
!1395 = distinct !DISubprogram(name: "print_errno_message", scope: !406, file: !406, line: 188, type: !182, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1396)
!1396 = !{!1394, !1397, !1398}
!1397 = !DILocalVariable(name: "s", scope: !1395, file: !406, line: 190, type: !134)
!1398 = !DILocalVariable(name: "errbuf", scope: !1395, file: !406, line: 193, type: !1399)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 1024)
!1402 = !DILocation(line: 0, scope: !1395, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 234, column: 5, scope: !1392)
!1404 = !DILocation(line: 193, column: 3, scope: !1395, inlinedAt: !1403)
!1405 = !DILocation(line: 193, column: 8, scope: !1395, inlinedAt: !1403)
!1406 = !DILocation(line: 195, column: 7, scope: !1395, inlinedAt: !1403)
!1407 = !DILocation(line: 207, column: 9, scope: !1408, inlinedAt: !1403)
!1408 = distinct !DILexicalBlock(scope: !1395, file: !406, line: 207, column: 7)
!1409 = !DILocation(line: 207, column: 7, scope: !1395, inlinedAt: !1403)
!1410 = !DILocation(line: 208, column: 9, scope: !1408, inlinedAt: !1403)
!1411 = !DILocation(line: 208, column: 5, scope: !1408, inlinedAt: !1403)
!1412 = !DILocation(line: 214, column: 3, scope: !1395, inlinedAt: !1403)
!1413 = !DILocation(line: 216, column: 1, scope: !1395, inlinedAt: !1403)
!1414 = !DILocation(line: 234, column: 5, scope: !1392)
!1415 = !DILocation(line: 238, column: 3, scope: !1337)
!1416 = !DILocalVariable(name: "__c", arg: 1, scope: !1417, file: !1194, line: 101, type: !184)
!1417 = distinct !DISubprogram(name: "putc_unlocked", scope: !1194, file: !1194, line: 101, type: !1418, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!184, !184, !1350}
!1420 = !{!1416, !1421}
!1421 = !DILocalVariable(name: "__stream", arg: 2, scope: !1417, file: !1194, line: 101, type: !1350)
!1422 = !DILocation(line: 0, scope: !1417, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 238, column: 3, scope: !1337)
!1424 = !DILocation(line: 103, column: 10, scope: !1417, inlinedAt: !1423)
!1425 = !{!1202, !843, i64 40}
!1426 = !{!1202, !843, i64 48}
!1427 = !{!"branch_weights", i32 2000, i32 1}
!1428 = !DILocation(line: 240, column: 3, scope: !1337)
!1429 = !DILocation(line: 241, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1337, file: !406, line: 241, column: 7)
!1431 = !DILocation(line: 241, column: 7, scope: !1337)
!1432 = !DILocation(line: 242, column: 5, scope: !1430)
!1433 = !DILocation(line: 243, column: 1, scope: !1337)
!1434 = !DISubprogram(name: "__vfprintf_chk", scope: !897, file: !897, line: 96, type: !1435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!184, !1349, !184, !901, !416}
!1437 = !DISubprogram(name: "strerror_r", scope: !1032, file: !1032, line: 444, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!330, !184, !330, !186}
!1440 = !DISubprogram(name: "__overflow", scope: !906, file: !906, line: 886, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!184, !1350, !184}
!1443 = !DISubprogram(name: "fflush_unlocked", scope: !906, file: !906, line: 239, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!184, !1350}
!1446 = !DISubprogram(name: "fcntl", scope: !1238, file: !1238, line: 149, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!184, !184, !184, null}
!1449 = distinct !DISubprogram(name: "error", scope: !406, file: !406, line: 285, type: !1450, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !184, !184, !134, null}
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DILocalVariable(name: "status", arg: 1, scope: !1449, file: !406, line: 285, type: !184)
!1454 = !DILocalVariable(name: "errnum", arg: 2, scope: !1449, file: !406, line: 285, type: !184)
!1455 = !DILocalVariable(name: "message", arg: 3, scope: !1449, file: !406, line: 285, type: !134)
!1456 = !DILocalVariable(name: "ap", scope: !1449, file: !406, line: 287, type: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !906, line: 52, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1459, line: 14, baseType: !1460)
!1459 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !420, baseType: !1461)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 192, elements: !45)
!1462 = !DILocation(line: 0, scope: !1449)
!1463 = !DILocation(line: 287, column: 3, scope: !1449)
!1464 = !DILocation(line: 287, column: 11, scope: !1449)
!1465 = !DILocation(line: 288, column: 3, scope: !1449)
!1466 = !DILocation(line: 289, column: 3, scope: !1449)
!1467 = !DILocation(line: 290, column: 3, scope: !1449)
!1468 = !DILocation(line: 291, column: 1, scope: !1449)
!1469 = !DILocation(line: 0, scope: !413)
!1470 = !DILocation(line: 302, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !413, file: !406, line: 302, column: 7)
!1472 = !DILocation(line: 302, column: 7, scope: !413)
!1473 = !DILocation(line: 307, column: 11, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !406, line: 307, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !406, line: 303, column: 5)
!1476 = !DILocation(line: 307, column: 27, scope: !1474)
!1477 = !DILocation(line: 308, column: 11, scope: !1474)
!1478 = !DILocation(line: 308, column: 28, scope: !1474)
!1479 = !DILocation(line: 308, column: 25, scope: !1474)
!1480 = !DILocation(line: 309, column: 15, scope: !1474)
!1481 = !DILocation(line: 309, column: 33, scope: !1474)
!1482 = !DILocation(line: 310, column: 19, scope: !1474)
!1483 = !DILocation(line: 311, column: 22, scope: !1474)
!1484 = !DILocation(line: 311, column: 56, scope: !1474)
!1485 = !DILocation(line: 307, column: 11, scope: !1475)
!1486 = !DILocation(line: 316, column: 21, scope: !1475)
!1487 = !DILocation(line: 317, column: 23, scope: !1475)
!1488 = !DILocation(line: 318, column: 5, scope: !1475)
!1489 = !DILocation(line: 327, column: 3, scope: !413)
!1490 = !DILocation(line: 331, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !413, file: !406, line: 331, column: 7)
!1492 = !DILocation(line: 331, column: 7, scope: !413)
!1493 = !DILocation(line: 332, column: 5, scope: !1491)
!1494 = !DILocation(line: 338, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !406, line: 334, column: 5)
!1496 = !DILocation(line: 346, column: 3, scope: !413)
!1497 = !DILocation(line: 350, column: 3, scope: !413)
!1498 = !DILocation(line: 356, column: 1, scope: !413)
!1499 = distinct !DISubprogram(name: "error_at_line", scope: !406, file: !406, line: 359, type: !1500, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !184, !184, !134, !139, !134, null}
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508}
!1503 = !DILocalVariable(name: "status", arg: 1, scope: !1499, file: !406, line: 359, type: !184)
!1504 = !DILocalVariable(name: "errnum", arg: 2, scope: !1499, file: !406, line: 359, type: !184)
!1505 = !DILocalVariable(name: "file_name", arg: 3, scope: !1499, file: !406, line: 359, type: !134)
!1506 = !DILocalVariable(name: "line_number", arg: 4, scope: !1499, file: !406, line: 360, type: !139)
!1507 = !DILocalVariable(name: "message", arg: 5, scope: !1499, file: !406, line: 360, type: !134)
!1508 = !DILocalVariable(name: "ap", scope: !1499, file: !406, line: 362, type: !1457)
!1509 = !DILocation(line: 0, scope: !1499)
!1510 = !DILocation(line: 362, column: 3, scope: !1499)
!1511 = !DILocation(line: 362, column: 11, scope: !1499)
!1512 = !DILocation(line: 363, column: 3, scope: !1499)
!1513 = !DILocation(line: 364, column: 3, scope: !1499)
!1514 = !DILocation(line: 366, column: 3, scope: !1499)
!1515 = !DILocation(line: 367, column: 1, scope: !1499)
!1516 = distinct !DISubprogram(name: "rpl_fcntl", scope: !458, file: !458, line: 202, type: !1447, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1517)
!1517 = !{!1518, !1519, !1520, !1531, !1532, !1535, !1537, !1541}
!1518 = !DILocalVariable(name: "fd", arg: 1, scope: !1516, file: !458, line: 202, type: !184)
!1519 = !DILocalVariable(name: "action", arg: 2, scope: !1516, file: !458, line: 202, type: !184)
!1520 = !DILocalVariable(name: "arg", scope: !1516, file: !458, line: 208, type: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1459, line: 22, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1523, baseType: !1524)
!1523 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1525, size: 192, elements: !45)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1525, file: !1523, line: 208, baseType: !139, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1525, file: !1523, line: 208, baseType: !139, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1525, file: !1523, line: 208, baseType: !178, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1525, file: !1523, line: 208, baseType: !178, size: 64, offset: 128)
!1531 = !DILocalVariable(name: "result", scope: !1516, file: !458, line: 211, type: !184)
!1532 = !DILocalVariable(name: "target", scope: !1533, file: !458, line: 216, type: !184)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !458, line: 215, column: 7)
!1534 = distinct !DILexicalBlock(scope: !1516, file: !458, line: 213, column: 5)
!1535 = !DILocalVariable(name: "target", scope: !1536, file: !458, line: 223, type: !184)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !458, line: 222, column: 7)
!1537 = !DILocalVariable(name: "x", scope: !1538, file: !458, line: 418, type: !184)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !458, line: 417, column: 13)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !458, line: 261, column: 11)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !458, line: 258, column: 7)
!1541 = !DILocalVariable(name: "p", scope: !1542, file: !458, line: 426, type: !178)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !458, line: 425, column: 13)
!1543 = !DILocation(line: 0, scope: !1516)
!1544 = !DILocation(line: 208, column: 3, scope: !1516)
!1545 = !DILocation(line: 208, column: 11, scope: !1516)
!1546 = !DILocation(line: 209, column: 3, scope: !1516)
!1547 = !DILocation(line: 212, column: 3, scope: !1516)
!1548 = !DILocation(line: 216, column: 22, scope: !1533)
!1549 = !DILocation(line: 0, scope: !1533)
!1550 = !DILocalVariable(name: "fd", arg: 1, scope: !1551, file: !458, line: 444, type: !184)
!1551 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !458, file: !458, line: 444, type: !459, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !1552)
!1552 = !{!1550, !1553, !1554}
!1553 = !DILocalVariable(name: "target", arg: 2, scope: !1551, file: !458, line: 444, type: !184)
!1554 = !DILocalVariable(name: "result", scope: !1551, file: !458, line: 446, type: !184)
!1555 = !DILocation(line: 0, scope: !1551, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 217, column: 18, scope: !1533)
!1557 = !DILocation(line: 479, column: 12, scope: !1551, inlinedAt: !1556)
!1558 = !DILocation(line: 223, column: 22, scope: !1536)
!1559 = !DILocation(line: 0, scope: !1536)
!1560 = !DILocation(line: 0, scope: !457, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 224, column: 18, scope: !1536)
!1562 = !DILocation(line: 507, column: 12, scope: !1563, inlinedAt: !1561)
!1563 = distinct !DILexicalBlock(scope: !457, file: !458, line: 507, column: 7)
!1564 = !DILocation(line: 507, column: 9, scope: !1563, inlinedAt: !1561)
!1565 = !DILocation(line: 507, column: 7, scope: !457, inlinedAt: !1561)
!1566 = !DILocation(line: 509, column: 16, scope: !1567, inlinedAt: !1561)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !458, line: 508, column: 5)
!1568 = !DILocation(line: 510, column: 13, scope: !1569, inlinedAt: !1561)
!1569 = distinct !DILexicalBlock(scope: !1567, file: !458, line: 510, column: 11)
!1570 = !DILocation(line: 510, column: 23, scope: !1569, inlinedAt: !1561)
!1571 = !DILocation(line: 510, column: 26, scope: !1569, inlinedAt: !1561)
!1572 = !DILocation(line: 510, column: 32, scope: !1569, inlinedAt: !1561)
!1573 = !DILocation(line: 510, column: 11, scope: !1567, inlinedAt: !1561)
!1574 = !DILocation(line: 512, column: 30, scope: !1575, inlinedAt: !1561)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !458, line: 511, column: 9)
!1576 = !DILocation(line: 528, column: 19, scope: !469, inlinedAt: !1561)
!1577 = !DILocation(line: 0, scope: !1551, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 520, column: 20, scope: !1579, inlinedAt: !1561)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !458, line: 519, column: 9)
!1580 = !DILocation(line: 479, column: 12, scope: !1551, inlinedAt: !1578)
!1581 = !DILocation(line: 521, column: 22, scope: !1582, inlinedAt: !1561)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !458, line: 521, column: 15)
!1583 = !DILocation(line: 521, column: 15, scope: !1579, inlinedAt: !1561)
!1584 = !DILocation(line: 522, column: 32, scope: !1582, inlinedAt: !1561)
!1585 = !DILocation(line: 522, column: 13, scope: !1582, inlinedAt: !1561)
!1586 = !DILocation(line: 0, scope: !1551, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 527, column: 14, scope: !1563, inlinedAt: !1561)
!1588 = !DILocation(line: 479, column: 12, scope: !1551, inlinedAt: !1587)
!1589 = !DILocation(line: 0, scope: !1563, inlinedAt: !1561)
!1590 = !DILocation(line: 528, column: 9, scope: !469, inlinedAt: !1561)
!1591 = !DILocation(line: 530, column: 19, scope: !468, inlinedAt: !1561)
!1592 = !DILocation(line: 0, scope: !468, inlinedAt: !1561)
!1593 = !DILocation(line: 531, column: 17, scope: !472, inlinedAt: !1561)
!1594 = !DILocation(line: 531, column: 21, scope: !472, inlinedAt: !1561)
!1595 = !DILocation(line: 531, column: 54, scope: !472, inlinedAt: !1561)
!1596 = !DILocation(line: 531, column: 24, scope: !472, inlinedAt: !1561)
!1597 = !DILocation(line: 531, column: 68, scope: !472, inlinedAt: !1561)
!1598 = !DILocation(line: 531, column: 11, scope: !468, inlinedAt: !1561)
!1599 = !DILocation(line: 533, column: 29, scope: !471, inlinedAt: !1561)
!1600 = !DILocation(line: 0, scope: !471, inlinedAt: !1561)
!1601 = !DILocation(line: 534, column: 11, scope: !471, inlinedAt: !1561)
!1602 = !DILocation(line: 535, column: 17, scope: !471, inlinedAt: !1561)
!1603 = !DILocation(line: 537, column: 9, scope: !471, inlinedAt: !1561)
!1604 = !DILocation(line: 329, column: 22, scope: !1539)
!1605 = !DILocation(line: 330, column: 13, scope: !1539)
!1606 = !DILocation(line: 418, column: 23, scope: !1538)
!1607 = !DILocation(line: 0, scope: !1538)
!1608 = !DILocation(line: 419, column: 24, scope: !1538)
!1609 = !DILocation(line: 421, column: 13, scope: !1539)
!1610 = !DILocation(line: 426, column: 25, scope: !1542)
!1611 = !DILocation(line: 0, scope: !1542)
!1612 = !DILocation(line: 427, column: 24, scope: !1542)
!1613 = !DILocation(line: 429, column: 13, scope: !1539)
!1614 = !DILocation(line: 0, scope: !1534)
!1615 = !DILocation(line: 438, column: 3, scope: !1516)
!1616 = !DILocation(line: 441, column: 1, scope: !1516)
!1617 = !DILocation(line: 440, column: 3, scope: !1516)
!1618 = distinct !DISubprogram(name: "fd_reopen", scope: !755, file: !755, line: 32, type: !1619, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!184, !184, !134, !184, !1087}
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627, !1630}
!1622 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1618, file: !755, line: 32, type: !184)
!1623 = !DILocalVariable(name: "file", arg: 2, scope: !1618, file: !755, line: 32, type: !134)
!1624 = !DILocalVariable(name: "flags", arg: 3, scope: !1618, file: !755, line: 32, type: !184)
!1625 = !DILocalVariable(name: "mode", arg: 4, scope: !1618, file: !755, line: 32, type: !1087)
!1626 = !DILocalVariable(name: "fd", scope: !1618, file: !755, line: 34, type: !184)
!1627 = !DILocalVariable(name: "fd2", scope: !1628, file: !755, line: 40, type: !184)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !755, line: 39, column: 5)
!1629 = distinct !DILexicalBlock(scope: !1618, file: !755, line: 36, column: 7)
!1630 = !DILocalVariable(name: "saved_errno", scope: !1628, file: !755, line: 41, type: !184)
!1631 = !DILocation(line: 0, scope: !1618)
!1632 = !DILocation(line: 34, column: 12, scope: !1618)
!1633 = !DILocation(line: 36, column: 10, scope: !1629)
!1634 = !DILocation(line: 36, column: 24, scope: !1629)
!1635 = !DILocation(line: 40, column: 17, scope: !1628)
!1636 = !DILocation(line: 0, scope: !1628)
!1637 = !DILocation(line: 41, column: 25, scope: !1628)
!1638 = !DILocation(line: 42, column: 7, scope: !1628)
!1639 = !DILocation(line: 43, column: 13, scope: !1628)
!1640 = !DILocation(line: 0, scope: !1629)
!1641 = !DILocation(line: 46, column: 1, scope: !1618)
!1642 = distinct !DISubprogram(name: "file_name_concat", scope: !757, file: !757, line: 35, type: !1643, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !1645)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!330, !134, !134, !1065}
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DILocalVariable(name: "dir", arg: 1, scope: !1642, file: !757, line: 35, type: !134)
!1647 = !DILocalVariable(name: "base", arg: 2, scope: !1642, file: !757, line: 35, type: !134)
!1648 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1642, file: !757, line: 35, type: !1065)
!1649 = !DILocalVariable(name: "p", scope: !1642, file: !757, line: 37, type: !330)
!1650 = !DILocation(line: 0, scope: !1642)
!1651 = !DILocation(line: 37, column: 13, scope: !1642)
!1652 = !DILocation(line: 38, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !757, line: 38, column: 7)
!1654 = !DILocation(line: 38, column: 7, scope: !1642)
!1655 = !DILocation(line: 39, column: 5, scope: !1653)
!1656 = !DILocation(line: 40, column: 3, scope: !1642)
!1657 = distinct !DISubprogram(name: "mfile_name_concat", scope: !760, file: !760, line: 48, type: !1643, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1658)
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1659 = !DILocalVariable(name: "dir", arg: 1, scope: !1657, file: !760, line: 48, type: !134)
!1660 = !DILocalVariable(name: "base", arg: 2, scope: !1657, file: !760, line: 48, type: !134)
!1661 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1657, file: !760, line: 48, type: !1065)
!1662 = !DILocalVariable(name: "dirbase", scope: !1657, file: !760, line: 50, type: !134)
!1663 = !DILocalVariable(name: "dirbaselen", scope: !1657, file: !760, line: 51, type: !186)
!1664 = !DILocalVariable(name: "dirlen", scope: !1657, file: !760, line: 52, type: !186)
!1665 = !DILocalVariable(name: "baselen", scope: !1657, file: !760, line: 53, type: !186)
!1666 = !DILocalVariable(name: "sep", scope: !1657, file: !760, line: 54, type: !4)
!1667 = !DILocalVariable(name: "p_concat", scope: !1657, file: !760, line: 71, type: !330)
!1668 = !DILocalVariable(name: "p", scope: !1669, file: !760, line: 76, type: !330)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !760, line: 75, column: 3)
!1670 = !DILocation(line: 0, scope: !1657)
!1671 = !DILocation(line: 50, column: 25, scope: !1657)
!1672 = !DILocation(line: 51, column: 23, scope: !1657)
!1673 = !DILocation(line: 52, column: 27, scope: !1657)
!1674 = !DILocation(line: 52, column: 33, scope: !1657)
!1675 = !DILocation(line: 53, column: 20, scope: !1657)
!1676 = !DILocation(line: 55, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1657, file: !760, line: 55, column: 7)
!1678 = !DILocation(line: 55, column: 7, scope: !1657)
!1679 = !DILocation(line: 58, column: 13, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !760, line: 58, column: 11)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !760, line: 56, column: 5)
!1682 = !DILocation(line: 58, column: 39, scope: !1680)
!1683 = !DILocation(line: 58, column: 44, scope: !1680)
!1684 = !DILocation(line: 58, column: 11, scope: !1681)
!1685 = !DILocation(line: 61, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1677, file: !760, line: 61, column: 12)
!1687 = !DILocation(line: 61, column: 12, scope: !1677)
!1688 = !DILocation(line: 71, column: 35, scope: !1657)
!1689 = !DILocation(line: 71, column: 52, scope: !1657)
!1690 = !DILocation(line: 71, column: 62, scope: !1657)
!1691 = !DILocation(line: 71, column: 20, scope: !1657)
!1692 = !DILocation(line: 72, column: 16, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1657, file: !760, line: 72, column: 7)
!1694 = !DILocation(line: 72, column: 7, scope: !1657)
!1695 = !DILocalVariable(name: "__dest", arg: 1, scope: !1696, file: !1697, line: 42, type: !1700)
!1696 = distinct !DISubprogram(name: "mempcpy", scope: !1697, file: !1697, line: 42, type: !1698, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1701)
!1697 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!178, !1700, !1059, !186}
!1700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1701 = !{!1695, !1702, !1703}
!1702 = !DILocalVariable(name: "__src", arg: 2, scope: !1696, file: !1697, line: 42, type: !1059)
!1703 = !DILocalVariable(name: "__len", arg: 3, scope: !1696, file: !1697, line: 42, type: !186)
!1704 = !DILocation(line: 0, scope: !1696, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 78, column: 9, scope: !1669)
!1706 = !DILocation(line: 45, column: 10, scope: !1696, inlinedAt: !1705)
!1707 = !DILocation(line: 0, scope: !1669)
!1708 = !DILocation(line: 79, column: 8, scope: !1669)
!1709 = !DILocation(line: 80, column: 7, scope: !1669)
!1710 = !DILocation(line: 82, column: 9, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1669, file: !760, line: 82, column: 9)
!1712 = !DILocation(line: 82, column: 9, scope: !1669)
!1713 = !DILocation(line: 83, column: 23, scope: !1711)
!1714 = !DILocation(line: 83, column: 7, scope: !1711)
!1715 = !DILocation(line: 0, scope: !1696, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 85, column: 9, scope: !1669)
!1717 = !DILocation(line: 45, column: 10, scope: !1696, inlinedAt: !1716)
!1718 = !DILocation(line: 86, column: 8, scope: !1669)
!1719 = !DILocation(line: 89, column: 3, scope: !1657)
!1720 = !DILocation(line: 90, column: 1, scope: !1657)
!1721 = !DISubprogram(name: "strlen", scope: !1032, file: !1032, line: 407, type: !1722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!188, !134}
!1724 = !DISubprogram(name: "malloc", scope: !1036, file: !1036, line: 540, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!178, !186}
!1727 = distinct !DISubprogram(name: "getprogname", scope: !762, file: !762, line: 54, type: !1728, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !895)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!134}
!1730 = !DILocation(line: 58, column: 10, scope: !1727)
!1731 = !DILocation(line: 58, column: 3, scope: !1727)
!1732 = distinct !DISubprogram(name: "parse_long_options", scope: !475, file: !475, line: 45, type: !1733, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !184, !1065, !134, !134, !134, !181, null}
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1746}
!1736 = !DILocalVariable(name: "argc", arg: 1, scope: !1732, file: !475, line: 45, type: !184)
!1737 = !DILocalVariable(name: "argv", arg: 2, scope: !1732, file: !475, line: 46, type: !1065)
!1738 = !DILocalVariable(name: "command_name", arg: 3, scope: !1732, file: !475, line: 47, type: !134)
!1739 = !DILocalVariable(name: "package", arg: 4, scope: !1732, file: !475, line: 48, type: !134)
!1740 = !DILocalVariable(name: "version", arg: 5, scope: !1732, file: !475, line: 49, type: !134)
!1741 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1732, file: !475, line: 50, type: !181)
!1742 = !DILocalVariable(name: "saved_opterr", scope: !1732, file: !475, line: 53, type: !184)
!1743 = !DILocalVariable(name: "c", scope: !1744, file: !475, line: 60, type: !184)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !475, line: 59, column: 5)
!1745 = distinct !DILexicalBlock(scope: !1732, file: !475, line: 58, column: 7)
!1746 = !DILocalVariable(name: "authors", scope: !1747, file: !475, line: 71, type: !1751)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !475, line: 70, column: 15)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !475, line: 64, column: 13)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !475, line: 62, column: 9)
!1750 = distinct !DILexicalBlock(scope: !1744, file: !475, line: 61, column: 11)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !906, line: 52, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1459, line: 14, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1754, baseType: !1755)
!1754 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, size: 192, elements: !45)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1756, file: !1754, line: 71, baseType: !139, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1756, file: !1754, line: 71, baseType: !139, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1756, file: !1754, line: 71, baseType: !178, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1756, file: !1754, line: 71, baseType: !178, size: 64, offset: 128)
!1762 = !DILocation(line: 0, scope: !1732)
!1763 = !DILocation(line: 53, column: 22, scope: !1732)
!1764 = !DILocation(line: 56, column: 10, scope: !1732)
!1765 = !DILocation(line: 58, column: 12, scope: !1745)
!1766 = !DILocation(line: 58, column: 7, scope: !1732)
!1767 = !DILocation(line: 60, column: 15, scope: !1744)
!1768 = !DILocation(line: 0, scope: !1744)
!1769 = !DILocation(line: 61, column: 11, scope: !1744)
!1770 = !DILocation(line: 66, column: 15, scope: !1748)
!1771 = !DILocation(line: 67, column: 15, scope: !1748)
!1772 = !DILocation(line: 71, column: 17, scope: !1747)
!1773 = !DILocation(line: 71, column: 25, scope: !1747)
!1774 = !DILocation(line: 72, column: 17, scope: !1747)
!1775 = !DILocation(line: 73, column: 33, scope: !1747)
!1776 = !DILocation(line: 73, column: 17, scope: !1747)
!1777 = !DILocation(line: 74, column: 17, scope: !1747)
!1778 = !DILocation(line: 85, column: 10, scope: !1732)
!1779 = !DILocation(line: 89, column: 10, scope: !1732)
!1780 = !DILocation(line: 90, column: 1, scope: !1732)
!1781 = !DISubprogram(name: "getopt_long", scope: !489, file: !489, line: 66, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!184, !184, !1252, !134, !1784, !494}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1785 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !475, file: !475, line: 98, type: !1786, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !184, !1065, !134, !134, !134, !309, !181, null}
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1789 = !DILocalVariable(name: "argc", arg: 1, scope: !1785, file: !475, line: 98, type: !184)
!1790 = !DILocalVariable(name: "argv", arg: 2, scope: !1785, file: !475, line: 99, type: !1065)
!1791 = !DILocalVariable(name: "command_name", arg: 3, scope: !1785, file: !475, line: 100, type: !134)
!1792 = !DILocalVariable(name: "package", arg: 4, scope: !1785, file: !475, line: 101, type: !134)
!1793 = !DILocalVariable(name: "version", arg: 5, scope: !1785, file: !475, line: 102, type: !134)
!1794 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1785, file: !475, line: 103, type: !309)
!1795 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1785, file: !475, line: 104, type: !181)
!1796 = !DILocalVariable(name: "saved_opterr", scope: !1785, file: !475, line: 107, type: !184)
!1797 = !DILocalVariable(name: "optstring", scope: !1785, file: !475, line: 112, type: !134)
!1798 = !DILocalVariable(name: "c", scope: !1785, file: !475, line: 114, type: !184)
!1799 = !DILocalVariable(name: "authors", scope: !1800, file: !475, line: 125, type: !1751)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !475, line: 124, column: 11)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !475, line: 118, column: 9)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !475, line: 116, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1785, file: !475, line: 115, column: 7)
!1804 = !DILocation(line: 0, scope: !1785)
!1805 = !DILocation(line: 107, column: 22, scope: !1785)
!1806 = !DILocation(line: 110, column: 10, scope: !1785)
!1807 = !DILocation(line: 112, column: 27, scope: !1785)
!1808 = !DILocation(line: 114, column: 11, scope: !1785)
!1809 = !DILocation(line: 115, column: 7, scope: !1785)
!1810 = !DILocation(line: 125, column: 13, scope: !1800)
!1811 = !DILocation(line: 125, column: 21, scope: !1800)
!1812 = !DILocation(line: 126, column: 13, scope: !1800)
!1813 = !DILocation(line: 127, column: 29, scope: !1800)
!1814 = !DILocation(line: 127, column: 13, scope: !1800)
!1815 = !DILocation(line: 128, column: 13, scope: !1800)
!1816 = !DILocation(line: 132, column: 26, scope: !1801)
!1817 = !DILocation(line: 133, column: 11, scope: !1801)
!1818 = !DILocation(line: 0, scope: !1801)
!1819 = !DILocation(line: 138, column: 10, scope: !1785)
!1820 = !DILocation(line: 139, column: 1, scope: !1785)
!1821 = distinct !DISubprogram(name: "set_program_name", scope: !499, file: !499, line: 37, type: !855, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1822)
!1822 = !{!1823, !1824, !1825}
!1823 = !DILocalVariable(name: "argv0", arg: 1, scope: !1821, file: !499, line: 37, type: !134)
!1824 = !DILocalVariable(name: "slash", scope: !1821, file: !499, line: 44, type: !134)
!1825 = !DILocalVariable(name: "base", scope: !1821, file: !499, line: 45, type: !134)
!1826 = !DILocation(line: 0, scope: !1821)
!1827 = !DILocation(line: 44, column: 23, scope: !1821)
!1828 = !DILocation(line: 45, column: 22, scope: !1821)
!1829 = !DILocation(line: 46, column: 17, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1821, file: !499, line: 46, column: 7)
!1831 = !DILocation(line: 46, column: 9, scope: !1830)
!1832 = !DILocation(line: 46, column: 25, scope: !1830)
!1833 = !DILocation(line: 46, column: 40, scope: !1830)
!1834 = !DILocalVariable(name: "__s1", arg: 1, scope: !1835, file: !924, line: 974, type: !1060)
!1835 = distinct !DISubprogram(name: "memeq", scope: !924, file: !924, line: 974, type: !1836, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!309, !1060, !1060, !186}
!1838 = !{!1834, !1839, !1840}
!1839 = !DILocalVariable(name: "__s2", arg: 2, scope: !1835, file: !924, line: 974, type: !1060)
!1840 = !DILocalVariable(name: "__n", arg: 3, scope: !1835, file: !924, line: 974, type: !186)
!1841 = !DILocation(line: 0, scope: !1835, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 46, column: 28, scope: !1830)
!1843 = !DILocation(line: 976, column: 11, scope: !1835, inlinedAt: !1842)
!1844 = !DILocation(line: 976, column: 10, scope: !1835, inlinedAt: !1842)
!1845 = !DILocation(line: 46, column: 7, scope: !1821)
!1846 = !DILocation(line: 49, column: 11, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !499, line: 49, column: 11)
!1848 = distinct !DILexicalBlock(scope: !1830, file: !499, line: 47, column: 5)
!1849 = !DILocation(line: 49, column: 36, scope: !1847)
!1850 = !DILocation(line: 49, column: 11, scope: !1848)
!1851 = !DILocation(line: 65, column: 16, scope: !1821)
!1852 = !DILocation(line: 71, column: 27, scope: !1821)
!1853 = !DILocation(line: 74, column: 33, scope: !1821)
!1854 = !DILocation(line: 76, column: 1, scope: !1821)
!1855 = !DISubprogram(name: "strrchr", scope: !1032, file: !1032, line: 273, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1856 = !DILocation(line: 0, scope: !508)
!1857 = !DILocation(line: 40, column: 29, scope: !508)
!1858 = !DILocation(line: 41, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !508, file: !509, line: 41, column: 7)
!1860 = !DILocation(line: 41, column: 7, scope: !508)
!1861 = !DILocation(line: 47, column: 3, scope: !508)
!1862 = !DILocation(line: 48, column: 3, scope: !508)
!1863 = !DILocation(line: 48, column: 13, scope: !508)
!1864 = !DILocalVariable(name: "ps", arg: 1, scope: !1865, file: !1866, line: 1135, type: !1869)
!1865 = distinct !DISubprogram(name: "mbszero", scope: !1866, file: !1866, line: 1135, type: !1867, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1870)
!1866 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1870 = !{!1864}
!1871 = !DILocation(line: 0, scope: !1865, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 48, column: 18, scope: !508)
!1873 = !DILocalVariable(name: "__dest", arg: 1, scope: !1874, file: !1697, line: 57, type: !178)
!1874 = distinct !DISubprogram(name: "memset", scope: !1697, file: !1697, line: 57, type: !1875, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!178, !178, !184, !186}
!1877 = !{!1873, !1878, !1879}
!1878 = !DILocalVariable(name: "__ch", arg: 2, scope: !1874, file: !1697, line: 57, type: !184)
!1879 = !DILocalVariable(name: "__len", arg: 3, scope: !1874, file: !1697, line: 57, type: !186)
!1880 = !DILocation(line: 0, scope: !1874, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 1137, column: 3, scope: !1865, inlinedAt: !1872)
!1882 = !DILocation(line: 59, column: 10, scope: !1874, inlinedAt: !1881)
!1883 = !DILocation(line: 49, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !508, file: !509, line: 49, column: 7)
!1885 = !DILocation(line: 49, column: 39, scope: !1884)
!1886 = !DILocation(line: 49, column: 44, scope: !1884)
!1887 = !DILocation(line: 54, column: 1, scope: !508)
!1888 = !DISubprogram(name: "mbrtoc32", scope: !520, file: !520, line: 57, type: !1889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!186, !1891, !901, !186, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1869)
!1894 = distinct !DISubprogram(name: "clone_quoting_options", scope: !539, file: !539, line: 113, type: !1895, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1898)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1898 = !{!1899, !1900, !1901}
!1899 = !DILocalVariable(name: "o", arg: 1, scope: !1894, file: !539, line: 113, type: !1897)
!1900 = !DILocalVariable(name: "saved_errno", scope: !1894, file: !539, line: 115, type: !184)
!1901 = !DILocalVariable(name: "p", scope: !1894, file: !539, line: 116, type: !1897)
!1902 = !DILocation(line: 0, scope: !1894)
!1903 = !DILocation(line: 115, column: 21, scope: !1894)
!1904 = !DILocation(line: 116, column: 40, scope: !1894)
!1905 = !DILocation(line: 116, column: 31, scope: !1894)
!1906 = !DILocation(line: 118, column: 9, scope: !1894)
!1907 = !DILocation(line: 119, column: 3, scope: !1894)
!1908 = distinct !DISubprogram(name: "get_quoting_style", scope: !539, file: !539, line: 124, type: !1909, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1913)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!148, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!1913 = !{!1914}
!1914 = !DILocalVariable(name: "o", arg: 1, scope: !1908, file: !539, line: 124, type: !1911)
!1915 = !DILocation(line: 0, scope: !1908)
!1916 = !DILocation(line: 126, column: 11, scope: !1908)
!1917 = !DILocation(line: 126, column: 46, scope: !1908)
!1918 = !{!1919, !844, i64 0}
!1919 = !{!"quoting_options", !844, i64 0, !912, i64 4, !844, i64 8, !843, i64 40, !843, i64 48}
!1920 = !DILocation(line: 126, column: 3, scope: !1908)
!1921 = distinct !DISubprogram(name: "set_quoting_style", scope: !539, file: !539, line: 132, type: !1922, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1897, !148}
!1924 = !{!1925, !1926}
!1925 = !DILocalVariable(name: "o", arg: 1, scope: !1921, file: !539, line: 132, type: !1897)
!1926 = !DILocalVariable(name: "s", arg: 2, scope: !1921, file: !539, line: 132, type: !148)
!1927 = !DILocation(line: 0, scope: !1921)
!1928 = !DILocation(line: 134, column: 4, scope: !1921)
!1929 = !DILocation(line: 134, column: 45, scope: !1921)
!1930 = !DILocation(line: 135, column: 1, scope: !1921)
!1931 = distinct !DISubprogram(name: "set_char_quoting", scope: !539, file: !539, line: 143, type: !1932, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!184, !1897, !4, !184}
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1941, !1942}
!1935 = !DILocalVariable(name: "o", arg: 1, scope: !1931, file: !539, line: 143, type: !1897)
!1936 = !DILocalVariable(name: "c", arg: 2, scope: !1931, file: !539, line: 143, type: !4)
!1937 = !DILocalVariable(name: "i", arg: 3, scope: !1931, file: !539, line: 143, type: !184)
!1938 = !DILocalVariable(name: "uc", scope: !1931, file: !539, line: 145, type: !189)
!1939 = !DILocalVariable(name: "p", scope: !1931, file: !539, line: 146, type: !1940)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1941 = !DILocalVariable(name: "shift", scope: !1931, file: !539, line: 148, type: !184)
!1942 = !DILocalVariable(name: "r", scope: !1931, file: !539, line: 149, type: !139)
!1943 = !DILocation(line: 0, scope: !1931)
!1944 = !DILocation(line: 147, column: 6, scope: !1931)
!1945 = !DILocation(line: 147, column: 41, scope: !1931)
!1946 = !DILocation(line: 147, column: 62, scope: !1931)
!1947 = !DILocation(line: 147, column: 57, scope: !1931)
!1948 = !DILocation(line: 148, column: 15, scope: !1931)
!1949 = !DILocation(line: 149, column: 21, scope: !1931)
!1950 = !DILocation(line: 149, column: 24, scope: !1931)
!1951 = !DILocation(line: 149, column: 34, scope: !1931)
!1952 = !DILocation(line: 150, column: 19, scope: !1931)
!1953 = !DILocation(line: 150, column: 24, scope: !1931)
!1954 = !DILocation(line: 150, column: 6, scope: !1931)
!1955 = !DILocation(line: 151, column: 3, scope: !1931)
!1956 = distinct !DISubprogram(name: "set_quoting_flags", scope: !539, file: !539, line: 159, type: !1957, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!184, !1897, !184}
!1959 = !{!1960, !1961, !1962}
!1960 = !DILocalVariable(name: "o", arg: 1, scope: !1956, file: !539, line: 159, type: !1897)
!1961 = !DILocalVariable(name: "i", arg: 2, scope: !1956, file: !539, line: 159, type: !184)
!1962 = !DILocalVariable(name: "r", scope: !1956, file: !539, line: 163, type: !184)
!1963 = !DILocation(line: 0, scope: !1956)
!1964 = !DILocation(line: 161, column: 8, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !539, line: 161, column: 7)
!1966 = !DILocation(line: 161, column: 7, scope: !1956)
!1967 = !DILocation(line: 163, column: 14, scope: !1956)
!1968 = !{!1919, !912, i64 4}
!1969 = !DILocation(line: 164, column: 12, scope: !1956)
!1970 = !DILocation(line: 165, column: 3, scope: !1956)
!1971 = distinct !DISubprogram(name: "set_custom_quoting", scope: !539, file: !539, line: 169, type: !1972, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1897, !134, !134}
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "o", arg: 1, scope: !1971, file: !539, line: 169, type: !1897)
!1976 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1971, file: !539, line: 170, type: !134)
!1977 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1971, file: !539, line: 170, type: !134)
!1978 = !DILocation(line: 0, scope: !1971)
!1979 = !DILocation(line: 172, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1971, file: !539, line: 172, column: 7)
!1981 = !DILocation(line: 172, column: 7, scope: !1971)
!1982 = !DILocation(line: 174, column: 12, scope: !1971)
!1983 = !DILocation(line: 175, column: 8, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1971, file: !539, line: 175, column: 7)
!1985 = !DILocation(line: 175, column: 19, scope: !1984)
!1986 = !DILocation(line: 176, column: 5, scope: !1984)
!1987 = !DILocation(line: 177, column: 6, scope: !1971)
!1988 = !DILocation(line: 177, column: 17, scope: !1971)
!1989 = !{!1919, !843, i64 40}
!1990 = !DILocation(line: 178, column: 6, scope: !1971)
!1991 = !DILocation(line: 178, column: 18, scope: !1971)
!1992 = !{!1919, !843, i64 48}
!1993 = !DILocation(line: 179, column: 1, scope: !1971)
!1994 = !DISubprogram(name: "abort", scope: !1036, file: !1036, line: 598, type: !453, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !895)
!1995 = distinct !DISubprogram(name: "quotearg_buffer", scope: !539, file: !539, line: 774, type: !1996, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!186, !330, !186, !134, !186, !1911}
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1999 = !DILocalVariable(name: "buffer", arg: 1, scope: !1995, file: !539, line: 774, type: !330)
!2000 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1995, file: !539, line: 774, type: !186)
!2001 = !DILocalVariable(name: "arg", arg: 3, scope: !1995, file: !539, line: 775, type: !134)
!2002 = !DILocalVariable(name: "argsize", arg: 4, scope: !1995, file: !539, line: 775, type: !186)
!2003 = !DILocalVariable(name: "o", arg: 5, scope: !1995, file: !539, line: 776, type: !1911)
!2004 = !DILocalVariable(name: "p", scope: !1995, file: !539, line: 778, type: !1911)
!2005 = !DILocalVariable(name: "saved_errno", scope: !1995, file: !539, line: 779, type: !184)
!2006 = !DILocalVariable(name: "r", scope: !1995, file: !539, line: 780, type: !186)
!2007 = !DILocation(line: 0, scope: !1995)
!2008 = !DILocation(line: 778, column: 37, scope: !1995)
!2009 = !DILocation(line: 779, column: 21, scope: !1995)
!2010 = !DILocation(line: 781, column: 43, scope: !1995)
!2011 = !DILocation(line: 781, column: 53, scope: !1995)
!2012 = !DILocation(line: 781, column: 63, scope: !1995)
!2013 = !DILocation(line: 782, column: 43, scope: !1995)
!2014 = !DILocation(line: 782, column: 58, scope: !1995)
!2015 = !DILocation(line: 780, column: 14, scope: !1995)
!2016 = !DILocation(line: 783, column: 9, scope: !1995)
!2017 = !DILocation(line: 784, column: 3, scope: !1995)
!2018 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !539, file: !539, line: 251, type: !2019, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2023)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!186, !330, !186, !134, !186, !148, !184, !2021, !134, !134}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2048, !2050, !2053, !2054, !2055, !2056, !2059, !2060, !2063, !2067, !2068, !2076, !2079, !2080, !2082, !2083, !2084, !2085}
!2024 = !DILocalVariable(name: "buffer", arg: 1, scope: !2018, file: !539, line: 251, type: !330)
!2025 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2018, file: !539, line: 251, type: !186)
!2026 = !DILocalVariable(name: "arg", arg: 3, scope: !2018, file: !539, line: 252, type: !134)
!2027 = !DILocalVariable(name: "argsize", arg: 4, scope: !2018, file: !539, line: 252, type: !186)
!2028 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2018, file: !539, line: 253, type: !148)
!2029 = !DILocalVariable(name: "flags", arg: 6, scope: !2018, file: !539, line: 253, type: !184)
!2030 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2018, file: !539, line: 254, type: !2021)
!2031 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2018, file: !539, line: 255, type: !134)
!2032 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2018, file: !539, line: 256, type: !134)
!2033 = !DILocalVariable(name: "unibyte_locale", scope: !2018, file: !539, line: 258, type: !309)
!2034 = !DILocalVariable(name: "len", scope: !2018, file: !539, line: 260, type: !186)
!2035 = !DILocalVariable(name: "orig_buffersize", scope: !2018, file: !539, line: 261, type: !186)
!2036 = !DILocalVariable(name: "quote_string", scope: !2018, file: !539, line: 262, type: !134)
!2037 = !DILocalVariable(name: "quote_string_len", scope: !2018, file: !539, line: 263, type: !186)
!2038 = !DILocalVariable(name: "backslash_escapes", scope: !2018, file: !539, line: 264, type: !309)
!2039 = !DILocalVariable(name: "elide_outer_quotes", scope: !2018, file: !539, line: 265, type: !309)
!2040 = !DILocalVariable(name: "encountered_single_quote", scope: !2018, file: !539, line: 266, type: !309)
!2041 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2018, file: !539, line: 267, type: !309)
!2042 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2018, file: !539, line: 309, type: !309)
!2043 = !DILocalVariable(name: "lq", scope: !2044, file: !539, line: 361, type: !134)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !539, line: 361, column: 11)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !539, line: 360, column: 13)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !539, line: 333, column: 7)
!2047 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 312, column: 5)
!2048 = !DILocalVariable(name: "i", scope: !2049, file: !539, line: 395, type: !186)
!2049 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 395, column: 3)
!2050 = !DILocalVariable(name: "is_right_quote", scope: !2051, file: !539, line: 397, type: !309)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !539, line: 396, column: 5)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !539, line: 395, column: 3)
!2053 = !DILocalVariable(name: "escaping", scope: !2051, file: !539, line: 398, type: !309)
!2054 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2051, file: !539, line: 399, type: !309)
!2055 = !DILocalVariable(name: "c", scope: !2051, file: !539, line: 417, type: !189)
!2056 = !DILocalVariable(name: "m", scope: !2057, file: !539, line: 598, type: !186)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 596, column: 11)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 419, column: 9)
!2059 = !DILocalVariable(name: "printable", scope: !2057, file: !539, line: 600, type: !309)
!2060 = !DILocalVariable(name: "mbs", scope: !2061, file: !539, line: 609, type: !609)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !539, line: 608, column: 15)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !539, line: 602, column: 17)
!2063 = !DILocalVariable(name: "w", scope: !2064, file: !539, line: 618, type: !519)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !539, line: 617, column: 19)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !539, line: 616, column: 17)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !539, line: 616, column: 17)
!2067 = !DILocalVariable(name: "bytes", scope: !2064, file: !539, line: 619, type: !186)
!2068 = !DILocalVariable(name: "j", scope: !2069, file: !539, line: 648, type: !186)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !539, line: 648, column: 29)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !539, line: 647, column: 27)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !539, line: 645, column: 29)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !539, line: 636, column: 23)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !539, line: 628, column: 30)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !539, line: 623, column: 30)
!2075 = distinct !DILexicalBlock(scope: !2064, file: !539, line: 621, column: 25)
!2076 = !DILocalVariable(name: "ilim", scope: !2077, file: !539, line: 674, type: !186)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !539, line: 671, column: 15)
!2078 = distinct !DILexicalBlock(scope: !2057, file: !539, line: 670, column: 17)
!2079 = !DILabel(scope: !2018, name: "process_input", file: !539, line: 308)
!2080 = !DILabel(scope: !2081, name: "c_and_shell_escape", file: !539, line: 502)
!2081 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 478, column: 9)
!2082 = !DILabel(scope: !2081, name: "c_escape", file: !539, line: 507)
!2083 = !DILabel(scope: !2051, name: "store_escape", file: !539, line: 709)
!2084 = !DILabel(scope: !2051, name: "store_c", file: !539, line: 712)
!2085 = !DILabel(scope: !2018, name: "force_outer_quoting_style", file: !539, line: 753)
!2086 = !DILocation(line: 0, scope: !2018)
!2087 = !DILocation(line: 258, column: 25, scope: !2018)
!2088 = !DILocation(line: 258, column: 36, scope: !2018)
!2089 = !DILocation(line: 265, column: 8, scope: !2018)
!2090 = !DILocation(line: 267, column: 3, scope: !2018)
!2091 = !DILocation(line: 261, column: 10, scope: !2018)
!2092 = !DILocation(line: 262, column: 15, scope: !2018)
!2093 = !DILocation(line: 263, column: 10, scope: !2018)
!2094 = !DILocation(line: 264, column: 8, scope: !2018)
!2095 = !DILocation(line: 266, column: 8, scope: !2018)
!2096 = !DILocation(line: 267, column: 8, scope: !2018)
!2097 = !DILocation(line: 308, column: 2, scope: !2018)
!2098 = !DILocation(line: 311, column: 3, scope: !2018)
!2099 = !DILocation(line: 318, column: 11, scope: !2047)
!2100 = !DILocation(line: 318, column: 12, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2047, file: !539, line: 318, column: 11)
!2102 = !DILocation(line: 319, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !539, line: 319, column: 9)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !539, line: 319, column: 9)
!2105 = !DILocation(line: 319, column: 9, scope: !2104)
!2106 = !DILocation(line: 0, scope: !600, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 357, column: 26, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !539, line: 335, column: 11)
!2109 = distinct !DILexicalBlock(scope: !2046, file: !539, line: 334, column: 13)
!2110 = !DILocation(line: 199, column: 29, scope: !600, inlinedAt: !2107)
!2111 = !DILocation(line: 201, column: 19, scope: !2112, inlinedAt: !2107)
!2112 = distinct !DILexicalBlock(scope: !600, file: !539, line: 201, column: 7)
!2113 = !DILocation(line: 201, column: 7, scope: !600, inlinedAt: !2107)
!2114 = !DILocation(line: 229, column: 3, scope: !600, inlinedAt: !2107)
!2115 = !DILocation(line: 230, column: 3, scope: !600, inlinedAt: !2107)
!2116 = !DILocation(line: 230, column: 13, scope: !600, inlinedAt: !2107)
!2117 = !DILocalVariable(name: "ps", arg: 1, scope: !2118, file: !1866, line: 1135, type: !2121)
!2118 = distinct !DISubprogram(name: "mbszero", scope: !1866, file: !1866, line: 1135, type: !2119, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2122)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!2122 = !{!2117}
!2123 = !DILocation(line: 0, scope: !2118, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 230, column: 18, scope: !600, inlinedAt: !2107)
!2125 = !DILocalVariable(name: "__dest", arg: 1, scope: !2126, file: !1697, line: 57, type: !178)
!2126 = distinct !DISubprogram(name: "memset", scope: !1697, file: !1697, line: 57, type: !1875, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2127)
!2127 = !{!2125, !2128, !2129}
!2128 = !DILocalVariable(name: "__ch", arg: 2, scope: !2126, file: !1697, line: 57, type: !184)
!2129 = !DILocalVariable(name: "__len", arg: 3, scope: !2126, file: !1697, line: 57, type: !186)
!2130 = !DILocation(line: 0, scope: !2126, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1137, column: 3, scope: !2118, inlinedAt: !2124)
!2132 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2131)
!2133 = !DILocation(line: 231, column: 7, scope: !2134, inlinedAt: !2107)
!2134 = distinct !DILexicalBlock(scope: !600, file: !539, line: 231, column: 7)
!2135 = !DILocation(line: 231, column: 40, scope: !2134, inlinedAt: !2107)
!2136 = !DILocation(line: 231, column: 45, scope: !2134, inlinedAt: !2107)
!2137 = !DILocation(line: 235, column: 1, scope: !600, inlinedAt: !2107)
!2138 = !DILocation(line: 0, scope: !600, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 358, column: 27, scope: !2108)
!2140 = !DILocation(line: 199, column: 29, scope: !600, inlinedAt: !2139)
!2141 = !DILocation(line: 201, column: 19, scope: !2112, inlinedAt: !2139)
!2142 = !DILocation(line: 201, column: 7, scope: !600, inlinedAt: !2139)
!2143 = !DILocation(line: 229, column: 3, scope: !600, inlinedAt: !2139)
!2144 = !DILocation(line: 230, column: 3, scope: !600, inlinedAt: !2139)
!2145 = !DILocation(line: 230, column: 13, scope: !600, inlinedAt: !2139)
!2146 = !DILocation(line: 0, scope: !2118, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 230, column: 18, scope: !600, inlinedAt: !2139)
!2148 = !DILocation(line: 0, scope: !2126, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 1137, column: 3, scope: !2118, inlinedAt: !2147)
!2150 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2149)
!2151 = !DILocation(line: 231, column: 7, scope: !2134, inlinedAt: !2139)
!2152 = !DILocation(line: 231, column: 40, scope: !2134, inlinedAt: !2139)
!2153 = !DILocation(line: 231, column: 45, scope: !2134, inlinedAt: !2139)
!2154 = !DILocation(line: 235, column: 1, scope: !600, inlinedAt: !2139)
!2155 = !DILocation(line: 360, column: 14, scope: !2045)
!2156 = !DILocation(line: 360, column: 13, scope: !2046)
!2157 = !DILocation(line: 0, scope: !2044)
!2158 = !DILocation(line: 361, column: 45, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2044, file: !539, line: 361, column: 11)
!2160 = !DILocation(line: 361, column: 11, scope: !2044)
!2161 = !DILocation(line: 362, column: 13, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !539, line: 362, column: 13)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !539, line: 362, column: 13)
!2164 = !DILocation(line: 362, column: 13, scope: !2163)
!2165 = !DILocation(line: 361, column: 52, scope: !2159)
!2166 = distinct !{!2166, !2160, !2167, !958}
!2167 = !DILocation(line: 362, column: 13, scope: !2044)
!2168 = !DILocation(line: 260, column: 10, scope: !2018)
!2169 = !DILocation(line: 365, column: 28, scope: !2046)
!2170 = !DILocation(line: 367, column: 7, scope: !2047)
!2171 = !DILocation(line: 370, column: 7, scope: !2047)
!2172 = !DILocation(line: 373, column: 7, scope: !2047)
!2173 = !DILocation(line: 376, column: 12, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2047, file: !539, line: 376, column: 11)
!2175 = !DILocation(line: 376, column: 11, scope: !2047)
!2176 = !DILocation(line: 381, column: 12, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2047, file: !539, line: 381, column: 11)
!2178 = !DILocation(line: 381, column: 11, scope: !2047)
!2179 = !DILocation(line: 382, column: 9, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !539, line: 382, column: 9)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !539, line: 382, column: 9)
!2182 = !DILocation(line: 382, column: 9, scope: !2181)
!2183 = !DILocation(line: 389, column: 7, scope: !2047)
!2184 = !DILocation(line: 392, column: 7, scope: !2047)
!2185 = !DILocation(line: 0, scope: !2049)
!2186 = !DILocation(line: 395, column: 8, scope: !2049)
!2187 = !DILocation(line: 309, column: 8, scope: !2018)
!2188 = !DILocation(line: 395, scope: !2049)
!2189 = !DILocation(line: 395, column: 34, scope: !2052)
!2190 = !DILocation(line: 395, column: 26, scope: !2052)
!2191 = !DILocation(line: 395, column: 48, scope: !2052)
!2192 = !DILocation(line: 395, column: 55, scope: !2052)
!2193 = !DILocation(line: 395, column: 3, scope: !2049)
!2194 = !DILocation(line: 395, column: 67, scope: !2052)
!2195 = !DILocation(line: 0, scope: !2051)
!2196 = !DILocation(line: 402, column: 11, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 401, column: 11)
!2198 = !DILocation(line: 404, column: 17, scope: !2197)
!2199 = !DILocation(line: 405, column: 39, scope: !2197)
!2200 = !DILocation(line: 409, column: 32, scope: !2197)
!2201 = !DILocation(line: 405, column: 19, scope: !2197)
!2202 = !DILocation(line: 405, column: 15, scope: !2197)
!2203 = !DILocation(line: 410, column: 11, scope: !2197)
!2204 = !DILocation(line: 410, column: 25, scope: !2197)
!2205 = !DILocalVariable(name: "__s1", arg: 1, scope: !2206, file: !924, line: 974, type: !1060)
!2206 = distinct !DISubprogram(name: "memeq", scope: !924, file: !924, line: 974, type: !1836, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2207)
!2207 = !{!2205, !2208, !2209}
!2208 = !DILocalVariable(name: "__s2", arg: 2, scope: !2206, file: !924, line: 974, type: !1060)
!2209 = !DILocalVariable(name: "__n", arg: 3, scope: !2206, file: !924, line: 974, type: !186)
!2210 = !DILocation(line: 0, scope: !2206, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 410, column: 14, scope: !2197)
!2212 = !DILocation(line: 976, column: 11, scope: !2206, inlinedAt: !2211)
!2213 = !DILocation(line: 976, column: 10, scope: !2206, inlinedAt: !2211)
!2214 = !DILocation(line: 401, column: 11, scope: !2051)
!2215 = !DILocation(line: 417, column: 25, scope: !2051)
!2216 = !DILocation(line: 418, column: 7, scope: !2051)
!2217 = !DILocation(line: 421, column: 15, scope: !2058)
!2218 = !DILocation(line: 423, column: 15, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !539, line: 423, column: 15)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !539, line: 422, column: 13)
!2221 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 421, column: 15)
!2222 = !DILocation(line: 423, column: 15, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !539, line: 423, column: 15)
!2224 = !DILocation(line: 423, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !539, line: 423, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !539, line: 423, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !539, line: 423, column: 15)
!2228 = !DILocation(line: 423, column: 15, scope: !2226)
!2229 = !DILocation(line: 423, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !539, line: 423, column: 15)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !539, line: 423, column: 15)
!2232 = !DILocation(line: 423, column: 15, scope: !2231)
!2233 = !DILocation(line: 423, column: 15, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !539, line: 423, column: 15)
!2235 = distinct !DILexicalBlock(scope: !2227, file: !539, line: 423, column: 15)
!2236 = !DILocation(line: 423, column: 15, scope: !2235)
!2237 = !DILocation(line: 423, column: 15, scope: !2227)
!2238 = !DILocation(line: 423, column: 15, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !539, line: 423, column: 15)
!2240 = distinct !DILexicalBlock(scope: !2219, file: !539, line: 423, column: 15)
!2241 = !DILocation(line: 423, column: 15, scope: !2240)
!2242 = !DILocation(line: 431, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2220, file: !539, line: 430, column: 19)
!2244 = !DILocation(line: 431, column: 24, scope: !2243)
!2245 = !DILocation(line: 431, column: 28, scope: !2243)
!2246 = !DILocation(line: 431, column: 38, scope: !2243)
!2247 = !DILocation(line: 431, column: 48, scope: !2243)
!2248 = !DILocation(line: 431, column: 59, scope: !2243)
!2249 = !DILocation(line: 433, column: 19, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !539, line: 433, column: 19)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !539, line: 433, column: 19)
!2252 = distinct !DILexicalBlock(scope: !2243, file: !539, line: 432, column: 17)
!2253 = !DILocation(line: 433, column: 19, scope: !2251)
!2254 = !DILocation(line: 434, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !539, line: 434, column: 19)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !539, line: 434, column: 19)
!2257 = !DILocation(line: 434, column: 19, scope: !2256)
!2258 = !DILocation(line: 435, column: 17, scope: !2252)
!2259 = !DILocation(line: 442, column: 20, scope: !2221)
!2260 = !DILocation(line: 447, column: 11, scope: !2058)
!2261 = !DILocation(line: 450, column: 19, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 448, column: 13)
!2263 = !DILocation(line: 456, column: 19, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2262, file: !539, line: 455, column: 19)
!2265 = !DILocation(line: 456, column: 24, scope: !2264)
!2266 = !DILocation(line: 456, column: 28, scope: !2264)
!2267 = !DILocation(line: 456, column: 38, scope: !2264)
!2268 = !DILocation(line: 456, column: 47, scope: !2264)
!2269 = !DILocation(line: 456, column: 41, scope: !2264)
!2270 = !DILocation(line: 456, column: 52, scope: !2264)
!2271 = !DILocation(line: 455, column: 19, scope: !2262)
!2272 = !DILocation(line: 457, column: 25, scope: !2264)
!2273 = !DILocation(line: 457, column: 17, scope: !2264)
!2274 = !DILocation(line: 464, column: 25, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2264, file: !539, line: 458, column: 19)
!2276 = !DILocation(line: 468, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !539, line: 468, column: 21)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !539, line: 468, column: 21)
!2279 = !DILocation(line: 468, column: 21, scope: !2278)
!2280 = !DILocation(line: 469, column: 21, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !539, line: 469, column: 21)
!2282 = distinct !DILexicalBlock(scope: !2275, file: !539, line: 469, column: 21)
!2283 = !DILocation(line: 469, column: 21, scope: !2282)
!2284 = !DILocation(line: 470, column: 21, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !539, line: 470, column: 21)
!2286 = distinct !DILexicalBlock(scope: !2275, file: !539, line: 470, column: 21)
!2287 = !DILocation(line: 470, column: 21, scope: !2286)
!2288 = !DILocation(line: 471, column: 21, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !539, line: 471, column: 21)
!2290 = distinct !DILexicalBlock(scope: !2275, file: !539, line: 471, column: 21)
!2291 = !DILocation(line: 471, column: 21, scope: !2290)
!2292 = !DILocation(line: 472, column: 21, scope: !2275)
!2293 = !DILocation(line: 482, column: 33, scope: !2081)
!2294 = !DILocation(line: 483, column: 33, scope: !2081)
!2295 = !DILocation(line: 485, column: 33, scope: !2081)
!2296 = !DILocation(line: 486, column: 33, scope: !2081)
!2297 = !DILocation(line: 487, column: 33, scope: !2081)
!2298 = !DILocation(line: 490, column: 17, scope: !2081)
!2299 = !DILocation(line: 492, column: 21, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !539, line: 491, column: 15)
!2301 = distinct !DILexicalBlock(scope: !2081, file: !539, line: 490, column: 17)
!2302 = !DILocation(line: 499, column: 35, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2081, file: !539, line: 499, column: 17)
!2304 = !DILocation(line: 499, column: 57, scope: !2303)
!2305 = !DILocation(line: 0, scope: !2081)
!2306 = !DILocation(line: 502, column: 11, scope: !2081)
!2307 = !DILocation(line: 504, column: 17, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2081, file: !539, line: 503, column: 17)
!2309 = !DILocation(line: 507, column: 11, scope: !2081)
!2310 = !DILocation(line: 508, column: 17, scope: !2081)
!2311 = !DILocation(line: 517, column: 15, scope: !2058)
!2312 = !DILocation(line: 517, column: 40, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 517, column: 15)
!2314 = !DILocation(line: 517, column: 47, scope: !2313)
!2315 = !DILocation(line: 517, column: 18, scope: !2313)
!2316 = !DILocation(line: 521, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 521, column: 15)
!2318 = !DILocation(line: 521, column: 15, scope: !2058)
!2319 = !DILocation(line: 525, column: 11, scope: !2058)
!2320 = !DILocation(line: 537, column: 15, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 536, column: 15)
!2322 = !DILocation(line: 544, column: 15, scope: !2058)
!2323 = !DILocation(line: 546, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !539, line: 545, column: 13)
!2325 = distinct !DILexicalBlock(scope: !2058, file: !539, line: 544, column: 15)
!2326 = !DILocation(line: 549, column: 19, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2324, file: !539, line: 549, column: 19)
!2328 = !DILocation(line: 549, column: 30, scope: !2327)
!2329 = !DILocation(line: 558, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !539, line: 558, column: 15)
!2331 = distinct !DILexicalBlock(scope: !2324, file: !539, line: 558, column: 15)
!2332 = !DILocation(line: 558, column: 15, scope: !2331)
!2333 = !DILocation(line: 559, column: 15, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !539, line: 559, column: 15)
!2335 = distinct !DILexicalBlock(scope: !2324, file: !539, line: 559, column: 15)
!2336 = !DILocation(line: 559, column: 15, scope: !2335)
!2337 = !DILocation(line: 560, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !539, line: 560, column: 15)
!2339 = distinct !DILexicalBlock(scope: !2324, file: !539, line: 560, column: 15)
!2340 = !DILocation(line: 560, column: 15, scope: !2339)
!2341 = !DILocation(line: 562, column: 13, scope: !2324)
!2342 = !DILocation(line: 602, column: 17, scope: !2057)
!2343 = !DILocation(line: 0, scope: !2057)
!2344 = !DILocation(line: 605, column: 29, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2062, file: !539, line: 603, column: 15)
!2346 = !DILocation(line: 605, column: 27, scope: !2345)
!2347 = !DILocation(line: 668, column: 40, scope: !2057)
!2348 = !DILocation(line: 670, column: 23, scope: !2078)
!2349 = !DILocation(line: 609, column: 17, scope: !2061)
!2350 = !DILocation(line: 609, column: 27, scope: !2061)
!2351 = !DILocation(line: 0, scope: !2118, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 609, column: 32, scope: !2061)
!2353 = !DILocation(line: 0, scope: !2126, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 1137, column: 3, scope: !2118, inlinedAt: !2352)
!2355 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2354)
!2356 = !DILocation(line: 613, column: 29, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2061, file: !539, line: 613, column: 21)
!2358 = !DILocation(line: 613, column: 21, scope: !2061)
!2359 = !DILocation(line: 614, column: 29, scope: !2357)
!2360 = !DILocation(line: 614, column: 19, scope: !2357)
!2361 = !DILocation(line: 618, column: 21, scope: !2064)
!2362 = !DILocation(line: 620, column: 54, scope: !2064)
!2363 = !DILocation(line: 0, scope: !2064)
!2364 = !DILocation(line: 619, column: 36, scope: !2064)
!2365 = !DILocation(line: 621, column: 25, scope: !2064)
!2366 = !DILocation(line: 631, column: 38, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2073, file: !539, line: 629, column: 23)
!2368 = !DILocation(line: 631, column: 48, scope: !2367)
!2369 = !DILocation(line: 665, column: 19, scope: !2065)
!2370 = !DILocation(line: 666, column: 15, scope: !2062)
!2371 = !DILocation(line: 626, column: 25, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2074, file: !539, line: 624, column: 23)
!2373 = !DILocation(line: 631, column: 51, scope: !2367)
!2374 = !DILocation(line: 631, column: 25, scope: !2367)
!2375 = !DILocation(line: 632, column: 28, scope: !2367)
!2376 = !DILocation(line: 631, column: 34, scope: !2367)
!2377 = distinct !{!2377, !2374, !2375, !958}
!2378 = !DILocation(line: 646, column: 29, scope: !2071)
!2379 = !DILocation(line: 0, scope: !2069)
!2380 = !DILocation(line: 649, column: 49, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2069, file: !539, line: 648, column: 29)
!2382 = !DILocation(line: 649, column: 39, scope: !2381)
!2383 = !DILocation(line: 649, column: 31, scope: !2381)
!2384 = !DILocation(line: 648, column: 60, scope: !2381)
!2385 = !DILocation(line: 648, column: 50, scope: !2381)
!2386 = !DILocation(line: 648, column: 29, scope: !2069)
!2387 = distinct !{!2387, !2386, !2388, !958}
!2388 = !DILocation(line: 654, column: 33, scope: !2069)
!2389 = !DILocation(line: 657, column: 43, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2072, file: !539, line: 657, column: 29)
!2391 = !DILocalVariable(name: "wc", arg: 1, scope: !2392, file: !2393, line: 865, type: !2396)
!2392 = distinct !DISubprogram(name: "c32isprint", scope: !2393, file: !2393, line: 865, type: !2394, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2398)
!2393 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!184, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2397, line: 20, baseType: !139)
!2397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2398 = !{!2391}
!2399 = !DILocation(line: 0, scope: !2392, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 657, column: 31, scope: !2390)
!2401 = !DILocation(line: 871, column: 10, scope: !2392, inlinedAt: !2400)
!2402 = !DILocation(line: 657, column: 31, scope: !2390)
!2403 = !DILocation(line: 657, column: 29, scope: !2072)
!2404 = !DILocation(line: 664, column: 23, scope: !2064)
!2405 = !DILocation(line: 670, column: 19, scope: !2078)
!2406 = !DILocation(line: 670, column: 45, scope: !2078)
!2407 = !DILocation(line: 674, column: 33, scope: !2077)
!2408 = !DILocation(line: 0, scope: !2077)
!2409 = !DILocation(line: 676, column: 17, scope: !2077)
!2410 = !DILocation(line: 398, column: 12, scope: !2051)
!2411 = !DILocation(line: 678, column: 43, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !539, line: 678, column: 25)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !539, line: 677, column: 19)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !539, line: 676, column: 17)
!2415 = distinct !DILexicalBlock(scope: !2077, file: !539, line: 676, column: 17)
!2416 = !DILocation(line: 680, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !539, line: 680, column: 25)
!2418 = distinct !DILexicalBlock(scope: !2412, file: !539, line: 679, column: 23)
!2419 = !DILocation(line: 680, column: 25, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !539, line: 680, column: 25)
!2421 = !DILocation(line: 680, column: 25, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !539, line: 680, column: 25)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !539, line: 680, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !539, line: 680, column: 25)
!2425 = !DILocation(line: 680, column: 25, scope: !2423)
!2426 = !DILocation(line: 680, column: 25, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !539, line: 680, column: 25)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !539, line: 680, column: 25)
!2429 = !DILocation(line: 680, column: 25, scope: !2428)
!2430 = !DILocation(line: 680, column: 25, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !539, line: 680, column: 25)
!2432 = distinct !DILexicalBlock(scope: !2424, file: !539, line: 680, column: 25)
!2433 = !DILocation(line: 680, column: 25, scope: !2432)
!2434 = !DILocation(line: 680, column: 25, scope: !2424)
!2435 = !DILocation(line: 680, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !539, line: 680, column: 25)
!2437 = distinct !DILexicalBlock(scope: !2417, file: !539, line: 680, column: 25)
!2438 = !DILocation(line: 680, column: 25, scope: !2437)
!2439 = !DILocation(line: 681, column: 25, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !539, line: 681, column: 25)
!2441 = distinct !DILexicalBlock(scope: !2418, file: !539, line: 681, column: 25)
!2442 = !DILocation(line: 681, column: 25, scope: !2441)
!2443 = !DILocation(line: 682, column: 25, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !539, line: 682, column: 25)
!2445 = distinct !DILexicalBlock(scope: !2418, file: !539, line: 682, column: 25)
!2446 = !DILocation(line: 682, column: 25, scope: !2445)
!2447 = !DILocation(line: 683, column: 38, scope: !2418)
!2448 = !DILocation(line: 683, column: 33, scope: !2418)
!2449 = !DILocation(line: 684, column: 23, scope: !2418)
!2450 = !DILocation(line: 685, column: 30, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2412, file: !539, line: 685, column: 30)
!2452 = !DILocation(line: 685, column: 30, scope: !2412)
!2453 = !DILocation(line: 687, column: 25, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !539, line: 687, column: 25)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !539, line: 687, column: 25)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !539, line: 686, column: 23)
!2457 = !DILocation(line: 687, column: 25, scope: !2455)
!2458 = !DILocation(line: 689, column: 23, scope: !2456)
!2459 = !DILocation(line: 690, column: 35, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2413, file: !539, line: 690, column: 25)
!2461 = !DILocation(line: 690, column: 30, scope: !2460)
!2462 = !DILocation(line: 690, column: 25, scope: !2413)
!2463 = !DILocation(line: 692, column: 21, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !539, line: 692, column: 21)
!2465 = distinct !DILexicalBlock(scope: !2413, file: !539, line: 692, column: 21)
!2466 = !DILocation(line: 692, column: 21, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !539, line: 692, column: 21)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !539, line: 692, column: 21)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !539, line: 692, column: 21)
!2470 = !DILocation(line: 692, column: 21, scope: !2468)
!2471 = !DILocation(line: 692, column: 21, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !539, line: 692, column: 21)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !539, line: 692, column: 21)
!2474 = !DILocation(line: 692, column: 21, scope: !2473)
!2475 = !DILocation(line: 692, column: 21, scope: !2469)
!2476 = !DILocation(line: 0, scope: !2413)
!2477 = !DILocation(line: 693, column: 21, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !539, line: 693, column: 21)
!2479 = distinct !DILexicalBlock(scope: !2413, file: !539, line: 693, column: 21)
!2480 = !DILocation(line: 693, column: 21, scope: !2479)
!2481 = !DILocation(line: 694, column: 25, scope: !2413)
!2482 = !DILocation(line: 676, column: 17, scope: !2414)
!2483 = distinct !{!2483, !2484, !2485}
!2484 = !DILocation(line: 676, column: 17, scope: !2415)
!2485 = !DILocation(line: 695, column: 19, scope: !2415)
!2486 = !DILocation(line: 409, column: 30, scope: !2197)
!2487 = !DILocation(line: 702, column: 34, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 702, column: 11)
!2489 = !DILocation(line: 704, column: 14, scope: !2488)
!2490 = !DILocation(line: 705, column: 14, scope: !2488)
!2491 = !DILocation(line: 705, column: 35, scope: !2488)
!2492 = !DILocation(line: 705, column: 17, scope: !2488)
!2493 = !DILocation(line: 705, column: 47, scope: !2488)
!2494 = !DILocation(line: 705, column: 65, scope: !2488)
!2495 = !DILocation(line: 706, column: 11, scope: !2488)
!2496 = !DILocation(line: 702, column: 11, scope: !2051)
!2497 = !DILocation(line: 395, column: 15, scope: !2049)
!2498 = !DILocation(line: 709, column: 5, scope: !2051)
!2499 = !DILocation(line: 710, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 710, column: 7)
!2501 = !DILocation(line: 710, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2500, file: !539, line: 710, column: 7)
!2503 = !DILocation(line: 710, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !539, line: 710, column: 7)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !539, line: 710, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !539, line: 710, column: 7)
!2507 = !DILocation(line: 710, column: 7, scope: !2505)
!2508 = !DILocation(line: 710, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !539, line: 710, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !539, line: 710, column: 7)
!2511 = !DILocation(line: 710, column: 7, scope: !2510)
!2512 = !DILocation(line: 710, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !539, line: 710, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2506, file: !539, line: 710, column: 7)
!2515 = !DILocation(line: 710, column: 7, scope: !2514)
!2516 = !DILocation(line: 710, column: 7, scope: !2506)
!2517 = !DILocation(line: 710, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !539, line: 710, column: 7)
!2519 = distinct !DILexicalBlock(scope: !2500, file: !539, line: 710, column: 7)
!2520 = !DILocation(line: 710, column: 7, scope: !2519)
!2521 = !DILocation(line: 712, column: 5, scope: !2051)
!2522 = !DILocation(line: 713, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !539, line: 713, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 713, column: 7)
!2525 = !DILocation(line: 417, column: 21, scope: !2051)
!2526 = !DILocation(line: 713, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !539, line: 713, column: 7)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !539, line: 713, column: 7)
!2529 = distinct !DILexicalBlock(scope: !2523, file: !539, line: 713, column: 7)
!2530 = !DILocation(line: 713, column: 7, scope: !2528)
!2531 = !DILocation(line: 713, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !539, line: 713, column: 7)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !539, line: 713, column: 7)
!2534 = !DILocation(line: 713, column: 7, scope: !2533)
!2535 = !DILocation(line: 713, column: 7, scope: !2529)
!2536 = !DILocation(line: 714, column: 7, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !539, line: 714, column: 7)
!2538 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 714, column: 7)
!2539 = !DILocation(line: 714, column: 7, scope: !2538)
!2540 = !DILocation(line: 716, column: 13, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2051, file: !539, line: 716, column: 11)
!2542 = !DILocation(line: 716, column: 11, scope: !2051)
!2543 = !DILocation(line: 718, column: 5, scope: !2052)
!2544 = !DILocation(line: 395, column: 82, scope: !2052)
!2545 = !DILocation(line: 395, column: 3, scope: !2052)
!2546 = distinct !{!2546, !2193, !2547, !958}
!2547 = !DILocation(line: 718, column: 5, scope: !2049)
!2548 = !DILocation(line: 720, column: 11, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 720, column: 7)
!2550 = !DILocation(line: 720, column: 16, scope: !2549)
!2551 = !DILocation(line: 728, column: 51, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 728, column: 7)
!2553 = !DILocation(line: 731, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !539, line: 731, column: 11)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !539, line: 730, column: 5)
!2556 = !DILocation(line: 731, column: 11, scope: !2555)
!2557 = !DILocation(line: 732, column: 16, scope: !2554)
!2558 = !DILocation(line: 732, column: 9, scope: !2554)
!2559 = !DILocation(line: 736, column: 18, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !539, line: 736, column: 16)
!2561 = !DILocation(line: 736, column: 29, scope: !2560)
!2562 = !DILocation(line: 745, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 745, column: 7)
!2564 = !DILocation(line: 745, column: 20, scope: !2563)
!2565 = !DILocation(line: 746, column: 12, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !539, line: 746, column: 5)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !539, line: 746, column: 5)
!2568 = !DILocation(line: 746, column: 5, scope: !2567)
!2569 = !DILocation(line: 747, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !539, line: 747, column: 7)
!2571 = distinct !DILexicalBlock(scope: !2566, file: !539, line: 747, column: 7)
!2572 = !DILocation(line: 747, column: 7, scope: !2571)
!2573 = !DILocation(line: 746, column: 39, scope: !2566)
!2574 = distinct !{!2574, !2568, !2575, !958}
!2575 = !DILocation(line: 747, column: 7, scope: !2567)
!2576 = !DILocation(line: 749, column: 11, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 749, column: 7)
!2578 = !DILocation(line: 749, column: 7, scope: !2018)
!2579 = !DILocation(line: 750, column: 5, scope: !2577)
!2580 = !DILocation(line: 750, column: 17, scope: !2577)
!2581 = !DILocation(line: 753, column: 2, scope: !2018)
!2582 = !DILocation(line: 756, column: 51, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2018, file: !539, line: 756, column: 7)
!2584 = !DILocation(line: 756, column: 21, scope: !2583)
!2585 = !DILocation(line: 760, column: 42, scope: !2018)
!2586 = !DILocation(line: 758, column: 10, scope: !2018)
!2587 = !DILocation(line: 758, column: 3, scope: !2018)
!2588 = !DILocation(line: 762, column: 1, scope: !2018)
!2589 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1036, file: !1036, line: 98, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!186}
!2592 = !DISubprogram(name: "iswprint", scope: !2593, file: !2593, line: 120, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!2593 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2594 = distinct !DISubprogram(name: "quotearg_alloc", scope: !539, file: !539, line: 788, type: !2595, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!330, !134, !186, !1911}
!2597 = !{!2598, !2599, !2600}
!2598 = !DILocalVariable(name: "arg", arg: 1, scope: !2594, file: !539, line: 788, type: !134)
!2599 = !DILocalVariable(name: "argsize", arg: 2, scope: !2594, file: !539, line: 788, type: !186)
!2600 = !DILocalVariable(name: "o", arg: 3, scope: !2594, file: !539, line: 789, type: !1911)
!2601 = !DILocation(line: 0, scope: !2594)
!2602 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !539, line: 801, type: !134)
!2603 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !539, file: !539, line: 801, type: !2604, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!330, !134, !186, !776, !1911}
!2606 = !{!2602, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2607 = !DILocalVariable(name: "argsize", arg: 2, scope: !2603, file: !539, line: 801, type: !186)
!2608 = !DILocalVariable(name: "size", arg: 3, scope: !2603, file: !539, line: 801, type: !776)
!2609 = !DILocalVariable(name: "o", arg: 4, scope: !2603, file: !539, line: 802, type: !1911)
!2610 = !DILocalVariable(name: "p", scope: !2603, file: !539, line: 804, type: !1911)
!2611 = !DILocalVariable(name: "saved_errno", scope: !2603, file: !539, line: 805, type: !184)
!2612 = !DILocalVariable(name: "flags", scope: !2603, file: !539, line: 807, type: !184)
!2613 = !DILocalVariable(name: "bufsize", scope: !2603, file: !539, line: 808, type: !186)
!2614 = !DILocalVariable(name: "buf", scope: !2603, file: !539, line: 812, type: !330)
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
!2654 = distinct !DILexicalBlock(scope: !2603, file: !539, line: 817, column: 7)
!2655 = !{!1203, !1203, i64 0}
!2656 = !DILocation(line: 818, column: 5, scope: !2654)
!2657 = !DILocation(line: 819, column: 3, scope: !2603)
!2658 = distinct !DISubprogram(name: "quotearg_free", scope: !539, file: !539, line: 837, type: !453, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2659)
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "sv", scope: !2658, file: !539, line: 839, type: !623)
!2661 = !DILocalVariable(name: "i", scope: !2662, file: !539, line: 840, type: !184)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !539, line: 840, column: 3)
!2663 = !DILocation(line: 839, column: 24, scope: !2658)
!2664 = !DILocation(line: 0, scope: !2658)
!2665 = !DILocation(line: 0, scope: !2662)
!2666 = !DILocation(line: 840, column: 21, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !539, line: 840, column: 3)
!2668 = !DILocation(line: 840, column: 3, scope: !2662)
!2669 = !DILocation(line: 842, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2658, file: !539, line: 842, column: 7)
!2671 = !{!2672, !843, i64 8}
!2672 = !{!"slotvec", !1203, i64 0, !843, i64 8}
!2673 = !DILocation(line: 842, column: 17, scope: !2670)
!2674 = !DILocation(line: 842, column: 7, scope: !2658)
!2675 = !DILocation(line: 841, column: 17, scope: !2667)
!2676 = !DILocation(line: 841, column: 5, scope: !2667)
!2677 = !DILocation(line: 840, column: 32, scope: !2667)
!2678 = distinct !{!2678, !2668, !2679, !958}
!2679 = !DILocation(line: 841, column: 20, scope: !2662)
!2680 = !DILocation(line: 844, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2670, file: !539, line: 843, column: 5)
!2682 = !DILocation(line: 845, column: 21, scope: !2681)
!2683 = !{!2672, !1203, i64 0}
!2684 = !DILocation(line: 846, column: 20, scope: !2681)
!2685 = !DILocation(line: 847, column: 5, scope: !2681)
!2686 = !DILocation(line: 848, column: 10, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2658, file: !539, line: 848, column: 7)
!2688 = !DILocation(line: 848, column: 7, scope: !2658)
!2689 = !DILocation(line: 850, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !539, line: 849, column: 5)
!2691 = !DILocation(line: 851, column: 15, scope: !2690)
!2692 = !DILocation(line: 852, column: 5, scope: !2690)
!2693 = !DILocation(line: 853, column: 10, scope: !2658)
!2694 = !DILocation(line: 854, column: 1, scope: !2658)
!2695 = distinct !DISubprogram(name: "quotearg_n", scope: !539, file: !539, line: 919, type: !1029, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2696)
!2696 = !{!2697, !2698}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !539, line: 919, type: !184)
!2698 = !DILocalVariable(name: "arg", arg: 2, scope: !2695, file: !539, line: 919, type: !134)
!2699 = !DILocation(line: 0, scope: !2695)
!2700 = !DILocation(line: 921, column: 10, scope: !2695)
!2701 = !DILocation(line: 921, column: 3, scope: !2695)
!2702 = distinct !DISubprogram(name: "quotearg_n_options", scope: !539, file: !539, line: 866, type: !2703, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!330, !184, !134, !186, !1911}
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2716, !2717, !2719, !2720, !2721}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !539, line: 866, type: !184)
!2707 = !DILocalVariable(name: "arg", arg: 2, scope: !2702, file: !539, line: 866, type: !134)
!2708 = !DILocalVariable(name: "argsize", arg: 3, scope: !2702, file: !539, line: 866, type: !186)
!2709 = !DILocalVariable(name: "options", arg: 4, scope: !2702, file: !539, line: 867, type: !1911)
!2710 = !DILocalVariable(name: "saved_errno", scope: !2702, file: !539, line: 869, type: !184)
!2711 = !DILocalVariable(name: "sv", scope: !2702, file: !539, line: 871, type: !623)
!2712 = !DILocalVariable(name: "nslots_max", scope: !2702, file: !539, line: 873, type: !184)
!2713 = !DILocalVariable(name: "preallocated", scope: !2714, file: !539, line: 879, type: !309)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !539, line: 878, column: 5)
!2715 = distinct !DILexicalBlock(scope: !2702, file: !539, line: 877, column: 7)
!2716 = !DILocalVariable(name: "new_nslots", scope: !2714, file: !539, line: 880, type: !789)
!2717 = !DILocalVariable(name: "size", scope: !2718, file: !539, line: 891, type: !186)
!2718 = distinct !DILexicalBlock(scope: !2702, file: !539, line: 890, column: 3)
!2719 = !DILocalVariable(name: "val", scope: !2718, file: !539, line: 892, type: !330)
!2720 = !DILocalVariable(name: "flags", scope: !2718, file: !539, line: 894, type: !184)
!2721 = !DILocalVariable(name: "qsize", scope: !2718, file: !539, line: 895, type: !186)
!2722 = !DILocation(line: 0, scope: !2702)
!2723 = !DILocation(line: 869, column: 21, scope: !2702)
!2724 = !DILocation(line: 871, column: 24, scope: !2702)
!2725 = !DILocation(line: 874, column: 17, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2702, file: !539, line: 874, column: 7)
!2727 = !DILocation(line: 875, column: 5, scope: !2726)
!2728 = !DILocation(line: 877, column: 7, scope: !2715)
!2729 = !DILocation(line: 877, column: 14, scope: !2715)
!2730 = !DILocation(line: 877, column: 7, scope: !2702)
!2731 = !DILocation(line: 879, column: 31, scope: !2714)
!2732 = !DILocation(line: 0, scope: !2714)
!2733 = !DILocation(line: 880, column: 7, scope: !2714)
!2734 = !DILocation(line: 880, column: 26, scope: !2714)
!2735 = !DILocation(line: 880, column: 13, scope: !2714)
!2736 = !DILocation(line: 882, column: 31, scope: !2714)
!2737 = !DILocation(line: 883, column: 33, scope: !2714)
!2738 = !DILocation(line: 883, column: 42, scope: !2714)
!2739 = !DILocation(line: 883, column: 31, scope: !2714)
!2740 = !DILocation(line: 882, column: 22, scope: !2714)
!2741 = !DILocation(line: 882, column: 15, scope: !2714)
!2742 = !DILocation(line: 884, column: 11, scope: !2714)
!2743 = !DILocation(line: 885, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2714, file: !539, line: 884, column: 11)
!2745 = !{i64 0, i64 8, !2655, i64 8, i64 8, !842}
!2746 = !DILocation(line: 885, column: 9, scope: !2744)
!2747 = !DILocation(line: 886, column: 20, scope: !2714)
!2748 = !DILocation(line: 886, column: 18, scope: !2714)
!2749 = !DILocation(line: 886, column: 32, scope: !2714)
!2750 = !DILocation(line: 886, column: 43, scope: !2714)
!2751 = !DILocation(line: 886, column: 53, scope: !2714)
!2752 = !DILocation(line: 0, scope: !2126, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 886, column: 7, scope: !2714)
!2754 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2753)
!2755 = !DILocation(line: 887, column: 16, scope: !2714)
!2756 = !DILocation(line: 887, column: 14, scope: !2714)
!2757 = !DILocation(line: 888, column: 5, scope: !2715)
!2758 = !DILocation(line: 888, column: 5, scope: !2714)
!2759 = !DILocation(line: 891, column: 19, scope: !2718)
!2760 = !DILocation(line: 891, column: 25, scope: !2718)
!2761 = !DILocation(line: 0, scope: !2718)
!2762 = !DILocation(line: 892, column: 23, scope: !2718)
!2763 = !DILocation(line: 894, column: 26, scope: !2718)
!2764 = !DILocation(line: 894, column: 32, scope: !2718)
!2765 = !DILocation(line: 896, column: 55, scope: !2718)
!2766 = !DILocation(line: 897, column: 55, scope: !2718)
!2767 = !DILocation(line: 898, column: 55, scope: !2718)
!2768 = !DILocation(line: 899, column: 55, scope: !2718)
!2769 = !DILocation(line: 895, column: 20, scope: !2718)
!2770 = !DILocation(line: 901, column: 14, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2718, file: !539, line: 901, column: 9)
!2772 = !DILocation(line: 901, column: 9, scope: !2718)
!2773 = !DILocation(line: 903, column: 35, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !539, line: 902, column: 7)
!2775 = !DILocation(line: 903, column: 20, scope: !2774)
!2776 = !DILocation(line: 904, column: 17, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !539, line: 904, column: 13)
!2778 = !DILocation(line: 904, column: 13, scope: !2774)
!2779 = !DILocation(line: 905, column: 11, scope: !2777)
!2780 = !DILocation(line: 906, column: 27, scope: !2774)
!2781 = !DILocation(line: 906, column: 19, scope: !2774)
!2782 = !DILocation(line: 907, column: 69, scope: !2774)
!2783 = !DILocation(line: 909, column: 44, scope: !2774)
!2784 = !DILocation(line: 910, column: 44, scope: !2774)
!2785 = !DILocation(line: 907, column: 9, scope: !2774)
!2786 = !DILocation(line: 911, column: 7, scope: !2774)
!2787 = !DILocation(line: 913, column: 11, scope: !2718)
!2788 = !DILocation(line: 914, column: 5, scope: !2718)
!2789 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !539, file: !539, line: 925, type: !2790, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!330, !184, !134, !186}
!2792 = !{!2793, !2794, !2795}
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2789, file: !539, line: 925, type: !184)
!2794 = !DILocalVariable(name: "arg", arg: 2, scope: !2789, file: !539, line: 925, type: !134)
!2795 = !DILocalVariable(name: "argsize", arg: 3, scope: !2789, file: !539, line: 925, type: !186)
!2796 = !DILocation(line: 0, scope: !2789)
!2797 = !DILocation(line: 927, column: 10, scope: !2789)
!2798 = !DILocation(line: 927, column: 3, scope: !2789)
!2799 = distinct !DISubprogram(name: "quotearg", scope: !539, file: !539, line: 931, type: !1038, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2800)
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "arg", arg: 1, scope: !2799, file: !539, line: 931, type: !134)
!2802 = !DILocation(line: 0, scope: !2799)
!2803 = !DILocation(line: 0, scope: !2695, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 933, column: 10, scope: !2799)
!2805 = !DILocation(line: 921, column: 10, scope: !2695, inlinedAt: !2804)
!2806 = !DILocation(line: 933, column: 3, scope: !2799)
!2807 = distinct !DISubprogram(name: "quotearg_mem", scope: !539, file: !539, line: 937, type: !2808, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!330, !134, !186}
!2810 = !{!2811, !2812}
!2811 = !DILocalVariable(name: "arg", arg: 1, scope: !2807, file: !539, line: 937, type: !134)
!2812 = !DILocalVariable(name: "argsize", arg: 2, scope: !2807, file: !539, line: 937, type: !186)
!2813 = !DILocation(line: 0, scope: !2807)
!2814 = !DILocation(line: 0, scope: !2789, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 939, column: 10, scope: !2807)
!2816 = !DILocation(line: 927, column: 10, scope: !2789, inlinedAt: !2815)
!2817 = !DILocation(line: 939, column: 3, scope: !2807)
!2818 = distinct !DISubprogram(name: "quotearg_n_style", scope: !539, file: !539, line: 943, type: !2819, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!330, !184, !148, !134}
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2818, file: !539, line: 943, type: !184)
!2823 = !DILocalVariable(name: "s", arg: 2, scope: !2818, file: !539, line: 943, type: !148)
!2824 = !DILocalVariable(name: "arg", arg: 3, scope: !2818, file: !539, line: 943, type: !134)
!2825 = !DILocalVariable(name: "o", scope: !2818, file: !539, line: 945, type: !1912)
!2826 = !DILocation(line: 0, scope: !2818)
!2827 = !DILocation(line: 945, column: 3, scope: !2818)
!2828 = !DILocation(line: 945, column: 32, scope: !2818)
!2829 = !{!2830}
!2830 = distinct !{!2830, !2831, !"quoting_options_from_style: argument 0"}
!2831 = distinct !{!2831, !"quoting_options_from_style"}
!2832 = !DILocation(line: 945, column: 36, scope: !2818)
!2833 = !DILocalVariable(name: "style", arg: 1, scope: !2834, file: !539, line: 183, type: !148)
!2834 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !539, file: !539, line: 183, type: !2835, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!575, !148}
!2837 = !{!2833, !2838}
!2838 = !DILocalVariable(name: "o", scope: !2834, file: !539, line: 185, type: !575)
!2839 = !DILocation(line: 0, scope: !2834, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 945, column: 36, scope: !2818)
!2841 = !DILocation(line: 185, column: 26, scope: !2834, inlinedAt: !2840)
!2842 = !DILocation(line: 186, column: 13, scope: !2843, inlinedAt: !2840)
!2843 = distinct !DILexicalBlock(scope: !2834, file: !539, line: 186, column: 7)
!2844 = !DILocation(line: 186, column: 7, scope: !2834, inlinedAt: !2840)
!2845 = !DILocation(line: 187, column: 5, scope: !2843, inlinedAt: !2840)
!2846 = !DILocation(line: 188, column: 11, scope: !2834, inlinedAt: !2840)
!2847 = !DILocation(line: 946, column: 10, scope: !2818)
!2848 = !DILocation(line: 947, column: 1, scope: !2818)
!2849 = !DILocation(line: 946, column: 3, scope: !2818)
!2850 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !539, file: !539, line: 950, type: !2851, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!330, !184, !148, !134, !186}
!2853 = !{!2854, !2855, !2856, !2857, !2858}
!2854 = !DILocalVariable(name: "n", arg: 1, scope: !2850, file: !539, line: 950, type: !184)
!2855 = !DILocalVariable(name: "s", arg: 2, scope: !2850, file: !539, line: 950, type: !148)
!2856 = !DILocalVariable(name: "arg", arg: 3, scope: !2850, file: !539, line: 951, type: !134)
!2857 = !DILocalVariable(name: "argsize", arg: 4, scope: !2850, file: !539, line: 951, type: !186)
!2858 = !DILocalVariable(name: "o", scope: !2850, file: !539, line: 953, type: !1912)
!2859 = !DILocation(line: 0, scope: !2850)
!2860 = !DILocation(line: 953, column: 3, scope: !2850)
!2861 = !DILocation(line: 953, column: 32, scope: !2850)
!2862 = !{!2863}
!2863 = distinct !{!2863, !2864, !"quoting_options_from_style: argument 0"}
!2864 = distinct !{!2864, !"quoting_options_from_style"}
!2865 = !DILocation(line: 953, column: 36, scope: !2850)
!2866 = !DILocation(line: 0, scope: !2834, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 953, column: 36, scope: !2850)
!2868 = !DILocation(line: 185, column: 26, scope: !2834, inlinedAt: !2867)
!2869 = !DILocation(line: 186, column: 13, scope: !2843, inlinedAt: !2867)
!2870 = !DILocation(line: 186, column: 7, scope: !2834, inlinedAt: !2867)
!2871 = !DILocation(line: 187, column: 5, scope: !2843, inlinedAt: !2867)
!2872 = !DILocation(line: 188, column: 11, scope: !2834, inlinedAt: !2867)
!2873 = !DILocation(line: 954, column: 10, scope: !2850)
!2874 = !DILocation(line: 955, column: 1, scope: !2850)
!2875 = !DILocation(line: 954, column: 3, scope: !2850)
!2876 = distinct !DISubprogram(name: "quotearg_style", scope: !539, file: !539, line: 958, type: !2877, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!330, !148, !134}
!2879 = !{!2880, !2881}
!2880 = !DILocalVariable(name: "s", arg: 1, scope: !2876, file: !539, line: 958, type: !148)
!2881 = !DILocalVariable(name: "arg", arg: 2, scope: !2876, file: !539, line: 958, type: !134)
!2882 = !DILocation(line: 0, scope: !2876)
!2883 = !DILocation(line: 0, scope: !2818, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 960, column: 10, scope: !2876)
!2885 = !DILocation(line: 945, column: 3, scope: !2818, inlinedAt: !2884)
!2886 = !DILocation(line: 945, column: 32, scope: !2818, inlinedAt: !2884)
!2887 = !{!2888}
!2888 = distinct !{!2888, !2889, !"quoting_options_from_style: argument 0"}
!2889 = distinct !{!2889, !"quoting_options_from_style"}
!2890 = !DILocation(line: 945, column: 36, scope: !2818, inlinedAt: !2884)
!2891 = !DILocation(line: 0, scope: !2834, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 945, column: 36, scope: !2818, inlinedAt: !2884)
!2893 = !DILocation(line: 185, column: 26, scope: !2834, inlinedAt: !2892)
!2894 = !DILocation(line: 186, column: 13, scope: !2843, inlinedAt: !2892)
!2895 = !DILocation(line: 186, column: 7, scope: !2834, inlinedAt: !2892)
!2896 = !DILocation(line: 187, column: 5, scope: !2843, inlinedAt: !2892)
!2897 = !DILocation(line: 188, column: 11, scope: !2834, inlinedAt: !2892)
!2898 = !DILocation(line: 946, column: 10, scope: !2818, inlinedAt: !2884)
!2899 = !DILocation(line: 947, column: 1, scope: !2818, inlinedAt: !2884)
!2900 = !DILocation(line: 960, column: 3, scope: !2876)
!2901 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !539, file: !539, line: 964, type: !2902, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!330, !148, !134, !186}
!2904 = !{!2905, !2906, !2907}
!2905 = !DILocalVariable(name: "s", arg: 1, scope: !2901, file: !539, line: 964, type: !148)
!2906 = !DILocalVariable(name: "arg", arg: 2, scope: !2901, file: !539, line: 964, type: !134)
!2907 = !DILocalVariable(name: "argsize", arg: 3, scope: !2901, file: !539, line: 964, type: !186)
!2908 = !DILocation(line: 0, scope: !2901)
!2909 = !DILocation(line: 0, scope: !2850, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 966, column: 10, scope: !2901)
!2911 = !DILocation(line: 953, column: 3, scope: !2850, inlinedAt: !2910)
!2912 = !DILocation(line: 953, column: 32, scope: !2850, inlinedAt: !2910)
!2913 = !{!2914}
!2914 = distinct !{!2914, !2915, !"quoting_options_from_style: argument 0"}
!2915 = distinct !{!2915, !"quoting_options_from_style"}
!2916 = !DILocation(line: 953, column: 36, scope: !2850, inlinedAt: !2910)
!2917 = !DILocation(line: 0, scope: !2834, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 953, column: 36, scope: !2850, inlinedAt: !2910)
!2919 = !DILocation(line: 185, column: 26, scope: !2834, inlinedAt: !2918)
!2920 = !DILocation(line: 186, column: 13, scope: !2843, inlinedAt: !2918)
!2921 = !DILocation(line: 186, column: 7, scope: !2834, inlinedAt: !2918)
!2922 = !DILocation(line: 187, column: 5, scope: !2843, inlinedAt: !2918)
!2923 = !DILocation(line: 188, column: 11, scope: !2834, inlinedAt: !2918)
!2924 = !DILocation(line: 954, column: 10, scope: !2850, inlinedAt: !2910)
!2925 = !DILocation(line: 955, column: 1, scope: !2850, inlinedAt: !2910)
!2926 = !DILocation(line: 966, column: 3, scope: !2901)
!2927 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !539, file: !539, line: 970, type: !2928, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!330, !134, !186, !4}
!2930 = !{!2931, !2932, !2933, !2934}
!2931 = !DILocalVariable(name: "arg", arg: 1, scope: !2927, file: !539, line: 970, type: !134)
!2932 = !DILocalVariable(name: "argsize", arg: 2, scope: !2927, file: !539, line: 970, type: !186)
!2933 = !DILocalVariable(name: "ch", arg: 3, scope: !2927, file: !539, line: 970, type: !4)
!2934 = !DILocalVariable(name: "options", scope: !2927, file: !539, line: 972, type: !575)
!2935 = !DILocation(line: 0, scope: !2927)
!2936 = !DILocation(line: 972, column: 3, scope: !2927)
!2937 = !DILocation(line: 972, column: 26, scope: !2927)
!2938 = !DILocation(line: 973, column: 13, scope: !2927)
!2939 = !{i64 0, i64 4, !920, i64 4, i64 4, !911, i64 8, i64 32, !920, i64 40, i64 8, !842, i64 48, i64 8, !842}
!2940 = !DILocation(line: 0, scope: !1931, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 974, column: 3, scope: !2927)
!2942 = !DILocation(line: 147, column: 41, scope: !1931, inlinedAt: !2941)
!2943 = !DILocation(line: 147, column: 62, scope: !1931, inlinedAt: !2941)
!2944 = !DILocation(line: 147, column: 57, scope: !1931, inlinedAt: !2941)
!2945 = !DILocation(line: 148, column: 15, scope: !1931, inlinedAt: !2941)
!2946 = !DILocation(line: 149, column: 21, scope: !1931, inlinedAt: !2941)
!2947 = !DILocation(line: 149, column: 24, scope: !1931, inlinedAt: !2941)
!2948 = !DILocation(line: 150, column: 19, scope: !1931, inlinedAt: !2941)
!2949 = !DILocation(line: 150, column: 24, scope: !1931, inlinedAt: !2941)
!2950 = !DILocation(line: 150, column: 6, scope: !1931, inlinedAt: !2941)
!2951 = !DILocation(line: 975, column: 10, scope: !2927)
!2952 = !DILocation(line: 976, column: 1, scope: !2927)
!2953 = !DILocation(line: 975, column: 3, scope: !2927)
!2954 = distinct !DISubprogram(name: "quotearg_char", scope: !539, file: !539, line: 979, type: !2955, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!330, !134, !4}
!2957 = !{!2958, !2959}
!2958 = !DILocalVariable(name: "arg", arg: 1, scope: !2954, file: !539, line: 979, type: !134)
!2959 = !DILocalVariable(name: "ch", arg: 2, scope: !2954, file: !539, line: 979, type: !4)
!2960 = !DILocation(line: 0, scope: !2954)
!2961 = !DILocation(line: 0, scope: !2927, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 981, column: 10, scope: !2954)
!2963 = !DILocation(line: 972, column: 3, scope: !2927, inlinedAt: !2962)
!2964 = !DILocation(line: 972, column: 26, scope: !2927, inlinedAt: !2962)
!2965 = !DILocation(line: 973, column: 13, scope: !2927, inlinedAt: !2962)
!2966 = !DILocation(line: 0, scope: !1931, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 974, column: 3, scope: !2927, inlinedAt: !2962)
!2968 = !DILocation(line: 147, column: 41, scope: !1931, inlinedAt: !2967)
!2969 = !DILocation(line: 147, column: 62, scope: !1931, inlinedAt: !2967)
!2970 = !DILocation(line: 147, column: 57, scope: !1931, inlinedAt: !2967)
!2971 = !DILocation(line: 148, column: 15, scope: !1931, inlinedAt: !2967)
!2972 = !DILocation(line: 149, column: 21, scope: !1931, inlinedAt: !2967)
!2973 = !DILocation(line: 149, column: 24, scope: !1931, inlinedAt: !2967)
!2974 = !DILocation(line: 150, column: 19, scope: !1931, inlinedAt: !2967)
!2975 = !DILocation(line: 150, column: 24, scope: !1931, inlinedAt: !2967)
!2976 = !DILocation(line: 150, column: 6, scope: !1931, inlinedAt: !2967)
!2977 = !DILocation(line: 975, column: 10, scope: !2927, inlinedAt: !2962)
!2978 = !DILocation(line: 976, column: 1, scope: !2927, inlinedAt: !2962)
!2979 = !DILocation(line: 981, column: 3, scope: !2954)
!2980 = distinct !DISubprogram(name: "quotearg_colon", scope: !539, file: !539, line: 985, type: !1038, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !2981)
!2981 = !{!2982}
!2982 = !DILocalVariable(name: "arg", arg: 1, scope: !2980, file: !539, line: 985, type: !134)
!2983 = !DILocation(line: 0, scope: !2980)
!2984 = !DILocation(line: 0, scope: !2954, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 987, column: 10, scope: !2980)
!2986 = !DILocation(line: 0, scope: !2927, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 981, column: 10, scope: !2954, inlinedAt: !2985)
!2988 = !DILocation(line: 972, column: 3, scope: !2927, inlinedAt: !2987)
!2989 = !DILocation(line: 972, column: 26, scope: !2927, inlinedAt: !2987)
!2990 = !DILocation(line: 973, column: 13, scope: !2927, inlinedAt: !2987)
!2991 = !DILocation(line: 0, scope: !1931, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 974, column: 3, scope: !2927, inlinedAt: !2987)
!2993 = !DILocation(line: 147, column: 57, scope: !1931, inlinedAt: !2992)
!2994 = !DILocation(line: 149, column: 21, scope: !1931, inlinedAt: !2992)
!2995 = !DILocation(line: 150, column: 6, scope: !1931, inlinedAt: !2992)
!2996 = !DILocation(line: 975, column: 10, scope: !2927, inlinedAt: !2987)
!2997 = !DILocation(line: 976, column: 1, scope: !2927, inlinedAt: !2987)
!2998 = !DILocation(line: 987, column: 3, scope: !2980)
!2999 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !539, file: !539, line: 991, type: !2808, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3000)
!3000 = !{!3001, !3002}
!3001 = !DILocalVariable(name: "arg", arg: 1, scope: !2999, file: !539, line: 991, type: !134)
!3002 = !DILocalVariable(name: "argsize", arg: 2, scope: !2999, file: !539, line: 991, type: !186)
!3003 = !DILocation(line: 0, scope: !2999)
!3004 = !DILocation(line: 0, scope: !2927, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 993, column: 10, scope: !2999)
!3006 = !DILocation(line: 972, column: 3, scope: !2927, inlinedAt: !3005)
!3007 = !DILocation(line: 972, column: 26, scope: !2927, inlinedAt: !3005)
!3008 = !DILocation(line: 973, column: 13, scope: !2927, inlinedAt: !3005)
!3009 = !DILocation(line: 0, scope: !1931, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 974, column: 3, scope: !2927, inlinedAt: !3005)
!3011 = !DILocation(line: 147, column: 57, scope: !1931, inlinedAt: !3010)
!3012 = !DILocation(line: 149, column: 21, scope: !1931, inlinedAt: !3010)
!3013 = !DILocation(line: 150, column: 6, scope: !1931, inlinedAt: !3010)
!3014 = !DILocation(line: 975, column: 10, scope: !2927, inlinedAt: !3005)
!3015 = !DILocation(line: 976, column: 1, scope: !2927, inlinedAt: !3005)
!3016 = !DILocation(line: 993, column: 3, scope: !2999)
!3017 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !539, file: !539, line: 997, type: !2819, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3018)
!3018 = !{!3019, !3020, !3021, !3022}
!3019 = !DILocalVariable(name: "n", arg: 1, scope: !3017, file: !539, line: 997, type: !184)
!3020 = !DILocalVariable(name: "s", arg: 2, scope: !3017, file: !539, line: 997, type: !148)
!3021 = !DILocalVariable(name: "arg", arg: 3, scope: !3017, file: !539, line: 997, type: !134)
!3022 = !DILocalVariable(name: "options", scope: !3017, file: !539, line: 999, type: !575)
!3023 = !DILocation(line: 185, column: 26, scope: !2834, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 1000, column: 13, scope: !3017)
!3025 = !DILocation(line: 0, scope: !3017)
!3026 = !DILocation(line: 999, column: 3, scope: !3017)
!3027 = !DILocation(line: 999, column: 26, scope: !3017)
!3028 = !DILocation(line: 0, scope: !2834, inlinedAt: !3024)
!3029 = !DILocation(line: 186, column: 13, scope: !2843, inlinedAt: !3024)
!3030 = !DILocation(line: 186, column: 7, scope: !2834, inlinedAt: !3024)
!3031 = !DILocation(line: 187, column: 5, scope: !2843, inlinedAt: !3024)
!3032 = !{!3033}
!3033 = distinct !{!3033, !3034, !"quoting_options_from_style: argument 0"}
!3034 = distinct !{!3034, !"quoting_options_from_style"}
!3035 = !DILocation(line: 1000, column: 13, scope: !3017)
!3036 = !DILocation(line: 0, scope: !1931, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 1001, column: 3, scope: !3017)
!3038 = !DILocation(line: 147, column: 57, scope: !1931, inlinedAt: !3037)
!3039 = !DILocation(line: 149, column: 21, scope: !1931, inlinedAt: !3037)
!3040 = !DILocation(line: 150, column: 6, scope: !1931, inlinedAt: !3037)
!3041 = !DILocation(line: 1002, column: 10, scope: !3017)
!3042 = !DILocation(line: 1003, column: 1, scope: !3017)
!3043 = !DILocation(line: 1002, column: 3, scope: !3017)
!3044 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !539, file: !539, line: 1006, type: !3045, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!330, !184, !134, !134, !134}
!3047 = !{!3048, !3049, !3050, !3051}
!3048 = !DILocalVariable(name: "n", arg: 1, scope: !3044, file: !539, line: 1006, type: !184)
!3049 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3044, file: !539, line: 1006, type: !134)
!3050 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3044, file: !539, line: 1007, type: !134)
!3051 = !DILocalVariable(name: "arg", arg: 4, scope: !3044, file: !539, line: 1007, type: !134)
!3052 = !DILocation(line: 0, scope: !3044)
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3054, file: !539, line: 1014, type: !184)
!3054 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !539, file: !539, line: 1014, type: !3055, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!330, !184, !134, !134, !134, !186}
!3057 = !{!3053, !3058, !3059, !3060, !3061, !3062}
!3058 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3054, file: !539, line: 1014, type: !134)
!3059 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3054, file: !539, line: 1015, type: !134)
!3060 = !DILocalVariable(name: "arg", arg: 4, scope: !3054, file: !539, line: 1016, type: !134)
!3061 = !DILocalVariable(name: "argsize", arg: 5, scope: !3054, file: !539, line: 1016, type: !186)
!3062 = !DILocalVariable(name: "o", scope: !3054, file: !539, line: 1018, type: !575)
!3063 = !DILocation(line: 0, scope: !3054, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 1009, column: 10, scope: !3044)
!3065 = !DILocation(line: 1018, column: 3, scope: !3054, inlinedAt: !3064)
!3066 = !DILocation(line: 1018, column: 26, scope: !3054, inlinedAt: !3064)
!3067 = !DILocation(line: 1018, column: 30, scope: !3054, inlinedAt: !3064)
!3068 = !DILocation(line: 0, scope: !1971, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1019, column: 3, scope: !3054, inlinedAt: !3064)
!3070 = !DILocation(line: 174, column: 12, scope: !1971, inlinedAt: !3069)
!3071 = !DILocation(line: 175, column: 8, scope: !1984, inlinedAt: !3069)
!3072 = !DILocation(line: 175, column: 19, scope: !1984, inlinedAt: !3069)
!3073 = !DILocation(line: 176, column: 5, scope: !1984, inlinedAt: !3069)
!3074 = !DILocation(line: 177, column: 6, scope: !1971, inlinedAt: !3069)
!3075 = !DILocation(line: 177, column: 17, scope: !1971, inlinedAt: !3069)
!3076 = !DILocation(line: 178, column: 6, scope: !1971, inlinedAt: !3069)
!3077 = !DILocation(line: 178, column: 18, scope: !1971, inlinedAt: !3069)
!3078 = !DILocation(line: 1020, column: 10, scope: !3054, inlinedAt: !3064)
!3079 = !DILocation(line: 1021, column: 1, scope: !3054, inlinedAt: !3064)
!3080 = !DILocation(line: 1009, column: 3, scope: !3044)
!3081 = !DILocation(line: 0, scope: !3054)
!3082 = !DILocation(line: 1018, column: 3, scope: !3054)
!3083 = !DILocation(line: 1018, column: 26, scope: !3054)
!3084 = !DILocation(line: 1018, column: 30, scope: !3054)
!3085 = !DILocation(line: 0, scope: !1971, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1019, column: 3, scope: !3054)
!3087 = !DILocation(line: 174, column: 12, scope: !1971, inlinedAt: !3086)
!3088 = !DILocation(line: 175, column: 8, scope: !1984, inlinedAt: !3086)
!3089 = !DILocation(line: 175, column: 19, scope: !1984, inlinedAt: !3086)
!3090 = !DILocation(line: 176, column: 5, scope: !1984, inlinedAt: !3086)
!3091 = !DILocation(line: 177, column: 6, scope: !1971, inlinedAt: !3086)
!3092 = !DILocation(line: 177, column: 17, scope: !1971, inlinedAt: !3086)
!3093 = !DILocation(line: 178, column: 6, scope: !1971, inlinedAt: !3086)
!3094 = !DILocation(line: 178, column: 18, scope: !1971, inlinedAt: !3086)
!3095 = !DILocation(line: 1020, column: 10, scope: !3054)
!3096 = !DILocation(line: 1021, column: 1, scope: !3054)
!3097 = !DILocation(line: 1020, column: 3, scope: !3054)
!3098 = distinct !DISubprogram(name: "quotearg_custom", scope: !539, file: !539, line: 1024, type: !3099, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!330, !134, !134, !134}
!3101 = !{!3102, !3103, !3104}
!3102 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3098, file: !539, line: 1024, type: !134)
!3103 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3098, file: !539, line: 1024, type: !134)
!3104 = !DILocalVariable(name: "arg", arg: 3, scope: !3098, file: !539, line: 1025, type: !134)
!3105 = !DILocation(line: 0, scope: !3098)
!3106 = !DILocation(line: 0, scope: !3044, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 1027, column: 10, scope: !3098)
!3108 = !DILocation(line: 0, scope: !3054, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1009, column: 10, scope: !3044, inlinedAt: !3107)
!3110 = !DILocation(line: 1018, column: 3, scope: !3054, inlinedAt: !3109)
!3111 = !DILocation(line: 1018, column: 26, scope: !3054, inlinedAt: !3109)
!3112 = !DILocation(line: 1018, column: 30, scope: !3054, inlinedAt: !3109)
!3113 = !DILocation(line: 0, scope: !1971, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 1019, column: 3, scope: !3054, inlinedAt: !3109)
!3115 = !DILocation(line: 174, column: 12, scope: !1971, inlinedAt: !3114)
!3116 = !DILocation(line: 175, column: 8, scope: !1984, inlinedAt: !3114)
!3117 = !DILocation(line: 175, column: 19, scope: !1984, inlinedAt: !3114)
!3118 = !DILocation(line: 176, column: 5, scope: !1984, inlinedAt: !3114)
!3119 = !DILocation(line: 177, column: 6, scope: !1971, inlinedAt: !3114)
!3120 = !DILocation(line: 177, column: 17, scope: !1971, inlinedAt: !3114)
!3121 = !DILocation(line: 178, column: 6, scope: !1971, inlinedAt: !3114)
!3122 = !DILocation(line: 178, column: 18, scope: !1971, inlinedAt: !3114)
!3123 = !DILocation(line: 1020, column: 10, scope: !3054, inlinedAt: !3109)
!3124 = !DILocation(line: 1021, column: 1, scope: !3054, inlinedAt: !3109)
!3125 = !DILocation(line: 1027, column: 3, scope: !3098)
!3126 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !539, file: !539, line: 1031, type: !3127, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!330, !134, !134, !134, !186}
!3129 = !{!3130, !3131, !3132, !3133}
!3130 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3126, file: !539, line: 1031, type: !134)
!3131 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3126, file: !539, line: 1031, type: !134)
!3132 = !DILocalVariable(name: "arg", arg: 3, scope: !3126, file: !539, line: 1032, type: !134)
!3133 = !DILocalVariable(name: "argsize", arg: 4, scope: !3126, file: !539, line: 1032, type: !186)
!3134 = !DILocation(line: 0, scope: !3126)
!3135 = !DILocation(line: 0, scope: !3054, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 1034, column: 10, scope: !3126)
!3137 = !DILocation(line: 1018, column: 3, scope: !3054, inlinedAt: !3136)
!3138 = !DILocation(line: 1018, column: 26, scope: !3054, inlinedAt: !3136)
!3139 = !DILocation(line: 1018, column: 30, scope: !3054, inlinedAt: !3136)
!3140 = !DILocation(line: 0, scope: !1971, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1019, column: 3, scope: !3054, inlinedAt: !3136)
!3142 = !DILocation(line: 174, column: 12, scope: !1971, inlinedAt: !3141)
!3143 = !DILocation(line: 175, column: 8, scope: !1984, inlinedAt: !3141)
!3144 = !DILocation(line: 175, column: 19, scope: !1984, inlinedAt: !3141)
!3145 = !DILocation(line: 176, column: 5, scope: !1984, inlinedAt: !3141)
!3146 = !DILocation(line: 177, column: 6, scope: !1971, inlinedAt: !3141)
!3147 = !DILocation(line: 177, column: 17, scope: !1971, inlinedAt: !3141)
!3148 = !DILocation(line: 178, column: 6, scope: !1971, inlinedAt: !3141)
!3149 = !DILocation(line: 178, column: 18, scope: !1971, inlinedAt: !3141)
!3150 = !DILocation(line: 1020, column: 10, scope: !3054, inlinedAt: !3136)
!3151 = !DILocation(line: 1021, column: 1, scope: !3054, inlinedAt: !3136)
!3152 = !DILocation(line: 1034, column: 3, scope: !3126)
!3153 = distinct !DISubprogram(name: "quote_n_mem", scope: !539, file: !539, line: 1049, type: !3154, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!134, !184, !134, !186}
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3153, file: !539, line: 1049, type: !184)
!3158 = !DILocalVariable(name: "arg", arg: 2, scope: !3153, file: !539, line: 1049, type: !134)
!3159 = !DILocalVariable(name: "argsize", arg: 3, scope: !3153, file: !539, line: 1049, type: !186)
!3160 = !DILocation(line: 0, scope: !3153)
!3161 = !DILocation(line: 1051, column: 10, scope: !3153)
!3162 = !DILocation(line: 1051, column: 3, scope: !3153)
!3163 = distinct !DISubprogram(name: "quote_mem", scope: !539, file: !539, line: 1055, type: !3164, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!134, !134, !186}
!3166 = !{!3167, !3168}
!3167 = !DILocalVariable(name: "arg", arg: 1, scope: !3163, file: !539, line: 1055, type: !134)
!3168 = !DILocalVariable(name: "argsize", arg: 2, scope: !3163, file: !539, line: 1055, type: !186)
!3169 = !DILocation(line: 0, scope: !3163)
!3170 = !DILocation(line: 0, scope: !3153, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1057, column: 10, scope: !3163)
!3172 = !DILocation(line: 1051, column: 10, scope: !3153, inlinedAt: !3171)
!3173 = !DILocation(line: 1057, column: 3, scope: !3163)
!3174 = distinct !DISubprogram(name: "quote_n", scope: !539, file: !539, line: 1061, type: !3175, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!134, !184, !134}
!3177 = !{!3178, !3179}
!3178 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !539, line: 1061, type: !184)
!3179 = !DILocalVariable(name: "arg", arg: 2, scope: !3174, file: !539, line: 1061, type: !134)
!3180 = !DILocation(line: 0, scope: !3174)
!3181 = !DILocation(line: 0, scope: !3153, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1063, column: 10, scope: !3174)
!3183 = !DILocation(line: 1051, column: 10, scope: !3153, inlinedAt: !3182)
!3184 = !DILocation(line: 1063, column: 3, scope: !3174)
!3185 = distinct !DISubprogram(name: "quote", scope: !539, file: !539, line: 1067, type: !3186, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!134, !134}
!3188 = !{!3189}
!3189 = !DILocalVariable(name: "arg", arg: 1, scope: !3185, file: !539, line: 1067, type: !134)
!3190 = !DILocation(line: 0, scope: !3185)
!3191 = !DILocation(line: 0, scope: !3174, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1069, column: 10, scope: !3185)
!3193 = !DILocation(line: 0, scope: !3153, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 1063, column: 10, scope: !3174, inlinedAt: !3192)
!3195 = !DILocation(line: 1051, column: 10, scope: !3153, inlinedAt: !3194)
!3196 = !DILocation(line: 1069, column: 3, scope: !3185)
!3197 = distinct !DISubprogram(name: "version_etc_arn", scope: !638, file: !638, line: 61, type: !3198, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3235)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3200, !134, !134, !134, !3234, !186}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3202, file: !326, line: 51, baseType: !184, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3202, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3202, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3202, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3202, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3202, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3202, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3202, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3202, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3202, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3202, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3202, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3202, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3202, file: !326, line: 70, baseType: !3218, size: 64, offset: 832)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3202, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3202, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3202, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3202, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3202, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3202, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3202, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3202, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3202, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3202, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3202, file: !326, line: 93, baseType: !3218, size: 64, offset: 1344)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3202, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3202, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3202, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3202, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241}
!3236 = !DILocalVariable(name: "stream", arg: 1, scope: !3197, file: !638, line: 61, type: !3200)
!3237 = !DILocalVariable(name: "command_name", arg: 2, scope: !3197, file: !638, line: 62, type: !134)
!3238 = !DILocalVariable(name: "package", arg: 3, scope: !3197, file: !638, line: 62, type: !134)
!3239 = !DILocalVariable(name: "version", arg: 4, scope: !3197, file: !638, line: 63, type: !134)
!3240 = !DILocalVariable(name: "authors", arg: 5, scope: !3197, file: !638, line: 64, type: !3234)
!3241 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3197, file: !638, line: 64, type: !186)
!3242 = !DILocation(line: 0, scope: !3197)
!3243 = !DILocation(line: 66, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3197, file: !638, line: 66, column: 7)
!3245 = !DILocation(line: 66, column: 7, scope: !3197)
!3246 = !DILocation(line: 67, column: 5, scope: !3244)
!3247 = !DILocation(line: 69, column: 5, scope: !3244)
!3248 = !DILocation(line: 83, column: 3, scope: !3197)
!3249 = !DILocation(line: 85, column: 3, scope: !3197)
!3250 = !DILocation(line: 88, column: 3, scope: !3197)
!3251 = !DILocation(line: 95, column: 3, scope: !3197)
!3252 = !DILocation(line: 97, column: 3, scope: !3197)
!3253 = !DILocation(line: 105, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3197, file: !638, line: 98, column: 5)
!3255 = !DILocation(line: 106, column: 7, scope: !3254)
!3256 = !DILocation(line: 109, column: 7, scope: !3254)
!3257 = !DILocation(line: 110, column: 7, scope: !3254)
!3258 = !DILocation(line: 113, column: 7, scope: !3254)
!3259 = !DILocation(line: 115, column: 7, scope: !3254)
!3260 = !DILocation(line: 120, column: 7, scope: !3254)
!3261 = !DILocation(line: 122, column: 7, scope: !3254)
!3262 = !DILocation(line: 127, column: 7, scope: !3254)
!3263 = !DILocation(line: 129, column: 7, scope: !3254)
!3264 = !DILocation(line: 134, column: 7, scope: !3254)
!3265 = !DILocation(line: 137, column: 7, scope: !3254)
!3266 = !DILocation(line: 142, column: 7, scope: !3254)
!3267 = !DILocation(line: 145, column: 7, scope: !3254)
!3268 = !DILocation(line: 150, column: 7, scope: !3254)
!3269 = !DILocation(line: 154, column: 7, scope: !3254)
!3270 = !DILocation(line: 159, column: 7, scope: !3254)
!3271 = !DILocation(line: 163, column: 7, scope: !3254)
!3272 = !DILocation(line: 170, column: 7, scope: !3254)
!3273 = !DILocation(line: 174, column: 7, scope: !3254)
!3274 = !DILocation(line: 176, column: 1, scope: !3197)
!3275 = distinct !DISubprogram(name: "version_etc_ar", scope: !638, file: !638, line: 183, type: !3276, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3200, !134, !134, !134, !3234}
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284}
!3279 = !DILocalVariable(name: "stream", arg: 1, scope: !3275, file: !638, line: 183, type: !3200)
!3280 = !DILocalVariable(name: "command_name", arg: 2, scope: !3275, file: !638, line: 184, type: !134)
!3281 = !DILocalVariable(name: "package", arg: 3, scope: !3275, file: !638, line: 184, type: !134)
!3282 = !DILocalVariable(name: "version", arg: 4, scope: !3275, file: !638, line: 185, type: !134)
!3283 = !DILocalVariable(name: "authors", arg: 5, scope: !3275, file: !638, line: 185, type: !3234)
!3284 = !DILocalVariable(name: "n_authors", scope: !3275, file: !638, line: 187, type: !186)
!3285 = !DILocation(line: 0, scope: !3275)
!3286 = !DILocation(line: 189, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3275, file: !638, line: 189, column: 3)
!3288 = !DILocation(line: 189, scope: !3287)
!3289 = !DILocation(line: 189, column: 23, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !638, line: 189, column: 3)
!3291 = !DILocation(line: 189, column: 3, scope: !3287)
!3292 = !DILocation(line: 189, column: 52, scope: !3290)
!3293 = distinct !{!3293, !3291, !3294, !958}
!3294 = !DILocation(line: 190, column: 5, scope: !3287)
!3295 = !DILocation(line: 191, column: 3, scope: !3275)
!3296 = !DILocation(line: 192, column: 1, scope: !3275)
!3297 = distinct !DISubprogram(name: "version_etc_va", scope: !638, file: !638, line: 199, type: !3298, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3308)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3200, !134, !134, !134, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3302)
!3302 = !{!3303, !3305, !3306, !3307}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3301, file: !3304, line: 192, baseType: !139, size: 32)
!3304 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3301, file: !3304, line: 192, baseType: !139, size: 32, offset: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3301, file: !3304, line: 192, baseType: !178, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3301, file: !3304, line: 192, baseType: !178, size: 64, offset: 128)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3309 = !DILocalVariable(name: "stream", arg: 1, scope: !3297, file: !638, line: 199, type: !3200)
!3310 = !DILocalVariable(name: "command_name", arg: 2, scope: !3297, file: !638, line: 200, type: !134)
!3311 = !DILocalVariable(name: "package", arg: 3, scope: !3297, file: !638, line: 200, type: !134)
!3312 = !DILocalVariable(name: "version", arg: 4, scope: !3297, file: !638, line: 201, type: !134)
!3313 = !DILocalVariable(name: "authors", arg: 5, scope: !3297, file: !638, line: 201, type: !3300)
!3314 = !DILocalVariable(name: "n_authors", scope: !3297, file: !638, line: 203, type: !186)
!3315 = !DILocalVariable(name: "authtab", scope: !3297, file: !638, line: 204, type: !3316)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !50)
!3317 = !DILocation(line: 0, scope: !3297)
!3318 = !DILocation(line: 204, column: 3, scope: !3297)
!3319 = !DILocation(line: 204, column: 15, scope: !3297)
!3320 = !DILocation(line: 208, column: 35, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !638, line: 206, column: 3)
!3322 = distinct !DILexicalBlock(scope: !3297, file: !638, line: 206, column: 3)
!3323 = !DILocation(line: 208, column: 33, scope: !3321)
!3324 = !DILocation(line: 208, column: 67, scope: !3321)
!3325 = !DILocation(line: 206, column: 3, scope: !3322)
!3326 = !DILocation(line: 208, column: 14, scope: !3321)
!3327 = !DILocation(line: 0, scope: !3322)
!3328 = !DILocation(line: 211, column: 3, scope: !3297)
!3329 = !DILocation(line: 213, column: 1, scope: !3297)
!3330 = distinct !DISubprogram(name: "version_etc", scope: !638, file: !638, line: 230, type: !3331, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !3200, !134, !134, !134, null}
!3333 = !{!3334, !3335, !3336, !3337, !3338}
!3334 = !DILocalVariable(name: "stream", arg: 1, scope: !3330, file: !638, line: 230, type: !3200)
!3335 = !DILocalVariable(name: "command_name", arg: 2, scope: !3330, file: !638, line: 231, type: !134)
!3336 = !DILocalVariable(name: "package", arg: 3, scope: !3330, file: !638, line: 231, type: !134)
!3337 = !DILocalVariable(name: "version", arg: 4, scope: !3330, file: !638, line: 232, type: !134)
!3338 = !DILocalVariable(name: "authors", scope: !3330, file: !638, line: 234, type: !3339)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !906, line: 52, baseType: !3340)
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1459, line: 14, baseType: !3341)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3304, baseType: !3342)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3301, size: 192, elements: !45)
!3343 = !DILocation(line: 0, scope: !3330)
!3344 = !DILocation(line: 234, column: 3, scope: !3330)
!3345 = !DILocation(line: 234, column: 11, scope: !3330)
!3346 = !DILocation(line: 235, column: 3, scope: !3330)
!3347 = !DILocation(line: 236, column: 3, scope: !3330)
!3348 = !DILocation(line: 237, column: 3, scope: !3330)
!3349 = !DILocation(line: 238, column: 1, scope: !3330)
!3350 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !638, file: !638, line: 241, type: !453, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !895)
!3351 = !DILocation(line: 243, column: 3, scope: !3350)
!3352 = !DILocation(line: 248, column: 3, scope: !3350)
!3353 = !DILocation(line: 254, column: 3, scope: !3350)
!3354 = !DILocation(line: 259, column: 3, scope: !3350)
!3355 = !DILocation(line: 261, column: 1, scope: !3350)
!3356 = distinct !DISubprogram(name: "xnrealloc", scope: !3357, file: !3357, line: 147, type: !3358, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3360)
!3357 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!178, !178, !186, !186}
!3360 = !{!3361, !3362, !3363}
!3361 = !DILocalVariable(name: "p", arg: 1, scope: !3356, file: !3357, line: 147, type: !178)
!3362 = !DILocalVariable(name: "n", arg: 2, scope: !3356, file: !3357, line: 147, type: !186)
!3363 = !DILocalVariable(name: "s", arg: 3, scope: !3356, file: !3357, line: 147, type: !186)
!3364 = !DILocation(line: 0, scope: !3356)
!3365 = !DILocalVariable(name: "p", arg: 1, scope: !3366, file: !770, line: 83, type: !178)
!3366 = distinct !DISubprogram(name: "xreallocarray", scope: !770, file: !770, line: 83, type: !3358, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3367)
!3367 = !{!3365, !3368, !3369}
!3368 = !DILocalVariable(name: "n", arg: 2, scope: !3366, file: !770, line: 83, type: !186)
!3369 = !DILocalVariable(name: "s", arg: 3, scope: !3366, file: !770, line: 83, type: !186)
!3370 = !DILocation(line: 0, scope: !3366, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 149, column: 10, scope: !3356)
!3372 = !DILocation(line: 85, column: 25, scope: !3366, inlinedAt: !3371)
!3373 = !DILocalVariable(name: "p", arg: 1, scope: !3374, file: !770, line: 37, type: !178)
!3374 = distinct !DISubprogram(name: "check_nonnull", scope: !770, file: !770, line: 37, type: !3375, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!178, !178}
!3377 = !{!3373}
!3378 = !DILocation(line: 0, scope: !3374, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 85, column: 10, scope: !3366, inlinedAt: !3371)
!3380 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3379)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !770, line: 39, column: 7)
!3382 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3379)
!3383 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3379)
!3384 = !DILocation(line: 149, column: 3, scope: !3356)
!3385 = !DILocation(line: 0, scope: !3366)
!3386 = !DILocation(line: 85, column: 25, scope: !3366)
!3387 = !DILocation(line: 0, scope: !3374, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 85, column: 10, scope: !3366)
!3389 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3388)
!3390 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3388)
!3391 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3388)
!3392 = !DILocation(line: 85, column: 3, scope: !3366)
!3393 = distinct !DISubprogram(name: "xmalloc", scope: !770, file: !770, line: 47, type: !1725, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3394)
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "s", arg: 1, scope: !3393, file: !770, line: 47, type: !186)
!3396 = !DILocation(line: 0, scope: !3393)
!3397 = !DILocation(line: 49, column: 25, scope: !3393)
!3398 = !DILocation(line: 0, scope: !3374, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 49, column: 10, scope: !3393)
!3400 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3399)
!3401 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3399)
!3402 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3399)
!3403 = !DILocation(line: 49, column: 3, scope: !3393)
!3404 = distinct !DISubprogram(name: "ximalloc", scope: !770, file: !770, line: 53, type: !3405, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!178, !789}
!3407 = !{!3408}
!3408 = !DILocalVariable(name: "s", arg: 1, scope: !3404, file: !770, line: 53, type: !789)
!3409 = !DILocation(line: 0, scope: !3404)
!3410 = !DILocalVariable(name: "s", arg: 1, scope: !3411, file: !3412, line: 55, type: !789)
!3411 = distinct !DISubprogram(name: "imalloc", scope: !3412, file: !3412, line: 55, type: !3405, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3413)
!3412 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3413 = !{!3410}
!3414 = !DILocation(line: 0, scope: !3411, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 55, column: 25, scope: !3404)
!3416 = !DILocation(line: 57, column: 26, scope: !3411, inlinedAt: !3415)
!3417 = !DILocation(line: 0, scope: !3374, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 55, column: 10, scope: !3404)
!3419 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3418)
!3420 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3418)
!3421 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3418)
!3422 = !DILocation(line: 55, column: 3, scope: !3404)
!3423 = distinct !DISubprogram(name: "xcharalloc", scope: !770, file: !770, line: 59, type: !3424, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!330, !186}
!3426 = !{!3427}
!3427 = !DILocalVariable(name: "n", arg: 1, scope: !3423, file: !770, line: 59, type: !186)
!3428 = !DILocation(line: 0, scope: !3423)
!3429 = !DILocation(line: 0, scope: !3393, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 61, column: 10, scope: !3423)
!3431 = !DILocation(line: 49, column: 25, scope: !3393, inlinedAt: !3430)
!3432 = !DILocation(line: 0, scope: !3374, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 49, column: 10, scope: !3393, inlinedAt: !3430)
!3434 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3433)
!3435 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3433)
!3436 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3433)
!3437 = !DILocation(line: 61, column: 3, scope: !3423)
!3438 = distinct !DISubprogram(name: "xrealloc", scope: !770, file: !770, line: 68, type: !3439, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!178, !178, !186}
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3438, file: !770, line: 68, type: !178)
!3443 = !DILocalVariable(name: "s", arg: 2, scope: !3438, file: !770, line: 68, type: !186)
!3444 = !DILocation(line: 0, scope: !3438)
!3445 = !DILocalVariable(name: "ptr", arg: 1, scope: !3446, file: !3447, line: 2057, type: !178)
!3446 = distinct !DISubprogram(name: "rpl_realloc", scope: !3447, file: !3447, line: 2057, type: !3439, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3448)
!3447 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3448 = !{!3445, !3449}
!3449 = !DILocalVariable(name: "size", arg: 2, scope: !3446, file: !3447, line: 2057, type: !186)
!3450 = !DILocation(line: 0, scope: !3446, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 70, column: 25, scope: !3438)
!3452 = !DILocation(line: 2059, column: 24, scope: !3446, inlinedAt: !3451)
!3453 = !DILocation(line: 2059, column: 10, scope: !3446, inlinedAt: !3451)
!3454 = !DILocation(line: 0, scope: !3374, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 70, column: 10, scope: !3438)
!3456 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3455)
!3457 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3455)
!3458 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3455)
!3459 = !DILocation(line: 70, column: 3, scope: !3438)
!3460 = !DISubprogram(name: "realloc", scope: !1036, file: !1036, line: 551, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3461 = distinct !DISubprogram(name: "xirealloc", scope: !770, file: !770, line: 74, type: !3462, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!178, !178, !789}
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "p", arg: 1, scope: !3461, file: !770, line: 74, type: !178)
!3466 = !DILocalVariable(name: "s", arg: 2, scope: !3461, file: !770, line: 74, type: !789)
!3467 = !DILocation(line: 0, scope: !3461)
!3468 = !DILocalVariable(name: "p", arg: 1, scope: !3469, file: !3412, line: 66, type: !178)
!3469 = distinct !DISubprogram(name: "irealloc", scope: !3412, file: !3412, line: 66, type: !3462, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3470)
!3470 = !{!3468, !3471}
!3471 = !DILocalVariable(name: "s", arg: 2, scope: !3469, file: !3412, line: 66, type: !789)
!3472 = !DILocation(line: 0, scope: !3469, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 76, column: 25, scope: !3461)
!3474 = !DILocation(line: 0, scope: !3446, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 68, column: 26, scope: !3469, inlinedAt: !3473)
!3476 = !DILocation(line: 2059, column: 24, scope: !3446, inlinedAt: !3475)
!3477 = !DILocation(line: 2059, column: 10, scope: !3446, inlinedAt: !3475)
!3478 = !DILocation(line: 0, scope: !3374, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 76, column: 10, scope: !3461)
!3480 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3479)
!3481 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3479)
!3482 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3479)
!3483 = !DILocation(line: 76, column: 3, scope: !3461)
!3484 = distinct !DISubprogram(name: "xireallocarray", scope: !770, file: !770, line: 89, type: !3485, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!178, !178, !789, !789}
!3487 = !{!3488, !3489, !3490}
!3488 = !DILocalVariable(name: "p", arg: 1, scope: !3484, file: !770, line: 89, type: !178)
!3489 = !DILocalVariable(name: "n", arg: 2, scope: !3484, file: !770, line: 89, type: !789)
!3490 = !DILocalVariable(name: "s", arg: 3, scope: !3484, file: !770, line: 89, type: !789)
!3491 = !DILocation(line: 0, scope: !3484)
!3492 = !DILocalVariable(name: "p", arg: 1, scope: !3493, file: !3412, line: 98, type: !178)
!3493 = distinct !DISubprogram(name: "ireallocarray", scope: !3412, file: !3412, line: 98, type: !3485, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3494)
!3494 = !{!3492, !3495, !3496}
!3495 = !DILocalVariable(name: "n", arg: 2, scope: !3493, file: !3412, line: 98, type: !789)
!3496 = !DILocalVariable(name: "s", arg: 3, scope: !3493, file: !3412, line: 98, type: !789)
!3497 = !DILocation(line: 0, scope: !3493, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 91, column: 25, scope: !3484)
!3499 = !DILocation(line: 101, column: 13, scope: !3493, inlinedAt: !3498)
!3500 = !DILocation(line: 0, scope: !3374, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 91, column: 10, scope: !3484)
!3502 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3501)
!3503 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3501)
!3504 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3501)
!3505 = !DILocation(line: 91, column: 3, scope: !3484)
!3506 = distinct !DISubprogram(name: "xnmalloc", scope: !770, file: !770, line: 98, type: !3507, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!178, !186, !186}
!3509 = !{!3510, !3511}
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3506, file: !770, line: 98, type: !186)
!3511 = !DILocalVariable(name: "s", arg: 2, scope: !3506, file: !770, line: 98, type: !186)
!3512 = !DILocation(line: 0, scope: !3506)
!3513 = !DILocation(line: 0, scope: !3366, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 100, column: 10, scope: !3506)
!3515 = !DILocation(line: 85, column: 25, scope: !3366, inlinedAt: !3514)
!3516 = !DILocation(line: 0, scope: !3374, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 85, column: 10, scope: !3366, inlinedAt: !3514)
!3518 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3517)
!3519 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3517)
!3520 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3517)
!3521 = !DILocation(line: 100, column: 3, scope: !3506)
!3522 = distinct !DISubprogram(name: "xinmalloc", scope: !770, file: !770, line: 104, type: !3523, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!178, !789, !789}
!3525 = !{!3526, !3527}
!3526 = !DILocalVariable(name: "n", arg: 1, scope: !3522, file: !770, line: 104, type: !789)
!3527 = !DILocalVariable(name: "s", arg: 2, scope: !3522, file: !770, line: 104, type: !789)
!3528 = !DILocation(line: 0, scope: !3522)
!3529 = !DILocation(line: 0, scope: !3484, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 106, column: 10, scope: !3522)
!3531 = !DILocation(line: 0, scope: !3493, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 91, column: 25, scope: !3484, inlinedAt: !3530)
!3533 = !DILocation(line: 101, column: 13, scope: !3493, inlinedAt: !3532)
!3534 = !DILocation(line: 0, scope: !3374, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 91, column: 10, scope: !3484, inlinedAt: !3530)
!3536 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3535)
!3537 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3535)
!3538 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3535)
!3539 = !DILocation(line: 106, column: 3, scope: !3522)
!3540 = distinct !DISubprogram(name: "x2realloc", scope: !770, file: !770, line: 116, type: !3541, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!178, !178, !776}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "p", arg: 1, scope: !3540, file: !770, line: 116, type: !178)
!3545 = !DILocalVariable(name: "ps", arg: 2, scope: !3540, file: !770, line: 116, type: !776)
!3546 = !DILocation(line: 0, scope: !3540)
!3547 = !DILocation(line: 0, scope: !773, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 118, column: 10, scope: !3540)
!3549 = !DILocation(line: 178, column: 14, scope: !773, inlinedAt: !3548)
!3550 = !DILocation(line: 180, column: 9, scope: !3551, inlinedAt: !3548)
!3551 = distinct !DILexicalBlock(scope: !773, file: !770, line: 180, column: 7)
!3552 = !DILocation(line: 180, column: 7, scope: !773, inlinedAt: !3548)
!3553 = !DILocation(line: 182, column: 13, scope: !3554, inlinedAt: !3548)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !770, line: 182, column: 11)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !770, line: 181, column: 5)
!3556 = !DILocation(line: 182, column: 11, scope: !3555, inlinedAt: !3548)
!3557 = !DILocation(line: 197, column: 11, scope: !3558, inlinedAt: !3548)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !770, line: 197, column: 11)
!3559 = distinct !DILexicalBlock(scope: !3551, file: !770, line: 195, column: 5)
!3560 = !DILocation(line: 197, column: 11, scope: !3559, inlinedAt: !3548)
!3561 = !DILocation(line: 198, column: 9, scope: !3558, inlinedAt: !3548)
!3562 = !DILocation(line: 0, scope: !3366, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 201, column: 7, scope: !773, inlinedAt: !3548)
!3564 = !DILocation(line: 85, column: 25, scope: !3366, inlinedAt: !3563)
!3565 = !DILocation(line: 0, scope: !3374, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 85, column: 10, scope: !3366, inlinedAt: !3563)
!3567 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3566)
!3568 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3566)
!3569 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3566)
!3570 = !DILocation(line: 202, column: 7, scope: !773, inlinedAt: !3548)
!3571 = !DILocation(line: 118, column: 3, scope: !3540)
!3572 = !DILocation(line: 0, scope: !773)
!3573 = !DILocation(line: 178, column: 14, scope: !773)
!3574 = !DILocation(line: 180, column: 9, scope: !3551)
!3575 = !DILocation(line: 180, column: 7, scope: !773)
!3576 = !DILocation(line: 182, column: 13, scope: !3554)
!3577 = !DILocation(line: 182, column: 11, scope: !3555)
!3578 = !DILocation(line: 190, column: 30, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3554, file: !770, line: 183, column: 9)
!3580 = !DILocation(line: 191, column: 16, scope: !3579)
!3581 = !DILocation(line: 191, column: 13, scope: !3579)
!3582 = !DILocation(line: 192, column: 9, scope: !3579)
!3583 = !DILocation(line: 197, column: 11, scope: !3558)
!3584 = !DILocation(line: 197, column: 11, scope: !3559)
!3585 = !DILocation(line: 198, column: 9, scope: !3558)
!3586 = !DILocation(line: 0, scope: !3366, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 201, column: 7, scope: !773)
!3588 = !DILocation(line: 85, column: 25, scope: !3366, inlinedAt: !3587)
!3589 = !DILocation(line: 0, scope: !3374, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 85, column: 10, scope: !3366, inlinedAt: !3587)
!3591 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3590)
!3592 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3590)
!3593 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3590)
!3594 = !DILocation(line: 202, column: 7, scope: !773)
!3595 = !DILocation(line: 203, column: 3, scope: !773)
!3596 = !DILocation(line: 0, scope: !785)
!3597 = !DILocation(line: 230, column: 14, scope: !785)
!3598 = !DILocation(line: 238, column: 7, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !785, file: !770, line: 238, column: 7)
!3600 = !DILocation(line: 238, column: 7, scope: !785)
!3601 = !DILocation(line: 240, column: 9, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !785, file: !770, line: 240, column: 7)
!3603 = !DILocation(line: 240, column: 18, scope: !3602)
!3604 = !DILocation(line: 253, column: 8, scope: !785)
!3605 = !DILocation(line: 258, column: 27, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !770, line: 257, column: 5)
!3607 = distinct !DILexicalBlock(scope: !785, file: !770, line: 256, column: 7)
!3608 = !DILocation(line: 259, column: 50, scope: !3606)
!3609 = !DILocation(line: 259, column: 32, scope: !3606)
!3610 = !DILocation(line: 260, column: 5, scope: !3606)
!3611 = !DILocation(line: 262, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !785, file: !770, line: 262, column: 7)
!3613 = !DILocation(line: 262, column: 7, scope: !785)
!3614 = !DILocation(line: 263, column: 9, scope: !3612)
!3615 = !DILocation(line: 263, column: 5, scope: !3612)
!3616 = !DILocation(line: 264, column: 9, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !785, file: !770, line: 264, column: 7)
!3618 = !DILocation(line: 264, column: 14, scope: !3617)
!3619 = !DILocation(line: 265, column: 7, scope: !3617)
!3620 = !DILocation(line: 265, column: 11, scope: !3617)
!3621 = !DILocation(line: 266, column: 11, scope: !3617)
!3622 = !DILocation(line: 267, column: 14, scope: !3617)
!3623 = !DILocation(line: 264, column: 7, scope: !785)
!3624 = !DILocation(line: 268, column: 5, scope: !3617)
!3625 = !DILocation(line: 0, scope: !3438, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 269, column: 8, scope: !785)
!3627 = !DILocation(line: 0, scope: !3446, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 70, column: 25, scope: !3438, inlinedAt: !3626)
!3629 = !DILocation(line: 2059, column: 24, scope: !3446, inlinedAt: !3628)
!3630 = !DILocation(line: 2059, column: 10, scope: !3446, inlinedAt: !3628)
!3631 = !DILocation(line: 0, scope: !3374, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 70, column: 10, scope: !3438, inlinedAt: !3626)
!3633 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3632)
!3634 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3632)
!3635 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3632)
!3636 = !DILocation(line: 270, column: 7, scope: !785)
!3637 = !DILocation(line: 271, column: 3, scope: !785)
!3638 = distinct !DISubprogram(name: "xzalloc", scope: !770, file: !770, line: 279, type: !1725, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3639)
!3639 = !{!3640}
!3640 = !DILocalVariable(name: "s", arg: 1, scope: !3638, file: !770, line: 279, type: !186)
!3641 = !DILocation(line: 0, scope: !3638)
!3642 = !DILocalVariable(name: "n", arg: 1, scope: !3643, file: !770, line: 294, type: !186)
!3643 = distinct !DISubprogram(name: "xcalloc", scope: !770, file: !770, line: 294, type: !3507, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3644)
!3644 = !{!3642, !3645}
!3645 = !DILocalVariable(name: "s", arg: 2, scope: !3643, file: !770, line: 294, type: !186)
!3646 = !DILocation(line: 0, scope: !3643, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 281, column: 10, scope: !3638)
!3648 = !DILocation(line: 296, column: 25, scope: !3643, inlinedAt: !3647)
!3649 = !DILocation(line: 0, scope: !3374, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 296, column: 10, scope: !3643, inlinedAt: !3647)
!3651 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3650)
!3652 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3650)
!3653 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3650)
!3654 = !DILocation(line: 281, column: 3, scope: !3638)
!3655 = !DISubprogram(name: "calloc", scope: !1036, file: !1036, line: 543, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3656 = !DILocation(line: 0, scope: !3643)
!3657 = !DILocation(line: 296, column: 25, scope: !3643)
!3658 = !DILocation(line: 0, scope: !3374, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 296, column: 10, scope: !3643)
!3660 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3659)
!3661 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3659)
!3662 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3659)
!3663 = !DILocation(line: 296, column: 3, scope: !3643)
!3664 = distinct !DISubprogram(name: "xizalloc", scope: !770, file: !770, line: 285, type: !3405, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3665)
!3665 = !{!3666}
!3666 = !DILocalVariable(name: "s", arg: 1, scope: !3664, file: !770, line: 285, type: !789)
!3667 = !DILocation(line: 0, scope: !3664)
!3668 = !DILocalVariable(name: "n", arg: 1, scope: !3669, file: !770, line: 300, type: !789)
!3669 = distinct !DISubprogram(name: "xicalloc", scope: !770, file: !770, line: 300, type: !3523, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3670)
!3670 = !{!3668, !3671}
!3671 = !DILocalVariable(name: "s", arg: 2, scope: !3669, file: !770, line: 300, type: !789)
!3672 = !DILocation(line: 0, scope: !3669, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 287, column: 10, scope: !3664)
!3674 = !DILocalVariable(name: "n", arg: 1, scope: !3675, file: !3412, line: 77, type: !789)
!3675 = distinct !DISubprogram(name: "icalloc", scope: !3412, file: !3412, line: 77, type: !3523, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3676)
!3676 = !{!3674, !3677}
!3677 = !DILocalVariable(name: "s", arg: 2, scope: !3675, file: !3412, line: 77, type: !789)
!3678 = !DILocation(line: 0, scope: !3675, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 302, column: 25, scope: !3669, inlinedAt: !3673)
!3680 = !DILocation(line: 91, column: 10, scope: !3675, inlinedAt: !3679)
!3681 = !DILocation(line: 0, scope: !3374, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 302, column: 10, scope: !3669, inlinedAt: !3673)
!3683 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3682)
!3684 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3682)
!3685 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3682)
!3686 = !DILocation(line: 287, column: 3, scope: !3664)
!3687 = !DILocation(line: 0, scope: !3669)
!3688 = !DILocation(line: 0, scope: !3675, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 302, column: 25, scope: !3669)
!3690 = !DILocation(line: 91, column: 10, scope: !3675, inlinedAt: !3689)
!3691 = !DILocation(line: 0, scope: !3374, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 302, column: 10, scope: !3669)
!3693 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3692)
!3694 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3692)
!3695 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3692)
!3696 = !DILocation(line: 302, column: 3, scope: !3669)
!3697 = distinct !DISubprogram(name: "xmemdup", scope: !770, file: !770, line: 310, type: !3698, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!178, !1060, !186}
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "p", arg: 1, scope: !3697, file: !770, line: 310, type: !1060)
!3702 = !DILocalVariable(name: "s", arg: 2, scope: !3697, file: !770, line: 310, type: !186)
!3703 = !DILocation(line: 0, scope: !3697)
!3704 = !DILocation(line: 0, scope: !3393, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 312, column: 18, scope: !3697)
!3706 = !DILocation(line: 49, column: 25, scope: !3393, inlinedAt: !3705)
!3707 = !DILocation(line: 0, scope: !3374, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 49, column: 10, scope: !3393, inlinedAt: !3705)
!3709 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3708)
!3710 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3708)
!3711 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3708)
!3712 = !DILocalVariable(name: "__dest", arg: 1, scope: !3713, file: !1697, line: 26, type: !1700)
!3713 = distinct !DISubprogram(name: "memcpy", scope: !1697, file: !1697, line: 26, type: !1698, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3714)
!3714 = !{!3712, !3715, !3716}
!3715 = !DILocalVariable(name: "__src", arg: 2, scope: !3713, file: !1697, line: 26, type: !1059)
!3716 = !DILocalVariable(name: "__len", arg: 3, scope: !3713, file: !1697, line: 26, type: !186)
!3717 = !DILocation(line: 0, scope: !3713, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 312, column: 10, scope: !3697)
!3719 = !DILocation(line: 29, column: 10, scope: !3713, inlinedAt: !3718)
!3720 = !DILocation(line: 312, column: 3, scope: !3697)
!3721 = distinct !DISubprogram(name: "ximemdup", scope: !770, file: !770, line: 316, type: !3722, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!178, !1060, !789}
!3724 = !{!3725, !3726}
!3725 = !DILocalVariable(name: "p", arg: 1, scope: !3721, file: !770, line: 316, type: !1060)
!3726 = !DILocalVariable(name: "s", arg: 2, scope: !3721, file: !770, line: 316, type: !789)
!3727 = !DILocation(line: 0, scope: !3721)
!3728 = !DILocation(line: 0, scope: !3404, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 318, column: 18, scope: !3721)
!3730 = !DILocation(line: 0, scope: !3411, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 55, column: 25, scope: !3404, inlinedAt: !3729)
!3732 = !DILocation(line: 57, column: 26, scope: !3411, inlinedAt: !3731)
!3733 = !DILocation(line: 0, scope: !3374, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 55, column: 10, scope: !3404, inlinedAt: !3729)
!3735 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3734)
!3736 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3734)
!3737 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3734)
!3738 = !DILocation(line: 0, scope: !3713, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 318, column: 10, scope: !3721)
!3740 = !DILocation(line: 29, column: 10, scope: !3713, inlinedAt: !3739)
!3741 = !DILocation(line: 318, column: 3, scope: !3721)
!3742 = distinct !DISubprogram(name: "ximemdup0", scope: !770, file: !770, line: 325, type: !3743, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!330, !1060, !789}
!3745 = !{!3746, !3747, !3748}
!3746 = !DILocalVariable(name: "p", arg: 1, scope: !3742, file: !770, line: 325, type: !1060)
!3747 = !DILocalVariable(name: "s", arg: 2, scope: !3742, file: !770, line: 325, type: !789)
!3748 = !DILocalVariable(name: "result", scope: !3742, file: !770, line: 327, type: !330)
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 327, column: 30, scope: !3742)
!3751 = !DILocation(line: 0, scope: !3404, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 327, column: 18, scope: !3742)
!3753 = !DILocation(line: 0, scope: !3411, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 55, column: 25, scope: !3404, inlinedAt: !3752)
!3755 = !DILocation(line: 57, column: 26, scope: !3411, inlinedAt: !3754)
!3756 = !DILocation(line: 0, scope: !3374, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 55, column: 10, scope: !3404, inlinedAt: !3752)
!3758 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3757)
!3759 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3757)
!3760 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3757)
!3761 = !DILocation(line: 328, column: 3, scope: !3742)
!3762 = !DILocation(line: 328, column: 13, scope: !3742)
!3763 = !DILocation(line: 0, scope: !3713, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 329, column: 10, scope: !3742)
!3765 = !DILocation(line: 29, column: 10, scope: !3713, inlinedAt: !3764)
!3766 = !DILocation(line: 329, column: 3, scope: !3742)
!3767 = distinct !DISubprogram(name: "xstrdup", scope: !770, file: !770, line: 335, type: !1038, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3768)
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "string", arg: 1, scope: !3767, file: !770, line: 335, type: !134)
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !DILocation(line: 337, column: 27, scope: !3767)
!3772 = !DILocation(line: 337, column: 43, scope: !3767)
!3773 = !DILocation(line: 0, scope: !3697, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 337, column: 10, scope: !3767)
!3775 = !DILocation(line: 0, scope: !3393, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 312, column: 18, scope: !3697, inlinedAt: !3774)
!3777 = !DILocation(line: 49, column: 25, scope: !3393, inlinedAt: !3776)
!3778 = !DILocation(line: 0, scope: !3374, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 49, column: 10, scope: !3393, inlinedAt: !3776)
!3780 = !DILocation(line: 39, column: 8, scope: !3381, inlinedAt: !3779)
!3781 = !DILocation(line: 39, column: 7, scope: !3374, inlinedAt: !3779)
!3782 = !DILocation(line: 40, column: 5, scope: !3381, inlinedAt: !3779)
!3783 = !DILocation(line: 0, scope: !3713, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 312, column: 10, scope: !3697, inlinedAt: !3774)
!3785 = !DILocation(line: 29, column: 10, scope: !3713, inlinedAt: !3784)
!3786 = !DILocation(line: 337, column: 3, scope: !3767)
!3787 = distinct !DISubprogram(name: "xalloc_die", scope: !728, file: !728, line: 32, type: !453, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !803, retainedNodes: !3788)
!3788 = !{!3789}
!3789 = !DILocalVariable(name: "__errstatus", scope: !3790, file: !728, line: 34, type: !1079)
!3790 = distinct !DILexicalBlock(scope: !3787, file: !728, line: 34, column: 3)
!3791 = !DILocation(line: 34, column: 3, scope: !3790)
!3792 = !DILocation(line: 0, scope: !3790)
!3793 = !DILocation(line: 40, column: 3, scope: !3787)
!3794 = distinct !DISubprogram(name: "last_component", scope: !806, file: !806, line: 29, type: !1038, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3795)
!3795 = !{!3796, !3797, !3798, !3799}
!3796 = !DILocalVariable(name: "name", arg: 1, scope: !3794, file: !806, line: 29, type: !134)
!3797 = !DILocalVariable(name: "base", scope: !3794, file: !806, line: 31, type: !134)
!3798 = !DILocalVariable(name: "last_was_slash", scope: !3794, file: !806, line: 35, type: !309)
!3799 = !DILocalVariable(name: "p", scope: !3800, file: !806, line: 36, type: !134)
!3800 = distinct !DILexicalBlock(scope: !3794, file: !806, line: 36, column: 3)
!3801 = !DILocation(line: 0, scope: !3794)
!3802 = !DILocation(line: 32, column: 3, scope: !3794)
!3803 = !DILocation(line: 32, column: 10, scope: !3794)
!3804 = !DILocation(line: 33, column: 9, scope: !3794)
!3805 = distinct !{!3805, !3802, !3804, !958}
!3806 = !DILocation(line: 36, column: 30, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3800, file: !806, line: 36, column: 3)
!3808 = !DILocation(line: 31, column: 15, scope: !3794)
!3809 = !DILocation(line: 36, scope: !3800)
!3810 = !DILocation(line: 0, scope: !3800)
!3811 = !DILocation(line: 36, column: 3, scope: !3800)
!3812 = !DILocation(line: 47, column: 3, scope: !3794)
!3813 = !DILocation(line: 40, column: 16, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !806, line: 40, column: 16)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !806, line: 38, column: 11)
!3816 = distinct !DILexicalBlock(scope: !3807, file: !806, line: 37, column: 5)
!3817 = !DILocation(line: 40, column: 16, scope: !3815)
!3818 = !DILocation(line: 36, column: 35, scope: !3807)
!3819 = !DILocation(line: 36, column: 3, scope: !3807)
!3820 = distinct !{!3820, !3811, !3821, !958}
!3821 = !DILocation(line: 45, column: 5, scope: !3800)
!3822 = distinct !DISubprogram(name: "base_len", scope: !806, file: !806, line: 51, type: !3823, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!186, !134}
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "name", arg: 1, scope: !3822, file: !806, line: 51, type: !134)
!3827 = !DILocalVariable(name: "len", scope: !3822, file: !806, line: 53, type: !186)
!3828 = !DILocalVariable(name: "prefix_len", scope: !3822, file: !806, line: 61, type: !186)
!3829 = !DILocation(line: 0, scope: !3822)
!3830 = !DILocation(line: 54, column: 14, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3822, file: !806, line: 54, column: 3)
!3832 = !DILocation(line: 54, column: 8, scope: !3831)
!3833 = !DILocation(line: 54, scope: !3831)
!3834 = !DILocation(line: 54, column: 32, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !806, line: 54, column: 3)
!3836 = !DILocation(line: 54, column: 38, scope: !3835)
!3837 = !DILocation(line: 54, column: 41, scope: !3835)
!3838 = !DILocation(line: 54, column: 3, scope: !3831)
!3839 = distinct !{!3839, !3838, !3840, !958}
!3840 = !DILocation(line: 55, column: 5, scope: !3831)
!3841 = !DILocation(line: 66, column: 3, scope: !3822)
!3842 = distinct !DISubprogram(name: "close_stream", scope: !808, file: !808, line: 55, type: !3843, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3879)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!184, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3847, file: !326, line: 51, baseType: !184, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3847, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3847, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3847, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3847, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3847, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3847, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3847, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3847, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3847, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3847, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3847, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3847, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3847, file: !326, line: 70, baseType: !3863, size: 64, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3847, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3847, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3847, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3847, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3847, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3847, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3847, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3847, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3847, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3847, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3847, file: !326, line: 93, baseType: !3863, size: 64, offset: 1344)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3847, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3847, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3847, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3847, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3879 = !{!3880, !3881, !3883, !3884}
!3880 = !DILocalVariable(name: "stream", arg: 1, scope: !3842, file: !808, line: 55, type: !3845)
!3881 = !DILocalVariable(name: "some_pending", scope: !3842, file: !808, line: 57, type: !3882)
!3882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!3883 = !DILocalVariable(name: "prev_fail", scope: !3842, file: !808, line: 58, type: !3882)
!3884 = !DILocalVariable(name: "fclose_fail", scope: !3842, file: !808, line: 59, type: !3882)
!3885 = !DILocation(line: 0, scope: !3842)
!3886 = !DILocation(line: 57, column: 30, scope: !3842)
!3887 = !DILocalVariable(name: "__stream", arg: 1, scope: !3888, file: !1194, line: 135, type: !3845)
!3888 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1194, file: !1194, line: 135, type: !3843, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !3889)
!3889 = !{!3887}
!3890 = !DILocation(line: 0, scope: !3888, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 58, column: 27, scope: !3842)
!3892 = !DILocation(line: 137, column: 10, scope: !3888, inlinedAt: !3891)
!3893 = !DILocation(line: 58, column: 43, scope: !3842)
!3894 = !DILocation(line: 59, column: 29, scope: !3842)
!3895 = !DILocation(line: 59, column: 45, scope: !3842)
!3896 = !DILocation(line: 69, column: 17, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3842, file: !808, line: 69, column: 7)
!3898 = !DILocation(line: 57, column: 50, scope: !3842)
!3899 = !DILocation(line: 69, column: 33, scope: !3897)
!3900 = !DILocation(line: 69, column: 53, scope: !3897)
!3901 = !DILocation(line: 69, column: 59, scope: !3897)
!3902 = !DILocation(line: 69, column: 7, scope: !3842)
!3903 = !DILocation(line: 71, column: 11, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !808, line: 70, column: 5)
!3905 = !DILocation(line: 72, column: 9, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3904, file: !808, line: 71, column: 11)
!3907 = !DILocation(line: 72, column: 15, scope: !3906)
!3908 = !DILocation(line: 77, column: 1, scope: !3842)
!3909 = !DISubprogram(name: "__fpending", scope: !3910, file: !3910, line: 75, type: !3911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3910 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!186, !3845}
!3913 = distinct !DISubprogram(name: "rpl_fclose", scope: !810, file: !810, line: 58, type: !3914, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !3950)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!184, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3918)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3918, file: !326, line: 51, baseType: !184, size: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3918, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3918, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3918, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3918, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3918, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3918, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3918, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3918, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3918, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3918, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3918, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3918, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3918, file: !326, line: 70, baseType: !3934, size: 64, offset: 832)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3918, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3918, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3918, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3918, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3918, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3918, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3918, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3918, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3918, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3918, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3918, file: !326, line: 93, baseType: !3934, size: 64, offset: 1344)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3918, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3918, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3918, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3918, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DILocalVariable(name: "fp", arg: 1, scope: !3913, file: !810, line: 58, type: !3916)
!3952 = !DILocalVariable(name: "saved_errno", scope: !3913, file: !810, line: 60, type: !184)
!3953 = !DILocalVariable(name: "fd", scope: !3913, file: !810, line: 63, type: !184)
!3954 = !DILocalVariable(name: "result", scope: !3913, file: !810, line: 74, type: !184)
!3955 = !DILocation(line: 0, scope: !3913)
!3956 = !DILocation(line: 63, column: 12, scope: !3913)
!3957 = !DILocation(line: 64, column: 10, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3913, file: !810, line: 64, column: 7)
!3959 = !DILocation(line: 64, column: 7, scope: !3913)
!3960 = !DILocation(line: 65, column: 12, scope: !3958)
!3961 = !DILocation(line: 65, column: 5, scope: !3958)
!3962 = !DILocation(line: 70, column: 9, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3913, file: !810, line: 70, column: 7)
!3964 = !DILocation(line: 70, column: 23, scope: !3963)
!3965 = !DILocation(line: 70, column: 33, scope: !3963)
!3966 = !DILocation(line: 70, column: 26, scope: !3963)
!3967 = !DILocation(line: 70, column: 59, scope: !3963)
!3968 = !DILocation(line: 71, column: 7, scope: !3963)
!3969 = !DILocation(line: 71, column: 10, scope: !3963)
!3970 = !DILocation(line: 70, column: 7, scope: !3913)
!3971 = !DILocation(line: 100, column: 12, scope: !3913)
!3972 = !DILocation(line: 105, column: 7, scope: !3913)
!3973 = !DILocation(line: 72, column: 19, scope: !3963)
!3974 = !DILocation(line: 105, column: 19, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3913, file: !810, line: 105, column: 7)
!3976 = !DILocation(line: 107, column: 13, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3975, file: !810, line: 106, column: 5)
!3978 = !DILocation(line: 109, column: 5, scope: !3977)
!3979 = !DILocation(line: 112, column: 1, scope: !3913)
!3980 = !DISubprogram(name: "fileno", scope: !906, file: !906, line: 809, type: !3914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3981 = !DISubprogram(name: "fclose", scope: !906, file: !906, line: 178, type: !3914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3982 = !DISubprogram(name: "__freading", scope: !3910, file: !3910, line: 51, type: !3914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3983 = !DISubprogram(name: "lseek", scope: !1226, file: !1226, line: 339, type: !3984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!349, !184, !349, !184}
!3986 = distinct !DISubprogram(name: "rpl_fflush", scope: !812, file: !812, line: 130, type: !3987, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4023)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!184, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !3991)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3991, file: !326, line: 51, baseType: !184, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3991, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3991, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3991, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3991, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3991, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3991, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3991, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3991, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3991, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3991, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3991, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3991, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3991, file: !326, line: 70, baseType: !4007, size: 64, offset: 832)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3991, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3991, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3991, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3991, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3991, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3991, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3991, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3991, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3991, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3991, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3991, file: !326, line: 93, baseType: !4007, size: 64, offset: 1344)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3991, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3991, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3991, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3991, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4023 = !{!4024}
!4024 = !DILocalVariable(name: "stream", arg: 1, scope: !3986, file: !812, line: 130, type: !3989)
!4025 = !DILocation(line: 0, scope: !3986)
!4026 = !DILocation(line: 151, column: 14, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !3986, file: !812, line: 151, column: 7)
!4028 = !DILocation(line: 151, column: 22, scope: !4027)
!4029 = !DILocation(line: 151, column: 27, scope: !4027)
!4030 = !DILocation(line: 151, column: 7, scope: !3986)
!4031 = !DILocation(line: 152, column: 12, scope: !4027)
!4032 = !DILocation(line: 152, column: 5, scope: !4027)
!4033 = !DILocalVariable(name: "fp", arg: 1, scope: !4034, file: !812, line: 42, type: !3989)
!4034 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !812, file: !812, line: 42, type: !4035, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{null, !3989}
!4037 = !{!4033}
!4038 = !DILocation(line: 0, scope: !4034, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 157, column: 3, scope: !3986)
!4040 = !DILocation(line: 44, column: 12, scope: !4041, inlinedAt: !4039)
!4041 = distinct !DILexicalBlock(scope: !4034, file: !812, line: 44, column: 7)
!4042 = !DILocation(line: 44, column: 19, scope: !4041, inlinedAt: !4039)
!4043 = !DILocation(line: 44, column: 7, scope: !4034, inlinedAt: !4039)
!4044 = !DILocation(line: 46, column: 5, scope: !4041, inlinedAt: !4039)
!4045 = !DILocation(line: 159, column: 10, scope: !3986)
!4046 = !DILocation(line: 159, column: 3, scope: !3986)
!4047 = !DILocation(line: 236, column: 1, scope: !3986)
!4048 = !DISubprogram(name: "fflush", scope: !906, file: !906, line: 230, type: !3987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!4049 = distinct !DISubprogram(name: "rpl_fseeko", scope: !814, file: !814, line: 28, type: !4050, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4087)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!184, !4052, !4086, !184}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !324, line: 7, baseType: !4054)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !326, line: 49, size: 1728, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4054, file: !326, line: 51, baseType: !184, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4054, file: !326, line: 54, baseType: !330, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4054, file: !326, line: 55, baseType: !330, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4054, file: !326, line: 56, baseType: !330, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4054, file: !326, line: 57, baseType: !330, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4054, file: !326, line: 58, baseType: !330, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4054, file: !326, line: 59, baseType: !330, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4054, file: !326, line: 60, baseType: !330, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4054, file: !326, line: 61, baseType: !330, size: 64, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4054, file: !326, line: 64, baseType: !330, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4054, file: !326, line: 65, baseType: !330, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4054, file: !326, line: 66, baseType: !330, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4054, file: !326, line: 68, baseType: !342, size: 64, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4054, file: !326, line: 70, baseType: !4070, size: 64, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4054, file: !326, line: 72, baseType: !184, size: 32, offset: 896)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4054, file: !326, line: 73, baseType: !184, size: 32, offset: 928)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4054, file: !326, line: 74, baseType: !349, size: 64, offset: 960)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4054, file: !326, line: 77, baseType: !185, size: 16, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4054, file: !326, line: 78, baseType: !354, size: 8, offset: 1040)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4054, file: !326, line: 79, baseType: !44, size: 8, offset: 1048)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4054, file: !326, line: 81, baseType: !357, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4054, file: !326, line: 89, baseType: !360, size: 64, offset: 1152)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4054, file: !326, line: 91, baseType: !362, size: 64, offset: 1216)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4054, file: !326, line: 92, baseType: !365, size: 64, offset: 1280)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4054, file: !326, line: 93, baseType: !4070, size: 64, offset: 1344)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4054, file: !326, line: 94, baseType: !178, size: 64, offset: 1408)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4054, file: !326, line: 95, baseType: !186, size: 64, offset: 1472)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4054, file: !326, line: 96, baseType: !184, size: 32, offset: 1536)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4054, file: !326, line: 98, baseType: !372, size: 160, offset: 1568)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !906, line: 63, baseType: !349)
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DILocalVariable(name: "fp", arg: 1, scope: !4049, file: !814, line: 28, type: !4052)
!4089 = !DILocalVariable(name: "offset", arg: 2, scope: !4049, file: !814, line: 28, type: !4086)
!4090 = !DILocalVariable(name: "whence", arg: 3, scope: !4049, file: !814, line: 28, type: !184)
!4091 = !DILocalVariable(name: "pos", scope: !4092, file: !814, line: 123, type: !4086)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !814, line: 119, column: 5)
!4093 = distinct !DILexicalBlock(scope: !4049, file: !814, line: 55, column: 7)
!4094 = !DILocation(line: 0, scope: !4049)
!4095 = !DILocation(line: 55, column: 12, scope: !4093)
!4096 = !{!1202, !843, i64 16}
!4097 = !DILocation(line: 55, column: 33, scope: !4093)
!4098 = !{!1202, !843, i64 8}
!4099 = !DILocation(line: 55, column: 25, scope: !4093)
!4100 = !DILocation(line: 56, column: 7, scope: !4093)
!4101 = !DILocation(line: 56, column: 15, scope: !4093)
!4102 = !DILocation(line: 56, column: 37, scope: !4093)
!4103 = !{!1202, !843, i64 32}
!4104 = !DILocation(line: 56, column: 29, scope: !4093)
!4105 = !DILocation(line: 57, column: 7, scope: !4093)
!4106 = !DILocation(line: 57, column: 15, scope: !4093)
!4107 = !{!1202, !843, i64 72}
!4108 = !DILocation(line: 57, column: 29, scope: !4093)
!4109 = !DILocation(line: 55, column: 7, scope: !4049)
!4110 = !DILocation(line: 123, column: 26, scope: !4092)
!4111 = !DILocation(line: 123, column: 19, scope: !4092)
!4112 = !DILocation(line: 0, scope: !4092)
!4113 = !DILocation(line: 124, column: 15, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4092, file: !814, line: 124, column: 11)
!4115 = !DILocation(line: 124, column: 11, scope: !4092)
!4116 = !DILocation(line: 135, column: 19, scope: !4092)
!4117 = !DILocation(line: 136, column: 12, scope: !4092)
!4118 = !DILocation(line: 136, column: 20, scope: !4092)
!4119 = !{!1202, !1203, i64 144}
!4120 = !DILocation(line: 167, column: 7, scope: !4092)
!4121 = !DILocation(line: 169, column: 10, scope: !4049)
!4122 = !DILocation(line: 169, column: 3, scope: !4049)
!4123 = !DILocation(line: 170, column: 1, scope: !4049)
!4124 = !DISubprogram(name: "fseeko", scope: !906, file: !906, line: 736, type: !4125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!184, !4052, !349, !184}
!4127 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !735, file: !735, line: 100, type: !4128, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4131)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!186, !1892, !134, !186, !4130}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!4131 = !{!4132, !4133, !4134, !4135, !4136}
!4132 = !DILocalVariable(name: "pwc", arg: 1, scope: !4127, file: !735, line: 100, type: !1892)
!4133 = !DILocalVariable(name: "s", arg: 2, scope: !4127, file: !735, line: 100, type: !134)
!4134 = !DILocalVariable(name: "n", arg: 3, scope: !4127, file: !735, line: 100, type: !186)
!4135 = !DILocalVariable(name: "ps", arg: 4, scope: !4127, file: !735, line: 100, type: !4130)
!4136 = !DILocalVariable(name: "ret", scope: !4127, file: !735, line: 130, type: !186)
!4137 = !DILocation(line: 0, scope: !4127)
!4138 = !DILocation(line: 105, column: 9, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4127, file: !735, line: 105, column: 7)
!4140 = !DILocation(line: 105, column: 7, scope: !4127)
!4141 = !DILocation(line: 117, column: 10, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4127, file: !735, line: 117, column: 7)
!4143 = !DILocation(line: 117, column: 7, scope: !4127)
!4144 = !DILocation(line: 130, column: 16, scope: !4127)
!4145 = !DILocation(line: 135, column: 11, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4127, file: !735, line: 135, column: 7)
!4147 = !DILocation(line: 135, column: 25, scope: !4146)
!4148 = !DILocation(line: 135, column: 30, scope: !4146)
!4149 = !DILocation(line: 135, column: 7, scope: !4127)
!4150 = !DILocalVariable(name: "ps", arg: 1, scope: !4151, file: !1866, line: 1135, type: !4130)
!4151 = distinct !DISubprogram(name: "mbszero", scope: !1866, file: !1866, line: 1135, type: !4152, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{null, !4130}
!4154 = !{!4150}
!4155 = !DILocation(line: 0, scope: !4151, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 137, column: 5, scope: !4146)
!4157 = !DILocalVariable(name: "__dest", arg: 1, scope: !4158, file: !1697, line: 57, type: !178)
!4158 = distinct !DISubprogram(name: "memset", scope: !1697, file: !1697, line: 57, type: !1875, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !4159)
!4159 = !{!4157, !4160, !4161}
!4160 = !DILocalVariable(name: "__ch", arg: 2, scope: !4158, file: !1697, line: 57, type: !184)
!4161 = !DILocalVariable(name: "__len", arg: 3, scope: !4158, file: !1697, line: 57, type: !186)
!4162 = !DILocation(line: 0, scope: !4158, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 1137, column: 3, scope: !4151, inlinedAt: !4156)
!4164 = !DILocation(line: 59, column: 10, scope: !4158, inlinedAt: !4163)
!4165 = !DILocation(line: 137, column: 5, scope: !4146)
!4166 = !DILocation(line: 138, column: 11, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4127, file: !735, line: 138, column: 7)
!4168 = !DILocation(line: 138, column: 7, scope: !4127)
!4169 = !DILocation(line: 139, column: 5, scope: !4167)
!4170 = !DILocation(line: 143, column: 26, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4127, file: !735, line: 143, column: 7)
!4172 = !DILocation(line: 143, column: 41, scope: !4171)
!4173 = !DILocation(line: 143, column: 7, scope: !4127)
!4174 = !DILocation(line: 145, column: 15, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !735, line: 145, column: 11)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !735, line: 144, column: 5)
!4177 = !DILocation(line: 145, column: 11, scope: !4176)
!4178 = !DILocation(line: 146, column: 32, scope: !4175)
!4179 = !DILocation(line: 146, column: 16, scope: !4175)
!4180 = !DILocation(line: 146, column: 14, scope: !4175)
!4181 = !DILocation(line: 146, column: 9, scope: !4175)
!4182 = !DILocation(line: 286, column: 1, scope: !4127)
!4183 = !DISubprogram(name: "mbsinit", scope: !4184, file: !4184, line: 293, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !895)
!4184 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!184, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!4189 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !816, file: !816, line: 27, type: !3358, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4190)
!4190 = !{!4191, !4192, !4193, !4194}
!4191 = !DILocalVariable(name: "ptr", arg: 1, scope: !4189, file: !816, line: 27, type: !178)
!4192 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4189, file: !816, line: 27, type: !186)
!4193 = !DILocalVariable(name: "size", arg: 3, scope: !4189, file: !816, line: 27, type: !186)
!4194 = !DILocalVariable(name: "nbytes", scope: !4189, file: !816, line: 29, type: !186)
!4195 = !DILocation(line: 0, scope: !4189)
!4196 = !DILocation(line: 30, column: 7, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4189, file: !816, line: 30, column: 7)
!4198 = !DILocalVariable(name: "ptr", arg: 1, scope: !4199, file: !3447, line: 2057, type: !178)
!4199 = distinct !DISubprogram(name: "rpl_realloc", scope: !3447, file: !3447, line: 2057, type: !3439, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4200)
!4200 = !{!4198, !4201}
!4201 = !DILocalVariable(name: "size", arg: 2, scope: !4199, file: !3447, line: 2057, type: !186)
!4202 = !DILocation(line: 0, scope: !4199, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 37, column: 10, scope: !4189)
!4204 = !DILocation(line: 2059, column: 24, scope: !4199, inlinedAt: !4203)
!4205 = !DILocation(line: 2059, column: 10, scope: !4199, inlinedAt: !4203)
!4206 = !DILocation(line: 37, column: 3, scope: !4189)
!4207 = !DILocation(line: 32, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4197, file: !816, line: 31, column: 5)
!4209 = !DILocation(line: 32, column: 13, scope: !4208)
!4210 = !DILocation(line: 33, column: 7, scope: !4208)
!4211 = !DILocation(line: 38, column: 1, scope: !4189)
!4212 = distinct !DISubprogram(name: "hard_locale", scope: !753, file: !753, line: 28, type: !4213, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4215)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!309, !184}
!4215 = !{!4216, !4217}
!4216 = !DILocalVariable(name: "category", arg: 1, scope: !4212, file: !753, line: 28, type: !184)
!4217 = !DILocalVariable(name: "locale", scope: !4212, file: !753, line: 30, type: !4218)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4219)
!4219 = !{!4220}
!4220 = !DISubrange(count: 257)
!4221 = !DILocation(line: 0, scope: !4212)
!4222 = !DILocation(line: 30, column: 3, scope: !4212)
!4223 = !DILocation(line: 30, column: 8, scope: !4212)
!4224 = !DILocation(line: 32, column: 7, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4212, file: !753, line: 32, column: 7)
!4226 = !DILocation(line: 32, column: 7, scope: !4212)
!4227 = !DILocalVariable(name: "__s1", arg: 1, scope: !4228, file: !924, line: 1359, type: !134)
!4228 = distinct !DISubprogram(name: "streq", scope: !924, file: !924, line: 1359, type: !925, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !4229)
!4229 = !{!4227, !4230}
!4230 = !DILocalVariable(name: "__s2", arg: 2, scope: !4228, file: !924, line: 1359, type: !134)
!4231 = !DILocation(line: 0, scope: !4228, inlinedAt: !4232)
!4232 = distinct !DILocation(line: 35, column: 9, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4212, file: !753, line: 35, column: 7)
!4234 = !DILocation(line: 1361, column: 11, scope: !4228, inlinedAt: !4232)
!4235 = !DILocation(line: 35, column: 29, scope: !4233)
!4236 = !DILocation(line: 0, scope: !4228, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 35, column: 32, scope: !4233)
!4238 = !DILocation(line: 1361, column: 11, scope: !4228, inlinedAt: !4237)
!4239 = !DILocation(line: 1361, column: 10, scope: !4228, inlinedAt: !4237)
!4240 = !DILocation(line: 35, column: 7, scope: !4212)
!4241 = !DILocation(line: 46, column: 3, scope: !4212)
!4242 = !DILocation(line: 47, column: 1, scope: !4212)
!4243 = distinct !DISubprogram(name: "setlocale_null_r", scope: !823, file: !823, line: 154, type: !4244, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!184, !184, !330, !186}
!4246 = !{!4247, !4248, !4249}
!4247 = !DILocalVariable(name: "category", arg: 1, scope: !4243, file: !823, line: 154, type: !184)
!4248 = !DILocalVariable(name: "buf", arg: 2, scope: !4243, file: !823, line: 154, type: !330)
!4249 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4243, file: !823, line: 154, type: !186)
!4250 = !DILocation(line: 0, scope: !4243)
!4251 = !DILocation(line: 159, column: 10, scope: !4243)
!4252 = !DILocation(line: 159, column: 3, scope: !4243)
!4253 = distinct !DISubprogram(name: "setlocale_null", scope: !823, file: !823, line: 186, type: !4254, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!134, !184}
!4256 = !{!4257}
!4257 = !DILocalVariable(name: "category", arg: 1, scope: !4253, file: !823, line: 186, type: !184)
!4258 = !DILocation(line: 0, scope: !4253)
!4259 = !DILocation(line: 189, column: 10, scope: !4253)
!4260 = !DILocation(line: 189, column: 3, scope: !4253)
!4261 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !825, file: !825, line: 35, type: !4254, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4262)
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "category", arg: 1, scope: !4261, file: !825, line: 35, type: !184)
!4264 = !DILocalVariable(name: "result", scope: !4261, file: !825, line: 37, type: !134)
!4265 = !DILocation(line: 0, scope: !4261)
!4266 = !DILocation(line: 37, column: 24, scope: !4261)
!4267 = !DILocation(line: 62, column: 3, scope: !4261)
!4268 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !825, file: !825, line: 66, type: !4244, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4269)
!4269 = !{!4270, !4271, !4272, !4273, !4274}
!4270 = !DILocalVariable(name: "category", arg: 1, scope: !4268, file: !825, line: 66, type: !184)
!4271 = !DILocalVariable(name: "buf", arg: 2, scope: !4268, file: !825, line: 66, type: !330)
!4272 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4268, file: !825, line: 66, type: !186)
!4273 = !DILocalVariable(name: "result", scope: !4268, file: !825, line: 111, type: !134)
!4274 = !DILocalVariable(name: "length", scope: !4275, file: !825, line: 125, type: !186)
!4275 = distinct !DILexicalBlock(scope: !4276, file: !825, line: 124, column: 5)
!4276 = distinct !DILexicalBlock(scope: !4268, file: !825, line: 113, column: 7)
!4277 = !DILocation(line: 0, scope: !4268)
!4278 = !DILocation(line: 0, scope: !4261, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 111, column: 24, scope: !4268)
!4280 = !DILocation(line: 37, column: 24, scope: !4261, inlinedAt: !4279)
!4281 = !DILocation(line: 113, column: 14, scope: !4276)
!4282 = !DILocation(line: 113, column: 7, scope: !4268)
!4283 = !DILocation(line: 116, column: 19, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !825, line: 116, column: 11)
!4285 = distinct !DILexicalBlock(scope: !4276, file: !825, line: 114, column: 5)
!4286 = !DILocation(line: 116, column: 11, scope: !4285)
!4287 = !DILocation(line: 120, column: 16, scope: !4284)
!4288 = !DILocation(line: 120, column: 9, scope: !4284)
!4289 = !DILocation(line: 125, column: 23, scope: !4275)
!4290 = !DILocation(line: 0, scope: !4275)
!4291 = !DILocation(line: 126, column: 18, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4275, file: !825, line: 126, column: 11)
!4293 = !DILocation(line: 126, column: 11, scope: !4275)
!4294 = !DILocation(line: 128, column: 39, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !825, line: 127, column: 9)
!4296 = !DILocalVariable(name: "__dest", arg: 1, scope: !4297, file: !1697, line: 26, type: !1700)
!4297 = distinct !DISubprogram(name: "memcpy", scope: !1697, file: !1697, line: 26, type: !1698, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !4298)
!4298 = !{!4296, !4299, !4300}
!4299 = !DILocalVariable(name: "__src", arg: 2, scope: !4297, file: !1697, line: 26, type: !1059)
!4300 = !DILocalVariable(name: "__len", arg: 3, scope: !4297, file: !1697, line: 26, type: !186)
!4301 = !DILocation(line: 0, scope: !4297, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 128, column: 11, scope: !4295)
!4303 = !DILocation(line: 29, column: 10, scope: !4297, inlinedAt: !4302)
!4304 = !DILocation(line: 129, column: 11, scope: !4295)
!4305 = !DILocation(line: 133, column: 23, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !825, line: 133, column: 15)
!4307 = distinct !DILexicalBlock(scope: !4292, file: !825, line: 132, column: 9)
!4308 = !DILocation(line: 133, column: 15, scope: !4307)
!4309 = !DILocation(line: 138, column: 44, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4306, file: !825, line: 134, column: 13)
!4311 = !DILocation(line: 0, scope: !4297, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 138, column: 15, scope: !4310)
!4313 = !DILocation(line: 29, column: 10, scope: !4297, inlinedAt: !4312)
!4314 = !DILocation(line: 139, column: 15, scope: !4310)
!4315 = !DILocation(line: 139, column: 32, scope: !4310)
!4316 = !DILocation(line: 140, column: 13, scope: !4310)
!4317 = !DILocation(line: 0, scope: !4276)
!4318 = !DILocation(line: 145, column: 1, scope: !4268)
