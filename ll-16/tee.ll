; ModuleID = 'src/tee.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.pollfd = type { i32, i16, i16 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [65 x i8] c"Copy standard input to each FILE, and also to standard output.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"tee\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [69 x i8] c"  -a, --append\0A         append to the given FILEs, do not overwrite\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [61 x i8] c"  -i, --ignore-interrupts\0A         ignore interrupt signals\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [61 x i8] c"  -p\0A         operate in a more appropriate MODE with pipes\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [83 x i8] c"      --output-error[=MODE]\0A         set behavior on write error.  See MODE below\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [586 x i8] c"\0AMODE determines behavior with write errors on the outputs:\0A  warn           diagnose errors writing to any output\0A  warn-nopipe    diagnose errors writing to any output not a pipe\0A  exit           exit on error writing to any output\0A  exit-nopipe    exit on error writing to any output not a pipe\0AThe default MODE for the -p option is 'warn-nopipe'.\0AWith \22nopipe\22 MODEs, exit immediately if all outputs become broken pipes.\0AThe default operation when --output-error is not specified, is to\0Aexit immediately on error writing to a pipe, and diagnose errors\0Awriting to non pipe outputs.\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !54
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [4 x i8] c"aip\00", align 1, !dbg !69
@long_options = internal constant [6 x %struct.option] [%struct.option { ptr @.str.57, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.59, i32 2, ptr null, i32 112 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !71
@append = internal unnamed_addr global i1 false, align 1, !dbg !417
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !418
@optarg = external local_unnamed_addr global ptr, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 4, !dbg !382
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1, !dbg !145
@output_error_args = internal constant [5 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null], align 8, !dbg !394
@output_error = internal unnamed_addr global i32 0, align 4, !dbg !182
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !150
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1, !dbg !155
@.str.18 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !165
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !170
@.str.21 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1, !dbg !175
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !184
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !263
@.str.23 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !268
@.str.24 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !270
@.str.25 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !272
@.str.39 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !312
@.str.40 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !314
@.str.41 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !316
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !321
@.str.43 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !326
@.str.44 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !328
@.str.45 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !330
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !332
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !334
@.str.48 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !336
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !347
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !349
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !354
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !359
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !364
@.str.57 = private unnamed_addr constant [7 x i8] c"append\00", align 1, !dbg !366
@.str.58 = private unnamed_addr constant [18 x i8] c"ignore-interrupts\00", align 1, !dbg !368
@.str.59 = private unnamed_addr constant [13 x i8] c"output-error\00", align 1, !dbg !373
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !378
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !380
@.str.62 = private unnamed_addr constant [5 x i8] c"warn\00", align 1, !dbg !386
@.str.63 = private unnamed_addr constant [12 x i8] c"warn-nopipe\00", align 1, !dbg !388
@.str.64 = private unnamed_addr constant [5 x i8] c"exit\00", align 1, !dbg !390
@.str.65 = private unnamed_addr constant [12 x i8] c"exit-nopipe\00", align 1, !dbg !392
@stdin = external local_unnamed_addr global ptr, align 8
@.str.66 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !398
@.str.67 = private unnamed_addr constant [13 x i8] c"iopoll error\00", align 1, !dbg !400
@.str.68 = private unnamed_addr constant [11 x i8] c"read error\00", align 1, !dbg !402
@.str.26 = private unnamed_addr constant [26 x i8] c"fdin != -1 || fdout != -1\00", align 1, !dbg !419
@.str.1.27 = private unnamed_addr constant [13 x i8] c"src/iopoll.c\00", align 1, !dbg !425
@__PRETTY_FUNCTION__.iopoll_internal = private unnamed_addr constant [44 x i8] c"int iopoll_internal(int, int, _Bool, _Bool)\00", align 1, !dbg !427
@.str.2.28 = private unnamed_addr constant [8 x i8] c"0 < ret\00", align 1, !dbg !432
@.str.49 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !434
@Version = dso_local local_unnamed_addr global ptr @.str.49, align 8, !dbg !437
@argmatch_die = dso_local local_unnamed_addr global ptr @__argmatch_die, align 8, !dbg !441
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !448
@.str.1.52 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1, !dbg !450
@.str.2.53 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1, !dbg !452
@.str.3.70 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1, !dbg !457
@.str.4.71 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1, !dbg !462
@.str.5.72 = private unnamed_addr constant [5 x i8] c", %s\00", align 1, !dbg !464
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !471
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !484
@.str.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !476
@.str.1.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !478
@.str.2.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !480
@.str.3.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !482
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !486
@stderr = external local_unnamed_addr global ptr, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !492
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !529
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !494
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !519
@.str.1.87 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !521
@.str.2.89 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !523
@.str.3.88 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !525
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !527
@.str.4.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !531
@.str.5.83 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !533
@.str.6.84 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !535
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !537
@.str.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !543
@.str.1.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !545
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !547
@.str.108 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !578
@.str.1.109 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !581
@.str.2.110 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !583
@.str.3.111 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !585
@.str.4.112 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !587
@.str.5.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !589
@.str.6.114 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !591
@.str.7.115 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !593
@.str.8.116 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !595
@.str.9.117 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !597
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.108, ptr @.str.1.109, ptr @.str.2.110, ptr @.str.3.111, ptr @.str.4.112, ptr @.str.5.113, ptr @.str.6.114, ptr @.str.7.115, ptr @.str.8.116, ptr @.str.9.117, ptr null], align 8, !dbg !599
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !610
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !624
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !662
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !669
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !626
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !671
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !614
@.str.10.120 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !631
@.str.11.118 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !633
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !635
@.str.13.119 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !637
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !639
@.str.134 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !674
@.str.1.135 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !677
@.str.2.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !679
@.str.3.137 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !681
@.str.4.138 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !683
@.str.5.139 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !685
@.str.6.140 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !690
@.str.7.141 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !695
@.str.8.142 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !697
@.str.9.143 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !702
@.str.10.144 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !707
@.str.11.145 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !712
@.str.12.146 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !717
@.str.13.147 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !719
@.str.14.148 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !722
@.str.15.149 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !727
@.str.16.150 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !732
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.155 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !737
@.str.18.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !739
@.str.19.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !741
@.str.20.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !743
@.str.21.159 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !745
@.str.22.160 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !747
@.str.23.161 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !749
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !751
@exit_failure = dso_local global i32 1, align 4, !dbg !759
@.str.176 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !765
@.str.1.174 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !768
@.str.2.175 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !770
@.str.187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !772
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !775
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !790
@.str.196 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !808
@.str.1.197 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !811

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !898, metadata !DIExpression()), !dbg !899
  %2 = icmp eq i32 %0, 0, !dbg !900
  br i1 %2, label %8, label %3, !dbg !902

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !903, !tbaa !905
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !903
  %6 = load ptr, ptr @program_name, align 8, !dbg !903, !tbaa !905
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !903
  br label %38, !dbg !903

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !909
  %10 = load ptr, ptr @program_name, align 8, !dbg !909, !tbaa !905
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !909
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !911
  %13 = load ptr, ptr @stdout, align 8, !dbg !911, !tbaa !905
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !911
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !912
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !912
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !913
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !913
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !914
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !914
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !915
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !915
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !916
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !916
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !917
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !917
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !918
  %22 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !905
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !918
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !919, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr poison, metadata !931, metadata !DIExpression()), !dbg !936
  tail call void @emit_bug_reporting_address() #40, !dbg !938
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !939
  call void @llvm.dbg.value(metadata ptr %24, metadata !934, metadata !DIExpression()), !dbg !936
  %25 = icmp eq ptr %24, null, !dbg !940
  br i1 %25, label %33, label %26, !dbg !942

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #41, !dbg !943
  %28 = icmp eq i32 %27, 0, !dbg !943
  br i1 %28, label %33, label %29, !dbg !944

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #40, !dbg !945
  %31 = load ptr, ptr @stdout, align 8, !dbg !945, !tbaa !905
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !945
  br label %33, !dbg !947

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !936
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !948
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #40, !dbg !948
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #40, !dbg !949
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #40, !dbg !949
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !950
  unreachable, !dbg !950
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !951 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !956 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !962 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !965 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !968
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !969, !tbaa !970
  %3 = icmp eq i32 %2, -1, !dbg !972
  br i1 %3, label %4, label %16, !dbg !973

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #40, !dbg !974
  call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !975
  %6 = icmp eq ptr %5, null, !dbg !976
  br i1 %6, label %14, label %7, !dbg !977

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !978, !tbaa !979
  %9 = icmp eq i8 %8, 0, !dbg !978
  br i1 %9, label %14, label %10, !dbg !980

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !987, metadata !DIExpression()), !dbg !988
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #41, !dbg !990
  %12 = icmp eq i32 %11, 0, !dbg !991
  %13 = zext i1 %12 to i32, !dbg !980
  br label %14, !dbg !980

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !992, !tbaa !970
  br label %16, !dbg !993

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !994
  %18 = icmp eq i32 %17, 0, !dbg !994
  br i1 %18, label %22, label %19, !dbg !996

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !905
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !997
  br label %122, !dbg !999

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !968
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #41, !dbg !1000
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1001
  call void @llvm.dbg.value(metadata ptr %24, metadata !196, metadata !DIExpression()), !dbg !968
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1002
  call void @llvm.dbg.value(metadata ptr %25, metadata !197, metadata !DIExpression()), !dbg !968
  %26 = icmp eq ptr %25, null, !dbg !1003
  br i1 %26, label %54, label %27, !dbg !1004

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1005
  br i1 %28, label %54, label %29, !dbg !1006

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !198, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !1007
  %30 = icmp ult ptr %24, %25, !dbg !1008
  br i1 %30, label %31, label %52, !dbg !1009

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !968
  %33 = load ptr, ptr %32, align 8, !tbaa !905
  br label %34, !dbg !1009

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !198, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %36, metadata !202, metadata !DIExpression()), !dbg !1007
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1010
  call void @llvm.dbg.value(metadata ptr %37, metadata !198, metadata !DIExpression()), !dbg !1007
  %38 = load i8, ptr %35, align 1, !dbg !1010, !tbaa !979
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1010
  %41 = load i16, ptr %40, align 2, !dbg !1010, !tbaa !1011
  %42 = freeze i16 %41, !dbg !1013
  %43 = lshr i16 %42, 13, !dbg !1013
  %44 = and i16 %43, 1, !dbg !1013
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1014
  call void @llvm.dbg.value(metadata i64 %46, metadata !202, metadata !DIExpression()), !dbg !1007
  %47 = icmp ult ptr %37, %25, !dbg !1008
  %48 = icmp ult i64 %46, 2, !dbg !1015
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1015
  br i1 %49, label %34, label %50, !dbg !1009, !llvm.loop !1016

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1018
  br i1 %51, label %52, label %54, !dbg !1020

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1020

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !968
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %55, metadata !197, metadata !DIExpression()), !dbg !968
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.25) #41, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %57, metadata !203, metadata !DIExpression()), !dbg !968
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1022
  call void @llvm.dbg.value(metadata ptr %58, metadata !204, metadata !DIExpression()), !dbg !968
  br label %59, !dbg !1023

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !968
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %60, metadata !204, metadata !DIExpression()), !dbg !968
  %62 = load i8, ptr %60, align 1, !dbg !1024, !tbaa !979
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1025

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1026
  %65 = load i8, ptr %64, align 1, !dbg !1029, !tbaa !979
  %66 = icmp ne i8 %65, 45, !dbg !1030
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1031
  br label %68, !dbg !1031

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !968
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1032
  %71 = load ptr, ptr %70, align 8, !dbg !1032, !tbaa !905
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1032
  %74 = load i16, ptr %73, align 2, !dbg !1032, !tbaa !1011
  %75 = and i16 %74, 8192, !dbg !1032
  %76 = icmp eq i16 %75, 0, !dbg !1032
  br i1 %76, label %90, label %77, !dbg !1034

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1035
  br i1 %78, label %92, label %79, !dbg !1038

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1039
  %81 = load i8, ptr %80, align 1, !dbg !1039, !tbaa !979
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1039
  %84 = load i16, ptr %83, align 2, !dbg !1039, !tbaa !1011
  %85 = and i16 %84, 8192, !dbg !1039
  %86 = icmp eq i16 %85, 0, !dbg !1039
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1040
  br i1 %89, label %90, label %92, !dbg !1040

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1041
  call void @llvm.dbg.value(metadata ptr %91, metadata !204, metadata !DIExpression()), !dbg !968
  br label %59, !dbg !1023, !llvm.loop !1042

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1044
  %94 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !905
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1044
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !258, metadata !DIExpression()), !dbg !968
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #41, !dbg !1065
  %97 = icmp eq i32 %96, 0, !dbg !1065
  br i1 %97, label %101, label %98, !dbg !1067

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #41, !dbg !1068
  %100 = icmp eq i32 %99, 0, !dbg !1068
  br i1 %100, label %101, label %104, !dbg !1069

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1070
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #40, !dbg !1070
  br label %107, !dbg !1072

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1073
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #40, !dbg !1073
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1075, !tbaa !905
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %108), !dbg !1075
  %110 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !905
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %110), !dbg !1076
  %112 = ptrtoint ptr %60 to i64, !dbg !1077
  %113 = sub i64 %112, %93, !dbg !1077
  %114 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !905
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1077
  %116 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !905
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %116), !dbg !1078
  %118 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !905
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %118), !dbg !1079
  %120 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !905
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1080
  br label %122, !dbg !1081

122:                                              ; preds = %107, %19
  ret void, !dbg !1081
}

; Function Attrs: nounwind
declare !dbg !1082 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1086 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1090 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1092 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1095 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1098 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1101 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1104 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1110 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1111 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1115 {
  %3 = alloca [8192 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1120, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata ptr %1, metadata !1121, metadata !DIExpression()), !dbg !1125
  %4 = load ptr, ptr %1, align 8, !dbg !1126, !tbaa !905
  tail call void @set_program_name(ptr noundef %4) #40, !dbg !1127
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #40, !dbg !1128
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #40, !dbg !1129
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #40, !dbg !1130
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1131
  br label %9, !dbg !1132

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %10, metadata !1122, metadata !DIExpression()), !dbg !1125
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -2, label %23
    i32 -3, label %24
  ], !dbg !1132

11:                                               ; preds = %9
  store i1 true, ptr @append, align 1, !dbg !1134
  br label %21, !dbg !1137

12:                                               ; preds = %9
  store i1 true, ptr @ignore_interrupts, align 1, !dbg !1138
  br label %21, !dbg !1139

13:                                               ; preds = %9
  %14 = load ptr, ptr @optarg, align 8, !dbg !1140, !tbaa !905
  %15 = icmp eq ptr %14, null, !dbg !1140
  br i1 %15, label %22, label %16, !dbg !1142

16:                                               ; preds = %13
  %17 = load ptr, ptr @argmatch_die, align 8, !dbg !1143, !tbaa !905
  %18 = tail call i64 @__xargmatch_internal(ptr noundef nonnull @.str.15, ptr noundef nonnull %14, ptr noundef nonnull @output_error_args, ptr noundef nonnull @output_error_types, i64 noundef 4, ptr noundef %17, i1 noundef true) #40, !dbg !1143
  %19 = getelementptr inbounds [4 x i32], ptr @output_error_types, i64 0, i64 %18, !dbg !1143
  %20 = load i32, ptr %19, align 4, !dbg !1143, !tbaa !979
  store i32 %20, ptr @output_error, align 4, !dbg !1144, !tbaa !979
  br label %21, !dbg !1145

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !1133, !llvm.loop !1146

22:                                               ; preds = %13
  store i32 2, ptr @output_error, align 4, !dbg !1148, !tbaa !979
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #44, !dbg !1149
  unreachable, !dbg !1149

24:                                               ; preds = %9
  %25 = load ptr, ptr @stdout, align 8, !dbg !1150, !tbaa !905
  %26 = load ptr, ptr @Version, align 8, !dbg !1150, !tbaa !905
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #40, !dbg !1150
  %28 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #40, !dbg !1150
  %29 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #40, !dbg !1150
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef null) #40, !dbg !1150
  tail call void @exit(i32 noundef 0) #42, !dbg !1150
  unreachable, !dbg !1150

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #44, !dbg !1151
  unreachable, !dbg !1151

31:                                               ; preds = %9
  %32 = load i1, ptr @ignore_interrupts, align 1, !dbg !1152
  br i1 %32, label %33, label %35, !dbg !1154

33:                                               ; preds = %31
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1155
  br label %35, !dbg !1155

35:                                               ; preds = %33, %31
  %36 = load i32, ptr @output_error, align 4, !dbg !1156, !tbaa !979
  %37 = icmp eq i32 %36, 0, !dbg !1158
  br i1 %37, label %43, label %38, !dbg !1159

38:                                               ; preds = %35
  %39 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1160
  %40 = load i32, ptr @output_error, align 4, !dbg !1161, !tbaa !979
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !1162

41:                                               ; preds = %38, %38
  %42 = tail call i1 @iopoll_input_ok(i32 noundef 0) #40, !dbg !1163
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ %42, %41 ], [ false, %38 ], [ false, %35 ], !dbg !1125
  call void @llvm.dbg.value(metadata i1 %44, metadata !1123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1125
  %45 = load i32, ptr @optind, align 4, !dbg !1164, !tbaa !970
  %46 = sub nsw i32 %0, %45, !dbg !1165
  %47 = sext i32 %45 to i64, !dbg !1166
  %48 = getelementptr inbounds ptr, ptr %1, i64 %47, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %46, metadata !1167, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %48, metadata !1172, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i1 %44, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1206
  call void @llvm.dbg.value(metadata i64 0, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #40, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1206
  %49 = load i1, ptr @append, align 1, !dbg !1210
  %50 = select i1 %49, i32 1089, i32 577, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %50, metadata !1188, metadata !DIExpression()), !dbg !1206
  %51 = load ptr, ptr @stdin, align 8, !dbg !1212, !tbaa !905
  tail call void @fadvise(ptr noundef %51, i32 noundef 2) #40, !dbg !1213
  %52 = add i32 %46, 1, !dbg !1214
  %53 = sext i32 %52 to i64, !dbg !1215
  %54 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 4) #45, !dbg !1216
  call void @llvm.dbg.value(metadata ptr %54, metadata !1175, metadata !DIExpression()), !dbg !1206
  br i1 %44, label %55, label %59, !dbg !1217

55:                                               ; preds = %43
  %56 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 1) #45, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %56, metadata !1176, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %48, metadata !1172, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1206
  %57 = tail call i1 @iopoll_output_ok(i32 noundef 1) #40, !dbg !1220
  %58 = zext i1 %57 to i8, !dbg !1222
  store i8 %58, ptr %56, align 1, !dbg !1222, !tbaa !1223
  br label %59, !dbg !1225

59:                                               ; preds = %55, %43
  %60 = phi ptr [ %56, %55 ], [ undef, %43 ]
  store i32 1, ptr %54, align 4, !dbg !1226
  %61 = getelementptr inbounds ptr, ptr %48, i64 -1, !dbg !1227
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #40, !dbg !1228
  store ptr %62, ptr %61, align 8, !dbg !1229, !tbaa !905
  call void @llvm.dbg.value(metadata i64 1, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 1, metadata !1189, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  %63 = icmp slt i32 %46, 1, !dbg !1231
  %64 = zext i32 %52 to i64
  br i1 %63, label %67, label %71, !dbg !1232

65:                                               ; preds = %100
  call void @llvm.dbg.value(metadata i64 %102, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1206
  %66 = icmp eq i64 %102, 0, !dbg !1233
  br i1 %66, label %230, label %67, !dbg !1233

67:                                               ; preds = %59, %65
  %68 = phi i64 [ %102, %65 ], [ 1, %59 ]
  %69 = phi i1 [ %101, %65 ], [ true, %59 ]
  %70 = icmp slt i32 %46, 0
  br label %105, !dbg !1233

71:                                               ; preds = %59, %100
  %72 = phi i64 [ %103, %100 ], [ 1, %59 ]
  %73 = phi i64 [ %102, %100 ], [ 1, %59 ]
  %74 = phi i1 [ %101, %100 ], [ true, %59 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %72, metadata !1189, metadata !DIExpression()), !dbg !1230
  %75 = getelementptr inbounds ptr, ptr %61, i64 %72, !dbg !1234
  %76 = load ptr, ptr %75, align 8, !dbg !1234, !tbaa !905
  %77 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %76, i32 noundef %50, i32 noundef 438) #40, !dbg !1235
  %78 = getelementptr inbounds i32, ptr %54, i64 %72, !dbg !1236
  store i32 %77, ptr %78, align 4, !dbg !1237, !tbaa !970
  %79 = icmp slt i32 %77, 0, !dbg !1238
  br i1 %79, label %80, label %93, !dbg !1239

80:                                               ; preds = %71
  br i1 %44, label %81, label %83, !dbg !1240

81:                                               ; preds = %80
  %82 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1241
  store i8 0, ptr %82, align 1, !dbg !1243, !tbaa !1223
  br label %83, !dbg !1241

83:                                               ; preds = %81, %80
  %84 = load i32, ptr @output_error, align 4, !dbg !1244, !tbaa !979
  %85 = add i32 %84, -3, !dbg !1244
  %86 = icmp ult i32 %85, 2, !dbg !1244
  %87 = zext i1 %86 to i32, !dbg !1244
  %88 = tail call ptr @__errno_location() #43, !dbg !1244
  %89 = load i32, ptr %88, align 4, !dbg !1244, !tbaa !970
  %90 = load ptr, ptr %75, align 8, !dbg !1244, !tbaa !905
  %91 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %90) #40, !dbg !1244
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %87, i32 noundef %89, ptr noundef nonnull @.str.20, ptr noundef %91) #40, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %87, metadata !1191, metadata !DIExpression()), !dbg !1245
  %92 = xor i1 %86, true, !dbg !1246
  tail call void @llvm.assume(i1 %92), !dbg !1246
  br label %100, !dbg !1244

93:                                               ; preds = %71
  br i1 %44, label %94, label %98, !dbg !1247

94:                                               ; preds = %93
  %95 = tail call i1 @iopoll_output_ok(i32 noundef %77) #40, !dbg !1249
  %96 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1251
  %97 = zext i1 %95 to i8, !dbg !1252
  store i8 %97, ptr %96, align 1, !dbg !1252, !tbaa !1223
  br label %98, !dbg !1251

98:                                               ; preds = %94, %93
  %99 = add i64 %73, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %99, metadata !1174, metadata !DIExpression()), !dbg !1206
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i1 [ %74, %98 ], [ false, %83 ]
  %102 = phi i64 [ %99, %98 ], [ %73, %83 ], !dbg !1206
  call void @llvm.dbg.value(metadata i64 %102, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  %103 = add nuw nsw i64 %72, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %103, metadata !1189, metadata !DIExpression()), !dbg !1230
  %104 = icmp eq i64 %103, %64, !dbg !1231
  br i1 %104, label %65, label %71, !dbg !1232, !llvm.loop !1255

105:                                              ; preds = %159, %67
  %106 = phi i64 [ %68, %67 ], [ %163, %159 ]
  %107 = phi i1 [ %69, %67 ], [ %162, %159 ]
  %108 = phi i32 [ 0, %67 ], [ %161, %159 ]
  %109 = phi i64 [ 0, %67 ], [ %160, %159 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %108, metadata !1186, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %109, metadata !1182, metadata !DIExpression()), !dbg !1206
  br i1 %44, label %110, label %151, !dbg !1257

110:                                              ; preds = %105
  %111 = sext i32 %108 to i64, !dbg !1258
  %112 = getelementptr inbounds i8, ptr %60, i64 %111, !dbg !1258
  %113 = load i8, ptr %112, align 1, !dbg !1258, !tbaa !1223, !range !1259, !noundef !955
  %114 = icmp eq i8 %113, 0, !dbg !1258
  br i1 %114, label %151, label %115, !dbg !1260

115:                                              ; preds = %110
  %116 = getelementptr inbounds i32, ptr %54, i64 %111, !dbg !1261
  %117 = load i32, ptr %116, align 4, !dbg !1261, !tbaa !970
  %118 = call i32 @iopoll(i32 noundef 0, i32 noundef %117, i1 noundef true) #40, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %118, metadata !1198, metadata !DIExpression()), !dbg !1263
  switch i32 %118, label %151 [
    i32 -2, label %119
    i32 -3, label %147
  ], !dbg !1264

119:                                              ; preds = %115
  %120 = tail call ptr @__errno_location() #43, !dbg !1265
  store i32 32, ptr %120, align 4, !dbg !1268, !tbaa !970
  call void @llvm.dbg.value(metadata ptr %54, metadata !1269, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata ptr %48, metadata !1274, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1282
  call void @llvm.dbg.value(metadata i32 %108, metadata !1275, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 32, metadata !1276, metadata !DIExpression()), !dbg !1282
  %121 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  switch i32 %121, label %130 [
    i32 3, label %122
    i32 1, label %122
  ], !dbg !1285

122:                                              ; preds = %119, %119
  %123 = add nsw i32 %121, -3, !dbg !1286
  %124 = icmp ult i32 %123, 2, !dbg !1286
  %125 = zext i1 %124 to i32, !dbg !1286
  %126 = getelementptr inbounds ptr, ptr %61, i64 %111, !dbg !1286
  %127 = load ptr, ptr %126, align 8, !dbg !1286, !tbaa !905
  %128 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %127) #40, !dbg !1286
  call void (i32, i32, ptr, ...) @error(i32 noundef %125, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %128) #40, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %125, metadata !1278, metadata !DIExpression()), !dbg !1287
  %129 = xor i1 %124, true, !dbg !1288
  call void @llvm.assume(i1 %129), !dbg !1286
  br label %130, !dbg !1289

130:                                              ; preds = %122, %119
  %131 = and i32 %121, -3, !dbg !1289
  %132 = icmp ne i32 %131, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i1 %132, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  store i32 -1, ptr %116, align 4, !dbg !1290, !tbaa !970
  %133 = select i1 %132, i1 %107, i1 false, !dbg !1291
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  %134 = add i64 %106, -1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %134, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %54, metadata !1293, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i32 %46, metadata !1298, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i32 %108, metadata !1299, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1300
  %135 = call i32 @llvm.smax.i32(i32 %108, i32 %46), !dbg !1302
  %136 = sext i32 %135 to i64, !dbg !1304
  br label %137, !dbg !1302

137:                                              ; preds = %140, %130
  %138 = phi i64 [ %141, %140 ], [ %111, %130 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !1299, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1300
  %139 = icmp eq i64 %138, %136, !dbg !1304
  br i1 %139, label %159, label %140, !dbg !1306, !llvm.loop !1307

140:                                              ; preds = %137
  %141 = add nsw i64 %138, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %141, metadata !1299, metadata !DIExpression()), !dbg !1300
  %142 = getelementptr inbounds i32, ptr %54, i64 %141, !dbg !1310
  %143 = load i32, ptr %142, align 4, !dbg !1310, !tbaa !970
  %144 = icmp sgt i32 %143, -1, !dbg !1312
  br i1 %144, label %145, label %137, !dbg !1313, !llvm.loop !1314

145:                                              ; preds = %140
  %146 = trunc i64 %141 to i32, !dbg !1313
  br label %159, !dbg !1316, !llvm.loop !1317

147:                                              ; preds = %115
  %148 = tail call ptr @__errno_location() #43, !dbg !1318
  %149 = load i32, ptr %148, align 4, !dbg !1318, !tbaa !970
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #40, !dbg !1318
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %149, ptr noundef %150) #40, !dbg !1318
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1206
  br label %151, !dbg !1321

151:                                              ; preds = %147, %115, %110, %105
  %152 = phi i1 [ %107, %110 ], [ %107, %105 ], [ %107, %115 ], [ false, %147 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %108, metadata !1186, metadata !DIExpression()), !dbg !1206
  %153 = call i64 @read(i32 noundef 0, ptr noundef nonnull %3, i64 noundef 8192) #40, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %153, metadata !1182, metadata !DIExpression()), !dbg !1206
  %154 = icmp slt i64 %153, 0, !dbg !1323
  br i1 %154, label %155, label %165, !dbg !1325

155:                                              ; preds = %151
  %156 = tail call ptr @__errno_location() #43, !dbg !1326
  %157 = load i32, ptr %156, align 4, !dbg !1326, !tbaa !970
  %158 = icmp eq i32 %157, 4, !dbg !1327
  br i1 %158, label %159, label %222, !dbg !1328

159:                                              ; preds = %137, %216, %167, %155, %145
  %160 = phi i64 [ %153, %155 ], [ %153, %167 ], [ %109, %145 ], [ %153, %216 ], [ %109, %137 ]
  %161 = phi i32 [ %108, %155 ], [ %108, %167 ], [ %146, %145 ], [ %217, %216 ], [ -1, %137 ]
  %162 = phi i1 [ %152, %155 ], [ %152, %167 ], [ %133, %145 ], [ %218, %216 ], [ %133, %137 ]
  %163 = phi i64 [ %106, %155 ], [ %106, %167 ], [ %134, %145 ], [ %219, %216 ], [ %134, %137 ]
  call void @llvm.dbg.value(metadata i64 %163, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %161, metadata !1186, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %160, metadata !1182, metadata !DIExpression()), !dbg !1206
  %164 = icmp eq i64 %163, 0, !dbg !1233
  br i1 %164, label %222, label %105, !dbg !1233, !llvm.loop !1329

165:                                              ; preds = %151
  %166 = icmp eq i64 %153, 0, !dbg !1330
  br i1 %166, label %230, label %167, !dbg !1332

167:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !1202, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %106, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %108, metadata !1186, metadata !DIExpression()), !dbg !1206
  br i1 %70, label %159, label %168, !dbg !1334, !llvm.loop !1335

168:                                              ; preds = %167, %216
  %169 = phi i64 [ %220, %216 ], [ 0, %167 ]
  %170 = phi i64 [ %219, %216 ], [ %106, %167 ]
  %171 = phi i1 [ %218, %216 ], [ %152, %167 ]
  %172 = phi i32 [ %217, %216 ], [ %108, %167 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1202, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %170, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %172, metadata !1186, metadata !DIExpression()), !dbg !1206
  %173 = getelementptr inbounds i32, ptr %54, i64 %169, !dbg !1336
  %174 = load i32, ptr %173, align 4, !dbg !1336, !tbaa !970
  %175 = icmp sgt i32 %174, -1, !dbg !1339
  br i1 %175, label %176, label %216, !dbg !1340

176:                                              ; preds = %168
  %177 = call i1 @write_wait(i32 noundef %174, ptr noundef nonnull %3, i64 noundef %153) #40, !dbg !1341
  br i1 %177, label %216, label %178, !dbg !1342

178:                                              ; preds = %176
  call void @llvm.dbg.value(metadata ptr %54, metadata !1269, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %48, metadata !1274, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %169, metadata !1275, metadata !DIExpression()), !dbg !1343
  %179 = tail call ptr @__errno_location() #43, !dbg !1347
  %180 = load i32, ptr %179, align 4, !dbg !1347, !tbaa !970
  %181 = freeze i32 %180, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %180, metadata !1276, metadata !DIExpression()), !dbg !1343
  %182 = icmp eq i32 %181, 32, !dbg !1348
  %183 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  br i1 %182, label %184, label %185, !dbg !1349

184:                                              ; preds = %178
  switch i32 %183, label %193 [
    i32 3, label %185
    i32 1, label %185
  ], !dbg !1349

185:                                              ; preds = %184, %184, %178
  %186 = add i32 %183, -3, !dbg !1350
  %187 = icmp ult i32 %186, 2, !dbg !1350
  %188 = zext i1 %187 to i32, !dbg !1350
  %189 = getelementptr inbounds ptr, ptr %61, i64 %169, !dbg !1350
  %190 = load ptr, ptr %189, align 8, !dbg !1350, !tbaa !905
  %191 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %190) #40, !dbg !1350
  call void (i32, i32, ptr, ...) @error(i32 noundef %188, i32 noundef %181, ptr noundef nonnull @.str.20, ptr noundef %191) #40, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %188, metadata !1278, metadata !DIExpression()), !dbg !1351
  %192 = xor i1 %187, true, !dbg !1352
  call void @llvm.assume(i1 %192), !dbg !1350
  br label %193

193:                                              ; preds = %185, %184
  %194 = icmp ne i32 %183, 3
  %195 = select i1 %182, i1 %194, i1 false
  %196 = icmp ne i32 %183, 1
  %197 = select i1 %195, i1 %196, i1 false, !dbg !1353
  call void @llvm.dbg.value(metadata i1 %197, metadata !1277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1343
  store i32 -1, ptr %173, align 4, !dbg !1354, !tbaa !970
  %198 = select i1 %197, i1 %171, i1 false, !dbg !1355
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  %199 = add i64 %170, -1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %199, metadata !1174, metadata !DIExpression()), !dbg !1206
  %200 = zext i32 %172 to i64, !dbg !1357
  %201 = icmp eq i64 %169, %200, !dbg !1357
  br i1 %201, label %202, label %216, !dbg !1359

202:                                              ; preds = %193
  call void @llvm.dbg.value(metadata ptr %54, metadata !1293, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %46, metadata !1298, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %172, metadata !1299, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1360
  %203 = sext i32 %172 to i64, !dbg !1362
  %204 = call i32 @llvm.smax.i32(i32 %172, i32 %46), !dbg !1362
  %205 = sext i32 %204 to i64, !dbg !1363
  br label %206, !dbg !1362

206:                                              ; preds = %209, %202
  %207 = phi i64 [ %210, %209 ], [ %203, %202 ]
  call void @llvm.dbg.value(metadata i64 %207, metadata !1299, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1360
  %208 = icmp eq i64 %207, %205, !dbg !1363
  br i1 %208, label %216, label %209, !dbg !1364

209:                                              ; preds = %206
  %210 = add nsw i64 %207, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %210, metadata !1299, metadata !DIExpression()), !dbg !1360
  %211 = getelementptr inbounds i32, ptr %54, i64 %210, !dbg !1366
  %212 = load i32, ptr %211, align 4, !dbg !1366, !tbaa !970
  %213 = icmp sgt i32 %212, -1, !dbg !1367
  br i1 %213, label %214, label %206, !dbg !1368, !llvm.loop !1369

214:                                              ; preds = %209
  %215 = trunc i64 %210 to i32, !dbg !1368
  br label %216, !dbg !1371

216:                                              ; preds = %206, %214, %193, %176, %168
  %217 = phi i32 [ %172, %176 ], [ %172, %193 ], [ %172, %168 ], [ %215, %214 ], [ -1, %206 ], !dbg !1372
  %218 = phi i1 [ %171, %176 ], [ %198, %193 ], [ %171, %168 ], [ %198, %214 ], [ %198, %206 ]
  %219 = phi i64 [ %170, %176 ], [ %199, %193 ], [ %170, %168 ], [ %199, %214 ], [ %199, %206 ], !dbg !1372
  call void @llvm.dbg.value(metadata i64 %219, metadata !1174, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %217, metadata !1186, metadata !DIExpression()), !dbg !1206
  %220 = add nuw nsw i64 %169, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %220, metadata !1202, metadata !DIExpression()), !dbg !1333
  %221 = icmp eq i64 %220, %64, !dbg !1374
  br i1 %221, label %159, label %168, !dbg !1334, !llvm.loop !1375

222:                                              ; preds = %159, %155
  %223 = phi i64 [ %160, %159 ], [ %153, %155 ], !dbg !1206
  %224 = phi i1 [ %162, %159 ], [ %152, %155 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %223, metadata !1182, metadata !DIExpression()), !dbg !1206
  %225 = icmp eq i64 %223, -1, !dbg !1377
  br i1 %225, label %226, label %230, !dbg !1379

226:                                              ; preds = %222
  %227 = tail call ptr @__errno_location() #43, !dbg !1380
  %228 = load i32, ptr %227, align 4, !dbg !1380, !tbaa !970
  %229 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #40, !dbg !1380
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %228, ptr noundef %229) #40, !dbg !1380
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1206
  br label %230, !dbg !1382

230:                                              ; preds = %165, %226, %222, %65
  %231 = phi i1 [ false, %226 ], [ %224, %222 ], [ %101, %65 ], [ %152, %165 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()), !dbg !1383
  br i1 %63, label %234, label %232, !dbg !1384

232:                                              ; preds = %230
  %233 = zext i32 %52 to i64, !dbg !1385
  br label %236, !dbg !1384

234:                                              ; preds = %250, %230
  %235 = phi i1 [ %231, %230 ], [ %251, %250 ]
  call void @free(ptr noundef nonnull %54) #40, !dbg !1387
  br i1 %44, label %254, label %255, !dbg !1388

236:                                              ; preds = %250, %232
  %237 = phi i64 [ 1, %232 ], [ %252, %250 ]
  %238 = phi i1 [ %231, %232 ], [ %251, %250 ]
  call void @llvm.dbg.value(metadata i64 %237, metadata !1204, metadata !DIExpression()), !dbg !1383
  %239 = getelementptr inbounds i32, ptr %54, i64 %237, !dbg !1389
  %240 = load i32, ptr %239, align 4, !dbg !1389, !tbaa !970
  %241 = icmp sgt i32 %240, -1, !dbg !1391
  br i1 %241, label %242, label %250, !dbg !1392

242:                                              ; preds = %236
  %243 = call i1 @close_wait(i32 noundef %240) #40, !dbg !1393
  br i1 %243, label %250, label %244, !dbg !1394

244:                                              ; preds = %242
  %245 = tail call ptr @__errno_location() #43, !dbg !1395
  %246 = load i32, ptr %245, align 4, !dbg !1395, !tbaa !970
  %247 = getelementptr inbounds ptr, ptr %61, i64 %237, !dbg !1395
  %248 = load ptr, ptr %247, align 8, !dbg !1395, !tbaa !905
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %248) #40, !dbg !1395
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %246, ptr noundef nonnull @.str.20, ptr noundef %249) #40, !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1206
  br label %250, !dbg !1397

250:                                              ; preds = %244, %242, %236
  %251 = phi i1 [ %238, %242 ], [ false, %244 ], [ %238, %236 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1206
  %252 = add nuw nsw i64 %237, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %252, metadata !1204, metadata !DIExpression()), !dbg !1383
  %253 = icmp eq i64 %252, %233, !dbg !1385
  br i1 %253, label %234, label %236, !dbg !1384, !llvm.loop !1399

254:                                              ; preds = %234
  call void @free(ptr noundef %60) #40, !dbg !1401
  br label %255, !dbg !1401

255:                                              ; preds = %234, %254
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #40, !dbg !1403
  call void @llvm.dbg.value(metadata i1 %235, metadata !1124, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1125
  %256 = call i32 @close(i32 noundef 0) #40, !dbg !1404
  %257 = icmp eq i32 %256, 0, !dbg !1406
  br i1 %257, label %262, label %258, !dbg !1407

258:                                              ; preds = %255
  %259 = tail call ptr @__errno_location() #43, !dbg !1408
  %260 = load i32, ptr %259, align 4, !dbg !1408, !tbaa !970
  %261 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1408
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %260, ptr noundef nonnull @.str.20, ptr noundef %261) #40, !dbg !1408
  unreachable, !dbg !1408

262:                                              ; preds = %255
  %263 = xor i1 %235, true, !dbg !1409
  %264 = zext i1 %263 to i32, !dbg !1409
  ret i32 %264, !dbg !1410
}

; Function Attrs: nounwind
declare !dbg !1411 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1414 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1415 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1418 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1424 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1427 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1431 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

declare !dbg !1434 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef %2) local_unnamed_addr #10 !dbg !1438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1442, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i32 %1, metadata !1443, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i1 %2, metadata !1444, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1445
  %4 = tail call fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef true), !dbg !1446
  ret i32 %4, !dbg !1447
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef %3) unnamed_addr #10 !dbg !1448 {
  %5 = alloca [2 x %struct.pollfd], align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %1, metadata !1453, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i1 %2, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1467
  call void @llvm.dbg.value(metadata i1 %3, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1467
  %6 = and i32 %1, %0, !dbg !1468
  %7 = icmp eq i32 %6, -1, !dbg !1468
  br i1 %7, label %8, label %9, !dbg !1468

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #42, !dbg !1468
  unreachable, !dbg !1468

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #40, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1456, metadata !DIExpression()), !dbg !1472
  store i32 %0, ptr %5, align 4, !dbg !1473, !tbaa !1474
  %10 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 1, !dbg !1473
  store i16 129, ptr %10, align 4, !dbg !1473, !tbaa !1476
  %11 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 2, !dbg !1473
  store i16 0, ptr %11, align 2, !dbg !1473, !tbaa !1477
  %12 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, !dbg !1478
  store i32 %1, ptr %12, align 4, !dbg !1479, !tbaa !1474
  %13 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, i32 1, !dbg !1479
  store i16 128, ptr %13, align 4, !dbg !1479, !tbaa !1476
  %14 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, i32 2, !dbg !1479
  store i16 0, ptr %14, align 2, !dbg !1479, !tbaa !1477
  call void @llvm.dbg.value(metadata i32 56, metadata !1465, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 0, metadata !1466, metadata !DIExpression()), !dbg !1467
  br i1 %3, label %16, label %15, !dbg !1480

15:                                               ; preds = %9
  store i16 4, ptr %13, align 4, !dbg !1481, !tbaa !1476
  store i16 4, ptr %10, align 4, !dbg !1484, !tbaa !1476
  call void @llvm.dbg.value(metadata i32 4, metadata !1465, metadata !DIExpression()), !dbg !1467
  br label %16, !dbg !1485

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 56, %9 ], [ 4, %15 ], !dbg !1467
  call void @llvm.dbg.value(metadata i32 %17, metadata !1465, metadata !DIExpression()), !dbg !1467
  %18 = sext i1 %2 to i32
  br label %19, !dbg !1486

19:                                               ; preds = %29, %16
  %20 = phi i32 [ 0, %16 ], [ %27, %29 ], !dbg !1467
  call void @llvm.dbg.value(metadata i32 %20, metadata !1466, metadata !DIExpression()), !dbg !1467
  %21 = icmp sgt i32 %20, -1, !dbg !1487
  br i1 %21, label %26, label %22, !dbg !1488

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #43, !dbg !1489
  %24 = load i32, ptr %23, align 4, !dbg !1489, !tbaa !970
  %25 = icmp eq i32 %24, 4, !dbg !1490
  br i1 %25, label %26, label %46, !dbg !1486

26:                                               ; preds = %19, %22
  %27 = call i32 @poll(ptr noundef nonnull %5, i64 noundef 2, i32 noundef %18) #40, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %27, metadata !1466, metadata !DIExpression()), !dbg !1467
  %28 = icmp slt i32 %27, 0, !dbg !1493
  br i1 %28, label %29, label %30, !dbg !1495

29:                                               ; preds = %26, %39
  br label %19, !dbg !1467, !llvm.loop !1496

30:                                               ; preds = %26
  %31 = icmp ne i32 %27, 0, !dbg !1498
  %32 = or i1 %31, %2, !dbg !1500
  br i1 %32, label %33, label %46, !dbg !1500

33:                                               ; preds = %30
  %34 = icmp eq i32 %27, 0, !dbg !1501
  br i1 %34, label %35, label %36, !dbg !1504

35:                                               ; preds = %33
  call void @__assert_fail(ptr noundef nonnull @.str.2.28, ptr noundef nonnull @.str.1.27, i32 noundef 88, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #42, !dbg !1501
  unreachable, !dbg !1501

36:                                               ; preds = %33
  %37 = load i16, ptr %11, align 2, !dbg !1505, !tbaa !1477
  %38 = icmp eq i16 %37, 0, !dbg !1507
  br i1 %38, label %39, label %46, !dbg !1508

39:                                               ; preds = %36
  %40 = load i16, ptr %14, align 2, !dbg !1509, !tbaa !1477
  %41 = zext i16 %40 to i32, !dbg !1511
  %42 = and i32 %17, %41, !dbg !1512
  %43 = icmp eq i32 %42, 0, !dbg !1512
  br i1 %43, label %29, label %44, !dbg !1513

44:                                               ; preds = %39
  %45 = select i1 %3, i32 -2, i32 0, !dbg !1514
  br label %46, !dbg !1515

46:                                               ; preds = %22, %36, %30, %44
  %47 = phi i32 [ %45, %44 ], [ -3, %22 ], [ 0, %36 ], [ 0, %30 ], !dbg !1467
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #40, !dbg !1516
  ret i32 %47, !dbg !1516
}

; Function Attrs: noreturn nounwind
declare !dbg !1517 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @iopoll_input_ok(i32 noundef %0) local_unnamed_addr #15 !dbg !1521 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1525, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !1565
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #40, !dbg !1566
  %4 = icmp eq i32 %3, 0, !dbg !1567
  br i1 %4, label %5, label %12, !dbg !1568

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1569
  %7 = load i32, ptr %6, align 8, !dbg !1569, !tbaa !1570
  %8 = and i32 %7, 61440, !dbg !1569
  %9 = icmp ne i32 %8, 32768, !dbg !1569
  %10 = icmp ne i32 %8, 24576, !dbg !1574
  %11 = and i1 %9, %10, !dbg !1575
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ]
  call void @llvm.dbg.value(metadata i1 poison, metadata !1562, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1563
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !1576
  ret i1 %13, !dbg !1577
}

; Function Attrs: nofree nounwind
declare !dbg !1578 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @iopoll_output_ok(i32 noundef %0) local_unnamed_addr #10 !dbg !1583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1585, metadata !DIExpression()), !dbg !1586
  %2 = tail call i32 @isapipe(i32 noundef %0) #40, !dbg !1587
  %3 = icmp sgt i32 %2, 0, !dbg !1588
  ret i1 %3, !dbg !1589
}

; Function Attrs: nounwind uwtable
define dso_local i1 @close_wait(i32 noundef %0) local_unnamed_addr #10 !dbg !1590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1592, metadata !DIExpression()), !dbg !1593
  %2 = tail call ptr @__errno_location() #43, !dbg !1593
  br label %3, !dbg !1594

3:                                                ; preds = %6, %1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1595, metadata !DIExpression()), !dbg !1598
  %4 = load i32, ptr %2, align 4, !dbg !1600, !tbaa !970
  %5 = icmp eq i32 %4, 11, !dbg !1600
  br i1 %5, label %6, label %10, !dbg !1600

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false), !dbg !1602
  %8 = icmp eq i32 %7, 0, !dbg !1604
  br i1 %8, label %3, label %9, !dbg !1605, !llvm.loop !1606

9:                                                ; preds = %6
  store i32 11, ptr %2, align 4, !dbg !1608, !tbaa !970
  br label %10, !dbg !1610

10:                                               ; preds = %3, %9
  %11 = tail call i32 @close(i32 noundef %0) #40, !dbg !1611
  %12 = icmp eq i32 %11, 0, !dbg !1612
  ret i1 %12, !dbg !1613
}

; Function Attrs: nounwind uwtable
define dso_local i1 @write_wait(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1618, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata ptr %1, metadata !1619, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %2, metadata !1620, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata ptr %1, metadata !1621, metadata !DIExpression()), !dbg !1626
  %4 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %2) #40, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %4, metadata !1624, metadata !DIExpression()), !dbg !1628
  %5 = tail call i64 @llvm.smax.i64(i64 %4, i64 0), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %5, metadata !1624, metadata !DIExpression()), !dbg !1628
  %6 = sub i64 %2, %5, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %6, metadata !1620, metadata !DIExpression()), !dbg !1626
  %7 = icmp eq i64 %6, 0, !dbg !1631
  br i1 %7, label %26, label %8, !dbg !1633

8:                                                ; preds = %3
  %9 = tail call ptr @__errno_location() #43, !dbg !1626
  br label %10, !dbg !1633

10:                                               ; preds = %8, %20
  %11 = phi i64 [ %6, %8 ], [ %24, %20 ]
  %12 = phi i64 [ %5, %8 ], [ %23, %20 ]
  %13 = phi ptr [ %1, %8 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata ptr %13, metadata !1621, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 %0, metadata !1595, metadata !DIExpression()), !dbg !1634
  %14 = load i32, ptr %9, align 4, !dbg !1637, !tbaa !970
  %15 = icmp eq i32 %14, 11, !dbg !1637
  br i1 %15, label %16, label %26, !dbg !1637

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false), !dbg !1638
  %18 = icmp eq i32 %17, 0, !dbg !1639
  br i1 %18, label %20, label %19, !dbg !1640

19:                                               ; preds = %16
  store i32 11, ptr %9, align 4, !dbg !1641, !tbaa !970
  br label %26, !dbg !1642

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %13, i64 %12, !dbg !1643
  call void @llvm.dbg.value(metadata ptr %21, metadata !1621, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i64 %11, metadata !1620, metadata !DIExpression()), !dbg !1626
  %22 = tail call i64 @write(i32 noundef %0, ptr noundef %21, i64 noundef %11) #40, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %22, metadata !1624, metadata !DIExpression()), !dbg !1628
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 0), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %23, metadata !1624, metadata !DIExpression()), !dbg !1628
  %24 = sub i64 %11, %23, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %24, metadata !1620, metadata !DIExpression()), !dbg !1626
  %25 = icmp eq i64 %24, 0, !dbg !1631
  br i1 %25, label %26, label %10, !dbg !1633, !llvm.loop !1644

26:                                               ; preds = %20, %10, %3, %19
  %27 = phi i1 [ false, %19 ], [ true, %3 ], [ %15, %10 ], [ %15, %20 ]
  call void @llvm.dbg.value(metadata ptr poison, metadata !1621, metadata !DIExpression()), !dbg !1626
  ret i1 %27, !dbg !1647
}

; Function Attrs: nofree
declare !dbg !1648 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #10 !dbg !1651 {
  tail call void @usage(i32 noundef 1) #40, !dbg !1652
  ret void, !dbg !1653
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @argmatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #16 !dbg !1654 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1659, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %1, metadata !1660, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %2, metadata !1661, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %3, metadata !1662, metadata !DIExpression()), !dbg !1668
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %5, metadata !1663, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 -1, metadata !1664, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 0, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1668
  %6 = load ptr, ptr %1, align 8, !dbg !1671, !tbaa !905
  %7 = icmp eq ptr %6, null, !dbg !1673
  br i1 %7, label %40, label %8, !dbg !1673

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br label %10, !dbg !1673

10:                                               ; preds = %8, %31
  %11 = phi ptr [ %6, %8 ], [ %36, %31 ]
  %12 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %13 = phi i1 [ false, %8 ], [ %33, %31 ]
  %14 = phi i64 [ -1, %8 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 %14, metadata !1664, metadata !DIExpression()), !dbg !1668
  %15 = tail call i32 @strncmp(ptr noundef nonnull %11, ptr noundef %0, i64 noundef %5) #41, !dbg !1674
  %16 = icmp eq i32 %15, 0, !dbg !1674
  br i1 %16, label %17, label %31, !dbg !1677

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #41, !dbg !1678
  %19 = icmp eq i64 %18, %5, !dbg !1681
  br i1 %19, label %40, label %20, !dbg !1682

20:                                               ; preds = %17
  %21 = icmp eq i64 %14, -1, !dbg !1683
  br i1 %21, label %31, label %22, !dbg !1685

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1686

23:                                               ; preds = %22
  %24 = mul i64 %14, %3, !dbg !1689
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !1690
  %26 = mul i64 %12, %3, !dbg !1691
  %27 = getelementptr inbounds i8, ptr %2, i64 %26, !dbg !1692
  call void @llvm.dbg.value(metadata ptr %25, metadata !1693, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %27, metadata !1698, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1700
  %28 = tail call i32 @bcmp(ptr nonnull %25, ptr nonnull %27, i64 %3), !dbg !1702
  %29 = icmp eq i32 %28, 0, !dbg !1703
  br i1 %29, label %31, label %30, !dbg !1704

30:                                               ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1665, metadata !DIExpression()), !dbg !1668
  br label %31, !dbg !1705

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %14, %10 ], [ %14, %30 ], [ %14, %23 ], [ %12, %20 ], !dbg !1668
  %33 = phi i1 [ %13, %10 ], [ true, %30 ], [ %13, %23 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %32, metadata !1664, metadata !DIExpression()), !dbg !1668
  %34 = add i64 %12, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %34, metadata !1666, metadata !DIExpression()), !dbg !1670
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1671
  %36 = load ptr, ptr %35, align 8, !dbg !1671, !tbaa !905
  %37 = icmp eq ptr %36, null, !dbg !1673
  br i1 %37, label %38, label %10, !dbg !1673, !llvm.loop !1708

38:                                               ; preds = %31
  %39 = select i1 %33, i64 -2, i64 %32, !dbg !1710
  br label %40, !dbg !1710

40:                                               ; preds = %17, %38, %4
  %41 = phi i64 [ -1, %4 ], [ %39, %38 ], [ %12, %17 ], !dbg !1668
  ret i64 %41, !dbg !1712
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1713 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @argmatch_exact(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 !dbg !1716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1720, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %1, metadata !1721, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 0, metadata !1722, metadata !DIExpression()), !dbg !1725
  %3 = load ptr, ptr %1, align 8, !dbg !1726, !tbaa !905
  %4 = icmp eq ptr %3, null, !dbg !1728
  br i1 %4, label %15, label %5, !dbg !1728

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1722, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata ptr %6, metadata !1729, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata ptr %0, metadata !1732, metadata !DIExpression()), !dbg !1733
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !1737
  %9 = icmp eq i32 %8, 0, !dbg !1738
  br i1 %9, label %15, label %10, !dbg !1739

10:                                               ; preds = %5
  %11 = add i64 %7, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %11, metadata !1722, metadata !DIExpression()), !dbg !1725
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11, !dbg !1726
  %13 = load ptr, ptr %12, align 8, !dbg !1726, !tbaa !905
  %14 = icmp eq ptr %13, null, !dbg !1728
  br i1 %14, label %15, label %5, !dbg !1728, !llvm.loop !1741

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
  ret i64 %16, !dbg !1743
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1748, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata ptr %1, metadata !1749, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %2, metadata !1750, metadata !DIExpression()), !dbg !1752
  %4 = icmp eq i64 %2, -1, !dbg !1753
  %5 = select i1 %4, ptr @.str.1.52, ptr @.str.2.53, !dbg !1754
  %6 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %5, i32 noundef 5) #40, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %6, metadata !1751, metadata !DIExpression()), !dbg !1752
  %7 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #40, !dbg !1755
  %8 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #40, !dbg !1755
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #40, !dbg !1755
  ret void, !dbg !1756
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1757 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1761, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata ptr %1, metadata !1762, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %2, metadata !1763, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1767
  %4 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #40, !dbg !1768
  %5 = load ptr, ptr @stderr, align 8, !dbg !1768, !tbaa !905
  %6 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef %5), !dbg !1768
  call void @llvm.dbg.value(metadata i64 0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1767
  %7 = load ptr, ptr %0, align 8, !dbg !1770, !tbaa !905
  %8 = icmp eq ptr %7, null, !dbg !1772
  br i1 %8, label %9, label %21, !dbg !1772

9:                                                ; preds = %41, %3
  %10 = load ptr, ptr @stderr, align 8, !dbg !1773, !tbaa !905
  call void @llvm.dbg.value(metadata i32 10, metadata !1774, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata ptr %10, metadata !1814, metadata !DIExpression()), !dbg !1815
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 5, !dbg !1817
  %12 = load ptr, ptr %11, align 8, !dbg !1817, !tbaa !1818
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 6, !dbg !1817
  %14 = load ptr, ptr %13, align 8, !dbg !1817, !tbaa !1820
  %15 = icmp ult ptr %12, %14, !dbg !1817
  br i1 %15, label %18, label %16, !dbg !1817, !prof !1821

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(ptr noundef nonnull %10, i32 noundef 10) #40, !dbg !1817
  br label %20, !dbg !1817

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1817
  store ptr %19, ptr %11, align 8, !dbg !1817, !tbaa !1818
  store i8 10, ptr %12, align 1, !dbg !1817, !tbaa !979
  br label %20, !dbg !1817

20:                                               ; preds = %16, %18
  ret void, !dbg !1822

21:                                               ; preds = %3, %41
  %22 = phi ptr [ %45, %41 ], [ %7, %3 ]
  %23 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %24 = phi ptr [ %42, %41 ], [ null, %3 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %24, metadata !1764, metadata !DIExpression()), !dbg !1767
  %25 = icmp eq i64 %23, 0, !dbg !1823
  br i1 %25, label %31, label %26, !dbg !1825

26:                                               ; preds = %21
  %27 = mul i64 %23, %2, !dbg !1826
  %28 = getelementptr inbounds i8, ptr %1, i64 %27, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %24, metadata !1693, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata ptr %28, metadata !1698, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i64 %2, metadata !1699, metadata !DIExpression()), !dbg !1828
  %29 = tail call i32 @bcmp(ptr %24, ptr %28, i64 %2), !dbg !1830
  %30 = icmp eq i32 %29, 0, !dbg !1831
  br i1 %30, label %37, label %31, !dbg !1832

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ], !dbg !1833
  %33 = load ptr, ptr @stderr, align 8, !dbg !1835, !tbaa !905
  %34 = tail call ptr @quote(ptr noundef nonnull %22) #40, !dbg !1835
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.4.71, ptr noundef %34) #40, !dbg !1835
  %36 = getelementptr inbounds i8, ptr %1, i64 %32, !dbg !1836
  call void @llvm.dbg.value(metadata ptr %36, metadata !1764, metadata !DIExpression()), !dbg !1767
  br label %41, !dbg !1837

37:                                               ; preds = %26
  %38 = load ptr, ptr @stderr, align 8, !dbg !1838, !tbaa !905
  %39 = tail call ptr @quote(ptr noundef nonnull %22) #40, !dbg !1838
  %40 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @.str.5.72, ptr noundef %39) #40, !dbg !1838
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi ptr [ %36, %31 ], [ %24, %37 ], !dbg !1767
  call void @llvm.dbg.value(metadata ptr %42, metadata !1764, metadata !DIExpression()), !dbg !1767
  %43 = add i64 %23, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %43, metadata !1765, metadata !DIExpression()), !dbg !1769
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43, !dbg !1770
  %45 = load ptr, ptr %44, align 8, !dbg !1770, !tbaa !905
  %46 = icmp eq ptr %45, null, !dbg !1772
  br i1 %46, label %9, label %21, !dbg !1772, !llvm.loop !1841
}

declare !dbg !1843 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @__xargmatch_internal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i1 noundef %6) local_unnamed_addr #10 !dbg !1846 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1850, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata ptr %1, metadata !1851, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata ptr %2, metadata !1852, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata ptr %3, metadata !1853, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %4, metadata !1854, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata ptr %5, metadata !1855, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i1 %6, metadata !1856, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1858
  br i1 %6, label %8, label %50, !dbg !1859

8:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1659, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %2, metadata !1660, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %3, metadata !1661, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %4, metadata !1662, metadata !DIExpression()), !dbg !1860
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %9, metadata !1663, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 -1, metadata !1664, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 0, metadata !1666, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1860
  %10 = load ptr, ptr %2, align 8, !dbg !1865, !tbaa !905
  %11 = icmp eq ptr %10, null, !dbg !1866
  br i1 %11, label %69, label %12, !dbg !1866

12:                                               ; preds = %8
  %13 = icmp eq ptr %3, null
  br label %14, !dbg !1866

14:                                               ; preds = %44, %12
  %15 = phi ptr [ %47, %44 ], [ %10, %12 ]
  %16 = phi i64 [ %45, %44 ], [ 0, %12 ]
  %17 = phi i1 [ true, %44 ], [ false, %12 ]
  %18 = phi i64 [ %22, %44 ], [ -1, %12 ]
  br label %19, !dbg !1866

19:                                               ; preds = %14, %38
  %20 = phi ptr [ %42, %38 ], [ %15, %14 ]
  %21 = phi i64 [ %40, %38 ], [ %16, %14 ]
  %22 = phi i64 [ %39, %38 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1666, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %22, metadata !1664, metadata !DIExpression()), !dbg !1860
  %23 = tail call i32 @strncmp(ptr noundef nonnull %20, ptr noundef %1, i64 noundef %9) #41, !dbg !1867
  %24 = icmp eq i32 %23, 0, !dbg !1867
  br i1 %24, label %25, label %38, !dbg !1868

25:                                               ; preds = %19
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #41, !dbg !1869
  %27 = icmp eq i64 %26, %9, !dbg !1870
  br i1 %27, label %63, label %28, !dbg !1871

28:                                               ; preds = %25
  %29 = icmp eq i64 %22, -1, !dbg !1872
  br i1 %29, label %38, label %30, !dbg !1873

30:                                               ; preds = %28
  br i1 %13, label %44, label %31, !dbg !1874

31:                                               ; preds = %30
  %32 = mul i64 %22, %4, !dbg !1875
  %33 = getelementptr inbounds i8, ptr %3, i64 %32, !dbg !1876
  %34 = mul i64 %21, %4, !dbg !1877
  %35 = getelementptr inbounds i8, ptr %3, i64 %34, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %33, metadata !1693, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr %35, metadata !1698, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i64 %4, metadata !1699, metadata !DIExpression()), !dbg !1879
  %36 = tail call i32 @bcmp(ptr nonnull %33, ptr nonnull %35, i64 %4), !dbg !1881
  %37 = icmp eq i32 %36, 0, !dbg !1882
  br i1 %37, label %38, label %44, !dbg !1883

38:                                               ; preds = %31, %28, %19
  %39 = phi i64 [ %22, %19 ], [ %22, %31 ], [ %21, %28 ], !dbg !1860
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %39, metadata !1664, metadata !DIExpression()), !dbg !1860
  %40 = add i64 %21, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %40, metadata !1666, metadata !DIExpression()), !dbg !1864
  %41 = getelementptr inbounds ptr, ptr %2, i64 %40, !dbg !1865
  %42 = load ptr, ptr %41, align 8, !dbg !1865, !tbaa !905
  %43 = icmp eq ptr %42, null, !dbg !1866
  br i1 %43, label %49, label %19, !dbg !1866, !llvm.loop !1885

44:                                               ; preds = %30, %31
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %22, metadata !1664, metadata !DIExpression()), !dbg !1860
  %45 = add i64 %21, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %45, metadata !1666, metadata !DIExpression()), !dbg !1864
  %46 = getelementptr inbounds ptr, ptr %2, i64 %45, !dbg !1865
  %47 = load ptr, ptr %46, align 8, !dbg !1865, !tbaa !905
  %48 = icmp eq ptr %47, null, !dbg !1866
  br i1 %48, label %70, label %14, !dbg !1866, !llvm.loop !1885

49:                                               ; preds = %38
  br i1 %17, label %70, label %63, !dbg !1887

50:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1720, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata ptr %2, metadata !1721, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64 0, metadata !1722, metadata !DIExpression()), !dbg !1890
  %51 = load ptr, ptr %2, align 8, !dbg !1891, !tbaa !905
  %52 = icmp eq ptr %51, null, !dbg !1892
  br i1 %52, label %69, label %53, !dbg !1892

53:                                               ; preds = %50, %58
  %54 = phi ptr [ %61, %58 ], [ %51, %50 ]
  %55 = phi i64 [ %59, %58 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1722, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %54, metadata !1729, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %1, metadata !1732, metadata !DIExpression()), !dbg !1893
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1895
  %57 = icmp eq i32 %56, 0, !dbg !1896
  br i1 %57, label %63, label %58, !dbg !1897

58:                                               ; preds = %53
  %59 = add i64 %55, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %59, metadata !1722, metadata !DIExpression()), !dbg !1890
  %60 = getelementptr inbounds ptr, ptr %2, i64 %59, !dbg !1891
  %61 = load ptr, ptr %60, align 8, !dbg !1891, !tbaa !905
  %62 = icmp eq ptr %61, null, !dbg !1892
  br i1 %62, label %69, label %53, !dbg !1892, !llvm.loop !1899

63:                                               ; preds = %53, %25, %49
  %64 = phi i64 [ %39, %49 ], [ %21, %25 ], [ %55, %53 ], !dbg !1901
  %65 = freeze i64 %64, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %64, metadata !1857, metadata !DIExpression()), !dbg !1858
  %66 = icmp sgt i64 %65, -1, !dbg !1904
  br i1 %66, label %75, label %67, !dbg !1906

67:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %0, metadata !1748, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata ptr %1, metadata !1749, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %64, metadata !1750, metadata !DIExpression()), !dbg !1907
  %68 = icmp eq i64 %65, -1, !dbg !1902
  br i1 %68, label %69, label %70, !dbg !1908

69:                                               ; preds = %58, %8, %50, %67
  br label %70, !dbg !1908

70:                                               ; preds = %44, %49, %67, %69
  %71 = phi ptr [ @.str.1.52, %69 ], [ @.str.2.53, %67 ], [ @.str.2.53, %49 ], [ @.str.2.53, %44 ]
  %72 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %71, i32 noundef 5) #40, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %72, metadata !1751, metadata !DIExpression()), !dbg !1907
  %73 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #40, !dbg !1909
  %74 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #40, !dbg !1909
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %72, ptr noundef %73, ptr noundef %74) #40, !dbg !1909
  tail call void @argmatch_valid(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1910
  tail call void %5() #40, !dbg !1911
  br label %75, !dbg !1912

75:                                               ; preds = %63, %70
  %76 = phi i64 [ -1, %70 ], [ %65, %63 ], !dbg !1858
  ret i64 %76, !dbg !1913
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @argmatch_to_argument(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #18 !dbg !1914 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1918, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %1, metadata !1919, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %2, metadata !1920, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %3, metadata !1921, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression()), !dbg !1925
  %5 = load ptr, ptr %1, align 8, !dbg !1926, !tbaa !905
  %6 = icmp eq ptr %5, null, !dbg !1928
  br i1 %6, label %21, label %7, !dbg !1928

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1929
  %8 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %3), !dbg !1932
  %9 = icmp eq i32 %8, 0, !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1922, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1925
  br i1 %9, label %21, label %10, !dbg !1934

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %12, %16 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1922, metadata !DIExpression()), !dbg !1925
  %12 = add i64 %11, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %12, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i64 %11, metadata !1922, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1925
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1926
  %14 = load ptr, ptr %13, align 8, !dbg !1926, !tbaa !905
  %15 = icmp eq ptr %14, null, !dbg !1928
  br i1 %15, label %21, label %16, !dbg !1928, !llvm.loop !1936

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %12, metadata !1922, metadata !DIExpression()), !dbg !1925
  %17 = mul i64 %12, %3, !dbg !1938
  %18 = getelementptr inbounds i8, ptr %2, i64 %17, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %18, metadata !1698, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1929
  %19 = tail call i32 @bcmp(ptr %0, ptr %18, i64 %3), !dbg !1932
  %20 = icmp eq i32 %19, 0, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %12, metadata !1922, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1925
  br i1 %20, label %21, label %10, !dbg !1934, !llvm.loop !1936

21:                                               ; preds = %16, %10, %7, %4
  %22 = phi ptr [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %14, %16 ], !dbg !1926
  ret ptr %22, !dbg !1940
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !1941 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1943, metadata !DIExpression()), !dbg !1944
  store ptr %0, ptr @file_name, align 8, !dbg !1945, !tbaa !905
  ret void, !dbg !1946
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !1947 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1953, !tbaa !1223
  ret void, !dbg !1954
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1955 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1960, !tbaa !905
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1961
  %3 = icmp eq i32 %2, 0, !dbg !1962
  br i1 %3, label %22, label %4, !dbg !1963

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1964, !tbaa !1223, !range !1259, !noundef !955
  %6 = icmp eq i8 %5, 0, !dbg !1964
  br i1 %6, label %11, label %7, !dbg !1965

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1966
  %9 = load i32, ptr %8, align 4, !dbg !1966, !tbaa !970
  %10 = icmp eq i32 %9, 32, !dbg !1967
  br i1 %10, label %22, label %11, !dbg !1968

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1.78, i32 noundef 5) #40, !dbg !1969
  call void @llvm.dbg.value(metadata ptr %12, metadata !1957, metadata !DIExpression()), !dbg !1970
  %13 = load ptr, ptr @file_name, align 8, !dbg !1971, !tbaa !905
  %14 = icmp eq ptr %13, null, !dbg !1971
  %15 = tail call ptr @__errno_location() #43, !dbg !1973
  %16 = load i32, ptr %15, align 4, !dbg !1973, !tbaa !970
  br i1 %14, label %19, label %17, !dbg !1974

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1975
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.79, ptr noundef %18, ptr noundef %12) #40, !dbg !1975
  br label %20, !dbg !1975

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.80, ptr noundef %12) #40, !dbg !1976
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1977, !tbaa !970
  tail call void @_exit(i32 noundef %21) #42, !dbg !1978
  unreachable, !dbg !1978

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1979, !tbaa !905
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1981
  %25 = icmp eq i32 %24, 0, !dbg !1982
  br i1 %25, label %28, label %26, !dbg !1983

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1984, !tbaa !970
  tail call void @_exit(i32 noundef %27) #42, !dbg !1985
  unreachable, !dbg !1985

28:                                               ; preds = %22
  ret void, !dbg !1986
}

; Function Attrs: noreturn
declare !dbg !1987 void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !1988 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1992, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 %1, metadata !1993, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata ptr %2, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1995, metadata !DIExpression()), !dbg !1997
  tail call fastcc void @flush_stdout(), !dbg !1998
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1999, !tbaa !905
  %7 = icmp eq ptr %6, null, !dbg !1999
  br i1 %7, label %9, label %8, !dbg !2001

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !2002
  br label %13, !dbg !2002

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2003, !tbaa !905
  %11 = tail call ptr @getprogname() #41, !dbg !2003
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef %11) #40, !dbg !2003
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2005, !tbaa.struct !2006
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2005
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2005
  ret void, !dbg !2007
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2008 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2010, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 1, metadata !2012, metadata !DIExpression()), !dbg !2015
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2018
  %2 = icmp slt i32 %1, 0, !dbg !2019
  br i1 %2, label %6, label %3, !dbg !2020

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2021, !tbaa !905
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2021
  br label %6, !dbg !2021

6:                                                ; preds = %3, %0
  ret void, !dbg !2022
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2023 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %1, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata ptr %2, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2028, metadata !DIExpression()), !dbg !2030
  %7 = load ptr, ptr @stderr, align 8, !dbg !2031, !tbaa !905
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2032, !noalias !2076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2080
  call void @llvm.dbg.value(metadata ptr %7, metadata !2072, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr %2, metadata !2073, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2074, metadata !DIExpression()), !dbg !2082
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !2032
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2032, !noalias !2076
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2083, !tbaa !970
  %10 = add i32 %9, 1, !dbg !2083
  store i32 %10, ptr @error_message_count, align 4, !dbg !2083, !tbaa !970
  %11 = icmp eq i32 %1, 0, !dbg !2084
  br i1 %11, label %21, label %12, !dbg !2086

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2087, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2091, metadata !DIExpression()), !dbg !2098
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %13, metadata !2090, metadata !DIExpression()), !dbg !2095
  %14 = icmp eq ptr %13, null, !dbg !2100
  br i1 %14, label %15, label %17, !dbg !2102

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.82, ptr noundef nonnull @.str.5.83, i32 noundef 5) #40, !dbg !2103
  call void @llvm.dbg.value(metadata ptr %16, metadata !2090, metadata !DIExpression()), !dbg !2095
  br label %17, !dbg !2104

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2095
  call void @llvm.dbg.value(metadata ptr %18, metadata !2090, metadata !DIExpression()), !dbg !2095
  %19 = load ptr, ptr @stderr, align 8, !dbg !2105, !tbaa !905
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.84, ptr noundef %18) #40, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2106
  br label %21, !dbg !2107

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2108, !tbaa !905
  call void @llvm.dbg.value(metadata i32 10, metadata !2109, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata ptr %22, metadata !2114, metadata !DIExpression()), !dbg !2115
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2117
  %24 = load ptr, ptr %23, align 8, !dbg !2117, !tbaa !1818
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2117
  %26 = load ptr, ptr %25, align 8, !dbg !2117, !tbaa !1820
  %27 = icmp ult ptr %24, %26, !dbg !2117
  br i1 %27, label %30, label %28, !dbg !2117, !prof !1821

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !2117
  br label %32, !dbg !2117

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2117
  store ptr %31, ptr %23, align 8, !dbg !2117, !tbaa !1818
  store i8 10, ptr %24, align 1, !dbg !2117, !tbaa !979
  br label %32, !dbg !2117

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2118, !tbaa !905
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !2118
  %35 = icmp eq i32 %0, 0, !dbg !2119
  br i1 %35, label %37, label %36, !dbg !2121

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !2122
  unreachable, !dbg !2122

37:                                               ; preds = %32
  ret void, !dbg !2123
}

declare !dbg !2124 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2127 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2130 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2133 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2137 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata ptr %2, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.va_start(ptr nonnull %4), !dbg !2148
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2149, !tbaa.struct !2006
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2149
  call void @llvm.va_end(ptr nonnull %4), !dbg !2150
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !2151
  ret void, !dbg !2151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !496 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !513, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 %1, metadata !514, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %2, metadata !515, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 %3, metadata !516, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %4, metadata !517, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %5, metadata !518, metadata !DIExpression()), !dbg !2153
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2154, !tbaa !970
  %9 = icmp eq i32 %8, 0, !dbg !2154
  br i1 %9, label %24, label %10, !dbg !2156

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2157, !tbaa !970
  %12 = icmp eq i32 %11, %3, !dbg !2160
  br i1 %12, label %13, label %23, !dbg !2161

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2162, !tbaa !905
  %15 = icmp eq ptr %14, %2, !dbg !2163
  br i1 %15, label %37, label %16, !dbg !2164

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2165
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2166
  br i1 %19, label %20, label %23, !dbg !2166

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2167
  %22 = icmp eq i32 %21, 0, !dbg !2168
  br i1 %22, label %37, label %23, !dbg !2169

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2170, !tbaa !905
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2171, !tbaa !970
  br label %24, !dbg !2172

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2173
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2174, !tbaa !905
  %26 = icmp eq ptr %25, null, !dbg !2174
  br i1 %26, label %28, label %27, !dbg !2176

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !2177
  br label %32, !dbg !2177

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2178, !tbaa !905
  %30 = tail call ptr @getprogname() #41, !dbg !2178
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.87, ptr noundef %30) #40, !dbg !2178
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2180, !tbaa !905
  %34 = icmp eq ptr %2, null, !dbg !2180
  %35 = select i1 %34, ptr @.str.3.88, ptr @.str.2.89, !dbg !2180
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !2180
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2181, !tbaa.struct !2006
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2181
  br label %37, !dbg !2182

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2182
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2183 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2187, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %1, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %2, metadata !2189, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %3, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %4, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.va_start(ptr nonnull %6), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !2197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2197, !tbaa.struct !2006
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !2197
  call void @llvm.va_end(ptr nonnull %6), !dbg !2198
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2199
  ret void, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2206, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %1, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %2, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %3, metadata !2209, metadata !DIExpression()), !dbg !2210
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #40, !dbg !2211
  ret void, !dbg !2212
}

; Function Attrs: nounwind
declare !dbg !2213 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2216 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()), !dbg !2256
  %3 = icmp eq ptr %0, null, !dbg !2257
  br i1 %3, label %7, label %4, !dbg !2259

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %5, metadata !2206, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 0, metadata !2207, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 0, metadata !2208, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %1, metadata !2209, metadata !DIExpression()), !dbg !2261
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #40, !dbg !2263
  br label %7, !dbg !2264

7:                                                ; preds = %4, %2
  ret void, !dbg !2265
}

; Function Attrs: nofree nounwind
declare !dbg !2266 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2269 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2273, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %1, metadata !2274, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 0, metadata !2275, metadata !DIExpression()), !dbg !2290
  %4 = and i32 %1, 64, !dbg !2291
  %5 = icmp eq i32 %4, 0, !dbg !2291
  br i1 %5, label %24, label %6, !dbg !2292

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2277, metadata !DIExpression()), !dbg !2294
  call void @llvm.va_start(ptr nonnull %3), !dbg !2295
  %7 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2296
  %8 = load i32, ptr %7, align 8, !dbg !2296
  %9 = icmp sgt i32 %8, -1, !dbg !2296
  br i1 %9, label %18, label %10, !dbg !2296

10:                                               ; preds = %6
  %11 = add nsw i32 %8, 8, !dbg !2296
  store i32 %11, ptr %7, align 8, !dbg !2296
  %12 = icmp ult i32 %8, -7, !dbg !2296
  br i1 %12, label %13, label %18, !dbg !2296

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2296
  %15 = load ptr, ptr %14, align 8, !dbg !2296
  %16 = sext i32 %8 to i64, !dbg !2296
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2296
  br label %21, !dbg !2296

18:                                               ; preds = %10, %6
  %19 = load ptr, ptr %3, align 8, !dbg !2296
  %20 = getelementptr inbounds i8, ptr %19, i64 8, !dbg !2296
  store ptr %20, ptr %3, align 8, !dbg !2296
  br label %21, !dbg !2296

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %17, %13 ], [ %19, %18 ], !dbg !2296
  %23 = load i32, ptr %22, align 8, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %23, metadata !2275, metadata !DIExpression()), !dbg !2290
  call void @llvm.va_end(ptr nonnull %3), !dbg !2297
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !2298
  br label %24, !dbg !2299

24:                                               ; preds = %21, %2
  %25 = phi i32 [ %23, %21 ], [ 0, %2 ], !dbg !2290
  call void @llvm.dbg.value(metadata i32 %25, metadata !2275, metadata !DIExpression()), !dbg !2290
  %26 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %25) #40, !dbg !2300
  %27 = call i32 @fd_safer(i32 noundef %26) #40, !dbg !2301
  ret i32 %27, !dbg !2302
}

; Function Attrs: nofree
declare !dbg !2303 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #24 !dbg !2304 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2307, !tbaa !905
  ret ptr %1, !dbg !2308
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #15 !dbg !2309 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2339
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !2340
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2315, metadata !DIExpression()), !dbg !2341
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #40, !dbg !2342
  call void @llvm.dbg.value(metadata i32 %3, metadata !2338, metadata !DIExpression()), !dbg !2339
  %4 = icmp eq i32 %3, 0, !dbg !2343
  br i1 %4, label %5, label %15, !dbg !2345

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !2346
  %7 = load i32, ptr %6, align 4, !dbg !2346, !tbaa !2347
  %8 = icmp ult i32 %7, 2, !dbg !2348
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !2349
  %10 = load i32, ptr %9, align 8, !dbg !2349
  %11 = and i32 %10, 61440, !dbg !2349
  %12 = icmp eq i32 %11, 4096, !dbg !2349
  %13 = select i1 %8, i1 %12, i1 false, !dbg !2349
  %14 = zext i1 %13 to i32, !dbg !2349
  br label %15, !dbg !2350

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !2339
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !2351
  ret i32 %16, !dbg !2351
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #25 !dbg !2352 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2354, metadata !DIExpression()), !dbg !2357
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %2, metadata !2355, metadata !DIExpression()), !dbg !2357
  %3 = icmp eq ptr %2, null, !dbg !2359
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2359
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %5, metadata !2356, metadata !DIExpression()), !dbg !2357
  %6 = ptrtoint ptr %5 to i64, !dbg !2360
  %7 = ptrtoint ptr %0 to i64, !dbg !2360
  %8 = sub i64 %6, %7, !dbg !2360
  %9 = icmp sgt i64 %8, 6, !dbg !2362
  br i1 %9, label %10, label %19, !dbg !2363

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2364
  call void @llvm.dbg.value(metadata ptr %11, metadata !2365, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 7, metadata !2369, metadata !DIExpression()), !dbg !2370
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.104, i64 7), !dbg !2372
  %13 = icmp eq i32 %12, 0, !dbg !2373
  br i1 %13, label %14, label %19, !dbg !2374

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2354, metadata !DIExpression()), !dbg !2357
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.105, i64 noundef 3) #41, !dbg !2375
  %16 = icmp eq i32 %15, 0, !dbg !2378
  %17 = select i1 %16, i64 3, i64 0, !dbg !2379
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2379
  br label %19, !dbg !2379

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2357
  call void @llvm.dbg.value(metadata ptr %21, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %20, metadata !2354, metadata !DIExpression()), !dbg !2357
  store ptr %20, ptr @program_name, align 8, !dbg !2380, !tbaa !905
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2381, !tbaa !905
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2382, !tbaa !905
  ret void, !dbg !2383
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2384 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !549 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !556, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata ptr %1, metadata !557, metadata !DIExpression()), !dbg !2385
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %5, metadata !558, metadata !DIExpression()), !dbg !2385
  %6 = icmp eq ptr %5, %0, !dbg !2387
  br i1 %6, label %7, label %14, !dbg !2389

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2390
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %4, metadata !564, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata ptr %4, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %4, metadata !2402, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 0, metadata !2408, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64 8, metadata !2409, metadata !DIExpression()), !dbg !2410
  store i64 0, ptr %4, align 8, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %3, metadata !559, metadata !DIExpression(DW_OP_deref)), !dbg !2385
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2413
  %9 = icmp eq i64 %8, 2, !dbg !2415
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !559, metadata !DIExpression()), !dbg !2385
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2416
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2417
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2385
  ret ptr %15, !dbg !2417
}

; Function Attrs: nounwind
declare !dbg !2418 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2424 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2429, metadata !DIExpression()), !dbg !2432
  %2 = tail call ptr @__errno_location() #43, !dbg !2433
  %3 = load i32, ptr %2, align 4, !dbg !2433, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %3, metadata !2430, metadata !DIExpression()), !dbg !2432
  %4 = icmp eq ptr %0, null, !dbg !2434
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2434
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2435
  call void @llvm.dbg.value(metadata ptr %6, metadata !2431, metadata !DIExpression()), !dbg !2432
  store i32 %3, ptr %2, align 4, !dbg !2436, !tbaa !970
  ret ptr %6, !dbg !2437
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !2438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2444, metadata !DIExpression()), !dbg !2445
  %2 = icmp eq ptr %0, null, !dbg !2446
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2446
  %4 = load i32, ptr %3, align 8, !dbg !2447, !tbaa !2448
  ret i32 %4, !dbg !2450
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %1, metadata !2456, metadata !DIExpression()), !dbg !2457
  %3 = icmp eq ptr %0, null, !dbg !2458
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2458
  store i32 %1, ptr %4, align 8, !dbg !2459, !tbaa !2448
  ret void, !dbg !2460
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #28 !dbg !2461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2465, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 %1, metadata !2466, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %2, metadata !2467, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 %1, metadata !2468, metadata !DIExpression()), !dbg !2473
  %4 = icmp eq ptr %0, null, !dbg !2474
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2474
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2475
  %7 = lshr i8 %1, 5, !dbg !2476
  %8 = zext i8 %7 to i64, !dbg !2476
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %9, metadata !2469, metadata !DIExpression()), !dbg !2473
  %10 = and i8 %1, 31, !dbg !2478
  %11 = zext i8 %10 to i32, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %11, metadata !2471, metadata !DIExpression()), !dbg !2473
  %12 = load i32, ptr %9, align 4, !dbg !2479, !tbaa !970
  %13 = lshr i32 %12, %11, !dbg !2480
  %14 = and i32 %13, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %14, metadata !2472, metadata !DIExpression()), !dbg !2473
  %15 = xor i32 %13, %2, !dbg !2482
  %16 = and i32 %15, 1, !dbg !2482
  %17 = shl nuw i32 %16, %11, !dbg !2483
  %18 = xor i32 %17, %12, !dbg !2484
  store i32 %18, ptr %9, align 4, !dbg !2484, !tbaa !970
  ret i32 %14, !dbg !2485
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !2486 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %1, metadata !2491, metadata !DIExpression()), !dbg !2493
  %3 = icmp eq ptr %0, null, !dbg !2494
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2496
  call void @llvm.dbg.value(metadata ptr %4, metadata !2490, metadata !DIExpression()), !dbg !2493
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2497
  %6 = load i32, ptr %5, align 4, !dbg !2497, !tbaa !2498
  call void @llvm.dbg.value(metadata i32 %6, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i32 %1, ptr %5, align 4, !dbg !2499, !tbaa !2498
  ret i32 %6, !dbg !2500
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2501 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !2508
  %4 = icmp eq ptr %0, null, !dbg !2509
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %5, metadata !2505, metadata !DIExpression()), !dbg !2508
  store i32 10, ptr %5, align 8, !dbg !2512, !tbaa !2448
  %6 = icmp ne ptr %1, null, !dbg !2513
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2515
  br i1 %8, label %10, label %9, !dbg !2515

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2516
  unreachable, !dbg !2516

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2517
  store ptr %1, ptr %11, align 8, !dbg !2518, !tbaa !2519
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2520
  store ptr %2, ptr %12, align 8, !dbg !2521, !tbaa !2522
  ret void, !dbg !2523
}

; Function Attrs: noreturn nounwind
declare !dbg !2524 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2525 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2529, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 %3, metadata !2532, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %4, metadata !2533, metadata !DIExpression()), !dbg !2537
  %6 = icmp eq ptr %4, null, !dbg !2538
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2538
  call void @llvm.dbg.value(metadata ptr %7, metadata !2534, metadata !DIExpression()), !dbg !2537
  %8 = tail call ptr @__errno_location() #43, !dbg !2539
  %9 = load i32, ptr %8, align 4, !dbg !2539, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %9, metadata !2535, metadata !DIExpression()), !dbg !2537
  %10 = load i32, ptr %7, align 8, !dbg !2540, !tbaa !2448
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2541
  %12 = load i32, ptr %11, align 4, !dbg !2541, !tbaa !2498
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2542
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2543
  %15 = load ptr, ptr %14, align 8, !dbg !2543, !tbaa !2519
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2544
  %17 = load ptr, ptr %16, align 8, !dbg !2544, !tbaa !2522
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %18, metadata !2536, metadata !DIExpression()), !dbg !2537
  store i32 %9, ptr %8, align 4, !dbg !2546, !tbaa !970
  ret i64 %18, !dbg !2547
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2548 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2554, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %1, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %2, metadata !2556, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %3, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %4, metadata !2558, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %5, metadata !2559, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %6, metadata !2560, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %7, metadata !2561, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %8, metadata !2562, metadata !DIExpression()), !dbg !2616
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2617
  %17 = icmp eq i64 %16, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i1 %17, metadata !2563, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr null, metadata !2566, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2567, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %5, metadata !2569, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2616
  %18 = and i32 %5, 2, !dbg !2619
  %19 = icmp ne i32 %18, 0, !dbg !2619
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2619

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2620
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2621
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2622
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2568, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %34, metadata !2567, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %33, metadata !2566, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %32, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %31, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %30, metadata !2562, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %29, metadata !2561, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %28, metadata !2558, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.label(metadata !2609), !dbg !2623
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2616
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
  ], !dbg !2624

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 5, metadata !2558, metadata !DIExpression()), !dbg !2616
  br label %102, !dbg !2625

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 5, metadata !2558, metadata !DIExpression()), !dbg !2616
  br i1 %36, label %102, label %42, !dbg !2625

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2626
  br i1 %43, label %102, label %44, !dbg !2630

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2626, !tbaa !979
  br label %102, !dbg !2626

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.118, metadata !645, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %28, metadata !646, metadata !DIExpression()), !dbg !2631
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.11.118, i32 noundef 5) #40, !dbg !2635
  call void @llvm.dbg.value(metadata ptr %46, metadata !647, metadata !DIExpression()), !dbg !2631
  %47 = icmp eq ptr %46, @.str.11.118, !dbg !2636
  br i1 %47, label %48, label %57, !dbg !2638

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %13, metadata !649, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata ptr %13, metadata !2642, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %13, metadata !2650, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 8, metadata !2654, metadata !DIExpression()), !dbg !2655
  store i64 0, ptr %13, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %12, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !2631
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2658
  %50 = icmp eq i64 %49, 3, !dbg !2660
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !648, metadata !DIExpression()), !dbg !2631
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2661
  %54 = icmp eq i32 %28, 9, !dbg !2661
  %55 = select i1 %54, ptr @.str.10.120, ptr @.str.12.121, !dbg !2661
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2661
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2662
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2662
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2631
  call void @llvm.dbg.value(metadata ptr %58, metadata !2561, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr @.str.12.121, metadata !645, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %28, metadata !646, metadata !DIExpression()), !dbg !2663
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.12.121, i32 noundef 5) #40, !dbg !2665
  call void @llvm.dbg.value(metadata ptr %59, metadata !647, metadata !DIExpression()), !dbg !2663
  %60 = icmp eq ptr %59, @.str.12.121, !dbg !2666
  br i1 %60, label %61, label %70, !dbg !2667

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2668
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2669
  call void @llvm.dbg.declare(metadata ptr %11, metadata !649, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %11, metadata !2642, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %11, metadata !2650, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 8, metadata !2654, metadata !DIExpression()), !dbg !2673
  store i64 0, ptr %11, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata ptr %10, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !2663
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2676
  %63 = icmp eq i64 %62, 3, !dbg !2677
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !648, metadata !DIExpression()), !dbg !2663
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2678
  %67 = icmp eq i32 %28, 9, !dbg !2678
  %68 = select i1 %67, ptr @.str.10.120, ptr @.str.12.121, !dbg !2678
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2678
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2679
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2679
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2562, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %71, metadata !2561, metadata !DIExpression()), !dbg !2616
  br i1 %36, label %88, label %73, !dbg !2680

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2573, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 0, metadata !2564, metadata !DIExpression()), !dbg !2616
  %74 = load i8, ptr %71, align 1, !dbg !2682, !tbaa !979
  %75 = icmp eq i8 %74, 0, !dbg !2684
  br i1 %75, label %88, label %76, !dbg !2684

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2573, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %79, metadata !2564, metadata !DIExpression()), !dbg !2616
  %80 = icmp ult i64 %79, %39, !dbg !2685
  br i1 %80, label %81, label %83, !dbg !2688

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2685
  store i8 %77, ptr %82, align 1, !dbg !2685, !tbaa !979
  br label %83, !dbg !2685

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %84, metadata !2564, metadata !DIExpression()), !dbg !2616
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2689
  call void @llvm.dbg.value(metadata ptr %85, metadata !2573, metadata !DIExpression()), !dbg !2681
  %86 = load i8, ptr %85, align 1, !dbg !2682, !tbaa !979
  %87 = icmp eq i8 %86, 0, !dbg !2684
  br i1 %87, label %88, label %76, !dbg !2684, !llvm.loop !2690

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2692
  call void @llvm.dbg.value(metadata i64 %89, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 1, metadata !2568, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %72, metadata !2566, metadata !DIExpression()), !dbg !2616
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %90, metadata !2567, metadata !DIExpression()), !dbg !2616
  br label %102, !dbg !2694

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2568, metadata !DIExpression()), !dbg !2616
  br label %93, !dbg !2695

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2568, metadata !DIExpression()), !dbg !2616
  br i1 %36, label %102, label %96, !dbg !2696

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2568, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 2, metadata !2558, metadata !DIExpression()), !dbg !2616
  br label %102, !dbg !2697

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2568, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 2, metadata !2558, metadata !DIExpression()), !dbg !2616
  br i1 %36, label %102, label %96, !dbg !2697

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2698
  br i1 %98, label %102, label %99, !dbg !2702

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2698, !tbaa !979
  br label %102, !dbg !2698

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2616
  br label %102, !dbg !2703

101:                                              ; preds = %27
  call void @abort() #42, !dbg !2704
  unreachable, !dbg !2704

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2692
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.120, %42 ], [ @.str.10.120, %44 ], [ @.str.10.120, %41 ], [ %33, %27 ], [ @.str.12.121, %96 ], [ @.str.12.121, %99 ], [ @.str.12.121, %95 ], [ @.str.10.120, %40 ], [ @.str.12.121, %93 ], [ @.str.12.121, %92 ], !dbg !2616
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2616
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2569, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2568, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %108, metadata !2567, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %107, metadata !2566, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %106, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %105, metadata !2562, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %104, metadata !2561, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %103, metadata !2558, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 0, metadata !2578, metadata !DIExpression()), !dbg !2705
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
  br label %122, !dbg !2706

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2692
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2620
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2707
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %129, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %125, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %124, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %123, metadata !2557, metadata !DIExpression()), !dbg !2616
  %131 = icmp eq i64 %123, -1, !dbg !2708
  br i1 %131, label %132, label %136, !dbg !2709

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2710
  %134 = load i8, ptr %133, align 1, !dbg !2710, !tbaa !979
  %135 = icmp eq i8 %134, 0, !dbg !2711
  br i1 %135, label %579, label %138, !dbg !2712

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2713
  br i1 %137, label %579, label %138, !dbg !2712

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 0, metadata !2584, metadata !DIExpression()), !dbg !2714
  br i1 %114, label %139, label %152, !dbg !2715

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2717
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2718
  br i1 %141, label %142, label %144, !dbg !2718

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %143, metadata !2557, metadata !DIExpression()), !dbg !2616
  br label %144, !dbg !2720

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2720
  call void @llvm.dbg.value(metadata i64 %145, metadata !2557, metadata !DIExpression()), !dbg !2616
  %146 = icmp ugt i64 %140, %145, !dbg !2721
  br i1 %146, label %152, label %147, !dbg !2722

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2723
  call void @llvm.dbg.value(metadata ptr %148, metadata !2724, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %107, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %108, metadata !2728, metadata !DIExpression()), !dbg !2729
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2731
  %150 = icmp eq i32 %149, 0, !dbg !2732
  %151 = and i1 %150, %110, !dbg !2733
  br i1 %151, label %630, label %152, !dbg !2733

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %153, metadata !2557, metadata !DIExpression()), !dbg !2616
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2734
  %156 = load i8, ptr %155, align 1, !dbg !2734, !tbaa !979
  call void @llvm.dbg.value(metadata i8 %156, metadata !2585, metadata !DIExpression()), !dbg !2714
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
  ], !dbg !2735

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2736

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2737

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2714
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2741
  br i1 %160, label %177, label %161, !dbg !2741

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2743
  br i1 %162, label %163, label %165, !dbg !2747

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2743
  store i8 39, ptr %164, align 1, !dbg !2743, !tbaa !979
  br label %165, !dbg !2743

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %166, metadata !2564, metadata !DIExpression()), !dbg !2616
  %167 = icmp ult i64 %166, %130, !dbg !2748
  br i1 %167, label %168, label %170, !dbg !2751

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2748
  store i8 36, ptr %169, align 1, !dbg !2748, !tbaa !979
  br label %170, !dbg !2748

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %171, metadata !2564, metadata !DIExpression()), !dbg !2616
  %172 = icmp ult i64 %171, %130, !dbg !2752
  br i1 %172, label %173, label %175, !dbg !2755

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2752
  store i8 39, ptr %174, align 1, !dbg !2752, !tbaa !979
  br label %175, !dbg !2752

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %176, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 1, metadata !2572, metadata !DIExpression()), !dbg !2616
  br label %177, !dbg !2756

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2616
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %178, metadata !2564, metadata !DIExpression()), !dbg !2616
  %180 = icmp ult i64 %178, %130, !dbg !2757
  br i1 %180, label %181, label %183, !dbg !2760

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2757
  store i8 92, ptr %182, align 1, !dbg !2757, !tbaa !979
  br label %183, !dbg !2757

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i64 %184, metadata !2564, metadata !DIExpression()), !dbg !2616
  br i1 %111, label %185, label %482, !dbg !2761

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2763
  %187 = icmp ult i64 %186, %153, !dbg !2764
  br i1 %187, label %188, label %439, !dbg !2765

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2766
  %190 = load i8, ptr %189, align 1, !dbg !2766, !tbaa !979
  %191 = add i8 %190, -48, !dbg !2767
  %192 = icmp ult i8 %191, 10, !dbg !2767
  br i1 %192, label %193, label %439, !dbg !2767

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2768
  br i1 %194, label %195, label %197, !dbg !2772

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2768
  store i8 48, ptr %196, align 1, !dbg !2768, !tbaa !979
  br label %197, !dbg !2768

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %198, metadata !2564, metadata !DIExpression()), !dbg !2616
  %199 = icmp ult i64 %198, %130, !dbg !2773
  br i1 %199, label %200, label %202, !dbg !2776

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2773
  store i8 48, ptr %201, align 1, !dbg !2773, !tbaa !979
  br label %202, !dbg !2773

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %203, metadata !2564, metadata !DIExpression()), !dbg !2616
  br label %439, !dbg !2777

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2778

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2779

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2780

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2782

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2784
  %210 = icmp ult i64 %209, %153, !dbg !2785
  br i1 %210, label %211, label %439, !dbg !2786

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2787
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2788
  %214 = load i8, ptr %213, align 1, !dbg !2788, !tbaa !979
  %215 = icmp eq i8 %214, 63, !dbg !2789
  br i1 %215, label %216, label %439, !dbg !2790

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2791
  %218 = load i8, ptr %217, align 1, !dbg !2791, !tbaa !979
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
  ], !dbg !2792

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2793

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %209, metadata !2578, metadata !DIExpression()), !dbg !2705
  %221 = icmp ult i64 %124, %130, !dbg !2795
  br i1 %221, label %222, label %224, !dbg !2798

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2795
  store i8 63, ptr %223, align 1, !dbg !2795, !tbaa !979
  br label %224, !dbg !2795

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %225, metadata !2564, metadata !DIExpression()), !dbg !2616
  %226 = icmp ult i64 %225, %130, !dbg !2799
  br i1 %226, label %227, label %229, !dbg !2802

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2799
  store i8 34, ptr %228, align 1, !dbg !2799, !tbaa !979
  br label %229, !dbg !2799

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %230, metadata !2564, metadata !DIExpression()), !dbg !2616
  %231 = icmp ult i64 %230, %130, !dbg !2803
  br i1 %231, label %232, label %234, !dbg !2806

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2803
  store i8 34, ptr %233, align 1, !dbg !2803, !tbaa !979
  br label %234, !dbg !2803

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2806
  call void @llvm.dbg.value(metadata i64 %235, metadata !2564, metadata !DIExpression()), !dbg !2616
  %236 = icmp ult i64 %235, %130, !dbg !2807
  br i1 %236, label %237, label %239, !dbg !2810

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2807
  store i8 63, ptr %238, align 1, !dbg !2807, !tbaa !979
  br label %239, !dbg !2807

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %240, metadata !2564, metadata !DIExpression()), !dbg !2616
  br label %439, !dbg !2811

241:                                              ; preds = %152
  br label %251, !dbg !2812

242:                                              ; preds = %152
  br label %251, !dbg !2813

243:                                              ; preds = %152
  br label %249, !dbg !2814

244:                                              ; preds = %152
  br label %249, !dbg !2815

245:                                              ; preds = %152
  br label %251, !dbg !2816

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2817

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2818

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2821

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2823
  call void @llvm.dbg.label(metadata !2610), !dbg !2824
  br i1 %119, label %621, label %251, !dbg !2825

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2823
  call void @llvm.dbg.label(metadata !2612), !dbg !2827
  br i1 %109, label %493, label %450, !dbg !2828

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2829

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2830, !tbaa !979
  %256 = icmp eq i8 %255, 0, !dbg !2832
  br i1 %256, label %257, label %439, !dbg !2833

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2834
  br i1 %258, label %259, label %439, !dbg !2836

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2584, metadata !DIExpression()), !dbg !2714
  br label %260, !dbg !2837

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2584, metadata !DIExpression()), !dbg !2714
  br i1 %116, label %262, label %439, !dbg !2838

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2840

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 1, metadata !2584, metadata !DIExpression()), !dbg !2714
  br i1 %116, label %264, label %439, !dbg !2841

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2842

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2845
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2847
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2847
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2847
  call void @llvm.dbg.value(metadata i64 %270, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %269, metadata !2565, metadata !DIExpression()), !dbg !2616
  %271 = icmp ult i64 %124, %270, !dbg !2848
  br i1 %271, label %272, label %274, !dbg !2851

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2848
  store i8 39, ptr %273, align 1, !dbg !2848, !tbaa !979
  br label %274, !dbg !2848

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %275, metadata !2564, metadata !DIExpression()), !dbg !2616
  %276 = icmp ult i64 %275, %270, !dbg !2852
  br i1 %276, label %277, label %279, !dbg !2855

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2852
  store i8 92, ptr %278, align 1, !dbg !2852, !tbaa !979
  br label %279, !dbg !2852

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %280, metadata !2564, metadata !DIExpression()), !dbg !2616
  %281 = icmp ult i64 %280, %270, !dbg !2856
  br i1 %281, label %282, label %284, !dbg !2859

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2856
  store i8 39, ptr %283, align 1, !dbg !2856, !tbaa !979
  br label %284, !dbg !2856

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %285, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2616
  br label %439, !dbg !2860

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2861

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2586, metadata !DIExpression()), !dbg !2862
  %288 = tail call ptr @__ctype_b_loc() #43, !dbg !2863
  %289 = load ptr, ptr %288, align 8, !dbg !2863, !tbaa !905
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2863
  %292 = load i16, ptr %291, align 2, !dbg !2863, !tbaa !1011
  %293 = and i16 %292, 16384, !dbg !2863
  %294 = icmp ne i16 %293, 0, !dbg !2865
  call void @llvm.dbg.value(metadata i1 %294, metadata !2589, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2862
  br label %337, !dbg !2866

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2867
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2590, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata ptr %14, metadata !2642, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %14, metadata !2650, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 8, metadata !2654, metadata !DIExpression()), !dbg !2871
  store i64 0, ptr %14, align 8, !dbg !2873
  call void @llvm.dbg.value(metadata i64 0, metadata !2586, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8 1, metadata !2589, metadata !DIExpression()), !dbg !2862
  %296 = icmp eq i64 %153, -1, !dbg !2874
  br i1 %296, label %297, label %299, !dbg !2876

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %298, metadata !2557, metadata !DIExpression()), !dbg !2616
  br label %299, !dbg !2878

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2714
  call void @llvm.dbg.value(metadata i64 %300, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2879
  %301 = sub i64 %300, %129, !dbg !2880
  call void @llvm.dbg.value(metadata ptr %15, metadata !2593, metadata !DIExpression(DW_OP_deref)), !dbg !2881
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #40, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %302, metadata !2597, metadata !DIExpression()), !dbg !2881
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2883

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2586, metadata !DIExpression()), !dbg !2862
  %304 = icmp ugt i64 %300, %129, !dbg !2884
  br i1 %304, label %306, label %332, !dbg !2886

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2862
  br label %332, !dbg !2887

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2586, metadata !DIExpression()), !dbg !2862
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2889
  %310 = load i8, ptr %309, align 1, !dbg !2889, !tbaa !979
  %311 = icmp eq i8 %310, 0, !dbg !2886
  br i1 %311, label %332, label %312, !dbg !2890

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %313, metadata !2586, metadata !DIExpression()), !dbg !2862
  %314 = add i64 %313, %129, !dbg !2892
  %315 = icmp eq i64 %313, %301, !dbg !2884
  br i1 %315, label %332, label %306, !dbg !2886, !llvm.loop !2893

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2894
  %319 = and i1 %318, %110, !dbg !2894
  call void @llvm.dbg.value(metadata i64 1, metadata !2598, metadata !DIExpression()), !dbg !2895
  br i1 %319, label %320, label %328, !dbg !2894

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2598, metadata !DIExpression()), !dbg !2895
  %322 = add i64 %321, %129, !dbg !2896
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2898
  %324 = load i8, ptr %323, align 1, !dbg !2898, !tbaa !979
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2899

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %326, metadata !2598, metadata !DIExpression()), !dbg !2895
  %327 = icmp eq i64 %326, %302, !dbg !2901
  br i1 %327, label %328, label %320, !dbg !2902, !llvm.loop !2903

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2905, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %329, metadata !2593, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %329, metadata !2907, metadata !DIExpression()), !dbg !2915
  %330 = call i32 @iswprint(i32 noundef %329) #40, !dbg !2917
  %331 = icmp ne i32 %330, 0, !dbg !2918
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %302, metadata !2586, metadata !DIExpression()), !dbg !2862
  br label %332, !dbg !2919

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %333, metadata !2586, metadata !DIExpression()), !dbg !2862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2920
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2921
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 0, metadata !2586, metadata !DIExpression()), !dbg !2862
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2920
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2921
  call void @llvm.dbg.label(metadata !2615), !dbg !2922
  %336 = select i1 %109, i32 4, i32 2, !dbg !2923
  br label %626, !dbg !2923

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2714
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2925
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %339, metadata !2586, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i64 %338, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i1 %340, metadata !2584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2714
  %341 = icmp ult i64 %339, 2, !dbg !2926
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2927
  br i1 %343, label %439, label %344, !dbg !2927

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %345, metadata !2606, metadata !DIExpression()), !dbg !2929
  br label %346, !dbg !2930

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2616
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2705
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2931
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2714
  call void @llvm.dbg.value(metadata i8 %352, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %351, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %349, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %347, metadata !2564, metadata !DIExpression()), !dbg !2616
  br i1 %342, label %397, label %353, !dbg !2932

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2937

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2714
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2940
  br i1 %355, label %372, label %356, !dbg !2940

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2942
  br i1 %357, label %358, label %360, !dbg !2946

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2942
  store i8 39, ptr %359, align 1, !dbg !2942, !tbaa !979
  br label %360, !dbg !2942

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %361, metadata !2564, metadata !DIExpression()), !dbg !2616
  %362 = icmp ult i64 %361, %130, !dbg !2947
  br i1 %362, label %363, label %365, !dbg !2950

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2947
  store i8 36, ptr %364, align 1, !dbg !2947, !tbaa !979
  br label %365, !dbg !2947

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %366, metadata !2564, metadata !DIExpression()), !dbg !2616
  %367 = icmp ult i64 %366, %130, !dbg !2951
  br i1 %367, label %368, label %370, !dbg !2954

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2951
  store i8 39, ptr %369, align 1, !dbg !2951, !tbaa !979
  br label %370, !dbg !2951

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %371, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 1, metadata !2572, metadata !DIExpression()), !dbg !2616
  br label %372, !dbg !2955

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2616
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %373, metadata !2564, metadata !DIExpression()), !dbg !2616
  %375 = icmp ult i64 %373, %130, !dbg !2956
  br i1 %375, label %376, label %378, !dbg !2959

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2956
  store i8 92, ptr %377, align 1, !dbg !2956, !tbaa !979
  br label %378, !dbg !2956

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %379, metadata !2564, metadata !DIExpression()), !dbg !2616
  %380 = icmp ult i64 %379, %130, !dbg !2960
  br i1 %380, label %381, label %385, !dbg !2963

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2960
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2960
  store i8 %383, ptr %384, align 1, !dbg !2960, !tbaa !979
  br label %385, !dbg !2960

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %386, metadata !2564, metadata !DIExpression()), !dbg !2616
  %387 = icmp ult i64 %386, %130, !dbg !2964
  br i1 %387, label %388, label %393, !dbg !2967

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2964
  %391 = or i8 %390, 48, !dbg !2964
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2964
  store i8 %391, ptr %392, align 1, !dbg !2964, !tbaa !979
  br label %393, !dbg !2964

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %394, metadata !2564, metadata !DIExpression()), !dbg !2616
  %395 = and i8 %352, 7, !dbg !2968
  %396 = or i8 %395, 48, !dbg !2969
  call void @llvm.dbg.value(metadata i8 %396, metadata !2585, metadata !DIExpression()), !dbg !2714
  br label %404, !dbg !2970

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2971

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2972
  br i1 %399, label %400, label %402, !dbg !2977

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2972
  store i8 92, ptr %401, align 1, !dbg !2972, !tbaa !979
  br label %402, !dbg !2972

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %403, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2714
  br label %404, !dbg !2978

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2616
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2714
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2714
  call void @llvm.dbg.value(metadata i8 %409, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %408, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %405, metadata !2564, metadata !DIExpression()), !dbg !2616
  %410 = add i64 %349, 1, !dbg !2979
  %411 = icmp ugt i64 %345, %410, !dbg !2981
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2982

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2983
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2983
  br i1 %415, label %416, label %427, !dbg !2983

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2986
  br i1 %417, label %418, label %420, !dbg !2990

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2986
  store i8 39, ptr %419, align 1, !dbg !2986, !tbaa !979
  br label %420, !dbg !2986

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %421, metadata !2564, metadata !DIExpression()), !dbg !2616
  %422 = icmp ult i64 %421, %130, !dbg !2991
  br i1 %422, label %423, label %425, !dbg !2994

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2991
  store i8 39, ptr %424, align 1, !dbg !2991, !tbaa !979
  br label %425, !dbg !2991

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %426, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2616
  br label %427, !dbg !2995

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2996
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %428, metadata !2564, metadata !DIExpression()), !dbg !2616
  %430 = icmp ult i64 %428, %130, !dbg !2997
  br i1 %430, label %431, label %433, !dbg !3000

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2997
  store i8 %409, ptr %432, align 1, !dbg !2997, !tbaa !979
  br label %433, !dbg !2997

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %434, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %410, metadata !2578, metadata !DIExpression()), !dbg !2705
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3001
  %436 = load i8, ptr %435, align 1, !dbg !3001, !tbaa !979
  call void @llvm.dbg.value(metadata i8 %436, metadata !2585, metadata !DIExpression()), !dbg !2714
  br label %346, !dbg !3002, !llvm.loop !3003

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i1 %340, metadata !2584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %408, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %349, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %405, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %338, metadata !2557, metadata !DIExpression()), !dbg !2616
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3006
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2616
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2620
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2705
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2714
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %448, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2584, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %445, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %442, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %441, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %440, metadata !2557, metadata !DIExpression()), !dbg !2616
  br i1 %112, label %461, label %450, !dbg !3007

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
  br i1 %121, label %462, label %482, !dbg !3009

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3010

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
  %473 = lshr i8 %464, 5, !dbg !3011
  %474 = zext i8 %473 to i64, !dbg !3011
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3012
  %476 = load i32, ptr %475, align 4, !dbg !3012, !tbaa !970
  %477 = and i8 %464, 31, !dbg !3013
  %478 = zext i8 %477 to i32, !dbg !3013
  %479 = shl nuw i32 1, %478, !dbg !3014
  %480 = and i32 %476, %479, !dbg !3014
  %481 = icmp eq i32 %480, 0, !dbg !3014
  br i1 %481, label %482, label %493, !dbg !3015

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
  br i1 %154, label %493, label %529, !dbg !3016

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3006
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2616
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2620
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3017
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2714
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %501, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2584, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %499, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %496, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %495, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %494, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.label(metadata !2613), !dbg !3018
  br i1 %110, label %621, label %503, !dbg !3019

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2714
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3021
  br i1 %504, label %521, label %505, !dbg !3021

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3023
  br i1 %506, label %507, label %509, !dbg !3027

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3023
  store i8 39, ptr %508, align 1, !dbg !3023, !tbaa !979
  br label %509, !dbg !3023

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %510, metadata !2564, metadata !DIExpression()), !dbg !2616
  %511 = icmp ult i64 %510, %502, !dbg !3028
  br i1 %511, label %512, label %514, !dbg !3031

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3028
  store i8 36, ptr %513, align 1, !dbg !3028, !tbaa !979
  br label %514, !dbg !3028

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %515, metadata !2564, metadata !DIExpression()), !dbg !2616
  %516 = icmp ult i64 %515, %502, !dbg !3032
  br i1 %516, label %517, label %519, !dbg !3035

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3032
  store i8 39, ptr %518, align 1, !dbg !3032, !tbaa !979
  br label %519, !dbg !3032

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %520, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 1, metadata !2572, metadata !DIExpression()), !dbg !2616
  br label %521, !dbg !3036

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2714
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %522, metadata !2564, metadata !DIExpression()), !dbg !2616
  %524 = icmp ult i64 %522, %502, !dbg !3037
  br i1 %524, label %525, label %527, !dbg !3040

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3037
  store i8 92, ptr %526, align 1, !dbg !3037, !tbaa !979
  br label %527, !dbg !3037

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %502, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %501, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2584, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %499, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %496, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %528, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %494, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.label(metadata !2614), !dbg !3041
  br label %553, !dbg !3042

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3006
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2616
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2620
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3017
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3045
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %538, metadata !2585, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2584, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %535, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %532, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %531, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %530, metadata !2557, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.label(metadata !2614), !dbg !3041
  %540 = xor i1 %534, true, !dbg !3042
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3042
  br i1 %541, label %553, label %542, !dbg !3042

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3046
  br i1 %543, label %544, label %546, !dbg !3050

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3046
  store i8 39, ptr %545, align 1, !dbg !3046, !tbaa !979
  br label %546, !dbg !3046

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %547, metadata !2564, metadata !DIExpression()), !dbg !2616
  %548 = icmp ult i64 %547, %539, !dbg !3051
  br i1 %548, label %549, label %551, !dbg !3054

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3051
  store i8 39, ptr %550, align 1, !dbg !3051, !tbaa !979
  br label %551, !dbg !3051

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %552, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 0, metadata !2572, metadata !DIExpression()), !dbg !2616
  br label %553, !dbg !3055

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2714
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %561, metadata !2564, metadata !DIExpression()), !dbg !2616
  %563 = icmp ult i64 %561, %554, !dbg !3056
  br i1 %563, label %564, label %566, !dbg !3059

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3056
  store i8 %555, ptr %565, align 1, !dbg !3056, !tbaa !979
  br label %566, !dbg !3056

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %567, metadata !2564, metadata !DIExpression()), !dbg !2616
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3060
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2616
  br label %569, !dbg !3061

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3006
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2616
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2620
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3017
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %576, metadata !2578, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8 poison, metadata !2572, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %572, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %571, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %570, metadata !2557, metadata !DIExpression()), !dbg !2616
  %578 = add i64 %576, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %578, metadata !2578, metadata !DIExpression()), !dbg !2705
  br label %122, !dbg !3063, !llvm.loop !3064

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2555, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2571, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 poison, metadata !2570, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %125, metadata !2565, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %124, metadata !2564, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %123, metadata !2557, metadata !DIExpression()), !dbg !2616
  %580 = icmp ne i64 %124, 0, !dbg !3066
  %581 = xor i1 %110, true, !dbg !3068
  %582 = or i1 %580, %581, !dbg !3068
  %583 = or i1 %582, %111, !dbg !3068
  br i1 %583, label %584, label %621, !dbg !3068

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3069
  %586 = xor i1 %126, true, !dbg !3069
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3069
  br i1 %587, label %595, label %588, !dbg !3069

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3071

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3073
  br label %636, !dbg !3075

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3076
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3078
  br i1 %594, label %27, label %595, !dbg !3078

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3079
  %598 = or i1 %597, %596, !dbg !3081
  br i1 %598, label %614, label %599, !dbg !3081

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2566, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %124, metadata !2564, metadata !DIExpression()), !dbg !2616
  %600 = load i8, ptr %107, align 1, !dbg !3082, !tbaa !979
  %601 = icmp eq i8 %600, 0, !dbg !3085
  br i1 %601, label %614, label %602, !dbg !3085

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2566, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i64 %605, metadata !2564, metadata !DIExpression()), !dbg !2616
  %606 = icmp ult i64 %605, %130, !dbg !3086
  br i1 %606, label %607, label %609, !dbg !3089

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3086
  store i8 %603, ptr %608, align 1, !dbg !3086, !tbaa !979
  br label %609, !dbg !3086

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %610, metadata !2564, metadata !DIExpression()), !dbg !2616
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3090
  call void @llvm.dbg.value(metadata ptr %611, metadata !2566, metadata !DIExpression()), !dbg !2616
  %612 = load i8, ptr %611, align 1, !dbg !3082, !tbaa !979
  %613 = icmp eq i8 %612, 0, !dbg !3085
  br i1 %613, label %614, label %602, !dbg !3085, !llvm.loop !3091

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2692
  call void @llvm.dbg.value(metadata i64 %615, metadata !2564, metadata !DIExpression()), !dbg !2616
  %616 = icmp ult i64 %615, %130, !dbg !3093
  br i1 %616, label %617, label %636, !dbg !3095

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3096
  store i8 0, ptr %618, align 1, !dbg !3097, !tbaa !979
  br label %636, !dbg !3096

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2615), !dbg !2922
  %620 = icmp eq i32 %103, 2, !dbg !3098
  br i1 %620, label %626, label %630, !dbg !2923

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2615), !dbg !2922
  %624 = icmp eq i32 %103, 2, !dbg !3098
  %625 = select i1 %109, i32 4, i32 2, !dbg !2923
  br i1 %624, label %626, label %630, !dbg !2923

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2923

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2558, metadata !DIExpression()), !dbg !2616
  %634 = and i32 %5, -3, !dbg !3099
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3100
  br label %636, !dbg !3101

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3102
}

; Function Attrs: nounwind
declare !dbg !3103 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3106 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3108 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr %2, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata ptr null, metadata !3122, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata ptr %2, metadata !3123, metadata !DIExpression()), !dbg !3129
  %4 = icmp eq ptr %2, null, !dbg !3131
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %5, metadata !3124, metadata !DIExpression()), !dbg !3129
  %6 = tail call ptr @__errno_location() #43, !dbg !3132
  %7 = load i32, ptr %6, align 4, !dbg !3132, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %7, metadata !3125, metadata !DIExpression()), !dbg !3129
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3133
  %9 = load i32, ptr %8, align 4, !dbg !3133, !tbaa !2498
  %10 = or i32 %9, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i32 %10, metadata !3126, metadata !DIExpression()), !dbg !3129
  %11 = load i32, ptr %5, align 8, !dbg !3135, !tbaa !2448
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3136
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3137
  %14 = load ptr, ptr %13, align 8, !dbg !3137, !tbaa !2519
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3138
  %16 = load ptr, ptr %15, align 8, !dbg !3138, !tbaa !2522
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3139
  %18 = add i64 %17, 1, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %18, metadata !3127, metadata !DIExpression()), !dbg !3129
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %19, metadata !3128, metadata !DIExpression()), !dbg !3129
  %20 = load i32, ptr %5, align 8, !dbg !3142, !tbaa !2448
  %21 = load ptr, ptr %13, align 8, !dbg !3143, !tbaa !2519
  %22 = load ptr, ptr %15, align 8, !dbg !3144, !tbaa !2522
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3145
  store i32 %7, ptr %6, align 4, !dbg !3146, !tbaa !970
  ret ptr %19, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %2, metadata !3122, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %3, metadata !3123, metadata !DIExpression()), !dbg !3148
  %5 = icmp eq ptr %3, null, !dbg !3149
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3149
  call void @llvm.dbg.value(metadata ptr %6, metadata !3124, metadata !DIExpression()), !dbg !3148
  %7 = tail call ptr @__errno_location() #43, !dbg !3150
  %8 = load i32, ptr %7, align 4, !dbg !3150, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %8, metadata !3125, metadata !DIExpression()), !dbg !3148
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3151
  %10 = load i32, ptr %9, align 4, !dbg !3151, !tbaa !2498
  %11 = icmp eq ptr %2, null, !dbg !3152
  %12 = zext i1 %11 to i32, !dbg !3152
  %13 = or i32 %10, %12, !dbg !3153
  call void @llvm.dbg.value(metadata i32 %13, metadata !3126, metadata !DIExpression()), !dbg !3148
  %14 = load i32, ptr %6, align 8, !dbg !3154, !tbaa !2448
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3155
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3156
  %17 = load ptr, ptr %16, align 8, !dbg !3156, !tbaa !2519
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3157
  %19 = load ptr, ptr %18, align 8, !dbg !3157, !tbaa !2522
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3158
  %21 = add i64 %20, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %21, metadata !3127, metadata !DIExpression()), !dbg !3148
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3160
  call void @llvm.dbg.value(metadata ptr %22, metadata !3128, metadata !DIExpression()), !dbg !3148
  %23 = load i32, ptr %6, align 8, !dbg !3161, !tbaa !2448
  %24 = load ptr, ptr %16, align 8, !dbg !3162, !tbaa !2519
  %25 = load ptr, ptr %18, align 8, !dbg !3163, !tbaa !2522
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3164
  store i32 %8, ptr %7, align 4, !dbg !3165, !tbaa !970
  br i1 %11, label %28, label %27, !dbg !3166

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3167, !tbaa !3169
  br label %28, !dbg !3170

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3171
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3172 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3177, !tbaa !905
  call void @llvm.dbg.value(metadata ptr %1, metadata !3174, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i32 1, metadata !3175, metadata !DIExpression()), !dbg !3179
  %2 = load i32, ptr @nslots, align 4, !tbaa !970
  call void @llvm.dbg.value(metadata i32 1, metadata !3175, metadata !DIExpression()), !dbg !3179
  %3 = icmp sgt i32 %2, 1, !dbg !3180
  br i1 %3, label %4, label %6, !dbg !3182

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3180
  br label %10, !dbg !3182

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3183
  %8 = load ptr, ptr %7, align 8, !dbg !3183, !tbaa !3185
  %9 = icmp eq ptr %8, @slot0, !dbg !3187
  br i1 %9, label %17, label %16, !dbg !3188

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3175, metadata !DIExpression()), !dbg !3179
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3189
  %13 = load ptr, ptr %12, align 8, !dbg !3189, !tbaa !3185
  tail call void @free(ptr noundef %13) #40, !dbg !3190
  %14 = add nuw nsw i64 %11, 1, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %14, metadata !3175, metadata !DIExpression()), !dbg !3179
  %15 = icmp eq i64 %14, %5, !dbg !3180
  br i1 %15, label %6, label %10, !dbg !3182, !llvm.loop !3192

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3194
  store i64 256, ptr @slotvec0, align 8, !dbg !3196, !tbaa !3197
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3198, !tbaa !3185
  br label %17, !dbg !3199

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3200
  br i1 %18, label %20, label %19, !dbg !3202

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3203
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3205, !tbaa !905
  br label %20, !dbg !3206

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3207, !tbaa !970
  ret void, !dbg !3208
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %1, metadata !3212, metadata !DIExpression()), !dbg !3213
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3214
  ret ptr %3, !dbg !3215
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3216 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3220, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %1, metadata !3221, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %2, metadata !3222, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata ptr %3, metadata !3223, metadata !DIExpression()), !dbg !3236
  %6 = tail call ptr @__errno_location() #43, !dbg !3237
  %7 = load i32, ptr %6, align 4, !dbg !3237, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %7, metadata !3224, metadata !DIExpression()), !dbg !3236
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3238, !tbaa !905
  call void @llvm.dbg.value(metadata ptr %8, metadata !3225, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3226, metadata !DIExpression()), !dbg !3236
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3239
  br i1 %9, label %10, label %11, !dbg !3239

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3241
  unreachable, !dbg !3241

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3242, !tbaa !970
  %13 = icmp sgt i32 %12, %0, !dbg !3243
  br i1 %13, label %32, label %14, !dbg !3244

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3245
  call void @llvm.dbg.value(metadata i1 %15, metadata !3227, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3247
  %16 = sext i32 %12 to i64, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %16, metadata !3230, metadata !DIExpression()), !dbg !3246
  store i64 %16, ptr %5, align 8, !dbg !3249, !tbaa !3169
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3250
  %18 = add nuw nsw i32 %0, 1, !dbg !3251
  %19 = sub i32 %18, %12, !dbg !3252
  %20 = sext i32 %19 to i64, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %5, metadata !3230, metadata !DIExpression(DW_OP_deref)), !dbg !3246
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %21, metadata !3225, metadata !DIExpression()), !dbg !3236
  store ptr %21, ptr @slotvec, align 8, !dbg !3255, !tbaa !905
  br i1 %15, label %22, label %23, !dbg !3256

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3257, !tbaa.struct !3259
  br label %23, !dbg !3260

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3261, !tbaa !970
  %25 = sext i32 %24 to i64, !dbg !3262
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3262
  %27 = load i64, ptr %5, align 8, !dbg !3263, !tbaa !3169
  call void @llvm.dbg.value(metadata i64 %27, metadata !3230, metadata !DIExpression()), !dbg !3246
  %28 = sub nsw i64 %27, %25, !dbg !3264
  %29 = shl i64 %28, 4, !dbg !3265
  call void @llvm.dbg.value(metadata ptr %26, metadata !2650, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %29, metadata !2654, metadata !DIExpression()), !dbg !3266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3268
  %30 = load i64, ptr %5, align 8, !dbg !3269, !tbaa !3169
  call void @llvm.dbg.value(metadata i64 %30, metadata !3230, metadata !DIExpression()), !dbg !3246
  %31 = trunc i64 %30 to i32, !dbg !3269
  store i32 %31, ptr @nslots, align 4, !dbg !3270, !tbaa !970
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3271
  br label %32, !dbg !3272

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3236
  call void @llvm.dbg.value(metadata ptr %33, metadata !3225, metadata !DIExpression()), !dbg !3236
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3273
  %36 = load i64, ptr %35, align 8, !dbg !3274, !tbaa !3197
  call void @llvm.dbg.value(metadata i64 %36, metadata !3231, metadata !DIExpression()), !dbg !3275
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3276
  %38 = load ptr, ptr %37, align 8, !dbg !3276, !tbaa !3185
  call void @llvm.dbg.value(metadata ptr %38, metadata !3233, metadata !DIExpression()), !dbg !3275
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3277
  %40 = load i32, ptr %39, align 4, !dbg !3277, !tbaa !2498
  %41 = or i32 %40, 1, !dbg !3278
  call void @llvm.dbg.value(metadata i32 %41, metadata !3234, metadata !DIExpression()), !dbg !3275
  %42 = load i32, ptr %3, align 8, !dbg !3279, !tbaa !2448
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3280
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3281
  %45 = load ptr, ptr %44, align 8, !dbg !3281, !tbaa !2519
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3282
  %47 = load ptr, ptr %46, align 8, !dbg !3282, !tbaa !2522
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %48, metadata !3235, metadata !DIExpression()), !dbg !3275
  %49 = icmp ugt i64 %36, %48, !dbg !3284
  br i1 %49, label %60, label %50, !dbg !3286

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %51, metadata !3231, metadata !DIExpression()), !dbg !3275
  store i64 %51, ptr %35, align 8, !dbg !3289, !tbaa !3197
  %52 = icmp eq ptr %38, @slot0, !dbg !3290
  br i1 %52, label %54, label %53, !dbg !3292

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3293
  br label %54, !dbg !3293

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %55, metadata !3233, metadata !DIExpression()), !dbg !3275
  store ptr %55, ptr %37, align 8, !dbg !3295, !tbaa !3185
  %56 = load i32, ptr %3, align 8, !dbg !3296, !tbaa !2448
  %57 = load ptr, ptr %44, align 8, !dbg !3297, !tbaa !2519
  %58 = load ptr, ptr %46, align 8, !dbg !3298, !tbaa !2522
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3299
  br label %60, !dbg !3300

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3275
  call void @llvm.dbg.value(metadata ptr %61, metadata !3233, metadata !DIExpression()), !dbg !3275
  store i32 %7, ptr %6, align 4, !dbg !3301, !tbaa !970
  ret ptr %61, !dbg !3302
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %1, metadata !3308, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 %2, metadata !3309, metadata !DIExpression()), !dbg !3310
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3311
  ret ptr %4, !dbg !3312
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3313 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3211, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %0, metadata !3212, metadata !DIExpression()), !dbg !3317
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3319
  ret ptr %2, !dbg !3320
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3321 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3325, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i32 0, metadata !3307, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3309, metadata !DIExpression()), !dbg !3328
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3330
  ret ptr %3, !dbg !3331
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3332 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i32 %1, metadata !3337, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata ptr %2, metadata !3338, metadata !DIExpression()), !dbg !3340
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3341
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3339, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3343), !dbg !3346
  call void @llvm.dbg.value(metadata i32 %1, metadata !3347, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3355, !alias.scope !3343
  %5 = icmp eq i32 %1, 10, !dbg !3356
  br i1 %5, label %6, label %7, !dbg !3358

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3359, !noalias !3343
  unreachable, !dbg !3359

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3360, !tbaa !2448, !alias.scope !3343
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3361
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3362
  ret ptr %8, !dbg !3363
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3364 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i32 %1, metadata !3369, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %2, metadata !3370, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i64 %3, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3374
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3372, metadata !DIExpression()), !dbg !3375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3376), !dbg !3379
  call void @llvm.dbg.value(metadata i32 %1, metadata !3347, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3352, metadata !DIExpression()), !dbg !3382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3382, !alias.scope !3376
  %6 = icmp eq i32 %1, 10, !dbg !3383
  br i1 %6, label %7, label %8, !dbg !3384

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3385, !noalias !3376
  unreachable, !dbg !3385

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3386, !tbaa !2448, !alias.scope !3376
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3387
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3388
  ret ptr %9, !dbg !3389
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3390 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %1, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 0, metadata !3336, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 %0, metadata !3337, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %1, metadata !3338, metadata !DIExpression()), !dbg !3397
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3399
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3339, metadata !DIExpression()), !dbg !3400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3401), !dbg !3404
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3407, !alias.scope !3401
  %4 = icmp eq i32 %0, 10, !dbg !3408
  br i1 %4, label %5, label %6, !dbg !3409

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3410, !noalias !3401
  unreachable, !dbg !3410

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3411, !tbaa !2448, !alias.scope !3401
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3412
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3413
  ret ptr %7, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3415 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %1, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %2, metadata !3421, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i32 0, metadata !3368, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 %0, metadata !3369, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata ptr %1, metadata !3370, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3371, metadata !DIExpression()), !dbg !3423
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3425
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3372, metadata !DIExpression()), !dbg !3426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427), !dbg !3430
  call void @llvm.dbg.value(metadata i32 %0, metadata !3347, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3433, !alias.scope !3427
  %5 = icmp eq i32 %0, 10, !dbg !3434
  br i1 %5, label %6, label %7, !dbg !3435

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3436, !noalias !3427
  unreachable, !dbg !3436

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3437, !tbaa !2448, !alias.scope !3427
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3438
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3439
  ret ptr %8, !dbg !3440
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3441 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8 %2, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3450
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3452, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %4, metadata !2465, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i8 %2, metadata !2466, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 1, metadata !2467, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i8 %2, metadata !2468, metadata !DIExpression()), !dbg !3454
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3456
  %6 = lshr i8 %2, 5, !dbg !3457
  %7 = zext i8 %6 to i64, !dbg !3457
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %8, metadata !2469, metadata !DIExpression()), !dbg !3454
  %9 = and i8 %2, 31, !dbg !3459
  %10 = zext i8 %9 to i32, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %10, metadata !2471, metadata !DIExpression()), !dbg !3454
  %11 = load i32, ptr %8, align 4, !dbg !3460, !tbaa !970
  %12 = lshr i32 %11, %10, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %12, metadata !2472, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3454
  %13 = and i32 %12, 1, !dbg !3462
  %14 = xor i32 %13, 1, !dbg !3462
  %15 = shl nuw i32 %14, %10, !dbg !3463
  %16 = xor i32 %15, %11, !dbg !3464
  store i32 %16, ptr %8, align 4, !dbg !3464, !tbaa !970
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3465
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3466
  ret ptr %17, !dbg !3467
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3468 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8 %1, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 -1, metadata !3446, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8 %1, metadata !3447, metadata !DIExpression()), !dbg !3475
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3477
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3479, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %3, metadata !2465, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 %1, metadata !2466, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 1, metadata !2467, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8 %1, metadata !2468, metadata !DIExpression()), !dbg !3480
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3482
  %5 = lshr i8 %1, 5, !dbg !3483
  %6 = zext i8 %5 to i64, !dbg !3483
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3484
  call void @llvm.dbg.value(metadata ptr %7, metadata !2469, metadata !DIExpression()), !dbg !3480
  %8 = and i8 %1, 31, !dbg !3485
  %9 = zext i8 %8 to i32, !dbg !3485
  call void @llvm.dbg.value(metadata i32 %9, metadata !2471, metadata !DIExpression()), !dbg !3480
  %10 = load i32, ptr %7, align 4, !dbg !3486, !tbaa !970
  %11 = lshr i32 %10, %9, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %11, metadata !2472, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3480
  %12 = and i32 %11, 1, !dbg !3488
  %13 = xor i32 %12, 1, !dbg !3488
  %14 = shl nuw i32 %13, %9, !dbg !3489
  %15 = xor i32 %14, %10, !dbg !3490
  store i32 %15, ptr %7, align 4, !dbg !3490, !tbaa !970
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3491
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3492
  ret ptr %16, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3494 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata ptr %0, metadata !3472, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i8 58, metadata !3473, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 -1, metadata !3446, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8 58, metadata !3447, metadata !DIExpression()), !dbg !3500
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3502
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3504, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %2, metadata !2465, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 58, metadata !2466, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !2467, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 58, metadata !2468, metadata !DIExpression()), !dbg !3505
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %3, metadata !2469, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 26, metadata !2471, metadata !DIExpression()), !dbg !3505
  %4 = load i32, ptr %3, align 4, !dbg !3508, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %4, metadata !2472, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3505
  %5 = or i32 %4, 67108864, !dbg !3509
  store i32 %5, ptr %3, align 4, !dbg !3509, !tbaa !970
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3510
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3511
  ret ptr %6, !dbg !3512
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3513 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3515, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %1, metadata !3516, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %0, metadata !3445, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.value(metadata i8 58, metadata !3447, metadata !DIExpression()), !dbg !3518
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3520
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3522, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %3, metadata !2465, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 58, metadata !2466, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 1, metadata !2467, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 58, metadata !2468, metadata !DIExpression()), !dbg !3523
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3525
  call void @llvm.dbg.value(metadata ptr %4, metadata !2469, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 26, metadata !2471, metadata !DIExpression()), !dbg !3523
  %5 = load i32, ptr %4, align 4, !dbg !3526, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %5, metadata !2472, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3523
  %6 = or i32 %5, 67108864, !dbg !3527
  store i32 %6, ptr %4, align 4, !dbg !3527, !tbaa !970
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3528
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3529
  ret ptr %7, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3531 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3352, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3537
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %1, metadata !3534, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %2, metadata !3535, metadata !DIExpression()), !dbg !3539
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3540
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3536, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i32 %1, metadata !3347, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3542
  %5 = icmp eq i32 %1, 10, !dbg !3543
  br i1 %5, label %6, label %7, !dbg !3544

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3545, !noalias !3546
  unreachable, !dbg !3545

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3542
  store i32 %1, ptr %4, align 8, !dbg !3549, !tbaa.struct !3453
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3549
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %4, metadata !2465, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2466, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 1, metadata !2467, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2468, metadata !DIExpression()), !dbg !3550
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3552
  call void @llvm.dbg.value(metadata ptr %9, metadata !2469, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 26, metadata !2471, metadata !DIExpression()), !dbg !3550
  %10 = load i32, ptr %9, align 4, !dbg !3553, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %10, metadata !2472, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3550
  %11 = or i32 %10, 67108864, !dbg !3554
  store i32 %11, ptr %9, align 4, !dbg !3554, !tbaa !970
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3555
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3556
  ret ptr %12, !dbg !3557
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3558 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr %1, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr %2, metadata !3564, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata ptr %3, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %1, metadata !3572, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %2, metadata !3573, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata ptr %3, metadata !3574, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 -1, metadata !3575, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3579
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3576, metadata !DIExpression()), !dbg !3580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3581, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %5, metadata !2505, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata ptr %5, metadata !2505, metadata !DIExpression()), !dbg !3582
  store i32 10, ptr %5, align 8, !dbg !3584, !tbaa !2448
  %6 = icmp ne ptr %1, null, !dbg !3585
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3586
  br i1 %8, label %10, label %9, !dbg !3586

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3587
  unreachable, !dbg !3587

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3588
  store ptr %1, ptr %11, align 8, !dbg !3589, !tbaa !2519
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3590
  store ptr %2, ptr %12, align 8, !dbg !3591, !tbaa !2522
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3592
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3593
  ret ptr %13, !dbg !3594
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3568 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3567, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %1, metadata !3572, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %2, metadata !3573, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %3, metadata !3574, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %4, metadata !3575, metadata !DIExpression()), !dbg !3595
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3576, metadata !DIExpression()), !dbg !3597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3598, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %6, metadata !2505, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %2, metadata !2507, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata ptr %6, metadata !2505, metadata !DIExpression()), !dbg !3599
  store i32 10, ptr %6, align 8, !dbg !3601, !tbaa !2448
  %7 = icmp ne ptr %1, null, !dbg !3602
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3603
  br i1 %9, label %11, label %10, !dbg !3603

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3604
  unreachable, !dbg !3604

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3605
  store ptr %1, ptr %12, align 8, !dbg !3606, !tbaa !2519
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3607
  store ptr %2, ptr %13, align 8, !dbg !3608, !tbaa !2522
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3610
  ret ptr %14, !dbg !3611
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3612 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %1, metadata !3617, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %2, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 0, metadata !3562, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %0, metadata !3563, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %1, metadata !3564, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata ptr %2, metadata !3565, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i32 0, metadata !3567, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %0, metadata !3572, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %1, metadata !3573, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %2, metadata !3574, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 -1, metadata !3575, metadata !DIExpression()), !dbg !3622
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3624
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3576, metadata !DIExpression()), !dbg !3625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3626, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %4, metadata !2505, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata ptr %4, metadata !2505, metadata !DIExpression()), !dbg !3627
  store i32 10, ptr %4, align 8, !dbg !3629, !tbaa !2448
  %5 = icmp ne ptr %0, null, !dbg !3630
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3631
  br i1 %7, label %9, label %8, !dbg !3631

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3632
  unreachable, !dbg !3632

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3633
  store ptr %0, ptr %10, align 8, !dbg !3634, !tbaa !2519
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3635
  store ptr %1, ptr %11, align 8, !dbg !3636, !tbaa !2522
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3637
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3638
  ret ptr %12, !dbg !3639
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3640 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %1, metadata !3645, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %2, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %3, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 0, metadata !3567, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %0, metadata !3572, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %1, metadata !3573, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %2, metadata !3574, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %3, metadata !3575, metadata !DIExpression()), !dbg !3649
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3651
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3576, metadata !DIExpression()), !dbg !3652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3653, !tbaa.struct !3453
  call void @llvm.dbg.value(metadata ptr %5, metadata !2505, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %1, metadata !2507, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %5, metadata !2505, metadata !DIExpression()), !dbg !3654
  store i32 10, ptr %5, align 8, !dbg !3656, !tbaa !2448
  %6 = icmp ne ptr %0, null, !dbg !3657
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3658
  br i1 %8, label %10, label %9, !dbg !3658

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3659
  unreachable, !dbg !3659

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3660
  store ptr %0, ptr %11, align 8, !dbg !3661, !tbaa !2519
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3662
  store ptr %1, ptr %12, align 8, !dbg !3663, !tbaa !2522
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3665
  ret ptr %13, !dbg !3666
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %2, metadata !3673, metadata !DIExpression()), !dbg !3674
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3675
  ret ptr %4, !dbg !3676
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3677 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3681, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3682, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %1, metadata !3673, metadata !DIExpression()), !dbg !3684
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3686
  ret ptr %3, !dbg !3687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3692, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %1, metadata !3672, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 -1, metadata !3673, metadata !DIExpression()), !dbg !3695
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3697
  ret ptr %3, !dbg !3698
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 0, metadata !3692, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata ptr %0, metadata !3693, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i32 0, metadata !3671, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 -1, metadata !3673, metadata !DIExpression()), !dbg !3707
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3709
  ret ptr %2, !dbg !3710
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3713, metadata !DIExpression()), !dbg !3718
  %2 = icmp ult i32 %0, 3, !dbg !3719
  br i1 %2, label %3, label %8, !dbg !3719

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #40, !dbg !3720
  call void @llvm.dbg.value(metadata i32 %4, metadata !3714, metadata !DIExpression()), !dbg !3721
  %5 = tail call ptr @__errno_location() #43, !dbg !3722
  %6 = load i32, ptr %5, align 4, !dbg !3722, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %6, metadata !3717, metadata !DIExpression()), !dbg !3721
  %7 = tail call i32 @close(i32 noundef %0) #40, !dbg !3723
  store i32 %6, ptr %5, align 4, !dbg !3724, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %4, metadata !3713, metadata !DIExpression()), !dbg !3718
  br label %8, !dbg !3725

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3713, metadata !DIExpression()), !dbg !3718
  ret i32 %9, !dbg !3726
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3765, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %1, metadata !3766, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %2, metadata !3767, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %3, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %4, metadata !3769, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 %5, metadata !3770, metadata !DIExpression()), !dbg !3771
  %7 = icmp eq ptr %1, null, !dbg !3772
  br i1 %7, label %10, label %8, !dbg !3774

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3775
  br label %12, !dbg !3775

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.135, ptr noundef %2, ptr noundef %3) #40, !dbg !3776
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.3.137, i32 noundef 5) #40, !dbg !3777
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3777
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3778
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.5.139, i32 noundef 5) #40, !dbg !3779
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.140) #40, !dbg !3779
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3780
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
  ], !dbg !3781

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.7.141, i32 noundef 5) #40, !dbg !3782
  %21 = load ptr, ptr %4, align 8, !dbg !3782, !tbaa !905
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3782
  br label %147, !dbg !3784

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.8.142, i32 noundef 5) #40, !dbg !3785
  %25 = load ptr, ptr %4, align 8, !dbg !3785, !tbaa !905
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3785
  %27 = load ptr, ptr %26, align 8, !dbg !3785, !tbaa !905
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3785
  br label %147, !dbg !3786

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.9.143, i32 noundef 5) #40, !dbg !3787
  %31 = load ptr, ptr %4, align 8, !dbg !3787, !tbaa !905
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3787
  %33 = load ptr, ptr %32, align 8, !dbg !3787, !tbaa !905
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3787
  %35 = load ptr, ptr %34, align 8, !dbg !3787, !tbaa !905
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3787
  br label %147, !dbg !3788

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.10.144, i32 noundef 5) #40, !dbg !3789
  %39 = load ptr, ptr %4, align 8, !dbg !3789, !tbaa !905
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3789
  %41 = load ptr, ptr %40, align 8, !dbg !3789, !tbaa !905
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3789
  %43 = load ptr, ptr %42, align 8, !dbg !3789, !tbaa !905
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3789
  %45 = load ptr, ptr %44, align 8, !dbg !3789, !tbaa !905
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3789
  br label %147, !dbg !3790

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.11.145, i32 noundef 5) #40, !dbg !3791
  %49 = load ptr, ptr %4, align 8, !dbg !3791, !tbaa !905
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3791
  %51 = load ptr, ptr %50, align 8, !dbg !3791, !tbaa !905
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3791
  %53 = load ptr, ptr %52, align 8, !dbg !3791, !tbaa !905
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3791
  %55 = load ptr, ptr %54, align 8, !dbg !3791, !tbaa !905
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3791
  %57 = load ptr, ptr %56, align 8, !dbg !3791, !tbaa !905
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3791
  br label %147, !dbg !3792

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.12.146, i32 noundef 5) #40, !dbg !3793
  %61 = load ptr, ptr %4, align 8, !dbg !3793, !tbaa !905
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3793
  %63 = load ptr, ptr %62, align 8, !dbg !3793, !tbaa !905
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3793
  %65 = load ptr, ptr %64, align 8, !dbg !3793, !tbaa !905
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3793
  %67 = load ptr, ptr %66, align 8, !dbg !3793, !tbaa !905
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3793
  %69 = load ptr, ptr %68, align 8, !dbg !3793, !tbaa !905
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3793
  %71 = load ptr, ptr %70, align 8, !dbg !3793, !tbaa !905
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3793
  br label %147, !dbg !3794

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.13.147, i32 noundef 5) #40, !dbg !3795
  %75 = load ptr, ptr %4, align 8, !dbg !3795, !tbaa !905
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3795
  %77 = load ptr, ptr %76, align 8, !dbg !3795, !tbaa !905
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3795
  %79 = load ptr, ptr %78, align 8, !dbg !3795, !tbaa !905
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3795
  %81 = load ptr, ptr %80, align 8, !dbg !3795, !tbaa !905
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3795
  %83 = load ptr, ptr %82, align 8, !dbg !3795, !tbaa !905
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3795
  %85 = load ptr, ptr %84, align 8, !dbg !3795, !tbaa !905
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3795
  %87 = load ptr, ptr %86, align 8, !dbg !3795, !tbaa !905
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3795
  br label %147, !dbg !3796

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.14.148, i32 noundef 5) #40, !dbg !3797
  %91 = load ptr, ptr %4, align 8, !dbg !3797, !tbaa !905
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3797
  %93 = load ptr, ptr %92, align 8, !dbg !3797, !tbaa !905
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3797
  %95 = load ptr, ptr %94, align 8, !dbg !3797, !tbaa !905
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3797
  %97 = load ptr, ptr %96, align 8, !dbg !3797, !tbaa !905
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3797
  %99 = load ptr, ptr %98, align 8, !dbg !3797, !tbaa !905
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3797
  %101 = load ptr, ptr %100, align 8, !dbg !3797, !tbaa !905
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3797
  %103 = load ptr, ptr %102, align 8, !dbg !3797, !tbaa !905
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3797
  %105 = load ptr, ptr %104, align 8, !dbg !3797, !tbaa !905
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3797
  br label %147, !dbg !3798

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.15.149, i32 noundef 5) #40, !dbg !3799
  %109 = load ptr, ptr %4, align 8, !dbg !3799, !tbaa !905
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3799
  %111 = load ptr, ptr %110, align 8, !dbg !3799, !tbaa !905
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3799
  %113 = load ptr, ptr %112, align 8, !dbg !3799, !tbaa !905
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3799
  %115 = load ptr, ptr %114, align 8, !dbg !3799, !tbaa !905
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3799
  %117 = load ptr, ptr %116, align 8, !dbg !3799, !tbaa !905
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3799
  %119 = load ptr, ptr %118, align 8, !dbg !3799, !tbaa !905
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3799
  %121 = load ptr, ptr %120, align 8, !dbg !3799, !tbaa !905
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3799
  %123 = load ptr, ptr %122, align 8, !dbg !3799, !tbaa !905
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3799
  %125 = load ptr, ptr %124, align 8, !dbg !3799, !tbaa !905
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3799
  br label %147, !dbg !3800

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.16.150, i32 noundef 5) #40, !dbg !3801
  %129 = load ptr, ptr %4, align 8, !dbg !3801, !tbaa !905
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3801
  %131 = load ptr, ptr %130, align 8, !dbg !3801, !tbaa !905
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3801
  %133 = load ptr, ptr %132, align 8, !dbg !3801, !tbaa !905
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3801
  %135 = load ptr, ptr %134, align 8, !dbg !3801, !tbaa !905
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3801
  %137 = load ptr, ptr %136, align 8, !dbg !3801, !tbaa !905
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3801
  %139 = load ptr, ptr %138, align 8, !dbg !3801, !tbaa !905
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3801
  %141 = load ptr, ptr %140, align 8, !dbg !3801, !tbaa !905
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3801
  %143 = load ptr, ptr %142, align 8, !dbg !3801, !tbaa !905
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3801
  %145 = load ptr, ptr %144, align 8, !dbg !3801, !tbaa !905
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3801
  br label %147, !dbg !3802

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3804 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %1, metadata !3809, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %2, metadata !3810, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %3, metadata !3811, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata ptr %4, metadata !3812, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 0, metadata !3813, metadata !DIExpression()), !dbg !3814
  br label %6, !dbg !3815

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3817
  call void @llvm.dbg.value(metadata i64 %7, metadata !3813, metadata !DIExpression()), !dbg !3814
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3818
  %9 = load ptr, ptr %8, align 8, !dbg !3818, !tbaa !905
  %10 = icmp eq ptr %9, null, !dbg !3820
  %11 = add i64 %7, 1, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %11, metadata !3813, metadata !DIExpression()), !dbg !3814
  br i1 %10, label %12, label %6, !dbg !3820, !llvm.loop !3822

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3824
  ret void, !dbg !3825
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3826 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3841, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %1, metadata !3842, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %2, metadata !3843, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr %3, metadata !3844, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3845, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3851
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3847, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i64 0, metadata !3846, metadata !DIExpression()), !dbg !3849
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3846, metadata !DIExpression()), !dbg !3849
  %10 = icmp sgt i32 %9, -1, !dbg !3853
  br i1 %10, label %18, label %11, !dbg !3853

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3853
  store i32 %12, ptr %7, align 8, !dbg !3853
  %13 = icmp ult i32 %9, -7, !dbg !3853
  br i1 %13, label %14, label %18, !dbg !3853

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3853
  %16 = sext i32 %9 to i64, !dbg !3853
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3853
  br label %22, !dbg !3853

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3853
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3853
  store ptr %21, ptr %4, align 8, !dbg !3853
  br label %22, !dbg !3853

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3853
  %25 = load ptr, ptr %24, align 8, !dbg !3853
  store ptr %25, ptr %6, align 8, !dbg !3856, !tbaa !905
  %26 = icmp eq ptr %25, null, !dbg !3857
  br i1 %26, label %197, label %27, !dbg !3858

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 1, metadata !3846, metadata !DIExpression()), !dbg !3849
  %28 = icmp sgt i32 %23, -1, !dbg !3853
  br i1 %28, label %36, label %29, !dbg !3853

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3853
  store i32 %30, ptr %7, align 8, !dbg !3853
  %31 = icmp ult i32 %23, -7, !dbg !3853
  br i1 %31, label %32, label %36, !dbg !3853

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3853
  %34 = sext i32 %23 to i64, !dbg !3853
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3853
  br label %40, !dbg !3853

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3853
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3853
  store ptr %39, ptr %4, align 8, !dbg !3853
  br label %40, !dbg !3853

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3853
  %43 = load ptr, ptr %42, align 8, !dbg !3853
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3859
  store ptr %43, ptr %44, align 8, !dbg !3856, !tbaa !905
  %45 = icmp eq ptr %43, null, !dbg !3857
  br i1 %45, label %197, label %46, !dbg !3858

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 2, metadata !3846, metadata !DIExpression()), !dbg !3849
  %47 = icmp sgt i32 %41, -1, !dbg !3853
  br i1 %47, label %55, label %48, !dbg !3853

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3853
  store i32 %49, ptr %7, align 8, !dbg !3853
  %50 = icmp ult i32 %41, -7, !dbg !3853
  br i1 %50, label %51, label %55, !dbg !3853

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3853
  %53 = sext i32 %41 to i64, !dbg !3853
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3853
  br label %59, !dbg !3853

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3853
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3853
  store ptr %58, ptr %4, align 8, !dbg !3853
  br label %59, !dbg !3853

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3853
  %62 = load ptr, ptr %61, align 8, !dbg !3853
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3859
  store ptr %62, ptr %63, align 8, !dbg !3856, !tbaa !905
  %64 = icmp eq ptr %62, null, !dbg !3857
  br i1 %64, label %197, label %65, !dbg !3858

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 3, metadata !3846, metadata !DIExpression()), !dbg !3849
  %66 = icmp sgt i32 %60, -1, !dbg !3853
  br i1 %66, label %74, label %67, !dbg !3853

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3853
  store i32 %68, ptr %7, align 8, !dbg !3853
  %69 = icmp ult i32 %60, -7, !dbg !3853
  br i1 %69, label %70, label %74, !dbg !3853

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3853
  %72 = sext i32 %60 to i64, !dbg !3853
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3853
  br label %78, !dbg !3853

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3853
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3853
  store ptr %77, ptr %4, align 8, !dbg !3853
  br label %78, !dbg !3853

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3853
  %81 = load ptr, ptr %80, align 8, !dbg !3853
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3859
  store ptr %81, ptr %82, align 8, !dbg !3856, !tbaa !905
  %83 = icmp eq ptr %81, null, !dbg !3857
  br i1 %83, label %197, label %84, !dbg !3858

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 4, metadata !3846, metadata !DIExpression()), !dbg !3849
  %85 = icmp sgt i32 %79, -1, !dbg !3853
  br i1 %85, label %93, label %86, !dbg !3853

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3853
  store i32 %87, ptr %7, align 8, !dbg !3853
  %88 = icmp ult i32 %79, -7, !dbg !3853
  br i1 %88, label %89, label %93, !dbg !3853

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3853
  %91 = sext i32 %79 to i64, !dbg !3853
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3853
  br label %97, !dbg !3853

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3853
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3853
  store ptr %96, ptr %4, align 8, !dbg !3853
  br label %97, !dbg !3853

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3853
  %100 = load ptr, ptr %99, align 8, !dbg !3853
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3859
  store ptr %100, ptr %101, align 8, !dbg !3856, !tbaa !905
  %102 = icmp eq ptr %100, null, !dbg !3857
  br i1 %102, label %197, label %103, !dbg !3858

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 5, metadata !3846, metadata !DIExpression()), !dbg !3849
  %104 = icmp sgt i32 %98, -1, !dbg !3853
  br i1 %104, label %112, label %105, !dbg !3853

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3853
  store i32 %106, ptr %7, align 8, !dbg !3853
  %107 = icmp ult i32 %98, -7, !dbg !3853
  br i1 %107, label %108, label %112, !dbg !3853

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3853
  %110 = sext i32 %98 to i64, !dbg !3853
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3853
  br label %116, !dbg !3853

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3853
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3853
  store ptr %115, ptr %4, align 8, !dbg !3853
  br label %116, !dbg !3853

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3853
  %119 = load ptr, ptr %118, align 8, !dbg !3853
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3859
  store ptr %119, ptr %120, align 8, !dbg !3856, !tbaa !905
  %121 = icmp eq ptr %119, null, !dbg !3857
  br i1 %121, label %197, label %122, !dbg !3858

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 6, metadata !3846, metadata !DIExpression()), !dbg !3849
  %123 = icmp sgt i32 %117, -1, !dbg !3853
  br i1 %123, label %131, label %124, !dbg !3853

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3853
  store i32 %125, ptr %7, align 8, !dbg !3853
  %126 = icmp ult i32 %117, -7, !dbg !3853
  br i1 %126, label %127, label %131, !dbg !3853

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3853
  %129 = sext i32 %117 to i64, !dbg !3853
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3853
  br label %135, !dbg !3853

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3853
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3853
  store ptr %134, ptr %4, align 8, !dbg !3853
  br label %135, !dbg !3853

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3853
  %138 = load ptr, ptr %137, align 8, !dbg !3853
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3859
  store ptr %138, ptr %139, align 8, !dbg !3856, !tbaa !905
  %140 = icmp eq ptr %138, null, !dbg !3857
  br i1 %140, label %197, label %141, !dbg !3858

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 7, metadata !3846, metadata !DIExpression()), !dbg !3849
  %142 = icmp sgt i32 %136, -1, !dbg !3853
  br i1 %142, label %150, label %143, !dbg !3853

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3853
  store i32 %144, ptr %7, align 8, !dbg !3853
  %145 = icmp ult i32 %136, -7, !dbg !3853
  br i1 %145, label %146, label %150, !dbg !3853

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3853
  %148 = sext i32 %136 to i64, !dbg !3853
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3853
  br label %154, !dbg !3853

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3853
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3853
  store ptr %153, ptr %4, align 8, !dbg !3853
  br label %154, !dbg !3853

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3853
  %157 = load ptr, ptr %156, align 8, !dbg !3853
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3859
  store ptr %157, ptr %158, align 8, !dbg !3856, !tbaa !905
  %159 = icmp eq ptr %157, null, !dbg !3857
  br i1 %159, label %197, label %160, !dbg !3858

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 8, metadata !3846, metadata !DIExpression()), !dbg !3849
  %161 = icmp sgt i32 %155, -1, !dbg !3853
  br i1 %161, label %169, label %162, !dbg !3853

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3853
  store i32 %163, ptr %7, align 8, !dbg !3853
  %164 = icmp ult i32 %155, -7, !dbg !3853
  br i1 %164, label %165, label %169, !dbg !3853

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3853
  %167 = sext i32 %155 to i64, !dbg !3853
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3853
  br label %173, !dbg !3853

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3853
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3853
  store ptr %172, ptr %4, align 8, !dbg !3853
  br label %173, !dbg !3853

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3853
  %176 = load ptr, ptr %175, align 8, !dbg !3853
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3859
  store ptr %176, ptr %177, align 8, !dbg !3856, !tbaa !905
  %178 = icmp eq ptr %176, null, !dbg !3857
  br i1 %178, label %197, label %179, !dbg !3858

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 9, metadata !3846, metadata !DIExpression()), !dbg !3849
  %180 = icmp sgt i32 %174, -1, !dbg !3853
  br i1 %180, label %188, label %181, !dbg !3853

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3853
  store i32 %182, ptr %7, align 8, !dbg !3853
  %183 = icmp ult i32 %174, -7, !dbg !3853
  br i1 %183, label %184, label %188, !dbg !3853

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3853
  %186 = sext i32 %174 to i64, !dbg !3853
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3853
  br label %191, !dbg !3853

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3853
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3853
  store ptr %190, ptr %4, align 8, !dbg !3853
  br label %191, !dbg !3853

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3853
  %193 = load ptr, ptr %192, align 8, !dbg !3853
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3859
  store ptr %193, ptr %194, align 8, !dbg !3856, !tbaa !905
  %195 = icmp eq ptr %193, null, !dbg !3857
  %196 = select i1 %195, i64 9, i64 10, !dbg !3858
  br label %197, !dbg !3858

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3860
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3861
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3862
  ret void, !dbg !3862
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3863 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %1, metadata !3868, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %2, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %3, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3873
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3871, metadata !DIExpression()), !dbg !3874
  call void @llvm.va_start(ptr nonnull %5), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !3876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3876, !tbaa.struct !2006
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3876
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !3876
  call void @llvm.va_end(ptr nonnull %5), !dbg !3877
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3878
  ret void, !dbg !3878
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3879 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3880, !tbaa !905
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %1), !dbg !3880
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.17.155, i32 noundef 5) #40, !dbg !3881
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.156) #40, !dbg !3881
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.19.157, i32 noundef 5) #40, !dbg !3882
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.158, ptr noundef nonnull @.str.21.159) #40, !dbg !3882
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.22.160, i32 noundef 5) #40, !dbg !3883
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.161) #40, !dbg !3883
  ret void, !dbg !3884
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %1, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i64 %2, metadata !3892, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i64 %2, metadata !3898, metadata !DIExpression()), !dbg !3899
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3901
  call void @llvm.dbg.value(metadata ptr %4, metadata !3902, metadata !DIExpression()), !dbg !3907
  %5 = icmp eq ptr %4, null, !dbg !3909
  br i1 %5, label %6, label %7, !dbg !3911

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3912
  unreachable, !dbg !3912

7:                                                ; preds = %3
  ret ptr %4, !dbg !3913
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3895 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %1, metadata !3897, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %2, metadata !3898, metadata !DIExpression()), !dbg !3914
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3915
  call void @llvm.dbg.value(metadata ptr %4, metadata !3902, metadata !DIExpression()), !dbg !3916
  %5 = icmp eq ptr %4, null, !dbg !3918
  br i1 %5, label %6, label %7, !dbg !3919

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3920
  unreachable, !dbg !3920

7:                                                ; preds = %3
  ret ptr %4, !dbg !3921
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3922 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3926, metadata !DIExpression()), !dbg !3927
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !3928
  call void @llvm.dbg.value(metadata ptr %2, metadata !3902, metadata !DIExpression()), !dbg !3929
  %3 = icmp eq ptr %2, null, !dbg !3931
  br i1 %3, label %4, label %5, !dbg !3932

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3933
  unreachable, !dbg !3933

5:                                                ; preds = %1
  ret ptr %2, !dbg !3934
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3935 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3936 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %0, metadata !3942, metadata !DIExpression()), !dbg !3946
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !3948
  call void @llvm.dbg.value(metadata ptr %2, metadata !3902, metadata !DIExpression()), !dbg !3949
  %3 = icmp eq ptr %2, null, !dbg !3951
  br i1 %3, label %4, label %5, !dbg !3952

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3953
  unreachable, !dbg !3953

5:                                                ; preds = %1
  ret ptr %2, !dbg !3954
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3955 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i64 %0, metadata !3926, metadata !DIExpression()), !dbg !3961
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %2, metadata !3902, metadata !DIExpression()), !dbg !3964
  %3 = icmp eq ptr %2, null, !dbg !3966
  br i1 %3, label %4, label %5, !dbg !3967

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3968
  unreachable, !dbg !3968

5:                                                ; preds = %1
  ret ptr %2, !dbg !3969
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3970 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i64 %1, metadata !3975, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !3982
  %3 = icmp eq i64 %1, 0, !dbg !3984
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3984
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !3985
  call void @llvm.dbg.value(metadata ptr %5, metadata !3902, metadata !DIExpression()), !dbg !3986
  %6 = icmp eq ptr %5, null, !dbg !3988
  br i1 %6, label %7, label %8, !dbg !3989

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3990
  unreachable, !dbg !3990

8:                                                ; preds = %2
  ret ptr %5, !dbg !3991
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3992 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3993 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %1, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata ptr %0, metadata !4000, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !4006
  %3 = icmp eq i64 %1, 0, !dbg !4008
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4008
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4009
  call void @llvm.dbg.value(metadata ptr %5, metadata !3902, metadata !DIExpression()), !dbg !4010
  %6 = icmp eq ptr %5, null, !dbg !4012
  br i1 %6, label %7, label %8, !dbg !4013

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4014
  unreachable, !dbg !4014

8:                                                ; preds = %2
  ret ptr %5, !dbg !4015
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4016 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %1, metadata !4021, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %2, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %1, metadata !4027, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %2, metadata !4028, metadata !DIExpression()), !dbg !4029
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4031
  call void @llvm.dbg.value(metadata ptr %4, metadata !3902, metadata !DIExpression()), !dbg !4032
  %5 = icmp eq ptr %4, null, !dbg !4034
  br i1 %5, label %6, label %7, !dbg !4035

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4036
  unreachable, !dbg !4036

7:                                                ; preds = %3
  ret ptr %4, !dbg !4037
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4038 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4042, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %1, metadata !4043, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata ptr null, metadata !3894, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %0, metadata !3897, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3898, metadata !DIExpression()), !dbg !4045
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4047
  call void @llvm.dbg.value(metadata ptr %3, metadata !3902, metadata !DIExpression()), !dbg !4048
  %4 = icmp eq ptr %3, null, !dbg !4050
  br i1 %4, label %5, label %6, !dbg !4051

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4052
  unreachable, !dbg !4052

6:                                                ; preds = %2
  ret ptr %3, !dbg !4053
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4054 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4058, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %1, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata ptr null, metadata !4020, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %0, metadata !4021, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 %1, metadata !4022, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata ptr null, metadata !4024, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i64 %0, metadata !4027, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i64 %1, metadata !4028, metadata !DIExpression()), !dbg !4063
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4065
  call void @llvm.dbg.value(metadata ptr %3, metadata !3902, metadata !DIExpression()), !dbg !4066
  %4 = icmp eq ptr %3, null, !dbg !4068
  br i1 %4, label %5, label %6, !dbg !4069

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4070
  unreachable, !dbg !4070

6:                                                ; preds = %2
  ret ptr %3, !dbg !4071
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4072 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4076, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %1, metadata !4077, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %0, metadata !842, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr %1, metadata !843, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 1, metadata !844, metadata !DIExpression()), !dbg !4079
  %3 = load i64, ptr %1, align 8, !dbg !4081, !tbaa !3169
  call void @llvm.dbg.value(metadata i64 %3, metadata !845, metadata !DIExpression()), !dbg !4079
  %4 = icmp eq ptr %0, null, !dbg !4082
  br i1 %4, label %5, label %8, !dbg !4084

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4085
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4088
  br label %15, !dbg !4088

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4089
  %10 = add nuw i64 %9, 1, !dbg !4089
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4089
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4089
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %13, metadata !845, metadata !DIExpression()), !dbg !4079
  br i1 %12, label %14, label %15, !dbg !4092

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4093
  unreachable, !dbg !4093

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4079
  call void @llvm.dbg.value(metadata i64 %16, metadata !845, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %16, metadata !3897, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 1, metadata !3898, metadata !DIExpression()), !dbg !4094
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %17, metadata !3902, metadata !DIExpression()), !dbg !4097
  %18 = icmp eq ptr %17, null, !dbg !4099
  br i1 %18, label %19, label %20, !dbg !4100

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4101
  unreachable, !dbg !4101

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !842, metadata !DIExpression()), !dbg !4079
  store i64 %16, ptr %1, align 8, !dbg !4102, !tbaa !3169
  ret ptr %17, !dbg !4103
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !837 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !842, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %1, metadata !843, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %2, metadata !844, metadata !DIExpression()), !dbg !4104
  %4 = load i64, ptr %1, align 8, !dbg !4105, !tbaa !3169
  call void @llvm.dbg.value(metadata i64 %4, metadata !845, metadata !DIExpression()), !dbg !4104
  %5 = icmp eq ptr %0, null, !dbg !4106
  br i1 %5, label %6, label %13, !dbg !4107

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4108
  br i1 %7, label %8, label %20, !dbg !4109

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4110
  call void @llvm.dbg.value(metadata i64 %9, metadata !845, metadata !DIExpression()), !dbg !4104
  %10 = icmp ugt i64 %2, 128, !dbg !4112
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %12, metadata !845, metadata !DIExpression()), !dbg !4104
  br label %20, !dbg !4114

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4115
  %15 = add nuw i64 %14, 1, !dbg !4115
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4115
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4115
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %18, metadata !845, metadata !DIExpression()), !dbg !4104
  br i1 %17, label %19, label %20, !dbg !4116

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4117
  unreachable, !dbg !4117

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4104
  call void @llvm.dbg.value(metadata i64 %21, metadata !845, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %0, metadata !3894, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %21, metadata !3897, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata i64 %2, metadata !3898, metadata !DIExpression()), !dbg !4118
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4120
  call void @llvm.dbg.value(metadata ptr %22, metadata !3902, metadata !DIExpression()), !dbg !4121
  %23 = icmp eq ptr %22, null, !dbg !4123
  br i1 %23, label %24, label %25, !dbg !4124

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4125
  unreachable, !dbg !4125

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !842, metadata !DIExpression()), !dbg !4104
  store i64 %21, ptr %1, align 8, !dbg !4126, !tbaa !3169
  ret ptr %22, !dbg !4127
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !849 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !857, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %1, metadata !858, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %2, metadata !859, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %3, metadata !860, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %4, metadata !861, metadata !DIExpression()), !dbg !4128
  %6 = load i64, ptr %1, align 8, !dbg !4129, !tbaa !3169
  call void @llvm.dbg.value(metadata i64 %6, metadata !862, metadata !DIExpression()), !dbg !4128
  %7 = ashr i64 %6, 1, !dbg !4130
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4130
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4130
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %10, metadata !863, metadata !DIExpression()), !dbg !4128
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4132
  call void @llvm.dbg.value(metadata i64 %11, metadata !863, metadata !DIExpression()), !dbg !4128
  %12 = icmp sgt i64 %3, -1, !dbg !4133
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4135
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %15, metadata !863, metadata !DIExpression()), !dbg !4128
  %16 = icmp slt i64 %4, 0, !dbg !4136
  br i1 %16, label %17, label %30, !dbg !4136

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4136
  br i1 %18, label %19, label %24, !dbg !4136

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4136
  %21 = udiv i64 9223372036854775807, %20, !dbg !4136
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4136
  br i1 %23, label %46, label %43, !dbg !4136

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4136
  br i1 %25, label %43, label %26, !dbg !4136

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4136
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4136
  %29 = icmp ult i64 %28, %15, !dbg !4136
  br i1 %29, label %46, label %43, !dbg !4136

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4136
  br i1 %31, label %43, label %32, !dbg !4136

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4136
  br i1 %33, label %34, label %40, !dbg !4136

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4136
  br i1 %35, label %43, label %36, !dbg !4136

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4136
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4136
  %39 = icmp ult i64 %38, %4, !dbg !4136
  br i1 %39, label %46, label %43, !dbg !4136

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4136
  br i1 %42, label %46, label %43, !dbg !4136

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !864, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4128
  %44 = mul i64 %15, %4, !dbg !4136
  call void @llvm.dbg.value(metadata i64 %44, metadata !864, metadata !DIExpression()), !dbg !4128
  %45 = icmp slt i64 %44, 128, !dbg !4136
  br i1 %45, label %46, label %52, !dbg !4136

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !865, metadata !DIExpression()), !dbg !4128
  %48 = sdiv i64 %47, %4, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %48, metadata !863, metadata !DIExpression()), !dbg !4128
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4140
  call void @llvm.dbg.value(metadata i64 %51, metadata !864, metadata !DIExpression()), !dbg !4128
  br label %52, !dbg !4141

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4128
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4128
  call void @llvm.dbg.value(metadata i64 %54, metadata !864, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %53, metadata !863, metadata !DIExpression()), !dbg !4128
  %55 = icmp eq ptr %0, null, !dbg !4142
  br i1 %55, label %56, label %57, !dbg !4144

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4145, !tbaa !3169
  br label %57, !dbg !4146

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4147
  %59 = icmp slt i64 %58, %2, !dbg !4149
  br i1 %59, label %60, label %97, !dbg !4150

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4151
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4151
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %63, metadata !863, metadata !DIExpression()), !dbg !4128
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4152
  br i1 %66, label %96, label %67, !dbg !4152

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4153

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4153
  br i1 %69, label %70, label %75, !dbg !4153

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4153
  %72 = udiv i64 9223372036854775807, %71, !dbg !4153
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4153
  br i1 %74, label %96, label %94, !dbg !4153

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4153
  br i1 %76, label %94, label %77, !dbg !4153

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4153
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4153
  %80 = icmp ult i64 %79, %63, !dbg !4153
  br i1 %80, label %96, label %94, !dbg !4153

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4153
  br i1 %82, label %94, label %83, !dbg !4153

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4153
  br i1 %84, label %85, label %91, !dbg !4153

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4153
  br i1 %86, label %94, label %87, !dbg !4153

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4153
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4153
  %90 = icmp ult i64 %89, %4, !dbg !4153
  br i1 %90, label %96, label %94, !dbg !4153

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4153
  br i1 %93, label %96, label %94, !dbg !4153

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !864, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4128
  %95 = mul i64 %63, %4, !dbg !4153
  call void @llvm.dbg.value(metadata i64 %95, metadata !864, metadata !DIExpression()), !dbg !4128
  br label %97, !dbg !4154

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #42, !dbg !4155
  unreachable, !dbg !4155

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4128
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4128
  call void @llvm.dbg.value(metadata i64 %99, metadata !864, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %98, metadata !863, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata ptr %0, metadata !3974, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i64 %99, metadata !3975, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 %99, metadata !3981, metadata !DIExpression()), !dbg !4158
  %100 = icmp eq i64 %99, 0, !dbg !4160
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4160
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #47, !dbg !4161
  call void @llvm.dbg.value(metadata ptr %102, metadata !3902, metadata !DIExpression()), !dbg !4162
  %103 = icmp eq ptr %102, null, !dbg !4164
  br i1 %103, label %104, label %105, !dbg !4165

104:                                              ; preds = %97
  tail call void @xalloc_die() #42, !dbg !4166
  unreachable, !dbg !4166

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !857, metadata !DIExpression()), !dbg !4128
  store i64 %98, ptr %1, align 8, !dbg !4167, !tbaa !3169
  ret ptr %102, !dbg !4168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4169 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4171, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i64 1, metadata !4176, metadata !DIExpression()), !dbg !4177
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4179
  call void @llvm.dbg.value(metadata ptr %2, metadata !3902, metadata !DIExpression()), !dbg !4180
  %3 = icmp eq ptr %2, null, !dbg !4182
  br i1 %3, label %4, label %5, !dbg !4183

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4184
  unreachable, !dbg !4184

5:                                                ; preds = %1
  ret ptr %2, !dbg !4185
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4186 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4174 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4173, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata i64 %1, metadata !4176, metadata !DIExpression()), !dbg !4187
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4188
  call void @llvm.dbg.value(metadata ptr %3, metadata !3902, metadata !DIExpression()), !dbg !4189
  %4 = icmp eq ptr %3, null, !dbg !4191
  br i1 %4, label %5, label %6, !dbg !4192

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4193
  unreachable, !dbg !4193

6:                                                ; preds = %2
  ret ptr %3, !dbg !4194
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4195 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i64 %0, metadata !4199, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 1, metadata !4202, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i64 1, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i64 1, metadata !4208, metadata !DIExpression()), !dbg !4209
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4211
  call void @llvm.dbg.value(metadata ptr %2, metadata !3902, metadata !DIExpression()), !dbg !4212
  %3 = icmp eq ptr %2, null, !dbg !4214
  br i1 %3, label %4, label %5, !dbg !4215

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4216
  unreachable, !dbg !4216

5:                                                ; preds = %1
  ret ptr %2, !dbg !4217
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4200 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4199, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %1, metadata !4202, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %1, metadata !4208, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %1, metadata !4208, metadata !DIExpression()), !dbg !4219
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4221
  call void @llvm.dbg.value(metadata ptr %3, metadata !3902, metadata !DIExpression()), !dbg !4222
  %4 = icmp eq ptr %3, null, !dbg !4224
  br i1 %4, label %5, label %6, !dbg !4225

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4226
  unreachable, !dbg !4226

6:                                                ; preds = %2
  ret ptr %3, !dbg !4227
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4228 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4232, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3926, metadata !DIExpression()), !dbg !4235
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %3, metadata !3902, metadata !DIExpression()), !dbg !4238
  %4 = icmp eq ptr %3, null, !dbg !4240
  br i1 %4, label %5, label %6, !dbg !4241

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4242
  unreachable, !dbg !4242

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4243, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4251
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4253
  ret ptr %3, !dbg !4254
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4259, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %1, metadata !4260, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.value(metadata i64 %1, metadata !3940, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !3942, metadata !DIExpression()), !dbg !4264
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4266
  call void @llvm.dbg.value(metadata ptr %3, metadata !3902, metadata !DIExpression()), !dbg !4267
  %4 = icmp eq ptr %3, null, !dbg !4269
  br i1 %4, label %5, label %6, !dbg !4270

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4271
  unreachable, !dbg !4271

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4243, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4274
  ret ptr %3, !dbg !4275
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4276 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4280, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata i64 %1, metadata !4281, metadata !DIExpression()), !dbg !4283
  %3 = add nsw i64 %1, 1, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %3, metadata !3940, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %3, metadata !3942, metadata !DIExpression()), !dbg !4287
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %4, metadata !3902, metadata !DIExpression()), !dbg !4290
  %5 = icmp eq ptr %4, null, !dbg !4292
  br i1 %5, label %6, label %7, !dbg !4293

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4294
  unreachable, !dbg !4294

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4282, metadata !DIExpression()), !dbg !4283
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4295
  store i8 0, ptr %8, align 1, !dbg !4296, !tbaa !979
  call void @llvm.dbg.value(metadata ptr %4, metadata !4243, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 %1, metadata !4250, metadata !DIExpression()), !dbg !4297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4299
  ret ptr %4, !dbg !4300
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4301 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4303, metadata !DIExpression()), !dbg !4304
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4305
  %3 = add i64 %2, 1, !dbg !4306
  call void @llvm.dbg.value(metadata ptr %0, metadata !4232, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %3, metadata !4233, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i64 %3, metadata !3926, metadata !DIExpression()), !dbg !4309
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4311
  call void @llvm.dbg.value(metadata ptr %4, metadata !3902, metadata !DIExpression()), !dbg !4312
  %5 = icmp eq ptr %4, null, !dbg !4314
  br i1 %5, label %6, label %7, !dbg !4315

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4316
  unreachable, !dbg !4316

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4243, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata ptr %0, metadata !4249, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %3, metadata !4250, metadata !DIExpression()), !dbg !4317
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4319
  ret ptr %4, !dbg !4320
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4321 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4325, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %1, metadata !4323, metadata !DIExpression()), !dbg !4326
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.174, ptr noundef nonnull @.str.2.175, i32 noundef 5) #40, !dbg !4325
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.176, ptr noundef %2) #40, !dbg !4325
  %3 = icmp eq i32 %1, 0, !dbg !4325
  tail call void @llvm.assume(i1 %3), !dbg !4325
  tail call void @abort() #42, !dbg !4327
  unreachable, !dbg !4327
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4366, metadata !DIExpression()), !dbg !4371
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4372
  call void @llvm.dbg.value(metadata i1 poison, metadata !4367, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4371
  call void @llvm.dbg.value(metadata ptr %0, metadata !4373, metadata !DIExpression()), !dbg !4376
  %3 = load i32, ptr %0, align 8, !dbg !4378, !tbaa !4379
  %4 = and i32 %3, 32, !dbg !4380
  %5 = icmp eq i32 %4, 0, !dbg !4380
  call void @llvm.dbg.value(metadata i1 %5, metadata !4369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4371
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4381
  %7 = icmp eq i32 %6, 0, !dbg !4382
  call void @llvm.dbg.value(metadata i1 %7, metadata !4370, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4371
  br i1 %5, label %8, label %18, !dbg !4383

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4385
  call void @llvm.dbg.value(metadata i1 %9, metadata !4367, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4371
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4386
  %11 = xor i1 %7, true, !dbg !4386
  %12 = sext i1 %11 to i32, !dbg !4386
  br i1 %10, label %21, label %13, !dbg !4386

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4387
  %15 = load i32, ptr %14, align 4, !dbg !4387, !tbaa !970
  %16 = icmp ne i32 %15, 9, !dbg !4388
  %17 = sext i1 %16 to i32, !dbg !4389
  br label %21, !dbg !4389

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4390

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4392
  store i32 0, ptr %20, align 4, !dbg !4394, !tbaa !970
  br label %21, !dbg !4392

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4371
  ret i32 %22, !dbg !4395
}

; Function Attrs: nounwind
declare !dbg !4396 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4400 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4438, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4439, metadata !DIExpression()), !dbg !4442
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4443
  call void @llvm.dbg.value(metadata i32 %2, metadata !4440, metadata !DIExpression()), !dbg !4442
  %3 = icmp slt i32 %2, 0, !dbg !4444
  br i1 %3, label %4, label %6, !dbg !4446

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4447
  br label %24, !dbg !4448

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4449
  %8 = icmp eq i32 %7, 0, !dbg !4449
  br i1 %8, label %13, label %9, !dbg !4451

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4452
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4453
  %12 = icmp eq i64 %11, -1, !dbg !4454
  br i1 %12, label %16, label %13, !dbg !4455

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4456
  %15 = icmp eq i32 %14, 0, !dbg !4456
  br i1 %15, label %16, label %18, !dbg !4457

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4439, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4441, metadata !DIExpression()), !dbg !4442
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %17, metadata !4441, metadata !DIExpression()), !dbg !4442
  br label %24, !dbg !4459

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4460
  %20 = load i32, ptr %19, align 4, !dbg !4460, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %20, metadata !4439, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4441, metadata !DIExpression()), !dbg !4442
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4458
  call void @llvm.dbg.value(metadata i32 %21, metadata !4441, metadata !DIExpression()), !dbg !4442
  %22 = icmp eq i32 %20, 0, !dbg !4461
  br i1 %22, label %24, label %23, !dbg !4459

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4463, !tbaa !970
  call void @llvm.dbg.value(metadata i32 -1, metadata !4441, metadata !DIExpression()), !dbg !4442
  br label %24, !dbg !4465

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4442
  ret i32 %25, !dbg !4466
}

; Function Attrs: nofree nounwind
declare !dbg !4467 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4468 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4469 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4510, metadata !DIExpression()), !dbg !4511
  %2 = icmp eq ptr %0, null, !dbg !4512
  br i1 %2, label %6, label %3, !dbg !4514

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4515
  %5 = icmp eq i32 %4, 0, !dbg !4515
  br i1 %5, label %6, label %8, !dbg !4516

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4517
  br label %16, !dbg !4518

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4519, metadata !DIExpression()), !dbg !4524
  %9 = load i32, ptr %0, align 8, !dbg !4526, !tbaa !4379
  %10 = and i32 %9, 256, !dbg !4528
  %11 = icmp eq i32 %10, 0, !dbg !4528
  br i1 %11, label %14, label %12, !dbg !4529

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4530
  br label %14, !dbg !4530

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4531
  br label %16, !dbg !4532

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4511
  ret i32 %17, !dbg !4533
}

; Function Attrs: nofree nounwind
declare !dbg !4534 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4535 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4573, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i64 %1, metadata !4574, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i32 %2, metadata !4575, metadata !DIExpression()), !dbg !4579
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4580
  %5 = load ptr, ptr %4, align 8, !dbg !4580, !tbaa !4581
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4582
  %7 = load ptr, ptr %6, align 8, !dbg !4582, !tbaa !4583
  %8 = icmp eq ptr %5, %7, !dbg !4584
  br i1 %8, label %9, label %27, !dbg !4585

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4586
  %11 = load ptr, ptr %10, align 8, !dbg !4586, !tbaa !1818
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4587
  %13 = load ptr, ptr %12, align 8, !dbg !4587, !tbaa !4588
  %14 = icmp eq ptr %11, %13, !dbg !4589
  br i1 %14, label %15, label %27, !dbg !4590

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4591
  %17 = load ptr, ptr %16, align 8, !dbg !4591, !tbaa !4592
  %18 = icmp eq ptr %17, null, !dbg !4593
  br i1 %18, label %19, label %27, !dbg !4594

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4595
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4596
  call void @llvm.dbg.value(metadata i64 %21, metadata !4576, metadata !DIExpression()), !dbg !4597
  %22 = icmp eq i64 %21, -1, !dbg !4598
  br i1 %22, label %29, label %23, !dbg !4600

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4601, !tbaa !4379
  %25 = and i32 %24, -17, !dbg !4601
  store i32 %25, ptr %0, align 8, !dbg !4601, !tbaa !4379
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4602
  store i64 %21, ptr %26, align 8, !dbg !4603, !tbaa !4604
  br label %29, !dbg !4605

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4606
  br label %29, !dbg !4607

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4579
  ret i32 %30, !dbg !4608
}

; Function Attrs: nofree nounwind
declare !dbg !4609 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4612 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4617, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr %1, metadata !4618, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata i64 %2, metadata !4619, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr %3, metadata !4620, metadata !DIExpression()), !dbg !4622
  %5 = icmp eq ptr %1, null, !dbg !4623
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4625
  %7 = select i1 %5, ptr @.str.187, ptr %1, !dbg !4625
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4625
  call void @llvm.dbg.value(metadata i64 %8, metadata !4619, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr %7, metadata !4618, metadata !DIExpression()), !dbg !4622
  call void @llvm.dbg.value(metadata ptr %6, metadata !4617, metadata !DIExpression()), !dbg !4622
  %9 = icmp eq ptr %3, null, !dbg !4626
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4628
  call void @llvm.dbg.value(metadata ptr %10, metadata !4620, metadata !DIExpression()), !dbg !4622
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !4629
  call void @llvm.dbg.value(metadata i64 %11, metadata !4621, metadata !DIExpression()), !dbg !4622
  %12 = icmp ult i64 %11, -3, !dbg !4630
  br i1 %12, label %13, label %17, !dbg !4632

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !4633
  %15 = icmp eq i32 %14, 0, !dbg !4633
  br i1 %15, label %16, label %29, !dbg !4634

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4635, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata ptr %10, metadata !4642, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4645, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i64 8, metadata !4646, metadata !DIExpression()), !dbg !4647
  store i64 0, ptr %10, align 1, !dbg !4649
  br label %29, !dbg !4650

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4651
  br i1 %18, label %19, label %20, !dbg !4653

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4654
  unreachable, !dbg !4654

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4655

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4657
  br i1 %23, label %29, label %24, !dbg !4658

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4659
  br i1 %25, label %29, label %26, !dbg !4662

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4663, !tbaa !979
  %28 = zext i8 %27 to i32, !dbg !4664
  store i32 %28, ptr %6, align 4, !dbg !4665, !tbaa !970
  br label %29, !dbg !4666

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4622
  ret i64 %30, !dbg !4667
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4668 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4674 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4676, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %1, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %2, metadata !4678, metadata !DIExpression()), !dbg !4680
  %4 = icmp eq i64 %2, 0, !dbg !4681
  br i1 %4, label %8, label %5, !dbg !4681

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4681
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4681
  br i1 %7, label %13, label %8, !dbg !4681

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4680
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4680
  %9 = mul i64 %2, %1, !dbg !4681
  call void @llvm.dbg.value(metadata i64 %9, metadata !4679, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata ptr %0, metadata !4683, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 %9, metadata !4686, metadata !DIExpression()), !dbg !4687
  %10 = icmp eq i64 %9, 0, !dbg !4689
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4689
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !4690
  br label %15, !dbg !4691

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4679, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4680
  %14 = tail call ptr @__errno_location() #43, !dbg !4692
  store i32 12, ptr %14, align 4, !dbg !4694, !tbaa !970
  br label %15, !dbg !4695

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4680
  ret ptr %16, !dbg !4696
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4697 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4699, metadata !DIExpression()), !dbg !4700
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #40, !dbg !4701
  ret i32 %2, !dbg !4702
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4703 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4705, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata i32 %1, metadata !4706, metadata !DIExpression()), !dbg !4730
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !4731
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4707, metadata !DIExpression()), !dbg !4732
  call void @llvm.va_start(ptr nonnull %3), !dbg !4733
  call void @llvm.dbg.value(metadata i32 -1, metadata !4718, metadata !DIExpression()), !dbg !4730
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
  ], !dbg !4734

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4735
  %6 = load i32, ptr %5, align 8, !dbg !4735
  %7 = icmp sgt i32 %6, -1, !dbg !4735
  br i1 %7, label %16, label %8, !dbg !4735

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !4735
  store i32 %9, ptr %5, align 8, !dbg !4735
  %10 = icmp ult i32 %6, -7, !dbg !4735
  br i1 %10, label %11, label %16, !dbg !4735

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4735
  %13 = load ptr, ptr %12, align 8, !dbg !4735
  %14 = sext i32 %6 to i64, !dbg !4735
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4735
  br label %19, !dbg !4735

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !4735
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !4735
  store ptr %18, ptr %3, align 8, !dbg !4735
  br label %19, !dbg !4735

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !4735
  %21 = load i32, ptr %20, align 8, !dbg !4735
  call void @llvm.dbg.value(metadata i32 %21, metadata !4719, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 %0, metadata !4737, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %21, metadata !4740, metadata !DIExpression()), !dbg !4742
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #40, !dbg !4744
  call void @llvm.dbg.value(metadata i32 %22, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i32 %22, metadata !4718, metadata !DIExpression()), !dbg !4730
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4745
  %25 = load i32, ptr %24, align 8, !dbg !4745
  %26 = icmp sgt i32 %25, -1, !dbg !4745
  br i1 %26, label %35, label %27, !dbg !4745

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !4745
  store i32 %28, ptr %24, align 8, !dbg !4745
  %29 = icmp ult i32 %25, -7, !dbg !4745
  br i1 %29, label %30, label %35, !dbg !4745

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4745
  %32 = load ptr, ptr %31, align 8, !dbg !4745
  %33 = sext i32 %25 to i64, !dbg !4745
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !4745
  br label %38, !dbg !4745

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !4745
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !4745
  store ptr %37, ptr %3, align 8, !dbg !4745
  br label %38, !dbg !4745

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !4745
  %40 = load i32, ptr %39, align 8, !dbg !4745
  call void @llvm.dbg.value(metadata i32 %40, metadata !4722, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %0, metadata !799, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 %40, metadata !800, metadata !DIExpression()), !dbg !4747
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4749, !tbaa !970
  %42 = icmp sgt i32 %41, -1, !dbg !4751
  br i1 %42, label %43, label %55, !dbg !4752

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #40, !dbg !4753
  call void @llvm.dbg.value(metadata i32 %44, metadata !801, metadata !DIExpression()), !dbg !4747
  %45 = icmp sgt i32 %44, -1, !dbg !4755
  br i1 %45, label %50, label %46, !dbg !4757

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #43, !dbg !4758
  %48 = load i32, ptr %47, align 4, !dbg !4758, !tbaa !970
  %49 = icmp eq i32 %48, 22, !dbg !4759
  br i1 %49, label %51, label %50, !dbg !4760

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4761, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %44, metadata !801, metadata !DIExpression()), !dbg !4747
  br label %115, !dbg !4763

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !4737, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 %40, metadata !4740, metadata !DIExpression()), !dbg !4764
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !4767
  call void @llvm.dbg.value(metadata i32 %52, metadata !4741, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 %52, metadata !801, metadata !DIExpression()), !dbg !4747
  %53 = icmp sgt i32 %52, -1, !dbg !4768
  br i1 %53, label %54, label %115, !dbg !4770

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4771, !tbaa !970
  br label %59, !dbg !4772

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4737, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i32 %40, metadata !4740, metadata !DIExpression()), !dbg !4773
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !4775
  call void @llvm.dbg.value(metadata i32 %56, metadata !4741, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i32 %56, metadata !801, metadata !DIExpression()), !dbg !4747
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !4776
  call void @llvm.dbg.value(metadata i32 %61, metadata !801, metadata !DIExpression()), !dbg !4747
  %62 = icmp sgt i32 %61, -1, !dbg !4777
  %63 = select i1 %62, i1 %60, i1 false, !dbg !4763
  br i1 %63, label %64, label %115, !dbg !4763

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #40, !dbg !4778
  call void @llvm.dbg.value(metadata i32 %65, metadata !802, metadata !DIExpression()), !dbg !4779
  %66 = icmp slt i32 %65, 0, !dbg !4780
  br i1 %66, label %71, label %67, !dbg !4781

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !4782
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #40, !dbg !4783
  %70 = icmp eq i32 %69, -1, !dbg !4784
  br i1 %70, label %71, label %115, !dbg !4785

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #43, !dbg !4786
  %73 = load i32, ptr %72, align 4, !dbg !4786, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %73, metadata !805, metadata !DIExpression()), !dbg !4787
  %74 = call i32 @close(i32 noundef %61) #40, !dbg !4788
  store i32 %73, ptr %72, align 4, !dbg !4789, !tbaa !970
  call void @llvm.dbg.value(metadata i32 -1, metadata !801, metadata !DIExpression()), !dbg !4747
  br label %115, !dbg !4790

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !4791
  call void @llvm.dbg.value(metadata i32 %76, metadata !4718, metadata !DIExpression()), !dbg !4730
  br label %115, !dbg !4792

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4793
  %79 = load i32, ptr %78, align 8, !dbg !4793
  %80 = icmp sgt i32 %79, -1, !dbg !4793
  br i1 %80, label %89, label %81, !dbg !4793

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !4793
  store i32 %82, ptr %78, align 8, !dbg !4793
  %83 = icmp ult i32 %79, -7, !dbg !4793
  br i1 %83, label %84, label %89, !dbg !4793

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4793
  %86 = load ptr, ptr %85, align 8, !dbg !4793
  %87 = sext i32 %79 to i64, !dbg !4793
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !4793
  br label %92, !dbg !4793

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !4793
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !4793
  store ptr %91, ptr %3, align 8, !dbg !4793
  br label %92, !dbg !4793

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !4793
  %94 = load i32, ptr %93, align 8, !dbg !4793
  call void @llvm.dbg.value(metadata i32 %94, metadata !4724, metadata !DIExpression()), !dbg !4794
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #40, !dbg !4795
  call void @llvm.dbg.value(metadata i32 %95, metadata !4718, metadata !DIExpression()), !dbg !4730
  br label %115, !dbg !4796

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4797
  %98 = load i32, ptr %97, align 8, !dbg !4797
  %99 = icmp sgt i32 %98, -1, !dbg !4797
  br i1 %99, label %108, label %100, !dbg !4797

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !4797
  store i32 %101, ptr %97, align 8, !dbg !4797
  %102 = icmp ult i32 %98, -7, !dbg !4797
  br i1 %102, label %103, label %108, !dbg !4797

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4797
  %105 = load ptr, ptr %104, align 8, !dbg !4797
  %106 = sext i32 %98 to i64, !dbg !4797
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !4797
  br label %111, !dbg !4797

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !4797
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !4797
  store ptr %110, ptr %3, align 8, !dbg !4797
  br label %111, !dbg !4797

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !4797
  %113 = load ptr, ptr %112, align 8, !dbg !4797
  call void @llvm.dbg.value(metadata ptr %113, metadata !4728, metadata !DIExpression()), !dbg !4798
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #40, !dbg !4799
  call void @llvm.dbg.value(metadata i32 %114, metadata !4718, metadata !DIExpression()), !dbg !4730
  br label %115, !dbg !4800

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !4801
  call void @llvm.dbg.value(metadata i32 %116, metadata !4718, metadata !DIExpression()), !dbg !4730
  call void @llvm.va_end(ptr nonnull %3), !dbg !4802
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !4803
  ret i32 %116, !dbg !4804
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4805 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4807, metadata !DIExpression()), !dbg !4812
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4813
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4808, metadata !DIExpression()), !dbg !4814
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4815
  %4 = icmp eq i32 %3, 0, !dbg !4815
  br i1 %4, label %5, label %12, !dbg !4817

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata ptr @.str.196, metadata !4821, metadata !DIExpression()), !dbg !4822
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.196, i64 2), !dbg !4825
  %7 = icmp eq i32 %6, 0, !dbg !4826
  br i1 %7, label %11, label %8, !dbg !4827

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4818, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata ptr @.str.1.197, metadata !4821, metadata !DIExpression()), !dbg !4828
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.197, i64 6), !dbg !4830
  %10 = icmp eq i32 %9, 0, !dbg !4831
  br i1 %10, label %11, label %12, !dbg !4832

11:                                               ; preds = %8, %5
  br label %12, !dbg !4833

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4812
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4834
  ret i1 %13, !dbg !4834
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4839, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata ptr %1, metadata !4840, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 %2, metadata !4841, metadata !DIExpression()), !dbg !4842
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4843
  ret i32 %4, !dbg !4844
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4849, metadata !DIExpression()), !dbg !4850
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4851
  ret ptr %2, !dbg !4852
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4855, metadata !DIExpression()), !dbg !4857
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4858
  call void @llvm.dbg.value(metadata ptr %2, metadata !4856, metadata !DIExpression()), !dbg !4857
  ret ptr %2, !dbg !4859
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4862, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata ptr %1, metadata !4863, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %2, metadata !4864, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i32 %0, metadata !4855, metadata !DIExpression()), !dbg !4870
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4872
  call void @llvm.dbg.value(metadata ptr %4, metadata !4856, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata ptr %4, metadata !4865, metadata !DIExpression()), !dbg !4869
  %5 = icmp eq ptr %4, null, !dbg !4873
  br i1 %5, label %6, label %9, !dbg !4874

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4875
  br i1 %7, label %19, label %8, !dbg !4878

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4879, !tbaa !979
  br label %19, !dbg !4880

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4881
  call void @llvm.dbg.value(metadata i64 %10, metadata !4866, metadata !DIExpression()), !dbg !4882
  %11 = icmp ult i64 %10, %2, !dbg !4883
  br i1 %11, label %12, label %14, !dbg !4885

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4886
  call void @llvm.dbg.value(metadata ptr %1, metadata !4888, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata ptr %4, metadata !4891, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.value(metadata i64 %13, metadata !4892, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !4895
  br label %19, !dbg !4896

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4897
  br i1 %15, label %19, label %16, !dbg !4900

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4901
  call void @llvm.dbg.value(metadata ptr %1, metadata !4888, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata ptr %4, metadata !4891, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i64 %17, metadata !4892, metadata !DIExpression()), !dbg !4903
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4905
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4906
  store i8 0, ptr %18, align 1, !dbg !4907, !tbaa !979
  br label %19, !dbg !4908

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4909
  ret i32 %20, !dbg !4910
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0,1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!73, !813, !439, !443, !473, !488, !761, !815, !818, !820, !822, !539, !553, !601, !824, !826, !753, !833, !867, !869, !871, !873, !875, !777, !877, !880, !796, !882, !884, !886}
!llvm.ident = !{!888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888, !888}
!llvm.module.flags = !{!889, !890, !891, !892, !893, !894, !895}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tee.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cec0a20486dbac1b82051156d303a2f2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 69)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 61)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !29, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 83)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 50)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 62)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4688, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 586)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !19, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "long_options", scope: !73, file: !2, line: 59, type: !407, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !127, globals: !144, splitDebugInlining: false, nameTableKind: None)
!74 = !{!75, !83, !89, !104, !113}
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "output_error", file: !2, line: 48, baseType: !76, size: 32, elements: !77)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "output_error_sigpipe", value: 0)
!79 = !DIEnumerator(name: "output_error_warn", value: 1)
!80 = !DIEnumerator(name: "output_error_warn_nopipe", value: 2)
!81 = !DIEnumerator(name: "output_error_exit", value: 3)
!82 = !DIEnumerator(name: "output_error_exit_nopipe", value: 4)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 337, baseType: !85, size: 32, elements: !86)
!84 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!88 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 46, baseType: !76, size: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!92 = !DIEnumerator(name: "_ISupper", value: 256)
!93 = !DIEnumerator(name: "_ISlower", value: 512)
!94 = !DIEnumerator(name: "_ISalpha", value: 1024)
!95 = !DIEnumerator(name: "_ISdigit", value: 2048)
!96 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!97 = !DIEnumerator(name: "_ISspace", value: 8192)
!98 = !DIEnumerator(name: "_ISprint", value: 16384)
!99 = !DIEnumerator(name: "_ISgraph", value: 32768)
!100 = !DIEnumerator(name: "_ISblank", value: 1)
!101 = !DIEnumerator(name: "_IScntrl", value: 2)
!102 = !DIEnumerator(name: "_ISpunct", value: 4)
!103 = !DIEnumerator(name: "_ISalnum", value: 8)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 44, baseType: !76, size: 32, elements: !106)
!105 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!108 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!109 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!110 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!111 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!112 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !114, line: 42, baseType: !76, size: 32, elements: !115)
!114 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!116 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!117 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!118 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!119 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!120 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!121 = !DIEnumerator(name: "c_quoting_style", value: 5)
!122 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!123 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!124 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!125 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!126 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!127 = !{!128, !130, !131, !132, !85, !137, !138, !141, !143}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !133, line: 72, baseType: !134)
!133 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !85}
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!143 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49, !54, !59, !64, !69, !145, !150, !155, !160, !165, !170, !175, !177, !180, !182, !184, !263, !268, !270, !272, !277, !282, !284, !286, !288, !290, !292, !294, !299, !304, !306, !308, !310, !312, !314, !316, !321, !326, !328, !330, !332, !334, !336, !338, !340, !345, !347, !349, !354, !359, !364, !366, !368, !373, !378, !380, !71, !382, !386, !388, !390, !392, !394, !398, !400, !402}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 15)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 14)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 12)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 20)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 16)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 3)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !147, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "append", scope: !73, file: !2, line: 43, type: !179, isLocal: true, isDefinition: true)
!179 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "ignore_interrupts", scope: !73, file: !2, line: 46, type: !179, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "output_error", scope: !73, file: !2, line: 57, type: !75, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !186, file: !84, line: 575, type: !85, isLocal: true, isDefinition: true)
!186 = distinct !DISubprogram(name: "oputs_", scope: !84, file: !84, line: 573, type: !187, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !189)
!187 = !DISubroutineType(cc: DW_CC_nocall, types: !188)
!188 = !{null, !141, !141}
!189 = !{!190, !191, !192, !195, !196, !197, !198, !202, !203, !204, !205, !207, !257, !258, !259, !261, !262}
!190 = !DILocalVariable(name: "program", arg: 1, scope: !186, file: !84, line: 573, type: !141)
!191 = !DILocalVariable(name: "option", arg: 2, scope: !186, file: !84, line: 573, type: !141)
!192 = !DILocalVariable(name: "term", scope: !193, file: !84, line: 585, type: !141)
!193 = distinct !DILexicalBlock(scope: !194, file: !84, line: 582, column: 5)
!194 = distinct !DILexicalBlock(scope: !186, file: !84, line: 581, column: 7)
!195 = !DILocalVariable(name: "double_space", scope: !186, file: !84, line: 594, type: !179)
!196 = !DILocalVariable(name: "first_word", scope: !186, file: !84, line: 595, type: !141)
!197 = !DILocalVariable(name: "option_text", scope: !186, file: !84, line: 596, type: !141)
!198 = !DILocalVariable(name: "s", scope: !199, file: !84, line: 608, type: !141)
!199 = distinct !DILexicalBlock(scope: !200, file: !84, line: 605, column: 5)
!200 = distinct !DILexicalBlock(scope: !201, file: !84, line: 604, column: 12)
!201 = distinct !DILexicalBlock(scope: !186, file: !84, line: 597, column: 7)
!202 = !DILocalVariable(name: "spaces", scope: !199, file: !84, line: 609, type: !138)
!203 = !DILocalVariable(name: "anchor_len", scope: !186, file: !84, line: 620, type: !138)
!204 = !DILocalVariable(name: "desc_text", scope: !186, file: !84, line: 625, type: !141)
!205 = !DILocalVariable(name: "__ptr", scope: !206, file: !84, line: 644, type: !141)
!206 = distinct !DILexicalBlock(scope: !186, file: !84, line: 644, column: 3)
!207 = !DILocalVariable(name: "__stream", scope: !206, file: !84, line: 644, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !211)
!210 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !213)
!212 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !229, !231, !232, !233, !237, !238, !240, !241, !244, !246, !249, !252, !253, !254, !255, !256}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !211, file: !212, line: 51, baseType: !85, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !211, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !211, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !211, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !211, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !211, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !211, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !211, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !211, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !211, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !211, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !211, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !211, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !212, line: 36, flags: DIFlagFwdDecl)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !211, file: !212, line: 70, baseType: !230, size: 64, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !211, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !211, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !211, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !235, line: 152, baseType: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!236 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !211, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !211, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!239 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !211, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !211, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !212, line: 43, baseType: null)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !211, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !235, line: 153, baseType: !236)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !211, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !212, line: 37, flags: DIFlagFwdDecl)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !211, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !212, line: 38, flags: DIFlagFwdDecl)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !211, file: !212, line: 93, baseType: !230, size: 64, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !211, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !211, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !211, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !211, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!257 = !DILocalVariable(name: "__cnt", scope: !206, file: !84, line: 644, type: !138)
!258 = !DILocalVariable(name: "url_program", scope: !186, file: !84, line: 648, type: !141)
!259 = !DILocalVariable(name: "__ptr", scope: !260, file: !84, line: 686, type: !141)
!260 = distinct !DILexicalBlock(scope: !186, file: !84, line: 686, column: 3)
!261 = !DILocalVariable(name: "__stream", scope: !260, file: !84, line: 686, type: !208)
!262 = !DILocalVariable(name: "__cnt", scope: !260, file: !84, line: 686, type: !138)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !84, line: 585, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 5)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !84, line: 586, type: !265, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !84, line: 595, type: !19, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !84, line: 620, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 6)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !84, line: 648, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !84, line: 648, type: !265, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !84, line: 649, type: !19, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !84, line: 649, type: !172, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !84, line: 650, type: !265, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !84, line: 651, type: !274, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !84, line: 651, type: !274, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !84, line: 652, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 7)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !84, line: 653, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 8)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !84, line: 654, type: !61, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !84, line: 655, type: !61, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !84, line: 656, type: !61, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !84, line: 657, type: !61, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !84, line: 663, type: !296, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !84, line: 664, type: !61, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 17)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !84, line: 669, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 40)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !147, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !84, line: 676, type: !29, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !84, line: 679, type: !172, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !84, line: 683, type: !265, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !84, line: 688, type: !265, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !84, line: 691, type: !301, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !84, line: 839, type: !167, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !84, line: 840, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 22)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !84, line: 841, type: !147, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !84, line: 862, type: !19, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !84, line: 868, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 71)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !84, line: 875, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 27)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !84, line: 877, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 51)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !84, line: 877, type: !157, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !296, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 18)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 13)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !265, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !301, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "output_error_types", scope: !73, file: !2, line: 73, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !20)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !265, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !157, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !265, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !157, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "output_error_args", scope: !73, file: !2, line: 69, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 320, elements: !266)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !167, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !375, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 11)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1536, elements: !275)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !410, line: 50, size: 256, elements: !411)
!410 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!411 = !{!412, !413, !414, !416}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !410, line: 52, baseType: !141, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !409, file: !410, line: 55, baseType: !85, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !409, file: !410, line: 56, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !409, file: !410, line: 57, baseType: !85, size: 32, offset: 192)
!417 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!418 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !421, line: 64, type: !422, isLocal: true, isDefinition: true)
!421 = !DIFile(filename: "src/iopoll.c", directory: "/src", checksumkind: CSK_MD5, checksum: "994e71aa1d7ebbae5028422474ffd3c4")
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 26)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !421, line: 64, type: !375, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !421, line: 64, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 352, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 44)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !421, line: 88, type: !301, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !436, line: 3, type: !147, isLocal: true, isDefinition: true)
!436 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "Version", scope: !439, file: !436, line: 3, type: !141, isLocal: false, isDefinition: true)
!439 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !440, splitDebugInlining: false, nameTableKind: None)
!440 = !{!434, !437}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !443, file: !444, line: 65, type: !466, isLocal: false, isDefinition: true)
!443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !444, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !445, retainedTypes: !446, globals: !447, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/argmatch.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b147d258438e01421d766b453f353b54")
!445 = !{!113}
!446 = !{!131, !141, !143}
!447 = !{!441, !448, !450, !452, !457, !462, !464}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !444, line: 141, type: !296, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !444, line: 141, type: !356, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !444, line: 142, type: !454, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 29)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !444, line: 160, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 21)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !444, line: 165, type: !301, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !444, line: 170, type: !265, isLocal: true, isDefinition: true)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !467, line: 69, baseType: !468)
!467 = !DIFile(filename: "./lib/argmatch.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0538d47ac978b3f52562dc3536aacea1")
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null}
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "file_name", scope: !473, file: !474, line: 45, type: !141, isLocal: true, isDefinition: true)
!473 = distinct !DICompileUnit(language: DW_LANG_C11, file: !474, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !475, splitDebugInlining: false, nameTableKind: None)
!474 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!475 = !{!476, !478, !480, !482, !471, !484}
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !474, line: 121, type: !296, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !474, line: 121, type: !157, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !474, line: 123, type: !296, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !474, line: 126, type: !172, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !473, file: !474, line: 55, type: !179, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !488, file: !489, line: 66, type: !468, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !491, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!490 = !{!131, !143}
!491 = !{!492, !494, !519, !521, !523, !525, !486, !527, !529, !531, !533, !535}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !489, line: 272, type: !265, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "old_file_name", scope: !496, file: !489, line: 304, type: !141, isLocal: true, isDefinition: true)
!496 = distinct !DISubprogram(name: "verror_at_line", scope: !489, file: !489, line: 298, type: !497, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !512)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !85, !85, !141, !76, !141, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !500, line: 52, baseType: !501)
!500 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !502, line: 14, baseType: !503)
!502 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !504, baseType: !505)
!504 = !DIFile(filename: "lib/error.c", directory: "/src")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !506)
!506 = !{!507, !508, !509, !510, !511}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !505, file: !504, baseType: !131, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !505, file: !504, baseType: !131, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !505, file: !504, baseType: !131, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !505, file: !504, baseType: !85, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !505, file: !504, baseType: !85, size: 32, offset: 224)
!512 = !{!513, !514, !515, !516, !517, !518}
!513 = !DILocalVariable(name: "status", arg: 1, scope: !496, file: !489, line: 298, type: !85)
!514 = !DILocalVariable(name: "errnum", arg: 2, scope: !496, file: !489, line: 298, type: !85)
!515 = !DILocalVariable(name: "file_name", arg: 3, scope: !496, file: !489, line: 298, type: !141)
!516 = !DILocalVariable(name: "line_number", arg: 4, scope: !496, file: !489, line: 298, type: !76)
!517 = !DILocalVariable(name: "message", arg: 5, scope: !496, file: !489, line: 298, type: !141)
!518 = !DILocalVariable(name: "args", arg: 6, scope: !496, file: !489, line: 298, type: !499)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "old_line_number", scope: !496, file: !489, line: 305, type: !76, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !489, line: 338, type: !19, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !301, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !279, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "error_message_count", scope: !488, file: !489, line: 69, type: !76, isLocal: false, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !488, file: !489, line: 295, type: !85, isLocal: false, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !296, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !459, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !489, line: 214, type: !265, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "program_name", scope: !539, file: !540, line: 31, type: !141, isLocal: false, isDefinition: true)
!539 = distinct !DICompileUnit(language: DW_LANG_C11, file: !540, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !541, globals: !542, splitDebugInlining: false, nameTableKind: None)
!540 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!541 = !{!130}
!542 = !{!537, !543, !545}
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !540, line: 46, type: !301, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !540, line: 49, type: !19, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "utf07FF", scope: !549, file: !550, line: 46, type: !577, isLocal: true, isDefinition: true)
!549 = distinct !DISubprogram(name: "proper_name_lite", scope: !550, file: !550, line: 38, type: !551, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !555)
!550 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!551 = !DISubroutineType(types: !552)
!552 = !{!141, !141, !141}
!553 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !554, splitDebugInlining: false, nameTableKind: None)
!554 = !{!547}
!555 = !{!556, !557, !558, !559, !564}
!556 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !549, file: !550, line: 38, type: !141)
!557 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !549, file: !550, line: 38, type: !141)
!558 = !DILocalVariable(name: "translation", scope: !549, file: !550, line: 40, type: !141)
!559 = !DILocalVariable(name: "w", scope: !549, file: !550, line: 47, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !561, line: 37, baseType: !562)
!561 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !235, line: 57, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !235, line: 42, baseType: !76)
!564 = !DILocalVariable(name: "mbs", scope: !549, file: !550, line: 48, type: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !566, line: 6, baseType: !567)
!566 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !568, line: 21, baseType: !569)
!568 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 13, size: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !569, file: !568, line: 15, baseType: !85, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !569, file: !568, line: 20, baseType: !573, size: 32, offset: 32)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !568, line: 16, size: 32, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !573, file: !568, line: 18, baseType: !76, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !573, file: !568, line: 19, baseType: !19, size: 32)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16, elements: !280)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !580, line: 78, type: !301, isLocal: true, isDefinition: true)
!580 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !580, line: 79, type: !274, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 80, type: !375, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !580, line: 81, type: !375, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !580, line: 82, type: !162, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !580, line: 83, type: !279, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !580, line: 84, type: !301, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !580, line: 85, type: !296, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !580, line: 86, type: !296, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !580, line: 87, type: !301, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !601, file: !580, line: 76, type: !673, isLocal: false, isDefinition: true)
!601 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !602, retainedTypes: !608, globals: !609, splitDebugInlining: false, nameTableKind: None)
!602 = !{!113, !603, !89}
!603 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !114, line: 254, baseType: !76, size: 32, elements: !604)
!604 = !{!605, !606, !607}
!605 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!606 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!607 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!608 = !{!85, !137, !138}
!609 = !{!578, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !610, !614, !624, !626, !631, !633, !635, !637, !639, !662, !669, !671}
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !601, file: !580, line: 92, type: !612, isLocal: false, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 320, elements: !62)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !601, file: !580, line: 1040, type: !616, isLocal: false, isDefinition: true)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !580, line: 56, size: 448, elements: !617)
!617 = !{!618, !619, !620, !622, !623}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !616, file: !580, line: 59, baseType: !113, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !580, line: 62, baseType: !85, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !616, file: !580, line: 66, baseType: !621, size: 256, offset: 64)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !302)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !616, file: !580, line: 69, baseType: !141, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !616, file: !580, line: 72, baseType: !141, size: 64, offset: 384)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !601, file: !580, line: 107, type: !616, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "slot0", scope: !601, file: !580, line: 831, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 256)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !580, line: 321, type: !279, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !580, line: 357, type: !279, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !580, line: 358, type: !279, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !580, line: 199, type: !296, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(name: "quote", scope: !641, file: !580, line: 228, type: !660, isLocal: true, isDefinition: true)
!641 = distinct !DISubprogram(name: "gettext_quote", scope: !580, file: !580, line: 197, type: !642, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!141, !141, !113}
!644 = !{!645, !646, !647, !648, !649}
!645 = !DILocalVariable(name: "msgid", arg: 1, scope: !641, file: !580, line: 197, type: !141)
!646 = !DILocalVariable(name: "s", arg: 2, scope: !641, file: !580, line: 197, type: !113)
!647 = !DILocalVariable(name: "translation", scope: !641, file: !580, line: 199, type: !141)
!648 = !DILocalVariable(name: "w", scope: !641, file: !580, line: 229, type: !560)
!649 = !DILocalVariable(name: "mbs", scope: !641, file: !580, line: 230, type: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !566, line: 6, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !568, line: 21, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 13, size: 64, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !652, file: !568, line: 15, baseType: !85, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !652, file: !568, line: 20, baseType: !656, size: 32, offset: 32)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !568, line: 16, size: 32, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !656, file: !568, line: 18, baseType: !76, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !656, file: !568, line: 19, baseType: !19, size: 32)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !661)
!661 = !{!281, !21}
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "slotvec", scope: !601, file: !580, line: 834, type: !664, isLocal: true, isDefinition: true)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !580, line: 823, size: 128, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !665, file: !580, line: 825, baseType: !138, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !665, file: !580, line: 826, baseType: !130, size: 64, offset: 64)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "nslots", scope: !601, file: !580, line: 832, type: !85, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "slotvec0", scope: !601, file: !580, line: 833, type: !665, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 704, elements: !405)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !676, line: 67, type: !157, isLocal: true, isDefinition: true)
!676 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !676, line: 69, type: !296, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !676, line: 83, type: !296, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !676, line: 83, type: !19, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !676, line: 85, type: !279, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !676, line: 88, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 171)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !676, line: 88, type: !692, isLocal: true, isDefinition: true)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 34)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !676, line: 105, type: !167, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !676, line: 109, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 23)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !676, line: 113, type: !704, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 28)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !676, line: 120, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 32)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !676, line: 127, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 36)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !676, line: 134, type: !323, isLocal: true, isDefinition: true)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !676, line: 142, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !430)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !676, line: 150, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 48)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !676, line: 159, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 52)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !676, line: 170, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 60)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !676, line: 248, type: !162, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !676, line: 248, type: !342, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !676, line: 254, type: !162, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !676, line: 254, type: !152, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !676, line: 254, type: !323, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !676, line: 259, type: !3, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !676, line: 259, type: !454, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !753, file: !754, line: 26, type: !756, isLocal: false, isDefinition: true)
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!755 = !{!751}
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 376, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 47)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(name: "exit_failure", scope: !761, file: !762, line: 24, type: !764, isLocal: false, isDefinition: true)
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !763, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!763 = !{!759}
!764 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !767, line: 34, type: !172, isLocal: true, isDefinition: true)
!767 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !767, line: 34, type: !296, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !767, line: 34, type: !318, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !774, line: 108, type: !56, isLocal: true, isDefinition: true)
!774 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(name: "internal_state", scope: !777, file: !774, line: 97, type: !780, isLocal: true, isDefinition: true)
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, globals: !779, splitDebugInlining: false, nameTableKind: None)
!778 = !{!131, !138, !143}
!779 = !{!772, !775}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !566, line: 6, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !568, line: 21, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 13, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !782, file: !568, line: 15, baseType: !85, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !782, file: !568, line: 20, baseType: !786, size: 32, offset: 32)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !568, line: 16, size: 32, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !786, file: !568, line: 18, baseType: !76, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !786, file: !568, line: 19, baseType: !19, size: 32)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !792, file: !793, line: 506, type: !85, isLocal: true, isDefinition: true)
!792 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !793, file: !793, line: 485, type: !794, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !798)
!793 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!794 = !DISubroutineType(types: !795)
!795 = !{!85, !85, !85}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !797, splitDebugInlining: false, nameTableKind: None)
!797 = !{!790}
!798 = !{!799, !800, !801, !802, !805}
!799 = !DILocalVariable(name: "fd", arg: 1, scope: !792, file: !793, line: 485, type: !85)
!800 = !DILocalVariable(name: "target", arg: 2, scope: !792, file: !793, line: 485, type: !85)
!801 = !DILocalVariable(name: "result", scope: !792, file: !793, line: 487, type: !85)
!802 = !DILocalVariable(name: "flags", scope: !803, file: !793, line: 530, type: !85)
!803 = distinct !DILexicalBlock(scope: !804, file: !793, line: 529, column: 5)
!804 = distinct !DILexicalBlock(scope: !792, file: !793, line: 528, column: 7)
!805 = !DILocalVariable(name: "saved_errno", scope: !806, file: !793, line: 533, type: !85)
!806 = distinct !DILexicalBlock(scope: !807, file: !793, line: 532, column: 9)
!807 = distinct !DILexicalBlock(scope: !803, file: !793, line: 531, column: 11)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !810, line: 35, type: !279, isLocal: true, isDefinition: true)
!810 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !810, line: 35, type: !274, isLocal: true, isDefinition: true)
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !814, splitDebugInlining: false, nameTableKind: None)
!814 = !{!419, !425, !427, !432}
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !817, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!817 = !{!104}
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!824 = distinct !DICompileUnit(language: DW_LANG_C11, file: !825, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!825 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !827, retainedTypes: !831, globals: !832, splitDebugInlining: false, nameTableKind: None)
!827 = !{!828}
!828 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !676, line: 40, baseType: !76, size: 32, elements: !829)
!829 = !{!830}
!830 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!831 = !{!131}
!832 = !{!674, !677, !679, !681, !683, !685, !690, !695, !697, !702, !707, !712, !717, !719, !722, !727, !732, !737, !739, !741, !743, !745, !747, !749}
!833 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !835, retainedTypes: !866, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!835 = !{!836, !848}
!836 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !837, file: !834, line: 188, baseType: !76, size: 32, elements: !846)
!837 = distinct !DISubprogram(name: "x2nrealloc", scope: !834, file: !834, line: 176, type: !838, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !841)
!838 = !DISubroutineType(types: !839)
!839 = !{!131, !131, !840, !138}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!841 = !{!842, !843, !844, !845}
!842 = !DILocalVariable(name: "p", arg: 1, scope: !837, file: !834, line: 176, type: !131)
!843 = !DILocalVariable(name: "pn", arg: 2, scope: !837, file: !834, line: 176, type: !840)
!844 = !DILocalVariable(name: "s", arg: 3, scope: !837, file: !834, line: 176, type: !138)
!845 = !DILocalVariable(name: "n", scope: !837, file: !834, line: 178, type: !138)
!846 = !{!847}
!847 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!848 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !849, file: !834, line: 228, baseType: !76, size: 32, elements: !846)
!849 = distinct !DISubprogram(name: "xpalloc", scope: !834, file: !834, line: 223, type: !850, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !856)
!850 = !DISubroutineType(types: !851)
!851 = !{!131, !131, !852, !853, !855, !853}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !854, line: 130, baseType: !855)
!854 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !139, line: 35, baseType: !236)
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865}
!857 = !DILocalVariable(name: "pa", arg: 1, scope: !849, file: !834, line: 223, type: !131)
!858 = !DILocalVariable(name: "pn", arg: 2, scope: !849, file: !834, line: 223, type: !852)
!859 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !849, file: !834, line: 223, type: !853)
!860 = !DILocalVariable(name: "n_max", arg: 4, scope: !849, file: !834, line: 223, type: !855)
!861 = !DILocalVariable(name: "s", arg: 5, scope: !849, file: !834, line: 223, type: !853)
!862 = !DILocalVariable(name: "n0", scope: !849, file: !834, line: 230, type: !853)
!863 = !DILocalVariable(name: "n", scope: !849, file: !834, line: 237, type: !853)
!864 = !DILocalVariable(name: "nbytes", scope: !849, file: !834, line: 248, type: !853)
!865 = !DILocalVariable(name: "adjusted_nbytes", scope: !849, file: !834, line: 252, type: !853)
!866 = !{!130, !131, !179, !236, !140}
!867 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !868, splitDebugInlining: false, nameTableKind: None)
!868 = !{!765, !768, !770}
!869 = distinct !DICompileUnit(language: DW_LANG_C11, file: !870, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !872, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!872 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!873 = distinct !DICompileUnit(language: DW_LANG_C11, file: !874, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !831, splitDebugInlining: false, nameTableKind: None)
!874 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !831, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !879, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!879 = !{!179, !140, !131}
!880 = distinct !DICompileUnit(language: DW_LANG_C11, file: !881, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!882 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !883, splitDebugInlining: false, nameTableKind: None)
!883 = !{!808, !811}
!884 = distinct !DICompileUnit(language: DW_LANG_C11, file: !885, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!885 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!886 = distinct !DICompileUnit(language: DW_LANG_C11, file: !887, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !831, splitDebugInlining: false, nameTableKind: None)
!887 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!888 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!889 = !{i32 7, !"Dwarf Version", i32 5}
!890 = !{i32 2, !"Debug Info Version", i32 3}
!891 = !{i32 1, !"wchar_size", i32 4}
!892 = !{i32 8, !"PIC Level", i32 2}
!893 = !{i32 7, !"PIE Level", i32 2}
!894 = !{i32 7, !"uwtable", i32 2}
!895 = !{i32 7, !"frame-pointer", i32 1}
!896 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !135, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !897)
!897 = !{!898}
!898 = !DILocalVariable(name: "status", arg: 1, scope: !896, file: !2, line: 81, type: !85)
!899 = !DILocation(line: 0, scope: !896)
!900 = !DILocation(line: 83, column: 14, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !2, line: 83, column: 7)
!902 = !DILocation(line: 83, column: 7, scope: !896)
!903 = !DILocation(line: 84, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !2, line: 84, column: 5)
!905 = !{!906, !906, i64 0}
!906 = !{!"any pointer", !907, i64 0}
!907 = !{!"omnipotent char", !908, i64 0}
!908 = !{!"Simple C/C++ TBAA"}
!909 = !DILocation(line: 87, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !901, file: !2, line: 86, column: 5)
!911 = !DILocation(line: 88, column: 7, scope: !910)
!912 = !DILocation(line: 92, column: 7, scope: !910)
!913 = !DILocation(line: 96, column: 7, scope: !910)
!914 = !DILocation(line: 100, column: 7, scope: !910)
!915 = !DILocation(line: 104, column: 7, scope: !910)
!916 = !DILocation(line: 108, column: 7, scope: !910)
!917 = !DILocation(line: 109, column: 7, scope: !910)
!918 = !DILocation(line: 110, column: 7, scope: !910)
!919 = !DILocalVariable(name: "program", arg: 1, scope: !920, file: !84, line: 836, type: !141)
!920 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !921, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !141}
!923 = !{!919, !924, !931, !932, !934, !935}
!924 = !DILocalVariable(name: "infomap", scope: !920, file: !84, line: 838, type: !925)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 896, elements: !297)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !920, file: !84, line: 838, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !927, file: !84, line: 838, baseType: !141, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !927, file: !84, line: 838, baseType: !141, size: 64, offset: 64)
!931 = !DILocalVariable(name: "node", scope: !920, file: !84, line: 848, type: !141)
!932 = !DILocalVariable(name: "map_prog", scope: !920, file: !84, line: 849, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!934 = !DILocalVariable(name: "lc_messages", scope: !920, file: !84, line: 861, type: !141)
!935 = !DILocalVariable(name: "url_program", scope: !920, file: !84, line: 874, type: !141)
!936 = !DILocation(line: 0, scope: !920, inlinedAt: !937)
!937 = distinct !DILocation(line: 123, column: 7, scope: !910)
!938 = !DILocation(line: 857, column: 3, scope: !920, inlinedAt: !937)
!939 = !DILocation(line: 861, column: 29, scope: !920, inlinedAt: !937)
!940 = !DILocation(line: 862, column: 7, scope: !941, inlinedAt: !937)
!941 = distinct !DILexicalBlock(scope: !920, file: !84, line: 862, column: 7)
!942 = !DILocation(line: 862, column: 19, scope: !941, inlinedAt: !937)
!943 = !DILocation(line: 862, column: 22, scope: !941, inlinedAt: !937)
!944 = !DILocation(line: 862, column: 7, scope: !920, inlinedAt: !937)
!945 = !DILocation(line: 868, column: 7, scope: !946, inlinedAt: !937)
!946 = distinct !DILexicalBlock(scope: !941, file: !84, line: 863, column: 5)
!947 = !DILocation(line: 870, column: 5, scope: !946, inlinedAt: !937)
!948 = !DILocation(line: 875, column: 3, scope: !920, inlinedAt: !937)
!949 = !DILocation(line: 877, column: 3, scope: !920, inlinedAt: !937)
!950 = !DILocation(line: 125, column: 3, scope: !896)
!951 = !DISubprogram(name: "dcgettext", scope: !952, file: !952, line: 51, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!952 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!953 = !DISubroutineType(types: !954)
!954 = !{!130, !141, !141, !85}
!955 = !{}
!956 = !DISubprogram(name: "__fprintf_chk", scope: !957, file: !957, line: 93, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!957 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!958 = !DISubroutineType(types: !959)
!959 = !{!85, !960, !85, !961, null}
!960 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!962 = !DISubprogram(name: "__printf_chk", scope: !957, file: !957, line: 95, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!963 = !DISubroutineType(types: !964)
!964 = !{!85, !85, !961, null}
!965 = !DISubprogram(name: "fputs_unlocked", scope: !500, file: !500, line: 691, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!966 = !DISubroutineType(types: !967)
!967 = !{!85, !961, !960}
!968 = !DILocation(line: 0, scope: !186)
!969 = !DILocation(line: 581, column: 7, scope: !194)
!970 = !{!971, !971, i64 0}
!971 = !{!"int", !907, i64 0}
!972 = !DILocation(line: 581, column: 19, scope: !194)
!973 = !DILocation(line: 581, column: 7, scope: !186)
!974 = !DILocation(line: 585, column: 26, scope: !193)
!975 = !DILocation(line: 0, scope: !193)
!976 = !DILocation(line: 586, column: 23, scope: !193)
!977 = !DILocation(line: 586, column: 28, scope: !193)
!978 = !DILocation(line: 586, column: 32, scope: !193)
!979 = !{!907, !907, i64 0}
!980 = !DILocation(line: 586, column: 38, scope: !193)
!981 = !DILocalVariable(name: "__s1", arg: 1, scope: !982, file: !983, line: 1359, type: !141)
!982 = distinct !DISubprogram(name: "streq", scope: !983, file: !983, line: 1359, type: !984, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !986)
!983 = !DIFile(filename: "./lib/string.h", directory: "/src")
!984 = !DISubroutineType(types: !985)
!985 = !{!179, !141, !141}
!986 = !{!981, !987}
!987 = !DILocalVariable(name: "__s2", arg: 2, scope: !982, file: !983, line: 1359, type: !141)
!988 = !DILocation(line: 0, scope: !982, inlinedAt: !989)
!989 = distinct !DILocation(line: 586, column: 41, scope: !193)
!990 = !DILocation(line: 1361, column: 11, scope: !982, inlinedAt: !989)
!991 = !DILocation(line: 1361, column: 10, scope: !982, inlinedAt: !989)
!992 = !DILocation(line: 586, column: 19, scope: !193)
!993 = !DILocation(line: 587, column: 5, scope: !193)
!994 = !DILocation(line: 588, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !186, file: !84, line: 588, column: 7)
!996 = !DILocation(line: 588, column: 7, scope: !186)
!997 = !DILocation(line: 590, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !84, line: 589, column: 5)
!999 = !DILocation(line: 591, column: 7, scope: !998)
!1000 = !DILocation(line: 595, column: 37, scope: !186)
!1001 = !DILocation(line: 595, column: 35, scope: !186)
!1002 = !DILocation(line: 596, column: 29, scope: !186)
!1003 = !DILocation(line: 597, column: 8, scope: !201)
!1004 = !DILocation(line: 597, column: 7, scope: !186)
!1005 = !DILocation(line: 604, column: 24, scope: !200)
!1006 = !DILocation(line: 604, column: 12, scope: !201)
!1007 = !DILocation(line: 0, scope: !199)
!1008 = !DILocation(line: 610, column: 16, scope: !199)
!1009 = !DILocation(line: 610, column: 7, scope: !199)
!1010 = !DILocation(line: 611, column: 21, scope: !199)
!1011 = !{!1012, !1012, i64 0}
!1012 = !{!"short", !907, i64 0}
!1013 = !DILocation(line: 611, column: 19, scope: !199)
!1014 = !DILocation(line: 611, column: 16, scope: !199)
!1015 = !DILocation(line: 610, column: 30, scope: !199)
!1016 = distinct !{!1016, !1009, !1010, !1017}
!1017 = !{!"llvm.loop.mustprogress"}
!1018 = !DILocation(line: 612, column: 18, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !199, file: !84, line: 612, column: 11)
!1020 = !DILocation(line: 612, column: 11, scope: !199)
!1021 = !DILocation(line: 620, column: 23, scope: !186)
!1022 = !DILocation(line: 625, column: 39, scope: !186)
!1023 = !DILocation(line: 626, column: 3, scope: !186)
!1024 = !DILocation(line: 626, column: 10, scope: !186)
!1025 = !DILocation(line: 626, column: 21, scope: !186)
!1026 = !DILocation(line: 628, column: 44, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !84, line: 628, column: 11)
!1028 = distinct !DILexicalBlock(scope: !186, file: !84, line: 627, column: 5)
!1029 = !DILocation(line: 628, column: 32, scope: !1027)
!1030 = !DILocation(line: 628, column: 49, scope: !1027)
!1031 = !DILocation(line: 628, column: 11, scope: !1028)
!1032 = !DILocation(line: 630, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !84, line: 630, column: 11)
!1034 = !DILocation(line: 630, column: 11, scope: !1028)
!1035 = !DILocation(line: 632, column: 26, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !84, line: 632, column: 15)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !84, line: 631, column: 9)
!1038 = !DILocation(line: 632, column: 34, scope: !1036)
!1039 = !DILocation(line: 632, column: 37, scope: !1036)
!1040 = !DILocation(line: 632, column: 15, scope: !1037)
!1041 = !DILocation(line: 640, column: 16, scope: !1028)
!1042 = distinct !{!1042, !1023, !1043, !1017}
!1043 = !DILocation(line: 641, column: 5, scope: !186)
!1044 = !DILocation(line: 644, column: 3, scope: !186)
!1045 = !DILocation(line: 0, scope: !982, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1047 = !DILocation(line: 0, scope: !982, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1049 = !DILocation(line: 0, scope: !982, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1051 = !DILocation(line: 0, scope: !982, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1053 = !DILocation(line: 0, scope: !982, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1055 = !DILocation(line: 0, scope: !982, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1057 = !DILocation(line: 0, scope: !982, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1059 = !DILocation(line: 0, scope: !982, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1061 = !DILocation(line: 0, scope: !982, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1063 = !DILocation(line: 0, scope: !982, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1065 = !DILocation(line: 663, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !186, file: !84, line: 663, column: 7)
!1067 = !DILocation(line: 664, column: 7, scope: !1066)
!1068 = !DILocation(line: 664, column: 10, scope: !1066)
!1069 = !DILocation(line: 663, column: 7, scope: !186)
!1070 = !DILocation(line: 669, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !84, line: 665, column: 5)
!1072 = !DILocation(line: 671, column: 5, scope: !1071)
!1073 = !DILocation(line: 676, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !84, line: 673, column: 5)
!1075 = !DILocation(line: 679, column: 3, scope: !186)
!1076 = !DILocation(line: 683, column: 3, scope: !186)
!1077 = !DILocation(line: 686, column: 3, scope: !186)
!1078 = !DILocation(line: 688, column: 3, scope: !186)
!1079 = !DILocation(line: 691, column: 3, scope: !186)
!1080 = !DILocation(line: 695, column: 3, scope: !186)
!1081 = !DILocation(line: 696, column: 1, scope: !186)
!1082 = !DISubprogram(name: "setlocale", scope: !1083, file: !1083, line: 122, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1083 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!130, !85, !141}
!1086 = !DISubprogram(name: "strncmp", scope: !1087, file: !1087, line: 159, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1087 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!85, !141, !141, !138}
!1090 = !DISubprogram(name: "exit", scope: !1091, file: !1091, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1091 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1092 = !DISubprogram(name: "getenv", scope: !1091, file: !1091, line: 641, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!130, !141}
!1095 = !DISubprogram(name: "strcmp", scope: !1087, file: !1087, line: 156, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!85, !141, !141}
!1098 = !DISubprogram(name: "strspn", scope: !1087, file: !1087, line: 297, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!140, !141, !141}
!1101 = !DISubprogram(name: "strchr", scope: !1087, file: !1087, line: 246, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!130, !141, !85}
!1104 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1110 = !DISubprogram(name: "strcspn", scope: !1087, file: !1087, line: 293, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1111 = !DISubprogram(name: "fwrite_unlocked", scope: !500, file: !500, line: 704, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!138, !1114, !138, !138, !960}
!1114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!1115 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 129, type: !1116, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1119)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!85, !85, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1119 = !{!1120, !1121, !1122, !1123, !1124}
!1120 = !DILocalVariable(name: "argc", arg: 1, scope: !1115, file: !2, line: 129, type: !85)
!1121 = !DILocalVariable(name: "argv", arg: 2, scope: !1115, file: !2, line: 129, type: !1118)
!1122 = !DILocalVariable(name: "optc", scope: !1115, file: !2, line: 139, type: !85)
!1123 = !DILocalVariable(name: "pipe_check", scope: !1115, file: !2, line: 177, type: !179)
!1124 = !DILocalVariable(name: "ok", scope: !1115, file: !2, line: 184, type: !179)
!1125 = !DILocation(line: 0, scope: !1115)
!1126 = !DILocation(line: 132, column: 21, scope: !1115)
!1127 = !DILocation(line: 132, column: 3, scope: !1115)
!1128 = !DILocation(line: 133, column: 3, scope: !1115)
!1129 = !DILocation(line: 134, column: 3, scope: !1115)
!1130 = !DILocation(line: 135, column: 3, scope: !1115)
!1131 = !DILocation(line: 137, column: 3, scope: !1115)
!1132 = !DILocation(line: 140, column: 3, scope: !1115)
!1133 = !DILocation(line: 140, column: 18, scope: !1115)
!1134 = !DILocation(line: 145, column: 18, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 143, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 141, column: 5)
!1137 = !DILocation(line: 146, column: 11, scope: !1135)
!1138 = !DILocation(line: 149, column: 29, scope: !1135)
!1139 = !DILocation(line: 150, column: 11, scope: !1135)
!1140 = !DILocation(line: 153, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 153, column: 15)
!1142 = !DILocation(line: 153, column: 15, scope: !1135)
!1143 = !DILocation(line: 154, column: 28, scope: !1141)
!1144 = !DILocation(line: 154, column: 26, scope: !1141)
!1145 = !DILocation(line: 154, column: 13, scope: !1141)
!1146 = distinct !{!1146, !1132, !1147, !1017}
!1147 = !DILocation(line: 167, column: 5, scope: !1115)
!1148 = !DILocation(line: 157, column: 26, scope: !1141)
!1149 = !DILocation(line: 160, column: 9, scope: !1135)
!1150 = !DILocation(line: 162, column: 9, scope: !1135)
!1151 = !DILocation(line: 165, column: 11, scope: !1135)
!1152 = !DILocation(line: 169, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 169, column: 7)
!1154 = !DILocation(line: 169, column: 7, scope: !1115)
!1155 = !DILocation(line: 170, column: 5, scope: !1153)
!1156 = !DILocation(line: 172, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 172, column: 7)
!1158 = !DILocation(line: 172, column: 20, scope: !1157)
!1159 = !DILocation(line: 172, column: 7, scope: !1115)
!1160 = !DILocation(line: 173, column: 5, scope: !1157)
!1161 = !DILocation(line: 177, column: 23, scope: !1115)
!1162 = !DILocation(line: 178, column: 23, scope: !1115)
!1163 = !DILocation(line: 179, column: 25, scope: !1115)
!1164 = !DILocation(line: 184, column: 31, scope: !1115)
!1165 = !DILocation(line: 184, column: 29, scope: !1115)
!1166 = !DILocation(line: 184, column: 40, scope: !1115)
!1167 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1168, file: !2, line: 231, type: !85)
!1168 = distinct !DISubprogram(name: "tee_files", scope: !2, file: !2, line: 231, type: !1169, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!179, !85, !1118, !179}
!1171 = !{!1167, !1172, !1173, !1174, !1175, !1176, !1178, !1182, !1186, !1187, !1188, !1189, !1191, !1198, !1202, !1204}
!1172 = !DILocalVariable(name: "files", arg: 2, scope: !1168, file: !2, line: 231, type: !1118)
!1173 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !1168, file: !2, line: 231, type: !179)
!1174 = !DILocalVariable(name: "n_outputs", scope: !1168, file: !2, line: 233, type: !138)
!1175 = !DILocalVariable(name: "descriptors", scope: !1168, file: !2, line: 234, type: !415)
!1176 = !DILocalVariable(name: "out_pollable", scope: !1168, file: !2, line: 235, type: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1178 = !DILocalVariable(name: "buffer", scope: !1168, file: !2, line: 236, type: !1179)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 8192)
!1182 = !DILocalVariable(name: "bytes_read", scope: !1168, file: !2, line: 237, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1184, line: 108, baseType: !1185)
!1184 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !235, line: 194, baseType: !236)
!1186 = !DILocalVariable(name: "first_out", scope: !1168, file: !2, line: 238, type: !85)
!1187 = !DILocalVariable(name: "ok", scope: !1168, file: !2, line: 239, type: !179)
!1188 = !DILocalVariable(name: "flags", scope: !1168, file: !2, line: 240, type: !85)
!1189 = !DILocalVariable(name: "i", scope: !1190, file: !2, line: 259, type: !85)
!1190 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 259, column: 3)
!1191 = !DILocalVariable(name: "__errstatus", scope: !1192, file: !2, line: 267, type: !1197)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 267, column: 11)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 264, column: 9)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 263, column: 11)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 260, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 259, column: 3)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1198 = !DILocalVariable(name: "err", scope: !1199, file: !2, line: 285, type: !85)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 283, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 282, column: 11)
!1201 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 281, column: 5)
!1202 = !DILocalVariable(name: "i", scope: !1203, file: !2, line: 312, type: !85)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 312, column: 7)
!1204 = !DILocalVariable(name: "i", scope: !1205, file: !2, line: 331, type: !85)
!1205 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 331, column: 3)
!1206 = !DILocation(line: 0, scope: !1168, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 184, column: 13, scope: !1115)
!1208 = !DILocation(line: 236, column: 3, scope: !1168, inlinedAt: !1207)
!1209 = !DILocation(line: 236, column: 8, scope: !1168, inlinedAt: !1207)
!1210 = !DILocation(line: 240, column: 48, scope: !1168, inlinedAt: !1207)
!1211 = !DILocation(line: 240, column: 45, scope: !1168, inlinedAt: !1207)
!1212 = !DILocation(line: 244, column: 12, scope: !1168, inlinedAt: !1207)
!1213 = !DILocation(line: 244, column: 3, scope: !1168, inlinedAt: !1207)
!1214 = !DILocation(line: 249, column: 34, scope: !1168, inlinedAt: !1207)
!1215 = !DILocation(line: 249, column: 27, scope: !1168, inlinedAt: !1207)
!1216 = !DILocation(line: 249, column: 17, scope: !1168, inlinedAt: !1207)
!1217 = !DILocation(line: 250, column: 7, scope: !1168, inlinedAt: !1207)
!1218 = !DILocation(line: 251, column: 20, scope: !1219, inlinedAt: !1207)
!1219 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 250, column: 7)
!1220 = !DILocation(line: 255, column: 23, scope: !1221, inlinedAt: !1207)
!1221 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 254, column: 7)
!1222 = !DILocation(line: 255, column: 21, scope: !1221, inlinedAt: !1207)
!1223 = !{!1224, !1224, i64 0}
!1224 = !{!"_Bool", !907, i64 0}
!1225 = !DILocation(line: 255, column: 5, scope: !1221, inlinedAt: !1207)
!1226 = !DILocation(line: 253, column: 18, scope: !1168, inlinedAt: !1207)
!1227 = !DILocation(line: 252, column: 8, scope: !1168, inlinedAt: !1207)
!1228 = !DILocation(line: 256, column: 24, scope: !1168, inlinedAt: !1207)
!1229 = !DILocation(line: 256, column: 12, scope: !1168, inlinedAt: !1207)
!1230 = !DILocation(line: 0, scope: !1190, inlinedAt: !1207)
!1231 = !DILocation(line: 259, column: 21, scope: !1196, inlinedAt: !1207)
!1232 = !DILocation(line: 259, column: 3, scope: !1190, inlinedAt: !1207)
!1233 = !DILocation(line: 280, column: 3, scope: !1168, inlinedAt: !1207)
!1234 = !DILocation(line: 262, column: 30, scope: !1195, inlinedAt: !1207)
!1235 = !DILocation(line: 262, column: 24, scope: !1195, inlinedAt: !1207)
!1236 = !DILocation(line: 262, column: 7, scope: !1195, inlinedAt: !1207)
!1237 = !DILocation(line: 262, column: 22, scope: !1195, inlinedAt: !1207)
!1238 = !DILocation(line: 263, column: 26, scope: !1194, inlinedAt: !1207)
!1239 = !DILocation(line: 263, column: 11, scope: !1195, inlinedAt: !1207)
!1240 = !DILocation(line: 265, column: 15, scope: !1193, inlinedAt: !1207)
!1241 = !DILocation(line: 266, column: 13, scope: !1242, inlinedAt: !1207)
!1242 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 265, column: 15)
!1243 = !DILocation(line: 266, column: 29, scope: !1242, inlinedAt: !1207)
!1244 = !DILocation(line: 267, column: 11, scope: !1193, inlinedAt: !1207)
!1245 = !DILocation(line: 0, scope: !1192, inlinedAt: !1207)
!1246 = !DILocation(line: 267, column: 11, scope: !1192, inlinedAt: !1207)
!1247 = !DILocation(line: 274, column: 15, scope: !1248, inlinedAt: !1207)
!1248 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 273, column: 9)
!1249 = !DILocation(line: 275, column: 31, scope: !1250, inlinedAt: !1207)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 274, column: 15)
!1251 = !DILocation(line: 275, column: 13, scope: !1250, inlinedAt: !1207)
!1252 = !DILocation(line: 275, column: 29, scope: !1250, inlinedAt: !1207)
!1253 = !DILocation(line: 276, column: 20, scope: !1248, inlinedAt: !1207)
!1254 = !DILocation(line: 259, column: 33, scope: !1196, inlinedAt: !1207)
!1255 = distinct !{!1255, !1232, !1256, !1017}
!1256 = !DILocation(line: 278, column: 5, scope: !1190, inlinedAt: !1207)
!1257 = !DILocation(line: 282, column: 22, scope: !1200, inlinedAt: !1207)
!1258 = !DILocation(line: 282, column: 25, scope: !1200, inlinedAt: !1207)
!1259 = !{i8 0, i8 2}
!1260 = !DILocation(line: 282, column: 11, scope: !1201, inlinedAt: !1207)
!1261 = !DILocation(line: 285, column: 43, scope: !1199, inlinedAt: !1207)
!1262 = !DILocation(line: 285, column: 21, scope: !1199, inlinedAt: !1207)
!1263 = !DILocation(line: 0, scope: !1199, inlinedAt: !1207)
!1264 = !DILocation(line: 288, column: 15, scope: !1199, inlinedAt: !1207)
!1265 = !DILocation(line: 290, column: 15, scope: !1266, inlinedAt: !1207)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 289, column: 13)
!1267 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 288, column: 15)
!1268 = !DILocation(line: 290, column: 21, scope: !1266, inlinedAt: !1207)
!1269 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1270, file: !2, line: 209, type: !415)
!1270 = distinct !DISubprogram(name: "fail_output", scope: !2, file: !2, line: 209, type: !1271, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!179, !415, !1118, !85}
!1273 = !{!1269, !1274, !1275, !1276, !1277, !1278}
!1274 = !DILocalVariable(name: "files", arg: 2, scope: !1270, file: !2, line: 209, type: !1118)
!1275 = !DILocalVariable(name: "i", arg: 3, scope: !1270, file: !2, line: 209, type: !85)
!1276 = !DILocalVariable(name: "w_errno", scope: !1270, file: !2, line: 211, type: !85)
!1277 = !DILocalVariable(name: "fail", scope: !1270, file: !2, line: 212, type: !179)
!1278 = !DILocalVariable(name: "__errstatus", scope: !1279, file: !2, line: 217, type: !1197)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 217, column: 7)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 216, column: 5)
!1281 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 215, column: 7)
!1282 = !DILocation(line: 0, scope: !1270, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 291, column: 19, scope: !1284, inlinedAt: !1207)
!1284 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 291, column: 19)
!1285 = !DILocation(line: 215, column: 7, scope: !1270, inlinedAt: !1283)
!1286 = !DILocation(line: 217, column: 7, scope: !1280, inlinedAt: !1283)
!1287 = !DILocation(line: 0, scope: !1279, inlinedAt: !1283)
!1288 = !DILocation(line: 217, column: 7, scope: !1279, inlinedAt: !1283)
!1289 = !DILocation(line: 213, column: 15, scope: !1270, inlinedAt: !1283)
!1290 = !DILocation(line: 221, column: 18, scope: !1270, inlinedAt: !1283)
!1291 = !DILocation(line: 291, column: 19, scope: !1266, inlinedAt: !1207)
!1292 = !DILocation(line: 293, column: 24, scope: !1266, inlinedAt: !1207)
!1293 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1294, file: !2, line: 197, type: !415)
!1294 = distinct !DISubprogram(name: "get_next_out", scope: !2, file: !2, line: 197, type: !1295, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!85, !415, !85, !85}
!1297 = !{!1293, !1298, !1299}
!1298 = !DILocalVariable(name: "nfiles", arg: 2, scope: !1294, file: !2, line: 197, type: !85)
!1299 = !DILocalVariable(name: "idx", arg: 3, scope: !1294, file: !2, line: 197, type: !85)
!1300 = !DILocation(line: 0, scope: !1294, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 294, column: 27, scope: !1266, inlinedAt: !1207)
!1302 = !DILocation(line: 199, column: 8, scope: !1303, inlinedAt: !1301)
!1303 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 199, column: 3)
!1304 = !DILocation(line: 199, column: 19, scope: !1305, inlinedAt: !1301)
!1305 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 199, column: 3)
!1306 = !DILocation(line: 199, column: 3, scope: !1303, inlinedAt: !1301)
!1307 = distinct !{!1307, !1233, !1308, !1017}
!1308 = !DILocation(line: 322, column: 5, scope: !1168, inlinedAt: !1207)
!1309 = !DILocation(line: 199, scope: !1303, inlinedAt: !1301)
!1310 = !DILocation(line: 200, column: 14, scope: !1311, inlinedAt: !1301)
!1311 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 200, column: 9)
!1312 = !DILocation(line: 200, column: 11, scope: !1311, inlinedAt: !1301)
!1313 = !DILocation(line: 200, column: 9, scope: !1305, inlinedAt: !1301)
!1314 = distinct !{!1314, !1306, !1315, !1017}
!1315 = !DILocation(line: 201, column: 14, scope: !1303, inlinedAt: !1301)
!1316 = !DILocation(line: 203, column: 1, scope: !1294, inlinedAt: !1301)
!1317 = distinct !{!1317, !1233, !1308, !1017}
!1318 = !DILocation(line: 299, column: 15, scope: !1319, inlinedAt: !1207)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 298, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 297, column: 20)
!1321 = !DILocation(line: 301, column: 13, scope: !1319, inlinedAt: !1207)
!1322 = !DILocation(line: 304, column: 20, scope: !1201, inlinedAt: !1207)
!1323 = !DILocation(line: 305, column: 22, scope: !1324, inlinedAt: !1207)
!1324 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 305, column: 11)
!1325 = !DILocation(line: 305, column: 26, scope: !1324, inlinedAt: !1207)
!1326 = !DILocation(line: 305, column: 29, scope: !1324, inlinedAt: !1207)
!1327 = !DILocation(line: 305, column: 35, scope: !1324, inlinedAt: !1207)
!1328 = !DILocation(line: 305, column: 11, scope: !1201, inlinedAt: !1207)
!1329 = distinct !{!1329, !1233, !1308, !1017}
!1330 = !DILocation(line: 307, column: 22, scope: !1331, inlinedAt: !1207)
!1331 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 307, column: 11)
!1332 = !DILocation(line: 307, column: 11, scope: !1201, inlinedAt: !1207)
!1333 = !DILocation(line: 0, scope: !1203, inlinedAt: !1207)
!1334 = !DILocation(line: 312, column: 7, scope: !1203, inlinedAt: !1207)
!1335 = distinct !{!1335, !1233, !1308, !1017}
!1336 = !DILocation(line: 313, column: 18, scope: !1337, inlinedAt: !1207)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 313, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 312, column: 7)
!1339 = !DILocation(line: 313, column: 15, scope: !1337, inlinedAt: !1207)
!1340 = !DILocation(line: 314, column: 13, scope: !1337, inlinedAt: !1207)
!1341 = !DILocation(line: 314, column: 18, scope: !1337, inlinedAt: !1207)
!1342 = !DILocation(line: 313, column: 13, scope: !1338, inlinedAt: !1207)
!1343 = !DILocation(line: 0, scope: !1270, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 316, column: 17, scope: !1345, inlinedAt: !1207)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 316, column: 17)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 315, column: 11)
!1347 = !DILocation(line: 211, column: 17, scope: !1270, inlinedAt: !1344)
!1348 = !DILocation(line: 212, column: 21, scope: !1270, inlinedAt: !1344)
!1349 = !DILocation(line: 215, column: 7, scope: !1270, inlinedAt: !1344)
!1350 = !DILocation(line: 217, column: 7, scope: !1280, inlinedAt: !1344)
!1351 = !DILocation(line: 0, scope: !1279, inlinedAt: !1344)
!1352 = !DILocation(line: 217, column: 7, scope: !1279, inlinedAt: !1344)
!1353 = !DILocation(line: 213, column: 15, scope: !1270, inlinedAt: !1344)
!1354 = !DILocation(line: 221, column: 18, scope: !1270, inlinedAt: !1344)
!1355 = !DILocation(line: 316, column: 17, scope: !1346, inlinedAt: !1207)
!1356 = !DILocation(line: 318, column: 22, scope: !1346, inlinedAt: !1207)
!1357 = !DILocation(line: 319, column: 19, scope: !1358, inlinedAt: !1207)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 319, column: 17)
!1359 = !DILocation(line: 319, column: 17, scope: !1346, inlinedAt: !1207)
!1360 = !DILocation(line: 0, scope: !1294, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 320, column: 27, scope: !1358, inlinedAt: !1207)
!1362 = !DILocation(line: 199, column: 8, scope: !1303, inlinedAt: !1361)
!1363 = !DILocation(line: 199, column: 19, scope: !1305, inlinedAt: !1361)
!1364 = !DILocation(line: 199, column: 3, scope: !1303, inlinedAt: !1361)
!1365 = !DILocation(line: 199, scope: !1303, inlinedAt: !1361)
!1366 = !DILocation(line: 200, column: 14, scope: !1311, inlinedAt: !1361)
!1367 = !DILocation(line: 200, column: 11, scope: !1311, inlinedAt: !1361)
!1368 = !DILocation(line: 200, column: 9, scope: !1305, inlinedAt: !1361)
!1369 = distinct !{!1369, !1364, !1370, !1017}
!1370 = !DILocation(line: 201, column: 14, scope: !1303, inlinedAt: !1361)
!1371 = !DILocation(line: 203, column: 1, scope: !1294, inlinedAt: !1361)
!1372 = !DILocation(line: 0, scope: !1201, inlinedAt: !1207)
!1373 = !DILocation(line: 312, column: 37, scope: !1338, inlinedAt: !1207)
!1374 = !DILocation(line: 312, column: 25, scope: !1338, inlinedAt: !1207)
!1375 = distinct !{!1375, !1334, !1376, !1017}
!1376 = !DILocation(line: 321, column: 11, scope: !1203, inlinedAt: !1207)
!1377 = !DILocation(line: 324, column: 18, scope: !1378, inlinedAt: !1207)
!1378 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 324, column: 7)
!1379 = !DILocation(line: 324, column: 7, scope: !1168, inlinedAt: !1207)
!1380 = !DILocation(line: 326, column: 7, scope: !1381, inlinedAt: !1207)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 325, column: 5)
!1382 = !DILocation(line: 328, column: 5, scope: !1381, inlinedAt: !1207)
!1383 = !DILocation(line: 0, scope: !1205, inlinedAt: !1207)
!1384 = !DILocation(line: 331, column: 3, scope: !1205, inlinedAt: !1207)
!1385 = !DILocation(line: 331, column: 21, scope: !1386, inlinedAt: !1207)
!1386 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 331, column: 3)
!1387 = !DILocation(line: 338, column: 3, scope: !1168, inlinedAt: !1207)
!1388 = !DILocation(line: 339, column: 7, scope: !1168, inlinedAt: !1207)
!1389 = !DILocation(line: 332, column: 14, scope: !1390, inlinedAt: !1207)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 332, column: 9)
!1391 = !DILocation(line: 332, column: 11, scope: !1390, inlinedAt: !1207)
!1392 = !DILocation(line: 332, column: 29, scope: !1390, inlinedAt: !1207)
!1393 = !DILocation(line: 332, column: 34, scope: !1390, inlinedAt: !1207)
!1394 = !DILocation(line: 332, column: 9, scope: !1386, inlinedAt: !1207)
!1395 = !DILocation(line: 334, column: 9, scope: !1396, inlinedAt: !1207)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 333, column: 7)
!1397 = !DILocation(line: 336, column: 7, scope: !1396, inlinedAt: !1207)
!1398 = !DILocation(line: 331, column: 33, scope: !1386, inlinedAt: !1207)
!1399 = distinct !{!1399, !1384, !1400, !1017}
!1400 = !DILocation(line: 336, column: 7, scope: !1205, inlinedAt: !1207)
!1401 = !DILocation(line: 340, column: 5, scope: !1402, inlinedAt: !1207)
!1402 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 339, column: 7)
!1403 = !DILocation(line: 343, column: 1, scope: !1168, inlinedAt: !1207)
!1404 = !DILocation(line: 185, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 185, column: 7)
!1406 = !DILocation(line: 185, column: 28, scope: !1405)
!1407 = !DILocation(line: 185, column: 7, scope: !1115)
!1408 = !DILocation(line: 186, column: 5, scope: !1405)
!1409 = !DILocation(line: 188, column: 10, scope: !1115)
!1410 = !DILocation(line: 188, column: 3, scope: !1115)
!1411 = !DISubprogram(name: "bindtextdomain", scope: !952, file: !952, line: 86, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!130, !141, !141}
!1414 = !DISubprogram(name: "textdomain", scope: !952, file: !952, line: 82, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1415 = !DISubprogram(name: "atexit", scope: !1091, file: !1091, line: 602, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!85, !468}
!1418 = !DISubprogram(name: "getopt_long", scope: !410, file: !410, line: 66, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!85, !85, !1421, !141, !1423, !415}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1424 = !DISubprogram(name: "signal", scope: !133, file: !133, line: 88, type: !1425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!132, !85, !132}
!1427 = !DISubprogram(name: "__errno_location", scope: !1428, file: !1428, line: 37, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1428 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!415}
!1431 = !DISubprogram(name: "free", scope: !1091, file: !1091, line: 555, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !131}
!1434 = !DISubprogram(name: "close", scope: !1435, file: !1435, line: 358, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1435 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!85, !85}
!1438 = distinct !DISubprogram(name: "iopoll", scope: !421, file: !421, line: 139, type: !1439, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!85, !85, !85, !179}
!1441 = !{!1442, !1443, !1444}
!1442 = !DILocalVariable(name: "fdin", arg: 1, scope: !1438, file: !421, line: 139, type: !85)
!1443 = !DILocalVariable(name: "fdout", arg: 2, scope: !1438, file: !421, line: 139, type: !85)
!1444 = !DILocalVariable(name: "block", arg: 3, scope: !1438, file: !421, line: 139, type: !179)
!1445 = !DILocation(line: 0, scope: !1438)
!1446 = !DILocation(line: 141, column: 10, scope: !1438)
!1447 = !DILocation(line: 141, column: 3, scope: !1438)
!1448 = distinct !DISubprogram(name: "iopoll_internal", scope: !421, file: !421, line: 62, type: !1449, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!85, !85, !85, !179, !179}
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1465, !1466}
!1452 = !DILocalVariable(name: "fdin", arg: 1, scope: !1448, file: !421, line: 62, type: !85)
!1453 = !DILocalVariable(name: "fdout", arg: 2, scope: !1448, file: !421, line: 62, type: !85)
!1454 = !DILocalVariable(name: "block", arg: 3, scope: !1448, file: !421, line: 62, type: !179)
!1455 = !DILocalVariable(name: "broken_output", arg: 4, scope: !1448, file: !421, line: 62, type: !179)
!1456 = !DILocalVariable(name: "pfds", scope: !1448, file: !421, line: 67, type: !1457)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1458, size: 128, elements: !280)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1459, line: 36, size: 64, elements: !1460)
!1459 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!1460 = !{!1461, !1462, !1464}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1458, file: !1459, line: 38, baseType: !85, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1458, file: !1459, line: 39, baseType: !1463, size: 16, offset: 32)
!1463 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1458, file: !1459, line: 40, baseType: !1463, size: 16, offset: 48)
!1465 = !DILocalVariable(name: "check_out_events", scope: !1448, file: !421, line: 71, type: !85)
!1466 = !DILocalVariable(name: "ret", scope: !1448, file: !421, line: 72, type: !85)
!1467 = !DILocation(line: 0, scope: !1448)
!1468 = !DILocation(line: 64, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !421, line: 64, column: 3)
!1470 = distinct !DILexicalBlock(scope: !1448, file: !421, line: 64, column: 3)
!1471 = !DILocation(line: 67, column: 3, scope: !1448)
!1472 = !DILocation(line: 67, column: 17, scope: !1448)
!1473 = !DILocation(line: 68, column: 5, scope: !1448)
!1474 = !{!1475, !971, i64 0}
!1475 = !{!"pollfd", !971, i64 0, !1012, i64 4, !1012, i64 6}
!1476 = !{!1475, !1012, i64 4}
!1477 = !{!1475, !1012, i64 6}
!1478 = !DILocation(line: 67, column: 27, scope: !1448)
!1479 = !DILocation(line: 69, column: 5, scope: !1448)
!1480 = !DILocation(line: 74, column: 7, scope: !1448)
!1481 = !DILocation(line: 76, column: 39, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !421, line: 75, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1448, file: !421, line: 74, column: 7)
!1484 = !DILocation(line: 76, column: 22, scope: !1482)
!1485 = !DILocation(line: 78, column: 5, scope: !1482)
!1486 = !DILocation(line: 80, column: 3, scope: !1448)
!1487 = !DILocation(line: 80, column: 12, scope: !1448)
!1488 = !DILocation(line: 80, column: 19, scope: !1448)
!1489 = !DILocation(line: 80, column: 22, scope: !1448)
!1490 = !DILocation(line: 80, column: 28, scope: !1448)
!1491 = !DILocation(line: 82, column: 13, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1448, file: !421, line: 81, column: 5)
!1493 = !DILocation(line: 84, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1492, file: !421, line: 84, column: 11)
!1495 = !DILocation(line: 84, column: 11, scope: !1492)
!1496 = distinct !{!1496, !1486, !1497, !1017}
!1497 = !DILocation(line: 93, column: 5, scope: !1448)
!1498 = !DILocation(line: 86, column: 15, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !421, line: 86, column: 11)
!1500 = !DILocation(line: 86, column: 20, scope: !1499)
!1501 = !DILocation(line: 88, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !421, line: 88, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !421, line: 88, column: 7)
!1504 = !DILocation(line: 88, column: 7, scope: !1503)
!1505 = !DILocation(line: 89, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1492, file: !421, line: 89, column: 11)
!1507 = !DILocation(line: 89, column: 11, scope: !1506)
!1508 = !DILocation(line: 89, column: 11, scope: !1492)
!1509 = !DILocation(line: 91, column: 19, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1492, file: !421, line: 91, column: 11)
!1511 = !DILocation(line: 91, column: 11, scope: !1510)
!1512 = !DILocation(line: 91, column: 27, scope: !1510)
!1513 = !DILocation(line: 91, column: 11, scope: !1492)
!1514 = !DILocation(line: 92, column: 16, scope: !1510)
!1515 = !DILocation(line: 92, column: 9, scope: !1510)
!1516 = !DILocation(line: 136, column: 1, scope: !1448)
!1517 = !DISubprogram(name: "__assert_fail", scope: !1518, file: !1518, line: 69, type: !1519, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1518 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !141, !141, !76, !141}
!1521 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !421, file: !421, line: 151, type: !1522, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!179, !85}
!1524 = !{!1525, !1526, !1562}
!1525 = !DILocalVariable(name: "fdin", arg: 1, scope: !1521, file: !421, line: 151, type: !85)
!1526 = !DILocalVariable(name: "st", scope: !1521, file: !421, line: 153, type: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1528, line: 44, size: 1024, elements: !1529)
!1528 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1529 = !{!1530, !1532, !1534, !1536, !1538, !1540, !1542, !1543, !1544, !1545, !1547, !1548, !1550, !1558, !1559, !1560}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1527, file: !1528, line: 46, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !235, line: 145, baseType: !140)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1527, file: !1528, line: 47, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !235, line: 148, baseType: !140)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1527, file: !1528, line: 48, baseType: !1535, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !235, line: 150, baseType: !76)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1527, file: !1528, line: 49, baseType: !1537, size: 32, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !235, line: 151, baseType: !76)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1527, file: !1528, line: 50, baseType: !1539, size: 32, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !235, line: 146, baseType: !76)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1527, file: !1528, line: 51, baseType: !1541, size: 32, offset: 224)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !235, line: 147, baseType: !76)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1527, file: !1528, line: 52, baseType: !1531, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1527, file: !1528, line: 53, baseType: !1531, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1527, file: !1528, line: 54, baseType: !234, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1527, file: !1528, line: 55, baseType: !1546, size: 32, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !235, line: 175, baseType: !85)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1527, file: !1528, line: 56, baseType: !85, size: 32, offset: 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1527, file: !1528, line: 57, baseType: !1549, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !235, line: 180, baseType: !236)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1527, file: !1528, line: 65, baseType: !1551, size: 128, offset: 576)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1552, line: 11, size: 128, elements: !1553)
!1552 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1553 = !{!1554, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1551, file: !1552, line: 16, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !235, line: 160, baseType: !236)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1551, file: !1552, line: 21, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !235, line: 197, baseType: !236)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1527, file: !1528, line: 66, baseType: !1551, size: 128, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1527, file: !1528, line: 67, baseType: !1551, size: 128, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1527, file: !1528, line: 79, baseType: !1561, size: 64, offset: 960)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !280)
!1562 = !DILocalVariable(name: "always_ready", scope: !1521, file: !421, line: 154, type: !179)
!1563 = !DILocation(line: 0, scope: !1521)
!1564 = !DILocation(line: 153, column: 3, scope: !1521)
!1565 = !DILocation(line: 153, column: 15, scope: !1521)
!1566 = !DILocation(line: 154, column: 23, scope: !1521)
!1567 = !DILocation(line: 154, column: 41, scope: !1521)
!1568 = !DILocation(line: 155, column: 23, scope: !1521)
!1569 = !DILocation(line: 155, column: 27, scope: !1521)
!1570 = !{!1571, !971, i64 16}
!1571 = !{!"stat", !1572, i64 0, !1572, i64 8, !971, i64 16, !971, i64 20, !971, i64 24, !971, i64 28, !1572, i64 32, !1572, i64 40, !1572, i64 48, !971, i64 56, !971, i64 60, !1572, i64 64, !1573, i64 72, !1573, i64 88, !1573, i64 104, !907, i64 120}
!1572 = !{!"long", !907, i64 0}
!1573 = !{!"timespec", !1572, i64 0, !1572, i64 8}
!1574 = !DILocation(line: 156, column: 27, scope: !1521)
!1575 = !DILocation(line: 157, column: 10, scope: !1521)
!1576 = !DILocation(line: 158, column: 1, scope: !1521)
!1577 = !DILocation(line: 157, column: 3, scope: !1521)
!1578 = !DISubprogram(name: "fstat", scope: !1579, file: !1579, line: 210, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1579 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!85, !85, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1583 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !421, file: !421, line: 164, type: !1522, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1584)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "fdout", arg: 1, scope: !1583, file: !421, line: 164, type: !85)
!1586 = !DILocation(line: 0, scope: !1583)
!1587 = !DILocation(line: 166, column: 10, scope: !1583)
!1588 = !DILocation(line: 166, column: 26, scope: !1583)
!1589 = !DILocation(line: 166, column: 3, scope: !1583)
!1590 = distinct !DISubprogram(name: "close_wait", scope: !421, file: !421, line: 200, type: !1522, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1591)
!1591 = !{!1592}
!1592 = !DILocalVariable(name: "fd", arg: 1, scope: !1590, file: !421, line: 200, type: !85)
!1593 = !DILocation(line: 0, scope: !1590)
!1594 = !DILocation(line: 202, column: 3, scope: !1590)
!1595 = !DILocalVariable(name: "fd", arg: 1, scope: !1596, file: !421, line: 180, type: !85)
!1596 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !421, file: !421, line: 180, type: !1522, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1597)
!1597 = !{!1595}
!1598 = !DILocation(line: 0, scope: !1596, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 202, column: 10, scope: !1590)
!1600 = !DILocation(line: 182, column: 9, scope: !1601, inlinedAt: !1599)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !421, line: 182, column: 7)
!1602 = !DILocation(line: 187, column: 7, scope: !1603, inlinedAt: !1599)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !421, line: 187, column: 7)
!1604 = !DILocation(line: 187, column: 45, scope: !1603, inlinedAt: !1599)
!1605 = !DILocation(line: 187, column: 7, scope: !1596, inlinedAt: !1599)
!1606 = distinct !{!1606, !1594, !1607, !1017}
!1607 = !DILocation(line: 203, column: 5, scope: !1590)
!1608 = !DILocation(line: 189, column: 13, scope: !1609, inlinedAt: !1599)
!1609 = distinct !DILexicalBlock(scope: !1603, file: !421, line: 188, column: 5)
!1610 = !DILocation(line: 190, column: 7, scope: !1609, inlinedAt: !1599)
!1611 = !DILocation(line: 204, column: 10, scope: !1590)
!1612 = !DILocation(line: 204, column: 21, scope: !1590)
!1613 = !DILocation(line: 204, column: 3, scope: !1590)
!1614 = distinct !DISubprogram(name: "write_wait", scope: !421, file: !421, line: 211, type: !1615, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!179, !85, !128, !138}
!1617 = !{!1618, !1619, !1620, !1621, !1624}
!1618 = !DILocalVariable(name: "fd", arg: 1, scope: !1614, file: !421, line: 211, type: !85)
!1619 = !DILocalVariable(name: "buffer", arg: 2, scope: !1614, file: !421, line: 211, type: !128)
!1620 = !DILocalVariable(name: "size", arg: 3, scope: !1614, file: !421, line: 211, type: !138)
!1621 = !DILocalVariable(name: "buf", scope: !1614, file: !421, line: 213, type: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1624 = !DILocalVariable(name: "written", scope: !1625, file: !421, line: 217, type: !1183)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !421, line: 216, column: 5)
!1626 = !DILocation(line: 0, scope: !1614)
!1627 = !DILocation(line: 217, column: 25, scope: !1625)
!1628 = !DILocation(line: 0, scope: !1625)
!1629 = !DILocation(line: 218, column: 11, scope: !1625)
!1630 = !DILocation(line: 221, column: 12, scope: !1625)
!1631 = !DILocation(line: 222, column: 16, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !421, line: 222, column: 11)
!1633 = !DILocation(line: 222, column: 11, scope: !1625)
!1634 = !DILocation(line: 0, scope: !1596, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 225, column: 13, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1625, file: !421, line: 225, column: 11)
!1637 = !DILocation(line: 182, column: 9, scope: !1601, inlinedAt: !1635)
!1638 = !DILocation(line: 187, column: 7, scope: !1603, inlinedAt: !1635)
!1639 = !DILocation(line: 187, column: 45, scope: !1603, inlinedAt: !1635)
!1640 = !DILocation(line: 187, column: 7, scope: !1596, inlinedAt: !1635)
!1641 = !DILocation(line: 189, column: 13, scope: !1609, inlinedAt: !1635)
!1642 = !DILocation(line: 190, column: 7, scope: !1609, inlinedAt: !1635)
!1643 = !DILocation(line: 228, column: 11, scope: !1625)
!1644 = distinct !{!1644, !1645, !1646}
!1645 = !DILocation(line: 215, column: 3, scope: !1614)
!1646 = !DILocation(line: 229, column: 5, scope: !1614)
!1647 = !DILocation(line: 230, column: 1, scope: !1614)
!1648 = !DISubprogram(name: "write", scope: !1435, file: !1435, line: 378, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1183, !85, !128, !138}
!1651 = distinct !DISubprogram(name: "__argmatch_die", scope: !444, file: !444, line: 58, type: !469, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !955)
!1652 = !DILocation(line: 60, column: 3, scope: !1651)
!1653 = !DILocation(line: 61, column: 1, scope: !1651)
!1654 = distinct !DISubprogram(name: "argmatch", scope: !444, file: !444, line: 80, type: !1655, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1658)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!855, !141, !1657, !128, !138}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1659 = !DILocalVariable(name: "arg", arg: 1, scope: !1654, file: !444, line: 80, type: !141)
!1660 = !DILocalVariable(name: "arglist", arg: 2, scope: !1654, file: !444, line: 80, type: !1657)
!1661 = !DILocalVariable(name: "vallist", arg: 3, scope: !1654, file: !444, line: 81, type: !128)
!1662 = !DILocalVariable(name: "valsize", arg: 4, scope: !1654, file: !444, line: 81, type: !138)
!1663 = !DILocalVariable(name: "arglen", scope: !1654, file: !444, line: 83, type: !138)
!1664 = !DILocalVariable(name: "matchind", scope: !1654, file: !444, line: 85, type: !855)
!1665 = !DILocalVariable(name: "ambiguous", scope: !1654, file: !444, line: 86, type: !179)
!1666 = !DILocalVariable(name: "i", scope: !1667, file: !444, line: 89, type: !138)
!1667 = distinct !DILexicalBlock(scope: !1654, file: !444, line: 89, column: 3)
!1668 = !DILocation(line: 0, scope: !1654)
!1669 = !DILocation(line: 83, column: 19, scope: !1654)
!1670 = !DILocation(line: 0, scope: !1667)
!1671 = !DILocation(line: 89, column: 22, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !444, line: 89, column: 3)
!1673 = !DILocation(line: 89, column: 3, scope: !1667)
!1674 = !DILocation(line: 91, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !444, line: 91, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !444, line: 90, column: 5)
!1677 = !DILocation(line: 91, column: 11, scope: !1676)
!1678 = !DILocation(line: 93, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !444, line: 93, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !444, line: 92, column: 9)
!1681 = !DILocation(line: 93, column: 35, scope: !1679)
!1682 = !DILocation(line: 93, column: 15, scope: !1680)
!1683 = !DILocation(line: 96, column: 29, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !444, line: 96, column: 20)
!1685 = !DILocation(line: 96, column: 20, scope: !1679)
!1686 = !DILocation(line: 103, column: 19, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !444, line: 102, column: 19)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !444, line: 100, column: 13)
!1689 = !DILocation(line: 103, column: 63, scope: !1687)
!1690 = !DILocation(line: 103, column: 53, scope: !1687)
!1691 = !DILocation(line: 104, column: 63, scope: !1687)
!1692 = !DILocation(line: 104, column: 53, scope: !1687)
!1693 = !DILocalVariable(name: "__s1", arg: 1, scope: !1694, file: !983, line: 974, type: !128)
!1694 = distinct !DISubprogram(name: "memeq", scope: !983, file: !983, line: 974, type: !1695, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!179, !128, !128, !138}
!1697 = !{!1693, !1698, !1699}
!1698 = !DILocalVariable(name: "__s2", arg: 2, scope: !1694, file: !983, line: 974, type: !128)
!1699 = !DILocalVariable(name: "__n", arg: 3, scope: !1694, file: !983, line: 974, type: !138)
!1700 = !DILocation(line: 0, scope: !1694, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 103, column: 23, scope: !1687)
!1702 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1701)
!1703 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1701)
!1704 = !DILocation(line: 102, column: 19, scope: !1688)
!1705 = !DILocation(line: 109, column: 17, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1687, file: !444, line: 105, column: 17)
!1707 = !DILocation(line: 89, column: 35, scope: !1672)
!1708 = distinct !{!1708, !1673, !1709, !1017}
!1709 = !DILocation(line: 112, column: 5, scope: !1667)
!1710 = !DILocation(line: 0, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1654, file: !444, line: 113, column: 7)
!1712 = !DILocation(line: 117, column: 1, scope: !1654)
!1713 = !DISubprogram(name: "strlen", scope: !1087, file: !1087, line: 407, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!140, !141}
!1716 = distinct !DISubprogram(name: "argmatch_exact", scope: !444, file: !444, line: 120, type: !1717, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!855, !141, !1657}
!1719 = !{!1720, !1721, !1722}
!1720 = !DILocalVariable(name: "arg", arg: 1, scope: !1716, file: !444, line: 120, type: !141)
!1721 = !DILocalVariable(name: "arglist", arg: 2, scope: !1716, file: !444, line: 120, type: !1657)
!1722 = !DILocalVariable(name: "i", scope: !1723, file: !444, line: 123, type: !138)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !444, line: 123, column: 3)
!1724 = !DILocation(line: 0, scope: !1716)
!1725 = !DILocation(line: 0, scope: !1723)
!1726 = !DILocation(line: 123, column: 22, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !444, line: 123, column: 3)
!1728 = !DILocation(line: 123, column: 3, scope: !1723)
!1729 = !DILocalVariable(name: "__s1", arg: 1, scope: !1730, file: !983, line: 1359, type: !141)
!1730 = distinct !DISubprogram(name: "streq", scope: !983, file: !983, line: 1359, type: !984, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1731)
!1731 = !{!1729, !1732}
!1732 = !DILocalVariable(name: "__s2", arg: 2, scope: !1730, file: !983, line: 1359, type: !141)
!1733 = !DILocation(line: 0, scope: !1730, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 125, column: 11, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !444, line: 125, column: 11)
!1736 = distinct !DILexicalBlock(scope: !1727, file: !444, line: 124, column: 5)
!1737 = !DILocation(line: 1361, column: 11, scope: !1730, inlinedAt: !1734)
!1738 = !DILocation(line: 1361, column: 10, scope: !1730, inlinedAt: !1734)
!1739 = !DILocation(line: 125, column: 11, scope: !1736)
!1740 = !DILocation(line: 123, column: 35, scope: !1727)
!1741 = distinct !{!1741, !1728, !1742, !1017}
!1742 = !DILocation(line: 127, column: 5, scope: !1723)
!1743 = !DILocation(line: 130, column: 1, scope: !1716)
!1744 = distinct !DISubprogram(name: "argmatch_invalid", scope: !444, file: !444, line: 138, type: !1745, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !141, !141, !855}
!1747 = !{!1748, !1749, !1750, !1751}
!1748 = !DILocalVariable(name: "context", arg: 1, scope: !1744, file: !444, line: 138, type: !141)
!1749 = !DILocalVariable(name: "value", arg: 2, scope: !1744, file: !444, line: 138, type: !141)
!1750 = !DILocalVariable(name: "problem", arg: 3, scope: !1744, file: !444, line: 138, type: !855)
!1751 = !DILocalVariable(name: "format", scope: !1744, file: !444, line: 140, type: !141)
!1752 = !DILocation(line: 0, scope: !1744)
!1753 = !DILocation(line: 140, column: 33, scope: !1744)
!1754 = !DILocation(line: 140, column: 25, scope: !1744)
!1755 = !DILocation(line: 144, column: 3, scope: !1744)
!1756 = !DILocation(line: 146, column: 1, scope: !1744)
!1757 = distinct !DISubprogram(name: "argmatch_valid", scope: !444, file: !444, line: 153, type: !1758, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1760)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1657, !128, !138}
!1760 = !{!1761, !1762, !1763, !1764, !1765}
!1761 = !DILocalVariable(name: "arglist", arg: 1, scope: !1757, file: !444, line: 153, type: !1657)
!1762 = !DILocalVariable(name: "vallist", arg: 2, scope: !1757, file: !444, line: 154, type: !128)
!1763 = !DILocalVariable(name: "valsize", arg: 3, scope: !1757, file: !444, line: 154, type: !138)
!1764 = !DILocalVariable(name: "last_val", scope: !1757, file: !444, line: 156, type: !141)
!1765 = !DILocalVariable(name: "i", scope: !1766, file: !444, line: 161, type: !138)
!1766 = distinct !DILexicalBlock(scope: !1757, file: !444, line: 161, column: 3)
!1767 = !DILocation(line: 0, scope: !1757)
!1768 = !DILocation(line: 160, column: 3, scope: !1757)
!1769 = !DILocation(line: 0, scope: !1766)
!1770 = !DILocation(line: 161, column: 22, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !444, line: 161, column: 3)
!1772 = !DILocation(line: 161, column: 3, scope: !1766)
!1773 = !DILocation(line: 172, column: 3, scope: !1757)
!1774 = !DILocalVariable(name: "__c", arg: 1, scope: !1775, file: !1776, line: 101, type: !85)
!1775 = distinct !DISubprogram(name: "putc_unlocked", scope: !1776, file: !1776, line: 101, type: !1777, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1813)
!1776 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!85, !85, !1779}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1781, file: !212, line: 51, baseType: !85, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1781, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1781, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1781, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1781, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1781, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1781, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1781, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1781, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1781, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1781, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1781, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1781, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1781, file: !212, line: 70, baseType: !1797, size: 64, offset: 832)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1781, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1781, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1781, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1781, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1781, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1781, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1781, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1781, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1781, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1781, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1781, file: !212, line: 93, baseType: !1797, size: 64, offset: 1344)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1781, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1781, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1781, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1781, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!1813 = !{!1774, !1814}
!1814 = !DILocalVariable(name: "__stream", arg: 2, scope: !1775, file: !1776, line: 101, type: !1779)
!1815 = !DILocation(line: 0, scope: !1775, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 172, column: 3, scope: !1757)
!1817 = !DILocation(line: 103, column: 10, scope: !1775, inlinedAt: !1816)
!1818 = !{!1819, !906, i64 40}
!1819 = !{!"_IO_FILE", !971, i64 0, !906, i64 8, !906, i64 16, !906, i64 24, !906, i64 32, !906, i64 40, !906, i64 48, !906, i64 56, !906, i64 64, !906, i64 72, !906, i64 80, !906, i64 88, !906, i64 96, !906, i64 104, !971, i64 112, !971, i64 116, !1572, i64 120, !1012, i64 128, !907, i64 130, !907, i64 131, !906, i64 136, !1572, i64 144, !906, i64 152, !906, i64 160, !906, i64 168, !906, i64 176, !1572, i64 184, !971, i64 192, !907, i64 196}
!1820 = !{!1819, !906, i64 48}
!1821 = !{!"branch_weights", i32 2000, i32 1}
!1822 = !DILocation(line: 173, column: 1, scope: !1757)
!1823 = !DILocation(line: 162, column: 12, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1771, file: !444, line: 162, column: 9)
!1825 = !DILocation(line: 163, column: 9, scope: !1824)
!1826 = !DILocation(line: 163, column: 63, scope: !1824)
!1827 = !DILocation(line: 163, column: 53, scope: !1824)
!1828 = !DILocation(line: 0, scope: !1694, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 163, column: 13, scope: !1824)
!1830 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1829)
!1831 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1829)
!1832 = !DILocation(line: 162, column: 9, scope: !1771)
!1833 = !DILocation(line: 166, column: 53, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1824, file: !444, line: 164, column: 7)
!1835 = !DILocation(line: 165, column: 9, scope: !1834)
!1836 = !DILocation(line: 166, column: 43, scope: !1834)
!1837 = !DILocation(line: 167, column: 7, scope: !1834)
!1838 = !DILocation(line: 170, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1824, file: !444, line: 169, column: 7)
!1840 = !DILocation(line: 161, column: 35, scope: !1771)
!1841 = distinct !{!1841, !1772, !1842, !1017}
!1842 = !DILocation(line: 171, column: 7, scope: !1766)
!1843 = !DISubprogram(name: "__overflow", scope: !500, file: !500, line: 886, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!85, !1779, !85}
!1846 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !444, file: !444, line: 182, type: !1847, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!855, !141, !141, !1657, !128, !138, !466, !179}
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857}
!1850 = !DILocalVariable(name: "context", arg: 1, scope: !1846, file: !444, line: 182, type: !141)
!1851 = !DILocalVariable(name: "arg", arg: 2, scope: !1846, file: !444, line: 183, type: !141)
!1852 = !DILocalVariable(name: "arglist", arg: 3, scope: !1846, file: !444, line: 183, type: !1657)
!1853 = !DILocalVariable(name: "vallist", arg: 4, scope: !1846, file: !444, line: 184, type: !128)
!1854 = !DILocalVariable(name: "valsize", arg: 5, scope: !1846, file: !444, line: 184, type: !138)
!1855 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1846, file: !444, line: 185, type: !466)
!1856 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1846, file: !444, line: 186, type: !179)
!1857 = !DILocalVariable(name: "res", scope: !1846, file: !444, line: 188, type: !855)
!1858 = !DILocation(line: 0, scope: !1846)
!1859 = !DILocation(line: 189, column: 7, scope: !1846)
!1860 = !DILocation(line: 0, scope: !1654, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 190, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1846, file: !444, line: 189, column: 7)
!1863 = !DILocation(line: 83, column: 19, scope: !1654, inlinedAt: !1861)
!1864 = !DILocation(line: 0, scope: !1667, inlinedAt: !1861)
!1865 = !DILocation(line: 89, column: 22, scope: !1672, inlinedAt: !1861)
!1866 = !DILocation(line: 89, column: 3, scope: !1667, inlinedAt: !1861)
!1867 = !DILocation(line: 91, column: 12, scope: !1675, inlinedAt: !1861)
!1868 = !DILocation(line: 91, column: 11, scope: !1676, inlinedAt: !1861)
!1869 = !DILocation(line: 93, column: 15, scope: !1679, inlinedAt: !1861)
!1870 = !DILocation(line: 93, column: 35, scope: !1679, inlinedAt: !1861)
!1871 = !DILocation(line: 93, column: 15, scope: !1680, inlinedAt: !1861)
!1872 = !DILocation(line: 96, column: 29, scope: !1684, inlinedAt: !1861)
!1873 = !DILocation(line: 96, column: 20, scope: !1679, inlinedAt: !1861)
!1874 = !DILocation(line: 103, column: 19, scope: !1687, inlinedAt: !1861)
!1875 = !DILocation(line: 103, column: 63, scope: !1687, inlinedAt: !1861)
!1876 = !DILocation(line: 103, column: 53, scope: !1687, inlinedAt: !1861)
!1877 = !DILocation(line: 104, column: 63, scope: !1687, inlinedAt: !1861)
!1878 = !DILocation(line: 104, column: 53, scope: !1687, inlinedAt: !1861)
!1879 = !DILocation(line: 0, scope: !1694, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 103, column: 23, scope: !1687, inlinedAt: !1861)
!1881 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1880)
!1882 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1880)
!1883 = !DILocation(line: 102, column: 19, scope: !1688, inlinedAt: !1861)
!1884 = !DILocation(line: 89, column: 35, scope: !1672, inlinedAt: !1861)
!1885 = distinct !{!1885, !1866, !1886, !1017}
!1886 = !DILocation(line: 112, column: 5, scope: !1667, inlinedAt: !1861)
!1887 = !DILocation(line: 0, scope: !1711, inlinedAt: !1861)
!1888 = !DILocation(line: 0, scope: !1716, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 192, column: 11, scope: !1862)
!1890 = !DILocation(line: 0, scope: !1723, inlinedAt: !1889)
!1891 = !DILocation(line: 123, column: 22, scope: !1727, inlinedAt: !1889)
!1892 = !DILocation(line: 123, column: 3, scope: !1723, inlinedAt: !1889)
!1893 = !DILocation(line: 0, scope: !1730, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 125, column: 11, scope: !1735, inlinedAt: !1889)
!1895 = !DILocation(line: 1361, column: 11, scope: !1730, inlinedAt: !1894)
!1896 = !DILocation(line: 1361, column: 10, scope: !1730, inlinedAt: !1894)
!1897 = !DILocation(line: 125, column: 11, scope: !1736, inlinedAt: !1889)
!1898 = !DILocation(line: 123, column: 35, scope: !1727, inlinedAt: !1889)
!1899 = distinct !{!1899, !1892, !1900, !1017}
!1900 = !DILocation(line: 127, column: 5, scope: !1723, inlinedAt: !1889)
!1901 = !DILocation(line: 0, scope: !1862)
!1902 = !DILocation(line: 140, column: 33, scope: !1744, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 199, column: 3, scope: !1846)
!1904 = !DILocation(line: 194, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1846, file: !444, line: 194, column: 7)
!1906 = !DILocation(line: 194, column: 7, scope: !1846)
!1907 = !DILocation(line: 0, scope: !1744, inlinedAt: !1903)
!1908 = !DILocation(line: 140, column: 25, scope: !1744, inlinedAt: !1903)
!1909 = !DILocation(line: 144, column: 3, scope: !1744, inlinedAt: !1903)
!1910 = !DILocation(line: 200, column: 3, scope: !1846)
!1911 = !DILocation(line: 201, column: 3, scope: !1846)
!1912 = !DILocation(line: 203, column: 3, scope: !1846)
!1913 = !DILocation(line: 204, column: 1, scope: !1846)
!1914 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !444, file: !444, line: 209, type: !1915, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!141, !128, !1657, !128, !138}
!1917 = !{!1918, !1919, !1920, !1921, !1922}
!1918 = !DILocalVariable(name: "value", arg: 1, scope: !1914, file: !444, line: 209, type: !128)
!1919 = !DILocalVariable(name: "arglist", arg: 2, scope: !1914, file: !444, line: 210, type: !1657)
!1920 = !DILocalVariable(name: "vallist", arg: 3, scope: !1914, file: !444, line: 211, type: !128)
!1921 = !DILocalVariable(name: "valsize", arg: 4, scope: !1914, file: !444, line: 211, type: !138)
!1922 = !DILocalVariable(name: "i", scope: !1923, file: !444, line: 213, type: !138)
!1923 = distinct !DILexicalBlock(scope: !1914, file: !444, line: 213, column: 3)
!1924 = !DILocation(line: 0, scope: !1914)
!1925 = !DILocation(line: 0, scope: !1923)
!1926 = !DILocation(line: 213, column: 22, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !444, line: 213, column: 3)
!1928 = !DILocation(line: 213, column: 3, scope: !1923)
!1929 = !DILocation(line: 0, scope: !1694, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 214, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !444, line: 214, column: 9)
!1932 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1930)
!1933 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1930)
!1934 = !DILocation(line: 214, column: 9, scope: !1927)
!1935 = !DILocation(line: 213, column: 35, scope: !1927)
!1936 = distinct !{!1936, !1928, !1937, !1017}
!1937 = !DILocation(line: 215, column: 23, scope: !1923)
!1938 = !DILocation(line: 214, column: 56, scope: !1931)
!1939 = !DILocation(line: 214, column: 46, scope: !1931)
!1940 = !DILocation(line: 217, column: 1, scope: !1914)
!1941 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !474, file: !474, line: 50, type: !921, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1942)
!1942 = !{!1943}
!1943 = !DILocalVariable(name: "file", arg: 1, scope: !1941, file: !474, line: 50, type: !141)
!1944 = !DILocation(line: 0, scope: !1941)
!1945 = !DILocation(line: 52, column: 13, scope: !1941)
!1946 = !DILocation(line: 53, column: 1, scope: !1941)
!1947 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !474, file: !474, line: 87, type: !1948, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !179}
!1950 = !{!1951}
!1951 = !DILocalVariable(name: "ignore", arg: 1, scope: !1947, file: !474, line: 87, type: !179)
!1952 = !DILocation(line: 0, scope: !1947)
!1953 = !DILocation(line: 89, column: 16, scope: !1947)
!1954 = !DILocation(line: 90, column: 1, scope: !1947)
!1955 = distinct !DISubprogram(name: "close_stdout", scope: !474, file: !474, line: 116, type: !469, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1956)
!1956 = !{!1957}
!1957 = !DILocalVariable(name: "write_error", scope: !1958, file: !474, line: 121, type: !141)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !474, line: 120, column: 5)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !474, line: 118, column: 7)
!1960 = !DILocation(line: 118, column: 21, scope: !1959)
!1961 = !DILocation(line: 118, column: 7, scope: !1959)
!1962 = !DILocation(line: 118, column: 29, scope: !1959)
!1963 = !DILocation(line: 119, column: 7, scope: !1959)
!1964 = !DILocation(line: 119, column: 12, scope: !1959)
!1965 = !DILocation(line: 119, column: 25, scope: !1959)
!1966 = !DILocation(line: 119, column: 28, scope: !1959)
!1967 = !DILocation(line: 119, column: 34, scope: !1959)
!1968 = !DILocation(line: 118, column: 7, scope: !1955)
!1969 = !DILocation(line: 121, column: 33, scope: !1958)
!1970 = !DILocation(line: 0, scope: !1958)
!1971 = !DILocation(line: 122, column: 11, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1958, file: !474, line: 122, column: 11)
!1973 = !DILocation(line: 0, scope: !1972)
!1974 = !DILocation(line: 122, column: 11, scope: !1958)
!1975 = !DILocation(line: 123, column: 9, scope: !1972)
!1976 = !DILocation(line: 126, column: 9, scope: !1972)
!1977 = !DILocation(line: 128, column: 14, scope: !1958)
!1978 = !DILocation(line: 128, column: 7, scope: !1958)
!1979 = !DILocation(line: 133, column: 42, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1955, file: !474, line: 133, column: 7)
!1981 = !DILocation(line: 133, column: 28, scope: !1980)
!1982 = !DILocation(line: 133, column: 50, scope: !1980)
!1983 = !DILocation(line: 133, column: 7, scope: !1955)
!1984 = !DILocation(line: 134, column: 12, scope: !1980)
!1985 = !DILocation(line: 134, column: 5, scope: !1980)
!1986 = !DILocation(line: 135, column: 1, scope: !1955)
!1987 = !DISubprogram(name: "_exit", scope: !1435, file: !1435, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !955)
!1988 = distinct !DISubprogram(name: "verror", scope: !489, file: !489, line: 251, type: !1989, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !85, !85, !141, !499}
!1991 = !{!1992, !1993, !1994, !1995}
!1992 = !DILocalVariable(name: "status", arg: 1, scope: !1988, file: !489, line: 251, type: !85)
!1993 = !DILocalVariable(name: "errnum", arg: 2, scope: !1988, file: !489, line: 251, type: !85)
!1994 = !DILocalVariable(name: "message", arg: 3, scope: !1988, file: !489, line: 251, type: !141)
!1995 = !DILocalVariable(name: "args", arg: 4, scope: !1988, file: !489, line: 251, type: !499)
!1996 = !DILocation(line: 0, scope: !1988)
!1997 = !DILocation(line: 251, column: 1, scope: !1988)
!1998 = !DILocation(line: 261, column: 3, scope: !1988)
!1999 = !DILocation(line: 265, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1988, file: !489, line: 265, column: 7)
!2001 = !DILocation(line: 265, column: 7, scope: !1988)
!2002 = !DILocation(line: 266, column: 5, scope: !2000)
!2003 = !DILocation(line: 272, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !489, line: 268, column: 5)
!2005 = !DILocation(line: 276, column: 3, scope: !1988)
!2006 = !{i64 0, i64 8, !905, i64 8, i64 8, !905, i64 16, i64 8, !905, i64 24, i64 4, !970, i64 28, i64 4, !970}
!2007 = !DILocation(line: 282, column: 1, scope: !1988)
!2008 = distinct !DISubprogram(name: "flush_stdout", scope: !489, file: !489, line: 163, type: !469, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2009)
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "stdout_fd", scope: !2008, file: !489, line: 166, type: !85)
!2011 = !DILocation(line: 0, scope: !2008)
!2012 = !DILocalVariable(name: "fd", arg: 1, scope: !2013, file: !489, line: 145, type: !85)
!2013 = distinct !DISubprogram(name: "is_open", scope: !489, file: !489, line: 145, type: !1436, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2014)
!2014 = !{!2012}
!2015 = !DILocation(line: 0, scope: !2013, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 182, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2008, file: !489, line: 182, column: 7)
!2018 = !DILocation(line: 157, column: 15, scope: !2013, inlinedAt: !2016)
!2019 = !DILocation(line: 157, column: 12, scope: !2013, inlinedAt: !2016)
!2020 = !DILocation(line: 182, column: 7, scope: !2008)
!2021 = !DILocation(line: 184, column: 5, scope: !2017)
!2022 = !DILocation(line: 185, column: 1, scope: !2008)
!2023 = distinct !DISubprogram(name: "error_tail", scope: !489, file: !489, line: 219, type: !1989, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2024)
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DILocalVariable(name: "status", arg: 1, scope: !2023, file: !489, line: 219, type: !85)
!2026 = !DILocalVariable(name: "errnum", arg: 2, scope: !2023, file: !489, line: 219, type: !85)
!2027 = !DILocalVariable(name: "message", arg: 3, scope: !2023, file: !489, line: 219, type: !141)
!2028 = !DILocalVariable(name: "args", arg: 4, scope: !2023, file: !489, line: 219, type: !499)
!2029 = !DILocation(line: 0, scope: !2023)
!2030 = !DILocation(line: 219, column: 1, scope: !2023)
!2031 = !DILocation(line: 229, column: 13, scope: !2023)
!2032 = !DILocation(line: 135, column: 10, scope: !2033, inlinedAt: !2075)
!2033 = distinct !DISubprogram(name: "vfprintf", scope: !957, file: !957, line: 132, type: !2034, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2071)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!85, !2036, !961, !501}
!2036 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2037)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2039, file: !212, line: 51, baseType: !85, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2039, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2039, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2039, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2039, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2039, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2039, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2039, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2039, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2039, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2039, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2039, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2039, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2039, file: !212, line: 70, baseType: !2055, size: 64, offset: 832)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2039, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2039, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2039, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2039, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2039, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2039, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2039, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2039, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2039, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2039, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2039, file: !212, line: 93, baseType: !2055, size: 64, offset: 1344)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2039, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2039, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2039, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2039, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2071 = !{!2072, !2073, !2074}
!2072 = !DILocalVariable(name: "__stream", arg: 1, scope: !2033, file: !957, line: 132, type: !2036)
!2073 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2033, file: !957, line: 133, type: !961)
!2074 = !DILocalVariable(name: "__ap", arg: 3, scope: !2033, file: !957, line: 133, type: !501)
!2075 = distinct !DILocation(line: 229, column: 3, scope: !2023)
!2076 = !{!2077, !2079}
!2077 = distinct !{!2077, !2078, !"vfprintf.inline: argument 0"}
!2078 = distinct !{!2078, !"vfprintf.inline"}
!2079 = distinct !{!2079, !2078, !"vfprintf.inline: argument 1"}
!2080 = !DILocation(line: 229, column: 3, scope: !2023)
!2081 = !DILocation(line: 0, scope: !2033, inlinedAt: !2075)
!2082 = !DILocation(line: 133, column: 49, scope: !2033, inlinedAt: !2075)
!2083 = !DILocation(line: 232, column: 3, scope: !2023)
!2084 = !DILocation(line: 233, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2023, file: !489, line: 233, column: 7)
!2086 = !DILocation(line: 233, column: 7, scope: !2023)
!2087 = !DILocalVariable(name: "errnum", arg: 1, scope: !2088, file: !489, line: 188, type: !85)
!2088 = distinct !DISubprogram(name: "print_errno_message", scope: !489, file: !489, line: 188, type: !135, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2089)
!2089 = !{!2087, !2090, !2091}
!2090 = !DILocalVariable(name: "s", scope: !2088, file: !489, line: 190, type: !141)
!2091 = !DILocalVariable(name: "errbuf", scope: !2088, file: !489, line: 193, type: !2092)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2093)
!2093 = !{!2094}
!2094 = !DISubrange(count: 1024)
!2095 = !DILocation(line: 0, scope: !2088, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 234, column: 5, scope: !2085)
!2097 = !DILocation(line: 193, column: 3, scope: !2088, inlinedAt: !2096)
!2098 = !DILocation(line: 193, column: 8, scope: !2088, inlinedAt: !2096)
!2099 = !DILocation(line: 195, column: 7, scope: !2088, inlinedAt: !2096)
!2100 = !DILocation(line: 207, column: 9, scope: !2101, inlinedAt: !2096)
!2101 = distinct !DILexicalBlock(scope: !2088, file: !489, line: 207, column: 7)
!2102 = !DILocation(line: 207, column: 7, scope: !2088, inlinedAt: !2096)
!2103 = !DILocation(line: 208, column: 9, scope: !2101, inlinedAt: !2096)
!2104 = !DILocation(line: 208, column: 5, scope: !2101, inlinedAt: !2096)
!2105 = !DILocation(line: 214, column: 3, scope: !2088, inlinedAt: !2096)
!2106 = !DILocation(line: 216, column: 1, scope: !2088, inlinedAt: !2096)
!2107 = !DILocation(line: 234, column: 5, scope: !2085)
!2108 = !DILocation(line: 238, column: 3, scope: !2023)
!2109 = !DILocalVariable(name: "__c", arg: 1, scope: !2110, file: !1776, line: 101, type: !85)
!2110 = distinct !DISubprogram(name: "putc_unlocked", scope: !1776, file: !1776, line: 101, type: !2111, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!85, !85, !2037}
!2113 = !{!2109, !2114}
!2114 = !DILocalVariable(name: "__stream", arg: 2, scope: !2110, file: !1776, line: 101, type: !2037)
!2115 = !DILocation(line: 0, scope: !2110, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 238, column: 3, scope: !2023)
!2117 = !DILocation(line: 103, column: 10, scope: !2110, inlinedAt: !2116)
!2118 = !DILocation(line: 240, column: 3, scope: !2023)
!2119 = !DILocation(line: 241, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2023, file: !489, line: 241, column: 7)
!2121 = !DILocation(line: 241, column: 7, scope: !2023)
!2122 = !DILocation(line: 242, column: 5, scope: !2120)
!2123 = !DILocation(line: 243, column: 1, scope: !2023)
!2124 = !DISubprogram(name: "__vfprintf_chk", scope: !957, file: !957, line: 96, type: !2125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!85, !2036, !85, !961, !501}
!2127 = !DISubprogram(name: "strerror_r", scope: !1087, file: !1087, line: 444, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!130, !85, !130, !138}
!2130 = !DISubprogram(name: "fflush_unlocked", scope: !500, file: !500, line: 239, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!85, !2037}
!2133 = !DISubprogram(name: "fcntl", scope: !2134, file: !2134, line: 149, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2134 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!85, !85, !85, null}
!2137 = distinct !DISubprogram(name: "error", scope: !489, file: !489, line: 285, type: !2138, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !85, !85, !141, null}
!2140 = !{!2141, !2142, !2143, !2144}
!2141 = !DILocalVariable(name: "status", arg: 1, scope: !2137, file: !489, line: 285, type: !85)
!2142 = !DILocalVariable(name: "errnum", arg: 2, scope: !2137, file: !489, line: 285, type: !85)
!2143 = !DILocalVariable(name: "message", arg: 3, scope: !2137, file: !489, line: 285, type: !141)
!2144 = !DILocalVariable(name: "ap", scope: !2137, file: !489, line: 287, type: !499)
!2145 = !DILocation(line: 0, scope: !2137)
!2146 = !DILocation(line: 287, column: 3, scope: !2137)
!2147 = !DILocation(line: 287, column: 11, scope: !2137)
!2148 = !DILocation(line: 288, column: 3, scope: !2137)
!2149 = !DILocation(line: 289, column: 3, scope: !2137)
!2150 = !DILocation(line: 290, column: 3, scope: !2137)
!2151 = !DILocation(line: 291, column: 1, scope: !2137)
!2152 = !DILocation(line: 0, scope: !496)
!2153 = !DILocation(line: 298, column: 1, scope: !496)
!2154 = !DILocation(line: 302, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !496, file: !489, line: 302, column: 7)
!2156 = !DILocation(line: 302, column: 7, scope: !496)
!2157 = !DILocation(line: 307, column: 11, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !489, line: 307, column: 11)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !489, line: 303, column: 5)
!2160 = !DILocation(line: 307, column: 27, scope: !2158)
!2161 = !DILocation(line: 308, column: 11, scope: !2158)
!2162 = !DILocation(line: 308, column: 28, scope: !2158)
!2163 = !DILocation(line: 308, column: 25, scope: !2158)
!2164 = !DILocation(line: 309, column: 15, scope: !2158)
!2165 = !DILocation(line: 309, column: 33, scope: !2158)
!2166 = !DILocation(line: 310, column: 19, scope: !2158)
!2167 = !DILocation(line: 311, column: 22, scope: !2158)
!2168 = !DILocation(line: 311, column: 56, scope: !2158)
!2169 = !DILocation(line: 307, column: 11, scope: !2159)
!2170 = !DILocation(line: 316, column: 21, scope: !2159)
!2171 = !DILocation(line: 317, column: 23, scope: !2159)
!2172 = !DILocation(line: 318, column: 5, scope: !2159)
!2173 = !DILocation(line: 327, column: 3, scope: !496)
!2174 = !DILocation(line: 331, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !496, file: !489, line: 331, column: 7)
!2176 = !DILocation(line: 331, column: 7, scope: !496)
!2177 = !DILocation(line: 332, column: 5, scope: !2175)
!2178 = !DILocation(line: 338, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !489, line: 334, column: 5)
!2180 = !DILocation(line: 346, column: 3, scope: !496)
!2181 = !DILocation(line: 350, column: 3, scope: !496)
!2182 = !DILocation(line: 356, column: 1, scope: !496)
!2183 = distinct !DISubprogram(name: "error_at_line", scope: !489, file: !489, line: 359, type: !2184, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !85, !85, !141, !76, !141, null}
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192}
!2187 = !DILocalVariable(name: "status", arg: 1, scope: !2183, file: !489, line: 359, type: !85)
!2188 = !DILocalVariable(name: "errnum", arg: 2, scope: !2183, file: !489, line: 359, type: !85)
!2189 = !DILocalVariable(name: "file_name", arg: 3, scope: !2183, file: !489, line: 359, type: !141)
!2190 = !DILocalVariable(name: "line_number", arg: 4, scope: !2183, file: !489, line: 360, type: !76)
!2191 = !DILocalVariable(name: "message", arg: 5, scope: !2183, file: !489, line: 360, type: !141)
!2192 = !DILocalVariable(name: "ap", scope: !2183, file: !489, line: 362, type: !499)
!2193 = !DILocation(line: 0, scope: !2183)
!2194 = !DILocation(line: 362, column: 3, scope: !2183)
!2195 = !DILocation(line: 362, column: 11, scope: !2183)
!2196 = !DILocation(line: 363, column: 3, scope: !2183)
!2197 = !DILocation(line: 364, column: 3, scope: !2183)
!2198 = !DILocation(line: 366, column: 3, scope: !2183)
!2199 = !DILocation(line: 367, column: 1, scope: !2183)
!2200 = distinct !DISubprogram(name: "fdadvise", scope: !816, file: !816, line: 25, type: !2201, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2205)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !85, !2203, !2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !500, line: 63, baseType: !234)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !105, line: 51, baseType: !104)
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DILocalVariable(name: "fd", arg: 1, scope: !2200, file: !816, line: 25, type: !85)
!2207 = !DILocalVariable(name: "offset", arg: 2, scope: !2200, file: !816, line: 25, type: !2203)
!2208 = !DILocalVariable(name: "len", arg: 3, scope: !2200, file: !816, line: 25, type: !2203)
!2209 = !DILocalVariable(name: "advice", arg: 4, scope: !2200, file: !816, line: 25, type: !2204)
!2210 = !DILocation(line: 0, scope: !2200)
!2211 = !DILocation(line: 28, column: 3, scope: !2200)
!2212 = !DILocation(line: 30, column: 1, scope: !2200)
!2213 = !DISubprogram(name: "posix_fadvise", scope: !2134, file: !2134, line: 273, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!85, !85, !2203, !2203, !85}
!2216 = distinct !DISubprogram(name: "fadvise", scope: !816, file: !816, line: 33, type: !2217, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2253)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !2219, !2204}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2222)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2221, file: !212, line: 51, baseType: !85, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2221, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2221, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2221, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2221, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2221, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2221, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2221, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2221, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2221, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2221, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2221, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2221, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2221, file: !212, line: 70, baseType: !2237, size: 64, offset: 832)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2221, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2221, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2221, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2221, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2221, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2221, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2221, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2221, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2221, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2221, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2221, file: !212, line: 93, baseType: !2237, size: 64, offset: 1344)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2221, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2221, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2221, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2221, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "fp", arg: 1, scope: !2216, file: !816, line: 33, type: !2219)
!2255 = !DILocalVariable(name: "advice", arg: 2, scope: !2216, file: !816, line: 33, type: !2204)
!2256 = !DILocation(line: 0, scope: !2216)
!2257 = !DILocation(line: 35, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2216, file: !816, line: 35, column: 7)
!2259 = !DILocation(line: 35, column: 7, scope: !2216)
!2260 = !DILocation(line: 36, column: 15, scope: !2258)
!2261 = !DILocation(line: 0, scope: !2200, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 36, column: 5, scope: !2258)
!2263 = !DILocation(line: 28, column: 3, scope: !2200, inlinedAt: !2262)
!2264 = !DILocation(line: 36, column: 5, scope: !2258)
!2265 = !DILocation(line: 37, column: 1, scope: !2216)
!2266 = !DISubprogram(name: "fileno", scope: !500, file: !500, line: 809, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!85, !2219}
!2269 = distinct !DISubprogram(name: "open_safer", scope: !819, file: !819, line: 29, type: !2270, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!85, !141, !85, null}
!2272 = !{!2273, !2274, !2275, !2277}
!2273 = !DILocalVariable(name: "file", arg: 1, scope: !2269, file: !819, line: 29, type: !141)
!2274 = !DILocalVariable(name: "flags", arg: 2, scope: !2269, file: !819, line: 29, type: !85)
!2275 = !DILocalVariable(name: "mode", scope: !2269, file: !819, line: 31, type: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1184, line: 69, baseType: !1535)
!2277 = !DILocalVariable(name: "ap", scope: !2278, file: !819, line: 35, type: !2280)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !819, line: 34, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2269, file: !819, line: 33, column: 7)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !502, line: 22, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2282, baseType: !2283)
!2282 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2283, file: !2282, line: 35, baseType: !131, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2283, file: !2282, line: 35, baseType: !131, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2283, file: !2282, line: 35, baseType: !131, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2283, file: !2282, line: 35, baseType: !85, size: 32, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2283, file: !2282, line: 35, baseType: !85, size: 32, offset: 224)
!2290 = !DILocation(line: 0, scope: !2269)
!2291 = !DILocation(line: 33, column: 13, scope: !2279)
!2292 = !DILocation(line: 33, column: 7, scope: !2269)
!2293 = !DILocation(line: 35, column: 7, scope: !2278)
!2294 = !DILocation(line: 35, column: 15, scope: !2278)
!2295 = !DILocation(line: 36, column: 7, scope: !2278)
!2296 = !DILocation(line: 40, column: 14, scope: !2278)
!2297 = !DILocation(line: 42, column: 7, scope: !2278)
!2298 = !DILocation(line: 43, column: 5, scope: !2279)
!2299 = !DILocation(line: 43, column: 5, scope: !2278)
!2300 = !DILocation(line: 45, column: 20, scope: !2269)
!2301 = !DILocation(line: 45, column: 10, scope: !2269)
!2302 = !DILocation(line: 45, column: 3, scope: !2269)
!2303 = !DISubprogram(name: "open", scope: !2134, file: !2134, line: 181, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2304 = distinct !DISubprogram(name: "getprogname", scope: !821, file: !821, line: 54, type: !2305, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !955)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!141}
!2307 = !DILocation(line: 58, column: 10, scope: !2304)
!2308 = !DILocation(line: 58, column: 3, scope: !2304)
!2309 = distinct !DISubprogram(name: "isapipe", scope: !823, file: !823, line: 72, type: !1436, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !2310)
!2310 = !{!2311, !2312, !2314, !2315, !2338}
!2311 = !DILocalVariable(name: "fd", arg: 1, scope: !2309, file: !823, line: 72, type: !85)
!2312 = !DILocalVariable(name: "pipe_link_count_max", scope: !2309, file: !823, line: 74, type: !2313)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1184, line: 74, baseType: !1537)
!2314 = !DILocalVariable(name: "check_for_fifo", scope: !2309, file: !823, line: 75, type: !179)
!2315 = !DILocalVariable(name: "st", scope: !2309, file: !823, line: 77, type: !2316)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1528, line: 44, size: 1024, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2335, !2336, !2337}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2316, file: !1528, line: 46, baseType: !1531, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2316, file: !1528, line: 47, baseType: !1533, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2316, file: !1528, line: 48, baseType: !1535, size: 32, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2316, file: !1528, line: 49, baseType: !1537, size: 32, offset: 160)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2316, file: !1528, line: 50, baseType: !1539, size: 32, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2316, file: !1528, line: 51, baseType: !1541, size: 32, offset: 224)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2316, file: !1528, line: 52, baseType: !1531, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2316, file: !1528, line: 53, baseType: !1531, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2316, file: !1528, line: 54, baseType: !234, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2316, file: !1528, line: 55, baseType: !1546, size: 32, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2316, file: !1528, line: 56, baseType: !85, size: 32, offset: 480)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2316, file: !1528, line: 57, baseType: !1549, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2316, file: !1528, line: 65, baseType: !2331, size: 128, offset: 576)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1552, line: 11, size: 128, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2331, file: !1552, line: 16, baseType: !1555, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2331, file: !1552, line: 21, baseType: !1557, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2316, file: !1528, line: 66, baseType: !2331, size: 128, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2316, file: !1528, line: 67, baseType: !2331, size: 128, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2316, file: !1528, line: 79, baseType: !1561, size: 64, offset: 960)
!2338 = !DILocalVariable(name: "fstat_result", scope: !2309, file: !823, line: 78, type: !85)
!2339 = !DILocation(line: 0, scope: !2309)
!2340 = !DILocation(line: 77, column: 3, scope: !2309)
!2341 = !DILocation(line: 77, column: 15, scope: !2309)
!2342 = !DILocation(line: 78, column: 22, scope: !2309)
!2343 = !DILocation(line: 79, column: 20, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2309, file: !823, line: 79, column: 7)
!2345 = !DILocation(line: 79, column: 7, scope: !2309)
!2346 = !DILocation(line: 118, column: 9, scope: !2309)
!2347 = !{!1571, !971, i64 20}
!2348 = !DILocation(line: 118, column: 18, scope: !2309)
!2349 = !DILocation(line: 119, column: 6, scope: !2309)
!2350 = !DILocation(line: 117, column: 3, scope: !2309)
!2351 = !DILocation(line: 120, column: 1, scope: !2309)
!2352 = distinct !DISubprogram(name: "set_program_name", scope: !540, file: !540, line: 37, type: !921, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2353)
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "argv0", arg: 1, scope: !2352, file: !540, line: 37, type: !141)
!2355 = !DILocalVariable(name: "slash", scope: !2352, file: !540, line: 44, type: !141)
!2356 = !DILocalVariable(name: "base", scope: !2352, file: !540, line: 45, type: !141)
!2357 = !DILocation(line: 0, scope: !2352)
!2358 = !DILocation(line: 44, column: 23, scope: !2352)
!2359 = !DILocation(line: 45, column: 22, scope: !2352)
!2360 = !DILocation(line: 46, column: 17, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2352, file: !540, line: 46, column: 7)
!2362 = !DILocation(line: 46, column: 9, scope: !2361)
!2363 = !DILocation(line: 46, column: 25, scope: !2361)
!2364 = !DILocation(line: 46, column: 40, scope: !2361)
!2365 = !DILocalVariable(name: "__s1", arg: 1, scope: !2366, file: !983, line: 974, type: !128)
!2366 = distinct !DISubprogram(name: "memeq", scope: !983, file: !983, line: 974, type: !1695, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !539, retainedNodes: !2367)
!2367 = !{!2365, !2368, !2369}
!2368 = !DILocalVariable(name: "__s2", arg: 2, scope: !2366, file: !983, line: 974, type: !128)
!2369 = !DILocalVariable(name: "__n", arg: 3, scope: !2366, file: !983, line: 974, type: !138)
!2370 = !DILocation(line: 0, scope: !2366, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 46, column: 28, scope: !2361)
!2372 = !DILocation(line: 976, column: 11, scope: !2366, inlinedAt: !2371)
!2373 = !DILocation(line: 976, column: 10, scope: !2366, inlinedAt: !2371)
!2374 = !DILocation(line: 46, column: 7, scope: !2352)
!2375 = !DILocation(line: 49, column: 11, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !540, line: 49, column: 11)
!2377 = distinct !DILexicalBlock(scope: !2361, file: !540, line: 47, column: 5)
!2378 = !DILocation(line: 49, column: 36, scope: !2376)
!2379 = !DILocation(line: 49, column: 11, scope: !2377)
!2380 = !DILocation(line: 65, column: 16, scope: !2352)
!2381 = !DILocation(line: 71, column: 27, scope: !2352)
!2382 = !DILocation(line: 74, column: 33, scope: !2352)
!2383 = !DILocation(line: 76, column: 1, scope: !2352)
!2384 = !DISubprogram(name: "strrchr", scope: !1087, file: !1087, line: 273, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2385 = !DILocation(line: 0, scope: !549)
!2386 = !DILocation(line: 40, column: 29, scope: !549)
!2387 = !DILocation(line: 41, column: 19, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !549, file: !550, line: 41, column: 7)
!2389 = !DILocation(line: 41, column: 7, scope: !549)
!2390 = !DILocation(line: 47, column: 3, scope: !549)
!2391 = !DILocation(line: 48, column: 3, scope: !549)
!2392 = !DILocation(line: 48, column: 13, scope: !549)
!2393 = !DILocalVariable(name: "ps", arg: 1, scope: !2394, file: !2395, line: 1135, type: !2398)
!2394 = distinct !DISubprogram(name: "mbszero", scope: !2395, file: !2395, line: 1135, type: !2396, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2399)
!2395 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2399 = !{!2393}
!2400 = !DILocation(line: 0, scope: !2394, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 48, column: 18, scope: !549)
!2402 = !DILocalVariable(name: "__dest", arg: 1, scope: !2403, file: !2404, line: 57, type: !131)
!2403 = distinct !DISubprogram(name: "memset", scope: !2404, file: !2404, line: 57, type: !2405, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !553, retainedNodes: !2407)
!2404 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!131, !131, !85, !138}
!2407 = !{!2402, !2408, !2409}
!2408 = !DILocalVariable(name: "__ch", arg: 2, scope: !2403, file: !2404, line: 57, type: !85)
!2409 = !DILocalVariable(name: "__len", arg: 3, scope: !2403, file: !2404, line: 57, type: !138)
!2410 = !DILocation(line: 0, scope: !2403, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1137, column: 3, scope: !2394, inlinedAt: !2401)
!2412 = !DILocation(line: 59, column: 10, scope: !2403, inlinedAt: !2411)
!2413 = !DILocation(line: 49, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !549, file: !550, line: 49, column: 7)
!2415 = !DILocation(line: 49, column: 39, scope: !2414)
!2416 = !DILocation(line: 49, column: 44, scope: !2414)
!2417 = !DILocation(line: 54, column: 1, scope: !549)
!2418 = !DISubprogram(name: "mbrtoc32", scope: !561, file: !561, line: 57, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!138, !2421, !961, !138, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2422)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2398)
!2424 = distinct !DISubprogram(name: "clone_quoting_options", scope: !580, file: !580, line: 113, type: !2425, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2428)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!2427, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2428 = !{!2429, !2430, !2431}
!2429 = !DILocalVariable(name: "o", arg: 1, scope: !2424, file: !580, line: 113, type: !2427)
!2430 = !DILocalVariable(name: "saved_errno", scope: !2424, file: !580, line: 115, type: !85)
!2431 = !DILocalVariable(name: "p", scope: !2424, file: !580, line: 116, type: !2427)
!2432 = !DILocation(line: 0, scope: !2424)
!2433 = !DILocation(line: 115, column: 21, scope: !2424)
!2434 = !DILocation(line: 116, column: 40, scope: !2424)
!2435 = !DILocation(line: 116, column: 31, scope: !2424)
!2436 = !DILocation(line: 118, column: 9, scope: !2424)
!2437 = !DILocation(line: 119, column: 3, scope: !2424)
!2438 = distinct !DISubprogram(name: "get_quoting_style", scope: !580, file: !580, line: 124, type: !2439, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2443)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!113, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!2443 = !{!2444}
!2444 = !DILocalVariable(name: "o", arg: 1, scope: !2438, file: !580, line: 124, type: !2441)
!2445 = !DILocation(line: 0, scope: !2438)
!2446 = !DILocation(line: 126, column: 11, scope: !2438)
!2447 = !DILocation(line: 126, column: 46, scope: !2438)
!2448 = !{!2449, !907, i64 0}
!2449 = !{!"quoting_options", !907, i64 0, !971, i64 4, !907, i64 8, !906, i64 40, !906, i64 48}
!2450 = !DILocation(line: 126, column: 3, scope: !2438)
!2451 = distinct !DISubprogram(name: "set_quoting_style", scope: !580, file: !580, line: 132, type: !2452, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !2427, !113}
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "o", arg: 1, scope: !2451, file: !580, line: 132, type: !2427)
!2456 = !DILocalVariable(name: "s", arg: 2, scope: !2451, file: !580, line: 132, type: !113)
!2457 = !DILocation(line: 0, scope: !2451)
!2458 = !DILocation(line: 134, column: 4, scope: !2451)
!2459 = !DILocation(line: 134, column: 45, scope: !2451)
!2460 = !DILocation(line: 135, column: 1, scope: !2451)
!2461 = distinct !DISubprogram(name: "set_char_quoting", scope: !580, file: !580, line: 143, type: !2462, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!85, !2427, !4, !85}
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2471, !2472}
!2465 = !DILocalVariable(name: "o", arg: 1, scope: !2461, file: !580, line: 143, type: !2427)
!2466 = !DILocalVariable(name: "c", arg: 2, scope: !2461, file: !580, line: 143, type: !4)
!2467 = !DILocalVariable(name: "i", arg: 3, scope: !2461, file: !580, line: 143, type: !85)
!2468 = !DILocalVariable(name: "uc", scope: !2461, file: !580, line: 145, type: !143)
!2469 = !DILocalVariable(name: "p", scope: !2461, file: !580, line: 146, type: !2470)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2471 = !DILocalVariable(name: "shift", scope: !2461, file: !580, line: 148, type: !85)
!2472 = !DILocalVariable(name: "r", scope: !2461, file: !580, line: 149, type: !76)
!2473 = !DILocation(line: 0, scope: !2461)
!2474 = !DILocation(line: 147, column: 6, scope: !2461)
!2475 = !DILocation(line: 147, column: 41, scope: !2461)
!2476 = !DILocation(line: 147, column: 62, scope: !2461)
!2477 = !DILocation(line: 147, column: 57, scope: !2461)
!2478 = !DILocation(line: 148, column: 15, scope: !2461)
!2479 = !DILocation(line: 149, column: 21, scope: !2461)
!2480 = !DILocation(line: 149, column: 24, scope: !2461)
!2481 = !DILocation(line: 149, column: 34, scope: !2461)
!2482 = !DILocation(line: 150, column: 19, scope: !2461)
!2483 = !DILocation(line: 150, column: 24, scope: !2461)
!2484 = !DILocation(line: 150, column: 6, scope: !2461)
!2485 = !DILocation(line: 151, column: 3, scope: !2461)
!2486 = distinct !DISubprogram(name: "set_quoting_flags", scope: !580, file: !580, line: 159, type: !2487, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!85, !2427, !85}
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "o", arg: 1, scope: !2486, file: !580, line: 159, type: !2427)
!2491 = !DILocalVariable(name: "i", arg: 2, scope: !2486, file: !580, line: 159, type: !85)
!2492 = !DILocalVariable(name: "r", scope: !2486, file: !580, line: 163, type: !85)
!2493 = !DILocation(line: 0, scope: !2486)
!2494 = !DILocation(line: 161, column: 8, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2486, file: !580, line: 161, column: 7)
!2496 = !DILocation(line: 161, column: 7, scope: !2486)
!2497 = !DILocation(line: 163, column: 14, scope: !2486)
!2498 = !{!2449, !971, i64 4}
!2499 = !DILocation(line: 164, column: 12, scope: !2486)
!2500 = !DILocation(line: 165, column: 3, scope: !2486)
!2501 = distinct !DISubprogram(name: "set_custom_quoting", scope: !580, file: !580, line: 169, type: !2502, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !2427, !141, !141}
!2504 = !{!2505, !2506, !2507}
!2505 = !DILocalVariable(name: "o", arg: 1, scope: !2501, file: !580, line: 169, type: !2427)
!2506 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2501, file: !580, line: 170, type: !141)
!2507 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2501, file: !580, line: 170, type: !141)
!2508 = !DILocation(line: 0, scope: !2501)
!2509 = !DILocation(line: 172, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2501, file: !580, line: 172, column: 7)
!2511 = !DILocation(line: 172, column: 7, scope: !2501)
!2512 = !DILocation(line: 174, column: 12, scope: !2501)
!2513 = !DILocation(line: 175, column: 8, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2501, file: !580, line: 175, column: 7)
!2515 = !DILocation(line: 175, column: 19, scope: !2514)
!2516 = !DILocation(line: 176, column: 5, scope: !2514)
!2517 = !DILocation(line: 177, column: 6, scope: !2501)
!2518 = !DILocation(line: 177, column: 17, scope: !2501)
!2519 = !{!2449, !906, i64 40}
!2520 = !DILocation(line: 178, column: 6, scope: !2501)
!2521 = !DILocation(line: 178, column: 18, scope: !2501)
!2522 = !{!2449, !906, i64 48}
!2523 = !DILocation(line: 179, column: 1, scope: !2501)
!2524 = !DISubprogram(name: "abort", scope: !1091, file: !1091, line: 598, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !955)
!2525 = distinct !DISubprogram(name: "quotearg_buffer", scope: !580, file: !580, line: 774, type: !2526, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!138, !130, !138, !141, !138, !2441}
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2529 = !DILocalVariable(name: "buffer", arg: 1, scope: !2525, file: !580, line: 774, type: !130)
!2530 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2525, file: !580, line: 774, type: !138)
!2531 = !DILocalVariable(name: "arg", arg: 3, scope: !2525, file: !580, line: 775, type: !141)
!2532 = !DILocalVariable(name: "argsize", arg: 4, scope: !2525, file: !580, line: 775, type: !138)
!2533 = !DILocalVariable(name: "o", arg: 5, scope: !2525, file: !580, line: 776, type: !2441)
!2534 = !DILocalVariable(name: "p", scope: !2525, file: !580, line: 778, type: !2441)
!2535 = !DILocalVariable(name: "saved_errno", scope: !2525, file: !580, line: 779, type: !85)
!2536 = !DILocalVariable(name: "r", scope: !2525, file: !580, line: 780, type: !138)
!2537 = !DILocation(line: 0, scope: !2525)
!2538 = !DILocation(line: 778, column: 37, scope: !2525)
!2539 = !DILocation(line: 779, column: 21, scope: !2525)
!2540 = !DILocation(line: 781, column: 43, scope: !2525)
!2541 = !DILocation(line: 781, column: 53, scope: !2525)
!2542 = !DILocation(line: 781, column: 63, scope: !2525)
!2543 = !DILocation(line: 782, column: 43, scope: !2525)
!2544 = !DILocation(line: 782, column: 58, scope: !2525)
!2545 = !DILocation(line: 780, column: 14, scope: !2525)
!2546 = !DILocation(line: 783, column: 9, scope: !2525)
!2547 = !DILocation(line: 784, column: 3, scope: !2525)
!2548 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !580, file: !580, line: 251, type: !2549, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2553)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!138, !130, !138, !141, !138, !113, !85, !2551, !141, !141}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2578, !2580, !2583, !2584, !2585, !2586, !2589, !2590, !2593, !2597, !2598, !2606, !2609, !2610, !2612, !2613, !2614, !2615}
!2554 = !DILocalVariable(name: "buffer", arg: 1, scope: !2548, file: !580, line: 251, type: !130)
!2555 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2548, file: !580, line: 251, type: !138)
!2556 = !DILocalVariable(name: "arg", arg: 3, scope: !2548, file: !580, line: 252, type: !141)
!2557 = !DILocalVariable(name: "argsize", arg: 4, scope: !2548, file: !580, line: 252, type: !138)
!2558 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2548, file: !580, line: 253, type: !113)
!2559 = !DILocalVariable(name: "flags", arg: 6, scope: !2548, file: !580, line: 253, type: !85)
!2560 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2548, file: !580, line: 254, type: !2551)
!2561 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2548, file: !580, line: 255, type: !141)
!2562 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2548, file: !580, line: 256, type: !141)
!2563 = !DILocalVariable(name: "unibyte_locale", scope: !2548, file: !580, line: 258, type: !179)
!2564 = !DILocalVariable(name: "len", scope: !2548, file: !580, line: 260, type: !138)
!2565 = !DILocalVariable(name: "orig_buffersize", scope: !2548, file: !580, line: 261, type: !138)
!2566 = !DILocalVariable(name: "quote_string", scope: !2548, file: !580, line: 262, type: !141)
!2567 = !DILocalVariable(name: "quote_string_len", scope: !2548, file: !580, line: 263, type: !138)
!2568 = !DILocalVariable(name: "backslash_escapes", scope: !2548, file: !580, line: 264, type: !179)
!2569 = !DILocalVariable(name: "elide_outer_quotes", scope: !2548, file: !580, line: 265, type: !179)
!2570 = !DILocalVariable(name: "encountered_single_quote", scope: !2548, file: !580, line: 266, type: !179)
!2571 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2548, file: !580, line: 267, type: !179)
!2572 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2548, file: !580, line: 309, type: !179)
!2573 = !DILocalVariable(name: "lq", scope: !2574, file: !580, line: 361, type: !141)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !580, line: 361, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !580, line: 360, column: 13)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !580, line: 333, column: 7)
!2577 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 312, column: 5)
!2578 = !DILocalVariable(name: "i", scope: !2579, file: !580, line: 395, type: !138)
!2579 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 395, column: 3)
!2580 = !DILocalVariable(name: "is_right_quote", scope: !2581, file: !580, line: 397, type: !179)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !580, line: 396, column: 5)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !580, line: 395, column: 3)
!2583 = !DILocalVariable(name: "escaping", scope: !2581, file: !580, line: 398, type: !179)
!2584 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2581, file: !580, line: 399, type: !179)
!2585 = !DILocalVariable(name: "c", scope: !2581, file: !580, line: 417, type: !143)
!2586 = !DILocalVariable(name: "m", scope: !2587, file: !580, line: 598, type: !138)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 596, column: 11)
!2588 = distinct !DILexicalBlock(scope: !2581, file: !580, line: 419, column: 9)
!2589 = !DILocalVariable(name: "printable", scope: !2587, file: !580, line: 600, type: !179)
!2590 = !DILocalVariable(name: "mbs", scope: !2591, file: !580, line: 609, type: !650)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !580, line: 608, column: 15)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !580, line: 602, column: 17)
!2593 = !DILocalVariable(name: "w", scope: !2594, file: !580, line: 618, type: !560)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !580, line: 617, column: 19)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !580, line: 616, column: 17)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !580, line: 616, column: 17)
!2597 = !DILocalVariable(name: "bytes", scope: !2594, file: !580, line: 619, type: !138)
!2598 = !DILocalVariable(name: "j", scope: !2599, file: !580, line: 648, type: !138)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !580, line: 648, column: 29)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !580, line: 647, column: 27)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !580, line: 645, column: 29)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !580, line: 636, column: 23)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !580, line: 628, column: 30)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !580, line: 623, column: 30)
!2605 = distinct !DILexicalBlock(scope: !2594, file: !580, line: 621, column: 25)
!2606 = !DILocalVariable(name: "ilim", scope: !2607, file: !580, line: 674, type: !138)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !580, line: 671, column: 15)
!2608 = distinct !DILexicalBlock(scope: !2587, file: !580, line: 670, column: 17)
!2609 = !DILabel(scope: !2548, name: "process_input", file: !580, line: 308)
!2610 = !DILabel(scope: !2611, name: "c_and_shell_escape", file: !580, line: 502)
!2611 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 478, column: 9)
!2612 = !DILabel(scope: !2611, name: "c_escape", file: !580, line: 507)
!2613 = !DILabel(scope: !2581, name: "store_escape", file: !580, line: 709)
!2614 = !DILabel(scope: !2581, name: "store_c", file: !580, line: 712)
!2615 = !DILabel(scope: !2548, name: "force_outer_quoting_style", file: !580, line: 753)
!2616 = !DILocation(line: 0, scope: !2548)
!2617 = !DILocation(line: 258, column: 25, scope: !2548)
!2618 = !DILocation(line: 258, column: 36, scope: !2548)
!2619 = !DILocation(line: 267, column: 3, scope: !2548)
!2620 = !DILocation(line: 261, column: 10, scope: !2548)
!2621 = !DILocation(line: 262, column: 15, scope: !2548)
!2622 = !DILocation(line: 263, column: 10, scope: !2548)
!2623 = !DILocation(line: 308, column: 2, scope: !2548)
!2624 = !DILocation(line: 311, column: 3, scope: !2548)
!2625 = !DILocation(line: 318, column: 11, scope: !2577)
!2626 = !DILocation(line: 319, column: 9, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !580, line: 319, column: 9)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !580, line: 319, column: 9)
!2629 = distinct !DILexicalBlock(scope: !2577, file: !580, line: 318, column: 11)
!2630 = !DILocation(line: 319, column: 9, scope: !2628)
!2631 = !DILocation(line: 0, scope: !641, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 357, column: 26, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !580, line: 335, column: 11)
!2634 = distinct !DILexicalBlock(scope: !2576, file: !580, line: 334, column: 13)
!2635 = !DILocation(line: 199, column: 29, scope: !641, inlinedAt: !2632)
!2636 = !DILocation(line: 201, column: 19, scope: !2637, inlinedAt: !2632)
!2637 = distinct !DILexicalBlock(scope: !641, file: !580, line: 201, column: 7)
!2638 = !DILocation(line: 201, column: 7, scope: !641, inlinedAt: !2632)
!2639 = !DILocation(line: 229, column: 3, scope: !641, inlinedAt: !2632)
!2640 = !DILocation(line: 230, column: 3, scope: !641, inlinedAt: !2632)
!2641 = !DILocation(line: 230, column: 13, scope: !641, inlinedAt: !2632)
!2642 = !DILocalVariable(name: "ps", arg: 1, scope: !2643, file: !2395, line: 1135, type: !2646)
!2643 = distinct !DISubprogram(name: "mbszero", scope: !2395, file: !2395, line: 1135, type: !2644, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2647)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!2647 = !{!2642}
!2648 = !DILocation(line: 0, scope: !2643, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 230, column: 18, scope: !641, inlinedAt: !2632)
!2650 = !DILocalVariable(name: "__dest", arg: 1, scope: !2651, file: !2404, line: 57, type: !131)
!2651 = distinct !DISubprogram(name: "memset", scope: !2404, file: !2404, line: 57, type: !2405, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2652)
!2652 = !{!2650, !2653, !2654}
!2653 = !DILocalVariable(name: "__ch", arg: 2, scope: !2651, file: !2404, line: 57, type: !85)
!2654 = !DILocalVariable(name: "__len", arg: 3, scope: !2651, file: !2404, line: 57, type: !138)
!2655 = !DILocation(line: 0, scope: !2651, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1137, column: 3, scope: !2643, inlinedAt: !2649)
!2657 = !DILocation(line: 59, column: 10, scope: !2651, inlinedAt: !2656)
!2658 = !DILocation(line: 231, column: 7, scope: !2659, inlinedAt: !2632)
!2659 = distinct !DILexicalBlock(scope: !641, file: !580, line: 231, column: 7)
!2660 = !DILocation(line: 231, column: 40, scope: !2659, inlinedAt: !2632)
!2661 = !DILocation(line: 231, column: 45, scope: !2659, inlinedAt: !2632)
!2662 = !DILocation(line: 235, column: 1, scope: !641, inlinedAt: !2632)
!2663 = !DILocation(line: 0, scope: !641, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 358, column: 27, scope: !2633)
!2665 = !DILocation(line: 199, column: 29, scope: !641, inlinedAt: !2664)
!2666 = !DILocation(line: 201, column: 19, scope: !2637, inlinedAt: !2664)
!2667 = !DILocation(line: 201, column: 7, scope: !641, inlinedAt: !2664)
!2668 = !DILocation(line: 229, column: 3, scope: !641, inlinedAt: !2664)
!2669 = !DILocation(line: 230, column: 3, scope: !641, inlinedAt: !2664)
!2670 = !DILocation(line: 230, column: 13, scope: !641, inlinedAt: !2664)
!2671 = !DILocation(line: 0, scope: !2643, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 230, column: 18, scope: !641, inlinedAt: !2664)
!2673 = !DILocation(line: 0, scope: !2651, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1137, column: 3, scope: !2643, inlinedAt: !2672)
!2675 = !DILocation(line: 59, column: 10, scope: !2651, inlinedAt: !2674)
!2676 = !DILocation(line: 231, column: 7, scope: !2659, inlinedAt: !2664)
!2677 = !DILocation(line: 231, column: 40, scope: !2659, inlinedAt: !2664)
!2678 = !DILocation(line: 231, column: 45, scope: !2659, inlinedAt: !2664)
!2679 = !DILocation(line: 235, column: 1, scope: !641, inlinedAt: !2664)
!2680 = !DILocation(line: 360, column: 13, scope: !2576)
!2681 = !DILocation(line: 0, scope: !2574)
!2682 = !DILocation(line: 361, column: 45, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2574, file: !580, line: 361, column: 11)
!2684 = !DILocation(line: 361, column: 11, scope: !2574)
!2685 = !DILocation(line: 362, column: 13, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !580, line: 362, column: 13)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !580, line: 362, column: 13)
!2688 = !DILocation(line: 362, column: 13, scope: !2687)
!2689 = !DILocation(line: 361, column: 52, scope: !2683)
!2690 = distinct !{!2690, !2684, !2691, !1017}
!2691 = !DILocation(line: 362, column: 13, scope: !2574)
!2692 = !DILocation(line: 260, column: 10, scope: !2548)
!2693 = !DILocation(line: 365, column: 28, scope: !2576)
!2694 = !DILocation(line: 367, column: 7, scope: !2577)
!2695 = !DILocation(line: 370, column: 7, scope: !2577)
!2696 = !DILocation(line: 376, column: 11, scope: !2577)
!2697 = !DILocation(line: 381, column: 11, scope: !2577)
!2698 = !DILocation(line: 382, column: 9, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !580, line: 382, column: 9)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !580, line: 382, column: 9)
!2701 = distinct !DILexicalBlock(scope: !2577, file: !580, line: 381, column: 11)
!2702 = !DILocation(line: 382, column: 9, scope: !2700)
!2703 = !DILocation(line: 389, column: 7, scope: !2577)
!2704 = !DILocation(line: 392, column: 7, scope: !2577)
!2705 = !DILocation(line: 0, scope: !2579)
!2706 = !DILocation(line: 395, column: 8, scope: !2579)
!2707 = !DILocation(line: 395, scope: !2579)
!2708 = !DILocation(line: 395, column: 34, scope: !2582)
!2709 = !DILocation(line: 395, column: 26, scope: !2582)
!2710 = !DILocation(line: 395, column: 48, scope: !2582)
!2711 = !DILocation(line: 395, column: 55, scope: !2582)
!2712 = !DILocation(line: 395, column: 3, scope: !2579)
!2713 = !DILocation(line: 395, column: 67, scope: !2582)
!2714 = !DILocation(line: 0, scope: !2581)
!2715 = !DILocation(line: 402, column: 11, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2581, file: !580, line: 401, column: 11)
!2717 = !DILocation(line: 404, column: 17, scope: !2716)
!2718 = !DILocation(line: 405, column: 39, scope: !2716)
!2719 = !DILocation(line: 409, column: 32, scope: !2716)
!2720 = !DILocation(line: 405, column: 19, scope: !2716)
!2721 = !DILocation(line: 405, column: 15, scope: !2716)
!2722 = !DILocation(line: 410, column: 11, scope: !2716)
!2723 = !DILocation(line: 410, column: 25, scope: !2716)
!2724 = !DILocalVariable(name: "__s1", arg: 1, scope: !2725, file: !983, line: 974, type: !128)
!2725 = distinct !DISubprogram(name: "memeq", scope: !983, file: !983, line: 974, type: !1695, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2726)
!2726 = !{!2724, !2727, !2728}
!2727 = !DILocalVariable(name: "__s2", arg: 2, scope: !2725, file: !983, line: 974, type: !128)
!2728 = !DILocalVariable(name: "__n", arg: 3, scope: !2725, file: !983, line: 974, type: !138)
!2729 = !DILocation(line: 0, scope: !2725, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 410, column: 14, scope: !2716)
!2731 = !DILocation(line: 976, column: 11, scope: !2725, inlinedAt: !2730)
!2732 = !DILocation(line: 976, column: 10, scope: !2725, inlinedAt: !2730)
!2733 = !DILocation(line: 401, column: 11, scope: !2581)
!2734 = !DILocation(line: 417, column: 25, scope: !2581)
!2735 = !DILocation(line: 418, column: 7, scope: !2581)
!2736 = !DILocation(line: 421, column: 15, scope: !2588)
!2737 = !DILocation(line: 423, column: 15, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !580, line: 423, column: 15)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !580, line: 422, column: 13)
!2740 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 421, column: 15)
!2741 = !DILocation(line: 423, column: 15, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !580, line: 423, column: 15)
!2743 = !DILocation(line: 423, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !580, line: 423, column: 15)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !580, line: 423, column: 15)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !580, line: 423, column: 15)
!2747 = !DILocation(line: 423, column: 15, scope: !2745)
!2748 = !DILocation(line: 423, column: 15, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !580, line: 423, column: 15)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !580, line: 423, column: 15)
!2751 = !DILocation(line: 423, column: 15, scope: !2750)
!2752 = !DILocation(line: 423, column: 15, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !580, line: 423, column: 15)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !580, line: 423, column: 15)
!2755 = !DILocation(line: 423, column: 15, scope: !2754)
!2756 = !DILocation(line: 423, column: 15, scope: !2746)
!2757 = !DILocation(line: 423, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !580, line: 423, column: 15)
!2759 = distinct !DILexicalBlock(scope: !2738, file: !580, line: 423, column: 15)
!2760 = !DILocation(line: 423, column: 15, scope: !2759)
!2761 = !DILocation(line: 431, column: 19, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2739, file: !580, line: 430, column: 19)
!2763 = !DILocation(line: 431, column: 24, scope: !2762)
!2764 = !DILocation(line: 431, column: 28, scope: !2762)
!2765 = !DILocation(line: 431, column: 38, scope: !2762)
!2766 = !DILocation(line: 431, column: 48, scope: !2762)
!2767 = !DILocation(line: 431, column: 59, scope: !2762)
!2768 = !DILocation(line: 433, column: 19, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !580, line: 433, column: 19)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !580, line: 433, column: 19)
!2771 = distinct !DILexicalBlock(scope: !2762, file: !580, line: 432, column: 17)
!2772 = !DILocation(line: 433, column: 19, scope: !2770)
!2773 = !DILocation(line: 434, column: 19, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !580, line: 434, column: 19)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !580, line: 434, column: 19)
!2776 = !DILocation(line: 434, column: 19, scope: !2775)
!2777 = !DILocation(line: 435, column: 17, scope: !2771)
!2778 = !DILocation(line: 442, column: 20, scope: !2740)
!2779 = !DILocation(line: 447, column: 11, scope: !2588)
!2780 = !DILocation(line: 450, column: 19, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 448, column: 13)
!2782 = !DILocation(line: 456, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2781, file: !580, line: 455, column: 19)
!2784 = !DILocation(line: 456, column: 24, scope: !2783)
!2785 = !DILocation(line: 456, column: 28, scope: !2783)
!2786 = !DILocation(line: 456, column: 38, scope: !2783)
!2787 = !DILocation(line: 456, column: 47, scope: !2783)
!2788 = !DILocation(line: 456, column: 41, scope: !2783)
!2789 = !DILocation(line: 456, column: 52, scope: !2783)
!2790 = !DILocation(line: 455, column: 19, scope: !2781)
!2791 = !DILocation(line: 457, column: 25, scope: !2783)
!2792 = !DILocation(line: 457, column: 17, scope: !2783)
!2793 = !DILocation(line: 464, column: 25, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2783, file: !580, line: 458, column: 19)
!2795 = !DILocation(line: 468, column: 21, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !580, line: 468, column: 21)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !580, line: 468, column: 21)
!2798 = !DILocation(line: 468, column: 21, scope: !2797)
!2799 = !DILocation(line: 469, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !580, line: 469, column: 21)
!2801 = distinct !DILexicalBlock(scope: !2794, file: !580, line: 469, column: 21)
!2802 = !DILocation(line: 469, column: 21, scope: !2801)
!2803 = !DILocation(line: 470, column: 21, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !580, line: 470, column: 21)
!2805 = distinct !DILexicalBlock(scope: !2794, file: !580, line: 470, column: 21)
!2806 = !DILocation(line: 470, column: 21, scope: !2805)
!2807 = !DILocation(line: 471, column: 21, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !580, line: 471, column: 21)
!2809 = distinct !DILexicalBlock(scope: !2794, file: !580, line: 471, column: 21)
!2810 = !DILocation(line: 471, column: 21, scope: !2809)
!2811 = !DILocation(line: 472, column: 21, scope: !2794)
!2812 = !DILocation(line: 482, column: 33, scope: !2611)
!2813 = !DILocation(line: 483, column: 33, scope: !2611)
!2814 = !DILocation(line: 485, column: 33, scope: !2611)
!2815 = !DILocation(line: 486, column: 33, scope: !2611)
!2816 = !DILocation(line: 487, column: 33, scope: !2611)
!2817 = !DILocation(line: 490, column: 17, scope: !2611)
!2818 = !DILocation(line: 492, column: 21, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !580, line: 491, column: 15)
!2820 = distinct !DILexicalBlock(scope: !2611, file: !580, line: 490, column: 17)
!2821 = !DILocation(line: 499, column: 35, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2611, file: !580, line: 499, column: 17)
!2823 = !DILocation(line: 0, scope: !2611)
!2824 = !DILocation(line: 502, column: 11, scope: !2611)
!2825 = !DILocation(line: 504, column: 17, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2611, file: !580, line: 503, column: 17)
!2827 = !DILocation(line: 507, column: 11, scope: !2611)
!2828 = !DILocation(line: 508, column: 17, scope: !2611)
!2829 = !DILocation(line: 517, column: 15, scope: !2588)
!2830 = !DILocation(line: 517, column: 40, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 517, column: 15)
!2832 = !DILocation(line: 517, column: 47, scope: !2831)
!2833 = !DILocation(line: 517, column: 18, scope: !2831)
!2834 = !DILocation(line: 521, column: 17, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 521, column: 15)
!2836 = !DILocation(line: 521, column: 15, scope: !2588)
!2837 = !DILocation(line: 525, column: 11, scope: !2588)
!2838 = !DILocation(line: 537, column: 15, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 536, column: 15)
!2840 = !DILocation(line: 536, column: 15, scope: !2588)
!2841 = !DILocation(line: 544, column: 15, scope: !2588)
!2842 = !DILocation(line: 546, column: 19, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !580, line: 545, column: 13)
!2844 = distinct !DILexicalBlock(scope: !2588, file: !580, line: 544, column: 15)
!2845 = !DILocation(line: 549, column: 19, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !580, line: 549, column: 19)
!2847 = !DILocation(line: 549, column: 30, scope: !2846)
!2848 = !DILocation(line: 558, column: 15, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !580, line: 558, column: 15)
!2850 = distinct !DILexicalBlock(scope: !2843, file: !580, line: 558, column: 15)
!2851 = !DILocation(line: 558, column: 15, scope: !2850)
!2852 = !DILocation(line: 559, column: 15, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !580, line: 559, column: 15)
!2854 = distinct !DILexicalBlock(scope: !2843, file: !580, line: 559, column: 15)
!2855 = !DILocation(line: 559, column: 15, scope: !2854)
!2856 = !DILocation(line: 560, column: 15, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !580, line: 560, column: 15)
!2858 = distinct !DILexicalBlock(scope: !2843, file: !580, line: 560, column: 15)
!2859 = !DILocation(line: 560, column: 15, scope: !2858)
!2860 = !DILocation(line: 562, column: 13, scope: !2843)
!2861 = !DILocation(line: 602, column: 17, scope: !2587)
!2862 = !DILocation(line: 0, scope: !2587)
!2863 = !DILocation(line: 605, column: 29, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2592, file: !580, line: 603, column: 15)
!2865 = !DILocation(line: 605, column: 41, scope: !2864)
!2866 = !DILocation(line: 606, column: 15, scope: !2864)
!2867 = !DILocation(line: 609, column: 17, scope: !2591)
!2868 = !DILocation(line: 609, column: 27, scope: !2591)
!2869 = !DILocation(line: 0, scope: !2643, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 609, column: 32, scope: !2591)
!2871 = !DILocation(line: 0, scope: !2651, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1137, column: 3, scope: !2643, inlinedAt: !2870)
!2873 = !DILocation(line: 59, column: 10, scope: !2651, inlinedAt: !2872)
!2874 = !DILocation(line: 613, column: 29, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2591, file: !580, line: 613, column: 21)
!2876 = !DILocation(line: 613, column: 21, scope: !2591)
!2877 = !DILocation(line: 614, column: 29, scope: !2875)
!2878 = !DILocation(line: 614, column: 19, scope: !2875)
!2879 = !DILocation(line: 618, column: 21, scope: !2594)
!2880 = !DILocation(line: 620, column: 54, scope: !2594)
!2881 = !DILocation(line: 0, scope: !2594)
!2882 = !DILocation(line: 619, column: 36, scope: !2594)
!2883 = !DILocation(line: 621, column: 25, scope: !2594)
!2884 = !DILocation(line: 631, column: 38, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2603, file: !580, line: 629, column: 23)
!2886 = !DILocation(line: 631, column: 48, scope: !2885)
!2887 = !DILocation(line: 626, column: 25, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2604, file: !580, line: 624, column: 23)
!2889 = !DILocation(line: 631, column: 51, scope: !2885)
!2890 = !DILocation(line: 631, column: 25, scope: !2885)
!2891 = !DILocation(line: 632, column: 28, scope: !2885)
!2892 = !DILocation(line: 631, column: 34, scope: !2885)
!2893 = distinct !{!2893, !2890, !2891, !1017}
!2894 = !DILocation(line: 646, column: 29, scope: !2601)
!2895 = !DILocation(line: 0, scope: !2599)
!2896 = !DILocation(line: 649, column: 49, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2599, file: !580, line: 648, column: 29)
!2898 = !DILocation(line: 649, column: 39, scope: !2897)
!2899 = !DILocation(line: 649, column: 31, scope: !2897)
!2900 = !DILocation(line: 648, column: 60, scope: !2897)
!2901 = !DILocation(line: 648, column: 50, scope: !2897)
!2902 = !DILocation(line: 648, column: 29, scope: !2599)
!2903 = distinct !{!2903, !2902, !2904, !1017}
!2904 = !DILocation(line: 654, column: 33, scope: !2599)
!2905 = !DILocation(line: 657, column: 43, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2602, file: !580, line: 657, column: 29)
!2907 = !DILocalVariable(name: "wc", arg: 1, scope: !2908, file: !2909, line: 865, type: !2912)
!2908 = distinct !DISubprogram(name: "c32isprint", scope: !2909, file: !2909, line: 865, type: !2910, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !2914)
!2909 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!85, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2913, line: 20, baseType: !76)
!2913 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2914 = !{!2907}
!2915 = !DILocation(line: 0, scope: !2908, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 657, column: 31, scope: !2906)
!2917 = !DILocation(line: 871, column: 10, scope: !2908, inlinedAt: !2916)
!2918 = !DILocation(line: 657, column: 31, scope: !2906)
!2919 = !DILocation(line: 664, column: 23, scope: !2594)
!2920 = !DILocation(line: 665, column: 19, scope: !2595)
!2921 = !DILocation(line: 666, column: 15, scope: !2592)
!2922 = !DILocation(line: 753, column: 2, scope: !2548)
!2923 = !DILocation(line: 756, column: 51, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 756, column: 7)
!2925 = !DILocation(line: 0, scope: !2592)
!2926 = !DILocation(line: 670, column: 19, scope: !2608)
!2927 = !DILocation(line: 670, column: 23, scope: !2608)
!2928 = !DILocation(line: 674, column: 33, scope: !2607)
!2929 = !DILocation(line: 0, scope: !2607)
!2930 = !DILocation(line: 676, column: 17, scope: !2607)
!2931 = !DILocation(line: 398, column: 12, scope: !2581)
!2932 = !DILocation(line: 678, column: 43, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !580, line: 678, column: 25)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !580, line: 677, column: 19)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !580, line: 676, column: 17)
!2936 = distinct !DILexicalBlock(scope: !2607, file: !580, line: 676, column: 17)
!2937 = !DILocation(line: 680, column: 25, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !580, line: 680, column: 25)
!2939 = distinct !DILexicalBlock(scope: !2933, file: !580, line: 679, column: 23)
!2940 = !DILocation(line: 680, column: 25, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !580, line: 680, column: 25)
!2942 = !DILocation(line: 680, column: 25, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !580, line: 680, column: 25)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !580, line: 680, column: 25)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !580, line: 680, column: 25)
!2946 = !DILocation(line: 680, column: 25, scope: !2944)
!2947 = !DILocation(line: 680, column: 25, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !580, line: 680, column: 25)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !580, line: 680, column: 25)
!2950 = !DILocation(line: 680, column: 25, scope: !2949)
!2951 = !DILocation(line: 680, column: 25, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !580, line: 680, column: 25)
!2953 = distinct !DILexicalBlock(scope: !2945, file: !580, line: 680, column: 25)
!2954 = !DILocation(line: 680, column: 25, scope: !2953)
!2955 = !DILocation(line: 680, column: 25, scope: !2945)
!2956 = !DILocation(line: 680, column: 25, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !580, line: 680, column: 25)
!2958 = distinct !DILexicalBlock(scope: !2938, file: !580, line: 680, column: 25)
!2959 = !DILocation(line: 680, column: 25, scope: !2958)
!2960 = !DILocation(line: 681, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !580, line: 681, column: 25)
!2962 = distinct !DILexicalBlock(scope: !2939, file: !580, line: 681, column: 25)
!2963 = !DILocation(line: 681, column: 25, scope: !2962)
!2964 = !DILocation(line: 682, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !580, line: 682, column: 25)
!2966 = distinct !DILexicalBlock(scope: !2939, file: !580, line: 682, column: 25)
!2967 = !DILocation(line: 682, column: 25, scope: !2966)
!2968 = !DILocation(line: 683, column: 38, scope: !2939)
!2969 = !DILocation(line: 683, column: 33, scope: !2939)
!2970 = !DILocation(line: 684, column: 23, scope: !2939)
!2971 = !DILocation(line: 685, column: 30, scope: !2933)
!2972 = !DILocation(line: 687, column: 25, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !580, line: 687, column: 25)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !580, line: 687, column: 25)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !580, line: 686, column: 23)
!2976 = distinct !DILexicalBlock(scope: !2933, file: !580, line: 685, column: 30)
!2977 = !DILocation(line: 687, column: 25, scope: !2974)
!2978 = !DILocation(line: 689, column: 23, scope: !2975)
!2979 = !DILocation(line: 690, column: 35, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2934, file: !580, line: 690, column: 25)
!2981 = !DILocation(line: 690, column: 30, scope: !2980)
!2982 = !DILocation(line: 690, column: 25, scope: !2934)
!2983 = !DILocation(line: 692, column: 21, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !580, line: 692, column: 21)
!2985 = distinct !DILexicalBlock(scope: !2934, file: !580, line: 692, column: 21)
!2986 = !DILocation(line: 692, column: 21, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !580, line: 692, column: 21)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !580, line: 692, column: 21)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !580, line: 692, column: 21)
!2990 = !DILocation(line: 692, column: 21, scope: !2988)
!2991 = !DILocation(line: 692, column: 21, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !580, line: 692, column: 21)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !580, line: 692, column: 21)
!2994 = !DILocation(line: 692, column: 21, scope: !2993)
!2995 = !DILocation(line: 692, column: 21, scope: !2989)
!2996 = !DILocation(line: 0, scope: !2934)
!2997 = !DILocation(line: 693, column: 21, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !580, line: 693, column: 21)
!2999 = distinct !DILexicalBlock(scope: !2934, file: !580, line: 693, column: 21)
!3000 = !DILocation(line: 693, column: 21, scope: !2999)
!3001 = !DILocation(line: 694, column: 25, scope: !2934)
!3002 = !DILocation(line: 676, column: 17, scope: !2935)
!3003 = distinct !{!3003, !3004, !3005}
!3004 = !DILocation(line: 676, column: 17, scope: !2936)
!3005 = !DILocation(line: 695, column: 19, scope: !2936)
!3006 = !DILocation(line: 409, column: 30, scope: !2716)
!3007 = !DILocation(line: 702, column: 34, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2581, file: !580, line: 702, column: 11)
!3009 = !DILocation(line: 704, column: 14, scope: !3008)
!3010 = !DILocation(line: 705, column: 14, scope: !3008)
!3011 = !DILocation(line: 705, column: 35, scope: !3008)
!3012 = !DILocation(line: 705, column: 17, scope: !3008)
!3013 = !DILocation(line: 705, column: 47, scope: !3008)
!3014 = !DILocation(line: 705, column: 65, scope: !3008)
!3015 = !DILocation(line: 706, column: 11, scope: !3008)
!3016 = !DILocation(line: 702, column: 11, scope: !2581)
!3017 = !DILocation(line: 395, column: 15, scope: !2579)
!3018 = !DILocation(line: 709, column: 5, scope: !2581)
!3019 = !DILocation(line: 710, column: 7, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2581, file: !580, line: 710, column: 7)
!3021 = !DILocation(line: 710, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3020, file: !580, line: 710, column: 7)
!3023 = !DILocation(line: 710, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !580, line: 710, column: 7)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !580, line: 710, column: 7)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !580, line: 710, column: 7)
!3027 = !DILocation(line: 710, column: 7, scope: !3025)
!3028 = !DILocation(line: 710, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !580, line: 710, column: 7)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !580, line: 710, column: 7)
!3031 = !DILocation(line: 710, column: 7, scope: !3030)
!3032 = !DILocation(line: 710, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !580, line: 710, column: 7)
!3034 = distinct !DILexicalBlock(scope: !3026, file: !580, line: 710, column: 7)
!3035 = !DILocation(line: 710, column: 7, scope: !3034)
!3036 = !DILocation(line: 710, column: 7, scope: !3026)
!3037 = !DILocation(line: 710, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !580, line: 710, column: 7)
!3039 = distinct !DILexicalBlock(scope: !3020, file: !580, line: 710, column: 7)
!3040 = !DILocation(line: 710, column: 7, scope: !3039)
!3041 = !DILocation(line: 712, column: 5, scope: !2581)
!3042 = !DILocation(line: 713, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !580, line: 713, column: 7)
!3044 = distinct !DILexicalBlock(scope: !2581, file: !580, line: 713, column: 7)
!3045 = !DILocation(line: 417, column: 21, scope: !2581)
!3046 = !DILocation(line: 713, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !580, line: 713, column: 7)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !580, line: 713, column: 7)
!3049 = distinct !DILexicalBlock(scope: !3043, file: !580, line: 713, column: 7)
!3050 = !DILocation(line: 713, column: 7, scope: !3048)
!3051 = !DILocation(line: 713, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !580, line: 713, column: 7)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !580, line: 713, column: 7)
!3054 = !DILocation(line: 713, column: 7, scope: !3053)
!3055 = !DILocation(line: 713, column: 7, scope: !3049)
!3056 = !DILocation(line: 714, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !580, line: 714, column: 7)
!3058 = distinct !DILexicalBlock(scope: !2581, file: !580, line: 714, column: 7)
!3059 = !DILocation(line: 714, column: 7, scope: !3058)
!3060 = !DILocation(line: 716, column: 11, scope: !2581)
!3061 = !DILocation(line: 718, column: 5, scope: !2582)
!3062 = !DILocation(line: 395, column: 82, scope: !2582)
!3063 = !DILocation(line: 395, column: 3, scope: !2582)
!3064 = distinct !{!3064, !2712, !3065, !1017}
!3065 = !DILocation(line: 718, column: 5, scope: !2579)
!3066 = !DILocation(line: 720, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 720, column: 7)
!3068 = !DILocation(line: 720, column: 16, scope: !3067)
!3069 = !DILocation(line: 728, column: 51, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 728, column: 7)
!3071 = !DILocation(line: 731, column: 11, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !580, line: 730, column: 5)
!3073 = !DILocation(line: 732, column: 16, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3072, file: !580, line: 731, column: 11)
!3075 = !DILocation(line: 732, column: 9, scope: !3074)
!3076 = !DILocation(line: 736, column: 18, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !580, line: 736, column: 16)
!3078 = !DILocation(line: 736, column: 29, scope: !3077)
!3079 = !DILocation(line: 745, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 745, column: 7)
!3081 = !DILocation(line: 745, column: 20, scope: !3080)
!3082 = !DILocation(line: 746, column: 12, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !580, line: 746, column: 5)
!3084 = distinct !DILexicalBlock(scope: !3080, file: !580, line: 746, column: 5)
!3085 = !DILocation(line: 746, column: 5, scope: !3084)
!3086 = !DILocation(line: 747, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !580, line: 747, column: 7)
!3088 = distinct !DILexicalBlock(scope: !3083, file: !580, line: 747, column: 7)
!3089 = !DILocation(line: 747, column: 7, scope: !3088)
!3090 = !DILocation(line: 746, column: 39, scope: !3083)
!3091 = distinct !{!3091, !3085, !3092, !1017}
!3092 = !DILocation(line: 747, column: 7, scope: !3084)
!3093 = !DILocation(line: 749, column: 11, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2548, file: !580, line: 749, column: 7)
!3095 = !DILocation(line: 749, column: 7, scope: !2548)
!3096 = !DILocation(line: 750, column: 5, scope: !3094)
!3097 = !DILocation(line: 750, column: 17, scope: !3094)
!3098 = !DILocation(line: 756, column: 21, scope: !2924)
!3099 = !DILocation(line: 760, column: 42, scope: !2548)
!3100 = !DILocation(line: 758, column: 10, scope: !2548)
!3101 = !DILocation(line: 758, column: 3, scope: !2548)
!3102 = !DILocation(line: 762, column: 1, scope: !2548)
!3103 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1091, file: !1091, line: 98, type: !3104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!138}
!3106 = !DISubprogram(name: "iswprint", scope: !3107, file: !3107, line: 120, type: !2910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!3107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3108 = distinct !DISubprogram(name: "quotearg_alloc", scope: !580, file: !580, line: 788, type: !3109, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!130, !141, !138, !2441}
!3111 = !{!3112, !3113, !3114}
!3112 = !DILocalVariable(name: "arg", arg: 1, scope: !3108, file: !580, line: 788, type: !141)
!3113 = !DILocalVariable(name: "argsize", arg: 2, scope: !3108, file: !580, line: 788, type: !138)
!3114 = !DILocalVariable(name: "o", arg: 3, scope: !3108, file: !580, line: 789, type: !2441)
!3115 = !DILocation(line: 0, scope: !3108)
!3116 = !DILocalVariable(name: "arg", arg: 1, scope: !3117, file: !580, line: 801, type: !141)
!3117 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !580, file: !580, line: 801, type: !3118, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!130, !141, !138, !840, !2441}
!3120 = !{!3116, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128}
!3121 = !DILocalVariable(name: "argsize", arg: 2, scope: !3117, file: !580, line: 801, type: !138)
!3122 = !DILocalVariable(name: "size", arg: 3, scope: !3117, file: !580, line: 801, type: !840)
!3123 = !DILocalVariable(name: "o", arg: 4, scope: !3117, file: !580, line: 802, type: !2441)
!3124 = !DILocalVariable(name: "p", scope: !3117, file: !580, line: 804, type: !2441)
!3125 = !DILocalVariable(name: "saved_errno", scope: !3117, file: !580, line: 805, type: !85)
!3126 = !DILocalVariable(name: "flags", scope: !3117, file: !580, line: 807, type: !85)
!3127 = !DILocalVariable(name: "bufsize", scope: !3117, file: !580, line: 808, type: !138)
!3128 = !DILocalVariable(name: "buf", scope: !3117, file: !580, line: 812, type: !130)
!3129 = !DILocation(line: 0, scope: !3117, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 791, column: 10, scope: !3108)
!3131 = !DILocation(line: 804, column: 37, scope: !3117, inlinedAt: !3130)
!3132 = !DILocation(line: 805, column: 21, scope: !3117, inlinedAt: !3130)
!3133 = !DILocation(line: 807, column: 18, scope: !3117, inlinedAt: !3130)
!3134 = !DILocation(line: 807, column: 24, scope: !3117, inlinedAt: !3130)
!3135 = !DILocation(line: 808, column: 72, scope: !3117, inlinedAt: !3130)
!3136 = !DILocation(line: 809, column: 56, scope: !3117, inlinedAt: !3130)
!3137 = !DILocation(line: 810, column: 49, scope: !3117, inlinedAt: !3130)
!3138 = !DILocation(line: 811, column: 49, scope: !3117, inlinedAt: !3130)
!3139 = !DILocation(line: 808, column: 20, scope: !3117, inlinedAt: !3130)
!3140 = !DILocation(line: 811, column: 62, scope: !3117, inlinedAt: !3130)
!3141 = !DILocation(line: 812, column: 15, scope: !3117, inlinedAt: !3130)
!3142 = !DILocation(line: 813, column: 60, scope: !3117, inlinedAt: !3130)
!3143 = !DILocation(line: 815, column: 32, scope: !3117, inlinedAt: !3130)
!3144 = !DILocation(line: 815, column: 47, scope: !3117, inlinedAt: !3130)
!3145 = !DILocation(line: 813, column: 3, scope: !3117, inlinedAt: !3130)
!3146 = !DILocation(line: 816, column: 9, scope: !3117, inlinedAt: !3130)
!3147 = !DILocation(line: 791, column: 3, scope: !3108)
!3148 = !DILocation(line: 0, scope: !3117)
!3149 = !DILocation(line: 804, column: 37, scope: !3117)
!3150 = !DILocation(line: 805, column: 21, scope: !3117)
!3151 = !DILocation(line: 807, column: 18, scope: !3117)
!3152 = !DILocation(line: 807, column: 27, scope: !3117)
!3153 = !DILocation(line: 807, column: 24, scope: !3117)
!3154 = !DILocation(line: 808, column: 72, scope: !3117)
!3155 = !DILocation(line: 809, column: 56, scope: !3117)
!3156 = !DILocation(line: 810, column: 49, scope: !3117)
!3157 = !DILocation(line: 811, column: 49, scope: !3117)
!3158 = !DILocation(line: 808, column: 20, scope: !3117)
!3159 = !DILocation(line: 811, column: 62, scope: !3117)
!3160 = !DILocation(line: 812, column: 15, scope: !3117)
!3161 = !DILocation(line: 813, column: 60, scope: !3117)
!3162 = !DILocation(line: 815, column: 32, scope: !3117)
!3163 = !DILocation(line: 815, column: 47, scope: !3117)
!3164 = !DILocation(line: 813, column: 3, scope: !3117)
!3165 = !DILocation(line: 816, column: 9, scope: !3117)
!3166 = !DILocation(line: 817, column: 7, scope: !3117)
!3167 = !DILocation(line: 818, column: 11, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3117, file: !580, line: 817, column: 7)
!3169 = !{!1572, !1572, i64 0}
!3170 = !DILocation(line: 818, column: 5, scope: !3168)
!3171 = !DILocation(line: 819, column: 3, scope: !3117)
!3172 = distinct !DISubprogram(name: "quotearg_free", scope: !580, file: !580, line: 837, type: !469, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3173)
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "sv", scope: !3172, file: !580, line: 839, type: !664)
!3175 = !DILocalVariable(name: "i", scope: !3176, file: !580, line: 840, type: !85)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !580, line: 840, column: 3)
!3177 = !DILocation(line: 839, column: 24, scope: !3172)
!3178 = !DILocation(line: 0, scope: !3172)
!3179 = !DILocation(line: 0, scope: !3176)
!3180 = !DILocation(line: 840, column: 21, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3176, file: !580, line: 840, column: 3)
!3182 = !DILocation(line: 840, column: 3, scope: !3176)
!3183 = !DILocation(line: 842, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3172, file: !580, line: 842, column: 7)
!3185 = !{!3186, !906, i64 8}
!3186 = !{!"slotvec", !1572, i64 0, !906, i64 8}
!3187 = !DILocation(line: 842, column: 17, scope: !3184)
!3188 = !DILocation(line: 842, column: 7, scope: !3172)
!3189 = !DILocation(line: 841, column: 17, scope: !3181)
!3190 = !DILocation(line: 841, column: 5, scope: !3181)
!3191 = !DILocation(line: 840, column: 32, scope: !3181)
!3192 = distinct !{!3192, !3182, !3193, !1017}
!3193 = !DILocation(line: 841, column: 20, scope: !3176)
!3194 = !DILocation(line: 844, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3184, file: !580, line: 843, column: 5)
!3196 = !DILocation(line: 845, column: 21, scope: !3195)
!3197 = !{!3186, !1572, i64 0}
!3198 = !DILocation(line: 846, column: 20, scope: !3195)
!3199 = !DILocation(line: 847, column: 5, scope: !3195)
!3200 = !DILocation(line: 848, column: 10, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3172, file: !580, line: 848, column: 7)
!3202 = !DILocation(line: 848, column: 7, scope: !3172)
!3203 = !DILocation(line: 850, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3201, file: !580, line: 849, column: 5)
!3205 = !DILocation(line: 851, column: 15, scope: !3204)
!3206 = !DILocation(line: 852, column: 5, scope: !3204)
!3207 = !DILocation(line: 853, column: 10, scope: !3172)
!3208 = !DILocation(line: 854, column: 1, scope: !3172)
!3209 = distinct !DISubprogram(name: "quotearg_n", scope: !580, file: !580, line: 919, type: !1084, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3210)
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "n", arg: 1, scope: !3209, file: !580, line: 919, type: !85)
!3212 = !DILocalVariable(name: "arg", arg: 2, scope: !3209, file: !580, line: 919, type: !141)
!3213 = !DILocation(line: 0, scope: !3209)
!3214 = !DILocation(line: 921, column: 10, scope: !3209)
!3215 = !DILocation(line: 921, column: 3, scope: !3209)
!3216 = distinct !DISubprogram(name: "quotearg_n_options", scope: !580, file: !580, line: 866, type: !3217, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!130, !85, !141, !138, !2441}
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3230, !3231, !3233, !3234, !3235}
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !580, line: 866, type: !85)
!3221 = !DILocalVariable(name: "arg", arg: 2, scope: !3216, file: !580, line: 866, type: !141)
!3222 = !DILocalVariable(name: "argsize", arg: 3, scope: !3216, file: !580, line: 866, type: !138)
!3223 = !DILocalVariable(name: "options", arg: 4, scope: !3216, file: !580, line: 867, type: !2441)
!3224 = !DILocalVariable(name: "saved_errno", scope: !3216, file: !580, line: 869, type: !85)
!3225 = !DILocalVariable(name: "sv", scope: !3216, file: !580, line: 871, type: !664)
!3226 = !DILocalVariable(name: "nslots_max", scope: !3216, file: !580, line: 873, type: !85)
!3227 = !DILocalVariable(name: "preallocated", scope: !3228, file: !580, line: 879, type: !179)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !580, line: 878, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3216, file: !580, line: 877, column: 7)
!3230 = !DILocalVariable(name: "new_nslots", scope: !3228, file: !580, line: 880, type: !853)
!3231 = !DILocalVariable(name: "size", scope: !3232, file: !580, line: 891, type: !138)
!3232 = distinct !DILexicalBlock(scope: !3216, file: !580, line: 890, column: 3)
!3233 = !DILocalVariable(name: "val", scope: !3232, file: !580, line: 892, type: !130)
!3234 = !DILocalVariable(name: "flags", scope: !3232, file: !580, line: 894, type: !85)
!3235 = !DILocalVariable(name: "qsize", scope: !3232, file: !580, line: 895, type: !138)
!3236 = !DILocation(line: 0, scope: !3216)
!3237 = !DILocation(line: 869, column: 21, scope: !3216)
!3238 = !DILocation(line: 871, column: 24, scope: !3216)
!3239 = !DILocation(line: 874, column: 17, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3216, file: !580, line: 874, column: 7)
!3241 = !DILocation(line: 875, column: 5, scope: !3240)
!3242 = !DILocation(line: 877, column: 7, scope: !3229)
!3243 = !DILocation(line: 877, column: 14, scope: !3229)
!3244 = !DILocation(line: 877, column: 7, scope: !3216)
!3245 = !DILocation(line: 879, column: 31, scope: !3228)
!3246 = !DILocation(line: 0, scope: !3228)
!3247 = !DILocation(line: 880, column: 7, scope: !3228)
!3248 = !DILocation(line: 880, column: 26, scope: !3228)
!3249 = !DILocation(line: 880, column: 13, scope: !3228)
!3250 = !DILocation(line: 882, column: 31, scope: !3228)
!3251 = !DILocation(line: 883, column: 33, scope: !3228)
!3252 = !DILocation(line: 883, column: 42, scope: !3228)
!3253 = !DILocation(line: 883, column: 31, scope: !3228)
!3254 = !DILocation(line: 882, column: 22, scope: !3228)
!3255 = !DILocation(line: 882, column: 15, scope: !3228)
!3256 = !DILocation(line: 884, column: 11, scope: !3228)
!3257 = !DILocation(line: 885, column: 15, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3228, file: !580, line: 884, column: 11)
!3259 = !{i64 0, i64 8, !3169, i64 8, i64 8, !905}
!3260 = !DILocation(line: 885, column: 9, scope: !3258)
!3261 = !DILocation(line: 886, column: 20, scope: !3228)
!3262 = !DILocation(line: 886, column: 18, scope: !3228)
!3263 = !DILocation(line: 886, column: 32, scope: !3228)
!3264 = !DILocation(line: 886, column: 43, scope: !3228)
!3265 = !DILocation(line: 886, column: 53, scope: !3228)
!3266 = !DILocation(line: 0, scope: !2651, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 886, column: 7, scope: !3228)
!3268 = !DILocation(line: 59, column: 10, scope: !2651, inlinedAt: !3267)
!3269 = !DILocation(line: 887, column: 16, scope: !3228)
!3270 = !DILocation(line: 887, column: 14, scope: !3228)
!3271 = !DILocation(line: 888, column: 5, scope: !3229)
!3272 = !DILocation(line: 888, column: 5, scope: !3228)
!3273 = !DILocation(line: 891, column: 19, scope: !3232)
!3274 = !DILocation(line: 891, column: 25, scope: !3232)
!3275 = !DILocation(line: 0, scope: !3232)
!3276 = !DILocation(line: 892, column: 23, scope: !3232)
!3277 = !DILocation(line: 894, column: 26, scope: !3232)
!3278 = !DILocation(line: 894, column: 32, scope: !3232)
!3279 = !DILocation(line: 896, column: 55, scope: !3232)
!3280 = !DILocation(line: 897, column: 55, scope: !3232)
!3281 = !DILocation(line: 898, column: 55, scope: !3232)
!3282 = !DILocation(line: 899, column: 55, scope: !3232)
!3283 = !DILocation(line: 895, column: 20, scope: !3232)
!3284 = !DILocation(line: 901, column: 14, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3232, file: !580, line: 901, column: 9)
!3286 = !DILocation(line: 901, column: 9, scope: !3232)
!3287 = !DILocation(line: 903, column: 35, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3285, file: !580, line: 902, column: 7)
!3289 = !DILocation(line: 903, column: 20, scope: !3288)
!3290 = !DILocation(line: 904, column: 17, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3288, file: !580, line: 904, column: 13)
!3292 = !DILocation(line: 904, column: 13, scope: !3288)
!3293 = !DILocation(line: 905, column: 11, scope: !3291)
!3294 = !DILocation(line: 906, column: 27, scope: !3288)
!3295 = !DILocation(line: 906, column: 19, scope: !3288)
!3296 = !DILocation(line: 907, column: 69, scope: !3288)
!3297 = !DILocation(line: 909, column: 44, scope: !3288)
!3298 = !DILocation(line: 910, column: 44, scope: !3288)
!3299 = !DILocation(line: 907, column: 9, scope: !3288)
!3300 = !DILocation(line: 911, column: 7, scope: !3288)
!3301 = !DILocation(line: 913, column: 11, scope: !3232)
!3302 = !DILocation(line: 914, column: 5, scope: !3232)
!3303 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !580, file: !580, line: 925, type: !3304, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!130, !85, !141, !138}
!3306 = !{!3307, !3308, !3309}
!3307 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !580, line: 925, type: !85)
!3308 = !DILocalVariable(name: "arg", arg: 2, scope: !3303, file: !580, line: 925, type: !141)
!3309 = !DILocalVariable(name: "argsize", arg: 3, scope: !3303, file: !580, line: 925, type: !138)
!3310 = !DILocation(line: 0, scope: !3303)
!3311 = !DILocation(line: 927, column: 10, scope: !3303)
!3312 = !DILocation(line: 927, column: 3, scope: !3303)
!3313 = distinct !DISubprogram(name: "quotearg", scope: !580, file: !580, line: 931, type: !1093, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3314)
!3314 = !{!3315}
!3315 = !DILocalVariable(name: "arg", arg: 1, scope: !3313, file: !580, line: 931, type: !141)
!3316 = !DILocation(line: 0, scope: !3313)
!3317 = !DILocation(line: 0, scope: !3209, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 933, column: 10, scope: !3313)
!3319 = !DILocation(line: 921, column: 10, scope: !3209, inlinedAt: !3318)
!3320 = !DILocation(line: 933, column: 3, scope: !3313)
!3321 = distinct !DISubprogram(name: "quotearg_mem", scope: !580, file: !580, line: 937, type: !3322, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!130, !141, !138}
!3324 = !{!3325, !3326}
!3325 = !DILocalVariable(name: "arg", arg: 1, scope: !3321, file: !580, line: 937, type: !141)
!3326 = !DILocalVariable(name: "argsize", arg: 2, scope: !3321, file: !580, line: 937, type: !138)
!3327 = !DILocation(line: 0, scope: !3321)
!3328 = !DILocation(line: 0, scope: !3303, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 939, column: 10, scope: !3321)
!3330 = !DILocation(line: 927, column: 10, scope: !3303, inlinedAt: !3329)
!3331 = !DILocation(line: 939, column: 3, scope: !3321)
!3332 = distinct !DISubprogram(name: "quotearg_n_style", scope: !580, file: !580, line: 943, type: !3333, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!130, !85, !113, !141}
!3335 = !{!3336, !3337, !3338, !3339}
!3336 = !DILocalVariable(name: "n", arg: 1, scope: !3332, file: !580, line: 943, type: !85)
!3337 = !DILocalVariable(name: "s", arg: 2, scope: !3332, file: !580, line: 943, type: !113)
!3338 = !DILocalVariable(name: "arg", arg: 3, scope: !3332, file: !580, line: 943, type: !141)
!3339 = !DILocalVariable(name: "o", scope: !3332, file: !580, line: 945, type: !2442)
!3340 = !DILocation(line: 0, scope: !3332)
!3341 = !DILocation(line: 945, column: 3, scope: !3332)
!3342 = !DILocation(line: 945, column: 32, scope: !3332)
!3343 = !{!3344}
!3344 = distinct !{!3344, !3345, !"quoting_options_from_style: argument 0"}
!3345 = distinct !{!3345, !"quoting_options_from_style"}
!3346 = !DILocation(line: 945, column: 36, scope: !3332)
!3347 = !DILocalVariable(name: "style", arg: 1, scope: !3348, file: !580, line: 183, type: !113)
!3348 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !580, file: !580, line: 183, type: !3349, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!616, !113}
!3351 = !{!3347, !3352}
!3352 = !DILocalVariable(name: "o", scope: !3348, file: !580, line: 185, type: !616)
!3353 = !DILocation(line: 0, scope: !3348, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 945, column: 36, scope: !3332)
!3355 = !DILocation(line: 185, column: 26, scope: !3348, inlinedAt: !3354)
!3356 = !DILocation(line: 186, column: 13, scope: !3357, inlinedAt: !3354)
!3357 = distinct !DILexicalBlock(scope: !3348, file: !580, line: 186, column: 7)
!3358 = !DILocation(line: 186, column: 7, scope: !3348, inlinedAt: !3354)
!3359 = !DILocation(line: 187, column: 5, scope: !3357, inlinedAt: !3354)
!3360 = !DILocation(line: 188, column: 11, scope: !3348, inlinedAt: !3354)
!3361 = !DILocation(line: 946, column: 10, scope: !3332)
!3362 = !DILocation(line: 947, column: 1, scope: !3332)
!3363 = !DILocation(line: 946, column: 3, scope: !3332)
!3364 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !580, file: !580, line: 950, type: !3365, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!130, !85, !113, !141, !138}
!3367 = !{!3368, !3369, !3370, !3371, !3372}
!3368 = !DILocalVariable(name: "n", arg: 1, scope: !3364, file: !580, line: 950, type: !85)
!3369 = !DILocalVariable(name: "s", arg: 2, scope: !3364, file: !580, line: 950, type: !113)
!3370 = !DILocalVariable(name: "arg", arg: 3, scope: !3364, file: !580, line: 951, type: !141)
!3371 = !DILocalVariable(name: "argsize", arg: 4, scope: !3364, file: !580, line: 951, type: !138)
!3372 = !DILocalVariable(name: "o", scope: !3364, file: !580, line: 953, type: !2442)
!3373 = !DILocation(line: 0, scope: !3364)
!3374 = !DILocation(line: 953, column: 3, scope: !3364)
!3375 = !DILocation(line: 953, column: 32, scope: !3364)
!3376 = !{!3377}
!3377 = distinct !{!3377, !3378, !"quoting_options_from_style: argument 0"}
!3378 = distinct !{!3378, !"quoting_options_from_style"}
!3379 = !DILocation(line: 953, column: 36, scope: !3364)
!3380 = !DILocation(line: 0, scope: !3348, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 953, column: 36, scope: !3364)
!3382 = !DILocation(line: 185, column: 26, scope: !3348, inlinedAt: !3381)
!3383 = !DILocation(line: 186, column: 13, scope: !3357, inlinedAt: !3381)
!3384 = !DILocation(line: 186, column: 7, scope: !3348, inlinedAt: !3381)
!3385 = !DILocation(line: 187, column: 5, scope: !3357, inlinedAt: !3381)
!3386 = !DILocation(line: 188, column: 11, scope: !3348, inlinedAt: !3381)
!3387 = !DILocation(line: 954, column: 10, scope: !3364)
!3388 = !DILocation(line: 955, column: 1, scope: !3364)
!3389 = !DILocation(line: 954, column: 3, scope: !3364)
!3390 = distinct !DISubprogram(name: "quotearg_style", scope: !580, file: !580, line: 958, type: !3391, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!130, !113, !141}
!3393 = !{!3394, !3395}
!3394 = !DILocalVariable(name: "s", arg: 1, scope: !3390, file: !580, line: 958, type: !113)
!3395 = !DILocalVariable(name: "arg", arg: 2, scope: !3390, file: !580, line: 958, type: !141)
!3396 = !DILocation(line: 0, scope: !3390)
!3397 = !DILocation(line: 0, scope: !3332, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 960, column: 10, scope: !3390)
!3399 = !DILocation(line: 945, column: 3, scope: !3332, inlinedAt: !3398)
!3400 = !DILocation(line: 945, column: 32, scope: !3332, inlinedAt: !3398)
!3401 = !{!3402}
!3402 = distinct !{!3402, !3403, !"quoting_options_from_style: argument 0"}
!3403 = distinct !{!3403, !"quoting_options_from_style"}
!3404 = !DILocation(line: 945, column: 36, scope: !3332, inlinedAt: !3398)
!3405 = !DILocation(line: 0, scope: !3348, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 945, column: 36, scope: !3332, inlinedAt: !3398)
!3407 = !DILocation(line: 185, column: 26, scope: !3348, inlinedAt: !3406)
!3408 = !DILocation(line: 186, column: 13, scope: !3357, inlinedAt: !3406)
!3409 = !DILocation(line: 186, column: 7, scope: !3348, inlinedAt: !3406)
!3410 = !DILocation(line: 187, column: 5, scope: !3357, inlinedAt: !3406)
!3411 = !DILocation(line: 188, column: 11, scope: !3348, inlinedAt: !3406)
!3412 = !DILocation(line: 946, column: 10, scope: !3332, inlinedAt: !3398)
!3413 = !DILocation(line: 947, column: 1, scope: !3332, inlinedAt: !3398)
!3414 = !DILocation(line: 960, column: 3, scope: !3390)
!3415 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !580, file: !580, line: 964, type: !3416, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!130, !113, !141, !138}
!3418 = !{!3419, !3420, !3421}
!3419 = !DILocalVariable(name: "s", arg: 1, scope: !3415, file: !580, line: 964, type: !113)
!3420 = !DILocalVariable(name: "arg", arg: 2, scope: !3415, file: !580, line: 964, type: !141)
!3421 = !DILocalVariable(name: "argsize", arg: 3, scope: !3415, file: !580, line: 964, type: !138)
!3422 = !DILocation(line: 0, scope: !3415)
!3423 = !DILocation(line: 0, scope: !3364, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 966, column: 10, scope: !3415)
!3425 = !DILocation(line: 953, column: 3, scope: !3364, inlinedAt: !3424)
!3426 = !DILocation(line: 953, column: 32, scope: !3364, inlinedAt: !3424)
!3427 = !{!3428}
!3428 = distinct !{!3428, !3429, !"quoting_options_from_style: argument 0"}
!3429 = distinct !{!3429, !"quoting_options_from_style"}
!3430 = !DILocation(line: 953, column: 36, scope: !3364, inlinedAt: !3424)
!3431 = !DILocation(line: 0, scope: !3348, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 953, column: 36, scope: !3364, inlinedAt: !3424)
!3433 = !DILocation(line: 185, column: 26, scope: !3348, inlinedAt: !3432)
!3434 = !DILocation(line: 186, column: 13, scope: !3357, inlinedAt: !3432)
!3435 = !DILocation(line: 186, column: 7, scope: !3348, inlinedAt: !3432)
!3436 = !DILocation(line: 187, column: 5, scope: !3357, inlinedAt: !3432)
!3437 = !DILocation(line: 188, column: 11, scope: !3348, inlinedAt: !3432)
!3438 = !DILocation(line: 954, column: 10, scope: !3364, inlinedAt: !3424)
!3439 = !DILocation(line: 955, column: 1, scope: !3364, inlinedAt: !3424)
!3440 = !DILocation(line: 966, column: 3, scope: !3415)
!3441 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !580, file: !580, line: 970, type: !3442, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!130, !141, !138, !4}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "arg", arg: 1, scope: !3441, file: !580, line: 970, type: !141)
!3446 = !DILocalVariable(name: "argsize", arg: 2, scope: !3441, file: !580, line: 970, type: !138)
!3447 = !DILocalVariable(name: "ch", arg: 3, scope: !3441, file: !580, line: 970, type: !4)
!3448 = !DILocalVariable(name: "options", scope: !3441, file: !580, line: 972, type: !616)
!3449 = !DILocation(line: 0, scope: !3441)
!3450 = !DILocation(line: 972, column: 3, scope: !3441)
!3451 = !DILocation(line: 972, column: 26, scope: !3441)
!3452 = !DILocation(line: 973, column: 13, scope: !3441)
!3453 = !{i64 0, i64 4, !979, i64 4, i64 4, !970, i64 8, i64 32, !979, i64 40, i64 8, !905, i64 48, i64 8, !905}
!3454 = !DILocation(line: 0, scope: !2461, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 974, column: 3, scope: !3441)
!3456 = !DILocation(line: 147, column: 41, scope: !2461, inlinedAt: !3455)
!3457 = !DILocation(line: 147, column: 62, scope: !2461, inlinedAt: !3455)
!3458 = !DILocation(line: 147, column: 57, scope: !2461, inlinedAt: !3455)
!3459 = !DILocation(line: 148, column: 15, scope: !2461, inlinedAt: !3455)
!3460 = !DILocation(line: 149, column: 21, scope: !2461, inlinedAt: !3455)
!3461 = !DILocation(line: 149, column: 24, scope: !2461, inlinedAt: !3455)
!3462 = !DILocation(line: 150, column: 19, scope: !2461, inlinedAt: !3455)
!3463 = !DILocation(line: 150, column: 24, scope: !2461, inlinedAt: !3455)
!3464 = !DILocation(line: 150, column: 6, scope: !2461, inlinedAt: !3455)
!3465 = !DILocation(line: 975, column: 10, scope: !3441)
!3466 = !DILocation(line: 976, column: 1, scope: !3441)
!3467 = !DILocation(line: 975, column: 3, scope: !3441)
!3468 = distinct !DISubprogram(name: "quotearg_char", scope: !580, file: !580, line: 979, type: !3469, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!130, !141, !4}
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "arg", arg: 1, scope: !3468, file: !580, line: 979, type: !141)
!3473 = !DILocalVariable(name: "ch", arg: 2, scope: !3468, file: !580, line: 979, type: !4)
!3474 = !DILocation(line: 0, scope: !3468)
!3475 = !DILocation(line: 0, scope: !3441, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 981, column: 10, scope: !3468)
!3477 = !DILocation(line: 972, column: 3, scope: !3441, inlinedAt: !3476)
!3478 = !DILocation(line: 972, column: 26, scope: !3441, inlinedAt: !3476)
!3479 = !DILocation(line: 973, column: 13, scope: !3441, inlinedAt: !3476)
!3480 = !DILocation(line: 0, scope: !2461, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 974, column: 3, scope: !3441, inlinedAt: !3476)
!3482 = !DILocation(line: 147, column: 41, scope: !2461, inlinedAt: !3481)
!3483 = !DILocation(line: 147, column: 62, scope: !2461, inlinedAt: !3481)
!3484 = !DILocation(line: 147, column: 57, scope: !2461, inlinedAt: !3481)
!3485 = !DILocation(line: 148, column: 15, scope: !2461, inlinedAt: !3481)
!3486 = !DILocation(line: 149, column: 21, scope: !2461, inlinedAt: !3481)
!3487 = !DILocation(line: 149, column: 24, scope: !2461, inlinedAt: !3481)
!3488 = !DILocation(line: 150, column: 19, scope: !2461, inlinedAt: !3481)
!3489 = !DILocation(line: 150, column: 24, scope: !2461, inlinedAt: !3481)
!3490 = !DILocation(line: 150, column: 6, scope: !2461, inlinedAt: !3481)
!3491 = !DILocation(line: 975, column: 10, scope: !3441, inlinedAt: !3476)
!3492 = !DILocation(line: 976, column: 1, scope: !3441, inlinedAt: !3476)
!3493 = !DILocation(line: 981, column: 3, scope: !3468)
!3494 = distinct !DISubprogram(name: "quotearg_colon", scope: !580, file: !580, line: 985, type: !1093, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3495)
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "arg", arg: 1, scope: !3494, file: !580, line: 985, type: !141)
!3497 = !DILocation(line: 0, scope: !3494)
!3498 = !DILocation(line: 0, scope: !3468, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 987, column: 10, scope: !3494)
!3500 = !DILocation(line: 0, scope: !3441, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 981, column: 10, scope: !3468, inlinedAt: !3499)
!3502 = !DILocation(line: 972, column: 3, scope: !3441, inlinedAt: !3501)
!3503 = !DILocation(line: 972, column: 26, scope: !3441, inlinedAt: !3501)
!3504 = !DILocation(line: 973, column: 13, scope: !3441, inlinedAt: !3501)
!3505 = !DILocation(line: 0, scope: !2461, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 974, column: 3, scope: !3441, inlinedAt: !3501)
!3507 = !DILocation(line: 147, column: 57, scope: !2461, inlinedAt: !3506)
!3508 = !DILocation(line: 149, column: 21, scope: !2461, inlinedAt: !3506)
!3509 = !DILocation(line: 150, column: 6, scope: !2461, inlinedAt: !3506)
!3510 = !DILocation(line: 975, column: 10, scope: !3441, inlinedAt: !3501)
!3511 = !DILocation(line: 976, column: 1, scope: !3441, inlinedAt: !3501)
!3512 = !DILocation(line: 987, column: 3, scope: !3494)
!3513 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !580, file: !580, line: 991, type: !3322, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3514)
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "arg", arg: 1, scope: !3513, file: !580, line: 991, type: !141)
!3516 = !DILocalVariable(name: "argsize", arg: 2, scope: !3513, file: !580, line: 991, type: !138)
!3517 = !DILocation(line: 0, scope: !3513)
!3518 = !DILocation(line: 0, scope: !3441, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 993, column: 10, scope: !3513)
!3520 = !DILocation(line: 972, column: 3, scope: !3441, inlinedAt: !3519)
!3521 = !DILocation(line: 972, column: 26, scope: !3441, inlinedAt: !3519)
!3522 = !DILocation(line: 973, column: 13, scope: !3441, inlinedAt: !3519)
!3523 = !DILocation(line: 0, scope: !2461, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 974, column: 3, scope: !3441, inlinedAt: !3519)
!3525 = !DILocation(line: 147, column: 57, scope: !2461, inlinedAt: !3524)
!3526 = !DILocation(line: 149, column: 21, scope: !2461, inlinedAt: !3524)
!3527 = !DILocation(line: 150, column: 6, scope: !2461, inlinedAt: !3524)
!3528 = !DILocation(line: 975, column: 10, scope: !3441, inlinedAt: !3519)
!3529 = !DILocation(line: 976, column: 1, scope: !3441, inlinedAt: !3519)
!3530 = !DILocation(line: 993, column: 3, scope: !3513)
!3531 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !580, file: !580, line: 997, type: !3333, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3532)
!3532 = !{!3533, !3534, !3535, !3536}
!3533 = !DILocalVariable(name: "n", arg: 1, scope: !3531, file: !580, line: 997, type: !85)
!3534 = !DILocalVariable(name: "s", arg: 2, scope: !3531, file: !580, line: 997, type: !113)
!3535 = !DILocalVariable(name: "arg", arg: 3, scope: !3531, file: !580, line: 997, type: !141)
!3536 = !DILocalVariable(name: "options", scope: !3531, file: !580, line: 999, type: !616)
!3537 = !DILocation(line: 185, column: 26, scope: !3348, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 1000, column: 13, scope: !3531)
!3539 = !DILocation(line: 0, scope: !3531)
!3540 = !DILocation(line: 999, column: 3, scope: !3531)
!3541 = !DILocation(line: 999, column: 26, scope: !3531)
!3542 = !DILocation(line: 0, scope: !3348, inlinedAt: !3538)
!3543 = !DILocation(line: 186, column: 13, scope: !3357, inlinedAt: !3538)
!3544 = !DILocation(line: 186, column: 7, scope: !3348, inlinedAt: !3538)
!3545 = !DILocation(line: 187, column: 5, scope: !3357, inlinedAt: !3538)
!3546 = !{!3547}
!3547 = distinct !{!3547, !3548, !"quoting_options_from_style: argument 0"}
!3548 = distinct !{!3548, !"quoting_options_from_style"}
!3549 = !DILocation(line: 1000, column: 13, scope: !3531)
!3550 = !DILocation(line: 0, scope: !2461, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 1001, column: 3, scope: !3531)
!3552 = !DILocation(line: 147, column: 57, scope: !2461, inlinedAt: !3551)
!3553 = !DILocation(line: 149, column: 21, scope: !2461, inlinedAt: !3551)
!3554 = !DILocation(line: 150, column: 6, scope: !2461, inlinedAt: !3551)
!3555 = !DILocation(line: 1002, column: 10, scope: !3531)
!3556 = !DILocation(line: 1003, column: 1, scope: !3531)
!3557 = !DILocation(line: 1002, column: 3, scope: !3531)
!3558 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !580, file: !580, line: 1006, type: !3559, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!130, !85, !141, !141, !141}
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !580, line: 1006, type: !85)
!3563 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3558, file: !580, line: 1006, type: !141)
!3564 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3558, file: !580, line: 1007, type: !141)
!3565 = !DILocalVariable(name: "arg", arg: 4, scope: !3558, file: !580, line: 1007, type: !141)
!3566 = !DILocation(line: 0, scope: !3558)
!3567 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !580, line: 1014, type: !85)
!3568 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !580, file: !580, line: 1014, type: !3569, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!130, !85, !141, !141, !141, !138}
!3571 = !{!3567, !3572, !3573, !3574, !3575, !3576}
!3572 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3568, file: !580, line: 1014, type: !141)
!3573 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3568, file: !580, line: 1015, type: !141)
!3574 = !DILocalVariable(name: "arg", arg: 4, scope: !3568, file: !580, line: 1016, type: !141)
!3575 = !DILocalVariable(name: "argsize", arg: 5, scope: !3568, file: !580, line: 1016, type: !138)
!3576 = !DILocalVariable(name: "o", scope: !3568, file: !580, line: 1018, type: !616)
!3577 = !DILocation(line: 0, scope: !3568, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 1009, column: 10, scope: !3558)
!3579 = !DILocation(line: 1018, column: 3, scope: !3568, inlinedAt: !3578)
!3580 = !DILocation(line: 1018, column: 26, scope: !3568, inlinedAt: !3578)
!3581 = !DILocation(line: 1018, column: 30, scope: !3568, inlinedAt: !3578)
!3582 = !DILocation(line: 0, scope: !2501, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1019, column: 3, scope: !3568, inlinedAt: !3578)
!3584 = !DILocation(line: 174, column: 12, scope: !2501, inlinedAt: !3583)
!3585 = !DILocation(line: 175, column: 8, scope: !2514, inlinedAt: !3583)
!3586 = !DILocation(line: 175, column: 19, scope: !2514, inlinedAt: !3583)
!3587 = !DILocation(line: 176, column: 5, scope: !2514, inlinedAt: !3583)
!3588 = !DILocation(line: 177, column: 6, scope: !2501, inlinedAt: !3583)
!3589 = !DILocation(line: 177, column: 17, scope: !2501, inlinedAt: !3583)
!3590 = !DILocation(line: 178, column: 6, scope: !2501, inlinedAt: !3583)
!3591 = !DILocation(line: 178, column: 18, scope: !2501, inlinedAt: !3583)
!3592 = !DILocation(line: 1020, column: 10, scope: !3568, inlinedAt: !3578)
!3593 = !DILocation(line: 1021, column: 1, scope: !3568, inlinedAt: !3578)
!3594 = !DILocation(line: 1009, column: 3, scope: !3558)
!3595 = !DILocation(line: 0, scope: !3568)
!3596 = !DILocation(line: 1018, column: 3, scope: !3568)
!3597 = !DILocation(line: 1018, column: 26, scope: !3568)
!3598 = !DILocation(line: 1018, column: 30, scope: !3568)
!3599 = !DILocation(line: 0, scope: !2501, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 1019, column: 3, scope: !3568)
!3601 = !DILocation(line: 174, column: 12, scope: !2501, inlinedAt: !3600)
!3602 = !DILocation(line: 175, column: 8, scope: !2514, inlinedAt: !3600)
!3603 = !DILocation(line: 175, column: 19, scope: !2514, inlinedAt: !3600)
!3604 = !DILocation(line: 176, column: 5, scope: !2514, inlinedAt: !3600)
!3605 = !DILocation(line: 177, column: 6, scope: !2501, inlinedAt: !3600)
!3606 = !DILocation(line: 177, column: 17, scope: !2501, inlinedAt: !3600)
!3607 = !DILocation(line: 178, column: 6, scope: !2501, inlinedAt: !3600)
!3608 = !DILocation(line: 178, column: 18, scope: !2501, inlinedAt: !3600)
!3609 = !DILocation(line: 1020, column: 10, scope: !3568)
!3610 = !DILocation(line: 1021, column: 1, scope: !3568)
!3611 = !DILocation(line: 1020, column: 3, scope: !3568)
!3612 = distinct !DISubprogram(name: "quotearg_custom", scope: !580, file: !580, line: 1024, type: !3613, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!130, !141, !141, !141}
!3615 = !{!3616, !3617, !3618}
!3616 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3612, file: !580, line: 1024, type: !141)
!3617 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3612, file: !580, line: 1024, type: !141)
!3618 = !DILocalVariable(name: "arg", arg: 3, scope: !3612, file: !580, line: 1025, type: !141)
!3619 = !DILocation(line: 0, scope: !3612)
!3620 = !DILocation(line: 0, scope: !3558, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 1027, column: 10, scope: !3612)
!3622 = !DILocation(line: 0, scope: !3568, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 1009, column: 10, scope: !3558, inlinedAt: !3621)
!3624 = !DILocation(line: 1018, column: 3, scope: !3568, inlinedAt: !3623)
!3625 = !DILocation(line: 1018, column: 26, scope: !3568, inlinedAt: !3623)
!3626 = !DILocation(line: 1018, column: 30, scope: !3568, inlinedAt: !3623)
!3627 = !DILocation(line: 0, scope: !2501, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 1019, column: 3, scope: !3568, inlinedAt: !3623)
!3629 = !DILocation(line: 174, column: 12, scope: !2501, inlinedAt: !3628)
!3630 = !DILocation(line: 175, column: 8, scope: !2514, inlinedAt: !3628)
!3631 = !DILocation(line: 175, column: 19, scope: !2514, inlinedAt: !3628)
!3632 = !DILocation(line: 176, column: 5, scope: !2514, inlinedAt: !3628)
!3633 = !DILocation(line: 177, column: 6, scope: !2501, inlinedAt: !3628)
!3634 = !DILocation(line: 177, column: 17, scope: !2501, inlinedAt: !3628)
!3635 = !DILocation(line: 178, column: 6, scope: !2501, inlinedAt: !3628)
!3636 = !DILocation(line: 178, column: 18, scope: !2501, inlinedAt: !3628)
!3637 = !DILocation(line: 1020, column: 10, scope: !3568, inlinedAt: !3623)
!3638 = !DILocation(line: 1021, column: 1, scope: !3568, inlinedAt: !3623)
!3639 = !DILocation(line: 1027, column: 3, scope: !3612)
!3640 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !580, file: !580, line: 1031, type: !3641, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!130, !141, !141, !141, !138}
!3643 = !{!3644, !3645, !3646, !3647}
!3644 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3640, file: !580, line: 1031, type: !141)
!3645 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3640, file: !580, line: 1031, type: !141)
!3646 = !DILocalVariable(name: "arg", arg: 3, scope: !3640, file: !580, line: 1032, type: !141)
!3647 = !DILocalVariable(name: "argsize", arg: 4, scope: !3640, file: !580, line: 1032, type: !138)
!3648 = !DILocation(line: 0, scope: !3640)
!3649 = !DILocation(line: 0, scope: !3568, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 1034, column: 10, scope: !3640)
!3651 = !DILocation(line: 1018, column: 3, scope: !3568, inlinedAt: !3650)
!3652 = !DILocation(line: 1018, column: 26, scope: !3568, inlinedAt: !3650)
!3653 = !DILocation(line: 1018, column: 30, scope: !3568, inlinedAt: !3650)
!3654 = !DILocation(line: 0, scope: !2501, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 1019, column: 3, scope: !3568, inlinedAt: !3650)
!3656 = !DILocation(line: 174, column: 12, scope: !2501, inlinedAt: !3655)
!3657 = !DILocation(line: 175, column: 8, scope: !2514, inlinedAt: !3655)
!3658 = !DILocation(line: 175, column: 19, scope: !2514, inlinedAt: !3655)
!3659 = !DILocation(line: 176, column: 5, scope: !2514, inlinedAt: !3655)
!3660 = !DILocation(line: 177, column: 6, scope: !2501, inlinedAt: !3655)
!3661 = !DILocation(line: 177, column: 17, scope: !2501, inlinedAt: !3655)
!3662 = !DILocation(line: 178, column: 6, scope: !2501, inlinedAt: !3655)
!3663 = !DILocation(line: 178, column: 18, scope: !2501, inlinedAt: !3655)
!3664 = !DILocation(line: 1020, column: 10, scope: !3568, inlinedAt: !3650)
!3665 = !DILocation(line: 1021, column: 1, scope: !3568, inlinedAt: !3650)
!3666 = !DILocation(line: 1034, column: 3, scope: !3640)
!3667 = distinct !DISubprogram(name: "quote_n_mem", scope: !580, file: !580, line: 1049, type: !3668, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!141, !85, !141, !138}
!3670 = !{!3671, !3672, !3673}
!3671 = !DILocalVariable(name: "n", arg: 1, scope: !3667, file: !580, line: 1049, type: !85)
!3672 = !DILocalVariable(name: "arg", arg: 2, scope: !3667, file: !580, line: 1049, type: !141)
!3673 = !DILocalVariable(name: "argsize", arg: 3, scope: !3667, file: !580, line: 1049, type: !138)
!3674 = !DILocation(line: 0, scope: !3667)
!3675 = !DILocation(line: 1051, column: 10, scope: !3667)
!3676 = !DILocation(line: 1051, column: 3, scope: !3667)
!3677 = distinct !DISubprogram(name: "quote_mem", scope: !580, file: !580, line: 1055, type: !3678, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!141, !141, !138}
!3680 = !{!3681, !3682}
!3681 = !DILocalVariable(name: "arg", arg: 1, scope: !3677, file: !580, line: 1055, type: !141)
!3682 = !DILocalVariable(name: "argsize", arg: 2, scope: !3677, file: !580, line: 1055, type: !138)
!3683 = !DILocation(line: 0, scope: !3677)
!3684 = !DILocation(line: 0, scope: !3667, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1057, column: 10, scope: !3677)
!3686 = !DILocation(line: 1051, column: 10, scope: !3667, inlinedAt: !3685)
!3687 = !DILocation(line: 1057, column: 3, scope: !3677)
!3688 = distinct !DISubprogram(name: "quote_n", scope: !580, file: !580, line: 1061, type: !3689, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!141, !85, !141}
!3691 = !{!3692, !3693}
!3692 = !DILocalVariable(name: "n", arg: 1, scope: !3688, file: !580, line: 1061, type: !85)
!3693 = !DILocalVariable(name: "arg", arg: 2, scope: !3688, file: !580, line: 1061, type: !141)
!3694 = !DILocation(line: 0, scope: !3688)
!3695 = !DILocation(line: 0, scope: !3667, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 1063, column: 10, scope: !3688)
!3697 = !DILocation(line: 1051, column: 10, scope: !3667, inlinedAt: !3696)
!3698 = !DILocation(line: 1063, column: 3, scope: !3688)
!3699 = distinct !DISubprogram(name: "quote", scope: !580, file: !580, line: 1067, type: !3700, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !601, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!141, !141}
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "arg", arg: 1, scope: !3699, file: !580, line: 1067, type: !141)
!3704 = !DILocation(line: 0, scope: !3699)
!3705 = !DILocation(line: 0, scope: !3688, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 1069, column: 10, scope: !3699)
!3707 = !DILocation(line: 0, scope: !3667, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1063, column: 10, scope: !3688, inlinedAt: !3706)
!3709 = !DILocation(line: 1051, column: 10, scope: !3667, inlinedAt: !3708)
!3710 = !DILocation(line: 1069, column: 3, scope: !3699)
!3711 = distinct !DISubprogram(name: "fd_safer", scope: !825, file: !825, line: 37, type: !1436, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !824, retainedNodes: !3712)
!3712 = !{!3713, !3714, !3717}
!3713 = !DILocalVariable(name: "fd", arg: 1, scope: !3711, file: !825, line: 37, type: !85)
!3714 = !DILocalVariable(name: "f", scope: !3715, file: !825, line: 41, type: !85)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !825, line: 40, column: 5)
!3716 = distinct !DILexicalBlock(scope: !3711, file: !825, line: 39, column: 7)
!3717 = !DILocalVariable(name: "saved_errno", scope: !3715, file: !825, line: 42, type: !85)
!3718 = !DILocation(line: 0, scope: !3711)
!3719 = !DILocation(line: 39, column: 26, scope: !3716)
!3720 = !DILocation(line: 41, column: 15, scope: !3715)
!3721 = !DILocation(line: 0, scope: !3715)
!3722 = !DILocation(line: 42, column: 25, scope: !3715)
!3723 = !DILocation(line: 43, column: 7, scope: !3715)
!3724 = !DILocation(line: 44, column: 13, scope: !3715)
!3725 = !DILocation(line: 46, column: 5, scope: !3715)
!3726 = !DILocation(line: 48, column: 3, scope: !3711)
!3727 = distinct !DISubprogram(name: "version_etc_arn", scope: !676, file: !676, line: 61, type: !3728, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3764)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3730, !141, !141, !141, !1657, !138}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !3732)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3732, file: !212, line: 51, baseType: !85, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3732, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3732, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3732, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3732, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3732, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3732, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3732, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3732, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3732, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3732, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3732, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3732, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3732, file: !212, line: 70, baseType: !3748, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3732, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3732, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3732, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3732, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3732, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3732, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3732, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3732, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3732, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3732, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3732, file: !212, line: 93, baseType: !3748, size: 64, offset: 1344)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3732, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3732, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3732, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3732, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770}
!3765 = !DILocalVariable(name: "stream", arg: 1, scope: !3727, file: !676, line: 61, type: !3730)
!3766 = !DILocalVariable(name: "command_name", arg: 2, scope: !3727, file: !676, line: 62, type: !141)
!3767 = !DILocalVariable(name: "package", arg: 3, scope: !3727, file: !676, line: 62, type: !141)
!3768 = !DILocalVariable(name: "version", arg: 4, scope: !3727, file: !676, line: 63, type: !141)
!3769 = !DILocalVariable(name: "authors", arg: 5, scope: !3727, file: !676, line: 64, type: !1657)
!3770 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3727, file: !676, line: 64, type: !138)
!3771 = !DILocation(line: 0, scope: !3727)
!3772 = !DILocation(line: 66, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3727, file: !676, line: 66, column: 7)
!3774 = !DILocation(line: 66, column: 7, scope: !3727)
!3775 = !DILocation(line: 67, column: 5, scope: !3773)
!3776 = !DILocation(line: 69, column: 5, scope: !3773)
!3777 = !DILocation(line: 83, column: 3, scope: !3727)
!3778 = !DILocation(line: 85, column: 3, scope: !3727)
!3779 = !DILocation(line: 88, column: 3, scope: !3727)
!3780 = !DILocation(line: 95, column: 3, scope: !3727)
!3781 = !DILocation(line: 97, column: 3, scope: !3727)
!3782 = !DILocation(line: 105, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3727, file: !676, line: 98, column: 5)
!3784 = !DILocation(line: 106, column: 7, scope: !3783)
!3785 = !DILocation(line: 109, column: 7, scope: !3783)
!3786 = !DILocation(line: 110, column: 7, scope: !3783)
!3787 = !DILocation(line: 113, column: 7, scope: !3783)
!3788 = !DILocation(line: 115, column: 7, scope: !3783)
!3789 = !DILocation(line: 120, column: 7, scope: !3783)
!3790 = !DILocation(line: 122, column: 7, scope: !3783)
!3791 = !DILocation(line: 127, column: 7, scope: !3783)
!3792 = !DILocation(line: 129, column: 7, scope: !3783)
!3793 = !DILocation(line: 134, column: 7, scope: !3783)
!3794 = !DILocation(line: 137, column: 7, scope: !3783)
!3795 = !DILocation(line: 142, column: 7, scope: !3783)
!3796 = !DILocation(line: 145, column: 7, scope: !3783)
!3797 = !DILocation(line: 150, column: 7, scope: !3783)
!3798 = !DILocation(line: 154, column: 7, scope: !3783)
!3799 = !DILocation(line: 159, column: 7, scope: !3783)
!3800 = !DILocation(line: 163, column: 7, scope: !3783)
!3801 = !DILocation(line: 170, column: 7, scope: !3783)
!3802 = !DILocation(line: 174, column: 7, scope: !3783)
!3803 = !DILocation(line: 176, column: 1, scope: !3727)
!3804 = distinct !DISubprogram(name: "version_etc_ar", scope: !676, file: !676, line: 183, type: !3805, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !3730, !141, !141, !141, !1657}
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813}
!3808 = !DILocalVariable(name: "stream", arg: 1, scope: !3804, file: !676, line: 183, type: !3730)
!3809 = !DILocalVariable(name: "command_name", arg: 2, scope: !3804, file: !676, line: 184, type: !141)
!3810 = !DILocalVariable(name: "package", arg: 3, scope: !3804, file: !676, line: 184, type: !141)
!3811 = !DILocalVariable(name: "version", arg: 4, scope: !3804, file: !676, line: 185, type: !141)
!3812 = !DILocalVariable(name: "authors", arg: 5, scope: !3804, file: !676, line: 185, type: !1657)
!3813 = !DILocalVariable(name: "n_authors", scope: !3804, file: !676, line: 187, type: !138)
!3814 = !DILocation(line: 0, scope: !3804)
!3815 = !DILocation(line: 189, column: 8, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3804, file: !676, line: 189, column: 3)
!3817 = !DILocation(line: 189, scope: !3816)
!3818 = !DILocation(line: 189, column: 23, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3816, file: !676, line: 189, column: 3)
!3820 = !DILocation(line: 189, column: 3, scope: !3816)
!3821 = !DILocation(line: 189, column: 52, scope: !3819)
!3822 = distinct !{!3822, !3820, !3823, !1017}
!3823 = !DILocation(line: 190, column: 5, scope: !3816)
!3824 = !DILocation(line: 191, column: 3, scope: !3804)
!3825 = !DILocation(line: 192, column: 1, scope: !3804)
!3826 = distinct !DISubprogram(name: "version_etc_va", scope: !676, file: !676, line: 199, type: !3827, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3840)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !3730, !141, !141, !141, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !500, line: 52, baseType: !3830)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !502, line: 14, baseType: !3831)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3832, baseType: !3833)
!3832 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3834)
!3834 = !{!3835, !3836, !3837, !3838, !3839}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3833, file: !3832, line: 192, baseType: !131, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3833, file: !3832, line: 192, baseType: !131, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3833, file: !3832, line: 192, baseType: !131, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3833, file: !3832, line: 192, baseType: !85, size: 32, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3833, file: !3832, line: 192, baseType: !85, size: 32, offset: 224)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3841 = !DILocalVariable(name: "stream", arg: 1, scope: !3826, file: !676, line: 199, type: !3730)
!3842 = !DILocalVariable(name: "command_name", arg: 2, scope: !3826, file: !676, line: 200, type: !141)
!3843 = !DILocalVariable(name: "package", arg: 3, scope: !3826, file: !676, line: 200, type: !141)
!3844 = !DILocalVariable(name: "version", arg: 4, scope: !3826, file: !676, line: 201, type: !141)
!3845 = !DILocalVariable(name: "authors", arg: 5, scope: !3826, file: !676, line: 201, type: !3829)
!3846 = !DILocalVariable(name: "n_authors", scope: !3826, file: !676, line: 203, type: !138)
!3847 = !DILocalVariable(name: "authtab", scope: !3826, file: !676, line: 204, type: !3848)
!3848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 640, elements: !62)
!3849 = !DILocation(line: 0, scope: !3826)
!3850 = !DILocation(line: 201, column: 46, scope: !3826)
!3851 = !DILocation(line: 204, column: 3, scope: !3826)
!3852 = !DILocation(line: 204, column: 15, scope: !3826)
!3853 = !DILocation(line: 208, column: 35, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !676, line: 206, column: 3)
!3855 = distinct !DILexicalBlock(scope: !3826, file: !676, line: 206, column: 3)
!3856 = !DILocation(line: 208, column: 33, scope: !3854)
!3857 = !DILocation(line: 208, column: 67, scope: !3854)
!3858 = !DILocation(line: 206, column: 3, scope: !3855)
!3859 = !DILocation(line: 208, column: 14, scope: !3854)
!3860 = !DILocation(line: 0, scope: !3855)
!3861 = !DILocation(line: 211, column: 3, scope: !3826)
!3862 = !DILocation(line: 213, column: 1, scope: !3826)
!3863 = distinct !DISubprogram(name: "version_etc", scope: !676, file: !676, line: 230, type: !3864, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3730, !141, !141, !141, null}
!3866 = !{!3867, !3868, !3869, !3870, !3871}
!3867 = !DILocalVariable(name: "stream", arg: 1, scope: !3863, file: !676, line: 230, type: !3730)
!3868 = !DILocalVariable(name: "command_name", arg: 2, scope: !3863, file: !676, line: 231, type: !141)
!3869 = !DILocalVariable(name: "package", arg: 3, scope: !3863, file: !676, line: 231, type: !141)
!3870 = !DILocalVariable(name: "version", arg: 4, scope: !3863, file: !676, line: 232, type: !141)
!3871 = !DILocalVariable(name: "authors", scope: !3863, file: !676, line: 234, type: !3829)
!3872 = !DILocation(line: 0, scope: !3863)
!3873 = !DILocation(line: 234, column: 3, scope: !3863)
!3874 = !DILocation(line: 234, column: 11, scope: !3863)
!3875 = !DILocation(line: 235, column: 3, scope: !3863)
!3876 = !DILocation(line: 236, column: 3, scope: !3863)
!3877 = !DILocation(line: 237, column: 3, scope: !3863)
!3878 = !DILocation(line: 238, column: 1, scope: !3863)
!3879 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !676, file: !676, line: 241, type: !469, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !955)
!3880 = !DILocation(line: 243, column: 3, scope: !3879)
!3881 = !DILocation(line: 248, column: 3, scope: !3879)
!3882 = !DILocation(line: 254, column: 3, scope: !3879)
!3883 = !DILocation(line: 259, column: 3, scope: !3879)
!3884 = !DILocation(line: 261, column: 1, scope: !3879)
!3885 = distinct !DISubprogram(name: "xnrealloc", scope: !3886, file: !3886, line: 147, type: !3887, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3889)
!3886 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!131, !131, !138, !138}
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "p", arg: 1, scope: !3885, file: !3886, line: 147, type: !131)
!3891 = !DILocalVariable(name: "n", arg: 2, scope: !3885, file: !3886, line: 147, type: !138)
!3892 = !DILocalVariable(name: "s", arg: 3, scope: !3885, file: !3886, line: 147, type: !138)
!3893 = !DILocation(line: 0, scope: !3885)
!3894 = !DILocalVariable(name: "p", arg: 1, scope: !3895, file: !834, line: 83, type: !131)
!3895 = distinct !DISubprogram(name: "xreallocarray", scope: !834, file: !834, line: 83, type: !3887, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3896)
!3896 = !{!3894, !3897, !3898}
!3897 = !DILocalVariable(name: "n", arg: 2, scope: !3895, file: !834, line: 83, type: !138)
!3898 = !DILocalVariable(name: "s", arg: 3, scope: !3895, file: !834, line: 83, type: !138)
!3899 = !DILocation(line: 0, scope: !3895, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 149, column: 10, scope: !3885)
!3901 = !DILocation(line: 85, column: 25, scope: !3895, inlinedAt: !3900)
!3902 = !DILocalVariable(name: "p", arg: 1, scope: !3903, file: !834, line: 37, type: !131)
!3903 = distinct !DISubprogram(name: "check_nonnull", scope: !834, file: !834, line: 37, type: !3904, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!131, !131}
!3906 = !{!3902}
!3907 = !DILocation(line: 0, scope: !3903, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 85, column: 10, scope: !3895, inlinedAt: !3900)
!3909 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !3908)
!3910 = distinct !DILexicalBlock(scope: !3903, file: !834, line: 39, column: 7)
!3911 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !3908)
!3912 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !3908)
!3913 = !DILocation(line: 149, column: 3, scope: !3885)
!3914 = !DILocation(line: 0, scope: !3895)
!3915 = !DILocation(line: 85, column: 25, scope: !3895)
!3916 = !DILocation(line: 0, scope: !3903, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 85, column: 10, scope: !3895)
!3918 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !3917)
!3919 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !3917)
!3920 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !3917)
!3921 = !DILocation(line: 85, column: 3, scope: !3895)
!3922 = distinct !DISubprogram(name: "xmalloc", scope: !834, file: !834, line: 47, type: !3923, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!131, !138}
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "s", arg: 1, scope: !3922, file: !834, line: 47, type: !138)
!3927 = !DILocation(line: 0, scope: !3922)
!3928 = !DILocation(line: 49, column: 25, scope: !3922)
!3929 = !DILocation(line: 0, scope: !3903, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 49, column: 10, scope: !3922)
!3931 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !3930)
!3932 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !3930)
!3933 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !3930)
!3934 = !DILocation(line: 49, column: 3, scope: !3922)
!3935 = !DISubprogram(name: "malloc", scope: !1091, file: !1091, line: 540, type: !3923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!3936 = distinct !DISubprogram(name: "ximalloc", scope: !834, file: !834, line: 53, type: !3937, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!131, !853}
!3939 = !{!3940}
!3940 = !DILocalVariable(name: "s", arg: 1, scope: !3936, file: !834, line: 53, type: !853)
!3941 = !DILocation(line: 0, scope: !3936)
!3942 = !DILocalVariable(name: "s", arg: 1, scope: !3943, file: !3944, line: 55, type: !853)
!3943 = distinct !DISubprogram(name: "imalloc", scope: !3944, file: !3944, line: 55, type: !3937, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3945)
!3944 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3945 = !{!3942}
!3946 = !DILocation(line: 0, scope: !3943, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 55, column: 25, scope: !3936)
!3948 = !DILocation(line: 57, column: 26, scope: !3943, inlinedAt: !3947)
!3949 = !DILocation(line: 0, scope: !3903, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 55, column: 10, scope: !3936)
!3951 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !3950)
!3952 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !3950)
!3953 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !3950)
!3954 = !DILocation(line: 55, column: 3, scope: !3936)
!3955 = distinct !DISubprogram(name: "xcharalloc", scope: !834, file: !834, line: 59, type: !3956, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!130, !138}
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "n", arg: 1, scope: !3955, file: !834, line: 59, type: !138)
!3960 = !DILocation(line: 0, scope: !3955)
!3961 = !DILocation(line: 0, scope: !3922, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 61, column: 10, scope: !3955)
!3963 = !DILocation(line: 49, column: 25, scope: !3922, inlinedAt: !3962)
!3964 = !DILocation(line: 0, scope: !3903, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 49, column: 10, scope: !3922, inlinedAt: !3962)
!3966 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !3965)
!3969 = !DILocation(line: 61, column: 3, scope: !3955)
!3970 = distinct !DISubprogram(name: "xrealloc", scope: !834, file: !834, line: 68, type: !3971, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!131, !131, !138}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "p", arg: 1, scope: !3970, file: !834, line: 68, type: !131)
!3975 = !DILocalVariable(name: "s", arg: 2, scope: !3970, file: !834, line: 68, type: !138)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocalVariable(name: "ptr", arg: 1, scope: !3978, file: !3979, line: 2057, type: !131)
!3978 = distinct !DISubprogram(name: "rpl_realloc", scope: !3979, file: !3979, line: 2057, type: !3971, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3980)
!3979 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3980 = !{!3977, !3981}
!3981 = !DILocalVariable(name: "size", arg: 2, scope: !3978, file: !3979, line: 2057, type: !138)
!3982 = !DILocation(line: 0, scope: !3978, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 70, column: 25, scope: !3970)
!3984 = !DILocation(line: 2059, column: 24, scope: !3978, inlinedAt: !3983)
!3985 = !DILocation(line: 2059, column: 10, scope: !3978, inlinedAt: !3983)
!3986 = !DILocation(line: 0, scope: !3903, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 70, column: 10, scope: !3970)
!3988 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !3987)
!3989 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !3987)
!3990 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !3987)
!3991 = !DILocation(line: 70, column: 3, scope: !3970)
!3992 = !DISubprogram(name: "realloc", scope: !1091, file: !1091, line: 551, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!3993 = distinct !DISubprogram(name: "xirealloc", scope: !834, file: !834, line: 74, type: !3994, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !3996)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!131, !131, !853}
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "p", arg: 1, scope: !3993, file: !834, line: 74, type: !131)
!3998 = !DILocalVariable(name: "s", arg: 2, scope: !3993, file: !834, line: 74, type: !853)
!3999 = !DILocation(line: 0, scope: !3993)
!4000 = !DILocalVariable(name: "p", arg: 1, scope: !4001, file: !3944, line: 66, type: !131)
!4001 = distinct !DISubprogram(name: "irealloc", scope: !3944, file: !3944, line: 66, type: !3994, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4002)
!4002 = !{!4000, !4003}
!4003 = !DILocalVariable(name: "s", arg: 2, scope: !4001, file: !3944, line: 66, type: !853)
!4004 = !DILocation(line: 0, scope: !4001, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 76, column: 25, scope: !3993)
!4006 = !DILocation(line: 0, scope: !3978, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 68, column: 26, scope: !4001, inlinedAt: !4005)
!4008 = !DILocation(line: 2059, column: 24, scope: !3978, inlinedAt: !4007)
!4009 = !DILocation(line: 2059, column: 10, scope: !3978, inlinedAt: !4007)
!4010 = !DILocation(line: 0, scope: !3903, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 76, column: 10, scope: !3993)
!4012 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4011)
!4013 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4011)
!4014 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4011)
!4015 = !DILocation(line: 76, column: 3, scope: !3993)
!4016 = distinct !DISubprogram(name: "xireallocarray", scope: !834, file: !834, line: 89, type: !4017, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!131, !131, !853, !853}
!4019 = !{!4020, !4021, !4022}
!4020 = !DILocalVariable(name: "p", arg: 1, scope: !4016, file: !834, line: 89, type: !131)
!4021 = !DILocalVariable(name: "n", arg: 2, scope: !4016, file: !834, line: 89, type: !853)
!4022 = !DILocalVariable(name: "s", arg: 3, scope: !4016, file: !834, line: 89, type: !853)
!4023 = !DILocation(line: 0, scope: !4016)
!4024 = !DILocalVariable(name: "p", arg: 1, scope: !4025, file: !3944, line: 98, type: !131)
!4025 = distinct !DISubprogram(name: "ireallocarray", scope: !3944, file: !3944, line: 98, type: !4017, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4026)
!4026 = !{!4024, !4027, !4028}
!4027 = !DILocalVariable(name: "n", arg: 2, scope: !4025, file: !3944, line: 98, type: !853)
!4028 = !DILocalVariable(name: "s", arg: 3, scope: !4025, file: !3944, line: 98, type: !853)
!4029 = !DILocation(line: 0, scope: !4025, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 91, column: 25, scope: !4016)
!4031 = !DILocation(line: 101, column: 13, scope: !4025, inlinedAt: !4030)
!4032 = !DILocation(line: 0, scope: !3903, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 91, column: 10, scope: !4016)
!4034 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4033)
!4035 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4033)
!4036 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4033)
!4037 = !DILocation(line: 91, column: 3, scope: !4016)
!4038 = distinct !DISubprogram(name: "xnmalloc", scope: !834, file: !834, line: 98, type: !4039, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4041)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!131, !138, !138}
!4041 = !{!4042, !4043}
!4042 = !DILocalVariable(name: "n", arg: 1, scope: !4038, file: !834, line: 98, type: !138)
!4043 = !DILocalVariable(name: "s", arg: 2, scope: !4038, file: !834, line: 98, type: !138)
!4044 = !DILocation(line: 0, scope: !4038)
!4045 = !DILocation(line: 0, scope: !3895, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 100, column: 10, scope: !4038)
!4047 = !DILocation(line: 85, column: 25, scope: !3895, inlinedAt: !4046)
!4048 = !DILocation(line: 0, scope: !3903, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 85, column: 10, scope: !3895, inlinedAt: !4046)
!4050 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4049)
!4051 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4049)
!4052 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4049)
!4053 = !DILocation(line: 100, column: 3, scope: !4038)
!4054 = distinct !DISubprogram(name: "xinmalloc", scope: !834, file: !834, line: 104, type: !4055, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!131, !853, !853}
!4057 = !{!4058, !4059}
!4058 = !DILocalVariable(name: "n", arg: 1, scope: !4054, file: !834, line: 104, type: !853)
!4059 = !DILocalVariable(name: "s", arg: 2, scope: !4054, file: !834, line: 104, type: !853)
!4060 = !DILocation(line: 0, scope: !4054)
!4061 = !DILocation(line: 0, scope: !4016, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 106, column: 10, scope: !4054)
!4063 = !DILocation(line: 0, scope: !4025, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 91, column: 25, scope: !4016, inlinedAt: !4062)
!4065 = !DILocation(line: 101, column: 13, scope: !4025, inlinedAt: !4064)
!4066 = !DILocation(line: 0, scope: !3903, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 91, column: 10, scope: !4016, inlinedAt: !4062)
!4068 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4067)
!4069 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4067)
!4070 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4067)
!4071 = !DILocation(line: 106, column: 3, scope: !4054)
!4072 = distinct !DISubprogram(name: "x2realloc", scope: !834, file: !834, line: 116, type: !4073, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!131, !131, !840}
!4075 = !{!4076, !4077}
!4076 = !DILocalVariable(name: "p", arg: 1, scope: !4072, file: !834, line: 116, type: !131)
!4077 = !DILocalVariable(name: "ps", arg: 2, scope: !4072, file: !834, line: 116, type: !840)
!4078 = !DILocation(line: 0, scope: !4072)
!4079 = !DILocation(line: 0, scope: !837, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 118, column: 10, scope: !4072)
!4081 = !DILocation(line: 178, column: 14, scope: !837, inlinedAt: !4080)
!4082 = !DILocation(line: 180, column: 9, scope: !4083, inlinedAt: !4080)
!4083 = distinct !DILexicalBlock(scope: !837, file: !834, line: 180, column: 7)
!4084 = !DILocation(line: 180, column: 7, scope: !837, inlinedAt: !4080)
!4085 = !DILocation(line: 182, column: 13, scope: !4086, inlinedAt: !4080)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !834, line: 182, column: 11)
!4087 = distinct !DILexicalBlock(scope: !4083, file: !834, line: 181, column: 5)
!4088 = !DILocation(line: 182, column: 11, scope: !4087, inlinedAt: !4080)
!4089 = !DILocation(line: 197, column: 11, scope: !4090, inlinedAt: !4080)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !834, line: 197, column: 11)
!4091 = distinct !DILexicalBlock(scope: !4083, file: !834, line: 195, column: 5)
!4092 = !DILocation(line: 197, column: 11, scope: !4091, inlinedAt: !4080)
!4093 = !DILocation(line: 198, column: 9, scope: !4090, inlinedAt: !4080)
!4094 = !DILocation(line: 0, scope: !3895, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 201, column: 7, scope: !837, inlinedAt: !4080)
!4096 = !DILocation(line: 85, column: 25, scope: !3895, inlinedAt: !4095)
!4097 = !DILocation(line: 0, scope: !3903, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 85, column: 10, scope: !3895, inlinedAt: !4095)
!4099 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4098)
!4100 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4098)
!4101 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4098)
!4102 = !DILocation(line: 202, column: 7, scope: !837, inlinedAt: !4080)
!4103 = !DILocation(line: 118, column: 3, scope: !4072)
!4104 = !DILocation(line: 0, scope: !837)
!4105 = !DILocation(line: 178, column: 14, scope: !837)
!4106 = !DILocation(line: 180, column: 9, scope: !4083)
!4107 = !DILocation(line: 180, column: 7, scope: !837)
!4108 = !DILocation(line: 182, column: 13, scope: !4086)
!4109 = !DILocation(line: 182, column: 11, scope: !4087)
!4110 = !DILocation(line: 190, column: 30, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4086, file: !834, line: 183, column: 9)
!4112 = !DILocation(line: 191, column: 16, scope: !4111)
!4113 = !DILocation(line: 191, column: 13, scope: !4111)
!4114 = !DILocation(line: 192, column: 9, scope: !4111)
!4115 = !DILocation(line: 197, column: 11, scope: !4090)
!4116 = !DILocation(line: 197, column: 11, scope: !4091)
!4117 = !DILocation(line: 198, column: 9, scope: !4090)
!4118 = !DILocation(line: 0, scope: !3895, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 201, column: 7, scope: !837)
!4120 = !DILocation(line: 85, column: 25, scope: !3895, inlinedAt: !4119)
!4121 = !DILocation(line: 0, scope: !3903, inlinedAt: !4122)
!4122 = distinct !DILocation(line: 85, column: 10, scope: !3895, inlinedAt: !4119)
!4123 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4122)
!4124 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4122)
!4125 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4122)
!4126 = !DILocation(line: 202, column: 7, scope: !837)
!4127 = !DILocation(line: 203, column: 3, scope: !837)
!4128 = !DILocation(line: 0, scope: !849)
!4129 = !DILocation(line: 230, column: 14, scope: !849)
!4130 = !DILocation(line: 238, column: 7, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !849, file: !834, line: 238, column: 7)
!4132 = !DILocation(line: 238, column: 7, scope: !849)
!4133 = !DILocation(line: 240, column: 9, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !849, file: !834, line: 240, column: 7)
!4135 = !DILocation(line: 240, column: 18, scope: !4134)
!4136 = !DILocation(line: 253, column: 8, scope: !849)
!4137 = !DILocation(line: 258, column: 27, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !834, line: 257, column: 5)
!4139 = distinct !DILexicalBlock(scope: !849, file: !834, line: 256, column: 7)
!4140 = !DILocation(line: 259, column: 32, scope: !4138)
!4141 = !DILocation(line: 260, column: 5, scope: !4138)
!4142 = !DILocation(line: 262, column: 9, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !849, file: !834, line: 262, column: 7)
!4144 = !DILocation(line: 262, column: 7, scope: !849)
!4145 = !DILocation(line: 263, column: 9, scope: !4143)
!4146 = !DILocation(line: 263, column: 5, scope: !4143)
!4147 = !DILocation(line: 264, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !849, file: !834, line: 264, column: 7)
!4149 = !DILocation(line: 264, column: 14, scope: !4148)
!4150 = !DILocation(line: 265, column: 7, scope: !4148)
!4151 = !DILocation(line: 265, column: 11, scope: !4148)
!4152 = !DILocation(line: 266, column: 11, scope: !4148)
!4153 = !DILocation(line: 267, column: 14, scope: !4148)
!4154 = !DILocation(line: 264, column: 7, scope: !849)
!4155 = !DILocation(line: 268, column: 5, scope: !4148)
!4156 = !DILocation(line: 0, scope: !3970, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 269, column: 8, scope: !849)
!4158 = !DILocation(line: 0, scope: !3978, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 70, column: 25, scope: !3970, inlinedAt: !4157)
!4160 = !DILocation(line: 2059, column: 24, scope: !3978, inlinedAt: !4159)
!4161 = !DILocation(line: 2059, column: 10, scope: !3978, inlinedAt: !4159)
!4162 = !DILocation(line: 0, scope: !3903, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 70, column: 10, scope: !3970, inlinedAt: !4157)
!4164 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4163)
!4165 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4163)
!4166 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4163)
!4167 = !DILocation(line: 270, column: 7, scope: !849)
!4168 = !DILocation(line: 271, column: 3, scope: !849)
!4169 = distinct !DISubprogram(name: "xzalloc", scope: !834, file: !834, line: 279, type: !3923, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4170)
!4170 = !{!4171}
!4171 = !DILocalVariable(name: "s", arg: 1, scope: !4169, file: !834, line: 279, type: !138)
!4172 = !DILocation(line: 0, scope: !4169)
!4173 = !DILocalVariable(name: "n", arg: 1, scope: !4174, file: !834, line: 294, type: !138)
!4174 = distinct !DISubprogram(name: "xcalloc", scope: !834, file: !834, line: 294, type: !4039, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4175)
!4175 = !{!4173, !4176}
!4176 = !DILocalVariable(name: "s", arg: 2, scope: !4174, file: !834, line: 294, type: !138)
!4177 = !DILocation(line: 0, scope: !4174, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 281, column: 10, scope: !4169)
!4179 = !DILocation(line: 296, column: 25, scope: !4174, inlinedAt: !4178)
!4180 = !DILocation(line: 0, scope: !3903, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 296, column: 10, scope: !4174, inlinedAt: !4178)
!4182 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4181)
!4183 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4181)
!4184 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4181)
!4185 = !DILocation(line: 281, column: 3, scope: !4169)
!4186 = !DISubprogram(name: "calloc", scope: !1091, file: !1091, line: 543, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4187 = !DILocation(line: 0, scope: !4174)
!4188 = !DILocation(line: 296, column: 25, scope: !4174)
!4189 = !DILocation(line: 0, scope: !3903, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 296, column: 10, scope: !4174)
!4191 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4190)
!4192 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4190)
!4193 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4190)
!4194 = !DILocation(line: 296, column: 3, scope: !4174)
!4195 = distinct !DISubprogram(name: "xizalloc", scope: !834, file: !834, line: 285, type: !3937, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4196)
!4196 = !{!4197}
!4197 = !DILocalVariable(name: "s", arg: 1, scope: !4195, file: !834, line: 285, type: !853)
!4198 = !DILocation(line: 0, scope: !4195)
!4199 = !DILocalVariable(name: "n", arg: 1, scope: !4200, file: !834, line: 300, type: !853)
!4200 = distinct !DISubprogram(name: "xicalloc", scope: !834, file: !834, line: 300, type: !4055, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4201)
!4201 = !{!4199, !4202}
!4202 = !DILocalVariable(name: "s", arg: 2, scope: !4200, file: !834, line: 300, type: !853)
!4203 = !DILocation(line: 0, scope: !4200, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 287, column: 10, scope: !4195)
!4205 = !DILocalVariable(name: "n", arg: 1, scope: !4206, file: !3944, line: 77, type: !853)
!4206 = distinct !DISubprogram(name: "icalloc", scope: !3944, file: !3944, line: 77, type: !4055, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4207)
!4207 = !{!4205, !4208}
!4208 = !DILocalVariable(name: "s", arg: 2, scope: !4206, file: !3944, line: 77, type: !853)
!4209 = !DILocation(line: 0, scope: !4206, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 302, column: 25, scope: !4200, inlinedAt: !4204)
!4211 = !DILocation(line: 91, column: 10, scope: !4206, inlinedAt: !4210)
!4212 = !DILocation(line: 0, scope: !3903, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 302, column: 10, scope: !4200, inlinedAt: !4204)
!4214 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4213)
!4215 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4213)
!4216 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4213)
!4217 = !DILocation(line: 287, column: 3, scope: !4195)
!4218 = !DILocation(line: 0, scope: !4200)
!4219 = !DILocation(line: 0, scope: !4206, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 302, column: 25, scope: !4200)
!4221 = !DILocation(line: 91, column: 10, scope: !4206, inlinedAt: !4220)
!4222 = !DILocation(line: 0, scope: !3903, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 302, column: 10, scope: !4200)
!4224 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4223)
!4225 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4223)
!4226 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4223)
!4227 = !DILocation(line: 302, column: 3, scope: !4200)
!4228 = distinct !DISubprogram(name: "xmemdup", scope: !834, file: !834, line: 310, type: !4229, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4231)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!131, !128, !138}
!4231 = !{!4232, !4233}
!4232 = !DILocalVariable(name: "p", arg: 1, scope: !4228, file: !834, line: 310, type: !128)
!4233 = !DILocalVariable(name: "s", arg: 2, scope: !4228, file: !834, line: 310, type: !138)
!4234 = !DILocation(line: 0, scope: !4228)
!4235 = !DILocation(line: 0, scope: !3922, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 312, column: 18, scope: !4228)
!4237 = !DILocation(line: 49, column: 25, scope: !3922, inlinedAt: !4236)
!4238 = !DILocation(line: 0, scope: !3903, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 49, column: 10, scope: !3922, inlinedAt: !4236)
!4240 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4239)
!4243 = !DILocalVariable(name: "__dest", arg: 1, scope: !4244, file: !2404, line: 26, type: !4247)
!4244 = distinct !DISubprogram(name: "memcpy", scope: !2404, file: !2404, line: 26, type: !4245, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4248)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!131, !4247, !1114, !138}
!4247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4248 = !{!4243, !4249, !4250}
!4249 = !DILocalVariable(name: "__src", arg: 2, scope: !4244, file: !2404, line: 26, type: !1114)
!4250 = !DILocalVariable(name: "__len", arg: 3, scope: !4244, file: !2404, line: 26, type: !138)
!4251 = !DILocation(line: 0, scope: !4244, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 312, column: 10, scope: !4228)
!4253 = !DILocation(line: 29, column: 10, scope: !4244, inlinedAt: !4252)
!4254 = !DILocation(line: 312, column: 3, scope: !4228)
!4255 = distinct !DISubprogram(name: "ximemdup", scope: !834, file: !834, line: 316, type: !4256, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!131, !128, !853}
!4258 = !{!4259, !4260}
!4259 = !DILocalVariable(name: "p", arg: 1, scope: !4255, file: !834, line: 316, type: !128)
!4260 = !DILocalVariable(name: "s", arg: 2, scope: !4255, file: !834, line: 316, type: !853)
!4261 = !DILocation(line: 0, scope: !4255)
!4262 = !DILocation(line: 0, scope: !3936, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 318, column: 18, scope: !4255)
!4264 = !DILocation(line: 0, scope: !3943, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 55, column: 25, scope: !3936, inlinedAt: !4263)
!4266 = !DILocation(line: 57, column: 26, scope: !3943, inlinedAt: !4265)
!4267 = !DILocation(line: 0, scope: !3903, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 55, column: 10, scope: !3936, inlinedAt: !4263)
!4269 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4268)
!4270 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4268)
!4271 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4268)
!4272 = !DILocation(line: 0, scope: !4244, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 318, column: 10, scope: !4255)
!4274 = !DILocation(line: 29, column: 10, scope: !4244, inlinedAt: !4273)
!4275 = !DILocation(line: 318, column: 3, scope: !4255)
!4276 = distinct !DISubprogram(name: "ximemdup0", scope: !834, file: !834, line: 325, type: !4277, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4279)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!130, !128, !853}
!4279 = !{!4280, !4281, !4282}
!4280 = !DILocalVariable(name: "p", arg: 1, scope: !4276, file: !834, line: 325, type: !128)
!4281 = !DILocalVariable(name: "s", arg: 2, scope: !4276, file: !834, line: 325, type: !853)
!4282 = !DILocalVariable(name: "result", scope: !4276, file: !834, line: 327, type: !130)
!4283 = !DILocation(line: 0, scope: !4276)
!4284 = !DILocation(line: 327, column: 30, scope: !4276)
!4285 = !DILocation(line: 0, scope: !3936, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 327, column: 18, scope: !4276)
!4287 = !DILocation(line: 0, scope: !3943, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 55, column: 25, scope: !3936, inlinedAt: !4286)
!4289 = !DILocation(line: 57, column: 26, scope: !3943, inlinedAt: !4288)
!4290 = !DILocation(line: 0, scope: !3903, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 55, column: 10, scope: !3936, inlinedAt: !4286)
!4292 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4291)
!4293 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4291)
!4294 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4291)
!4295 = !DILocation(line: 328, column: 3, scope: !4276)
!4296 = !DILocation(line: 328, column: 13, scope: !4276)
!4297 = !DILocation(line: 0, scope: !4244, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 329, column: 10, scope: !4276)
!4299 = !DILocation(line: 29, column: 10, scope: !4244, inlinedAt: !4298)
!4300 = !DILocation(line: 329, column: 3, scope: !4276)
!4301 = distinct !DISubprogram(name: "xstrdup", scope: !834, file: !834, line: 335, type: !1093, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !4302)
!4302 = !{!4303}
!4303 = !DILocalVariable(name: "string", arg: 1, scope: !4301, file: !834, line: 335, type: !141)
!4304 = !DILocation(line: 0, scope: !4301)
!4305 = !DILocation(line: 337, column: 27, scope: !4301)
!4306 = !DILocation(line: 337, column: 43, scope: !4301)
!4307 = !DILocation(line: 0, scope: !4228, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 337, column: 10, scope: !4301)
!4309 = !DILocation(line: 0, scope: !3922, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 312, column: 18, scope: !4228, inlinedAt: !4308)
!4311 = !DILocation(line: 49, column: 25, scope: !3922, inlinedAt: !4310)
!4312 = !DILocation(line: 0, scope: !3903, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 49, column: 10, scope: !3922, inlinedAt: !4310)
!4314 = !DILocation(line: 39, column: 8, scope: !3910, inlinedAt: !4313)
!4315 = !DILocation(line: 39, column: 7, scope: !3903, inlinedAt: !4313)
!4316 = !DILocation(line: 40, column: 5, scope: !3910, inlinedAt: !4313)
!4317 = !DILocation(line: 0, scope: !4244, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 312, column: 10, scope: !4228, inlinedAt: !4308)
!4319 = !DILocation(line: 29, column: 10, scope: !4244, inlinedAt: !4318)
!4320 = !DILocation(line: 337, column: 3, scope: !4301)
!4321 = distinct !DISubprogram(name: "xalloc_die", scope: !767, file: !767, line: 32, type: !469, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !4322)
!4322 = !{!4323}
!4323 = !DILocalVariable(name: "__errstatus", scope: !4324, file: !767, line: 34, type: !1197)
!4324 = distinct !DILexicalBlock(scope: !4321, file: !767, line: 34, column: 3)
!4325 = !DILocation(line: 34, column: 3, scope: !4324)
!4326 = !DILocation(line: 0, scope: !4324)
!4327 = !DILocation(line: 40, column: 3, scope: !4321)
!4328 = distinct !DISubprogram(name: "close_stream", scope: !870, file: !870, line: 55, type: !4329, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4365)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!85, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4333)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4333, file: !212, line: 51, baseType: !85, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4333, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4333, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4333, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4333, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4333, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4333, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4333, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4333, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4333, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4333, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4333, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4333, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4333, file: !212, line: 70, baseType: !4349, size: 64, offset: 832)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4333, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4333, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4333, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4333, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4333, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4333, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4333, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4333, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4333, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4333, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4333, file: !212, line: 93, baseType: !4349, size: 64, offset: 1344)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4333, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4333, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4333, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4333, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4365 = !{!4366, !4367, !4369, !4370}
!4366 = !DILocalVariable(name: "stream", arg: 1, scope: !4328, file: !870, line: 55, type: !4331)
!4367 = !DILocalVariable(name: "some_pending", scope: !4328, file: !870, line: 57, type: !4368)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!4369 = !DILocalVariable(name: "prev_fail", scope: !4328, file: !870, line: 58, type: !4368)
!4370 = !DILocalVariable(name: "fclose_fail", scope: !4328, file: !870, line: 59, type: !4368)
!4371 = !DILocation(line: 0, scope: !4328)
!4372 = !DILocation(line: 57, column: 30, scope: !4328)
!4373 = !DILocalVariable(name: "__stream", arg: 1, scope: !4374, file: !1776, line: 135, type: !4331)
!4374 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1776, file: !1776, line: 135, type: !4329, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4375)
!4375 = !{!4373}
!4376 = !DILocation(line: 0, scope: !4374, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 58, column: 27, scope: !4328)
!4378 = !DILocation(line: 137, column: 10, scope: !4374, inlinedAt: !4377)
!4379 = !{!1819, !971, i64 0}
!4380 = !DILocation(line: 58, column: 43, scope: !4328)
!4381 = !DILocation(line: 59, column: 29, scope: !4328)
!4382 = !DILocation(line: 59, column: 45, scope: !4328)
!4383 = !DILocation(line: 69, column: 17, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4328, file: !870, line: 69, column: 7)
!4385 = !DILocation(line: 57, column: 50, scope: !4328)
!4386 = !DILocation(line: 69, column: 33, scope: !4384)
!4387 = !DILocation(line: 69, column: 53, scope: !4384)
!4388 = !DILocation(line: 69, column: 59, scope: !4384)
!4389 = !DILocation(line: 69, column: 7, scope: !4328)
!4390 = !DILocation(line: 71, column: 11, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4384, file: !870, line: 70, column: 5)
!4392 = !DILocation(line: 72, column: 9, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4391, file: !870, line: 71, column: 11)
!4394 = !DILocation(line: 72, column: 15, scope: !4393)
!4395 = !DILocation(line: 77, column: 1, scope: !4328)
!4396 = !DISubprogram(name: "__fpending", scope: !4397, file: !4397, line: 75, type: !4398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4397 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!138, !4331}
!4400 = distinct !DISubprogram(name: "rpl_fclose", scope: !872, file: !872, line: 58, type: !4401, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4437)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!85, !4403}
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4405, file: !212, line: 51, baseType: !85, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4405, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4405, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4405, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4405, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4405, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4405, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4405, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4405, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4405, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4405, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4405, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4405, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4405, file: !212, line: 70, baseType: !4421, size: 64, offset: 832)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4405, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4405, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4405, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4405, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4405, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4405, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4405, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4405, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4405, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4405, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4405, file: !212, line: 93, baseType: !4421, size: 64, offset: 1344)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4405, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4405, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4405, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4405, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4437 = !{!4438, !4439, !4440, !4441}
!4438 = !DILocalVariable(name: "fp", arg: 1, scope: !4400, file: !872, line: 58, type: !4403)
!4439 = !DILocalVariable(name: "saved_errno", scope: !4400, file: !872, line: 60, type: !85)
!4440 = !DILocalVariable(name: "fd", scope: !4400, file: !872, line: 63, type: !85)
!4441 = !DILocalVariable(name: "result", scope: !4400, file: !872, line: 74, type: !85)
!4442 = !DILocation(line: 0, scope: !4400)
!4443 = !DILocation(line: 63, column: 12, scope: !4400)
!4444 = !DILocation(line: 64, column: 10, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4400, file: !872, line: 64, column: 7)
!4446 = !DILocation(line: 64, column: 7, scope: !4400)
!4447 = !DILocation(line: 65, column: 12, scope: !4445)
!4448 = !DILocation(line: 65, column: 5, scope: !4445)
!4449 = !DILocation(line: 70, column: 9, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4400, file: !872, line: 70, column: 7)
!4451 = !DILocation(line: 70, column: 23, scope: !4450)
!4452 = !DILocation(line: 70, column: 33, scope: !4450)
!4453 = !DILocation(line: 70, column: 26, scope: !4450)
!4454 = !DILocation(line: 70, column: 59, scope: !4450)
!4455 = !DILocation(line: 71, column: 7, scope: !4450)
!4456 = !DILocation(line: 71, column: 10, scope: !4450)
!4457 = !DILocation(line: 70, column: 7, scope: !4400)
!4458 = !DILocation(line: 100, column: 12, scope: !4400)
!4459 = !DILocation(line: 105, column: 7, scope: !4400)
!4460 = !DILocation(line: 72, column: 19, scope: !4450)
!4461 = !DILocation(line: 105, column: 19, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4400, file: !872, line: 105, column: 7)
!4463 = !DILocation(line: 107, column: 13, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4462, file: !872, line: 106, column: 5)
!4465 = !DILocation(line: 109, column: 5, scope: !4464)
!4466 = !DILocation(line: 112, column: 1, scope: !4400)
!4467 = !DISubprogram(name: "fclose", scope: !500, file: !500, line: 178, type: !4401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4468 = !DISubprogram(name: "__freading", scope: !4397, file: !4397, line: 51, type: !4401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4469 = !DISubprogram(name: "lseek", scope: !1435, file: !1435, line: 339, type: !4470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!234, !85, !234, !85}
!4472 = distinct !DISubprogram(name: "rpl_fflush", scope: !874, file: !874, line: 130, type: !4473, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4509)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!85, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4477)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4477, file: !212, line: 51, baseType: !85, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4477, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4477, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4477, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4477, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4477, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4477, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4477, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4477, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4477, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4477, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4477, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4477, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4477, file: !212, line: 70, baseType: !4493, size: 64, offset: 832)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4477, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4477, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4477, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4477, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4477, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4477, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4477, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4477, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4477, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4477, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4477, file: !212, line: 93, baseType: !4493, size: 64, offset: 1344)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4477, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4477, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4477, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4477, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4509 = !{!4510}
!4510 = !DILocalVariable(name: "stream", arg: 1, scope: !4472, file: !874, line: 130, type: !4475)
!4511 = !DILocation(line: 0, scope: !4472)
!4512 = !DILocation(line: 151, column: 14, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4472, file: !874, line: 151, column: 7)
!4514 = !DILocation(line: 151, column: 22, scope: !4513)
!4515 = !DILocation(line: 151, column: 27, scope: !4513)
!4516 = !DILocation(line: 151, column: 7, scope: !4472)
!4517 = !DILocation(line: 152, column: 12, scope: !4513)
!4518 = !DILocation(line: 152, column: 5, scope: !4513)
!4519 = !DILocalVariable(name: "fp", arg: 1, scope: !4520, file: !874, line: 42, type: !4475)
!4520 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !874, file: !874, line: 42, type: !4521, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4523)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !4475}
!4523 = !{!4519}
!4524 = !DILocation(line: 0, scope: !4520, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 157, column: 3, scope: !4472)
!4526 = !DILocation(line: 44, column: 12, scope: !4527, inlinedAt: !4525)
!4527 = distinct !DILexicalBlock(scope: !4520, file: !874, line: 44, column: 7)
!4528 = !DILocation(line: 44, column: 19, scope: !4527, inlinedAt: !4525)
!4529 = !DILocation(line: 44, column: 7, scope: !4520, inlinedAt: !4525)
!4530 = !DILocation(line: 46, column: 5, scope: !4527, inlinedAt: !4525)
!4531 = !DILocation(line: 159, column: 10, scope: !4472)
!4532 = !DILocation(line: 159, column: 3, scope: !4472)
!4533 = !DILocation(line: 236, column: 1, scope: !4472)
!4534 = !DISubprogram(name: "fflush", scope: !500, file: !500, line: 230, type: !4473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4535 = distinct !DISubprogram(name: "rpl_fseeko", scope: !876, file: !876, line: 28, type: !4536, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4572)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!85, !4538, !2203, !85}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4540)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4540, file: !212, line: 51, baseType: !85, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4540, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4540, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4540, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4540, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4540, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4540, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4540, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4540, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4540, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4540, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4540, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4540, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4540, file: !212, line: 70, baseType: !4556, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4540, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4540, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4540, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4540, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4540, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4540, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4540, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4540, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4540, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4540, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4540, file: !212, line: 93, baseType: !4556, size: 64, offset: 1344)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4540, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4540, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4540, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4540, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4572 = !{!4573, !4574, !4575, !4576}
!4573 = !DILocalVariable(name: "fp", arg: 1, scope: !4535, file: !876, line: 28, type: !4538)
!4574 = !DILocalVariable(name: "offset", arg: 2, scope: !4535, file: !876, line: 28, type: !2203)
!4575 = !DILocalVariable(name: "whence", arg: 3, scope: !4535, file: !876, line: 28, type: !85)
!4576 = !DILocalVariable(name: "pos", scope: !4577, file: !876, line: 123, type: !2203)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !876, line: 119, column: 5)
!4578 = distinct !DILexicalBlock(scope: !4535, file: !876, line: 55, column: 7)
!4579 = !DILocation(line: 0, scope: !4535)
!4580 = !DILocation(line: 55, column: 12, scope: !4578)
!4581 = !{!1819, !906, i64 16}
!4582 = !DILocation(line: 55, column: 33, scope: !4578)
!4583 = !{!1819, !906, i64 8}
!4584 = !DILocation(line: 55, column: 25, scope: !4578)
!4585 = !DILocation(line: 56, column: 7, scope: !4578)
!4586 = !DILocation(line: 56, column: 15, scope: !4578)
!4587 = !DILocation(line: 56, column: 37, scope: !4578)
!4588 = !{!1819, !906, i64 32}
!4589 = !DILocation(line: 56, column: 29, scope: !4578)
!4590 = !DILocation(line: 57, column: 7, scope: !4578)
!4591 = !DILocation(line: 57, column: 15, scope: !4578)
!4592 = !{!1819, !906, i64 72}
!4593 = !DILocation(line: 57, column: 29, scope: !4578)
!4594 = !DILocation(line: 55, column: 7, scope: !4535)
!4595 = !DILocation(line: 123, column: 26, scope: !4577)
!4596 = !DILocation(line: 123, column: 19, scope: !4577)
!4597 = !DILocation(line: 0, scope: !4577)
!4598 = !DILocation(line: 124, column: 15, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4577, file: !876, line: 124, column: 11)
!4600 = !DILocation(line: 124, column: 11, scope: !4577)
!4601 = !DILocation(line: 135, column: 19, scope: !4577)
!4602 = !DILocation(line: 136, column: 12, scope: !4577)
!4603 = !DILocation(line: 136, column: 20, scope: !4577)
!4604 = !{!1819, !1572, i64 144}
!4605 = !DILocation(line: 167, column: 7, scope: !4577)
!4606 = !DILocation(line: 169, column: 10, scope: !4535)
!4607 = !DILocation(line: 169, column: 3, scope: !4535)
!4608 = !DILocation(line: 170, column: 1, scope: !4535)
!4609 = !DISubprogram(name: "fseeko", scope: !500, file: !500, line: 736, type: !4610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!85, !4538, !234, !85}
!4612 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !774, file: !774, line: 100, type: !4613, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4616)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!138, !2422, !141, !138, !4615}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!4616 = !{!4617, !4618, !4619, !4620, !4621}
!4617 = !DILocalVariable(name: "pwc", arg: 1, scope: !4612, file: !774, line: 100, type: !2422)
!4618 = !DILocalVariable(name: "s", arg: 2, scope: !4612, file: !774, line: 100, type: !141)
!4619 = !DILocalVariable(name: "n", arg: 3, scope: !4612, file: !774, line: 100, type: !138)
!4620 = !DILocalVariable(name: "ps", arg: 4, scope: !4612, file: !774, line: 100, type: !4615)
!4621 = !DILocalVariable(name: "ret", scope: !4612, file: !774, line: 130, type: !138)
!4622 = !DILocation(line: 0, scope: !4612)
!4623 = !DILocation(line: 105, column: 9, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4612, file: !774, line: 105, column: 7)
!4625 = !DILocation(line: 105, column: 7, scope: !4612)
!4626 = !DILocation(line: 117, column: 10, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4612, file: !774, line: 117, column: 7)
!4628 = !DILocation(line: 117, column: 7, scope: !4612)
!4629 = !DILocation(line: 130, column: 16, scope: !4612)
!4630 = !DILocation(line: 135, column: 11, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4612, file: !774, line: 135, column: 7)
!4632 = !DILocation(line: 135, column: 25, scope: !4631)
!4633 = !DILocation(line: 135, column: 30, scope: !4631)
!4634 = !DILocation(line: 135, column: 7, scope: !4612)
!4635 = !DILocalVariable(name: "ps", arg: 1, scope: !4636, file: !2395, line: 1135, type: !4615)
!4636 = distinct !DISubprogram(name: "mbszero", scope: !2395, file: !2395, line: 1135, type: !4637, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !4615}
!4639 = !{!4635}
!4640 = !DILocation(line: 0, scope: !4636, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 137, column: 5, scope: !4631)
!4642 = !DILocalVariable(name: "__dest", arg: 1, scope: !4643, file: !2404, line: 57, type: !131)
!4643 = distinct !DISubprogram(name: "memset", scope: !2404, file: !2404, line: 57, type: !2405, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !4644)
!4644 = !{!4642, !4645, !4646}
!4645 = !DILocalVariable(name: "__ch", arg: 2, scope: !4643, file: !2404, line: 57, type: !85)
!4646 = !DILocalVariable(name: "__len", arg: 3, scope: !4643, file: !2404, line: 57, type: !138)
!4647 = !DILocation(line: 0, scope: !4643, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 1137, column: 3, scope: !4636, inlinedAt: !4641)
!4649 = !DILocation(line: 59, column: 10, scope: !4643, inlinedAt: !4648)
!4650 = !DILocation(line: 137, column: 5, scope: !4631)
!4651 = !DILocation(line: 138, column: 11, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4612, file: !774, line: 138, column: 7)
!4653 = !DILocation(line: 138, column: 7, scope: !4612)
!4654 = !DILocation(line: 139, column: 5, scope: !4652)
!4655 = !DILocation(line: 143, column: 26, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4612, file: !774, line: 143, column: 7)
!4657 = !DILocation(line: 143, column: 41, scope: !4656)
!4658 = !DILocation(line: 143, column: 7, scope: !4612)
!4659 = !DILocation(line: 145, column: 15, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !774, line: 145, column: 11)
!4661 = distinct !DILexicalBlock(scope: !4656, file: !774, line: 144, column: 5)
!4662 = !DILocation(line: 145, column: 11, scope: !4661)
!4663 = !DILocation(line: 146, column: 32, scope: !4660)
!4664 = !DILocation(line: 146, column: 16, scope: !4660)
!4665 = !DILocation(line: 146, column: 14, scope: !4660)
!4666 = !DILocation(line: 146, column: 9, scope: !4660)
!4667 = !DILocation(line: 286, column: 1, scope: !4612)
!4668 = !DISubprogram(name: "mbsinit", scope: !4669, file: !4669, line: 293, type: !4670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !955)
!4669 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!85, !4672}
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!4674 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !878, file: !878, line: 27, type: !3887, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4675)
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DILocalVariable(name: "ptr", arg: 1, scope: !4674, file: !878, line: 27, type: !131)
!4677 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4674, file: !878, line: 27, type: !138)
!4678 = !DILocalVariable(name: "size", arg: 3, scope: !4674, file: !878, line: 27, type: !138)
!4679 = !DILocalVariable(name: "nbytes", scope: !4674, file: !878, line: 29, type: !138)
!4680 = !DILocation(line: 0, scope: !4674)
!4681 = !DILocation(line: 30, column: 7, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4674, file: !878, line: 30, column: 7)
!4683 = !DILocalVariable(name: "ptr", arg: 1, scope: !4684, file: !3979, line: 2057, type: !131)
!4684 = distinct !DISubprogram(name: "rpl_realloc", scope: !3979, file: !3979, line: 2057, type: !3971, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4685)
!4685 = !{!4683, !4686}
!4686 = !DILocalVariable(name: "size", arg: 2, scope: !4684, file: !3979, line: 2057, type: !138)
!4687 = !DILocation(line: 0, scope: !4684, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 37, column: 10, scope: !4674)
!4689 = !DILocation(line: 2059, column: 24, scope: !4684, inlinedAt: !4688)
!4690 = !DILocation(line: 2059, column: 10, scope: !4684, inlinedAt: !4688)
!4691 = !DILocation(line: 37, column: 3, scope: !4674)
!4692 = !DILocation(line: 32, column: 7, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4682, file: !878, line: 31, column: 5)
!4694 = !DILocation(line: 32, column: 13, scope: !4693)
!4695 = !DILocation(line: 33, column: 7, scope: !4693)
!4696 = !DILocation(line: 38, column: 1, scope: !4674)
!4697 = distinct !DISubprogram(name: "dup_safer", scope: !881, file: !881, line: 31, type: !1436, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !4698)
!4698 = !{!4699}
!4699 = !DILocalVariable(name: "fd", arg: 1, scope: !4697, file: !881, line: 31, type: !85)
!4700 = !DILocation(line: 0, scope: !4697)
!4701 = !DILocation(line: 33, column: 10, scope: !4697)
!4702 = !DILocation(line: 33, column: 3, scope: !4697)
!4703 = distinct !DISubprogram(name: "rpl_fcntl", scope: !793, file: !793, line: 202, type: !2135, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4704)
!4704 = !{!4705, !4706, !4707, !4718, !4719, !4722, !4724, !4728}
!4705 = !DILocalVariable(name: "fd", arg: 1, scope: !4703, file: !793, line: 202, type: !85)
!4706 = !DILocalVariable(name: "action", arg: 2, scope: !4703, file: !793, line: 202, type: !85)
!4707 = !DILocalVariable(name: "arg", scope: !4703, file: !793, line: 208, type: !4708)
!4708 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !502, line: 22, baseType: !4709)
!4709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4710, baseType: !4711)
!4710 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4712)
!4712 = !{!4713, !4714, !4715, !4716, !4717}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4711, file: !4710, line: 208, baseType: !131, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4711, file: !4710, line: 208, baseType: !131, size: 64, offset: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4711, file: !4710, line: 208, baseType: !131, size: 64, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4711, file: !4710, line: 208, baseType: !85, size: 32, offset: 192)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4711, file: !4710, line: 208, baseType: !85, size: 32, offset: 224)
!4718 = !DILocalVariable(name: "result", scope: !4703, file: !793, line: 211, type: !85)
!4719 = !DILocalVariable(name: "target", scope: !4720, file: !793, line: 216, type: !85)
!4720 = distinct !DILexicalBlock(scope: !4721, file: !793, line: 215, column: 7)
!4721 = distinct !DILexicalBlock(scope: !4703, file: !793, line: 213, column: 5)
!4722 = !DILocalVariable(name: "target", scope: !4723, file: !793, line: 223, type: !85)
!4723 = distinct !DILexicalBlock(scope: !4721, file: !793, line: 222, column: 7)
!4724 = !DILocalVariable(name: "x", scope: !4725, file: !793, line: 418, type: !85)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !793, line: 417, column: 13)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !793, line: 261, column: 11)
!4727 = distinct !DILexicalBlock(scope: !4721, file: !793, line: 258, column: 7)
!4728 = !DILocalVariable(name: "p", scope: !4729, file: !793, line: 426, type: !131)
!4729 = distinct !DILexicalBlock(scope: !4726, file: !793, line: 425, column: 13)
!4730 = !DILocation(line: 0, scope: !4703)
!4731 = !DILocation(line: 208, column: 3, scope: !4703)
!4732 = !DILocation(line: 208, column: 11, scope: !4703)
!4733 = !DILocation(line: 209, column: 3, scope: !4703)
!4734 = !DILocation(line: 212, column: 3, scope: !4703)
!4735 = !DILocation(line: 216, column: 22, scope: !4720)
!4736 = !DILocation(line: 0, scope: !4720)
!4737 = !DILocalVariable(name: "fd", arg: 1, scope: !4738, file: !793, line: 444, type: !85)
!4738 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !793, file: !793, line: 444, type: !794, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4739)
!4739 = !{!4737, !4740, !4741}
!4740 = !DILocalVariable(name: "target", arg: 2, scope: !4738, file: !793, line: 444, type: !85)
!4741 = !DILocalVariable(name: "result", scope: !4738, file: !793, line: 446, type: !85)
!4742 = !DILocation(line: 0, scope: !4738, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 217, column: 18, scope: !4720)
!4744 = !DILocation(line: 479, column: 12, scope: !4738, inlinedAt: !4743)
!4745 = !DILocation(line: 223, column: 22, scope: !4723)
!4746 = !DILocation(line: 0, scope: !4723)
!4747 = !DILocation(line: 0, scope: !792, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 224, column: 18, scope: !4723)
!4749 = !DILocation(line: 507, column: 12, scope: !4750, inlinedAt: !4748)
!4750 = distinct !DILexicalBlock(scope: !792, file: !793, line: 507, column: 7)
!4751 = !DILocation(line: 507, column: 9, scope: !4750, inlinedAt: !4748)
!4752 = !DILocation(line: 507, column: 7, scope: !792, inlinedAt: !4748)
!4753 = !DILocation(line: 509, column: 16, scope: !4754, inlinedAt: !4748)
!4754 = distinct !DILexicalBlock(scope: !4750, file: !793, line: 508, column: 5)
!4755 = !DILocation(line: 510, column: 13, scope: !4756, inlinedAt: !4748)
!4756 = distinct !DILexicalBlock(scope: !4754, file: !793, line: 510, column: 11)
!4757 = !DILocation(line: 510, column: 23, scope: !4756, inlinedAt: !4748)
!4758 = !DILocation(line: 510, column: 26, scope: !4756, inlinedAt: !4748)
!4759 = !DILocation(line: 510, column: 32, scope: !4756, inlinedAt: !4748)
!4760 = !DILocation(line: 510, column: 11, scope: !4754, inlinedAt: !4748)
!4761 = !DILocation(line: 512, column: 30, scope: !4762, inlinedAt: !4748)
!4762 = distinct !DILexicalBlock(scope: !4756, file: !793, line: 511, column: 9)
!4763 = !DILocation(line: 528, column: 19, scope: !804, inlinedAt: !4748)
!4764 = !DILocation(line: 0, scope: !4738, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 520, column: 20, scope: !4766, inlinedAt: !4748)
!4766 = distinct !DILexicalBlock(scope: !4756, file: !793, line: 519, column: 9)
!4767 = !DILocation(line: 479, column: 12, scope: !4738, inlinedAt: !4765)
!4768 = !DILocation(line: 521, column: 22, scope: !4769, inlinedAt: !4748)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !793, line: 521, column: 15)
!4770 = !DILocation(line: 521, column: 15, scope: !4766, inlinedAt: !4748)
!4771 = !DILocation(line: 522, column: 32, scope: !4769, inlinedAt: !4748)
!4772 = !DILocation(line: 522, column: 13, scope: !4769, inlinedAt: !4748)
!4773 = !DILocation(line: 0, scope: !4738, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 527, column: 14, scope: !4750, inlinedAt: !4748)
!4775 = !DILocation(line: 479, column: 12, scope: !4738, inlinedAt: !4774)
!4776 = !DILocation(line: 0, scope: !4750, inlinedAt: !4748)
!4777 = !DILocation(line: 528, column: 9, scope: !804, inlinedAt: !4748)
!4778 = !DILocation(line: 530, column: 19, scope: !803, inlinedAt: !4748)
!4779 = !DILocation(line: 0, scope: !803, inlinedAt: !4748)
!4780 = !DILocation(line: 531, column: 17, scope: !807, inlinedAt: !4748)
!4781 = !DILocation(line: 531, column: 21, scope: !807, inlinedAt: !4748)
!4782 = !DILocation(line: 531, column: 54, scope: !807, inlinedAt: !4748)
!4783 = !DILocation(line: 531, column: 24, scope: !807, inlinedAt: !4748)
!4784 = !DILocation(line: 531, column: 68, scope: !807, inlinedAt: !4748)
!4785 = !DILocation(line: 531, column: 11, scope: !803, inlinedAt: !4748)
!4786 = !DILocation(line: 533, column: 29, scope: !806, inlinedAt: !4748)
!4787 = !DILocation(line: 0, scope: !806, inlinedAt: !4748)
!4788 = !DILocation(line: 534, column: 11, scope: !806, inlinedAt: !4748)
!4789 = !DILocation(line: 535, column: 17, scope: !806, inlinedAt: !4748)
!4790 = !DILocation(line: 537, column: 9, scope: !806, inlinedAt: !4748)
!4791 = !DILocation(line: 329, column: 22, scope: !4726)
!4792 = !DILocation(line: 330, column: 13, scope: !4726)
!4793 = !DILocation(line: 418, column: 23, scope: !4725)
!4794 = !DILocation(line: 0, scope: !4725)
!4795 = !DILocation(line: 419, column: 24, scope: !4725)
!4796 = !DILocation(line: 421, column: 13, scope: !4726)
!4797 = !DILocation(line: 426, column: 25, scope: !4729)
!4798 = !DILocation(line: 0, scope: !4729)
!4799 = !DILocation(line: 427, column: 24, scope: !4729)
!4800 = !DILocation(line: 429, column: 13, scope: !4726)
!4801 = !DILocation(line: 0, scope: !4721)
!4802 = !DILocation(line: 438, column: 3, scope: !4703)
!4803 = !DILocation(line: 441, column: 1, scope: !4703)
!4804 = !DILocation(line: 440, column: 3, scope: !4703)
!4805 = distinct !DISubprogram(name: "hard_locale", scope: !810, file: !810, line: 28, type: !1522, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4806)
!4806 = !{!4807, !4808}
!4807 = !DILocalVariable(name: "category", arg: 1, scope: !4805, file: !810, line: 28, type: !85)
!4808 = !DILocalVariable(name: "locale", scope: !4805, file: !810, line: 30, type: !4809)
!4809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4810)
!4810 = !{!4811}
!4811 = !DISubrange(count: 257)
!4812 = !DILocation(line: 0, scope: !4805)
!4813 = !DILocation(line: 30, column: 3, scope: !4805)
!4814 = !DILocation(line: 30, column: 8, scope: !4805)
!4815 = !DILocation(line: 32, column: 7, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4805, file: !810, line: 32, column: 7)
!4817 = !DILocation(line: 32, column: 7, scope: !4805)
!4818 = !DILocalVariable(name: "__s1", arg: 1, scope: !4819, file: !983, line: 1359, type: !141)
!4819 = distinct !DISubprogram(name: "streq", scope: !983, file: !983, line: 1359, type: !984, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4820)
!4820 = !{!4818, !4821}
!4821 = !DILocalVariable(name: "__s2", arg: 2, scope: !4819, file: !983, line: 1359, type: !141)
!4822 = !DILocation(line: 0, scope: !4819, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 35, column: 9, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4805, file: !810, line: 35, column: 7)
!4825 = !DILocation(line: 1361, column: 11, scope: !4819, inlinedAt: !4823)
!4826 = !DILocation(line: 1361, column: 10, scope: !4819, inlinedAt: !4823)
!4827 = !DILocation(line: 35, column: 29, scope: !4824)
!4828 = !DILocation(line: 0, scope: !4819, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 35, column: 32, scope: !4824)
!4830 = !DILocation(line: 1361, column: 11, scope: !4819, inlinedAt: !4829)
!4831 = !DILocation(line: 1361, column: 10, scope: !4819, inlinedAt: !4829)
!4832 = !DILocation(line: 35, column: 7, scope: !4805)
!4833 = !DILocation(line: 46, column: 3, scope: !4805)
!4834 = !DILocation(line: 47, column: 1, scope: !4805)
!4835 = distinct !DISubprogram(name: "setlocale_null_r", scope: !885, file: !885, line: 154, type: !4836, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4838)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!85, !85, !130, !138}
!4838 = !{!4839, !4840, !4841}
!4839 = !DILocalVariable(name: "category", arg: 1, scope: !4835, file: !885, line: 154, type: !85)
!4840 = !DILocalVariable(name: "buf", arg: 2, scope: !4835, file: !885, line: 154, type: !130)
!4841 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4835, file: !885, line: 154, type: !138)
!4842 = !DILocation(line: 0, scope: !4835)
!4843 = !DILocation(line: 159, column: 10, scope: !4835)
!4844 = !DILocation(line: 159, column: 3, scope: !4835)
!4845 = distinct !DISubprogram(name: "setlocale_null", scope: !885, file: !885, line: 186, type: !4846, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!141, !85}
!4848 = !{!4849}
!4849 = !DILocalVariable(name: "category", arg: 1, scope: !4845, file: !885, line: 186, type: !85)
!4850 = !DILocation(line: 0, scope: !4845)
!4851 = !DILocation(line: 189, column: 10, scope: !4845)
!4852 = !DILocation(line: 189, column: 3, scope: !4845)
!4853 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !887, file: !887, line: 35, type: !4846, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4854)
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "category", arg: 1, scope: !4853, file: !887, line: 35, type: !85)
!4856 = !DILocalVariable(name: "result", scope: !4853, file: !887, line: 37, type: !141)
!4857 = !DILocation(line: 0, scope: !4853)
!4858 = !DILocation(line: 37, column: 24, scope: !4853)
!4859 = !DILocation(line: 62, column: 3, scope: !4853)
!4860 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !887, file: !887, line: 66, type: !4836, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4861)
!4861 = !{!4862, !4863, !4864, !4865, !4866}
!4862 = !DILocalVariable(name: "category", arg: 1, scope: !4860, file: !887, line: 66, type: !85)
!4863 = !DILocalVariable(name: "buf", arg: 2, scope: !4860, file: !887, line: 66, type: !130)
!4864 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4860, file: !887, line: 66, type: !138)
!4865 = !DILocalVariable(name: "result", scope: !4860, file: !887, line: 111, type: !141)
!4866 = !DILocalVariable(name: "length", scope: !4867, file: !887, line: 125, type: !138)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !887, line: 124, column: 5)
!4868 = distinct !DILexicalBlock(scope: !4860, file: !887, line: 113, column: 7)
!4869 = !DILocation(line: 0, scope: !4860)
!4870 = !DILocation(line: 0, scope: !4853, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 111, column: 24, scope: !4860)
!4872 = !DILocation(line: 37, column: 24, scope: !4853, inlinedAt: !4871)
!4873 = !DILocation(line: 113, column: 14, scope: !4868)
!4874 = !DILocation(line: 113, column: 7, scope: !4860)
!4875 = !DILocation(line: 116, column: 19, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !887, line: 116, column: 11)
!4877 = distinct !DILexicalBlock(scope: !4868, file: !887, line: 114, column: 5)
!4878 = !DILocation(line: 116, column: 11, scope: !4877)
!4879 = !DILocation(line: 120, column: 16, scope: !4876)
!4880 = !DILocation(line: 120, column: 9, scope: !4876)
!4881 = !DILocation(line: 125, column: 23, scope: !4867)
!4882 = !DILocation(line: 0, scope: !4867)
!4883 = !DILocation(line: 126, column: 18, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4867, file: !887, line: 126, column: 11)
!4885 = !DILocation(line: 126, column: 11, scope: !4867)
!4886 = !DILocation(line: 128, column: 39, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4884, file: !887, line: 127, column: 9)
!4888 = !DILocalVariable(name: "__dest", arg: 1, scope: !4889, file: !2404, line: 26, type: !4247)
!4889 = distinct !DISubprogram(name: "memcpy", scope: !2404, file: !2404, line: 26, type: !4245, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !886, retainedNodes: !4890)
!4890 = !{!4888, !4891, !4892}
!4891 = !DILocalVariable(name: "__src", arg: 2, scope: !4889, file: !2404, line: 26, type: !1114)
!4892 = !DILocalVariable(name: "__len", arg: 3, scope: !4889, file: !2404, line: 26, type: !138)
!4893 = !DILocation(line: 0, scope: !4889, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 128, column: 11, scope: !4887)
!4895 = !DILocation(line: 29, column: 10, scope: !4889, inlinedAt: !4894)
!4896 = !DILocation(line: 129, column: 11, scope: !4887)
!4897 = !DILocation(line: 133, column: 23, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !887, line: 133, column: 15)
!4899 = distinct !DILexicalBlock(scope: !4884, file: !887, line: 132, column: 9)
!4900 = !DILocation(line: 133, column: 15, scope: !4899)
!4901 = !DILocation(line: 138, column: 44, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4898, file: !887, line: 134, column: 13)
!4903 = !DILocation(line: 0, scope: !4889, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 138, column: 15, scope: !4902)
!4905 = !DILocation(line: 29, column: 10, scope: !4889, inlinedAt: !4904)
!4906 = !DILocation(line: 139, column: 15, scope: !4902)
!4907 = !DILocation(line: 139, column: 32, scope: !4902)
!4908 = !DILocation(line: 140, column: 13, scope: !4902)
!4909 = !DILocation(line: 0, scope: !4868)
!4910 = !DILocation(line: 145, column: 1, scope: !4860)
