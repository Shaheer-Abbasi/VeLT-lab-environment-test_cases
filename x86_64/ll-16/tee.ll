; ModuleID = 'src/tee.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.pollfd = type { i32, i16, i16 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@long_options = internal constant [6 x %struct.option] [%struct.option { ptr @.str.57, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.59, i32 2, ptr null, i32 112 }, %struct.option { ptr @.str.60, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.61, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !71
@append = internal unnamed_addr global i1 false, align 1, !dbg !417
@ignore_interrupts = internal unnamed_addr global i1 false, align 1, !dbg !418
@optarg = external local_unnamed_addr global ptr, align 8
@output_error_types = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !382
@.str.15 = private unnamed_addr constant [15 x i8] c"--output-error\00", align 1, !dbg !145
@output_error_args = internal constant [5 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr null], align 16, !dbg !394
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !484
@.str.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !476
@.str.1.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !478
@.str.2.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !480
@.str.3.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !482
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !486
@stderr = external local_unnamed_addr global ptr, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !492
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !524
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !494
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !514
@.str.1.87 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !516
@.str.2.89 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !518
@.str.3.88 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !520
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !522
@.str.4.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !526
@.str.5.83 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !528
@.str.6.84 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !530
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !532
@.str.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !538
@.str.1.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !540
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !542
@.str.108 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !573
@.str.1.109 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !576
@.str.2.110 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !578
@.str.3.111 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !580
@.str.4.112 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !582
@.str.5.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !584
@.str.6.114 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !586
@.str.7.115 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !588
@.str.8.116 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !590
@.str.9.117 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !592
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.108, ptr @.str.1.109, ptr @.str.2.110, ptr @.str.3.111, ptr @.str.4.112, ptr @.str.5.113, ptr @.str.6.114, ptr @.str.7.115, ptr @.str.8.116, ptr @.str.9.117, ptr null], align 16, !dbg !594
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !605
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !619
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !657
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !664
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !621
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !666
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !609
@.str.10.120 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !626
@.str.11.118 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !628
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !630
@.str.13.119 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !632
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !634
@.str.134 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !669
@.str.1.135 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !672
@.str.2.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !674
@.str.3.137 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !676
@.str.4.138 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !678
@.str.5.139 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !680
@.str.6.140 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !685
@.str.7.141 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !690
@.str.8.142 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !692
@.str.9.143 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !697
@.str.10.144 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !702
@.str.11.145 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !707
@.str.12.146 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !712
@.str.13.147 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !714
@.str.14.148 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !717
@.str.15.149 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !722
@.str.16.150 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !727
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.155 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !732
@.str.18.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !734
@.str.19.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !736
@.str.20.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !738
@.str.21.159 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !740
@.str.22.160 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !742
@.str.23.161 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !744
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !746
@exit_failure = dso_local global i32 1, align 4, !dbg !754
@.str.176 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !760
@.str.1.174 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !763
@.str.2.175 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !765
@.str.187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !767
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !770
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !785
@.str.1.196 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !803

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !892, metadata !DIExpression()), !dbg !893
  %2 = icmp eq i32 %0, 0, !dbg !894
  br i1 %2, label %8, label %3, !dbg !896

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !897, !tbaa !899
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !897
  %6 = load ptr, ptr @program_name, align 8, !dbg !897, !tbaa !899
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !897
  br label %38, !dbg !897

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !903
  %10 = load ptr, ptr @program_name, align 8, !dbg !903, !tbaa !899
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !903
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !905
  %13 = load ptr, ptr @stdout, align 8, !dbg !905, !tbaa !899
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !905
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !906
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !906
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !907
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !907
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !908
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !908
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !909
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !909
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !910
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !910
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !911
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !911
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !912
  %22 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !899
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !913, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr poison, metadata !925, metadata !DIExpression()), !dbg !930
  tail call void @emit_bug_reporting_address() #40, !dbg !932
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !933
  call void @llvm.dbg.value(metadata ptr %24, metadata !928, metadata !DIExpression()), !dbg !930
  %25 = icmp eq ptr %24, null, !dbg !934
  br i1 %25, label %33, label %26, !dbg !936

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #41, !dbg !937
  %28 = icmp eq i32 %27, 0, !dbg !937
  br i1 %28, label %33, label %29, !dbg !938

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #40, !dbg !939
  %31 = load ptr, ptr @stdout, align 8, !dbg !939, !tbaa !899
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !939
  br label %33, !dbg !941

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !925, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !930
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #40, !dbg !942
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #40, !dbg !942
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #40, !dbg !943
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #40, !dbg !943
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !944
  unreachable, !dbg !944
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !945 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !950 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !956 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !959 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !963
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !964, !tbaa !965
  %3 = icmp eq i32 %2, -1, !dbg !967
  br i1 %3, label %4, label %16, !dbg !968

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #40, !dbg !969
  call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !970
  %6 = icmp eq ptr %5, null, !dbg !971
  br i1 %6, label %14, label %7, !dbg !972

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !973, !tbaa !974
  %9 = icmp eq i8 %8, 0, !dbg !973
  br i1 %9, label %14, label %10, !dbg !975

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !976, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !982, metadata !DIExpression()), !dbg !983
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #41, !dbg !985
  %12 = icmp eq i32 %11, 0, !dbg !986
  %13 = zext i1 %12 to i32, !dbg !975
  br label %14, !dbg !975

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !987, !tbaa !965
  br label %16, !dbg !988

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !989
  %18 = icmp eq i32 %17, 0, !dbg !989
  br i1 %18, label %22, label %19, !dbg !991

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !899
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !992
  br label %128, !dbg !994

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !963
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #41, !dbg !995
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !996
  call void @llvm.dbg.value(metadata ptr %24, metadata !196, metadata !DIExpression()), !dbg !963
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !997
  call void @llvm.dbg.value(metadata ptr %25, metadata !197, metadata !DIExpression()), !dbg !963
  %26 = icmp eq ptr %25, null, !dbg !998
  br i1 %26, label %58, label %27, !dbg !999

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1000
  br i1 %28, label %58, label %29, !dbg !1001

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !198, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !1002
  %30 = icmp ult ptr %24, %25, !dbg !1003
  br i1 %30, label %31, label %52, !dbg !1004

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !963
  %33 = load ptr, ptr %32, align 8, !tbaa !899
  br label %34, !dbg !1004

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !198, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i64 %36, metadata !202, metadata !DIExpression()), !dbg !1002
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %37, metadata !198, metadata !DIExpression()), !dbg !1002
  %38 = load i8, ptr %35, align 1, !dbg !1005, !tbaa !974
  %39 = sext i8 %38 to i64, !dbg !1005
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1005
  %41 = load i16, ptr %40, align 2, !dbg !1005, !tbaa !1006
  %42 = freeze i16 %41, !dbg !1008
  %43 = lshr i16 %42, 13, !dbg !1008
  %44 = and i16 %43, 1, !dbg !1008
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %46, metadata !202, metadata !DIExpression()), !dbg !1002
  %47 = icmp ult ptr %37, %25, !dbg !1003
  %48 = icmp ult i64 %46, 2, !dbg !1010
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1010
  br i1 %49, label %34, label %50, !dbg !1004, !llvm.loop !1011

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1013
  br i1 %51, label %52, label %54, !dbg !1015

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1015

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1015
  call void @llvm.dbg.value(metadata i8 %57, metadata !195, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr %56, metadata !197, metadata !DIExpression()), !dbg !963
  br label %58, !dbg !1016

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !963
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !963
  call void @llvm.dbg.value(metadata i8 %60, metadata !195, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr %59, metadata !197, metadata !DIExpression()), !dbg !963
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.25) #41, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %61, metadata !203, metadata !DIExpression()), !dbg !963
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1018
  call void @llvm.dbg.value(metadata ptr %62, metadata !204, metadata !DIExpression()), !dbg !963
  br label %63, !dbg !1019

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !963
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !963
  call void @llvm.dbg.value(metadata i8 %65, metadata !195, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr %64, metadata !204, metadata !DIExpression()), !dbg !963
  %66 = load i8, ptr %64, align 1, !dbg !1020, !tbaa !974
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1021

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1022
  %69 = load i8, ptr %68, align 1, !dbg !1025, !tbaa !974
  %70 = icmp eq i8 %69, 45, !dbg !1026
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1027
  br label %72, !dbg !1027

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !963
  call void @llvm.dbg.value(metadata i8 %73, metadata !195, metadata !DIExpression()), !dbg !963
  %74 = tail call ptr @__ctype_b_loc() #43, !dbg !1028
  %75 = load ptr, ptr %74, align 8, !dbg !1028, !tbaa !899
  %76 = sext i8 %66 to i64, !dbg !1028
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1028
  %78 = load i16, ptr %77, align 2, !dbg !1028, !tbaa !1006
  %79 = and i16 %78, 8192, !dbg !1028
  %80 = icmp eq i16 %79, 0, !dbg !1028
  br i1 %80, label %96, label %81, !dbg !1030

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1031
  br i1 %82, label %98, label %83, !dbg !1034

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1035
  %85 = load i8, ptr %84, align 1, !dbg !1035, !tbaa !974
  %86 = sext i8 %85 to i64, !dbg !1035
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1035
  %88 = load i16, ptr %87, align 2, !dbg !1035, !tbaa !1006
  %89 = and i16 %88, 8192, !dbg !1035
  %90 = icmp eq i16 %89, 0, !dbg !1035
  br i1 %90, label %91, label %98, !dbg !1036

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1037
  %93 = icmp ne i8 %92, 0, !dbg !1037
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1039
  br i1 %95, label %96, label %98, !dbg !1039

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1040
  call void @llvm.dbg.value(metadata ptr %97, metadata !204, metadata !DIExpression()), !dbg !963
  br label %63, !dbg !1019, !llvm.loop !1041

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1043
  %100 = load ptr, ptr @stdout, align 8, !dbg !1043, !tbaa !899
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1043
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !976, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !258, metadata !DIExpression()), !dbg !963
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #41, !dbg !1064
  %103 = icmp eq i32 %102, 0, !dbg !1064
  br i1 %103, label %107, label %104, !dbg !1066

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #41, !dbg !1067
  %106 = icmp eq i32 %105, 0, !dbg !1067
  br i1 %106, label %107, label %110, !dbg !1068

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1069
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #40, !dbg !1069
  br label %113, !dbg !1071

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1072
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #40, !dbg !1072
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1074, !tbaa !899
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %114), !dbg !1074
  %116 = load ptr, ptr @stdout, align 8, !dbg !1075, !tbaa !899
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %116), !dbg !1075
  %118 = ptrtoint ptr %64 to i64, !dbg !1076
  %119 = sub i64 %118, %99, !dbg !1076
  %120 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !899
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1076
  %122 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !899
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %122), !dbg !1077
  %124 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !899
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %124), !dbg !1078
  %126 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !899
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1079
  br label %128, !dbg !1080

128:                                              ; preds = %113, %19
  ret void, !dbg !1080
}

; Function Attrs: nounwind
declare !dbg !1081 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1085 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1089 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1091 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1094 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1097 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1100 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1103 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1109 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1110 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1114 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1119, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata ptr %1, metadata !1120, metadata !DIExpression()), !dbg !1124
  %4 = load ptr, ptr %1, align 8, !dbg !1125, !tbaa !899
  tail call void @set_program_name(ptr noundef %4) #40, !dbg !1126
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #40, !dbg !1127
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #40, !dbg !1128
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #40, !dbg !1129
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1130
  br label %9, !dbg !1131

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %10, metadata !1121, metadata !DIExpression()), !dbg !1124
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1131

11:                                               ; preds = %9
  store i1 true, ptr @append, align 1, !dbg !1133
  br label %21, !dbg !1136

12:                                               ; preds = %9
  store i1 true, ptr @ignore_interrupts, align 1, !dbg !1137
  br label %21, !dbg !1138

13:                                               ; preds = %9
  %14 = load ptr, ptr @optarg, align 8, !dbg !1139, !tbaa !899
  %15 = icmp eq ptr %14, null, !dbg !1139
  br i1 %15, label %22, label %16, !dbg !1141

16:                                               ; preds = %13
  %17 = load ptr, ptr @argmatch_die, align 8, !dbg !1142, !tbaa !899
  %18 = tail call i64 @__xargmatch_internal(ptr noundef nonnull @.str.15, ptr noundef nonnull %14, ptr noundef nonnull @output_error_args, ptr noundef nonnull @output_error_types, i64 noundef 4, ptr noundef %17, i1 noundef zeroext true) #40, !dbg !1142
  %19 = getelementptr inbounds [4 x i32], ptr @output_error_types, i64 0, i64 %18, !dbg !1142
  %20 = load i32, ptr %19, align 4, !dbg !1142, !tbaa !974
  store i32 %20, ptr @output_error, align 4, !dbg !1143, !tbaa !974
  br label %21, !dbg !1144

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !1132, !llvm.loop !1145

22:                                               ; preds = %13
  store i32 2, ptr @output_error, align 4, !dbg !1147, !tbaa !974
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #44, !dbg !1148
  unreachable, !dbg !1148

24:                                               ; preds = %9
  %25 = load ptr, ptr @stdout, align 8, !dbg !1149, !tbaa !899
  %26 = load ptr, ptr @Version, align 8, !dbg !1149, !tbaa !899
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #40, !dbg !1149
  %28 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #40, !dbg !1149
  %29 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #40, !dbg !1149
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef null) #40, !dbg !1149
  tail call void @exit(i32 noundef 0) #42, !dbg !1149
  unreachable, !dbg !1149

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #44, !dbg !1150
  unreachable, !dbg !1150

31:                                               ; preds = %9
  %32 = load i1, ptr @ignore_interrupts, align 1, !dbg !1151
  br i1 %32, label %33, label %35, !dbg !1153

33:                                               ; preds = %31
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1154
  br label %35, !dbg !1154

35:                                               ; preds = %33, %31
  %36 = load i32, ptr @output_error, align 4, !dbg !1155, !tbaa !974
  %37 = icmp eq i32 %36, 0, !dbg !1157
  br i1 %37, label %43, label %38, !dbg !1158

38:                                               ; preds = %35
  %39 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #40, !dbg !1159
  %40 = load i32, ptr @output_error, align 4, !dbg !1160, !tbaa !974
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !1161

41:                                               ; preds = %38, %38
  %42 = tail call zeroext i1 @iopoll_input_ok(i32 noundef 0) #40, !dbg !1162
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ %42, %41 ], [ false, %38 ], [ false, %35 ], !dbg !1124
  call void @llvm.dbg.value(metadata i1 %44, metadata !1122, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1124
  %45 = load i32, ptr @optind, align 4, !dbg !1163, !tbaa !965
  %46 = sub nsw i32 %0, %45, !dbg !1164
  %47 = sext i32 %45 to i64, !dbg !1165
  %48 = getelementptr inbounds ptr, ptr %1, i64 %47, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %46, metadata !1166, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %48, metadata !1171, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i1 %44, metadata !1172, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1205
  call void @llvm.dbg.value(metadata i64 0, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #40, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1177, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 0, metadata !1181, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 0, metadata !1185, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 1, metadata !1186, metadata !DIExpression()), !dbg !1205
  %49 = load i1, ptr @append, align 1, !dbg !1209
  %50 = select i1 %49, i32 1089, i32 577, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %50, metadata !1187, metadata !DIExpression()), !dbg !1205
  %51 = load ptr, ptr @stdin, align 8, !dbg !1211, !tbaa !899
  tail call void @fadvise(ptr noundef %51, i32 noundef 2) #40, !dbg !1212
  %52 = add i32 %46, 1, !dbg !1213
  %53 = sext i32 %52 to i64, !dbg !1214
  %54 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 4) #45, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %54, metadata !1174, metadata !DIExpression()), !dbg !1205
  br i1 %44, label %55, label %59, !dbg !1216

55:                                               ; preds = %43
  %56 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 1) #45, !dbg !1217
  call void @llvm.dbg.value(metadata ptr %56, metadata !1175, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %48, metadata !1171, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1205
  %57 = tail call zeroext i1 @iopoll_output_ok(i32 noundef 1) #40, !dbg !1219
  %58 = zext i1 %57 to i8, !dbg !1221
  store i8 %58, ptr %56, align 1, !dbg !1221, !tbaa !1222
  br label %59, !dbg !1224

59:                                               ; preds = %55, %43
  %60 = phi ptr [ %56, %55 ], [ undef, %43 ]
  store i32 1, ptr %54, align 4, !dbg !1225
  %61 = getelementptr inbounds ptr, ptr %48, i64 -1, !dbg !1226
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #40, !dbg !1227
  store ptr %62, ptr %61, align 8, !dbg !1228, !tbaa !899
  call void @llvm.dbg.value(metadata i64 1, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 1, metadata !1188, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 1, metadata !1186, metadata !DIExpression()), !dbg !1205
  %63 = icmp slt i32 %46, 1, !dbg !1230
  %64 = zext i32 %52 to i64
  br i1 %63, label %67, label %71, !dbg !1231

65:                                               ; preds = %100
  call void @llvm.dbg.value(metadata i64 %102, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %101, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 0, metadata !1185, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 0, metadata !1181, metadata !DIExpression()), !dbg !1205
  %66 = icmp eq i64 %102, 0, !dbg !1232
  br i1 %66, label %230, label %67, !dbg !1232

67:                                               ; preds = %59, %65
  %68 = phi i64 [ %102, %65 ], [ 1, %59 ]
  %69 = phi i8 [ %101, %65 ], [ 1, %59 ]
  %70 = icmp slt i32 %46, 0
  br label %105, !dbg !1232

71:                                               ; preds = %59, %100
  %72 = phi i64 [ %103, %100 ], [ 1, %59 ]
  %73 = phi i64 [ %102, %100 ], [ 1, %59 ]
  %74 = phi i8 [ %101, %100 ], [ 1, %59 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %72, metadata !1188, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %74, metadata !1186, metadata !DIExpression()), !dbg !1205
  %75 = getelementptr inbounds ptr, ptr %61, i64 %72, !dbg !1233
  %76 = load ptr, ptr %75, align 8, !dbg !1233, !tbaa !899
  %77 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %76, i32 noundef %50, i32 noundef 438) #40, !dbg !1234
  %78 = getelementptr inbounds i32, ptr %54, i64 %72, !dbg !1235
  store i32 %77, ptr %78, align 4, !dbg !1236, !tbaa !965
  %79 = icmp slt i32 %77, 0, !dbg !1237
  br i1 %79, label %80, label %93, !dbg !1238

80:                                               ; preds = %71
  br i1 %44, label %81, label %83, !dbg !1239

81:                                               ; preds = %80
  %82 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1240
  store i8 0, ptr %82, align 1, !dbg !1242, !tbaa !1222
  br label %83, !dbg !1240

83:                                               ; preds = %81, %80
  %84 = load i32, ptr @output_error, align 4, !dbg !1243, !tbaa !974
  %85 = add i32 %84, -3, !dbg !1243
  %86 = icmp ult i32 %85, 2, !dbg !1243
  %87 = zext i1 %86 to i32, !dbg !1243
  %88 = tail call ptr @__errno_location() #43, !dbg !1243
  %89 = load i32, ptr %88, align 4, !dbg !1243, !tbaa !965
  %90 = load ptr, ptr %75, align 8, !dbg !1243, !tbaa !899
  %91 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %90) #40, !dbg !1243
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %87, i32 noundef %89, ptr noundef nonnull @.str.20, ptr noundef %91) #40, !dbg !1243
  call void @llvm.dbg.value(metadata i32 %87, metadata !1190, metadata !DIExpression()), !dbg !1244
  %92 = xor i1 %86, true, !dbg !1245
  tail call void @llvm.assume(i1 %92), !dbg !1245
  br label %100, !dbg !1243

93:                                               ; preds = %71
  br i1 %44, label %94, label %98, !dbg !1246

94:                                               ; preds = %93
  %95 = tail call zeroext i1 @iopoll_output_ok(i32 noundef %77) #40, !dbg !1248
  %96 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1250
  %97 = zext i1 %95 to i8, !dbg !1251
  store i8 %97, ptr %96, align 1, !dbg !1251, !tbaa !1222
  br label %98, !dbg !1250

98:                                               ; preds = %94, %93
  %99 = add i64 %73, 1, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %99, metadata !1173, metadata !DIExpression()), !dbg !1205
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i8 [ %74, %98 ], [ 0, %83 ], !dbg !1205
  %102 = phi i64 [ %99, %98 ], [ %73, %83 ], !dbg !1205
  call void @llvm.dbg.value(metadata i64 %102, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %101, metadata !1186, metadata !DIExpression()), !dbg !1205
  %103 = add nuw nsw i64 %72, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %103, metadata !1188, metadata !DIExpression()), !dbg !1229
  %104 = icmp eq i64 %103, %64, !dbg !1230
  br i1 %104, label %65, label %71, !dbg !1231, !llvm.loop !1254

105:                                              ; preds = %159, %67
  %106 = phi i64 [ %68, %67 ], [ %163, %159 ]
  %107 = phi i8 [ %69, %67 ], [ %162, %159 ]
  %108 = phi i32 [ 0, %67 ], [ %161, %159 ]
  %109 = phi i64 [ 0, %67 ], [ %160, %159 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %107, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %108, metadata !1185, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %109, metadata !1181, metadata !DIExpression()), !dbg !1205
  br i1 %44, label %110, label %151, !dbg !1256

110:                                              ; preds = %105
  %111 = sext i32 %108 to i64, !dbg !1257
  %112 = getelementptr inbounds i8, ptr %60, i64 %111, !dbg !1257
  %113 = load i8, ptr %112, align 1, !dbg !1257, !tbaa !1222, !range !1258, !noundef !949
  %114 = icmp eq i8 %113, 0, !dbg !1257
  br i1 %114, label %151, label %115, !dbg !1259

115:                                              ; preds = %110
  %116 = getelementptr inbounds i32, ptr %54, i64 %111, !dbg !1260
  %117 = load i32, ptr %116, align 4, !dbg !1260, !tbaa !965
  %118 = call i32 @iopoll(i32 noundef 0, i32 noundef %117, i1 noundef zeroext true) #40, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %118, metadata !1197, metadata !DIExpression()), !dbg !1262
  switch i32 %118, label %151 [
    i32 -2, label %119
    i32 -3, label %147
  ], !dbg !1263

119:                                              ; preds = %115
  %120 = tail call ptr @__errno_location() #43, !dbg !1264
  store i32 32, ptr %120, align 4, !dbg !1267, !tbaa !965
  call void @llvm.dbg.value(metadata ptr %54, metadata !1268, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %48, metadata !1273, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1281
  call void @llvm.dbg.value(metadata i32 %108, metadata !1274, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i32 32, metadata !1275, metadata !DIExpression()), !dbg !1281
  %121 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1281
  switch i32 %121, label %130 [
    i32 3, label %122
    i32 1, label %122
  ], !dbg !1284

122:                                              ; preds = %119, %119
  %123 = add nsw i32 %121, -3, !dbg !1285
  %124 = icmp ult i32 %123, 2, !dbg !1285
  %125 = zext i1 %124 to i32, !dbg !1285
  %126 = getelementptr inbounds ptr, ptr %61, i64 %111, !dbg !1285
  %127 = load ptr, ptr %126, align 8, !dbg !1285, !tbaa !899
  %128 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %127) #40, !dbg !1285
  call void (i32, i32, ptr, ...) @error(i32 noundef %125, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %128) #40, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %125, metadata !1277, metadata !DIExpression()), !dbg !1286
  %129 = xor i1 %124, true, !dbg !1287
  call void @llvm.assume(i1 %129), !dbg !1285
  br label %130, !dbg !1288

130:                                              ; preds = %122, %119
  %131 = and i32 %121, -3, !dbg !1288
  %132 = icmp eq i32 %131, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i1 %132, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1281
  store i32 -1, ptr %116, align 4, !dbg !1289, !tbaa !965
  %133 = select i1 %132, i8 0, i8 %107, !dbg !1290
  call void @llvm.dbg.value(metadata i8 %133, metadata !1186, metadata !DIExpression()), !dbg !1205
  %134 = add i64 %106, -1, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %134, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %54, metadata !1292, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i32 %46, metadata !1297, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata i32 %108, metadata !1298, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1299
  %135 = call i32 @llvm.smax.i32(i32 %108, i32 %46), !dbg !1301
  %136 = sext i32 %135 to i64, !dbg !1303
  br label %137, !dbg !1301

137:                                              ; preds = %140, %130
  %138 = phi i64 [ %141, %140 ], [ %111, %130 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !1298, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1299
  %139 = icmp eq i64 %138, %136, !dbg !1303
  br i1 %139, label %159, label %140, !dbg !1305, !llvm.loop !1306

140:                                              ; preds = %137
  %141 = add nsw i64 %138, 1, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %141, metadata !1298, metadata !DIExpression()), !dbg !1299
  %142 = getelementptr inbounds i32, ptr %54, i64 %141, !dbg !1309
  %143 = load i32, ptr %142, align 4, !dbg !1309, !tbaa !965
  %144 = icmp sgt i32 %143, -1, !dbg !1311
  br i1 %144, label %145, label %137, !dbg !1312, !llvm.loop !1313

145:                                              ; preds = %140
  %146 = trunc i64 %141 to i32, !dbg !1312
  br label %159, !dbg !1315, !llvm.loop !1316

147:                                              ; preds = %115
  %148 = tail call ptr @__errno_location() #43, !dbg !1317
  %149 = load i32, ptr %148, align 4, !dbg !1317, !tbaa !965
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #40, !dbg !1317
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %149, ptr noundef %150) #40, !dbg !1317
  call void @llvm.dbg.value(metadata i8 0, metadata !1186, metadata !DIExpression()), !dbg !1205
  br label %151, !dbg !1320

151:                                              ; preds = %147, %115, %110, %105
  %152 = phi i8 [ %107, %110 ], [ %107, %105 ], [ %107, %115 ], [ 0, %147 ], !dbg !1205
  call void @llvm.dbg.value(metadata i64 %106, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %152, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %108, metadata !1185, metadata !DIExpression()), !dbg !1205
  %153 = call i64 @read(i32 noundef 0, ptr noundef nonnull %3, i64 noundef 8192) #40, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %153, metadata !1181, metadata !DIExpression()), !dbg !1205
  %154 = icmp slt i64 %153, 0, !dbg !1322
  br i1 %154, label %155, label %165, !dbg !1324

155:                                              ; preds = %151
  %156 = tail call ptr @__errno_location() #43, !dbg !1325
  %157 = load i32, ptr %156, align 4, !dbg !1325, !tbaa !965
  %158 = icmp eq i32 %157, 4, !dbg !1326
  br i1 %158, label %159, label %222, !dbg !1327

159:                                              ; preds = %137, %216, %167, %155, %145
  %160 = phi i64 [ %153, %155 ], [ %153, %167 ], [ %109, %145 ], [ %153, %216 ], [ %109, %137 ]
  %161 = phi i32 [ %108, %155 ], [ %108, %167 ], [ %146, %145 ], [ %217, %216 ], [ -1, %137 ]
  %162 = phi i8 [ %152, %155 ], [ %152, %167 ], [ %133, %145 ], [ %218, %216 ], [ %133, %137 ]
  %163 = phi i64 [ %106, %155 ], [ %106, %167 ], [ %134, %145 ], [ %219, %216 ], [ %134, %137 ]
  call void @llvm.dbg.value(metadata i64 %163, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %162, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %161, metadata !1185, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %160, metadata !1181, metadata !DIExpression()), !dbg !1205
  %164 = icmp eq i64 %163, 0, !dbg !1232
  br i1 %164, label %222, label %105, !dbg !1232, !llvm.loop !1328

165:                                              ; preds = %151
  %166 = icmp eq i64 %153, 0, !dbg !1329
  br i1 %166, label %230, label %167, !dbg !1331

167:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !1201, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 %106, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %152, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %108, metadata !1185, metadata !DIExpression()), !dbg !1205
  br i1 %70, label %159, label %168, !dbg !1333, !llvm.loop !1334

168:                                              ; preds = %167, %216
  %169 = phi i64 [ %220, %216 ], [ 0, %167 ]
  %170 = phi i64 [ %219, %216 ], [ %106, %167 ]
  %171 = phi i8 [ %218, %216 ], [ %152, %167 ]
  %172 = phi i32 [ %217, %216 ], [ %108, %167 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1201, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata i64 %170, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %171, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %172, metadata !1185, metadata !DIExpression()), !dbg !1205
  %173 = getelementptr inbounds i32, ptr %54, i64 %169, !dbg !1335
  %174 = load i32, ptr %173, align 4, !dbg !1335, !tbaa !965
  %175 = icmp sgt i32 %174, -1, !dbg !1338
  br i1 %175, label %176, label %216, !dbg !1339

176:                                              ; preds = %168
  %177 = call zeroext i1 @write_wait(i32 noundef %174, ptr noundef nonnull %3, i64 noundef %153) #40, !dbg !1340
  br i1 %177, label %216, label %178, !dbg !1341

178:                                              ; preds = %176
  call void @llvm.dbg.value(metadata ptr %54, metadata !1268, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %48, metadata !1273, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1342
  call void @llvm.dbg.value(metadata i64 %169, metadata !1274, metadata !DIExpression()), !dbg !1342
  %179 = tail call ptr @__errno_location() #43, !dbg !1346
  %180 = load i32, ptr %179, align 4, !dbg !1346, !tbaa !965
  %181 = freeze i32 %180, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %180, metadata !1275, metadata !DIExpression()), !dbg !1342
  %182 = icmp ne i32 %181, 32, !dbg !1347
  %183 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1342
  br i1 %182, label %185, label %184, !dbg !1348

184:                                              ; preds = %178
  switch i32 %183, label %193 [
    i32 3, label %185
    i32 1, label %185
  ], !dbg !1348

185:                                              ; preds = %184, %184, %178
  %186 = add i32 %183, -3, !dbg !1349
  %187 = icmp ult i32 %186, 2, !dbg !1349
  %188 = zext i1 %187 to i32, !dbg !1349
  %189 = getelementptr inbounds ptr, ptr %61, i64 %169, !dbg !1349
  %190 = load ptr, ptr %189, align 8, !dbg !1349, !tbaa !899
  %191 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %190) #40, !dbg !1349
  call void (i32, i32, ptr, ...) @error(i32 noundef %188, i32 noundef %181, ptr noundef nonnull @.str.20, ptr noundef %191) #40, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %188, metadata !1277, metadata !DIExpression()), !dbg !1350
  %192 = xor i1 %187, true, !dbg !1351
  call void @llvm.assume(i1 %192), !dbg !1349
  br label %193

193:                                              ; preds = %185, %184
  %194 = icmp eq i32 %183, 3
  %195 = select i1 %182, i1 true, i1 %194, !dbg !1352
  %196 = icmp eq i32 %183, 1
  %197 = select i1 %195, i1 true, i1 %196, !dbg !1352
  call void @llvm.dbg.value(metadata i1 %197, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1342
  store i32 -1, ptr %173, align 4, !dbg !1353, !tbaa !965
  %198 = select i1 %197, i8 0, i8 %171, !dbg !1354
  call void @llvm.dbg.value(metadata i8 %198, metadata !1186, metadata !DIExpression()), !dbg !1205
  %199 = add i64 %170, -1, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %199, metadata !1173, metadata !DIExpression()), !dbg !1205
  %200 = zext i32 %172 to i64, !dbg !1356
  %201 = icmp eq i64 %169, %200, !dbg !1356
  br i1 %201, label %202, label %216, !dbg !1358

202:                                              ; preds = %193
  call void @llvm.dbg.value(metadata ptr %54, metadata !1292, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i32 %46, metadata !1297, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i32 %172, metadata !1298, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1359
  %203 = sext i32 %172 to i64, !dbg !1361
  %204 = call i32 @llvm.smax.i32(i32 %172, i32 %46), !dbg !1361
  %205 = sext i32 %204 to i64, !dbg !1362
  br label %206, !dbg !1361

206:                                              ; preds = %209, %202
  %207 = phi i64 [ %210, %209 ], [ %203, %202 ]
  call void @llvm.dbg.value(metadata i64 %207, metadata !1298, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1359
  %208 = icmp eq i64 %207, %205, !dbg !1362
  br i1 %208, label %216, label %209, !dbg !1363

209:                                              ; preds = %206
  %210 = add nsw i64 %207, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %210, metadata !1298, metadata !DIExpression()), !dbg !1359
  %211 = getelementptr inbounds i32, ptr %54, i64 %210, !dbg !1365
  %212 = load i32, ptr %211, align 4, !dbg !1365, !tbaa !965
  %213 = icmp sgt i32 %212, -1, !dbg !1366
  br i1 %213, label %214, label %206, !dbg !1367, !llvm.loop !1368

214:                                              ; preds = %209
  %215 = trunc i64 %210 to i32, !dbg !1367
  br label %216, !dbg !1370

216:                                              ; preds = %206, %214, %193, %176, %168
  %217 = phi i32 [ %172, %176 ], [ %172, %193 ], [ %172, %168 ], [ %215, %214 ], [ -1, %206 ], !dbg !1371
  %218 = phi i8 [ %171, %176 ], [ %198, %193 ], [ %171, %168 ], [ %198, %214 ], [ %198, %206 ], !dbg !1371
  %219 = phi i64 [ %170, %176 ], [ %199, %193 ], [ %170, %168 ], [ %199, %214 ], [ %199, %206 ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %219, metadata !1173, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %218, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 %217, metadata !1185, metadata !DIExpression()), !dbg !1205
  %220 = add nuw nsw i64 %169, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %220, metadata !1201, metadata !DIExpression()), !dbg !1332
  %221 = icmp eq i64 %220, %64, !dbg !1373
  br i1 %221, label %159, label %168, !dbg !1333, !llvm.loop !1374

222:                                              ; preds = %159, %155
  %223 = phi i64 [ %160, %159 ], [ %153, %155 ], !dbg !1205
  %224 = phi i8 [ %162, %159 ], [ %152, %155 ], !dbg !1205
  call void @llvm.dbg.value(metadata i8 %224, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %223, metadata !1181, metadata !DIExpression()), !dbg !1205
  %225 = icmp eq i64 %223, -1, !dbg !1376
  br i1 %225, label %226, label %230, !dbg !1378

226:                                              ; preds = %222
  %227 = tail call ptr @__errno_location() #43, !dbg !1379
  %228 = load i32, ptr %227, align 4, !dbg !1379, !tbaa !965
  %229 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #40, !dbg !1379
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %228, ptr noundef %229) #40, !dbg !1379
  call void @llvm.dbg.value(metadata i8 0, metadata !1186, metadata !DIExpression()), !dbg !1205
  br label %230, !dbg !1381

230:                                              ; preds = %165, %226, %222, %65
  %231 = phi i8 [ 0, %226 ], [ %224, %222 ], [ %101, %65 ], [ %152, %165 ], !dbg !1205
  call void @llvm.dbg.value(metadata i8 %231, metadata !1186, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 1, metadata !1203, metadata !DIExpression()), !dbg !1382
  br i1 %63, label %234, label %232, !dbg !1383

232:                                              ; preds = %230
  %233 = zext i32 %52 to i64, !dbg !1384
  br label %236, !dbg !1383

234:                                              ; preds = %250, %230
  %235 = phi i8 [ %231, %230 ], [ %251, %250 ], !dbg !1386
  call void @free(ptr noundef nonnull %54) #40, !dbg !1387
  br i1 %44, label %254, label %255, !dbg !1388

236:                                              ; preds = %250, %232
  %237 = phi i64 [ 1, %232 ], [ %252, %250 ]
  %238 = phi i8 [ %231, %232 ], [ %251, %250 ]
  call void @llvm.dbg.value(metadata i64 %237, metadata !1203, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i8 %238, metadata !1186, metadata !DIExpression()), !dbg !1205
  %239 = getelementptr inbounds i32, ptr %54, i64 %237, !dbg !1389
  %240 = load i32, ptr %239, align 4, !dbg !1389, !tbaa !965
  %241 = icmp sgt i32 %240, -1, !dbg !1391
  br i1 %241, label %242, label %250, !dbg !1392

242:                                              ; preds = %236
  %243 = call zeroext i1 @close_wait(i32 noundef %240) #40, !dbg !1393
  br i1 %243, label %250, label %244, !dbg !1394

244:                                              ; preds = %242
  %245 = tail call ptr @__errno_location() #43, !dbg !1395
  %246 = load i32, ptr %245, align 4, !dbg !1395, !tbaa !965
  %247 = getelementptr inbounds ptr, ptr %61, i64 %237, !dbg !1395
  %248 = load ptr, ptr %247, align 8, !dbg !1395, !tbaa !899
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %248) #40, !dbg !1395
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %246, ptr noundef nonnull @.str.20, ptr noundef %249) #40, !dbg !1395
  call void @llvm.dbg.value(metadata i8 0, metadata !1186, metadata !DIExpression()), !dbg !1205
  br label %250, !dbg !1397

250:                                              ; preds = %244, %242, %236
  %251 = phi i8 [ %238, %242 ], [ 0, %244 ], [ %238, %236 ], !dbg !1205
  call void @llvm.dbg.value(metadata i8 %251, metadata !1186, metadata !DIExpression()), !dbg !1205
  %252 = add nuw nsw i64 %237, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %252, metadata !1203, metadata !DIExpression()), !dbg !1382
  %253 = icmp eq i64 %252, %233, !dbg !1384
  br i1 %253, label %234, label %236, !dbg !1383, !llvm.loop !1399

254:                                              ; preds = %234
  call void @free(ptr noundef %60) #40, !dbg !1401
  br label %255, !dbg !1401

255:                                              ; preds = %234, %254
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #40, !dbg !1403
  call void @llvm.dbg.value(metadata i1 poison, metadata !1123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1124
  %256 = call i32 @close(i32 noundef 0) #40, !dbg !1404
  %257 = icmp eq i32 %256, 0, !dbg !1406
  br i1 %257, label %262, label %258, !dbg !1407

258:                                              ; preds = %255
  %259 = tail call ptr @__errno_location() #43, !dbg !1408
  %260 = load i32, ptr %259, align 4, !dbg !1408, !tbaa !965
  %261 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !1408
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %260, ptr noundef nonnull @.str.20, ptr noundef %261) #40, !dbg !1408
  unreachable, !dbg !1408

262:                                              ; preds = %255
  %263 = and i8 %235, 1, !dbg !1409
  %264 = icmp eq i8 %263, 0, !dbg !1409
  call void @llvm.dbg.value(metadata i1 %264, metadata !1123, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1124
  %265 = zext i1 %264 to i32, !dbg !1410
  ret i32 %265, !dbg !1411
}

; Function Attrs: nounwind
declare !dbg !1412 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1415 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1416 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1419 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1425 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1428 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1432 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

declare !dbg !1435 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #10 !dbg !1439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1443, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %1, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i1 %2, metadata !1445, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  %4 = tail call fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext true), !dbg !1447
  ret i32 %4, !dbg !1448
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #10 !dbg !1449 {
  %5 = alloca [2 x %struct.pollfd], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1453, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %1, metadata !1454, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i1 %2, metadata !1455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1468
  call void @llvm.dbg.value(metadata i1 %3, metadata !1456, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1468
  %6 = and i32 %1, %0, !dbg !1469
  %7 = icmp eq i32 %6, -1, !dbg !1469
  br i1 %7, label %8, label %9, !dbg !1469

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #42, !dbg !1469
  unreachable, !dbg !1469

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #40, !dbg !1472
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1457, metadata !DIExpression()), !dbg !1473
  store i32 %0, ptr %5, align 16, !dbg !1474, !tbaa !1475
  %10 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 1, !dbg !1474
  store i16 129, ptr %10, align 4, !dbg !1474, !tbaa !1477
  %11 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 2, !dbg !1474
  store i16 0, ptr %11, align 2, !dbg !1474, !tbaa !1478
  %12 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, !dbg !1479
  store i32 %1, ptr %12, align 8, !dbg !1480, !tbaa !1475
  %13 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, i32 1, !dbg !1480
  store i16 128, ptr %13, align 4, !dbg !1480, !tbaa !1477
  %14 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, i32 2, !dbg !1480
  store i16 0, ptr %14, align 2, !dbg !1480, !tbaa !1478
  call void @llvm.dbg.value(metadata i32 56, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1468
  br i1 %3, label %16, label %15, !dbg !1481

15:                                               ; preds = %9
  store i16 4, ptr %13, align 4, !dbg !1482, !tbaa !1477
  store i16 4, ptr %10, align 4, !dbg !1485, !tbaa !1477
  call void @llvm.dbg.value(metadata i32 4, metadata !1466, metadata !DIExpression()), !dbg !1468
  br label %16, !dbg !1486

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 56, %9 ], [ 4, %15 ], !dbg !1468
  call void @llvm.dbg.value(metadata i32 %17, metadata !1466, metadata !DIExpression()), !dbg !1468
  %18 = sext i1 %2 to i32
  br label %19, !dbg !1487

19:                                               ; preds = %29, %16
  %20 = phi i32 [ 0, %16 ], [ %27, %29 ], !dbg !1468
  call void @llvm.dbg.value(metadata i32 %20, metadata !1467, metadata !DIExpression()), !dbg !1468
  %21 = icmp sgt i32 %20, -1, !dbg !1488
  br i1 %21, label %26, label %22, !dbg !1489

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #43, !dbg !1490
  %24 = load i32, ptr %23, align 4, !dbg !1490, !tbaa !965
  %25 = icmp eq i32 %24, 4, !dbg !1491
  br i1 %25, label %26, label %46, !dbg !1487

26:                                               ; preds = %19, %22
  %27 = call i32 @poll(ptr noundef nonnull %5, i64 noundef 2, i32 noundef %18) #40, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %27, metadata !1467, metadata !DIExpression()), !dbg !1468
  %28 = icmp slt i32 %27, 0, !dbg !1494
  br i1 %28, label %29, label %30, !dbg !1496

29:                                               ; preds = %26, %39
  br label %19, !dbg !1468, !llvm.loop !1497

30:                                               ; preds = %26
  %31 = icmp ne i32 %27, 0, !dbg !1499
  %32 = or i1 %31, %2, !dbg !1501
  br i1 %32, label %33, label %46, !dbg !1501

33:                                               ; preds = %30
  %34 = icmp eq i32 %27, 0, !dbg !1502
  br i1 %34, label %35, label %36, !dbg !1505

35:                                               ; preds = %33
  call void @__assert_fail(ptr noundef nonnull @.str.2.28, ptr noundef nonnull @.str.1.27, i32 noundef 88, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #42, !dbg !1502
  unreachable, !dbg !1502

36:                                               ; preds = %33
  %37 = load i16, ptr %11, align 2, !dbg !1506, !tbaa !1478
  %38 = icmp eq i16 %37, 0, !dbg !1508
  br i1 %38, label %39, label %46, !dbg !1509

39:                                               ; preds = %36
  %40 = load i16, ptr %14, align 2, !dbg !1510, !tbaa !1478
  %41 = zext i16 %40 to i32, !dbg !1512
  %42 = and i32 %17, %41, !dbg !1513
  %43 = icmp eq i32 %42, 0, !dbg !1513
  br i1 %43, label %29, label %44, !dbg !1514

44:                                               ; preds = %39
  %45 = select i1 %3, i32 -2, i32 0, !dbg !1515
  br label %46, !dbg !1516

46:                                               ; preds = %22, %36, %30, %44
  %47 = phi i32 [ %45, %44 ], [ -3, %22 ], [ 0, %36 ], [ 0, %30 ], !dbg !1468
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #40, !dbg !1517
  ret i32 %47, !dbg !1517
}

; Function Attrs: noreturn nounwind
declare !dbg !1518 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i1 @iopoll_input_ok(i32 noundef %0) local_unnamed_addr #15 !dbg !1522 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1526, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #40, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1527, metadata !DIExpression()), !dbg !1565
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #40, !dbg !1566
  %4 = icmp eq i32 %3, 0, !dbg !1567
  br i1 %4, label %5, label %12, !dbg !1568

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1569
  %7 = load i32, ptr %6, align 8, !dbg !1569, !tbaa !1570
  %8 = and i32 %7, 61440, !dbg !1569
  %9 = icmp ne i32 %8, 32768, !dbg !1569
  %10 = icmp ne i32 %8, 24576, !dbg !1574
  %11 = and i1 %9, %10, !dbg !1575
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ]
  call void @llvm.dbg.value(metadata i1 poison, metadata !1562, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1563
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #40, !dbg !1576
  ret i1 %13, !dbg !1577
}

; Function Attrs: nofree nounwind
declare !dbg !1578 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @iopoll_output_ok(i32 noundef %0) local_unnamed_addr #10 !dbg !1583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1585, metadata !DIExpression()), !dbg !1586
  %2 = tail call i32 @isapipe(i32 noundef %0) #40, !dbg !1587
  %3 = icmp sgt i32 %2, 0, !dbg !1588
  ret i1 %3, !dbg !1589
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @close_wait(i32 noundef %0) local_unnamed_addr #10 !dbg !1590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1592, metadata !DIExpression()), !dbg !1593
  %2 = tail call ptr @__errno_location() #43, !dbg !1593
  br label %3, !dbg !1594

3:                                                ; preds = %6, %1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1595, metadata !DIExpression()), !dbg !1598
  %4 = load i32, ptr %2, align 4, !dbg !1600, !tbaa !965
  %5 = icmp eq i32 %4, 11, !dbg !1600
  br i1 %5, label %6, label %10, !dbg !1600

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext false), !dbg !1602
  %8 = icmp eq i32 %7, 0, !dbg !1604
  br i1 %8, label %3, label %9, !dbg !1605, !llvm.loop !1606

9:                                                ; preds = %6
  store i32 11, ptr %2, align 4, !dbg !1608, !tbaa !965
  br label %10, !dbg !1610

10:                                               ; preds = %3, %9
  %11 = tail call i32 @close(i32 noundef %0) #40, !dbg !1611
  %12 = icmp eq i32 %11, 0, !dbg !1612
  ret i1 %12, !dbg !1613
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @write_wait(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1614 {
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
  %14 = load i32, ptr %9, align 4, !dbg !1637, !tbaa !965
  %15 = icmp eq i32 %14, 11, !dbg !1637
  br i1 %15, label %16, label %26, !dbg !1637

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext false), !dbg !1638
  %18 = icmp eq i32 %17, 0, !dbg !1639
  br i1 %18, label %20, label %19, !dbg !1640

19:                                               ; preds = %16
  store i32 11, ptr %9, align 4, !dbg !1641, !tbaa !965
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
  %6 = load ptr, ptr %1, align 8, !dbg !1671, !tbaa !899
  %7 = icmp eq ptr %6, null, !dbg !1673
  br i1 %7, label %38, label %8, !dbg !1673

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br label %10, !dbg !1673

10:                                               ; preds = %8, %31
  %11 = phi ptr [ %6, %8 ], [ %36, %31 ]
  %12 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %13 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %14 = phi i64 [ -1, %8 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %13, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %14, metadata !1664, metadata !DIExpression()), !dbg !1668
  %15 = tail call i32 @strncmp(ptr noundef nonnull %11, ptr noundef %0, i64 noundef %5) #41, !dbg !1674
  %16 = icmp eq i32 %15, 0, !dbg !1674
  br i1 %16, label %17, label %31, !dbg !1677

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #41, !dbg !1678
  %19 = icmp eq i64 %18, %5, !dbg !1681
  br i1 %19, label %44, label %20, !dbg !1682

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
  %33 = phi i8 [ %13, %10 ], [ 1, %30 ], [ %13, %23 ], [ %13, %20 ], !dbg !1668
  call void @llvm.dbg.value(metadata i8 %33, metadata !1665, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i64 %32, metadata !1664, metadata !DIExpression()), !dbg !1668
  %34 = add i64 %12, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %34, metadata !1666, metadata !DIExpression()), !dbg !1670
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1671
  %36 = load ptr, ptr %35, align 8, !dbg !1671, !tbaa !899
  %37 = icmp eq ptr %36, null, !dbg !1673
  br i1 %37, label %38, label %10, !dbg !1673, !llvm.loop !1708

38:                                               ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !1710
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !1711
  %41 = and i8 %40, 1, !dbg !1712
  %42 = icmp eq i8 %41, 0, !dbg !1712
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1714
  br label %44, !dbg !1714

44:                                               ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %12, %17 ], !dbg !1668
  ret i64 %45, !dbg !1715
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1716 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @argmatch_exact(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 !dbg !1719 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1723, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %1, metadata !1724, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 0, metadata !1725, metadata !DIExpression()), !dbg !1728
  %3 = load ptr, ptr %1, align 8, !dbg !1729, !tbaa !899
  %4 = icmp eq ptr %3, null, !dbg !1731
  br i1 %4, label %15, label %5, !dbg !1731

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !1725, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata ptr %6, metadata !1732, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %0, metadata !1735, metadata !DIExpression()), !dbg !1736
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !1740
  %9 = icmp eq i32 %8, 0, !dbg !1741
  br i1 %9, label %15, label %10, !dbg !1742

10:                                               ; preds = %5
  %11 = add i64 %7, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %11, metadata !1725, metadata !DIExpression()), !dbg !1728
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11, !dbg !1729
  %13 = load ptr, ptr %12, align 8, !dbg !1729, !tbaa !899
  %14 = icmp eq ptr %13, null, !dbg !1731
  br i1 %14, label %15, label %5, !dbg !1731, !llvm.loop !1744

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
  ret i64 %16, !dbg !1746
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1751, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata ptr %1, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %2, metadata !1753, metadata !DIExpression()), !dbg !1755
  %4 = icmp eq i64 %2, -1, !dbg !1756
  %5 = select i1 %4, ptr @.str.1.52, ptr @.str.2.53, !dbg !1757
  %6 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %5, i32 noundef 5) #40, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %6, metadata !1754, metadata !DIExpression()), !dbg !1755
  %7 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #40, !dbg !1758
  %8 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #40, !dbg !1758
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #40, !dbg !1758
  ret void, !dbg !1759
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1760 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1764, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata ptr %1, metadata !1765, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i64 %2, metadata !1766, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata ptr null, metadata !1767, metadata !DIExpression()), !dbg !1770
  %4 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #40, !dbg !1771
  %5 = load ptr, ptr @stderr, align 8, !dbg !1771, !tbaa !899
  %6 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef %5), !dbg !1771
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata ptr null, metadata !1767, metadata !DIExpression()), !dbg !1770
  %7 = load ptr, ptr %0, align 8, !dbg !1773, !tbaa !899
  %8 = icmp eq ptr %7, null, !dbg !1775
  br i1 %8, label %9, label %21, !dbg !1775

9:                                                ; preds = %41, %3
  %10 = load ptr, ptr @stderr, align 8, !dbg !1776, !tbaa !899
  call void @llvm.dbg.value(metadata i32 10, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %10, metadata !1817, metadata !DIExpression()), !dbg !1818
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 5, !dbg !1820
  %12 = load ptr, ptr %11, align 8, !dbg !1820, !tbaa !1821
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 6, !dbg !1820
  %14 = load ptr, ptr %13, align 8, !dbg !1820, !tbaa !1823
  %15 = icmp ult ptr %12, %14, !dbg !1820
  br i1 %15, label %18, label %16, !dbg !1820, !prof !1824

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(ptr noundef nonnull %10, i32 noundef 10) #40, !dbg !1820
  br label %20, !dbg !1820

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1820
  store ptr %19, ptr %11, align 8, !dbg !1820, !tbaa !1821
  store i8 10, ptr %12, align 1, !dbg !1820, !tbaa !974
  br label %20, !dbg !1820

20:                                               ; preds = %16, %18
  ret void, !dbg !1825

21:                                               ; preds = %3, %41
  %22 = phi ptr [ %45, %41 ], [ %7, %3 ]
  %23 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %24 = phi ptr [ %42, %41 ], [ null, %3 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1768, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata ptr %24, metadata !1767, metadata !DIExpression()), !dbg !1770
  %25 = icmp eq i64 %23, 0, !dbg !1826
  br i1 %25, label %31, label %26, !dbg !1828

26:                                               ; preds = %21
  %27 = mul i64 %23, %2, !dbg !1829
  %28 = getelementptr inbounds i8, ptr %1, i64 %27, !dbg !1830
  call void @llvm.dbg.value(metadata ptr %24, metadata !1693, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata ptr %28, metadata !1698, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i64 %2, metadata !1699, metadata !DIExpression()), !dbg !1831
  %29 = tail call i32 @bcmp(ptr %24, ptr %28, i64 %2), !dbg !1833
  %30 = icmp eq i32 %29, 0, !dbg !1834
  br i1 %30, label %37, label %31, !dbg !1835

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ], !dbg !1836
  %33 = load ptr, ptr @stderr, align 8, !dbg !1838, !tbaa !899
  %34 = tail call ptr @quote(ptr noundef nonnull %22) #40, !dbg !1838
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.4.71, ptr noundef %34) #40, !dbg !1838
  %36 = getelementptr inbounds i8, ptr %1, i64 %32, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %36, metadata !1767, metadata !DIExpression()), !dbg !1770
  br label %41, !dbg !1840

37:                                               ; preds = %26
  %38 = load ptr, ptr @stderr, align 8, !dbg !1841, !tbaa !899
  %39 = tail call ptr @quote(ptr noundef nonnull %22) #40, !dbg !1841
  %40 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @.str.5.72, ptr noundef %39) #40, !dbg !1841
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi ptr [ %36, %31 ], [ %24, %37 ], !dbg !1770
  call void @llvm.dbg.value(metadata ptr %42, metadata !1767, metadata !DIExpression()), !dbg !1770
  %43 = add i64 %23, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %43, metadata !1768, metadata !DIExpression()), !dbg !1772
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43, !dbg !1773
  %45 = load ptr, ptr %44, align 8, !dbg !1773, !tbaa !899
  %46 = icmp eq ptr %45, null, !dbg !1775
  br i1 %46, label %9, label %21, !dbg !1775, !llvm.loop !1844
}

declare !dbg !1846 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @__xargmatch_internal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i1 noundef zeroext %6) local_unnamed_addr #10 !dbg !1849 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1853, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata ptr %1, metadata !1854, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata ptr %2, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata ptr %3, metadata !1856, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 %4, metadata !1857, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata ptr %5, metadata !1858, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i1 %6, metadata !1859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1861
  br i1 %6, label %8, label %45, !dbg !1862

8:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1659, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %2, metadata !1660, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %3, metadata !1661, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %4, metadata !1662, metadata !DIExpression()), !dbg !1863
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %9, metadata !1663, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 -1, metadata !1664, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 0, metadata !1666, metadata !DIExpression()), !dbg !1867
  %10 = load ptr, ptr %2, align 8, !dbg !1868, !tbaa !899
  %11 = icmp eq ptr %10, null, !dbg !1869
  br i1 %11, label %64, label %12, !dbg !1869

12:                                               ; preds = %8
  %13 = icmp eq ptr %3, null
  br label %14, !dbg !1869

14:                                               ; preds = %35, %12
  %15 = phi ptr [ %10, %12 ], [ %40, %35 ]
  %16 = phi i64 [ 0, %12 ], [ %38, %35 ]
  %17 = phi i8 [ 0, %12 ], [ %37, %35 ]
  %18 = phi i64 [ -1, %12 ], [ %36, %35 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !1666, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 %17, metadata !1665, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %18, metadata !1664, metadata !DIExpression()), !dbg !1863
  %19 = tail call i32 @strncmp(ptr noundef nonnull %15, ptr noundef %1, i64 noundef %9) #41, !dbg !1870
  %20 = icmp eq i32 %19, 0, !dbg !1870
  br i1 %20, label %21, label %35, !dbg !1871

21:                                               ; preds = %14
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #41, !dbg !1872
  %23 = icmp eq i64 %22, %9, !dbg !1873
  br i1 %23, label %58, label %24, !dbg !1874

24:                                               ; preds = %21
  %25 = icmp eq i64 %18, -1, !dbg !1875
  br i1 %25, label %35, label %26, !dbg !1876

26:                                               ; preds = %24
  br i1 %13, label %34, label %27, !dbg !1877

27:                                               ; preds = %26
  %28 = mul i64 %18, %4, !dbg !1878
  %29 = getelementptr inbounds i8, ptr %3, i64 %28, !dbg !1879
  %30 = mul i64 %16, %4, !dbg !1880
  %31 = getelementptr inbounds i8, ptr %3, i64 %30, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %29, metadata !1693, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %31, metadata !1698, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %4, metadata !1699, metadata !DIExpression()), !dbg !1882
  %32 = tail call i32 @bcmp(ptr nonnull %29, ptr nonnull %31, i64 %4), !dbg !1884
  %33 = icmp eq i32 %32, 0, !dbg !1885
  br i1 %33, label %35, label %34, !dbg !1886

34:                                               ; preds = %27, %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1665, metadata !DIExpression()), !dbg !1863
  br label %35, !dbg !1887

35:                                               ; preds = %34, %27, %24, %14
  %36 = phi i64 [ %18, %14 ], [ %18, %34 ], [ %18, %27 ], [ %16, %24 ], !dbg !1863
  %37 = phi i8 [ %17, %14 ], [ 1, %34 ], [ %17, %27 ], [ %17, %24 ], !dbg !1863
  call void @llvm.dbg.value(metadata i8 %37, metadata !1665, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %36, metadata !1664, metadata !DIExpression()), !dbg !1863
  %38 = add i64 %16, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %38, metadata !1666, metadata !DIExpression()), !dbg !1867
  %39 = getelementptr inbounds ptr, ptr %2, i64 %38, !dbg !1868
  %40 = load ptr, ptr %39, align 8, !dbg !1868, !tbaa !899
  %41 = icmp eq ptr %40, null, !dbg !1869
  br i1 %41, label %42, label %14, !dbg !1869, !llvm.loop !1889

42:                                               ; preds = %35
  %43 = and i8 %37, 1, !dbg !1891
  %44 = icmp eq i8 %43, 0, !dbg !1891
  br i1 %44, label %58, label %65, !dbg !1892

45:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1723, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %2, metadata !1724, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 0, metadata !1725, metadata !DIExpression()), !dbg !1895
  %46 = load ptr, ptr %2, align 8, !dbg !1896, !tbaa !899
  %47 = icmp eq ptr %46, null, !dbg !1897
  br i1 %47, label %64, label %48, !dbg !1897

48:                                               ; preds = %45, %53
  %49 = phi ptr [ %56, %53 ], [ %46, %45 ]
  %50 = phi i64 [ %54, %53 ], [ 0, %45 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !1725, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %49, metadata !1732, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata ptr %1, metadata !1735, metadata !DIExpression()), !dbg !1898
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %1) #41, !dbg !1900
  %52 = icmp eq i32 %51, 0, !dbg !1901
  br i1 %52, label %58, label %53, !dbg !1902

53:                                               ; preds = %48
  %54 = add i64 %50, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %54, metadata !1725, metadata !DIExpression()), !dbg !1895
  %55 = getelementptr inbounds ptr, ptr %2, i64 %54, !dbg !1896
  %56 = load ptr, ptr %55, align 8, !dbg !1896, !tbaa !899
  %57 = icmp eq ptr %56, null, !dbg !1897
  br i1 %57, label %64, label %48, !dbg !1897, !llvm.loop !1904

58:                                               ; preds = %48, %21, %42
  %59 = phi i64 [ %36, %42 ], [ %16, %21 ], [ %50, %48 ], !dbg !1906
  %60 = freeze i64 %59, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %59, metadata !1860, metadata !DIExpression()), !dbg !1861
  %61 = icmp sgt i64 %60, -1, !dbg !1909
  br i1 %61, label %70, label %62, !dbg !1911

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr %0, metadata !1751, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %1, metadata !1752, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %59, metadata !1753, metadata !DIExpression()), !dbg !1912
  %63 = icmp eq i64 %60, -1, !dbg !1907
  br i1 %63, label %64, label %65, !dbg !1913

64:                                               ; preds = %53, %8, %45, %62
  br label %65, !dbg !1913

65:                                               ; preds = %42, %62, %64
  %66 = phi ptr [ @.str.1.52, %64 ], [ @.str.2.53, %62 ], [ @.str.2.53, %42 ]
  %67 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %66, i32 noundef 5) #40, !dbg !1912
  call void @llvm.dbg.value(metadata ptr %67, metadata !1754, metadata !DIExpression()), !dbg !1912
  %68 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #40, !dbg !1914
  %69 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #40, !dbg !1914
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %68, ptr noundef %69) #40, !dbg !1914
  tail call void @argmatch_valid(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1915
  tail call void %5() #40, !dbg !1916
  br label %70, !dbg !1917

70:                                               ; preds = %58, %65
  %71 = phi i64 [ -1, %65 ], [ %60, %58 ], !dbg !1861
  ret i64 %71, !dbg !1918
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @argmatch_to_argument(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #18 !dbg !1919 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1923, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %1, metadata !1924, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %2, metadata !1925, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %3, metadata !1926, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !1930
  %5 = load ptr, ptr %1, align 8, !dbg !1931, !tbaa !899
  %6 = icmp eq ptr %5, null, !dbg !1933
  br i1 %6, label %21, label %7, !dbg !1933

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %2, metadata !1698, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1934
  %8 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %3), !dbg !1937
  %9 = icmp eq i32 %8, 0, !dbg !1938
  call void @llvm.dbg.value(metadata i64 0, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1930
  br i1 %9, label %21, label %10, !dbg !1939

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %12, %16 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1927, metadata !DIExpression()), !dbg !1930
  %12 = add i64 %11, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %12, metadata !1927, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %11, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1930
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1931
  %14 = load ptr, ptr %13, align 8, !dbg !1931, !tbaa !899
  %15 = icmp eq ptr %14, null, !dbg !1933
  br i1 %15, label %21, label %16, !dbg !1933, !llvm.loop !1941

16:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %12, metadata !1927, metadata !DIExpression()), !dbg !1930
  %17 = mul i64 %12, %3, !dbg !1943
  %18 = getelementptr inbounds i8, ptr %2, i64 %17, !dbg !1944
  call void @llvm.dbg.value(metadata ptr %0, metadata !1693, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %18, metadata !1698, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1934
  %19 = tail call i32 @bcmp(ptr %0, ptr %18, i64 %3), !dbg !1937
  %20 = icmp eq i32 %19, 0, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %12, metadata !1927, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1930
  br i1 %20, label %21, label %10, !dbg !1939, !llvm.loop !1941

21:                                               ; preds = %16, %10, %7, %4
  %22 = phi ptr [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %14, %16 ], !dbg !1931
  ret ptr %22, !dbg !1945
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !1946 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1948, metadata !DIExpression()), !dbg !1949
  store ptr %0, ptr @file_name, align 8, !dbg !1950, !tbaa !899
  ret void, !dbg !1951
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #19 !dbg !1952 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1956, metadata !DIExpression()), !dbg !1957
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1958, !tbaa !1222
  ret void, !dbg !1959
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1960 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1965, !tbaa !899
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1966
  %3 = icmp eq i32 %2, 0, !dbg !1967
  br i1 %3, label %22, label %4, !dbg !1968

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1969, !tbaa !1222, !range !1258, !noundef !949
  %6 = icmp eq i8 %5, 0, !dbg !1969
  br i1 %6, label %11, label %7, !dbg !1970

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1971
  %9 = load i32, ptr %8, align 4, !dbg !1971, !tbaa !965
  %10 = icmp eq i32 %9, 32, !dbg !1972
  br i1 %10, label %22, label %11, !dbg !1973

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1.78, i32 noundef 5) #40, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %12, metadata !1962, metadata !DIExpression()), !dbg !1975
  %13 = load ptr, ptr @file_name, align 8, !dbg !1976, !tbaa !899
  %14 = icmp eq ptr %13, null, !dbg !1976
  %15 = tail call ptr @__errno_location() #43, !dbg !1978
  %16 = load i32, ptr %15, align 4, !dbg !1978, !tbaa !965
  br i1 %14, label %19, label %17, !dbg !1979

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1980
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.79, ptr noundef %18, ptr noundef %12) #40, !dbg !1980
  br label %20, !dbg !1980

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.80, ptr noundef %12) #40, !dbg !1981
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1982, !tbaa !965
  tail call void @_exit(i32 noundef %21) #42, !dbg !1983
  unreachable, !dbg !1983

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1984, !tbaa !899
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1986
  %25 = icmp eq i32 %24, 0, !dbg !1987
  br i1 %25, label %28, label %26, !dbg !1988

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1989, !tbaa !965
  tail call void @_exit(i32 noundef %27) #42, !dbg !1990
  unreachable, !dbg !1990

28:                                               ; preds = %22
  ret void, !dbg !1991
}

; Function Attrs: noreturn
declare !dbg !1992 void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #21 !dbg !1993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1997, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata ptr %2, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata ptr %3, metadata !2000, metadata !DIExpression()), !dbg !2001
  tail call fastcc void @flush_stdout(), !dbg !2002
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2003, !tbaa !899
  %6 = icmp eq ptr %5, null, !dbg !2003
  br i1 %6, label %8, label %7, !dbg !2005

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2006
  br label %12, !dbg !2006

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2007, !tbaa !899
  %10 = tail call ptr @getprogname() #41, !dbg !2007
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef %10) #40, !dbg !2007
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2009
  ret void, !dbg !2010
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2011 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2013, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 1, metadata !2015, metadata !DIExpression()), !dbg !2018
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2021
  %2 = icmp slt i32 %1, 0, !dbg !2022
  br i1 %2, label %6, label %3, !dbg !2023

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2024, !tbaa !899
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2024
  br label %6, !dbg !2024

6:                                                ; preds = %3, %0
  ret void, !dbg !2025
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2026 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2028, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %1, metadata !2029, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %2, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata ptr %3, metadata !2031, metadata !DIExpression()), !dbg !2032
  %6 = load ptr, ptr @stderr, align 8, !dbg !2033, !tbaa !899
  call void @llvm.dbg.value(metadata ptr %6, metadata !2034, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata ptr %2, metadata !2074, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata ptr %3, metadata !2075, metadata !DIExpression()), !dbg !2076
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2078
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2079, !tbaa !965
  %9 = add i32 %8, 1, !dbg !2079
  store i32 %9, ptr @error_message_count, align 4, !dbg !2079, !tbaa !965
  %10 = icmp eq i32 %1, 0, !dbg !2080
  br i1 %10, label %20, label %11, !dbg !2082

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2083, metadata !DIExpression()), !dbg !2091
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2087, metadata !DIExpression()), !dbg !2094
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %12, metadata !2086, metadata !DIExpression()), !dbg !2091
  %13 = icmp eq ptr %12, null, !dbg !2096
  br i1 %13, label %14, label %16, !dbg !2098

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.82, ptr noundef nonnull @.str.5.83, i32 noundef 5) #40, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %15, metadata !2086, metadata !DIExpression()), !dbg !2091
  br label %16, !dbg !2100

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2091
  call void @llvm.dbg.value(metadata ptr %17, metadata !2086, metadata !DIExpression()), !dbg !2091
  %18 = load ptr, ptr @stderr, align 8, !dbg !2101, !tbaa !899
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.84, ptr noundef %17) #40, !dbg !2101
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2102
  br label %20, !dbg !2103

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2104, !tbaa !899
  call void @llvm.dbg.value(metadata i32 10, metadata !2105, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr %21, metadata !2110, metadata !DIExpression()), !dbg !2111
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2113
  %23 = load ptr, ptr %22, align 8, !dbg !2113, !tbaa !1821
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2113
  %25 = load ptr, ptr %24, align 8, !dbg !2113, !tbaa !1823
  %26 = icmp ult ptr %23, %25, !dbg !2113
  br i1 %26, label %29, label %27, !dbg !2113, !prof !1824

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2113
  br label %31, !dbg !2113

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2113
  store ptr %30, ptr %22, align 8, !dbg !2113, !tbaa !1821
  store i8 10, ptr %23, align 1, !dbg !2113, !tbaa !974
  br label %31, !dbg !2113

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2114, !tbaa !899
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2114
  %34 = icmp eq i32 %0, 0, !dbg !2115
  br i1 %34, label %36, label %35, !dbg !2117

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2118
  unreachable, !dbg !2118

36:                                               ; preds = %31
  ret void, !dbg !2119
}

declare !dbg !2120 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2123 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2126 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2129 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2133 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr %2, metadata !2139, metadata !DIExpression()), !dbg !2146
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2147
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2140, metadata !DIExpression()), !dbg !2148
  call void @llvm.va_start(ptr nonnull %4), !dbg !2149
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2150
  call void @llvm.va_end(ptr nonnull %4), !dbg !2151
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2152
  ret void, !dbg !2152
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #21 !dbg !496 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !508, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %1, metadata !509, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %2, metadata !510, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %3, metadata !511, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %4, metadata !512, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %5, metadata !513, metadata !DIExpression()), !dbg !2153
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2154, !tbaa !965
  %8 = icmp eq i32 %7, 0, !dbg !2154
  br i1 %8, label %23, label %9, !dbg !2156

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2157, !tbaa !965
  %11 = icmp eq i32 %10, %3, !dbg !2160
  br i1 %11, label %12, label %22, !dbg !2161

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2162, !tbaa !899
  %14 = icmp eq ptr %13, %2, !dbg !2163
  br i1 %14, label %36, label %15, !dbg !2164

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2165
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2166
  br i1 %18, label %19, label %22, !dbg !2166

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2167
  %21 = icmp eq i32 %20, 0, !dbg !2168
  br i1 %21, label %36, label %22, !dbg !2169

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2170, !tbaa !899
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2171, !tbaa !965
  br label %23, !dbg !2172

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2173
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2174, !tbaa !899
  %25 = icmp eq ptr %24, null, !dbg !2174
  br i1 %25, label %27, label %26, !dbg !2176

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2177
  br label %31, !dbg !2177

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2178, !tbaa !899
  %29 = tail call ptr @getprogname() #41, !dbg !2178
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.87, ptr noundef %29) #40, !dbg !2178
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2180, !tbaa !899
  %33 = icmp eq ptr %2, null, !dbg !2180
  %34 = select i1 %33, ptr @.str.3.88, ptr @.str.2.89, !dbg !2180
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2180
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2181
  br label %36, !dbg !2182

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2182
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2183 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2187, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %1, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %2, metadata !2189, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %3, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %4, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.va_start(ptr nonnull %6), !dbg !2196
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2197
  call void @llvm.va_end(ptr nonnull %6), !dbg !2198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2199
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
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2273, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %1, metadata !2274, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 0, metadata !2275, metadata !DIExpression()), !dbg !2290
  %4 = and i32 %1, 64, !dbg !2291
  %5 = icmp eq i32 %4, 0, !dbg !2291
  br i1 %5, label %22, label %6, !dbg !2292

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !2293
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2277, metadata !DIExpression()), !dbg !2294
  call void @llvm.va_start(ptr nonnull %3), !dbg !2295
  %7 = load i32, ptr %3, align 16, !dbg !2296
  %8 = icmp ult i32 %7, 41, !dbg !2296
  br i1 %8, label %9, label %15, !dbg !2296

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2296
  %11 = load ptr, ptr %10, align 16, !dbg !2296
  %12 = zext i32 %7 to i64, !dbg !2296
  %13 = getelementptr i8, ptr %11, i64 %12, !dbg !2296
  %14 = add nuw nsw i32 %7, 8, !dbg !2296
  store i32 %14, ptr %3, align 16, !dbg !2296
  br label %19, !dbg !2296

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2296
  %17 = load ptr, ptr %16, align 8, !dbg !2296
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2296
  store ptr %18, ptr %16, align 8, !dbg !2296
  br label %19, !dbg !2296

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %9 ], [ %17, %15 ], !dbg !2296
  %21 = load i32, ptr %20, align 4, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %21, metadata !2275, metadata !DIExpression()), !dbg !2290
  call void @llvm.va_end(ptr nonnull %3), !dbg !2297
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !2298
  br label %22, !dbg !2299

22:                                               ; preds = %19, %2
  %23 = phi i32 [ %21, %19 ], [ 0, %2 ], !dbg !2290
  call void @llvm.dbg.value(metadata i32 %23, metadata !2275, metadata !DIExpression()), !dbg !2290
  %24 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %23) #40, !dbg !2300
  %25 = call i32 @fd_safer(i32 noundef %24) #40, !dbg !2301
  ret i32 %25, !dbg !2302
}

; Function Attrs: nofree
declare !dbg !2303 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #23 !dbg !2304 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2307, !tbaa !899
  ret ptr %1, !dbg !2308
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #15 !dbg !2309 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2311, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 1, metadata !2312, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8 1, metadata !2314, metadata !DIExpression()), !dbg !2338
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #40, !dbg !2339
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2315, metadata !DIExpression()), !dbg !2340
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #40, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %3, metadata !2337, metadata !DIExpression()), !dbg !2338
  %4 = icmp eq i32 %3, 0, !dbg !2342
  br i1 %4, label %5, label %15, !dbg !2344

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !2345
  %7 = load i64, ptr %6, align 8, !dbg !2345, !tbaa !2346
  %8 = icmp ult i64 %7, 2, !dbg !2347
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !2348
  %10 = load i32, ptr %9, align 8, !dbg !2348
  %11 = and i32 %10, 61440, !dbg !2348
  %12 = icmp eq i32 %11, 4096, !dbg !2348
  %13 = select i1 %8, i1 %12, i1 false, !dbg !2348
  %14 = zext i1 %13 to i32, !dbg !2348
  br label %15, !dbg !2349

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !2338
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #40, !dbg !2350
  ret i32 %16, !dbg !2350
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2351 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2353, metadata !DIExpression()), !dbg !2356
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %2, metadata !2354, metadata !DIExpression()), !dbg !2356
  %3 = icmp eq ptr %2, null, !dbg !2358
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2358
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %5, metadata !2355, metadata !DIExpression()), !dbg !2356
  %6 = ptrtoint ptr %5 to i64, !dbg !2359
  %7 = ptrtoint ptr %0 to i64, !dbg !2359
  %8 = sub i64 %6, %7, !dbg !2359
  %9 = icmp sgt i64 %8, 6, !dbg !2361
  br i1 %9, label %10, label %19, !dbg !2362

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %11, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i64 7, metadata !2368, metadata !DIExpression()), !dbg !2369
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.104, i64 7), !dbg !2371
  %13 = icmp eq i32 %12, 0, !dbg !2372
  br i1 %13, label %14, label %19, !dbg !2373

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2353, metadata !DIExpression()), !dbg !2356
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.105, i64 noundef 3) #41, !dbg !2374
  %16 = icmp eq i32 %15, 0, !dbg !2377
  %17 = select i1 %16, i64 3, i64 0, !dbg !2378
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2378
  br label %19, !dbg !2378

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2356
  call void @llvm.dbg.value(metadata ptr %21, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata ptr %20, metadata !2353, metadata !DIExpression()), !dbg !2356
  store ptr %20, ptr @program_name, align 8, !dbg !2379, !tbaa !899
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2380, !tbaa !899
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2381, !tbaa !899
  ret void, !dbg !2382
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2383 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !544 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !551, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %1, metadata !552, metadata !DIExpression()), !dbg !2384
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2385
  call void @llvm.dbg.value(metadata ptr %5, metadata !553, metadata !DIExpression()), !dbg !2384
  %6 = icmp eq ptr %5, %0, !dbg !2386
  br i1 %6, label %7, label %14, !dbg !2388

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2389
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %4, metadata !559, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata ptr %4, metadata !2392, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata ptr %4, metadata !2401, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 0, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 8, metadata !2408, metadata !DIExpression()), !dbg !2409
  store i64 0, ptr %4, align 8, !dbg !2411
  call void @llvm.dbg.value(metadata ptr %3, metadata !554, metadata !DIExpression(DW_OP_deref)), !dbg !2384
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2412
  %9 = icmp eq i64 %8, 2, !dbg !2414
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !554, metadata !DIExpression()), !dbg !2384
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2415
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2384
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2416
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2384
  ret ptr %15, !dbg !2416
}

; Function Attrs: nounwind
declare !dbg !2417 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2423 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2428, metadata !DIExpression()), !dbg !2431
  %2 = tail call ptr @__errno_location() #43, !dbg !2432
  %3 = load i32, ptr %2, align 4, !dbg !2432, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %3, metadata !2429, metadata !DIExpression()), !dbg !2431
  %4 = icmp eq ptr %0, null, !dbg !2433
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2433
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #47, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %6, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i32 %3, ptr %2, align 4, !dbg !2435, !tbaa !965
  ret ptr %6, !dbg !2436
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2437 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2443, metadata !DIExpression()), !dbg !2444
  %2 = icmp eq ptr %0, null, !dbg !2445
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2445
  %4 = load i32, ptr %3, align 8, !dbg !2446, !tbaa !2447
  ret i32 %4, !dbg !2449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2450 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %1, metadata !2455, metadata !DIExpression()), !dbg !2456
  %3 = icmp eq ptr %0, null, !dbg !2457
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2457
  store i32 %1, ptr %4, align 8, !dbg !2458, !tbaa !2447
  ret void, !dbg !2459
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2460 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2464, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 %1, metadata !2465, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %2, metadata !2466, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 %1, metadata !2467, metadata !DIExpression()), !dbg !2472
  %4 = icmp eq ptr %0, null, !dbg !2473
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2473
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2474
  %7 = lshr i8 %1, 5, !dbg !2475
  %8 = zext i8 %7 to i64, !dbg !2475
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2476
  call void @llvm.dbg.value(metadata ptr %9, metadata !2468, metadata !DIExpression()), !dbg !2472
  %10 = and i8 %1, 31, !dbg !2477
  %11 = zext i8 %10 to i32, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %11, metadata !2470, metadata !DIExpression()), !dbg !2472
  %12 = load i32, ptr %9, align 4, !dbg !2478, !tbaa !965
  %13 = lshr i32 %12, %11, !dbg !2479
  %14 = and i32 %13, 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %14, metadata !2471, metadata !DIExpression()), !dbg !2472
  %15 = xor i32 %13, %2, !dbg !2481
  %16 = and i32 %15, 1, !dbg !2481
  %17 = shl nuw i32 %16, %11, !dbg !2482
  %18 = xor i32 %17, %12, !dbg !2483
  store i32 %18, ptr %9, align 4, !dbg !2483, !tbaa !965
  ret i32 %14, !dbg !2484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %1, metadata !2490, metadata !DIExpression()), !dbg !2492
  %3 = icmp eq ptr %0, null, !dbg !2493
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2495
  call void @llvm.dbg.value(metadata ptr %4, metadata !2489, metadata !DIExpression()), !dbg !2492
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2496
  %6 = load i32, ptr %5, align 4, !dbg !2496, !tbaa !2497
  call void @llvm.dbg.value(metadata i32 %6, metadata !2491, metadata !DIExpression()), !dbg !2492
  store i32 %1, ptr %5, align 4, !dbg !2498, !tbaa !2497
  ret i32 %6, !dbg !2499
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2500 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata ptr %2, metadata !2506, metadata !DIExpression()), !dbg !2507
  %4 = icmp eq ptr %0, null, !dbg !2508
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %5, metadata !2504, metadata !DIExpression()), !dbg !2507
  store i32 10, ptr %5, align 8, !dbg !2511, !tbaa !2447
  %6 = icmp ne ptr %1, null, !dbg !2512
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2514
  br i1 %8, label %10, label %9, !dbg !2514

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2515
  unreachable, !dbg !2515

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2516
  store ptr %1, ptr %11, align 8, !dbg !2517, !tbaa !2518
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2519
  store ptr %2, ptr %12, align 8, !dbg !2520, !tbaa !2521
  ret void, !dbg !2522
}

; Function Attrs: noreturn nounwind
declare !dbg !2523 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2524 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2529, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %2, metadata !2530, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %3, metadata !2531, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %4, metadata !2532, metadata !DIExpression()), !dbg !2536
  %6 = icmp eq ptr %4, null, !dbg !2537
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2537
  call void @llvm.dbg.value(metadata ptr %7, metadata !2533, metadata !DIExpression()), !dbg !2536
  %8 = tail call ptr @__errno_location() #43, !dbg !2538
  %9 = load i32, ptr %8, align 4, !dbg !2538, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %9, metadata !2534, metadata !DIExpression()), !dbg !2536
  %10 = load i32, ptr %7, align 8, !dbg !2539, !tbaa !2447
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2540
  %12 = load i32, ptr %11, align 4, !dbg !2540, !tbaa !2497
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2541
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2542
  %15 = load ptr, ptr %14, align 8, !dbg !2542, !tbaa !2518
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2543
  %17 = load ptr, ptr %16, align 8, !dbg !2543, !tbaa !2521
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %18, metadata !2535, metadata !DIExpression()), !dbg !2536
  store i32 %9, ptr %8, align 4, !dbg !2545, !tbaa !965
  ret i64 %18, !dbg !2546
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2547 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %1, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %2, metadata !2555, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %3, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %4, metadata !2557, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %5, metadata !2558, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %6, metadata !2559, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %7, metadata !2560, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %8, metadata !2561, metadata !DIExpression()), !dbg !2615
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2616
  %17 = icmp eq i64 %16, 1, !dbg !2617
  call void @llvm.dbg.value(metadata i1 %17, metadata !2562, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2615
  call void @llvm.dbg.value(metadata i64 0, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 0, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr null, metadata !2565, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 0, metadata !2566, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2567, metadata !DIExpression()), !dbg !2615
  %18 = trunc i32 %5 to i8, !dbg !2618
  %19 = lshr i8 %18, 1, !dbg !2618
  %20 = and i8 %19, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i8 %20, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2615
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2619

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2620
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2621
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2622
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2623
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2615
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2624
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2625
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %39, metadata !2570, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %38, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %37, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %36, metadata !2567, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %35, metadata !2566, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %34, metadata !2565, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %33, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 0, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %32, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %31, metadata !2561, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %30, metadata !2560, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %29, metadata !2557, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.label(metadata !2608), !dbg !2626
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2615
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
  ], !dbg !2627

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 5, metadata !2557, metadata !DIExpression()), !dbg !2615
  br label %115, !dbg !2628

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 5, metadata !2557, metadata !DIExpression()), !dbg !2615
  %43 = and i8 %37, 1, !dbg !2629
  %44 = icmp eq i8 %43, 0, !dbg !2629
  br i1 %44, label %45, label %115, !dbg !2628

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2631
  br i1 %46, label %115, label %47, !dbg !2634

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2631, !tbaa !974
  br label %115, !dbg !2631

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.118, metadata !640, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %29, metadata !641, metadata !DIExpression()), !dbg !2635
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.11.118, i32 noundef 5) #40, !dbg !2639
  call void @llvm.dbg.value(metadata ptr %49, metadata !642, metadata !DIExpression()), !dbg !2635
  %50 = icmp eq ptr %49, @.str.11.118, !dbg !2640
  br i1 %50, label %51, label %60, !dbg !2642

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2643
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2644
  call void @llvm.dbg.declare(metadata ptr %13, metadata !644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %13, metadata !2646, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %13, metadata !2654, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 8, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i64 0, ptr %13, align 8, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %12, metadata !643, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2662
  %53 = icmp eq i64 %52, 3, !dbg !2664
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !643, metadata !DIExpression()), !dbg !2635
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2665
  %57 = icmp eq i32 %29, 9, !dbg !2665
  %58 = select i1 %57, ptr @.str.10.120, ptr @.str.12.121, !dbg !2665
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2665
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2666
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2635
  call void @llvm.dbg.value(metadata ptr %61, metadata !2560, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr @.str.12.121, metadata !640, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %29, metadata !641, metadata !DIExpression()), !dbg !2667
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.12.121, i32 noundef 5) #40, !dbg !2669
  call void @llvm.dbg.value(metadata ptr %62, metadata !642, metadata !DIExpression()), !dbg !2667
  %63 = icmp eq ptr %62, @.str.12.121, !dbg !2670
  br i1 %63, label %64, label %73, !dbg !2671

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2672
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %11, metadata !644, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %11, metadata !2646, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %11, metadata !2654, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 8, metadata !2658, metadata !DIExpression()), !dbg !2677
  store i64 0, ptr %11, align 8, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %10, metadata !643, metadata !DIExpression(DW_OP_deref)), !dbg !2667
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2680
  %66 = icmp eq i64 %65, 3, !dbg !2681
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !643, metadata !DIExpression()), !dbg !2667
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2682
  %70 = icmp eq i32 %29, 9, !dbg !2682
  %71 = select i1 %70, ptr @.str.10.120, ptr @.str.12.121, !dbg !2682
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2682
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2683
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2683
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2561, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %74, metadata !2560, metadata !DIExpression()), !dbg !2615
  %76 = and i8 %37, 1, !dbg !2684
  %77 = icmp eq i8 %76, 0, !dbg !2684
  br i1 %77, label %78, label %93, !dbg !2685

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2572, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 0, metadata !2563, metadata !DIExpression()), !dbg !2615
  %79 = load i8, ptr %74, align 1, !dbg !2687, !tbaa !974
  %80 = icmp eq i8 %79, 0, !dbg !2689
  br i1 %80, label %93, label %81, !dbg !2689

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2572, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %84, metadata !2563, metadata !DIExpression()), !dbg !2615
  %85 = icmp ult i64 %84, %40, !dbg !2690
  br i1 %85, label %86, label %88, !dbg !2693

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2690
  store i8 %82, ptr %87, align 1, !dbg !2690, !tbaa !974
  br label %88, !dbg !2690

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %89, metadata !2563, metadata !DIExpression()), !dbg !2615
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2694
  call void @llvm.dbg.value(metadata ptr %90, metadata !2572, metadata !DIExpression()), !dbg !2686
  %91 = load i8, ptr %90, align 1, !dbg !2687, !tbaa !974
  %92 = icmp eq i8 %91, 0, !dbg !2689
  br i1 %92, label %93, label %81, !dbg !2689, !llvm.loop !2695

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2697
  call void @llvm.dbg.value(metadata i64 %94, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2567, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %75, metadata !2565, metadata !DIExpression()), !dbg !2615
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2698
  call void @llvm.dbg.value(metadata i64 %95, metadata !2566, metadata !DIExpression()), !dbg !2615
  br label %115, !dbg !2699

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2567, metadata !DIExpression()), !dbg !2615
  br label %97, !dbg !2700

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %98, metadata !2567, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2568, metadata !DIExpression()), !dbg !2615
  br label %99, !dbg !2701

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2623
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %101, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %100, metadata !2567, metadata !DIExpression()), !dbg !2615
  %102 = and i8 %101, 1, !dbg !2702
  %103 = icmp eq i8 %102, 0, !dbg !2702
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2704
  br label %105, !dbg !2704

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2615
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2618
  call void @llvm.dbg.value(metadata i8 %107, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %106, metadata !2567, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 2, metadata !2557, metadata !DIExpression()), !dbg !2615
  %108 = and i8 %107, 1, !dbg !2705
  %109 = icmp eq i8 %108, 0, !dbg !2705
  br i1 %109, label %110, label %115, !dbg !2707

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2708
  br i1 %111, label %115, label %112, !dbg !2711

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2708, !tbaa !974
  br label %115, !dbg !2708

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2568, metadata !DIExpression()), !dbg !2615
  br label %115, !dbg !2712

114:                                              ; preds = %28
  call void @abort() #42, !dbg !2713
  unreachable, !dbg !2713

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2697
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.120, %45 ], [ @.str.10.120, %47 ], [ @.str.10.120, %42 ], [ %34, %28 ], [ @.str.12.121, %110 ], [ @.str.12.121, %112 ], [ @.str.12.121, %105 ], [ @.str.10.120, %41 ], !dbg !2615
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2615
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2615
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %123, metadata !2568, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %122, metadata !2567, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %121, metadata !2566, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %120, metadata !2565, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %119, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %118, metadata !2561, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata ptr %117, metadata !2560, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 %116, metadata !2557, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2714
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
  br label %138, !dbg !2715

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2697
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2620
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2624
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2625
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2716
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2717
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %145, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %144, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %143, metadata !2570, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %142, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %141, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %140, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %139, metadata !2556, metadata !DIExpression()), !dbg !2615
  %147 = icmp eq i64 %139, -1, !dbg !2718
  br i1 %147, label %148, label %152, !dbg !2719

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2720
  %150 = load i8, ptr %149, align 1, !dbg !2720, !tbaa !974
  %151 = icmp eq i8 %150, 0, !dbg !2721
  br i1 %151, label %627, label %154, !dbg !2722

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2723
  br i1 %153, label %627, label %154, !dbg !2722

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2724
  br i1 %129, label %155, label %170, !dbg !2725

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2727
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2728
  br i1 %157, label %158, label %160, !dbg !2728

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %159, metadata !2556, metadata !DIExpression()), !dbg !2615
  br label %160, !dbg !2730

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2730
  call void @llvm.dbg.value(metadata i64 %161, metadata !2556, metadata !DIExpression()), !dbg !2615
  %162 = icmp ugt i64 %156, %161, !dbg !2731
  br i1 %162, label %170, label %163, !dbg !2732

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %164, metadata !2734, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %120, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %121, metadata !2738, metadata !DIExpression()), !dbg !2739
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2741
  %166 = icmp ne i32 %165, 0, !dbg !2742
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2743
  %168 = xor i1 %166, true, !dbg !2743
  %169 = zext i1 %168 to i8, !dbg !2743
  br i1 %167, label %170, label %688, !dbg !2743

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2724
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2724
  call void @llvm.dbg.value(metadata i8 %173, metadata !2579, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %171, metadata !2556, metadata !DIExpression()), !dbg !2615
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2744
  %175 = load i8, ptr %174, align 1, !dbg !2744, !tbaa !974
  call void @llvm.dbg.value(metadata i8 %175, metadata !2584, metadata !DIExpression()), !dbg !2724
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
  ], !dbg !2745

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2746

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2747

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2724
  %179 = and i8 %144, 1, !dbg !2751
  %180 = icmp eq i8 %179, 0, !dbg !2751
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2751
  br i1 %181, label %182, label %198, !dbg !2751

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2753
  br i1 %183, label %184, label %186, !dbg !2757

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2753
  store i8 39, ptr %185, align 1, !dbg !2753, !tbaa !974
  br label %186, !dbg !2753

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2757
  call void @llvm.dbg.value(metadata i64 %187, metadata !2563, metadata !DIExpression()), !dbg !2615
  %188 = icmp ult i64 %187, %146, !dbg !2758
  br i1 %188, label %189, label %191, !dbg !2761

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2758
  store i8 36, ptr %190, align 1, !dbg !2758, !tbaa !974
  br label %191, !dbg !2758

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %192, metadata !2563, metadata !DIExpression()), !dbg !2615
  %193 = icmp ult i64 %192, %146, !dbg !2762
  br i1 %193, label %194, label %196, !dbg !2765

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2762
  store i8 39, ptr %195, align 1, !dbg !2762, !tbaa !974
  br label %196, !dbg !2762

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %197, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2615
  br label %198, !dbg !2766

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2615
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %200, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %199, metadata !2563, metadata !DIExpression()), !dbg !2615
  %201 = icmp ult i64 %199, %146, !dbg !2767
  br i1 %201, label %202, label %204, !dbg !2770

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2767
  store i8 92, ptr %203, align 1, !dbg !2767, !tbaa !974
  br label %204, !dbg !2767

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %205, metadata !2563, metadata !DIExpression()), !dbg !2615
  br i1 %126, label %206, label %491, !dbg !2771

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2773
  %208 = icmp ult i64 %207, %171, !dbg !2774
  br i1 %208, label %209, label %480, !dbg !2775

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2776
  %211 = load i8, ptr %210, align 1, !dbg !2776, !tbaa !974
  %212 = add i8 %211, -48, !dbg !2777
  %213 = icmp ult i8 %212, 10, !dbg !2777
  br i1 %213, label %214, label %480, !dbg !2777

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2778
  br i1 %215, label %216, label %218, !dbg !2782

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2778
  store i8 48, ptr %217, align 1, !dbg !2778, !tbaa !974
  br label %218, !dbg !2778

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %219, metadata !2563, metadata !DIExpression()), !dbg !2615
  %220 = icmp ult i64 %219, %146, !dbg !2783
  br i1 %220, label %221, label %223, !dbg !2786

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2783
  store i8 48, ptr %222, align 1, !dbg !2783, !tbaa !974
  br label %223, !dbg !2783

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %224, metadata !2563, metadata !DIExpression()), !dbg !2615
  br label %480, !dbg !2787

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2788

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2789

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2790

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2792

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2794
  %231 = icmp ult i64 %230, %171, !dbg !2795
  br i1 %231, label %232, label %480, !dbg !2796

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2797
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2798
  %235 = load i8, ptr %234, align 1, !dbg !2798, !tbaa !974
  %236 = icmp eq i8 %235, 63, !dbg !2799
  br i1 %236, label %237, label %480, !dbg !2800

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2801
  %239 = load i8, ptr %238, align 1, !dbg !2801, !tbaa !974
  %240 = sext i8 %239 to i32, !dbg !2801
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
  ], !dbg !2802

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2803

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %230, metadata !2577, metadata !DIExpression()), !dbg !2714
  %243 = icmp ult i64 %140, %146, !dbg !2805
  br i1 %243, label %244, label %246, !dbg !2808

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2805
  store i8 63, ptr %245, align 1, !dbg !2805, !tbaa !974
  br label %246, !dbg !2805

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %247, metadata !2563, metadata !DIExpression()), !dbg !2615
  %248 = icmp ult i64 %247, %146, !dbg !2809
  br i1 %248, label %249, label %251, !dbg !2812

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2809
  store i8 34, ptr %250, align 1, !dbg !2809, !tbaa !974
  br label %251, !dbg !2809

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %252, metadata !2563, metadata !DIExpression()), !dbg !2615
  %253 = icmp ult i64 %252, %146, !dbg !2813
  br i1 %253, label %254, label %256, !dbg !2816

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2813
  store i8 34, ptr %255, align 1, !dbg !2813, !tbaa !974
  br label %256, !dbg !2813

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %257, metadata !2563, metadata !DIExpression()), !dbg !2615
  %258 = icmp ult i64 %257, %146, !dbg !2817
  br i1 %258, label %259, label %261, !dbg !2820

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2817
  store i8 63, ptr %260, align 1, !dbg !2817, !tbaa !974
  br label %261, !dbg !2817

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %262, metadata !2563, metadata !DIExpression()), !dbg !2615
  br label %480, !dbg !2821

263:                                              ; preds = %170
  br label %274, !dbg !2822

264:                                              ; preds = %170
  br label %274, !dbg !2823

265:                                              ; preds = %170
  br label %272, !dbg !2824

266:                                              ; preds = %170
  br label %272, !dbg !2825

267:                                              ; preds = %170
  br label %274, !dbg !2826

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2827

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2828

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2831

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2833

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2834
  call void @llvm.dbg.label(metadata !2609), !dbg !2835
  br i1 %134, label %274, label %670, !dbg !2836

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2834
  call void @llvm.dbg.label(metadata !2611), !dbg !2838
  br i1 %125, label %535, label %491, !dbg !2839

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2840

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2841, !tbaa !974
  %279 = icmp eq i8 %278, 0, !dbg !2843
  br i1 %279, label %280, label %480, !dbg !2844

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2845
  br i1 %281, label %282, label %480, !dbg !2847

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2724
  br label %283, !dbg !2848

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2724
  call void @llvm.dbg.value(metadata i8 %284, metadata !2583, metadata !DIExpression()), !dbg !2724
  br i1 %134, label %480, label %670, !dbg !2849

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2724
  br i1 %133, label %286, label %480, !dbg !2851

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2852

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2855
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2857
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2857
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %292, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %291, metadata !2564, metadata !DIExpression()), !dbg !2615
  %293 = icmp ult i64 %140, %292, !dbg !2858
  br i1 %293, label %294, label %296, !dbg !2861

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2858
  store i8 39, ptr %295, align 1, !dbg !2858, !tbaa !974
  br label %296, !dbg !2858

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %297, metadata !2563, metadata !DIExpression()), !dbg !2615
  %298 = icmp ult i64 %297, %292, !dbg !2862
  br i1 %298, label %299, label %301, !dbg !2865

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2862
  store i8 92, ptr %300, align 1, !dbg !2862, !tbaa !974
  br label %301, !dbg !2862

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %302, metadata !2563, metadata !DIExpression()), !dbg !2615
  %303 = icmp ult i64 %302, %292, !dbg !2866
  br i1 %303, label %304, label %306, !dbg !2869

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2866
  store i8 39, ptr %305, align 1, !dbg !2866, !tbaa !974
  br label %306, !dbg !2866

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2869
  call void @llvm.dbg.value(metadata i64 %307, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2615
  br label %480, !dbg !2870

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2871

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2585, metadata !DIExpression()), !dbg !2872
  %310 = tail call ptr @__ctype_b_loc() #43, !dbg !2873
  %311 = load ptr, ptr %310, align 8, !dbg !2873, !tbaa !899
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2873
  %314 = load i16, ptr %313, align 2, !dbg !2873, !tbaa !1006
  %315 = lshr i16 %314, 14, !dbg !2875
  %316 = trunc i16 %315 to i8, !dbg !2875
  %317 = and i8 %316, 1, !dbg !2875
  call void @llvm.dbg.value(metadata i8 %317, metadata !2588, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %171, metadata !2556, metadata !DIExpression()), !dbg !2615
  %318 = icmp eq i8 %317, 0, !dbg !2876
  call void @llvm.dbg.value(metadata i1 %318, metadata !2583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2724
  br label %368, !dbg !2877

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2878
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2589, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %14, metadata !2646, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %14, metadata !2654, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 8, metadata !2658, metadata !DIExpression()), !dbg !2882
  store i64 0, ptr %14, align 8, !dbg !2884
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8 1, metadata !2588, metadata !DIExpression()), !dbg !2872
  %320 = icmp eq i64 %171, -1, !dbg !2885
  br i1 %320, label %321, label %323, !dbg !2887

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %322, metadata !2556, metadata !DIExpression()), !dbg !2615
  br label %323, !dbg !2889

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2724
  call void @llvm.dbg.value(metadata i64 %324, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2890
  %325 = sub i64 %324, %145, !dbg !2891
  call void @llvm.dbg.value(metadata ptr %15, metadata !2592, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #40, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %326, metadata !2596, metadata !DIExpression()), !dbg !2892
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2894

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2872
  %328 = icmp ugt i64 %324, %145, !dbg !2895
  br i1 %328, label %331, label %329, !dbg !2897

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2872
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %324, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i1 true, metadata !2583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2724
  br label %368, !dbg !2877

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2872
  br label %360, !dbg !2900

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2585, metadata !DIExpression()), !dbg !2872
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2902
  %335 = load i8, ptr %334, align 1, !dbg !2902, !tbaa !974
  %336 = icmp eq i8 %335, 0, !dbg !2897
  br i1 %336, label %363, label %337, !dbg !2903

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %338, metadata !2585, metadata !DIExpression()), !dbg !2872
  %339 = add i64 %338, %145, !dbg !2905
  %340 = icmp eq i64 %338, %325, !dbg !2895
  br i1 %340, label %363, label %331, !dbg !2897, !llvm.loop !2906

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2907
  %344 = and i1 %343, %133, !dbg !2907
  call void @llvm.dbg.value(metadata i64 1, metadata !2597, metadata !DIExpression()), !dbg !2908
  br i1 %344, label %345, label %354, !dbg !2907

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2597, metadata !DIExpression()), !dbg !2908
  %347 = add i64 %346, %145, !dbg !2909
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2911
  %349 = load i8, ptr %348, align 1, !dbg !2911, !tbaa !974
  %350 = sext i8 %349 to i32, !dbg !2911
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2912

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %352, metadata !2597, metadata !DIExpression()), !dbg !2908
  %353 = icmp eq i64 %352, %326, !dbg !2914
  br i1 %353, label %354, label %345, !dbg !2915, !llvm.loop !2916

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2918, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %355, metadata !2592, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %355, metadata !2920, metadata !DIExpression()), !dbg !2928
  %356 = call i32 @iswprint(i32 noundef %355) #40, !dbg !2930
  %357 = icmp ne i32 %356, 0, !dbg !2931
  %358 = zext i1 %357 to i8, !dbg !2932
  call void @llvm.dbg.value(metadata i8 %358, metadata !2588, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %326, metadata !2585, metadata !DIExpression()), !dbg !2872
  br label %363, !dbg !2933

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2588, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2872
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2899
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2588, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2872
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %324, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i1 %361, metadata !2583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2724
  br label %368, !dbg !2877

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2588, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %364, metadata !2585, metadata !DIExpression()), !dbg !2872
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %324, metadata !2556, metadata !DIExpression()), !dbg !2615
  %366 = icmp eq i8 %365, 0, !dbg !2876
  call void @llvm.dbg.value(metadata i1 %366, metadata !2583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2724
  %367 = icmp ugt i64 %364, 1, !dbg !2934
  br i1 %367, label %374, label %368, !dbg !2877

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2935
  br i1 %373, label %374, label %480, !dbg !2935

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %379, metadata !2605, metadata !DIExpression()), !dbg !2937
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2938

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2615
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2716
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2714
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2724
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2939
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2724
  call void @llvm.dbg.value(metadata i8 %387, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %386, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %385, metadata !2579, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %384, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %383, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %382, metadata !2563, metadata !DIExpression()), !dbg !2615
  br i1 %380, label %388, label %434, !dbg !2940

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2945

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2724
  %390 = and i8 %383, 1, !dbg !2948
  %391 = icmp eq i8 %390, 0, !dbg !2948
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2948
  br i1 %392, label %393, label %409, !dbg !2948

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2950
  br i1 %394, label %395, label %397, !dbg !2954

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2950
  store i8 39, ptr %396, align 1, !dbg !2950, !tbaa !974
  br label %397, !dbg !2950

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %398, metadata !2563, metadata !DIExpression()), !dbg !2615
  %399 = icmp ult i64 %398, %146, !dbg !2955
  br i1 %399, label %400, label %402, !dbg !2958

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2955
  store i8 36, ptr %401, align 1, !dbg !2955, !tbaa !974
  br label %402, !dbg !2955

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %403, metadata !2563, metadata !DIExpression()), !dbg !2615
  %404 = icmp ult i64 %403, %146, !dbg !2959
  br i1 %404, label %405, label %407, !dbg !2962

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2959
  store i8 39, ptr %406, align 1, !dbg !2959, !tbaa !974
  br label %407, !dbg !2959

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %408, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2615
  br label %409, !dbg !2963

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2615
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %411, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %410, metadata !2563, metadata !DIExpression()), !dbg !2615
  %412 = icmp ult i64 %410, %146, !dbg !2964
  br i1 %412, label %413, label %415, !dbg !2967

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2964
  store i8 92, ptr %414, align 1, !dbg !2964, !tbaa !974
  br label %415, !dbg !2964

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %416, metadata !2563, metadata !DIExpression()), !dbg !2615
  %417 = icmp ult i64 %416, %146, !dbg !2968
  br i1 %417, label %418, label %422, !dbg !2971

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2968
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2968
  store i8 %420, ptr %421, align 1, !dbg !2968, !tbaa !974
  br label %422, !dbg !2968

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %423, metadata !2563, metadata !DIExpression()), !dbg !2615
  %424 = icmp ult i64 %423, %146, !dbg !2972
  br i1 %424, label %425, label %430, !dbg !2975

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2972
  %428 = or i8 %427, 48, !dbg !2972
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2972
  store i8 %428, ptr %429, align 1, !dbg !2972, !tbaa !974
  br label %430, !dbg !2972

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %431, metadata !2563, metadata !DIExpression()), !dbg !2615
  %432 = and i8 %387, 7, !dbg !2976
  %433 = or i8 %432, 48, !dbg !2977
  call void @llvm.dbg.value(metadata i8 %433, metadata !2584, metadata !DIExpression()), !dbg !2724
  br label %443, !dbg !2978

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2979
  %436 = icmp eq i8 %435, 0, !dbg !2979
  br i1 %436, label %443, label %437, !dbg !2981

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2982
  br i1 %438, label %439, label %441, !dbg !2986

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2982
  store i8 92, ptr %440, align 1, !dbg !2982, !tbaa !974
  br label %441, !dbg !2982

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %442, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2579, metadata !DIExpression()), !dbg !2724
  br label %443, !dbg !2987

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2615
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2716
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2724
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2724
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2724
  call void @llvm.dbg.value(metadata i8 %448, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %447, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %446, metadata !2579, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %445, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %444, metadata !2563, metadata !DIExpression()), !dbg !2615
  %449 = add i64 %384, 1, !dbg !2988
  %450 = icmp ugt i64 %379, %449, !dbg !2990
  br i1 %450, label %451, label %478, !dbg !2991

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2992
  %453 = icmp ne i8 %452, 0, !dbg !2992
  %454 = and i8 %447, 1, !dbg !2992
  %455 = icmp eq i8 %454, 0, !dbg !2992
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2992
  br i1 %456, label %457, label %468, !dbg !2992

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2995
  br i1 %458, label %459, label %461, !dbg !2999

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2995
  store i8 39, ptr %460, align 1, !dbg !2995, !tbaa !974
  br label %461, !dbg !2995

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %462, metadata !2563, metadata !DIExpression()), !dbg !2615
  %463 = icmp ult i64 %462, %146, !dbg !3000
  br i1 %463, label %464, label %466, !dbg !3003

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3000
  store i8 39, ptr %465, align 1, !dbg !3000, !tbaa !974
  br label %466, !dbg !3000

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %467, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2615
  br label %468, !dbg !3004

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3005
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %470, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %469, metadata !2563, metadata !DIExpression()), !dbg !2615
  %471 = icmp ult i64 %469, %146, !dbg !3006
  br i1 %471, label %472, label %474, !dbg !3009

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3006
  store i8 %448, ptr %473, align 1, !dbg !3006, !tbaa !974
  br label %474, !dbg !3006

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %475, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %449, metadata !2577, metadata !DIExpression()), !dbg !2714
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3010
  %477 = load i8, ptr %476, align 1, !dbg !3010, !tbaa !974
  call void @llvm.dbg.value(metadata i8 %477, metadata !2584, metadata !DIExpression()), !dbg !2724
  br label %381, !dbg !3011, !llvm.loop !3012

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2724
  call void @llvm.dbg.value(metadata i8 %448, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %479, metadata !2583, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %447, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %446, metadata !2579, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %384, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %445, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %444, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %378, metadata !2556, metadata !DIExpression()), !dbg !2615
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3015
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2615
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2620
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2615
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2615
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2714
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2724
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2724
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2724
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %489, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %488, metadata !2583, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %487, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %173, metadata !2579, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %486, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %485, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %484, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %483, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %482, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %481, metadata !2556, metadata !DIExpression()), !dbg !2615
  br i1 %127, label %502, label %491, !dbg !3016

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
  br i1 %137, label %503, label %524, !dbg !3018

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3019

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
  %514 = lshr i8 %505, 5, !dbg !3020
  %515 = zext i8 %514 to i64, !dbg !3020
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3021
  %517 = load i32, ptr %516, align 4, !dbg !3021, !tbaa !965
  %518 = and i8 %505, 31, !dbg !3022
  %519 = zext i8 %518 to i32, !dbg !3022
  %520 = shl nuw i32 1, %519, !dbg !3023
  %521 = and i32 %517, %520, !dbg !3023
  %522 = icmp eq i32 %521, 0, !dbg !3023
  %523 = and i1 %172, %522, !dbg !3024
  br i1 %523, label %573, label %535, !dbg !3024

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
  br i1 %172, label %573, label %535, !dbg !3025

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3015
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2615
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2620
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2624
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2716
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3026
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2724
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2724
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %543, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %542, metadata !2583, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %541, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %540, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %539, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %538, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %537, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %536, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.label(metadata !2612), !dbg !3027
  br i1 %132, label %545, label %674, !dbg !3028

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2724
  %546 = and i8 %540, 1, !dbg !3030
  %547 = icmp eq i8 %546, 0, !dbg !3030
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3030
  br i1 %548, label %549, label %565, !dbg !3030

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3032
  br i1 %550, label %551, label %553, !dbg !3036

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3032
  store i8 39, ptr %552, align 1, !dbg !3032, !tbaa !974
  br label %553, !dbg !3032

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %554, metadata !2563, metadata !DIExpression()), !dbg !2615
  %555 = icmp ult i64 %554, %544, !dbg !3037
  br i1 %555, label %556, label %558, !dbg !3040

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3037
  store i8 36, ptr %557, align 1, !dbg !3037, !tbaa !974
  br label %558, !dbg !3037

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %559, metadata !2563, metadata !DIExpression()), !dbg !2615
  %560 = icmp ult i64 %559, %544, !dbg !3041
  br i1 %560, label %561, label %563, !dbg !3044

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3041
  store i8 39, ptr %562, align 1, !dbg !3041, !tbaa !974
  br label %563, !dbg !3041

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %564, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 1, metadata !2571, metadata !DIExpression()), !dbg !2615
  br label %565, !dbg !3045

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2724
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %567, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %566, metadata !2563, metadata !DIExpression()), !dbg !2615
  %568 = icmp ult i64 %566, %544, !dbg !3046
  br i1 %568, label %569, label %571, !dbg !3049

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3046
  store i8 92, ptr %570, align 1, !dbg !3046, !tbaa !974
  br label %571, !dbg !3046

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %544, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %543, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %542, metadata !2583, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %541, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %567, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %539, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %538, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %572, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %536, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.label(metadata !2613), !dbg !3050
  br label %600, !dbg !3051

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3015
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2615
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2620
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2624
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2716
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3026
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2724
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2724
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3054
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %582, metadata !2584, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %581, metadata !2583, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 %580, metadata !2582, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %579, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %578, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %577, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %576, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %575, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %574, metadata !2556, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.label(metadata !2613), !dbg !3050
  %584 = and i8 %578, 1, !dbg !3051
  %585 = icmp ne i8 %584, 0, !dbg !3051
  %586 = and i8 %580, 1, !dbg !3051
  %587 = icmp eq i8 %586, 0, !dbg !3051
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3051
  br i1 %588, label %589, label %600, !dbg !3051

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3055
  br i1 %590, label %591, label %593, !dbg !3059

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3055
  store i8 39, ptr %592, align 1, !dbg !3055, !tbaa !974
  br label %593, !dbg !3055

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %594, metadata !2563, metadata !DIExpression()), !dbg !2615
  %595 = icmp ult i64 %594, %583, !dbg !3060
  br i1 %595, label %596, label %598, !dbg !3063

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3060
  store i8 39, ptr %597, align 1, !dbg !3060, !tbaa !974
  br label %598, !dbg !3060

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %599, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2615
  br label %600, !dbg !3064

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2724
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2615
  call void @llvm.dbg.value(metadata i8 %609, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %608, metadata !2563, metadata !DIExpression()), !dbg !2615
  %610 = icmp ult i64 %608, %601, !dbg !3065
  br i1 %610, label %611, label %613, !dbg !3068

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3065
  store i8 %602, ptr %612, align 1, !dbg !3065, !tbaa !974
  br label %613, !dbg !3065

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %614, metadata !2563, metadata !DIExpression()), !dbg !2615
  %615 = icmp eq i8 %603, 0, !dbg !3069
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3071
  call void @llvm.dbg.value(metadata i8 %616, metadata !2570, metadata !DIExpression()), !dbg !2615
  br label %617, !dbg !3072

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3015
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2615
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2620
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2624
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2625
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2716
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3026
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %624, metadata !2577, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8 %623, metadata !2571, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %622, metadata !2570, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %621, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %620, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %619, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %618, metadata !2556, metadata !DIExpression()), !dbg !2615
  %626 = add i64 %624, 1, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %626, metadata !2577, metadata !DIExpression()), !dbg !2714
  br label %138, !dbg !3074, !llvm.loop !3075

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2554, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %143, metadata !2570, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 %142, metadata !2569, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %141, metadata !2564, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %140, metadata !2563, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %139, metadata !2556, metadata !DIExpression()), !dbg !2615
  %628 = icmp eq i64 %140, 0, !dbg !3077
  %629 = and i1 %133, %628, !dbg !3079
  %630 = xor i1 %629, true, !dbg !3079
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3079
  br i1 %631, label %632, label %670, !dbg !3079

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3080
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3080
  br i1 %636, label %637, label %646, !dbg !3080

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3082
  %639 = icmp eq i8 %638, 0, !dbg !3082
  br i1 %639, label %642, label %640, !dbg !3085

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3086
  br label %694, !dbg !3087

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3088
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3090
  br i1 %645, label %28, label %646, !dbg !3090

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3091
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3093
  br i1 %649, label %650, label %665, !dbg !3093

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2565, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %140, metadata !2563, metadata !DIExpression()), !dbg !2615
  %651 = load i8, ptr %120, align 1, !dbg !3094, !tbaa !974
  %652 = icmp eq i8 %651, 0, !dbg !3097
  br i1 %652, label %665, label %653, !dbg !3097

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2565, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i64 %656, metadata !2563, metadata !DIExpression()), !dbg !2615
  %657 = icmp ult i64 %656, %146, !dbg !3098
  br i1 %657, label %658, label %660, !dbg !3101

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3098
  store i8 %654, ptr %659, align 1, !dbg !3098, !tbaa !974
  br label %660, !dbg !3098

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %661, metadata !2563, metadata !DIExpression()), !dbg !2615
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3102
  call void @llvm.dbg.value(metadata ptr %662, metadata !2565, metadata !DIExpression()), !dbg !2615
  %663 = load i8, ptr %662, align 1, !dbg !3094, !tbaa !974
  %664 = icmp eq i8 %663, 0, !dbg !3097
  br i1 %664, label %665, label %653, !dbg !3097, !llvm.loop !3103

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2697
  call void @llvm.dbg.value(metadata i64 %666, metadata !2563, metadata !DIExpression()), !dbg !2615
  %667 = icmp ult i64 %666, %146, !dbg !3105
  br i1 %667, label %668, label %694, !dbg !3107

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3108
  store i8 0, ptr %669, align 1, !dbg !3109, !tbaa !974
  br label %694, !dbg !3108

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2614), !dbg !3110
  %672 = icmp eq i8 %124, 0, !dbg !3111
  %673 = select i1 %672, i32 2, i32 4, !dbg !3111
  br label %684, !dbg !3111

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3111
  %678 = select i1 %677, i32 2, i32 4, !dbg !3111
  br label %679, !dbg !3113

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2614), !dbg !3110
  %683 = icmp eq i32 %116, 2, !dbg !3113
  br i1 %683, label %684, label %688, !dbg !3111

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3111

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2557, metadata !DIExpression()), !dbg !2615
  %692 = and i32 %5, -3, !dbg !3114
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3115
  br label %694, !dbg !3116

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3117
}

; Function Attrs: nounwind
declare !dbg !3118 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3121 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3123 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3127, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %2, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr null, metadata !3137, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %2, metadata !3138, metadata !DIExpression()), !dbg !3144
  %4 = icmp eq ptr %2, null, !dbg !3146
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3146
  call void @llvm.dbg.value(metadata ptr %5, metadata !3139, metadata !DIExpression()), !dbg !3144
  %6 = tail call ptr @__errno_location() #43, !dbg !3147
  %7 = load i32, ptr %6, align 4, !dbg !3147, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %7, metadata !3140, metadata !DIExpression()), !dbg !3144
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3148
  %9 = load i32, ptr %8, align 4, !dbg !3148, !tbaa !2497
  %10 = or i32 %9, 1, !dbg !3149
  call void @llvm.dbg.value(metadata i32 %10, metadata !3141, metadata !DIExpression()), !dbg !3144
  %11 = load i32, ptr %5, align 8, !dbg !3150, !tbaa !2447
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3151
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3152
  %14 = load ptr, ptr %13, align 8, !dbg !3152, !tbaa !2518
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3153
  %16 = load ptr, ptr %15, align 8, !dbg !3153, !tbaa !2521
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3154
  %18 = add i64 %17, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %18, metadata !3142, metadata !DIExpression()), !dbg !3144
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3156
  call void @llvm.dbg.value(metadata ptr %19, metadata !3143, metadata !DIExpression()), !dbg !3144
  %20 = load i32, ptr %5, align 8, !dbg !3157, !tbaa !2447
  %21 = load ptr, ptr %13, align 8, !dbg !3158, !tbaa !2518
  %22 = load ptr, ptr %15, align 8, !dbg !3159, !tbaa !2521
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3160
  store i32 %7, ptr %6, align 4, !dbg !3161, !tbaa !965
  ret ptr %19, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3132 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %2, metadata !3137, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %3, metadata !3138, metadata !DIExpression()), !dbg !3163
  %5 = icmp eq ptr %3, null, !dbg !3164
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3164
  call void @llvm.dbg.value(metadata ptr %6, metadata !3139, metadata !DIExpression()), !dbg !3163
  %7 = tail call ptr @__errno_location() #43, !dbg !3165
  %8 = load i32, ptr %7, align 4, !dbg !3165, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %8, metadata !3140, metadata !DIExpression()), !dbg !3163
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3166
  %10 = load i32, ptr %9, align 4, !dbg !3166, !tbaa !2497
  %11 = icmp eq ptr %2, null, !dbg !3167
  %12 = zext i1 %11 to i32, !dbg !3167
  %13 = or i32 %10, %12, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %13, metadata !3141, metadata !DIExpression()), !dbg !3163
  %14 = load i32, ptr %6, align 8, !dbg !3169, !tbaa !2447
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3170
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3171
  %17 = load ptr, ptr %16, align 8, !dbg !3171, !tbaa !2518
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3172
  %19 = load ptr, ptr %18, align 8, !dbg !3172, !tbaa !2521
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3173
  %21 = add i64 %20, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %21, metadata !3142, metadata !DIExpression()), !dbg !3163
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %22, metadata !3143, metadata !DIExpression()), !dbg !3163
  %23 = load i32, ptr %6, align 8, !dbg !3176, !tbaa !2447
  %24 = load ptr, ptr %16, align 8, !dbg !3177, !tbaa !2518
  %25 = load ptr, ptr %18, align 8, !dbg !3178, !tbaa !2521
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3179
  store i32 %8, ptr %7, align 4, !dbg !3180, !tbaa !965
  br i1 %11, label %28, label %27, !dbg !3181

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3182, !tbaa !3184
  br label %28, !dbg !3185

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3186
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3187 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3192, !tbaa !899
  call void @llvm.dbg.value(metadata ptr %1, metadata !3189, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i32 1, metadata !3190, metadata !DIExpression()), !dbg !3194
  %2 = load i32, ptr @nslots, align 4, !tbaa !965
  call void @llvm.dbg.value(metadata i32 1, metadata !3190, metadata !DIExpression()), !dbg !3194
  %3 = icmp sgt i32 %2, 1, !dbg !3195
  br i1 %3, label %4, label %6, !dbg !3197

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3195
  br label %10, !dbg !3197

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3198
  %8 = load ptr, ptr %7, align 8, !dbg !3198, !tbaa !3200
  %9 = icmp eq ptr %8, @slot0, !dbg !3202
  br i1 %9, label %17, label %16, !dbg !3203

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3190, metadata !DIExpression()), !dbg !3194
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3204
  %13 = load ptr, ptr %12, align 8, !dbg !3204, !tbaa !3200
  tail call void @free(ptr noundef %13) #40, !dbg !3205
  %14 = add nuw nsw i64 %11, 1, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %14, metadata !3190, metadata !DIExpression()), !dbg !3194
  %15 = icmp eq i64 %14, %5, !dbg !3195
  br i1 %15, label %6, label %10, !dbg !3197, !llvm.loop !3207

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3209
  store i64 256, ptr @slotvec0, align 8, !dbg !3211, !tbaa !3212
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3213, !tbaa !3200
  br label %17, !dbg !3214

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3215
  br i1 %18, label %20, label %19, !dbg !3217

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3218
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3220, !tbaa !899
  br label %20, !dbg !3221

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3222, !tbaa !965
  ret void, !dbg !3223
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3226, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %1, metadata !3227, metadata !DIExpression()), !dbg !3228
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3229
  ret ptr %3, !dbg !3230
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3231 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3235, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata ptr %1, metadata !3236, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %2, metadata !3237, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata ptr %3, metadata !3238, metadata !DIExpression()), !dbg !3251
  %6 = tail call ptr @__errno_location() #43, !dbg !3252
  %7 = load i32, ptr %6, align 4, !dbg !3252, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %7, metadata !3239, metadata !DIExpression()), !dbg !3251
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3253, !tbaa !899
  call void @llvm.dbg.value(metadata ptr %8, metadata !3240, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3241, metadata !DIExpression()), !dbg !3251
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3254
  br i1 %9, label %10, label %11, !dbg !3254

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3256
  unreachable, !dbg !3256

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3257, !tbaa !965
  %13 = icmp sgt i32 %12, %0, !dbg !3258
  br i1 %13, label %32, label %14, !dbg !3259

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3260
  call void @llvm.dbg.value(metadata i1 %15, metadata !3242, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3261
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3262
  %16 = sext i32 %12 to i64, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %16, metadata !3245, metadata !DIExpression()), !dbg !3261
  store i64 %16, ptr %5, align 8, !dbg !3264, !tbaa !3184
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3265
  %18 = add nuw nsw i32 %0, 1, !dbg !3266
  %19 = sub i32 %18, %12, !dbg !3267
  %20 = sext i32 %19 to i64, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %5, metadata !3245, metadata !DIExpression(DW_OP_deref)), !dbg !3261
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3269
  call void @llvm.dbg.value(metadata ptr %21, metadata !3240, metadata !DIExpression()), !dbg !3251
  store ptr %21, ptr @slotvec, align 8, !dbg !3270, !tbaa !899
  br i1 %15, label %22, label %23, !dbg !3271

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3272, !tbaa.struct !3274
  br label %23, !dbg !3275

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3276, !tbaa !965
  %25 = sext i32 %24 to i64, !dbg !3277
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3277
  %27 = load i64, ptr %5, align 8, !dbg !3278, !tbaa !3184
  call void @llvm.dbg.value(metadata i64 %27, metadata !3245, metadata !DIExpression()), !dbg !3261
  %28 = sub nsw i64 %27, %25, !dbg !3279
  %29 = shl i64 %28, 4, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %26, metadata !2654, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %29, metadata !2658, metadata !DIExpression()), !dbg !3281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3283
  %30 = load i64, ptr %5, align 8, !dbg !3284, !tbaa !3184
  call void @llvm.dbg.value(metadata i64 %30, metadata !3245, metadata !DIExpression()), !dbg !3261
  %31 = trunc i64 %30 to i32, !dbg !3284
  store i32 %31, ptr @nslots, align 4, !dbg !3285, !tbaa !965
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3286
  br label %32, !dbg !3287

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3251
  call void @llvm.dbg.value(metadata ptr %33, metadata !3240, metadata !DIExpression()), !dbg !3251
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3288
  %36 = load i64, ptr %35, align 8, !dbg !3289, !tbaa !3212
  call void @llvm.dbg.value(metadata i64 %36, metadata !3246, metadata !DIExpression()), !dbg !3290
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3291
  %38 = load ptr, ptr %37, align 8, !dbg !3291, !tbaa !3200
  call void @llvm.dbg.value(metadata ptr %38, metadata !3248, metadata !DIExpression()), !dbg !3290
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3292
  %40 = load i32, ptr %39, align 4, !dbg !3292, !tbaa !2497
  %41 = or i32 %40, 1, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %41, metadata !3249, metadata !DIExpression()), !dbg !3290
  %42 = load i32, ptr %3, align 8, !dbg !3294, !tbaa !2447
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3295
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3296
  %45 = load ptr, ptr %44, align 8, !dbg !3296, !tbaa !2518
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3297
  %47 = load ptr, ptr %46, align 8, !dbg !3297, !tbaa !2521
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %48, metadata !3250, metadata !DIExpression()), !dbg !3290
  %49 = icmp ugt i64 %36, %48, !dbg !3299
  br i1 %49, label %60, label %50, !dbg !3301

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %51, metadata !3246, metadata !DIExpression()), !dbg !3290
  store i64 %51, ptr %35, align 8, !dbg !3304, !tbaa !3212
  %52 = icmp eq ptr %38, @slot0, !dbg !3305
  br i1 %52, label %54, label %53, !dbg !3307

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3308
  br label %54, !dbg !3308

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %55, metadata !3248, metadata !DIExpression()), !dbg !3290
  store ptr %55, ptr %37, align 8, !dbg !3310, !tbaa !3200
  %56 = load i32, ptr %3, align 8, !dbg !3311, !tbaa !2447
  %57 = load ptr, ptr %44, align 8, !dbg !3312, !tbaa !2518
  %58 = load ptr, ptr %46, align 8, !dbg !3313, !tbaa !2521
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3314
  br label %60, !dbg !3315

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3290
  call void @llvm.dbg.value(metadata ptr %61, metadata !3248, metadata !DIExpression()), !dbg !3290
  store i32 %7, ptr %6, align 4, !dbg !3316, !tbaa !965
  ret ptr %61, !dbg !3317
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #28

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3318 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %1, metadata !3323, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %2, metadata !3324, metadata !DIExpression()), !dbg !3325
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3326
  ret ptr %4, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3328 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %0, metadata !3227, metadata !DIExpression()), !dbg !3332
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3334
  ret ptr %2, !dbg !3335
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3336 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3340, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3343
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3345
  ret ptr %3, !dbg !3346
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3347 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %2, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3356
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3354, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3358), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3367, metadata !DIExpression()), !dbg !3370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3370, !alias.scope !3358
  %5 = icmp eq i32 %1, 10, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3373

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3374, !noalias !3358
  unreachable, !dbg !3374

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3375, !tbaa !2447, !alias.scope !3358
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3376
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3377
  ret ptr %8, !dbg !3378
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3379 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %1, metadata !3384, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata ptr %2, metadata !3385, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %3, metadata !3386, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3389
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3387, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3391), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3367, metadata !DIExpression()), !dbg !3397
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3397, !alias.scope !3391
  %6 = icmp eq i32 %1, 10, !dbg !3398
  br i1 %6, label %7, label %8, !dbg !3399

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3400, !noalias !3391
  unreachable, !dbg !3400

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3401, !tbaa !2447, !alias.scope !3391
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3402
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3403
  ret ptr %9, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3405 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3409, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata ptr %1, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3351, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %1, metadata !3353, metadata !DIExpression()), !dbg !3412
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3414
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3354, metadata !DIExpression()), !dbg !3415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3416), !dbg !3419
  call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3367, metadata !DIExpression()), !dbg !3422
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3422, !alias.scope !3416
  %4 = icmp eq i32 %0, 10, !dbg !3423
  br i1 %4, label %5, label %6, !dbg !3424

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3425, !noalias !3416
  unreachable, !dbg !3425

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3426, !tbaa !2447, !alias.scope !3416
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3427
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3428
  ret ptr %7, !dbg !3429
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3430 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %1, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %2, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i32 %0, metadata !3384, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %1, metadata !3385, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 %2, metadata !3386, metadata !DIExpression()), !dbg !3438
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3440
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3387, metadata !DIExpression()), !dbg !3441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3367, metadata !DIExpression()), !dbg !3448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3448, !alias.scope !3442
  %5 = icmp eq i32 %0, 10, !dbg !3449
  br i1 %5, label %6, label %7, !dbg !3450

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3451, !noalias !3442
  unreachable, !dbg !3451

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3452, !tbaa !2447, !alias.scope !3442
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3453
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3454
  ret ptr %8, !dbg !3455
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3456 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8 %2, metadata !3462, metadata !DIExpression()), !dbg !3464
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3465
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3467, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %4, metadata !2464, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8 %2, metadata !2465, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8 %2, metadata !2467, metadata !DIExpression()), !dbg !3469
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3471
  %6 = lshr i8 %2, 5, !dbg !3472
  %7 = zext i8 %6 to i64, !dbg !3472
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3473
  call void @llvm.dbg.value(metadata ptr %8, metadata !2468, metadata !DIExpression()), !dbg !3469
  %9 = and i8 %2, 31, !dbg !3474
  %10 = zext i8 %9 to i32, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %10, metadata !2470, metadata !DIExpression()), !dbg !3469
  %11 = load i32, ptr %8, align 4, !dbg !3475, !tbaa !965
  %12 = lshr i32 %11, %10, !dbg !3476
  call void @llvm.dbg.value(metadata i32 %12, metadata !2471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3469
  %13 = and i32 %12, 1, !dbg !3477
  %14 = xor i32 %13, 1, !dbg !3477
  %15 = shl nuw i32 %14, %10, !dbg !3478
  %16 = xor i32 %15, %11, !dbg !3479
  store i32 %16, ptr %8, align 4, !dbg !3479, !tbaa !965
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3480
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3481
  ret ptr %17, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3483 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8 %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 -1, metadata !3461, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8 %1, metadata !3462, metadata !DIExpression()), !dbg !3490
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3463, metadata !DIExpression()), !dbg !3493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3494, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %3, metadata !2464, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 %1, metadata !2465, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i8 %1, metadata !2467, metadata !DIExpression()), !dbg !3495
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3497
  %5 = lshr i8 %1, 5, !dbg !3498
  %6 = zext i8 %5 to i64, !dbg !3498
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3499
  call void @llvm.dbg.value(metadata ptr %7, metadata !2468, metadata !DIExpression()), !dbg !3495
  %8 = and i8 %1, 31, !dbg !3500
  %9 = zext i8 %8 to i32, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %9, metadata !2470, metadata !DIExpression()), !dbg !3495
  %10 = load i32, ptr %7, align 4, !dbg !3501, !tbaa !965
  %11 = lshr i32 %10, %9, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %11, metadata !2471, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3495
  %12 = and i32 %11, 1, !dbg !3503
  %13 = xor i32 %12, 1, !dbg !3503
  %14 = shl nuw i32 %13, %9, !dbg !3504
  %15 = xor i32 %14, %10, !dbg !3505
  store i32 %15, ptr %7, align 4, !dbg !3505, !tbaa !965
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3506
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3507
  ret ptr %16, !dbg !3508
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3509 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i8 58, metadata !3488, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 -1, metadata !3461, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8 58, metadata !3462, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3517
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3463, metadata !DIExpression()), !dbg !3518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3519, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %2, metadata !2464, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8 58, metadata !2467, metadata !DIExpression()), !dbg !3520
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3522
  call void @llvm.dbg.value(metadata ptr %3, metadata !2468, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 26, metadata !2470, metadata !DIExpression()), !dbg !3520
  %4 = load i32, ptr %3, align 4, !dbg !3523, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %4, metadata !2471, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3520
  %5 = or i32 %4, 67108864, !dbg !3524
  store i32 %5, ptr %3, align 4, !dbg !3524, !tbaa !965
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3525
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3526
  ret ptr %6, !dbg !3527
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3528 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 58, metadata !3462, metadata !DIExpression()), !dbg !3533
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3535
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3463, metadata !DIExpression()), !dbg !3536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3537, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %3, metadata !2464, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i8 58, metadata !2467, metadata !DIExpression()), !dbg !3538
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3540
  call void @llvm.dbg.value(metadata ptr %4, metadata !2468, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 26, metadata !2470, metadata !DIExpression()), !dbg !3538
  %5 = load i32, ptr %4, align 4, !dbg !3541, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %5, metadata !2471, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3538
  %6 = or i32 %5, 67108864, !dbg !3542
  store i32 %6, ptr %4, align 4, !dbg !3542, !tbaa !965
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3543
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3544
  ret ptr %7, !dbg !3545
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3546 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3367, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3552
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %1, metadata !3549, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %2, metadata !3550, metadata !DIExpression()), !dbg !3554
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3555
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3551, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3557
  %5 = icmp eq i32 %1, 10, !dbg !3558
  br i1 %5, label %6, label %7, !dbg !3559

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3560, !noalias !3561
  unreachable, !dbg !3560

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3557
  store i32 %1, ptr %4, align 8, !dbg !3564, !tbaa.struct !3468
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3564
  call void @llvm.dbg.value(metadata ptr %4, metadata !2464, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8 58, metadata !2465, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i8 58, metadata !2467, metadata !DIExpression()), !dbg !3565
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3567
  call void @llvm.dbg.value(metadata ptr %9, metadata !2468, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 26, metadata !2470, metadata !DIExpression()), !dbg !3565
  %10 = load i32, ptr %9, align 4, !dbg !3568, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %10, metadata !2471, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3565
  %11 = or i32 %10, 67108864, !dbg !3569
  store i32 %11, ptr %9, align 4, !dbg !3569, !tbaa !965
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3570
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3571
  ret ptr %12, !dbg !3572
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3573 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3577, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %1, metadata !3578, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %3, metadata !3580, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr %1, metadata !3587, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr %2, metadata !3588, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata ptr %3, metadata !3589, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 -1, metadata !3590, metadata !DIExpression()), !dbg !3592
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3594
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3591, metadata !DIExpression()), !dbg !3595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3596, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %5, metadata !2504, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr %2, metadata !2506, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata ptr %5, metadata !2504, metadata !DIExpression()), !dbg !3597
  store i32 10, ptr %5, align 8, !dbg !3599, !tbaa !2447
  %6 = icmp ne ptr %1, null, !dbg !3600
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3601
  br i1 %8, label %10, label %9, !dbg !3601

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3602
  unreachable, !dbg !3602

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3603
  store ptr %1, ptr %11, align 8, !dbg !3604, !tbaa !2518
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3605
  store ptr %2, ptr %12, align 8, !dbg !3606, !tbaa !2521
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3607
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3608
  ret ptr %13, !dbg !3609
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3583 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %1, metadata !3587, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %2, metadata !3588, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata ptr %3, metadata !3589, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i64 %4, metadata !3590, metadata !DIExpression()), !dbg !3610
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3611
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3591, metadata !DIExpression()), !dbg !3612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3613, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %6, metadata !2504, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %1, metadata !2505, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %2, metadata !2506, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %6, metadata !2504, metadata !DIExpression()), !dbg !3614
  store i32 10, ptr %6, align 8, !dbg !3616, !tbaa !2447
  %7 = icmp ne ptr %1, null, !dbg !3617
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3618
  br i1 %9, label %11, label %10, !dbg !3618

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3619
  unreachable, !dbg !3619

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3620
  store ptr %1, ptr %12, align 8, !dbg !3621, !tbaa !2518
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3622
  store ptr %2, ptr %13, align 8, !dbg !3623, !tbaa !2521
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3625
  ret ptr %14, !dbg !3626
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3627 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %1, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %2, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 0, metadata !3577, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %0, metadata !3578, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %1, metadata !3579, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata ptr %2, metadata !3580, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr %1, metadata !3588, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata ptr %2, metadata !3589, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 -1, metadata !3590, metadata !DIExpression()), !dbg !3637
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3639
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3591, metadata !DIExpression()), !dbg !3640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3641, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %4, metadata !2504, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata ptr %4, metadata !2504, metadata !DIExpression()), !dbg !3642
  store i32 10, ptr %4, align 8, !dbg !3644, !tbaa !2447
  %5 = icmp ne ptr %0, null, !dbg !3645
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3646
  br i1 %7, label %9, label %8, !dbg !3646

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3647
  unreachable, !dbg !3647

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3648
  store ptr %0, ptr %10, align 8, !dbg !3649, !tbaa !2518
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3650
  store ptr %1, ptr %11, align 8, !dbg !3651, !tbaa !2521
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3652
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3653
  ret ptr %12, !dbg !3654
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3655 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %1, metadata !3660, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %2, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %3, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3582, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %1, metadata !3588, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %2, metadata !3589, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %3, metadata !3590, metadata !DIExpression()), !dbg !3664
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3666
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3591, metadata !DIExpression()), !dbg !3667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3668, !tbaa.struct !3468
  call void @llvm.dbg.value(metadata ptr %5, metadata !2504, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %5, metadata !2504, metadata !DIExpression()), !dbg !3669
  store i32 10, ptr %5, align 8, !dbg !3671, !tbaa !2447
  %6 = icmp ne ptr %0, null, !dbg !3672
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3673
  br i1 %8, label %10, label %9, !dbg !3673

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3674
  unreachable, !dbg !3674

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3675
  store ptr %0, ptr %11, align 8, !dbg !3676, !tbaa !2518
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3677
  store ptr %1, ptr %12, align 8, !dbg !3678, !tbaa !2521
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3679
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3680
  ret ptr %13, !dbg !3681
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3686, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %1, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %2, metadata !3688, metadata !DIExpression()), !dbg !3689
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3690
  ret ptr %4, !dbg !3691
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i64 %1, metadata !3697, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i32 0, metadata !3686, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %1, metadata !3688, metadata !DIExpression()), !dbg !3699
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3701
  ret ptr %3, !dbg !3702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3707, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata ptr %1, metadata !3708, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i32 %0, metadata !3686, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %1, metadata !3687, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 -1, metadata !3688, metadata !DIExpression()), !dbg !3710
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3712
  ret ptr %3, !dbg !3713
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3714 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 0, metadata !3707, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3686, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 -1, metadata !3688, metadata !DIExpression()), !dbg !3722
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3724
  ret ptr %2, !dbg !3725
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3733
  %2 = icmp ult i32 %0, 3, !dbg !3734
  br i1 %2, label %3, label %8, !dbg !3734

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #40, !dbg !3735
  call void @llvm.dbg.value(metadata i32 %4, metadata !3729, metadata !DIExpression()), !dbg !3736
  %5 = tail call ptr @__errno_location() #43, !dbg !3737
  %6 = load i32, ptr %5, align 4, !dbg !3737, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %6, metadata !3732, metadata !DIExpression()), !dbg !3736
  %7 = tail call i32 @close(i32 noundef %0) #40, !dbg !3738
  store i32 %6, ptr %5, align 4, !dbg !3739, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %4, metadata !3728, metadata !DIExpression()), !dbg !3733
  br label %8, !dbg !3740

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !3728, metadata !DIExpression()), !dbg !3733
  ret i32 %9, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3780, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %1, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %2, metadata !3782, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %3, metadata !3783, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %4, metadata !3784, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %5, metadata !3785, metadata !DIExpression()), !dbg !3786
  %7 = icmp eq ptr %1, null, !dbg !3787
  br i1 %7, label %10, label %8, !dbg !3789

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3790
  br label %12, !dbg !3790

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.135, ptr noundef %2, ptr noundef %3) #40, !dbg !3791
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.3.137, i32 noundef 5) #40, !dbg !3792
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3792
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3793
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.5.139, i32 noundef 5) #40, !dbg !3794
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.140) #40, !dbg !3794
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3795
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
  ], !dbg !3796

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.7.141, i32 noundef 5) #40, !dbg !3797
  %21 = load ptr, ptr %4, align 8, !dbg !3797, !tbaa !899
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3797
  br label %147, !dbg !3799

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.8.142, i32 noundef 5) #40, !dbg !3800
  %25 = load ptr, ptr %4, align 8, !dbg !3800, !tbaa !899
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3800
  %27 = load ptr, ptr %26, align 8, !dbg !3800, !tbaa !899
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3800
  br label %147, !dbg !3801

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.9.143, i32 noundef 5) #40, !dbg !3802
  %31 = load ptr, ptr %4, align 8, !dbg !3802, !tbaa !899
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3802
  %33 = load ptr, ptr %32, align 8, !dbg !3802, !tbaa !899
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3802
  %35 = load ptr, ptr %34, align 8, !dbg !3802, !tbaa !899
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3802
  br label %147, !dbg !3803

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.10.144, i32 noundef 5) #40, !dbg !3804
  %39 = load ptr, ptr %4, align 8, !dbg !3804, !tbaa !899
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3804
  %41 = load ptr, ptr %40, align 8, !dbg !3804, !tbaa !899
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3804
  %43 = load ptr, ptr %42, align 8, !dbg !3804, !tbaa !899
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3804
  %45 = load ptr, ptr %44, align 8, !dbg !3804, !tbaa !899
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3804
  br label %147, !dbg !3805

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.11.145, i32 noundef 5) #40, !dbg !3806
  %49 = load ptr, ptr %4, align 8, !dbg !3806, !tbaa !899
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3806
  %51 = load ptr, ptr %50, align 8, !dbg !3806, !tbaa !899
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3806
  %53 = load ptr, ptr %52, align 8, !dbg !3806, !tbaa !899
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3806
  %55 = load ptr, ptr %54, align 8, !dbg !3806, !tbaa !899
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3806
  %57 = load ptr, ptr %56, align 8, !dbg !3806, !tbaa !899
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3806
  br label %147, !dbg !3807

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.12.146, i32 noundef 5) #40, !dbg !3808
  %61 = load ptr, ptr %4, align 8, !dbg !3808, !tbaa !899
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3808
  %63 = load ptr, ptr %62, align 8, !dbg !3808, !tbaa !899
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3808
  %65 = load ptr, ptr %64, align 8, !dbg !3808, !tbaa !899
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3808
  %67 = load ptr, ptr %66, align 8, !dbg !3808, !tbaa !899
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3808
  %69 = load ptr, ptr %68, align 8, !dbg !3808, !tbaa !899
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3808
  %71 = load ptr, ptr %70, align 8, !dbg !3808, !tbaa !899
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3808
  br label %147, !dbg !3809

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.13.147, i32 noundef 5) #40, !dbg !3810
  %75 = load ptr, ptr %4, align 8, !dbg !3810, !tbaa !899
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3810
  %77 = load ptr, ptr %76, align 8, !dbg !3810, !tbaa !899
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3810
  %79 = load ptr, ptr %78, align 8, !dbg !3810, !tbaa !899
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3810
  %81 = load ptr, ptr %80, align 8, !dbg !3810, !tbaa !899
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3810
  %83 = load ptr, ptr %82, align 8, !dbg !3810, !tbaa !899
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3810
  %85 = load ptr, ptr %84, align 8, !dbg !3810, !tbaa !899
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3810
  %87 = load ptr, ptr %86, align 8, !dbg !3810, !tbaa !899
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3810
  br label %147, !dbg !3811

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.14.148, i32 noundef 5) #40, !dbg !3812
  %91 = load ptr, ptr %4, align 8, !dbg !3812, !tbaa !899
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3812
  %93 = load ptr, ptr %92, align 8, !dbg !3812, !tbaa !899
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3812
  %95 = load ptr, ptr %94, align 8, !dbg !3812, !tbaa !899
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3812
  %97 = load ptr, ptr %96, align 8, !dbg !3812, !tbaa !899
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3812
  %99 = load ptr, ptr %98, align 8, !dbg !3812, !tbaa !899
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3812
  %101 = load ptr, ptr %100, align 8, !dbg !3812, !tbaa !899
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3812
  %103 = load ptr, ptr %102, align 8, !dbg !3812, !tbaa !899
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3812
  %105 = load ptr, ptr %104, align 8, !dbg !3812, !tbaa !899
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3812
  br label %147, !dbg !3813

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.15.149, i32 noundef 5) #40, !dbg !3814
  %109 = load ptr, ptr %4, align 8, !dbg !3814, !tbaa !899
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3814
  %111 = load ptr, ptr %110, align 8, !dbg !3814, !tbaa !899
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3814
  %113 = load ptr, ptr %112, align 8, !dbg !3814, !tbaa !899
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3814
  %115 = load ptr, ptr %114, align 8, !dbg !3814, !tbaa !899
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3814
  %117 = load ptr, ptr %116, align 8, !dbg !3814, !tbaa !899
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3814
  %119 = load ptr, ptr %118, align 8, !dbg !3814, !tbaa !899
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3814
  %121 = load ptr, ptr %120, align 8, !dbg !3814, !tbaa !899
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3814
  %123 = load ptr, ptr %122, align 8, !dbg !3814, !tbaa !899
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3814
  %125 = load ptr, ptr %124, align 8, !dbg !3814, !tbaa !899
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3814
  br label %147, !dbg !3815

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.16.150, i32 noundef 5) #40, !dbg !3816
  %129 = load ptr, ptr %4, align 8, !dbg !3816, !tbaa !899
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3816
  %131 = load ptr, ptr %130, align 8, !dbg !3816, !tbaa !899
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3816
  %133 = load ptr, ptr %132, align 8, !dbg !3816, !tbaa !899
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3816
  %135 = load ptr, ptr %134, align 8, !dbg !3816, !tbaa !899
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3816
  %137 = load ptr, ptr %136, align 8, !dbg !3816, !tbaa !899
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3816
  %139 = load ptr, ptr %138, align 8, !dbg !3816, !tbaa !899
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3816
  %141 = load ptr, ptr %140, align 8, !dbg !3816, !tbaa !899
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3816
  %143 = load ptr, ptr %142, align 8, !dbg !3816, !tbaa !899
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3816
  %145 = load ptr, ptr %144, align 8, !dbg !3816, !tbaa !899
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3816
  br label %147, !dbg !3817

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3823, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %2, metadata !3825, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %3, metadata !3826, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 0, metadata !3828, metadata !DIExpression()), !dbg !3829
  br label %6, !dbg !3830

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3832
  call void @llvm.dbg.value(metadata i64 %7, metadata !3828, metadata !DIExpression()), !dbg !3829
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3833
  %9 = load ptr, ptr %8, align 8, !dbg !3833, !tbaa !899
  %10 = icmp eq ptr %9, null, !dbg !3835
  %11 = add i64 %7, 1, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %11, metadata !3828, metadata !DIExpression()), !dbg !3829
  br i1 %10, label %12, label %6, !dbg !3835, !llvm.loop !3837

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3839
  ret void, !dbg !3840
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3841 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3853, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %1, metadata !3854, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %2, metadata !3855, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %3, metadata !3856, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %4, metadata !3857, metadata !DIExpression()), !dbg !3861
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3859, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 0, metadata !3858, metadata !DIExpression()), !dbg !3861
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3858, metadata !DIExpression()), !dbg !3861
  %10 = icmp ult i32 %9, 41, !dbg !3864
  br i1 %10, label %11, label %16, !dbg !3864

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3864
  %13 = zext i32 %9 to i64, !dbg !3864
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3864
  %15 = add nuw nsw i32 %9, 8, !dbg !3864
  store i32 %15, ptr %4, align 8, !dbg !3864
  br label %19, !dbg !3864

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3864
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3864
  store ptr %18, ptr %7, align 8, !dbg !3864
  br label %19, !dbg !3864

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3864
  %22 = load ptr, ptr %21, align 8, !dbg !3864
  store ptr %22, ptr %6, align 16, !dbg !3867, !tbaa !899
  %23 = icmp eq ptr %22, null, !dbg !3868
  br i1 %23, label %128, label %24, !dbg !3869

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 1, metadata !3858, metadata !DIExpression()), !dbg !3861
  %25 = icmp ult i32 %20, 41, !dbg !3864
  br i1 %25, label %29, label %26, !dbg !3864

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3864
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3864
  store ptr %28, ptr %7, align 8, !dbg !3864
  br label %34, !dbg !3864

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3864
  %31 = zext i32 %20 to i64, !dbg !3864
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3864
  %33 = add nuw nsw i32 %20, 8, !dbg !3864
  store i32 %33, ptr %4, align 8, !dbg !3864
  br label %34, !dbg !3864

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3864
  %37 = load ptr, ptr %36, align 8, !dbg !3864
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3870
  store ptr %37, ptr %38, align 8, !dbg !3867, !tbaa !899
  %39 = icmp eq ptr %37, null, !dbg !3868
  br i1 %39, label %128, label %40, !dbg !3869

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 2, metadata !3858, metadata !DIExpression()), !dbg !3861
  %41 = icmp ult i32 %35, 41, !dbg !3864
  br i1 %41, label %45, label %42, !dbg !3864

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3864
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3864
  store ptr %44, ptr %7, align 8, !dbg !3864
  br label %50, !dbg !3864

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3864
  %47 = zext i32 %35 to i64, !dbg !3864
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3864
  %49 = add nuw nsw i32 %35, 8, !dbg !3864
  store i32 %49, ptr %4, align 8, !dbg !3864
  br label %50, !dbg !3864

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3864
  %53 = load ptr, ptr %52, align 8, !dbg !3864
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3870
  store ptr %53, ptr %54, align 16, !dbg !3867, !tbaa !899
  %55 = icmp eq ptr %53, null, !dbg !3868
  br i1 %55, label %128, label %56, !dbg !3869

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 3, metadata !3858, metadata !DIExpression()), !dbg !3861
  %57 = icmp ult i32 %51, 41, !dbg !3864
  br i1 %57, label %61, label %58, !dbg !3864

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3864
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3864
  store ptr %60, ptr %7, align 8, !dbg !3864
  br label %66, !dbg !3864

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3864
  %63 = zext i32 %51 to i64, !dbg !3864
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3864
  %65 = add nuw nsw i32 %51, 8, !dbg !3864
  store i32 %65, ptr %4, align 8, !dbg !3864
  br label %66, !dbg !3864

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3864
  %69 = load ptr, ptr %68, align 8, !dbg !3864
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3870
  store ptr %69, ptr %70, align 8, !dbg !3867, !tbaa !899
  %71 = icmp eq ptr %69, null, !dbg !3868
  br i1 %71, label %128, label %72, !dbg !3869

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 4, metadata !3858, metadata !DIExpression()), !dbg !3861
  %73 = icmp ult i32 %67, 41, !dbg !3864
  br i1 %73, label %77, label %74, !dbg !3864

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3864
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3864
  store ptr %76, ptr %7, align 8, !dbg !3864
  br label %82, !dbg !3864

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3864
  %79 = zext i32 %67 to i64, !dbg !3864
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3864
  %81 = add nuw nsw i32 %67, 8, !dbg !3864
  store i32 %81, ptr %4, align 8, !dbg !3864
  br label %82, !dbg !3864

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3864
  %85 = load ptr, ptr %84, align 8, !dbg !3864
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3870
  store ptr %85, ptr %86, align 16, !dbg !3867, !tbaa !899
  %87 = icmp eq ptr %85, null, !dbg !3868
  br i1 %87, label %128, label %88, !dbg !3869

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 5, metadata !3858, metadata !DIExpression()), !dbg !3861
  %89 = icmp ult i32 %83, 41, !dbg !3864
  br i1 %89, label %93, label %90, !dbg !3864

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3864
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3864
  store ptr %92, ptr %7, align 8, !dbg !3864
  br label %98, !dbg !3864

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3864
  %95 = zext i32 %83 to i64, !dbg !3864
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3864
  %97 = add nuw nsw i32 %83, 8, !dbg !3864
  store i32 %97, ptr %4, align 8, !dbg !3864
  br label %98, !dbg !3864

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3864
  %100 = load ptr, ptr %99, align 8, !dbg !3864
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3870
  store ptr %100, ptr %101, align 8, !dbg !3867, !tbaa !899
  %102 = icmp eq ptr %100, null, !dbg !3868
  br i1 %102, label %128, label %103, !dbg !3869

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3858, metadata !DIExpression()), !dbg !3861
  %104 = load ptr, ptr %7, align 8, !dbg !3864
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3864
  store ptr %105, ptr %7, align 8, !dbg !3864
  %106 = load ptr, ptr %104, align 8, !dbg !3864
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3870
  store ptr %106, ptr %107, align 16, !dbg !3867, !tbaa !899
  %108 = icmp eq ptr %106, null, !dbg !3868
  br i1 %108, label %128, label %109, !dbg !3869

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3858, metadata !DIExpression()), !dbg !3861
  %110 = load ptr, ptr %7, align 8, !dbg !3864
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3864
  store ptr %111, ptr %7, align 8, !dbg !3864
  %112 = load ptr, ptr %110, align 8, !dbg !3864
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3870
  store ptr %112, ptr %113, align 8, !dbg !3867, !tbaa !899
  %114 = icmp eq ptr %112, null, !dbg !3868
  br i1 %114, label %128, label %115, !dbg !3869

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3858, metadata !DIExpression()), !dbg !3861
  %116 = load ptr, ptr %7, align 8, !dbg !3864
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3864
  store ptr %117, ptr %7, align 8, !dbg !3864
  %118 = load ptr, ptr %116, align 8, !dbg !3864
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3870
  store ptr %118, ptr %119, align 16, !dbg !3867, !tbaa !899
  %120 = icmp eq ptr %118, null, !dbg !3868
  br i1 %120, label %128, label %121, !dbg !3869

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3858, metadata !DIExpression()), !dbg !3861
  %122 = load ptr, ptr %7, align 8, !dbg !3864
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3864
  store ptr %123, ptr %7, align 8, !dbg !3864
  %124 = load ptr, ptr %122, align 8, !dbg !3864
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3870
  store ptr %124, ptr %125, align 8, !dbg !3867, !tbaa !899
  %126 = icmp eq ptr %124, null, !dbg !3868
  %127 = select i1 %126, i64 9, i64 10, !dbg !3869
  br label %128, !dbg !3869

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3871
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3872
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3873
  ret void, !dbg !3873
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3874 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3878, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %1, metadata !3879, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %2, metadata !3880, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %3, metadata !3881, metadata !DIExpression()), !dbg !3887
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !3888
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3882, metadata !DIExpression()), !dbg !3889
  call void @llvm.va_start(ptr nonnull %5), !dbg !3890
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3891
  call void @llvm.va_end(ptr nonnull %5), !dbg !3892
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !3893
  ret void, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3894 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3895, !tbaa !899
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %1), !dbg !3895
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.17.155, i32 noundef 5) #40, !dbg !3896
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.156) #40, !dbg !3896
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.19.157, i32 noundef 5) #40, !dbg !3897
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.158, ptr noundef nonnull @.str.21.159) #40, !dbg !3897
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.22.160, i32 noundef 5) #40, !dbg !3898
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.161) #40, !dbg !3898
  ret void, !dbg !3899
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3900 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3905, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %2, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %1, metadata !3912, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %2, metadata !3913, metadata !DIExpression()), !dbg !3914
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3916
  call void @llvm.dbg.value(metadata ptr %4, metadata !3917, metadata !DIExpression()), !dbg !3922
  %5 = icmp eq ptr %4, null, !dbg !3924
  br i1 %5, label %6, label %7, !dbg !3926

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3927
  unreachable, !dbg !3927

7:                                                ; preds = %3
  ret ptr %4, !dbg !3928
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3910 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %1, metadata !3912, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %2, metadata !3913, metadata !DIExpression()), !dbg !3929
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3930
  call void @llvm.dbg.value(metadata ptr %4, metadata !3917, metadata !DIExpression()), !dbg !3931
  %5 = icmp eq ptr %4, null, !dbg !3933
  br i1 %5, label %6, label %7, !dbg !3934

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3935
  unreachable, !dbg !3935

7:                                                ; preds = %3
  ret ptr %4, !dbg !3936
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3937 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3941, metadata !DIExpression()), !dbg !3942
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !3943
  call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !3944
  %3 = icmp eq ptr %2, null, !dbg !3946
  br i1 %3, label %4, label %5, !dbg !3947

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3948
  unreachable, !dbg !3948

5:                                                ; preds = %1
  ret ptr %2, !dbg !3949
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3950 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3951 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %0, metadata !3957, metadata !DIExpression()), !dbg !3961
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !3964
  %3 = icmp eq ptr %2, null, !dbg !3966
  br i1 %3, label %4, label %5, !dbg !3967

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3968
  unreachable, !dbg !3968

5:                                                ; preds = %1
  ret ptr %2, !dbg !3969
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3970 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %0, metadata !3941, metadata !DIExpression()), !dbg !3976
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !3978
  call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !3979
  %3 = icmp eq ptr %2, null, !dbg !3981
  br i1 %3, label %4, label %5, !dbg !3982

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3983
  unreachable, !dbg !3983

5:                                                ; preds = %1
  ret ptr %2, !dbg !3984
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3985 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3989, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %1, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i64 %1, metadata !3996, metadata !DIExpression()), !dbg !3997
  %3 = icmp eq i64 %1, 0, !dbg !3999
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3999
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4000
  call void @llvm.dbg.value(metadata ptr %5, metadata !3917, metadata !DIExpression()), !dbg !4001
  %6 = icmp eq ptr %5, null, !dbg !4003
  br i1 %6, label %7, label %8, !dbg !4004

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4005
  unreachable, !dbg !4005

8:                                                ; preds = %2
  ret ptr %5, !dbg !4006
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4007 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4008 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4012, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata ptr %0, metadata !4015, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %1, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %1, metadata !3996, metadata !DIExpression()), !dbg !4021
  %3 = icmp eq i64 %1, 0, !dbg !4023
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4023
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #47, !dbg !4024
  call void @llvm.dbg.value(metadata ptr %5, metadata !3917, metadata !DIExpression()), !dbg !4025
  %6 = icmp eq ptr %5, null, !dbg !4027
  br i1 %6, label %7, label %8, !dbg !4028

7:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4029
  unreachable, !dbg !4029

8:                                                ; preds = %2
  ret ptr %5, !dbg !4030
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4035, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %1, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %2, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %1, metadata !4042, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i64 %2, metadata !4043, metadata !DIExpression()), !dbg !4044
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4046
  call void @llvm.dbg.value(metadata ptr %4, metadata !3917, metadata !DIExpression()), !dbg !4047
  %5 = icmp eq ptr %4, null, !dbg !4049
  br i1 %5, label %6, label %7, !dbg !4050

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4051
  unreachable, !dbg !4051

7:                                                ; preds = %3
  ret ptr %4, !dbg !4052
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4053 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4057, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i64 %1, metadata !4058, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr null, metadata !3909, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %0, metadata !3912, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %1, metadata !3913, metadata !DIExpression()), !dbg !4060
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4062
  call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !4063
  %4 = icmp eq ptr %3, null, !dbg !4065
  br i1 %4, label %5, label %6, !dbg !4066

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4067
  unreachable, !dbg !4067

6:                                                ; preds = %2
  ret ptr %3, !dbg !4068
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4069 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %1, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata ptr null, metadata !4035, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 %0, metadata !4036, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 %1, metadata !4037, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr null, metadata !4039, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %0, metadata !4042, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 %1, metadata !4043, metadata !DIExpression()), !dbg !4078
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4080
  call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !4081
  %4 = icmp eq ptr %3, null, !dbg !4083
  br i1 %4, label %5, label %6, !dbg !4084

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4085
  unreachable, !dbg !4085

6:                                                ; preds = %2
  ret ptr %3, !dbg !4086
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4087 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata ptr %0, metadata !835, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr %1, metadata !836, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 1, metadata !837, metadata !DIExpression()), !dbg !4094
  %3 = load i64, ptr %1, align 8, !dbg !4096, !tbaa !3184
  call void @llvm.dbg.value(metadata i64 %3, metadata !838, metadata !DIExpression()), !dbg !4094
  %4 = icmp eq ptr %0, null, !dbg !4097
  br i1 %4, label %5, label %8, !dbg !4099

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4100
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4103
  br label %15, !dbg !4103

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4104
  %10 = add nuw i64 %9, 1, !dbg !4104
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4104
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4104
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %13, metadata !838, metadata !DIExpression()), !dbg !4094
  br i1 %12, label %14, label %15, !dbg !4107

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4108
  unreachable, !dbg !4108

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4094
  call void @llvm.dbg.value(metadata i64 %16, metadata !838, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %16, metadata !3912, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 1, metadata !3913, metadata !DIExpression()), !dbg !4109
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4111
  call void @llvm.dbg.value(metadata ptr %17, metadata !3917, metadata !DIExpression()), !dbg !4112
  %18 = icmp eq ptr %17, null, !dbg !4114
  br i1 %18, label %19, label %20, !dbg !4115

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4116
  unreachable, !dbg !4116

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !835, metadata !DIExpression()), !dbg !4094
  store i64 %16, ptr %1, align 8, !dbg !4117, !tbaa !3184
  ret ptr %17, !dbg !4118
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !830 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !835, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata ptr %1, metadata !836, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %2, metadata !837, metadata !DIExpression()), !dbg !4119
  %4 = load i64, ptr %1, align 8, !dbg !4120, !tbaa !3184
  call void @llvm.dbg.value(metadata i64 %4, metadata !838, metadata !DIExpression()), !dbg !4119
  %5 = icmp eq ptr %0, null, !dbg !4121
  br i1 %5, label %6, label %13, !dbg !4122

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4123
  br i1 %7, label %8, label %20, !dbg !4124

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %9, metadata !838, metadata !DIExpression()), !dbg !4119
  %10 = icmp ugt i64 %2, 128, !dbg !4127
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4128
  call void @llvm.dbg.value(metadata i64 %12, metadata !838, metadata !DIExpression()), !dbg !4119
  br label %20, !dbg !4129

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4130
  %15 = add nuw i64 %14, 1, !dbg !4130
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4130
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4130
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %18, metadata !838, metadata !DIExpression()), !dbg !4119
  br i1 %17, label %19, label %20, !dbg !4131

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4132
  unreachable, !dbg !4132

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4119
  call void @llvm.dbg.value(metadata i64 %21, metadata !838, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %21, metadata !3912, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %2, metadata !3913, metadata !DIExpression()), !dbg !4133
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %22, metadata !3917, metadata !DIExpression()), !dbg !4136
  %23 = icmp eq ptr %22, null, !dbg !4138
  br i1 %23, label %24, label %25, !dbg !4139

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4140
  unreachable, !dbg !4140

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !835, metadata !DIExpression()), !dbg !4119
  store i64 %21, ptr %1, align 8, !dbg !4141, !tbaa !3184
  ret ptr %22, !dbg !4142
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !850, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %1, metadata !851, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %2, metadata !852, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %3, metadata !853, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %4, metadata !854, metadata !DIExpression()), !dbg !4143
  %6 = load i64, ptr %1, align 8, !dbg !4144, !tbaa !3184
  call void @llvm.dbg.value(metadata i64 %6, metadata !855, metadata !DIExpression()), !dbg !4143
  %7 = ashr i64 %6, 1, !dbg !4145
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4145
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4145
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %10, metadata !856, metadata !DIExpression()), !dbg !4143
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %11, metadata !856, metadata !DIExpression()), !dbg !4143
  %12 = icmp sgt i64 %3, -1, !dbg !4148
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4150
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4150
  call void @llvm.dbg.value(metadata i64 %15, metadata !856, metadata !DIExpression()), !dbg !4143
  %16 = icmp slt i64 %4, 0, !dbg !4151
  br i1 %16, label %17, label %30, !dbg !4151

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4151
  br i1 %18, label %19, label %24, !dbg !4151

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4151
  %21 = udiv i64 9223372036854775807, %20, !dbg !4151
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4151
  br i1 %23, label %46, label %43, !dbg !4151

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4151
  br i1 %25, label %43, label %26, !dbg !4151

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4151
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4151
  %29 = icmp ult i64 %28, %15, !dbg !4151
  br i1 %29, label %46, label %43, !dbg !4151

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4151
  br i1 %31, label %43, label %32, !dbg !4151

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4151
  br i1 %33, label %34, label %40, !dbg !4151

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4151
  br i1 %35, label %43, label %36, !dbg !4151

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4151
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4151
  %39 = icmp ult i64 %38, %4, !dbg !4151
  br i1 %39, label %46, label %43, !dbg !4151

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4151
  br i1 %42, label %46, label %43, !dbg !4151

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !857, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4143
  %44 = mul i64 %15, %4, !dbg !4151
  call void @llvm.dbg.value(metadata i64 %44, metadata !857, metadata !DIExpression()), !dbg !4143
  %45 = icmp slt i64 %44, 128, !dbg !4151
  br i1 %45, label %46, label %51, !dbg !4151

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !858, metadata !DIExpression()), !dbg !4143
  %48 = sdiv i64 %47, %4, !dbg !4152
  call void @llvm.dbg.value(metadata i64 %48, metadata !856, metadata !DIExpression()), !dbg !4143
  %49 = srem i64 %47, %4, !dbg !4155
  %50 = sub nsw i64 %47, %49, !dbg !4156
  call void @llvm.dbg.value(metadata i64 %50, metadata !857, metadata !DIExpression()), !dbg !4143
  br label %51, !dbg !4157

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4143
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4143
  call void @llvm.dbg.value(metadata i64 %53, metadata !857, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %52, metadata !856, metadata !DIExpression()), !dbg !4143
  %54 = icmp eq ptr %0, null, !dbg !4158
  br i1 %54, label %55, label %56, !dbg !4160

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4161, !tbaa !3184
  br label %56, !dbg !4162

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4163
  %58 = icmp slt i64 %57, %2, !dbg !4165
  br i1 %58, label %59, label %96, !dbg !4166

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4167
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4167
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %62, metadata !856, metadata !DIExpression()), !dbg !4143
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4168
  br i1 %65, label %95, label %66, !dbg !4168

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4169

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4169
  br i1 %68, label %69, label %74, !dbg !4169

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4169
  %71 = udiv i64 9223372036854775807, %70, !dbg !4169
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4169
  br i1 %73, label %95, label %93, !dbg !4169

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4169
  br i1 %75, label %93, label %76, !dbg !4169

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4169
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4169
  %79 = icmp ult i64 %78, %62, !dbg !4169
  br i1 %79, label %95, label %93, !dbg !4169

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4169
  br i1 %81, label %93, label %82, !dbg !4169

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4169
  br i1 %83, label %84, label %90, !dbg !4169

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4169
  br i1 %85, label %93, label %86, !dbg !4169

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4169
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4169
  %89 = icmp ult i64 %88, %4, !dbg !4169
  br i1 %89, label %95, label %93, !dbg !4169

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4169
  br i1 %92, label %95, label %93, !dbg !4169

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !857, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4143
  %94 = mul i64 %62, %4, !dbg !4169
  call void @llvm.dbg.value(metadata i64 %94, metadata !857, metadata !DIExpression()), !dbg !4143
  br label %96, !dbg !4170

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #42, !dbg !4171
  unreachable, !dbg !4171

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4143
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4143
  call void @llvm.dbg.value(metadata i64 %98, metadata !857, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %97, metadata !856, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !3989, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %98, metadata !3990, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr %0, metadata !3992, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.value(metadata i64 %98, metadata !3996, metadata !DIExpression()), !dbg !4174
  %99 = icmp eq i64 %98, 0, !dbg !4176
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4176
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #47, !dbg !4177
  call void @llvm.dbg.value(metadata ptr %101, metadata !3917, metadata !DIExpression()), !dbg !4178
  %102 = icmp eq ptr %101, null, !dbg !4180
  br i1 %102, label %103, label %104, !dbg !4181

103:                                              ; preds = %96
  tail call void @xalloc_die() #42, !dbg !4182
  unreachable, !dbg !4182

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !850, metadata !DIExpression()), !dbg !4143
  store i64 %97, ptr %1, align 8, !dbg !4183, !tbaa !3184
  ret ptr %101, !dbg !4184
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4185 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4187, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata i64 %0, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i64 1, metadata !4192, metadata !DIExpression()), !dbg !4193
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4195
  call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !4196
  %3 = icmp eq ptr %2, null, !dbg !4198
  br i1 %3, label %4, label %5, !dbg !4199

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4200
  unreachable, !dbg !4200

5:                                                ; preds = %1
  ret ptr %2, !dbg !4201
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4202 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4189, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %1, metadata !4192, metadata !DIExpression()), !dbg !4203
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4204
  call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !4205
  %4 = icmp eq ptr %3, null, !dbg !4207
  br i1 %4, label %5, label %6, !dbg !4208

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4209
  unreachable, !dbg !4209

6:                                                ; preds = %2
  ret ptr %3, !dbg !4210
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4211 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4213, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata i64 %0, metadata !4215, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 1, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 1, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 1, metadata !4224, metadata !DIExpression()), !dbg !4225
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4227
  call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !4228
  %3 = icmp eq ptr %2, null, !dbg !4230
  br i1 %3, label %4, label %5, !dbg !4231

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4232
  unreachable, !dbg !4232

5:                                                ; preds = %1
  ret ptr %2, !dbg !4233
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4216 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4215, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %1, metadata !4218, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %1, metadata !4224, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata i64 %1, metadata !4224, metadata !DIExpression()), !dbg !4235
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !4238
  %4 = icmp eq ptr %3, null, !dbg !4240
  br i1 %4, label %5, label %6, !dbg !4241

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4242
  unreachable, !dbg !4242

6:                                                ; preds = %2
  ret ptr %3, !dbg !4243
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4244 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %1, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %1, metadata !3941, metadata !DIExpression()), !dbg !4251
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4253
  call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !4254
  %4 = icmp eq ptr %3, null, !dbg !4256
  br i1 %4, label %5, label %6, !dbg !4257

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4258
  unreachable, !dbg !4258

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4259, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata ptr %0, metadata !4265, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4266, metadata !DIExpression()), !dbg !4267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4269
  ret ptr %3, !dbg !4270
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4271 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4275, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3955, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %1, metadata !3957, metadata !DIExpression()), !dbg !4280
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4282
  call void @llvm.dbg.value(metadata ptr %3, metadata !3917, metadata !DIExpression()), !dbg !4283
  %4 = icmp eq ptr %3, null, !dbg !4285
  br i1 %4, label %5, label %6, !dbg !4286

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4287
  unreachable, !dbg !4287

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4259, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata ptr %0, metadata !4265, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !4266, metadata !DIExpression()), !dbg !4288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4290
  ret ptr %3, !dbg !4291
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4292 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4296, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.value(metadata i64 %1, metadata !4297, metadata !DIExpression()), !dbg !4299
  %3 = add nsw i64 %1, 1, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %3, metadata !3955, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %3, metadata !3957, metadata !DIExpression()), !dbg !4303
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %4, metadata !3917, metadata !DIExpression()), !dbg !4306
  %5 = icmp eq ptr %4, null, !dbg !4308
  br i1 %5, label %6, label %7, !dbg !4309

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4310
  unreachable, !dbg !4310

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4298, metadata !DIExpression()), !dbg !4299
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4311
  store i8 0, ptr %8, align 1, !dbg !4312, !tbaa !974
  call void @llvm.dbg.value(metadata ptr %4, metadata !4259, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata ptr %0, metadata !4265, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %1, metadata !4266, metadata !DIExpression()), !dbg !4313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4315
  ret ptr %4, !dbg !4316
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4317 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4319, metadata !DIExpression()), !dbg !4320
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4321
  %3 = add i64 %2, 1, !dbg !4322
  call void @llvm.dbg.value(metadata ptr %0, metadata !4248, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %3, metadata !4249, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 %3, metadata !3941, metadata !DIExpression()), !dbg !4325
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4327
  call void @llvm.dbg.value(metadata ptr %4, metadata !3917, metadata !DIExpression()), !dbg !4328
  %5 = icmp eq ptr %4, null, !dbg !4330
  br i1 %5, label %6, label %7, !dbg !4331

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4332
  unreachable, !dbg !4332

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4259, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %0, metadata !4265, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %3, metadata !4266, metadata !DIExpression()), !dbg !4333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4335
  ret ptr %4, !dbg !4336
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4337 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4341, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %1, metadata !4339, metadata !DIExpression()), !dbg !4342
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.174, ptr noundef nonnull @.str.2.175, i32 noundef 5) #40, !dbg !4341
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.176, ptr noundef %2) #40, !dbg !4341
  %3 = icmp eq i32 %1, 0, !dbg !4341
  tail call void @llvm.assume(i1 %3), !dbg !4341
  tail call void @abort() #42, !dbg !4343
  unreachable, !dbg !4343
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4344 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4382, metadata !DIExpression()), !dbg !4387
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4388
  call void @llvm.dbg.value(metadata i1 poison, metadata !4383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4387
  call void @llvm.dbg.value(metadata ptr %0, metadata !4389, metadata !DIExpression()), !dbg !4392
  %3 = load i32, ptr %0, align 8, !dbg !4394, !tbaa !4395
  %4 = and i32 %3, 32, !dbg !4396
  %5 = icmp eq i32 %4, 0, !dbg !4396
  call void @llvm.dbg.value(metadata i1 %5, metadata !4385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4387
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4397
  %7 = icmp eq i32 %6, 0, !dbg !4398
  call void @llvm.dbg.value(metadata i1 %7, metadata !4386, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4387
  br i1 %5, label %8, label %18, !dbg !4399

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4401
  call void @llvm.dbg.value(metadata i1 %9, metadata !4383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4387
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4402
  %11 = xor i1 %7, true, !dbg !4402
  %12 = sext i1 %11 to i32, !dbg !4402
  br i1 %10, label %21, label %13, !dbg !4402

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4403
  %15 = load i32, ptr %14, align 4, !dbg !4403, !tbaa !965
  %16 = icmp ne i32 %15, 9, !dbg !4404
  %17 = sext i1 %16 to i32, !dbg !4405
  br label %21, !dbg !4405

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4406

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4408
  store i32 0, ptr %20, align 4, !dbg !4410, !tbaa !965
  br label %21, !dbg !4408

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4387
  ret i32 %22, !dbg !4411
}

; Function Attrs: nounwind
declare !dbg !4412 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4416 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4455, metadata !DIExpression()), !dbg !4458
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4459
  call void @llvm.dbg.value(metadata i32 %2, metadata !4456, metadata !DIExpression()), !dbg !4458
  %3 = icmp slt i32 %2, 0, !dbg !4460
  br i1 %3, label %4, label %6, !dbg !4462

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4463
  br label %24, !dbg !4464

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4465
  %8 = icmp eq i32 %7, 0, !dbg !4465
  br i1 %8, label %13, label %9, !dbg !4467

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4468
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4469
  %12 = icmp eq i64 %11, -1, !dbg !4470
  br i1 %12, label %16, label %13, !dbg !4471

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4472
  %15 = icmp eq i32 %14, 0, !dbg !4472
  br i1 %15, label %16, label %18, !dbg !4473

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4455, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4457, metadata !DIExpression()), !dbg !4458
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4474
  call void @llvm.dbg.value(metadata i32 %17, metadata !4457, metadata !DIExpression()), !dbg !4458
  br label %24, !dbg !4475

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4476
  %20 = load i32, ptr %19, align 4, !dbg !4476, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %20, metadata !4455, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.value(metadata i32 0, metadata !4457, metadata !DIExpression()), !dbg !4458
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4474
  call void @llvm.dbg.value(metadata i32 %21, metadata !4457, metadata !DIExpression()), !dbg !4458
  %22 = icmp eq i32 %20, 0, !dbg !4477
  br i1 %22, label %24, label %23, !dbg !4475

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4479, !tbaa !965
  call void @llvm.dbg.value(metadata i32 -1, metadata !4457, metadata !DIExpression()), !dbg !4458
  br label %24, !dbg !4481

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4458
  ret i32 %25, !dbg !4482
}

; Function Attrs: nofree nounwind
declare !dbg !4483 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4484 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4485 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4488 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4526, metadata !DIExpression()), !dbg !4527
  %2 = icmp eq ptr %0, null, !dbg !4528
  br i1 %2, label %6, label %3, !dbg !4530

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4531
  %5 = icmp eq i32 %4, 0, !dbg !4531
  br i1 %5, label %6, label %8, !dbg !4532

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4533
  br label %16, !dbg !4534

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4535, metadata !DIExpression()), !dbg !4540
  %9 = load i32, ptr %0, align 8, !dbg !4542, !tbaa !4395
  %10 = and i32 %9, 256, !dbg !4544
  %11 = icmp eq i32 %10, 0, !dbg !4544
  br i1 %11, label %14, label %12, !dbg !4545

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4546
  br label %14, !dbg !4546

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4547
  br label %16, !dbg !4548

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4527
  ret i32 %17, !dbg !4549
}

; Function Attrs: nofree nounwind
declare !dbg !4550 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4551 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4589, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %1, metadata !4590, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i32 %2, metadata !4591, metadata !DIExpression()), !dbg !4595
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4596
  %5 = load ptr, ptr %4, align 8, !dbg !4596, !tbaa !4597
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4598
  %7 = load ptr, ptr %6, align 8, !dbg !4598, !tbaa !4599
  %8 = icmp eq ptr %5, %7, !dbg !4600
  br i1 %8, label %9, label %27, !dbg !4601

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4602
  %11 = load ptr, ptr %10, align 8, !dbg !4602, !tbaa !1821
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4603
  %13 = load ptr, ptr %12, align 8, !dbg !4603, !tbaa !4604
  %14 = icmp eq ptr %11, %13, !dbg !4605
  br i1 %14, label %15, label %27, !dbg !4606

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4607
  %17 = load ptr, ptr %16, align 8, !dbg !4607, !tbaa !4608
  %18 = icmp eq ptr %17, null, !dbg !4609
  br i1 %18, label %19, label %27, !dbg !4610

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4611
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4612
  call void @llvm.dbg.value(metadata i64 %21, metadata !4592, metadata !DIExpression()), !dbg !4613
  %22 = icmp eq i64 %21, -1, !dbg !4614
  br i1 %22, label %29, label %23, !dbg !4616

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4617, !tbaa !4395
  %25 = and i32 %24, -17, !dbg !4617
  store i32 %25, ptr %0, align 8, !dbg !4617, !tbaa !4395
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4618
  store i64 %21, ptr %26, align 8, !dbg !4619, !tbaa !4620
  br label %29, !dbg !4621

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4622
  br label %29, !dbg !4623

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4595
  ret i32 %30, !dbg !4624
}

; Function Attrs: nofree nounwind
declare !dbg !4625 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4633, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %1, metadata !4634, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %2, metadata !4635, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %3, metadata !4636, metadata !DIExpression()), !dbg !4638
  %5 = icmp eq ptr %1, null, !dbg !4639
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4641
  %7 = select i1 %5, ptr @.str.187, ptr %1, !dbg !4641
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4641
  call void @llvm.dbg.value(metadata i64 %8, metadata !4635, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %7, metadata !4634, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata ptr %6, metadata !4633, metadata !DIExpression()), !dbg !4638
  %9 = icmp eq ptr %3, null, !dbg !4642
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4644
  call void @llvm.dbg.value(metadata ptr %10, metadata !4636, metadata !DIExpression()), !dbg !4638
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #40, !dbg !4645
  call void @llvm.dbg.value(metadata i64 %11, metadata !4637, metadata !DIExpression()), !dbg !4638
  %12 = icmp ult i64 %11, -3, !dbg !4646
  br i1 %12, label %13, label %17, !dbg !4648

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #41, !dbg !4649
  %15 = icmp eq i32 %14, 0, !dbg !4649
  br i1 %15, label %16, label %29, !dbg !4650

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4651, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata ptr %10, metadata !4658, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 0, metadata !4661, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 8, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i64 0, ptr %10, align 1, !dbg !4665
  br label %29, !dbg !4666

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4667
  br i1 %18, label %19, label %20, !dbg !4669

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4670
  unreachable, !dbg !4670

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4671

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4673
  br i1 %23, label %29, label %24, !dbg !4674

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4675
  br i1 %25, label %29, label %26, !dbg !4678

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4679, !tbaa !974
  %28 = zext i8 %27 to i32, !dbg !4680
  store i32 %28, ptr %6, align 4, !dbg !4681, !tbaa !965
  br label %29, !dbg !4682

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4638
  ret i64 %30, !dbg !4683
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4684 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4692, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata i64 %1, metadata !4693, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata i64 %2, metadata !4694, metadata !DIExpression()), !dbg !4696
  %4 = icmp eq i64 %2, 0, !dbg !4697
  br i1 %4, label %8, label %5, !dbg !4697

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4697
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4697
  br i1 %7, label %13, label %8, !dbg !4697

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4695, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4696
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4695, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4696
  %9 = mul i64 %2, %1, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %9, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata ptr %0, metadata !4699, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i64 %9, metadata !4702, metadata !DIExpression()), !dbg !4703
  %10 = icmp eq i64 %9, 0, !dbg !4705
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4705
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #47, !dbg !4706
  br label %15, !dbg !4707

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4695, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4696
  %14 = tail call ptr @__errno_location() #43, !dbg !4708
  store i32 12, ptr %14, align 4, !dbg !4710, !tbaa !965
  br label %15, !dbg !4711

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4696
  ret ptr %16, !dbg !4712
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4715, metadata !DIExpression()), !dbg !4716
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #40, !dbg !4717
  ret i32 %2, !dbg !4718
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4719 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4721, metadata !DIExpression()), !dbg !4746
  call void @llvm.dbg.value(metadata i32 %1, metadata !4722, metadata !DIExpression()), !dbg !4746
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40, !dbg !4747
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4723, metadata !DIExpression()), !dbg !4748
  call void @llvm.va_start(ptr nonnull %3), !dbg !4749
  call void @llvm.dbg.value(metadata i32 -1, metadata !4734, metadata !DIExpression()), !dbg !4746
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
  ], !dbg !4750

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !4751
  %6 = icmp ult i32 %5, 41, !dbg !4751
  br i1 %6, label %7, label %13, !dbg !4751

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4751
  %9 = load ptr, ptr %8, align 16, !dbg !4751
  %10 = zext i32 %5 to i64, !dbg !4751
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !4751
  %12 = add nuw nsw i32 %5, 8, !dbg !4751
  store i32 %12, ptr %3, align 16, !dbg !4751
  br label %17, !dbg !4751

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4751
  %15 = load ptr, ptr %14, align 8, !dbg !4751
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !4751
  store ptr %16, ptr %14, align 8, !dbg !4751
  br label %17, !dbg !4751

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !4751
  %19 = load i32, ptr %18, align 4, !dbg !4751
  call void @llvm.dbg.value(metadata i32 %19, metadata !4735, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.value(metadata i32 %0, metadata !4753, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i32 %19, metadata !4756, metadata !DIExpression()), !dbg !4758
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #40, !dbg !4760
  call void @llvm.dbg.value(metadata i32 %20, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i32 %20, metadata !4734, metadata !DIExpression()), !dbg !4746
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !4761
  %23 = icmp ult i32 %22, 41, !dbg !4761
  br i1 %23, label %24, label %30, !dbg !4761

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4761
  %26 = load ptr, ptr %25, align 16, !dbg !4761
  %27 = zext i32 %22 to i64, !dbg !4761
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !4761
  %29 = add nuw nsw i32 %22, 8, !dbg !4761
  store i32 %29, ptr %3, align 16, !dbg !4761
  br label %34, !dbg !4761

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4761
  %32 = load ptr, ptr %31, align 8, !dbg !4761
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !4761
  store ptr %33, ptr %31, align 8, !dbg !4761
  br label %34, !dbg !4761

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !4761
  %36 = load i32, ptr %35, align 4, !dbg !4761
  call void @llvm.dbg.value(metadata i32 %36, metadata !4738, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.value(metadata i32 %0, metadata !794, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i32 %36, metadata !795, metadata !DIExpression()), !dbg !4763
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4765, !tbaa !965
  %38 = icmp sgt i32 %37, -1, !dbg !4767
  br i1 %38, label %39, label %51, !dbg !4768

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #40, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %40, metadata !796, metadata !DIExpression()), !dbg !4763
  %41 = icmp sgt i32 %40, -1, !dbg !4771
  br i1 %41, label %46, label %42, !dbg !4773

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #43, !dbg !4774
  %44 = load i32, ptr %43, align 4, !dbg !4774, !tbaa !965
  %45 = icmp eq i32 %44, 22, !dbg !4775
  br i1 %45, label %47, label %46, !dbg !4776

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4777, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %40, metadata !796, metadata !DIExpression()), !dbg !4763
  br label %107, !dbg !4779

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4753, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i32 %36, metadata !4756, metadata !DIExpression()), !dbg !4780
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !4783
  call void @llvm.dbg.value(metadata i32 %48, metadata !4757, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i32 %48, metadata !796, metadata !DIExpression()), !dbg !4763
  %49 = icmp sgt i32 %48, -1, !dbg !4784
  br i1 %49, label %50, label %107, !dbg !4786

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4787, !tbaa !965
  br label %55, !dbg !4788

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !4753, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i32 %36, metadata !4756, metadata !DIExpression()), !dbg !4789
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #40, !dbg !4791
  call void @llvm.dbg.value(metadata i32 %52, metadata !4757, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i32 %52, metadata !796, metadata !DIExpression()), !dbg !4763
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !4792
  call void @llvm.dbg.value(metadata i32 %57, metadata !796, metadata !DIExpression()), !dbg !4763
  %58 = icmp sgt i32 %57, -1, !dbg !4793
  %59 = select i1 %58, i1 %56, i1 false, !dbg !4779
  br i1 %59, label %60, label %107, !dbg !4779

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #40, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %61, metadata !797, metadata !DIExpression()), !dbg !4795
  %62 = icmp slt i32 %61, 0, !dbg !4796
  br i1 %62, label %67, label %63, !dbg !4797

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !4798
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #40, !dbg !4799
  %66 = icmp eq i32 %65, -1, !dbg !4800
  br i1 %66, label %67, label %107, !dbg !4801

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #43, !dbg !4802
  %69 = load i32, ptr %68, align 4, !dbg !4802, !tbaa !965
  call void @llvm.dbg.value(metadata i32 %69, metadata !800, metadata !DIExpression()), !dbg !4803
  %70 = call i32 @close(i32 noundef %57) #40, !dbg !4804
  store i32 %69, ptr %68, align 4, !dbg !4805, !tbaa !965
  call void @llvm.dbg.value(metadata i32 -1, metadata !796, metadata !DIExpression()), !dbg !4763
  br label %107, !dbg !4806

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !4807
  call void @llvm.dbg.value(metadata i32 %72, metadata !4734, metadata !DIExpression()), !dbg !4746
  br label %107, !dbg !4808

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !4809
  %75 = icmp ult i32 %74, 41, !dbg !4809
  br i1 %75, label %76, label %82, !dbg !4809

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4809
  %78 = load ptr, ptr %77, align 16, !dbg !4809
  %79 = zext i32 %74 to i64, !dbg !4809
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4809
  %81 = add nuw nsw i32 %74, 8, !dbg !4809
  store i32 %81, ptr %3, align 16, !dbg !4809
  br label %86, !dbg !4809

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4809
  %84 = load ptr, ptr %83, align 8, !dbg !4809
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !4809
  store ptr %85, ptr %83, align 8, !dbg !4809
  br label %86, !dbg !4809

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !4809
  %88 = load i32, ptr %87, align 4, !dbg !4809
  call void @llvm.dbg.value(metadata i32 %88, metadata !4740, metadata !DIExpression()), !dbg !4810
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #40, !dbg !4811
  call void @llvm.dbg.value(metadata i32 %89, metadata !4734, metadata !DIExpression()), !dbg !4746
  br label %107, !dbg !4812

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !4813
  %92 = icmp ult i32 %91, 41, !dbg !4813
  br i1 %92, label %93, label %99, !dbg !4813

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4813
  %95 = load ptr, ptr %94, align 16, !dbg !4813
  %96 = zext i32 %91 to i64, !dbg !4813
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !4813
  %98 = add nuw nsw i32 %91, 8, !dbg !4813
  store i32 %98, ptr %3, align 16, !dbg !4813
  br label %103, !dbg !4813

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4813
  %101 = load ptr, ptr %100, align 8, !dbg !4813
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !4813
  store ptr %102, ptr %100, align 8, !dbg !4813
  br label %103, !dbg !4813

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !4813
  %105 = load ptr, ptr %104, align 8, !dbg !4813
  call void @llvm.dbg.value(metadata ptr %105, metadata !4744, metadata !DIExpression()), !dbg !4814
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #40, !dbg !4815
  call void @llvm.dbg.value(metadata i32 %106, metadata !4734, metadata !DIExpression()), !dbg !4746
  br label %107, !dbg !4816

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !4817
  call void @llvm.dbg.value(metadata i32 %108, metadata !4734, metadata !DIExpression()), !dbg !4746
  call void @llvm.va_end(ptr nonnull %3), !dbg !4818
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40, !dbg !4819
  ret i32 %108, !dbg !4820
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4821 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4823, metadata !DIExpression()), !dbg !4828
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4824, metadata !DIExpression()), !dbg !4830
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4831
  %4 = icmp eq i32 %3, 0, !dbg !4831
  br i1 %4, label %5, label %12, !dbg !4833

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4834, metadata !DIExpression()), !dbg !4838
  %6 = load i16, ptr %2, align 16, !dbg !4841
  %7 = icmp eq i16 %6, 67, !dbg !4841
  br i1 %7, label %11, label %8, !dbg !4842

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4834, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata ptr @.str.1.196, metadata !4837, metadata !DIExpression()), !dbg !4843
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.196, i64 6), !dbg !4845
  %10 = icmp eq i32 %9, 0, !dbg !4846
  br i1 %10, label %11, label %12, !dbg !4847

11:                                               ; preds = %8, %5
  br label %12, !dbg !4848

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4828
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4849
  ret i1 %13, !dbg !4849
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4850 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4854, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata ptr %1, metadata !4855, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 %2, metadata !4856, metadata !DIExpression()), !dbg !4857
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4858
  ret i32 %4, !dbg !4859
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4864, metadata !DIExpression()), !dbg !4865
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4866
  ret ptr %2, !dbg !4867
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()), !dbg !4872
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4873
  call void @llvm.dbg.value(metadata ptr %2, metadata !4871, metadata !DIExpression()), !dbg !4872
  ret ptr %2, !dbg !4874
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4877, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata ptr %1, metadata !4878, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i64 %2, metadata !4879, metadata !DIExpression()), !dbg !4884
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()), !dbg !4885
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4887
  call void @llvm.dbg.value(metadata ptr %4, metadata !4871, metadata !DIExpression()), !dbg !4885
  call void @llvm.dbg.value(metadata ptr %4, metadata !4880, metadata !DIExpression()), !dbg !4884
  %5 = icmp eq ptr %4, null, !dbg !4888
  br i1 %5, label %6, label %9, !dbg !4889

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4890
  br i1 %7, label %19, label %8, !dbg !4893

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4894, !tbaa !974
  br label %19, !dbg !4895

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4896
  call void @llvm.dbg.value(metadata i64 %10, metadata !4881, metadata !DIExpression()), !dbg !4897
  %11 = icmp ult i64 %10, %2, !dbg !4898
  br i1 %11, label %12, label %14, !dbg !4900

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4901
  call void @llvm.dbg.value(metadata ptr %1, metadata !4903, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata ptr %4, metadata !4906, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i64 %13, metadata !4907, metadata !DIExpression()), !dbg !4908
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #40, !dbg !4910
  br label %19, !dbg !4911

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4912
  br i1 %15, label %19, label %16, !dbg !4915

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4916
  call void @llvm.dbg.value(metadata ptr %1, metadata !4903, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata ptr %4, metadata !4906, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.value(metadata i64 %17, metadata !4907, metadata !DIExpression()), !dbg !4918
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4920
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4921
  store i8 0, ptr %18, align 1, !dbg !4922, !tbaa !974
  br label %19, !dbg !4923

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4924
  ret i32 %20, !dbg !4925
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0,1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!73, !806, !439, !443, !473, !488, !756, !808, !811, !813, !815, !534, !548, !596, !817, !819, !748, !826, !860, !862, !864, !866, !868, !772, !870, !873, !791, !875, !879, !881}
!llvm.ident = !{!883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883, !883}
!llvm.module.flags = !{!884, !885, !886, !887, !888, !889}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tee.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cec0a20486dbac1b82051156d303a2f2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!87 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!88 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !213)
!212 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!235 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!491 = !{!492, !494, !514, !516, !518, !520, !486, !522, !524, !526, !528, !530}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !489, line: 272, type: !265, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "old_file_name", scope: !496, file: !489, line: 304, type: !141, isLocal: true, isDefinition: true)
!496 = distinct !DISubprogram(name: "verror_at_line", scope: !489, file: !489, line: 298, type: !497, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !507)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !85, !85, !141, !76, !141, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !501)
!501 = !{!502, !504, !505, !506}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !500, file: !503, baseType: !76, size: 32)
!503 = !DIFile(filename: "lib/error.c", directory: "/src")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !500, file: !503, baseType: !76, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !500, file: !503, baseType: !131, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !500, file: !503, baseType: !131, size: 64, offset: 128)
!507 = !{!508, !509, !510, !511, !512, !513}
!508 = !DILocalVariable(name: "status", arg: 1, scope: !496, file: !489, line: 298, type: !85)
!509 = !DILocalVariable(name: "errnum", arg: 2, scope: !496, file: !489, line: 298, type: !85)
!510 = !DILocalVariable(name: "file_name", arg: 3, scope: !496, file: !489, line: 298, type: !141)
!511 = !DILocalVariable(name: "line_number", arg: 4, scope: !496, file: !489, line: 298, type: !76)
!512 = !DILocalVariable(name: "message", arg: 5, scope: !496, file: !489, line: 298, type: !141)
!513 = !DILocalVariable(name: "args", arg: 6, scope: !496, file: !489, line: 298, type: !499)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "old_line_number", scope: !496, file: !489, line: 305, type: !76, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !489, line: 338, type: !19, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !301, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !489, line: 346, type: !279, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "error_message_count", scope: !488, file: !489, line: 69, type: !76, isLocal: false, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !488, file: !489, line: 295, type: !85, isLocal: false, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !296, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !489, line: 208, type: !459, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !489, line: 214, type: !265, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(name: "program_name", scope: !534, file: !535, line: 31, type: !141, isLocal: false, isDefinition: true)
!534 = distinct !DICompileUnit(language: DW_LANG_C11, file: !535, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !536, globals: !537, splitDebugInlining: false, nameTableKind: None)
!535 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!536 = !{!130}
!537 = !{!532, !538, !540}
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !535, line: 46, type: !301, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !535, line: 49, type: !19, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "utf07FF", scope: !544, file: !545, line: 46, type: !572, isLocal: true, isDefinition: true)
!544 = distinct !DISubprogram(name: "proper_name_lite", scope: !545, file: !545, line: 38, type: !546, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !550)
!545 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!546 = !DISubroutineType(types: !547)
!547 = !{!141, !141, !141}
!548 = distinct !DICompileUnit(language: DW_LANG_C11, file: !545, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !549, splitDebugInlining: false, nameTableKind: None)
!549 = !{!542}
!550 = !{!551, !552, !553, !554, !559}
!551 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !544, file: !545, line: 38, type: !141)
!552 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !544, file: !545, line: 38, type: !141)
!553 = !DILocalVariable(name: "translation", scope: !544, file: !545, line: 40, type: !141)
!554 = !DILocalVariable(name: "w", scope: !544, file: !545, line: 47, type: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !556, line: 37, baseType: !557)
!556 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !235, line: 57, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !235, line: 42, baseType: !76)
!559 = !DILocalVariable(name: "mbs", scope: !544, file: !545, line: 48, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !561, line: 6, baseType: !562)
!561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !563, line: 21, baseType: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 13, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !564, file: !563, line: 15, baseType: !85, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !564, file: !563, line: 20, baseType: !568, size: 32, offset: 32)
!568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !563, line: 16, size: 32, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !568, file: !563, line: 18, baseType: !76, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !568, file: !563, line: 19, baseType: !19, size: 32)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16, elements: !280)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !575, line: 78, type: !301, isLocal: true, isDefinition: true)
!575 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !575, line: 79, type: !274, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !575, line: 80, type: !375, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !575, line: 81, type: !375, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !575, line: 82, type: !162, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !575, line: 83, type: !279, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !575, line: 84, type: !301, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !575, line: 85, type: !296, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !575, line: 86, type: !296, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !575, line: 87, type: !301, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !596, file: !575, line: 76, type: !668, isLocal: false, isDefinition: true)
!596 = distinct !DICompileUnit(language: DW_LANG_C11, file: !575, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !597, retainedTypes: !603, globals: !604, splitDebugInlining: false, nameTableKind: None)
!597 = !{!113, !598, !89}
!598 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !114, line: 254, baseType: !76, size: 32, elements: !599)
!599 = !{!600, !601, !602}
!600 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!601 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!602 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!603 = !{!85, !137, !138}
!604 = !{!573, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !605, !609, !619, !621, !626, !628, !630, !632, !634, !657, !664, !666}
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !596, file: !575, line: 92, type: !607, isLocal: false, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 320, elements: !62)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !596, file: !575, line: 1040, type: !611, isLocal: false, isDefinition: true)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !575, line: 56, size: 448, elements: !612)
!612 = !{!613, !614, !615, !617, !618}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !611, file: !575, line: 59, baseType: !113, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !575, line: 62, baseType: !85, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !611, file: !575, line: 66, baseType: !616, size: 256, offset: 64)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !302)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !611, file: !575, line: 69, baseType: !141, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !611, file: !575, line: 72, baseType: !141, size: 64, offset: 384)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !596, file: !575, line: 107, type: !611, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "slot0", scope: !596, file: !575, line: 831, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 256)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !575, line: 321, type: !279, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !575, line: 357, type: !279, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !575, line: 358, type: !279, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !575, line: 199, type: !296, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "quote", scope: !636, file: !575, line: 228, type: !655, isLocal: true, isDefinition: true)
!636 = distinct !DISubprogram(name: "gettext_quote", scope: !575, file: !575, line: 197, type: !637, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!141, !141, !113}
!639 = !{!640, !641, !642, !643, !644}
!640 = !DILocalVariable(name: "msgid", arg: 1, scope: !636, file: !575, line: 197, type: !141)
!641 = !DILocalVariable(name: "s", arg: 2, scope: !636, file: !575, line: 197, type: !113)
!642 = !DILocalVariable(name: "translation", scope: !636, file: !575, line: 199, type: !141)
!643 = !DILocalVariable(name: "w", scope: !636, file: !575, line: 229, type: !555)
!644 = !DILocalVariable(name: "mbs", scope: !636, file: !575, line: 230, type: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !561, line: 6, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !563, line: 21, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 13, size: 64, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !647, file: !563, line: 15, baseType: !85, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !647, file: !563, line: 20, baseType: !651, size: 32, offset: 32)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !563, line: 16, size: 32, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !651, file: !563, line: 18, baseType: !76, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !651, file: !563, line: 19, baseType: !19, size: 32)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !656)
!656 = !{!281, !21}
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "slotvec", scope: !596, file: !575, line: 834, type: !659, isLocal: true, isDefinition: true)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !575, line: 823, size: 128, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !660, file: !575, line: 825, baseType: !138, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !660, file: !575, line: 826, baseType: !130, size: 64, offset: 64)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "nslots", scope: !596, file: !575, line: 832, type: !85, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "slotvec0", scope: !596, file: !575, line: 833, type: !660, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 704, elements: !405)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !671, line: 67, type: !157, isLocal: true, isDefinition: true)
!671 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !671, line: 69, type: !296, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !671, line: 83, type: !296, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !671, line: 83, type: !19, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !671, line: 85, type: !279, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !671, line: 88, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 171)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !671, line: 88, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 34)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !671, line: 105, type: !167, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !671, line: 109, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 23)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !671, line: 113, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 28)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !671, line: 120, type: !704, isLocal: true, isDefinition: true)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !705)
!705 = !{!706}
!706 = !DISubrange(count: 32)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !671, line: 127, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 36)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !671, line: 134, type: !323, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !671, line: 142, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !430)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !671, line: 150, type: !719, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 48)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !671, line: 159, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 52)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !671, line: 170, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 60)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !671, line: 248, type: !162, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !671, line: 248, type: !342, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !162, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !152, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !671, line: 254, type: !323, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !671, line: 259, type: !3, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !671, line: 259, type: !454, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !748, file: !749, line: 26, type: !751, isLocal: false, isDefinition: true)
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !750, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!750 = !{!746}
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 376, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 47)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "exit_failure", scope: !756, file: !757, line: 24, type: !759, isLocal: false, isDefinition: true)
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !758, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!758 = !{!754}
!759 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !762, line: 34, type: !172, isLocal: true, isDefinition: true)
!762 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !762, line: 34, type: !296, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !762, line: 34, type: !318, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !769, line: 108, type: !56, isLocal: true, isDefinition: true)
!769 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "internal_state", scope: !772, file: !769, line: 97, type: !775, isLocal: true, isDefinition: true)
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, globals: !774, splitDebugInlining: false, nameTableKind: None)
!773 = !{!131, !138, !143}
!774 = !{!767, !770}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !561, line: 6, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !563, line: 21, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 13, size: 64, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !777, file: !563, line: 15, baseType: !85, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !777, file: !563, line: 20, baseType: !781, size: 32, offset: 32)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !563, line: 16, size: 32, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !781, file: !563, line: 18, baseType: !76, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !781, file: !563, line: 19, baseType: !19, size: 32)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !787, file: !788, line: 506, type: !85, isLocal: true, isDefinition: true)
!787 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !788, file: !788, line: 485, type: !789, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !793)
!788 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!789 = !DISubroutineType(types: !790)
!790 = !{!85, !85, !85}
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !792, splitDebugInlining: false, nameTableKind: None)
!792 = !{!785}
!793 = !{!794, !795, !796, !797, !800}
!794 = !DILocalVariable(name: "fd", arg: 1, scope: !787, file: !788, line: 485, type: !85)
!795 = !DILocalVariable(name: "target", arg: 2, scope: !787, file: !788, line: 485, type: !85)
!796 = !DILocalVariable(name: "result", scope: !787, file: !788, line: 487, type: !85)
!797 = !DILocalVariable(name: "flags", scope: !798, file: !788, line: 530, type: !85)
!798 = distinct !DILexicalBlock(scope: !799, file: !788, line: 529, column: 5)
!799 = distinct !DILexicalBlock(scope: !787, file: !788, line: 528, column: 7)
!800 = !DILocalVariable(name: "saved_errno", scope: !801, file: !788, line: 533, type: !85)
!801 = distinct !DILexicalBlock(scope: !802, file: !788, line: 532, column: 9)
!802 = distinct !DILexicalBlock(scope: !798, file: !788, line: 531, column: 11)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !805, line: 35, type: !274, isLocal: true, isDefinition: true)
!805 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!806 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !807, splitDebugInlining: false, nameTableKind: None)
!807 = !{!419, !425, !427, !432}
!808 = distinct !DICompileUnit(language: DW_LANG_C11, file: !809, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !810, splitDebugInlining: false, nameTableKind: None)
!809 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!810 = !{!104}
!811 = distinct !DICompileUnit(language: DW_LANG_C11, file: !812, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!812 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!813 = distinct !DICompileUnit(language: DW_LANG_C11, file: !814, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !816, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!817 = distinct !DICompileUnit(language: DW_LANG_C11, file: !818, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!818 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!819 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !820, retainedTypes: !824, globals: !825, splitDebugInlining: false, nameTableKind: None)
!820 = !{!821}
!821 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !671, line: 40, baseType: !76, size: 32, elements: !822)
!822 = !{!823}
!823 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!824 = !{!131}
!825 = !{!669, !672, !674, !676, !678, !680, !685, !690, !692, !697, !702, !707, !712, !714, !717, !722, !727, !732, !734, !736, !738, !740, !742, !744}
!826 = distinct !DICompileUnit(language: DW_LANG_C11, file: !827, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !828, retainedTypes: !859, splitDebugInlining: false, nameTableKind: None)
!827 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!828 = !{!829, !841}
!829 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !830, file: !827, line: 188, baseType: !76, size: 32, elements: !839)
!830 = distinct !DISubprogram(name: "x2nrealloc", scope: !827, file: !827, line: 176, type: !831, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !834)
!831 = !DISubroutineType(types: !832)
!832 = !{!131, !131, !833, !138}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!834 = !{!835, !836, !837, !838}
!835 = !DILocalVariable(name: "p", arg: 1, scope: !830, file: !827, line: 176, type: !131)
!836 = !DILocalVariable(name: "pn", arg: 2, scope: !830, file: !827, line: 176, type: !833)
!837 = !DILocalVariable(name: "s", arg: 3, scope: !830, file: !827, line: 176, type: !138)
!838 = !DILocalVariable(name: "n", scope: !830, file: !827, line: 178, type: !138)
!839 = !{!840}
!840 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!841 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !842, file: !827, line: 228, baseType: !76, size: 32, elements: !839)
!842 = distinct !DISubprogram(name: "xpalloc", scope: !827, file: !827, line: 223, type: !843, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !849)
!843 = !DISubroutineType(types: !844)
!844 = !{!131, !131, !845, !846, !848, !846}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !847, line: 130, baseType: !848)
!847 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !139, line: 35, baseType: !236)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858}
!850 = !DILocalVariable(name: "pa", arg: 1, scope: !842, file: !827, line: 223, type: !131)
!851 = !DILocalVariable(name: "pn", arg: 2, scope: !842, file: !827, line: 223, type: !845)
!852 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !842, file: !827, line: 223, type: !846)
!853 = !DILocalVariable(name: "n_max", arg: 4, scope: !842, file: !827, line: 223, type: !848)
!854 = !DILocalVariable(name: "s", arg: 5, scope: !842, file: !827, line: 223, type: !846)
!855 = !DILocalVariable(name: "n0", scope: !842, file: !827, line: 230, type: !846)
!856 = !DILocalVariable(name: "n", scope: !842, file: !827, line: 237, type: !846)
!857 = !DILocalVariable(name: "nbytes", scope: !842, file: !827, line: 248, type: !846)
!858 = !DILocalVariable(name: "adjusted_nbytes", scope: !842, file: !827, line: 252, type: !846)
!859 = !{!130, !131, !179, !236, !140}
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !861, splitDebugInlining: false, nameTableKind: None)
!861 = !{!760, !763, !765}
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!872 = !{!179, !140, !131}
!873 = distinct !DICompileUnit(language: DW_LANG_C11, file: !874, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!874 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !805, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !876, splitDebugInlining: false, nameTableKind: None)
!876 = !{!877, !803}
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(scope: null, file: !805, line: 35, type: !279, isLocal: true, isDefinition: true)
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !880, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!880 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!881 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !824, splitDebugInlining: false, nameTableKind: None)
!882 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!883 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!884 = !{i32 7, !"Dwarf Version", i32 5}
!885 = !{i32 2, !"Debug Info Version", i32 3}
!886 = !{i32 1, !"wchar_size", i32 4}
!887 = !{i32 8, !"PIC Level", i32 2}
!888 = !{i32 7, !"PIE Level", i32 2}
!889 = !{i32 7, !"uwtable", i32 2}
!890 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !135, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !891)
!891 = !{!892}
!892 = !DILocalVariable(name: "status", arg: 1, scope: !890, file: !2, line: 81, type: !85)
!893 = !DILocation(line: 0, scope: !890)
!894 = !DILocation(line: 83, column: 14, scope: !895)
!895 = distinct !DILexicalBlock(scope: !890, file: !2, line: 83, column: 7)
!896 = !DILocation(line: 83, column: 7, scope: !890)
!897 = !DILocation(line: 84, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !2, line: 84, column: 5)
!899 = !{!900, !900, i64 0}
!900 = !{!"any pointer", !901, i64 0}
!901 = !{!"omnipotent char", !902, i64 0}
!902 = !{!"Simple C/C++ TBAA"}
!903 = !DILocation(line: 87, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !895, file: !2, line: 86, column: 5)
!905 = !DILocation(line: 88, column: 7, scope: !904)
!906 = !DILocation(line: 92, column: 7, scope: !904)
!907 = !DILocation(line: 96, column: 7, scope: !904)
!908 = !DILocation(line: 100, column: 7, scope: !904)
!909 = !DILocation(line: 104, column: 7, scope: !904)
!910 = !DILocation(line: 108, column: 7, scope: !904)
!911 = !DILocation(line: 109, column: 7, scope: !904)
!912 = !DILocation(line: 110, column: 7, scope: !904)
!913 = !DILocalVariable(name: "program", arg: 1, scope: !914, file: !84, line: 836, type: !141)
!914 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !915, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !141}
!917 = !{!913, !918, !925, !926, !928, !929}
!918 = !DILocalVariable(name: "infomap", scope: !914, file: !84, line: 838, type: !919)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 896, elements: !297)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !914, file: !84, line: 838, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !921, file: !84, line: 838, baseType: !141, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !921, file: !84, line: 838, baseType: !141, size: 64, offset: 64)
!925 = !DILocalVariable(name: "node", scope: !914, file: !84, line: 848, type: !141)
!926 = !DILocalVariable(name: "map_prog", scope: !914, file: !84, line: 849, type: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!928 = !DILocalVariable(name: "lc_messages", scope: !914, file: !84, line: 861, type: !141)
!929 = !DILocalVariable(name: "url_program", scope: !914, file: !84, line: 874, type: !141)
!930 = !DILocation(line: 0, scope: !914, inlinedAt: !931)
!931 = distinct !DILocation(line: 123, column: 7, scope: !904)
!932 = !DILocation(line: 857, column: 3, scope: !914, inlinedAt: !931)
!933 = !DILocation(line: 861, column: 29, scope: !914, inlinedAt: !931)
!934 = !DILocation(line: 862, column: 7, scope: !935, inlinedAt: !931)
!935 = distinct !DILexicalBlock(scope: !914, file: !84, line: 862, column: 7)
!936 = !DILocation(line: 862, column: 19, scope: !935, inlinedAt: !931)
!937 = !DILocation(line: 862, column: 22, scope: !935, inlinedAt: !931)
!938 = !DILocation(line: 862, column: 7, scope: !914, inlinedAt: !931)
!939 = !DILocation(line: 868, column: 7, scope: !940, inlinedAt: !931)
!940 = distinct !DILexicalBlock(scope: !935, file: !84, line: 863, column: 5)
!941 = !DILocation(line: 870, column: 5, scope: !940, inlinedAt: !931)
!942 = !DILocation(line: 875, column: 3, scope: !914, inlinedAt: !931)
!943 = !DILocation(line: 877, column: 3, scope: !914, inlinedAt: !931)
!944 = !DILocation(line: 125, column: 3, scope: !890)
!945 = !DISubprogram(name: "dcgettext", scope: !946, file: !946, line: 51, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!946 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!947 = !DISubroutineType(types: !948)
!948 = !{!130, !141, !141, !85}
!949 = !{}
!950 = !DISubprogram(name: "__fprintf_chk", scope: !951, file: !951, line: 93, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!951 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!952 = !DISubroutineType(types: !953)
!953 = !{!85, !954, !85, !955, null}
!954 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!955 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!956 = !DISubprogram(name: "__printf_chk", scope: !951, file: !951, line: 95, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!957 = !DISubroutineType(types: !958)
!958 = !{!85, !85, !955, null}
!959 = !DISubprogram(name: "fputs_unlocked", scope: !960, file: !960, line: 691, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!960 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!961 = !DISubroutineType(types: !962)
!962 = !{!85, !955, !954}
!963 = !DILocation(line: 0, scope: !186)
!964 = !DILocation(line: 581, column: 7, scope: !194)
!965 = !{!966, !966, i64 0}
!966 = !{!"int", !901, i64 0}
!967 = !DILocation(line: 581, column: 19, scope: !194)
!968 = !DILocation(line: 581, column: 7, scope: !186)
!969 = !DILocation(line: 585, column: 26, scope: !193)
!970 = !DILocation(line: 0, scope: !193)
!971 = !DILocation(line: 586, column: 23, scope: !193)
!972 = !DILocation(line: 586, column: 28, scope: !193)
!973 = !DILocation(line: 586, column: 32, scope: !193)
!974 = !{!901, !901, i64 0}
!975 = !DILocation(line: 586, column: 38, scope: !193)
!976 = !DILocalVariable(name: "__s1", arg: 1, scope: !977, file: !978, line: 1359, type: !141)
!977 = distinct !DISubprogram(name: "streq", scope: !978, file: !978, line: 1359, type: !979, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !981)
!978 = !DIFile(filename: "./lib/string.h", directory: "/src")
!979 = !DISubroutineType(types: !980)
!980 = !{!179, !141, !141}
!981 = !{!976, !982}
!982 = !DILocalVariable(name: "__s2", arg: 2, scope: !977, file: !978, line: 1359, type: !141)
!983 = !DILocation(line: 0, scope: !977, inlinedAt: !984)
!984 = distinct !DILocation(line: 586, column: 41, scope: !193)
!985 = !DILocation(line: 1361, column: 11, scope: !977, inlinedAt: !984)
!986 = !DILocation(line: 1361, column: 10, scope: !977, inlinedAt: !984)
!987 = !DILocation(line: 586, column: 19, scope: !193)
!988 = !DILocation(line: 587, column: 5, scope: !193)
!989 = !DILocation(line: 588, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !186, file: !84, line: 588, column: 7)
!991 = !DILocation(line: 588, column: 7, scope: !186)
!992 = !DILocation(line: 590, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !84, line: 589, column: 5)
!994 = !DILocation(line: 591, column: 7, scope: !993)
!995 = !DILocation(line: 595, column: 37, scope: !186)
!996 = !DILocation(line: 595, column: 35, scope: !186)
!997 = !DILocation(line: 596, column: 29, scope: !186)
!998 = !DILocation(line: 597, column: 8, scope: !201)
!999 = !DILocation(line: 597, column: 7, scope: !186)
!1000 = !DILocation(line: 604, column: 24, scope: !200)
!1001 = !DILocation(line: 604, column: 12, scope: !201)
!1002 = !DILocation(line: 0, scope: !199)
!1003 = !DILocation(line: 610, column: 16, scope: !199)
!1004 = !DILocation(line: 610, column: 7, scope: !199)
!1005 = !DILocation(line: 611, column: 21, scope: !199)
!1006 = !{!1007, !1007, i64 0}
!1007 = !{!"short", !901, i64 0}
!1008 = !DILocation(line: 611, column: 19, scope: !199)
!1009 = !DILocation(line: 611, column: 16, scope: !199)
!1010 = !DILocation(line: 610, column: 30, scope: !199)
!1011 = distinct !{!1011, !1004, !1005, !1012}
!1012 = !{!"llvm.loop.mustprogress"}
!1013 = !DILocation(line: 612, column: 18, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !199, file: !84, line: 612, column: 11)
!1015 = !DILocation(line: 612, column: 11, scope: !199)
!1016 = !DILocation(line: 618, column: 5, scope: !199)
!1017 = !DILocation(line: 620, column: 23, scope: !186)
!1018 = !DILocation(line: 625, column: 39, scope: !186)
!1019 = !DILocation(line: 626, column: 3, scope: !186)
!1020 = !DILocation(line: 626, column: 10, scope: !186)
!1021 = !DILocation(line: 626, column: 21, scope: !186)
!1022 = !DILocation(line: 628, column: 44, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !84, line: 628, column: 11)
!1024 = distinct !DILexicalBlock(scope: !186, file: !84, line: 627, column: 5)
!1025 = !DILocation(line: 628, column: 32, scope: !1023)
!1026 = !DILocation(line: 628, column: 49, scope: !1023)
!1027 = !DILocation(line: 628, column: 11, scope: !1024)
!1028 = !DILocation(line: 630, column: 11, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !84, line: 630, column: 11)
!1030 = !DILocation(line: 630, column: 11, scope: !1024)
!1031 = !DILocation(line: 632, column: 26, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !84, line: 632, column: 15)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !84, line: 631, column: 9)
!1034 = !DILocation(line: 632, column: 34, scope: !1032)
!1035 = !DILocation(line: 632, column: 37, scope: !1032)
!1036 = !DILocation(line: 632, column: 15, scope: !1033)
!1037 = !DILocation(line: 636, column: 16, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !84, line: 636, column: 15)
!1039 = !DILocation(line: 636, column: 29, scope: !1038)
!1040 = !DILocation(line: 640, column: 16, scope: !1024)
!1041 = distinct !{!1041, !1019, !1042, !1012}
!1042 = !DILocation(line: 641, column: 5, scope: !186)
!1043 = !DILocation(line: 644, column: 3, scope: !186)
!1044 = !DILocation(line: 0, scope: !977, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1046 = !DILocation(line: 0, scope: !977, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1048 = !DILocation(line: 0, scope: !977, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1050 = !DILocation(line: 0, scope: !977, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1052 = !DILocation(line: 0, scope: !977, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1054 = !DILocation(line: 0, scope: !977, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1056 = !DILocation(line: 0, scope: !977, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1058 = !DILocation(line: 0, scope: !977, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1060 = !DILocation(line: 0, scope: !977, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1062 = !DILocation(line: 0, scope: !977, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1064 = !DILocation(line: 663, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !186, file: !84, line: 663, column: 7)
!1066 = !DILocation(line: 664, column: 7, scope: !1065)
!1067 = !DILocation(line: 664, column: 10, scope: !1065)
!1068 = !DILocation(line: 663, column: 7, scope: !186)
!1069 = !DILocation(line: 669, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !84, line: 665, column: 5)
!1071 = !DILocation(line: 671, column: 5, scope: !1070)
!1072 = !DILocation(line: 676, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1065, file: !84, line: 673, column: 5)
!1074 = !DILocation(line: 679, column: 3, scope: !186)
!1075 = !DILocation(line: 683, column: 3, scope: !186)
!1076 = !DILocation(line: 686, column: 3, scope: !186)
!1077 = !DILocation(line: 688, column: 3, scope: !186)
!1078 = !DILocation(line: 691, column: 3, scope: !186)
!1079 = !DILocation(line: 695, column: 3, scope: !186)
!1080 = !DILocation(line: 696, column: 1, scope: !186)
!1081 = !DISubprogram(name: "setlocale", scope: !1082, file: !1082, line: 122, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1082 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!130, !85, !141}
!1085 = !DISubprogram(name: "strncmp", scope: !1086, file: !1086, line: 159, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1086 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!85, !141, !141, !138}
!1089 = !DISubprogram(name: "exit", scope: !1090, file: !1090, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1090 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1091 = !DISubprogram(name: "getenv", scope: !1090, file: !1090, line: 641, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!130, !141}
!1094 = !DISubprogram(name: "strcmp", scope: !1086, file: !1086, line: 156, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!85, !141, !141}
!1097 = !DISubprogram(name: "strspn", scope: !1086, file: !1086, line: 297, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!140, !141, !141}
!1100 = !DISubprogram(name: "strchr", scope: !1086, file: !1086, line: 246, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!130, !141, !85}
!1103 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1109 = !DISubprogram(name: "strcspn", scope: !1086, file: !1086, line: 293, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1110 = !DISubprogram(name: "fwrite_unlocked", scope: !960, file: !960, line: 704, type: !1111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!138, !1113, !138, !138, !954}
!1113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!1114 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 129, type: !1115, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1118)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!85, !85, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1118 = !{!1119, !1120, !1121, !1122, !1123}
!1119 = !DILocalVariable(name: "argc", arg: 1, scope: !1114, file: !2, line: 129, type: !85)
!1120 = !DILocalVariable(name: "argv", arg: 2, scope: !1114, file: !2, line: 129, type: !1117)
!1121 = !DILocalVariable(name: "optc", scope: !1114, file: !2, line: 139, type: !85)
!1122 = !DILocalVariable(name: "pipe_check", scope: !1114, file: !2, line: 177, type: !179)
!1123 = !DILocalVariable(name: "ok", scope: !1114, file: !2, line: 184, type: !179)
!1124 = !DILocation(line: 0, scope: !1114)
!1125 = !DILocation(line: 132, column: 21, scope: !1114)
!1126 = !DILocation(line: 132, column: 3, scope: !1114)
!1127 = !DILocation(line: 133, column: 3, scope: !1114)
!1128 = !DILocation(line: 134, column: 3, scope: !1114)
!1129 = !DILocation(line: 135, column: 3, scope: !1114)
!1130 = !DILocation(line: 137, column: 3, scope: !1114)
!1131 = !DILocation(line: 140, column: 3, scope: !1114)
!1132 = !DILocation(line: 140, column: 18, scope: !1114)
!1133 = !DILocation(line: 145, column: 18, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 143, column: 9)
!1135 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 141, column: 5)
!1136 = !DILocation(line: 146, column: 11, scope: !1134)
!1137 = !DILocation(line: 149, column: 29, scope: !1134)
!1138 = !DILocation(line: 150, column: 11, scope: !1134)
!1139 = !DILocation(line: 153, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 153, column: 15)
!1141 = !DILocation(line: 153, column: 15, scope: !1134)
!1142 = !DILocation(line: 154, column: 28, scope: !1140)
!1143 = !DILocation(line: 154, column: 26, scope: !1140)
!1144 = !DILocation(line: 154, column: 13, scope: !1140)
!1145 = distinct !{!1145, !1131, !1146, !1012}
!1146 = !DILocation(line: 167, column: 5, scope: !1114)
!1147 = !DILocation(line: 157, column: 26, scope: !1140)
!1148 = !DILocation(line: 160, column: 9, scope: !1134)
!1149 = !DILocation(line: 162, column: 9, scope: !1134)
!1150 = !DILocation(line: 165, column: 11, scope: !1134)
!1151 = !DILocation(line: 169, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 169, column: 7)
!1153 = !DILocation(line: 169, column: 7, scope: !1114)
!1154 = !DILocation(line: 170, column: 5, scope: !1152)
!1155 = !DILocation(line: 172, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 172, column: 7)
!1157 = !DILocation(line: 172, column: 20, scope: !1156)
!1158 = !DILocation(line: 172, column: 7, scope: !1114)
!1159 = !DILocation(line: 173, column: 5, scope: !1156)
!1160 = !DILocation(line: 177, column: 23, scope: !1114)
!1161 = !DILocation(line: 178, column: 23, scope: !1114)
!1162 = !DILocation(line: 179, column: 25, scope: !1114)
!1163 = !DILocation(line: 184, column: 31, scope: !1114)
!1164 = !DILocation(line: 184, column: 29, scope: !1114)
!1165 = !DILocation(line: 184, column: 40, scope: !1114)
!1166 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1167, file: !2, line: 231, type: !85)
!1167 = distinct !DISubprogram(name: "tee_files", scope: !2, file: !2, line: 231, type: !1168, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!179, !85, !1117, !179}
!1170 = !{!1166, !1171, !1172, !1173, !1174, !1175, !1177, !1181, !1185, !1186, !1187, !1188, !1190, !1197, !1201, !1203}
!1171 = !DILocalVariable(name: "files", arg: 2, scope: !1167, file: !2, line: 231, type: !1117)
!1172 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !1167, file: !2, line: 231, type: !179)
!1173 = !DILocalVariable(name: "n_outputs", scope: !1167, file: !2, line: 233, type: !138)
!1174 = !DILocalVariable(name: "descriptors", scope: !1167, file: !2, line: 234, type: !415)
!1175 = !DILocalVariable(name: "out_pollable", scope: !1167, file: !2, line: 235, type: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1177 = !DILocalVariable(name: "buffer", scope: !1167, file: !2, line: 236, type: !1178)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 8192)
!1181 = !DILocalVariable(name: "bytes_read", scope: !1167, file: !2, line: 237, type: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1183, line: 108, baseType: !1184)
!1183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !235, line: 194, baseType: !236)
!1185 = !DILocalVariable(name: "first_out", scope: !1167, file: !2, line: 238, type: !85)
!1186 = !DILocalVariable(name: "ok", scope: !1167, file: !2, line: 239, type: !179)
!1187 = !DILocalVariable(name: "flags", scope: !1167, file: !2, line: 240, type: !85)
!1188 = !DILocalVariable(name: "i", scope: !1189, file: !2, line: 259, type: !85)
!1189 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 259, column: 3)
!1190 = !DILocalVariable(name: "__errstatus", scope: !1191, file: !2, line: 267, type: !1196)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 267, column: 11)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 264, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 263, column: 11)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 260, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 259, column: 3)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1197 = !DILocalVariable(name: "err", scope: !1198, file: !2, line: 285, type: !85)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 283, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 282, column: 11)
!1200 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 281, column: 5)
!1201 = !DILocalVariable(name: "i", scope: !1202, file: !2, line: 312, type: !85)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 312, column: 7)
!1203 = !DILocalVariable(name: "i", scope: !1204, file: !2, line: 331, type: !85)
!1204 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 331, column: 3)
!1205 = !DILocation(line: 0, scope: !1167, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 184, column: 13, scope: !1114)
!1207 = !DILocation(line: 236, column: 3, scope: !1167, inlinedAt: !1206)
!1208 = !DILocation(line: 236, column: 8, scope: !1167, inlinedAt: !1206)
!1209 = !DILocation(line: 240, column: 48, scope: !1167, inlinedAt: !1206)
!1210 = !DILocation(line: 240, column: 45, scope: !1167, inlinedAt: !1206)
!1211 = !DILocation(line: 244, column: 12, scope: !1167, inlinedAt: !1206)
!1212 = !DILocation(line: 244, column: 3, scope: !1167, inlinedAt: !1206)
!1213 = !DILocation(line: 249, column: 34, scope: !1167, inlinedAt: !1206)
!1214 = !DILocation(line: 249, column: 27, scope: !1167, inlinedAt: !1206)
!1215 = !DILocation(line: 249, column: 17, scope: !1167, inlinedAt: !1206)
!1216 = !DILocation(line: 250, column: 7, scope: !1167, inlinedAt: !1206)
!1217 = !DILocation(line: 251, column: 20, scope: !1218, inlinedAt: !1206)
!1218 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 250, column: 7)
!1219 = !DILocation(line: 255, column: 23, scope: !1220, inlinedAt: !1206)
!1220 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 254, column: 7)
!1221 = !DILocation(line: 255, column: 21, scope: !1220, inlinedAt: !1206)
!1222 = !{!1223, !1223, i64 0}
!1223 = !{!"_Bool", !901, i64 0}
!1224 = !DILocation(line: 255, column: 5, scope: !1220, inlinedAt: !1206)
!1225 = !DILocation(line: 253, column: 18, scope: !1167, inlinedAt: !1206)
!1226 = !DILocation(line: 252, column: 8, scope: !1167, inlinedAt: !1206)
!1227 = !DILocation(line: 256, column: 24, scope: !1167, inlinedAt: !1206)
!1228 = !DILocation(line: 256, column: 12, scope: !1167, inlinedAt: !1206)
!1229 = !DILocation(line: 0, scope: !1189, inlinedAt: !1206)
!1230 = !DILocation(line: 259, column: 21, scope: !1195, inlinedAt: !1206)
!1231 = !DILocation(line: 259, column: 3, scope: !1189, inlinedAt: !1206)
!1232 = !DILocation(line: 280, column: 3, scope: !1167, inlinedAt: !1206)
!1233 = !DILocation(line: 262, column: 30, scope: !1194, inlinedAt: !1206)
!1234 = !DILocation(line: 262, column: 24, scope: !1194, inlinedAt: !1206)
!1235 = !DILocation(line: 262, column: 7, scope: !1194, inlinedAt: !1206)
!1236 = !DILocation(line: 262, column: 22, scope: !1194, inlinedAt: !1206)
!1237 = !DILocation(line: 263, column: 26, scope: !1193, inlinedAt: !1206)
!1238 = !DILocation(line: 263, column: 11, scope: !1194, inlinedAt: !1206)
!1239 = !DILocation(line: 265, column: 15, scope: !1192, inlinedAt: !1206)
!1240 = !DILocation(line: 266, column: 13, scope: !1241, inlinedAt: !1206)
!1241 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 265, column: 15)
!1242 = !DILocation(line: 266, column: 29, scope: !1241, inlinedAt: !1206)
!1243 = !DILocation(line: 267, column: 11, scope: !1192, inlinedAt: !1206)
!1244 = !DILocation(line: 0, scope: !1191, inlinedAt: !1206)
!1245 = !DILocation(line: 267, column: 11, scope: !1191, inlinedAt: !1206)
!1246 = !DILocation(line: 274, column: 15, scope: !1247, inlinedAt: !1206)
!1247 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 273, column: 9)
!1248 = !DILocation(line: 275, column: 31, scope: !1249, inlinedAt: !1206)
!1249 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 274, column: 15)
!1250 = !DILocation(line: 275, column: 13, scope: !1249, inlinedAt: !1206)
!1251 = !DILocation(line: 275, column: 29, scope: !1249, inlinedAt: !1206)
!1252 = !DILocation(line: 276, column: 20, scope: !1247, inlinedAt: !1206)
!1253 = !DILocation(line: 259, column: 33, scope: !1195, inlinedAt: !1206)
!1254 = distinct !{!1254, !1231, !1255, !1012}
!1255 = !DILocation(line: 278, column: 5, scope: !1189, inlinedAt: !1206)
!1256 = !DILocation(line: 282, column: 22, scope: !1199, inlinedAt: !1206)
!1257 = !DILocation(line: 282, column: 25, scope: !1199, inlinedAt: !1206)
!1258 = !{i8 0, i8 2}
!1259 = !DILocation(line: 282, column: 11, scope: !1200, inlinedAt: !1206)
!1260 = !DILocation(line: 285, column: 43, scope: !1198, inlinedAt: !1206)
!1261 = !DILocation(line: 285, column: 21, scope: !1198, inlinedAt: !1206)
!1262 = !DILocation(line: 0, scope: !1198, inlinedAt: !1206)
!1263 = !DILocation(line: 288, column: 15, scope: !1198, inlinedAt: !1206)
!1264 = !DILocation(line: 290, column: 15, scope: !1265, inlinedAt: !1206)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 289, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 288, column: 15)
!1267 = !DILocation(line: 290, column: 21, scope: !1265, inlinedAt: !1206)
!1268 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1269, file: !2, line: 209, type: !415)
!1269 = distinct !DISubprogram(name: "fail_output", scope: !2, file: !2, line: 209, type: !1270, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!179, !415, !1117, !85}
!1272 = !{!1268, !1273, !1274, !1275, !1276, !1277}
!1273 = !DILocalVariable(name: "files", arg: 2, scope: !1269, file: !2, line: 209, type: !1117)
!1274 = !DILocalVariable(name: "i", arg: 3, scope: !1269, file: !2, line: 209, type: !85)
!1275 = !DILocalVariable(name: "w_errno", scope: !1269, file: !2, line: 211, type: !85)
!1276 = !DILocalVariable(name: "fail", scope: !1269, file: !2, line: 212, type: !179)
!1277 = !DILocalVariable(name: "__errstatus", scope: !1278, file: !2, line: 217, type: !1196)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 217, column: 7)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 216, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 215, column: 7)
!1281 = !DILocation(line: 0, scope: !1269, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 291, column: 19, scope: !1283, inlinedAt: !1206)
!1283 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 291, column: 19)
!1284 = !DILocation(line: 215, column: 7, scope: !1269, inlinedAt: !1282)
!1285 = !DILocation(line: 217, column: 7, scope: !1279, inlinedAt: !1282)
!1286 = !DILocation(line: 0, scope: !1278, inlinedAt: !1282)
!1287 = !DILocation(line: 217, column: 7, scope: !1278, inlinedAt: !1282)
!1288 = !DILocation(line: 213, column: 15, scope: !1269, inlinedAt: !1282)
!1289 = !DILocation(line: 221, column: 18, scope: !1269, inlinedAt: !1282)
!1290 = !DILocation(line: 291, column: 19, scope: !1265, inlinedAt: !1206)
!1291 = !DILocation(line: 293, column: 24, scope: !1265, inlinedAt: !1206)
!1292 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1293, file: !2, line: 197, type: !415)
!1293 = distinct !DISubprogram(name: "get_next_out", scope: !2, file: !2, line: 197, type: !1294, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!85, !415, !85, !85}
!1296 = !{!1292, !1297, !1298}
!1297 = !DILocalVariable(name: "nfiles", arg: 2, scope: !1293, file: !2, line: 197, type: !85)
!1298 = !DILocalVariable(name: "idx", arg: 3, scope: !1293, file: !2, line: 197, type: !85)
!1299 = !DILocation(line: 0, scope: !1293, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 294, column: 27, scope: !1265, inlinedAt: !1206)
!1301 = !DILocation(line: 199, column: 8, scope: !1302, inlinedAt: !1300)
!1302 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 199, column: 3)
!1303 = !DILocation(line: 199, column: 19, scope: !1304, inlinedAt: !1300)
!1304 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 199, column: 3)
!1305 = !DILocation(line: 199, column: 3, scope: !1302, inlinedAt: !1300)
!1306 = distinct !{!1306, !1232, !1307, !1012}
!1307 = !DILocation(line: 322, column: 5, scope: !1167, inlinedAt: !1206)
!1308 = !DILocation(line: 199, scope: !1302, inlinedAt: !1300)
!1309 = !DILocation(line: 200, column: 14, scope: !1310, inlinedAt: !1300)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 200, column: 9)
!1311 = !DILocation(line: 200, column: 11, scope: !1310, inlinedAt: !1300)
!1312 = !DILocation(line: 200, column: 9, scope: !1304, inlinedAt: !1300)
!1313 = distinct !{!1313, !1305, !1314, !1012}
!1314 = !DILocation(line: 201, column: 14, scope: !1302, inlinedAt: !1300)
!1315 = !DILocation(line: 203, column: 1, scope: !1293, inlinedAt: !1300)
!1316 = distinct !{!1316, !1232, !1307, !1012}
!1317 = !DILocation(line: 299, column: 15, scope: !1318, inlinedAt: !1206)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 298, column: 13)
!1319 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 297, column: 20)
!1320 = !DILocation(line: 301, column: 13, scope: !1318, inlinedAt: !1206)
!1321 = !DILocation(line: 304, column: 20, scope: !1200, inlinedAt: !1206)
!1322 = !DILocation(line: 305, column: 22, scope: !1323, inlinedAt: !1206)
!1323 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 305, column: 11)
!1324 = !DILocation(line: 305, column: 26, scope: !1323, inlinedAt: !1206)
!1325 = !DILocation(line: 305, column: 29, scope: !1323, inlinedAt: !1206)
!1326 = !DILocation(line: 305, column: 35, scope: !1323, inlinedAt: !1206)
!1327 = !DILocation(line: 305, column: 11, scope: !1200, inlinedAt: !1206)
!1328 = distinct !{!1328, !1232, !1307, !1012}
!1329 = !DILocation(line: 307, column: 22, scope: !1330, inlinedAt: !1206)
!1330 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 307, column: 11)
!1331 = !DILocation(line: 307, column: 11, scope: !1200, inlinedAt: !1206)
!1332 = !DILocation(line: 0, scope: !1202, inlinedAt: !1206)
!1333 = !DILocation(line: 312, column: 7, scope: !1202, inlinedAt: !1206)
!1334 = distinct !{!1334, !1232, !1307, !1012}
!1335 = !DILocation(line: 313, column: 18, scope: !1336, inlinedAt: !1206)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 313, column: 13)
!1337 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 312, column: 7)
!1338 = !DILocation(line: 313, column: 15, scope: !1336, inlinedAt: !1206)
!1339 = !DILocation(line: 314, column: 13, scope: !1336, inlinedAt: !1206)
!1340 = !DILocation(line: 314, column: 18, scope: !1336, inlinedAt: !1206)
!1341 = !DILocation(line: 313, column: 13, scope: !1337, inlinedAt: !1206)
!1342 = !DILocation(line: 0, scope: !1269, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 316, column: 17, scope: !1344, inlinedAt: !1206)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 316, column: 17)
!1345 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 315, column: 11)
!1346 = !DILocation(line: 211, column: 17, scope: !1269, inlinedAt: !1343)
!1347 = !DILocation(line: 212, column: 21, scope: !1269, inlinedAt: !1343)
!1348 = !DILocation(line: 215, column: 7, scope: !1269, inlinedAt: !1343)
!1349 = !DILocation(line: 217, column: 7, scope: !1279, inlinedAt: !1343)
!1350 = !DILocation(line: 0, scope: !1278, inlinedAt: !1343)
!1351 = !DILocation(line: 217, column: 7, scope: !1278, inlinedAt: !1343)
!1352 = !DILocation(line: 213, column: 15, scope: !1269, inlinedAt: !1343)
!1353 = !DILocation(line: 221, column: 18, scope: !1269, inlinedAt: !1343)
!1354 = !DILocation(line: 316, column: 17, scope: !1345, inlinedAt: !1206)
!1355 = !DILocation(line: 318, column: 22, scope: !1345, inlinedAt: !1206)
!1356 = !DILocation(line: 319, column: 19, scope: !1357, inlinedAt: !1206)
!1357 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 319, column: 17)
!1358 = !DILocation(line: 319, column: 17, scope: !1345, inlinedAt: !1206)
!1359 = !DILocation(line: 0, scope: !1293, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 320, column: 27, scope: !1357, inlinedAt: !1206)
!1361 = !DILocation(line: 199, column: 8, scope: !1302, inlinedAt: !1360)
!1362 = !DILocation(line: 199, column: 19, scope: !1304, inlinedAt: !1360)
!1363 = !DILocation(line: 199, column: 3, scope: !1302, inlinedAt: !1360)
!1364 = !DILocation(line: 199, scope: !1302, inlinedAt: !1360)
!1365 = !DILocation(line: 200, column: 14, scope: !1310, inlinedAt: !1360)
!1366 = !DILocation(line: 200, column: 11, scope: !1310, inlinedAt: !1360)
!1367 = !DILocation(line: 200, column: 9, scope: !1304, inlinedAt: !1360)
!1368 = distinct !{!1368, !1363, !1369, !1012}
!1369 = !DILocation(line: 201, column: 14, scope: !1302, inlinedAt: !1360)
!1370 = !DILocation(line: 203, column: 1, scope: !1293, inlinedAt: !1360)
!1371 = !DILocation(line: 0, scope: !1200, inlinedAt: !1206)
!1372 = !DILocation(line: 312, column: 37, scope: !1337, inlinedAt: !1206)
!1373 = !DILocation(line: 312, column: 25, scope: !1337, inlinedAt: !1206)
!1374 = distinct !{!1374, !1333, !1375, !1012}
!1375 = !DILocation(line: 321, column: 11, scope: !1202, inlinedAt: !1206)
!1376 = !DILocation(line: 324, column: 18, scope: !1377, inlinedAt: !1206)
!1377 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 324, column: 7)
!1378 = !DILocation(line: 324, column: 7, scope: !1167, inlinedAt: !1206)
!1379 = !DILocation(line: 326, column: 7, scope: !1380, inlinedAt: !1206)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 325, column: 5)
!1381 = !DILocation(line: 328, column: 5, scope: !1380, inlinedAt: !1206)
!1382 = !DILocation(line: 0, scope: !1204, inlinedAt: !1206)
!1383 = !DILocation(line: 331, column: 3, scope: !1204, inlinedAt: !1206)
!1384 = !DILocation(line: 331, column: 21, scope: !1385, inlinedAt: !1206)
!1385 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 331, column: 3)
!1386 = !DILocation(line: 327, column: 10, scope: !1380, inlinedAt: !1206)
!1387 = !DILocation(line: 338, column: 3, scope: !1167, inlinedAt: !1206)
!1388 = !DILocation(line: 339, column: 7, scope: !1167, inlinedAt: !1206)
!1389 = !DILocation(line: 332, column: 14, scope: !1390, inlinedAt: !1206)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 332, column: 9)
!1391 = !DILocation(line: 332, column: 11, scope: !1390, inlinedAt: !1206)
!1392 = !DILocation(line: 332, column: 29, scope: !1390, inlinedAt: !1206)
!1393 = !DILocation(line: 332, column: 34, scope: !1390, inlinedAt: !1206)
!1394 = !DILocation(line: 332, column: 9, scope: !1385, inlinedAt: !1206)
!1395 = !DILocation(line: 334, column: 9, scope: !1396, inlinedAt: !1206)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 333, column: 7)
!1397 = !DILocation(line: 336, column: 7, scope: !1396, inlinedAt: !1206)
!1398 = !DILocation(line: 331, column: 33, scope: !1385, inlinedAt: !1206)
!1399 = distinct !{!1399, !1383, !1400, !1012}
!1400 = !DILocation(line: 336, column: 7, scope: !1204, inlinedAt: !1206)
!1401 = !DILocation(line: 340, column: 5, scope: !1402, inlinedAt: !1206)
!1402 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 339, column: 7)
!1403 = !DILocation(line: 343, column: 1, scope: !1167, inlinedAt: !1206)
!1404 = !DILocation(line: 185, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 185, column: 7)
!1406 = !DILocation(line: 185, column: 28, scope: !1405)
!1407 = !DILocation(line: 185, column: 7, scope: !1114)
!1408 = !DILocation(line: 186, column: 5, scope: !1405)
!1409 = !DILocation(line: 342, column: 10, scope: !1167, inlinedAt: !1206)
!1410 = !DILocation(line: 188, column: 10, scope: !1114)
!1411 = !DILocation(line: 188, column: 3, scope: !1114)
!1412 = !DISubprogram(name: "bindtextdomain", scope: !946, file: !946, line: 86, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!130, !141, !141}
!1415 = !DISubprogram(name: "textdomain", scope: !946, file: !946, line: 82, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1416 = !DISubprogram(name: "atexit", scope: !1090, file: !1090, line: 602, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!85, !468}
!1419 = !DISubprogram(name: "getopt_long", scope: !410, file: !410, line: 66, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!85, !85, !1422, !141, !1424, !415}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1425 = !DISubprogram(name: "signal", scope: !133, file: !133, line: 88, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!132, !85, !132}
!1428 = !DISubprogram(name: "__errno_location", scope: !1429, file: !1429, line: 37, type: !1430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1429 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!415}
!1432 = !DISubprogram(name: "free", scope: !1090, file: !1090, line: 555, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !131}
!1435 = !DISubprogram(name: "close", scope: !1436, file: !1436, line: 358, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1436 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!85, !85}
!1439 = distinct !DISubprogram(name: "iopoll", scope: !421, file: !421, line: 139, type: !1440, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!85, !85, !85, !179}
!1442 = !{!1443, !1444, !1445}
!1443 = !DILocalVariable(name: "fdin", arg: 1, scope: !1439, file: !421, line: 139, type: !85)
!1444 = !DILocalVariable(name: "fdout", arg: 2, scope: !1439, file: !421, line: 139, type: !85)
!1445 = !DILocalVariable(name: "block", arg: 3, scope: !1439, file: !421, line: 139, type: !179)
!1446 = !DILocation(line: 0, scope: !1439)
!1447 = !DILocation(line: 141, column: 10, scope: !1439)
!1448 = !DILocation(line: 141, column: 3, scope: !1439)
!1449 = distinct !DISubprogram(name: "iopoll_internal", scope: !421, file: !421, line: 62, type: !1450, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!85, !85, !85, !179, !179}
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1466, !1467}
!1453 = !DILocalVariable(name: "fdin", arg: 1, scope: !1449, file: !421, line: 62, type: !85)
!1454 = !DILocalVariable(name: "fdout", arg: 2, scope: !1449, file: !421, line: 62, type: !85)
!1455 = !DILocalVariable(name: "block", arg: 3, scope: !1449, file: !421, line: 62, type: !179)
!1456 = !DILocalVariable(name: "broken_output", arg: 4, scope: !1449, file: !421, line: 62, type: !179)
!1457 = !DILocalVariable(name: "pfds", scope: !1449, file: !421, line: 67, type: !1458)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 128, elements: !280)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1460, line: 36, size: 64, elements: !1461)
!1460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!1461 = !{!1462, !1463, !1465}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1459, file: !1460, line: 38, baseType: !85, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1459, file: !1460, line: 39, baseType: !1464, size: 16, offset: 32)
!1464 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1459, file: !1460, line: 40, baseType: !1464, size: 16, offset: 48)
!1466 = !DILocalVariable(name: "check_out_events", scope: !1449, file: !421, line: 71, type: !85)
!1467 = !DILocalVariable(name: "ret", scope: !1449, file: !421, line: 72, type: !85)
!1468 = !DILocation(line: 0, scope: !1449)
!1469 = !DILocation(line: 64, column: 3, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !421, line: 64, column: 3)
!1471 = distinct !DILexicalBlock(scope: !1449, file: !421, line: 64, column: 3)
!1472 = !DILocation(line: 67, column: 3, scope: !1449)
!1473 = !DILocation(line: 67, column: 17, scope: !1449)
!1474 = !DILocation(line: 68, column: 5, scope: !1449)
!1475 = !{!1476, !966, i64 0}
!1476 = !{!"pollfd", !966, i64 0, !1007, i64 4, !1007, i64 6}
!1477 = !{!1476, !1007, i64 4}
!1478 = !{!1476, !1007, i64 6}
!1479 = !DILocation(line: 67, column: 27, scope: !1449)
!1480 = !DILocation(line: 69, column: 5, scope: !1449)
!1481 = !DILocation(line: 74, column: 7, scope: !1449)
!1482 = !DILocation(line: 76, column: 39, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !421, line: 75, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1449, file: !421, line: 74, column: 7)
!1485 = !DILocation(line: 76, column: 22, scope: !1483)
!1486 = !DILocation(line: 78, column: 5, scope: !1483)
!1487 = !DILocation(line: 80, column: 3, scope: !1449)
!1488 = !DILocation(line: 80, column: 12, scope: !1449)
!1489 = !DILocation(line: 80, column: 19, scope: !1449)
!1490 = !DILocation(line: 80, column: 22, scope: !1449)
!1491 = !DILocation(line: 80, column: 28, scope: !1449)
!1492 = !DILocation(line: 82, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1449, file: !421, line: 81, column: 5)
!1494 = !DILocation(line: 84, column: 15, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1493, file: !421, line: 84, column: 11)
!1496 = !DILocation(line: 84, column: 11, scope: !1493)
!1497 = distinct !{!1497, !1487, !1498, !1012}
!1498 = !DILocation(line: 93, column: 5, scope: !1449)
!1499 = !DILocation(line: 86, column: 15, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1493, file: !421, line: 86, column: 11)
!1501 = !DILocation(line: 86, column: 20, scope: !1500)
!1502 = !DILocation(line: 88, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !421, line: 88, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1493, file: !421, line: 88, column: 7)
!1505 = !DILocation(line: 88, column: 7, scope: !1504)
!1506 = !DILocation(line: 89, column: 19, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1493, file: !421, line: 89, column: 11)
!1508 = !DILocation(line: 89, column: 11, scope: !1507)
!1509 = !DILocation(line: 89, column: 11, scope: !1493)
!1510 = !DILocation(line: 91, column: 19, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1493, file: !421, line: 91, column: 11)
!1512 = !DILocation(line: 91, column: 11, scope: !1511)
!1513 = !DILocation(line: 91, column: 27, scope: !1511)
!1514 = !DILocation(line: 91, column: 11, scope: !1493)
!1515 = !DILocation(line: 92, column: 16, scope: !1511)
!1516 = !DILocation(line: 92, column: 9, scope: !1511)
!1517 = !DILocation(line: 136, column: 1, scope: !1449)
!1518 = !DISubprogram(name: "__assert_fail", scope: !1519, file: !1519, line: 69, type: !1520, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1519 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !141, !141, !76, !141}
!1522 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !421, file: !421, line: 151, type: !1523, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!179, !85}
!1525 = !{!1526, !1527, !1562}
!1526 = !DILocalVariable(name: "fdin", arg: 1, scope: !1522, file: !421, line: 151, type: !85)
!1527 = !DILocalVariable(name: "st", scope: !1522, file: !421, line: 153, type: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1529, line: 26, size: 1152, elements: !1530)
!1529 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1530 = !{!1531, !1533, !1535, !1537, !1539, !1541, !1543, !1544, !1545, !1546, !1548, !1550, !1558, !1559, !1560}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1528, file: !1529, line: 31, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !235, line: 145, baseType: !140)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1528, file: !1529, line: 36, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !235, line: 148, baseType: !140)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1528, file: !1529, line: 44, baseType: !1536, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !235, line: 151, baseType: !140)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1528, file: !1529, line: 45, baseType: !1538, size: 32, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !235, line: 150, baseType: !76)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1528, file: !1529, line: 47, baseType: !1540, size: 32, offset: 224)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !235, line: 146, baseType: !76)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1528, file: !1529, line: 48, baseType: !1542, size: 32, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !235, line: 147, baseType: !76)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1528, file: !1529, line: 50, baseType: !85, size: 32, offset: 288)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1528, file: !1529, line: 52, baseType: !1532, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1528, file: !1529, line: 57, baseType: !234, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1528, file: !1529, line: 61, baseType: !1547, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !235, line: 175, baseType: !236)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1528, file: !1529, line: 63, baseType: !1549, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !235, line: 180, baseType: !236)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1528, file: !1529, line: 74, baseType: !1551, size: 128, offset: 576)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1552, line: 11, size: 128, elements: !1553)
!1552 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1553 = !{!1554, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1551, file: !1552, line: 16, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !235, line: 160, baseType: !236)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1551, file: !1552, line: 21, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !235, line: 197, baseType: !236)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1528, file: !1529, line: 75, baseType: !1551, size: 128, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1528, file: !1529, line: 76, baseType: !1551, size: 128, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1528, file: !1529, line: 89, baseType: !1561, size: 192, offset: 960)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1557, size: 192, elements: !173)
!1562 = !DILocalVariable(name: "always_ready", scope: !1522, file: !421, line: 154, type: !179)
!1563 = !DILocation(line: 0, scope: !1522)
!1564 = !DILocation(line: 153, column: 3, scope: !1522)
!1565 = !DILocation(line: 153, column: 15, scope: !1522)
!1566 = !DILocation(line: 154, column: 23, scope: !1522)
!1567 = !DILocation(line: 154, column: 41, scope: !1522)
!1568 = !DILocation(line: 155, column: 23, scope: !1522)
!1569 = !DILocation(line: 155, column: 27, scope: !1522)
!1570 = !{!1571, !966, i64 24}
!1571 = !{!"stat", !1572, i64 0, !1572, i64 8, !1572, i64 16, !966, i64 24, !966, i64 28, !966, i64 32, !966, i64 36, !1572, i64 40, !1572, i64 48, !1572, i64 56, !1572, i64 64, !1573, i64 72, !1573, i64 88, !1573, i64 104, !901, i64 120}
!1572 = !{!"long", !901, i64 0}
!1573 = !{!"timespec", !1572, i64 0, !1572, i64 8}
!1574 = !DILocation(line: 156, column: 27, scope: !1522)
!1575 = !DILocation(line: 157, column: 10, scope: !1522)
!1576 = !DILocation(line: 158, column: 1, scope: !1522)
!1577 = !DILocation(line: 157, column: 3, scope: !1522)
!1578 = !DISubprogram(name: "fstat", scope: !1579, file: !1579, line: 210, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!85, !85, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1583 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !421, file: !421, line: 164, type: !1523, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1584)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "fdout", arg: 1, scope: !1583, file: !421, line: 164, type: !85)
!1586 = !DILocation(line: 0, scope: !1583)
!1587 = !DILocation(line: 166, column: 10, scope: !1583)
!1588 = !DILocation(line: 166, column: 26, scope: !1583)
!1589 = !DILocation(line: 166, column: 3, scope: !1583)
!1590 = distinct !DISubprogram(name: "close_wait", scope: !421, file: !421, line: 200, type: !1523, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1591)
!1591 = !{!1592}
!1592 = !DILocalVariable(name: "fd", arg: 1, scope: !1590, file: !421, line: 200, type: !85)
!1593 = !DILocation(line: 0, scope: !1590)
!1594 = !DILocation(line: 202, column: 3, scope: !1590)
!1595 = !DILocalVariable(name: "fd", arg: 1, scope: !1596, file: !421, line: 180, type: !85)
!1596 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !421, file: !421, line: 180, type: !1523, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1597)
!1597 = !{!1595}
!1598 = !DILocation(line: 0, scope: !1596, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 202, column: 10, scope: !1590)
!1600 = !DILocation(line: 182, column: 9, scope: !1601, inlinedAt: !1599)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !421, line: 182, column: 7)
!1602 = !DILocation(line: 187, column: 7, scope: !1603, inlinedAt: !1599)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !421, line: 187, column: 7)
!1604 = !DILocation(line: 187, column: 45, scope: !1603, inlinedAt: !1599)
!1605 = !DILocation(line: 187, column: 7, scope: !1596, inlinedAt: !1599)
!1606 = distinct !{!1606, !1594, !1607, !1012}
!1607 = !DILocation(line: 203, column: 5, scope: !1590)
!1608 = !DILocation(line: 189, column: 13, scope: !1609, inlinedAt: !1599)
!1609 = distinct !DILexicalBlock(scope: !1603, file: !421, line: 188, column: 5)
!1610 = !DILocation(line: 190, column: 7, scope: !1609, inlinedAt: !1599)
!1611 = !DILocation(line: 204, column: 10, scope: !1590)
!1612 = !DILocation(line: 204, column: 21, scope: !1590)
!1613 = !DILocation(line: 204, column: 3, scope: !1590)
!1614 = distinct !DISubprogram(name: "write_wait", scope: !421, file: !421, line: 211, type: !1615, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !806, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!179, !85, !128, !138}
!1617 = !{!1618, !1619, !1620, !1621, !1624}
!1618 = !DILocalVariable(name: "fd", arg: 1, scope: !1614, file: !421, line: 211, type: !85)
!1619 = !DILocalVariable(name: "buffer", arg: 2, scope: !1614, file: !421, line: 211, type: !128)
!1620 = !DILocalVariable(name: "size", arg: 3, scope: !1614, file: !421, line: 211, type: !138)
!1621 = !DILocalVariable(name: "buf", scope: !1614, file: !421, line: 213, type: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1624 = !DILocalVariable(name: "written", scope: !1625, file: !421, line: 217, type: !1182)
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
!1648 = !DISubprogram(name: "write", scope: !1436, file: !1436, line: 378, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!1182, !85, !128, !138}
!1651 = distinct !DISubprogram(name: "__argmatch_die", scope: !444, file: !444, line: 58, type: !469, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !949)
!1652 = !DILocation(line: 60, column: 3, scope: !1651)
!1653 = !DILocation(line: 61, column: 1, scope: !1651)
!1654 = distinct !DISubprogram(name: "argmatch", scope: !444, file: !444, line: 80, type: !1655, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1658)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!848, !141, !1657, !128, !138}
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1659 = !DILocalVariable(name: "arg", arg: 1, scope: !1654, file: !444, line: 80, type: !141)
!1660 = !DILocalVariable(name: "arglist", arg: 2, scope: !1654, file: !444, line: 80, type: !1657)
!1661 = !DILocalVariable(name: "vallist", arg: 3, scope: !1654, file: !444, line: 81, type: !128)
!1662 = !DILocalVariable(name: "valsize", arg: 4, scope: !1654, file: !444, line: 81, type: !138)
!1663 = !DILocalVariable(name: "arglen", scope: !1654, file: !444, line: 83, type: !138)
!1664 = !DILocalVariable(name: "matchind", scope: !1654, file: !444, line: 85, type: !848)
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
!1693 = !DILocalVariable(name: "__s1", arg: 1, scope: !1694, file: !978, line: 974, type: !128)
!1694 = distinct !DISubprogram(name: "memeq", scope: !978, file: !978, line: 974, type: !1695, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!179, !128, !128, !138}
!1697 = !{!1693, !1698, !1699}
!1698 = !DILocalVariable(name: "__s2", arg: 2, scope: !1694, file: !978, line: 974, type: !128)
!1699 = !DILocalVariable(name: "__n", arg: 3, scope: !1694, file: !978, line: 974, type: !138)
!1700 = !DILocation(line: 0, scope: !1694, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 103, column: 23, scope: !1687)
!1702 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1701)
!1703 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1701)
!1704 = !DILocation(line: 102, column: 19, scope: !1688)
!1705 = !DILocation(line: 109, column: 17, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1687, file: !444, line: 105, column: 17)
!1707 = !DILocation(line: 89, column: 35, scope: !1672)
!1708 = distinct !{!1708, !1673, !1709, !1012}
!1709 = !DILocation(line: 112, column: 5, scope: !1667)
!1710 = !DILocation(line: 85, column: 13, scope: !1654)
!1711 = !DILocation(line: 86, column: 8, scope: !1654)
!1712 = !DILocation(line: 113, column: 7, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1654, file: !444, line: 113, column: 7)
!1714 = !DILocation(line: 0, scope: !1713)
!1715 = !DILocation(line: 117, column: 1, scope: !1654)
!1716 = !DISubprogram(name: "strlen", scope: !1086, file: !1086, line: 407, type: !1717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!140, !141}
!1719 = distinct !DISubprogram(name: "argmatch_exact", scope: !444, file: !444, line: 120, type: !1720, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!848, !141, !1657}
!1722 = !{!1723, !1724, !1725}
!1723 = !DILocalVariable(name: "arg", arg: 1, scope: !1719, file: !444, line: 120, type: !141)
!1724 = !DILocalVariable(name: "arglist", arg: 2, scope: !1719, file: !444, line: 120, type: !1657)
!1725 = !DILocalVariable(name: "i", scope: !1726, file: !444, line: 123, type: !138)
!1726 = distinct !DILexicalBlock(scope: !1719, file: !444, line: 123, column: 3)
!1727 = !DILocation(line: 0, scope: !1719)
!1728 = !DILocation(line: 0, scope: !1726)
!1729 = !DILocation(line: 123, column: 22, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !444, line: 123, column: 3)
!1731 = !DILocation(line: 123, column: 3, scope: !1726)
!1732 = !DILocalVariable(name: "__s1", arg: 1, scope: !1733, file: !978, line: 1359, type: !141)
!1733 = distinct !DISubprogram(name: "streq", scope: !978, file: !978, line: 1359, type: !979, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1734)
!1734 = !{!1732, !1735}
!1735 = !DILocalVariable(name: "__s2", arg: 2, scope: !1733, file: !978, line: 1359, type: !141)
!1736 = !DILocation(line: 0, scope: !1733, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 125, column: 11, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !444, line: 125, column: 11)
!1739 = distinct !DILexicalBlock(scope: !1730, file: !444, line: 124, column: 5)
!1740 = !DILocation(line: 1361, column: 11, scope: !1733, inlinedAt: !1737)
!1741 = !DILocation(line: 1361, column: 10, scope: !1733, inlinedAt: !1737)
!1742 = !DILocation(line: 125, column: 11, scope: !1739)
!1743 = !DILocation(line: 123, column: 35, scope: !1730)
!1744 = distinct !{!1744, !1731, !1745, !1012}
!1745 = !DILocation(line: 127, column: 5, scope: !1726)
!1746 = !DILocation(line: 130, column: 1, scope: !1719)
!1747 = distinct !DISubprogram(name: "argmatch_invalid", scope: !444, file: !444, line: 138, type: !1748, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1750)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !141, !141, !848}
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DILocalVariable(name: "context", arg: 1, scope: !1747, file: !444, line: 138, type: !141)
!1752 = !DILocalVariable(name: "value", arg: 2, scope: !1747, file: !444, line: 138, type: !141)
!1753 = !DILocalVariable(name: "problem", arg: 3, scope: !1747, file: !444, line: 138, type: !848)
!1754 = !DILocalVariable(name: "format", scope: !1747, file: !444, line: 140, type: !141)
!1755 = !DILocation(line: 0, scope: !1747)
!1756 = !DILocation(line: 140, column: 33, scope: !1747)
!1757 = !DILocation(line: 140, column: 25, scope: !1747)
!1758 = !DILocation(line: 144, column: 3, scope: !1747)
!1759 = !DILocation(line: 146, column: 1, scope: !1747)
!1760 = distinct !DISubprogram(name: "argmatch_valid", scope: !444, file: !444, line: 153, type: !1761, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1657, !128, !138}
!1763 = !{!1764, !1765, !1766, !1767, !1768}
!1764 = !DILocalVariable(name: "arglist", arg: 1, scope: !1760, file: !444, line: 153, type: !1657)
!1765 = !DILocalVariable(name: "vallist", arg: 2, scope: !1760, file: !444, line: 154, type: !128)
!1766 = !DILocalVariable(name: "valsize", arg: 3, scope: !1760, file: !444, line: 154, type: !138)
!1767 = !DILocalVariable(name: "last_val", scope: !1760, file: !444, line: 156, type: !141)
!1768 = !DILocalVariable(name: "i", scope: !1769, file: !444, line: 161, type: !138)
!1769 = distinct !DILexicalBlock(scope: !1760, file: !444, line: 161, column: 3)
!1770 = !DILocation(line: 0, scope: !1760)
!1771 = !DILocation(line: 160, column: 3, scope: !1760)
!1772 = !DILocation(line: 0, scope: !1769)
!1773 = !DILocation(line: 161, column: 22, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !444, line: 161, column: 3)
!1775 = !DILocation(line: 161, column: 3, scope: !1769)
!1776 = !DILocation(line: 172, column: 3, scope: !1760)
!1777 = !DILocalVariable(name: "__c", arg: 1, scope: !1778, file: !1779, line: 101, type: !85)
!1778 = distinct !DISubprogram(name: "putc_unlocked", scope: !1779, file: !1779, line: 101, type: !1780, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1816)
!1779 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!85, !85, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1784, file: !212, line: 51, baseType: !85, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1784, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1784, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1784, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1784, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1784, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1784, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1784, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1784, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1784, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1784, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1784, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1784, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1784, file: !212, line: 70, baseType: !1800, size: 64, offset: 832)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1784, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1784, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1784, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1784, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1784, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1784, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1784, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1784, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1784, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1784, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1784, file: !212, line: 93, baseType: !1800, size: 64, offset: 1344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1784, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1784, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1784, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1784, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!1816 = !{!1777, !1817}
!1817 = !DILocalVariable(name: "__stream", arg: 2, scope: !1778, file: !1779, line: 101, type: !1782)
!1818 = !DILocation(line: 0, scope: !1778, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 172, column: 3, scope: !1760)
!1820 = !DILocation(line: 103, column: 10, scope: !1778, inlinedAt: !1819)
!1821 = !{!1822, !900, i64 40}
!1822 = !{!"_IO_FILE", !966, i64 0, !900, i64 8, !900, i64 16, !900, i64 24, !900, i64 32, !900, i64 40, !900, i64 48, !900, i64 56, !900, i64 64, !900, i64 72, !900, i64 80, !900, i64 88, !900, i64 96, !900, i64 104, !966, i64 112, !966, i64 116, !1572, i64 120, !1007, i64 128, !901, i64 130, !901, i64 131, !900, i64 136, !1572, i64 144, !900, i64 152, !900, i64 160, !900, i64 168, !900, i64 176, !1572, i64 184, !966, i64 192, !901, i64 196}
!1823 = !{!1822, !900, i64 48}
!1824 = !{!"branch_weights", i32 2000, i32 1}
!1825 = !DILocation(line: 173, column: 1, scope: !1760)
!1826 = !DILocation(line: 162, column: 12, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1774, file: !444, line: 162, column: 9)
!1828 = !DILocation(line: 163, column: 9, scope: !1827)
!1829 = !DILocation(line: 163, column: 63, scope: !1827)
!1830 = !DILocation(line: 163, column: 53, scope: !1827)
!1831 = !DILocation(line: 0, scope: !1694, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 163, column: 13, scope: !1827)
!1833 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1832)
!1834 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1832)
!1835 = !DILocation(line: 162, column: 9, scope: !1774)
!1836 = !DILocation(line: 166, column: 53, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1827, file: !444, line: 164, column: 7)
!1838 = !DILocation(line: 165, column: 9, scope: !1837)
!1839 = !DILocation(line: 166, column: 43, scope: !1837)
!1840 = !DILocation(line: 167, column: 7, scope: !1837)
!1841 = !DILocation(line: 170, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1827, file: !444, line: 169, column: 7)
!1843 = !DILocation(line: 161, column: 35, scope: !1774)
!1844 = distinct !{!1844, !1775, !1845, !1012}
!1845 = !DILocation(line: 171, column: 7, scope: !1769)
!1846 = !DISubprogram(name: "__overflow", scope: !960, file: !960, line: 886, type: !1847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!85, !1782, !85}
!1849 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !444, file: !444, line: 182, type: !1850, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1852)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!848, !141, !141, !1657, !128, !138, !466, !179}
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1853 = !DILocalVariable(name: "context", arg: 1, scope: !1849, file: !444, line: 182, type: !141)
!1854 = !DILocalVariable(name: "arg", arg: 2, scope: !1849, file: !444, line: 183, type: !141)
!1855 = !DILocalVariable(name: "arglist", arg: 3, scope: !1849, file: !444, line: 183, type: !1657)
!1856 = !DILocalVariable(name: "vallist", arg: 4, scope: !1849, file: !444, line: 184, type: !128)
!1857 = !DILocalVariable(name: "valsize", arg: 5, scope: !1849, file: !444, line: 184, type: !138)
!1858 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1849, file: !444, line: 185, type: !466)
!1859 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1849, file: !444, line: 186, type: !179)
!1860 = !DILocalVariable(name: "res", scope: !1849, file: !444, line: 188, type: !848)
!1861 = !DILocation(line: 0, scope: !1849)
!1862 = !DILocation(line: 189, column: 7, scope: !1849)
!1863 = !DILocation(line: 0, scope: !1654, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 190, column: 11, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1849, file: !444, line: 189, column: 7)
!1866 = !DILocation(line: 83, column: 19, scope: !1654, inlinedAt: !1864)
!1867 = !DILocation(line: 0, scope: !1667, inlinedAt: !1864)
!1868 = !DILocation(line: 89, column: 22, scope: !1672, inlinedAt: !1864)
!1869 = !DILocation(line: 89, column: 3, scope: !1667, inlinedAt: !1864)
!1870 = !DILocation(line: 91, column: 12, scope: !1675, inlinedAt: !1864)
!1871 = !DILocation(line: 91, column: 11, scope: !1676, inlinedAt: !1864)
!1872 = !DILocation(line: 93, column: 15, scope: !1679, inlinedAt: !1864)
!1873 = !DILocation(line: 93, column: 35, scope: !1679, inlinedAt: !1864)
!1874 = !DILocation(line: 93, column: 15, scope: !1680, inlinedAt: !1864)
!1875 = !DILocation(line: 96, column: 29, scope: !1684, inlinedAt: !1864)
!1876 = !DILocation(line: 96, column: 20, scope: !1679, inlinedAt: !1864)
!1877 = !DILocation(line: 103, column: 19, scope: !1687, inlinedAt: !1864)
!1878 = !DILocation(line: 103, column: 63, scope: !1687, inlinedAt: !1864)
!1879 = !DILocation(line: 103, column: 53, scope: !1687, inlinedAt: !1864)
!1880 = !DILocation(line: 104, column: 63, scope: !1687, inlinedAt: !1864)
!1881 = !DILocation(line: 104, column: 53, scope: !1687, inlinedAt: !1864)
!1882 = !DILocation(line: 0, scope: !1694, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 103, column: 23, scope: !1687, inlinedAt: !1864)
!1884 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1883)
!1885 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1883)
!1886 = !DILocation(line: 102, column: 19, scope: !1688, inlinedAt: !1864)
!1887 = !DILocation(line: 109, column: 17, scope: !1706, inlinedAt: !1864)
!1888 = !DILocation(line: 89, column: 35, scope: !1672, inlinedAt: !1864)
!1889 = distinct !{!1889, !1869, !1890, !1012}
!1890 = !DILocation(line: 112, column: 5, scope: !1667, inlinedAt: !1864)
!1891 = !DILocation(line: 113, column: 7, scope: !1713, inlinedAt: !1864)
!1892 = !DILocation(line: 0, scope: !1713, inlinedAt: !1864)
!1893 = !DILocation(line: 0, scope: !1719, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 192, column: 11, scope: !1865)
!1895 = !DILocation(line: 0, scope: !1726, inlinedAt: !1894)
!1896 = !DILocation(line: 123, column: 22, scope: !1730, inlinedAt: !1894)
!1897 = !DILocation(line: 123, column: 3, scope: !1726, inlinedAt: !1894)
!1898 = !DILocation(line: 0, scope: !1733, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 125, column: 11, scope: !1738, inlinedAt: !1894)
!1900 = !DILocation(line: 1361, column: 11, scope: !1733, inlinedAt: !1899)
!1901 = !DILocation(line: 1361, column: 10, scope: !1733, inlinedAt: !1899)
!1902 = !DILocation(line: 125, column: 11, scope: !1739, inlinedAt: !1894)
!1903 = !DILocation(line: 123, column: 35, scope: !1730, inlinedAt: !1894)
!1904 = distinct !{!1904, !1897, !1905, !1012}
!1905 = !DILocation(line: 127, column: 5, scope: !1726, inlinedAt: !1894)
!1906 = !DILocation(line: 0, scope: !1865)
!1907 = !DILocation(line: 140, column: 33, scope: !1747, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 199, column: 3, scope: !1849)
!1909 = !DILocation(line: 194, column: 11, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1849, file: !444, line: 194, column: 7)
!1911 = !DILocation(line: 194, column: 7, scope: !1849)
!1912 = !DILocation(line: 0, scope: !1747, inlinedAt: !1908)
!1913 = !DILocation(line: 140, column: 25, scope: !1747, inlinedAt: !1908)
!1914 = !DILocation(line: 144, column: 3, scope: !1747, inlinedAt: !1908)
!1915 = !DILocation(line: 200, column: 3, scope: !1849)
!1916 = !DILocation(line: 201, column: 3, scope: !1849)
!1917 = !DILocation(line: 203, column: 3, scope: !1849)
!1918 = !DILocation(line: 204, column: 1, scope: !1849)
!1919 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !444, file: !444, line: 209, type: !1920, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!141, !128, !1657, !128, !138}
!1922 = !{!1923, !1924, !1925, !1926, !1927}
!1923 = !DILocalVariable(name: "value", arg: 1, scope: !1919, file: !444, line: 209, type: !128)
!1924 = !DILocalVariable(name: "arglist", arg: 2, scope: !1919, file: !444, line: 210, type: !1657)
!1925 = !DILocalVariable(name: "vallist", arg: 3, scope: !1919, file: !444, line: 211, type: !128)
!1926 = !DILocalVariable(name: "valsize", arg: 4, scope: !1919, file: !444, line: 211, type: !138)
!1927 = !DILocalVariable(name: "i", scope: !1928, file: !444, line: 213, type: !138)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !444, line: 213, column: 3)
!1929 = !DILocation(line: 0, scope: !1919)
!1930 = !DILocation(line: 0, scope: !1928)
!1931 = !DILocation(line: 213, column: 22, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !444, line: 213, column: 3)
!1933 = !DILocation(line: 213, column: 3, scope: !1928)
!1934 = !DILocation(line: 0, scope: !1694, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 214, column: 9, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !444, line: 214, column: 9)
!1937 = !DILocation(line: 976, column: 11, scope: !1694, inlinedAt: !1935)
!1938 = !DILocation(line: 976, column: 10, scope: !1694, inlinedAt: !1935)
!1939 = !DILocation(line: 214, column: 9, scope: !1932)
!1940 = !DILocation(line: 213, column: 35, scope: !1932)
!1941 = distinct !{!1941, !1933, !1942, !1012}
!1942 = !DILocation(line: 215, column: 23, scope: !1928)
!1943 = !DILocation(line: 214, column: 56, scope: !1936)
!1944 = !DILocation(line: 214, column: 46, scope: !1936)
!1945 = !DILocation(line: 217, column: 1, scope: !1919)
!1946 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !474, file: !474, line: 50, type: !915, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1947)
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "file", arg: 1, scope: !1946, file: !474, line: 50, type: !141)
!1949 = !DILocation(line: 0, scope: !1946)
!1950 = !DILocation(line: 52, column: 13, scope: !1946)
!1951 = !DILocation(line: 53, column: 1, scope: !1946)
!1952 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !474, file: !474, line: 87, type: !1953, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !179}
!1955 = !{!1956}
!1956 = !DILocalVariable(name: "ignore", arg: 1, scope: !1952, file: !474, line: 87, type: !179)
!1957 = !DILocation(line: 0, scope: !1952)
!1958 = !DILocation(line: 89, column: 16, scope: !1952)
!1959 = !DILocation(line: 90, column: 1, scope: !1952)
!1960 = distinct !DISubprogram(name: "close_stdout", scope: !474, file: !474, line: 116, type: !469, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1961)
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "write_error", scope: !1963, file: !474, line: 121, type: !141)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !474, line: 120, column: 5)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !474, line: 118, column: 7)
!1965 = !DILocation(line: 118, column: 21, scope: !1964)
!1966 = !DILocation(line: 118, column: 7, scope: !1964)
!1967 = !DILocation(line: 118, column: 29, scope: !1964)
!1968 = !DILocation(line: 119, column: 7, scope: !1964)
!1969 = !DILocation(line: 119, column: 12, scope: !1964)
!1970 = !DILocation(line: 119, column: 25, scope: !1964)
!1971 = !DILocation(line: 119, column: 28, scope: !1964)
!1972 = !DILocation(line: 119, column: 34, scope: !1964)
!1973 = !DILocation(line: 118, column: 7, scope: !1960)
!1974 = !DILocation(line: 121, column: 33, scope: !1963)
!1975 = !DILocation(line: 0, scope: !1963)
!1976 = !DILocation(line: 122, column: 11, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1963, file: !474, line: 122, column: 11)
!1978 = !DILocation(line: 0, scope: !1977)
!1979 = !DILocation(line: 122, column: 11, scope: !1963)
!1980 = !DILocation(line: 123, column: 9, scope: !1977)
!1981 = !DILocation(line: 126, column: 9, scope: !1977)
!1982 = !DILocation(line: 128, column: 14, scope: !1963)
!1983 = !DILocation(line: 128, column: 7, scope: !1963)
!1984 = !DILocation(line: 133, column: 42, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1960, file: !474, line: 133, column: 7)
!1986 = !DILocation(line: 133, column: 28, scope: !1985)
!1987 = !DILocation(line: 133, column: 50, scope: !1985)
!1988 = !DILocation(line: 133, column: 7, scope: !1960)
!1989 = !DILocation(line: 134, column: 12, scope: !1985)
!1990 = !DILocation(line: 134, column: 5, scope: !1985)
!1991 = !DILocation(line: 135, column: 1, scope: !1960)
!1992 = !DISubprogram(name: "_exit", scope: !1436, file: !1436, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !949)
!1993 = distinct !DISubprogram(name: "verror", scope: !489, file: !489, line: 251, type: !1994, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{null, !85, !85, !141, !499}
!1996 = !{!1997, !1998, !1999, !2000}
!1997 = !DILocalVariable(name: "status", arg: 1, scope: !1993, file: !489, line: 251, type: !85)
!1998 = !DILocalVariable(name: "errnum", arg: 2, scope: !1993, file: !489, line: 251, type: !85)
!1999 = !DILocalVariable(name: "message", arg: 3, scope: !1993, file: !489, line: 251, type: !141)
!2000 = !DILocalVariable(name: "args", arg: 4, scope: !1993, file: !489, line: 251, type: !499)
!2001 = !DILocation(line: 0, scope: !1993)
!2002 = !DILocation(line: 261, column: 3, scope: !1993)
!2003 = !DILocation(line: 265, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1993, file: !489, line: 265, column: 7)
!2005 = !DILocation(line: 265, column: 7, scope: !1993)
!2006 = !DILocation(line: 266, column: 5, scope: !2004)
!2007 = !DILocation(line: 272, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !489, line: 268, column: 5)
!2009 = !DILocation(line: 276, column: 3, scope: !1993)
!2010 = !DILocation(line: 282, column: 1, scope: !1993)
!2011 = distinct !DISubprogram(name: "flush_stdout", scope: !489, file: !489, line: 163, type: !469, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "stdout_fd", scope: !2011, file: !489, line: 166, type: !85)
!2014 = !DILocation(line: 0, scope: !2011)
!2015 = !DILocalVariable(name: "fd", arg: 1, scope: !2016, file: !489, line: 145, type: !85)
!2016 = distinct !DISubprogram(name: "is_open", scope: !489, file: !489, line: 145, type: !1437, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2017)
!2017 = !{!2015}
!2018 = !DILocation(line: 0, scope: !2016, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 182, column: 25, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2011, file: !489, line: 182, column: 7)
!2021 = !DILocation(line: 157, column: 15, scope: !2016, inlinedAt: !2019)
!2022 = !DILocation(line: 157, column: 12, scope: !2016, inlinedAt: !2019)
!2023 = !DILocation(line: 182, column: 7, scope: !2011)
!2024 = !DILocation(line: 184, column: 5, scope: !2020)
!2025 = !DILocation(line: 185, column: 1, scope: !2011)
!2026 = distinct !DISubprogram(name: "error_tail", scope: !489, file: !489, line: 219, type: !1994, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2027)
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DILocalVariable(name: "status", arg: 1, scope: !2026, file: !489, line: 219, type: !85)
!2029 = !DILocalVariable(name: "errnum", arg: 2, scope: !2026, file: !489, line: 219, type: !85)
!2030 = !DILocalVariable(name: "message", arg: 3, scope: !2026, file: !489, line: 219, type: !141)
!2031 = !DILocalVariable(name: "args", arg: 4, scope: !2026, file: !489, line: 219, type: !499)
!2032 = !DILocation(line: 0, scope: !2026)
!2033 = !DILocation(line: 229, column: 13, scope: !2026)
!2034 = !DILocalVariable(name: "__stream", arg: 1, scope: !2035, file: !951, line: 132, type: !2038)
!2035 = distinct !DISubprogram(name: "vfprintf", scope: !951, file: !951, line: 132, type: !2036, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2073)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!85, !2038, !955, !499}
!2038 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2042)
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2041, file: !212, line: 51, baseType: !85, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2041, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2041, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2041, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2041, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2041, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2041, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2041, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2041, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2041, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2041, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2041, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2041, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2041, file: !212, line: 70, baseType: !2057, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2041, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2041, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2041, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2041, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2041, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2041, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2041, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2041, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2041, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2041, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2041, file: !212, line: 93, baseType: !2057, size: 64, offset: 1344)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2041, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2041, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2041, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2041, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2073 = !{!2034, !2074, !2075}
!2074 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2035, file: !951, line: 133, type: !955)
!2075 = !DILocalVariable(name: "__ap", arg: 3, scope: !2035, file: !951, line: 133, type: !499)
!2076 = !DILocation(line: 0, scope: !2035, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 229, column: 3, scope: !2026)
!2078 = !DILocation(line: 135, column: 10, scope: !2035, inlinedAt: !2077)
!2079 = !DILocation(line: 232, column: 3, scope: !2026)
!2080 = !DILocation(line: 233, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2026, file: !489, line: 233, column: 7)
!2082 = !DILocation(line: 233, column: 7, scope: !2026)
!2083 = !DILocalVariable(name: "errnum", arg: 1, scope: !2084, file: !489, line: 188, type: !85)
!2084 = distinct !DISubprogram(name: "print_errno_message", scope: !489, file: !489, line: 188, type: !135, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2085)
!2085 = !{!2083, !2086, !2087}
!2086 = !DILocalVariable(name: "s", scope: !2084, file: !489, line: 190, type: !141)
!2087 = !DILocalVariable(name: "errbuf", scope: !2084, file: !489, line: 193, type: !2088)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 1024)
!2091 = !DILocation(line: 0, scope: !2084, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 234, column: 5, scope: !2081)
!2093 = !DILocation(line: 193, column: 3, scope: !2084, inlinedAt: !2092)
!2094 = !DILocation(line: 193, column: 8, scope: !2084, inlinedAt: !2092)
!2095 = !DILocation(line: 195, column: 7, scope: !2084, inlinedAt: !2092)
!2096 = !DILocation(line: 207, column: 9, scope: !2097, inlinedAt: !2092)
!2097 = distinct !DILexicalBlock(scope: !2084, file: !489, line: 207, column: 7)
!2098 = !DILocation(line: 207, column: 7, scope: !2084, inlinedAt: !2092)
!2099 = !DILocation(line: 208, column: 9, scope: !2097, inlinedAt: !2092)
!2100 = !DILocation(line: 208, column: 5, scope: !2097, inlinedAt: !2092)
!2101 = !DILocation(line: 214, column: 3, scope: !2084, inlinedAt: !2092)
!2102 = !DILocation(line: 216, column: 1, scope: !2084, inlinedAt: !2092)
!2103 = !DILocation(line: 234, column: 5, scope: !2081)
!2104 = !DILocation(line: 238, column: 3, scope: !2026)
!2105 = !DILocalVariable(name: "__c", arg: 1, scope: !2106, file: !1779, line: 101, type: !85)
!2106 = distinct !DISubprogram(name: "putc_unlocked", scope: !1779, file: !1779, line: 101, type: !2107, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!85, !85, !2039}
!2109 = !{!2105, !2110}
!2110 = !DILocalVariable(name: "__stream", arg: 2, scope: !2106, file: !1779, line: 101, type: !2039)
!2111 = !DILocation(line: 0, scope: !2106, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 238, column: 3, scope: !2026)
!2113 = !DILocation(line: 103, column: 10, scope: !2106, inlinedAt: !2112)
!2114 = !DILocation(line: 240, column: 3, scope: !2026)
!2115 = !DILocation(line: 241, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2026, file: !489, line: 241, column: 7)
!2117 = !DILocation(line: 241, column: 7, scope: !2026)
!2118 = !DILocation(line: 242, column: 5, scope: !2116)
!2119 = !DILocation(line: 243, column: 1, scope: !2026)
!2120 = !DISubprogram(name: "__vfprintf_chk", scope: !951, file: !951, line: 96, type: !2121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!85, !2038, !85, !955, !499}
!2123 = !DISubprogram(name: "strerror_r", scope: !1086, file: !1086, line: 444, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!130, !85, !130, !138}
!2126 = !DISubprogram(name: "fflush_unlocked", scope: !960, file: !960, line: 239, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!85, !2039}
!2129 = !DISubprogram(name: "fcntl", scope: !2130, file: !2130, line: 149, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2130 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!85, !85, !85, null}
!2133 = distinct !DISubprogram(name: "error", scope: !489, file: !489, line: 285, type: !2134, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !85, !85, !141, null}
!2136 = !{!2137, !2138, !2139, !2140}
!2137 = !DILocalVariable(name: "status", arg: 1, scope: !2133, file: !489, line: 285, type: !85)
!2138 = !DILocalVariable(name: "errnum", arg: 2, scope: !2133, file: !489, line: 285, type: !85)
!2139 = !DILocalVariable(name: "message", arg: 3, scope: !2133, file: !489, line: 285, type: !141)
!2140 = !DILocalVariable(name: "ap", scope: !2133, file: !489, line: 287, type: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !960, line: 52, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2143, line: 14, baseType: !2144)
!2143 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !503, baseType: !2145)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 192, elements: !57)
!2146 = !DILocation(line: 0, scope: !2133)
!2147 = !DILocation(line: 287, column: 3, scope: !2133)
!2148 = !DILocation(line: 287, column: 11, scope: !2133)
!2149 = !DILocation(line: 288, column: 3, scope: !2133)
!2150 = !DILocation(line: 289, column: 3, scope: !2133)
!2151 = !DILocation(line: 290, column: 3, scope: !2133)
!2152 = !DILocation(line: 291, column: 1, scope: !2133)
!2153 = !DILocation(line: 0, scope: !496)
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
!2192 = !DILocalVariable(name: "ap", scope: !2183, file: !489, line: 362, type: !2141)
!2193 = !DILocation(line: 0, scope: !2183)
!2194 = !DILocation(line: 362, column: 3, scope: !2183)
!2195 = !DILocation(line: 362, column: 11, scope: !2183)
!2196 = !DILocation(line: 363, column: 3, scope: !2183)
!2197 = !DILocation(line: 364, column: 3, scope: !2183)
!2198 = !DILocation(line: 366, column: 3, scope: !2183)
!2199 = !DILocation(line: 367, column: 1, scope: !2183)
!2200 = distinct !DISubprogram(name: "fdadvise", scope: !809, file: !809, line: 25, type: !2201, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !2205)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !85, !2203, !2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !960, line: 63, baseType: !234)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !105, line: 51, baseType: !104)
!2205 = !{!2206, !2207, !2208, !2209}
!2206 = !DILocalVariable(name: "fd", arg: 1, scope: !2200, file: !809, line: 25, type: !85)
!2207 = !DILocalVariable(name: "offset", arg: 2, scope: !2200, file: !809, line: 25, type: !2203)
!2208 = !DILocalVariable(name: "len", arg: 3, scope: !2200, file: !809, line: 25, type: !2203)
!2209 = !DILocalVariable(name: "advice", arg: 4, scope: !2200, file: !809, line: 25, type: !2204)
!2210 = !DILocation(line: 0, scope: !2200)
!2211 = !DILocation(line: 28, column: 3, scope: !2200)
!2212 = !DILocation(line: 30, column: 1, scope: !2200)
!2213 = !DISubprogram(name: "posix_fadvise", scope: !2130, file: !2130, line: 273, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!85, !85, !2203, !2203, !85}
!2216 = distinct !DISubprogram(name: "fadvise", scope: !809, file: !809, line: 33, type: !2217, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !808, retainedNodes: !2253)
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
!2254 = !DILocalVariable(name: "fp", arg: 1, scope: !2216, file: !809, line: 33, type: !2219)
!2255 = !DILocalVariable(name: "advice", arg: 2, scope: !2216, file: !809, line: 33, type: !2204)
!2256 = !DILocation(line: 0, scope: !2216)
!2257 = !DILocation(line: 35, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2216, file: !809, line: 35, column: 7)
!2259 = !DILocation(line: 35, column: 7, scope: !2216)
!2260 = !DILocation(line: 36, column: 15, scope: !2258)
!2261 = !DILocation(line: 0, scope: !2200, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 36, column: 5, scope: !2258)
!2263 = !DILocation(line: 28, column: 3, scope: !2200, inlinedAt: !2262)
!2264 = !DILocation(line: 36, column: 5, scope: !2258)
!2265 = !DILocation(line: 37, column: 1, scope: !2216)
!2266 = !DISubprogram(name: "fileno", scope: !960, file: !960, line: 809, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!85, !2219}
!2269 = distinct !DISubprogram(name: "open_safer", scope: !812, file: !812, line: 29, type: !2270, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !811, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!85, !141, !85, null}
!2272 = !{!2273, !2274, !2275, !2277}
!2273 = !DILocalVariable(name: "file", arg: 1, scope: !2269, file: !812, line: 29, type: !141)
!2274 = !DILocalVariable(name: "flags", arg: 2, scope: !2269, file: !812, line: 29, type: !85)
!2275 = !DILocalVariable(name: "mode", scope: !2269, file: !812, line: 31, type: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1183, line: 69, baseType: !1538)
!2277 = !DILocalVariable(name: "ap", scope: !2278, file: !812, line: 35, type: !2280)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !812, line: 34, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2269, file: !812, line: 33, column: 7)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2143, line: 22, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2282, baseType: !2283)
!2282 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2284, size: 192, elements: !57)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2284, file: !2282, line: 35, baseType: !76, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2284, file: !2282, line: 35, baseType: !76, size: 32, offset: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2284, file: !2282, line: 35, baseType: !131, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2284, file: !2282, line: 35, baseType: !131, size: 64, offset: 128)
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
!2303 = !DISubprogram(name: "open", scope: !2130, file: !2130, line: 181, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2304 = distinct !DISubprogram(name: "getprogname", scope: !814, file: !814, line: 54, type: !2305, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !949)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!141}
!2307 = !DILocation(line: 58, column: 10, scope: !2304)
!2308 = !DILocation(line: 58, column: 3, scope: !2304)
!2309 = distinct !DISubprogram(name: "isapipe", scope: !816, file: !816, line: 72, type: !1437, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !2310)
!2310 = !{!2311, !2312, !2314, !2315, !2337}
!2311 = !DILocalVariable(name: "fd", arg: 1, scope: !2309, file: !816, line: 72, type: !85)
!2312 = !DILocalVariable(name: "pipe_link_count_max", scope: !2309, file: !816, line: 74, type: !2313)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1183, line: 74, baseType: !1536)
!2314 = !DILocalVariable(name: "check_for_fifo", scope: !2309, file: !816, line: 75, type: !179)
!2315 = !DILocalVariable(name: "st", scope: !2309, file: !816, line: 77, type: !2316)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1529, line: 26, size: 1152, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2334, !2335, !2336}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2316, file: !1529, line: 31, baseType: !1532, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2316, file: !1529, line: 36, baseType: !1534, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2316, file: !1529, line: 44, baseType: !1536, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2316, file: !1529, line: 45, baseType: !1538, size: 32, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2316, file: !1529, line: 47, baseType: !1540, size: 32, offset: 224)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2316, file: !1529, line: 48, baseType: !1542, size: 32, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2316, file: !1529, line: 50, baseType: !85, size: 32, offset: 288)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2316, file: !1529, line: 52, baseType: !1532, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2316, file: !1529, line: 57, baseType: !234, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2316, file: !1529, line: 61, baseType: !1547, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2316, file: !1529, line: 63, baseType: !1549, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2316, file: !1529, line: 74, baseType: !2330, size: 128, offset: 576)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1552, line: 11, size: 128, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2330, file: !1552, line: 16, baseType: !1555, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2330, file: !1552, line: 21, baseType: !1557, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2316, file: !1529, line: 75, baseType: !2330, size: 128, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2316, file: !1529, line: 76, baseType: !2330, size: 128, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2316, file: !1529, line: 89, baseType: !1561, size: 192, offset: 960)
!2337 = !DILocalVariable(name: "fstat_result", scope: !2309, file: !816, line: 78, type: !85)
!2338 = !DILocation(line: 0, scope: !2309)
!2339 = !DILocation(line: 77, column: 3, scope: !2309)
!2340 = !DILocation(line: 77, column: 15, scope: !2309)
!2341 = !DILocation(line: 78, column: 22, scope: !2309)
!2342 = !DILocation(line: 79, column: 20, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2309, file: !816, line: 79, column: 7)
!2344 = !DILocation(line: 79, column: 7, scope: !2309)
!2345 = !DILocation(line: 118, column: 9, scope: !2309)
!2346 = !{!1571, !1572, i64 16}
!2347 = !DILocation(line: 118, column: 18, scope: !2309)
!2348 = !DILocation(line: 119, column: 6, scope: !2309)
!2349 = !DILocation(line: 117, column: 3, scope: !2309)
!2350 = !DILocation(line: 120, column: 1, scope: !2309)
!2351 = distinct !DISubprogram(name: "set_program_name", scope: !535, file: !535, line: 37, type: !915, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !2352)
!2352 = !{!2353, !2354, !2355}
!2353 = !DILocalVariable(name: "argv0", arg: 1, scope: !2351, file: !535, line: 37, type: !141)
!2354 = !DILocalVariable(name: "slash", scope: !2351, file: !535, line: 44, type: !141)
!2355 = !DILocalVariable(name: "base", scope: !2351, file: !535, line: 45, type: !141)
!2356 = !DILocation(line: 0, scope: !2351)
!2357 = !DILocation(line: 44, column: 23, scope: !2351)
!2358 = !DILocation(line: 45, column: 22, scope: !2351)
!2359 = !DILocation(line: 46, column: 17, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2351, file: !535, line: 46, column: 7)
!2361 = !DILocation(line: 46, column: 9, scope: !2360)
!2362 = !DILocation(line: 46, column: 25, scope: !2360)
!2363 = !DILocation(line: 46, column: 40, scope: !2360)
!2364 = !DILocalVariable(name: "__s1", arg: 1, scope: !2365, file: !978, line: 974, type: !128)
!2365 = distinct !DISubprogram(name: "memeq", scope: !978, file: !978, line: 974, type: !1695, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !2366)
!2366 = !{!2364, !2367, !2368}
!2367 = !DILocalVariable(name: "__s2", arg: 2, scope: !2365, file: !978, line: 974, type: !128)
!2368 = !DILocalVariable(name: "__n", arg: 3, scope: !2365, file: !978, line: 974, type: !138)
!2369 = !DILocation(line: 0, scope: !2365, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 46, column: 28, scope: !2360)
!2371 = !DILocation(line: 976, column: 11, scope: !2365, inlinedAt: !2370)
!2372 = !DILocation(line: 976, column: 10, scope: !2365, inlinedAt: !2370)
!2373 = !DILocation(line: 46, column: 7, scope: !2351)
!2374 = !DILocation(line: 49, column: 11, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !535, line: 49, column: 11)
!2376 = distinct !DILexicalBlock(scope: !2360, file: !535, line: 47, column: 5)
!2377 = !DILocation(line: 49, column: 36, scope: !2375)
!2378 = !DILocation(line: 49, column: 11, scope: !2376)
!2379 = !DILocation(line: 65, column: 16, scope: !2351)
!2380 = !DILocation(line: 71, column: 27, scope: !2351)
!2381 = !DILocation(line: 74, column: 33, scope: !2351)
!2382 = !DILocation(line: 76, column: 1, scope: !2351)
!2383 = !DISubprogram(name: "strrchr", scope: !1086, file: !1086, line: 273, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2384 = !DILocation(line: 0, scope: !544)
!2385 = !DILocation(line: 40, column: 29, scope: !544)
!2386 = !DILocation(line: 41, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !544, file: !545, line: 41, column: 7)
!2388 = !DILocation(line: 41, column: 7, scope: !544)
!2389 = !DILocation(line: 47, column: 3, scope: !544)
!2390 = !DILocation(line: 48, column: 3, scope: !544)
!2391 = !DILocation(line: 48, column: 13, scope: !544)
!2392 = !DILocalVariable(name: "ps", arg: 1, scope: !2393, file: !2394, line: 1135, type: !2397)
!2393 = distinct !DISubprogram(name: "mbszero", scope: !2394, file: !2394, line: 1135, type: !2395, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !2398)
!2394 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!2398 = !{!2392}
!2399 = !DILocation(line: 0, scope: !2393, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 48, column: 18, scope: !544)
!2401 = !DILocalVariable(name: "__dest", arg: 1, scope: !2402, file: !2403, line: 57, type: !131)
!2402 = distinct !DISubprogram(name: "memset", scope: !2403, file: !2403, line: 57, type: !2404, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !2406)
!2403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!131, !131, !85, !138}
!2406 = !{!2401, !2407, !2408}
!2407 = !DILocalVariable(name: "__ch", arg: 2, scope: !2402, file: !2403, line: 57, type: !85)
!2408 = !DILocalVariable(name: "__len", arg: 3, scope: !2402, file: !2403, line: 57, type: !138)
!2409 = !DILocation(line: 0, scope: !2402, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1137, column: 3, scope: !2393, inlinedAt: !2400)
!2411 = !DILocation(line: 59, column: 10, scope: !2402, inlinedAt: !2410)
!2412 = !DILocation(line: 49, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !544, file: !545, line: 49, column: 7)
!2414 = !DILocation(line: 49, column: 39, scope: !2413)
!2415 = !DILocation(line: 49, column: 44, scope: !2413)
!2416 = !DILocation(line: 54, column: 1, scope: !544)
!2417 = !DISubprogram(name: "mbrtoc32", scope: !556, file: !556, line: 57, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!138, !2420, !955, !138, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2421)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2397)
!2423 = distinct !DISubprogram(name: "clone_quoting_options", scope: !575, file: !575, line: 113, type: !2424, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2427)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!2426, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "o", arg: 1, scope: !2423, file: !575, line: 113, type: !2426)
!2429 = !DILocalVariable(name: "saved_errno", scope: !2423, file: !575, line: 115, type: !85)
!2430 = !DILocalVariable(name: "p", scope: !2423, file: !575, line: 116, type: !2426)
!2431 = !DILocation(line: 0, scope: !2423)
!2432 = !DILocation(line: 115, column: 21, scope: !2423)
!2433 = !DILocation(line: 116, column: 40, scope: !2423)
!2434 = !DILocation(line: 116, column: 31, scope: !2423)
!2435 = !DILocation(line: 118, column: 9, scope: !2423)
!2436 = !DILocation(line: 119, column: 3, scope: !2423)
!2437 = distinct !DISubprogram(name: "get_quoting_style", scope: !575, file: !575, line: 124, type: !2438, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2442)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!113, !2440}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!2442 = !{!2443}
!2443 = !DILocalVariable(name: "o", arg: 1, scope: !2437, file: !575, line: 124, type: !2440)
!2444 = !DILocation(line: 0, scope: !2437)
!2445 = !DILocation(line: 126, column: 11, scope: !2437)
!2446 = !DILocation(line: 126, column: 46, scope: !2437)
!2447 = !{!2448, !901, i64 0}
!2448 = !{!"quoting_options", !901, i64 0, !966, i64 4, !901, i64 8, !900, i64 40, !900, i64 48}
!2449 = !DILocation(line: 126, column: 3, scope: !2437)
!2450 = distinct !DISubprogram(name: "set_quoting_style", scope: !575, file: !575, line: 132, type: !2451, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null, !2426, !113}
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "o", arg: 1, scope: !2450, file: !575, line: 132, type: !2426)
!2455 = !DILocalVariable(name: "s", arg: 2, scope: !2450, file: !575, line: 132, type: !113)
!2456 = !DILocation(line: 0, scope: !2450)
!2457 = !DILocation(line: 134, column: 4, scope: !2450)
!2458 = !DILocation(line: 134, column: 45, scope: !2450)
!2459 = !DILocation(line: 135, column: 1, scope: !2450)
!2460 = distinct !DISubprogram(name: "set_char_quoting", scope: !575, file: !575, line: 143, type: !2461, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2463)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!85, !2426, !4, !85}
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2470, !2471}
!2464 = !DILocalVariable(name: "o", arg: 1, scope: !2460, file: !575, line: 143, type: !2426)
!2465 = !DILocalVariable(name: "c", arg: 2, scope: !2460, file: !575, line: 143, type: !4)
!2466 = !DILocalVariable(name: "i", arg: 3, scope: !2460, file: !575, line: 143, type: !85)
!2467 = !DILocalVariable(name: "uc", scope: !2460, file: !575, line: 145, type: !143)
!2468 = !DILocalVariable(name: "p", scope: !2460, file: !575, line: 146, type: !2469)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2470 = !DILocalVariable(name: "shift", scope: !2460, file: !575, line: 148, type: !85)
!2471 = !DILocalVariable(name: "r", scope: !2460, file: !575, line: 149, type: !76)
!2472 = !DILocation(line: 0, scope: !2460)
!2473 = !DILocation(line: 147, column: 6, scope: !2460)
!2474 = !DILocation(line: 147, column: 41, scope: !2460)
!2475 = !DILocation(line: 147, column: 62, scope: !2460)
!2476 = !DILocation(line: 147, column: 57, scope: !2460)
!2477 = !DILocation(line: 148, column: 15, scope: !2460)
!2478 = !DILocation(line: 149, column: 21, scope: !2460)
!2479 = !DILocation(line: 149, column: 24, scope: !2460)
!2480 = !DILocation(line: 149, column: 34, scope: !2460)
!2481 = !DILocation(line: 150, column: 19, scope: !2460)
!2482 = !DILocation(line: 150, column: 24, scope: !2460)
!2483 = !DILocation(line: 150, column: 6, scope: !2460)
!2484 = !DILocation(line: 151, column: 3, scope: !2460)
!2485 = distinct !DISubprogram(name: "set_quoting_flags", scope: !575, file: !575, line: 159, type: !2486, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!85, !2426, !85}
!2488 = !{!2489, !2490, !2491}
!2489 = !DILocalVariable(name: "o", arg: 1, scope: !2485, file: !575, line: 159, type: !2426)
!2490 = !DILocalVariable(name: "i", arg: 2, scope: !2485, file: !575, line: 159, type: !85)
!2491 = !DILocalVariable(name: "r", scope: !2485, file: !575, line: 163, type: !85)
!2492 = !DILocation(line: 0, scope: !2485)
!2493 = !DILocation(line: 161, column: 8, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2485, file: !575, line: 161, column: 7)
!2495 = !DILocation(line: 161, column: 7, scope: !2485)
!2496 = !DILocation(line: 163, column: 14, scope: !2485)
!2497 = !{!2448, !966, i64 4}
!2498 = !DILocation(line: 164, column: 12, scope: !2485)
!2499 = !DILocation(line: 165, column: 3, scope: !2485)
!2500 = distinct !DISubprogram(name: "set_custom_quoting", scope: !575, file: !575, line: 169, type: !2501, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2426, !141, !141}
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "o", arg: 1, scope: !2500, file: !575, line: 169, type: !2426)
!2505 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2500, file: !575, line: 170, type: !141)
!2506 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2500, file: !575, line: 170, type: !141)
!2507 = !DILocation(line: 0, scope: !2500)
!2508 = !DILocation(line: 172, column: 8, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2500, file: !575, line: 172, column: 7)
!2510 = !DILocation(line: 172, column: 7, scope: !2500)
!2511 = !DILocation(line: 174, column: 12, scope: !2500)
!2512 = !DILocation(line: 175, column: 8, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2500, file: !575, line: 175, column: 7)
!2514 = !DILocation(line: 175, column: 19, scope: !2513)
!2515 = !DILocation(line: 176, column: 5, scope: !2513)
!2516 = !DILocation(line: 177, column: 6, scope: !2500)
!2517 = !DILocation(line: 177, column: 17, scope: !2500)
!2518 = !{!2448, !900, i64 40}
!2519 = !DILocation(line: 178, column: 6, scope: !2500)
!2520 = !DILocation(line: 178, column: 18, scope: !2500)
!2521 = !{!2448, !900, i64 48}
!2522 = !DILocation(line: 179, column: 1, scope: !2500)
!2523 = !DISubprogram(name: "abort", scope: !1090, file: !1090, line: 598, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !949)
!2524 = distinct !DISubprogram(name: "quotearg_buffer", scope: !575, file: !575, line: 774, type: !2525, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!138, !130, !138, !141, !138, !2440}
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2528 = !DILocalVariable(name: "buffer", arg: 1, scope: !2524, file: !575, line: 774, type: !130)
!2529 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2524, file: !575, line: 774, type: !138)
!2530 = !DILocalVariable(name: "arg", arg: 3, scope: !2524, file: !575, line: 775, type: !141)
!2531 = !DILocalVariable(name: "argsize", arg: 4, scope: !2524, file: !575, line: 775, type: !138)
!2532 = !DILocalVariable(name: "o", arg: 5, scope: !2524, file: !575, line: 776, type: !2440)
!2533 = !DILocalVariable(name: "p", scope: !2524, file: !575, line: 778, type: !2440)
!2534 = !DILocalVariable(name: "saved_errno", scope: !2524, file: !575, line: 779, type: !85)
!2535 = !DILocalVariable(name: "r", scope: !2524, file: !575, line: 780, type: !138)
!2536 = !DILocation(line: 0, scope: !2524)
!2537 = !DILocation(line: 778, column: 37, scope: !2524)
!2538 = !DILocation(line: 779, column: 21, scope: !2524)
!2539 = !DILocation(line: 781, column: 43, scope: !2524)
!2540 = !DILocation(line: 781, column: 53, scope: !2524)
!2541 = !DILocation(line: 781, column: 63, scope: !2524)
!2542 = !DILocation(line: 782, column: 43, scope: !2524)
!2543 = !DILocation(line: 782, column: 58, scope: !2524)
!2544 = !DILocation(line: 780, column: 14, scope: !2524)
!2545 = !DILocation(line: 783, column: 9, scope: !2524)
!2546 = !DILocation(line: 784, column: 3, scope: !2524)
!2547 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !575, file: !575, line: 251, type: !2548, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2552)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!138, !130, !138, !141, !138, !113, !85, !2550, !141, !141}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2577, !2579, !2582, !2583, !2584, !2585, !2588, !2589, !2592, !2596, !2597, !2605, !2608, !2609, !2611, !2612, !2613, !2614}
!2553 = !DILocalVariable(name: "buffer", arg: 1, scope: !2547, file: !575, line: 251, type: !130)
!2554 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2547, file: !575, line: 251, type: !138)
!2555 = !DILocalVariable(name: "arg", arg: 3, scope: !2547, file: !575, line: 252, type: !141)
!2556 = !DILocalVariable(name: "argsize", arg: 4, scope: !2547, file: !575, line: 252, type: !138)
!2557 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2547, file: !575, line: 253, type: !113)
!2558 = !DILocalVariable(name: "flags", arg: 6, scope: !2547, file: !575, line: 253, type: !85)
!2559 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2547, file: !575, line: 254, type: !2550)
!2560 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2547, file: !575, line: 255, type: !141)
!2561 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2547, file: !575, line: 256, type: !141)
!2562 = !DILocalVariable(name: "unibyte_locale", scope: !2547, file: !575, line: 258, type: !179)
!2563 = !DILocalVariable(name: "len", scope: !2547, file: !575, line: 260, type: !138)
!2564 = !DILocalVariable(name: "orig_buffersize", scope: !2547, file: !575, line: 261, type: !138)
!2565 = !DILocalVariable(name: "quote_string", scope: !2547, file: !575, line: 262, type: !141)
!2566 = !DILocalVariable(name: "quote_string_len", scope: !2547, file: !575, line: 263, type: !138)
!2567 = !DILocalVariable(name: "backslash_escapes", scope: !2547, file: !575, line: 264, type: !179)
!2568 = !DILocalVariable(name: "elide_outer_quotes", scope: !2547, file: !575, line: 265, type: !179)
!2569 = !DILocalVariable(name: "encountered_single_quote", scope: !2547, file: !575, line: 266, type: !179)
!2570 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2547, file: !575, line: 267, type: !179)
!2571 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2547, file: !575, line: 309, type: !179)
!2572 = !DILocalVariable(name: "lq", scope: !2573, file: !575, line: 361, type: !141)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !575, line: 361, column: 11)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !575, line: 360, column: 13)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !575, line: 333, column: 7)
!2576 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 312, column: 5)
!2577 = !DILocalVariable(name: "i", scope: !2578, file: !575, line: 395, type: !138)
!2578 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 395, column: 3)
!2579 = !DILocalVariable(name: "is_right_quote", scope: !2580, file: !575, line: 397, type: !179)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !575, line: 396, column: 5)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !575, line: 395, column: 3)
!2582 = !DILocalVariable(name: "escaping", scope: !2580, file: !575, line: 398, type: !179)
!2583 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2580, file: !575, line: 399, type: !179)
!2584 = !DILocalVariable(name: "c", scope: !2580, file: !575, line: 417, type: !143)
!2585 = !DILocalVariable(name: "m", scope: !2586, file: !575, line: 598, type: !138)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 596, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 419, column: 9)
!2588 = !DILocalVariable(name: "printable", scope: !2586, file: !575, line: 600, type: !179)
!2589 = !DILocalVariable(name: "mbs", scope: !2590, file: !575, line: 609, type: !645)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !575, line: 608, column: 15)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !575, line: 602, column: 17)
!2592 = !DILocalVariable(name: "w", scope: !2593, file: !575, line: 618, type: !555)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !575, line: 617, column: 19)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !575, line: 616, column: 17)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !575, line: 616, column: 17)
!2596 = !DILocalVariable(name: "bytes", scope: !2593, file: !575, line: 619, type: !138)
!2597 = !DILocalVariable(name: "j", scope: !2598, file: !575, line: 648, type: !138)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !575, line: 648, column: 29)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !575, line: 647, column: 27)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !575, line: 645, column: 29)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !575, line: 636, column: 23)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !575, line: 628, column: 30)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !575, line: 623, column: 30)
!2604 = distinct !DILexicalBlock(scope: !2593, file: !575, line: 621, column: 25)
!2605 = !DILocalVariable(name: "ilim", scope: !2606, file: !575, line: 674, type: !138)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !575, line: 671, column: 15)
!2607 = distinct !DILexicalBlock(scope: !2586, file: !575, line: 670, column: 17)
!2608 = !DILabel(scope: !2547, name: "process_input", file: !575, line: 308)
!2609 = !DILabel(scope: !2610, name: "c_and_shell_escape", file: !575, line: 502)
!2610 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 478, column: 9)
!2611 = !DILabel(scope: !2610, name: "c_escape", file: !575, line: 507)
!2612 = !DILabel(scope: !2580, name: "store_escape", file: !575, line: 709)
!2613 = !DILabel(scope: !2580, name: "store_c", file: !575, line: 712)
!2614 = !DILabel(scope: !2547, name: "force_outer_quoting_style", file: !575, line: 753)
!2615 = !DILocation(line: 0, scope: !2547)
!2616 = !DILocation(line: 258, column: 25, scope: !2547)
!2617 = !DILocation(line: 258, column: 36, scope: !2547)
!2618 = !DILocation(line: 265, column: 8, scope: !2547)
!2619 = !DILocation(line: 267, column: 3, scope: !2547)
!2620 = !DILocation(line: 261, column: 10, scope: !2547)
!2621 = !DILocation(line: 262, column: 15, scope: !2547)
!2622 = !DILocation(line: 263, column: 10, scope: !2547)
!2623 = !DILocation(line: 264, column: 8, scope: !2547)
!2624 = !DILocation(line: 266, column: 8, scope: !2547)
!2625 = !DILocation(line: 267, column: 8, scope: !2547)
!2626 = !DILocation(line: 308, column: 2, scope: !2547)
!2627 = !DILocation(line: 311, column: 3, scope: !2547)
!2628 = !DILocation(line: 318, column: 11, scope: !2576)
!2629 = !DILocation(line: 318, column: 12, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2576, file: !575, line: 318, column: 11)
!2631 = !DILocation(line: 319, column: 9, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !575, line: 319, column: 9)
!2633 = distinct !DILexicalBlock(scope: !2630, file: !575, line: 319, column: 9)
!2634 = !DILocation(line: 319, column: 9, scope: !2633)
!2635 = !DILocation(line: 0, scope: !636, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 357, column: 26, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !575, line: 335, column: 11)
!2638 = distinct !DILexicalBlock(scope: !2575, file: !575, line: 334, column: 13)
!2639 = !DILocation(line: 199, column: 29, scope: !636, inlinedAt: !2636)
!2640 = !DILocation(line: 201, column: 19, scope: !2641, inlinedAt: !2636)
!2641 = distinct !DILexicalBlock(scope: !636, file: !575, line: 201, column: 7)
!2642 = !DILocation(line: 201, column: 7, scope: !636, inlinedAt: !2636)
!2643 = !DILocation(line: 229, column: 3, scope: !636, inlinedAt: !2636)
!2644 = !DILocation(line: 230, column: 3, scope: !636, inlinedAt: !2636)
!2645 = !DILocation(line: 230, column: 13, scope: !636, inlinedAt: !2636)
!2646 = !DILocalVariable(name: "ps", arg: 1, scope: !2647, file: !2394, line: 1135, type: !2650)
!2647 = distinct !DISubprogram(name: "mbszero", scope: !2394, file: !2394, line: 1135, type: !2648, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2651)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!2651 = !{!2646}
!2652 = !DILocation(line: 0, scope: !2647, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 230, column: 18, scope: !636, inlinedAt: !2636)
!2654 = !DILocalVariable(name: "__dest", arg: 1, scope: !2655, file: !2403, line: 57, type: !131)
!2655 = distinct !DISubprogram(name: "memset", scope: !2403, file: !2403, line: 57, type: !2404, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2656)
!2656 = !{!2654, !2657, !2658}
!2657 = !DILocalVariable(name: "__ch", arg: 2, scope: !2655, file: !2403, line: 57, type: !85)
!2658 = !DILocalVariable(name: "__len", arg: 3, scope: !2655, file: !2403, line: 57, type: !138)
!2659 = !DILocation(line: 0, scope: !2655, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1137, column: 3, scope: !2647, inlinedAt: !2653)
!2661 = !DILocation(line: 59, column: 10, scope: !2655, inlinedAt: !2660)
!2662 = !DILocation(line: 231, column: 7, scope: !2663, inlinedAt: !2636)
!2663 = distinct !DILexicalBlock(scope: !636, file: !575, line: 231, column: 7)
!2664 = !DILocation(line: 231, column: 40, scope: !2663, inlinedAt: !2636)
!2665 = !DILocation(line: 231, column: 45, scope: !2663, inlinedAt: !2636)
!2666 = !DILocation(line: 235, column: 1, scope: !636, inlinedAt: !2636)
!2667 = !DILocation(line: 0, scope: !636, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 358, column: 27, scope: !2637)
!2669 = !DILocation(line: 199, column: 29, scope: !636, inlinedAt: !2668)
!2670 = !DILocation(line: 201, column: 19, scope: !2641, inlinedAt: !2668)
!2671 = !DILocation(line: 201, column: 7, scope: !636, inlinedAt: !2668)
!2672 = !DILocation(line: 229, column: 3, scope: !636, inlinedAt: !2668)
!2673 = !DILocation(line: 230, column: 3, scope: !636, inlinedAt: !2668)
!2674 = !DILocation(line: 230, column: 13, scope: !636, inlinedAt: !2668)
!2675 = !DILocation(line: 0, scope: !2647, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 230, column: 18, scope: !636, inlinedAt: !2668)
!2677 = !DILocation(line: 0, scope: !2655, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 1137, column: 3, scope: !2647, inlinedAt: !2676)
!2679 = !DILocation(line: 59, column: 10, scope: !2655, inlinedAt: !2678)
!2680 = !DILocation(line: 231, column: 7, scope: !2663, inlinedAt: !2668)
!2681 = !DILocation(line: 231, column: 40, scope: !2663, inlinedAt: !2668)
!2682 = !DILocation(line: 231, column: 45, scope: !2663, inlinedAt: !2668)
!2683 = !DILocation(line: 235, column: 1, scope: !636, inlinedAt: !2668)
!2684 = !DILocation(line: 360, column: 14, scope: !2574)
!2685 = !DILocation(line: 360, column: 13, scope: !2575)
!2686 = !DILocation(line: 0, scope: !2573)
!2687 = !DILocation(line: 361, column: 45, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2573, file: !575, line: 361, column: 11)
!2689 = !DILocation(line: 361, column: 11, scope: !2573)
!2690 = !DILocation(line: 362, column: 13, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !575, line: 362, column: 13)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !575, line: 362, column: 13)
!2693 = !DILocation(line: 362, column: 13, scope: !2692)
!2694 = !DILocation(line: 361, column: 52, scope: !2688)
!2695 = distinct !{!2695, !2689, !2696, !1012}
!2696 = !DILocation(line: 362, column: 13, scope: !2573)
!2697 = !DILocation(line: 260, column: 10, scope: !2547)
!2698 = !DILocation(line: 365, column: 28, scope: !2575)
!2699 = !DILocation(line: 367, column: 7, scope: !2576)
!2700 = !DILocation(line: 370, column: 7, scope: !2576)
!2701 = !DILocation(line: 373, column: 7, scope: !2576)
!2702 = !DILocation(line: 376, column: 12, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2576, file: !575, line: 376, column: 11)
!2704 = !DILocation(line: 376, column: 11, scope: !2576)
!2705 = !DILocation(line: 381, column: 12, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2576, file: !575, line: 381, column: 11)
!2707 = !DILocation(line: 381, column: 11, scope: !2576)
!2708 = !DILocation(line: 382, column: 9, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !575, line: 382, column: 9)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !575, line: 382, column: 9)
!2711 = !DILocation(line: 382, column: 9, scope: !2710)
!2712 = !DILocation(line: 389, column: 7, scope: !2576)
!2713 = !DILocation(line: 392, column: 7, scope: !2576)
!2714 = !DILocation(line: 0, scope: !2578)
!2715 = !DILocation(line: 395, column: 8, scope: !2578)
!2716 = !DILocation(line: 309, column: 8, scope: !2547)
!2717 = !DILocation(line: 395, scope: !2578)
!2718 = !DILocation(line: 395, column: 34, scope: !2581)
!2719 = !DILocation(line: 395, column: 26, scope: !2581)
!2720 = !DILocation(line: 395, column: 48, scope: !2581)
!2721 = !DILocation(line: 395, column: 55, scope: !2581)
!2722 = !DILocation(line: 395, column: 3, scope: !2578)
!2723 = !DILocation(line: 395, column: 67, scope: !2581)
!2724 = !DILocation(line: 0, scope: !2580)
!2725 = !DILocation(line: 402, column: 11, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 401, column: 11)
!2727 = !DILocation(line: 404, column: 17, scope: !2726)
!2728 = !DILocation(line: 405, column: 39, scope: !2726)
!2729 = !DILocation(line: 409, column: 32, scope: !2726)
!2730 = !DILocation(line: 405, column: 19, scope: !2726)
!2731 = !DILocation(line: 405, column: 15, scope: !2726)
!2732 = !DILocation(line: 410, column: 11, scope: !2726)
!2733 = !DILocation(line: 410, column: 25, scope: !2726)
!2734 = !DILocalVariable(name: "__s1", arg: 1, scope: !2735, file: !978, line: 974, type: !128)
!2735 = distinct !DISubprogram(name: "memeq", scope: !978, file: !978, line: 974, type: !1695, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2736)
!2736 = !{!2734, !2737, !2738}
!2737 = !DILocalVariable(name: "__s2", arg: 2, scope: !2735, file: !978, line: 974, type: !128)
!2738 = !DILocalVariable(name: "__n", arg: 3, scope: !2735, file: !978, line: 974, type: !138)
!2739 = !DILocation(line: 0, scope: !2735, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 410, column: 14, scope: !2726)
!2741 = !DILocation(line: 976, column: 11, scope: !2735, inlinedAt: !2740)
!2742 = !DILocation(line: 976, column: 10, scope: !2735, inlinedAt: !2740)
!2743 = !DILocation(line: 401, column: 11, scope: !2580)
!2744 = !DILocation(line: 417, column: 25, scope: !2580)
!2745 = !DILocation(line: 418, column: 7, scope: !2580)
!2746 = !DILocation(line: 421, column: 15, scope: !2587)
!2747 = !DILocation(line: 423, column: 15, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !575, line: 423, column: 15)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !575, line: 422, column: 13)
!2750 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 421, column: 15)
!2751 = !DILocation(line: 423, column: 15, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !575, line: 423, column: 15)
!2753 = !DILocation(line: 423, column: 15, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !575, line: 423, column: 15)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !575, line: 423, column: 15)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !575, line: 423, column: 15)
!2757 = !DILocation(line: 423, column: 15, scope: !2755)
!2758 = !DILocation(line: 423, column: 15, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !575, line: 423, column: 15)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !575, line: 423, column: 15)
!2761 = !DILocation(line: 423, column: 15, scope: !2760)
!2762 = !DILocation(line: 423, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !575, line: 423, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2756, file: !575, line: 423, column: 15)
!2765 = !DILocation(line: 423, column: 15, scope: !2764)
!2766 = !DILocation(line: 423, column: 15, scope: !2756)
!2767 = !DILocation(line: 423, column: 15, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !575, line: 423, column: 15)
!2769 = distinct !DILexicalBlock(scope: !2748, file: !575, line: 423, column: 15)
!2770 = !DILocation(line: 423, column: 15, scope: !2769)
!2771 = !DILocation(line: 431, column: 19, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2749, file: !575, line: 430, column: 19)
!2773 = !DILocation(line: 431, column: 24, scope: !2772)
!2774 = !DILocation(line: 431, column: 28, scope: !2772)
!2775 = !DILocation(line: 431, column: 38, scope: !2772)
!2776 = !DILocation(line: 431, column: 48, scope: !2772)
!2777 = !DILocation(line: 431, column: 59, scope: !2772)
!2778 = !DILocation(line: 433, column: 19, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !575, line: 433, column: 19)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !575, line: 433, column: 19)
!2781 = distinct !DILexicalBlock(scope: !2772, file: !575, line: 432, column: 17)
!2782 = !DILocation(line: 433, column: 19, scope: !2780)
!2783 = !DILocation(line: 434, column: 19, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !575, line: 434, column: 19)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !575, line: 434, column: 19)
!2786 = !DILocation(line: 434, column: 19, scope: !2785)
!2787 = !DILocation(line: 435, column: 17, scope: !2781)
!2788 = !DILocation(line: 442, column: 20, scope: !2750)
!2789 = !DILocation(line: 447, column: 11, scope: !2587)
!2790 = !DILocation(line: 450, column: 19, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 448, column: 13)
!2792 = !DILocation(line: 456, column: 19, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2791, file: !575, line: 455, column: 19)
!2794 = !DILocation(line: 456, column: 24, scope: !2793)
!2795 = !DILocation(line: 456, column: 28, scope: !2793)
!2796 = !DILocation(line: 456, column: 38, scope: !2793)
!2797 = !DILocation(line: 456, column: 47, scope: !2793)
!2798 = !DILocation(line: 456, column: 41, scope: !2793)
!2799 = !DILocation(line: 456, column: 52, scope: !2793)
!2800 = !DILocation(line: 455, column: 19, scope: !2791)
!2801 = !DILocation(line: 457, column: 25, scope: !2793)
!2802 = !DILocation(line: 457, column: 17, scope: !2793)
!2803 = !DILocation(line: 464, column: 25, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2793, file: !575, line: 458, column: 19)
!2805 = !DILocation(line: 468, column: 21, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !575, line: 468, column: 21)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !575, line: 468, column: 21)
!2808 = !DILocation(line: 468, column: 21, scope: !2807)
!2809 = !DILocation(line: 469, column: 21, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !575, line: 469, column: 21)
!2811 = distinct !DILexicalBlock(scope: !2804, file: !575, line: 469, column: 21)
!2812 = !DILocation(line: 469, column: 21, scope: !2811)
!2813 = !DILocation(line: 470, column: 21, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !575, line: 470, column: 21)
!2815 = distinct !DILexicalBlock(scope: !2804, file: !575, line: 470, column: 21)
!2816 = !DILocation(line: 470, column: 21, scope: !2815)
!2817 = !DILocation(line: 471, column: 21, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !575, line: 471, column: 21)
!2819 = distinct !DILexicalBlock(scope: !2804, file: !575, line: 471, column: 21)
!2820 = !DILocation(line: 471, column: 21, scope: !2819)
!2821 = !DILocation(line: 472, column: 21, scope: !2804)
!2822 = !DILocation(line: 482, column: 33, scope: !2610)
!2823 = !DILocation(line: 483, column: 33, scope: !2610)
!2824 = !DILocation(line: 485, column: 33, scope: !2610)
!2825 = !DILocation(line: 486, column: 33, scope: !2610)
!2826 = !DILocation(line: 487, column: 33, scope: !2610)
!2827 = !DILocation(line: 490, column: 17, scope: !2610)
!2828 = !DILocation(line: 492, column: 21, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !575, line: 491, column: 15)
!2830 = distinct !DILexicalBlock(scope: !2610, file: !575, line: 490, column: 17)
!2831 = !DILocation(line: 499, column: 35, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2610, file: !575, line: 499, column: 17)
!2833 = !DILocation(line: 499, column: 57, scope: !2832)
!2834 = !DILocation(line: 0, scope: !2610)
!2835 = !DILocation(line: 502, column: 11, scope: !2610)
!2836 = !DILocation(line: 504, column: 17, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2610, file: !575, line: 503, column: 17)
!2838 = !DILocation(line: 507, column: 11, scope: !2610)
!2839 = !DILocation(line: 508, column: 17, scope: !2610)
!2840 = !DILocation(line: 517, column: 15, scope: !2587)
!2841 = !DILocation(line: 517, column: 40, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 517, column: 15)
!2843 = !DILocation(line: 517, column: 47, scope: !2842)
!2844 = !DILocation(line: 517, column: 18, scope: !2842)
!2845 = !DILocation(line: 521, column: 17, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 521, column: 15)
!2847 = !DILocation(line: 521, column: 15, scope: !2587)
!2848 = !DILocation(line: 525, column: 11, scope: !2587)
!2849 = !DILocation(line: 537, column: 15, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 536, column: 15)
!2851 = !DILocation(line: 544, column: 15, scope: !2587)
!2852 = !DILocation(line: 546, column: 19, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !575, line: 545, column: 13)
!2854 = distinct !DILexicalBlock(scope: !2587, file: !575, line: 544, column: 15)
!2855 = !DILocation(line: 549, column: 19, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !575, line: 549, column: 19)
!2857 = !DILocation(line: 549, column: 30, scope: !2856)
!2858 = !DILocation(line: 558, column: 15, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !575, line: 558, column: 15)
!2860 = distinct !DILexicalBlock(scope: !2853, file: !575, line: 558, column: 15)
!2861 = !DILocation(line: 558, column: 15, scope: !2860)
!2862 = !DILocation(line: 559, column: 15, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !575, line: 559, column: 15)
!2864 = distinct !DILexicalBlock(scope: !2853, file: !575, line: 559, column: 15)
!2865 = !DILocation(line: 559, column: 15, scope: !2864)
!2866 = !DILocation(line: 560, column: 15, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !575, line: 560, column: 15)
!2868 = distinct !DILexicalBlock(scope: !2853, file: !575, line: 560, column: 15)
!2869 = !DILocation(line: 560, column: 15, scope: !2868)
!2870 = !DILocation(line: 562, column: 13, scope: !2853)
!2871 = !DILocation(line: 602, column: 17, scope: !2586)
!2872 = !DILocation(line: 0, scope: !2586)
!2873 = !DILocation(line: 605, column: 29, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2591, file: !575, line: 603, column: 15)
!2875 = !DILocation(line: 605, column: 27, scope: !2874)
!2876 = !DILocation(line: 668, column: 40, scope: !2586)
!2877 = !DILocation(line: 670, column: 23, scope: !2607)
!2878 = !DILocation(line: 609, column: 17, scope: !2590)
!2879 = !DILocation(line: 609, column: 27, scope: !2590)
!2880 = !DILocation(line: 0, scope: !2647, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 609, column: 32, scope: !2590)
!2882 = !DILocation(line: 0, scope: !2655, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 1137, column: 3, scope: !2647, inlinedAt: !2881)
!2884 = !DILocation(line: 59, column: 10, scope: !2655, inlinedAt: !2883)
!2885 = !DILocation(line: 613, column: 29, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2590, file: !575, line: 613, column: 21)
!2887 = !DILocation(line: 613, column: 21, scope: !2590)
!2888 = !DILocation(line: 614, column: 29, scope: !2886)
!2889 = !DILocation(line: 614, column: 19, scope: !2886)
!2890 = !DILocation(line: 618, column: 21, scope: !2593)
!2891 = !DILocation(line: 620, column: 54, scope: !2593)
!2892 = !DILocation(line: 0, scope: !2593)
!2893 = !DILocation(line: 619, column: 36, scope: !2593)
!2894 = !DILocation(line: 621, column: 25, scope: !2593)
!2895 = !DILocation(line: 631, column: 38, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2602, file: !575, line: 629, column: 23)
!2897 = !DILocation(line: 631, column: 48, scope: !2896)
!2898 = !DILocation(line: 665, column: 19, scope: !2594)
!2899 = !DILocation(line: 666, column: 15, scope: !2591)
!2900 = !DILocation(line: 626, column: 25, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2603, file: !575, line: 624, column: 23)
!2902 = !DILocation(line: 631, column: 51, scope: !2896)
!2903 = !DILocation(line: 631, column: 25, scope: !2896)
!2904 = !DILocation(line: 632, column: 28, scope: !2896)
!2905 = !DILocation(line: 631, column: 34, scope: !2896)
!2906 = distinct !{!2906, !2903, !2904, !1012}
!2907 = !DILocation(line: 646, column: 29, scope: !2600)
!2908 = !DILocation(line: 0, scope: !2598)
!2909 = !DILocation(line: 649, column: 49, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2598, file: !575, line: 648, column: 29)
!2911 = !DILocation(line: 649, column: 39, scope: !2910)
!2912 = !DILocation(line: 649, column: 31, scope: !2910)
!2913 = !DILocation(line: 648, column: 60, scope: !2910)
!2914 = !DILocation(line: 648, column: 50, scope: !2910)
!2915 = !DILocation(line: 648, column: 29, scope: !2598)
!2916 = distinct !{!2916, !2915, !2917, !1012}
!2917 = !DILocation(line: 654, column: 33, scope: !2598)
!2918 = !DILocation(line: 657, column: 43, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2601, file: !575, line: 657, column: 29)
!2920 = !DILocalVariable(name: "wc", arg: 1, scope: !2921, file: !2922, line: 865, type: !2925)
!2921 = distinct !DISubprogram(name: "c32isprint", scope: !2922, file: !2922, line: 865, type: !2923, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !2927)
!2922 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!85, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2926, line: 20, baseType: !76)
!2926 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2927 = !{!2920}
!2928 = !DILocation(line: 0, scope: !2921, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 657, column: 31, scope: !2919)
!2930 = !DILocation(line: 871, column: 10, scope: !2921, inlinedAt: !2929)
!2931 = !DILocation(line: 657, column: 31, scope: !2919)
!2932 = !DILocation(line: 657, column: 29, scope: !2601)
!2933 = !DILocation(line: 664, column: 23, scope: !2593)
!2934 = !DILocation(line: 670, column: 19, scope: !2607)
!2935 = !DILocation(line: 670, column: 45, scope: !2607)
!2936 = !DILocation(line: 674, column: 33, scope: !2606)
!2937 = !DILocation(line: 0, scope: !2606)
!2938 = !DILocation(line: 676, column: 17, scope: !2606)
!2939 = !DILocation(line: 398, column: 12, scope: !2580)
!2940 = !DILocation(line: 678, column: 43, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !575, line: 678, column: 25)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !575, line: 677, column: 19)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !575, line: 676, column: 17)
!2944 = distinct !DILexicalBlock(scope: !2606, file: !575, line: 676, column: 17)
!2945 = !DILocation(line: 680, column: 25, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !575, line: 680, column: 25)
!2947 = distinct !DILexicalBlock(scope: !2941, file: !575, line: 679, column: 23)
!2948 = !DILocation(line: 680, column: 25, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !575, line: 680, column: 25)
!2950 = !DILocation(line: 680, column: 25, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !575, line: 680, column: 25)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !575, line: 680, column: 25)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !575, line: 680, column: 25)
!2954 = !DILocation(line: 680, column: 25, scope: !2952)
!2955 = !DILocation(line: 680, column: 25, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !575, line: 680, column: 25)
!2957 = distinct !DILexicalBlock(scope: !2953, file: !575, line: 680, column: 25)
!2958 = !DILocation(line: 680, column: 25, scope: !2957)
!2959 = !DILocation(line: 680, column: 25, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !575, line: 680, column: 25)
!2961 = distinct !DILexicalBlock(scope: !2953, file: !575, line: 680, column: 25)
!2962 = !DILocation(line: 680, column: 25, scope: !2961)
!2963 = !DILocation(line: 680, column: 25, scope: !2953)
!2964 = !DILocation(line: 680, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !575, line: 680, column: 25)
!2966 = distinct !DILexicalBlock(scope: !2946, file: !575, line: 680, column: 25)
!2967 = !DILocation(line: 680, column: 25, scope: !2966)
!2968 = !DILocation(line: 681, column: 25, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !575, line: 681, column: 25)
!2970 = distinct !DILexicalBlock(scope: !2947, file: !575, line: 681, column: 25)
!2971 = !DILocation(line: 681, column: 25, scope: !2970)
!2972 = !DILocation(line: 682, column: 25, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !575, line: 682, column: 25)
!2974 = distinct !DILexicalBlock(scope: !2947, file: !575, line: 682, column: 25)
!2975 = !DILocation(line: 682, column: 25, scope: !2974)
!2976 = !DILocation(line: 683, column: 38, scope: !2947)
!2977 = !DILocation(line: 683, column: 33, scope: !2947)
!2978 = !DILocation(line: 684, column: 23, scope: !2947)
!2979 = !DILocation(line: 685, column: 30, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2941, file: !575, line: 685, column: 30)
!2981 = !DILocation(line: 685, column: 30, scope: !2941)
!2982 = !DILocation(line: 687, column: 25, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !575, line: 687, column: 25)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !575, line: 687, column: 25)
!2985 = distinct !DILexicalBlock(scope: !2980, file: !575, line: 686, column: 23)
!2986 = !DILocation(line: 687, column: 25, scope: !2984)
!2987 = !DILocation(line: 689, column: 23, scope: !2985)
!2988 = !DILocation(line: 690, column: 35, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2942, file: !575, line: 690, column: 25)
!2990 = !DILocation(line: 690, column: 30, scope: !2989)
!2991 = !DILocation(line: 690, column: 25, scope: !2942)
!2992 = !DILocation(line: 692, column: 21, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !575, line: 692, column: 21)
!2994 = distinct !DILexicalBlock(scope: !2942, file: !575, line: 692, column: 21)
!2995 = !DILocation(line: 692, column: 21, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !575, line: 692, column: 21)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !575, line: 692, column: 21)
!2998 = distinct !DILexicalBlock(scope: !2993, file: !575, line: 692, column: 21)
!2999 = !DILocation(line: 692, column: 21, scope: !2997)
!3000 = !DILocation(line: 692, column: 21, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !575, line: 692, column: 21)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !575, line: 692, column: 21)
!3003 = !DILocation(line: 692, column: 21, scope: !3002)
!3004 = !DILocation(line: 692, column: 21, scope: !2998)
!3005 = !DILocation(line: 0, scope: !2942)
!3006 = !DILocation(line: 693, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !575, line: 693, column: 21)
!3008 = distinct !DILexicalBlock(scope: !2942, file: !575, line: 693, column: 21)
!3009 = !DILocation(line: 693, column: 21, scope: !3008)
!3010 = !DILocation(line: 694, column: 25, scope: !2942)
!3011 = !DILocation(line: 676, column: 17, scope: !2943)
!3012 = distinct !{!3012, !3013, !3014}
!3013 = !DILocation(line: 676, column: 17, scope: !2944)
!3014 = !DILocation(line: 695, column: 19, scope: !2944)
!3015 = !DILocation(line: 409, column: 30, scope: !2726)
!3016 = !DILocation(line: 702, column: 34, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 702, column: 11)
!3018 = !DILocation(line: 704, column: 14, scope: !3017)
!3019 = !DILocation(line: 705, column: 14, scope: !3017)
!3020 = !DILocation(line: 705, column: 35, scope: !3017)
!3021 = !DILocation(line: 705, column: 17, scope: !3017)
!3022 = !DILocation(line: 705, column: 47, scope: !3017)
!3023 = !DILocation(line: 705, column: 65, scope: !3017)
!3024 = !DILocation(line: 706, column: 11, scope: !3017)
!3025 = !DILocation(line: 702, column: 11, scope: !2580)
!3026 = !DILocation(line: 395, column: 15, scope: !2578)
!3027 = !DILocation(line: 709, column: 5, scope: !2580)
!3028 = !DILocation(line: 710, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 710, column: 7)
!3030 = !DILocation(line: 710, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3029, file: !575, line: 710, column: 7)
!3032 = !DILocation(line: 710, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !575, line: 710, column: 7)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !575, line: 710, column: 7)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !575, line: 710, column: 7)
!3036 = !DILocation(line: 710, column: 7, scope: !3034)
!3037 = !DILocation(line: 710, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !575, line: 710, column: 7)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !575, line: 710, column: 7)
!3040 = !DILocation(line: 710, column: 7, scope: !3039)
!3041 = !DILocation(line: 710, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !575, line: 710, column: 7)
!3043 = distinct !DILexicalBlock(scope: !3035, file: !575, line: 710, column: 7)
!3044 = !DILocation(line: 710, column: 7, scope: !3043)
!3045 = !DILocation(line: 710, column: 7, scope: !3035)
!3046 = !DILocation(line: 710, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !575, line: 710, column: 7)
!3048 = distinct !DILexicalBlock(scope: !3029, file: !575, line: 710, column: 7)
!3049 = !DILocation(line: 710, column: 7, scope: !3048)
!3050 = !DILocation(line: 712, column: 5, scope: !2580)
!3051 = !DILocation(line: 713, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !575, line: 713, column: 7)
!3053 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 713, column: 7)
!3054 = !DILocation(line: 417, column: 21, scope: !2580)
!3055 = !DILocation(line: 713, column: 7, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !575, line: 713, column: 7)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !575, line: 713, column: 7)
!3058 = distinct !DILexicalBlock(scope: !3052, file: !575, line: 713, column: 7)
!3059 = !DILocation(line: 713, column: 7, scope: !3057)
!3060 = !DILocation(line: 713, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !575, line: 713, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !575, line: 713, column: 7)
!3063 = !DILocation(line: 713, column: 7, scope: !3062)
!3064 = !DILocation(line: 713, column: 7, scope: !3058)
!3065 = !DILocation(line: 714, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !575, line: 714, column: 7)
!3067 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 714, column: 7)
!3068 = !DILocation(line: 714, column: 7, scope: !3067)
!3069 = !DILocation(line: 716, column: 13, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2580, file: !575, line: 716, column: 11)
!3071 = !DILocation(line: 716, column: 11, scope: !2580)
!3072 = !DILocation(line: 718, column: 5, scope: !2581)
!3073 = !DILocation(line: 395, column: 82, scope: !2581)
!3074 = !DILocation(line: 395, column: 3, scope: !2581)
!3075 = distinct !{!3075, !2722, !3076, !1012}
!3076 = !DILocation(line: 718, column: 5, scope: !2578)
!3077 = !DILocation(line: 720, column: 11, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 720, column: 7)
!3079 = !DILocation(line: 720, column: 16, scope: !3078)
!3080 = !DILocation(line: 728, column: 51, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 728, column: 7)
!3082 = !DILocation(line: 731, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !575, line: 731, column: 11)
!3084 = distinct !DILexicalBlock(scope: !3081, file: !575, line: 730, column: 5)
!3085 = !DILocation(line: 731, column: 11, scope: !3084)
!3086 = !DILocation(line: 732, column: 16, scope: !3083)
!3087 = !DILocation(line: 732, column: 9, scope: !3083)
!3088 = !DILocation(line: 736, column: 18, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3083, file: !575, line: 736, column: 16)
!3090 = !DILocation(line: 736, column: 29, scope: !3089)
!3091 = !DILocation(line: 745, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 745, column: 7)
!3093 = !DILocation(line: 745, column: 20, scope: !3092)
!3094 = !DILocation(line: 746, column: 12, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !575, line: 746, column: 5)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !575, line: 746, column: 5)
!3097 = !DILocation(line: 746, column: 5, scope: !3096)
!3098 = !DILocation(line: 747, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !575, line: 747, column: 7)
!3100 = distinct !DILexicalBlock(scope: !3095, file: !575, line: 747, column: 7)
!3101 = !DILocation(line: 747, column: 7, scope: !3100)
!3102 = !DILocation(line: 746, column: 39, scope: !3095)
!3103 = distinct !{!3103, !3097, !3104, !1012}
!3104 = !DILocation(line: 747, column: 7, scope: !3096)
!3105 = !DILocation(line: 749, column: 11, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 749, column: 7)
!3107 = !DILocation(line: 749, column: 7, scope: !2547)
!3108 = !DILocation(line: 750, column: 5, scope: !3106)
!3109 = !DILocation(line: 750, column: 17, scope: !3106)
!3110 = !DILocation(line: 753, column: 2, scope: !2547)
!3111 = !DILocation(line: 756, column: 51, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !2547, file: !575, line: 756, column: 7)
!3113 = !DILocation(line: 756, column: 21, scope: !3112)
!3114 = !DILocation(line: 760, column: 42, scope: !2547)
!3115 = !DILocation(line: 758, column: 10, scope: !2547)
!3116 = !DILocation(line: 758, column: 3, scope: !2547)
!3117 = !DILocation(line: 762, column: 1, scope: !2547)
!3118 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1090, file: !1090, line: 98, type: !3119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!138}
!3121 = !DISubprogram(name: "iswprint", scope: !3122, file: !3122, line: 120, type: !2923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!3122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3123 = distinct !DISubprogram(name: "quotearg_alloc", scope: !575, file: !575, line: 788, type: !3124, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!130, !141, !138, !2440}
!3126 = !{!3127, !3128, !3129}
!3127 = !DILocalVariable(name: "arg", arg: 1, scope: !3123, file: !575, line: 788, type: !141)
!3128 = !DILocalVariable(name: "argsize", arg: 2, scope: !3123, file: !575, line: 788, type: !138)
!3129 = !DILocalVariable(name: "o", arg: 3, scope: !3123, file: !575, line: 789, type: !2440)
!3130 = !DILocation(line: 0, scope: !3123)
!3131 = !DILocalVariable(name: "arg", arg: 1, scope: !3132, file: !575, line: 801, type: !141)
!3132 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !575, file: !575, line: 801, type: !3133, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!130, !141, !138, !833, !2440}
!3135 = !{!3131, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143}
!3136 = !DILocalVariable(name: "argsize", arg: 2, scope: !3132, file: !575, line: 801, type: !138)
!3137 = !DILocalVariable(name: "size", arg: 3, scope: !3132, file: !575, line: 801, type: !833)
!3138 = !DILocalVariable(name: "o", arg: 4, scope: !3132, file: !575, line: 802, type: !2440)
!3139 = !DILocalVariable(name: "p", scope: !3132, file: !575, line: 804, type: !2440)
!3140 = !DILocalVariable(name: "saved_errno", scope: !3132, file: !575, line: 805, type: !85)
!3141 = !DILocalVariable(name: "flags", scope: !3132, file: !575, line: 807, type: !85)
!3142 = !DILocalVariable(name: "bufsize", scope: !3132, file: !575, line: 808, type: !138)
!3143 = !DILocalVariable(name: "buf", scope: !3132, file: !575, line: 812, type: !130)
!3144 = !DILocation(line: 0, scope: !3132, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 791, column: 10, scope: !3123)
!3146 = !DILocation(line: 804, column: 37, scope: !3132, inlinedAt: !3145)
!3147 = !DILocation(line: 805, column: 21, scope: !3132, inlinedAt: !3145)
!3148 = !DILocation(line: 807, column: 18, scope: !3132, inlinedAt: !3145)
!3149 = !DILocation(line: 807, column: 24, scope: !3132, inlinedAt: !3145)
!3150 = !DILocation(line: 808, column: 72, scope: !3132, inlinedAt: !3145)
!3151 = !DILocation(line: 809, column: 56, scope: !3132, inlinedAt: !3145)
!3152 = !DILocation(line: 810, column: 49, scope: !3132, inlinedAt: !3145)
!3153 = !DILocation(line: 811, column: 49, scope: !3132, inlinedAt: !3145)
!3154 = !DILocation(line: 808, column: 20, scope: !3132, inlinedAt: !3145)
!3155 = !DILocation(line: 811, column: 62, scope: !3132, inlinedAt: !3145)
!3156 = !DILocation(line: 812, column: 15, scope: !3132, inlinedAt: !3145)
!3157 = !DILocation(line: 813, column: 60, scope: !3132, inlinedAt: !3145)
!3158 = !DILocation(line: 815, column: 32, scope: !3132, inlinedAt: !3145)
!3159 = !DILocation(line: 815, column: 47, scope: !3132, inlinedAt: !3145)
!3160 = !DILocation(line: 813, column: 3, scope: !3132, inlinedAt: !3145)
!3161 = !DILocation(line: 816, column: 9, scope: !3132, inlinedAt: !3145)
!3162 = !DILocation(line: 791, column: 3, scope: !3123)
!3163 = !DILocation(line: 0, scope: !3132)
!3164 = !DILocation(line: 804, column: 37, scope: !3132)
!3165 = !DILocation(line: 805, column: 21, scope: !3132)
!3166 = !DILocation(line: 807, column: 18, scope: !3132)
!3167 = !DILocation(line: 807, column: 27, scope: !3132)
!3168 = !DILocation(line: 807, column: 24, scope: !3132)
!3169 = !DILocation(line: 808, column: 72, scope: !3132)
!3170 = !DILocation(line: 809, column: 56, scope: !3132)
!3171 = !DILocation(line: 810, column: 49, scope: !3132)
!3172 = !DILocation(line: 811, column: 49, scope: !3132)
!3173 = !DILocation(line: 808, column: 20, scope: !3132)
!3174 = !DILocation(line: 811, column: 62, scope: !3132)
!3175 = !DILocation(line: 812, column: 15, scope: !3132)
!3176 = !DILocation(line: 813, column: 60, scope: !3132)
!3177 = !DILocation(line: 815, column: 32, scope: !3132)
!3178 = !DILocation(line: 815, column: 47, scope: !3132)
!3179 = !DILocation(line: 813, column: 3, scope: !3132)
!3180 = !DILocation(line: 816, column: 9, scope: !3132)
!3181 = !DILocation(line: 817, column: 7, scope: !3132)
!3182 = !DILocation(line: 818, column: 11, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3132, file: !575, line: 817, column: 7)
!3184 = !{!1572, !1572, i64 0}
!3185 = !DILocation(line: 818, column: 5, scope: !3183)
!3186 = !DILocation(line: 819, column: 3, scope: !3132)
!3187 = distinct !DISubprogram(name: "quotearg_free", scope: !575, file: !575, line: 837, type: !469, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3188)
!3188 = !{!3189, !3190}
!3189 = !DILocalVariable(name: "sv", scope: !3187, file: !575, line: 839, type: !659)
!3190 = !DILocalVariable(name: "i", scope: !3191, file: !575, line: 840, type: !85)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !575, line: 840, column: 3)
!3192 = !DILocation(line: 839, column: 24, scope: !3187)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 0, scope: !3191)
!3195 = !DILocation(line: 840, column: 21, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !575, line: 840, column: 3)
!3197 = !DILocation(line: 840, column: 3, scope: !3191)
!3198 = !DILocation(line: 842, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3187, file: !575, line: 842, column: 7)
!3200 = !{!3201, !900, i64 8}
!3201 = !{!"slotvec", !1572, i64 0, !900, i64 8}
!3202 = !DILocation(line: 842, column: 17, scope: !3199)
!3203 = !DILocation(line: 842, column: 7, scope: !3187)
!3204 = !DILocation(line: 841, column: 17, scope: !3196)
!3205 = !DILocation(line: 841, column: 5, scope: !3196)
!3206 = !DILocation(line: 840, column: 32, scope: !3196)
!3207 = distinct !{!3207, !3197, !3208, !1012}
!3208 = !DILocation(line: 841, column: 20, scope: !3191)
!3209 = !DILocation(line: 844, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3199, file: !575, line: 843, column: 5)
!3211 = !DILocation(line: 845, column: 21, scope: !3210)
!3212 = !{!3201, !1572, i64 0}
!3213 = !DILocation(line: 846, column: 20, scope: !3210)
!3214 = !DILocation(line: 847, column: 5, scope: !3210)
!3215 = !DILocation(line: 848, column: 10, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3187, file: !575, line: 848, column: 7)
!3217 = !DILocation(line: 848, column: 7, scope: !3187)
!3218 = !DILocation(line: 850, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3216, file: !575, line: 849, column: 5)
!3220 = !DILocation(line: 851, column: 15, scope: !3219)
!3221 = !DILocation(line: 852, column: 5, scope: !3219)
!3222 = !DILocation(line: 853, column: 10, scope: !3187)
!3223 = !DILocation(line: 854, column: 1, scope: !3187)
!3224 = distinct !DISubprogram(name: "quotearg_n", scope: !575, file: !575, line: 919, type: !1083, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3225)
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "n", arg: 1, scope: !3224, file: !575, line: 919, type: !85)
!3227 = !DILocalVariable(name: "arg", arg: 2, scope: !3224, file: !575, line: 919, type: !141)
!3228 = !DILocation(line: 0, scope: !3224)
!3229 = !DILocation(line: 921, column: 10, scope: !3224)
!3230 = !DILocation(line: 921, column: 3, scope: !3224)
!3231 = distinct !DISubprogram(name: "quotearg_n_options", scope: !575, file: !575, line: 866, type: !3232, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!130, !85, !141, !138, !2440}
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3245, !3246, !3248, !3249, !3250}
!3235 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !575, line: 866, type: !85)
!3236 = !DILocalVariable(name: "arg", arg: 2, scope: !3231, file: !575, line: 866, type: !141)
!3237 = !DILocalVariable(name: "argsize", arg: 3, scope: !3231, file: !575, line: 866, type: !138)
!3238 = !DILocalVariable(name: "options", arg: 4, scope: !3231, file: !575, line: 867, type: !2440)
!3239 = !DILocalVariable(name: "saved_errno", scope: !3231, file: !575, line: 869, type: !85)
!3240 = !DILocalVariable(name: "sv", scope: !3231, file: !575, line: 871, type: !659)
!3241 = !DILocalVariable(name: "nslots_max", scope: !3231, file: !575, line: 873, type: !85)
!3242 = !DILocalVariable(name: "preallocated", scope: !3243, file: !575, line: 879, type: !179)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !575, line: 878, column: 5)
!3244 = distinct !DILexicalBlock(scope: !3231, file: !575, line: 877, column: 7)
!3245 = !DILocalVariable(name: "new_nslots", scope: !3243, file: !575, line: 880, type: !846)
!3246 = !DILocalVariable(name: "size", scope: !3247, file: !575, line: 891, type: !138)
!3247 = distinct !DILexicalBlock(scope: !3231, file: !575, line: 890, column: 3)
!3248 = !DILocalVariable(name: "val", scope: !3247, file: !575, line: 892, type: !130)
!3249 = !DILocalVariable(name: "flags", scope: !3247, file: !575, line: 894, type: !85)
!3250 = !DILocalVariable(name: "qsize", scope: !3247, file: !575, line: 895, type: !138)
!3251 = !DILocation(line: 0, scope: !3231)
!3252 = !DILocation(line: 869, column: 21, scope: !3231)
!3253 = !DILocation(line: 871, column: 24, scope: !3231)
!3254 = !DILocation(line: 874, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3231, file: !575, line: 874, column: 7)
!3256 = !DILocation(line: 875, column: 5, scope: !3255)
!3257 = !DILocation(line: 877, column: 7, scope: !3244)
!3258 = !DILocation(line: 877, column: 14, scope: !3244)
!3259 = !DILocation(line: 877, column: 7, scope: !3231)
!3260 = !DILocation(line: 879, column: 31, scope: !3243)
!3261 = !DILocation(line: 0, scope: !3243)
!3262 = !DILocation(line: 880, column: 7, scope: !3243)
!3263 = !DILocation(line: 880, column: 26, scope: !3243)
!3264 = !DILocation(line: 880, column: 13, scope: !3243)
!3265 = !DILocation(line: 882, column: 31, scope: !3243)
!3266 = !DILocation(line: 883, column: 33, scope: !3243)
!3267 = !DILocation(line: 883, column: 42, scope: !3243)
!3268 = !DILocation(line: 883, column: 31, scope: !3243)
!3269 = !DILocation(line: 882, column: 22, scope: !3243)
!3270 = !DILocation(line: 882, column: 15, scope: !3243)
!3271 = !DILocation(line: 884, column: 11, scope: !3243)
!3272 = !DILocation(line: 885, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3243, file: !575, line: 884, column: 11)
!3274 = !{i64 0, i64 8, !3184, i64 8, i64 8, !899}
!3275 = !DILocation(line: 885, column: 9, scope: !3273)
!3276 = !DILocation(line: 886, column: 20, scope: !3243)
!3277 = !DILocation(line: 886, column: 18, scope: !3243)
!3278 = !DILocation(line: 886, column: 32, scope: !3243)
!3279 = !DILocation(line: 886, column: 43, scope: !3243)
!3280 = !DILocation(line: 886, column: 53, scope: !3243)
!3281 = !DILocation(line: 0, scope: !2655, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 886, column: 7, scope: !3243)
!3283 = !DILocation(line: 59, column: 10, scope: !2655, inlinedAt: !3282)
!3284 = !DILocation(line: 887, column: 16, scope: !3243)
!3285 = !DILocation(line: 887, column: 14, scope: !3243)
!3286 = !DILocation(line: 888, column: 5, scope: !3244)
!3287 = !DILocation(line: 888, column: 5, scope: !3243)
!3288 = !DILocation(line: 891, column: 19, scope: !3247)
!3289 = !DILocation(line: 891, column: 25, scope: !3247)
!3290 = !DILocation(line: 0, scope: !3247)
!3291 = !DILocation(line: 892, column: 23, scope: !3247)
!3292 = !DILocation(line: 894, column: 26, scope: !3247)
!3293 = !DILocation(line: 894, column: 32, scope: !3247)
!3294 = !DILocation(line: 896, column: 55, scope: !3247)
!3295 = !DILocation(line: 897, column: 55, scope: !3247)
!3296 = !DILocation(line: 898, column: 55, scope: !3247)
!3297 = !DILocation(line: 899, column: 55, scope: !3247)
!3298 = !DILocation(line: 895, column: 20, scope: !3247)
!3299 = !DILocation(line: 901, column: 14, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3247, file: !575, line: 901, column: 9)
!3301 = !DILocation(line: 901, column: 9, scope: !3247)
!3302 = !DILocation(line: 903, column: 35, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !575, line: 902, column: 7)
!3304 = !DILocation(line: 903, column: 20, scope: !3303)
!3305 = !DILocation(line: 904, column: 17, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !575, line: 904, column: 13)
!3307 = !DILocation(line: 904, column: 13, scope: !3303)
!3308 = !DILocation(line: 905, column: 11, scope: !3306)
!3309 = !DILocation(line: 906, column: 27, scope: !3303)
!3310 = !DILocation(line: 906, column: 19, scope: !3303)
!3311 = !DILocation(line: 907, column: 69, scope: !3303)
!3312 = !DILocation(line: 909, column: 44, scope: !3303)
!3313 = !DILocation(line: 910, column: 44, scope: !3303)
!3314 = !DILocation(line: 907, column: 9, scope: !3303)
!3315 = !DILocation(line: 911, column: 7, scope: !3303)
!3316 = !DILocation(line: 913, column: 11, scope: !3247)
!3317 = !DILocation(line: 914, column: 5, scope: !3247)
!3318 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !575, file: !575, line: 925, type: !3319, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!130, !85, !141, !138}
!3321 = !{!3322, !3323, !3324}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !575, line: 925, type: !85)
!3323 = !DILocalVariable(name: "arg", arg: 2, scope: !3318, file: !575, line: 925, type: !141)
!3324 = !DILocalVariable(name: "argsize", arg: 3, scope: !3318, file: !575, line: 925, type: !138)
!3325 = !DILocation(line: 0, scope: !3318)
!3326 = !DILocation(line: 927, column: 10, scope: !3318)
!3327 = !DILocation(line: 927, column: 3, scope: !3318)
!3328 = distinct !DISubprogram(name: "quotearg", scope: !575, file: !575, line: 931, type: !1092, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3329)
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "arg", arg: 1, scope: !3328, file: !575, line: 931, type: !141)
!3331 = !DILocation(line: 0, scope: !3328)
!3332 = !DILocation(line: 0, scope: !3224, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 933, column: 10, scope: !3328)
!3334 = !DILocation(line: 921, column: 10, scope: !3224, inlinedAt: !3333)
!3335 = !DILocation(line: 933, column: 3, scope: !3328)
!3336 = distinct !DISubprogram(name: "quotearg_mem", scope: !575, file: !575, line: 937, type: !3337, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!130, !141, !138}
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "arg", arg: 1, scope: !3336, file: !575, line: 937, type: !141)
!3341 = !DILocalVariable(name: "argsize", arg: 2, scope: !3336, file: !575, line: 937, type: !138)
!3342 = !DILocation(line: 0, scope: !3336)
!3343 = !DILocation(line: 0, scope: !3318, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 939, column: 10, scope: !3336)
!3345 = !DILocation(line: 927, column: 10, scope: !3318, inlinedAt: !3344)
!3346 = !DILocation(line: 939, column: 3, scope: !3336)
!3347 = distinct !DISubprogram(name: "quotearg_n_style", scope: !575, file: !575, line: 943, type: !3348, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!130, !85, !113, !141}
!3350 = !{!3351, !3352, !3353, !3354}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3347, file: !575, line: 943, type: !85)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3347, file: !575, line: 943, type: !113)
!3353 = !DILocalVariable(name: "arg", arg: 3, scope: !3347, file: !575, line: 943, type: !141)
!3354 = !DILocalVariable(name: "o", scope: !3347, file: !575, line: 945, type: !2441)
!3355 = !DILocation(line: 0, scope: !3347)
!3356 = !DILocation(line: 945, column: 3, scope: !3347)
!3357 = !DILocation(line: 945, column: 32, scope: !3347)
!3358 = !{!3359}
!3359 = distinct !{!3359, !3360, !"quoting_options_from_style: argument 0"}
!3360 = distinct !{!3360, !"quoting_options_from_style"}
!3361 = !DILocation(line: 945, column: 36, scope: !3347)
!3362 = !DILocalVariable(name: "style", arg: 1, scope: !3363, file: !575, line: 183, type: !113)
!3363 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !575, file: !575, line: 183, type: !3364, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!611, !113}
!3366 = !{!3362, !3367}
!3367 = !DILocalVariable(name: "o", scope: !3363, file: !575, line: 185, type: !611)
!3368 = !DILocation(line: 0, scope: !3363, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 945, column: 36, scope: !3347)
!3370 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3369)
!3371 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3369)
!3372 = distinct !DILexicalBlock(scope: !3363, file: !575, line: 186, column: 7)
!3373 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3369)
!3374 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3369)
!3375 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3369)
!3376 = !DILocation(line: 946, column: 10, scope: !3347)
!3377 = !DILocation(line: 947, column: 1, scope: !3347)
!3378 = !DILocation(line: 946, column: 3, scope: !3347)
!3379 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !575, file: !575, line: 950, type: !3380, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!130, !85, !113, !141, !138}
!3382 = !{!3383, !3384, !3385, !3386, !3387}
!3383 = !DILocalVariable(name: "n", arg: 1, scope: !3379, file: !575, line: 950, type: !85)
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3379, file: !575, line: 950, type: !113)
!3385 = !DILocalVariable(name: "arg", arg: 3, scope: !3379, file: !575, line: 951, type: !141)
!3386 = !DILocalVariable(name: "argsize", arg: 4, scope: !3379, file: !575, line: 951, type: !138)
!3387 = !DILocalVariable(name: "o", scope: !3379, file: !575, line: 953, type: !2441)
!3388 = !DILocation(line: 0, scope: !3379)
!3389 = !DILocation(line: 953, column: 3, scope: !3379)
!3390 = !DILocation(line: 953, column: 32, scope: !3379)
!3391 = !{!3392}
!3392 = distinct !{!3392, !3393, !"quoting_options_from_style: argument 0"}
!3393 = distinct !{!3393, !"quoting_options_from_style"}
!3394 = !DILocation(line: 953, column: 36, scope: !3379)
!3395 = !DILocation(line: 0, scope: !3363, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 953, column: 36, scope: !3379)
!3397 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3396)
!3398 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3396)
!3399 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3396)
!3400 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3396)
!3401 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3396)
!3402 = !DILocation(line: 954, column: 10, scope: !3379)
!3403 = !DILocation(line: 955, column: 1, scope: !3379)
!3404 = !DILocation(line: 954, column: 3, scope: !3379)
!3405 = distinct !DISubprogram(name: "quotearg_style", scope: !575, file: !575, line: 958, type: !3406, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!130, !113, !141}
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "s", arg: 1, scope: !3405, file: !575, line: 958, type: !113)
!3410 = !DILocalVariable(name: "arg", arg: 2, scope: !3405, file: !575, line: 958, type: !141)
!3411 = !DILocation(line: 0, scope: !3405)
!3412 = !DILocation(line: 0, scope: !3347, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 960, column: 10, scope: !3405)
!3414 = !DILocation(line: 945, column: 3, scope: !3347, inlinedAt: !3413)
!3415 = !DILocation(line: 945, column: 32, scope: !3347, inlinedAt: !3413)
!3416 = !{!3417}
!3417 = distinct !{!3417, !3418, !"quoting_options_from_style: argument 0"}
!3418 = distinct !{!3418, !"quoting_options_from_style"}
!3419 = !DILocation(line: 945, column: 36, scope: !3347, inlinedAt: !3413)
!3420 = !DILocation(line: 0, scope: !3363, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 945, column: 36, scope: !3347, inlinedAt: !3413)
!3422 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3421)
!3423 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3421)
!3424 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3421)
!3425 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3421)
!3426 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3421)
!3427 = !DILocation(line: 946, column: 10, scope: !3347, inlinedAt: !3413)
!3428 = !DILocation(line: 947, column: 1, scope: !3347, inlinedAt: !3413)
!3429 = !DILocation(line: 960, column: 3, scope: !3405)
!3430 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !575, file: !575, line: 964, type: !3431, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!130, !113, !141, !138}
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "s", arg: 1, scope: !3430, file: !575, line: 964, type: !113)
!3435 = !DILocalVariable(name: "arg", arg: 2, scope: !3430, file: !575, line: 964, type: !141)
!3436 = !DILocalVariable(name: "argsize", arg: 3, scope: !3430, file: !575, line: 964, type: !138)
!3437 = !DILocation(line: 0, scope: !3430)
!3438 = !DILocation(line: 0, scope: !3379, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 966, column: 10, scope: !3430)
!3440 = !DILocation(line: 953, column: 3, scope: !3379, inlinedAt: !3439)
!3441 = !DILocation(line: 953, column: 32, scope: !3379, inlinedAt: !3439)
!3442 = !{!3443}
!3443 = distinct !{!3443, !3444, !"quoting_options_from_style: argument 0"}
!3444 = distinct !{!3444, !"quoting_options_from_style"}
!3445 = !DILocation(line: 953, column: 36, scope: !3379, inlinedAt: !3439)
!3446 = !DILocation(line: 0, scope: !3363, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 953, column: 36, scope: !3379, inlinedAt: !3439)
!3448 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3447)
!3449 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3447)
!3450 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3447)
!3451 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3447)
!3452 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3447)
!3453 = !DILocation(line: 954, column: 10, scope: !3379, inlinedAt: !3439)
!3454 = !DILocation(line: 955, column: 1, scope: !3379, inlinedAt: !3439)
!3455 = !DILocation(line: 966, column: 3, scope: !3430)
!3456 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !575, file: !575, line: 970, type: !3457, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!130, !141, !138, !4}
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "arg", arg: 1, scope: !3456, file: !575, line: 970, type: !141)
!3461 = !DILocalVariable(name: "argsize", arg: 2, scope: !3456, file: !575, line: 970, type: !138)
!3462 = !DILocalVariable(name: "ch", arg: 3, scope: !3456, file: !575, line: 970, type: !4)
!3463 = !DILocalVariable(name: "options", scope: !3456, file: !575, line: 972, type: !611)
!3464 = !DILocation(line: 0, scope: !3456)
!3465 = !DILocation(line: 972, column: 3, scope: !3456)
!3466 = !DILocation(line: 972, column: 26, scope: !3456)
!3467 = !DILocation(line: 973, column: 13, scope: !3456)
!3468 = !{i64 0, i64 4, !974, i64 4, i64 4, !965, i64 8, i64 32, !974, i64 40, i64 8, !899, i64 48, i64 8, !899}
!3469 = !DILocation(line: 0, scope: !2460, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 974, column: 3, scope: !3456)
!3471 = !DILocation(line: 147, column: 41, scope: !2460, inlinedAt: !3470)
!3472 = !DILocation(line: 147, column: 62, scope: !2460, inlinedAt: !3470)
!3473 = !DILocation(line: 147, column: 57, scope: !2460, inlinedAt: !3470)
!3474 = !DILocation(line: 148, column: 15, scope: !2460, inlinedAt: !3470)
!3475 = !DILocation(line: 149, column: 21, scope: !2460, inlinedAt: !3470)
!3476 = !DILocation(line: 149, column: 24, scope: !2460, inlinedAt: !3470)
!3477 = !DILocation(line: 150, column: 19, scope: !2460, inlinedAt: !3470)
!3478 = !DILocation(line: 150, column: 24, scope: !2460, inlinedAt: !3470)
!3479 = !DILocation(line: 150, column: 6, scope: !2460, inlinedAt: !3470)
!3480 = !DILocation(line: 975, column: 10, scope: !3456)
!3481 = !DILocation(line: 976, column: 1, scope: !3456)
!3482 = !DILocation(line: 975, column: 3, scope: !3456)
!3483 = distinct !DISubprogram(name: "quotearg_char", scope: !575, file: !575, line: 979, type: !3484, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!130, !141, !4}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "arg", arg: 1, scope: !3483, file: !575, line: 979, type: !141)
!3488 = !DILocalVariable(name: "ch", arg: 2, scope: !3483, file: !575, line: 979, type: !4)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 0, scope: !3456, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 981, column: 10, scope: !3483)
!3492 = !DILocation(line: 972, column: 3, scope: !3456, inlinedAt: !3491)
!3493 = !DILocation(line: 972, column: 26, scope: !3456, inlinedAt: !3491)
!3494 = !DILocation(line: 973, column: 13, scope: !3456, inlinedAt: !3491)
!3495 = !DILocation(line: 0, scope: !2460, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 974, column: 3, scope: !3456, inlinedAt: !3491)
!3497 = !DILocation(line: 147, column: 41, scope: !2460, inlinedAt: !3496)
!3498 = !DILocation(line: 147, column: 62, scope: !2460, inlinedAt: !3496)
!3499 = !DILocation(line: 147, column: 57, scope: !2460, inlinedAt: !3496)
!3500 = !DILocation(line: 148, column: 15, scope: !2460, inlinedAt: !3496)
!3501 = !DILocation(line: 149, column: 21, scope: !2460, inlinedAt: !3496)
!3502 = !DILocation(line: 149, column: 24, scope: !2460, inlinedAt: !3496)
!3503 = !DILocation(line: 150, column: 19, scope: !2460, inlinedAt: !3496)
!3504 = !DILocation(line: 150, column: 24, scope: !2460, inlinedAt: !3496)
!3505 = !DILocation(line: 150, column: 6, scope: !2460, inlinedAt: !3496)
!3506 = !DILocation(line: 975, column: 10, scope: !3456, inlinedAt: !3491)
!3507 = !DILocation(line: 976, column: 1, scope: !3456, inlinedAt: !3491)
!3508 = !DILocation(line: 981, column: 3, scope: !3483)
!3509 = distinct !DISubprogram(name: "quotearg_colon", scope: !575, file: !575, line: 985, type: !1092, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3510)
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "arg", arg: 1, scope: !3509, file: !575, line: 985, type: !141)
!3512 = !DILocation(line: 0, scope: !3509)
!3513 = !DILocation(line: 0, scope: !3483, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 987, column: 10, scope: !3509)
!3515 = !DILocation(line: 0, scope: !3456, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 981, column: 10, scope: !3483, inlinedAt: !3514)
!3517 = !DILocation(line: 972, column: 3, scope: !3456, inlinedAt: !3516)
!3518 = !DILocation(line: 972, column: 26, scope: !3456, inlinedAt: !3516)
!3519 = !DILocation(line: 973, column: 13, scope: !3456, inlinedAt: !3516)
!3520 = !DILocation(line: 0, scope: !2460, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 974, column: 3, scope: !3456, inlinedAt: !3516)
!3522 = !DILocation(line: 147, column: 57, scope: !2460, inlinedAt: !3521)
!3523 = !DILocation(line: 149, column: 21, scope: !2460, inlinedAt: !3521)
!3524 = !DILocation(line: 150, column: 6, scope: !2460, inlinedAt: !3521)
!3525 = !DILocation(line: 975, column: 10, scope: !3456, inlinedAt: !3516)
!3526 = !DILocation(line: 976, column: 1, scope: !3456, inlinedAt: !3516)
!3527 = !DILocation(line: 987, column: 3, scope: !3509)
!3528 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !575, file: !575, line: 991, type: !3337, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3529)
!3529 = !{!3530, !3531}
!3530 = !DILocalVariable(name: "arg", arg: 1, scope: !3528, file: !575, line: 991, type: !141)
!3531 = !DILocalVariable(name: "argsize", arg: 2, scope: !3528, file: !575, line: 991, type: !138)
!3532 = !DILocation(line: 0, scope: !3528)
!3533 = !DILocation(line: 0, scope: !3456, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 993, column: 10, scope: !3528)
!3535 = !DILocation(line: 972, column: 3, scope: !3456, inlinedAt: !3534)
!3536 = !DILocation(line: 972, column: 26, scope: !3456, inlinedAt: !3534)
!3537 = !DILocation(line: 973, column: 13, scope: !3456, inlinedAt: !3534)
!3538 = !DILocation(line: 0, scope: !2460, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 974, column: 3, scope: !3456, inlinedAt: !3534)
!3540 = !DILocation(line: 147, column: 57, scope: !2460, inlinedAt: !3539)
!3541 = !DILocation(line: 149, column: 21, scope: !2460, inlinedAt: !3539)
!3542 = !DILocation(line: 150, column: 6, scope: !2460, inlinedAt: !3539)
!3543 = !DILocation(line: 975, column: 10, scope: !3456, inlinedAt: !3534)
!3544 = !DILocation(line: 976, column: 1, scope: !3456, inlinedAt: !3534)
!3545 = !DILocation(line: 993, column: 3, scope: !3528)
!3546 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !575, file: !575, line: 997, type: !3348, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3547)
!3547 = !{!3548, !3549, !3550, !3551}
!3548 = !DILocalVariable(name: "n", arg: 1, scope: !3546, file: !575, line: 997, type: !85)
!3549 = !DILocalVariable(name: "s", arg: 2, scope: !3546, file: !575, line: 997, type: !113)
!3550 = !DILocalVariable(name: "arg", arg: 3, scope: !3546, file: !575, line: 997, type: !141)
!3551 = !DILocalVariable(name: "options", scope: !3546, file: !575, line: 999, type: !611)
!3552 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 1000, column: 13, scope: !3546)
!3554 = !DILocation(line: 0, scope: !3546)
!3555 = !DILocation(line: 999, column: 3, scope: !3546)
!3556 = !DILocation(line: 999, column: 26, scope: !3546)
!3557 = !DILocation(line: 0, scope: !3363, inlinedAt: !3553)
!3558 = !DILocation(line: 186, column: 13, scope: !3372, inlinedAt: !3553)
!3559 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3553)
!3560 = !DILocation(line: 187, column: 5, scope: !3372, inlinedAt: !3553)
!3561 = !{!3562}
!3562 = distinct !{!3562, !3563, !"quoting_options_from_style: argument 0"}
!3563 = distinct !{!3563, !"quoting_options_from_style"}
!3564 = !DILocation(line: 1000, column: 13, scope: !3546)
!3565 = !DILocation(line: 0, scope: !2460, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1001, column: 3, scope: !3546)
!3567 = !DILocation(line: 147, column: 57, scope: !2460, inlinedAt: !3566)
!3568 = !DILocation(line: 149, column: 21, scope: !2460, inlinedAt: !3566)
!3569 = !DILocation(line: 150, column: 6, scope: !2460, inlinedAt: !3566)
!3570 = !DILocation(line: 1002, column: 10, scope: !3546)
!3571 = !DILocation(line: 1003, column: 1, scope: !3546)
!3572 = !DILocation(line: 1002, column: 3, scope: !3546)
!3573 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !575, file: !575, line: 1006, type: !3574, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!130, !85, !141, !141, !141}
!3576 = !{!3577, !3578, !3579, !3580}
!3577 = !DILocalVariable(name: "n", arg: 1, scope: !3573, file: !575, line: 1006, type: !85)
!3578 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3573, file: !575, line: 1006, type: !141)
!3579 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3573, file: !575, line: 1007, type: !141)
!3580 = !DILocalVariable(name: "arg", arg: 4, scope: !3573, file: !575, line: 1007, type: !141)
!3581 = !DILocation(line: 0, scope: !3573)
!3582 = !DILocalVariable(name: "n", arg: 1, scope: !3583, file: !575, line: 1014, type: !85)
!3583 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !575, file: !575, line: 1014, type: !3584, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!130, !85, !141, !141, !141, !138}
!3586 = !{!3582, !3587, !3588, !3589, !3590, !3591}
!3587 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3583, file: !575, line: 1014, type: !141)
!3588 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3583, file: !575, line: 1015, type: !141)
!3589 = !DILocalVariable(name: "arg", arg: 4, scope: !3583, file: !575, line: 1016, type: !141)
!3590 = !DILocalVariable(name: "argsize", arg: 5, scope: !3583, file: !575, line: 1016, type: !138)
!3591 = !DILocalVariable(name: "o", scope: !3583, file: !575, line: 1018, type: !611)
!3592 = !DILocation(line: 0, scope: !3583, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 1009, column: 10, scope: !3573)
!3594 = !DILocation(line: 1018, column: 3, scope: !3583, inlinedAt: !3593)
!3595 = !DILocation(line: 1018, column: 26, scope: !3583, inlinedAt: !3593)
!3596 = !DILocation(line: 1018, column: 30, scope: !3583, inlinedAt: !3593)
!3597 = !DILocation(line: 0, scope: !2500, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 1019, column: 3, scope: !3583, inlinedAt: !3593)
!3599 = !DILocation(line: 174, column: 12, scope: !2500, inlinedAt: !3598)
!3600 = !DILocation(line: 175, column: 8, scope: !2513, inlinedAt: !3598)
!3601 = !DILocation(line: 175, column: 19, scope: !2513, inlinedAt: !3598)
!3602 = !DILocation(line: 176, column: 5, scope: !2513, inlinedAt: !3598)
!3603 = !DILocation(line: 177, column: 6, scope: !2500, inlinedAt: !3598)
!3604 = !DILocation(line: 177, column: 17, scope: !2500, inlinedAt: !3598)
!3605 = !DILocation(line: 178, column: 6, scope: !2500, inlinedAt: !3598)
!3606 = !DILocation(line: 178, column: 18, scope: !2500, inlinedAt: !3598)
!3607 = !DILocation(line: 1020, column: 10, scope: !3583, inlinedAt: !3593)
!3608 = !DILocation(line: 1021, column: 1, scope: !3583, inlinedAt: !3593)
!3609 = !DILocation(line: 1009, column: 3, scope: !3573)
!3610 = !DILocation(line: 0, scope: !3583)
!3611 = !DILocation(line: 1018, column: 3, scope: !3583)
!3612 = !DILocation(line: 1018, column: 26, scope: !3583)
!3613 = !DILocation(line: 1018, column: 30, scope: !3583)
!3614 = !DILocation(line: 0, scope: !2500, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1019, column: 3, scope: !3583)
!3616 = !DILocation(line: 174, column: 12, scope: !2500, inlinedAt: !3615)
!3617 = !DILocation(line: 175, column: 8, scope: !2513, inlinedAt: !3615)
!3618 = !DILocation(line: 175, column: 19, scope: !2513, inlinedAt: !3615)
!3619 = !DILocation(line: 176, column: 5, scope: !2513, inlinedAt: !3615)
!3620 = !DILocation(line: 177, column: 6, scope: !2500, inlinedAt: !3615)
!3621 = !DILocation(line: 177, column: 17, scope: !2500, inlinedAt: !3615)
!3622 = !DILocation(line: 178, column: 6, scope: !2500, inlinedAt: !3615)
!3623 = !DILocation(line: 178, column: 18, scope: !2500, inlinedAt: !3615)
!3624 = !DILocation(line: 1020, column: 10, scope: !3583)
!3625 = !DILocation(line: 1021, column: 1, scope: !3583)
!3626 = !DILocation(line: 1020, column: 3, scope: !3583)
!3627 = distinct !DISubprogram(name: "quotearg_custom", scope: !575, file: !575, line: 1024, type: !3628, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!130, !141, !141, !141}
!3630 = !{!3631, !3632, !3633}
!3631 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3627, file: !575, line: 1024, type: !141)
!3632 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3627, file: !575, line: 1024, type: !141)
!3633 = !DILocalVariable(name: "arg", arg: 3, scope: !3627, file: !575, line: 1025, type: !141)
!3634 = !DILocation(line: 0, scope: !3627)
!3635 = !DILocation(line: 0, scope: !3573, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 1027, column: 10, scope: !3627)
!3637 = !DILocation(line: 0, scope: !3583, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 1009, column: 10, scope: !3573, inlinedAt: !3636)
!3639 = !DILocation(line: 1018, column: 3, scope: !3583, inlinedAt: !3638)
!3640 = !DILocation(line: 1018, column: 26, scope: !3583, inlinedAt: !3638)
!3641 = !DILocation(line: 1018, column: 30, scope: !3583, inlinedAt: !3638)
!3642 = !DILocation(line: 0, scope: !2500, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 1019, column: 3, scope: !3583, inlinedAt: !3638)
!3644 = !DILocation(line: 174, column: 12, scope: !2500, inlinedAt: !3643)
!3645 = !DILocation(line: 175, column: 8, scope: !2513, inlinedAt: !3643)
!3646 = !DILocation(line: 175, column: 19, scope: !2513, inlinedAt: !3643)
!3647 = !DILocation(line: 176, column: 5, scope: !2513, inlinedAt: !3643)
!3648 = !DILocation(line: 177, column: 6, scope: !2500, inlinedAt: !3643)
!3649 = !DILocation(line: 177, column: 17, scope: !2500, inlinedAt: !3643)
!3650 = !DILocation(line: 178, column: 6, scope: !2500, inlinedAt: !3643)
!3651 = !DILocation(line: 178, column: 18, scope: !2500, inlinedAt: !3643)
!3652 = !DILocation(line: 1020, column: 10, scope: !3583, inlinedAt: !3638)
!3653 = !DILocation(line: 1021, column: 1, scope: !3583, inlinedAt: !3638)
!3654 = !DILocation(line: 1027, column: 3, scope: !3627)
!3655 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !575, file: !575, line: 1031, type: !3656, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!130, !141, !141, !141, !138}
!3658 = !{!3659, !3660, !3661, !3662}
!3659 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3655, file: !575, line: 1031, type: !141)
!3660 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3655, file: !575, line: 1031, type: !141)
!3661 = !DILocalVariable(name: "arg", arg: 3, scope: !3655, file: !575, line: 1032, type: !141)
!3662 = !DILocalVariable(name: "argsize", arg: 4, scope: !3655, file: !575, line: 1032, type: !138)
!3663 = !DILocation(line: 0, scope: !3655)
!3664 = !DILocation(line: 0, scope: !3583, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 1034, column: 10, scope: !3655)
!3666 = !DILocation(line: 1018, column: 3, scope: !3583, inlinedAt: !3665)
!3667 = !DILocation(line: 1018, column: 26, scope: !3583, inlinedAt: !3665)
!3668 = !DILocation(line: 1018, column: 30, scope: !3583, inlinedAt: !3665)
!3669 = !DILocation(line: 0, scope: !2500, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1019, column: 3, scope: !3583, inlinedAt: !3665)
!3671 = !DILocation(line: 174, column: 12, scope: !2500, inlinedAt: !3670)
!3672 = !DILocation(line: 175, column: 8, scope: !2513, inlinedAt: !3670)
!3673 = !DILocation(line: 175, column: 19, scope: !2513, inlinedAt: !3670)
!3674 = !DILocation(line: 176, column: 5, scope: !2513, inlinedAt: !3670)
!3675 = !DILocation(line: 177, column: 6, scope: !2500, inlinedAt: !3670)
!3676 = !DILocation(line: 177, column: 17, scope: !2500, inlinedAt: !3670)
!3677 = !DILocation(line: 178, column: 6, scope: !2500, inlinedAt: !3670)
!3678 = !DILocation(line: 178, column: 18, scope: !2500, inlinedAt: !3670)
!3679 = !DILocation(line: 1020, column: 10, scope: !3583, inlinedAt: !3665)
!3680 = !DILocation(line: 1021, column: 1, scope: !3583, inlinedAt: !3665)
!3681 = !DILocation(line: 1034, column: 3, scope: !3655)
!3682 = distinct !DISubprogram(name: "quote_n_mem", scope: !575, file: !575, line: 1049, type: !3683, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!141, !85, !141, !138}
!3685 = !{!3686, !3687, !3688}
!3686 = !DILocalVariable(name: "n", arg: 1, scope: !3682, file: !575, line: 1049, type: !85)
!3687 = !DILocalVariable(name: "arg", arg: 2, scope: !3682, file: !575, line: 1049, type: !141)
!3688 = !DILocalVariable(name: "argsize", arg: 3, scope: !3682, file: !575, line: 1049, type: !138)
!3689 = !DILocation(line: 0, scope: !3682)
!3690 = !DILocation(line: 1051, column: 10, scope: !3682)
!3691 = !DILocation(line: 1051, column: 3, scope: !3682)
!3692 = distinct !DISubprogram(name: "quote_mem", scope: !575, file: !575, line: 1055, type: !3693, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3695)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!141, !141, !138}
!3695 = !{!3696, !3697}
!3696 = !DILocalVariable(name: "arg", arg: 1, scope: !3692, file: !575, line: 1055, type: !141)
!3697 = !DILocalVariable(name: "argsize", arg: 2, scope: !3692, file: !575, line: 1055, type: !138)
!3698 = !DILocation(line: 0, scope: !3692)
!3699 = !DILocation(line: 0, scope: !3682, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 1057, column: 10, scope: !3692)
!3701 = !DILocation(line: 1051, column: 10, scope: !3682, inlinedAt: !3700)
!3702 = !DILocation(line: 1057, column: 3, scope: !3692)
!3703 = distinct !DISubprogram(name: "quote_n", scope: !575, file: !575, line: 1061, type: !3704, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!141, !85, !141}
!3706 = !{!3707, !3708}
!3707 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !575, line: 1061, type: !85)
!3708 = !DILocalVariable(name: "arg", arg: 2, scope: !3703, file: !575, line: 1061, type: !141)
!3709 = !DILocation(line: 0, scope: !3703)
!3710 = !DILocation(line: 0, scope: !3682, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 1063, column: 10, scope: !3703)
!3712 = !DILocation(line: 1051, column: 10, scope: !3682, inlinedAt: !3711)
!3713 = !DILocation(line: 1063, column: 3, scope: !3703)
!3714 = distinct !DISubprogram(name: "quote", scope: !575, file: !575, line: 1067, type: !3715, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!141, !141}
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "arg", arg: 1, scope: !3714, file: !575, line: 1067, type: !141)
!3719 = !DILocation(line: 0, scope: !3714)
!3720 = !DILocation(line: 0, scope: !3703, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 1069, column: 10, scope: !3714)
!3722 = !DILocation(line: 0, scope: !3682, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1063, column: 10, scope: !3703, inlinedAt: !3721)
!3724 = !DILocation(line: 1051, column: 10, scope: !3682, inlinedAt: !3723)
!3725 = !DILocation(line: 1069, column: 3, scope: !3714)
!3726 = distinct !DISubprogram(name: "fd_safer", scope: !818, file: !818, line: 37, type: !1437, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !817, retainedNodes: !3727)
!3727 = !{!3728, !3729, !3732}
!3728 = !DILocalVariable(name: "fd", arg: 1, scope: !3726, file: !818, line: 37, type: !85)
!3729 = !DILocalVariable(name: "f", scope: !3730, file: !818, line: 41, type: !85)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !818, line: 40, column: 5)
!3731 = distinct !DILexicalBlock(scope: !3726, file: !818, line: 39, column: 7)
!3732 = !DILocalVariable(name: "saved_errno", scope: !3730, file: !818, line: 42, type: !85)
!3733 = !DILocation(line: 0, scope: !3726)
!3734 = !DILocation(line: 39, column: 26, scope: !3731)
!3735 = !DILocation(line: 41, column: 15, scope: !3730)
!3736 = !DILocation(line: 0, scope: !3730)
!3737 = !DILocation(line: 42, column: 25, scope: !3730)
!3738 = !DILocation(line: 43, column: 7, scope: !3730)
!3739 = !DILocation(line: 44, column: 13, scope: !3730)
!3740 = !DILocation(line: 46, column: 5, scope: !3730)
!3741 = !DILocation(line: 48, column: 3, scope: !3726)
!3742 = distinct !DISubprogram(name: "version_etc_arn", scope: !671, file: !671, line: 61, type: !3743, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !3779)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !3745, !141, !141, !141, !1657, !138}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !3747)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !3748)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3747, file: !212, line: 51, baseType: !85, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3747, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3747, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3747, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3747, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3747, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3747, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3747, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3747, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3747, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3747, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3747, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3747, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3747, file: !212, line: 70, baseType: !3763, size: 64, offset: 832)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3747, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3747, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3747, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3747, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3747, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3747, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3747, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3747, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3747, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3747, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3747, file: !212, line: 93, baseType: !3763, size: 64, offset: 1344)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3747, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3747, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3747, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3747, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!3779 = !{!3780, !3781, !3782, !3783, !3784, !3785}
!3780 = !DILocalVariable(name: "stream", arg: 1, scope: !3742, file: !671, line: 61, type: !3745)
!3781 = !DILocalVariable(name: "command_name", arg: 2, scope: !3742, file: !671, line: 62, type: !141)
!3782 = !DILocalVariable(name: "package", arg: 3, scope: !3742, file: !671, line: 62, type: !141)
!3783 = !DILocalVariable(name: "version", arg: 4, scope: !3742, file: !671, line: 63, type: !141)
!3784 = !DILocalVariable(name: "authors", arg: 5, scope: !3742, file: !671, line: 64, type: !1657)
!3785 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3742, file: !671, line: 64, type: !138)
!3786 = !DILocation(line: 0, scope: !3742)
!3787 = !DILocation(line: 66, column: 7, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3742, file: !671, line: 66, column: 7)
!3789 = !DILocation(line: 66, column: 7, scope: !3742)
!3790 = !DILocation(line: 67, column: 5, scope: !3788)
!3791 = !DILocation(line: 69, column: 5, scope: !3788)
!3792 = !DILocation(line: 83, column: 3, scope: !3742)
!3793 = !DILocation(line: 85, column: 3, scope: !3742)
!3794 = !DILocation(line: 88, column: 3, scope: !3742)
!3795 = !DILocation(line: 95, column: 3, scope: !3742)
!3796 = !DILocation(line: 97, column: 3, scope: !3742)
!3797 = !DILocation(line: 105, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3742, file: !671, line: 98, column: 5)
!3799 = !DILocation(line: 106, column: 7, scope: !3798)
!3800 = !DILocation(line: 109, column: 7, scope: !3798)
!3801 = !DILocation(line: 110, column: 7, scope: !3798)
!3802 = !DILocation(line: 113, column: 7, scope: !3798)
!3803 = !DILocation(line: 115, column: 7, scope: !3798)
!3804 = !DILocation(line: 120, column: 7, scope: !3798)
!3805 = !DILocation(line: 122, column: 7, scope: !3798)
!3806 = !DILocation(line: 127, column: 7, scope: !3798)
!3807 = !DILocation(line: 129, column: 7, scope: !3798)
!3808 = !DILocation(line: 134, column: 7, scope: !3798)
!3809 = !DILocation(line: 137, column: 7, scope: !3798)
!3810 = !DILocation(line: 142, column: 7, scope: !3798)
!3811 = !DILocation(line: 145, column: 7, scope: !3798)
!3812 = !DILocation(line: 150, column: 7, scope: !3798)
!3813 = !DILocation(line: 154, column: 7, scope: !3798)
!3814 = !DILocation(line: 159, column: 7, scope: !3798)
!3815 = !DILocation(line: 163, column: 7, scope: !3798)
!3816 = !DILocation(line: 170, column: 7, scope: !3798)
!3817 = !DILocation(line: 174, column: 7, scope: !3798)
!3818 = !DILocation(line: 176, column: 1, scope: !3742)
!3819 = distinct !DISubprogram(name: "version_etc_ar", scope: !671, file: !671, line: 183, type: !3820, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3745, !141, !141, !141, !1657}
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828}
!3823 = !DILocalVariable(name: "stream", arg: 1, scope: !3819, file: !671, line: 183, type: !3745)
!3824 = !DILocalVariable(name: "command_name", arg: 2, scope: !3819, file: !671, line: 184, type: !141)
!3825 = !DILocalVariable(name: "package", arg: 3, scope: !3819, file: !671, line: 184, type: !141)
!3826 = !DILocalVariable(name: "version", arg: 4, scope: !3819, file: !671, line: 185, type: !141)
!3827 = !DILocalVariable(name: "authors", arg: 5, scope: !3819, file: !671, line: 185, type: !1657)
!3828 = !DILocalVariable(name: "n_authors", scope: !3819, file: !671, line: 187, type: !138)
!3829 = !DILocation(line: 0, scope: !3819)
!3830 = !DILocation(line: 189, column: 8, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3819, file: !671, line: 189, column: 3)
!3832 = !DILocation(line: 189, scope: !3831)
!3833 = !DILocation(line: 189, column: 23, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !671, line: 189, column: 3)
!3835 = !DILocation(line: 189, column: 3, scope: !3831)
!3836 = !DILocation(line: 189, column: 52, scope: !3834)
!3837 = distinct !{!3837, !3835, !3838, !1012}
!3838 = !DILocation(line: 190, column: 5, scope: !3831)
!3839 = !DILocation(line: 191, column: 3, scope: !3819)
!3840 = !DILocation(line: 192, column: 1, scope: !3819)
!3841 = distinct !DISubprogram(name: "version_etc_va", scope: !671, file: !671, line: 199, type: !3842, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !3852)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3745, !141, !141, !141, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3846)
!3846 = !{!3847, !3849, !3850, !3851}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3845, file: !3848, line: 192, baseType: !76, size: 32)
!3848 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3845, file: !3848, line: 192, baseType: !76, size: 32, offset: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3845, file: !3848, line: 192, baseType: !131, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3845, file: !3848, line: 192, baseType: !131, size: 64, offset: 128)
!3852 = !{!3853, !3854, !3855, !3856, !3857, !3858, !3859}
!3853 = !DILocalVariable(name: "stream", arg: 1, scope: !3841, file: !671, line: 199, type: !3745)
!3854 = !DILocalVariable(name: "command_name", arg: 2, scope: !3841, file: !671, line: 200, type: !141)
!3855 = !DILocalVariable(name: "package", arg: 3, scope: !3841, file: !671, line: 200, type: !141)
!3856 = !DILocalVariable(name: "version", arg: 4, scope: !3841, file: !671, line: 201, type: !141)
!3857 = !DILocalVariable(name: "authors", arg: 5, scope: !3841, file: !671, line: 201, type: !3844)
!3858 = !DILocalVariable(name: "n_authors", scope: !3841, file: !671, line: 203, type: !138)
!3859 = !DILocalVariable(name: "authtab", scope: !3841, file: !671, line: 204, type: !3860)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 640, elements: !62)
!3861 = !DILocation(line: 0, scope: !3841)
!3862 = !DILocation(line: 204, column: 3, scope: !3841)
!3863 = !DILocation(line: 204, column: 15, scope: !3841)
!3864 = !DILocation(line: 208, column: 35, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !671, line: 206, column: 3)
!3866 = distinct !DILexicalBlock(scope: !3841, file: !671, line: 206, column: 3)
!3867 = !DILocation(line: 208, column: 33, scope: !3865)
!3868 = !DILocation(line: 208, column: 67, scope: !3865)
!3869 = !DILocation(line: 206, column: 3, scope: !3866)
!3870 = !DILocation(line: 208, column: 14, scope: !3865)
!3871 = !DILocation(line: 0, scope: !3866)
!3872 = !DILocation(line: 211, column: 3, scope: !3841)
!3873 = !DILocation(line: 213, column: 1, scope: !3841)
!3874 = distinct !DISubprogram(name: "version_etc", scope: !671, file: !671, line: 230, type: !3875, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{null, !3745, !141, !141, !141, null}
!3877 = !{!3878, !3879, !3880, !3881, !3882}
!3878 = !DILocalVariable(name: "stream", arg: 1, scope: !3874, file: !671, line: 230, type: !3745)
!3879 = !DILocalVariable(name: "command_name", arg: 2, scope: !3874, file: !671, line: 231, type: !141)
!3880 = !DILocalVariable(name: "package", arg: 3, scope: !3874, file: !671, line: 231, type: !141)
!3881 = !DILocalVariable(name: "version", arg: 4, scope: !3874, file: !671, line: 232, type: !141)
!3882 = !DILocalVariable(name: "authors", scope: !3874, file: !671, line: 234, type: !3883)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !960, line: 52, baseType: !3884)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2143, line: 14, baseType: !3885)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3848, baseType: !3886)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, size: 192, elements: !57)
!3887 = !DILocation(line: 0, scope: !3874)
!3888 = !DILocation(line: 234, column: 3, scope: !3874)
!3889 = !DILocation(line: 234, column: 11, scope: !3874)
!3890 = !DILocation(line: 235, column: 3, scope: !3874)
!3891 = !DILocation(line: 236, column: 3, scope: !3874)
!3892 = !DILocation(line: 237, column: 3, scope: !3874)
!3893 = !DILocation(line: 238, column: 1, scope: !3874)
!3894 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !671, file: !671, line: 241, type: !469, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !819, retainedNodes: !949)
!3895 = !DILocation(line: 243, column: 3, scope: !3894)
!3896 = !DILocation(line: 248, column: 3, scope: !3894)
!3897 = !DILocation(line: 254, column: 3, scope: !3894)
!3898 = !DILocation(line: 259, column: 3, scope: !3894)
!3899 = !DILocation(line: 261, column: 1, scope: !3894)
!3900 = distinct !DISubprogram(name: "xnrealloc", scope: !3901, file: !3901, line: 147, type: !3902, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3904)
!3901 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!131, !131, !138, !138}
!3904 = !{!3905, !3906, !3907}
!3905 = !DILocalVariable(name: "p", arg: 1, scope: !3900, file: !3901, line: 147, type: !131)
!3906 = !DILocalVariable(name: "n", arg: 2, scope: !3900, file: !3901, line: 147, type: !138)
!3907 = !DILocalVariable(name: "s", arg: 3, scope: !3900, file: !3901, line: 147, type: !138)
!3908 = !DILocation(line: 0, scope: !3900)
!3909 = !DILocalVariable(name: "p", arg: 1, scope: !3910, file: !827, line: 83, type: !131)
!3910 = distinct !DISubprogram(name: "xreallocarray", scope: !827, file: !827, line: 83, type: !3902, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3911)
!3911 = !{!3909, !3912, !3913}
!3912 = !DILocalVariable(name: "n", arg: 2, scope: !3910, file: !827, line: 83, type: !138)
!3913 = !DILocalVariable(name: "s", arg: 3, scope: !3910, file: !827, line: 83, type: !138)
!3914 = !DILocation(line: 0, scope: !3910, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 149, column: 10, scope: !3900)
!3916 = !DILocation(line: 85, column: 25, scope: !3910, inlinedAt: !3915)
!3917 = !DILocalVariable(name: "p", arg: 1, scope: !3918, file: !827, line: 37, type: !131)
!3918 = distinct !DISubprogram(name: "check_nonnull", scope: !827, file: !827, line: 37, type: !3919, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!131, !131}
!3921 = !{!3917}
!3922 = !DILocation(line: 0, scope: !3918, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 85, column: 10, scope: !3910, inlinedAt: !3915)
!3924 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !3923)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !827, line: 39, column: 7)
!3926 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !3923)
!3927 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !3923)
!3928 = !DILocation(line: 149, column: 3, scope: !3900)
!3929 = !DILocation(line: 0, scope: !3910)
!3930 = !DILocation(line: 85, column: 25, scope: !3910)
!3931 = !DILocation(line: 0, scope: !3918, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 85, column: 10, scope: !3910)
!3933 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !3932)
!3934 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !3932)
!3935 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !3932)
!3936 = !DILocation(line: 85, column: 3, scope: !3910)
!3937 = distinct !DISubprogram(name: "xmalloc", scope: !827, file: !827, line: 47, type: !3938, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!131, !138}
!3940 = !{!3941}
!3941 = !DILocalVariable(name: "s", arg: 1, scope: !3937, file: !827, line: 47, type: !138)
!3942 = !DILocation(line: 0, scope: !3937)
!3943 = !DILocation(line: 49, column: 25, scope: !3937)
!3944 = !DILocation(line: 0, scope: !3918, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 49, column: 10, scope: !3937)
!3946 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !3945)
!3947 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !3945)
!3948 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !3945)
!3949 = !DILocation(line: 49, column: 3, scope: !3937)
!3950 = !DISubprogram(name: "malloc", scope: !1090, file: !1090, line: 540, type: !3938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!3951 = distinct !DISubprogram(name: "ximalloc", scope: !827, file: !827, line: 53, type: !3952, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!131, !846}
!3954 = !{!3955}
!3955 = !DILocalVariable(name: "s", arg: 1, scope: !3951, file: !827, line: 53, type: !846)
!3956 = !DILocation(line: 0, scope: !3951)
!3957 = !DILocalVariable(name: "s", arg: 1, scope: !3958, file: !3959, line: 55, type: !846)
!3958 = distinct !DISubprogram(name: "imalloc", scope: !3959, file: !3959, line: 55, type: !3952, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3960)
!3959 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3960 = !{!3957}
!3961 = !DILocation(line: 0, scope: !3958, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 55, column: 25, scope: !3951)
!3963 = !DILocation(line: 57, column: 26, scope: !3958, inlinedAt: !3962)
!3964 = !DILocation(line: 0, scope: !3918, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 55, column: 10, scope: !3951)
!3966 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !3965)
!3969 = !DILocation(line: 55, column: 3, scope: !3951)
!3970 = distinct !DISubprogram(name: "xcharalloc", scope: !827, file: !827, line: 59, type: !3971, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!130, !138}
!3973 = !{!3974}
!3974 = !DILocalVariable(name: "n", arg: 1, scope: !3970, file: !827, line: 59, type: !138)
!3975 = !DILocation(line: 0, scope: !3970)
!3976 = !DILocation(line: 0, scope: !3937, inlinedAt: !3977)
!3977 = distinct !DILocation(line: 61, column: 10, scope: !3970)
!3978 = !DILocation(line: 49, column: 25, scope: !3937, inlinedAt: !3977)
!3979 = !DILocation(line: 0, scope: !3918, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 49, column: 10, scope: !3937, inlinedAt: !3977)
!3981 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !3980)
!3982 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !3980)
!3983 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !3980)
!3984 = !DILocation(line: 61, column: 3, scope: !3970)
!3985 = distinct !DISubprogram(name: "xrealloc", scope: !827, file: !827, line: 68, type: !3986, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3988)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!131, !131, !138}
!3988 = !{!3989, !3990}
!3989 = !DILocalVariable(name: "p", arg: 1, scope: !3985, file: !827, line: 68, type: !131)
!3990 = !DILocalVariable(name: "s", arg: 2, scope: !3985, file: !827, line: 68, type: !138)
!3991 = !DILocation(line: 0, scope: !3985)
!3992 = !DILocalVariable(name: "ptr", arg: 1, scope: !3993, file: !3994, line: 2057, type: !131)
!3993 = distinct !DISubprogram(name: "rpl_realloc", scope: !3994, file: !3994, line: 2057, type: !3986, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !3995)
!3994 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3995 = !{!3992, !3996}
!3996 = !DILocalVariable(name: "size", arg: 2, scope: !3993, file: !3994, line: 2057, type: !138)
!3997 = !DILocation(line: 0, scope: !3993, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 70, column: 25, scope: !3985)
!3999 = !DILocation(line: 2059, column: 24, scope: !3993, inlinedAt: !3998)
!4000 = !DILocation(line: 2059, column: 10, scope: !3993, inlinedAt: !3998)
!4001 = !DILocation(line: 0, scope: !3918, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 70, column: 10, scope: !3985)
!4003 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4002)
!4004 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4002)
!4005 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4002)
!4006 = !DILocation(line: 70, column: 3, scope: !3985)
!4007 = !DISubprogram(name: "realloc", scope: !1090, file: !1090, line: 551, type: !3986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4008 = distinct !DISubprogram(name: "xirealloc", scope: !827, file: !827, line: 74, type: !4009, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!131, !131, !846}
!4011 = !{!4012, !4013}
!4012 = !DILocalVariable(name: "p", arg: 1, scope: !4008, file: !827, line: 74, type: !131)
!4013 = !DILocalVariable(name: "s", arg: 2, scope: !4008, file: !827, line: 74, type: !846)
!4014 = !DILocation(line: 0, scope: !4008)
!4015 = !DILocalVariable(name: "p", arg: 1, scope: !4016, file: !3959, line: 66, type: !131)
!4016 = distinct !DISubprogram(name: "irealloc", scope: !3959, file: !3959, line: 66, type: !4009, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4017)
!4017 = !{!4015, !4018}
!4018 = !DILocalVariable(name: "s", arg: 2, scope: !4016, file: !3959, line: 66, type: !846)
!4019 = !DILocation(line: 0, scope: !4016, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 76, column: 25, scope: !4008)
!4021 = !DILocation(line: 0, scope: !3993, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 68, column: 26, scope: !4016, inlinedAt: !4020)
!4023 = !DILocation(line: 2059, column: 24, scope: !3993, inlinedAt: !4022)
!4024 = !DILocation(line: 2059, column: 10, scope: !3993, inlinedAt: !4022)
!4025 = !DILocation(line: 0, scope: !3918, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 76, column: 10, scope: !4008)
!4027 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4026)
!4028 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4026)
!4029 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4026)
!4030 = !DILocation(line: 76, column: 3, scope: !4008)
!4031 = distinct !DISubprogram(name: "xireallocarray", scope: !827, file: !827, line: 89, type: !4032, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!131, !131, !846, !846}
!4034 = !{!4035, !4036, !4037}
!4035 = !DILocalVariable(name: "p", arg: 1, scope: !4031, file: !827, line: 89, type: !131)
!4036 = !DILocalVariable(name: "n", arg: 2, scope: !4031, file: !827, line: 89, type: !846)
!4037 = !DILocalVariable(name: "s", arg: 3, scope: !4031, file: !827, line: 89, type: !846)
!4038 = !DILocation(line: 0, scope: !4031)
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4040, file: !3959, line: 98, type: !131)
!4040 = distinct !DISubprogram(name: "ireallocarray", scope: !3959, file: !3959, line: 98, type: !4032, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4041)
!4041 = !{!4039, !4042, !4043}
!4042 = !DILocalVariable(name: "n", arg: 2, scope: !4040, file: !3959, line: 98, type: !846)
!4043 = !DILocalVariable(name: "s", arg: 3, scope: !4040, file: !3959, line: 98, type: !846)
!4044 = !DILocation(line: 0, scope: !4040, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 91, column: 25, scope: !4031)
!4046 = !DILocation(line: 101, column: 13, scope: !4040, inlinedAt: !4045)
!4047 = !DILocation(line: 0, scope: !3918, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 91, column: 10, scope: !4031)
!4049 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4048)
!4050 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4048)
!4051 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4048)
!4052 = !DILocation(line: 91, column: 3, scope: !4031)
!4053 = distinct !DISubprogram(name: "xnmalloc", scope: !827, file: !827, line: 98, type: !4054, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4056)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!131, !138, !138}
!4056 = !{!4057, !4058}
!4057 = !DILocalVariable(name: "n", arg: 1, scope: !4053, file: !827, line: 98, type: !138)
!4058 = !DILocalVariable(name: "s", arg: 2, scope: !4053, file: !827, line: 98, type: !138)
!4059 = !DILocation(line: 0, scope: !4053)
!4060 = !DILocation(line: 0, scope: !3910, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 100, column: 10, scope: !4053)
!4062 = !DILocation(line: 85, column: 25, scope: !3910, inlinedAt: !4061)
!4063 = !DILocation(line: 0, scope: !3918, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 85, column: 10, scope: !3910, inlinedAt: !4061)
!4065 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4064)
!4066 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4064)
!4067 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4064)
!4068 = !DILocation(line: 100, column: 3, scope: !4053)
!4069 = distinct !DISubprogram(name: "xinmalloc", scope: !827, file: !827, line: 104, type: !4070, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!131, !846, !846}
!4072 = !{!4073, !4074}
!4073 = !DILocalVariable(name: "n", arg: 1, scope: !4069, file: !827, line: 104, type: !846)
!4074 = !DILocalVariable(name: "s", arg: 2, scope: !4069, file: !827, line: 104, type: !846)
!4075 = !DILocation(line: 0, scope: !4069)
!4076 = !DILocation(line: 0, scope: !4031, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 106, column: 10, scope: !4069)
!4078 = !DILocation(line: 0, scope: !4040, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 91, column: 25, scope: !4031, inlinedAt: !4077)
!4080 = !DILocation(line: 101, column: 13, scope: !4040, inlinedAt: !4079)
!4081 = !DILocation(line: 0, scope: !3918, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 91, column: 10, scope: !4031, inlinedAt: !4077)
!4083 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4082)
!4084 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4082)
!4085 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4082)
!4086 = !DILocation(line: 106, column: 3, scope: !4069)
!4087 = distinct !DISubprogram(name: "x2realloc", scope: !827, file: !827, line: 116, type: !4088, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!131, !131, !833}
!4090 = !{!4091, !4092}
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4087, file: !827, line: 116, type: !131)
!4092 = !DILocalVariable(name: "ps", arg: 2, scope: !4087, file: !827, line: 116, type: !833)
!4093 = !DILocation(line: 0, scope: !4087)
!4094 = !DILocation(line: 0, scope: !830, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 118, column: 10, scope: !4087)
!4096 = !DILocation(line: 178, column: 14, scope: !830, inlinedAt: !4095)
!4097 = !DILocation(line: 180, column: 9, scope: !4098, inlinedAt: !4095)
!4098 = distinct !DILexicalBlock(scope: !830, file: !827, line: 180, column: 7)
!4099 = !DILocation(line: 180, column: 7, scope: !830, inlinedAt: !4095)
!4100 = !DILocation(line: 182, column: 13, scope: !4101, inlinedAt: !4095)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !827, line: 182, column: 11)
!4102 = distinct !DILexicalBlock(scope: !4098, file: !827, line: 181, column: 5)
!4103 = !DILocation(line: 182, column: 11, scope: !4102, inlinedAt: !4095)
!4104 = !DILocation(line: 197, column: 11, scope: !4105, inlinedAt: !4095)
!4105 = distinct !DILexicalBlock(scope: !4106, file: !827, line: 197, column: 11)
!4106 = distinct !DILexicalBlock(scope: !4098, file: !827, line: 195, column: 5)
!4107 = !DILocation(line: 197, column: 11, scope: !4106, inlinedAt: !4095)
!4108 = !DILocation(line: 198, column: 9, scope: !4105, inlinedAt: !4095)
!4109 = !DILocation(line: 0, scope: !3910, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 201, column: 7, scope: !830, inlinedAt: !4095)
!4111 = !DILocation(line: 85, column: 25, scope: !3910, inlinedAt: !4110)
!4112 = !DILocation(line: 0, scope: !3918, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 85, column: 10, scope: !3910, inlinedAt: !4110)
!4114 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4113)
!4115 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4113)
!4116 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4113)
!4117 = !DILocation(line: 202, column: 7, scope: !830, inlinedAt: !4095)
!4118 = !DILocation(line: 118, column: 3, scope: !4087)
!4119 = !DILocation(line: 0, scope: !830)
!4120 = !DILocation(line: 178, column: 14, scope: !830)
!4121 = !DILocation(line: 180, column: 9, scope: !4098)
!4122 = !DILocation(line: 180, column: 7, scope: !830)
!4123 = !DILocation(line: 182, column: 13, scope: !4101)
!4124 = !DILocation(line: 182, column: 11, scope: !4102)
!4125 = !DILocation(line: 190, column: 30, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4101, file: !827, line: 183, column: 9)
!4127 = !DILocation(line: 191, column: 16, scope: !4126)
!4128 = !DILocation(line: 191, column: 13, scope: !4126)
!4129 = !DILocation(line: 192, column: 9, scope: !4126)
!4130 = !DILocation(line: 197, column: 11, scope: !4105)
!4131 = !DILocation(line: 197, column: 11, scope: !4106)
!4132 = !DILocation(line: 198, column: 9, scope: !4105)
!4133 = !DILocation(line: 0, scope: !3910, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 201, column: 7, scope: !830)
!4135 = !DILocation(line: 85, column: 25, scope: !3910, inlinedAt: !4134)
!4136 = !DILocation(line: 0, scope: !3918, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 85, column: 10, scope: !3910, inlinedAt: !4134)
!4138 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4137)
!4139 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4137)
!4140 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4137)
!4141 = !DILocation(line: 202, column: 7, scope: !830)
!4142 = !DILocation(line: 203, column: 3, scope: !830)
!4143 = !DILocation(line: 0, scope: !842)
!4144 = !DILocation(line: 230, column: 14, scope: !842)
!4145 = !DILocation(line: 238, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !842, file: !827, line: 238, column: 7)
!4147 = !DILocation(line: 238, column: 7, scope: !842)
!4148 = !DILocation(line: 240, column: 9, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !842, file: !827, line: 240, column: 7)
!4150 = !DILocation(line: 240, column: 18, scope: !4149)
!4151 = !DILocation(line: 253, column: 8, scope: !842)
!4152 = !DILocation(line: 258, column: 27, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !827, line: 257, column: 5)
!4154 = distinct !DILexicalBlock(scope: !842, file: !827, line: 256, column: 7)
!4155 = !DILocation(line: 259, column: 50, scope: !4153)
!4156 = !DILocation(line: 259, column: 32, scope: !4153)
!4157 = !DILocation(line: 260, column: 5, scope: !4153)
!4158 = !DILocation(line: 262, column: 9, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !842, file: !827, line: 262, column: 7)
!4160 = !DILocation(line: 262, column: 7, scope: !842)
!4161 = !DILocation(line: 263, column: 9, scope: !4159)
!4162 = !DILocation(line: 263, column: 5, scope: !4159)
!4163 = !DILocation(line: 264, column: 9, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !842, file: !827, line: 264, column: 7)
!4165 = !DILocation(line: 264, column: 14, scope: !4164)
!4166 = !DILocation(line: 265, column: 7, scope: !4164)
!4167 = !DILocation(line: 265, column: 11, scope: !4164)
!4168 = !DILocation(line: 266, column: 11, scope: !4164)
!4169 = !DILocation(line: 267, column: 14, scope: !4164)
!4170 = !DILocation(line: 264, column: 7, scope: !842)
!4171 = !DILocation(line: 268, column: 5, scope: !4164)
!4172 = !DILocation(line: 0, scope: !3985, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 269, column: 8, scope: !842)
!4174 = !DILocation(line: 0, scope: !3993, inlinedAt: !4175)
!4175 = distinct !DILocation(line: 70, column: 25, scope: !3985, inlinedAt: !4173)
!4176 = !DILocation(line: 2059, column: 24, scope: !3993, inlinedAt: !4175)
!4177 = !DILocation(line: 2059, column: 10, scope: !3993, inlinedAt: !4175)
!4178 = !DILocation(line: 0, scope: !3918, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 70, column: 10, scope: !3985, inlinedAt: !4173)
!4180 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4179)
!4181 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4179)
!4182 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4179)
!4183 = !DILocation(line: 270, column: 7, scope: !842)
!4184 = !DILocation(line: 271, column: 3, scope: !842)
!4185 = distinct !DISubprogram(name: "xzalloc", scope: !827, file: !827, line: 279, type: !3938, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4186)
!4186 = !{!4187}
!4187 = !DILocalVariable(name: "s", arg: 1, scope: !4185, file: !827, line: 279, type: !138)
!4188 = !DILocation(line: 0, scope: !4185)
!4189 = !DILocalVariable(name: "n", arg: 1, scope: !4190, file: !827, line: 294, type: !138)
!4190 = distinct !DISubprogram(name: "xcalloc", scope: !827, file: !827, line: 294, type: !4054, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4191)
!4191 = !{!4189, !4192}
!4192 = !DILocalVariable(name: "s", arg: 2, scope: !4190, file: !827, line: 294, type: !138)
!4193 = !DILocation(line: 0, scope: !4190, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 281, column: 10, scope: !4185)
!4195 = !DILocation(line: 296, column: 25, scope: !4190, inlinedAt: !4194)
!4196 = !DILocation(line: 0, scope: !3918, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 296, column: 10, scope: !4190, inlinedAt: !4194)
!4198 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4197)
!4199 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4197)
!4200 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4197)
!4201 = !DILocation(line: 281, column: 3, scope: !4185)
!4202 = !DISubprogram(name: "calloc", scope: !1090, file: !1090, line: 543, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4203 = !DILocation(line: 0, scope: !4190)
!4204 = !DILocation(line: 296, column: 25, scope: !4190)
!4205 = !DILocation(line: 0, scope: !3918, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 296, column: 10, scope: !4190)
!4207 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4206)
!4208 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4206)
!4209 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4206)
!4210 = !DILocation(line: 296, column: 3, scope: !4190)
!4211 = distinct !DISubprogram(name: "xizalloc", scope: !827, file: !827, line: 285, type: !3952, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4212)
!4212 = !{!4213}
!4213 = !DILocalVariable(name: "s", arg: 1, scope: !4211, file: !827, line: 285, type: !846)
!4214 = !DILocation(line: 0, scope: !4211)
!4215 = !DILocalVariable(name: "n", arg: 1, scope: !4216, file: !827, line: 300, type: !846)
!4216 = distinct !DISubprogram(name: "xicalloc", scope: !827, file: !827, line: 300, type: !4070, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4217)
!4217 = !{!4215, !4218}
!4218 = !DILocalVariable(name: "s", arg: 2, scope: !4216, file: !827, line: 300, type: !846)
!4219 = !DILocation(line: 0, scope: !4216, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 287, column: 10, scope: !4211)
!4221 = !DILocalVariable(name: "n", arg: 1, scope: !4222, file: !3959, line: 77, type: !846)
!4222 = distinct !DISubprogram(name: "icalloc", scope: !3959, file: !3959, line: 77, type: !4070, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4223)
!4223 = !{!4221, !4224}
!4224 = !DILocalVariable(name: "s", arg: 2, scope: !4222, file: !3959, line: 77, type: !846)
!4225 = !DILocation(line: 0, scope: !4222, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 302, column: 25, scope: !4216, inlinedAt: !4220)
!4227 = !DILocation(line: 91, column: 10, scope: !4222, inlinedAt: !4226)
!4228 = !DILocation(line: 0, scope: !3918, inlinedAt: !4229)
!4229 = distinct !DILocation(line: 302, column: 10, scope: !4216, inlinedAt: !4220)
!4230 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4229)
!4231 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4229)
!4232 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4229)
!4233 = !DILocation(line: 287, column: 3, scope: !4211)
!4234 = !DILocation(line: 0, scope: !4216)
!4235 = !DILocation(line: 0, scope: !4222, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 302, column: 25, scope: !4216)
!4237 = !DILocation(line: 91, column: 10, scope: !4222, inlinedAt: !4236)
!4238 = !DILocation(line: 0, scope: !3918, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 302, column: 10, scope: !4216)
!4240 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4239)
!4241 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4239)
!4242 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4239)
!4243 = !DILocation(line: 302, column: 3, scope: !4216)
!4244 = distinct !DISubprogram(name: "xmemdup", scope: !827, file: !827, line: 310, type: !4245, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!131, !128, !138}
!4247 = !{!4248, !4249}
!4248 = !DILocalVariable(name: "p", arg: 1, scope: !4244, file: !827, line: 310, type: !128)
!4249 = !DILocalVariable(name: "s", arg: 2, scope: !4244, file: !827, line: 310, type: !138)
!4250 = !DILocation(line: 0, scope: !4244)
!4251 = !DILocation(line: 0, scope: !3937, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 312, column: 18, scope: !4244)
!4253 = !DILocation(line: 49, column: 25, scope: !3937, inlinedAt: !4252)
!4254 = !DILocation(line: 0, scope: !3918, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 49, column: 10, scope: !3937, inlinedAt: !4252)
!4256 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4255)
!4257 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4255)
!4258 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4255)
!4259 = !DILocalVariable(name: "__dest", arg: 1, scope: !4260, file: !2403, line: 26, type: !4263)
!4260 = distinct !DISubprogram(name: "memcpy", scope: !2403, file: !2403, line: 26, type: !4261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4264)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!131, !4263, !1113, !138}
!4263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4264 = !{!4259, !4265, !4266}
!4265 = !DILocalVariable(name: "__src", arg: 2, scope: !4260, file: !2403, line: 26, type: !1113)
!4266 = !DILocalVariable(name: "__len", arg: 3, scope: !4260, file: !2403, line: 26, type: !138)
!4267 = !DILocation(line: 0, scope: !4260, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 312, column: 10, scope: !4244)
!4269 = !DILocation(line: 29, column: 10, scope: !4260, inlinedAt: !4268)
!4270 = !DILocation(line: 312, column: 3, scope: !4244)
!4271 = distinct !DISubprogram(name: "ximemdup", scope: !827, file: !827, line: 316, type: !4272, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!131, !128, !846}
!4274 = !{!4275, !4276}
!4275 = !DILocalVariable(name: "p", arg: 1, scope: !4271, file: !827, line: 316, type: !128)
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4271, file: !827, line: 316, type: !846)
!4277 = !DILocation(line: 0, scope: !4271)
!4278 = !DILocation(line: 0, scope: !3951, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 318, column: 18, scope: !4271)
!4280 = !DILocation(line: 0, scope: !3958, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 55, column: 25, scope: !3951, inlinedAt: !4279)
!4282 = !DILocation(line: 57, column: 26, scope: !3958, inlinedAt: !4281)
!4283 = !DILocation(line: 0, scope: !3918, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 55, column: 10, scope: !3951, inlinedAt: !4279)
!4285 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4284)
!4286 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4284)
!4287 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4284)
!4288 = !DILocation(line: 0, scope: !4260, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 318, column: 10, scope: !4271)
!4290 = !DILocation(line: 29, column: 10, scope: !4260, inlinedAt: !4289)
!4291 = !DILocation(line: 318, column: 3, scope: !4271)
!4292 = distinct !DISubprogram(name: "ximemdup0", scope: !827, file: !827, line: 325, type: !4293, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!130, !128, !846}
!4295 = !{!4296, !4297, !4298}
!4296 = !DILocalVariable(name: "p", arg: 1, scope: !4292, file: !827, line: 325, type: !128)
!4297 = !DILocalVariable(name: "s", arg: 2, scope: !4292, file: !827, line: 325, type: !846)
!4298 = !DILocalVariable(name: "result", scope: !4292, file: !827, line: 327, type: !130)
!4299 = !DILocation(line: 0, scope: !4292)
!4300 = !DILocation(line: 327, column: 30, scope: !4292)
!4301 = !DILocation(line: 0, scope: !3951, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 327, column: 18, scope: !4292)
!4303 = !DILocation(line: 0, scope: !3958, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 55, column: 25, scope: !3951, inlinedAt: !4302)
!4305 = !DILocation(line: 57, column: 26, scope: !3958, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !3918, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 55, column: 10, scope: !3951, inlinedAt: !4302)
!4308 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4307)
!4311 = !DILocation(line: 328, column: 3, scope: !4292)
!4312 = !DILocation(line: 328, column: 13, scope: !4292)
!4313 = !DILocation(line: 0, scope: !4260, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 329, column: 10, scope: !4292)
!4315 = !DILocation(line: 29, column: 10, scope: !4260, inlinedAt: !4314)
!4316 = !DILocation(line: 329, column: 3, scope: !4292)
!4317 = distinct !DISubprogram(name: "xstrdup", scope: !827, file: !827, line: 335, type: !1092, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !826, retainedNodes: !4318)
!4318 = !{!4319}
!4319 = !DILocalVariable(name: "string", arg: 1, scope: !4317, file: !827, line: 335, type: !141)
!4320 = !DILocation(line: 0, scope: !4317)
!4321 = !DILocation(line: 337, column: 27, scope: !4317)
!4322 = !DILocation(line: 337, column: 43, scope: !4317)
!4323 = !DILocation(line: 0, scope: !4244, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 337, column: 10, scope: !4317)
!4325 = !DILocation(line: 0, scope: !3937, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 312, column: 18, scope: !4244, inlinedAt: !4324)
!4327 = !DILocation(line: 49, column: 25, scope: !3937, inlinedAt: !4326)
!4328 = !DILocation(line: 0, scope: !3918, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 49, column: 10, scope: !3937, inlinedAt: !4326)
!4330 = !DILocation(line: 39, column: 8, scope: !3925, inlinedAt: !4329)
!4331 = !DILocation(line: 39, column: 7, scope: !3918, inlinedAt: !4329)
!4332 = !DILocation(line: 40, column: 5, scope: !3925, inlinedAt: !4329)
!4333 = !DILocation(line: 0, scope: !4260, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 312, column: 10, scope: !4244, inlinedAt: !4324)
!4335 = !DILocation(line: 29, column: 10, scope: !4260, inlinedAt: !4334)
!4336 = !DILocation(line: 337, column: 3, scope: !4317)
!4337 = distinct !DISubprogram(name: "xalloc_die", scope: !762, file: !762, line: 32, type: !469, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860, retainedNodes: !4338)
!4338 = !{!4339}
!4339 = !DILocalVariable(name: "__errstatus", scope: !4340, file: !762, line: 34, type: !1196)
!4340 = distinct !DILexicalBlock(scope: !4337, file: !762, line: 34, column: 3)
!4341 = !DILocation(line: 34, column: 3, scope: !4340)
!4342 = !DILocation(line: 0, scope: !4340)
!4343 = !DILocation(line: 40, column: 3, scope: !4337)
!4344 = distinct !DISubprogram(name: "close_stream", scope: !863, file: !863, line: 55, type: !4345, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4381)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!85, !4347}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4349)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4349, file: !212, line: 51, baseType: !85, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4349, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4349, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4349, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4349, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4349, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4349, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4349, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4349, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4349, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4349, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4349, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4349, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4349, file: !212, line: 70, baseType: !4365, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4349, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4349, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4349, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4349, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4349, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4349, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4349, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4349, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4349, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4349, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4349, file: !212, line: 93, baseType: !4365, size: 64, offset: 1344)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4349, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4349, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4349, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4349, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4381 = !{!4382, !4383, !4385, !4386}
!4382 = !DILocalVariable(name: "stream", arg: 1, scope: !4344, file: !863, line: 55, type: !4347)
!4383 = !DILocalVariable(name: "some_pending", scope: !4344, file: !863, line: 57, type: !4384)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!4385 = !DILocalVariable(name: "prev_fail", scope: !4344, file: !863, line: 58, type: !4384)
!4386 = !DILocalVariable(name: "fclose_fail", scope: !4344, file: !863, line: 59, type: !4384)
!4387 = !DILocation(line: 0, scope: !4344)
!4388 = !DILocation(line: 57, column: 30, scope: !4344)
!4389 = !DILocalVariable(name: "__stream", arg: 1, scope: !4390, file: !1779, line: 135, type: !4347)
!4390 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1779, file: !1779, line: 135, type: !4345, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4391)
!4391 = !{!4389}
!4392 = !DILocation(line: 0, scope: !4390, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 58, column: 27, scope: !4344)
!4394 = !DILocation(line: 137, column: 10, scope: !4390, inlinedAt: !4393)
!4395 = !{!1822, !966, i64 0}
!4396 = !DILocation(line: 58, column: 43, scope: !4344)
!4397 = !DILocation(line: 59, column: 29, scope: !4344)
!4398 = !DILocation(line: 59, column: 45, scope: !4344)
!4399 = !DILocation(line: 69, column: 17, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4344, file: !863, line: 69, column: 7)
!4401 = !DILocation(line: 57, column: 50, scope: !4344)
!4402 = !DILocation(line: 69, column: 33, scope: !4400)
!4403 = !DILocation(line: 69, column: 53, scope: !4400)
!4404 = !DILocation(line: 69, column: 59, scope: !4400)
!4405 = !DILocation(line: 69, column: 7, scope: !4344)
!4406 = !DILocation(line: 71, column: 11, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4400, file: !863, line: 70, column: 5)
!4408 = !DILocation(line: 72, column: 9, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4407, file: !863, line: 71, column: 11)
!4410 = !DILocation(line: 72, column: 15, scope: !4409)
!4411 = !DILocation(line: 77, column: 1, scope: !4344)
!4412 = !DISubprogram(name: "__fpending", scope: !4413, file: !4413, line: 75, type: !4414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4413 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!138, !4347}
!4416 = distinct !DISubprogram(name: "rpl_fclose", scope: !865, file: !865, line: 58, type: !4417, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4453)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!85, !4419}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4421)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4422)
!4422 = !{!4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4421, file: !212, line: 51, baseType: !85, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4421, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4421, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4421, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4421, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4421, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4421, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4421, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4421, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4421, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4421, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4421, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4421, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4421, file: !212, line: 70, baseType: !4437, size: 64, offset: 832)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4421, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4421, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4421, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4421, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4421, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4421, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4421, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4421, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4421, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4421, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4421, file: !212, line: 93, baseType: !4437, size: 64, offset: 1344)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4421, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4421, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4421, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4421, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4453 = !{!4454, !4455, !4456, !4457}
!4454 = !DILocalVariable(name: "fp", arg: 1, scope: !4416, file: !865, line: 58, type: !4419)
!4455 = !DILocalVariable(name: "saved_errno", scope: !4416, file: !865, line: 60, type: !85)
!4456 = !DILocalVariable(name: "fd", scope: !4416, file: !865, line: 63, type: !85)
!4457 = !DILocalVariable(name: "result", scope: !4416, file: !865, line: 74, type: !85)
!4458 = !DILocation(line: 0, scope: !4416)
!4459 = !DILocation(line: 63, column: 12, scope: !4416)
!4460 = !DILocation(line: 64, column: 10, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4416, file: !865, line: 64, column: 7)
!4462 = !DILocation(line: 64, column: 7, scope: !4416)
!4463 = !DILocation(line: 65, column: 12, scope: !4461)
!4464 = !DILocation(line: 65, column: 5, scope: !4461)
!4465 = !DILocation(line: 70, column: 9, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4416, file: !865, line: 70, column: 7)
!4467 = !DILocation(line: 70, column: 23, scope: !4466)
!4468 = !DILocation(line: 70, column: 33, scope: !4466)
!4469 = !DILocation(line: 70, column: 26, scope: !4466)
!4470 = !DILocation(line: 70, column: 59, scope: !4466)
!4471 = !DILocation(line: 71, column: 7, scope: !4466)
!4472 = !DILocation(line: 71, column: 10, scope: !4466)
!4473 = !DILocation(line: 70, column: 7, scope: !4416)
!4474 = !DILocation(line: 100, column: 12, scope: !4416)
!4475 = !DILocation(line: 105, column: 7, scope: !4416)
!4476 = !DILocation(line: 72, column: 19, scope: !4466)
!4477 = !DILocation(line: 105, column: 19, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4416, file: !865, line: 105, column: 7)
!4479 = !DILocation(line: 107, column: 13, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !865, line: 106, column: 5)
!4481 = !DILocation(line: 109, column: 5, scope: !4480)
!4482 = !DILocation(line: 112, column: 1, scope: !4416)
!4483 = !DISubprogram(name: "fclose", scope: !960, file: !960, line: 178, type: !4417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4484 = !DISubprogram(name: "__freading", scope: !4413, file: !4413, line: 51, type: !4417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4485 = !DISubprogram(name: "lseek", scope: !1436, file: !1436, line: 339, type: !4486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!234, !85, !234, !85}
!4488 = distinct !DISubprogram(name: "rpl_fflush", scope: !867, file: !867, line: 130, type: !4489, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4525)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!85, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4493, file: !212, line: 51, baseType: !85, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4493, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4493, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4493, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4493, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4493, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4493, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4493, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4493, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4493, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4493, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4493, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4493, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4493, file: !212, line: 70, baseType: !4509, size: 64, offset: 832)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4493, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4493, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4493, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4493, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4493, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4493, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4493, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4493, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4493, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4493, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4493, file: !212, line: 93, baseType: !4509, size: 64, offset: 1344)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4493, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4493, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4493, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4493, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4525 = !{!4526}
!4526 = !DILocalVariable(name: "stream", arg: 1, scope: !4488, file: !867, line: 130, type: !4491)
!4527 = !DILocation(line: 0, scope: !4488)
!4528 = !DILocation(line: 151, column: 14, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4488, file: !867, line: 151, column: 7)
!4530 = !DILocation(line: 151, column: 22, scope: !4529)
!4531 = !DILocation(line: 151, column: 27, scope: !4529)
!4532 = !DILocation(line: 151, column: 7, scope: !4488)
!4533 = !DILocation(line: 152, column: 12, scope: !4529)
!4534 = !DILocation(line: 152, column: 5, scope: !4529)
!4535 = !DILocalVariable(name: "fp", arg: 1, scope: !4536, file: !867, line: 42, type: !4491)
!4536 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !867, file: !867, line: 42, type: !4537, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4539)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !4491}
!4539 = !{!4535}
!4540 = !DILocation(line: 0, scope: !4536, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 157, column: 3, scope: !4488)
!4542 = !DILocation(line: 44, column: 12, scope: !4543, inlinedAt: !4541)
!4543 = distinct !DILexicalBlock(scope: !4536, file: !867, line: 44, column: 7)
!4544 = !DILocation(line: 44, column: 19, scope: !4543, inlinedAt: !4541)
!4545 = !DILocation(line: 44, column: 7, scope: !4536, inlinedAt: !4541)
!4546 = !DILocation(line: 46, column: 5, scope: !4543, inlinedAt: !4541)
!4547 = !DILocation(line: 159, column: 10, scope: !4488)
!4548 = !DILocation(line: 159, column: 3, scope: !4488)
!4549 = !DILocation(line: 236, column: 1, scope: !4488)
!4550 = !DISubprogram(name: "fflush", scope: !960, file: !960, line: 230, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4551 = distinct !DISubprogram(name: "rpl_fseeko", scope: !869, file: !869, line: 28, type: !4552, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4588)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!85, !4554, !2203, !85}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4556)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4557)
!4557 = !{!4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4556, file: !212, line: 51, baseType: !85, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4556, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4556, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4556, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4556, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4556, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4556, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4556, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4556, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4556, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4556, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4556, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4556, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4556, file: !212, line: 70, baseType: !4572, size: 64, offset: 832)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4556, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4556, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4556, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4556, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4556, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4556, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4556, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4556, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4556, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4556, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4556, file: !212, line: 93, baseType: !4572, size: 64, offset: 1344)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4556, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4556, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4556, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4556, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4588 = !{!4589, !4590, !4591, !4592}
!4589 = !DILocalVariable(name: "fp", arg: 1, scope: !4551, file: !869, line: 28, type: !4554)
!4590 = !DILocalVariable(name: "offset", arg: 2, scope: !4551, file: !869, line: 28, type: !2203)
!4591 = !DILocalVariable(name: "whence", arg: 3, scope: !4551, file: !869, line: 28, type: !85)
!4592 = !DILocalVariable(name: "pos", scope: !4593, file: !869, line: 123, type: !2203)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !869, line: 119, column: 5)
!4594 = distinct !DILexicalBlock(scope: !4551, file: !869, line: 55, column: 7)
!4595 = !DILocation(line: 0, scope: !4551)
!4596 = !DILocation(line: 55, column: 12, scope: !4594)
!4597 = !{!1822, !900, i64 16}
!4598 = !DILocation(line: 55, column: 33, scope: !4594)
!4599 = !{!1822, !900, i64 8}
!4600 = !DILocation(line: 55, column: 25, scope: !4594)
!4601 = !DILocation(line: 56, column: 7, scope: !4594)
!4602 = !DILocation(line: 56, column: 15, scope: !4594)
!4603 = !DILocation(line: 56, column: 37, scope: !4594)
!4604 = !{!1822, !900, i64 32}
!4605 = !DILocation(line: 56, column: 29, scope: !4594)
!4606 = !DILocation(line: 57, column: 7, scope: !4594)
!4607 = !DILocation(line: 57, column: 15, scope: !4594)
!4608 = !{!1822, !900, i64 72}
!4609 = !DILocation(line: 57, column: 29, scope: !4594)
!4610 = !DILocation(line: 55, column: 7, scope: !4551)
!4611 = !DILocation(line: 123, column: 26, scope: !4593)
!4612 = !DILocation(line: 123, column: 19, scope: !4593)
!4613 = !DILocation(line: 0, scope: !4593)
!4614 = !DILocation(line: 124, column: 15, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4593, file: !869, line: 124, column: 11)
!4616 = !DILocation(line: 124, column: 11, scope: !4593)
!4617 = !DILocation(line: 135, column: 19, scope: !4593)
!4618 = !DILocation(line: 136, column: 12, scope: !4593)
!4619 = !DILocation(line: 136, column: 20, scope: !4593)
!4620 = !{!1822, !1572, i64 144}
!4621 = !DILocation(line: 167, column: 7, scope: !4593)
!4622 = !DILocation(line: 169, column: 10, scope: !4551)
!4623 = !DILocation(line: 169, column: 3, scope: !4551)
!4624 = !DILocation(line: 170, column: 1, scope: !4551)
!4625 = !DISubprogram(name: "fseeko", scope: !960, file: !960, line: 736, type: !4626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!85, !4554, !234, !85}
!4628 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !769, file: !769, line: 100, type: !4629, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4632)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!138, !2421, !141, !138, !4631}
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!4632 = !{!4633, !4634, !4635, !4636, !4637}
!4633 = !DILocalVariable(name: "pwc", arg: 1, scope: !4628, file: !769, line: 100, type: !2421)
!4634 = !DILocalVariable(name: "s", arg: 2, scope: !4628, file: !769, line: 100, type: !141)
!4635 = !DILocalVariable(name: "n", arg: 3, scope: !4628, file: !769, line: 100, type: !138)
!4636 = !DILocalVariable(name: "ps", arg: 4, scope: !4628, file: !769, line: 100, type: !4631)
!4637 = !DILocalVariable(name: "ret", scope: !4628, file: !769, line: 130, type: !138)
!4638 = !DILocation(line: 0, scope: !4628)
!4639 = !DILocation(line: 105, column: 9, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4628, file: !769, line: 105, column: 7)
!4641 = !DILocation(line: 105, column: 7, scope: !4628)
!4642 = !DILocation(line: 117, column: 10, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4628, file: !769, line: 117, column: 7)
!4644 = !DILocation(line: 117, column: 7, scope: !4628)
!4645 = !DILocation(line: 130, column: 16, scope: !4628)
!4646 = !DILocation(line: 135, column: 11, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4628, file: !769, line: 135, column: 7)
!4648 = !DILocation(line: 135, column: 25, scope: !4647)
!4649 = !DILocation(line: 135, column: 30, scope: !4647)
!4650 = !DILocation(line: 135, column: 7, scope: !4628)
!4651 = !DILocalVariable(name: "ps", arg: 1, scope: !4652, file: !2394, line: 1135, type: !4631)
!4652 = distinct !DISubprogram(name: "mbszero", scope: !2394, file: !2394, line: 1135, type: !4653, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !4631}
!4655 = !{!4651}
!4656 = !DILocation(line: 0, scope: !4652, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 137, column: 5, scope: !4647)
!4658 = !DILocalVariable(name: "__dest", arg: 1, scope: !4659, file: !2403, line: 57, type: !131)
!4659 = distinct !DISubprogram(name: "memset", scope: !2403, file: !2403, line: 57, type: !2404, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !4660)
!4660 = !{!4658, !4661, !4662}
!4661 = !DILocalVariable(name: "__ch", arg: 2, scope: !4659, file: !2403, line: 57, type: !85)
!4662 = !DILocalVariable(name: "__len", arg: 3, scope: !4659, file: !2403, line: 57, type: !138)
!4663 = !DILocation(line: 0, scope: !4659, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 1137, column: 3, scope: !4652, inlinedAt: !4657)
!4665 = !DILocation(line: 59, column: 10, scope: !4659, inlinedAt: !4664)
!4666 = !DILocation(line: 137, column: 5, scope: !4647)
!4667 = !DILocation(line: 138, column: 11, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4628, file: !769, line: 138, column: 7)
!4669 = !DILocation(line: 138, column: 7, scope: !4628)
!4670 = !DILocation(line: 139, column: 5, scope: !4668)
!4671 = !DILocation(line: 143, column: 26, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4628, file: !769, line: 143, column: 7)
!4673 = !DILocation(line: 143, column: 41, scope: !4672)
!4674 = !DILocation(line: 143, column: 7, scope: !4628)
!4675 = !DILocation(line: 145, column: 15, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4677, file: !769, line: 145, column: 11)
!4677 = distinct !DILexicalBlock(scope: !4672, file: !769, line: 144, column: 5)
!4678 = !DILocation(line: 145, column: 11, scope: !4677)
!4679 = !DILocation(line: 146, column: 32, scope: !4676)
!4680 = !DILocation(line: 146, column: 16, scope: !4676)
!4681 = !DILocation(line: 146, column: 14, scope: !4676)
!4682 = !DILocation(line: 146, column: 9, scope: !4676)
!4683 = !DILocation(line: 286, column: 1, scope: !4628)
!4684 = !DISubprogram(name: "mbsinit", scope: !4685, file: !4685, line: 293, type: !4686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !949)
!4685 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!85, !4688}
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!4690 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !871, file: !871, line: 27, type: !3902, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4691)
!4691 = !{!4692, !4693, !4694, !4695}
!4692 = !DILocalVariable(name: "ptr", arg: 1, scope: !4690, file: !871, line: 27, type: !131)
!4693 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4690, file: !871, line: 27, type: !138)
!4694 = !DILocalVariable(name: "size", arg: 3, scope: !4690, file: !871, line: 27, type: !138)
!4695 = !DILocalVariable(name: "nbytes", scope: !4690, file: !871, line: 29, type: !138)
!4696 = !DILocation(line: 0, scope: !4690)
!4697 = !DILocation(line: 30, column: 7, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4690, file: !871, line: 30, column: 7)
!4699 = !DILocalVariable(name: "ptr", arg: 1, scope: !4700, file: !3994, line: 2057, type: !131)
!4700 = distinct !DISubprogram(name: "rpl_realloc", scope: !3994, file: !3994, line: 2057, type: !3986, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4701)
!4701 = !{!4699, !4702}
!4702 = !DILocalVariable(name: "size", arg: 2, scope: !4700, file: !3994, line: 2057, type: !138)
!4703 = !DILocation(line: 0, scope: !4700, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 37, column: 10, scope: !4690)
!4705 = !DILocation(line: 2059, column: 24, scope: !4700, inlinedAt: !4704)
!4706 = !DILocation(line: 2059, column: 10, scope: !4700, inlinedAt: !4704)
!4707 = !DILocation(line: 37, column: 3, scope: !4690)
!4708 = !DILocation(line: 32, column: 7, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4698, file: !871, line: 31, column: 5)
!4710 = !DILocation(line: 32, column: 13, scope: !4709)
!4711 = !DILocation(line: 33, column: 7, scope: !4709)
!4712 = !DILocation(line: 38, column: 1, scope: !4690)
!4713 = distinct !DISubprogram(name: "dup_safer", scope: !874, file: !874, line: 31, type: !1437, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4714)
!4714 = !{!4715}
!4715 = !DILocalVariable(name: "fd", arg: 1, scope: !4713, file: !874, line: 31, type: !85)
!4716 = !DILocation(line: 0, scope: !4713)
!4717 = !DILocation(line: 33, column: 10, scope: !4713)
!4718 = !DILocation(line: 33, column: 3, scope: !4713)
!4719 = distinct !DISubprogram(name: "rpl_fcntl", scope: !788, file: !788, line: 202, type: !2131, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4720)
!4720 = !{!4721, !4722, !4723, !4734, !4735, !4738, !4740, !4744}
!4721 = !DILocalVariable(name: "fd", arg: 1, scope: !4719, file: !788, line: 202, type: !85)
!4722 = !DILocalVariable(name: "action", arg: 2, scope: !4719, file: !788, line: 202, type: !85)
!4723 = !DILocalVariable(name: "arg", scope: !4719, file: !788, line: 208, type: !4724)
!4724 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2143, line: 22, baseType: !4725)
!4725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4726, baseType: !4727)
!4726 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4728, size: 192, elements: !57)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4733}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4728, file: !4726, line: 208, baseType: !76, size: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4728, file: !4726, line: 208, baseType: !76, size: 32, offset: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4728, file: !4726, line: 208, baseType: !131, size: 64, offset: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4728, file: !4726, line: 208, baseType: !131, size: 64, offset: 128)
!4734 = !DILocalVariable(name: "result", scope: !4719, file: !788, line: 211, type: !85)
!4735 = !DILocalVariable(name: "target", scope: !4736, file: !788, line: 216, type: !85)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !788, line: 215, column: 7)
!4737 = distinct !DILexicalBlock(scope: !4719, file: !788, line: 213, column: 5)
!4738 = !DILocalVariable(name: "target", scope: !4739, file: !788, line: 223, type: !85)
!4739 = distinct !DILexicalBlock(scope: !4737, file: !788, line: 222, column: 7)
!4740 = !DILocalVariable(name: "x", scope: !4741, file: !788, line: 418, type: !85)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !788, line: 417, column: 13)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !788, line: 261, column: 11)
!4743 = distinct !DILexicalBlock(scope: !4737, file: !788, line: 258, column: 7)
!4744 = !DILocalVariable(name: "p", scope: !4745, file: !788, line: 426, type: !131)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !788, line: 425, column: 13)
!4746 = !DILocation(line: 0, scope: !4719)
!4747 = !DILocation(line: 208, column: 3, scope: !4719)
!4748 = !DILocation(line: 208, column: 11, scope: !4719)
!4749 = !DILocation(line: 209, column: 3, scope: !4719)
!4750 = !DILocation(line: 212, column: 3, scope: !4719)
!4751 = !DILocation(line: 216, column: 22, scope: !4736)
!4752 = !DILocation(line: 0, scope: !4736)
!4753 = !DILocalVariable(name: "fd", arg: 1, scope: !4754, file: !788, line: 444, type: !85)
!4754 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !788, file: !788, line: 444, type: !789, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4755)
!4755 = !{!4753, !4756, !4757}
!4756 = !DILocalVariable(name: "target", arg: 2, scope: !4754, file: !788, line: 444, type: !85)
!4757 = !DILocalVariable(name: "result", scope: !4754, file: !788, line: 446, type: !85)
!4758 = !DILocation(line: 0, scope: !4754, inlinedAt: !4759)
!4759 = distinct !DILocation(line: 217, column: 18, scope: !4736)
!4760 = !DILocation(line: 479, column: 12, scope: !4754, inlinedAt: !4759)
!4761 = !DILocation(line: 223, column: 22, scope: !4739)
!4762 = !DILocation(line: 0, scope: !4739)
!4763 = !DILocation(line: 0, scope: !787, inlinedAt: !4764)
!4764 = distinct !DILocation(line: 224, column: 18, scope: !4739)
!4765 = !DILocation(line: 507, column: 12, scope: !4766, inlinedAt: !4764)
!4766 = distinct !DILexicalBlock(scope: !787, file: !788, line: 507, column: 7)
!4767 = !DILocation(line: 507, column: 9, scope: !4766, inlinedAt: !4764)
!4768 = !DILocation(line: 507, column: 7, scope: !787, inlinedAt: !4764)
!4769 = !DILocation(line: 509, column: 16, scope: !4770, inlinedAt: !4764)
!4770 = distinct !DILexicalBlock(scope: !4766, file: !788, line: 508, column: 5)
!4771 = !DILocation(line: 510, column: 13, scope: !4772, inlinedAt: !4764)
!4772 = distinct !DILexicalBlock(scope: !4770, file: !788, line: 510, column: 11)
!4773 = !DILocation(line: 510, column: 23, scope: !4772, inlinedAt: !4764)
!4774 = !DILocation(line: 510, column: 26, scope: !4772, inlinedAt: !4764)
!4775 = !DILocation(line: 510, column: 32, scope: !4772, inlinedAt: !4764)
!4776 = !DILocation(line: 510, column: 11, scope: !4770, inlinedAt: !4764)
!4777 = !DILocation(line: 512, column: 30, scope: !4778, inlinedAt: !4764)
!4778 = distinct !DILexicalBlock(scope: !4772, file: !788, line: 511, column: 9)
!4779 = !DILocation(line: 528, column: 19, scope: !799, inlinedAt: !4764)
!4780 = !DILocation(line: 0, scope: !4754, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 520, column: 20, scope: !4782, inlinedAt: !4764)
!4782 = distinct !DILexicalBlock(scope: !4772, file: !788, line: 519, column: 9)
!4783 = !DILocation(line: 479, column: 12, scope: !4754, inlinedAt: !4781)
!4784 = !DILocation(line: 521, column: 22, scope: !4785, inlinedAt: !4764)
!4785 = distinct !DILexicalBlock(scope: !4782, file: !788, line: 521, column: 15)
!4786 = !DILocation(line: 521, column: 15, scope: !4782, inlinedAt: !4764)
!4787 = !DILocation(line: 522, column: 32, scope: !4785, inlinedAt: !4764)
!4788 = !DILocation(line: 522, column: 13, scope: !4785, inlinedAt: !4764)
!4789 = !DILocation(line: 0, scope: !4754, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 527, column: 14, scope: !4766, inlinedAt: !4764)
!4791 = !DILocation(line: 479, column: 12, scope: !4754, inlinedAt: !4790)
!4792 = !DILocation(line: 0, scope: !4766, inlinedAt: !4764)
!4793 = !DILocation(line: 528, column: 9, scope: !799, inlinedAt: !4764)
!4794 = !DILocation(line: 530, column: 19, scope: !798, inlinedAt: !4764)
!4795 = !DILocation(line: 0, scope: !798, inlinedAt: !4764)
!4796 = !DILocation(line: 531, column: 17, scope: !802, inlinedAt: !4764)
!4797 = !DILocation(line: 531, column: 21, scope: !802, inlinedAt: !4764)
!4798 = !DILocation(line: 531, column: 54, scope: !802, inlinedAt: !4764)
!4799 = !DILocation(line: 531, column: 24, scope: !802, inlinedAt: !4764)
!4800 = !DILocation(line: 531, column: 68, scope: !802, inlinedAt: !4764)
!4801 = !DILocation(line: 531, column: 11, scope: !798, inlinedAt: !4764)
!4802 = !DILocation(line: 533, column: 29, scope: !801, inlinedAt: !4764)
!4803 = !DILocation(line: 0, scope: !801, inlinedAt: !4764)
!4804 = !DILocation(line: 534, column: 11, scope: !801, inlinedAt: !4764)
!4805 = !DILocation(line: 535, column: 17, scope: !801, inlinedAt: !4764)
!4806 = !DILocation(line: 537, column: 9, scope: !801, inlinedAt: !4764)
!4807 = !DILocation(line: 329, column: 22, scope: !4742)
!4808 = !DILocation(line: 330, column: 13, scope: !4742)
!4809 = !DILocation(line: 418, column: 23, scope: !4741)
!4810 = !DILocation(line: 0, scope: !4741)
!4811 = !DILocation(line: 419, column: 24, scope: !4741)
!4812 = !DILocation(line: 421, column: 13, scope: !4742)
!4813 = !DILocation(line: 426, column: 25, scope: !4745)
!4814 = !DILocation(line: 0, scope: !4745)
!4815 = !DILocation(line: 427, column: 24, scope: !4745)
!4816 = !DILocation(line: 429, column: 13, scope: !4742)
!4817 = !DILocation(line: 0, scope: !4737)
!4818 = !DILocation(line: 438, column: 3, scope: !4719)
!4819 = !DILocation(line: 441, column: 1, scope: !4719)
!4820 = !DILocation(line: 440, column: 3, scope: !4719)
!4821 = distinct !DISubprogram(name: "hard_locale", scope: !805, file: !805, line: 28, type: !1523, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4822)
!4822 = !{!4823, !4824}
!4823 = !DILocalVariable(name: "category", arg: 1, scope: !4821, file: !805, line: 28, type: !85)
!4824 = !DILocalVariable(name: "locale", scope: !4821, file: !805, line: 30, type: !4825)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4826)
!4826 = !{!4827}
!4827 = !DISubrange(count: 257)
!4828 = !DILocation(line: 0, scope: !4821)
!4829 = !DILocation(line: 30, column: 3, scope: !4821)
!4830 = !DILocation(line: 30, column: 8, scope: !4821)
!4831 = !DILocation(line: 32, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4821, file: !805, line: 32, column: 7)
!4833 = !DILocation(line: 32, column: 7, scope: !4821)
!4834 = !DILocalVariable(name: "__s1", arg: 1, scope: !4835, file: !978, line: 1359, type: !141)
!4835 = distinct !DISubprogram(name: "streq", scope: !978, file: !978, line: 1359, type: !979, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4836)
!4836 = !{!4834, !4837}
!4837 = !DILocalVariable(name: "__s2", arg: 2, scope: !4835, file: !978, line: 1359, type: !141)
!4838 = !DILocation(line: 0, scope: !4835, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 35, column: 9, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4821, file: !805, line: 35, column: 7)
!4841 = !DILocation(line: 1361, column: 11, scope: !4835, inlinedAt: !4839)
!4842 = !DILocation(line: 35, column: 29, scope: !4840)
!4843 = !DILocation(line: 0, scope: !4835, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 35, column: 32, scope: !4840)
!4845 = !DILocation(line: 1361, column: 11, scope: !4835, inlinedAt: !4844)
!4846 = !DILocation(line: 1361, column: 10, scope: !4835, inlinedAt: !4844)
!4847 = !DILocation(line: 35, column: 7, scope: !4821)
!4848 = !DILocation(line: 46, column: 3, scope: !4821)
!4849 = !DILocation(line: 47, column: 1, scope: !4821)
!4850 = distinct !DISubprogram(name: "setlocale_null_r", scope: !880, file: !880, line: 154, type: !4851, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4853)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!85, !85, !130, !138}
!4853 = !{!4854, !4855, !4856}
!4854 = !DILocalVariable(name: "category", arg: 1, scope: !4850, file: !880, line: 154, type: !85)
!4855 = !DILocalVariable(name: "buf", arg: 2, scope: !4850, file: !880, line: 154, type: !130)
!4856 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4850, file: !880, line: 154, type: !138)
!4857 = !DILocation(line: 0, scope: !4850)
!4858 = !DILocation(line: 159, column: 10, scope: !4850)
!4859 = !DILocation(line: 159, column: 3, scope: !4850)
!4860 = distinct !DISubprogram(name: "setlocale_null", scope: !880, file: !880, line: 186, type: !4861, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4863)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!141, !85}
!4863 = !{!4864}
!4864 = !DILocalVariable(name: "category", arg: 1, scope: !4860, file: !880, line: 186, type: !85)
!4865 = !DILocation(line: 0, scope: !4860)
!4866 = !DILocation(line: 189, column: 10, scope: !4860)
!4867 = !DILocation(line: 189, column: 3, scope: !4860)
!4868 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !882, file: !882, line: 35, type: !4861, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4869)
!4869 = !{!4870, !4871}
!4870 = !DILocalVariable(name: "category", arg: 1, scope: !4868, file: !882, line: 35, type: !85)
!4871 = !DILocalVariable(name: "result", scope: !4868, file: !882, line: 37, type: !141)
!4872 = !DILocation(line: 0, scope: !4868)
!4873 = !DILocation(line: 37, column: 24, scope: !4868)
!4874 = !DILocation(line: 62, column: 3, scope: !4868)
!4875 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !882, file: !882, line: 66, type: !4851, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4876)
!4876 = !{!4877, !4878, !4879, !4880, !4881}
!4877 = !DILocalVariable(name: "category", arg: 1, scope: !4875, file: !882, line: 66, type: !85)
!4878 = !DILocalVariable(name: "buf", arg: 2, scope: !4875, file: !882, line: 66, type: !130)
!4879 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4875, file: !882, line: 66, type: !138)
!4880 = !DILocalVariable(name: "result", scope: !4875, file: !882, line: 111, type: !141)
!4881 = !DILocalVariable(name: "length", scope: !4882, file: !882, line: 125, type: !138)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !882, line: 124, column: 5)
!4883 = distinct !DILexicalBlock(scope: !4875, file: !882, line: 113, column: 7)
!4884 = !DILocation(line: 0, scope: !4875)
!4885 = !DILocation(line: 0, scope: !4868, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 111, column: 24, scope: !4875)
!4887 = !DILocation(line: 37, column: 24, scope: !4868, inlinedAt: !4886)
!4888 = !DILocation(line: 113, column: 14, scope: !4883)
!4889 = !DILocation(line: 113, column: 7, scope: !4875)
!4890 = !DILocation(line: 116, column: 19, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !882, line: 116, column: 11)
!4892 = distinct !DILexicalBlock(scope: !4883, file: !882, line: 114, column: 5)
!4893 = !DILocation(line: 116, column: 11, scope: !4892)
!4894 = !DILocation(line: 120, column: 16, scope: !4891)
!4895 = !DILocation(line: 120, column: 9, scope: !4891)
!4896 = !DILocation(line: 125, column: 23, scope: !4882)
!4897 = !DILocation(line: 0, scope: !4882)
!4898 = !DILocation(line: 126, column: 18, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4882, file: !882, line: 126, column: 11)
!4900 = !DILocation(line: 126, column: 11, scope: !4882)
!4901 = !DILocation(line: 128, column: 39, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !882, line: 127, column: 9)
!4903 = !DILocalVariable(name: "__dest", arg: 1, scope: !4904, file: !2403, line: 26, type: !4263)
!4904 = distinct !DISubprogram(name: "memcpy", scope: !2403, file: !2403, line: 26, type: !4261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4905)
!4905 = !{!4903, !4906, !4907}
!4906 = !DILocalVariable(name: "__src", arg: 2, scope: !4904, file: !2403, line: 26, type: !1113)
!4907 = !DILocalVariable(name: "__len", arg: 3, scope: !4904, file: !2403, line: 26, type: !138)
!4908 = !DILocation(line: 0, scope: !4904, inlinedAt: !4909)
!4909 = distinct !DILocation(line: 128, column: 11, scope: !4902)
!4910 = !DILocation(line: 29, column: 10, scope: !4904, inlinedAt: !4909)
!4911 = !DILocation(line: 129, column: 11, scope: !4902)
!4912 = !DILocation(line: 133, column: 23, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4914, file: !882, line: 133, column: 15)
!4914 = distinct !DILexicalBlock(scope: !4899, file: !882, line: 132, column: 9)
!4915 = !DILocation(line: 133, column: 15, scope: !4914)
!4916 = !DILocation(line: 138, column: 44, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !882, line: 134, column: 13)
!4918 = !DILocation(line: 0, scope: !4904, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 138, column: 15, scope: !4917)
!4920 = !DILocation(line: 29, column: 10, scope: !4904, inlinedAt: !4919)
!4921 = !DILocation(line: 139, column: 15, scope: !4917)
!4922 = !DILocation(line: 139, column: 32, scope: !4917)
!4923 = !DILocation(line: 140, column: 13, scope: !4917)
!4924 = !DILocation(line: 0, scope: !4883)
!4925 = !DILocation(line: 145, column: 1, scope: !4875)
