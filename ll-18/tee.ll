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
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !450
@.str.1.52 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1, !dbg !452
@.str.2.53 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1, !dbg !454
@.str.3.70 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1, !dbg !459
@.str.4.71 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1, !dbg !464
@.str.5.72 = private unnamed_addr constant [5 x i8] c", %s\00", align 1, !dbg !466
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !473
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !486
@.str.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !478
@.str.1.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !480
@.str.2.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !482
@.str.3.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !484
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !488
@stderr = external local_unnamed_addr global ptr, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !494
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !530
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !496
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !520
@.str.1.87 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !522
@.str.2.89 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !524
@.str.3.88 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !526
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !528
@.str.4.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !532
@.str.5.83 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !534
@.str.6.84 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !536
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !538
@.str.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !544
@.str.1.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !546
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !548
@.str.108 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !579
@.str.1.109 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !582
@.str.2.110 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !584
@.str.3.111 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !586
@.str.4.112 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !588
@.str.5.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !590
@.str.6.114 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !592
@.str.7.115 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !594
@.str.8.116 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !596
@.str.9.117 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !598
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.108, ptr @.str.1.109, ptr @.str.2.110, ptr @.str.3.111, ptr @.str.4.112, ptr @.str.5.113, ptr @.str.6.114, ptr @.str.7.115, ptr @.str.8.116, ptr @.str.9.117, ptr null], align 8, !dbg !600
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !611
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !625
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !663
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !670
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !627
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !672
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !615
@.str.10.120 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !632
@.str.11.118 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !634
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !636
@.str.13.119 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !638
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !640
@.str.134 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !675
@.str.1.135 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !678
@.str.2.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !680
@.str.3.137 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !682
@.str.4.138 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !684
@.str.5.139 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !686
@.str.6.140 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !691
@.str.7.141 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !696
@.str.8.142 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !698
@.str.9.143 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !703
@.str.10.144 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !708
@.str.11.145 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !713
@.str.12.146 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !718
@.str.13.147 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !720
@.str.14.148 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !723
@.str.15.149 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !728
@.str.16.150 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !733
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.155 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !738
@.str.18.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !740
@.str.19.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !742
@.str.20.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !744
@.str.21.159 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !746
@.str.22.160 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !748
@.str.23.161 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !750
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !752
@exit_failure = dso_local global i32 1, align 4, !dbg !760
@.str.176 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !766
@.str.1.174 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !769
@.str.2.175 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !771
@.str.187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !773
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !776
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !791
@.str.196 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !809
@.str.1.197 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !812

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !900 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !902, metadata !DIExpression()), !dbg !903
  %2 = icmp eq i32 %0, 0, !dbg !904
  br i1 %2, label %8, label %3, !dbg !906

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !907, !tbaa !909
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !907
  %6 = load ptr, ptr @program_name, align 8, !dbg !907, !tbaa !909
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !907
  br label %38, !dbg !907

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !913
  %10 = load ptr, ptr @program_name, align 8, !dbg !913, !tbaa !909
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !913
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !915
  %13 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !909
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !915
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !916
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !916
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !917
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !917
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !918
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !918
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !919
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !919
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !920
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !920
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !921
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !921
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !922
  %22 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !909
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !922
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !923, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata !942, metadata !936, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr poison, metadata !935, metadata !DIExpression()), !dbg !940
  tail call void @emit_bug_reporting_address() #41, !dbg !943
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !944
  call void @llvm.dbg.value(metadata ptr %24, metadata !938, metadata !DIExpression()), !dbg !940
  %25 = icmp eq ptr %24, null, !dbg !945
  br i1 %25, label %33, label %26, !dbg !947

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #42, !dbg !948
  %28 = icmp eq i32 %27, 0, !dbg !948
  br i1 %28, label %33, label %29, !dbg !949

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #41, !dbg !950
  %31 = load ptr, ptr @stdout, align 8, !dbg !950, !tbaa !909
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !950
  br label %33, !dbg !952

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !939, metadata !DIExpression()), !dbg !940
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #41, !dbg !953
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #41, !dbg !953
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #41, !dbg !954
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #41, !dbg !954
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !955
  unreachable, !dbg !955
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !956 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !960 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !966 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !969 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !972
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !973, !tbaa !974
  %3 = icmp eq i32 %2, -1, !dbg !976
  br i1 %3, label %4, label %16, !dbg !977

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #41, !dbg !978
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !979
  %6 = icmp eq ptr %5, null, !dbg !980
  br i1 %6, label %14, label %7, !dbg !981

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !982, !tbaa !983
  %9 = icmp eq i8 %8, 0, !dbg !982
  br i1 %9, label %14, label %10, !dbg !984

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !985, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !991, metadata !DIExpression()), !dbg !992
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #42, !dbg !994
  %12 = icmp eq i32 %11, 0, !dbg !995
  %13 = zext i1 %12 to i32, !dbg !984
  br label %14, !dbg !984

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !996, !tbaa !974
  br label %16, !dbg !997

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !998
  %18 = icmp eq i32 %17, 0, !dbg !998
  br i1 %18, label %22, label %19, !dbg !1000

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !909
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1001
  br label %121, !dbg !1003

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !972
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #42, !dbg !1004
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1005
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !196, metadata !DIExpression()), !dbg !972
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1006
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !197, metadata !DIExpression()), !dbg !972
  %26 = icmp eq ptr %25, null, !dbg !1007
  br i1 %26, label %53, label %27, !dbg !1008

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1009
  br i1 %28, label %53, label %29, !dbg !1010

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !198, metadata !DIExpression()), !dbg !1011
  tail call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !1011
  %30 = icmp ult ptr %24, %25, !dbg !1012
  br i1 %30, label %31, label %53, !dbg !1013

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !972
  %33 = load ptr, ptr %32, align 8, !tbaa !909
  br label %34, !dbg !1013

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !198, metadata !DIExpression()), !dbg !1011
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !202, metadata !DIExpression()), !dbg !1011
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !198, metadata !DIExpression()), !dbg !1011
  %38 = load i8, ptr %35, align 1, !dbg !1014, !tbaa !983
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1014
  %41 = load i16, ptr %40, align 2, !dbg !1014, !tbaa !1015
  %42 = freeze i16 %41, !dbg !1017
  %43 = lshr i16 %42, 13, !dbg !1017
  %44 = and i16 %43, 1, !dbg !1017
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1018
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !202, metadata !DIExpression()), !dbg !1011
  %47 = icmp ult ptr %37, %25, !dbg !1012
  %48 = icmp ult i64 %46, 2, !dbg !1019
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1019
  br i1 %49, label %34, label %50, !dbg !1013, !llvm.loop !1020

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1018
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1022
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1024
  br label %53, !dbg !1024

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !972
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !197, metadata !DIExpression()), !dbg !972
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.25) #42, !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !203, metadata !DIExpression()), !dbg !972
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1026
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !204, metadata !DIExpression()), !dbg !972
  br label %58, !dbg !1027

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !972
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !204, metadata !DIExpression()), !dbg !972
  %61 = load i8, ptr %59, align 1, !dbg !1028, !tbaa !983
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1029

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1030
  %64 = load i8, ptr %63, align 1, !dbg !1033, !tbaa !983
  %65 = icmp ne i8 %64, 45, !dbg !1034
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1035
  br label %67, !dbg !1035

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !195, metadata !DIExpression()), !dbg !972
  %69 = tail call ptr @__ctype_b_loc() #44, !dbg !1036
  %70 = load ptr, ptr %69, align 8, !dbg !1036, !tbaa !909
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1036
  %73 = load i16, ptr %72, align 2, !dbg !1036, !tbaa !1015
  %74 = and i16 %73, 8192, !dbg !1036
  %75 = icmp eq i16 %74, 0, !dbg !1036
  br i1 %75, label %89, label %76, !dbg !1038

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1039
  br i1 %77, label %91, label %78, !dbg !1042

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1043
  %80 = load i8, ptr %79, align 1, !dbg !1043, !tbaa !983
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1043
  %83 = load i16, ptr %82, align 2, !dbg !1043, !tbaa !1015
  %84 = and i16 %83, 8192, !dbg !1043
  %85 = icmp eq i16 %84, 0, !dbg !1043
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1044
  br i1 %88, label %89, label %91, !dbg !1044

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !204, metadata !DIExpression()), !dbg !972
  br label %58, !dbg !1027, !llvm.loop !1046

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !972
  %92 = ptrtoint ptr %24 to i64, !dbg !1048
  %93 = load ptr, ptr @stdout, align 8, !dbg !1048, !tbaa !909
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1048
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !985, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata !942, metadata !991, metadata !DIExpression()), !dbg !1067
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !258, metadata !DIExpression()), !dbg !972
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #42, !dbg !1069
  %96 = icmp eq i32 %95, 0, !dbg !1069
  br i1 %96, label %100, label %97, !dbg !1071

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #42, !dbg !1072
  %99 = icmp eq i32 %98, 0, !dbg !1072
  br i1 %99, label %100, label %103, !dbg !1073

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1074
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #41, !dbg !1074
  br label %106, !dbg !1076

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1077
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #41, !dbg !1077
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !909
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %107), !dbg !1079
  %109 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !909
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %109), !dbg !1080
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1081
  %112 = sub i64 %111, %92, !dbg !1081
  %113 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !909
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1081
  %115 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !909
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %115), !dbg !1082
  %117 = load ptr, ptr @stdout, align 8, !dbg !1083, !tbaa !909
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %117), !dbg !1083
  %119 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !909
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1084
  br label %121, !dbg !1085

121:                                              ; preds = %106, %19
  ret void, !dbg !1085
}

; Function Attrs: nounwind
declare !dbg !1086 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1090 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1094 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1096 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1099 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1102 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1105 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1108 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1114 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1115 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1119 {
  %3 = alloca [8192 x i8], align 1, !DIAssignID !1129
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1124, metadata !DIExpression()), !dbg !1130
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1125, metadata !DIExpression()), !dbg !1130
  %4 = load ptr, ptr %1, align 8, !dbg !1131, !tbaa !909
  tail call void @set_program_name(ptr noundef %4) #41, !dbg !1132
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #41, !dbg !1133
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #41, !dbg !1134
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #41, !dbg !1135
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1136
  br label %9, !dbg !1137

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #41, !dbg !1138
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1126, metadata !DIExpression()), !dbg !1130
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -2, label %23
    i32 -3, label %24
  ], !dbg !1137

11:                                               ; preds = %9
  store i1 true, ptr @append, align 1, !dbg !1139
  br label %21, !dbg !1142

12:                                               ; preds = %9
  store i1 true, ptr @ignore_interrupts, align 1, !dbg !1143
  br label %21, !dbg !1144

13:                                               ; preds = %9
  %14 = load ptr, ptr @optarg, align 8, !dbg !1145, !tbaa !909
  %15 = icmp eq ptr %14, null, !dbg !1145
  br i1 %15, label %22, label %16, !dbg !1147

16:                                               ; preds = %13
  %17 = load ptr, ptr @argmatch_die, align 8, !dbg !1148, !tbaa !909
  %18 = tail call i64 @__xargmatch_internal(ptr noundef nonnull @.str.15, ptr noundef nonnull %14, ptr noundef nonnull @output_error_args, ptr noundef nonnull @output_error_types, i64 noundef 4, ptr noundef %17, i1 noundef true) #41, !dbg !1148
  %19 = getelementptr inbounds [4 x i32], ptr @output_error_types, i64 0, i64 %18, !dbg !1148
  %20 = load i32, ptr %19, align 4, !dbg !1148, !tbaa !974
  store i32 %20, ptr @output_error, align 4, !dbg !1149, !tbaa !974
  br label %21, !dbg !1150

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !1138, !llvm.loop !1151

22:                                               ; preds = %13
  store i32 2, ptr @output_error, align 4, !dbg !1153, !tbaa !974
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #45, !dbg !1154
  unreachable, !dbg !1154

24:                                               ; preds = %9
  %25 = load ptr, ptr @stdout, align 8, !dbg !1155, !tbaa !909
  %26 = load ptr, ptr @Version, align 8, !dbg !1155, !tbaa !909
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #41, !dbg !1155
  %28 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #41, !dbg !1155
  %29 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #41, !dbg !1155
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef null) #41, !dbg !1155
  tail call void @exit(i32 noundef 0) #43, !dbg !1155
  unreachable, !dbg !1155

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #45, !dbg !1156
  unreachable, !dbg !1156

31:                                               ; preds = %9
  %32 = load i1, ptr @ignore_interrupts, align 1, !dbg !1157
  br i1 %32, label %33, label %35, !dbg !1159

33:                                               ; preds = %31
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1160
  br label %35, !dbg !1160

35:                                               ; preds = %33, %31
  %36 = load i32, ptr @output_error, align 4, !dbg !1161
  %37 = icmp eq i32 %36, 0, !dbg !1163
  br i1 %37, label %43, label %38, !dbg !1164

38:                                               ; preds = %35
  %39 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1165
  %40 = load i32, ptr @output_error, align 4, !dbg !1166
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !1167

41:                                               ; preds = %38, %38
  %42 = tail call i1 @iopoll_input_ok(i32 noundef 0) #41, !dbg !1168
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ %42, %41 ], [ false, %38 ], [ false, %35 ], !dbg !1130
  tail call void @llvm.dbg.value(metadata i1 %44, metadata !1127, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1130
  %45 = load i32, ptr @optind, align 4, !dbg !1169, !tbaa !974
  %46 = sub nsw i32 %0, %45, !dbg !1170
  %47 = sext i32 %45 to i64, !dbg !1171
  %48 = getelementptr inbounds ptr, ptr %1, i64 %47, !dbg !1171
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1172, metadata !DIExpression(), metadata !1129, metadata ptr %3, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %46, metadata !1177, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr %48, metadata !1178, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i1 %44, metadata !1179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1211
  call void @llvm.dbg.value(metadata i64 0, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #41, !dbg !1213
  call void @llvm.dbg.value(metadata i64 0, metadata !1184, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 0, metadata !1188, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 1, metadata !1189, metadata !DIExpression()), !dbg !1211
  %49 = load i1, ptr @append, align 1, !dbg !1214
  %50 = select i1 %49, i32 1089, i32 577, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %50, metadata !1190, metadata !DIExpression()), !dbg !1211
  %51 = load ptr, ptr @stdin, align 8, !dbg !1216, !tbaa !909
  tail call void @fadvise(ptr noundef %51, i32 noundef 2) #41, !dbg !1217
  %52 = add i32 %46, 1, !dbg !1218
  %53 = sext i32 %52 to i64, !dbg !1219
  %54 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 4) #46, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %54, metadata !1181, metadata !DIExpression()), !dbg !1211
  br i1 %44, label %55, label %59, !dbg !1221

55:                                               ; preds = %43
  %56 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 1) #46, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %56, metadata !1182, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr %48, metadata !1178, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1211
  %57 = tail call i1 @iopoll_output_ok(i32 noundef 1) #41, !dbg !1224
  %58 = zext i1 %57 to i8, !dbg !1226
  store i8 %58, ptr %56, align 1, !dbg !1226, !tbaa !1227
  br label %59, !dbg !1229

59:                                               ; preds = %55, %43
  %60 = phi ptr [ %56, %55 ], [ undef, %43 ]
  store i32 1, ptr %54, align 4, !dbg !1230
  %61 = getelementptr inbounds ptr, ptr %48, i64 -1, !dbg !1231
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #41, !dbg !1232
  store ptr %62, ptr %61, align 8, !dbg !1233, !tbaa !909
  call void @llvm.dbg.value(metadata i64 1, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 1, metadata !1191, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  %63 = icmp slt i32 %46, 1, !dbg !1235
  %64 = zext i32 %52 to i64
  br i1 %63, label %67, label %.preheader5, !dbg !1236

.preheader5:                                      ; preds = %59
  br label %71, !dbg !1236

65:                                               ; preds = %100
  %.lcssa13 = phi i1 [ %101, %100 ]
  %.lcssa12 = phi i64 [ %102, %100 ], !dbg !1211
  call void @llvm.dbg.value(metadata i64 %.lcssa12, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 0, metadata !1188, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 0, metadata !1184, metadata !DIExpression()), !dbg !1211
  %66 = icmp eq i64 %.lcssa12, 0, !dbg !1237
  br i1 %66, label %230, label %67, !dbg !1237

67:                                               ; preds = %59, %65
  %68 = phi i64 [ %.lcssa12, %65 ], [ 1, %59 ]
  %69 = phi i1 [ %.lcssa13, %65 ], [ true, %59 ]
  %70 = icmp slt i32 %46, 0
  br label %105, !dbg !1237

71:                                               ; preds = %.preheader5, %100
  %72 = phi i64 [ %103, %100 ], [ 1, %.preheader5 ]
  %73 = phi i64 [ %102, %100 ], [ 1, %.preheader5 ]
  %74 = phi i1 [ %101, %100 ], [ true, %.preheader5 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %72, metadata !1191, metadata !DIExpression()), !dbg !1234
  %75 = getelementptr inbounds ptr, ptr %61, i64 %72, !dbg !1238
  %76 = load ptr, ptr %75, align 8, !dbg !1238, !tbaa !909
  %77 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %76, i32 noundef %50, i32 noundef 438) #41, !dbg !1239
  %78 = getelementptr inbounds i32, ptr %54, i64 %72, !dbg !1240
  store i32 %77, ptr %78, align 4, !dbg !1241, !tbaa !974
  %79 = icmp slt i32 %77, 0, !dbg !1242
  br i1 %79, label %80, label %93, !dbg !1243

80:                                               ; preds = %71
  br i1 %44, label %81, label %83, !dbg !1244

81:                                               ; preds = %80
  %82 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1245
  store i8 0, ptr %82, align 1, !dbg !1247, !tbaa !1227
  br label %83, !dbg !1245

83:                                               ; preds = %81, %80
  %84 = load i32, ptr @output_error, align 4, !dbg !1248
  %85 = add i32 %84, -3, !dbg !1248
  %86 = icmp ult i32 %85, 2, !dbg !1248
  %87 = zext i1 %86 to i32, !dbg !1248
  %88 = tail call ptr @__errno_location() #44, !dbg !1248
  %89 = load i32, ptr %88, align 4, !dbg !1248, !tbaa !974
  %90 = load ptr, ptr %75, align 8, !dbg !1248, !tbaa !909
  %91 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %90) #41, !dbg !1248
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %87, i32 noundef %89, ptr noundef nonnull @.str.20, ptr noundef %91) #41, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %87, metadata !1193, metadata !DIExpression()), !dbg !1249
  %92 = xor i1 %86, true, !dbg !1250
  tail call void @llvm.assume(i1 %92), !dbg !1250
  br label %100, !dbg !1248

93:                                               ; preds = %71
  br i1 %44, label %94, label %98, !dbg !1251

94:                                               ; preds = %93
  %95 = tail call i1 @iopoll_output_ok(i32 noundef %77) #41, !dbg !1253
  %96 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1255
  %97 = zext i1 %95 to i8, !dbg !1256
  store i8 %97, ptr %96, align 1, !dbg !1256, !tbaa !1227
  br label %98, !dbg !1255

98:                                               ; preds = %94, %93
  %99 = add i64 %73, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %99, metadata !1180, metadata !DIExpression()), !dbg !1211
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i1 [ %74, %98 ], [ false, %83 ]
  %102 = phi i64 [ %99, %98 ], [ %73, %83 ], !dbg !1211
  call void @llvm.dbg.value(metadata i64 %102, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  %103 = add nuw nsw i64 %72, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %103, metadata !1191, metadata !DIExpression()), !dbg !1234
  %104 = icmp eq i64 %103, %64, !dbg !1235
  br i1 %104, label %65, label %71, !dbg !1236, !llvm.loop !1259

105:                                              ; preds = %159, %67
  %106 = phi i64 [ %68, %67 ], [ %163, %159 ]
  %107 = phi i1 [ %69, %67 ], [ %162, %159 ]
  %108 = phi i32 [ 0, %67 ], [ %161, %159 ]
  %109 = phi i64 [ 0, %67 ], [ %160, %159 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %108, metadata !1188, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %109, metadata !1184, metadata !DIExpression()), !dbg !1211
  br i1 %44, label %110, label %151, !dbg !1261

110:                                              ; preds = %105
  %111 = sext i32 %108 to i64, !dbg !1262
  %112 = getelementptr inbounds i8, ptr %60, i64 %111, !dbg !1262
  %113 = load i8, ptr %112, align 1, !dbg !1262, !tbaa !1227, !range !1263, !noundef !942
  %114 = icmp eq i8 %113, 0, !dbg !1262
  br i1 %114, label %151, label %115, !dbg !1264

115:                                              ; preds = %110
  %116 = getelementptr inbounds i32, ptr %54, i64 %111, !dbg !1265
  %117 = load i32, ptr %116, align 4, !dbg !1265, !tbaa !974
  %118 = call i32 @iopoll(i32 noundef 0, i32 noundef %117, i1 noundef true) #41, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %118, metadata !1200, metadata !DIExpression()), !dbg !1267
  switch i32 %118, label %151 [
    i32 -2, label %119
    i32 -3, label %147
  ], !dbg !1268

119:                                              ; preds = %115
  %120 = tail call ptr @__errno_location() #44, !dbg !1269
  store i32 32, ptr %120, align 4, !dbg !1272, !tbaa !974
  call void @llvm.dbg.value(metadata ptr %54, metadata !1273, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %61, metadata !1278, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i32 %108, metadata !1279, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i32 32, metadata !1280, metadata !DIExpression()), !dbg !1286
  %121 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  switch i32 %121, label %130 [
    i32 3, label %122
    i32 1, label %122
  ], !dbg !1289

122:                                              ; preds = %119, %119
  %123 = add nsw i32 %121, -3, !dbg !1290
  %124 = icmp ult i32 %123, 2, !dbg !1290
  %125 = zext i1 %124 to i32, !dbg !1290
  %126 = getelementptr inbounds ptr, ptr %61, i64 %111, !dbg !1290
  %127 = load ptr, ptr %126, align 8, !dbg !1290, !tbaa !909
  %128 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %127) #41, !dbg !1290
  call void (i32, i32, ptr, ...) @error(i32 noundef %125, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %128) #41, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %125, metadata !1282, metadata !DIExpression()), !dbg !1291
  %129 = xor i1 %124, true, !dbg !1292
  call void @llvm.assume(i1 %129), !dbg !1290
  br label %130, !dbg !1293

130:                                              ; preds = %122, %119
  %131 = and i32 %121, -3, !dbg !1293
  %132 = icmp ne i32 %131, 1, !dbg !1293
  call void @llvm.dbg.value(metadata i1 %132, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  store i32 -1, ptr %116, align 4, !dbg !1294, !tbaa !974
  %133 = select i1 %132, i1 %107, i1 false, !dbg !1295
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  %134 = add i64 %106, -1, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %134, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr %54, metadata !1297, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %46, metadata !1302, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata i32 %108, metadata !1303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1304
  %135 = call i32 @llvm.smax.i32(i32 %108, i32 %46), !dbg !1306
  %136 = sext i32 %135 to i64, !dbg !1308
  br label %137, !dbg !1306

137:                                              ; preds = %140, %130
  %138 = phi i64 [ %141, %140 ], [ %111, %130 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !1303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1304
  %139 = icmp eq i64 %138, %136, !dbg !1308
  br i1 %139, label %.loopexit3, label %140, !dbg !1310, !llvm.loop !1311

140:                                              ; preds = %137
  %141 = add nsw i64 %138, 1, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %141, metadata !1303, metadata !DIExpression()), !dbg !1304
  %142 = getelementptr inbounds i32, ptr %54, i64 %141, !dbg !1314
  %143 = load i32, ptr %142, align 4, !dbg !1314, !tbaa !974
  %144 = icmp sgt i32 %143, -1, !dbg !1316
  br i1 %144, label %145, label %137, !dbg !1317, !llvm.loop !1318

145:                                              ; preds = %140
  %.lcssa6 = phi i64 [ %141, %140 ], !dbg !1313
  %146 = trunc i64 %.lcssa6 to i32
  br label %159, !dbg !1320, !llvm.loop !1321

147:                                              ; preds = %115
  %148 = tail call ptr @__errno_location() #44, !dbg !1322
  %149 = load i32, ptr %148, align 4, !dbg !1322, !tbaa !974
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #41, !dbg !1322
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %149, ptr noundef %150) #41, !dbg !1322
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1211
  br label %151, !dbg !1325

151:                                              ; preds = %147, %115, %110, %105
  %152 = phi i1 [ %107, %110 ], [ %107, %105 ], [ %107, %115 ], [ false, %147 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %108, metadata !1188, metadata !DIExpression()), !dbg !1211
  %153 = call i64 @read(i32 noundef 0, ptr noundef nonnull %3, i64 noundef 8192) #41, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %153, metadata !1184, metadata !DIExpression()), !dbg !1211
  %154 = icmp slt i64 %153, 0, !dbg !1327
  br i1 %154, label %155, label %165, !dbg !1329

155:                                              ; preds = %151
  %156 = tail call ptr @__errno_location() #44, !dbg !1330
  %157 = load i32, ptr %156, align 4, !dbg !1330, !tbaa !974
  %158 = icmp eq i32 %157, 4, !dbg !1331
  br i1 %158, label %159, label %222, !dbg !1332

.loopexit2:                                       ; preds = %216
  %.lcssa10 = phi i32 [ %217, %216 ], !dbg !1333
  %.lcssa9 = phi i1 [ %218, %216 ]
  %.lcssa8 = phi i64 [ %219, %216 ], !dbg !1333
  br label %159, !dbg !1237

.loopexit3:                                       ; preds = %137
  br label %159, !dbg !1237

159:                                              ; preds = %.loopexit3, %.loopexit2, %167, %155, %145
  %160 = phi i64 [ %153, %155 ], [ %153, %167 ], [ %109, %145 ], [ %153, %.loopexit2 ], [ %109, %.loopexit3 ]
  %161 = phi i32 [ %108, %155 ], [ %108, %167 ], [ %146, %145 ], [ %.lcssa10, %.loopexit2 ], [ -1, %.loopexit3 ]
  %162 = phi i1 [ %152, %155 ], [ %152, %167 ], [ %133, %145 ], [ %.lcssa9, %.loopexit2 ], [ %133, %.loopexit3 ]
  %163 = phi i64 [ %106, %155 ], [ %106, %167 ], [ %134, %145 ], [ %.lcssa8, %.loopexit2 ], [ %134, %.loopexit3 ]
  call void @llvm.dbg.value(metadata i64 %163, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %161, metadata !1188, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %160, metadata !1184, metadata !DIExpression()), !dbg !1211
  %164 = icmp eq i64 %163, 0, !dbg !1237
  br i1 %164, label %222, label %105, !dbg !1237, !llvm.loop !1334

165:                                              ; preds = %151
  %166 = icmp eq i64 %153, 0, !dbg !1335
  br i1 %166, label %.loopexit4, label %167, !dbg !1337

167:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !1204, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i64 %106, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %108, metadata !1188, metadata !DIExpression()), !dbg !1211
  br i1 %70, label %159, label %.preheader, !dbg !1339, !llvm.loop !1340

.preheader:                                       ; preds = %167
  br label %168, !dbg !1339

168:                                              ; preds = %.preheader, %216
  %169 = phi i64 [ %220, %216 ], [ 0, %.preheader ]
  %170 = phi i64 [ %219, %216 ], [ %106, %.preheader ]
  %171 = phi i1 [ %218, %216 ], [ %152, %.preheader ]
  %172 = phi i32 [ %217, %216 ], [ %108, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1204, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i64 %170, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %172, metadata !1188, metadata !DIExpression()), !dbg !1211
  %173 = getelementptr inbounds i32, ptr %54, i64 %169, !dbg !1341
  %174 = load i32, ptr %173, align 4, !dbg !1341, !tbaa !974
  %175 = icmp sgt i32 %174, -1, !dbg !1344
  br i1 %175, label %176, label %216, !dbg !1345

176:                                              ; preds = %168
  %177 = call i1 @write_wait(i32 noundef %174, ptr noundef nonnull %3, i64 noundef %153) #41, !dbg !1346
  br i1 %177, label %216, label %178, !dbg !1347

178:                                              ; preds = %176
  call void @llvm.dbg.value(metadata ptr %54, metadata !1273, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata ptr %61, metadata !1278, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %169, metadata !1279, metadata !DIExpression()), !dbg !1348
  %179 = tail call ptr @__errno_location() #44, !dbg !1352
  %180 = load i32, ptr %179, align 4, !dbg !1352, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %180, metadata !1280, metadata !DIExpression()), !dbg !1348
  %181 = freeze i32 %180, !dbg !1353
  %182 = icmp eq i32 %181, 32, !dbg !1353
  %183 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br i1 %182, label %184, label %185, !dbg !1354

184:                                              ; preds = %178
  switch i32 %183, label %193 [
    i32 3, label %185
    i32 1, label %185
  ], !dbg !1354

185:                                              ; preds = %184, %184, %178
  %186 = add i32 %183, -3, !dbg !1355
  %187 = icmp ult i32 %186, 2, !dbg !1355
  %188 = zext i1 %187 to i32, !dbg !1355
  %189 = getelementptr inbounds ptr, ptr %61, i64 %169, !dbg !1355
  %190 = load ptr, ptr %189, align 8, !dbg !1355, !tbaa !909
  %191 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %190) #41, !dbg !1355
  call void (i32, i32, ptr, ...) @error(i32 noundef %188, i32 noundef %181, ptr noundef nonnull @.str.20, ptr noundef %191) #41, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %188, metadata !1282, metadata !DIExpression()), !dbg !1356
  %192 = xor i1 %187, true, !dbg !1357
  call void @llvm.assume(i1 %192), !dbg !1355
  br label %193

193:                                              ; preds = %185, %184
  %194 = icmp ne i32 %183, 3
  %195 = select i1 %182, i1 %194, i1 false
  %196 = icmp ne i32 %183, 1
  %197 = select i1 %195, i1 %196, i1 false, !dbg !1358
  call void @llvm.dbg.value(metadata i1 %197, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  store i32 -1, ptr %173, align 4, !dbg !1359, !tbaa !974
  %198 = select i1 %197, i1 %171, i1 false, !dbg !1360
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  %199 = add i64 %170, -1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %199, metadata !1180, metadata !DIExpression()), !dbg !1211
  %200 = zext i32 %172 to i64, !dbg !1362
  %201 = icmp eq i64 %169, %200, !dbg !1362
  br i1 %201, label %202, label %216, !dbg !1364

202:                                              ; preds = %193
  call void @llvm.dbg.value(metadata ptr %54, metadata !1297, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %46, metadata !1302, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %172, metadata !1303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1365
  %203 = sext i32 %172 to i64, !dbg !1367
  %204 = call i32 @llvm.smax.i32(i32 %172, i32 %46), !dbg !1367
  %205 = zext nneg i32 %204 to i64, !dbg !1368
  br label %206, !dbg !1367

206:                                              ; preds = %209, %202
  %207 = phi i64 [ %210, %209 ], [ %203, %202 ]
  call void @llvm.dbg.value(metadata i64 %207, metadata !1303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1365
  %208 = icmp eq i64 %207, %205, !dbg !1368
  br i1 %208, label %.loopexit1, label %209, !dbg !1369

209:                                              ; preds = %206
  %210 = add nsw i64 %207, 1, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %210, metadata !1303, metadata !DIExpression()), !dbg !1365
  %211 = getelementptr inbounds i32, ptr %54, i64 %210, !dbg !1371
  %212 = load i32, ptr %211, align 4, !dbg !1371, !tbaa !974
  %213 = icmp sgt i32 %212, -1, !dbg !1372
  br i1 %213, label %214, label %206, !dbg !1373, !llvm.loop !1374

214:                                              ; preds = %209
  %.lcssa7 = phi i64 [ %210, %209 ], !dbg !1370
  %215 = trunc i64 %.lcssa7 to i32
  br label %216, !dbg !1376

.loopexit1:                                       ; preds = %206
  br label %216, !dbg !1377

216:                                              ; preds = %.loopexit1, %214, %193, %176, %168
  %217 = phi i32 [ %172, %176 ], [ %172, %193 ], [ %172, %168 ], [ %215, %214 ], [ -1, %.loopexit1 ], !dbg !1333
  %218 = phi i1 [ %171, %176 ], [ %198, %193 ], [ %171, %168 ], [ %198, %214 ], [ %198, %.loopexit1 ]
  %219 = phi i64 [ %170, %176 ], [ %199, %193 ], [ %170, %168 ], [ %199, %214 ], [ %199, %.loopexit1 ], !dbg !1333
  call void @llvm.dbg.value(metadata i64 %219, metadata !1180, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %217, metadata !1188, metadata !DIExpression()), !dbg !1211
  %220 = add nuw nsw i64 %169, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %220, metadata !1204, metadata !DIExpression()), !dbg !1338
  %221 = icmp eq i64 %220, %64, !dbg !1378
  br i1 %221, label %.loopexit2, label %168, !dbg !1339, !llvm.loop !1379

222:                                              ; preds = %159, %155
  %223 = phi i64 [ %160, %159 ], [ %153, %155 ]
  %224 = phi i1 [ %162, %159 ], [ %152, %155 ]
  %225 = icmp eq i64 %223, -1, !dbg !1381
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 poison, metadata !1184, metadata !DIExpression()), !dbg !1211
  br i1 %225, label %226, label %230, !dbg !1383

226:                                              ; preds = %222
  %227 = tail call ptr @__errno_location() #44, !dbg !1384
  %228 = load i32, ptr %227, align 4, !dbg !1384, !tbaa !974
  %229 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #41, !dbg !1384
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %228, ptr noundef %229) #41, !dbg !1384
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1211
  br label %230, !dbg !1386

.loopexit4:                                       ; preds = %165
  %.lcssa11 = phi i1 [ %152, %165 ]
  br label %230, !dbg !1387

230:                                              ; preds = %.loopexit4, %226, %222, %65
  %231 = phi i1 [ false, %226 ], [ %224, %222 ], [ %.lcssa13, %65 ], [ %.lcssa11, %.loopexit4 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 1, metadata !1206, metadata !DIExpression()), !dbg !1388
  br i1 %63, label %234, label %232, !dbg !1387

232:                                              ; preds = %230
  %233 = zext i32 %52 to i64, !dbg !1389
  br label %236, !dbg !1387

.loopexit:                                        ; preds = %250
  %.lcssa = phi i1 [ %251, %250 ]
  br label %234, !dbg !1391

234:                                              ; preds = %.loopexit, %230
  %235 = phi i1 [ %231, %230 ], [ %.lcssa, %.loopexit ]
  call void @free(ptr noundef nonnull %54) #41, !dbg !1391
  br i1 %44, label %254, label %255, !dbg !1392

236:                                              ; preds = %250, %232
  %237 = phi i64 [ 1, %232 ], [ %252, %250 ]
  %238 = phi i1 [ %231, %232 ], [ %251, %250 ]
  call void @llvm.dbg.value(metadata i64 %237, metadata !1206, metadata !DIExpression()), !dbg !1388
  %239 = getelementptr inbounds i32, ptr %54, i64 %237, !dbg !1393
  %240 = load i32, ptr %239, align 4, !dbg !1393, !tbaa !974
  %241 = icmp sgt i32 %240, -1, !dbg !1395
  br i1 %241, label %242, label %250, !dbg !1396

242:                                              ; preds = %236
  %243 = call i1 @close_wait(i32 noundef %240) #41, !dbg !1397
  br i1 %243, label %250, label %244, !dbg !1398

244:                                              ; preds = %242
  %245 = tail call ptr @__errno_location() #44, !dbg !1399
  %246 = load i32, ptr %245, align 4, !dbg !1399, !tbaa !974
  %247 = getelementptr inbounds ptr, ptr %61, i64 %237, !dbg !1399
  %248 = load ptr, ptr %247, align 8, !dbg !1399, !tbaa !909
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %248) #41, !dbg !1399
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %246, ptr noundef nonnull @.str.20, ptr noundef %249) #41, !dbg !1399
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1211
  br label %250, !dbg !1401

250:                                              ; preds = %244, %242, %236
  %251 = phi i1 [ %238, %242 ], [ false, %244 ], [ %238, %236 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1189, metadata !DIExpression()), !dbg !1211
  %252 = add nuw nsw i64 %237, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %252, metadata !1206, metadata !DIExpression()), !dbg !1388
  %253 = icmp eq i64 %252, %233, !dbg !1389
  br i1 %253, label %.loopexit, label %236, !dbg !1387, !llvm.loop !1403

254:                                              ; preds = %234
  call void @free(ptr noundef %60) #41, !dbg !1405
  br label %255, !dbg !1405

255:                                              ; preds = %234, %254
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #41, !dbg !1407
  tail call void @llvm.dbg.value(metadata i1 %235, metadata !1128, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1130
  %256 = call i32 @close(i32 noundef 0) #41, !dbg !1408
  %257 = icmp eq i32 %256, 0, !dbg !1410
  br i1 %257, label %262, label %258, !dbg !1411

258:                                              ; preds = %255
  %259 = tail call ptr @__errno_location() #44, !dbg !1412
  %260 = load i32, ptr %259, align 4, !dbg !1412, !tbaa !974
  %261 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #41, !dbg !1412
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %260, ptr noundef nonnull @.str.20, ptr noundef %261) #41, !dbg !1412
  unreachable, !dbg !1412

262:                                              ; preds = %255
  %263 = xor i1 %235, true, !dbg !1413
  %264 = zext i1 %263 to i32, !dbg !1413
  ret i32 %264, !dbg !1414
}

; Function Attrs: nounwind
declare !dbg !1415 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1418 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1419 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1422 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1428 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1431 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1435 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

declare !dbg !1438 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef %2) local_unnamed_addr #10 !dbg !1442 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1446, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1447, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i1 %2, metadata !1448, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1449
  %4 = tail call fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef true), !dbg !1450, !range !1451
  ret i32 %4, !dbg !1452
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef %2, i1 noundef %3) unnamed_addr #10 !dbg !1453 {
  %5 = alloca [2 x %struct.pollfd], align 4, !DIAssignID !1472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1461, metadata !DIExpression(), metadata !1472, metadata ptr %5, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1457, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1458, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i1 %2, metadata !1459, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  tail call void @llvm.dbg.value(metadata i1 %3, metadata !1460, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1473
  %6 = and i32 %1, %0, !dbg !1474
  %7 = icmp eq i32 %6, -1, !dbg !1474
  br i1 %7, label %8, label %9, !dbg !1474

8:                                                ; preds = %4
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1.27, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #43, !dbg !1474
  unreachable, !dbg !1474

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #41, !dbg !1477
  store i32 %0, ptr %5, align 4, !dbg !1478, !tbaa !1479, !DIAssignID !1481
  call void @llvm.dbg.assign(metadata i32 %0, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1481, metadata ptr %5, metadata !DIExpression()), !dbg !1473
  %10 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 1, !dbg !1478
  store i16 129, ptr %10, align 4, !dbg !1478, !tbaa !1482, !DIAssignID !1483
  call void @llvm.dbg.assign(metadata i16 129, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16), metadata !1483, metadata ptr %10, metadata !DIExpression()), !dbg !1473
  %11 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 2, !dbg !1478
  store i16 0, ptr %11, align 2, !dbg !1478, !tbaa !1484, !DIAssignID !1485
  call void @llvm.dbg.assign(metadata i16 0, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16), metadata !1485, metadata ptr %11, metadata !DIExpression()), !dbg !1473
  %12 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, !dbg !1486
  store i32 %1, ptr %12, align 4, !dbg !1487, !tbaa !1479, !DIAssignID !1488
  call void @llvm.dbg.assign(metadata i32 %1, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32), metadata !1488, metadata ptr %12, metadata !DIExpression()), !dbg !1473
  %13 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, i32 1, !dbg !1487
  store i16 128, ptr %13, align 4, !dbg !1487, !tbaa !1482, !DIAssignID !1489
  call void @llvm.dbg.assign(metadata i16 128, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 16), metadata !1489, metadata ptr %13, metadata !DIExpression()), !dbg !1473
  %14 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, i32 2, !dbg !1487
  store i16 0, ptr %14, align 2, !dbg !1487, !tbaa !1484, !DIAssignID !1490
  call void @llvm.dbg.assign(metadata i16 0, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 112, 16), metadata !1490, metadata ptr %14, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 56, metadata !1470, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1471, metadata !DIExpression()), !dbg !1473
  br i1 %3, label %16, label %15, !dbg !1491

15:                                               ; preds = %9
  store i16 4, ptr %13, align 4, !dbg !1492, !tbaa !1482, !DIAssignID !1495
  call void @llvm.dbg.assign(metadata i16 4, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 16), metadata !1495, metadata ptr %13, metadata !DIExpression()), !dbg !1473
  store i16 4, ptr %10, align 4, !dbg !1496, !tbaa !1482, !DIAssignID !1497
  call void @llvm.dbg.assign(metadata i16 4, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16), metadata !1497, metadata ptr %10, metadata !DIExpression()), !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 4, metadata !1470, metadata !DIExpression()), !dbg !1473
  br label %16, !dbg !1498

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 56, %9 ], [ 4, %15 ], !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1470, metadata !DIExpression()), !dbg !1473
  %18 = sext i1 %2 to i32
  br label %19, !dbg !1499

19:                                               ; preds = %29, %16
  %20 = phi i32 [ 0, %16 ], [ %27, %29 ], !dbg !1473
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1471, metadata !DIExpression()), !dbg !1473
  %21 = icmp sgt i32 %20, -1, !dbg !1500
  br i1 %21, label %26, label %22, !dbg !1501

22:                                               ; preds = %19
  %23 = tail call ptr @__errno_location() #44, !dbg !1502
  %24 = load i32, ptr %23, align 4, !dbg !1502, !tbaa !974
  %25 = icmp eq i32 %24, 4, !dbg !1503
  br i1 %25, label %26, label %.loopexit, !dbg !1499

26:                                               ; preds = %19, %22
  %27 = call i32 @poll(ptr noundef nonnull %5, i64 noundef 2, i32 noundef %18) #41, !dbg !1504
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1471, metadata !DIExpression()), !dbg !1473
  %28 = icmp slt i32 %27, 0, !dbg !1506
  br i1 %28, label %29, label %30, !dbg !1508

29:                                               ; preds = %26, %38
  br label %19, !dbg !1473, !llvm.loop !1509

30:                                               ; preds = %26
  %31 = icmp ne i32 %27, 0, !dbg !1511
  %32 = or i1 %31, %2, !dbg !1513
  br i1 %32, label %33, label %.loopexit, !dbg !1513

33:                                               ; preds = %30
  br i1 %31, label %35, label %34, !dbg !1514

34:                                               ; preds = %33
  call void @__assert_fail(ptr noundef nonnull @.str.2.28, ptr noundef nonnull @.str.1.27, i32 noundef 88, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #43, !dbg !1516
  unreachable, !dbg !1516

35:                                               ; preds = %33
  %36 = load i16, ptr %11, align 2, !dbg !1518, !tbaa !1484
  %37 = icmp eq i16 %36, 0, !dbg !1520
  br i1 %37, label %38, label %.loopexit, !dbg !1521

38:                                               ; preds = %35
  %39 = load i16, ptr %14, align 2, !dbg !1522, !tbaa !1484
  %40 = zext i16 %39 to i32, !dbg !1524
  %41 = and i32 %17, %40, !dbg !1525
  %42 = icmp eq i32 %41, 0, !dbg !1525
  br i1 %42, label %29, label %43, !dbg !1526

43:                                               ; preds = %38
  %44 = select i1 %3, i32 -2, i32 0, !dbg !1527
  br label %45, !dbg !1528

.loopexit:                                        ; preds = %30, %35, %22
  %.ph = phi i32 [ 0, %30 ], [ 0, %35 ], [ -3, %22 ]
  br label %45, !dbg !1529

45:                                               ; preds = %.loopexit, %43
  %46 = phi i32 [ %44, %43 ], [ %.ph, %.loopexit ], !dbg !1473
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #41, !dbg !1529
  ret i32 %46, !dbg !1529
}

; Function Attrs: noreturn nounwind
declare !dbg !1530 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @iopoll_input_ok(i32 noundef %0) local_unnamed_addr #15 !dbg !1534 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1539, metadata !DIExpression(), metadata !1576, metadata ptr %2, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #41, !dbg !1578
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #41, !dbg !1579
  %4 = icmp eq i32 %3, 0, !dbg !1580
  br i1 %4, label %5, label %12, !dbg !1581

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1582
  %7 = load i32, ptr %6, align 8, !dbg !1582
  %8 = and i32 %7, 61440, !dbg !1582
  %9 = icmp ne i32 %8, 32768, !dbg !1582
  %10 = icmp ne i32 %8, 24576, !dbg !1583
  %11 = and i1 %9, %10, !dbg !1584
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ], !dbg !1577
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !1575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1577
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #41, !dbg !1585
  ret i1 %13, !dbg !1586
}

; Function Attrs: nofree nounwind
declare !dbg !1587 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i1 @iopoll_output_ok(i32 noundef %0) local_unnamed_addr #10 !dbg !1592 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1594, metadata !DIExpression()), !dbg !1595
  %2 = tail call i32 @isapipe(i32 noundef %0) #41, !dbg !1596
  %3 = icmp sgt i32 %2, 0, !dbg !1597
  ret i1 %3, !dbg !1598
}

; Function Attrs: nounwind uwtable
define dso_local i1 @close_wait(i32 noundef %0) local_unnamed_addr #10 !dbg !1599 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1601, metadata !DIExpression()), !dbg !1602
  %2 = tail call ptr @__errno_location() #44, !dbg !1602
  br label %3, !dbg !1603

3:                                                ; preds = %6, %1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1604, metadata !DIExpression()), !dbg !1607
  %4 = load i32, ptr %2, align 4, !dbg !1609, !tbaa !974
  %5 = icmp eq i32 %4, 11, !dbg !1609
  br i1 %5, label %6, label %.loopexit, !dbg !1609

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false), !dbg !1611, !range !1451
  %8 = icmp eq i32 %7, 0, !dbg !1613
  br i1 %8, label %3, label %9, !dbg !1614, !llvm.loop !1615

9:                                                ; preds = %6
  store i32 11, ptr %2, align 4, !dbg !1617, !tbaa !974
  br label %10, !dbg !1619

.loopexit:                                        ; preds = %3
  br label %10, !dbg !1620

10:                                               ; preds = %.loopexit, %9
  %11 = tail call i32 @close(i32 noundef %0) #41, !dbg !1620
  %12 = icmp eq i32 %11, 0, !dbg !1621
  ret i1 %12, !dbg !1622
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @write_wait(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1623 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1627, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1628, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1629, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1630, metadata !DIExpression()), !dbg !1635
  %4 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %2) #41, !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1633, metadata !DIExpression()), !dbg !1637
  %5 = tail call i64 @llvm.smax.i64(i64 %4, i64 0), !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1633, metadata !DIExpression()), !dbg !1637
  %6 = sub i64 %2, %5, !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1629, metadata !DIExpression()), !dbg !1635
  %7 = icmp eq i64 %6, 0, !dbg !1640
  br i1 %7, label %26, label %8, !dbg !1642

8:                                                ; preds = %3
  %9 = tail call ptr @__errno_location() #44, !dbg !1635
  br label %10, !dbg !1642

10:                                               ; preds = %8, %20
  %11 = phi i64 [ %6, %8 ], [ %24, %20 ]
  %12 = phi i64 [ %5, %8 ], [ %23, %20 ]
  %13 = phi ptr [ %1, %8 ], [ %21, %20 ]
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1630, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i32 %0, metadata !1604, metadata !DIExpression()), !dbg !1643
  %14 = load i32, ptr %9, align 4, !dbg !1646, !tbaa !974
  %15 = icmp eq i32 %14, 11, !dbg !1646
  br i1 %15, label %16, label %.loopexit, !dbg !1646

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef true, i1 noundef false), !dbg !1647, !range !1451
  %18 = icmp eq i32 %17, 0, !dbg !1648
  br i1 %18, label %20, label %19, !dbg !1649

19:                                               ; preds = %16
  store i32 11, ptr %9, align 4, !dbg !1650, !tbaa !974
  br label %26, !dbg !1651

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %13, i64 %12, !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1630, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1629, metadata !DIExpression()), !dbg !1635
  %22 = tail call i64 @write(i32 noundef %0, ptr noundef %21, i64 noundef %11) #41, !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1633, metadata !DIExpression()), !dbg !1637
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 0), !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1633, metadata !DIExpression()), !dbg !1637
  %24 = sub i64 %11, %23, !dbg !1639
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1629, metadata !DIExpression()), !dbg !1635
  %25 = icmp eq i64 %24, 0, !dbg !1640
  br i1 %25, label %.loopexit, label %10, !dbg !1642, !llvm.loop !1653

.loopexit:                                        ; preds = %10, %20
  %.lcssa = phi i1 [ %15, %10 ], [ %15, %20 ], !dbg !1646
  br label %26, !dbg !1656

26:                                               ; preds = %.loopexit, %3, %19
  %27 = phi i1 [ false, %19 ], [ true, %3 ], [ %.lcssa, %.loopexit ]
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1630, metadata !DIExpression()), !dbg !1635
  ret i1 %27, !dbg !1656
}

; Function Attrs: nofree
declare !dbg !1657 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #10 !dbg !1660 {
  tail call void @usage(i32 noundef 1) #41, !dbg !1661
  ret void, !dbg !1662
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @argmatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #16 !dbg !1663 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1668, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1669, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1670, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1671, metadata !DIExpression()), !dbg !1677
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !1678
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1672, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1673, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1674, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1675, metadata !DIExpression()), !dbg !1679
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1677
  %6 = load ptr, ptr %1, align 8, !dbg !1680, !tbaa !909
  %7 = icmp eq ptr %6, null, !dbg !1682
  br i1 %7, label %40, label %8, !dbg !1682

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br label %10, !dbg !1682

10:                                               ; preds = %8, %31
  %11 = phi ptr [ %6, %8 ], [ %36, %31 ]
  %12 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %13 = phi i1 [ false, %8 ], [ %33, %31 ]
  %14 = phi i64 [ -1, %8 ], [ %32, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1675, metadata !DIExpression()), !dbg !1679
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1673, metadata !DIExpression()), !dbg !1677
  %15 = tail call i32 @strncmp(ptr noundef nonnull %11, ptr noundef %0, i64 noundef %5) #42, !dbg !1683
  %16 = icmp eq i32 %15, 0, !dbg !1683
  br i1 %16, label %17, label %31, !dbg !1686

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #42, !dbg !1687
  %19 = icmp eq i64 %18, %5, !dbg !1690
  br i1 %19, label %.loopexit, label %20, !dbg !1691

20:                                               ; preds = %17
  %21 = icmp eq i64 %14, -1, !dbg !1692
  br i1 %21, label %31, label %22, !dbg !1694

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1695

23:                                               ; preds = %22
  %24 = mul i64 %14, %3, !dbg !1698
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !1699
  %26 = mul i64 %12, %3, !dbg !1700
  %27 = getelementptr inbounds i8, ptr %2, i64 %26, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %25, metadata !1702, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata ptr %27, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %3, metadata !1708, metadata !DIExpression()), !dbg !1709
  %28 = tail call i32 @bcmp(ptr nonnull %25, ptr nonnull %27, i64 %3), !dbg !1711
  %29 = icmp eq i32 %28, 0, !dbg !1712
  br i1 %29, label %31, label %30, !dbg !1713

30:                                               ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1674, metadata !DIExpression()), !dbg !1677
  br label %31, !dbg !1714

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %14, %10 ], [ %14, %30 ], [ %14, %23 ], [ %12, %20 ], !dbg !1677
  %33 = phi i1 [ %13, %10 ], [ true, %30 ], [ %13, %23 ], [ %13, %20 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1673, metadata !DIExpression()), !dbg !1677
  %34 = add i64 %12, 1, !dbg !1716
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1675, metadata !DIExpression()), !dbg !1679
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1680
  %36 = load ptr, ptr %35, align 8, !dbg !1680, !tbaa !909
  %37 = icmp eq ptr %36, null, !dbg !1682
  br i1 %37, label %38, label %10, !dbg !1682, !llvm.loop !1717

38:                                               ; preds = %31
  %.lcssa3 = phi i64 [ %32, %31 ], !dbg !1677
  %.lcssa2 = phi i1 [ %33, %31 ]
  %39 = select i1 %.lcssa2, i64 -2, i64 %.lcssa3, !dbg !1719
  br label %40, !dbg !1719

.loopexit:                                        ; preds = %17
  %.lcssa = phi i64 [ %12, %17 ]
  br label %40, !dbg !1721

40:                                               ; preds = %.loopexit, %4, %38
  %41 = phi i64 [ -1, %4 ], [ %39, %38 ], [ %.lcssa, %.loopexit ], !dbg !1677
  ret i64 %41, !dbg !1721
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1722 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @argmatch_exact(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 !dbg !1725 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1729, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1730, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1731, metadata !DIExpression()), !dbg !1734
  %3 = load ptr, ptr %1, align 8, !dbg !1735, !tbaa !909
  %4 = icmp eq ptr %3, null, !dbg !1737
  br i1 %4, label %15, label %.preheader, !dbg !1737

.preheader:                                       ; preds = %2
  br label %5, !dbg !1737

5:                                                ; preds = %.preheader, %10
  %6 = phi ptr [ %13, %10 ], [ %3, %.preheader ]
  %7 = phi i64 [ %11, %10 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1731, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %6, metadata !1738, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %0, metadata !1741, metadata !DIExpression()), !dbg !1742
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !1746
  %9 = icmp eq i32 %8, 0, !dbg !1747
  br i1 %9, label %.loopexit, label %10, !dbg !1748

10:                                               ; preds = %5
  %11 = add i64 %7, 1, !dbg !1749
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1731, metadata !DIExpression()), !dbg !1734
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11, !dbg !1735
  %13 = load ptr, ptr %12, align 8, !dbg !1735, !tbaa !909
  %14 = icmp eq ptr %13, null, !dbg !1737
  br i1 %14, label %.loopexit, label %5, !dbg !1737, !llvm.loop !1750

.loopexit:                                        ; preds = %5, %10
  %.ph = phi i64 [ -1, %10 ], [ %7, %5 ]
  br label %15, !dbg !1752

15:                                               ; preds = %.loopexit, %2
  %16 = phi i64 [ -1, %2 ], [ %.ph, %.loopexit ]
  ret i64 %16, !dbg !1752
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_invalid(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1753 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1757, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1758, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1759, metadata !DIExpression()), !dbg !1761
  %4 = icmp eq i64 %2, -1, !dbg !1762
  %5 = select i1 %4, ptr @.str.1.52, ptr @.str.2.53, !dbg !1763
  %6 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %5, i32 noundef 5) #41, !dbg !1761
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1760, metadata !DIExpression()), !dbg !1761
  %7 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #41, !dbg !1764
  %8 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #41, !dbg !1764
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %7, ptr noundef %8) #41, !dbg !1764
  ret void, !dbg !1765
}

; Function Attrs: nounwind uwtable
define dso_local void @argmatch_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1766 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1770, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1771, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1772, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1773, metadata !DIExpression()), !dbg !1776
  %4 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3.70, i32 noundef 5) #41, !dbg !1777
  %5 = load ptr, ptr @stderr, align 8, !dbg !1777, !tbaa !909
  %6 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef %5), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1774, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1773, metadata !DIExpression()), !dbg !1776
  %7 = load ptr, ptr %0, align 8, !dbg !1779, !tbaa !909
  %8 = icmp eq ptr %7, null, !dbg !1781
  br i1 %8, label %9, label %.preheader, !dbg !1781

.preheader:                                       ; preds = %3
  br label %21, !dbg !1781

.loopexit:                                        ; preds = %41
  br label %9, !dbg !1782

9:                                                ; preds = %.loopexit, %3
  %10 = load ptr, ptr @stderr, align 8, !dbg !1782, !tbaa !909
  call void @llvm.dbg.value(metadata i32 10, metadata !1783, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata ptr %10, metadata !1823, metadata !DIExpression()), !dbg !1824
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 5, !dbg !1826
  %12 = load ptr, ptr %11, align 8, !dbg !1826, !tbaa !1827
  %13 = getelementptr inbounds %struct._IO_FILE, ptr %10, i64 0, i32 6, !dbg !1826
  %14 = load ptr, ptr %13, align 8, !dbg !1826, !tbaa !1830
  %15 = icmp ult ptr %12, %14, !dbg !1826
  br i1 %15, label %18, label %16, !dbg !1826, !prof !1831

16:                                               ; preds = %9
  %17 = tail call i32 @__overflow(ptr noundef nonnull %10, i32 noundef 10) #41, !dbg !1826
  br label %20, !dbg !1826

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1826
  store ptr %19, ptr %11, align 8, !dbg !1826, !tbaa !1827
  store i8 10, ptr %12, align 1, !dbg !1826, !tbaa !983
  br label %20, !dbg !1826

20:                                               ; preds = %16, %18
  ret void, !dbg !1832

21:                                               ; preds = %.preheader, %41
  %22 = phi ptr [ %45, %41 ], [ %7, %.preheader ]
  %23 = phi i64 [ %43, %41 ], [ 0, %.preheader ]
  %24 = phi ptr [ %42, %41 ], [ null, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1774, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !1773, metadata !DIExpression()), !dbg !1776
  %25 = icmp eq i64 %23, 0, !dbg !1833
  br i1 %25, label %31, label %26, !dbg !1835

26:                                               ; preds = %21
  %27 = mul i64 %23, %2, !dbg !1836
  %28 = getelementptr inbounds i8, ptr %1, i64 %27, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %24, metadata !1702, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr %28, metadata !1707, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %2, metadata !1708, metadata !DIExpression()), !dbg !1838
  %29 = tail call i32 @bcmp(ptr %24, ptr %28, i64 %2), !dbg !1840
  %30 = icmp eq i32 %29, 0, !dbg !1841
  br i1 %30, label %37, label %31, !dbg !1842

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ], !dbg !1843
  %33 = load ptr, ptr @stderr, align 8, !dbg !1845, !tbaa !909
  %34 = tail call ptr @quote(ptr noundef nonnull %22) #41, !dbg !1845
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.4.71, ptr noundef %34) #41, !dbg !1845
  %36 = getelementptr inbounds i8, ptr %1, i64 %32, !dbg !1846
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1773, metadata !DIExpression()), !dbg !1776
  br label %41, !dbg !1847

37:                                               ; preds = %26
  %38 = load ptr, ptr @stderr, align 8, !dbg !1848, !tbaa !909
  %39 = tail call ptr @quote(ptr noundef nonnull %22) #41, !dbg !1848
  %40 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @.str.5.72, ptr noundef %39) #41, !dbg !1848
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi ptr [ %36, %31 ], [ %24, %37 ], !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !1773, metadata !DIExpression()), !dbg !1776
  %43 = add i64 %23, 1, !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !1774, metadata !DIExpression()), !dbg !1778
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43, !dbg !1779
  %45 = load ptr, ptr %44, align 8, !dbg !1779, !tbaa !909
  %46 = icmp eq ptr %45, null, !dbg !1781
  br i1 %46, label %.loopexit, label %21, !dbg !1781, !llvm.loop !1851
}

declare !dbg !1853 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @__xargmatch_internal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i1 noundef %6) local_unnamed_addr #10 !dbg !1856 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1860, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1861, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1862, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1863, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1864, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1865, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata i1 %6, metadata !1866, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1868
  br i1 %6, label %8, label %50, !dbg !1869

8:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1668, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %2, metadata !1669, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %3, metadata !1670, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %4, metadata !1671, metadata !DIExpression()), !dbg !1870
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %9, metadata !1672, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 -1, metadata !1673, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 0, metadata !1674, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, metadata !1675, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1870
  %10 = load ptr, ptr %2, align 8, !dbg !1875, !tbaa !909
  %11 = icmp eq ptr %10, null, !dbg !1876
  br i1 %11, label %69, label %12, !dbg !1876

12:                                               ; preds = %8
  %13 = icmp eq ptr %3, null
  br label %14, !dbg !1876

14:                                               ; preds = %44, %12
  %15 = phi ptr [ %47, %44 ], [ %10, %12 ]
  %16 = phi i64 [ %45, %44 ], [ 0, %12 ]
  %17 = phi i1 [ true, %44 ], [ false, %12 ]
  %18 = phi i64 [ %.lcssa4, %44 ], [ -1, %12 ]
  br label %19, !dbg !1876

19:                                               ; preds = %14, %38
  %20 = phi ptr [ %42, %38 ], [ %15, %14 ]
  %21 = phi i64 [ %40, %38 ], [ %16, %14 ]
  %22 = phi i64 [ %39, %38 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1675, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %22, metadata !1673, metadata !DIExpression()), !dbg !1870
  %23 = tail call i32 @strncmp(ptr noundef nonnull %20, ptr noundef %1, i64 noundef %9) #42, !dbg !1877
  %24 = icmp eq i32 %23, 0, !dbg !1877
  br i1 %24, label %25, label %38, !dbg !1878

25:                                               ; preds = %19
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #42, !dbg !1879
  %27 = icmp eq i64 %26, %9, !dbg !1880
  br i1 %27, label %.loopexit, label %28, !dbg !1881

28:                                               ; preds = %25
  %29 = icmp eq i64 %22, -1, !dbg !1882
  br i1 %29, label %38, label %30, !dbg !1883

30:                                               ; preds = %28
  br i1 %13, label %44, label %31, !dbg !1884

31:                                               ; preds = %30
  %32 = mul i64 %22, %4, !dbg !1885
  %33 = getelementptr inbounds i8, ptr %3, i64 %32, !dbg !1886
  %34 = mul i64 %21, %4, !dbg !1887
  %35 = getelementptr inbounds i8, ptr %3, i64 %34, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %33, metadata !1702, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %35, metadata !1707, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %4, metadata !1708, metadata !DIExpression()), !dbg !1889
  %36 = tail call i32 @bcmp(ptr nonnull %33, ptr nonnull %35, i64 %4), !dbg !1891
  %37 = icmp eq i32 %36, 0, !dbg !1892
  br i1 %37, label %38, label %44, !dbg !1893

38:                                               ; preds = %31, %28, %19
  %39 = phi i64 [ %22, %19 ], [ %22, %31 ], [ %21, %28 ], !dbg !1870
  call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %39, metadata !1673, metadata !DIExpression()), !dbg !1870
  %40 = add i64 %21, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %40, metadata !1675, metadata !DIExpression()), !dbg !1874
  %41 = getelementptr inbounds ptr, ptr %2, i64 %40, !dbg !1875
  %42 = load ptr, ptr %41, align 8, !dbg !1875, !tbaa !909
  %43 = icmp eq ptr %42, null, !dbg !1876
  br i1 %43, label %49, label %19, !dbg !1876, !llvm.loop !1895

44:                                               ; preds = %30, %31
  %.lcssa7 = phi i64 [ %21, %30 ], [ %21, %31 ]
  %.lcssa4 = phi i64 [ %22, %30 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1674, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %.lcssa4, metadata !1673, metadata !DIExpression()), !dbg !1870
  %45 = add i64 %.lcssa7, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %45, metadata !1675, metadata !DIExpression()), !dbg !1874
  %46 = getelementptr inbounds ptr, ptr %2, i64 %45, !dbg !1875
  %47 = load ptr, ptr %46, align 8, !dbg !1875, !tbaa !909
  %48 = icmp eq ptr %47, null, !dbg !1876
  br i1 %48, label %.loopexit1, label %14, !dbg !1876, !llvm.loop !1895

49:                                               ; preds = %38
  %.lcssa11 = phi i1 [ %17, %38 ]
  %.lcssa9 = phi i64 [ %39, %38 ], !dbg !1870
  br i1 %.lcssa11, label %70, label %63, !dbg !1897

50:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1729, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 0, metadata !1731, metadata !DIExpression()), !dbg !1900
  %51 = load ptr, ptr %2, align 8, !dbg !1901, !tbaa !909
  %52 = icmp eq ptr %51, null, !dbg !1902
  br i1 %52, label %69, label %.preheader, !dbg !1902

.preheader:                                       ; preds = %50
  br label %53, !dbg !1902

53:                                               ; preds = %.preheader, %58
  %54 = phi ptr [ %61, %58 ], [ %51, %.preheader ]
  %55 = phi i64 [ %59, %58 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !1731, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr %54, metadata !1738, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %1, metadata !1741, metadata !DIExpression()), !dbg !1903
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %1) #42, !dbg !1905
  %57 = icmp eq i32 %56, 0, !dbg !1906
  br i1 %57, label %.loopexit2, label %58, !dbg !1907

58:                                               ; preds = %53
  %59 = add i64 %55, 1, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %59, metadata !1731, metadata !DIExpression()), !dbg !1900
  %60 = getelementptr inbounds ptr, ptr %2, i64 %59, !dbg !1901
  %61 = load ptr, ptr %60, align 8, !dbg !1901, !tbaa !909
  %62 = icmp eq ptr %61, null, !dbg !1902
  br i1 %62, label %.loopexit3, label %53, !dbg !1902, !llvm.loop !1909

.loopexit:                                        ; preds = %25
  %.lcssa6 = phi i64 [ %21, %25 ]
  br label %63, !dbg !1911

.loopexit2:                                       ; preds = %53
  %.lcssa = phi i64 [ %55, %53 ]
  br label %63, !dbg !1911

63:                                               ; preds = %.loopexit2, %.loopexit, %49
  %64 = phi i64 [ %.lcssa9, %49 ], [ %.lcssa6, %.loopexit ], [ %.lcssa, %.loopexit2 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !1867, metadata !DIExpression()), !dbg !1868
  %65 = freeze i64 %64, !dbg !1911
  %66 = icmp sgt i64 %65, -1, !dbg !1914
  br i1 %66, label %75, label %67, !dbg !1916

67:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %0, metadata !1757, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata ptr %1, metadata !1758, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %64, metadata !1759, metadata !DIExpression()), !dbg !1917
  %68 = icmp eq i64 %65, -1, !dbg !1911
  br i1 %68, label %69, label %70, !dbg !1918

.loopexit3:                                       ; preds = %58
  br label %69, !dbg !1918

69:                                               ; preds = %.loopexit3, %8, %50, %67
  br label %70, !dbg !1918

.loopexit1:                                       ; preds = %44
  br label %70, !dbg !1917

70:                                               ; preds = %.loopexit1, %49, %67, %69
  %71 = phi ptr [ @.str.1.52, %69 ], [ @.str.2.53, %67 ], [ @.str.2.53, %49 ], [ @.str.2.53, %.loopexit1 ]
  %72 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %71, i32 noundef 5) #41, !dbg !1917
  call void @llvm.dbg.value(metadata ptr %72, metadata !1760, metadata !DIExpression()), !dbg !1917
  %73 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #41, !dbg !1919
  %74 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #41, !dbg !1919
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %72, ptr noundef %73, ptr noundef %74) #41, !dbg !1919
  tail call void @argmatch_valid(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1920
  tail call void %5() #41, !dbg !1921
  br label %75, !dbg !1922

75:                                               ; preds = %63, %70
  %76 = phi i64 [ -1, %70 ], [ %65, %63 ], !dbg !1868
  ret i64 %76, !dbg !1923
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @argmatch_to_argument(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #18 !dbg !1924 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1928, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1929, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1930, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1931, metadata !DIExpression()), !dbg !1934
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1932, metadata !DIExpression()), !dbg !1935
  %5 = load ptr, ptr %1, align 8, !dbg !1936, !tbaa !909
  %6 = icmp eq ptr %5, null, !dbg !1938
  br i1 %6, label %21, label %7, !dbg !1938

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1932, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %0, metadata !1702, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata ptr %2, metadata !1707, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %3, metadata !1708, metadata !DIExpression()), !dbg !1939
  %8 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %3), !dbg !1942
  %9 = icmp eq i32 %8, 0, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1932, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1935
  br i1 %9, label %21, label %.preheader, !dbg !1944

.preheader:                                       ; preds = %7
  br label %10, !dbg !1938

10:                                               ; preds = %.preheader, %16
  %11 = phi i64 [ %12, %16 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1932, metadata !DIExpression()), !dbg !1935
  %12 = add i64 %11, 1, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1932, metadata !DIExpression()), !dbg !1935
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1932, metadata !DIExpression()), !dbg !1935
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1936
  %14 = load ptr, ptr %13, align 8, !dbg !1936, !tbaa !909
  %15 = icmp eq ptr %14, null, !dbg !1938
  br i1 %15, label %.loopexit, label %16, !dbg !1938, !llvm.loop !1946

16:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1932, metadata !DIExpression()), !dbg !1935
  %17 = mul i64 %12, %3, !dbg !1948
  %18 = getelementptr inbounds i8, ptr %2, i64 %17, !dbg !1949
  call void @llvm.dbg.value(metadata ptr %0, metadata !1702, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata ptr %18, metadata !1707, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 %3, metadata !1708, metadata !DIExpression()), !dbg !1939
  %19 = tail call i32 @bcmp(ptr %0, ptr %18, i64 %3), !dbg !1942
  %20 = icmp eq i32 %19, 0, !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1932, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1935
  br i1 %20, label %.loopexit, label %10, !dbg !1944, !llvm.loop !1946

.loopexit:                                        ; preds = %10, %16
  %.ph = phi ptr [ %14, %16 ], [ null, %10 ]
  br label %21, !dbg !1950

21:                                               ; preds = %.loopexit, %7, %4
  %22 = phi ptr [ null, %4 ], [ %5, %7 ], [ %.ph, %.loopexit ], !dbg !1936
  ret ptr %22, !dbg !1950
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !1951 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1953, metadata !DIExpression()), !dbg !1954
  store ptr %0, ptr @file_name, align 8, !dbg !1955, !tbaa !909
  ret void, !dbg !1956
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #19 !dbg !1957 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1961, metadata !DIExpression()), !dbg !1962
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1963, !tbaa !1227
  ret void, !dbg !1964
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1965 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1970, !tbaa !909
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !1971
  %3 = icmp eq i32 %2, 0, !dbg !1972
  br i1 %3, label %22, label %4, !dbg !1973

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1974, !tbaa !1227, !range !1263, !noundef !942
  %6 = icmp eq i8 %5, 0, !dbg !1974
  br i1 %6, label %11, label %7, !dbg !1975

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !1976
  %9 = load i32, ptr %8, align 4, !dbg !1976, !tbaa !974
  %10 = icmp eq i32 %9, 32, !dbg !1977
  br i1 %10, label %22, label %11, !dbg !1978

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1.78, i32 noundef 5) #41, !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1967, metadata !DIExpression()), !dbg !1980
  %13 = load ptr, ptr @file_name, align 8, !dbg !1981, !tbaa !909
  %14 = icmp eq ptr %13, null, !dbg !1981
  %15 = tail call ptr @__errno_location() #44, !dbg !1983
  %16 = load i32, ptr %15, align 4, !dbg !1983, !tbaa !974
  br i1 %14, label %19, label %17, !dbg !1984

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !1985
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.79, ptr noundef %18, ptr noundef %12) #41, !dbg !1985
  br label %20, !dbg !1985

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.80, ptr noundef %12) #41, !dbg !1986
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1987, !tbaa !974
  tail call void @_exit(i32 noundef %21) #43, !dbg !1988
  unreachable, !dbg !1988

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1989, !tbaa !909
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !1991
  %25 = icmp eq i32 %24, 0, !dbg !1992
  br i1 %25, label %28, label %26, !dbg !1993

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1994, !tbaa !974
  tail call void @_exit(i32 noundef %27) #43, !dbg !1995
  unreachable, !dbg !1995

28:                                               ; preds = %22
  ret void, !dbg !1996
}

; Function Attrs: noreturn
declare !dbg !1997 void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #21 !dbg !1998 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2002, metadata !DIExpression()), !dbg !2006
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2003, metadata !DIExpression()), !dbg !2006
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2004, metadata !DIExpression()), !dbg !2006
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2005, metadata !DIExpression(DW_OP_deref)), !dbg !2006
  tail call fastcc void @flush_stdout(), !dbg !2007
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2008, !tbaa !909
  %7 = icmp eq ptr %6, null, !dbg !2008
  br i1 %7, label %9, label %8, !dbg !2010

8:                                                ; preds = %4
  tail call void %6() #41, !dbg !2011
  br label %13, !dbg !2011

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2012, !tbaa !909
  %11 = tail call ptr @getprogname() #42, !dbg !2012
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef %11) #41, !dbg !2012
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2014, !tbaa.struct !2015
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2014
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2014
  ret void, !dbg !2016
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2017 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2019, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i32 1, metadata !2021, metadata !DIExpression()), !dbg !2024
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2027
  %2 = icmp slt i32 %1, 0, !dbg !2028
  br i1 %2, label %6, label %3, !dbg !2029

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2030, !tbaa !909
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2030
  br label %6, !dbg !2030

6:                                                ; preds = %3, %0
  ret void, !dbg !2031
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2032 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2038
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2034, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2035, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2036, metadata !DIExpression()), !dbg !2039
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2037, metadata !DIExpression(DW_OP_deref)), !dbg !2039
  %7 = load ptr, ptr @stderr, align 8, !dbg !2040, !tbaa !909
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2041, !noalias !2085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2089
  call void @llvm.dbg.value(metadata ptr %7, metadata !2081, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %2, metadata !2082, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr poison, metadata !2083, metadata !DIExpression(DW_OP_deref)), !dbg !2090
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #41, !dbg !2041
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2041, !noalias !2085
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2091, !tbaa !974
  %10 = add i32 %9, 1, !dbg !2091
  store i32 %10, ptr @error_message_count, align 4, !dbg !2091, !tbaa !974
  %11 = icmp eq i32 %1, 0, !dbg !2092
  br i1 %11, label %21, label %12, !dbg !2094

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2095, metadata !DIExpression(), metadata !2038, metadata ptr %5, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i32 %1, metadata !2098, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2105
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %13, metadata !2099, metadata !DIExpression()), !dbg !2103
  %14 = icmp eq ptr %13, null, !dbg !2107
  br i1 %14, label %15, label %17, !dbg !2109

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.82, ptr noundef nonnull @.str.5.83, i32 noundef 5) #41, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %16, metadata !2099, metadata !DIExpression()), !dbg !2103
  br label %17, !dbg !2111

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2103
  call void @llvm.dbg.value(metadata ptr %18, metadata !2099, metadata !DIExpression()), !dbg !2103
  %19 = load ptr, ptr @stderr, align 8, !dbg !2112, !tbaa !909
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.84, ptr noundef %18) #41, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2113
  br label %21, !dbg !2114

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2115, !tbaa !909
  call void @llvm.dbg.value(metadata i32 10, metadata !2116, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata ptr %22, metadata !2121, metadata !DIExpression()), !dbg !2122
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2124
  %24 = load ptr, ptr %23, align 8, !dbg !2124, !tbaa !1827
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2124
  %26 = load ptr, ptr %25, align 8, !dbg !2124, !tbaa !1830
  %27 = icmp ult ptr %24, %26, !dbg !2124
  br i1 %27, label %30, label %28, !dbg !2124, !prof !1831

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #41, !dbg !2124
  br label %32, !dbg !2124

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2124
  store ptr %31, ptr %23, align 8, !dbg !2124, !tbaa !1827
  store i8 10, ptr %24, align 1, !dbg !2124, !tbaa !983
  br label %32, !dbg !2124

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2125, !tbaa !909
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #41, !dbg !2125
  %35 = icmp eq i32 %0, 0, !dbg !2126
  br i1 %35, label %37, label %36, !dbg !2128

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #43, !dbg !2129
  unreachable, !dbg !2129

37:                                               ; preds = %32
  ret void, !dbg !2130
}

declare !dbg !2131 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2134 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2137 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2140 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2144 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2151, metadata !DIExpression(), metadata !2152, metadata ptr %4, metadata !DIExpression()), !dbg !2153
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2149, metadata !DIExpression()), !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2150, metadata !DIExpression()), !dbg !2153
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41, !dbg !2154
  call void @llvm.va_start(ptr nonnull %4), !dbg !2155
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !2156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2156, !tbaa.struct !2015
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #47, !dbg !2156
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !2156
  call void @llvm.va_end(ptr nonnull %4), !dbg !2157
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41, !dbg !2158
  ret void, !dbg !2158
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #21 !dbg !498 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !514, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !515, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !516, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !517, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !518, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !519, metadata !DIExpression(DW_OP_deref)), !dbg !2159
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2160, !tbaa !974
  %9 = icmp eq i32 %8, 0, !dbg !2160
  br i1 %9, label %24, label %10, !dbg !2162

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2163, !tbaa !974
  %12 = icmp eq i32 %11, %3, !dbg !2166
  br i1 %12, label %13, label %23, !dbg !2167

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2168, !tbaa !909
  %15 = icmp eq ptr %14, %2, !dbg !2169
  br i1 %15, label %37, label %16, !dbg !2170

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2171
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2172
  br i1 %19, label %20, label %23, !dbg !2172

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2173
  %22 = icmp eq i32 %21, 0, !dbg !2174
  br i1 %22, label %37, label %23, !dbg !2175

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2176, !tbaa !909
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2177, !tbaa !974
  br label %24, !dbg !2178

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2179
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2180, !tbaa !909
  %26 = icmp eq ptr %25, null, !dbg !2180
  br i1 %26, label %28, label %27, !dbg !2182

27:                                               ; preds = %24
  tail call void %25() #41, !dbg !2183
  br label %32, !dbg !2183

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2184, !tbaa !909
  %30 = tail call ptr @getprogname() #42, !dbg !2184
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.87, ptr noundef %30) #41, !dbg !2184
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2186, !tbaa !909
  %34 = icmp eq ptr %2, null, !dbg !2186
  %35 = select i1 %34, ptr @.str.3.88, ptr @.str.2.89, !dbg !2186
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #41, !dbg !2186
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2187, !tbaa.struct !2015
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2187
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2187
  br label %37, !dbg !2188

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2188
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2189 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2199
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2198, metadata !DIExpression(), metadata !2199, metadata ptr %6, metadata !DIExpression()), !dbg !2200
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2193, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2194, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2195, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2196, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !2201
  call void @llvm.va_start(ptr nonnull %6), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #41, !dbg !2203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2203, !tbaa.struct !2015
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #47, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #41, !dbg !2203
  call void @llvm.va_end(ptr nonnull %6), !dbg !2204
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !2205
  ret void, !dbg !2205
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2206 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2212, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2213, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2214, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2215, metadata !DIExpression()), !dbg !2216
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2217
  ret void, !dbg !2218
}

; Function Attrs: nounwind
declare !dbg !2219 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2222 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2260, metadata !DIExpression()), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2261, metadata !DIExpression()), !dbg !2262
  %3 = icmp eq ptr %0, null, !dbg !2263
  br i1 %3, label %7, label %4, !dbg !2265

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %5, metadata !2212, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 0, metadata !2214, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %1, metadata !2215, metadata !DIExpression()), !dbg !2267
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2269
  br label %7, !dbg !2270

7:                                                ; preds = %4, %2
  ret void, !dbg !2271
}

; Function Attrs: nofree nounwind
declare !dbg !2272 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2275 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !2296
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2283, metadata !DIExpression(), metadata !2296, metadata ptr %3, metadata !DIExpression()), !dbg !2297
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2279, metadata !DIExpression()), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2280, metadata !DIExpression()), !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression()), !dbg !2298
  %4 = and i32 %1, 64, !dbg !2299
  %5 = icmp eq i32 %4, 0, !dbg !2299
  br i1 %5, label %24, label %6, !dbg !2300

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41, !dbg !2301
  call void @llvm.va_start(ptr nonnull %3), !dbg !2302
  %7 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !2303
  %8 = load i32, ptr %7, align 8, !dbg !2303
  %9 = icmp sgt i32 %8, -1, !dbg !2303
  br i1 %9, label %18, label %10, !dbg !2303

10:                                               ; preds = %6
  %11 = add nsw i32 %8, 8, !dbg !2303
  store i32 %11, ptr %7, align 8, !dbg !2303, !DIAssignID !2304
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2283, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !2304, metadata ptr %7, metadata !DIExpression()), !dbg !2297
  %12 = icmp ult i32 %8, -7, !dbg !2303
  br i1 %12, label %13, label %18, !dbg !2303

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !2303
  %15 = load ptr, ptr %14, align 8, !dbg !2303
  %16 = sext i32 %8 to i64, !dbg !2303
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2303
  br label %21, !dbg !2303

18:                                               ; preds = %10, %6
  %19 = load ptr, ptr %3, align 8, !dbg !2303
  %20 = getelementptr inbounds i8, ptr %19, i64 8, !dbg !2303
  store ptr %20, ptr %3, align 8, !dbg !2303, !DIAssignID !2305
  call void @llvm.dbg.assign(metadata ptr %20, metadata !2283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !2305, metadata ptr %3, metadata !DIExpression()), !dbg !2297
  br label %21, !dbg !2303

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %17, %13 ], [ %19, %18 ], !dbg !2303
  %23 = load i32, ptr %22, align 8, !dbg !2303
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !2281, metadata !DIExpression()), !dbg !2298
  call void @llvm.va_end(ptr nonnull %3), !dbg !2306
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41, !dbg !2307
  br label %24, !dbg !2308

24:                                               ; preds = %21, %2
  %25 = phi i32 [ %23, %21 ], [ 0, %2 ], !dbg !2298
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2281, metadata !DIExpression()), !dbg !2298
  %26 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %25) #41, !dbg !2309
  %27 = call i32 @fd_safer(i32 noundef %26) #41, !dbg !2310
  ret i32 %27, !dbg !2311
}

; Function Attrs: nofree
declare !dbg !2312 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #24 !dbg !2313 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2316, !tbaa !909
  ret ptr %1, !dbg !2317
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #15 !dbg !2318 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !2348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2324, metadata !DIExpression(), metadata !2348, metadata ptr %2, metadata !DIExpression()), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2321, metadata !DIExpression()), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2323, metadata !DIExpression()), !dbg !2349
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #41, !dbg !2350
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #41, !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2347, metadata !DIExpression()), !dbg !2349
  %4 = icmp eq i32 %3, 0, !dbg !2352
  br i1 %4, label %5, label %15, !dbg !2354

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !2355
  %7 = load i32, ptr %6, align 4, !dbg !2355, !tbaa !2356
  %8 = icmp ult i32 %7, 2, !dbg !2359
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !2360
  %10 = load i32, ptr %9, align 8, !dbg !2360
  %11 = and i32 %10, 61440, !dbg !2360
  %12 = icmp eq i32 %11, 4096, !dbg !2360
  %13 = select i1 %8, i1 %12, i1 false, !dbg !2360
  %14 = zext i1 %13 to i32, !dbg !2360
  br label %15, !dbg !2361

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !2349
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #41, !dbg !2362
  ret i32 %16, !dbg !2362
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #25 !dbg !2363 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2368
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #42, !dbg !2369
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2366, metadata !DIExpression()), !dbg !2368
  %3 = icmp eq ptr %2, null, !dbg !2370
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2370
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2370
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2367, metadata !DIExpression()), !dbg !2368
  %6 = ptrtoint ptr %5 to i64, !dbg !2371
  %7 = ptrtoint ptr %0 to i64, !dbg !2371
  %8 = sub i64 %6, %7, !dbg !2371
  %9 = icmp sgt i64 %8, 6, !dbg !2373
  br i1 %9, label %10, label %19, !dbg !2374

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2375
  call void @llvm.dbg.value(metadata ptr %11, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 7, metadata !2380, metadata !DIExpression()), !dbg !2381
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.104, i64 7), !dbg !2383
  %13 = icmp eq i32 %12, 0, !dbg !2384
  br i1 %13, label %14, label %19, !dbg !2385

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2365, metadata !DIExpression()), !dbg !2368
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.105, i64 noundef 3) #42, !dbg !2386
  %16 = icmp eq i32 %15, 0, !dbg !2389
  %17 = select i1 %16, i64 3, i64 0, !dbg !2390
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2390
  br label %19, !dbg !2390

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2368
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2367, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2365, metadata !DIExpression()), !dbg !2368
  store ptr %20, ptr @program_name, align 8, !dbg !2391, !tbaa !909
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2392, !tbaa !909
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2393, !tbaa !909
  ret void, !dbg !2394
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2395 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !550 {
  %3 = alloca i32, align 4, !DIAssignID !2396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !560, metadata !DIExpression(), metadata !2396, metadata ptr %3, metadata !DIExpression()), !dbg !2397
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !565, metadata !DIExpression(), metadata !2398, metadata ptr %4, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !557, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !558, metadata !DIExpression()), !dbg !2397
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2399
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !559, metadata !DIExpression()), !dbg !2397
  %6 = icmp eq ptr %5, %0, !dbg !2400
  br i1 %6, label %7, label %14, !dbg !2402

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41, !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41, !dbg !2404
  call void @llvm.dbg.value(metadata ptr %4, metadata !2405, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata ptr %4, metadata !2414, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 0, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i64 8, metadata !2421, metadata !DIExpression()), !dbg !2422
  store i64 0, ptr %4, align 8, !dbg !2424
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #41, !dbg !2425
  %9 = icmp eq i64 %8, 2, !dbg !2427
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2428
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2397
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41, !dbg !2429
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41, !dbg !2429
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2397
  ret ptr %15, !dbg !2429
}

; Function Attrs: nounwind
declare !dbg !2430 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2436 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2441, metadata !DIExpression()), !dbg !2444
  %2 = tail call ptr @__errno_location() #44, !dbg !2445
  %3 = load i32, ptr %2, align 4, !dbg !2445, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2442, metadata !DIExpression()), !dbg !2444
  %4 = icmp eq ptr %0, null, !dbg !2446
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2446
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2447
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i32 %3, ptr %2, align 4, !dbg !2448, !tbaa !974
  ret ptr %6, !dbg !2449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #26 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2457
  %2 = icmp eq ptr %0, null, !dbg !2458
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2458
  %4 = load i32, ptr %3, align 8, !dbg !2459, !tbaa !2460
  ret i32 %4, !dbg !2462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2468, metadata !DIExpression()), !dbg !2469
  %3 = icmp eq ptr %0, null, !dbg !2470
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2470
  store i32 %1, ptr %4, align 8, !dbg !2471, !tbaa !2460
  ret void, !dbg !2472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #28 !dbg !2473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2477, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2478, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2479, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2480, metadata !DIExpression()), !dbg !2485
  %4 = icmp eq ptr %0, null, !dbg !2486
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2486
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2487
  %7 = lshr i8 %1, 5, !dbg !2488
  %8 = zext nneg i8 %7 to i64, !dbg !2488
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2489
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2481, metadata !DIExpression()), !dbg !2485
  %10 = and i8 %1, 31, !dbg !2490
  %11 = zext nneg i8 %10 to i32, !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2483, metadata !DIExpression()), !dbg !2485
  %12 = load i32, ptr %9, align 4, !dbg !2491, !tbaa !974
  %13 = lshr i32 %12, %11, !dbg !2492
  %14 = and i32 %13, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2484, metadata !DIExpression()), !dbg !2485
  %15 = xor i32 %13, %2, !dbg !2494
  %16 = and i32 %15, 1, !dbg !2494
  %17 = shl nuw i32 %16, %11, !dbg !2495
  %18 = xor i32 %17, %12, !dbg !2496
  store i32 %18, ptr %9, align 4, !dbg !2496, !tbaa !974
  ret i32 %14, !dbg !2497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #28 !dbg !2498 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2502, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2503, metadata !DIExpression()), !dbg !2505
  %3 = icmp eq ptr %0, null, !dbg !2506
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !2505
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2509
  %6 = load i32, ptr %5, align 4, !dbg !2509, !tbaa !2510
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i32 %1, ptr %5, align 4, !dbg !2511, !tbaa !2510
  ret i32 %6, !dbg !2512
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2513 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2520
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !2520
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !2520
  %4 = icmp eq ptr %0, null, !dbg !2521
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2523
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !2520
  store i32 10, ptr %5, align 8, !dbg !2524, !tbaa !2460
  %6 = icmp ne ptr %1, null, !dbg !2525
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2527
  br i1 %8, label %10, label %9, !dbg !2527

9:                                                ; preds = %3
  tail call void @abort() #43, !dbg !2528
  unreachable, !dbg !2528

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2529
  store ptr %1, ptr %11, align 8, !dbg !2530, !tbaa !2531
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2532
  store ptr %2, ptr %12, align 8, !dbg !2533, !tbaa !2534
  ret void, !dbg !2535
}

; Function Attrs: noreturn nounwind
declare !dbg !2536 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2537 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2543, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2544, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2545, metadata !DIExpression()), !dbg !2549
  %6 = icmp eq ptr %4, null, !dbg !2550
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2550
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2546, metadata !DIExpression()), !dbg !2549
  %8 = tail call ptr @__errno_location() #44, !dbg !2551
  %9 = load i32, ptr %8, align 4, !dbg !2551, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2547, metadata !DIExpression()), !dbg !2549
  %10 = load i32, ptr %7, align 8, !dbg !2552, !tbaa !2460
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2553
  %12 = load i32, ptr %11, align 4, !dbg !2553, !tbaa !2510
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2554
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2555
  %15 = load ptr, ptr %14, align 8, !dbg !2555, !tbaa !2531
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2556
  %17 = load ptr, ptr %16, align 8, !dbg !2556, !tbaa !2534
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2557
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2548, metadata !DIExpression()), !dbg !2549
  store i32 %9, ptr %8, align 4, !dbg !2558, !tbaa !974
  ret i64 %18, !dbg !2559
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2560 {
  %10 = alloca i32, align 4, !DIAssignID !2628
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2629
  %12 = alloca i32, align 4, !DIAssignID !2630
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2631
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2632
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2606, metadata !DIExpression(), metadata !2632, metadata ptr %14, metadata !DIExpression()), !dbg !2633
  %15 = alloca i32, align 4, !DIAssignID !2634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2609, metadata !DIExpression(), metadata !2634, metadata ptr %15, metadata !DIExpression()), !dbg !2635
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2566, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2568, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2569, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2570, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2571, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2572, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2573, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2574, metadata !DIExpression()), !dbg !2636
  %16 = tail call i64 @__ctype_get_mb_cur_max() #41, !dbg !2637
  %17 = icmp eq i64 %16, 1, !dbg !2638
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2575, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2579, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2581, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2636
  %18 = and i32 %5, 2, !dbg !2639
  %19 = icmp ne i32 %18, 0, !dbg !2639
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2639

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2640
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2641
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2642
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2579, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2569, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2574, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2573, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2570, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2584), !dbg !2643
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
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
  ], !dbg !2644

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2570, metadata !DIExpression()), !dbg !2636
  br label %101, !dbg !2645

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2570, metadata !DIExpression()), !dbg !2636
  br i1 %36, label %101, label %42, !dbg !2645

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2646
  br i1 %43, label %101, label %44, !dbg !2650

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2646, !tbaa !983
  br label %101, !dbg !2646

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !649, metadata !DIExpression(), metadata !2630, metadata ptr %12, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.assign(metadata i1 undef, metadata !650, metadata !DIExpression(), metadata !2631, metadata ptr %13, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr @.str.11.118, metadata !646, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i32 %28, metadata !647, metadata !DIExpression()), !dbg !2651
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.11.118, i32 noundef 5) #41, !dbg !2655
  call void @llvm.dbg.value(metadata ptr %46, metadata !648, metadata !DIExpression()), !dbg !2651
  %47 = icmp eq ptr %46, @.str.11.118, !dbg !2656
  br i1 %47, label %48, label %57, !dbg !2658

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2659
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2660
  call void @llvm.dbg.value(metadata ptr %13, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %13, metadata !2669, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 8, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i64 0, ptr %13, align 8, !dbg !2676
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2677
  %50 = icmp eq i64 %49, 3, !dbg !2679
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2680
  %54 = icmp eq i32 %28, 9, !dbg !2680
  %55 = select i1 %54, ptr @.str.10.120, ptr @.str.12.121, !dbg !2680
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2680
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2681
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2681
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2651
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2573, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !649, metadata !DIExpression(), metadata !2628, metadata ptr %10, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.assign(metadata i1 undef, metadata !650, metadata !DIExpression(), metadata !2629, metadata ptr %11, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr @.str.12.121, metadata !646, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %28, metadata !647, metadata !DIExpression()), !dbg !2682
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.12.121, i32 noundef 5) #41, !dbg !2684
  call void @llvm.dbg.value(metadata ptr %59, metadata !648, metadata !DIExpression()), !dbg !2682
  %60 = icmp eq ptr %59, @.str.12.121, !dbg !2685
  br i1 %60, label %61, label %70, !dbg !2686

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2687
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2688
  call void @llvm.dbg.value(metadata ptr %11, metadata !2661, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %11, metadata !2669, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 8, metadata !2673, metadata !DIExpression()), !dbg !2691
  store i64 0, ptr %11, align 8, !dbg !2693
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2694
  %63 = icmp eq i64 %62, 3, !dbg !2695
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2696
  %67 = icmp eq i32 %28, 9, !dbg !2696
  %68 = select i1 %67, ptr @.str.10.120, ptr @.str.12.121, !dbg !2696
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2696
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2697
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2574, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2573, metadata !DIExpression()), !dbg !2636
  br i1 %36, label %88, label %73, !dbg !2698

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2586, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2636
  %74 = load i8, ptr %71, align 1, !dbg !2700, !tbaa !983
  %75 = icmp eq i8 %74, 0, !dbg !2702
  br i1 %75, label %88, label %.preheader11, !dbg !2702

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2702

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2586, metadata !DIExpression()), !dbg !2699
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2576, metadata !DIExpression()), !dbg !2636
  %80 = icmp ult i64 %79, %39, !dbg !2703
  br i1 %80, label %81, label %83, !dbg !2706

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2703
  store i8 %77, ptr %82, align 1, !dbg !2703, !tbaa !983
  br label %83, !dbg !2703

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2576, metadata !DIExpression()), !dbg !2636
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2707
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2586, metadata !DIExpression()), !dbg !2699
  %86 = load i8, ptr %85, align 1, !dbg !2700, !tbaa !983
  %87 = icmp eq i8 %86, 0, !dbg !2702
  br i1 %87, label %.loopexit12, label %76, !dbg !2702, !llvm.loop !2708

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2706
  br label %88, !dbg !2710

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2578, metadata !DIExpression()), !dbg !2636
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #42, !dbg !2710
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2579, metadata !DIExpression()), !dbg !2636
  br label %101, !dbg !2712

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2636
  br label %101, !dbg !2713

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2570, metadata !DIExpression()), !dbg !2636
  br label %101, !dbg !2714

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2636
  br i1 %36, label %101, label %95, !dbg !2715

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2570, metadata !DIExpression()), !dbg !2636
  br i1 %36, label %101, label %95, !dbg !2714

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2716
  br i1 %97, label %101, label %98, !dbg !2720

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2716, !tbaa !983
  br label %101, !dbg !2716

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2636
  br label %101, !dbg !2721

100:                                              ; preds = %27
  call void @abort() #43, !dbg !2722
  unreachable, !dbg !2722

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2711
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.120, %42 ], [ @.str.10.120, %44 ], [ @.str.10.120, %41 ], [ %33, %27 ], [ @.str.12.121, %95 ], [ @.str.12.121, %98 ], [ @.str.12.121, %94 ], [ @.str.10.120, %40 ], [ @.str.12.121, %91 ], [ @.str.12.121, %92 ], [ @.str.12.121, %93 ], !dbg !2636
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2636
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2579, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2574, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2573, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2570, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2591, metadata !DIExpression()), !dbg !2723
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
  br label %121, !dbg !2724

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2711
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2640
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2725
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2569, metadata !DIExpression()), !dbg !2636
  %130 = icmp eq i64 %122, -1, !dbg !2726
  br i1 %130, label %131, label %135, !dbg !2727

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2728
  %133 = load i8, ptr %132, align 1, !dbg !2728, !tbaa !983
  %134 = icmp eq i8 %133, 0, !dbg !2729
  br i1 %134, label %573, label %137, !dbg !2730

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2731
  br i1 %136, label %573, label %137, !dbg !2730

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2732
  br i1 %113, label %138, label %151, !dbg !2733

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2735
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2736
  br i1 %140, label %141, label %143, !dbg !2736

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2569, metadata !DIExpression()), !dbg !2636
  br label %143, !dbg !2738

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2738
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2569, metadata !DIExpression()), !dbg !2636
  %145 = icmp ugt i64 %139, %144, !dbg !2739
  br i1 %145, label %151, label %146, !dbg !2740

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2741
  call void @llvm.dbg.value(metadata ptr %147, metadata !2742, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %106, metadata !2745, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %107, metadata !2746, metadata !DIExpression()), !dbg !2747
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2749
  %149 = icmp eq i32 %148, 0, !dbg !2750
  %150 = and i1 %149, %109, !dbg !2751
  br i1 %150, label %.loopexit7, label %151, !dbg !2751

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2569, metadata !DIExpression()), !dbg !2636
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2752
  %155 = load i8, ptr %154, align 1, !dbg !2752, !tbaa !983
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2598, metadata !DIExpression()), !dbg !2732
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
  ], !dbg !2753

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2754

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2755

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2732
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2759
  br i1 %159, label %176, label %160, !dbg !2759

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2761
  br i1 %161, label %162, label %164, !dbg !2765

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2761
  store i8 39, ptr %163, align 1, !dbg !2761, !tbaa !983
  br label %164, !dbg !2761

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2576, metadata !DIExpression()), !dbg !2636
  %166 = icmp ult i64 %165, %129, !dbg !2766
  br i1 %166, label %167, label %169, !dbg !2769

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2766
  store i8 36, ptr %168, align 1, !dbg !2766, !tbaa !983
  br label %169, !dbg !2766

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2576, metadata !DIExpression()), !dbg !2636
  %171 = icmp ult i64 %170, %129, !dbg !2770
  br i1 %171, label %172, label %174, !dbg !2773

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2770
  store i8 39, ptr %173, align 1, !dbg !2770, !tbaa !983
  br label %174, !dbg !2770

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2773
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %176, !dbg !2774

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2636
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2576, metadata !DIExpression()), !dbg !2636
  %179 = icmp ult i64 %177, %129, !dbg !2775
  br i1 %179, label %180, label %182, !dbg !2778

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2775
  store i8 92, ptr %181, align 1, !dbg !2775, !tbaa !983
  br label %182, !dbg !2775

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2576, metadata !DIExpression()), !dbg !2636
  br i1 %110, label %184, label %476, !dbg !2779

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2781
  %186 = icmp ult i64 %185, %152, !dbg !2782
  br i1 %186, label %187, label %433, !dbg !2783

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2784
  %189 = load i8, ptr %188, align 1, !dbg !2784, !tbaa !983
  %190 = add i8 %189, -48, !dbg !2785
  %191 = icmp ult i8 %190, 10, !dbg !2785
  br i1 %191, label %192, label %433, !dbg !2785

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2786
  br i1 %193, label %194, label %196, !dbg !2790

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2786
  store i8 48, ptr %195, align 1, !dbg !2786, !tbaa !983
  br label %196, !dbg !2786

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2790
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2576, metadata !DIExpression()), !dbg !2636
  %198 = icmp ult i64 %197, %129, !dbg !2791
  br i1 %198, label %199, label %201, !dbg !2794

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2791
  store i8 48, ptr %200, align 1, !dbg !2791, !tbaa !983
  br label %201, !dbg !2791

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2576, metadata !DIExpression()), !dbg !2636
  br label %433, !dbg !2795

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2796

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2797

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2798

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2800

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2802
  %209 = icmp ult i64 %208, %152, !dbg !2803
  br i1 %209, label %210, label %433, !dbg !2804

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2805
  %212 = load i8, ptr %211, align 1, !dbg !2805, !tbaa !983
  %213 = icmp eq i8 %212, 63, !dbg !2806
  br i1 %213, label %214, label %433, !dbg !2807

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2808
  %216 = load i8, ptr %215, align 1, !dbg !2808, !tbaa !983
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
  ], !dbg !2809

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2810

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2591, metadata !DIExpression()), !dbg !2723
  %219 = icmp ult i64 %123, %129, !dbg !2812
  br i1 %219, label %220, label %222, !dbg !2815

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2812
  store i8 63, ptr %221, align 1, !dbg !2812, !tbaa !983
  br label %222, !dbg !2812

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2815
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2576, metadata !DIExpression()), !dbg !2636
  %224 = icmp ult i64 %223, %129, !dbg !2816
  br i1 %224, label %225, label %227, !dbg !2819

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2816
  store i8 34, ptr %226, align 1, !dbg !2816, !tbaa !983
  br label %227, !dbg !2816

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2819
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2576, metadata !DIExpression()), !dbg !2636
  %229 = icmp ult i64 %228, %129, !dbg !2820
  br i1 %229, label %230, label %232, !dbg !2823

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2820
  store i8 34, ptr %231, align 1, !dbg !2820, !tbaa !983
  br label %232, !dbg !2820

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2823
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2576, metadata !DIExpression()), !dbg !2636
  %234 = icmp ult i64 %233, %129, !dbg !2824
  br i1 %234, label %235, label %237, !dbg !2827

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2824
  store i8 63, ptr %236, align 1, !dbg !2824, !tbaa !983
  br label %237, !dbg !2824

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2576, metadata !DIExpression()), !dbg !2636
  br label %433, !dbg !2828

239:                                              ; preds = %151
  br label %249, !dbg !2829

240:                                              ; preds = %151
  br label %249, !dbg !2830

241:                                              ; preds = %151
  br label %247, !dbg !2831

242:                                              ; preds = %151
  br label %247, !dbg !2832

243:                                              ; preds = %151
  br label %249, !dbg !2833

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2834

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2835

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2838

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2840
  call void @llvm.dbg.label(metadata !2599), !dbg !2841
  br i1 %118, label %.loopexit8, label %249, !dbg !2842

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2840
  call void @llvm.dbg.label(metadata !2602), !dbg !2844
  br i1 %108, label %487, label %444, !dbg !2845

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2846

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2847, !tbaa !983
  %254 = icmp eq i8 %253, 0, !dbg !2849
  br i1 %254, label %255, label %433, !dbg !2850

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2851
  br i1 %256, label %257, label %433, !dbg !2853

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2732
  br label %258, !dbg !2854

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2732
  br i1 %115, label %260, label %433, !dbg !2855

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2857

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2732
  br i1 %115, label %262, label %433, !dbg !2858

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2859

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2862
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2864
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2864
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2577, metadata !DIExpression()), !dbg !2636
  %269 = icmp ult i64 %123, %268, !dbg !2865
  br i1 %269, label %270, label %272, !dbg !2868

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2865
  store i8 39, ptr %271, align 1, !dbg !2865, !tbaa !983
  br label %272, !dbg !2865

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2576, metadata !DIExpression()), !dbg !2636
  %274 = icmp ult i64 %273, %268, !dbg !2869
  br i1 %274, label %275, label %277, !dbg !2872

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2869
  store i8 92, ptr %276, align 1, !dbg !2869, !tbaa !983
  br label %277, !dbg !2869

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2872
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2576, metadata !DIExpression()), !dbg !2636
  %279 = icmp ult i64 %278, %268, !dbg !2873
  br i1 %279, label %280, label %282, !dbg !2876

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2873
  store i8 39, ptr %281, align 1, !dbg !2873, !tbaa !983
  br label %282, !dbg !2873

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2876
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %433, !dbg !2877

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2878

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2603, metadata !DIExpression()), !dbg !2879
  %286 = tail call ptr @__ctype_b_loc() #44, !dbg !2880
  %287 = load ptr, ptr %286, align 8, !dbg !2880, !tbaa !909
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2880
  %290 = load i16, ptr %289, align 2, !dbg !2880, !tbaa !1015
  %291 = and i16 %290, 16384, !dbg !2880
  %292 = icmp ne i16 %291, 0, !dbg !2882
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2879
  br label %334, !dbg !2883

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %14, metadata !2661, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %14, metadata !2669, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 8, metadata !2673, metadata !DIExpression()), !dbg !2887
  store i64 0, ptr %14, align 8, !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2605, metadata !DIExpression()), !dbg !2879
  %294 = icmp eq i64 %152, -1, !dbg !2890
  br i1 %294, label %295, label %297, !dbg !2892

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2569, metadata !DIExpression()), !dbg !2636
  br label %297, !dbg !2894

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !2895
  %299 = sub i64 %298, %128, !dbg !2896
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #41, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2613, metadata !DIExpression()), !dbg !2635
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2898

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2879
  %302 = icmp ult i64 %128, %298, !dbg !2899
  br i1 %302, label %.preheader5, label %329, !dbg !2901

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2902

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2879
  br label %329, !dbg !2903

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2603, metadata !DIExpression()), !dbg !2879
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2905
  %308 = load i8, ptr %307, align 1, !dbg !2905, !tbaa !983
  %309 = icmp eq i8 %308, 0, !dbg !2901
  br i1 %309, label %.loopexit6, label %310, !dbg !2902

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2603, metadata !DIExpression()), !dbg !2879
  %312 = add i64 %311, %128, !dbg !2907
  %313 = icmp eq i64 %311, %299, !dbg !2899
  br i1 %313, label %.loopexit6, label %304, !dbg !2901, !llvm.loop !2908

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2614, metadata !DIExpression()), !dbg !2909
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2910
  %317 = and i1 %316, %109, !dbg !2910
  br i1 %317, label %.preheader3, label %325, !dbg !2910

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2911

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2614, metadata !DIExpression()), !dbg !2909
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2912
  %321 = load i8, ptr %320, align 1, !dbg !2912, !tbaa !983
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2914

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2915
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2614, metadata !DIExpression()), !dbg !2909
  %324 = icmp eq i64 %323, %300, !dbg !2916
  br i1 %324, label %.loopexit4, label %318, !dbg !2911, !llvm.loop !2917

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2919

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2919, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %326, metadata !2921, metadata !DIExpression()), !dbg !2929
  %327 = call i32 @iswprint(i32 noundef %326) #41, !dbg !2931
  %328 = icmp ne i32 %327, 0, !dbg !2932
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2603, metadata !DIExpression()), !dbg !2879
  br label %329, !dbg !2933

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2934

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2603, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !2934
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !2935
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !2934
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !2935
  call void @llvm.dbg.label(metadata !2627), !dbg !2936
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2937
  br label %624, !dbg !2937

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2732
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2939
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2603, metadata !DIExpression()), !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2569, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2732
  %338 = icmp ult i64 %336, 2, !dbg !2940
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2941
  br i1 %340, label %433, label %341, !dbg !2941

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2622, metadata !DIExpression()), !dbg !2943
  br label %343, !dbg !2944

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2636
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2723
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2576, metadata !DIExpression()), !dbg !2636
  br i1 %339, label %394, label %350, !dbg !2945

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2950

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2732
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2953
  br i1 %352, label %369, label %353, !dbg !2953

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2955
  br i1 %354, label %355, label %357, !dbg !2959

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2955
  store i8 39, ptr %356, align 1, !dbg !2955, !tbaa !983
  br label %357, !dbg !2955

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2576, metadata !DIExpression()), !dbg !2636
  %359 = icmp ult i64 %358, %129, !dbg !2960
  br i1 %359, label %360, label %362, !dbg !2963

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2960
  store i8 36, ptr %361, align 1, !dbg !2960, !tbaa !983
  br label %362, !dbg !2960

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2576, metadata !DIExpression()), !dbg !2636
  %364 = icmp ult i64 %363, %129, !dbg !2964
  br i1 %364, label %365, label %367, !dbg !2967

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2964
  store i8 39, ptr %366, align 1, !dbg !2964, !tbaa !983
  br label %367, !dbg !2964

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2967
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %369, !dbg !2968

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2636
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2576, metadata !DIExpression()), !dbg !2636
  %372 = icmp ult i64 %370, %129, !dbg !2969
  br i1 %372, label %373, label %375, !dbg !2972

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2969
  store i8 92, ptr %374, align 1, !dbg !2969, !tbaa !983
  br label %375, !dbg !2969

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2576, metadata !DIExpression()), !dbg !2636
  %377 = icmp ult i64 %376, %129, !dbg !2973
  br i1 %377, label %378, label %382, !dbg !2976

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2973
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2973
  store i8 %380, ptr %381, align 1, !dbg !2973, !tbaa !983
  br label %382, !dbg !2973

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2576, metadata !DIExpression()), !dbg !2636
  %384 = icmp ult i64 %383, %129, !dbg !2977
  br i1 %384, label %385, label %390, !dbg !2980

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2977
  %388 = or disjoint i8 %387, 48, !dbg !2977
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2977
  store i8 %388, ptr %389, align 1, !dbg !2977, !tbaa !983
  br label %390, !dbg !2977

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2980
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2576, metadata !DIExpression()), !dbg !2636
  %392 = and i8 %349, 7, !dbg !2981
  %393 = or disjoint i8 %392, 48, !dbg !2982
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2598, metadata !DIExpression()), !dbg !2732
  br label %401, !dbg !2983

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2984

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2985
  br i1 %396, label %397, label %399, !dbg !2990

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2985
  store i8 92, ptr %398, align 1, !dbg !2985, !tbaa !983
  br label %399, !dbg !2985

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2732
  br label %401, !dbg !2991

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2636
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2576, metadata !DIExpression()), !dbg !2636
  %407 = add i64 %346, 1, !dbg !2992
  %408 = icmp ugt i64 %342, %407, !dbg !2994
  br i1 %408, label %409, label %.loopexit2, !dbg !2995

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2996
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2996
  br i1 %411, label %423, label %412, !dbg !2996

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2999
  br i1 %413, label %414, label %416, !dbg !3003

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2999
  store i8 39, ptr %415, align 1, !dbg !2999, !tbaa !983
  br label %416, !dbg !2999

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2576, metadata !DIExpression()), !dbg !2636
  %418 = icmp ult i64 %417, %129, !dbg !3004
  br i1 %418, label %419, label %421, !dbg !3007

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3004
  store i8 39, ptr %420, align 1, !dbg !3004, !tbaa !983
  br label %421, !dbg !3004

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3007
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %423, !dbg !3008

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3009
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2576, metadata !DIExpression()), !dbg !2636
  %426 = icmp ult i64 %424, %129, !dbg !3010
  br i1 %426, label %427, label %429, !dbg !3013

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3010
  store i8 %406, ptr %428, align 1, !dbg !3010, !tbaa !983
  br label %429, !dbg !3010

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2591, metadata !DIExpression()), !dbg !2723
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3014
  %432 = load i8, ptr %431, align 1, !dbg !3014, !tbaa !983
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2598, metadata !DIExpression()), !dbg !2732
  br label %343, !dbg !3015, !llvm.loop !3016

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3019
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2636
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2640
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2723
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2732
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2569, metadata !DIExpression()), !dbg !2636
  br i1 %111, label %455, label %444, !dbg !3020

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
  br i1 %120, label %456, label %476, !dbg !3022

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3023

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
  %467 = lshr i8 %458, 5, !dbg !3024
  %468 = zext nneg i8 %467 to i64, !dbg !3024
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3025
  %470 = load i32, ptr %469, align 4, !dbg !3025, !tbaa !974
  %471 = and i8 %458, 31, !dbg !3026
  %472 = zext nneg i8 %471 to i32, !dbg !3026
  %473 = shl nuw i32 1, %472, !dbg !3027
  %474 = and i32 %470, %473, !dbg !3027
  %475 = icmp eq i32 %474, 0, !dbg !3027
  br i1 %475, label %476, label %487, !dbg !3028

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
  br i1 %153, label %487, label %523, !dbg !3029

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3019
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2636
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2640
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3030
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2732
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2625), !dbg !3031
  br i1 %109, label %.loopexit8, label %497, !dbg !3032

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2732
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3034
  br i1 %498, label %515, label %499, !dbg !3034

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3036
  br i1 %500, label %501, label %503, !dbg !3040

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3036
  store i8 39, ptr %502, align 1, !dbg !3036, !tbaa !983
  br label %503, !dbg !3036

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2576, metadata !DIExpression()), !dbg !2636
  %505 = icmp ult i64 %504, %496, !dbg !3041
  br i1 %505, label %506, label %508, !dbg !3044

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3041
  store i8 36, ptr %507, align 1, !dbg !3041, !tbaa !983
  br label %508, !dbg !3041

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2576, metadata !DIExpression()), !dbg !2636
  %510 = icmp ult i64 %509, %496, !dbg !3045
  br i1 %510, label %511, label %513, !dbg !3048

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3045
  store i8 39, ptr %512, align 1, !dbg !3045, !tbaa !983
  br label %513, !dbg !3045

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %515, !dbg !3049

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2732
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2576, metadata !DIExpression()), !dbg !2636
  %518 = icmp ult i64 %516, %496, !dbg !3050
  br i1 %518, label %519, label %521, !dbg !3053

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3050
  store i8 92, ptr %520, align 1, !dbg !3050, !tbaa !983
  br label %521, !dbg !3050

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2626), !dbg !3054
  br label %547, !dbg !3055

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2636
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2732
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2723
  br label %523, !dbg !3055

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3019
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2636
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2640
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3030
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3058
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2598, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2597, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2596, metadata !DIExpression()), !dbg !2732
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2626), !dbg !3054
  %534 = xor i1 %528, true, !dbg !3055
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3055
  br i1 %535, label %547, label %536, !dbg !3055

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3059
  br i1 %537, label %538, label %540, !dbg !3063

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3059
  store i8 39, ptr %539, align 1, !dbg !3059, !tbaa !983
  br label %540, !dbg !3059

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2576, metadata !DIExpression()), !dbg !2636
  %542 = icmp ult i64 %541, %533, !dbg !3064
  br i1 %542, label %543, label %545, !dbg !3067

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3064
  store i8 39, ptr %544, align 1, !dbg !3064, !tbaa !983
  br label %545, !dbg !3064

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %547, !dbg !3068

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2732
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2576, metadata !DIExpression()), !dbg !2636
  %557 = icmp ult i64 %555, %548, !dbg !3069
  br i1 %557, label %558, label %560, !dbg !3072

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3069
  store i8 %549, ptr %559, align 1, !dbg !3069, !tbaa !983
  br label %560, !dbg !3069

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2576, metadata !DIExpression()), !dbg !2636
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3073
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2636
  br label %563, !dbg !3074

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3019
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2636
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2640
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3030
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2591, metadata !DIExpression()), !dbg !2723
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2569, metadata !DIExpression()), !dbg !2636
  %572 = add i64 %570, 1, !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2591, metadata !DIExpression()), !dbg !2723
  br label %121, !dbg !3076, !llvm.loop !3077

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2711
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2640
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2569, metadata !DIExpression()), !dbg !2636
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3079
  %575 = xor i1 %109, true, !dbg !3081
  %576 = or i1 %574, %575, !dbg !3081
  %577 = or i1 %576, %110, !dbg !3081
  br i1 %577, label %578, label %.loopexit13, !dbg !3081

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3082
  %580 = xor i1 %.lcssa38, true, !dbg !3082
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3082
  br i1 %581, label %589, label %582, !dbg !3082

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3084

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2640
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3086
  br label %638, !dbg !3088

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3089
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3091
  br i1 %588, label %27, label %589, !dbg !3091

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2636
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2711
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3092
  %592 = or i1 %591, %590, !dbg !3094
  br i1 %592, label %608, label %593, !dbg !3094

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2576, metadata !DIExpression()), !dbg !2636
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3095, !tbaa !983
  %595 = icmp eq i8 %594, 0, !dbg !3098
  br i1 %595, label %608, label %.preheader, !dbg !3098

.preheader:                                       ; preds = %593
  br label %596, !dbg !3098

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2576, metadata !DIExpression()), !dbg !2636
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3099
  br i1 %600, label %601, label %603, !dbg !3102

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3099
  store i8 %597, ptr %602, align 1, !dbg !3099, !tbaa !983
  br label %603, !dbg !3099

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2576, metadata !DIExpression()), !dbg !2636
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3103
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2578, metadata !DIExpression()), !dbg !2636
  %606 = load i8, ptr %605, align 1, !dbg !3095, !tbaa !983
  %607 = icmp eq i8 %606, 0, !dbg !3098
  br i1 %607, label %.loopexit, label %596, !dbg !3098, !llvm.loop !3104

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3102
  br label %608, !dbg !3106

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2711
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2576, metadata !DIExpression()), !dbg !2636
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3106
  br i1 %610, label %611, label %638, !dbg !3108

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3109
  store i8 0, ptr %612, align 1, !dbg !3110, !tbaa !983
  br label %638, !dbg !3109

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2627), !dbg !2936
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3111
  br i1 %614, label %624, label %630, !dbg !2937

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2732
  br label %615, !dbg !3111

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3111

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3111

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2627), !dbg !2936
  %622 = icmp eq i32 %616, 2, !dbg !3111
  %623 = select i1 %619, i32 4, i32 2, !dbg !2937
  br i1 %622, label %624, label %630, !dbg !2937

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2937

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2738
  br label %630, !dbg !3112

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2570, metadata !DIExpression()), !dbg !2636
  %636 = and i32 %5, -3, !dbg !3112
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3113
  br label %638, !dbg !3114

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3115
}

; Function Attrs: nounwind
declare !dbg !3116 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

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
  %6 = tail call ptr @__errno_location() #44, !dbg !3145
  %7 = load i32, ptr %6, align 4, !dbg !3145, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %7, metadata !3138, metadata !DIExpression()), !dbg !3142
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3146
  %9 = load i32, ptr %8, align 4, !dbg !3146, !tbaa !2510
  %10 = or i32 %9, 1, !dbg !3147
  call void @llvm.dbg.value(metadata i32 %10, metadata !3139, metadata !DIExpression()), !dbg !3142
  %11 = load i32, ptr %5, align 8, !dbg !3148, !tbaa !2460
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3149
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3150
  %14 = load ptr, ptr %13, align 8, !dbg !3150, !tbaa !2531
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3151
  %16 = load ptr, ptr %15, align 8, !dbg !3151, !tbaa !2534
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3152
  %18 = add i64 %17, 1, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %18, metadata !3140, metadata !DIExpression()), !dbg !3142
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %19, metadata !3141, metadata !DIExpression()), !dbg !3142
  %20 = load i32, ptr %5, align 8, !dbg !3155, !tbaa !2460
  %21 = load ptr, ptr %13, align 8, !dbg !3156, !tbaa !2531
  %22 = load ptr, ptr %15, align 8, !dbg !3157, !tbaa !2534
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3158
  store i32 %7, ptr %6, align 4, !dbg !3159, !tbaa !974
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
  %7 = tail call ptr @__errno_location() #44, !dbg !3163
  %8 = load i32, ptr %7, align 4, !dbg !3163, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3138, metadata !DIExpression()), !dbg !3161
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3164
  %10 = load i32, ptr %9, align 4, !dbg !3164, !tbaa !2510
  %11 = icmp eq ptr %2, null, !dbg !3165
  %12 = zext i1 %11 to i32, !dbg !3165
  %13 = or i32 %10, %12, !dbg !3166
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3139, metadata !DIExpression()), !dbg !3161
  %14 = load i32, ptr %6, align 8, !dbg !3167, !tbaa !2460
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3168
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3169
  %17 = load ptr, ptr %16, align 8, !dbg !3169, !tbaa !2531
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3170
  %19 = load ptr, ptr %18, align 8, !dbg !3170, !tbaa !2534
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3171
  %21 = add i64 %20, 1, !dbg !3172
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3140, metadata !DIExpression()), !dbg !3161
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3173
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3141, metadata !DIExpression()), !dbg !3161
  %23 = load i32, ptr %6, align 8, !dbg !3174, !tbaa !2460
  %24 = load ptr, ptr %16, align 8, !dbg !3175, !tbaa !2531
  %25 = load ptr, ptr %18, align 8, !dbg !3176, !tbaa !2534
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3177
  store i32 %8, ptr %7, align 4, !dbg !3178, !tbaa !974
  br i1 %11, label %28, label %27, !dbg !3179

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3180, !tbaa !3182
  br label %28, !dbg !3183

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3184
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3185 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3190, !tbaa !909
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3187, metadata !DIExpression()), !dbg !3191
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3188, metadata !DIExpression()), !dbg !3192
  %2 = load i32, ptr @nslots, align 4, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3188, metadata !DIExpression()), !dbg !3192
  %3 = icmp sgt i32 %2, 1, !dbg !3193
  br i1 %3, label %4, label %6, !dbg !3195

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3193
  br label %10, !dbg !3195

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3196

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3196
  %8 = load ptr, ptr %7, align 8, !dbg !3196, !tbaa !3198
  %9 = icmp eq ptr %8, @slot0, !dbg !3200
  br i1 %9, label %17, label %16, !dbg !3201

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3188, metadata !DIExpression()), !dbg !3192
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3202
  %13 = load ptr, ptr %12, align 8, !dbg !3202, !tbaa !3198
  tail call void @free(ptr noundef %13) #41, !dbg !3203
  %14 = add nuw nsw i64 %11, 1, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3188, metadata !DIExpression()), !dbg !3192
  %15 = icmp eq i64 %14, %5, !dbg !3193
  br i1 %15, label %.loopexit, label %10, !dbg !3195, !llvm.loop !3205

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3207
  store i64 256, ptr @slotvec0, align 8, !dbg !3209, !tbaa !3210
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3211, !tbaa !3198
  br label %17, !dbg !3212

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3213
  br i1 %18, label %20, label %19, !dbg !3215

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3216
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3218, !tbaa !909
  br label %20, !dbg !3219

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3220, !tbaa !974
  ret void, !dbg !3221
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3222 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3224, metadata !DIExpression()), !dbg !3226
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3225, metadata !DIExpression()), !dbg !3226
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3227
  ret ptr %3, !dbg !3228
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3229 {
  %5 = alloca i64, align 8, !DIAssignID !3249
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3243, metadata !DIExpression(), metadata !3249, metadata ptr %5, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3233, metadata !DIExpression()), !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3234, metadata !DIExpression()), !dbg !3251
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3235, metadata !DIExpression()), !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3236, metadata !DIExpression()), !dbg !3251
  %6 = tail call ptr @__errno_location() #44, !dbg !3252
  %7 = load i32, ptr %6, align 4, !dbg !3252, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3237, metadata !DIExpression()), !dbg !3251
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3253, !tbaa !909
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3238, metadata !DIExpression()), !dbg !3251
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3239, metadata !DIExpression()), !dbg !3251
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3254
  br i1 %9, label %10, label %11, !dbg !3254

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3256
  unreachable, !dbg !3256

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3257, !tbaa !974
  %13 = icmp sgt i32 %12, %0, !dbg !3258
  br i1 %13, label %32, label %14, !dbg !3259

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3260
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3240, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3250
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3261
  %16 = sext i32 %12 to i64, !dbg !3262
  store i64 %16, ptr %5, align 8, !dbg !3263, !tbaa !3182, !DIAssignID !3264
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3243, metadata !DIExpression(), metadata !3264, metadata ptr %5, metadata !DIExpression()), !dbg !3250
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3265
  %18 = add nuw nsw i32 %0, 1, !dbg !3266
  %19 = sub i32 %18, %12, !dbg !3267
  %20 = sext i32 %19 to i64, !dbg !3268
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3269
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3238, metadata !DIExpression()), !dbg !3251
  store ptr %21, ptr @slotvec, align 8, !dbg !3270, !tbaa !909
  br i1 %15, label %22, label %23, !dbg !3271

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3272, !tbaa.struct !3274
  br label %23, !dbg !3275

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3276, !tbaa !974
  %25 = sext i32 %24 to i64, !dbg !3277
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3277
  %27 = load i64, ptr %5, align 8, !dbg !3278, !tbaa !3182
  %28 = sub nsw i64 %27, %25, !dbg !3279
  %29 = shl i64 %28, 4, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %26, metadata !2669, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %29, metadata !2673, metadata !DIExpression()), !dbg !3281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3283
  %30 = load i64, ptr %5, align 8, !dbg !3284, !tbaa !3182
  %31 = trunc i64 %30 to i32, !dbg !3284
  store i32 %31, ptr @nslots, align 4, !dbg !3285, !tbaa !974
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3286
  br label %32, !dbg !3287

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3238, metadata !DIExpression()), !dbg !3251
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3288
  %36 = load i64, ptr %35, align 8, !dbg !3289, !tbaa !3210
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3244, metadata !DIExpression()), !dbg !3290
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3291
  %38 = load ptr, ptr %37, align 8, !dbg !3291, !tbaa !3198
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3246, metadata !DIExpression()), !dbg !3290
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3292
  %40 = load i32, ptr %39, align 4, !dbg !3292, !tbaa !2510
  %41 = or i32 %40, 1, !dbg !3293
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3247, metadata !DIExpression()), !dbg !3290
  %42 = load i32, ptr %3, align 8, !dbg !3294, !tbaa !2460
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3295
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3296
  %45 = load ptr, ptr %44, align 8, !dbg !3296, !tbaa !2531
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3297
  %47 = load ptr, ptr %46, align 8, !dbg !3297, !tbaa !2534
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3248, metadata !DIExpression()), !dbg !3290
  %49 = icmp ugt i64 %36, %48, !dbg !3299
  br i1 %49, label %60, label %50, !dbg !3301

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3302
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3244, metadata !DIExpression()), !dbg !3290
  store i64 %51, ptr %35, align 8, !dbg !3304, !tbaa !3210
  %52 = icmp eq ptr %38, @slot0, !dbg !3305
  br i1 %52, label %54, label %53, !dbg !3307

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3308
  br label %54, !dbg !3308

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3309
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3246, metadata !DIExpression()), !dbg !3290
  store ptr %55, ptr %37, align 8, !dbg !3310, !tbaa !3198
  %56 = load i32, ptr %3, align 8, !dbg !3311, !tbaa !2460
  %57 = load ptr, ptr %44, align 8, !dbg !3312, !tbaa !2531
  %58 = load ptr, ptr %46, align 8, !dbg !3313, !tbaa !2534
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3314
  br label %60, !dbg !3315

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3290
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3246, metadata !DIExpression()), !dbg !3290
  store i32 %7, ptr %6, align 4, !dbg !3316, !tbaa !974
  ret ptr %61, !dbg !3317
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3318 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3325
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3323, metadata !DIExpression()), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3324, metadata !DIExpression()), !dbg !3325
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3326
  ret ptr %4, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3328 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3330, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3224, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %0, metadata !3225, metadata !DIExpression()), !dbg !3332
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3334
  ret ptr %2, !dbg !3335
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3336 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3340, metadata !DIExpression()), !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3343
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3345
  ret ptr %3, !dbg !3346
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3347 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3355
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3354, metadata !DIExpression(), metadata !3355, metadata ptr %4, metadata !DIExpression()), !dbg !3356
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3356
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3356
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3358), !dbg !3361
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3367, metadata !DIExpression()), !dbg !3370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3370, !alias.scope !3358, !DIAssignID !3371
  call void @llvm.dbg.assign(metadata i8 0, metadata !3354, metadata !DIExpression(), metadata !3371, metadata ptr %4, metadata !DIExpression()), !dbg !3356
  %5 = icmp eq i32 %1, 10, !dbg !3372
  br i1 %5, label %6, label %7, !dbg !3374

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3375, !noalias !3358
  unreachable, !dbg !3375

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3376, !tbaa !2460, !alias.scope !3358, !DIAssignID !3377
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3354, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3377, metadata ptr %4, metadata !DIExpression()), !dbg !3356
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3378
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3379
  ret ptr %8, !dbg !3380
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3381 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3389, metadata !DIExpression(), metadata !3390, metadata ptr %5, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3386, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3387, metadata !DIExpression()), !dbg !3391
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3388, metadata !DIExpression()), !dbg !3391
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3393), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3367, metadata !DIExpression()), !dbg !3399
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3399, !alias.scope !3393, !DIAssignID !3400
  call void @llvm.dbg.assign(metadata i8 0, metadata !3389, metadata !DIExpression(), metadata !3400, metadata ptr %5, metadata !DIExpression()), !dbg !3391
  %6 = icmp eq i32 %1, 10, !dbg !3401
  br i1 %6, label %7, label %8, !dbg !3402

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3403, !noalias !3393
  unreachable, !dbg !3403

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3404, !tbaa !2460, !alias.scope !3393, !DIAssignID !3405
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3405, metadata ptr %5, metadata !DIExpression()), !dbg !3391
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3406
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3407
  ret ptr %9, !dbg !3408
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3409 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3415
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()), !dbg !3416
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3354, metadata !DIExpression(), metadata !3415, metadata ptr %3, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 0, metadata !3351, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata ptr %1, metadata !3353, metadata !DIExpression()), !dbg !3417
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3420), !dbg !3423
  call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3367, metadata !DIExpression()), !dbg !3426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3426, !alias.scope !3420, !DIAssignID !3427
  call void @llvm.dbg.assign(metadata i8 0, metadata !3354, metadata !DIExpression(), metadata !3427, metadata ptr %3, metadata !DIExpression()), !dbg !3417
  %4 = icmp eq i32 %0, 10, !dbg !3428
  br i1 %4, label %5, label %6, !dbg !3429

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3430, !noalias !3420
  unreachable, !dbg !3430

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3431, !tbaa !2460, !alias.scope !3420, !DIAssignID !3432
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3354, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3432, metadata ptr %3, metadata !DIExpression()), !dbg !3417
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3433
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3434
  ret ptr %7, !dbg !3435
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3436 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3443
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3441, metadata !DIExpression()), !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3389, metadata !DIExpression(), metadata !3443, metadata ptr %4, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 0, metadata !3385, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %0, metadata !3386, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata ptr %1, metadata !3387, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %2, metadata !3388, metadata !DIExpression()), !dbg !3445
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448), !dbg !3451
  call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3367, metadata !DIExpression()), !dbg !3454
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3454, !alias.scope !3448, !DIAssignID !3455
  call void @llvm.dbg.assign(metadata i8 0, metadata !3389, metadata !DIExpression(), metadata !3455, metadata ptr %4, metadata !DIExpression()), !dbg !3445
  %5 = icmp eq i32 %0, 10, !dbg !3456
  br i1 %5, label %6, label %7, !dbg !3457

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3458, !noalias !3448
  unreachable, !dbg !3458

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3459, !tbaa !2460, !alias.scope !3448, !DIAssignID !3460
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3460, metadata ptr %4, metadata !DIExpression()), !dbg !3445
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3461
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3462
  ret ptr %8, !dbg !3463
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3464 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3472, metadata ptr %4, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3469, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3475, !tbaa.struct !3476, !DIAssignID !3477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3477, metadata ptr %4, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2478, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3478
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2480, metadata !DIExpression()), !dbg !3478
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3480
  %6 = lshr i8 %2, 5, !dbg !3481
  %7 = zext nneg i8 %6 to i64, !dbg !3481
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3482
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2481, metadata !DIExpression()), !dbg !3478
  %9 = and i8 %2, 31, !dbg !3483
  %10 = zext nneg i8 %9 to i32, !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2483, metadata !DIExpression()), !dbg !3478
  %11 = load i32, ptr %8, align 4, !dbg !3484, !tbaa !974
  %12 = lshr i32 %11, %10, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2484, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3478
  %13 = and i32 %12, 1, !dbg !3486
  %14 = xor i32 %13, 1, !dbg !3486
  %15 = shl nuw i32 %14, %10, !dbg !3487
  %16 = xor i32 %15, %11, !dbg !3488
  store i32 %16, ptr %8, align 4, !dbg !3488, !tbaa !974
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3489
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3490
  ret ptr %17, !dbg !3491
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3492 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3498
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3497, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3498, metadata ptr %3, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 -1, metadata !3469, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i8 %1, metadata !3470, metadata !DIExpression()), !dbg !3500
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3503, !tbaa.struct !3476, !DIAssignID !3504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3504, metadata ptr %3, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %3, metadata !2477, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 %1, metadata !2478, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8 %1, metadata !2480, metadata !DIExpression()), !dbg !3505
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3507
  %5 = lshr i8 %1, 5, !dbg !3508
  %6 = zext nneg i8 %5 to i64, !dbg !3508
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3509
  call void @llvm.dbg.value(metadata ptr %7, metadata !2481, metadata !DIExpression()), !dbg !3505
  %8 = and i8 %1, 31, !dbg !3510
  %9 = zext nneg i8 %8 to i32, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %9, metadata !2483, metadata !DIExpression()), !dbg !3505
  %10 = load i32, ptr %7, align 4, !dbg !3511, !tbaa !974
  %11 = lshr i32 %10, %9, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %11, metadata !2484, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3505
  %12 = and i32 %11, 1, !dbg !3513
  %13 = xor i32 %12, 1, !dbg !3513
  %14 = shl nuw i32 %13, %9, !dbg !3514
  %15 = xor i32 %14, %10, !dbg !3515
  store i32 %15, ptr %7, align 4, !dbg !3515, !tbaa !974
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3516
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3517
  ret ptr %16, !dbg !3518
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3519 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3522
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8 58, metadata !3497, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3522, metadata ptr %2, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 -1, metadata !3469, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8 58, metadata !3470, metadata !DIExpression()), !dbg !3526
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3529, !tbaa.struct !3476, !DIAssignID !3530
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3530, metadata ptr %2, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata ptr %2, metadata !2477, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8 58, metadata !2478, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3531
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3533
  call void @llvm.dbg.value(metadata ptr %3, metadata !2481, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 26, metadata !2483, metadata !DIExpression()), !dbg !3531
  %4 = load i32, ptr %3, align 4, !dbg !3534, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %4, metadata !2484, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3531
  %5 = or i32 %4, 67108864, !dbg !3535
  store i32 %5, ptr %3, align 4, !dbg !3535, !tbaa !974
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3536
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3537
  ret ptr %6, !dbg !3538
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3539 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3543
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3543, metadata ptr %3, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %1, metadata !3469, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 58, metadata !3470, metadata !DIExpression()), !dbg !3545
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3548, !tbaa.struct !3476, !DIAssignID !3549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3471, metadata !DIExpression(), metadata !3549, metadata ptr %3, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata ptr %3, metadata !2477, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2478, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3550
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3552
  call void @llvm.dbg.value(metadata ptr %4, metadata !2481, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i32 26, metadata !2483, metadata !DIExpression()), !dbg !3550
  %5 = load i32, ptr %4, align 4, !dbg !3553, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %5, metadata !2484, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3550
  %6 = or i32 %5, 67108864, !dbg !3554
  store i32 %6, ptr %4, align 4, !dbg !3554, !tbaa !974
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3555
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3556
  ret ptr %7, !dbg !3557
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3558 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3563, metadata !DIExpression(), metadata !3564, metadata ptr %4, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3367, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3566
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3560, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3561, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3569
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3569
  %5 = icmp eq i32 %1, 10, !dbg !3570
  br i1 %5, label %6, label %7, !dbg !3571

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3572, !noalias !3573
  unreachable, !dbg !3572

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3367, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3569
  store i32 %1, ptr %4, align 8, !dbg !3576, !tbaa.struct !3476, !DIAssignID !3577
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3576
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3563, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3577, metadata ptr %4, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3563, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3578, metadata ptr %8, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2478, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3579
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2481, metadata !DIExpression()), !dbg !3579
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2483, metadata !DIExpression()), !dbg !3579
  %10 = load i32, ptr %9, align 4, !dbg !3582, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2484, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3579
  %11 = or i32 %10, 67108864, !dbg !3583
  store i32 %11, ptr %9, align 4, !dbg !3583, !tbaa !974, !DIAssignID !3584
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3563, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3584, metadata ptr %9, metadata !DIExpression()), !dbg !3565
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3586
  ret ptr %12, !dbg !3587
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3588 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3596
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3592, metadata !DIExpression()), !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3593, metadata !DIExpression()), !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3594, metadata !DIExpression()), !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3596, metadata ptr %5, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %0, metadata !3603, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %1, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %2, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %3, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 -1, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3611, !tbaa.struct !3476, !DIAssignID !3612
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3612, metadata ptr %5, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3613, metadata ptr undef, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3614
  store i32 10, ptr %5, align 8, !dbg !3616, !tbaa !2460, !DIAssignID !3617
  call void @llvm.dbg.assign(metadata i32 10, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3617, metadata ptr %5, metadata !DIExpression()), !dbg !3608
  %6 = icmp ne ptr %1, null, !dbg !3618
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3619
  br i1 %8, label %10, label %9, !dbg !3619

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3620
  unreachable, !dbg !3620

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3621
  store ptr %1, ptr %11, align 8, !dbg !3622, !tbaa !2531, !DIAssignID !3623
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3623, metadata ptr %11, metadata !DIExpression()), !dbg !3608
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3624
  store ptr %2, ptr %12, align 8, !dbg !3625, !tbaa !2534, !DIAssignID !3626
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3626, metadata ptr %12, metadata !DIExpression()), !dbg !3608
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3627
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3628
  ret ptr %13, !dbg !3629
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3599 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3630, metadata ptr %6, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3603, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3604, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3605, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3606, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3607, metadata !DIExpression()), !dbg !3631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3633, !tbaa.struct !3476, !DIAssignID !3634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3634, metadata ptr %6, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3635, metadata ptr undef, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %6, metadata !2517, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %6, metadata !2517, metadata !DIExpression()), !dbg !3636
  store i32 10, ptr %6, align 8, !dbg !3638, !tbaa !2460, !DIAssignID !3639
  call void @llvm.dbg.assign(metadata i32 10, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3639, metadata ptr %6, metadata !DIExpression()), !dbg !3631
  %7 = icmp ne ptr %1, null, !dbg !3640
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3641
  br i1 %9, label %11, label %10, !dbg !3641

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3642
  unreachable, !dbg !3642

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3643
  store ptr %1, ptr %12, align 8, !dbg !3644, !tbaa !2531, !DIAssignID !3645
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3645, metadata ptr %12, metadata !DIExpression()), !dbg !3631
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3646
  store ptr %2, ptr %13, align 8, !dbg !3647, !tbaa !2534, !DIAssignID !3648
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3648, metadata ptr %13, metadata !DIExpression()), !dbg !3631
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3649
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3650
  ret ptr %14, !dbg !3651
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3652 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3659
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3656, metadata !DIExpression()), !dbg !3660
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3657, metadata !DIExpression()), !dbg !3660
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3658, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 0, metadata !3592, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %0, metadata !3593, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %1, metadata !3594, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %2, metadata !3595, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3659, metadata ptr %4, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %0, metadata !3604, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %1, metadata !3605, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 -1, metadata !3607, metadata !DIExpression()), !dbg !3663
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3666, !tbaa.struct !3476, !DIAssignID !3667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3667, metadata ptr %4, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3668, metadata ptr undef, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %4, metadata !2517, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata ptr %4, metadata !2517, metadata !DIExpression()), !dbg !3669
  store i32 10, ptr %4, align 8, !dbg !3671, !tbaa !2460, !DIAssignID !3672
  call void @llvm.dbg.assign(metadata i32 10, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3672, metadata ptr %4, metadata !DIExpression()), !dbg !3663
  %5 = icmp ne ptr %0, null, !dbg !3673
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3674
  br i1 %7, label %9, label %8, !dbg !3674

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3675
  unreachable, !dbg !3675

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3676
  store ptr %0, ptr %10, align 8, !dbg !3677, !tbaa !2531, !DIAssignID !3678
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3678, metadata ptr %10, metadata !DIExpression()), !dbg !3663
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3679
  store ptr %1, ptr %11, align 8, !dbg !3680, !tbaa !2534, !DIAssignID !3681
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3681, metadata ptr %11, metadata !DIExpression()), !dbg !3663
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3683
  ret ptr %12, !dbg !3684
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3685 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3693
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3689, metadata !DIExpression()), !dbg !3694
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3690, metadata !DIExpression()), !dbg !3694
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3691, metadata !DIExpression()), !dbg !3694
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3692, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3693, metadata ptr %5, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %0, metadata !3604, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %1, metadata !3605, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %2, metadata !3606, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i64 %3, metadata !3607, metadata !DIExpression()), !dbg !3695
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3698, !tbaa.struct !3476, !DIAssignID !3699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(), metadata !3699, metadata ptr %5, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3700, metadata ptr undef, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3701
  store i32 10, ptr %5, align 8, !dbg !3703, !tbaa !2460, !DIAssignID !3704
  call void @llvm.dbg.assign(metadata i32 10, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3704, metadata ptr %5, metadata !DIExpression()), !dbg !3695
  %6 = icmp ne ptr %0, null, !dbg !3705
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3706
  br i1 %8, label %10, label %9, !dbg !3706

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3707
  unreachable, !dbg !3707

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3708
  store ptr %0, ptr %11, align 8, !dbg !3709, !tbaa !2531, !DIAssignID !3710
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3710, metadata ptr %11, metadata !DIExpression()), !dbg !3695
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3711
  store ptr %1, ptr %12, align 8, !dbg !3712, !tbaa !2534, !DIAssignID !3713
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3598, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3713, metadata ptr %12, metadata !DIExpression()), !dbg !3695
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3714
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3715
  ret ptr %13, !dbg !3716
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3717 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3723, metadata !DIExpression()), !dbg !3724
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3725
  ret ptr %4, !dbg !3726
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3731, metadata !DIExpression()), !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 0, metadata !3721, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3734
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3736
  ret ptr %3, !dbg !3737
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3738 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3742, metadata !DIExpression()), !dbg !3744
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata ptr %1, metadata !3722, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 -1, metadata !3723, metadata !DIExpression()), !dbg !3745
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3747
  ret ptr %3, !dbg !3748
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 0, metadata !3742, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %0, metadata !3743, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata i32 0, metadata !3721, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata ptr %0, metadata !3722, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 -1, metadata !3723, metadata !DIExpression()), !dbg !3757
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3759
  ret ptr %2, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3761 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3768
  %2 = icmp ult i32 %0, 3, !dbg !3769
  br i1 %2, label %3, label %8, !dbg !3769

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #41, !dbg !3770
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3764, metadata !DIExpression()), !dbg !3771
  %5 = tail call ptr @__errno_location() #44, !dbg !3772
  %6 = load i32, ptr %5, align 4, !dbg !3772, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3767, metadata !DIExpression()), !dbg !3771
  %7 = tail call i32 @close(i32 noundef %0) #41, !dbg !3773
  store i32 %6, ptr %5, align 4, !dbg !3774, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3763, metadata !DIExpression()), !dbg !3768
  br label %8, !dbg !3775

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3763, metadata !DIExpression()), !dbg !3768
  ret i32 %9, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3815, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3816, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3817, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3818, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3819, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3820, metadata !DIExpression()), !dbg !3821
  %7 = icmp eq ptr %1, null, !dbg !3822
  br i1 %7, label %10, label %8, !dbg !3824

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !3825
  br label %12, !dbg !3825

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.135, ptr noundef %2, ptr noundef %3) #41, !dbg !3826
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.3.137, i32 noundef 5) #41, !dbg !3827
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !3827
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3828
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.5.139, i32 noundef 5) #41, !dbg !3829
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.140) #41, !dbg !3829
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3830
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
  ], !dbg !3831

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.7.141, i32 noundef 5) #41, !dbg !3832
  %21 = load ptr, ptr %4, align 8, !dbg !3832, !tbaa !909
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !3832
  br label %147, !dbg !3834

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.8.142, i32 noundef 5) #41, !dbg !3835
  %25 = load ptr, ptr %4, align 8, !dbg !3835, !tbaa !909
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3835
  %27 = load ptr, ptr %26, align 8, !dbg !3835, !tbaa !909
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !3835
  br label %147, !dbg !3836

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.9.143, i32 noundef 5) #41, !dbg !3837
  %31 = load ptr, ptr %4, align 8, !dbg !3837, !tbaa !909
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3837
  %33 = load ptr, ptr %32, align 8, !dbg !3837, !tbaa !909
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3837
  %35 = load ptr, ptr %34, align 8, !dbg !3837, !tbaa !909
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !3837
  br label %147, !dbg !3838

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.10.144, i32 noundef 5) #41, !dbg !3839
  %39 = load ptr, ptr %4, align 8, !dbg !3839, !tbaa !909
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3839
  %41 = load ptr, ptr %40, align 8, !dbg !3839, !tbaa !909
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3839
  %43 = load ptr, ptr %42, align 8, !dbg !3839, !tbaa !909
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3839
  %45 = load ptr, ptr %44, align 8, !dbg !3839, !tbaa !909
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !3839
  br label %147, !dbg !3840

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.11.145, i32 noundef 5) #41, !dbg !3841
  %49 = load ptr, ptr %4, align 8, !dbg !3841, !tbaa !909
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3841
  %51 = load ptr, ptr %50, align 8, !dbg !3841, !tbaa !909
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3841
  %53 = load ptr, ptr %52, align 8, !dbg !3841, !tbaa !909
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3841
  %55 = load ptr, ptr %54, align 8, !dbg !3841, !tbaa !909
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3841
  %57 = load ptr, ptr %56, align 8, !dbg !3841, !tbaa !909
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !3841
  br label %147, !dbg !3842

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.12.146, i32 noundef 5) #41, !dbg !3843
  %61 = load ptr, ptr %4, align 8, !dbg !3843, !tbaa !909
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3843
  %63 = load ptr, ptr %62, align 8, !dbg !3843, !tbaa !909
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3843
  %65 = load ptr, ptr %64, align 8, !dbg !3843, !tbaa !909
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3843
  %67 = load ptr, ptr %66, align 8, !dbg !3843, !tbaa !909
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3843
  %69 = load ptr, ptr %68, align 8, !dbg !3843, !tbaa !909
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3843
  %71 = load ptr, ptr %70, align 8, !dbg !3843, !tbaa !909
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !3843
  br label %147, !dbg !3844

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.13.147, i32 noundef 5) #41, !dbg !3845
  %75 = load ptr, ptr %4, align 8, !dbg !3845, !tbaa !909
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3845
  %77 = load ptr, ptr %76, align 8, !dbg !3845, !tbaa !909
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3845
  %79 = load ptr, ptr %78, align 8, !dbg !3845, !tbaa !909
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3845
  %81 = load ptr, ptr %80, align 8, !dbg !3845, !tbaa !909
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3845
  %83 = load ptr, ptr %82, align 8, !dbg !3845, !tbaa !909
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3845
  %85 = load ptr, ptr %84, align 8, !dbg !3845, !tbaa !909
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3845
  %87 = load ptr, ptr %86, align 8, !dbg !3845, !tbaa !909
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !3845
  br label %147, !dbg !3846

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.14.148, i32 noundef 5) #41, !dbg !3847
  %91 = load ptr, ptr %4, align 8, !dbg !3847, !tbaa !909
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3847
  %93 = load ptr, ptr %92, align 8, !dbg !3847, !tbaa !909
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3847
  %95 = load ptr, ptr %94, align 8, !dbg !3847, !tbaa !909
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3847
  %97 = load ptr, ptr %96, align 8, !dbg !3847, !tbaa !909
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3847
  %99 = load ptr, ptr %98, align 8, !dbg !3847, !tbaa !909
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3847
  %101 = load ptr, ptr %100, align 8, !dbg !3847, !tbaa !909
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3847
  %103 = load ptr, ptr %102, align 8, !dbg !3847, !tbaa !909
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3847
  %105 = load ptr, ptr %104, align 8, !dbg !3847, !tbaa !909
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !3847
  br label %147, !dbg !3848

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.15.149, i32 noundef 5) #41, !dbg !3849
  %109 = load ptr, ptr %4, align 8, !dbg !3849, !tbaa !909
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3849
  %111 = load ptr, ptr %110, align 8, !dbg !3849, !tbaa !909
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3849
  %113 = load ptr, ptr %112, align 8, !dbg !3849, !tbaa !909
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3849
  %115 = load ptr, ptr %114, align 8, !dbg !3849, !tbaa !909
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3849
  %117 = load ptr, ptr %116, align 8, !dbg !3849, !tbaa !909
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3849
  %119 = load ptr, ptr %118, align 8, !dbg !3849, !tbaa !909
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3849
  %121 = load ptr, ptr %120, align 8, !dbg !3849, !tbaa !909
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3849
  %123 = load ptr, ptr %122, align 8, !dbg !3849, !tbaa !909
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3849
  %125 = load ptr, ptr %124, align 8, !dbg !3849, !tbaa !909
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !3849
  br label %147, !dbg !3850

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.16.150, i32 noundef 5) #41, !dbg !3851
  %129 = load ptr, ptr %4, align 8, !dbg !3851, !tbaa !909
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3851
  %131 = load ptr, ptr %130, align 8, !dbg !3851, !tbaa !909
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3851
  %133 = load ptr, ptr %132, align 8, !dbg !3851, !tbaa !909
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3851
  %135 = load ptr, ptr %134, align 8, !dbg !3851, !tbaa !909
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3851
  %137 = load ptr, ptr %136, align 8, !dbg !3851, !tbaa !909
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3851
  %139 = load ptr, ptr %138, align 8, !dbg !3851, !tbaa !909
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3851
  %141 = load ptr, ptr %140, align 8, !dbg !3851, !tbaa !909
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3851
  %143 = load ptr, ptr %142, align 8, !dbg !3851, !tbaa !909
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3851
  %145 = load ptr, ptr %144, align 8, !dbg !3851, !tbaa !909
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !3851
  br label %147, !dbg !3852

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3853
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3854 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3858, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3859, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3860, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3861, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3862, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3863, metadata !DIExpression()), !dbg !3864
  br label %6, !dbg !3865

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3867
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3863, metadata !DIExpression()), !dbg !3864
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3868
  %9 = load ptr, ptr %8, align 8, !dbg !3868, !tbaa !909
  %10 = icmp eq ptr %9, null, !dbg !3870
  %11 = add i64 %7, 1, !dbg !3871
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3863, metadata !DIExpression()), !dbg !3864
  br i1 %10, label %12, label %6, !dbg !3870, !llvm.loop !3872

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3867
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3876 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3898
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3896, metadata !DIExpression(), metadata !3898, metadata ptr %6, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3890, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3891, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3892, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3893, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3894, metadata !DIExpression(DW_OP_deref)), !dbg !3899
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !3900
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3895, metadata !DIExpression()), !dbg !3899
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3895, metadata !DIExpression()), !dbg !3899
  %10 = icmp sgt i32 %9, -1, !dbg !3901
  br i1 %10, label %18, label %11, !dbg !3901

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3901
  store i32 %12, ptr %7, align 8, !dbg !3901
  %13 = icmp ult i32 %9, -7, !dbg !3901
  br i1 %13, label %14, label %18, !dbg !3901

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3901
  %16 = sext i32 %9 to i64, !dbg !3901
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3901
  br label %22, !dbg !3901

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3901
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3901
  store ptr %21, ptr %4, align 8, !dbg !3901
  br label %22, !dbg !3901

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3901
  %25 = load ptr, ptr %24, align 8, !dbg !3901
  store ptr %25, ptr %6, align 8, !dbg !3904, !tbaa !909
  %26 = icmp eq ptr %25, null, !dbg !3905
  br i1 %26, label %197, label %27, !dbg !3906

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3895, metadata !DIExpression()), !dbg !3899
  %28 = icmp sgt i32 %23, -1, !dbg !3901
  br i1 %28, label %36, label %29, !dbg !3901

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3901
  store i32 %30, ptr %7, align 8, !dbg !3901
  %31 = icmp ult i32 %23, -7, !dbg !3901
  br i1 %31, label %32, label %36, !dbg !3901

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3901
  %34 = sext i32 %23 to i64, !dbg !3901
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3901
  br label %40, !dbg !3901

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3901
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3901
  store ptr %39, ptr %4, align 8, !dbg !3901
  br label %40, !dbg !3901

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3901
  %43 = load ptr, ptr %42, align 8, !dbg !3901
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3907
  store ptr %43, ptr %44, align 8, !dbg !3904, !tbaa !909
  %45 = icmp eq ptr %43, null, !dbg !3905
  br i1 %45, label %197, label %46, !dbg !3906

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3895, metadata !DIExpression()), !dbg !3899
  %47 = icmp sgt i32 %41, -1, !dbg !3901
  br i1 %47, label %55, label %48, !dbg !3901

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3901
  store i32 %49, ptr %7, align 8, !dbg !3901
  %50 = icmp ult i32 %41, -7, !dbg !3901
  br i1 %50, label %51, label %55, !dbg !3901

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3901
  %53 = sext i32 %41 to i64, !dbg !3901
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3901
  br label %59, !dbg !3901

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3901
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3901
  store ptr %58, ptr %4, align 8, !dbg !3901
  br label %59, !dbg !3901

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3901
  %62 = load ptr, ptr %61, align 8, !dbg !3901
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3907
  store ptr %62, ptr %63, align 8, !dbg !3904, !tbaa !909
  %64 = icmp eq ptr %62, null, !dbg !3905
  br i1 %64, label %197, label %65, !dbg !3906

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3895, metadata !DIExpression()), !dbg !3899
  %66 = icmp sgt i32 %60, -1, !dbg !3901
  br i1 %66, label %74, label %67, !dbg !3901

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3901
  store i32 %68, ptr %7, align 8, !dbg !3901
  %69 = icmp ult i32 %60, -7, !dbg !3901
  br i1 %69, label %70, label %74, !dbg !3901

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3901
  %72 = sext i32 %60 to i64, !dbg !3901
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3901
  br label %78, !dbg !3901

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3901
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3901
  store ptr %77, ptr %4, align 8, !dbg !3901
  br label %78, !dbg !3901

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3901
  %81 = load ptr, ptr %80, align 8, !dbg !3901
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3907
  store ptr %81, ptr %82, align 8, !dbg !3904, !tbaa !909
  %83 = icmp eq ptr %81, null, !dbg !3905
  br i1 %83, label %197, label %84, !dbg !3906

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3895, metadata !DIExpression()), !dbg !3899
  %85 = icmp sgt i32 %79, -1, !dbg !3901
  br i1 %85, label %93, label %86, !dbg !3901

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3901
  store i32 %87, ptr %7, align 8, !dbg !3901
  %88 = icmp ult i32 %79, -7, !dbg !3901
  br i1 %88, label %89, label %93, !dbg !3901

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3901
  %91 = sext i32 %79 to i64, !dbg !3901
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3901
  br label %97, !dbg !3901

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3901
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3901
  store ptr %96, ptr %4, align 8, !dbg !3901
  br label %97, !dbg !3901

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3901
  %100 = load ptr, ptr %99, align 8, !dbg !3901
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3907
  store ptr %100, ptr %101, align 8, !dbg !3904, !tbaa !909
  %102 = icmp eq ptr %100, null, !dbg !3905
  br i1 %102, label %197, label %103, !dbg !3906

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3895, metadata !DIExpression()), !dbg !3899
  %104 = icmp sgt i32 %98, -1, !dbg !3901
  br i1 %104, label %112, label %105, !dbg !3901

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3901
  store i32 %106, ptr %7, align 8, !dbg !3901
  %107 = icmp ult i32 %98, -7, !dbg !3901
  br i1 %107, label %108, label %112, !dbg !3901

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3901
  %110 = sext i32 %98 to i64, !dbg !3901
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3901
  br label %116, !dbg !3901

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3901
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3901
  store ptr %115, ptr %4, align 8, !dbg !3901
  br label %116, !dbg !3901

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3901
  %119 = load ptr, ptr %118, align 8, !dbg !3901
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3907
  store ptr %119, ptr %120, align 8, !dbg !3904, !tbaa !909
  %121 = icmp eq ptr %119, null, !dbg !3905
  br i1 %121, label %197, label %122, !dbg !3906

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3895, metadata !DIExpression()), !dbg !3899
  %123 = icmp sgt i32 %117, -1, !dbg !3901
  br i1 %123, label %131, label %124, !dbg !3901

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3901
  store i32 %125, ptr %7, align 8, !dbg !3901
  %126 = icmp ult i32 %117, -7, !dbg !3901
  br i1 %126, label %127, label %131, !dbg !3901

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3901
  %129 = sext i32 %117 to i64, !dbg !3901
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3901
  br label %135, !dbg !3901

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3901
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3901
  store ptr %134, ptr %4, align 8, !dbg !3901
  br label %135, !dbg !3901

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3901
  %138 = load ptr, ptr %137, align 8, !dbg !3901
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3907
  store ptr %138, ptr %139, align 8, !dbg !3904, !tbaa !909
  %140 = icmp eq ptr %138, null, !dbg !3905
  br i1 %140, label %197, label %141, !dbg !3906

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3895, metadata !DIExpression()), !dbg !3899
  %142 = icmp sgt i32 %136, -1, !dbg !3901
  br i1 %142, label %150, label %143, !dbg !3901

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3901
  store i32 %144, ptr %7, align 8, !dbg !3901
  %145 = icmp ult i32 %136, -7, !dbg !3901
  br i1 %145, label %146, label %150, !dbg !3901

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3901
  %148 = sext i32 %136 to i64, !dbg !3901
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3901
  br label %154, !dbg !3901

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3901
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3901
  store ptr %153, ptr %4, align 8, !dbg !3901
  br label %154, !dbg !3901

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3901
  %157 = load ptr, ptr %156, align 8, !dbg !3901
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3907
  store ptr %157, ptr %158, align 8, !dbg !3904, !tbaa !909
  %159 = icmp eq ptr %157, null, !dbg !3905
  br i1 %159, label %197, label %160, !dbg !3906

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3895, metadata !DIExpression()), !dbg !3899
  %161 = icmp sgt i32 %155, -1, !dbg !3901
  br i1 %161, label %169, label %162, !dbg !3901

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3901
  store i32 %163, ptr %7, align 8, !dbg !3901
  %164 = icmp ult i32 %155, -7, !dbg !3901
  br i1 %164, label %165, label %169, !dbg !3901

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3901
  %167 = sext i32 %155 to i64, !dbg !3901
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3901
  br label %173, !dbg !3901

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3901
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3901
  store ptr %172, ptr %4, align 8, !dbg !3901
  br label %173, !dbg !3901

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3901
  %176 = load ptr, ptr %175, align 8, !dbg !3901
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3907
  store ptr %176, ptr %177, align 8, !dbg !3904, !tbaa !909
  %178 = icmp eq ptr %176, null, !dbg !3905
  br i1 %178, label %197, label %179, !dbg !3906

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3895, metadata !DIExpression()), !dbg !3899
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3895, metadata !DIExpression()), !dbg !3899
  %180 = icmp sgt i32 %174, -1, !dbg !3901
  br i1 %180, label %188, label %181, !dbg !3901

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3901
  store i32 %182, ptr %7, align 8, !dbg !3901
  %183 = icmp ult i32 %174, -7, !dbg !3901
  br i1 %183, label %184, label %188, !dbg !3901

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3901
  %186 = sext i32 %174 to i64, !dbg !3901
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3901
  br label %191, !dbg !3901

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3901
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3901
  store ptr %190, ptr %4, align 8, !dbg !3901
  br label %191, !dbg !3901

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3901
  %193 = load ptr, ptr %192, align 8, !dbg !3901
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3907
  store ptr %193, ptr %194, align 8, !dbg !3904, !tbaa !909
  %195 = icmp eq ptr %193, null, !dbg !3905
  %196 = select i1 %195, i64 9, i64 10, !dbg !3906
  br label %197, !dbg !3906

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3908
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3909
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !3910
  ret void, !dbg !3910
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3911 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3920
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3919, metadata !DIExpression(), metadata !3920, metadata ptr %5, metadata !DIExpression()), !dbg !3921
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3915, metadata !DIExpression()), !dbg !3921
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3916, metadata !DIExpression()), !dbg !3921
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3917, metadata !DIExpression()), !dbg !3921
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3918, metadata !DIExpression()), !dbg !3921
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41, !dbg !3922
  call void @llvm.va_start(ptr nonnull %5), !dbg !3923
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41, !dbg !3924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3924, !tbaa.struct !2015
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3924
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41, !dbg !3924
  call void @llvm.va_end(ptr nonnull %5), !dbg !3925
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41, !dbg !3926
  ret void, !dbg !3926
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3927 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3928, !tbaa !909
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %1), !dbg !3928
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.17.155, i32 noundef 5) #41, !dbg !3929
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.156) #41, !dbg !3929
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.19.157, i32 noundef 5) #41, !dbg !3930
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.158, ptr noundef nonnull @.str.21.159) #41, !dbg !3930
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.22.160, i32 noundef 5) #41, !dbg !3931
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.161) #41, !dbg !3931
  ret void, !dbg !3932
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3933 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3938, metadata !DIExpression()), !dbg !3941
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3939, metadata !DIExpression()), !dbg !3941
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3940, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3947
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3955
  %5 = icmp eq ptr %4, null, !dbg !3957
  br i1 %5, label %6, label %7, !dbg !3959

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !3960
  unreachable, !dbg !3960

7:                                                ; preds = %3
  ret ptr %4, !dbg !3961
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3943 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !3962
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3962
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !3962
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3964
  %5 = icmp eq ptr %4, null, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3967

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !3968
  unreachable, !dbg !3968

7:                                                ; preds = %3
  ret ptr %4, !dbg !3969
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !3970 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !3975
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !3976
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3977
  %3 = icmp eq ptr %2, null, !dbg !3979
  br i1 %3, label %4, label %5, !dbg !3980

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !3981
  unreachable, !dbg !3981

5:                                                ; preds = %1
  ret ptr %2, !dbg !3982
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3983 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !3984 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i64 %0, metadata !3990, metadata !DIExpression()), !dbg !3994
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !3996
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3997
  %3 = icmp eq ptr %2, null, !dbg !3999
  br i1 %3, label %4, label %5, !dbg !4000

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4001
  unreachable, !dbg !4001

5:                                                ; preds = %1
  ret ptr %2, !dbg !4002
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4003 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !4009
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4011
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !4012
  %3 = icmp eq ptr %2, null, !dbg !4014
  br i1 %3, label %4, label %5, !dbg !4015

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4016
  unreachable, !dbg !4016

5:                                                ; preds = %1
  ret ptr %2, !dbg !4017
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4032
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4033
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4034
  %5 = icmp eq ptr %4, null, !dbg !4036
  br i1 %5, label %6, label %7, !dbg !4037

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4038
  unreachable, !dbg !4038

7:                                                ; preds = %2
  ret ptr %4, !dbg !4039
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4040 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4041 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4045, metadata !DIExpression()), !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata ptr %0, metadata !4048, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4054
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4056
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4058
  %5 = icmp eq ptr %4, null, !dbg !4060
  br i1 %5, label %6, label %7, !dbg !4061

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4062
  unreachable, !dbg !4062

7:                                                ; preds = %2
  ret ptr %4, !dbg !4063
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4064 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4069, metadata !DIExpression()), !dbg !4071
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr %0, metadata !4072, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %1, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %2, metadata !4076, metadata !DIExpression()), !dbg !4077
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4079
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4080
  %5 = icmp eq ptr %4, null, !dbg !4082
  br i1 %5, label %6, label %7, !dbg !4083

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4084
  unreachable, !dbg !4084

7:                                                ; preds = %3
  ret ptr %4, !dbg !4085
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4086 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4090, metadata !DIExpression()), !dbg !4092
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata ptr null, metadata !3942, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %0, metadata !3945, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !4093
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4095
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4096
  %4 = icmp eq ptr %3, null, !dbg !4098
  br i1 %4, label %5, label %6, !dbg !4099

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4100
  unreachable, !dbg !4100

6:                                                ; preds = %2
  ret ptr %3, !dbg !4101
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4102 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4106, metadata !DIExpression()), !dbg !4108
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata ptr null, metadata !4068, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %0, metadata !4069, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %1, metadata !4070, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr null, metadata !4072, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %0, metadata !4075, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()), !dbg !4111
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4113
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4114
  %4 = icmp eq ptr %3, null, !dbg !4116
  br i1 %4, label %5, label %6, !dbg !4117

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4118
  unreachable, !dbg !4118

6:                                                ; preds = %2
  ret ptr %3, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4120 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4124, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4125, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr %0, metadata !845, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %1, metadata !846, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 1, metadata !847, metadata !DIExpression()), !dbg !4127
  %3 = load i64, ptr %1, align 8, !dbg !4129, !tbaa !3182
  call void @llvm.dbg.value(metadata i64 %3, metadata !848, metadata !DIExpression()), !dbg !4127
  %4 = icmp eq ptr %0, null, !dbg !4130
  br i1 %4, label %5, label %8, !dbg !4132

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4133
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4136
  br label %15, !dbg !4136

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4137
  %10 = add nuw i64 %9, 1, !dbg !4137
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4137
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4137
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %13, metadata !848, metadata !DIExpression()), !dbg !4127
  br i1 %12, label %14, label %15, !dbg !4140

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4141
  unreachable, !dbg !4141

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4127
  call void @llvm.dbg.value(metadata i64 %16, metadata !848, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 %16, metadata !3945, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i64 1, metadata !3946, metadata !DIExpression()), !dbg !4142
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %17, metadata !3950, metadata !DIExpression()), !dbg !4145
  %18 = icmp eq ptr %17, null, !dbg !4147
  br i1 %18, label %19, label %20, !dbg !4148

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4149
  unreachable, !dbg !4149

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !845, metadata !DIExpression()), !dbg !4127
  store i64 %16, ptr %1, align 8, !dbg !4150, !tbaa !3182
  ret ptr %17, !dbg !4151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !840 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !845, metadata !DIExpression()), !dbg !4152
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !846, metadata !DIExpression()), !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !847, metadata !DIExpression()), !dbg !4152
  %4 = load i64, ptr %1, align 8, !dbg !4153, !tbaa !3182
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !848, metadata !DIExpression()), !dbg !4152
  %5 = icmp eq ptr %0, null, !dbg !4154
  br i1 %5, label %6, label %13, !dbg !4155

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4156
  br i1 %7, label %8, label %20, !dbg !4157

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !848, metadata !DIExpression()), !dbg !4152
  %10 = icmp ugt i64 %2, 128, !dbg !4160
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4161
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !848, metadata !DIExpression()), !dbg !4152
  br label %20, !dbg !4162

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4163
  %15 = add nuw i64 %14, 1, !dbg !4163
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4163
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4163
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !848, metadata !DIExpression()), !dbg !4152
  br i1 %17, label %19, label %20, !dbg !4164

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4165
  unreachable, !dbg !4165

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !848, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %0, metadata !3942, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %21, metadata !3945, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i64 %2, metadata !3946, metadata !DIExpression()), !dbg !4166
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %22, metadata !3950, metadata !DIExpression()), !dbg !4169
  %23 = icmp eq ptr %22, null, !dbg !4171
  br i1 %23, label %24, label %25, !dbg !4172

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4173
  unreachable, !dbg !4173

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !845, metadata !DIExpression()), !dbg !4152
  store i64 %21, ptr %1, align 8, !dbg !4174, !tbaa !3182
  ret ptr %22, !dbg !4175
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !852 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !861, metadata !DIExpression()), !dbg !4176
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !862, metadata !DIExpression()), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !863, metadata !DIExpression()), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !864, metadata !DIExpression()), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !865, metadata !DIExpression()), !dbg !4176
  %6 = load i64, ptr %1, align 8, !dbg !4177, !tbaa !3182
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !866, metadata !DIExpression()), !dbg !4176
  %7 = ashr i64 %6, 1, !dbg !4178
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4178
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4178
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !867, metadata !DIExpression()), !dbg !4176
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !867, metadata !DIExpression()), !dbg !4176
  %12 = icmp sgt i64 %3, -1, !dbg !4181
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4183
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4183
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !867, metadata !DIExpression()), !dbg !4176
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4184
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4184
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !868, metadata !DIExpression()), !dbg !4176
  %18 = icmp slt i64 %17, 128, !dbg !4184
  %19 = select i1 %18, i64 128, i64 0, !dbg !4184
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !869, metadata !DIExpression()), !dbg !4176
  %21 = icmp eq i64 %20, 0, !dbg !4185
  br i1 %21, label %28, label %22, !dbg !4187

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !867, metadata !DIExpression()), !dbg !4176
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4190
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !868, metadata !DIExpression()), !dbg !4176
  br label %28, !dbg !4191

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4176
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !868, metadata !DIExpression()), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !867, metadata !DIExpression()), !dbg !4176
  %31 = icmp eq ptr %0, null, !dbg !4192
  br i1 %31, label %32, label %33, !dbg !4194

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4195, !tbaa !3182
  br label %33, !dbg !4196

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4197
  %35 = icmp slt i64 %34, %2, !dbg !4199
  br i1 %35, label %36, label %48, !dbg !4200

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4201
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4201
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !867, metadata !DIExpression()), !dbg !4176
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4202
  br i1 %42, label %47, label %43, !dbg !4202

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4203
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4203
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !868, metadata !DIExpression()), !dbg !4176
  br i1 %45, label %47, label %48, !dbg !4204

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #43, !dbg !4205
  unreachable, !dbg !4205

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4176
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !868, metadata !DIExpression()), !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !867, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %50, metadata !4023, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %0, metadata !4025, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i64 %50, metadata !4029, metadata !DIExpression()), !dbg !4208
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4210
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #48, !dbg !4211
  call void @llvm.dbg.value(metadata ptr %52, metadata !3950, metadata !DIExpression()), !dbg !4212
  %53 = icmp eq ptr %52, null, !dbg !4214
  br i1 %53, label %54, label %55, !dbg !4215

54:                                               ; preds = %48
  tail call void @xalloc_die() #43, !dbg !4216
  unreachable, !dbg !4216

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !861, metadata !DIExpression()), !dbg !4176
  store i64 %49, ptr %1, align 8, !dbg !4217, !tbaa !3182
  ret ptr %52, !dbg !4218
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4219 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 %0, metadata !4223, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i64 1, metadata !4226, metadata !DIExpression()), !dbg !4227
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4229
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !4230
  %3 = icmp eq ptr %2, null, !dbg !4232
  br i1 %3, label %4, label %5, !dbg !4233

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4234
  unreachable, !dbg !4234

5:                                                ; preds = %1
  ret ptr %2, !dbg !4235
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4236 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4224 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4223, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4226, metadata !DIExpression()), !dbg !4237
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4238
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4239
  %4 = icmp eq ptr %3, null, !dbg !4241
  br i1 %4, label %5, label %6, !dbg !4242

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4243
  unreachable, !dbg !4243

6:                                                ; preds = %2
  ret ptr %3, !dbg !4244
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4245 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 %0, metadata !4249, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 1, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata i64 %0, metadata !4255, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 1, metadata !4258, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 %0, metadata !4255, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i64 1, metadata !4258, metadata !DIExpression()), !dbg !4259
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !4262
  %3 = icmp eq ptr %2, null, !dbg !4264
  br i1 %3, label %4, label %5, !dbg !4265

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4266
  unreachable, !dbg !4266

5:                                                ; preds = %1
  ret ptr %2, !dbg !4267
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4250 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4249, metadata !DIExpression()), !dbg !4268
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4252, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %0, metadata !4255, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4258, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %0, metadata !4255, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4258, metadata !DIExpression()), !dbg !4269
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4272
  %4 = icmp eq ptr %3, null, !dbg !4274
  br i1 %4, label %5, label %6, !dbg !4275

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4276
  unreachable, !dbg !4276

6:                                                ; preds = %2
  ret ptr %3, !dbg !4277
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4278 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4282, metadata !DIExpression()), !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4283, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata i64 %1, metadata !3974, metadata !DIExpression()), !dbg !4285
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4287
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4288
  %4 = icmp eq ptr %3, null, !dbg !4290
  br i1 %4, label %5, label %6, !dbg !4291

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4292
  unreachable, !dbg !4292

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4293, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata i64 %1, metadata !4300, metadata !DIExpression()), !dbg !4301
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4303
  ret ptr %3, !dbg !4304
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4305 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4309, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3988, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3990, metadata !DIExpression()), !dbg !4314
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4316
  call void @llvm.dbg.value(metadata ptr %3, metadata !3950, metadata !DIExpression()), !dbg !4317
  %4 = icmp eq ptr %3, null, !dbg !4319
  br i1 %4, label %5, label %6, !dbg !4320

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4321
  unreachable, !dbg !4321

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4293, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i64 %1, metadata !4300, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4324
  ret ptr %3, !dbg !4325
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4326 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4333
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4331, metadata !DIExpression()), !dbg !4333
  %3 = add nsw i64 %1, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %3, metadata !3988, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %3, metadata !3990, metadata !DIExpression()), !dbg !4337
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4339
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4340
  %5 = icmp eq ptr %4, null, !dbg !4342
  br i1 %5, label %6, label %7, !dbg !4343

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4344
  unreachable, !dbg !4344

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4332, metadata !DIExpression()), !dbg !4333
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4345
  store i8 0, ptr %8, align 1, !dbg !4346, !tbaa !983
  call void @llvm.dbg.value(metadata ptr %4, metadata !4293, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i64 %1, metadata !4300, metadata !DIExpression()), !dbg !4347
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4349
  ret ptr %4, !dbg !4350
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4351 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4353, metadata !DIExpression()), !dbg !4354
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4355
  %3 = add i64 %2, 1, !dbg !4356
  call void @llvm.dbg.value(metadata ptr %0, metadata !4282, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %3, metadata !4283, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i64 %3, metadata !3974, metadata !DIExpression()), !dbg !4359
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4361
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !4362
  %5 = icmp eq ptr %4, null, !dbg !4364
  br i1 %5, label %6, label %7, !dbg !4365

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4366
  unreachable, !dbg !4366

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4293, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %0, metadata !4299, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %3, metadata !4300, metadata !DIExpression()), !dbg !4367
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4369
  ret ptr %4, !dbg !4370
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4371 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4375, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4373, metadata !DIExpression()), !dbg !4376
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.174, ptr noundef nonnull @.str.2.175, i32 noundef 5) #41, !dbg !4375
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.176, ptr noundef %2) #41, !dbg !4375
  %3 = icmp eq i32 %1, 0, !dbg !4375
  tail call void @llvm.assume(i1 %3), !dbg !4375
  tail call void @abort() #43, !dbg !4377
  unreachable, !dbg !4377
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4378 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4416, metadata !DIExpression()), !dbg !4421
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4422
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4417, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4421
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4423, metadata !DIExpression()), !dbg !4426
  %3 = load i32, ptr %0, align 8, !dbg !4428, !tbaa !4429
  %4 = and i32 %3, 32, !dbg !4430
  %5 = icmp eq i32 %4, 0, !dbg !4430
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4419, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4421
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4431
  %7 = icmp eq i32 %6, 0, !dbg !4432
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4420, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4421
  br i1 %5, label %8, label %18, !dbg !4433

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4435
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4421
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4436
  %11 = xor i1 %7, true, !dbg !4436
  %12 = sext i1 %11 to i32, !dbg !4436
  br i1 %10, label %21, label %13, !dbg !4436

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4437
  %15 = load i32, ptr %14, align 4, !dbg !4437, !tbaa !974
  %16 = icmp ne i32 %15, 9, !dbg !4438
  %17 = sext i1 %16 to i32, !dbg !4439
  br label %21, !dbg !4439

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4440

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4442
  store i32 0, ptr %20, align 4, !dbg !4444, !tbaa !974
  br label %21, !dbg !4442

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4421
  ret i32 %22, !dbg !4445
}

; Function Attrs: nounwind
declare !dbg !4446 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4489, metadata !DIExpression()), !dbg !4492
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4493
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4490, metadata !DIExpression()), !dbg !4492
  %3 = icmp slt i32 %2, 0, !dbg !4494
  br i1 %3, label %4, label %6, !dbg !4496

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4497
  br label %24, !dbg !4498

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4499
  %8 = icmp eq i32 %7, 0, !dbg !4499
  br i1 %8, label %13, label %9, !dbg !4501

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4502
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !4503
  %12 = icmp eq i64 %11, -1, !dbg !4504
  br i1 %12, label %16, label %13, !dbg !4505

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !4506
  %15 = icmp eq i32 %14, 0, !dbg !4506
  br i1 %15, label %16, label %18, !dbg !4507

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4489, metadata !DIExpression()), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4492
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4508
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4491, metadata !DIExpression()), !dbg !4492
  br label %24, !dbg !4509

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !4510
  %20 = load i32, ptr %19, align 4, !dbg !4510, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4489, metadata !DIExpression()), !dbg !4492
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4491, metadata !DIExpression()), !dbg !4492
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4508
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4491, metadata !DIExpression()), !dbg !4492
  %22 = icmp eq i32 %20, 0, !dbg !4511
  br i1 %22, label %24, label %23, !dbg !4509

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4513, !tbaa !974
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4491, metadata !DIExpression()), !dbg !4492
  br label %24, !dbg !4515

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4492
  ret i32 %25, !dbg !4516
}

; Function Attrs: nofree nounwind
declare !dbg !4517 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4518 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4519 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4560, metadata !DIExpression()), !dbg !4561
  %2 = icmp eq ptr %0, null, !dbg !4562
  br i1 %2, label %6, label %3, !dbg !4564

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4565
  %5 = icmp eq i32 %4, 0, !dbg !4565
  br i1 %5, label %6, label %8, !dbg !4566

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4567
  br label %16, !dbg !4568

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4569, metadata !DIExpression()), !dbg !4574
  %9 = load i32, ptr %0, align 8, !dbg !4576, !tbaa !4429
  %10 = and i32 %9, 256, !dbg !4578
  %11 = icmp eq i32 %10, 0, !dbg !4578
  br i1 %11, label %14, label %12, !dbg !4579

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !4580
  br label %14, !dbg !4580

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4581
  br label %16, !dbg !4582

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4561
  ret i32 %17, !dbg !4583
}

; Function Attrs: nofree nounwind
declare !dbg !4584 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4585 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4623, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4624, metadata !DIExpression()), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4625, metadata !DIExpression()), !dbg !4629
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4630
  %5 = load ptr, ptr %4, align 8, !dbg !4630, !tbaa !4631
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4632
  %7 = load ptr, ptr %6, align 8, !dbg !4632, !tbaa !4633
  %8 = icmp eq ptr %5, %7, !dbg !4634
  br i1 %8, label %9, label %27, !dbg !4635

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4636
  %11 = load ptr, ptr %10, align 8, !dbg !4636, !tbaa !1827
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4637
  %13 = load ptr, ptr %12, align 8, !dbg !4637, !tbaa !4638
  %14 = icmp eq ptr %11, %13, !dbg !4639
  br i1 %14, label %15, label %27, !dbg !4640

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4641
  %17 = load ptr, ptr %16, align 8, !dbg !4641, !tbaa !4642
  %18 = icmp eq ptr %17, null, !dbg !4643
  br i1 %18, label %19, label %27, !dbg !4644

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4645
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !4646
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4626, metadata !DIExpression()), !dbg !4647
  %22 = icmp eq i64 %21, -1, !dbg !4648
  br i1 %22, label %29, label %23, !dbg !4650

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4651, !tbaa !4429
  %25 = and i32 %24, -17, !dbg !4651
  store i32 %25, ptr %0, align 8, !dbg !4651, !tbaa !4429
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4652
  store i64 %21, ptr %26, align 8, !dbg !4653, !tbaa !4654
  br label %29, !dbg !4655

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4656
  br label %29, !dbg !4657

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4629
  ret i32 %30, !dbg !4658
}

; Function Attrs: nofree nounwind
declare !dbg !4659 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4667, metadata !DIExpression()), !dbg !4672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4668, metadata !DIExpression()), !dbg !4672
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4669, metadata !DIExpression()), !dbg !4672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4670, metadata !DIExpression()), !dbg !4672
  %5 = icmp eq ptr %1, null, !dbg !4673
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4675
  %7 = select i1 %5, ptr @.str.187, ptr %1, !dbg !4675
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4675
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4669, metadata !DIExpression()), !dbg !4672
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4668, metadata !DIExpression()), !dbg !4672
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4667, metadata !DIExpression()), !dbg !4672
  %9 = icmp eq ptr %3, null, !dbg !4676
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4678
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4670, metadata !DIExpression()), !dbg !4672
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4671, metadata !DIExpression()), !dbg !4672
  %12 = icmp ult i64 %11, -3, !dbg !4680
  br i1 %12, label %13, label %17, !dbg !4682

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !4683
  %15 = icmp eq i32 %14, 0, !dbg !4683
  br i1 %15, label %16, label %29, !dbg !4684

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4685, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata ptr %10, metadata !4692, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i32 0, metadata !4695, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.value(metadata i64 8, metadata !4696, metadata !DIExpression()), !dbg !4697
  store i64 0, ptr %10, align 1, !dbg !4699
  br label %29, !dbg !4700

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4701
  br i1 %18, label %19, label %20, !dbg !4703

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !4704
  unreachable, !dbg !4704

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4705

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #41, !dbg !4707
  br i1 %23, label %29, label %24, !dbg !4708

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4709
  br i1 %25, label %29, label %26, !dbg !4712

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4713, !tbaa !983
  %28 = zext i8 %27 to i32, !dbg !4714
  store i32 %28, ptr %6, align 4, !dbg !4715, !tbaa !974
  br label %29, !dbg !4716

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4672
  ret i64 %30, !dbg !4717
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4718 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !4724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4726, metadata !DIExpression()), !dbg !4730
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4727, metadata !DIExpression()), !dbg !4730
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4728, metadata !DIExpression()), !dbg !4730
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4731
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4731
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4729, metadata !DIExpression()), !dbg !4730
  br i1 %5, label %6, label %8, !dbg !4733

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !4734
  store i32 12, ptr %7, align 4, !dbg !4736, !tbaa !974
  br label %12, !dbg !4737

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4731
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4729, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.value(metadata ptr %0, metadata !4738, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.value(metadata i64 %9, metadata !4741, metadata !DIExpression()), !dbg !4742
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4744
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !4745
  br label %12, !dbg !4746

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4730
  ret ptr %13, !dbg !4747
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4748 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4750, metadata !DIExpression()), !dbg !4751
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #41, !dbg !4752
  ret i32 %2, !dbg !4753
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4754 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !4780
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4758, metadata !DIExpression(), metadata !4780, metadata ptr %3, metadata !DIExpression()), !dbg !4781
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()), !dbg !4781
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4757, metadata !DIExpression()), !dbg !4781
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41, !dbg !4782
  call void @llvm.va_start(ptr nonnull %3), !dbg !4783
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4768, metadata !DIExpression()), !dbg !4781
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
  ], !dbg !4784

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4785
  %6 = load i32, ptr %5, align 8, !dbg !4785
  %7 = icmp sgt i32 %6, -1, !dbg !4785
  br i1 %7, label %16, label %8, !dbg !4785

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !4785
  store i32 %9, ptr %5, align 8, !dbg !4785, !DIAssignID !4786
  call void @llvm.dbg.assign(metadata i32 %9, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4786, metadata ptr %5, metadata !DIExpression()), !dbg !4781
  %10 = icmp ult i32 %6, -7, !dbg !4785
  br i1 %10, label %11, label %16, !dbg !4785

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4785
  %13 = load ptr, ptr %12, align 8, !dbg !4785
  %14 = sext i32 %6 to i64, !dbg !4785
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !4785
  br label %19, !dbg !4785

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !4785
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !4785
  store ptr %18, ptr %3, align 8, !dbg !4785, !DIAssignID !4787
  call void @llvm.dbg.assign(metadata ptr %18, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4787, metadata ptr %3, metadata !DIExpression()), !dbg !4781
  br label %19, !dbg !4785

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !4785
  %21 = load i32, ptr %20, align 8, !dbg !4785
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4769, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata i32 %0, metadata !4789, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i32 %21, metadata !4792, metadata !DIExpression()), !dbg !4794
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #41, !dbg !4796
  call void @llvm.dbg.value(metadata i32 %22, metadata !4793, metadata !DIExpression()), !dbg !4794
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4768, metadata !DIExpression()), !dbg !4781
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4797
  %25 = load i32, ptr %24, align 8, !dbg !4797
  %26 = icmp sgt i32 %25, -1, !dbg !4797
  br i1 %26, label %35, label %27, !dbg !4797

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !4797
  store i32 %28, ptr %24, align 8, !dbg !4797, !DIAssignID !4798
  call void @llvm.dbg.assign(metadata i32 %28, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4798, metadata ptr %24, metadata !DIExpression()), !dbg !4781
  %29 = icmp ult i32 %25, -7, !dbg !4797
  br i1 %29, label %30, label %35, !dbg !4797

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4797
  %32 = load ptr, ptr %31, align 8, !dbg !4797
  %33 = sext i32 %25 to i64, !dbg !4797
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !4797
  br label %38, !dbg !4797

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !4797
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !4797
  store ptr %37, ptr %3, align 8, !dbg !4797, !DIAssignID !4799
  call void @llvm.dbg.assign(metadata ptr %37, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4799, metadata ptr %3, metadata !DIExpression()), !dbg !4781
  br label %38, !dbg !4797

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !4797
  %40 = load i32, ptr %39, align 8, !dbg !4797
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !4772, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i32 %0, metadata !800, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 %40, metadata !801, metadata !DIExpression()), !dbg !4801
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4803, !tbaa !974
  %42 = icmp sgt i32 %41, -1, !dbg !4805
  br i1 %42, label %43, label %55, !dbg !4806

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #41, !dbg !4807
  call void @llvm.dbg.value(metadata i32 %44, metadata !802, metadata !DIExpression()), !dbg !4801
  %45 = icmp sgt i32 %44, -1, !dbg !4809
  br i1 %45, label %50, label %46, !dbg !4811

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #44, !dbg !4812
  %48 = load i32, ptr %47, align 4, !dbg !4812, !tbaa !974
  %49 = icmp eq i32 %48, 22, !dbg !4813
  br i1 %49, label %51, label %50, !dbg !4814

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4815, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %44, metadata !802, metadata !DIExpression()), !dbg !4801
  br label %115, !dbg !4817

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !4789, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 %40, metadata !4792, metadata !DIExpression()), !dbg !4818
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #41, !dbg !4821
  call void @llvm.dbg.value(metadata i32 %52, metadata !4793, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 %52, metadata !802, metadata !DIExpression()), !dbg !4801
  %53 = icmp sgt i32 %52, -1, !dbg !4822
  br i1 %53, label %54, label %115, !dbg !4824

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4825, !tbaa !974
  br label %59, !dbg !4826

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !4789, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %40, metadata !4792, metadata !DIExpression()), !dbg !4827
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #41, !dbg !4829
  call void @llvm.dbg.value(metadata i32 %56, metadata !4793, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %56, metadata !802, metadata !DIExpression()), !dbg !4801
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !4830
  call void @llvm.dbg.value(metadata i32 %61, metadata !802, metadata !DIExpression()), !dbg !4801
  %62 = icmp sgt i32 %61, -1, !dbg !4831
  %63 = select i1 %62, i1 %60, i1 false, !dbg !4817
  br i1 %63, label %64, label %115, !dbg !4817

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #41, !dbg !4832
  call void @llvm.dbg.value(metadata i32 %65, metadata !803, metadata !DIExpression()), !dbg !4833
  %66 = icmp slt i32 %65, 0, !dbg !4834
  br i1 %66, label %71, label %67, !dbg !4835

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !4836
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #41, !dbg !4837
  %70 = icmp eq i32 %69, -1, !dbg !4838
  br i1 %70, label %71, label %115, !dbg !4839

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #44, !dbg !4840
  %73 = load i32, ptr %72, align 4, !dbg !4840, !tbaa !974
  call void @llvm.dbg.value(metadata i32 %73, metadata !806, metadata !DIExpression()), !dbg !4841
  %74 = call i32 @close(i32 noundef %61) #41, !dbg !4842
  store i32 %73, ptr %72, align 4, !dbg !4843, !tbaa !974
  call void @llvm.dbg.value(metadata i32 -1, metadata !802, metadata !DIExpression()), !dbg !4801
  br label %115, !dbg !4844

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41, !dbg !4845
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !4768, metadata !DIExpression()), !dbg !4781
  br label %115, !dbg !4846

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4847
  %79 = load i32, ptr %78, align 8, !dbg !4847
  %80 = icmp sgt i32 %79, -1, !dbg !4847
  br i1 %80, label %89, label %81, !dbg !4847

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !4847
  store i32 %82, ptr %78, align 8, !dbg !4847, !DIAssignID !4848
  call void @llvm.dbg.assign(metadata i32 %82, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4848, metadata ptr %78, metadata !DIExpression()), !dbg !4781
  %83 = icmp ult i32 %79, -7, !dbg !4847
  br i1 %83, label %84, label %89, !dbg !4847

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4847
  %86 = load ptr, ptr %85, align 8, !dbg !4847
  %87 = sext i32 %79 to i64, !dbg !4847
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !4847
  br label %92, !dbg !4847

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !4847
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !4847
  store ptr %91, ptr %3, align 8, !dbg !4847, !DIAssignID !4849
  call void @llvm.dbg.assign(metadata ptr %91, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4849, metadata ptr %3, metadata !DIExpression()), !dbg !4781
  br label %92, !dbg !4847

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !4847
  %94 = load i32, ptr %93, align 8, !dbg !4847
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !4774, metadata !DIExpression()), !dbg !4850
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #41, !dbg !4851
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !4768, metadata !DIExpression()), !dbg !4781
  br label %115, !dbg !4852

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !4853
  %98 = load i32, ptr %97, align 8, !dbg !4853
  %99 = icmp sgt i32 %98, -1, !dbg !4853
  br i1 %99, label %108, label %100, !dbg !4853

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !4853
  store i32 %101, ptr %97, align 8, !dbg !4853, !DIAssignID !4854
  call void @llvm.dbg.assign(metadata i32 %101, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !4854, metadata ptr %97, metadata !DIExpression()), !dbg !4781
  %102 = icmp ult i32 %98, -7, !dbg !4853
  br i1 %102, label %103, label %108, !dbg !4853

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !4853
  %105 = load ptr, ptr %104, align 8, !dbg !4853
  %106 = sext i32 %98 to i64, !dbg !4853
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !4853
  br label %111, !dbg !4853

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !4853
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !4853
  store ptr %110, ptr %3, align 8, !dbg !4853, !DIAssignID !4855
  call void @llvm.dbg.assign(metadata ptr %110, metadata !4758, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !4855, metadata ptr %3, metadata !DIExpression()), !dbg !4781
  br label %111, !dbg !4853

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !4853
  %113 = load ptr, ptr %112, align 8, !dbg !4853
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !4778, metadata !DIExpression()), !dbg !4856
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #41, !dbg !4857
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !4768, metadata !DIExpression()), !dbg !4781
  br label %115, !dbg !4858

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !4859
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !4768, metadata !DIExpression()), !dbg !4781
  call void @llvm.va_end(ptr nonnull %3), !dbg !4860
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41, !dbg !4861
  ret i32 %116, !dbg !4862
}

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4863 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4870
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4866, metadata !DIExpression(), metadata !4870, metadata ptr %2, metadata !DIExpression()), !dbg !4871
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4865, metadata !DIExpression()), !dbg !4871
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !4872
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !4873
  %4 = icmp eq i32 %3, 0, !dbg !4873
  br i1 %4, label %5, label %12, !dbg !4875

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4876, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr @.str.196, metadata !4879, metadata !DIExpression()), !dbg !4880
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.196, i64 2), !dbg !4883
  %7 = icmp eq i32 %6, 0, !dbg !4884
  br i1 %7, label %11, label %8, !dbg !4885

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4876, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata ptr @.str.1.197, metadata !4879, metadata !DIExpression()), !dbg !4886
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.197, i64 6), !dbg !4888
  %10 = icmp eq i32 %9, 0, !dbg !4889
  br i1 %10, label %11, label %12, !dbg !4890

11:                                               ; preds = %8, %5
  br label %12, !dbg !4891

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4871
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !4892
  ret i1 %13, !dbg !4892
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4893 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4897, metadata !DIExpression()), !dbg !4900
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4898, metadata !DIExpression()), !dbg !4900
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4899, metadata !DIExpression()), !dbg !4900
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !4901
  ret i32 %4, !dbg !4902
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4903 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4908
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !4909
  ret ptr %2, !dbg !4910
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4911 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4913, metadata !DIExpression()), !dbg !4915
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !4916
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4914, metadata !DIExpression()), !dbg !4915
  ret ptr %2, !dbg !4917
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4918 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4920, metadata !DIExpression()), !dbg !4927
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4921, metadata !DIExpression()), !dbg !4927
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4922, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 %0, metadata !4913, metadata !DIExpression()), !dbg !4928
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !4930
  call void @llvm.dbg.value(metadata ptr %4, metadata !4914, metadata !DIExpression()), !dbg !4928
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4923, metadata !DIExpression()), !dbg !4927
  %5 = icmp eq ptr %4, null, !dbg !4931
  br i1 %5, label %6, label %9, !dbg !4932

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4933
  br i1 %7, label %19, label %8, !dbg !4936

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4937, !tbaa !983
  br label %19, !dbg !4938

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !4939
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4924, metadata !DIExpression()), !dbg !4940
  %11 = icmp ult i64 %10, %2, !dbg !4941
  br i1 %11, label %12, label %14, !dbg !4943

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4944
  call void @llvm.dbg.value(metadata ptr %1, metadata !4946, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata ptr %4, metadata !4949, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.value(metadata i64 %13, metadata !4950, metadata !DIExpression()), !dbg !4951
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !4953
  br label %19, !dbg !4954

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4955
  br i1 %15, label %19, label %16, !dbg !4958

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4959
  call void @llvm.dbg.value(metadata ptr %1, metadata !4946, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata ptr %4, metadata !4949, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i64 %17, metadata !4950, metadata !DIExpression()), !dbg !4961
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !4963
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4964
  store i8 0, ptr %18, align 1, !dbg !4965, !tbaa !983
  br label %19, !dbg !4966

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4967
  ret i32 %20, !dbg !4968
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(0,1) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!73, !814, !439, !443, !475, !490, !762, !816, !821, !823, !825, !540, !554, !602, !827, !829, !754, !836, !871, !873, !875, !877, !879, !778, !881, !883, !797, !885, !887, !889}
!llvm.ident = !{!891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891, !891}
!llvm.module.flags = !{!892, !893, !894, !895, !896, !897, !898, !899}

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
!73 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/tee.o -MD -MP -MF src/.deps/tee.Tpo -c src/tee.c -o src/.tee.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !127, globals: !144, splitDebugInlining: false, nameTableKind: None)
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
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 18, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!439 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !440, splitDebugInlining: false, nameTableKind: None)
!440 = !{!434, !437}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !443, file: !444, line: 65, type: !468, isLocal: false, isDefinition: true)
!443 = distinct !DICompileUnit(language: DW_LANG_C11, file: !444, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-argmatch.o -MD -MP -MF lib/.deps/libcoreutils_a-argmatch.Tpo -c lib/argmatch.c -o lib/.libcoreutils_a-argmatch.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !445, retainedTypes: !448, globals: !449, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/argmatch.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b147d258438e01421d766b453f353b54")
!445 = !{!446}
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !447, line: 42, baseType: !76, size: 32, elements: !115)
!447 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!448 = !{!131, !141, !143}
!449 = !{!441, !450, !452, !454, !459, !464, !466}
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !444, line: 141, type: !296, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !444, line: 141, type: !356, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !444, line: 142, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 29)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !444, line: 160, type: !461, isLocal: true, isDefinition: true)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 21)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !444, line: 165, type: !301, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !444, line: 170, type: !265, isLocal: true, isDefinition: true)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !469, line: 69, baseType: !470)
!469 = !DIFile(filename: "lib/argmatch.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0538d47ac978b3f52562dc3536aacea1")
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "file_name", scope: !475, file: !476, line: 45, type: !141, isLocal: true, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !476, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !477, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!477 = !{!478, !480, !482, !484, !473, !486}
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !476, line: 121, type: !296, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !476, line: 121, type: !157, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !476, line: 123, type: !296, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !476, line: 126, type: !172, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !475, file: !476, line: 55, type: !179, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !490, file: !491, line: 66, type: !470, isLocal: false, isDefinition: true)
!490 = distinct !DICompileUnit(language: DW_LANG_C11, file: !491, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !492, globals: !493, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!492 = !{!131, !143}
!493 = !{!494, !496, !520, !522, !524, !526, !488, !528, !530, !532, !534, !536}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !491, line: 272, type: !265, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "old_file_name", scope: !498, file: !491, line: 304, type: !141, isLocal: true, isDefinition: true)
!498 = distinct !DISubprogram(name: "verror_at_line", scope: !491, file: !491, line: 298, type: !499, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !513)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !85, !85, !141, !76, !141, !501}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !502, line: 52, baseType: !503)
!502 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !504, line: 12, baseType: !505)
!504 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !491, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !507)
!507 = !{!508, !509, !510, !511, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !506, file: !491, baseType: !131, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !506, file: !491, baseType: !131, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !506, file: !491, baseType: !131, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !506, file: !491, baseType: !85, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !506, file: !491, baseType: !85, size: 32, offset: 224)
!513 = !{!514, !515, !516, !517, !518, !519}
!514 = !DILocalVariable(name: "status", arg: 1, scope: !498, file: !491, line: 298, type: !85)
!515 = !DILocalVariable(name: "errnum", arg: 2, scope: !498, file: !491, line: 298, type: !85)
!516 = !DILocalVariable(name: "file_name", arg: 3, scope: !498, file: !491, line: 298, type: !141)
!517 = !DILocalVariable(name: "line_number", arg: 4, scope: !498, file: !491, line: 298, type: !76)
!518 = !DILocalVariable(name: "message", arg: 5, scope: !498, file: !491, line: 298, type: !141)
!519 = !DILocalVariable(name: "args", arg: 6, scope: !498, file: !491, line: 298, type: !501)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "old_line_number", scope: !498, file: !491, line: 305, type: !76, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !491, line: 338, type: !19, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !301, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !279, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "error_message_count", scope: !490, file: !491, line: 69, type: !76, isLocal: false, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !490, file: !491, line: 295, type: !85, isLocal: false, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !296, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !461, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !491, line: 214, type: !265, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "program_name", scope: !540, file: !541, line: 31, type: !141, isLocal: false, isDefinition: true)
!540 = distinct !DICompileUnit(language: DW_LANG_C11, file: !541, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !542, globals: !543, splitDebugInlining: false, nameTableKind: None)
!541 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!542 = !{!131, !130}
!543 = !{!538, !544, !546}
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !541, line: 46, type: !301, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !541, line: 49, type: !19, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "utf07FF", scope: !550, file: !551, line: 46, type: !578, isLocal: true, isDefinition: true)
!550 = distinct !DISubprogram(name: "proper_name_lite", scope: !551, file: !551, line: 38, type: !552, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !556)
!551 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!552 = !DISubroutineType(types: !553)
!553 = !{!141, !141, !141}
!554 = distinct !DICompileUnit(language: DW_LANG_C11, file: !551, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !555, splitDebugInlining: false, nameTableKind: None)
!555 = !{!548}
!556 = !{!557, !558, !559, !560, !565}
!557 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !550, file: !551, line: 38, type: !141)
!558 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !550, file: !551, line: 38, type: !141)
!559 = !DILocalVariable(name: "translation", scope: !550, file: !551, line: 40, type: !141)
!560 = !DILocalVariable(name: "w", scope: !550, file: !551, line: 47, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !562, line: 37, baseType: !563)
!562 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !235, line: 57, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !235, line: 42, baseType: !76)
!565 = !DILocalVariable(name: "mbs", scope: !550, file: !551, line: 48, type: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !567, line: 6, baseType: !568)
!567 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !569, line: 21, baseType: !570)
!569 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 13, size: 64, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !570, file: !569, line: 15, baseType: !85, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !570, file: !569, line: 20, baseType: !574, size: 32, offset: 32)
!574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !570, file: !569, line: 16, size: 32, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !574, file: !569, line: 18, baseType: !76, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !574, file: !569, line: 19, baseType: !19, size: 32)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16, elements: !280)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !581, line: 78, type: !301, isLocal: true, isDefinition: true)
!581 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !581, line: 79, type: !274, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !581, line: 80, type: !375, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !581, line: 81, type: !375, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !581, line: 82, type: !162, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !581, line: 83, type: !279, isLocal: true, isDefinition: true)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(scope: null, file: !581, line: 84, type: !301, isLocal: true, isDefinition: true)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !581, line: 85, type: !296, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !581, line: 86, type: !296, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !581, line: 87, type: !301, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !602, file: !581, line: 76, type: !674, isLocal: false, isDefinition: true)
!602 = distinct !DICompileUnit(language: DW_LANG_C11, file: !581, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !603, retainedTypes: !609, globals: !610, splitDebugInlining: false, nameTableKind: None)
!603 = !{!446, !604, !89}
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !447, line: 254, baseType: !76, size: 32, elements: !605)
!605 = !{!606, !607, !608}
!606 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!607 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!608 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!609 = !{!131, !85, !137, !138}
!610 = !{!579, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !611, !615, !625, !627, !632, !634, !636, !638, !640, !663, !670, !672}
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !602, file: !581, line: 92, type: !613, isLocal: false, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 320, elements: !62)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !602, file: !581, line: 1040, type: !617, isLocal: false, isDefinition: true)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !581, line: 56, size: 448, elements: !618)
!618 = !{!619, !620, !621, !623, !624}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !617, file: !581, line: 59, baseType: !446, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !581, line: 62, baseType: !85, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !617, file: !581, line: 66, baseType: !622, size: 256, offset: 64)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !302)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !617, file: !581, line: 69, baseType: !141, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !617, file: !581, line: 72, baseType: !141, size: 64, offset: 384)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !602, file: !581, line: 107, type: !617, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "slot0", scope: !602, file: !581, line: 831, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 256)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !581, line: 321, type: !279, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !581, line: 357, type: !279, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !581, line: 358, type: !279, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !581, line: 199, type: !296, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "quote", scope: !642, file: !581, line: 228, type: !661, isLocal: true, isDefinition: true)
!642 = distinct !DISubprogram(name: "gettext_quote", scope: !581, file: !581, line: 197, type: !643, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!141, !141, !446}
!645 = !{!646, !647, !648, !649, !650}
!646 = !DILocalVariable(name: "msgid", arg: 1, scope: !642, file: !581, line: 197, type: !141)
!647 = !DILocalVariable(name: "s", arg: 2, scope: !642, file: !581, line: 197, type: !446)
!648 = !DILocalVariable(name: "translation", scope: !642, file: !581, line: 199, type: !141)
!649 = !DILocalVariable(name: "w", scope: !642, file: !581, line: 229, type: !561)
!650 = !DILocalVariable(name: "mbs", scope: !642, file: !581, line: 230, type: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !567, line: 6, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !569, line: 21, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 13, size: 64, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !653, file: !569, line: 15, baseType: !85, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !653, file: !569, line: 20, baseType: !657, size: 32, offset: 32)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !569, line: 16, size: 32, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !657, file: !569, line: 18, baseType: !76, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !657, file: !569, line: 19, baseType: !19, size: 32)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !662)
!662 = !{!281, !21}
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "slotvec", scope: !602, file: !581, line: 834, type: !665, isLocal: true, isDefinition: true)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !581, line: 823, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !666, file: !581, line: 825, baseType: !138, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !666, file: !581, line: 826, baseType: !130, size: 64, offset: 64)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(name: "nslots", scope: !602, file: !581, line: 832, type: !85, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "slotvec0", scope: !602, file: !581, line: 833, type: !666, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 704, elements: !405)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !677, line: 67, type: !157, isLocal: true, isDefinition: true)
!677 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !677, line: 69, type: !296, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !677, line: 83, type: !296, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !677, line: 83, type: !19, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !677, line: 85, type: !279, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !677, line: 88, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 171)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !677, line: 88, type: !693, isLocal: true, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 34)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !677, line: 105, type: !167, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !677, line: 109, type: !700, isLocal: true, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 23)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !677, line: 113, type: !705, isLocal: true, isDefinition: true)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 28)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !677, line: 120, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 32)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !677, line: 127, type: !715, isLocal: true, isDefinition: true)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !716)
!716 = !{!717}
!717 = !DISubrange(count: 36)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !677, line: 134, type: !323, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !677, line: 142, type: !722, isLocal: true, isDefinition: true)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !430)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !677, line: 150, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 48)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !677, line: 159, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 52)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !677, line: 170, type: !735, isLocal: true, isDefinition: true)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 60)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !677, line: 248, type: !162, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !677, line: 248, type: !342, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !677, line: 254, type: !162, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !677, line: 254, type: !152, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !677, line: 254, type: !323, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !677, line: 259, type: !3, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !677, line: 259, type: !456, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !754, file: !755, line: 26, type: !757, isLocal: false, isDefinition: true)
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !756, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!756 = !{!752}
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 376, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 47)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "exit_failure", scope: !762, file: !763, line: 24, type: !765, isLocal: false, isDefinition: true)
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!764 = !{!760}
!765 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !768, line: 34, type: !172, isLocal: true, isDefinition: true)
!768 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !768, line: 34, type: !296, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !768, line: 34, type: !318, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !775, line: 108, type: !56, isLocal: true, isDefinition: true)
!775 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "internal_state", scope: !778, file: !775, line: 97, type: !781, isLocal: true, isDefinition: true)
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, globals: !780, splitDebugInlining: false, nameTableKind: None)
!779 = !{!131, !138, !143}
!780 = !{!773, !776}
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !567, line: 6, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !569, line: 21, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !569, line: 13, size: 64, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !783, file: !569, line: 15, baseType: !85, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !783, file: !569, line: 20, baseType: !787, size: 32, offset: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !569, line: 16, size: 32, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !787, file: !569, line: 18, baseType: !76, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !787, file: !569, line: 19, baseType: !19, size: 32)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !793, file: !794, line: 506, type: !85, isLocal: true, isDefinition: true)
!793 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !794, file: !794, line: 485, type: !795, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !799)
!794 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!795 = !DISubroutineType(types: !796)
!796 = !{!85, !85, !85}
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !798, splitDebugInlining: false, nameTableKind: None)
!798 = !{!791}
!799 = !{!800, !801, !802, !803, !806}
!800 = !DILocalVariable(name: "fd", arg: 1, scope: !793, file: !794, line: 485, type: !85)
!801 = !DILocalVariable(name: "target", arg: 2, scope: !793, file: !794, line: 485, type: !85)
!802 = !DILocalVariable(name: "result", scope: !793, file: !794, line: 487, type: !85)
!803 = !DILocalVariable(name: "flags", scope: !804, file: !794, line: 530, type: !85)
!804 = distinct !DILexicalBlock(scope: !805, file: !794, line: 529, column: 5)
!805 = distinct !DILexicalBlock(scope: !793, file: !794, line: 528, column: 7)
!806 = !DILocalVariable(name: "saved_errno", scope: !807, file: !794, line: 533, type: !85)
!807 = distinct !DILexicalBlock(scope: !808, file: !794, line: 532, column: 9)
!808 = distinct !DILexicalBlock(scope: !804, file: !794, line: 531, column: 11)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !811, line: 35, type: !279, isLocal: true, isDefinition: true)
!811 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !811, line: 35, type: !274, isLocal: true, isDefinition: true)
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/iopoll.o -MD -MP -MF src/.deps/iopoll.Tpo -c src/iopoll.c -o src/.iopoll.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !815, splitDebugInlining: false, nameTableKind: None)
!815 = !{!419, !425, !427, !432}
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !818, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!818 = !{!819}
!819 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !820, line: 44, baseType: !76, size: 32, elements: !106)
!820 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!821 = distinct !DICompileUnit(language: DW_LANG_C11, file: !822, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-open-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-open-safer.Tpo -c lib/open-safer.c -o lib/.libcoreutils_a-open-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!822 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!823 = distinct !DICompileUnit(language: DW_LANG_C11, file: !824, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!824 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!825 = distinct !DICompileUnit(language: DW_LANG_C11, file: !826, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-isapipe.o -MD -MP -MF lib/.deps/libcoreutils_a-isapipe.Tpo -c lib/isapipe.c -o lib/.libcoreutils_a-isapipe.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!826 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !828, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer.Tpo -c lib/fd-safer.c -o lib/.libcoreutils_a-fd-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!828 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !677, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !830, retainedTypes: !834, globals: !835, splitDebugInlining: false, nameTableKind: None)
!830 = !{!831}
!831 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !677, line: 40, baseType: !76, size: 32, elements: !832)
!832 = !{!833}
!833 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!834 = !{!131}
!835 = !{!675, !678, !680, !682, !684, !686, !691, !696, !698, !703, !708, !713, !718, !720, !723, !728, !733, !738, !740, !742, !744, !746, !748, !750}
!836 = distinct !DICompileUnit(language: DW_LANG_C11, file: !837, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !838, retainedTypes: !870, splitDebugInlining: false, nameTableKind: None)
!837 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!838 = !{!839, !851}
!839 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !840, file: !837, line: 188, baseType: !76, size: 32, elements: !849)
!840 = distinct !DISubprogram(name: "x2nrealloc", scope: !837, file: !837, line: 176, type: !841, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !844)
!841 = !DISubroutineType(types: !842)
!842 = !{!131, !131, !843, !138}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!844 = !{!845, !846, !847, !848}
!845 = !DILocalVariable(name: "p", arg: 1, scope: !840, file: !837, line: 176, type: !131)
!846 = !DILocalVariable(name: "pn", arg: 2, scope: !840, file: !837, line: 176, type: !843)
!847 = !DILocalVariable(name: "s", arg: 3, scope: !840, file: !837, line: 176, type: !138)
!848 = !DILocalVariable(name: "n", scope: !840, file: !837, line: 178, type: !138)
!849 = !{!850}
!850 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!851 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !852, file: !837, line: 228, baseType: !76, size: 32, elements: !849)
!852 = distinct !DISubprogram(name: "xpalloc", scope: !837, file: !837, line: 223, type: !853, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !860)
!853 = !DISubroutineType(types: !854)
!854 = !{!131, !131, !855, !856, !858, !856}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !857, line: 130, baseType: !858)
!857 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !859, line: 18, baseType: !236)
!859 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !869}
!861 = !DILocalVariable(name: "pa", arg: 1, scope: !852, file: !837, line: 223, type: !131)
!862 = !DILocalVariable(name: "pn", arg: 2, scope: !852, file: !837, line: 223, type: !855)
!863 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !852, file: !837, line: 223, type: !856)
!864 = !DILocalVariable(name: "n_max", arg: 4, scope: !852, file: !837, line: 223, type: !858)
!865 = !DILocalVariable(name: "s", arg: 5, scope: !852, file: !837, line: 223, type: !856)
!866 = !DILocalVariable(name: "n0", scope: !852, file: !837, line: 230, type: !856)
!867 = !DILocalVariable(name: "n", scope: !852, file: !837, line: 237, type: !856)
!868 = !DILocalVariable(name: "nbytes", scope: !852, file: !837, line: 248, type: !856)
!869 = !DILocalVariable(name: "adjusted_nbytes", scope: !852, file: !837, line: 252, type: !856)
!870 = !{!130, !131}
!871 = distinct !DICompileUnit(language: DW_LANG_C11, file: !768, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !872, splitDebugInlining: false, nameTableKind: None)
!872 = !{!766, !769, !771}
!873 = distinct !DICompileUnit(language: DW_LANG_C11, file: !874, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!874 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!875 = distinct !DICompileUnit(language: DW_LANG_C11, file: !876, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!876 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !834, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!879 = distinct !DICompileUnit(language: DW_LANG_C11, file: !880, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !834, splitDebugInlining: false, nameTableKind: None)
!880 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!881 = distinct !DICompileUnit(language: DW_LANG_C11, file: !882, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !834, splitDebugInlining: false, nameTableKind: None)
!882 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!883 = distinct !DICompileUnit(language: DW_LANG_C11, file: !884, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!884 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!885 = distinct !DICompileUnit(language: DW_LANG_C11, file: !811, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !886, splitDebugInlining: false, nameTableKind: None)
!886 = !{!809, !812}
!887 = distinct !DICompileUnit(language: DW_LANG_C11, file: !888, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!888 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!889 = distinct !DICompileUnit(language: DW_LANG_C11, file: !890, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !834, splitDebugInlining: false, nameTableKind: None)
!890 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!891 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!892 = !{i32 7, !"Dwarf Version", i32 5}
!893 = !{i32 2, !"Debug Info Version", i32 3}
!894 = !{i32 1, !"wchar_size", i32 4}
!895 = !{i32 8, !"PIC Level", i32 2}
!896 = !{i32 7, !"PIE Level", i32 2}
!897 = !{i32 7, !"uwtable", i32 2}
!898 = !{i32 7, !"frame-pointer", i32 1}
!899 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!900 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !135, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !901)
!901 = !{!902}
!902 = !DILocalVariable(name: "status", arg: 1, scope: !900, file: !2, line: 81, type: !85)
!903 = !DILocation(line: 0, scope: !900)
!904 = !DILocation(line: 83, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !2, line: 83, column: 7)
!906 = !DILocation(line: 83, column: 7, scope: !900)
!907 = !DILocation(line: 84, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !2, line: 84, column: 5)
!909 = !{!910, !910, i64 0}
!910 = !{!"any pointer", !911, i64 0}
!911 = !{!"omnipotent char", !912, i64 0}
!912 = !{!"Simple C/C++ TBAA"}
!913 = !DILocation(line: 87, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !905, file: !2, line: 86, column: 5)
!915 = !DILocation(line: 88, column: 7, scope: !914)
!916 = !DILocation(line: 92, column: 7, scope: !914)
!917 = !DILocation(line: 96, column: 7, scope: !914)
!918 = !DILocation(line: 100, column: 7, scope: !914)
!919 = !DILocation(line: 104, column: 7, scope: !914)
!920 = !DILocation(line: 108, column: 7, scope: !914)
!921 = !DILocation(line: 109, column: 7, scope: !914)
!922 = !DILocation(line: 110, column: 7, scope: !914)
!923 = !DILocalVariable(name: "program", arg: 1, scope: !924, file: !84, line: 836, type: !141)
!924 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !925, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !141}
!927 = !{!923, !928, !935, !936, !938, !939}
!928 = !DILocalVariable(name: "infomap", scope: !924, file: !84, line: 838, type: !929)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 896, elements: !297)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !924, file: !84, line: 838, size: 128, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !931, file: !84, line: 838, baseType: !141, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !931, file: !84, line: 838, baseType: !141, size: 64, offset: 64)
!935 = !DILocalVariable(name: "node", scope: !924, file: !84, line: 848, type: !141)
!936 = !DILocalVariable(name: "map_prog", scope: !924, file: !84, line: 849, type: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!938 = !DILocalVariable(name: "lc_messages", scope: !924, file: !84, line: 861, type: !141)
!939 = !DILocalVariable(name: "url_program", scope: !924, file: !84, line: 874, type: !141)
!940 = !DILocation(line: 0, scope: !924, inlinedAt: !941)
!941 = distinct !DILocation(line: 123, column: 7, scope: !914)
!942 = !{}
!943 = !DILocation(line: 857, column: 3, scope: !924, inlinedAt: !941)
!944 = !DILocation(line: 861, column: 29, scope: !924, inlinedAt: !941)
!945 = !DILocation(line: 862, column: 7, scope: !946, inlinedAt: !941)
!946 = distinct !DILexicalBlock(scope: !924, file: !84, line: 862, column: 7)
!947 = !DILocation(line: 862, column: 19, scope: !946, inlinedAt: !941)
!948 = !DILocation(line: 862, column: 22, scope: !946, inlinedAt: !941)
!949 = !DILocation(line: 862, column: 7, scope: !924, inlinedAt: !941)
!950 = !DILocation(line: 868, column: 7, scope: !951, inlinedAt: !941)
!951 = distinct !DILexicalBlock(scope: !946, file: !84, line: 863, column: 5)
!952 = !DILocation(line: 870, column: 5, scope: !951, inlinedAt: !941)
!953 = !DILocation(line: 875, column: 3, scope: !924, inlinedAt: !941)
!954 = !DILocation(line: 877, column: 3, scope: !924, inlinedAt: !941)
!955 = !DILocation(line: 125, column: 3, scope: !900)
!956 = !DISubprogram(name: "dcgettext", scope: !957, file: !957, line: 51, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!958 = !DISubroutineType(types: !959)
!959 = !{!130, !141, !141, !85}
!960 = !DISubprogram(name: "__fprintf_chk", scope: !961, file: !961, line: 93, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!962 = !DISubroutineType(types: !963)
!963 = !{!85, !964, !85, !965, null}
!964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!966 = !DISubprogram(name: "__printf_chk", scope: !961, file: !961, line: 95, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubroutineType(types: !968)
!968 = !{!85, !85, !965, null}
!969 = !DISubprogram(name: "fputs_unlocked", scope: !502, file: !502, line: 691, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!85, !965, !964}
!972 = !DILocation(line: 0, scope: !186)
!973 = !DILocation(line: 581, column: 7, scope: !194)
!974 = !{!975, !975, i64 0}
!975 = !{!"int", !911, i64 0}
!976 = !DILocation(line: 581, column: 19, scope: !194)
!977 = !DILocation(line: 581, column: 7, scope: !186)
!978 = !DILocation(line: 585, column: 26, scope: !193)
!979 = !DILocation(line: 0, scope: !193)
!980 = !DILocation(line: 586, column: 23, scope: !193)
!981 = !DILocation(line: 586, column: 28, scope: !193)
!982 = !DILocation(line: 586, column: 32, scope: !193)
!983 = !{!911, !911, i64 0}
!984 = !DILocation(line: 586, column: 38, scope: !193)
!985 = !DILocalVariable(name: "__s1", arg: 1, scope: !986, file: !987, line: 1359, type: !141)
!986 = distinct !DISubprogram(name: "streq", scope: !987, file: !987, line: 1359, type: !988, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !990)
!987 = !DIFile(filename: "./lib/string.h", directory: "/src")
!988 = !DISubroutineType(types: !989)
!989 = !{!179, !141, !141}
!990 = !{!985, !991}
!991 = !DILocalVariable(name: "__s2", arg: 2, scope: !986, file: !987, line: 1359, type: !141)
!992 = !DILocation(line: 0, scope: !986, inlinedAt: !993)
!993 = distinct !DILocation(line: 586, column: 41, scope: !193)
!994 = !DILocation(line: 1361, column: 11, scope: !986, inlinedAt: !993)
!995 = !DILocation(line: 1361, column: 10, scope: !986, inlinedAt: !993)
!996 = !DILocation(line: 586, column: 19, scope: !193)
!997 = !DILocation(line: 587, column: 5, scope: !193)
!998 = !DILocation(line: 588, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !186, file: !84, line: 588, column: 7)
!1000 = !DILocation(line: 588, column: 7, scope: !186)
!1001 = !DILocation(line: 590, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !84, line: 589, column: 5)
!1003 = !DILocation(line: 591, column: 7, scope: !1002)
!1004 = !DILocation(line: 595, column: 37, scope: !186)
!1005 = !DILocation(line: 595, column: 35, scope: !186)
!1006 = !DILocation(line: 596, column: 29, scope: !186)
!1007 = !DILocation(line: 597, column: 8, scope: !201)
!1008 = !DILocation(line: 597, column: 7, scope: !186)
!1009 = !DILocation(line: 604, column: 24, scope: !200)
!1010 = !DILocation(line: 604, column: 12, scope: !201)
!1011 = !DILocation(line: 0, scope: !199)
!1012 = !DILocation(line: 610, column: 16, scope: !199)
!1013 = !DILocation(line: 610, column: 7, scope: !199)
!1014 = !DILocation(line: 611, column: 21, scope: !199)
!1015 = !{!1016, !1016, i64 0}
!1016 = !{!"short", !911, i64 0}
!1017 = !DILocation(line: 611, column: 19, scope: !199)
!1018 = !DILocation(line: 611, column: 16, scope: !199)
!1019 = !DILocation(line: 610, column: 30, scope: !199)
!1020 = distinct !{!1020, !1013, !1014, !1021}
!1021 = !{!"llvm.loop.mustprogress"}
!1022 = !DILocation(line: 612, column: 18, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !199, file: !84, line: 612, column: 11)
!1024 = !DILocation(line: 612, column: 11, scope: !199)
!1025 = !DILocation(line: 620, column: 23, scope: !186)
!1026 = !DILocation(line: 625, column: 39, scope: !186)
!1027 = !DILocation(line: 626, column: 3, scope: !186)
!1028 = !DILocation(line: 626, column: 10, scope: !186)
!1029 = !DILocation(line: 626, column: 21, scope: !186)
!1030 = !DILocation(line: 628, column: 44, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !84, line: 628, column: 11)
!1032 = distinct !DILexicalBlock(scope: !186, file: !84, line: 627, column: 5)
!1033 = !DILocation(line: 628, column: 32, scope: !1031)
!1034 = !DILocation(line: 628, column: 49, scope: !1031)
!1035 = !DILocation(line: 628, column: 11, scope: !1032)
!1036 = !DILocation(line: 630, column: 11, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !84, line: 630, column: 11)
!1038 = !DILocation(line: 630, column: 11, scope: !1032)
!1039 = !DILocation(line: 632, column: 26, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !84, line: 632, column: 15)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !84, line: 631, column: 9)
!1042 = !DILocation(line: 632, column: 34, scope: !1040)
!1043 = !DILocation(line: 632, column: 37, scope: !1040)
!1044 = !DILocation(line: 632, column: 15, scope: !1041)
!1045 = !DILocation(line: 640, column: 16, scope: !1032)
!1046 = distinct !{!1046, !1027, !1047, !1021}
!1047 = !DILocation(line: 641, column: 5, scope: !186)
!1048 = !DILocation(line: 644, column: 3, scope: !186)
!1049 = !DILocation(line: 0, scope: !986, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1051 = !DILocation(line: 0, scope: !986, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1053 = !DILocation(line: 0, scope: !986, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1055 = !DILocation(line: 0, scope: !986, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1057 = !DILocation(line: 0, scope: !986, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1059 = !DILocation(line: 0, scope: !986, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1061 = !DILocation(line: 0, scope: !986, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1063 = !DILocation(line: 0, scope: !986, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1065 = !DILocation(line: 0, scope: !986, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1067 = !DILocation(line: 0, scope: !986, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1069 = !DILocation(line: 663, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !186, file: !84, line: 663, column: 7)
!1071 = !DILocation(line: 664, column: 7, scope: !1070)
!1072 = !DILocation(line: 664, column: 10, scope: !1070)
!1073 = !DILocation(line: 663, column: 7, scope: !186)
!1074 = !DILocation(line: 669, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !84, line: 665, column: 5)
!1076 = !DILocation(line: 671, column: 5, scope: !1075)
!1077 = !DILocation(line: 676, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !84, line: 673, column: 5)
!1079 = !DILocation(line: 679, column: 3, scope: !186)
!1080 = !DILocation(line: 683, column: 3, scope: !186)
!1081 = !DILocation(line: 686, column: 3, scope: !186)
!1082 = !DILocation(line: 688, column: 3, scope: !186)
!1083 = !DILocation(line: 691, column: 3, scope: !186)
!1084 = !DILocation(line: 695, column: 3, scope: !186)
!1085 = !DILocation(line: 696, column: 1, scope: !186)
!1086 = !DISubprogram(name: "setlocale", scope: !1087, file: !1087, line: 122, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!130, !85, !141}
!1090 = !DISubprogram(name: "strncmp", scope: !1091, file: !1091, line: 159, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!85, !141, !141, !138}
!1094 = !DISubprogram(name: "exit", scope: !1095, file: !1095, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1095 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1096 = !DISubprogram(name: "getenv", scope: !1095, file: !1095, line: 641, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!130, !141}
!1099 = !DISubprogram(name: "strcmp", scope: !1091, file: !1091, line: 156, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!85, !141, !141}
!1102 = !DISubprogram(name: "strspn", scope: !1091, file: !1091, line: 297, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!140, !141, !141}
!1105 = !DISubprogram(name: "strchr", scope: !1091, file: !1091, line: 246, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!130, !141, !85}
!1108 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1114 = !DISubprogram(name: "strcspn", scope: !1091, file: !1091, line: 293, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DISubprogram(name: "fwrite_unlocked", scope: !502, file: !502, line: 704, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!138, !1118, !138, !138, !964}
!1118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!1119 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 129, type: !1120, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1123)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!85, !85, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1123 = !{!1124, !1125, !1126, !1127, !1128}
!1124 = !DILocalVariable(name: "argc", arg: 1, scope: !1119, file: !2, line: 129, type: !85)
!1125 = !DILocalVariable(name: "argv", arg: 2, scope: !1119, file: !2, line: 129, type: !1122)
!1126 = !DILocalVariable(name: "optc", scope: !1119, file: !2, line: 139, type: !85)
!1127 = !DILocalVariable(name: "pipe_check", scope: !1119, file: !2, line: 177, type: !179)
!1128 = !DILocalVariable(name: "ok", scope: !1119, file: !2, line: 184, type: !179)
!1129 = distinct !DIAssignID()
!1130 = !DILocation(line: 0, scope: !1119)
!1131 = !DILocation(line: 132, column: 21, scope: !1119)
!1132 = !DILocation(line: 132, column: 3, scope: !1119)
!1133 = !DILocation(line: 133, column: 3, scope: !1119)
!1134 = !DILocation(line: 134, column: 3, scope: !1119)
!1135 = !DILocation(line: 135, column: 3, scope: !1119)
!1136 = !DILocation(line: 137, column: 3, scope: !1119)
!1137 = !DILocation(line: 140, column: 3, scope: !1119)
!1138 = !DILocation(line: 140, column: 18, scope: !1119)
!1139 = !DILocation(line: 145, column: 18, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 143, column: 9)
!1141 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 141, column: 5)
!1142 = !DILocation(line: 146, column: 11, scope: !1140)
!1143 = !DILocation(line: 149, column: 29, scope: !1140)
!1144 = !DILocation(line: 150, column: 11, scope: !1140)
!1145 = !DILocation(line: 153, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 153, column: 15)
!1147 = !DILocation(line: 153, column: 15, scope: !1140)
!1148 = !DILocation(line: 154, column: 28, scope: !1146)
!1149 = !DILocation(line: 154, column: 26, scope: !1146)
!1150 = !DILocation(line: 154, column: 13, scope: !1146)
!1151 = distinct !{!1151, !1137, !1152, !1021}
!1152 = !DILocation(line: 167, column: 5, scope: !1119)
!1153 = !DILocation(line: 157, column: 26, scope: !1146)
!1154 = !DILocation(line: 160, column: 9, scope: !1140)
!1155 = !DILocation(line: 162, column: 9, scope: !1140)
!1156 = !DILocation(line: 165, column: 11, scope: !1140)
!1157 = !DILocation(line: 169, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 169, column: 7)
!1159 = !DILocation(line: 169, column: 7, scope: !1119)
!1160 = !DILocation(line: 170, column: 5, scope: !1158)
!1161 = !DILocation(line: 172, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 172, column: 7)
!1163 = !DILocation(line: 172, column: 20, scope: !1162)
!1164 = !DILocation(line: 172, column: 7, scope: !1119)
!1165 = !DILocation(line: 173, column: 5, scope: !1162)
!1166 = !DILocation(line: 177, column: 23, scope: !1119)
!1167 = !DILocation(line: 178, column: 23, scope: !1119)
!1168 = !DILocation(line: 179, column: 25, scope: !1119)
!1169 = !DILocation(line: 184, column: 31, scope: !1119)
!1170 = !DILocation(line: 184, column: 29, scope: !1119)
!1171 = !DILocation(line: 184, column: 40, scope: !1119)
!1172 = !DILocalVariable(name: "buffer", scope: !1173, file: !2, line: 236, type: !1208)
!1173 = distinct !DISubprogram(name: "tee_files", scope: !2, file: !2, line: 231, type: !1174, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!179, !85, !1122, !179}
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1172, !1184, !1188, !1189, !1190, !1191, !1193, !1200, !1204, !1206}
!1177 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1173, file: !2, line: 231, type: !85)
!1178 = !DILocalVariable(name: "files", arg: 2, scope: !1173, file: !2, line: 231, type: !1122)
!1179 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !1173, file: !2, line: 231, type: !179)
!1180 = !DILocalVariable(name: "n_outputs", scope: !1173, file: !2, line: 233, type: !138)
!1181 = !DILocalVariable(name: "descriptors", scope: !1173, file: !2, line: 234, type: !415)
!1182 = !DILocalVariable(name: "out_pollable", scope: !1173, file: !2, line: 235, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1184 = !DILocalVariable(name: "bytes_read", scope: !1173, file: !2, line: 237, type: !1185)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1186, line: 108, baseType: !1187)
!1186 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !235, line: 194, baseType: !236)
!1188 = !DILocalVariable(name: "first_out", scope: !1173, file: !2, line: 238, type: !85)
!1189 = !DILocalVariable(name: "ok", scope: !1173, file: !2, line: 239, type: !179)
!1190 = !DILocalVariable(name: "flags", scope: !1173, file: !2, line: 240, type: !85)
!1191 = !DILocalVariable(name: "i", scope: !1192, file: !2, line: 259, type: !85)
!1192 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 259, column: 3)
!1193 = !DILocalVariable(name: "__errstatus", scope: !1194, file: !2, line: 267, type: !1199)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 267, column: 11)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 264, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 263, column: 11)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 260, column: 5)
!1198 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 259, column: 3)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!1200 = !DILocalVariable(name: "err", scope: !1201, file: !2, line: 285, type: !85)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 283, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 282, column: 11)
!1203 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 281, column: 5)
!1204 = !DILocalVariable(name: "i", scope: !1205, file: !2, line: 312, type: !85)
!1205 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 312, column: 7)
!1206 = !DILocalVariable(name: "i", scope: !1207, file: !2, line: 331, type: !85)
!1207 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 331, column: 3)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 8192)
!1211 = !DILocation(line: 0, scope: !1173, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 184, column: 13, scope: !1119)
!1213 = !DILocation(line: 236, column: 3, scope: !1173, inlinedAt: !1212)
!1214 = !DILocation(line: 240, column: 48, scope: !1173, inlinedAt: !1212)
!1215 = !DILocation(line: 240, column: 45, scope: !1173, inlinedAt: !1212)
!1216 = !DILocation(line: 244, column: 12, scope: !1173, inlinedAt: !1212)
!1217 = !DILocation(line: 244, column: 3, scope: !1173, inlinedAt: !1212)
!1218 = !DILocation(line: 249, column: 34, scope: !1173, inlinedAt: !1212)
!1219 = !DILocation(line: 249, column: 27, scope: !1173, inlinedAt: !1212)
!1220 = !DILocation(line: 249, column: 17, scope: !1173, inlinedAt: !1212)
!1221 = !DILocation(line: 250, column: 7, scope: !1173, inlinedAt: !1212)
!1222 = !DILocation(line: 251, column: 20, scope: !1223, inlinedAt: !1212)
!1223 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 250, column: 7)
!1224 = !DILocation(line: 255, column: 23, scope: !1225, inlinedAt: !1212)
!1225 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 254, column: 7)
!1226 = !DILocation(line: 255, column: 21, scope: !1225, inlinedAt: !1212)
!1227 = !{!1228, !1228, i64 0}
!1228 = !{!"_Bool", !911, i64 0}
!1229 = !DILocation(line: 255, column: 5, scope: !1225, inlinedAt: !1212)
!1230 = !DILocation(line: 253, column: 18, scope: !1173, inlinedAt: !1212)
!1231 = !DILocation(line: 252, column: 8, scope: !1173, inlinedAt: !1212)
!1232 = !DILocation(line: 256, column: 24, scope: !1173, inlinedAt: !1212)
!1233 = !DILocation(line: 256, column: 12, scope: !1173, inlinedAt: !1212)
!1234 = !DILocation(line: 0, scope: !1192, inlinedAt: !1212)
!1235 = !DILocation(line: 259, column: 21, scope: !1198, inlinedAt: !1212)
!1236 = !DILocation(line: 259, column: 3, scope: !1192, inlinedAt: !1212)
!1237 = !DILocation(line: 280, column: 3, scope: !1173, inlinedAt: !1212)
!1238 = !DILocation(line: 262, column: 30, scope: !1197, inlinedAt: !1212)
!1239 = !DILocation(line: 262, column: 24, scope: !1197, inlinedAt: !1212)
!1240 = !DILocation(line: 262, column: 7, scope: !1197, inlinedAt: !1212)
!1241 = !DILocation(line: 262, column: 22, scope: !1197, inlinedAt: !1212)
!1242 = !DILocation(line: 263, column: 26, scope: !1196, inlinedAt: !1212)
!1243 = !DILocation(line: 263, column: 11, scope: !1197, inlinedAt: !1212)
!1244 = !DILocation(line: 265, column: 15, scope: !1195, inlinedAt: !1212)
!1245 = !DILocation(line: 266, column: 13, scope: !1246, inlinedAt: !1212)
!1246 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 265, column: 15)
!1247 = !DILocation(line: 266, column: 29, scope: !1246, inlinedAt: !1212)
!1248 = !DILocation(line: 267, column: 11, scope: !1195, inlinedAt: !1212)
!1249 = !DILocation(line: 0, scope: !1194, inlinedAt: !1212)
!1250 = !DILocation(line: 267, column: 11, scope: !1194, inlinedAt: !1212)
!1251 = !DILocation(line: 274, column: 15, scope: !1252, inlinedAt: !1212)
!1252 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 273, column: 9)
!1253 = !DILocation(line: 275, column: 31, scope: !1254, inlinedAt: !1212)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 274, column: 15)
!1255 = !DILocation(line: 275, column: 13, scope: !1254, inlinedAt: !1212)
!1256 = !DILocation(line: 275, column: 29, scope: !1254, inlinedAt: !1212)
!1257 = !DILocation(line: 276, column: 20, scope: !1252, inlinedAt: !1212)
!1258 = !DILocation(line: 259, column: 33, scope: !1198, inlinedAt: !1212)
!1259 = distinct !{!1259, !1236, !1260, !1021}
!1260 = !DILocation(line: 278, column: 5, scope: !1192, inlinedAt: !1212)
!1261 = !DILocation(line: 282, column: 22, scope: !1202, inlinedAt: !1212)
!1262 = !DILocation(line: 282, column: 25, scope: !1202, inlinedAt: !1212)
!1263 = !{i8 0, i8 2}
!1264 = !DILocation(line: 282, column: 11, scope: !1203, inlinedAt: !1212)
!1265 = !DILocation(line: 285, column: 43, scope: !1201, inlinedAt: !1212)
!1266 = !DILocation(line: 285, column: 21, scope: !1201, inlinedAt: !1212)
!1267 = !DILocation(line: 0, scope: !1201, inlinedAt: !1212)
!1268 = !DILocation(line: 288, column: 15, scope: !1201, inlinedAt: !1212)
!1269 = !DILocation(line: 290, column: 15, scope: !1270, inlinedAt: !1212)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 289, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 288, column: 15)
!1272 = !DILocation(line: 290, column: 21, scope: !1270, inlinedAt: !1212)
!1273 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1274, file: !2, line: 209, type: !415)
!1274 = distinct !DISubprogram(name: "fail_output", scope: !2, file: !2, line: 209, type: !1275, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!179, !415, !1122, !85}
!1277 = !{!1273, !1278, !1279, !1280, !1281, !1282}
!1278 = !DILocalVariable(name: "files", arg: 2, scope: !1274, file: !2, line: 209, type: !1122)
!1279 = !DILocalVariable(name: "i", arg: 3, scope: !1274, file: !2, line: 209, type: !85)
!1280 = !DILocalVariable(name: "w_errno", scope: !1274, file: !2, line: 211, type: !85)
!1281 = !DILocalVariable(name: "fail", scope: !1274, file: !2, line: 212, type: !179)
!1282 = !DILocalVariable(name: "__errstatus", scope: !1283, file: !2, line: 217, type: !1199)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 217, column: 7)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 216, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 215, column: 7)
!1286 = !DILocation(line: 0, scope: !1274, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 291, column: 19, scope: !1288, inlinedAt: !1212)
!1288 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 291, column: 19)
!1289 = !DILocation(line: 215, column: 7, scope: !1274, inlinedAt: !1287)
!1290 = !DILocation(line: 217, column: 7, scope: !1284, inlinedAt: !1287)
!1291 = !DILocation(line: 0, scope: !1283, inlinedAt: !1287)
!1292 = !DILocation(line: 217, column: 7, scope: !1283, inlinedAt: !1287)
!1293 = !DILocation(line: 213, column: 15, scope: !1274, inlinedAt: !1287)
!1294 = !DILocation(line: 221, column: 18, scope: !1274, inlinedAt: !1287)
!1295 = !DILocation(line: 291, column: 19, scope: !1270, inlinedAt: !1212)
!1296 = !DILocation(line: 293, column: 24, scope: !1270, inlinedAt: !1212)
!1297 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1298, file: !2, line: 197, type: !415)
!1298 = distinct !DISubprogram(name: "get_next_out", scope: !2, file: !2, line: 197, type: !1299, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!85, !415, !85, !85}
!1301 = !{!1297, !1302, !1303}
!1302 = !DILocalVariable(name: "nfiles", arg: 2, scope: !1298, file: !2, line: 197, type: !85)
!1303 = !DILocalVariable(name: "idx", arg: 3, scope: !1298, file: !2, line: 197, type: !85)
!1304 = !DILocation(line: 0, scope: !1298, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 294, column: 27, scope: !1270, inlinedAt: !1212)
!1306 = !DILocation(line: 199, column: 8, scope: !1307, inlinedAt: !1305)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 199, column: 3)
!1308 = !DILocation(line: 199, column: 19, scope: !1309, inlinedAt: !1305)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 199, column: 3)
!1310 = !DILocation(line: 199, column: 3, scope: !1307, inlinedAt: !1305)
!1311 = distinct !{!1311, !1237, !1312, !1021}
!1312 = !DILocation(line: 322, column: 5, scope: !1173, inlinedAt: !1212)
!1313 = !DILocation(line: 199, scope: !1307, inlinedAt: !1305)
!1314 = !DILocation(line: 200, column: 14, scope: !1315, inlinedAt: !1305)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 200, column: 9)
!1316 = !DILocation(line: 200, column: 11, scope: !1315, inlinedAt: !1305)
!1317 = !DILocation(line: 200, column: 9, scope: !1309, inlinedAt: !1305)
!1318 = distinct !{!1318, !1310, !1319, !1021}
!1319 = !DILocation(line: 201, column: 14, scope: !1307, inlinedAt: !1305)
!1320 = !DILocation(line: 203, column: 1, scope: !1298, inlinedAt: !1305)
!1321 = distinct !{!1321, !1237, !1312, !1021}
!1322 = !DILocation(line: 299, column: 15, scope: !1323, inlinedAt: !1212)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 298, column: 13)
!1324 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 297, column: 20)
!1325 = !DILocation(line: 301, column: 13, scope: !1323, inlinedAt: !1212)
!1326 = !DILocation(line: 304, column: 20, scope: !1203, inlinedAt: !1212)
!1327 = !DILocation(line: 305, column: 22, scope: !1328, inlinedAt: !1212)
!1328 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 305, column: 11)
!1329 = !DILocation(line: 305, column: 26, scope: !1328, inlinedAt: !1212)
!1330 = !DILocation(line: 305, column: 29, scope: !1328, inlinedAt: !1212)
!1331 = !DILocation(line: 305, column: 35, scope: !1328, inlinedAt: !1212)
!1332 = !DILocation(line: 305, column: 11, scope: !1203, inlinedAt: !1212)
!1333 = !DILocation(line: 0, scope: !1203, inlinedAt: !1212)
!1334 = distinct !{!1334, !1237, !1312, !1021}
!1335 = !DILocation(line: 307, column: 22, scope: !1336, inlinedAt: !1212)
!1336 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 307, column: 11)
!1337 = !DILocation(line: 307, column: 11, scope: !1203, inlinedAt: !1212)
!1338 = !DILocation(line: 0, scope: !1205, inlinedAt: !1212)
!1339 = !DILocation(line: 312, column: 7, scope: !1205, inlinedAt: !1212)
!1340 = distinct !{!1340, !1237, !1312, !1021}
!1341 = !DILocation(line: 313, column: 18, scope: !1342, inlinedAt: !1212)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 313, column: 13)
!1343 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 312, column: 7)
!1344 = !DILocation(line: 313, column: 15, scope: !1342, inlinedAt: !1212)
!1345 = !DILocation(line: 314, column: 13, scope: !1342, inlinedAt: !1212)
!1346 = !DILocation(line: 314, column: 18, scope: !1342, inlinedAt: !1212)
!1347 = !DILocation(line: 313, column: 13, scope: !1343, inlinedAt: !1212)
!1348 = !DILocation(line: 0, scope: !1274, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 316, column: 17, scope: !1350, inlinedAt: !1212)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 316, column: 17)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 315, column: 11)
!1352 = !DILocation(line: 211, column: 17, scope: !1274, inlinedAt: !1349)
!1353 = !DILocation(line: 212, column: 21, scope: !1274, inlinedAt: !1349)
!1354 = !DILocation(line: 215, column: 7, scope: !1274, inlinedAt: !1349)
!1355 = !DILocation(line: 217, column: 7, scope: !1284, inlinedAt: !1349)
!1356 = !DILocation(line: 0, scope: !1283, inlinedAt: !1349)
!1357 = !DILocation(line: 217, column: 7, scope: !1283, inlinedAt: !1349)
!1358 = !DILocation(line: 213, column: 15, scope: !1274, inlinedAt: !1349)
!1359 = !DILocation(line: 221, column: 18, scope: !1274, inlinedAt: !1349)
!1360 = !DILocation(line: 316, column: 17, scope: !1351, inlinedAt: !1212)
!1361 = !DILocation(line: 318, column: 22, scope: !1351, inlinedAt: !1212)
!1362 = !DILocation(line: 319, column: 19, scope: !1363, inlinedAt: !1212)
!1363 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 319, column: 17)
!1364 = !DILocation(line: 319, column: 17, scope: !1351, inlinedAt: !1212)
!1365 = !DILocation(line: 0, scope: !1298, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 320, column: 27, scope: !1363, inlinedAt: !1212)
!1367 = !DILocation(line: 199, column: 8, scope: !1307, inlinedAt: !1366)
!1368 = !DILocation(line: 199, column: 19, scope: !1309, inlinedAt: !1366)
!1369 = !DILocation(line: 199, column: 3, scope: !1307, inlinedAt: !1366)
!1370 = !DILocation(line: 199, scope: !1307, inlinedAt: !1366)
!1371 = !DILocation(line: 200, column: 14, scope: !1315, inlinedAt: !1366)
!1372 = !DILocation(line: 200, column: 11, scope: !1315, inlinedAt: !1366)
!1373 = !DILocation(line: 200, column: 9, scope: !1309, inlinedAt: !1366)
!1374 = distinct !{!1374, !1369, !1375, !1021}
!1375 = !DILocation(line: 201, column: 14, scope: !1307, inlinedAt: !1366)
!1376 = !DILocation(line: 203, column: 1, scope: !1298, inlinedAt: !1366)
!1377 = !DILocation(line: 312, column: 37, scope: !1343, inlinedAt: !1212)
!1378 = !DILocation(line: 312, column: 25, scope: !1343, inlinedAt: !1212)
!1379 = distinct !{!1379, !1339, !1380, !1021}
!1380 = !DILocation(line: 321, column: 11, scope: !1205, inlinedAt: !1212)
!1381 = !DILocation(line: 324, column: 18, scope: !1382, inlinedAt: !1212)
!1382 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 324, column: 7)
!1383 = !DILocation(line: 324, column: 7, scope: !1173, inlinedAt: !1212)
!1384 = !DILocation(line: 326, column: 7, scope: !1385, inlinedAt: !1212)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 325, column: 5)
!1386 = !DILocation(line: 328, column: 5, scope: !1385, inlinedAt: !1212)
!1387 = !DILocation(line: 331, column: 3, scope: !1207, inlinedAt: !1212)
!1388 = !DILocation(line: 0, scope: !1207, inlinedAt: !1212)
!1389 = !DILocation(line: 331, column: 21, scope: !1390, inlinedAt: !1212)
!1390 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 331, column: 3)
!1391 = !DILocation(line: 338, column: 3, scope: !1173, inlinedAt: !1212)
!1392 = !DILocation(line: 339, column: 7, scope: !1173, inlinedAt: !1212)
!1393 = !DILocation(line: 332, column: 14, scope: !1394, inlinedAt: !1212)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !2, line: 332, column: 9)
!1395 = !DILocation(line: 332, column: 11, scope: !1394, inlinedAt: !1212)
!1396 = !DILocation(line: 332, column: 29, scope: !1394, inlinedAt: !1212)
!1397 = !DILocation(line: 332, column: 34, scope: !1394, inlinedAt: !1212)
!1398 = !DILocation(line: 332, column: 9, scope: !1390, inlinedAt: !1212)
!1399 = !DILocation(line: 334, column: 9, scope: !1400, inlinedAt: !1212)
!1400 = distinct !DILexicalBlock(scope: !1394, file: !2, line: 333, column: 7)
!1401 = !DILocation(line: 336, column: 7, scope: !1400, inlinedAt: !1212)
!1402 = !DILocation(line: 331, column: 33, scope: !1390, inlinedAt: !1212)
!1403 = distinct !{!1403, !1387, !1404, !1021}
!1404 = !DILocation(line: 336, column: 7, scope: !1207, inlinedAt: !1212)
!1405 = !DILocation(line: 340, column: 5, scope: !1406, inlinedAt: !1212)
!1406 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 339, column: 7)
!1407 = !DILocation(line: 343, column: 1, scope: !1173, inlinedAt: !1212)
!1408 = !DILocation(line: 185, column: 7, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 185, column: 7)
!1410 = !DILocation(line: 185, column: 28, scope: !1409)
!1411 = !DILocation(line: 185, column: 7, scope: !1119)
!1412 = !DILocation(line: 186, column: 5, scope: !1409)
!1413 = !DILocation(line: 188, column: 10, scope: !1119)
!1414 = !DILocation(line: 188, column: 3, scope: !1119)
!1415 = !DISubprogram(name: "bindtextdomain", scope: !957, file: !957, line: 86, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!130, !141, !141}
!1418 = !DISubprogram(name: "textdomain", scope: !957, file: !957, line: 82, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DISubprogram(name: "atexit", scope: !1095, file: !1095, line: 602, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!85, !470}
!1422 = !DISubprogram(name: "getopt_long", scope: !410, file: !410, line: 66, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!85, !85, !1425, !141, !1427, !415}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!1428 = !DISubprogram(name: "signal", scope: !133, file: !133, line: 88, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!132, !85, !132}
!1431 = !DISubprogram(name: "__errno_location", scope: !1432, file: !1432, line: 37, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!415}
!1435 = !DISubprogram(name: "free", scope: !1095, file: !1095, line: 555, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !131}
!1438 = !DISubprogram(name: "close", scope: !1439, file: !1439, line: 358, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!85, !85}
!1442 = distinct !DISubprogram(name: "iopoll", scope: !421, file: !421, line: 139, type: !1443, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!85, !85, !85, !179}
!1445 = !{!1446, !1447, !1448}
!1446 = !DILocalVariable(name: "fdin", arg: 1, scope: !1442, file: !421, line: 139, type: !85)
!1447 = !DILocalVariable(name: "fdout", arg: 2, scope: !1442, file: !421, line: 139, type: !85)
!1448 = !DILocalVariable(name: "block", arg: 3, scope: !1442, file: !421, line: 139, type: !179)
!1449 = !DILocation(line: 0, scope: !1442)
!1450 = !DILocation(line: 141, column: 10, scope: !1442)
!1451 = !{i32 -3, i32 1}
!1452 = !DILocation(line: 141, column: 3, scope: !1442)
!1453 = distinct !DISubprogram(name: "iopoll_internal", scope: !421, file: !421, line: 62, type: !1454, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!85, !85, !85, !179, !179}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1470, !1471}
!1457 = !DILocalVariable(name: "fdin", arg: 1, scope: !1453, file: !421, line: 62, type: !85)
!1458 = !DILocalVariable(name: "fdout", arg: 2, scope: !1453, file: !421, line: 62, type: !85)
!1459 = !DILocalVariable(name: "block", arg: 3, scope: !1453, file: !421, line: 62, type: !179)
!1460 = !DILocalVariable(name: "broken_output", arg: 4, scope: !1453, file: !421, line: 62, type: !179)
!1461 = !DILocalVariable(name: "pfds", scope: !1453, file: !421, line: 67, type: !1462)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1463, size: 128, elements: !280)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1464, line: 36, size: 64, elements: !1465)
!1464 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!1465 = !{!1466, !1467, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1463, file: !1464, line: 38, baseType: !85, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1463, file: !1464, line: 39, baseType: !1468, size: 16, offset: 32)
!1468 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1463, file: !1464, line: 40, baseType: !1468, size: 16, offset: 48)
!1470 = !DILocalVariable(name: "check_out_events", scope: !1453, file: !421, line: 71, type: !85)
!1471 = !DILocalVariable(name: "ret", scope: !1453, file: !421, line: 72, type: !85)
!1472 = distinct !DIAssignID()
!1473 = !DILocation(line: 0, scope: !1453)
!1474 = !DILocation(line: 64, column: 3, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !421, line: 64, column: 3)
!1476 = distinct !DILexicalBlock(scope: !1453, file: !421, line: 64, column: 3)
!1477 = !DILocation(line: 67, column: 3, scope: !1453)
!1478 = !DILocation(line: 68, column: 5, scope: !1453)
!1479 = !{!1480, !975, i64 0}
!1480 = !{!"pollfd", !975, i64 0, !1016, i64 4, !1016, i64 6}
!1481 = distinct !DIAssignID()
!1482 = !{!1480, !1016, i64 4}
!1483 = distinct !DIAssignID()
!1484 = !{!1480, !1016, i64 6}
!1485 = distinct !DIAssignID()
!1486 = !DILocation(line: 67, column: 27, scope: !1453)
!1487 = !DILocation(line: 69, column: 5, scope: !1453)
!1488 = distinct !DIAssignID()
!1489 = distinct !DIAssignID()
!1490 = distinct !DIAssignID()
!1491 = !DILocation(line: 74, column: 7, scope: !1453)
!1492 = !DILocation(line: 76, column: 39, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !421, line: 75, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1453, file: !421, line: 74, column: 7)
!1495 = distinct !DIAssignID()
!1496 = !DILocation(line: 76, column: 22, scope: !1493)
!1497 = distinct !DIAssignID()
!1498 = !DILocation(line: 78, column: 5, scope: !1493)
!1499 = !DILocation(line: 80, column: 3, scope: !1453)
!1500 = !DILocation(line: 80, column: 12, scope: !1453)
!1501 = !DILocation(line: 80, column: 19, scope: !1453)
!1502 = !DILocation(line: 80, column: 22, scope: !1453)
!1503 = !DILocation(line: 80, column: 28, scope: !1453)
!1504 = !DILocation(line: 82, column: 13, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1453, file: !421, line: 81, column: 5)
!1506 = !DILocation(line: 84, column: 15, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !421, line: 84, column: 11)
!1508 = !DILocation(line: 84, column: 11, scope: !1505)
!1509 = distinct !{!1509, !1499, !1510, !1021}
!1510 = !DILocation(line: 93, column: 5, scope: !1453)
!1511 = !DILocation(line: 86, column: 15, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1505, file: !421, line: 86, column: 11)
!1513 = !DILocation(line: 86, column: 20, scope: !1512)
!1514 = !DILocation(line: 88, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1505, file: !421, line: 88, column: 7)
!1516 = !DILocation(line: 88, column: 7, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1515, file: !421, line: 88, column: 7)
!1518 = !DILocation(line: 89, column: 19, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1505, file: !421, line: 89, column: 11)
!1520 = !DILocation(line: 89, column: 11, scope: !1519)
!1521 = !DILocation(line: 89, column: 11, scope: !1505)
!1522 = !DILocation(line: 91, column: 19, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1505, file: !421, line: 91, column: 11)
!1524 = !DILocation(line: 91, column: 11, scope: !1523)
!1525 = !DILocation(line: 91, column: 27, scope: !1523)
!1526 = !DILocation(line: 91, column: 11, scope: !1505)
!1527 = !DILocation(line: 92, column: 16, scope: !1523)
!1528 = !DILocation(line: 92, column: 9, scope: !1523)
!1529 = !DILocation(line: 136, column: 1, scope: !1453)
!1530 = !DISubprogram(name: "__assert_fail", scope: !1531, file: !1531, line: 69, type: !1532, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1531 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !141, !141, !76, !141}
!1534 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !421, file: !421, line: 151, type: !1535, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!179, !85}
!1537 = !{!1538, !1539, !1575}
!1538 = !DILocalVariable(name: "fdin", arg: 1, scope: !1534, file: !421, line: 151, type: !85)
!1539 = !DILocalVariable(name: "st", scope: !1534, file: !421, line: 153, type: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1541, line: 44, size: 1024, elements: !1542)
!1541 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1542 = !{!1543, !1545, !1547, !1549, !1551, !1553, !1555, !1556, !1557, !1558, !1560, !1561, !1563, !1571, !1572, !1573}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1540, file: !1541, line: 46, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !235, line: 145, baseType: !140)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1540, file: !1541, line: 47, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !235, line: 148, baseType: !140)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1540, file: !1541, line: 48, baseType: !1548, size: 32, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !235, line: 150, baseType: !76)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1540, file: !1541, line: 49, baseType: !1550, size: 32, offset: 160)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !235, line: 151, baseType: !76)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1540, file: !1541, line: 50, baseType: !1552, size: 32, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !235, line: 146, baseType: !76)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1540, file: !1541, line: 51, baseType: !1554, size: 32, offset: 224)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !235, line: 147, baseType: !76)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1540, file: !1541, line: 52, baseType: !1544, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1540, file: !1541, line: 53, baseType: !1544, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1540, file: !1541, line: 54, baseType: !234, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1540, file: !1541, line: 55, baseType: !1559, size: 32, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !235, line: 175, baseType: !85)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1540, file: !1541, line: 56, baseType: !85, size: 32, offset: 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1540, file: !1541, line: 57, baseType: !1562, size: 64, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !235, line: 180, baseType: !236)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1540, file: !1541, line: 65, baseType: !1564, size: 128, offset: 576)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1565, line: 11, size: 128, elements: !1566)
!1565 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1566 = !{!1567, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1564, file: !1565, line: 16, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !235, line: 160, baseType: !236)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1564, file: !1565, line: 21, baseType: !1570, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !235, line: 197, baseType: !236)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1540, file: !1541, line: 66, baseType: !1564, size: 128, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1540, file: !1541, line: 67, baseType: !1564, size: 128, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1540, file: !1541, line: 79, baseType: !1574, size: 64, offset: 960)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !280)
!1575 = !DILocalVariable(name: "always_ready", scope: !1534, file: !421, line: 154, type: !179)
!1576 = distinct !DIAssignID()
!1577 = !DILocation(line: 0, scope: !1534)
!1578 = !DILocation(line: 153, column: 3, scope: !1534)
!1579 = !DILocation(line: 154, column: 23, scope: !1534)
!1580 = !DILocation(line: 154, column: 41, scope: !1534)
!1581 = !DILocation(line: 155, column: 23, scope: !1534)
!1582 = !DILocation(line: 155, column: 27, scope: !1534)
!1583 = !DILocation(line: 156, column: 27, scope: !1534)
!1584 = !DILocation(line: 157, column: 10, scope: !1534)
!1585 = !DILocation(line: 158, column: 1, scope: !1534)
!1586 = !DILocation(line: 157, column: 3, scope: !1534)
!1587 = !DISubprogram(name: "fstat", scope: !1588, file: !1588, line: 210, type: !1589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!85, !85, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1592 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !421, file: !421, line: 164, type: !1535, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1593)
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "fdout", arg: 1, scope: !1592, file: !421, line: 164, type: !85)
!1595 = !DILocation(line: 0, scope: !1592)
!1596 = !DILocation(line: 166, column: 10, scope: !1592)
!1597 = !DILocation(line: 166, column: 26, scope: !1592)
!1598 = !DILocation(line: 166, column: 3, scope: !1592)
!1599 = distinct !DISubprogram(name: "close_wait", scope: !421, file: !421, line: 200, type: !1535, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1600)
!1600 = !{!1601}
!1601 = !DILocalVariable(name: "fd", arg: 1, scope: !1599, file: !421, line: 200, type: !85)
!1602 = !DILocation(line: 0, scope: !1599)
!1603 = !DILocation(line: 202, column: 3, scope: !1599)
!1604 = !DILocalVariable(name: "fd", arg: 1, scope: !1605, file: !421, line: 180, type: !85)
!1605 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !421, file: !421, line: 180, type: !1535, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1606)
!1606 = !{!1604}
!1607 = !DILocation(line: 0, scope: !1605, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 202, column: 10, scope: !1599)
!1609 = !DILocation(line: 182, column: 9, scope: !1610, inlinedAt: !1608)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !421, line: 182, column: 7)
!1611 = !DILocation(line: 187, column: 7, scope: !1612, inlinedAt: !1608)
!1612 = distinct !DILexicalBlock(scope: !1605, file: !421, line: 187, column: 7)
!1613 = !DILocation(line: 187, column: 45, scope: !1612, inlinedAt: !1608)
!1614 = !DILocation(line: 187, column: 7, scope: !1605, inlinedAt: !1608)
!1615 = distinct !{!1615, !1603, !1616, !1021}
!1616 = !DILocation(line: 203, column: 5, scope: !1599)
!1617 = !DILocation(line: 189, column: 13, scope: !1618, inlinedAt: !1608)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !421, line: 188, column: 5)
!1619 = !DILocation(line: 190, column: 7, scope: !1618, inlinedAt: !1608)
!1620 = !DILocation(line: 204, column: 10, scope: !1599)
!1621 = !DILocation(line: 204, column: 21, scope: !1599)
!1622 = !DILocation(line: 204, column: 3, scope: !1599)
!1623 = distinct !DISubprogram(name: "write_wait", scope: !421, file: !421, line: 211, type: !1624, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !1626)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!179, !85, !128, !138}
!1626 = !{!1627, !1628, !1629, !1630, !1633}
!1627 = !DILocalVariable(name: "fd", arg: 1, scope: !1623, file: !421, line: 211, type: !85)
!1628 = !DILocalVariable(name: "buffer", arg: 2, scope: !1623, file: !421, line: 211, type: !128)
!1629 = !DILocalVariable(name: "size", arg: 3, scope: !1623, file: !421, line: 211, type: !138)
!1630 = !DILocalVariable(name: "buf", scope: !1623, file: !421, line: 213, type: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1633 = !DILocalVariable(name: "written", scope: !1634, file: !421, line: 217, type: !1185)
!1634 = distinct !DILexicalBlock(scope: !1623, file: !421, line: 216, column: 5)
!1635 = !DILocation(line: 0, scope: !1623)
!1636 = !DILocation(line: 217, column: 25, scope: !1634)
!1637 = !DILocation(line: 0, scope: !1634)
!1638 = !DILocation(line: 218, column: 11, scope: !1634)
!1639 = !DILocation(line: 221, column: 12, scope: !1634)
!1640 = !DILocation(line: 222, column: 16, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !421, line: 222, column: 11)
!1642 = !DILocation(line: 222, column: 11, scope: !1634)
!1643 = !DILocation(line: 0, scope: !1605, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 225, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1634, file: !421, line: 225, column: 11)
!1646 = !DILocation(line: 182, column: 9, scope: !1610, inlinedAt: !1644)
!1647 = !DILocation(line: 187, column: 7, scope: !1612, inlinedAt: !1644)
!1648 = !DILocation(line: 187, column: 45, scope: !1612, inlinedAt: !1644)
!1649 = !DILocation(line: 187, column: 7, scope: !1605, inlinedAt: !1644)
!1650 = !DILocation(line: 189, column: 13, scope: !1618, inlinedAt: !1644)
!1651 = !DILocation(line: 190, column: 7, scope: !1618, inlinedAt: !1644)
!1652 = !DILocation(line: 228, column: 11, scope: !1634)
!1653 = distinct !{!1653, !1654, !1655}
!1654 = !DILocation(line: 215, column: 3, scope: !1623)
!1655 = !DILocation(line: 229, column: 5, scope: !1623)
!1656 = !DILocation(line: 230, column: 1, scope: !1623)
!1657 = !DISubprogram(name: "write", scope: !1439, file: !1439, line: 378, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1185, !85, !128, !138}
!1660 = distinct !DISubprogram(name: "__argmatch_die", scope: !444, file: !444, line: 58, type: !471, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443)
!1661 = !DILocation(line: 60, column: 3, scope: !1660)
!1662 = !DILocation(line: 61, column: 1, scope: !1660)
!1663 = distinct !DISubprogram(name: "argmatch", scope: !444, file: !444, line: 80, type: !1664, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1667)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!858, !141, !1666, !128, !138}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1668 = !DILocalVariable(name: "arg", arg: 1, scope: !1663, file: !444, line: 80, type: !141)
!1669 = !DILocalVariable(name: "arglist", arg: 2, scope: !1663, file: !444, line: 80, type: !1666)
!1670 = !DILocalVariable(name: "vallist", arg: 3, scope: !1663, file: !444, line: 81, type: !128)
!1671 = !DILocalVariable(name: "valsize", arg: 4, scope: !1663, file: !444, line: 81, type: !138)
!1672 = !DILocalVariable(name: "arglen", scope: !1663, file: !444, line: 83, type: !138)
!1673 = !DILocalVariable(name: "matchind", scope: !1663, file: !444, line: 85, type: !858)
!1674 = !DILocalVariable(name: "ambiguous", scope: !1663, file: !444, line: 86, type: !179)
!1675 = !DILocalVariable(name: "i", scope: !1676, file: !444, line: 89, type: !138)
!1676 = distinct !DILexicalBlock(scope: !1663, file: !444, line: 89, column: 3)
!1677 = !DILocation(line: 0, scope: !1663)
!1678 = !DILocation(line: 83, column: 19, scope: !1663)
!1679 = !DILocation(line: 0, scope: !1676)
!1680 = !DILocation(line: 89, column: 22, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !444, line: 89, column: 3)
!1682 = !DILocation(line: 89, column: 3, scope: !1676)
!1683 = !DILocation(line: 91, column: 12, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !444, line: 91, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !444, line: 90, column: 5)
!1686 = !DILocation(line: 91, column: 11, scope: !1685)
!1687 = !DILocation(line: 93, column: 15, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !444, line: 93, column: 15)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !444, line: 92, column: 9)
!1690 = !DILocation(line: 93, column: 35, scope: !1688)
!1691 = !DILocation(line: 93, column: 15, scope: !1689)
!1692 = !DILocation(line: 96, column: 29, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !444, line: 96, column: 20)
!1694 = !DILocation(line: 96, column: 20, scope: !1688)
!1695 = !DILocation(line: 103, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !444, line: 102, column: 19)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !444, line: 100, column: 13)
!1698 = !DILocation(line: 103, column: 63, scope: !1696)
!1699 = !DILocation(line: 103, column: 53, scope: !1696)
!1700 = !DILocation(line: 104, column: 63, scope: !1696)
!1701 = !DILocation(line: 104, column: 53, scope: !1696)
!1702 = !DILocalVariable(name: "__s1", arg: 1, scope: !1703, file: !987, line: 974, type: !128)
!1703 = distinct !DISubprogram(name: "memeq", scope: !987, file: !987, line: 974, type: !1704, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!179, !128, !128, !138}
!1706 = !{!1702, !1707, !1708}
!1707 = !DILocalVariable(name: "__s2", arg: 2, scope: !1703, file: !987, line: 974, type: !128)
!1708 = !DILocalVariable(name: "__n", arg: 3, scope: !1703, file: !987, line: 974, type: !138)
!1709 = !DILocation(line: 0, scope: !1703, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 103, column: 23, scope: !1696)
!1711 = !DILocation(line: 976, column: 11, scope: !1703, inlinedAt: !1710)
!1712 = !DILocation(line: 976, column: 10, scope: !1703, inlinedAt: !1710)
!1713 = !DILocation(line: 102, column: 19, scope: !1697)
!1714 = !DILocation(line: 109, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1696, file: !444, line: 105, column: 17)
!1716 = !DILocation(line: 89, column: 35, scope: !1681)
!1717 = distinct !{!1717, !1682, !1718, !1021}
!1718 = !DILocation(line: 112, column: 5, scope: !1676)
!1719 = !DILocation(line: 0, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1663, file: !444, line: 113, column: 7)
!1721 = !DILocation(line: 117, column: 1, scope: !1663)
!1722 = !DISubprogram(name: "strlen", scope: !1091, file: !1091, line: 407, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!140, !141}
!1725 = distinct !DISubprogram(name: "argmatch_exact", scope: !444, file: !444, line: 120, type: !1726, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!858, !141, !1666}
!1728 = !{!1729, !1730, !1731}
!1729 = !DILocalVariable(name: "arg", arg: 1, scope: !1725, file: !444, line: 120, type: !141)
!1730 = !DILocalVariable(name: "arglist", arg: 2, scope: !1725, file: !444, line: 120, type: !1666)
!1731 = !DILocalVariable(name: "i", scope: !1732, file: !444, line: 123, type: !138)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !444, line: 123, column: 3)
!1733 = !DILocation(line: 0, scope: !1725)
!1734 = !DILocation(line: 0, scope: !1732)
!1735 = !DILocation(line: 123, column: 22, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !444, line: 123, column: 3)
!1737 = !DILocation(line: 123, column: 3, scope: !1732)
!1738 = !DILocalVariable(name: "__s1", arg: 1, scope: !1739, file: !987, line: 1359, type: !141)
!1739 = distinct !DISubprogram(name: "streq", scope: !987, file: !987, line: 1359, type: !988, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1740)
!1740 = !{!1738, !1741}
!1741 = !DILocalVariable(name: "__s2", arg: 2, scope: !1739, file: !987, line: 1359, type: !141)
!1742 = !DILocation(line: 0, scope: !1739, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 125, column: 11, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !444, line: 125, column: 11)
!1745 = distinct !DILexicalBlock(scope: !1736, file: !444, line: 124, column: 5)
!1746 = !DILocation(line: 1361, column: 11, scope: !1739, inlinedAt: !1743)
!1747 = !DILocation(line: 1361, column: 10, scope: !1739, inlinedAt: !1743)
!1748 = !DILocation(line: 125, column: 11, scope: !1745)
!1749 = !DILocation(line: 123, column: 35, scope: !1736)
!1750 = distinct !{!1750, !1737, !1751, !1021}
!1751 = !DILocation(line: 127, column: 5, scope: !1732)
!1752 = !DILocation(line: 130, column: 1, scope: !1725)
!1753 = distinct !DISubprogram(name: "argmatch_invalid", scope: !444, file: !444, line: 138, type: !1754, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !141, !141, !858}
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DILocalVariable(name: "context", arg: 1, scope: !1753, file: !444, line: 138, type: !141)
!1758 = !DILocalVariable(name: "value", arg: 2, scope: !1753, file: !444, line: 138, type: !141)
!1759 = !DILocalVariable(name: "problem", arg: 3, scope: !1753, file: !444, line: 138, type: !858)
!1760 = !DILocalVariable(name: "format", scope: !1753, file: !444, line: 140, type: !141)
!1761 = !DILocation(line: 0, scope: !1753)
!1762 = !DILocation(line: 140, column: 33, scope: !1753)
!1763 = !DILocation(line: 140, column: 25, scope: !1753)
!1764 = !DILocation(line: 144, column: 3, scope: !1753)
!1765 = !DILocation(line: 146, column: 1, scope: !1753)
!1766 = distinct !DISubprogram(name: "argmatch_valid", scope: !444, file: !444, line: 153, type: !1767, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1666, !128, !138}
!1769 = !{!1770, !1771, !1772, !1773, !1774}
!1770 = !DILocalVariable(name: "arglist", arg: 1, scope: !1766, file: !444, line: 153, type: !1666)
!1771 = !DILocalVariable(name: "vallist", arg: 2, scope: !1766, file: !444, line: 154, type: !128)
!1772 = !DILocalVariable(name: "valsize", arg: 3, scope: !1766, file: !444, line: 154, type: !138)
!1773 = !DILocalVariable(name: "last_val", scope: !1766, file: !444, line: 156, type: !141)
!1774 = !DILocalVariable(name: "i", scope: !1775, file: !444, line: 161, type: !138)
!1775 = distinct !DILexicalBlock(scope: !1766, file: !444, line: 161, column: 3)
!1776 = !DILocation(line: 0, scope: !1766)
!1777 = !DILocation(line: 160, column: 3, scope: !1766)
!1778 = !DILocation(line: 0, scope: !1775)
!1779 = !DILocation(line: 161, column: 22, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !444, line: 161, column: 3)
!1781 = !DILocation(line: 161, column: 3, scope: !1775)
!1782 = !DILocation(line: 172, column: 3, scope: !1766)
!1783 = !DILocalVariable(name: "__c", arg: 1, scope: !1784, file: !1785, line: 101, type: !85)
!1784 = distinct !DISubprogram(name: "putc_unlocked", scope: !1785, file: !1785, line: 101, type: !1786, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1822)
!1785 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!85, !85, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1790, file: !212, line: 51, baseType: !85, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1790, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1790, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1790, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1790, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1790, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1790, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1790, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1790, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1790, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1790, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1790, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1790, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1790, file: !212, line: 70, baseType: !1806, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1790, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1790, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1790, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1790, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1790, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1790, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1790, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1790, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1790, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1790, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1790, file: !212, line: 93, baseType: !1806, size: 64, offset: 1344)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1790, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1790, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1790, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1790, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!1822 = !{!1783, !1823}
!1823 = !DILocalVariable(name: "__stream", arg: 2, scope: !1784, file: !1785, line: 101, type: !1788)
!1824 = !DILocation(line: 0, scope: !1784, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 172, column: 3, scope: !1766)
!1826 = !DILocation(line: 103, column: 10, scope: !1784, inlinedAt: !1825)
!1827 = !{!1828, !910, i64 40}
!1828 = !{!"_IO_FILE", !975, i64 0, !910, i64 8, !910, i64 16, !910, i64 24, !910, i64 32, !910, i64 40, !910, i64 48, !910, i64 56, !910, i64 64, !910, i64 72, !910, i64 80, !910, i64 88, !910, i64 96, !910, i64 104, !975, i64 112, !975, i64 116, !1829, i64 120, !1016, i64 128, !911, i64 130, !911, i64 131, !910, i64 136, !1829, i64 144, !910, i64 152, !910, i64 160, !910, i64 168, !910, i64 176, !1829, i64 184, !975, i64 192, !911, i64 196}
!1829 = !{!"long", !911, i64 0}
!1830 = !{!1828, !910, i64 48}
!1831 = !{!"branch_weights", i32 2000, i32 1}
!1832 = !DILocation(line: 173, column: 1, scope: !1766)
!1833 = !DILocation(line: 162, column: 12, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1780, file: !444, line: 162, column: 9)
!1835 = !DILocation(line: 163, column: 9, scope: !1834)
!1836 = !DILocation(line: 163, column: 63, scope: !1834)
!1837 = !DILocation(line: 163, column: 53, scope: !1834)
!1838 = !DILocation(line: 0, scope: !1703, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 163, column: 13, scope: !1834)
!1840 = !DILocation(line: 976, column: 11, scope: !1703, inlinedAt: !1839)
!1841 = !DILocation(line: 976, column: 10, scope: !1703, inlinedAt: !1839)
!1842 = !DILocation(line: 162, column: 9, scope: !1780)
!1843 = !DILocation(line: 166, column: 53, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1834, file: !444, line: 164, column: 7)
!1845 = !DILocation(line: 165, column: 9, scope: !1844)
!1846 = !DILocation(line: 166, column: 43, scope: !1844)
!1847 = !DILocation(line: 167, column: 7, scope: !1844)
!1848 = !DILocation(line: 170, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1834, file: !444, line: 169, column: 7)
!1850 = !DILocation(line: 161, column: 35, scope: !1780)
!1851 = distinct !{!1851, !1781, !1852, !1021}
!1852 = !DILocation(line: 171, column: 7, scope: !1775)
!1853 = !DISubprogram(name: "__overflow", scope: !502, file: !502, line: 886, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!85, !1788, !85}
!1856 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !444, file: !444, line: 182, type: !1857, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!858, !141, !141, !1666, !128, !138, !468, !179}
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867}
!1860 = !DILocalVariable(name: "context", arg: 1, scope: !1856, file: !444, line: 182, type: !141)
!1861 = !DILocalVariable(name: "arg", arg: 2, scope: !1856, file: !444, line: 183, type: !141)
!1862 = !DILocalVariable(name: "arglist", arg: 3, scope: !1856, file: !444, line: 183, type: !1666)
!1863 = !DILocalVariable(name: "vallist", arg: 4, scope: !1856, file: !444, line: 184, type: !128)
!1864 = !DILocalVariable(name: "valsize", arg: 5, scope: !1856, file: !444, line: 184, type: !138)
!1865 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1856, file: !444, line: 185, type: !468)
!1866 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1856, file: !444, line: 186, type: !179)
!1867 = !DILocalVariable(name: "res", scope: !1856, file: !444, line: 188, type: !858)
!1868 = !DILocation(line: 0, scope: !1856)
!1869 = !DILocation(line: 189, column: 7, scope: !1856)
!1870 = !DILocation(line: 0, scope: !1663, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 190, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1856, file: !444, line: 189, column: 7)
!1873 = !DILocation(line: 83, column: 19, scope: !1663, inlinedAt: !1871)
!1874 = !DILocation(line: 0, scope: !1676, inlinedAt: !1871)
!1875 = !DILocation(line: 89, column: 22, scope: !1681, inlinedAt: !1871)
!1876 = !DILocation(line: 89, column: 3, scope: !1676, inlinedAt: !1871)
!1877 = !DILocation(line: 91, column: 12, scope: !1684, inlinedAt: !1871)
!1878 = !DILocation(line: 91, column: 11, scope: !1685, inlinedAt: !1871)
!1879 = !DILocation(line: 93, column: 15, scope: !1688, inlinedAt: !1871)
!1880 = !DILocation(line: 93, column: 35, scope: !1688, inlinedAt: !1871)
!1881 = !DILocation(line: 93, column: 15, scope: !1689, inlinedAt: !1871)
!1882 = !DILocation(line: 96, column: 29, scope: !1693, inlinedAt: !1871)
!1883 = !DILocation(line: 96, column: 20, scope: !1688, inlinedAt: !1871)
!1884 = !DILocation(line: 103, column: 19, scope: !1696, inlinedAt: !1871)
!1885 = !DILocation(line: 103, column: 63, scope: !1696, inlinedAt: !1871)
!1886 = !DILocation(line: 103, column: 53, scope: !1696, inlinedAt: !1871)
!1887 = !DILocation(line: 104, column: 63, scope: !1696, inlinedAt: !1871)
!1888 = !DILocation(line: 104, column: 53, scope: !1696, inlinedAt: !1871)
!1889 = !DILocation(line: 0, scope: !1703, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 103, column: 23, scope: !1696, inlinedAt: !1871)
!1891 = !DILocation(line: 976, column: 11, scope: !1703, inlinedAt: !1890)
!1892 = !DILocation(line: 976, column: 10, scope: !1703, inlinedAt: !1890)
!1893 = !DILocation(line: 102, column: 19, scope: !1697, inlinedAt: !1871)
!1894 = !DILocation(line: 89, column: 35, scope: !1681, inlinedAt: !1871)
!1895 = distinct !{!1895, !1876, !1896, !1021}
!1896 = !DILocation(line: 112, column: 5, scope: !1676, inlinedAt: !1871)
!1897 = !DILocation(line: 0, scope: !1720, inlinedAt: !1871)
!1898 = !DILocation(line: 0, scope: !1725, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 192, column: 11, scope: !1872)
!1900 = !DILocation(line: 0, scope: !1732, inlinedAt: !1899)
!1901 = !DILocation(line: 123, column: 22, scope: !1736, inlinedAt: !1899)
!1902 = !DILocation(line: 123, column: 3, scope: !1732, inlinedAt: !1899)
!1903 = !DILocation(line: 0, scope: !1739, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 125, column: 11, scope: !1744, inlinedAt: !1899)
!1905 = !DILocation(line: 1361, column: 11, scope: !1739, inlinedAt: !1904)
!1906 = !DILocation(line: 1361, column: 10, scope: !1739, inlinedAt: !1904)
!1907 = !DILocation(line: 125, column: 11, scope: !1745, inlinedAt: !1899)
!1908 = !DILocation(line: 123, column: 35, scope: !1736, inlinedAt: !1899)
!1909 = distinct !{!1909, !1902, !1910, !1021}
!1910 = !DILocation(line: 127, column: 5, scope: !1732, inlinedAt: !1899)
!1911 = !DILocation(line: 140, column: 33, scope: !1753, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 199, column: 3, scope: !1856)
!1913 = !DILocation(line: 0, scope: !1872)
!1914 = !DILocation(line: 194, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1856, file: !444, line: 194, column: 7)
!1916 = !DILocation(line: 194, column: 7, scope: !1856)
!1917 = !DILocation(line: 0, scope: !1753, inlinedAt: !1912)
!1918 = !DILocation(line: 140, column: 25, scope: !1753, inlinedAt: !1912)
!1919 = !DILocation(line: 144, column: 3, scope: !1753, inlinedAt: !1912)
!1920 = !DILocation(line: 200, column: 3, scope: !1856)
!1921 = !DILocation(line: 201, column: 3, scope: !1856)
!1922 = !DILocation(line: 203, column: 3, scope: !1856)
!1923 = !DILocation(line: 204, column: 1, scope: !1856)
!1924 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !444, file: !444, line: 209, type: !1925, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!141, !128, !1666, !128, !138}
!1927 = !{!1928, !1929, !1930, !1931, !1932}
!1928 = !DILocalVariable(name: "value", arg: 1, scope: !1924, file: !444, line: 209, type: !128)
!1929 = !DILocalVariable(name: "arglist", arg: 2, scope: !1924, file: !444, line: 210, type: !1666)
!1930 = !DILocalVariable(name: "vallist", arg: 3, scope: !1924, file: !444, line: 211, type: !128)
!1931 = !DILocalVariable(name: "valsize", arg: 4, scope: !1924, file: !444, line: 211, type: !138)
!1932 = !DILocalVariable(name: "i", scope: !1933, file: !444, line: 213, type: !138)
!1933 = distinct !DILexicalBlock(scope: !1924, file: !444, line: 213, column: 3)
!1934 = !DILocation(line: 0, scope: !1924)
!1935 = !DILocation(line: 0, scope: !1933)
!1936 = !DILocation(line: 213, column: 22, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !444, line: 213, column: 3)
!1938 = !DILocation(line: 213, column: 3, scope: !1933)
!1939 = !DILocation(line: 0, scope: !1703, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 214, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !444, line: 214, column: 9)
!1942 = !DILocation(line: 976, column: 11, scope: !1703, inlinedAt: !1940)
!1943 = !DILocation(line: 976, column: 10, scope: !1703, inlinedAt: !1940)
!1944 = !DILocation(line: 214, column: 9, scope: !1937)
!1945 = !DILocation(line: 213, column: 35, scope: !1937)
!1946 = distinct !{!1946, !1938, !1947, !1021}
!1947 = !DILocation(line: 215, column: 23, scope: !1933)
!1948 = !DILocation(line: 214, column: 56, scope: !1941)
!1949 = !DILocation(line: 214, column: 46, scope: !1941)
!1950 = !DILocation(line: 217, column: 1, scope: !1924)
!1951 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !476, file: !476, line: 50, type: !925, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1952)
!1952 = !{!1953}
!1953 = !DILocalVariable(name: "file", arg: 1, scope: !1951, file: !476, line: 50, type: !141)
!1954 = !DILocation(line: 0, scope: !1951)
!1955 = !DILocation(line: 52, column: 13, scope: !1951)
!1956 = !DILocation(line: 53, column: 1, scope: !1951)
!1957 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !476, file: !476, line: 87, type: !1958, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !179}
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "ignore", arg: 1, scope: !1957, file: !476, line: 87, type: !179)
!1962 = !DILocation(line: 0, scope: !1957)
!1963 = !DILocation(line: 89, column: 16, scope: !1957)
!1964 = !DILocation(line: 90, column: 1, scope: !1957)
!1965 = distinct !DISubprogram(name: "close_stdout", scope: !476, file: !476, line: 116, type: !471, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1966)
!1966 = !{!1967}
!1967 = !DILocalVariable(name: "write_error", scope: !1968, file: !476, line: 121, type: !141)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !476, line: 120, column: 5)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !476, line: 118, column: 7)
!1970 = !DILocation(line: 118, column: 21, scope: !1969)
!1971 = !DILocation(line: 118, column: 7, scope: !1969)
!1972 = !DILocation(line: 118, column: 29, scope: !1969)
!1973 = !DILocation(line: 119, column: 7, scope: !1969)
!1974 = !DILocation(line: 119, column: 12, scope: !1969)
!1975 = !DILocation(line: 119, column: 25, scope: !1969)
!1976 = !DILocation(line: 119, column: 28, scope: !1969)
!1977 = !DILocation(line: 119, column: 34, scope: !1969)
!1978 = !DILocation(line: 118, column: 7, scope: !1965)
!1979 = !DILocation(line: 121, column: 33, scope: !1968)
!1980 = !DILocation(line: 0, scope: !1968)
!1981 = !DILocation(line: 122, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1968, file: !476, line: 122, column: 11)
!1983 = !DILocation(line: 0, scope: !1982)
!1984 = !DILocation(line: 122, column: 11, scope: !1968)
!1985 = !DILocation(line: 123, column: 9, scope: !1982)
!1986 = !DILocation(line: 126, column: 9, scope: !1982)
!1987 = !DILocation(line: 128, column: 14, scope: !1968)
!1988 = !DILocation(line: 128, column: 7, scope: !1968)
!1989 = !DILocation(line: 133, column: 42, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1965, file: !476, line: 133, column: 7)
!1991 = !DILocation(line: 133, column: 28, scope: !1990)
!1992 = !DILocation(line: 133, column: 50, scope: !1990)
!1993 = !DILocation(line: 133, column: 7, scope: !1965)
!1994 = !DILocation(line: 134, column: 12, scope: !1990)
!1995 = !DILocation(line: 134, column: 5, scope: !1990)
!1996 = !DILocation(line: 135, column: 1, scope: !1965)
!1997 = !DISubprogram(name: "_exit", scope: !1439, file: !1439, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1998 = distinct !DISubprogram(name: "verror", scope: !491, file: !491, line: 251, type: !1999, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !85, !85, !141, !501}
!2001 = !{!2002, !2003, !2004, !2005}
!2002 = !DILocalVariable(name: "status", arg: 1, scope: !1998, file: !491, line: 251, type: !85)
!2003 = !DILocalVariable(name: "errnum", arg: 2, scope: !1998, file: !491, line: 251, type: !85)
!2004 = !DILocalVariable(name: "message", arg: 3, scope: !1998, file: !491, line: 251, type: !141)
!2005 = !DILocalVariable(name: "args", arg: 4, scope: !1998, file: !491, line: 251, type: !501)
!2006 = !DILocation(line: 0, scope: !1998)
!2007 = !DILocation(line: 261, column: 3, scope: !1998)
!2008 = !DILocation(line: 265, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !491, line: 265, column: 7)
!2010 = !DILocation(line: 265, column: 7, scope: !1998)
!2011 = !DILocation(line: 266, column: 5, scope: !2009)
!2012 = !DILocation(line: 272, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !491, line: 268, column: 5)
!2014 = !DILocation(line: 276, column: 3, scope: !1998)
!2015 = !{i64 0, i64 8, !909, i64 8, i64 8, !909, i64 16, i64 8, !909, i64 24, i64 4, !974, i64 28, i64 4, !974}
!2016 = !DILocation(line: 282, column: 1, scope: !1998)
!2017 = distinct !DISubprogram(name: "flush_stdout", scope: !491, file: !491, line: 163, type: !471, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "stdout_fd", scope: !2017, file: !491, line: 166, type: !85)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocalVariable(name: "fd", arg: 1, scope: !2022, file: !491, line: 145, type: !85)
!2022 = distinct !DISubprogram(name: "is_open", scope: !491, file: !491, line: 145, type: !1440, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2023)
!2023 = !{!2021}
!2024 = !DILocation(line: 0, scope: !2022, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 182, column: 25, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2017, file: !491, line: 182, column: 7)
!2027 = !DILocation(line: 157, column: 15, scope: !2022, inlinedAt: !2025)
!2028 = !DILocation(line: 157, column: 12, scope: !2022, inlinedAt: !2025)
!2029 = !DILocation(line: 182, column: 7, scope: !2017)
!2030 = !DILocation(line: 184, column: 5, scope: !2026)
!2031 = !DILocation(line: 185, column: 1, scope: !2017)
!2032 = distinct !DISubprogram(name: "error_tail", scope: !491, file: !491, line: 219, type: !1999, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2033)
!2033 = !{!2034, !2035, !2036, !2037}
!2034 = !DILocalVariable(name: "status", arg: 1, scope: !2032, file: !491, line: 219, type: !85)
!2035 = !DILocalVariable(name: "errnum", arg: 2, scope: !2032, file: !491, line: 219, type: !85)
!2036 = !DILocalVariable(name: "message", arg: 3, scope: !2032, file: !491, line: 219, type: !141)
!2037 = !DILocalVariable(name: "args", arg: 4, scope: !2032, file: !491, line: 219, type: !501)
!2038 = distinct !DIAssignID()
!2039 = !DILocation(line: 0, scope: !2032)
!2040 = !DILocation(line: 229, column: 13, scope: !2032)
!2041 = !DILocation(line: 135, column: 10, scope: !2042, inlinedAt: !2084)
!2042 = distinct !DISubprogram(name: "vfprintf", scope: !961, file: !961, line: 132, type: !2043, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2080)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!85, !2045, !965, !503}
!2045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2048, file: !212, line: 51, baseType: !85, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2048, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2048, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2048, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2048, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2048, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2048, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2048, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2048, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2048, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2048, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2048, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2048, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2048, file: !212, line: 70, baseType: !2064, size: 64, offset: 832)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2048, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2048, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2048, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2048, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2048, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2048, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2048, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2048, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2048, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2048, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2048, file: !212, line: 93, baseType: !2064, size: 64, offset: 1344)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2048, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2048, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2048, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2048, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "__stream", arg: 1, scope: !2042, file: !961, line: 132, type: !2045)
!2082 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2042, file: !961, line: 133, type: !965)
!2083 = !DILocalVariable(name: "__ap", arg: 3, scope: !2042, file: !961, line: 133, type: !503)
!2084 = distinct !DILocation(line: 229, column: 3, scope: !2032)
!2085 = !{!2086, !2088}
!2086 = distinct !{!2086, !2087, !"vfprintf.inline: argument 0"}
!2087 = distinct !{!2087, !"vfprintf.inline"}
!2088 = distinct !{!2088, !2087, !"vfprintf.inline: argument 1"}
!2089 = !DILocation(line: 229, column: 3, scope: !2032)
!2090 = !DILocation(line: 0, scope: !2042, inlinedAt: !2084)
!2091 = !DILocation(line: 232, column: 3, scope: !2032)
!2092 = !DILocation(line: 233, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2032, file: !491, line: 233, column: 7)
!2094 = !DILocation(line: 233, column: 7, scope: !2032)
!2095 = !DILocalVariable(name: "errbuf", scope: !2096, file: !491, line: 193, type: !2100)
!2096 = distinct !DISubprogram(name: "print_errno_message", scope: !491, file: !491, line: 188, type: !135, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2097)
!2097 = !{!2098, !2099, !2095}
!2098 = !DILocalVariable(name: "errnum", arg: 1, scope: !2096, file: !491, line: 188, type: !85)
!2099 = !DILocalVariable(name: "s", scope: !2096, file: !491, line: 190, type: !141)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2101)
!2101 = !{!2102}
!2102 = !DISubrange(count: 1024)
!2103 = !DILocation(line: 0, scope: !2096, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 234, column: 5, scope: !2093)
!2105 = !DILocation(line: 193, column: 3, scope: !2096, inlinedAt: !2104)
!2106 = !DILocation(line: 195, column: 7, scope: !2096, inlinedAt: !2104)
!2107 = !DILocation(line: 207, column: 9, scope: !2108, inlinedAt: !2104)
!2108 = distinct !DILexicalBlock(scope: !2096, file: !491, line: 207, column: 7)
!2109 = !DILocation(line: 207, column: 7, scope: !2096, inlinedAt: !2104)
!2110 = !DILocation(line: 208, column: 9, scope: !2108, inlinedAt: !2104)
!2111 = !DILocation(line: 208, column: 5, scope: !2108, inlinedAt: !2104)
!2112 = !DILocation(line: 214, column: 3, scope: !2096, inlinedAt: !2104)
!2113 = !DILocation(line: 216, column: 1, scope: !2096, inlinedAt: !2104)
!2114 = !DILocation(line: 234, column: 5, scope: !2093)
!2115 = !DILocation(line: 238, column: 3, scope: !2032)
!2116 = !DILocalVariable(name: "__c", arg: 1, scope: !2117, file: !1785, line: 101, type: !85)
!2117 = distinct !DISubprogram(name: "putc_unlocked", scope: !1785, file: !1785, line: 101, type: !2118, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!85, !85, !2046}
!2120 = !{!2116, !2121}
!2121 = !DILocalVariable(name: "__stream", arg: 2, scope: !2117, file: !1785, line: 101, type: !2046)
!2122 = !DILocation(line: 0, scope: !2117, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 238, column: 3, scope: !2032)
!2124 = !DILocation(line: 103, column: 10, scope: !2117, inlinedAt: !2123)
!2125 = !DILocation(line: 240, column: 3, scope: !2032)
!2126 = !DILocation(line: 241, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2032, file: !491, line: 241, column: 7)
!2128 = !DILocation(line: 241, column: 7, scope: !2032)
!2129 = !DILocation(line: 242, column: 5, scope: !2127)
!2130 = !DILocation(line: 243, column: 1, scope: !2032)
!2131 = !DISubprogram(name: "__vfprintf_chk", scope: !961, file: !961, line: 96, type: !2132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!85, !2045, !85, !965, !503}
!2134 = !DISubprogram(name: "strerror_r", scope: !1091, file: !1091, line: 444, type: !2135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!130, !85, !130, !138}
!2137 = !DISubprogram(name: "fflush_unlocked", scope: !502, file: !502, line: 239, type: !2138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!85, !2046}
!2140 = !DISubprogram(name: "fcntl", scope: !2141, file: !2141, line: 149, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2141 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!85, !85, !85, null}
!2144 = distinct !DISubprogram(name: "error", scope: !491, file: !491, line: 285, type: !2145, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !85, !85, !141, null}
!2147 = !{!2148, !2149, !2150, !2151}
!2148 = !DILocalVariable(name: "status", arg: 1, scope: !2144, file: !491, line: 285, type: !85)
!2149 = !DILocalVariable(name: "errnum", arg: 2, scope: !2144, file: !491, line: 285, type: !85)
!2150 = !DILocalVariable(name: "message", arg: 3, scope: !2144, file: !491, line: 285, type: !141)
!2151 = !DILocalVariable(name: "ap", scope: !2144, file: !491, line: 287, type: !501)
!2152 = distinct !DIAssignID()
!2153 = !DILocation(line: 0, scope: !2144)
!2154 = !DILocation(line: 287, column: 3, scope: !2144)
!2155 = !DILocation(line: 288, column: 3, scope: !2144)
!2156 = !DILocation(line: 289, column: 3, scope: !2144)
!2157 = !DILocation(line: 290, column: 3, scope: !2144)
!2158 = !DILocation(line: 291, column: 1, scope: !2144)
!2159 = !DILocation(line: 0, scope: !498)
!2160 = !DILocation(line: 302, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !498, file: !491, line: 302, column: 7)
!2162 = !DILocation(line: 302, column: 7, scope: !498)
!2163 = !DILocation(line: 307, column: 11, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !491, line: 307, column: 11)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !491, line: 303, column: 5)
!2166 = !DILocation(line: 307, column: 27, scope: !2164)
!2167 = !DILocation(line: 308, column: 11, scope: !2164)
!2168 = !DILocation(line: 308, column: 28, scope: !2164)
!2169 = !DILocation(line: 308, column: 25, scope: !2164)
!2170 = !DILocation(line: 309, column: 15, scope: !2164)
!2171 = !DILocation(line: 309, column: 33, scope: !2164)
!2172 = !DILocation(line: 310, column: 19, scope: !2164)
!2173 = !DILocation(line: 311, column: 22, scope: !2164)
!2174 = !DILocation(line: 311, column: 56, scope: !2164)
!2175 = !DILocation(line: 307, column: 11, scope: !2165)
!2176 = !DILocation(line: 316, column: 21, scope: !2165)
!2177 = !DILocation(line: 317, column: 23, scope: !2165)
!2178 = !DILocation(line: 318, column: 5, scope: !2165)
!2179 = !DILocation(line: 327, column: 3, scope: !498)
!2180 = !DILocation(line: 331, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !498, file: !491, line: 331, column: 7)
!2182 = !DILocation(line: 331, column: 7, scope: !498)
!2183 = !DILocation(line: 332, column: 5, scope: !2181)
!2184 = !DILocation(line: 338, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !491, line: 334, column: 5)
!2186 = !DILocation(line: 346, column: 3, scope: !498)
!2187 = !DILocation(line: 350, column: 3, scope: !498)
!2188 = !DILocation(line: 356, column: 1, scope: !498)
!2189 = distinct !DISubprogram(name: "error_at_line", scope: !491, file: !491, line: 359, type: !2190, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !85, !85, !141, !76, !141, null}
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198}
!2193 = !DILocalVariable(name: "status", arg: 1, scope: !2189, file: !491, line: 359, type: !85)
!2194 = !DILocalVariable(name: "errnum", arg: 2, scope: !2189, file: !491, line: 359, type: !85)
!2195 = !DILocalVariable(name: "file_name", arg: 3, scope: !2189, file: !491, line: 359, type: !141)
!2196 = !DILocalVariable(name: "line_number", arg: 4, scope: !2189, file: !491, line: 360, type: !76)
!2197 = !DILocalVariable(name: "message", arg: 5, scope: !2189, file: !491, line: 360, type: !141)
!2198 = !DILocalVariable(name: "ap", scope: !2189, file: !491, line: 362, type: !501)
!2199 = distinct !DIAssignID()
!2200 = !DILocation(line: 0, scope: !2189)
!2201 = !DILocation(line: 362, column: 3, scope: !2189)
!2202 = !DILocation(line: 363, column: 3, scope: !2189)
!2203 = !DILocation(line: 364, column: 3, scope: !2189)
!2204 = !DILocation(line: 366, column: 3, scope: !2189)
!2205 = !DILocation(line: 367, column: 1, scope: !2189)
!2206 = distinct !DISubprogram(name: "fdadvise", scope: !817, file: !817, line: 25, type: !2207, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2211)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !85, !2209, !2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !502, line: 63, baseType: !234)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !820, line: 51, baseType: !819)
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DILocalVariable(name: "fd", arg: 1, scope: !2206, file: !817, line: 25, type: !85)
!2213 = !DILocalVariable(name: "offset", arg: 2, scope: !2206, file: !817, line: 25, type: !2209)
!2214 = !DILocalVariable(name: "len", arg: 3, scope: !2206, file: !817, line: 25, type: !2209)
!2215 = !DILocalVariable(name: "advice", arg: 4, scope: !2206, file: !817, line: 25, type: !2210)
!2216 = !DILocation(line: 0, scope: !2206)
!2217 = !DILocation(line: 28, column: 3, scope: !2206)
!2218 = !DILocation(line: 30, column: 1, scope: !2206)
!2219 = !DISubprogram(name: "posix_fadvise", scope: !2141, file: !2141, line: 273, type: !2220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!85, !85, !2209, !2209, !85}
!2222 = distinct !DISubprogram(name: "fadvise", scope: !817, file: !817, line: 33, type: !2223, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2259)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2225, !2210}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2227, file: !212, line: 51, baseType: !85, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2227, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2227, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2227, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2227, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2227, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2227, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2227, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2227, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2227, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2227, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2227, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2227, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2227, file: !212, line: 70, baseType: !2243, size: 64, offset: 832)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2227, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2227, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2227, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2227, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2227, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2227, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2227, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2227, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2227, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2227, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2227, file: !212, line: 93, baseType: !2243, size: 64, offset: 1344)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2227, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2227, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2227, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2227, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2259 = !{!2260, !2261}
!2260 = !DILocalVariable(name: "fp", arg: 1, scope: !2222, file: !817, line: 33, type: !2225)
!2261 = !DILocalVariable(name: "advice", arg: 2, scope: !2222, file: !817, line: 33, type: !2210)
!2262 = !DILocation(line: 0, scope: !2222)
!2263 = !DILocation(line: 35, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2222, file: !817, line: 35, column: 7)
!2265 = !DILocation(line: 35, column: 7, scope: !2222)
!2266 = !DILocation(line: 36, column: 15, scope: !2264)
!2267 = !DILocation(line: 0, scope: !2206, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 36, column: 5, scope: !2264)
!2269 = !DILocation(line: 28, column: 3, scope: !2206, inlinedAt: !2268)
!2270 = !DILocation(line: 36, column: 5, scope: !2264)
!2271 = !DILocation(line: 37, column: 1, scope: !2222)
!2272 = !DISubprogram(name: "fileno", scope: !502, file: !502, line: 809, type: !2273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!85, !2225}
!2275 = distinct !DISubprogram(name: "open_safer", scope: !822, file: !822, line: 29, type: !2276, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !821, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!85, !141, !85, null}
!2278 = !{!2279, !2280, !2281, !2283}
!2279 = !DILocalVariable(name: "file", arg: 1, scope: !2275, file: !822, line: 29, type: !141)
!2280 = !DILocalVariable(name: "flags", arg: 2, scope: !2275, file: !822, line: 29, type: !85)
!2281 = !DILocalVariable(name: "mode", scope: !2275, file: !822, line: 31, type: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1186, line: 69, baseType: !1548)
!2283 = !DILocalVariable(name: "ap", scope: !2284, file: !822, line: 35, type: !2286)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !822, line: 34, column: 5)
!2285 = distinct !DILexicalBlock(scope: !2275, file: !822, line: 33, column: 7)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2287, line: 12, baseType: !2288)
!2287 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !822, baseType: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2289, file: !822, line: 35, baseType: !131, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2289, file: !822, line: 35, baseType: !131, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2289, file: !822, line: 35, baseType: !131, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2289, file: !822, line: 35, baseType: !85, size: 32, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2289, file: !822, line: 35, baseType: !85, size: 32, offset: 224)
!2296 = distinct !DIAssignID()
!2297 = !DILocation(line: 0, scope: !2284)
!2298 = !DILocation(line: 0, scope: !2275)
!2299 = !DILocation(line: 33, column: 13, scope: !2285)
!2300 = !DILocation(line: 33, column: 7, scope: !2275)
!2301 = !DILocation(line: 35, column: 7, scope: !2284)
!2302 = !DILocation(line: 36, column: 7, scope: !2284)
!2303 = !DILocation(line: 40, column: 14, scope: !2284)
!2304 = distinct !DIAssignID()
!2305 = distinct !DIAssignID()
!2306 = !DILocation(line: 42, column: 7, scope: !2284)
!2307 = !DILocation(line: 43, column: 5, scope: !2285)
!2308 = !DILocation(line: 43, column: 5, scope: !2284)
!2309 = !DILocation(line: 45, column: 20, scope: !2275)
!2310 = !DILocation(line: 45, column: 10, scope: !2275)
!2311 = !DILocation(line: 45, column: 3, scope: !2275)
!2312 = !DISubprogram(name: "open", scope: !2141, file: !2141, line: 181, type: !2276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2313 = distinct !DISubprogram(name: "getprogname", scope: !824, file: !824, line: 54, type: !2314, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !823)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!141}
!2316 = !DILocation(line: 58, column: 10, scope: !2313)
!2317 = !DILocation(line: 58, column: 3, scope: !2313)
!2318 = distinct !DISubprogram(name: "isapipe", scope: !826, file: !826, line: 72, type: !1440, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !825, retainedNodes: !2319)
!2319 = !{!2320, !2321, !2323, !2324, !2347}
!2320 = !DILocalVariable(name: "fd", arg: 1, scope: !2318, file: !826, line: 72, type: !85)
!2321 = !DILocalVariable(name: "pipe_link_count_max", scope: !2318, file: !826, line: 74, type: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1186, line: 74, baseType: !1550)
!2323 = !DILocalVariable(name: "check_for_fifo", scope: !2318, file: !826, line: 75, type: !179)
!2324 = !DILocalVariable(name: "st", scope: !2318, file: !826, line: 77, type: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1541, line: 44, size: 1024, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2344, !2345, !2346}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2325, file: !1541, line: 46, baseType: !1544, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2325, file: !1541, line: 47, baseType: !1546, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2325, file: !1541, line: 48, baseType: !1548, size: 32, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2325, file: !1541, line: 49, baseType: !1550, size: 32, offset: 160)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2325, file: !1541, line: 50, baseType: !1552, size: 32, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2325, file: !1541, line: 51, baseType: !1554, size: 32, offset: 224)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2325, file: !1541, line: 52, baseType: !1544, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2325, file: !1541, line: 53, baseType: !1544, size: 64, offset: 320)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2325, file: !1541, line: 54, baseType: !234, size: 64, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2325, file: !1541, line: 55, baseType: !1559, size: 32, offset: 448)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2325, file: !1541, line: 56, baseType: !85, size: 32, offset: 480)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2325, file: !1541, line: 57, baseType: !1562, size: 64, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2325, file: !1541, line: 65, baseType: !2340, size: 128, offset: 576)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1565, line: 11, size: 128, elements: !2341)
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2340, file: !1565, line: 16, baseType: !1568, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2340, file: !1565, line: 21, baseType: !1570, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2325, file: !1541, line: 66, baseType: !2340, size: 128, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2325, file: !1541, line: 67, baseType: !2340, size: 128, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2325, file: !1541, line: 79, baseType: !1574, size: 64, offset: 960)
!2347 = !DILocalVariable(name: "fstat_result", scope: !2318, file: !826, line: 78, type: !85)
!2348 = distinct !DIAssignID()
!2349 = !DILocation(line: 0, scope: !2318)
!2350 = !DILocation(line: 77, column: 3, scope: !2318)
!2351 = !DILocation(line: 78, column: 22, scope: !2318)
!2352 = !DILocation(line: 79, column: 20, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2318, file: !826, line: 79, column: 7)
!2354 = !DILocation(line: 79, column: 7, scope: !2318)
!2355 = !DILocation(line: 118, column: 9, scope: !2318)
!2356 = !{!2357, !975, i64 20}
!2357 = !{!"stat", !1829, i64 0, !1829, i64 8, !975, i64 16, !975, i64 20, !975, i64 24, !975, i64 28, !1829, i64 32, !1829, i64 40, !1829, i64 48, !975, i64 56, !975, i64 60, !1829, i64 64, !2358, i64 72, !2358, i64 88, !2358, i64 104, !911, i64 120}
!2358 = !{!"timespec", !1829, i64 0, !1829, i64 8}
!2359 = !DILocation(line: 118, column: 18, scope: !2318)
!2360 = !DILocation(line: 119, column: 6, scope: !2318)
!2361 = !DILocation(line: 117, column: 3, scope: !2318)
!2362 = !DILocation(line: 120, column: 1, scope: !2318)
!2363 = distinct !DISubprogram(name: "set_program_name", scope: !541, file: !541, line: 37, type: !925, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2364)
!2364 = !{!2365, !2366, !2367}
!2365 = !DILocalVariable(name: "argv0", arg: 1, scope: !2363, file: !541, line: 37, type: !141)
!2366 = !DILocalVariable(name: "slash", scope: !2363, file: !541, line: 44, type: !141)
!2367 = !DILocalVariable(name: "base", scope: !2363, file: !541, line: 45, type: !141)
!2368 = !DILocation(line: 0, scope: !2363)
!2369 = !DILocation(line: 44, column: 23, scope: !2363)
!2370 = !DILocation(line: 45, column: 22, scope: !2363)
!2371 = !DILocation(line: 46, column: 17, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2363, file: !541, line: 46, column: 7)
!2373 = !DILocation(line: 46, column: 9, scope: !2372)
!2374 = !DILocation(line: 46, column: 25, scope: !2372)
!2375 = !DILocation(line: 46, column: 40, scope: !2372)
!2376 = !DILocalVariable(name: "__s1", arg: 1, scope: !2377, file: !987, line: 974, type: !128)
!2377 = distinct !DISubprogram(name: "memeq", scope: !987, file: !987, line: 974, type: !1704, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2378)
!2378 = !{!2376, !2379, !2380}
!2379 = !DILocalVariable(name: "__s2", arg: 2, scope: !2377, file: !987, line: 974, type: !128)
!2380 = !DILocalVariable(name: "__n", arg: 3, scope: !2377, file: !987, line: 974, type: !138)
!2381 = !DILocation(line: 0, scope: !2377, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 46, column: 28, scope: !2372)
!2383 = !DILocation(line: 976, column: 11, scope: !2377, inlinedAt: !2382)
!2384 = !DILocation(line: 976, column: 10, scope: !2377, inlinedAt: !2382)
!2385 = !DILocation(line: 46, column: 7, scope: !2363)
!2386 = !DILocation(line: 49, column: 11, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !541, line: 49, column: 11)
!2388 = distinct !DILexicalBlock(scope: !2372, file: !541, line: 47, column: 5)
!2389 = !DILocation(line: 49, column: 36, scope: !2387)
!2390 = !DILocation(line: 49, column: 11, scope: !2388)
!2391 = !DILocation(line: 65, column: 16, scope: !2363)
!2392 = !DILocation(line: 71, column: 27, scope: !2363)
!2393 = !DILocation(line: 74, column: 33, scope: !2363)
!2394 = !DILocation(line: 76, column: 1, scope: !2363)
!2395 = !DISubprogram(name: "strrchr", scope: !1091, file: !1091, line: 273, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = distinct !DIAssignID()
!2397 = !DILocation(line: 0, scope: !550)
!2398 = distinct !DIAssignID()
!2399 = !DILocation(line: 40, column: 29, scope: !550)
!2400 = !DILocation(line: 41, column: 19, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !550, file: !551, line: 41, column: 7)
!2402 = !DILocation(line: 41, column: 7, scope: !550)
!2403 = !DILocation(line: 47, column: 3, scope: !550)
!2404 = !DILocation(line: 48, column: 3, scope: !550)
!2405 = !DILocalVariable(name: "ps", arg: 1, scope: !2406, file: !2407, line: 1135, type: !2410)
!2406 = distinct !DISubprogram(name: "mbszero", scope: !2407, file: !2407, line: 1135, type: !2408, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2411)
!2407 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!2411 = !{!2405}
!2412 = !DILocation(line: 0, scope: !2406, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 48, column: 18, scope: !550)
!2414 = !DILocalVariable(name: "__dest", arg: 1, scope: !2415, file: !2416, line: 57, type: !131)
!2415 = distinct !DISubprogram(name: "memset", scope: !2416, file: !2416, line: 57, type: !2417, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !554, retainedNodes: !2419)
!2416 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!131, !131, !85, !138}
!2419 = !{!2414, !2420, !2421}
!2420 = !DILocalVariable(name: "__ch", arg: 2, scope: !2415, file: !2416, line: 57, type: !85)
!2421 = !DILocalVariable(name: "__len", arg: 3, scope: !2415, file: !2416, line: 57, type: !138)
!2422 = !DILocation(line: 0, scope: !2415, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1137, column: 3, scope: !2406, inlinedAt: !2413)
!2424 = !DILocation(line: 59, column: 10, scope: !2415, inlinedAt: !2423)
!2425 = !DILocation(line: 49, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !550, file: !551, line: 49, column: 7)
!2427 = !DILocation(line: 49, column: 39, scope: !2426)
!2428 = !DILocation(line: 49, column: 44, scope: !2426)
!2429 = !DILocation(line: 54, column: 1, scope: !550)
!2430 = !DISubprogram(name: "mbrtoc32", scope: !562, file: !562, line: 57, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!138, !2433, !965, !138, !2435}
!2433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2434)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2410)
!2436 = distinct !DISubprogram(name: "clone_quoting_options", scope: !581, file: !581, line: 113, type: !2437, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2440)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2439, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "o", arg: 1, scope: !2436, file: !581, line: 113, type: !2439)
!2442 = !DILocalVariable(name: "saved_errno", scope: !2436, file: !581, line: 115, type: !85)
!2443 = !DILocalVariable(name: "p", scope: !2436, file: !581, line: 116, type: !2439)
!2444 = !DILocation(line: 0, scope: !2436)
!2445 = !DILocation(line: 115, column: 21, scope: !2436)
!2446 = !DILocation(line: 116, column: 40, scope: !2436)
!2447 = !DILocation(line: 116, column: 31, scope: !2436)
!2448 = !DILocation(line: 118, column: 9, scope: !2436)
!2449 = !DILocation(line: 119, column: 3, scope: !2436)
!2450 = distinct !DISubprogram(name: "get_quoting_style", scope: !581, file: !581, line: 124, type: !2451, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2455)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!446, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "o", arg: 1, scope: !2450, file: !581, line: 124, type: !2453)
!2457 = !DILocation(line: 0, scope: !2450)
!2458 = !DILocation(line: 126, column: 11, scope: !2450)
!2459 = !DILocation(line: 126, column: 46, scope: !2450)
!2460 = !{!2461, !975, i64 0}
!2461 = !{!"quoting_options", !975, i64 0, !975, i64 4, !911, i64 8, !910, i64 40, !910, i64 48}
!2462 = !DILocation(line: 126, column: 3, scope: !2450)
!2463 = distinct !DISubprogram(name: "set_quoting_style", scope: !581, file: !581, line: 132, type: !2464, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !2439, !446}
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "o", arg: 1, scope: !2463, file: !581, line: 132, type: !2439)
!2468 = !DILocalVariable(name: "s", arg: 2, scope: !2463, file: !581, line: 132, type: !446)
!2469 = !DILocation(line: 0, scope: !2463)
!2470 = !DILocation(line: 134, column: 4, scope: !2463)
!2471 = !DILocation(line: 134, column: 45, scope: !2463)
!2472 = !DILocation(line: 135, column: 1, scope: !2463)
!2473 = distinct !DISubprogram(name: "set_char_quoting", scope: !581, file: !581, line: 143, type: !2474, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!85, !2439, !4, !85}
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2483, !2484}
!2477 = !DILocalVariable(name: "o", arg: 1, scope: !2473, file: !581, line: 143, type: !2439)
!2478 = !DILocalVariable(name: "c", arg: 2, scope: !2473, file: !581, line: 143, type: !4)
!2479 = !DILocalVariable(name: "i", arg: 3, scope: !2473, file: !581, line: 143, type: !85)
!2480 = !DILocalVariable(name: "uc", scope: !2473, file: !581, line: 145, type: !143)
!2481 = !DILocalVariable(name: "p", scope: !2473, file: !581, line: 146, type: !2482)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2483 = !DILocalVariable(name: "shift", scope: !2473, file: !581, line: 148, type: !85)
!2484 = !DILocalVariable(name: "r", scope: !2473, file: !581, line: 149, type: !76)
!2485 = !DILocation(line: 0, scope: !2473)
!2486 = !DILocation(line: 147, column: 6, scope: !2473)
!2487 = !DILocation(line: 147, column: 41, scope: !2473)
!2488 = !DILocation(line: 147, column: 62, scope: !2473)
!2489 = !DILocation(line: 147, column: 57, scope: !2473)
!2490 = !DILocation(line: 148, column: 15, scope: !2473)
!2491 = !DILocation(line: 149, column: 21, scope: !2473)
!2492 = !DILocation(line: 149, column: 24, scope: !2473)
!2493 = !DILocation(line: 149, column: 34, scope: !2473)
!2494 = !DILocation(line: 150, column: 19, scope: !2473)
!2495 = !DILocation(line: 150, column: 24, scope: !2473)
!2496 = !DILocation(line: 150, column: 6, scope: !2473)
!2497 = !DILocation(line: 151, column: 3, scope: !2473)
!2498 = distinct !DISubprogram(name: "set_quoting_flags", scope: !581, file: !581, line: 159, type: !2499, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!85, !2439, !85}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "o", arg: 1, scope: !2498, file: !581, line: 159, type: !2439)
!2503 = !DILocalVariable(name: "i", arg: 2, scope: !2498, file: !581, line: 159, type: !85)
!2504 = !DILocalVariable(name: "r", scope: !2498, file: !581, line: 163, type: !85)
!2505 = !DILocation(line: 0, scope: !2498)
!2506 = !DILocation(line: 161, column: 8, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2498, file: !581, line: 161, column: 7)
!2508 = !DILocation(line: 161, column: 7, scope: !2498)
!2509 = !DILocation(line: 163, column: 14, scope: !2498)
!2510 = !{!2461, !975, i64 4}
!2511 = !DILocation(line: 164, column: 12, scope: !2498)
!2512 = !DILocation(line: 165, column: 3, scope: !2498)
!2513 = distinct !DISubprogram(name: "set_custom_quoting", scope: !581, file: !581, line: 169, type: !2514, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2439, !141, !141}
!2516 = !{!2517, !2518, !2519}
!2517 = !DILocalVariable(name: "o", arg: 1, scope: !2513, file: !581, line: 169, type: !2439)
!2518 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2513, file: !581, line: 170, type: !141)
!2519 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2513, file: !581, line: 170, type: !141)
!2520 = !DILocation(line: 0, scope: !2513)
!2521 = !DILocation(line: 172, column: 8, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2513, file: !581, line: 172, column: 7)
!2523 = !DILocation(line: 172, column: 7, scope: !2513)
!2524 = !DILocation(line: 174, column: 12, scope: !2513)
!2525 = !DILocation(line: 175, column: 8, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2513, file: !581, line: 175, column: 7)
!2527 = !DILocation(line: 175, column: 19, scope: !2526)
!2528 = !DILocation(line: 176, column: 5, scope: !2526)
!2529 = !DILocation(line: 177, column: 6, scope: !2513)
!2530 = !DILocation(line: 177, column: 17, scope: !2513)
!2531 = !{!2461, !910, i64 40}
!2532 = !DILocation(line: 178, column: 6, scope: !2513)
!2533 = !DILocation(line: 178, column: 18, scope: !2513)
!2534 = !{!2461, !910, i64 48}
!2535 = !DILocation(line: 179, column: 1, scope: !2513)
!2536 = !DISubprogram(name: "abort", scope: !1095, file: !1095, line: 598, type: !471, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2537 = distinct !DISubprogram(name: "quotearg_buffer", scope: !581, file: !581, line: 774, type: !2538, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!138, !130, !138, !141, !138, !2453}
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2541 = !DILocalVariable(name: "buffer", arg: 1, scope: !2537, file: !581, line: 774, type: !130)
!2542 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2537, file: !581, line: 774, type: !138)
!2543 = !DILocalVariable(name: "arg", arg: 3, scope: !2537, file: !581, line: 775, type: !141)
!2544 = !DILocalVariable(name: "argsize", arg: 4, scope: !2537, file: !581, line: 775, type: !138)
!2545 = !DILocalVariable(name: "o", arg: 5, scope: !2537, file: !581, line: 776, type: !2453)
!2546 = !DILocalVariable(name: "p", scope: !2537, file: !581, line: 778, type: !2453)
!2547 = !DILocalVariable(name: "saved_errno", scope: !2537, file: !581, line: 779, type: !85)
!2548 = !DILocalVariable(name: "r", scope: !2537, file: !581, line: 780, type: !138)
!2549 = !DILocation(line: 0, scope: !2537)
!2550 = !DILocation(line: 778, column: 37, scope: !2537)
!2551 = !DILocation(line: 779, column: 21, scope: !2537)
!2552 = !DILocation(line: 781, column: 43, scope: !2537)
!2553 = !DILocation(line: 781, column: 53, scope: !2537)
!2554 = !DILocation(line: 781, column: 63, scope: !2537)
!2555 = !DILocation(line: 782, column: 43, scope: !2537)
!2556 = !DILocation(line: 782, column: 58, scope: !2537)
!2557 = !DILocation(line: 780, column: 14, scope: !2537)
!2558 = !DILocation(line: 783, column: 9, scope: !2537)
!2559 = !DILocation(line: 784, column: 3, scope: !2537)
!2560 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !581, file: !581, line: 251, type: !2561, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2565)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!138, !130, !138, !141, !138, !446, !85, !2563, !141, !141}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2591, !2593, !2596, !2597, !2598, !2599, !2602, !2603, !2605, !2606, !2609, !2613, !2614, !2622, !2625, !2626, !2627}
!2566 = !DILocalVariable(name: "buffer", arg: 1, scope: !2560, file: !581, line: 251, type: !130)
!2567 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2560, file: !581, line: 251, type: !138)
!2568 = !DILocalVariable(name: "arg", arg: 3, scope: !2560, file: !581, line: 252, type: !141)
!2569 = !DILocalVariable(name: "argsize", arg: 4, scope: !2560, file: !581, line: 252, type: !138)
!2570 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2560, file: !581, line: 253, type: !446)
!2571 = !DILocalVariable(name: "flags", arg: 6, scope: !2560, file: !581, line: 253, type: !85)
!2572 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2560, file: !581, line: 254, type: !2563)
!2573 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2560, file: !581, line: 255, type: !141)
!2574 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2560, file: !581, line: 256, type: !141)
!2575 = !DILocalVariable(name: "unibyte_locale", scope: !2560, file: !581, line: 258, type: !179)
!2576 = !DILocalVariable(name: "len", scope: !2560, file: !581, line: 260, type: !138)
!2577 = !DILocalVariable(name: "orig_buffersize", scope: !2560, file: !581, line: 261, type: !138)
!2578 = !DILocalVariable(name: "quote_string", scope: !2560, file: !581, line: 262, type: !141)
!2579 = !DILocalVariable(name: "quote_string_len", scope: !2560, file: !581, line: 263, type: !138)
!2580 = !DILocalVariable(name: "backslash_escapes", scope: !2560, file: !581, line: 264, type: !179)
!2581 = !DILocalVariable(name: "elide_outer_quotes", scope: !2560, file: !581, line: 265, type: !179)
!2582 = !DILocalVariable(name: "encountered_single_quote", scope: !2560, file: !581, line: 266, type: !179)
!2583 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2560, file: !581, line: 267, type: !179)
!2584 = !DILabel(scope: !2560, name: "process_input", file: !581, line: 308)
!2585 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2560, file: !581, line: 309, type: !179)
!2586 = !DILocalVariable(name: "lq", scope: !2587, file: !581, line: 361, type: !141)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !581, line: 361, column: 11)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !581, line: 360, column: 13)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !581, line: 333, column: 7)
!2590 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 312, column: 5)
!2591 = !DILocalVariable(name: "i", scope: !2592, file: !581, line: 395, type: !138)
!2592 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 395, column: 3)
!2593 = !DILocalVariable(name: "is_right_quote", scope: !2594, file: !581, line: 397, type: !179)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !581, line: 396, column: 5)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !581, line: 395, column: 3)
!2596 = !DILocalVariable(name: "escaping", scope: !2594, file: !581, line: 398, type: !179)
!2597 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2594, file: !581, line: 399, type: !179)
!2598 = !DILocalVariable(name: "c", scope: !2594, file: !581, line: 417, type: !143)
!2599 = !DILabel(scope: !2600, name: "c_and_shell_escape", file: !581, line: 502)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 478, column: 9)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !581, line: 419, column: 9)
!2602 = !DILabel(scope: !2600, name: "c_escape", file: !581, line: 507)
!2603 = !DILocalVariable(name: "m", scope: !2604, file: !581, line: 598, type: !138)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 596, column: 11)
!2605 = !DILocalVariable(name: "printable", scope: !2604, file: !581, line: 600, type: !179)
!2606 = !DILocalVariable(name: "mbs", scope: !2607, file: !581, line: 609, type: !651)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !581, line: 608, column: 15)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !581, line: 602, column: 17)
!2609 = !DILocalVariable(name: "w", scope: !2610, file: !581, line: 618, type: !561)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !581, line: 617, column: 19)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !581, line: 616, column: 17)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !581, line: 616, column: 17)
!2613 = !DILocalVariable(name: "bytes", scope: !2610, file: !581, line: 619, type: !138)
!2614 = !DILocalVariable(name: "j", scope: !2615, file: !581, line: 648, type: !138)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !581, line: 648, column: 29)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !581, line: 647, column: 27)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !581, line: 645, column: 29)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !581, line: 636, column: 23)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !581, line: 628, column: 30)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !581, line: 623, column: 30)
!2621 = distinct !DILexicalBlock(scope: !2610, file: !581, line: 621, column: 25)
!2622 = !DILocalVariable(name: "ilim", scope: !2623, file: !581, line: 674, type: !138)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !581, line: 671, column: 15)
!2624 = distinct !DILexicalBlock(scope: !2604, file: !581, line: 670, column: 17)
!2625 = !DILabel(scope: !2594, name: "store_escape", file: !581, line: 709)
!2626 = !DILabel(scope: !2594, name: "store_c", file: !581, line: 712)
!2627 = !DILabel(scope: !2560, name: "force_outer_quoting_style", file: !581, line: 753)
!2628 = distinct !DIAssignID()
!2629 = distinct !DIAssignID()
!2630 = distinct !DIAssignID()
!2631 = distinct !DIAssignID()
!2632 = distinct !DIAssignID()
!2633 = !DILocation(line: 0, scope: !2607)
!2634 = distinct !DIAssignID()
!2635 = !DILocation(line: 0, scope: !2610)
!2636 = !DILocation(line: 0, scope: !2560)
!2637 = !DILocation(line: 258, column: 25, scope: !2560)
!2638 = !DILocation(line: 258, column: 36, scope: !2560)
!2639 = !DILocation(line: 267, column: 3, scope: !2560)
!2640 = !DILocation(line: 261, column: 10, scope: !2560)
!2641 = !DILocation(line: 262, column: 15, scope: !2560)
!2642 = !DILocation(line: 263, column: 10, scope: !2560)
!2643 = !DILocation(line: 308, column: 2, scope: !2560)
!2644 = !DILocation(line: 311, column: 3, scope: !2560)
!2645 = !DILocation(line: 318, column: 11, scope: !2590)
!2646 = !DILocation(line: 319, column: 9, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !581, line: 319, column: 9)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !581, line: 319, column: 9)
!2649 = distinct !DILexicalBlock(scope: !2590, file: !581, line: 318, column: 11)
!2650 = !DILocation(line: 319, column: 9, scope: !2648)
!2651 = !DILocation(line: 0, scope: !642, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 357, column: 26, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !581, line: 335, column: 11)
!2654 = distinct !DILexicalBlock(scope: !2589, file: !581, line: 334, column: 13)
!2655 = !DILocation(line: 199, column: 29, scope: !642, inlinedAt: !2652)
!2656 = !DILocation(line: 201, column: 19, scope: !2657, inlinedAt: !2652)
!2657 = distinct !DILexicalBlock(scope: !642, file: !581, line: 201, column: 7)
!2658 = !DILocation(line: 201, column: 7, scope: !642, inlinedAt: !2652)
!2659 = !DILocation(line: 229, column: 3, scope: !642, inlinedAt: !2652)
!2660 = !DILocation(line: 230, column: 3, scope: !642, inlinedAt: !2652)
!2661 = !DILocalVariable(name: "ps", arg: 1, scope: !2662, file: !2407, line: 1135, type: !2665)
!2662 = distinct !DISubprogram(name: "mbszero", scope: !2407, file: !2407, line: 1135, type: !2663, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2666)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !2665}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!2666 = !{!2661}
!2667 = !DILocation(line: 0, scope: !2662, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 230, column: 18, scope: !642, inlinedAt: !2652)
!2669 = !DILocalVariable(name: "__dest", arg: 1, scope: !2670, file: !2416, line: 57, type: !131)
!2670 = distinct !DISubprogram(name: "memset", scope: !2416, file: !2416, line: 57, type: !2417, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2671)
!2671 = !{!2669, !2672, !2673}
!2672 = !DILocalVariable(name: "__ch", arg: 2, scope: !2670, file: !2416, line: 57, type: !85)
!2673 = !DILocalVariable(name: "__len", arg: 3, scope: !2670, file: !2416, line: 57, type: !138)
!2674 = !DILocation(line: 0, scope: !2670, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1137, column: 3, scope: !2662, inlinedAt: !2668)
!2676 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !2675)
!2677 = !DILocation(line: 231, column: 7, scope: !2678, inlinedAt: !2652)
!2678 = distinct !DILexicalBlock(scope: !642, file: !581, line: 231, column: 7)
!2679 = !DILocation(line: 231, column: 40, scope: !2678, inlinedAt: !2652)
!2680 = !DILocation(line: 231, column: 45, scope: !2678, inlinedAt: !2652)
!2681 = !DILocation(line: 235, column: 1, scope: !642, inlinedAt: !2652)
!2682 = !DILocation(line: 0, scope: !642, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 358, column: 27, scope: !2653)
!2684 = !DILocation(line: 199, column: 29, scope: !642, inlinedAt: !2683)
!2685 = !DILocation(line: 201, column: 19, scope: !2657, inlinedAt: !2683)
!2686 = !DILocation(line: 201, column: 7, scope: !642, inlinedAt: !2683)
!2687 = !DILocation(line: 229, column: 3, scope: !642, inlinedAt: !2683)
!2688 = !DILocation(line: 230, column: 3, scope: !642, inlinedAt: !2683)
!2689 = !DILocation(line: 0, scope: !2662, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 230, column: 18, scope: !642, inlinedAt: !2683)
!2691 = !DILocation(line: 0, scope: !2670, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1137, column: 3, scope: !2662, inlinedAt: !2690)
!2693 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !2692)
!2694 = !DILocation(line: 231, column: 7, scope: !2678, inlinedAt: !2683)
!2695 = !DILocation(line: 231, column: 40, scope: !2678, inlinedAt: !2683)
!2696 = !DILocation(line: 231, column: 45, scope: !2678, inlinedAt: !2683)
!2697 = !DILocation(line: 235, column: 1, scope: !642, inlinedAt: !2683)
!2698 = !DILocation(line: 360, column: 13, scope: !2589)
!2699 = !DILocation(line: 0, scope: !2587)
!2700 = !DILocation(line: 361, column: 45, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2587, file: !581, line: 361, column: 11)
!2702 = !DILocation(line: 361, column: 11, scope: !2587)
!2703 = !DILocation(line: 362, column: 13, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !581, line: 362, column: 13)
!2705 = distinct !DILexicalBlock(scope: !2701, file: !581, line: 362, column: 13)
!2706 = !DILocation(line: 362, column: 13, scope: !2705)
!2707 = !DILocation(line: 361, column: 52, scope: !2701)
!2708 = distinct !{!2708, !2702, !2709, !1021}
!2709 = !DILocation(line: 362, column: 13, scope: !2587)
!2710 = !DILocation(line: 365, column: 28, scope: !2589)
!2711 = !DILocation(line: 260, column: 10, scope: !2560)
!2712 = !DILocation(line: 367, column: 7, scope: !2590)
!2713 = !DILocation(line: 373, column: 7, scope: !2590)
!2714 = !DILocation(line: 381, column: 11, scope: !2590)
!2715 = !DILocation(line: 376, column: 11, scope: !2590)
!2716 = !DILocation(line: 382, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !581, line: 382, column: 9)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !581, line: 382, column: 9)
!2719 = distinct !DILexicalBlock(scope: !2590, file: !581, line: 381, column: 11)
!2720 = !DILocation(line: 382, column: 9, scope: !2718)
!2721 = !DILocation(line: 389, column: 7, scope: !2590)
!2722 = !DILocation(line: 392, column: 7, scope: !2590)
!2723 = !DILocation(line: 0, scope: !2592)
!2724 = !DILocation(line: 395, column: 8, scope: !2592)
!2725 = !DILocation(line: 395, scope: !2592)
!2726 = !DILocation(line: 395, column: 34, scope: !2595)
!2727 = !DILocation(line: 395, column: 26, scope: !2595)
!2728 = !DILocation(line: 395, column: 48, scope: !2595)
!2729 = !DILocation(line: 395, column: 55, scope: !2595)
!2730 = !DILocation(line: 395, column: 3, scope: !2592)
!2731 = !DILocation(line: 395, column: 67, scope: !2595)
!2732 = !DILocation(line: 0, scope: !2594)
!2733 = !DILocation(line: 402, column: 11, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2594, file: !581, line: 401, column: 11)
!2735 = !DILocation(line: 404, column: 17, scope: !2734)
!2736 = !DILocation(line: 405, column: 39, scope: !2734)
!2737 = !DILocation(line: 409, column: 32, scope: !2734)
!2738 = !DILocation(line: 405, column: 19, scope: !2734)
!2739 = !DILocation(line: 405, column: 15, scope: !2734)
!2740 = !DILocation(line: 410, column: 11, scope: !2734)
!2741 = !DILocation(line: 410, column: 25, scope: !2734)
!2742 = !DILocalVariable(name: "__s1", arg: 1, scope: !2743, file: !987, line: 974, type: !128)
!2743 = distinct !DISubprogram(name: "memeq", scope: !987, file: !987, line: 974, type: !1704, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2744)
!2744 = !{!2742, !2745, !2746}
!2745 = !DILocalVariable(name: "__s2", arg: 2, scope: !2743, file: !987, line: 974, type: !128)
!2746 = !DILocalVariable(name: "__n", arg: 3, scope: !2743, file: !987, line: 974, type: !138)
!2747 = !DILocation(line: 0, scope: !2743, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 410, column: 14, scope: !2734)
!2749 = !DILocation(line: 976, column: 11, scope: !2743, inlinedAt: !2748)
!2750 = !DILocation(line: 976, column: 10, scope: !2743, inlinedAt: !2748)
!2751 = !DILocation(line: 401, column: 11, scope: !2594)
!2752 = !DILocation(line: 417, column: 25, scope: !2594)
!2753 = !DILocation(line: 418, column: 7, scope: !2594)
!2754 = !DILocation(line: 421, column: 15, scope: !2601)
!2755 = !DILocation(line: 423, column: 15, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !581, line: 423, column: 15)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !581, line: 422, column: 13)
!2758 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 421, column: 15)
!2759 = !DILocation(line: 423, column: 15, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !581, line: 423, column: 15)
!2761 = !DILocation(line: 423, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !581, line: 423, column: 15)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !581, line: 423, column: 15)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !581, line: 423, column: 15)
!2765 = !DILocation(line: 423, column: 15, scope: !2763)
!2766 = !DILocation(line: 423, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !581, line: 423, column: 15)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !581, line: 423, column: 15)
!2769 = !DILocation(line: 423, column: 15, scope: !2768)
!2770 = !DILocation(line: 423, column: 15, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !581, line: 423, column: 15)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !581, line: 423, column: 15)
!2773 = !DILocation(line: 423, column: 15, scope: !2772)
!2774 = !DILocation(line: 423, column: 15, scope: !2764)
!2775 = !DILocation(line: 423, column: 15, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !581, line: 423, column: 15)
!2777 = distinct !DILexicalBlock(scope: !2756, file: !581, line: 423, column: 15)
!2778 = !DILocation(line: 423, column: 15, scope: !2777)
!2779 = !DILocation(line: 431, column: 19, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2757, file: !581, line: 430, column: 19)
!2781 = !DILocation(line: 431, column: 24, scope: !2780)
!2782 = !DILocation(line: 431, column: 28, scope: !2780)
!2783 = !DILocation(line: 431, column: 38, scope: !2780)
!2784 = !DILocation(line: 431, column: 48, scope: !2780)
!2785 = !DILocation(line: 431, column: 59, scope: !2780)
!2786 = !DILocation(line: 433, column: 19, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !581, line: 433, column: 19)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !581, line: 433, column: 19)
!2789 = distinct !DILexicalBlock(scope: !2780, file: !581, line: 432, column: 17)
!2790 = !DILocation(line: 433, column: 19, scope: !2788)
!2791 = !DILocation(line: 434, column: 19, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !581, line: 434, column: 19)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !581, line: 434, column: 19)
!2794 = !DILocation(line: 434, column: 19, scope: !2793)
!2795 = !DILocation(line: 435, column: 17, scope: !2789)
!2796 = !DILocation(line: 442, column: 20, scope: !2758)
!2797 = !DILocation(line: 447, column: 11, scope: !2601)
!2798 = !DILocation(line: 450, column: 19, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 448, column: 13)
!2800 = !DILocation(line: 456, column: 19, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2799, file: !581, line: 455, column: 19)
!2802 = !DILocation(line: 456, column: 24, scope: !2801)
!2803 = !DILocation(line: 456, column: 28, scope: !2801)
!2804 = !DILocation(line: 456, column: 38, scope: !2801)
!2805 = !DILocation(line: 456, column: 41, scope: !2801)
!2806 = !DILocation(line: 456, column: 52, scope: !2801)
!2807 = !DILocation(line: 455, column: 19, scope: !2799)
!2808 = !DILocation(line: 457, column: 25, scope: !2801)
!2809 = !DILocation(line: 457, column: 17, scope: !2801)
!2810 = !DILocation(line: 464, column: 25, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2801, file: !581, line: 458, column: 19)
!2812 = !DILocation(line: 468, column: 21, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !581, line: 468, column: 21)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !581, line: 468, column: 21)
!2815 = !DILocation(line: 468, column: 21, scope: !2814)
!2816 = !DILocation(line: 469, column: 21, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !581, line: 469, column: 21)
!2818 = distinct !DILexicalBlock(scope: !2811, file: !581, line: 469, column: 21)
!2819 = !DILocation(line: 469, column: 21, scope: !2818)
!2820 = !DILocation(line: 470, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !581, line: 470, column: 21)
!2822 = distinct !DILexicalBlock(scope: !2811, file: !581, line: 470, column: 21)
!2823 = !DILocation(line: 470, column: 21, scope: !2822)
!2824 = !DILocation(line: 471, column: 21, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !581, line: 471, column: 21)
!2826 = distinct !DILexicalBlock(scope: !2811, file: !581, line: 471, column: 21)
!2827 = !DILocation(line: 471, column: 21, scope: !2826)
!2828 = !DILocation(line: 472, column: 21, scope: !2811)
!2829 = !DILocation(line: 482, column: 33, scope: !2600)
!2830 = !DILocation(line: 483, column: 33, scope: !2600)
!2831 = !DILocation(line: 485, column: 33, scope: !2600)
!2832 = !DILocation(line: 486, column: 33, scope: !2600)
!2833 = !DILocation(line: 487, column: 33, scope: !2600)
!2834 = !DILocation(line: 490, column: 17, scope: !2600)
!2835 = !DILocation(line: 492, column: 21, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !581, line: 491, column: 15)
!2837 = distinct !DILexicalBlock(scope: !2600, file: !581, line: 490, column: 17)
!2838 = !DILocation(line: 499, column: 35, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2600, file: !581, line: 499, column: 17)
!2840 = !DILocation(line: 0, scope: !2600)
!2841 = !DILocation(line: 502, column: 11, scope: !2600)
!2842 = !DILocation(line: 504, column: 17, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2600, file: !581, line: 503, column: 17)
!2844 = !DILocation(line: 507, column: 11, scope: !2600)
!2845 = !DILocation(line: 508, column: 17, scope: !2600)
!2846 = !DILocation(line: 517, column: 15, scope: !2601)
!2847 = !DILocation(line: 517, column: 40, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 517, column: 15)
!2849 = !DILocation(line: 517, column: 47, scope: !2848)
!2850 = !DILocation(line: 517, column: 18, scope: !2848)
!2851 = !DILocation(line: 521, column: 17, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 521, column: 15)
!2853 = !DILocation(line: 521, column: 15, scope: !2601)
!2854 = !DILocation(line: 525, column: 11, scope: !2601)
!2855 = !DILocation(line: 537, column: 15, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 536, column: 15)
!2857 = !DILocation(line: 536, column: 15, scope: !2601)
!2858 = !DILocation(line: 544, column: 15, scope: !2601)
!2859 = !DILocation(line: 546, column: 19, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !581, line: 545, column: 13)
!2861 = distinct !DILexicalBlock(scope: !2601, file: !581, line: 544, column: 15)
!2862 = !DILocation(line: 549, column: 19, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2860, file: !581, line: 549, column: 19)
!2864 = !DILocation(line: 549, column: 30, scope: !2863)
!2865 = !DILocation(line: 558, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !581, line: 558, column: 15)
!2867 = distinct !DILexicalBlock(scope: !2860, file: !581, line: 558, column: 15)
!2868 = !DILocation(line: 558, column: 15, scope: !2867)
!2869 = !DILocation(line: 559, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !581, line: 559, column: 15)
!2871 = distinct !DILexicalBlock(scope: !2860, file: !581, line: 559, column: 15)
!2872 = !DILocation(line: 559, column: 15, scope: !2871)
!2873 = !DILocation(line: 560, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !581, line: 560, column: 15)
!2875 = distinct !DILexicalBlock(scope: !2860, file: !581, line: 560, column: 15)
!2876 = !DILocation(line: 560, column: 15, scope: !2875)
!2877 = !DILocation(line: 562, column: 13, scope: !2860)
!2878 = !DILocation(line: 602, column: 17, scope: !2604)
!2879 = !DILocation(line: 0, scope: !2604)
!2880 = !DILocation(line: 605, column: 29, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2608, file: !581, line: 603, column: 15)
!2882 = !DILocation(line: 605, column: 41, scope: !2881)
!2883 = !DILocation(line: 606, column: 15, scope: !2881)
!2884 = !DILocation(line: 609, column: 17, scope: !2607)
!2885 = !DILocation(line: 0, scope: !2662, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 609, column: 32, scope: !2607)
!2887 = !DILocation(line: 0, scope: !2670, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 1137, column: 3, scope: !2662, inlinedAt: !2886)
!2889 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !2888)
!2890 = !DILocation(line: 613, column: 29, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2607, file: !581, line: 613, column: 21)
!2892 = !DILocation(line: 613, column: 21, scope: !2607)
!2893 = !DILocation(line: 614, column: 29, scope: !2891)
!2894 = !DILocation(line: 614, column: 19, scope: !2891)
!2895 = !DILocation(line: 618, column: 21, scope: !2610)
!2896 = !DILocation(line: 620, column: 54, scope: !2610)
!2897 = !DILocation(line: 619, column: 36, scope: !2610)
!2898 = !DILocation(line: 621, column: 25, scope: !2610)
!2899 = !DILocation(line: 631, column: 38, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2619, file: !581, line: 629, column: 23)
!2901 = !DILocation(line: 631, column: 48, scope: !2900)
!2902 = !DILocation(line: 631, column: 25, scope: !2900)
!2903 = !DILocation(line: 626, column: 25, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2620, file: !581, line: 624, column: 23)
!2905 = !DILocation(line: 631, column: 51, scope: !2900)
!2906 = !DILocation(line: 632, column: 28, scope: !2900)
!2907 = !DILocation(line: 631, column: 34, scope: !2900)
!2908 = distinct !{!2908, !2902, !2906, !1021}
!2909 = !DILocation(line: 0, scope: !2615)
!2910 = !DILocation(line: 646, column: 29, scope: !2617)
!2911 = !DILocation(line: 648, column: 29, scope: !2615)
!2912 = !DILocation(line: 649, column: 39, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2615, file: !581, line: 648, column: 29)
!2914 = !DILocation(line: 649, column: 31, scope: !2913)
!2915 = !DILocation(line: 648, column: 60, scope: !2913)
!2916 = !DILocation(line: 648, column: 50, scope: !2913)
!2917 = distinct !{!2917, !2911, !2918, !1021}
!2918 = !DILocation(line: 654, column: 33, scope: !2615)
!2919 = !DILocation(line: 657, column: 43, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2618, file: !581, line: 657, column: 29)
!2921 = !DILocalVariable(name: "wc", arg: 1, scope: !2922, file: !2923, line: 865, type: !2926)
!2922 = distinct !DISubprogram(name: "c32isprint", scope: !2923, file: !2923, line: 865, type: !2924, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !2928)
!2923 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!85, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2927, line: 20, baseType: !76)
!2927 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2928 = !{!2921}
!2929 = !DILocation(line: 0, scope: !2922, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 657, column: 31, scope: !2920)
!2931 = !DILocation(line: 871, column: 10, scope: !2922, inlinedAt: !2930)
!2932 = !DILocation(line: 657, column: 31, scope: !2920)
!2933 = !DILocation(line: 664, column: 23, scope: !2610)
!2934 = !DILocation(line: 665, column: 19, scope: !2611)
!2935 = !DILocation(line: 666, column: 15, scope: !2608)
!2936 = !DILocation(line: 753, column: 2, scope: !2560)
!2937 = !DILocation(line: 756, column: 51, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 756, column: 7)
!2939 = !DILocation(line: 0, scope: !2608)
!2940 = !DILocation(line: 670, column: 19, scope: !2624)
!2941 = !DILocation(line: 670, column: 23, scope: !2624)
!2942 = !DILocation(line: 674, column: 33, scope: !2623)
!2943 = !DILocation(line: 0, scope: !2623)
!2944 = !DILocation(line: 676, column: 17, scope: !2623)
!2945 = !DILocation(line: 678, column: 43, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !581, line: 678, column: 25)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !581, line: 677, column: 19)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !581, line: 676, column: 17)
!2949 = distinct !DILexicalBlock(scope: !2623, file: !581, line: 676, column: 17)
!2950 = !DILocation(line: 680, column: 25, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !581, line: 680, column: 25)
!2952 = distinct !DILexicalBlock(scope: !2946, file: !581, line: 679, column: 23)
!2953 = !DILocation(line: 680, column: 25, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !581, line: 680, column: 25)
!2955 = !DILocation(line: 680, column: 25, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !581, line: 680, column: 25)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !581, line: 680, column: 25)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !581, line: 680, column: 25)
!2959 = !DILocation(line: 680, column: 25, scope: !2957)
!2960 = !DILocation(line: 680, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !581, line: 680, column: 25)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !581, line: 680, column: 25)
!2963 = !DILocation(line: 680, column: 25, scope: !2962)
!2964 = !DILocation(line: 680, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !581, line: 680, column: 25)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !581, line: 680, column: 25)
!2967 = !DILocation(line: 680, column: 25, scope: !2966)
!2968 = !DILocation(line: 680, column: 25, scope: !2958)
!2969 = !DILocation(line: 680, column: 25, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !581, line: 680, column: 25)
!2971 = distinct !DILexicalBlock(scope: !2951, file: !581, line: 680, column: 25)
!2972 = !DILocation(line: 680, column: 25, scope: !2971)
!2973 = !DILocation(line: 681, column: 25, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !581, line: 681, column: 25)
!2975 = distinct !DILexicalBlock(scope: !2952, file: !581, line: 681, column: 25)
!2976 = !DILocation(line: 681, column: 25, scope: !2975)
!2977 = !DILocation(line: 682, column: 25, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !581, line: 682, column: 25)
!2979 = distinct !DILexicalBlock(scope: !2952, file: !581, line: 682, column: 25)
!2980 = !DILocation(line: 682, column: 25, scope: !2979)
!2981 = !DILocation(line: 683, column: 38, scope: !2952)
!2982 = !DILocation(line: 683, column: 33, scope: !2952)
!2983 = !DILocation(line: 684, column: 23, scope: !2952)
!2984 = !DILocation(line: 685, column: 30, scope: !2946)
!2985 = !DILocation(line: 687, column: 25, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !581, line: 687, column: 25)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !581, line: 687, column: 25)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !581, line: 686, column: 23)
!2989 = distinct !DILexicalBlock(scope: !2946, file: !581, line: 685, column: 30)
!2990 = !DILocation(line: 687, column: 25, scope: !2987)
!2991 = !DILocation(line: 689, column: 23, scope: !2988)
!2992 = !DILocation(line: 690, column: 35, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2947, file: !581, line: 690, column: 25)
!2994 = !DILocation(line: 690, column: 30, scope: !2993)
!2995 = !DILocation(line: 690, column: 25, scope: !2947)
!2996 = !DILocation(line: 692, column: 21, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !581, line: 692, column: 21)
!2998 = distinct !DILexicalBlock(scope: !2947, file: !581, line: 692, column: 21)
!2999 = !DILocation(line: 692, column: 21, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !581, line: 692, column: 21)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !581, line: 692, column: 21)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !581, line: 692, column: 21)
!3003 = !DILocation(line: 692, column: 21, scope: !3001)
!3004 = !DILocation(line: 692, column: 21, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !581, line: 692, column: 21)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !581, line: 692, column: 21)
!3007 = !DILocation(line: 692, column: 21, scope: !3006)
!3008 = !DILocation(line: 692, column: 21, scope: !3002)
!3009 = !DILocation(line: 0, scope: !2947)
!3010 = !DILocation(line: 693, column: 21, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !581, line: 693, column: 21)
!3012 = distinct !DILexicalBlock(scope: !2947, file: !581, line: 693, column: 21)
!3013 = !DILocation(line: 693, column: 21, scope: !3012)
!3014 = !DILocation(line: 694, column: 25, scope: !2947)
!3015 = !DILocation(line: 676, column: 17, scope: !2948)
!3016 = distinct !{!3016, !3017, !3018}
!3017 = !DILocation(line: 676, column: 17, scope: !2949)
!3018 = !DILocation(line: 695, column: 19, scope: !2949)
!3019 = !DILocation(line: 409, column: 30, scope: !2734)
!3020 = !DILocation(line: 702, column: 34, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2594, file: !581, line: 702, column: 11)
!3022 = !DILocation(line: 704, column: 14, scope: !3021)
!3023 = !DILocation(line: 705, column: 14, scope: !3021)
!3024 = !DILocation(line: 705, column: 35, scope: !3021)
!3025 = !DILocation(line: 705, column: 17, scope: !3021)
!3026 = !DILocation(line: 705, column: 47, scope: !3021)
!3027 = !DILocation(line: 705, column: 65, scope: !3021)
!3028 = !DILocation(line: 706, column: 11, scope: !3021)
!3029 = !DILocation(line: 702, column: 11, scope: !2594)
!3030 = !DILocation(line: 395, column: 15, scope: !2592)
!3031 = !DILocation(line: 709, column: 5, scope: !2594)
!3032 = !DILocation(line: 710, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2594, file: !581, line: 710, column: 7)
!3034 = !DILocation(line: 710, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3033, file: !581, line: 710, column: 7)
!3036 = !DILocation(line: 710, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !581, line: 710, column: 7)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !581, line: 710, column: 7)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !581, line: 710, column: 7)
!3040 = !DILocation(line: 710, column: 7, scope: !3038)
!3041 = !DILocation(line: 710, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !581, line: 710, column: 7)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !581, line: 710, column: 7)
!3044 = !DILocation(line: 710, column: 7, scope: !3043)
!3045 = !DILocation(line: 710, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !581, line: 710, column: 7)
!3047 = distinct !DILexicalBlock(scope: !3039, file: !581, line: 710, column: 7)
!3048 = !DILocation(line: 710, column: 7, scope: !3047)
!3049 = !DILocation(line: 710, column: 7, scope: !3039)
!3050 = !DILocation(line: 710, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !581, line: 710, column: 7)
!3052 = distinct !DILexicalBlock(scope: !3033, file: !581, line: 710, column: 7)
!3053 = !DILocation(line: 710, column: 7, scope: !3052)
!3054 = !DILocation(line: 712, column: 5, scope: !2594)
!3055 = !DILocation(line: 713, column: 7, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !581, line: 713, column: 7)
!3057 = distinct !DILexicalBlock(scope: !2594, file: !581, line: 713, column: 7)
!3058 = !DILocation(line: 417, column: 21, scope: !2594)
!3059 = !DILocation(line: 713, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !581, line: 713, column: 7)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !581, line: 713, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3056, file: !581, line: 713, column: 7)
!3063 = !DILocation(line: 713, column: 7, scope: !3061)
!3064 = !DILocation(line: 713, column: 7, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !581, line: 713, column: 7)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !581, line: 713, column: 7)
!3067 = !DILocation(line: 713, column: 7, scope: !3066)
!3068 = !DILocation(line: 713, column: 7, scope: !3062)
!3069 = !DILocation(line: 714, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !581, line: 714, column: 7)
!3071 = distinct !DILexicalBlock(scope: !2594, file: !581, line: 714, column: 7)
!3072 = !DILocation(line: 714, column: 7, scope: !3071)
!3073 = !DILocation(line: 716, column: 11, scope: !2594)
!3074 = !DILocation(line: 718, column: 5, scope: !2595)
!3075 = !DILocation(line: 395, column: 82, scope: !2595)
!3076 = !DILocation(line: 395, column: 3, scope: !2595)
!3077 = distinct !{!3077, !2730, !3078, !1021}
!3078 = !DILocation(line: 718, column: 5, scope: !2592)
!3079 = !DILocation(line: 720, column: 11, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 720, column: 7)
!3081 = !DILocation(line: 720, column: 16, scope: !3080)
!3082 = !DILocation(line: 728, column: 51, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 728, column: 7)
!3084 = !DILocation(line: 731, column: 11, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3083, file: !581, line: 730, column: 5)
!3086 = !DILocation(line: 732, column: 16, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3085, file: !581, line: 731, column: 11)
!3088 = !DILocation(line: 732, column: 9, scope: !3087)
!3089 = !DILocation(line: 736, column: 18, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !581, line: 736, column: 16)
!3091 = !DILocation(line: 736, column: 29, scope: !3090)
!3092 = !DILocation(line: 745, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 745, column: 7)
!3094 = !DILocation(line: 745, column: 20, scope: !3093)
!3095 = !DILocation(line: 746, column: 12, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !581, line: 746, column: 5)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !581, line: 746, column: 5)
!3098 = !DILocation(line: 746, column: 5, scope: !3097)
!3099 = !DILocation(line: 747, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !581, line: 747, column: 7)
!3101 = distinct !DILexicalBlock(scope: !3096, file: !581, line: 747, column: 7)
!3102 = !DILocation(line: 747, column: 7, scope: !3101)
!3103 = !DILocation(line: 746, column: 39, scope: !3096)
!3104 = distinct !{!3104, !3098, !3105, !1021}
!3105 = !DILocation(line: 747, column: 7, scope: !3097)
!3106 = !DILocation(line: 749, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2560, file: !581, line: 749, column: 7)
!3108 = !DILocation(line: 749, column: 7, scope: !2560)
!3109 = !DILocation(line: 750, column: 5, scope: !3107)
!3110 = !DILocation(line: 750, column: 17, scope: !3107)
!3111 = !DILocation(line: 756, column: 21, scope: !2938)
!3112 = !DILocation(line: 760, column: 42, scope: !2560)
!3113 = !DILocation(line: 758, column: 10, scope: !2560)
!3114 = !DILocation(line: 758, column: 3, scope: !2560)
!3115 = !DILocation(line: 762, column: 1, scope: !2560)
!3116 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1095, file: !1095, line: 98, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!138}
!3119 = !DISubprogram(name: "iswprint", scope: !3120, file: !3120, line: 120, type: !2924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3120 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3121 = distinct !DISubprogram(name: "quotearg_alloc", scope: !581, file: !581, line: 788, type: !3122, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!130, !141, !138, !2453}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "arg", arg: 1, scope: !3121, file: !581, line: 788, type: !141)
!3126 = !DILocalVariable(name: "argsize", arg: 2, scope: !3121, file: !581, line: 788, type: !138)
!3127 = !DILocalVariable(name: "o", arg: 3, scope: !3121, file: !581, line: 789, type: !2453)
!3128 = !DILocation(line: 0, scope: !3121)
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3130, file: !581, line: 801, type: !141)
!3130 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !581, file: !581, line: 801, type: !3131, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!130, !141, !138, !843, !2453}
!3133 = !{!3129, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3134 = !DILocalVariable(name: "argsize", arg: 2, scope: !3130, file: !581, line: 801, type: !138)
!3135 = !DILocalVariable(name: "size", arg: 3, scope: !3130, file: !581, line: 801, type: !843)
!3136 = !DILocalVariable(name: "o", arg: 4, scope: !3130, file: !581, line: 802, type: !2453)
!3137 = !DILocalVariable(name: "p", scope: !3130, file: !581, line: 804, type: !2453)
!3138 = !DILocalVariable(name: "saved_errno", scope: !3130, file: !581, line: 805, type: !85)
!3139 = !DILocalVariable(name: "flags", scope: !3130, file: !581, line: 807, type: !85)
!3140 = !DILocalVariable(name: "bufsize", scope: !3130, file: !581, line: 808, type: !138)
!3141 = !DILocalVariable(name: "buf", scope: !3130, file: !581, line: 812, type: !130)
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
!3181 = distinct !DILexicalBlock(scope: !3130, file: !581, line: 817, column: 7)
!3182 = !{!1829, !1829, i64 0}
!3183 = !DILocation(line: 818, column: 5, scope: !3181)
!3184 = !DILocation(line: 819, column: 3, scope: !3130)
!3185 = distinct !DISubprogram(name: "quotearg_free", scope: !581, file: !581, line: 837, type: !471, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "sv", scope: !3185, file: !581, line: 839, type: !665)
!3188 = !DILocalVariable(name: "i", scope: !3189, file: !581, line: 840, type: !85)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !581, line: 840, column: 3)
!3190 = !DILocation(line: 839, column: 24, scope: !3185)
!3191 = !DILocation(line: 0, scope: !3185)
!3192 = !DILocation(line: 0, scope: !3189)
!3193 = !DILocation(line: 840, column: 21, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !581, line: 840, column: 3)
!3195 = !DILocation(line: 840, column: 3, scope: !3189)
!3196 = !DILocation(line: 842, column: 13, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3185, file: !581, line: 842, column: 7)
!3198 = !{!3199, !910, i64 8}
!3199 = !{!"slotvec", !1829, i64 0, !910, i64 8}
!3200 = !DILocation(line: 842, column: 17, scope: !3197)
!3201 = !DILocation(line: 842, column: 7, scope: !3185)
!3202 = !DILocation(line: 841, column: 17, scope: !3194)
!3203 = !DILocation(line: 841, column: 5, scope: !3194)
!3204 = !DILocation(line: 840, column: 32, scope: !3194)
!3205 = distinct !{!3205, !3195, !3206, !1021}
!3206 = !DILocation(line: 841, column: 20, scope: !3189)
!3207 = !DILocation(line: 844, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3197, file: !581, line: 843, column: 5)
!3209 = !DILocation(line: 845, column: 21, scope: !3208)
!3210 = !{!3199, !1829, i64 0}
!3211 = !DILocation(line: 846, column: 20, scope: !3208)
!3212 = !DILocation(line: 847, column: 5, scope: !3208)
!3213 = !DILocation(line: 848, column: 10, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3185, file: !581, line: 848, column: 7)
!3215 = !DILocation(line: 848, column: 7, scope: !3185)
!3216 = !DILocation(line: 850, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3214, file: !581, line: 849, column: 5)
!3218 = !DILocation(line: 851, column: 15, scope: !3217)
!3219 = !DILocation(line: 852, column: 5, scope: !3217)
!3220 = !DILocation(line: 853, column: 10, scope: !3185)
!3221 = !DILocation(line: 854, column: 1, scope: !3185)
!3222 = distinct !DISubprogram(name: "quotearg_n", scope: !581, file: !581, line: 919, type: !1088, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3223)
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "n", arg: 1, scope: !3222, file: !581, line: 919, type: !85)
!3225 = !DILocalVariable(name: "arg", arg: 2, scope: !3222, file: !581, line: 919, type: !141)
!3226 = !DILocation(line: 0, scope: !3222)
!3227 = !DILocation(line: 921, column: 10, scope: !3222)
!3228 = !DILocation(line: 921, column: 3, scope: !3222)
!3229 = distinct !DISubprogram(name: "quotearg_n_options", scope: !581, file: !581, line: 866, type: !3230, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3232)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!130, !85, !141, !138, !2453}
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3243, !3244, !3246, !3247, !3248}
!3233 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !581, line: 866, type: !85)
!3234 = !DILocalVariable(name: "arg", arg: 2, scope: !3229, file: !581, line: 866, type: !141)
!3235 = !DILocalVariable(name: "argsize", arg: 3, scope: !3229, file: !581, line: 866, type: !138)
!3236 = !DILocalVariable(name: "options", arg: 4, scope: !3229, file: !581, line: 867, type: !2453)
!3237 = !DILocalVariable(name: "saved_errno", scope: !3229, file: !581, line: 869, type: !85)
!3238 = !DILocalVariable(name: "sv", scope: !3229, file: !581, line: 871, type: !665)
!3239 = !DILocalVariable(name: "nslots_max", scope: !3229, file: !581, line: 873, type: !85)
!3240 = !DILocalVariable(name: "preallocated", scope: !3241, file: !581, line: 879, type: !179)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !581, line: 878, column: 5)
!3242 = distinct !DILexicalBlock(scope: !3229, file: !581, line: 877, column: 7)
!3243 = !DILocalVariable(name: "new_nslots", scope: !3241, file: !581, line: 880, type: !856)
!3244 = !DILocalVariable(name: "size", scope: !3245, file: !581, line: 891, type: !138)
!3245 = distinct !DILexicalBlock(scope: !3229, file: !581, line: 890, column: 3)
!3246 = !DILocalVariable(name: "val", scope: !3245, file: !581, line: 892, type: !130)
!3247 = !DILocalVariable(name: "flags", scope: !3245, file: !581, line: 894, type: !85)
!3248 = !DILocalVariable(name: "qsize", scope: !3245, file: !581, line: 895, type: !138)
!3249 = distinct !DIAssignID()
!3250 = !DILocation(line: 0, scope: !3241)
!3251 = !DILocation(line: 0, scope: !3229)
!3252 = !DILocation(line: 869, column: 21, scope: !3229)
!3253 = !DILocation(line: 871, column: 24, scope: !3229)
!3254 = !DILocation(line: 874, column: 17, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3229, file: !581, line: 874, column: 7)
!3256 = !DILocation(line: 875, column: 5, scope: !3255)
!3257 = !DILocation(line: 877, column: 7, scope: !3242)
!3258 = !DILocation(line: 877, column: 14, scope: !3242)
!3259 = !DILocation(line: 877, column: 7, scope: !3229)
!3260 = !DILocation(line: 879, column: 31, scope: !3241)
!3261 = !DILocation(line: 880, column: 7, scope: !3241)
!3262 = !DILocation(line: 880, column: 26, scope: !3241)
!3263 = !DILocation(line: 880, column: 13, scope: !3241)
!3264 = distinct !DIAssignID()
!3265 = !DILocation(line: 882, column: 31, scope: !3241)
!3266 = !DILocation(line: 883, column: 33, scope: !3241)
!3267 = !DILocation(line: 883, column: 42, scope: !3241)
!3268 = !DILocation(line: 883, column: 31, scope: !3241)
!3269 = !DILocation(line: 882, column: 22, scope: !3241)
!3270 = !DILocation(line: 882, column: 15, scope: !3241)
!3271 = !DILocation(line: 884, column: 11, scope: !3241)
!3272 = !DILocation(line: 885, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3241, file: !581, line: 884, column: 11)
!3274 = !{i64 0, i64 8, !3182, i64 8, i64 8, !909}
!3275 = !DILocation(line: 885, column: 9, scope: !3273)
!3276 = !DILocation(line: 886, column: 20, scope: !3241)
!3277 = !DILocation(line: 886, column: 18, scope: !3241)
!3278 = !DILocation(line: 886, column: 32, scope: !3241)
!3279 = !DILocation(line: 886, column: 43, scope: !3241)
!3280 = !DILocation(line: 886, column: 53, scope: !3241)
!3281 = !DILocation(line: 0, scope: !2670, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 886, column: 7, scope: !3241)
!3283 = !DILocation(line: 59, column: 10, scope: !2670, inlinedAt: !3282)
!3284 = !DILocation(line: 887, column: 16, scope: !3241)
!3285 = !DILocation(line: 887, column: 14, scope: !3241)
!3286 = !DILocation(line: 888, column: 5, scope: !3242)
!3287 = !DILocation(line: 888, column: 5, scope: !3241)
!3288 = !DILocation(line: 891, column: 19, scope: !3245)
!3289 = !DILocation(line: 891, column: 25, scope: !3245)
!3290 = !DILocation(line: 0, scope: !3245)
!3291 = !DILocation(line: 892, column: 23, scope: !3245)
!3292 = !DILocation(line: 894, column: 26, scope: !3245)
!3293 = !DILocation(line: 894, column: 32, scope: !3245)
!3294 = !DILocation(line: 896, column: 55, scope: !3245)
!3295 = !DILocation(line: 897, column: 55, scope: !3245)
!3296 = !DILocation(line: 898, column: 55, scope: !3245)
!3297 = !DILocation(line: 899, column: 55, scope: !3245)
!3298 = !DILocation(line: 895, column: 20, scope: !3245)
!3299 = !DILocation(line: 901, column: 14, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3245, file: !581, line: 901, column: 9)
!3301 = !DILocation(line: 901, column: 9, scope: !3245)
!3302 = !DILocation(line: 903, column: 35, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !581, line: 902, column: 7)
!3304 = !DILocation(line: 903, column: 20, scope: !3303)
!3305 = !DILocation(line: 904, column: 17, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !581, line: 904, column: 13)
!3307 = !DILocation(line: 904, column: 13, scope: !3303)
!3308 = !DILocation(line: 905, column: 11, scope: !3306)
!3309 = !DILocation(line: 906, column: 27, scope: !3303)
!3310 = !DILocation(line: 906, column: 19, scope: !3303)
!3311 = !DILocation(line: 907, column: 69, scope: !3303)
!3312 = !DILocation(line: 909, column: 44, scope: !3303)
!3313 = !DILocation(line: 910, column: 44, scope: !3303)
!3314 = !DILocation(line: 907, column: 9, scope: !3303)
!3315 = !DILocation(line: 911, column: 7, scope: !3303)
!3316 = !DILocation(line: 913, column: 11, scope: !3245)
!3317 = !DILocation(line: 914, column: 5, scope: !3245)
!3318 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !581, file: !581, line: 925, type: !3319, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3321)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!130, !85, !141, !138}
!3321 = !{!3322, !3323, !3324}
!3322 = !DILocalVariable(name: "n", arg: 1, scope: !3318, file: !581, line: 925, type: !85)
!3323 = !DILocalVariable(name: "arg", arg: 2, scope: !3318, file: !581, line: 925, type: !141)
!3324 = !DILocalVariable(name: "argsize", arg: 3, scope: !3318, file: !581, line: 925, type: !138)
!3325 = !DILocation(line: 0, scope: !3318)
!3326 = !DILocation(line: 927, column: 10, scope: !3318)
!3327 = !DILocation(line: 927, column: 3, scope: !3318)
!3328 = distinct !DISubprogram(name: "quotearg", scope: !581, file: !581, line: 931, type: !1097, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3329)
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "arg", arg: 1, scope: !3328, file: !581, line: 931, type: !141)
!3331 = !DILocation(line: 0, scope: !3328)
!3332 = !DILocation(line: 0, scope: !3222, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 933, column: 10, scope: !3328)
!3334 = !DILocation(line: 921, column: 10, scope: !3222, inlinedAt: !3333)
!3335 = !DILocation(line: 933, column: 3, scope: !3328)
!3336 = distinct !DISubprogram(name: "quotearg_mem", scope: !581, file: !581, line: 937, type: !3337, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!130, !141, !138}
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "arg", arg: 1, scope: !3336, file: !581, line: 937, type: !141)
!3341 = !DILocalVariable(name: "argsize", arg: 2, scope: !3336, file: !581, line: 937, type: !138)
!3342 = !DILocation(line: 0, scope: !3336)
!3343 = !DILocation(line: 0, scope: !3318, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 939, column: 10, scope: !3336)
!3345 = !DILocation(line: 927, column: 10, scope: !3318, inlinedAt: !3344)
!3346 = !DILocation(line: 939, column: 3, scope: !3336)
!3347 = distinct !DISubprogram(name: "quotearg_n_style", scope: !581, file: !581, line: 943, type: !3348, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!130, !85, !446, !141}
!3350 = !{!3351, !3352, !3353, !3354}
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3347, file: !581, line: 943, type: !85)
!3352 = !DILocalVariable(name: "s", arg: 2, scope: !3347, file: !581, line: 943, type: !446)
!3353 = !DILocalVariable(name: "arg", arg: 3, scope: !3347, file: !581, line: 943, type: !141)
!3354 = !DILocalVariable(name: "o", scope: !3347, file: !581, line: 945, type: !2454)
!3355 = distinct !DIAssignID()
!3356 = !DILocation(line: 0, scope: !3347)
!3357 = !DILocation(line: 945, column: 3, scope: !3347)
!3358 = !{!3359}
!3359 = distinct !{!3359, !3360, !"quoting_options_from_style: argument 0"}
!3360 = distinct !{!3360, !"quoting_options_from_style"}
!3361 = !DILocation(line: 945, column: 36, scope: !3347)
!3362 = !DILocalVariable(name: "style", arg: 1, scope: !3363, file: !581, line: 183, type: !446)
!3363 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !581, file: !581, line: 183, type: !3364, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!617, !446}
!3366 = !{!3362, !3367}
!3367 = !DILocalVariable(name: "o", scope: !3363, file: !581, line: 185, type: !617)
!3368 = !DILocation(line: 0, scope: !3363, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 945, column: 36, scope: !3347)
!3370 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3369)
!3371 = distinct !DIAssignID()
!3372 = !DILocation(line: 186, column: 13, scope: !3373, inlinedAt: !3369)
!3373 = distinct !DILexicalBlock(scope: !3363, file: !581, line: 186, column: 7)
!3374 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3369)
!3375 = !DILocation(line: 187, column: 5, scope: !3373, inlinedAt: !3369)
!3376 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3369)
!3377 = distinct !DIAssignID()
!3378 = !DILocation(line: 946, column: 10, scope: !3347)
!3379 = !DILocation(line: 947, column: 1, scope: !3347)
!3380 = !DILocation(line: 946, column: 3, scope: !3347)
!3381 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !581, file: !581, line: 950, type: !3382, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!130, !85, !446, !141, !138}
!3384 = !{!3385, !3386, !3387, !3388, !3389}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3381, file: !581, line: 950, type: !85)
!3386 = !DILocalVariable(name: "s", arg: 2, scope: !3381, file: !581, line: 950, type: !446)
!3387 = !DILocalVariable(name: "arg", arg: 3, scope: !3381, file: !581, line: 951, type: !141)
!3388 = !DILocalVariable(name: "argsize", arg: 4, scope: !3381, file: !581, line: 951, type: !138)
!3389 = !DILocalVariable(name: "o", scope: !3381, file: !581, line: 953, type: !2454)
!3390 = distinct !DIAssignID()
!3391 = !DILocation(line: 0, scope: !3381)
!3392 = !DILocation(line: 953, column: 3, scope: !3381)
!3393 = !{!3394}
!3394 = distinct !{!3394, !3395, !"quoting_options_from_style: argument 0"}
!3395 = distinct !{!3395, !"quoting_options_from_style"}
!3396 = !DILocation(line: 953, column: 36, scope: !3381)
!3397 = !DILocation(line: 0, scope: !3363, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 953, column: 36, scope: !3381)
!3399 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3398)
!3400 = distinct !DIAssignID()
!3401 = !DILocation(line: 186, column: 13, scope: !3373, inlinedAt: !3398)
!3402 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3398)
!3403 = !DILocation(line: 187, column: 5, scope: !3373, inlinedAt: !3398)
!3404 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3398)
!3405 = distinct !DIAssignID()
!3406 = !DILocation(line: 954, column: 10, scope: !3381)
!3407 = !DILocation(line: 955, column: 1, scope: !3381)
!3408 = !DILocation(line: 954, column: 3, scope: !3381)
!3409 = distinct !DISubprogram(name: "quotearg_style", scope: !581, file: !581, line: 958, type: !3410, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!130, !446, !141}
!3412 = !{!3413, !3414}
!3413 = !DILocalVariable(name: "s", arg: 1, scope: !3409, file: !581, line: 958, type: !446)
!3414 = !DILocalVariable(name: "arg", arg: 2, scope: !3409, file: !581, line: 958, type: !141)
!3415 = distinct !DIAssignID()
!3416 = !DILocation(line: 0, scope: !3409)
!3417 = !DILocation(line: 0, scope: !3347, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 960, column: 10, scope: !3409)
!3419 = !DILocation(line: 945, column: 3, scope: !3347, inlinedAt: !3418)
!3420 = !{!3421}
!3421 = distinct !{!3421, !3422, !"quoting_options_from_style: argument 0"}
!3422 = distinct !{!3422, !"quoting_options_from_style"}
!3423 = !DILocation(line: 945, column: 36, scope: !3347, inlinedAt: !3418)
!3424 = !DILocation(line: 0, scope: !3363, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 945, column: 36, scope: !3347, inlinedAt: !3418)
!3426 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3425)
!3427 = distinct !DIAssignID()
!3428 = !DILocation(line: 186, column: 13, scope: !3373, inlinedAt: !3425)
!3429 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3425)
!3430 = !DILocation(line: 187, column: 5, scope: !3373, inlinedAt: !3425)
!3431 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3425)
!3432 = distinct !DIAssignID()
!3433 = !DILocation(line: 946, column: 10, scope: !3347, inlinedAt: !3418)
!3434 = !DILocation(line: 947, column: 1, scope: !3347, inlinedAt: !3418)
!3435 = !DILocation(line: 960, column: 3, scope: !3409)
!3436 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !581, file: !581, line: 964, type: !3437, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!130, !446, !141, !138}
!3439 = !{!3440, !3441, !3442}
!3440 = !DILocalVariable(name: "s", arg: 1, scope: !3436, file: !581, line: 964, type: !446)
!3441 = !DILocalVariable(name: "arg", arg: 2, scope: !3436, file: !581, line: 964, type: !141)
!3442 = !DILocalVariable(name: "argsize", arg: 3, scope: !3436, file: !581, line: 964, type: !138)
!3443 = distinct !DIAssignID()
!3444 = !DILocation(line: 0, scope: !3436)
!3445 = !DILocation(line: 0, scope: !3381, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 966, column: 10, scope: !3436)
!3447 = !DILocation(line: 953, column: 3, scope: !3381, inlinedAt: !3446)
!3448 = !{!3449}
!3449 = distinct !{!3449, !3450, !"quoting_options_from_style: argument 0"}
!3450 = distinct !{!3450, !"quoting_options_from_style"}
!3451 = !DILocation(line: 953, column: 36, scope: !3381, inlinedAt: !3446)
!3452 = !DILocation(line: 0, scope: !3363, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 953, column: 36, scope: !3381, inlinedAt: !3446)
!3454 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3453)
!3455 = distinct !DIAssignID()
!3456 = !DILocation(line: 186, column: 13, scope: !3373, inlinedAt: !3453)
!3457 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3453)
!3458 = !DILocation(line: 187, column: 5, scope: !3373, inlinedAt: !3453)
!3459 = !DILocation(line: 188, column: 11, scope: !3363, inlinedAt: !3453)
!3460 = distinct !DIAssignID()
!3461 = !DILocation(line: 954, column: 10, scope: !3381, inlinedAt: !3446)
!3462 = !DILocation(line: 955, column: 1, scope: !3381, inlinedAt: !3446)
!3463 = !DILocation(line: 966, column: 3, scope: !3436)
!3464 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !581, file: !581, line: 970, type: !3465, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!130, !141, !138, !4}
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DILocalVariable(name: "arg", arg: 1, scope: !3464, file: !581, line: 970, type: !141)
!3469 = !DILocalVariable(name: "argsize", arg: 2, scope: !3464, file: !581, line: 970, type: !138)
!3470 = !DILocalVariable(name: "ch", arg: 3, scope: !3464, file: !581, line: 970, type: !4)
!3471 = !DILocalVariable(name: "options", scope: !3464, file: !581, line: 972, type: !617)
!3472 = distinct !DIAssignID()
!3473 = !DILocation(line: 0, scope: !3464)
!3474 = !DILocation(line: 972, column: 3, scope: !3464)
!3475 = !DILocation(line: 973, column: 13, scope: !3464)
!3476 = !{i64 0, i64 4, !974, i64 4, i64 4, !974, i64 8, i64 32, !983, i64 40, i64 8, !909, i64 48, i64 8, !909}
!3477 = distinct !DIAssignID()
!3478 = !DILocation(line: 0, scope: !2473, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 974, column: 3, scope: !3464)
!3480 = !DILocation(line: 147, column: 41, scope: !2473, inlinedAt: !3479)
!3481 = !DILocation(line: 147, column: 62, scope: !2473, inlinedAt: !3479)
!3482 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3479)
!3483 = !DILocation(line: 148, column: 15, scope: !2473, inlinedAt: !3479)
!3484 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3479)
!3485 = !DILocation(line: 149, column: 24, scope: !2473, inlinedAt: !3479)
!3486 = !DILocation(line: 150, column: 19, scope: !2473, inlinedAt: !3479)
!3487 = !DILocation(line: 150, column: 24, scope: !2473, inlinedAt: !3479)
!3488 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3479)
!3489 = !DILocation(line: 975, column: 10, scope: !3464)
!3490 = !DILocation(line: 976, column: 1, scope: !3464)
!3491 = !DILocation(line: 975, column: 3, scope: !3464)
!3492 = distinct !DISubprogram(name: "quotearg_char", scope: !581, file: !581, line: 979, type: !3493, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!130, !141, !4}
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "arg", arg: 1, scope: !3492, file: !581, line: 979, type: !141)
!3497 = !DILocalVariable(name: "ch", arg: 2, scope: !3492, file: !581, line: 979, type: !4)
!3498 = distinct !DIAssignID()
!3499 = !DILocation(line: 0, scope: !3492)
!3500 = !DILocation(line: 0, scope: !3464, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 981, column: 10, scope: !3492)
!3502 = !DILocation(line: 972, column: 3, scope: !3464, inlinedAt: !3501)
!3503 = !DILocation(line: 973, column: 13, scope: !3464, inlinedAt: !3501)
!3504 = distinct !DIAssignID()
!3505 = !DILocation(line: 0, scope: !2473, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 974, column: 3, scope: !3464, inlinedAt: !3501)
!3507 = !DILocation(line: 147, column: 41, scope: !2473, inlinedAt: !3506)
!3508 = !DILocation(line: 147, column: 62, scope: !2473, inlinedAt: !3506)
!3509 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3506)
!3510 = !DILocation(line: 148, column: 15, scope: !2473, inlinedAt: !3506)
!3511 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3506)
!3512 = !DILocation(line: 149, column: 24, scope: !2473, inlinedAt: !3506)
!3513 = !DILocation(line: 150, column: 19, scope: !2473, inlinedAt: !3506)
!3514 = !DILocation(line: 150, column: 24, scope: !2473, inlinedAt: !3506)
!3515 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3506)
!3516 = !DILocation(line: 975, column: 10, scope: !3464, inlinedAt: !3501)
!3517 = !DILocation(line: 976, column: 1, scope: !3464, inlinedAt: !3501)
!3518 = !DILocation(line: 981, column: 3, scope: !3492)
!3519 = distinct !DISubprogram(name: "quotearg_colon", scope: !581, file: !581, line: 985, type: !1097, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3520)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "arg", arg: 1, scope: !3519, file: !581, line: 985, type: !141)
!3522 = distinct !DIAssignID()
!3523 = !DILocation(line: 0, scope: !3519)
!3524 = !DILocation(line: 0, scope: !3492, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 987, column: 10, scope: !3519)
!3526 = !DILocation(line: 0, scope: !3464, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 981, column: 10, scope: !3492, inlinedAt: !3525)
!3528 = !DILocation(line: 972, column: 3, scope: !3464, inlinedAt: !3527)
!3529 = !DILocation(line: 973, column: 13, scope: !3464, inlinedAt: !3527)
!3530 = distinct !DIAssignID()
!3531 = !DILocation(line: 0, scope: !2473, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 974, column: 3, scope: !3464, inlinedAt: !3527)
!3533 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3532)
!3534 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3532)
!3535 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3532)
!3536 = !DILocation(line: 975, column: 10, scope: !3464, inlinedAt: !3527)
!3537 = !DILocation(line: 976, column: 1, scope: !3464, inlinedAt: !3527)
!3538 = !DILocation(line: 987, column: 3, scope: !3519)
!3539 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !581, file: !581, line: 991, type: !3337, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3540)
!3540 = !{!3541, !3542}
!3541 = !DILocalVariable(name: "arg", arg: 1, scope: !3539, file: !581, line: 991, type: !141)
!3542 = !DILocalVariable(name: "argsize", arg: 2, scope: !3539, file: !581, line: 991, type: !138)
!3543 = distinct !DIAssignID()
!3544 = !DILocation(line: 0, scope: !3539)
!3545 = !DILocation(line: 0, scope: !3464, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 993, column: 10, scope: !3539)
!3547 = !DILocation(line: 972, column: 3, scope: !3464, inlinedAt: !3546)
!3548 = !DILocation(line: 973, column: 13, scope: !3464, inlinedAt: !3546)
!3549 = distinct !DIAssignID()
!3550 = !DILocation(line: 0, scope: !2473, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 974, column: 3, scope: !3464, inlinedAt: !3546)
!3552 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3551)
!3553 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3551)
!3554 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3551)
!3555 = !DILocation(line: 975, column: 10, scope: !3464, inlinedAt: !3546)
!3556 = !DILocation(line: 976, column: 1, scope: !3464, inlinedAt: !3546)
!3557 = !DILocation(line: 993, column: 3, scope: !3539)
!3558 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !581, file: !581, line: 997, type: !3348, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3559)
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3558, file: !581, line: 997, type: !85)
!3561 = !DILocalVariable(name: "s", arg: 2, scope: !3558, file: !581, line: 997, type: !446)
!3562 = !DILocalVariable(name: "arg", arg: 3, scope: !3558, file: !581, line: 997, type: !141)
!3563 = !DILocalVariable(name: "options", scope: !3558, file: !581, line: 999, type: !617)
!3564 = distinct !DIAssignID()
!3565 = !DILocation(line: 0, scope: !3558)
!3566 = !DILocation(line: 185, column: 26, scope: !3363, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1000, column: 13, scope: !3558)
!3568 = !DILocation(line: 999, column: 3, scope: !3558)
!3569 = !DILocation(line: 0, scope: !3363, inlinedAt: !3567)
!3570 = !DILocation(line: 186, column: 13, scope: !3373, inlinedAt: !3567)
!3571 = !DILocation(line: 186, column: 7, scope: !3363, inlinedAt: !3567)
!3572 = !DILocation(line: 187, column: 5, scope: !3373, inlinedAt: !3567)
!3573 = !{!3574}
!3574 = distinct !{!3574, !3575, !"quoting_options_from_style: argument 0"}
!3575 = distinct !{!3575, !"quoting_options_from_style"}
!3576 = !DILocation(line: 1000, column: 13, scope: !3558)
!3577 = distinct !DIAssignID()
!3578 = distinct !DIAssignID()
!3579 = !DILocation(line: 0, scope: !2473, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1001, column: 3, scope: !3558)
!3581 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3580)
!3582 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3580)
!3583 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3580)
!3584 = distinct !DIAssignID()
!3585 = !DILocation(line: 1002, column: 10, scope: !3558)
!3586 = !DILocation(line: 1003, column: 1, scope: !3558)
!3587 = !DILocation(line: 1002, column: 3, scope: !3558)
!3588 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !581, file: !581, line: 1006, type: !3589, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!130, !85, !141, !141, !141}
!3591 = !{!3592, !3593, !3594, !3595}
!3592 = !DILocalVariable(name: "n", arg: 1, scope: !3588, file: !581, line: 1006, type: !85)
!3593 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3588, file: !581, line: 1006, type: !141)
!3594 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3588, file: !581, line: 1007, type: !141)
!3595 = !DILocalVariable(name: "arg", arg: 4, scope: !3588, file: !581, line: 1007, type: !141)
!3596 = distinct !DIAssignID()
!3597 = !DILocation(line: 0, scope: !3588)
!3598 = !DILocalVariable(name: "o", scope: !3599, file: !581, line: 1018, type: !617)
!3599 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !581, file: !581, line: 1014, type: !3600, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!130, !85, !141, !141, !141, !138}
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3598}
!3603 = !DILocalVariable(name: "n", arg: 1, scope: !3599, file: !581, line: 1014, type: !85)
!3604 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3599, file: !581, line: 1014, type: !141)
!3605 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3599, file: !581, line: 1015, type: !141)
!3606 = !DILocalVariable(name: "arg", arg: 4, scope: !3599, file: !581, line: 1016, type: !141)
!3607 = !DILocalVariable(name: "argsize", arg: 5, scope: !3599, file: !581, line: 1016, type: !138)
!3608 = !DILocation(line: 0, scope: !3599, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 1009, column: 10, scope: !3588)
!3610 = !DILocation(line: 1018, column: 3, scope: !3599, inlinedAt: !3609)
!3611 = !DILocation(line: 1018, column: 30, scope: !3599, inlinedAt: !3609)
!3612 = distinct !DIAssignID()
!3613 = distinct !DIAssignID()
!3614 = !DILocation(line: 0, scope: !2513, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1019, column: 3, scope: !3599, inlinedAt: !3609)
!3616 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3615)
!3617 = distinct !DIAssignID()
!3618 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3615)
!3619 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3615)
!3620 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3615)
!3621 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3615)
!3622 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3615)
!3623 = distinct !DIAssignID()
!3624 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3615)
!3625 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3615)
!3626 = distinct !DIAssignID()
!3627 = !DILocation(line: 1020, column: 10, scope: !3599, inlinedAt: !3609)
!3628 = !DILocation(line: 1021, column: 1, scope: !3599, inlinedAt: !3609)
!3629 = !DILocation(line: 1009, column: 3, scope: !3588)
!3630 = distinct !DIAssignID()
!3631 = !DILocation(line: 0, scope: !3599)
!3632 = !DILocation(line: 1018, column: 3, scope: !3599)
!3633 = !DILocation(line: 1018, column: 30, scope: !3599)
!3634 = distinct !DIAssignID()
!3635 = distinct !DIAssignID()
!3636 = !DILocation(line: 0, scope: !2513, inlinedAt: !3637)
!3637 = distinct !DILocation(line: 1019, column: 3, scope: !3599)
!3638 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3637)
!3639 = distinct !DIAssignID()
!3640 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3637)
!3641 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3637)
!3642 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3637)
!3643 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3637)
!3644 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3637)
!3645 = distinct !DIAssignID()
!3646 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3637)
!3647 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3637)
!3648 = distinct !DIAssignID()
!3649 = !DILocation(line: 1020, column: 10, scope: !3599)
!3650 = !DILocation(line: 1021, column: 1, scope: !3599)
!3651 = !DILocation(line: 1020, column: 3, scope: !3599)
!3652 = distinct !DISubprogram(name: "quotearg_custom", scope: !581, file: !581, line: 1024, type: !3653, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!130, !141, !141, !141}
!3655 = !{!3656, !3657, !3658}
!3656 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3652, file: !581, line: 1024, type: !141)
!3657 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3652, file: !581, line: 1024, type: !141)
!3658 = !DILocalVariable(name: "arg", arg: 3, scope: !3652, file: !581, line: 1025, type: !141)
!3659 = distinct !DIAssignID()
!3660 = !DILocation(line: 0, scope: !3652)
!3661 = !DILocation(line: 0, scope: !3588, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1027, column: 10, scope: !3652)
!3663 = !DILocation(line: 0, scope: !3599, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 1009, column: 10, scope: !3588, inlinedAt: !3662)
!3665 = !DILocation(line: 1018, column: 3, scope: !3599, inlinedAt: !3664)
!3666 = !DILocation(line: 1018, column: 30, scope: !3599, inlinedAt: !3664)
!3667 = distinct !DIAssignID()
!3668 = distinct !DIAssignID()
!3669 = !DILocation(line: 0, scope: !2513, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 1019, column: 3, scope: !3599, inlinedAt: !3664)
!3671 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3670)
!3672 = distinct !DIAssignID()
!3673 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3670)
!3674 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3670)
!3675 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3670)
!3676 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3670)
!3677 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3670)
!3678 = distinct !DIAssignID()
!3679 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3670)
!3680 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3670)
!3681 = distinct !DIAssignID()
!3682 = !DILocation(line: 1020, column: 10, scope: !3599, inlinedAt: !3664)
!3683 = !DILocation(line: 1021, column: 1, scope: !3599, inlinedAt: !3664)
!3684 = !DILocation(line: 1027, column: 3, scope: !3652)
!3685 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !581, file: !581, line: 1031, type: !3686, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!130, !141, !141, !141, !138}
!3688 = !{!3689, !3690, !3691, !3692}
!3689 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3685, file: !581, line: 1031, type: !141)
!3690 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3685, file: !581, line: 1031, type: !141)
!3691 = !DILocalVariable(name: "arg", arg: 3, scope: !3685, file: !581, line: 1032, type: !141)
!3692 = !DILocalVariable(name: "argsize", arg: 4, scope: !3685, file: !581, line: 1032, type: !138)
!3693 = distinct !DIAssignID()
!3694 = !DILocation(line: 0, scope: !3685)
!3695 = !DILocation(line: 0, scope: !3599, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 1034, column: 10, scope: !3685)
!3697 = !DILocation(line: 1018, column: 3, scope: !3599, inlinedAt: !3696)
!3698 = !DILocation(line: 1018, column: 30, scope: !3599, inlinedAt: !3696)
!3699 = distinct !DIAssignID()
!3700 = distinct !DIAssignID()
!3701 = !DILocation(line: 0, scope: !2513, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 1019, column: 3, scope: !3599, inlinedAt: !3696)
!3703 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3702)
!3704 = distinct !DIAssignID()
!3705 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3702)
!3706 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3702)
!3707 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3702)
!3708 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3702)
!3709 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3702)
!3710 = distinct !DIAssignID()
!3711 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3702)
!3712 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3702)
!3713 = distinct !DIAssignID()
!3714 = !DILocation(line: 1020, column: 10, scope: !3599, inlinedAt: !3696)
!3715 = !DILocation(line: 1021, column: 1, scope: !3599, inlinedAt: !3696)
!3716 = !DILocation(line: 1034, column: 3, scope: !3685)
!3717 = distinct !DISubprogram(name: "quote_n_mem", scope: !581, file: !581, line: 1049, type: !3718, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!141, !85, !141, !138}
!3720 = !{!3721, !3722, !3723}
!3721 = !DILocalVariable(name: "n", arg: 1, scope: !3717, file: !581, line: 1049, type: !85)
!3722 = !DILocalVariable(name: "arg", arg: 2, scope: !3717, file: !581, line: 1049, type: !141)
!3723 = !DILocalVariable(name: "argsize", arg: 3, scope: !3717, file: !581, line: 1049, type: !138)
!3724 = !DILocation(line: 0, scope: !3717)
!3725 = !DILocation(line: 1051, column: 10, scope: !3717)
!3726 = !DILocation(line: 1051, column: 3, scope: !3717)
!3727 = distinct !DISubprogram(name: "quote_mem", scope: !581, file: !581, line: 1055, type: !3728, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!141, !141, !138}
!3730 = !{!3731, !3732}
!3731 = !DILocalVariable(name: "arg", arg: 1, scope: !3727, file: !581, line: 1055, type: !141)
!3732 = !DILocalVariable(name: "argsize", arg: 2, scope: !3727, file: !581, line: 1055, type: !138)
!3733 = !DILocation(line: 0, scope: !3727)
!3734 = !DILocation(line: 0, scope: !3717, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1057, column: 10, scope: !3727)
!3736 = !DILocation(line: 1051, column: 10, scope: !3717, inlinedAt: !3735)
!3737 = !DILocation(line: 1057, column: 3, scope: !3727)
!3738 = distinct !DISubprogram(name: "quote_n", scope: !581, file: !581, line: 1061, type: !3739, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!141, !85, !141}
!3741 = !{!3742, !3743}
!3742 = !DILocalVariable(name: "n", arg: 1, scope: !3738, file: !581, line: 1061, type: !85)
!3743 = !DILocalVariable(name: "arg", arg: 2, scope: !3738, file: !581, line: 1061, type: !141)
!3744 = !DILocation(line: 0, scope: !3738)
!3745 = !DILocation(line: 0, scope: !3717, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 1063, column: 10, scope: !3738)
!3747 = !DILocation(line: 1051, column: 10, scope: !3717, inlinedAt: !3746)
!3748 = !DILocation(line: 1063, column: 3, scope: !3738)
!3749 = distinct !DISubprogram(name: "quote", scope: !581, file: !581, line: 1067, type: !3750, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!141, !141}
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "arg", arg: 1, scope: !3749, file: !581, line: 1067, type: !141)
!3754 = !DILocation(line: 0, scope: !3749)
!3755 = !DILocation(line: 0, scope: !3738, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 1069, column: 10, scope: !3749)
!3757 = !DILocation(line: 0, scope: !3717, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 1063, column: 10, scope: !3738, inlinedAt: !3756)
!3759 = !DILocation(line: 1051, column: 10, scope: !3717, inlinedAt: !3758)
!3760 = !DILocation(line: 1069, column: 3, scope: !3749)
!3761 = distinct !DISubprogram(name: "fd_safer", scope: !828, file: !828, line: 37, type: !1440, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3762)
!3762 = !{!3763, !3764, !3767}
!3763 = !DILocalVariable(name: "fd", arg: 1, scope: !3761, file: !828, line: 37, type: !85)
!3764 = !DILocalVariable(name: "f", scope: !3765, file: !828, line: 41, type: !85)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !828, line: 40, column: 5)
!3766 = distinct !DILexicalBlock(scope: !3761, file: !828, line: 39, column: 7)
!3767 = !DILocalVariable(name: "saved_errno", scope: !3765, file: !828, line: 42, type: !85)
!3768 = !DILocation(line: 0, scope: !3761)
!3769 = !DILocation(line: 39, column: 26, scope: !3766)
!3770 = !DILocation(line: 41, column: 15, scope: !3765)
!3771 = !DILocation(line: 0, scope: !3765)
!3772 = !DILocation(line: 42, column: 25, scope: !3765)
!3773 = !DILocation(line: 43, column: 7, scope: !3765)
!3774 = !DILocation(line: 44, column: 13, scope: !3765)
!3775 = !DILocation(line: 46, column: 5, scope: !3765)
!3776 = !DILocation(line: 48, column: 3, scope: !3761)
!3777 = distinct !DISubprogram(name: "version_etc_arn", scope: !677, file: !677, line: 61, type: !3778, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3814)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{null, !3780, !141, !141, !141, !1666, !138}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3782, file: !212, line: 51, baseType: !85, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3782, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3782, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3782, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3782, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3782, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3782, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3782, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3782, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3782, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3782, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3782, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3782, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3782, file: !212, line: 70, baseType: !3798, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3782, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3782, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3782, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3782, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3782, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3782, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3782, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3782, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3782, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3782, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3782, file: !212, line: 93, baseType: !3798, size: 64, offset: 1344)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3782, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3782, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3782, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3782, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!3814 = !{!3815, !3816, !3817, !3818, !3819, !3820}
!3815 = !DILocalVariable(name: "stream", arg: 1, scope: !3777, file: !677, line: 61, type: !3780)
!3816 = !DILocalVariable(name: "command_name", arg: 2, scope: !3777, file: !677, line: 62, type: !141)
!3817 = !DILocalVariable(name: "package", arg: 3, scope: !3777, file: !677, line: 62, type: !141)
!3818 = !DILocalVariable(name: "version", arg: 4, scope: !3777, file: !677, line: 63, type: !141)
!3819 = !DILocalVariable(name: "authors", arg: 5, scope: !3777, file: !677, line: 64, type: !1666)
!3820 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3777, file: !677, line: 64, type: !138)
!3821 = !DILocation(line: 0, scope: !3777)
!3822 = !DILocation(line: 66, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3777, file: !677, line: 66, column: 7)
!3824 = !DILocation(line: 66, column: 7, scope: !3777)
!3825 = !DILocation(line: 67, column: 5, scope: !3823)
!3826 = !DILocation(line: 69, column: 5, scope: !3823)
!3827 = !DILocation(line: 83, column: 3, scope: !3777)
!3828 = !DILocation(line: 85, column: 3, scope: !3777)
!3829 = !DILocation(line: 88, column: 3, scope: !3777)
!3830 = !DILocation(line: 95, column: 3, scope: !3777)
!3831 = !DILocation(line: 97, column: 3, scope: !3777)
!3832 = !DILocation(line: 105, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3777, file: !677, line: 98, column: 5)
!3834 = !DILocation(line: 106, column: 7, scope: !3833)
!3835 = !DILocation(line: 109, column: 7, scope: !3833)
!3836 = !DILocation(line: 110, column: 7, scope: !3833)
!3837 = !DILocation(line: 113, column: 7, scope: !3833)
!3838 = !DILocation(line: 115, column: 7, scope: !3833)
!3839 = !DILocation(line: 120, column: 7, scope: !3833)
!3840 = !DILocation(line: 122, column: 7, scope: !3833)
!3841 = !DILocation(line: 127, column: 7, scope: !3833)
!3842 = !DILocation(line: 129, column: 7, scope: !3833)
!3843 = !DILocation(line: 134, column: 7, scope: !3833)
!3844 = !DILocation(line: 137, column: 7, scope: !3833)
!3845 = !DILocation(line: 142, column: 7, scope: !3833)
!3846 = !DILocation(line: 145, column: 7, scope: !3833)
!3847 = !DILocation(line: 150, column: 7, scope: !3833)
!3848 = !DILocation(line: 154, column: 7, scope: !3833)
!3849 = !DILocation(line: 159, column: 7, scope: !3833)
!3850 = !DILocation(line: 163, column: 7, scope: !3833)
!3851 = !DILocation(line: 170, column: 7, scope: !3833)
!3852 = !DILocation(line: 174, column: 7, scope: !3833)
!3853 = !DILocation(line: 176, column: 1, scope: !3777)
!3854 = distinct !DISubprogram(name: "version_etc_ar", scope: !677, file: !677, line: 183, type: !3855, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3780, !141, !141, !141, !1666}
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863}
!3858 = !DILocalVariable(name: "stream", arg: 1, scope: !3854, file: !677, line: 183, type: !3780)
!3859 = !DILocalVariable(name: "command_name", arg: 2, scope: !3854, file: !677, line: 184, type: !141)
!3860 = !DILocalVariable(name: "package", arg: 3, scope: !3854, file: !677, line: 184, type: !141)
!3861 = !DILocalVariable(name: "version", arg: 4, scope: !3854, file: !677, line: 185, type: !141)
!3862 = !DILocalVariable(name: "authors", arg: 5, scope: !3854, file: !677, line: 185, type: !1666)
!3863 = !DILocalVariable(name: "n_authors", scope: !3854, file: !677, line: 187, type: !138)
!3864 = !DILocation(line: 0, scope: !3854)
!3865 = !DILocation(line: 189, column: 8, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3854, file: !677, line: 189, column: 3)
!3867 = !DILocation(line: 189, scope: !3866)
!3868 = !DILocation(line: 189, column: 23, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !677, line: 189, column: 3)
!3870 = !DILocation(line: 189, column: 3, scope: !3866)
!3871 = !DILocation(line: 189, column: 52, scope: !3869)
!3872 = distinct !{!3872, !3870, !3873, !1021}
!3873 = !DILocation(line: 190, column: 5, scope: !3866)
!3874 = !DILocation(line: 191, column: 3, scope: !3854)
!3875 = !DILocation(line: 192, column: 1, scope: !3854)
!3876 = distinct !DISubprogram(name: "version_etc_va", scope: !677, file: !677, line: 199, type: !3877, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3889)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3780, !141, !141, !141, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !502, line: 52, baseType: !3880)
!3880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !504, line: 12, baseType: !3881)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !677, baseType: !3882)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887, !3888}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3882, file: !677, line: 192, baseType: !131, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3882, file: !677, line: 192, baseType: !131, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3882, file: !677, line: 192, baseType: !131, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3882, file: !677, line: 192, baseType: !85, size: 32, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3882, file: !677, line: 192, baseType: !85, size: 32, offset: 224)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3890 = !DILocalVariable(name: "stream", arg: 1, scope: !3876, file: !677, line: 199, type: !3780)
!3891 = !DILocalVariable(name: "command_name", arg: 2, scope: !3876, file: !677, line: 200, type: !141)
!3892 = !DILocalVariable(name: "package", arg: 3, scope: !3876, file: !677, line: 200, type: !141)
!3893 = !DILocalVariable(name: "version", arg: 4, scope: !3876, file: !677, line: 201, type: !141)
!3894 = !DILocalVariable(name: "authors", arg: 5, scope: !3876, file: !677, line: 201, type: !3879)
!3895 = !DILocalVariable(name: "n_authors", scope: !3876, file: !677, line: 203, type: !138)
!3896 = !DILocalVariable(name: "authtab", scope: !3876, file: !677, line: 204, type: !3897)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 640, elements: !62)
!3898 = distinct !DIAssignID()
!3899 = !DILocation(line: 0, scope: !3876)
!3900 = !DILocation(line: 204, column: 3, scope: !3876)
!3901 = !DILocation(line: 208, column: 35, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !677, line: 206, column: 3)
!3903 = distinct !DILexicalBlock(scope: !3876, file: !677, line: 206, column: 3)
!3904 = !DILocation(line: 208, column: 33, scope: !3902)
!3905 = !DILocation(line: 208, column: 67, scope: !3902)
!3906 = !DILocation(line: 206, column: 3, scope: !3903)
!3907 = !DILocation(line: 208, column: 14, scope: !3902)
!3908 = !DILocation(line: 0, scope: !3903)
!3909 = !DILocation(line: 211, column: 3, scope: !3876)
!3910 = !DILocation(line: 213, column: 1, scope: !3876)
!3911 = distinct !DISubprogram(name: "version_etc", scope: !677, file: !677, line: 230, type: !3912, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3780, !141, !141, !141, null}
!3914 = !{!3915, !3916, !3917, !3918, !3919}
!3915 = !DILocalVariable(name: "stream", arg: 1, scope: !3911, file: !677, line: 230, type: !3780)
!3916 = !DILocalVariable(name: "command_name", arg: 2, scope: !3911, file: !677, line: 231, type: !141)
!3917 = !DILocalVariable(name: "package", arg: 3, scope: !3911, file: !677, line: 231, type: !141)
!3918 = !DILocalVariable(name: "version", arg: 4, scope: !3911, file: !677, line: 232, type: !141)
!3919 = !DILocalVariable(name: "authors", scope: !3911, file: !677, line: 234, type: !3879)
!3920 = distinct !DIAssignID()
!3921 = !DILocation(line: 0, scope: !3911)
!3922 = !DILocation(line: 234, column: 3, scope: !3911)
!3923 = !DILocation(line: 235, column: 3, scope: !3911)
!3924 = !DILocation(line: 236, column: 3, scope: !3911)
!3925 = !DILocation(line: 237, column: 3, scope: !3911)
!3926 = !DILocation(line: 238, column: 1, scope: !3911)
!3927 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !677, file: !677, line: 241, type: !471, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829)
!3928 = !DILocation(line: 243, column: 3, scope: !3927)
!3929 = !DILocation(line: 248, column: 3, scope: !3927)
!3930 = !DILocation(line: 254, column: 3, scope: !3927)
!3931 = !DILocation(line: 259, column: 3, scope: !3927)
!3932 = !DILocation(line: 261, column: 1, scope: !3927)
!3933 = distinct !DISubprogram(name: "xnrealloc", scope: !3934, file: !3934, line: 147, type: !3935, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !3937)
!3934 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!131, !131, !138, !138}
!3937 = !{!3938, !3939, !3940}
!3938 = !DILocalVariable(name: "p", arg: 1, scope: !3933, file: !3934, line: 147, type: !131)
!3939 = !DILocalVariable(name: "n", arg: 2, scope: !3933, file: !3934, line: 147, type: !138)
!3940 = !DILocalVariable(name: "s", arg: 3, scope: !3933, file: !3934, line: 147, type: !138)
!3941 = !DILocation(line: 0, scope: !3933)
!3942 = !DILocalVariable(name: "p", arg: 1, scope: !3943, file: !837, line: 83, type: !131)
!3943 = distinct !DISubprogram(name: "xreallocarray", scope: !837, file: !837, line: 83, type: !3935, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !3944)
!3944 = !{!3942, !3945, !3946}
!3945 = !DILocalVariable(name: "n", arg: 2, scope: !3943, file: !837, line: 83, type: !138)
!3946 = !DILocalVariable(name: "s", arg: 3, scope: !3943, file: !837, line: 83, type: !138)
!3947 = !DILocation(line: 0, scope: !3943, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 149, column: 10, scope: !3933)
!3949 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !3948)
!3950 = !DILocalVariable(name: "p", arg: 1, scope: !3951, file: !837, line: 37, type: !131)
!3951 = distinct !DISubprogram(name: "check_nonnull", scope: !837, file: !837, line: 37, type: !3952, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!131, !131}
!3954 = !{!3950}
!3955 = !DILocation(line: 0, scope: !3951, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !3948)
!3957 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3956)
!3958 = distinct !DILexicalBlock(scope: !3951, file: !837, line: 39, column: 7)
!3959 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3956)
!3960 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3956)
!3961 = !DILocation(line: 149, column: 3, scope: !3933)
!3962 = !DILocation(line: 0, scope: !3943)
!3963 = !DILocation(line: 85, column: 25, scope: !3943)
!3964 = !DILocation(line: 0, scope: !3951, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 85, column: 10, scope: !3943)
!3966 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3965)
!3969 = !DILocation(line: 85, column: 3, scope: !3943)
!3970 = distinct !DISubprogram(name: "xmalloc", scope: !837, file: !837, line: 47, type: !3971, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!131, !138}
!3973 = !{!3974}
!3974 = !DILocalVariable(name: "s", arg: 1, scope: !3970, file: !837, line: 47, type: !138)
!3975 = !DILocation(line: 0, scope: !3970)
!3976 = !DILocation(line: 49, column: 25, scope: !3970)
!3977 = !DILocation(line: 0, scope: !3951, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 49, column: 10, scope: !3970)
!3979 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3978)
!3980 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3978)
!3981 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3978)
!3982 = !DILocation(line: 49, column: 3, scope: !3970)
!3983 = !DISubprogram(name: "malloc", scope: !1095, file: !1095, line: 540, type: !3971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3984 = distinct !DISubprogram(name: "ximalloc", scope: !837, file: !837, line: 53, type: !3985, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!131, !856}
!3987 = !{!3988}
!3988 = !DILocalVariable(name: "s", arg: 1, scope: !3984, file: !837, line: 53, type: !856)
!3989 = !DILocation(line: 0, scope: !3984)
!3990 = !DILocalVariable(name: "s", arg: 1, scope: !3991, file: !3992, line: 55, type: !856)
!3991 = distinct !DISubprogram(name: "imalloc", scope: !3992, file: !3992, line: 55, type: !3985, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !3993)
!3992 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3993 = !{!3990}
!3994 = !DILocation(line: 0, scope: !3991, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 55, column: 25, scope: !3984)
!3996 = !DILocation(line: 57, column: 26, scope: !3991, inlinedAt: !3995)
!3997 = !DILocation(line: 0, scope: !3951, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 55, column: 10, scope: !3984)
!3999 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !3998)
!4000 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !3998)
!4001 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !3998)
!4002 = !DILocation(line: 55, column: 3, scope: !3984)
!4003 = distinct !DISubprogram(name: "xcharalloc", scope: !837, file: !837, line: 59, type: !4004, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!130, !138}
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "n", arg: 1, scope: !4003, file: !837, line: 59, type: !138)
!4008 = !DILocation(line: 0, scope: !4003)
!4009 = !DILocation(line: 0, scope: !3970, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 61, column: 10, scope: !4003)
!4011 = !DILocation(line: 49, column: 25, scope: !3970, inlinedAt: !4010)
!4012 = !DILocation(line: 0, scope: !3951, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 49, column: 10, scope: !3970, inlinedAt: !4010)
!4014 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4013)
!4015 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4013)
!4016 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4013)
!4017 = !DILocation(line: 61, column: 3, scope: !4003)
!4018 = distinct !DISubprogram(name: "xrealloc", scope: !837, file: !837, line: 68, type: !4019, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!131, !131, !138}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "p", arg: 1, scope: !4018, file: !837, line: 68, type: !131)
!4023 = !DILocalVariable(name: "s", arg: 2, scope: !4018, file: !837, line: 68, type: !138)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocalVariable(name: "ptr", arg: 1, scope: !4026, file: !4027, line: 2057, type: !131)
!4026 = distinct !DISubprogram(name: "rpl_realloc", scope: !4027, file: !4027, line: 2057, type: !4019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4028)
!4027 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4028 = !{!4025, !4029}
!4029 = !DILocalVariable(name: "size", arg: 2, scope: !4026, file: !4027, line: 2057, type: !138)
!4030 = !DILocation(line: 0, scope: !4026, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 70, column: 25, scope: !4018)
!4032 = !DILocation(line: 2059, column: 24, scope: !4026, inlinedAt: !4031)
!4033 = !DILocation(line: 2059, column: 10, scope: !4026, inlinedAt: !4031)
!4034 = !DILocation(line: 0, scope: !3951, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 70, column: 10, scope: !4018)
!4036 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4035)
!4037 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4035)
!4038 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4035)
!4039 = !DILocation(line: 70, column: 3, scope: !4018)
!4040 = !DISubprogram(name: "realloc", scope: !1095, file: !1095, line: 551, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4041 = distinct !DISubprogram(name: "xirealloc", scope: !837, file: !837, line: 74, type: !4042, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!131, !131, !856}
!4044 = !{!4045, !4046}
!4045 = !DILocalVariable(name: "p", arg: 1, scope: !4041, file: !837, line: 74, type: !131)
!4046 = !DILocalVariable(name: "s", arg: 2, scope: !4041, file: !837, line: 74, type: !856)
!4047 = !DILocation(line: 0, scope: !4041)
!4048 = !DILocalVariable(name: "p", arg: 1, scope: !4049, file: !3992, line: 66, type: !131)
!4049 = distinct !DISubprogram(name: "irealloc", scope: !3992, file: !3992, line: 66, type: !4042, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4050)
!4050 = !{!4048, !4051}
!4051 = !DILocalVariable(name: "s", arg: 2, scope: !4049, file: !3992, line: 66, type: !856)
!4052 = !DILocation(line: 0, scope: !4049, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 76, column: 25, scope: !4041)
!4054 = !DILocation(line: 0, scope: !4026, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 68, column: 26, scope: !4049, inlinedAt: !4053)
!4056 = !DILocation(line: 2059, column: 24, scope: !4026, inlinedAt: !4055)
!4057 = !DILocation(line: 2059, column: 10, scope: !4026, inlinedAt: !4055)
!4058 = !DILocation(line: 0, scope: !3951, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 76, column: 10, scope: !4041)
!4060 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4059)
!4061 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4059)
!4062 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4059)
!4063 = !DILocation(line: 76, column: 3, scope: !4041)
!4064 = distinct !DISubprogram(name: "xireallocarray", scope: !837, file: !837, line: 89, type: !4065, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!131, !131, !856, !856}
!4067 = !{!4068, !4069, !4070}
!4068 = !DILocalVariable(name: "p", arg: 1, scope: !4064, file: !837, line: 89, type: !131)
!4069 = !DILocalVariable(name: "n", arg: 2, scope: !4064, file: !837, line: 89, type: !856)
!4070 = !DILocalVariable(name: "s", arg: 3, scope: !4064, file: !837, line: 89, type: !856)
!4071 = !DILocation(line: 0, scope: !4064)
!4072 = !DILocalVariable(name: "p", arg: 1, scope: !4073, file: !3992, line: 98, type: !131)
!4073 = distinct !DISubprogram(name: "ireallocarray", scope: !3992, file: !3992, line: 98, type: !4065, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4074)
!4074 = !{!4072, !4075, !4076}
!4075 = !DILocalVariable(name: "n", arg: 2, scope: !4073, file: !3992, line: 98, type: !856)
!4076 = !DILocalVariable(name: "s", arg: 3, scope: !4073, file: !3992, line: 98, type: !856)
!4077 = !DILocation(line: 0, scope: !4073, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 91, column: 25, scope: !4064)
!4079 = !DILocation(line: 101, column: 13, scope: !4073, inlinedAt: !4078)
!4080 = !DILocation(line: 0, scope: !3951, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 91, column: 10, scope: !4064)
!4082 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4081)
!4083 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4081)
!4084 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4081)
!4085 = !DILocation(line: 91, column: 3, scope: !4064)
!4086 = distinct !DISubprogram(name: "xnmalloc", scope: !837, file: !837, line: 98, type: !4087, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!131, !138, !138}
!4089 = !{!4090, !4091}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !837, line: 98, type: !138)
!4091 = !DILocalVariable(name: "s", arg: 2, scope: !4086, file: !837, line: 98, type: !138)
!4092 = !DILocation(line: 0, scope: !4086)
!4093 = !DILocation(line: 0, scope: !3943, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 100, column: 10, scope: !4086)
!4095 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !4094)
!4096 = !DILocation(line: 0, scope: !3951, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !4094)
!4098 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4097)
!4099 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4097)
!4100 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4097)
!4101 = !DILocation(line: 100, column: 3, scope: !4086)
!4102 = distinct !DISubprogram(name: "xinmalloc", scope: !837, file: !837, line: 104, type: !4103, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!131, !856, !856}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "n", arg: 1, scope: !4102, file: !837, line: 104, type: !856)
!4107 = !DILocalVariable(name: "s", arg: 2, scope: !4102, file: !837, line: 104, type: !856)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 0, scope: !4064, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 106, column: 10, scope: !4102)
!4111 = !DILocation(line: 0, scope: !4073, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 91, column: 25, scope: !4064, inlinedAt: !4110)
!4113 = !DILocation(line: 101, column: 13, scope: !4073, inlinedAt: !4112)
!4114 = !DILocation(line: 0, scope: !3951, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 91, column: 10, scope: !4064, inlinedAt: !4110)
!4116 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4115)
!4117 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4115)
!4118 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4115)
!4119 = !DILocation(line: 106, column: 3, scope: !4102)
!4120 = distinct !DISubprogram(name: "x2realloc", scope: !837, file: !837, line: 116, type: !4121, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!131, !131, !843}
!4123 = !{!4124, !4125}
!4124 = !DILocalVariable(name: "p", arg: 1, scope: !4120, file: !837, line: 116, type: !131)
!4125 = !DILocalVariable(name: "ps", arg: 2, scope: !4120, file: !837, line: 116, type: !843)
!4126 = !DILocation(line: 0, scope: !4120)
!4127 = !DILocation(line: 0, scope: !840, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 118, column: 10, scope: !4120)
!4129 = !DILocation(line: 178, column: 14, scope: !840, inlinedAt: !4128)
!4130 = !DILocation(line: 180, column: 9, scope: !4131, inlinedAt: !4128)
!4131 = distinct !DILexicalBlock(scope: !840, file: !837, line: 180, column: 7)
!4132 = !DILocation(line: 180, column: 7, scope: !840, inlinedAt: !4128)
!4133 = !DILocation(line: 182, column: 13, scope: !4134, inlinedAt: !4128)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !837, line: 182, column: 11)
!4135 = distinct !DILexicalBlock(scope: !4131, file: !837, line: 181, column: 5)
!4136 = !DILocation(line: 182, column: 11, scope: !4135, inlinedAt: !4128)
!4137 = !DILocation(line: 197, column: 11, scope: !4138, inlinedAt: !4128)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !837, line: 197, column: 11)
!4139 = distinct !DILexicalBlock(scope: !4131, file: !837, line: 195, column: 5)
!4140 = !DILocation(line: 197, column: 11, scope: !4139, inlinedAt: !4128)
!4141 = !DILocation(line: 198, column: 9, scope: !4138, inlinedAt: !4128)
!4142 = !DILocation(line: 0, scope: !3943, inlinedAt: !4143)
!4143 = distinct !DILocation(line: 201, column: 7, scope: !840, inlinedAt: !4128)
!4144 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !4143)
!4145 = !DILocation(line: 0, scope: !3951, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !4143)
!4147 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4146)
!4148 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4146)
!4149 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4146)
!4150 = !DILocation(line: 202, column: 7, scope: !840, inlinedAt: !4128)
!4151 = !DILocation(line: 118, column: 3, scope: !4120)
!4152 = !DILocation(line: 0, scope: !840)
!4153 = !DILocation(line: 178, column: 14, scope: !840)
!4154 = !DILocation(line: 180, column: 9, scope: !4131)
!4155 = !DILocation(line: 180, column: 7, scope: !840)
!4156 = !DILocation(line: 182, column: 13, scope: !4134)
!4157 = !DILocation(line: 182, column: 11, scope: !4135)
!4158 = !DILocation(line: 190, column: 30, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4134, file: !837, line: 183, column: 9)
!4160 = !DILocation(line: 191, column: 16, scope: !4159)
!4161 = !DILocation(line: 191, column: 13, scope: !4159)
!4162 = !DILocation(line: 192, column: 9, scope: !4159)
!4163 = !DILocation(line: 197, column: 11, scope: !4138)
!4164 = !DILocation(line: 197, column: 11, scope: !4139)
!4165 = !DILocation(line: 198, column: 9, scope: !4138)
!4166 = !DILocation(line: 0, scope: !3943, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 201, column: 7, scope: !840)
!4168 = !DILocation(line: 85, column: 25, scope: !3943, inlinedAt: !4167)
!4169 = !DILocation(line: 0, scope: !3951, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 85, column: 10, scope: !3943, inlinedAt: !4167)
!4171 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4170)
!4172 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4170)
!4173 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4170)
!4174 = !DILocation(line: 202, column: 7, scope: !840)
!4175 = !DILocation(line: 203, column: 3, scope: !840)
!4176 = !DILocation(line: 0, scope: !852)
!4177 = !DILocation(line: 230, column: 14, scope: !852)
!4178 = !DILocation(line: 238, column: 7, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !852, file: !837, line: 238, column: 7)
!4180 = !DILocation(line: 238, column: 7, scope: !852)
!4181 = !DILocation(line: 240, column: 9, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !852, file: !837, line: 240, column: 7)
!4183 = !DILocation(line: 240, column: 18, scope: !4182)
!4184 = !DILocation(line: 253, column: 8, scope: !852)
!4185 = !DILocation(line: 256, column: 7, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !852, file: !837, line: 256, column: 7)
!4187 = !DILocation(line: 256, column: 7, scope: !852)
!4188 = !DILocation(line: 258, column: 27, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4186, file: !837, line: 257, column: 5)
!4190 = !DILocation(line: 259, column: 32, scope: !4189)
!4191 = !DILocation(line: 260, column: 5, scope: !4189)
!4192 = !DILocation(line: 262, column: 9, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !852, file: !837, line: 262, column: 7)
!4194 = !DILocation(line: 262, column: 7, scope: !852)
!4195 = !DILocation(line: 263, column: 9, scope: !4193)
!4196 = !DILocation(line: 263, column: 5, scope: !4193)
!4197 = !DILocation(line: 264, column: 9, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !852, file: !837, line: 264, column: 7)
!4199 = !DILocation(line: 264, column: 14, scope: !4198)
!4200 = !DILocation(line: 265, column: 7, scope: !4198)
!4201 = !DILocation(line: 265, column: 11, scope: !4198)
!4202 = !DILocation(line: 266, column: 11, scope: !4198)
!4203 = !DILocation(line: 267, column: 14, scope: !4198)
!4204 = !DILocation(line: 264, column: 7, scope: !852)
!4205 = !DILocation(line: 268, column: 5, scope: !4198)
!4206 = !DILocation(line: 0, scope: !4018, inlinedAt: !4207)
!4207 = distinct !DILocation(line: 269, column: 8, scope: !852)
!4208 = !DILocation(line: 0, scope: !4026, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 70, column: 25, scope: !4018, inlinedAt: !4207)
!4210 = !DILocation(line: 2059, column: 24, scope: !4026, inlinedAt: !4209)
!4211 = !DILocation(line: 2059, column: 10, scope: !4026, inlinedAt: !4209)
!4212 = !DILocation(line: 0, scope: !3951, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 70, column: 10, scope: !4018, inlinedAt: !4207)
!4214 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4213)
!4215 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4213)
!4216 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4213)
!4217 = !DILocation(line: 270, column: 7, scope: !852)
!4218 = !DILocation(line: 271, column: 3, scope: !852)
!4219 = distinct !DISubprogram(name: "xzalloc", scope: !837, file: !837, line: 279, type: !3971, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4220)
!4220 = !{!4221}
!4221 = !DILocalVariable(name: "s", arg: 1, scope: !4219, file: !837, line: 279, type: !138)
!4222 = !DILocation(line: 0, scope: !4219)
!4223 = !DILocalVariable(name: "n", arg: 1, scope: !4224, file: !837, line: 294, type: !138)
!4224 = distinct !DISubprogram(name: "xcalloc", scope: !837, file: !837, line: 294, type: !4087, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4225)
!4225 = !{!4223, !4226}
!4226 = !DILocalVariable(name: "s", arg: 2, scope: !4224, file: !837, line: 294, type: !138)
!4227 = !DILocation(line: 0, scope: !4224, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 281, column: 10, scope: !4219)
!4229 = !DILocation(line: 296, column: 25, scope: !4224, inlinedAt: !4228)
!4230 = !DILocation(line: 0, scope: !3951, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 296, column: 10, scope: !4224, inlinedAt: !4228)
!4232 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4231)
!4233 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4231)
!4234 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4231)
!4235 = !DILocation(line: 281, column: 3, scope: !4219)
!4236 = !DISubprogram(name: "calloc", scope: !1095, file: !1095, line: 543, type: !4087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4237 = !DILocation(line: 0, scope: !4224)
!4238 = !DILocation(line: 296, column: 25, scope: !4224)
!4239 = !DILocation(line: 0, scope: !3951, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 296, column: 10, scope: !4224)
!4241 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4240)
!4242 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4240)
!4243 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4240)
!4244 = !DILocation(line: 296, column: 3, scope: !4224)
!4245 = distinct !DISubprogram(name: "xizalloc", scope: !837, file: !837, line: 285, type: !3985, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4246)
!4246 = !{!4247}
!4247 = !DILocalVariable(name: "s", arg: 1, scope: !4245, file: !837, line: 285, type: !856)
!4248 = !DILocation(line: 0, scope: !4245)
!4249 = !DILocalVariable(name: "n", arg: 1, scope: !4250, file: !837, line: 300, type: !856)
!4250 = distinct !DISubprogram(name: "xicalloc", scope: !837, file: !837, line: 300, type: !4103, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4251)
!4251 = !{!4249, !4252}
!4252 = !DILocalVariable(name: "s", arg: 2, scope: !4250, file: !837, line: 300, type: !856)
!4253 = !DILocation(line: 0, scope: !4250, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 287, column: 10, scope: !4245)
!4255 = !DILocalVariable(name: "n", arg: 1, scope: !4256, file: !3992, line: 77, type: !856)
!4256 = distinct !DISubprogram(name: "icalloc", scope: !3992, file: !3992, line: 77, type: !4103, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4257)
!4257 = !{!4255, !4258}
!4258 = !DILocalVariable(name: "s", arg: 2, scope: !4256, file: !3992, line: 77, type: !856)
!4259 = !DILocation(line: 0, scope: !4256, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 302, column: 25, scope: !4250, inlinedAt: !4254)
!4261 = !DILocation(line: 91, column: 10, scope: !4256, inlinedAt: !4260)
!4262 = !DILocation(line: 0, scope: !3951, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 302, column: 10, scope: !4250, inlinedAt: !4254)
!4264 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4263)
!4265 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4263)
!4266 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4263)
!4267 = !DILocation(line: 287, column: 3, scope: !4245)
!4268 = !DILocation(line: 0, scope: !4250)
!4269 = !DILocation(line: 0, scope: !4256, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 302, column: 25, scope: !4250)
!4271 = !DILocation(line: 91, column: 10, scope: !4256, inlinedAt: !4270)
!4272 = !DILocation(line: 0, scope: !3951, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 302, column: 10, scope: !4250)
!4274 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4273)
!4275 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4273)
!4276 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4273)
!4277 = !DILocation(line: 302, column: 3, scope: !4250)
!4278 = distinct !DISubprogram(name: "xmemdup", scope: !837, file: !837, line: 310, type: !4279, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!131, !128, !138}
!4281 = !{!4282, !4283}
!4282 = !DILocalVariable(name: "p", arg: 1, scope: !4278, file: !837, line: 310, type: !128)
!4283 = !DILocalVariable(name: "s", arg: 2, scope: !4278, file: !837, line: 310, type: !138)
!4284 = !DILocation(line: 0, scope: !4278)
!4285 = !DILocation(line: 0, scope: !3970, inlinedAt: !4286)
!4286 = distinct !DILocation(line: 312, column: 18, scope: !4278)
!4287 = !DILocation(line: 49, column: 25, scope: !3970, inlinedAt: !4286)
!4288 = !DILocation(line: 0, scope: !3951, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 49, column: 10, scope: !3970, inlinedAt: !4286)
!4290 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4289)
!4291 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4289)
!4292 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4289)
!4293 = !DILocalVariable(name: "__dest", arg: 1, scope: !4294, file: !2416, line: 26, type: !4297)
!4294 = distinct !DISubprogram(name: "memcpy", scope: !2416, file: !2416, line: 26, type: !4295, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4298)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!131, !4297, !1118, !138}
!4297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4298 = !{!4293, !4299, !4300}
!4299 = !DILocalVariable(name: "__src", arg: 2, scope: !4294, file: !2416, line: 26, type: !1118)
!4300 = !DILocalVariable(name: "__len", arg: 3, scope: !4294, file: !2416, line: 26, type: !138)
!4301 = !DILocation(line: 0, scope: !4294, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 312, column: 10, scope: !4278)
!4303 = !DILocation(line: 29, column: 10, scope: !4294, inlinedAt: !4302)
!4304 = !DILocation(line: 312, column: 3, scope: !4278)
!4305 = distinct !DISubprogram(name: "ximemdup", scope: !837, file: !837, line: 316, type: !4306, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!131, !128, !856}
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "p", arg: 1, scope: !4305, file: !837, line: 316, type: !128)
!4310 = !DILocalVariable(name: "s", arg: 2, scope: !4305, file: !837, line: 316, type: !856)
!4311 = !DILocation(line: 0, scope: !4305)
!4312 = !DILocation(line: 0, scope: !3984, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 318, column: 18, scope: !4305)
!4314 = !DILocation(line: 0, scope: !3991, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 55, column: 25, scope: !3984, inlinedAt: !4313)
!4316 = !DILocation(line: 57, column: 26, scope: !3991, inlinedAt: !4315)
!4317 = !DILocation(line: 0, scope: !3951, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 55, column: 10, scope: !3984, inlinedAt: !4313)
!4319 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4318)
!4320 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4318)
!4321 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4318)
!4322 = !DILocation(line: 0, scope: !4294, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 318, column: 10, scope: !4305)
!4324 = !DILocation(line: 29, column: 10, scope: !4294, inlinedAt: !4323)
!4325 = !DILocation(line: 318, column: 3, scope: !4305)
!4326 = distinct !DISubprogram(name: "ximemdup0", scope: !837, file: !837, line: 325, type: !4327, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!130, !128, !856}
!4329 = !{!4330, !4331, !4332}
!4330 = !DILocalVariable(name: "p", arg: 1, scope: !4326, file: !837, line: 325, type: !128)
!4331 = !DILocalVariable(name: "s", arg: 2, scope: !4326, file: !837, line: 325, type: !856)
!4332 = !DILocalVariable(name: "result", scope: !4326, file: !837, line: 327, type: !130)
!4333 = !DILocation(line: 0, scope: !4326)
!4334 = !DILocation(line: 327, column: 30, scope: !4326)
!4335 = !DILocation(line: 0, scope: !3984, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 327, column: 18, scope: !4326)
!4337 = !DILocation(line: 0, scope: !3991, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 55, column: 25, scope: !3984, inlinedAt: !4336)
!4339 = !DILocation(line: 57, column: 26, scope: !3991, inlinedAt: !4338)
!4340 = !DILocation(line: 0, scope: !3951, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 55, column: 10, scope: !3984, inlinedAt: !4336)
!4342 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4341)
!4343 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4341)
!4344 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4341)
!4345 = !DILocation(line: 328, column: 3, scope: !4326)
!4346 = !DILocation(line: 328, column: 13, scope: !4326)
!4347 = !DILocation(line: 0, scope: !4294, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 329, column: 10, scope: !4326)
!4349 = !DILocation(line: 29, column: 10, scope: !4294, inlinedAt: !4348)
!4350 = !DILocation(line: 329, column: 3, scope: !4326)
!4351 = distinct !DISubprogram(name: "xstrdup", scope: !837, file: !837, line: 335, type: !1097, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !836, retainedNodes: !4352)
!4352 = !{!4353}
!4353 = !DILocalVariable(name: "string", arg: 1, scope: !4351, file: !837, line: 335, type: !141)
!4354 = !DILocation(line: 0, scope: !4351)
!4355 = !DILocation(line: 337, column: 27, scope: !4351)
!4356 = !DILocation(line: 337, column: 43, scope: !4351)
!4357 = !DILocation(line: 0, scope: !4278, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 337, column: 10, scope: !4351)
!4359 = !DILocation(line: 0, scope: !3970, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 312, column: 18, scope: !4278, inlinedAt: !4358)
!4361 = !DILocation(line: 49, column: 25, scope: !3970, inlinedAt: !4360)
!4362 = !DILocation(line: 0, scope: !3951, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 49, column: 10, scope: !3970, inlinedAt: !4360)
!4364 = !DILocation(line: 39, column: 8, scope: !3958, inlinedAt: !4363)
!4365 = !DILocation(line: 39, column: 7, scope: !3951, inlinedAt: !4363)
!4366 = !DILocation(line: 40, column: 5, scope: !3958, inlinedAt: !4363)
!4367 = !DILocation(line: 0, scope: !4294, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 312, column: 10, scope: !4278, inlinedAt: !4358)
!4369 = !DILocation(line: 29, column: 10, scope: !4294, inlinedAt: !4368)
!4370 = !DILocation(line: 337, column: 3, scope: !4351)
!4371 = distinct !DISubprogram(name: "xalloc_die", scope: !768, file: !768, line: 32, type: !471, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !871, retainedNodes: !4372)
!4372 = !{!4373}
!4373 = !DILocalVariable(name: "__errstatus", scope: !4374, file: !768, line: 34, type: !1199)
!4374 = distinct !DILexicalBlock(scope: !4371, file: !768, line: 34, column: 3)
!4375 = !DILocation(line: 34, column: 3, scope: !4374)
!4376 = !DILocation(line: 0, scope: !4374)
!4377 = !DILocation(line: 40, column: 3, scope: !4371)
!4378 = distinct !DISubprogram(name: "close_stream", scope: !874, file: !874, line: 55, type: !4379, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4415)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!85, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4383, file: !212, line: 51, baseType: !85, size: 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4383, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4383, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4383, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4383, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4383, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4383, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4383, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4383, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4383, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4383, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4383, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4383, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4383, file: !212, line: 70, baseType: !4399, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4383, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4383, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4383, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4383, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4383, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4383, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4383, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4383, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4383, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4383, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4383, file: !212, line: 93, baseType: !4399, size: 64, offset: 1344)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4383, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4383, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4383, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4383, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4415 = !{!4416, !4417, !4419, !4420}
!4416 = !DILocalVariable(name: "stream", arg: 1, scope: !4378, file: !874, line: 55, type: !4381)
!4417 = !DILocalVariable(name: "some_pending", scope: !4378, file: !874, line: 57, type: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!4419 = !DILocalVariable(name: "prev_fail", scope: !4378, file: !874, line: 58, type: !4418)
!4420 = !DILocalVariable(name: "fclose_fail", scope: !4378, file: !874, line: 59, type: !4418)
!4421 = !DILocation(line: 0, scope: !4378)
!4422 = !DILocation(line: 57, column: 30, scope: !4378)
!4423 = !DILocalVariable(name: "__stream", arg: 1, scope: !4424, file: !1785, line: 135, type: !4381)
!4424 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1785, file: !1785, line: 135, type: !4379, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !873, retainedNodes: !4425)
!4425 = !{!4423}
!4426 = !DILocation(line: 0, scope: !4424, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 58, column: 27, scope: !4378)
!4428 = !DILocation(line: 137, column: 10, scope: !4424, inlinedAt: !4427)
!4429 = !{!1828, !975, i64 0}
!4430 = !DILocation(line: 58, column: 43, scope: !4378)
!4431 = !DILocation(line: 59, column: 29, scope: !4378)
!4432 = !DILocation(line: 59, column: 45, scope: !4378)
!4433 = !DILocation(line: 69, column: 17, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4378, file: !874, line: 69, column: 7)
!4435 = !DILocation(line: 57, column: 50, scope: !4378)
!4436 = !DILocation(line: 69, column: 33, scope: !4434)
!4437 = !DILocation(line: 69, column: 53, scope: !4434)
!4438 = !DILocation(line: 69, column: 59, scope: !4434)
!4439 = !DILocation(line: 69, column: 7, scope: !4378)
!4440 = !DILocation(line: 71, column: 11, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4434, file: !874, line: 70, column: 5)
!4442 = !DILocation(line: 72, column: 9, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4441, file: !874, line: 71, column: 11)
!4444 = !DILocation(line: 72, column: 15, scope: !4443)
!4445 = !DILocation(line: 77, column: 1, scope: !4378)
!4446 = !DISubprogram(name: "__fpending", scope: !4447, file: !4447, line: 75, type: !4448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4447 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!138, !4381}
!4450 = distinct !DISubprogram(name: "rpl_fclose", scope: !876, file: !876, line: 58, type: !4451, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !875, retainedNodes: !4487)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!85, !4453}
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4455)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4456)
!4456 = !{!4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4455, file: !212, line: 51, baseType: !85, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4455, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4455, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4455, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4455, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4455, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4455, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4455, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4455, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4455, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4455, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4455, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4455, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4455, file: !212, line: 70, baseType: !4471, size: 64, offset: 832)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4455, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4455, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4455, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4455, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4455, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4455, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4455, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4455, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4455, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4455, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4455, file: !212, line: 93, baseType: !4471, size: 64, offset: 1344)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4455, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4455, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4455, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4455, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4487 = !{!4488, !4489, !4490, !4491}
!4488 = !DILocalVariable(name: "fp", arg: 1, scope: !4450, file: !876, line: 58, type: !4453)
!4489 = !DILocalVariable(name: "saved_errno", scope: !4450, file: !876, line: 60, type: !85)
!4490 = !DILocalVariable(name: "fd", scope: !4450, file: !876, line: 63, type: !85)
!4491 = !DILocalVariable(name: "result", scope: !4450, file: !876, line: 74, type: !85)
!4492 = !DILocation(line: 0, scope: !4450)
!4493 = !DILocation(line: 63, column: 12, scope: !4450)
!4494 = !DILocation(line: 64, column: 10, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4450, file: !876, line: 64, column: 7)
!4496 = !DILocation(line: 64, column: 7, scope: !4450)
!4497 = !DILocation(line: 65, column: 12, scope: !4495)
!4498 = !DILocation(line: 65, column: 5, scope: !4495)
!4499 = !DILocation(line: 70, column: 9, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4450, file: !876, line: 70, column: 7)
!4501 = !DILocation(line: 70, column: 23, scope: !4500)
!4502 = !DILocation(line: 70, column: 33, scope: !4500)
!4503 = !DILocation(line: 70, column: 26, scope: !4500)
!4504 = !DILocation(line: 70, column: 59, scope: !4500)
!4505 = !DILocation(line: 71, column: 7, scope: !4500)
!4506 = !DILocation(line: 71, column: 10, scope: !4500)
!4507 = !DILocation(line: 70, column: 7, scope: !4450)
!4508 = !DILocation(line: 100, column: 12, scope: !4450)
!4509 = !DILocation(line: 105, column: 7, scope: !4450)
!4510 = !DILocation(line: 72, column: 19, scope: !4500)
!4511 = !DILocation(line: 105, column: 19, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4450, file: !876, line: 105, column: 7)
!4513 = !DILocation(line: 107, column: 13, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4512, file: !876, line: 106, column: 5)
!4515 = !DILocation(line: 109, column: 5, scope: !4514)
!4516 = !DILocation(line: 112, column: 1, scope: !4450)
!4517 = !DISubprogram(name: "fclose", scope: !502, file: !502, line: 178, type: !4451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4518 = !DISubprogram(name: "__freading", scope: !4447, file: !4447, line: 51, type: !4451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4519 = !DISubprogram(name: "lseek", scope: !1439, file: !1439, line: 339, type: !4520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!234, !85, !234, !85}
!4522 = distinct !DISubprogram(name: "rpl_fflush", scope: !878, file: !878, line: 130, type: !4523, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4559)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!85, !4525}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4527)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4527, file: !212, line: 51, baseType: !85, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4527, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4527, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4527, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4527, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4527, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4527, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4527, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4527, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4527, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4527, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4527, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4527, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4527, file: !212, line: 70, baseType: !4543, size: 64, offset: 832)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4527, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4527, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4527, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4527, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4527, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4527, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4527, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4527, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4527, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4527, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4527, file: !212, line: 93, baseType: !4543, size: 64, offset: 1344)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4527, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4527, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4527, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4527, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4559 = !{!4560}
!4560 = !DILocalVariable(name: "stream", arg: 1, scope: !4522, file: !878, line: 130, type: !4525)
!4561 = !DILocation(line: 0, scope: !4522)
!4562 = !DILocation(line: 151, column: 14, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4522, file: !878, line: 151, column: 7)
!4564 = !DILocation(line: 151, column: 22, scope: !4563)
!4565 = !DILocation(line: 151, column: 27, scope: !4563)
!4566 = !DILocation(line: 151, column: 7, scope: !4522)
!4567 = !DILocation(line: 152, column: 12, scope: !4563)
!4568 = !DILocation(line: 152, column: 5, scope: !4563)
!4569 = !DILocalVariable(name: "fp", arg: 1, scope: !4570, file: !878, line: 42, type: !4525)
!4570 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !878, file: !878, line: 42, type: !4571, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !4525}
!4573 = !{!4569}
!4574 = !DILocation(line: 0, scope: !4570, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 157, column: 3, scope: !4522)
!4576 = !DILocation(line: 44, column: 12, scope: !4577, inlinedAt: !4575)
!4577 = distinct !DILexicalBlock(scope: !4570, file: !878, line: 44, column: 7)
!4578 = !DILocation(line: 44, column: 19, scope: !4577, inlinedAt: !4575)
!4579 = !DILocation(line: 44, column: 7, scope: !4570, inlinedAt: !4575)
!4580 = !DILocation(line: 46, column: 5, scope: !4577, inlinedAt: !4575)
!4581 = !DILocation(line: 159, column: 10, scope: !4522)
!4582 = !DILocation(line: 159, column: 3, scope: !4522)
!4583 = !DILocation(line: 236, column: 1, scope: !4522)
!4584 = !DISubprogram(name: "fflush", scope: !502, file: !502, line: 230, type: !4523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4585 = distinct !DISubprogram(name: "rpl_fseeko", scope: !880, file: !880, line: 28, type: !4586, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !4622)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!85, !4588, !2209, !85}
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4590)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4591)
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4590, file: !212, line: 51, baseType: !85, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4590, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4590, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4590, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4590, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4590, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4590, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4590, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4590, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4590, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4590, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4590, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4590, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4590, file: !212, line: 70, baseType: !4606, size: 64, offset: 832)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4590, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4590, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4590, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4590, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4590, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4590, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4590, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4590, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4590, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4590, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4590, file: !212, line: 93, baseType: !4606, size: 64, offset: 1344)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4590, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4590, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4590, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4590, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4622 = !{!4623, !4624, !4625, !4626}
!4623 = !DILocalVariable(name: "fp", arg: 1, scope: !4585, file: !880, line: 28, type: !4588)
!4624 = !DILocalVariable(name: "offset", arg: 2, scope: !4585, file: !880, line: 28, type: !2209)
!4625 = !DILocalVariable(name: "whence", arg: 3, scope: !4585, file: !880, line: 28, type: !85)
!4626 = !DILocalVariable(name: "pos", scope: !4627, file: !880, line: 123, type: !2209)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !880, line: 119, column: 5)
!4628 = distinct !DILexicalBlock(scope: !4585, file: !880, line: 55, column: 7)
!4629 = !DILocation(line: 0, scope: !4585)
!4630 = !DILocation(line: 55, column: 12, scope: !4628)
!4631 = !{!1828, !910, i64 16}
!4632 = !DILocation(line: 55, column: 33, scope: !4628)
!4633 = !{!1828, !910, i64 8}
!4634 = !DILocation(line: 55, column: 25, scope: !4628)
!4635 = !DILocation(line: 56, column: 7, scope: !4628)
!4636 = !DILocation(line: 56, column: 15, scope: !4628)
!4637 = !DILocation(line: 56, column: 37, scope: !4628)
!4638 = !{!1828, !910, i64 32}
!4639 = !DILocation(line: 56, column: 29, scope: !4628)
!4640 = !DILocation(line: 57, column: 7, scope: !4628)
!4641 = !DILocation(line: 57, column: 15, scope: !4628)
!4642 = !{!1828, !910, i64 72}
!4643 = !DILocation(line: 57, column: 29, scope: !4628)
!4644 = !DILocation(line: 55, column: 7, scope: !4585)
!4645 = !DILocation(line: 123, column: 26, scope: !4627)
!4646 = !DILocation(line: 123, column: 19, scope: !4627)
!4647 = !DILocation(line: 0, scope: !4627)
!4648 = !DILocation(line: 124, column: 15, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4627, file: !880, line: 124, column: 11)
!4650 = !DILocation(line: 124, column: 11, scope: !4627)
!4651 = !DILocation(line: 135, column: 19, scope: !4627)
!4652 = !DILocation(line: 136, column: 12, scope: !4627)
!4653 = !DILocation(line: 136, column: 20, scope: !4627)
!4654 = !{!1828, !1829, i64 144}
!4655 = !DILocation(line: 167, column: 7, scope: !4627)
!4656 = !DILocation(line: 169, column: 10, scope: !4585)
!4657 = !DILocation(line: 169, column: 3, scope: !4585)
!4658 = !DILocation(line: 170, column: 1, scope: !4585)
!4659 = !DISubprogram(name: "fseeko", scope: !502, file: !502, line: 736, type: !4660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!85, !4588, !234, !85}
!4662 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !775, file: !775, line: 100, type: !4663, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4666)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!138, !2434, !141, !138, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!4666 = !{!4667, !4668, !4669, !4670, !4671}
!4667 = !DILocalVariable(name: "pwc", arg: 1, scope: !4662, file: !775, line: 100, type: !2434)
!4668 = !DILocalVariable(name: "s", arg: 2, scope: !4662, file: !775, line: 100, type: !141)
!4669 = !DILocalVariable(name: "n", arg: 3, scope: !4662, file: !775, line: 100, type: !138)
!4670 = !DILocalVariable(name: "ps", arg: 4, scope: !4662, file: !775, line: 100, type: !4665)
!4671 = !DILocalVariable(name: "ret", scope: !4662, file: !775, line: 130, type: !138)
!4672 = !DILocation(line: 0, scope: !4662)
!4673 = !DILocation(line: 105, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4662, file: !775, line: 105, column: 7)
!4675 = !DILocation(line: 105, column: 7, scope: !4662)
!4676 = !DILocation(line: 117, column: 10, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4662, file: !775, line: 117, column: 7)
!4678 = !DILocation(line: 117, column: 7, scope: !4662)
!4679 = !DILocation(line: 130, column: 16, scope: !4662)
!4680 = !DILocation(line: 135, column: 11, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4662, file: !775, line: 135, column: 7)
!4682 = !DILocation(line: 135, column: 25, scope: !4681)
!4683 = !DILocation(line: 135, column: 30, scope: !4681)
!4684 = !DILocation(line: 135, column: 7, scope: !4662)
!4685 = !DILocalVariable(name: "ps", arg: 1, scope: !4686, file: !2407, line: 1135, type: !4665)
!4686 = distinct !DISubprogram(name: "mbszero", scope: !2407, file: !2407, line: 1135, type: !4687, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4689)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{null, !4665}
!4689 = !{!4685}
!4690 = !DILocation(line: 0, scope: !4686, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 137, column: 5, scope: !4681)
!4692 = !DILocalVariable(name: "__dest", arg: 1, scope: !4693, file: !2416, line: 57, type: !131)
!4693 = distinct !DISubprogram(name: "memset", scope: !2416, file: !2416, line: 57, type: !2417, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !4694)
!4694 = !{!4692, !4695, !4696}
!4695 = !DILocalVariable(name: "__ch", arg: 2, scope: !4693, file: !2416, line: 57, type: !85)
!4696 = !DILocalVariable(name: "__len", arg: 3, scope: !4693, file: !2416, line: 57, type: !138)
!4697 = !DILocation(line: 0, scope: !4693, inlinedAt: !4698)
!4698 = distinct !DILocation(line: 1137, column: 3, scope: !4686, inlinedAt: !4691)
!4699 = !DILocation(line: 59, column: 10, scope: !4693, inlinedAt: !4698)
!4700 = !DILocation(line: 137, column: 5, scope: !4681)
!4701 = !DILocation(line: 138, column: 11, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4662, file: !775, line: 138, column: 7)
!4703 = !DILocation(line: 138, column: 7, scope: !4662)
!4704 = !DILocation(line: 139, column: 5, scope: !4702)
!4705 = !DILocation(line: 143, column: 26, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4662, file: !775, line: 143, column: 7)
!4707 = !DILocation(line: 143, column: 41, scope: !4706)
!4708 = !DILocation(line: 143, column: 7, scope: !4662)
!4709 = !DILocation(line: 145, column: 15, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !775, line: 145, column: 11)
!4711 = distinct !DILexicalBlock(scope: !4706, file: !775, line: 144, column: 5)
!4712 = !DILocation(line: 145, column: 11, scope: !4711)
!4713 = !DILocation(line: 146, column: 32, scope: !4710)
!4714 = !DILocation(line: 146, column: 16, scope: !4710)
!4715 = !DILocation(line: 146, column: 14, scope: !4710)
!4716 = !DILocation(line: 146, column: 9, scope: !4710)
!4717 = !DILocation(line: 286, column: 1, scope: !4662)
!4718 = !DISubprogram(name: "mbsinit", scope: !4719, file: !4719, line: 293, type: !4720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4719 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!85, !4722}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!4724 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !882, file: !882, line: 27, type: !3935, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4725)
!4725 = !{!4726, !4727, !4728, !4729}
!4726 = !DILocalVariable(name: "ptr", arg: 1, scope: !4724, file: !882, line: 27, type: !131)
!4727 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4724, file: !882, line: 27, type: !138)
!4728 = !DILocalVariable(name: "size", arg: 3, scope: !4724, file: !882, line: 27, type: !138)
!4729 = !DILocalVariable(name: "nbytes", scope: !4724, file: !882, line: 29, type: !138)
!4730 = !DILocation(line: 0, scope: !4724)
!4731 = !DILocation(line: 30, column: 7, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4724, file: !882, line: 30, column: 7)
!4733 = !DILocation(line: 30, column: 7, scope: !4724)
!4734 = !DILocation(line: 32, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !882, line: 31, column: 5)
!4736 = !DILocation(line: 32, column: 13, scope: !4735)
!4737 = !DILocation(line: 33, column: 7, scope: !4735)
!4738 = !DILocalVariable(name: "ptr", arg: 1, scope: !4739, file: !4027, line: 2057, type: !131)
!4739 = distinct !DISubprogram(name: "rpl_realloc", scope: !4027, file: !4027, line: 2057, type: !4019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4740)
!4740 = !{!4738, !4741}
!4741 = !DILocalVariable(name: "size", arg: 2, scope: !4739, file: !4027, line: 2057, type: !138)
!4742 = !DILocation(line: 0, scope: !4739, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 37, column: 10, scope: !4724)
!4744 = !DILocation(line: 2059, column: 24, scope: !4739, inlinedAt: !4743)
!4745 = !DILocation(line: 2059, column: 10, scope: !4739, inlinedAt: !4743)
!4746 = !DILocation(line: 37, column: 3, scope: !4724)
!4747 = !DILocation(line: 38, column: 1, scope: !4724)
!4748 = distinct !DISubprogram(name: "dup_safer", scope: !884, file: !884, line: 31, type: !1440, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !883, retainedNodes: !4749)
!4749 = !{!4750}
!4750 = !DILocalVariable(name: "fd", arg: 1, scope: !4748, file: !884, line: 31, type: !85)
!4751 = !DILocation(line: 0, scope: !4748)
!4752 = !DILocation(line: 33, column: 10, scope: !4748)
!4753 = !DILocation(line: 33, column: 3, scope: !4748)
!4754 = distinct !DISubprogram(name: "rpl_fcntl", scope: !794, file: !794, line: 202, type: !2142, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4755)
!4755 = !{!4756, !4757, !4758, !4768, !4769, !4772, !4774, !4778}
!4756 = !DILocalVariable(name: "fd", arg: 1, scope: !4754, file: !794, line: 202, type: !85)
!4757 = !DILocalVariable(name: "action", arg: 2, scope: !4754, file: !794, line: 202, type: !85)
!4758 = !DILocalVariable(name: "arg", scope: !4754, file: !794, line: 208, type: !4759)
!4759 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2287, line: 12, baseType: !4760)
!4760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !794, baseType: !4761)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4762)
!4762 = !{!4763, !4764, !4765, !4766, !4767}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4761, file: !794, line: 208, baseType: !131, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4761, file: !794, line: 208, baseType: !131, size: 64, offset: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4761, file: !794, line: 208, baseType: !131, size: 64, offset: 128)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4761, file: !794, line: 208, baseType: !85, size: 32, offset: 192)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4761, file: !794, line: 208, baseType: !85, size: 32, offset: 224)
!4768 = !DILocalVariable(name: "result", scope: !4754, file: !794, line: 211, type: !85)
!4769 = !DILocalVariable(name: "target", scope: !4770, file: !794, line: 216, type: !85)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !794, line: 215, column: 7)
!4771 = distinct !DILexicalBlock(scope: !4754, file: !794, line: 213, column: 5)
!4772 = !DILocalVariable(name: "target", scope: !4773, file: !794, line: 223, type: !85)
!4773 = distinct !DILexicalBlock(scope: !4771, file: !794, line: 222, column: 7)
!4774 = !DILocalVariable(name: "x", scope: !4775, file: !794, line: 418, type: !85)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !794, line: 417, column: 13)
!4776 = distinct !DILexicalBlock(scope: !4777, file: !794, line: 261, column: 11)
!4777 = distinct !DILexicalBlock(scope: !4771, file: !794, line: 258, column: 7)
!4778 = !DILocalVariable(name: "p", scope: !4779, file: !794, line: 426, type: !131)
!4779 = distinct !DILexicalBlock(scope: !4776, file: !794, line: 425, column: 13)
!4780 = distinct !DIAssignID()
!4781 = !DILocation(line: 0, scope: !4754)
!4782 = !DILocation(line: 208, column: 3, scope: !4754)
!4783 = !DILocation(line: 209, column: 3, scope: !4754)
!4784 = !DILocation(line: 212, column: 3, scope: !4754)
!4785 = !DILocation(line: 216, column: 22, scope: !4770)
!4786 = distinct !DIAssignID()
!4787 = distinct !DIAssignID()
!4788 = !DILocation(line: 0, scope: !4770)
!4789 = !DILocalVariable(name: "fd", arg: 1, scope: !4790, file: !794, line: 444, type: !85)
!4790 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !794, file: !794, line: 444, type: !795, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4791)
!4791 = !{!4789, !4792, !4793}
!4792 = !DILocalVariable(name: "target", arg: 2, scope: !4790, file: !794, line: 444, type: !85)
!4793 = !DILocalVariable(name: "result", scope: !4790, file: !794, line: 446, type: !85)
!4794 = !DILocation(line: 0, scope: !4790, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 217, column: 18, scope: !4770)
!4796 = !DILocation(line: 479, column: 12, scope: !4790, inlinedAt: !4795)
!4797 = !DILocation(line: 223, column: 22, scope: !4773)
!4798 = distinct !DIAssignID()
!4799 = distinct !DIAssignID()
!4800 = !DILocation(line: 0, scope: !4773)
!4801 = !DILocation(line: 0, scope: !793, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 224, column: 18, scope: !4773)
!4803 = !DILocation(line: 507, column: 12, scope: !4804, inlinedAt: !4802)
!4804 = distinct !DILexicalBlock(scope: !793, file: !794, line: 507, column: 7)
!4805 = !DILocation(line: 507, column: 9, scope: !4804, inlinedAt: !4802)
!4806 = !DILocation(line: 507, column: 7, scope: !793, inlinedAt: !4802)
!4807 = !DILocation(line: 509, column: 16, scope: !4808, inlinedAt: !4802)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !794, line: 508, column: 5)
!4809 = !DILocation(line: 510, column: 13, scope: !4810, inlinedAt: !4802)
!4810 = distinct !DILexicalBlock(scope: !4808, file: !794, line: 510, column: 11)
!4811 = !DILocation(line: 510, column: 23, scope: !4810, inlinedAt: !4802)
!4812 = !DILocation(line: 510, column: 26, scope: !4810, inlinedAt: !4802)
!4813 = !DILocation(line: 510, column: 32, scope: !4810, inlinedAt: !4802)
!4814 = !DILocation(line: 510, column: 11, scope: !4808, inlinedAt: !4802)
!4815 = !DILocation(line: 512, column: 30, scope: !4816, inlinedAt: !4802)
!4816 = distinct !DILexicalBlock(scope: !4810, file: !794, line: 511, column: 9)
!4817 = !DILocation(line: 528, column: 19, scope: !805, inlinedAt: !4802)
!4818 = !DILocation(line: 0, scope: !4790, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 520, column: 20, scope: !4820, inlinedAt: !4802)
!4820 = distinct !DILexicalBlock(scope: !4810, file: !794, line: 519, column: 9)
!4821 = !DILocation(line: 479, column: 12, scope: !4790, inlinedAt: !4819)
!4822 = !DILocation(line: 521, column: 22, scope: !4823, inlinedAt: !4802)
!4823 = distinct !DILexicalBlock(scope: !4820, file: !794, line: 521, column: 15)
!4824 = !DILocation(line: 521, column: 15, scope: !4820, inlinedAt: !4802)
!4825 = !DILocation(line: 522, column: 32, scope: !4823, inlinedAt: !4802)
!4826 = !DILocation(line: 522, column: 13, scope: !4823, inlinedAt: !4802)
!4827 = !DILocation(line: 0, scope: !4790, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 527, column: 14, scope: !4804, inlinedAt: !4802)
!4829 = !DILocation(line: 479, column: 12, scope: !4790, inlinedAt: !4828)
!4830 = !DILocation(line: 0, scope: !4804, inlinedAt: !4802)
!4831 = !DILocation(line: 528, column: 9, scope: !805, inlinedAt: !4802)
!4832 = !DILocation(line: 530, column: 19, scope: !804, inlinedAt: !4802)
!4833 = !DILocation(line: 0, scope: !804, inlinedAt: !4802)
!4834 = !DILocation(line: 531, column: 17, scope: !808, inlinedAt: !4802)
!4835 = !DILocation(line: 531, column: 21, scope: !808, inlinedAt: !4802)
!4836 = !DILocation(line: 531, column: 54, scope: !808, inlinedAt: !4802)
!4837 = !DILocation(line: 531, column: 24, scope: !808, inlinedAt: !4802)
!4838 = !DILocation(line: 531, column: 68, scope: !808, inlinedAt: !4802)
!4839 = !DILocation(line: 531, column: 11, scope: !804, inlinedAt: !4802)
!4840 = !DILocation(line: 533, column: 29, scope: !807, inlinedAt: !4802)
!4841 = !DILocation(line: 0, scope: !807, inlinedAt: !4802)
!4842 = !DILocation(line: 534, column: 11, scope: !807, inlinedAt: !4802)
!4843 = !DILocation(line: 535, column: 17, scope: !807, inlinedAt: !4802)
!4844 = !DILocation(line: 537, column: 9, scope: !807, inlinedAt: !4802)
!4845 = !DILocation(line: 329, column: 22, scope: !4776)
!4846 = !DILocation(line: 330, column: 13, scope: !4776)
!4847 = !DILocation(line: 418, column: 23, scope: !4775)
!4848 = distinct !DIAssignID()
!4849 = distinct !DIAssignID()
!4850 = !DILocation(line: 0, scope: !4775)
!4851 = !DILocation(line: 419, column: 24, scope: !4775)
!4852 = !DILocation(line: 421, column: 13, scope: !4776)
!4853 = !DILocation(line: 426, column: 25, scope: !4779)
!4854 = distinct !DIAssignID()
!4855 = distinct !DIAssignID()
!4856 = !DILocation(line: 0, scope: !4779)
!4857 = !DILocation(line: 427, column: 24, scope: !4779)
!4858 = !DILocation(line: 429, column: 13, scope: !4776)
!4859 = !DILocation(line: 0, scope: !4771)
!4860 = !DILocation(line: 438, column: 3, scope: !4754)
!4861 = !DILocation(line: 441, column: 1, scope: !4754)
!4862 = !DILocation(line: 440, column: 3, scope: !4754)
!4863 = distinct !DISubprogram(name: "hard_locale", scope: !811, file: !811, line: 28, type: !1535, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4864)
!4864 = !{!4865, !4866}
!4865 = !DILocalVariable(name: "category", arg: 1, scope: !4863, file: !811, line: 28, type: !85)
!4866 = !DILocalVariable(name: "locale", scope: !4863, file: !811, line: 30, type: !4867)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4868)
!4868 = !{!4869}
!4869 = !DISubrange(count: 257)
!4870 = distinct !DIAssignID()
!4871 = !DILocation(line: 0, scope: !4863)
!4872 = !DILocation(line: 30, column: 3, scope: !4863)
!4873 = !DILocation(line: 32, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4863, file: !811, line: 32, column: 7)
!4875 = !DILocation(line: 32, column: 7, scope: !4863)
!4876 = !DILocalVariable(name: "__s1", arg: 1, scope: !4877, file: !987, line: 1359, type: !141)
!4877 = distinct !DISubprogram(name: "streq", scope: !987, file: !987, line: 1359, type: !988, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4878)
!4878 = !{!4876, !4879}
!4879 = !DILocalVariable(name: "__s2", arg: 2, scope: !4877, file: !987, line: 1359, type: !141)
!4880 = !DILocation(line: 0, scope: !4877, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 35, column: 9, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4863, file: !811, line: 35, column: 7)
!4883 = !DILocation(line: 1361, column: 11, scope: !4877, inlinedAt: !4881)
!4884 = !DILocation(line: 1361, column: 10, scope: !4877, inlinedAt: !4881)
!4885 = !DILocation(line: 35, column: 29, scope: !4882)
!4886 = !DILocation(line: 0, scope: !4877, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 35, column: 32, scope: !4882)
!4888 = !DILocation(line: 1361, column: 11, scope: !4877, inlinedAt: !4887)
!4889 = !DILocation(line: 1361, column: 10, scope: !4877, inlinedAt: !4887)
!4890 = !DILocation(line: 35, column: 7, scope: !4863)
!4891 = !DILocation(line: 46, column: 3, scope: !4863)
!4892 = !DILocation(line: 47, column: 1, scope: !4863)
!4893 = distinct !DISubprogram(name: "setlocale_null_r", scope: !888, file: !888, line: 154, type: !4894, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !4896)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!85, !85, !130, !138}
!4896 = !{!4897, !4898, !4899}
!4897 = !DILocalVariable(name: "category", arg: 1, scope: !4893, file: !888, line: 154, type: !85)
!4898 = !DILocalVariable(name: "buf", arg: 2, scope: !4893, file: !888, line: 154, type: !130)
!4899 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4893, file: !888, line: 154, type: !138)
!4900 = !DILocation(line: 0, scope: !4893)
!4901 = !DILocation(line: 159, column: 10, scope: !4893)
!4902 = !DILocation(line: 159, column: 3, scope: !4893)
!4903 = distinct !DISubprogram(name: "setlocale_null", scope: !888, file: !888, line: 186, type: !4904, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!141, !85}
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "category", arg: 1, scope: !4903, file: !888, line: 186, type: !85)
!4908 = !DILocation(line: 0, scope: !4903)
!4909 = !DILocation(line: 189, column: 10, scope: !4903)
!4910 = !DILocation(line: 189, column: 3, scope: !4903)
!4911 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !890, file: !890, line: 35, type: !4904, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4912)
!4912 = !{!4913, !4914}
!4913 = !DILocalVariable(name: "category", arg: 1, scope: !4911, file: !890, line: 35, type: !85)
!4914 = !DILocalVariable(name: "result", scope: !4911, file: !890, line: 37, type: !141)
!4915 = !DILocation(line: 0, scope: !4911)
!4916 = !DILocation(line: 37, column: 24, scope: !4911)
!4917 = !DILocation(line: 62, column: 3, scope: !4911)
!4918 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !890, file: !890, line: 66, type: !4894, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924}
!4920 = !DILocalVariable(name: "category", arg: 1, scope: !4918, file: !890, line: 66, type: !85)
!4921 = !DILocalVariable(name: "buf", arg: 2, scope: !4918, file: !890, line: 66, type: !130)
!4922 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4918, file: !890, line: 66, type: !138)
!4923 = !DILocalVariable(name: "result", scope: !4918, file: !890, line: 111, type: !141)
!4924 = !DILocalVariable(name: "length", scope: !4925, file: !890, line: 125, type: !138)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !890, line: 124, column: 5)
!4926 = distinct !DILexicalBlock(scope: !4918, file: !890, line: 113, column: 7)
!4927 = !DILocation(line: 0, scope: !4918)
!4928 = !DILocation(line: 0, scope: !4911, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 111, column: 24, scope: !4918)
!4930 = !DILocation(line: 37, column: 24, scope: !4911, inlinedAt: !4929)
!4931 = !DILocation(line: 113, column: 14, scope: !4926)
!4932 = !DILocation(line: 113, column: 7, scope: !4918)
!4933 = !DILocation(line: 116, column: 19, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !890, line: 116, column: 11)
!4935 = distinct !DILexicalBlock(scope: !4926, file: !890, line: 114, column: 5)
!4936 = !DILocation(line: 116, column: 11, scope: !4935)
!4937 = !DILocation(line: 120, column: 16, scope: !4934)
!4938 = !DILocation(line: 120, column: 9, scope: !4934)
!4939 = !DILocation(line: 125, column: 23, scope: !4925)
!4940 = !DILocation(line: 0, scope: !4925)
!4941 = !DILocation(line: 126, column: 18, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4925, file: !890, line: 126, column: 11)
!4943 = !DILocation(line: 126, column: 11, scope: !4925)
!4944 = !DILocation(line: 128, column: 39, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4942, file: !890, line: 127, column: 9)
!4946 = !DILocalVariable(name: "__dest", arg: 1, scope: !4947, file: !2416, line: 26, type: !4297)
!4947 = distinct !DISubprogram(name: "memcpy", scope: !2416, file: !2416, line: 26, type: !4295, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !889, retainedNodes: !4948)
!4948 = !{!4946, !4949, !4950}
!4949 = !DILocalVariable(name: "__src", arg: 2, scope: !4947, file: !2416, line: 26, type: !1118)
!4950 = !DILocalVariable(name: "__len", arg: 3, scope: !4947, file: !2416, line: 26, type: !138)
!4951 = !DILocation(line: 0, scope: !4947, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 128, column: 11, scope: !4945)
!4953 = !DILocation(line: 29, column: 10, scope: !4947, inlinedAt: !4952)
!4954 = !DILocation(line: 129, column: 11, scope: !4945)
!4955 = !DILocation(line: 133, column: 23, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !890, line: 133, column: 15)
!4957 = distinct !DILexicalBlock(scope: !4942, file: !890, line: 132, column: 9)
!4958 = !DILocation(line: 133, column: 15, scope: !4957)
!4959 = !DILocation(line: 138, column: 44, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4956, file: !890, line: 134, column: 13)
!4961 = !DILocation(line: 0, scope: !4947, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 138, column: 15, scope: !4960)
!4963 = !DILocation(line: 29, column: 10, scope: !4947, inlinedAt: !4962)
!4964 = !DILocation(line: 139, column: 15, scope: !4960)
!4965 = !DILocation(line: 139, column: 32, scope: !4960)
!4966 = !DILocation(line: 140, column: 13, scope: !4960)
!4967 = !DILocation(line: 0, scope: !4926)
!4968 = !DILocation(line: 145, column: 1, scope: !4918)
