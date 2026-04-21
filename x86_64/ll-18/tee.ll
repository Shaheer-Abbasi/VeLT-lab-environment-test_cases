; ModuleID = 'src/tee.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
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
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !450
@.str.1.52 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1, !dbg !452
@.str.2.53 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1, !dbg !454
@.str.3.70 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1, !dbg !459
@.str.4.71 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1, !dbg !464
@.str.5.72 = private unnamed_addr constant [5 x i8] c", %s\00", align 1, !dbg !466
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !473
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !486
@.str.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !478
@.str.1.78 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !480
@.str.2.79 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !482
@.str.3.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !484
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !488
@stderr = external local_unnamed_addr global ptr, align 8
@.str.81 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !494
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !525
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !496
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !515
@.str.1.87 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !517
@.str.2.89 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !519
@.str.3.88 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !521
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !523
@.str.4.82 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !527
@.str.5.83 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !529
@.str.6.84 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !531
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !533
@.str.104 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !539
@.str.1.105 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !541
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !543
@.str.108 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !574
@.str.1.109 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !577
@.str.2.110 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !579
@.str.3.111 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !581
@.str.4.112 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !583
@.str.5.113 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !585
@.str.6.114 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !587
@.str.7.115 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !589
@.str.8.116 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !591
@.str.9.117 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !593
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.108, ptr @.str.1.109, ptr @.str.2.110, ptr @.str.3.111, ptr @.str.4.112, ptr @.str.5.113, ptr @.str.6.114, ptr @.str.7.115, ptr @.str.8.116, ptr @.str.9.117, ptr null], align 16, !dbg !595
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !606
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !620
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !658
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !665
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !622
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !667
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !610
@.str.10.120 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !627
@.str.11.118 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !629
@.str.12.121 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !631
@.str.13.119 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !633
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !635
@.str.134 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !670
@.str.1.135 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !673
@.str.2.136 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.3.137 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !677
@.str.4.138 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !679
@.str.5.139 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !681
@.str.6.140 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !686
@.str.7.141 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !691
@.str.8.142 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !693
@.str.9.143 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !698
@.str.10.144 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !703
@.str.11.145 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !708
@.str.12.146 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !713
@.str.13.147 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !715
@.str.14.148 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !718
@.str.15.149 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !723
@.str.16.150 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !728
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.155 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !733
@.str.18.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !735
@.str.19.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !737
@.str.20.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !739
@.str.21.159 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !741
@.str.22.160 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !743
@.str.23.161 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !745
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !747
@exit_failure = dso_local global i32 1, align 4, !dbg !755
@.str.176 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !761
@.str.1.174 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !764
@.str.2.175 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !766
@.str.187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !768
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !771
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !786
@.str.1.196 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !804

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !894 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !896, metadata !DIExpression()), !dbg !897
  %2 = icmp eq i32 %0, 0, !dbg !898
  br i1 %2, label %8, label %3, !dbg !900

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !901, !tbaa !903
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #41, !dbg !901
  %6 = load ptr, ptr @program_name, align 8, !dbg !901, !tbaa !903
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #41, !dbg !901
  br label %38, !dbg !901

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #41, !dbg !907
  %10 = load ptr, ptr @program_name, align 8, !dbg !907, !tbaa !903
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #41, !dbg !907
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #41, !dbg !909
  %13 = load ptr, ptr @stdout, align 8, !dbg !909, !tbaa !903
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !909
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #41, !dbg !910
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !910
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #41, !dbg !911
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !911
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #41, !dbg !912
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !912
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #41, !dbg !913
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !913
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #41, !dbg !914
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !914
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #41, !dbg !915
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !915
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #41, !dbg !916
  %22 = load ptr, ptr @stdout, align 8, !dbg !916, !tbaa !903
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !916
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !917, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata !936, metadata !930, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr poison, metadata !929, metadata !DIExpression()), !dbg !934
  tail call void @emit_bug_reporting_address() #41, !dbg !937
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #41, !dbg !938
  call void @llvm.dbg.value(metadata ptr %24, metadata !932, metadata !DIExpression()), !dbg !934
  %25 = icmp eq ptr %24, null, !dbg !939
  br i1 %25, label %33, label %26, !dbg !941

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.52, i64 noundef 3) #42, !dbg !942
  %28 = icmp eq i32 %27, 0, !dbg !942
  br i1 %28, label %33, label %29, !dbg !943

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #41, !dbg !944
  %31 = load ptr, ptr @stdout, align 8, !dbg !944, !tbaa !903
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !944
  br label %33, !dbg !946

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !929, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !933, metadata !DIExpression()), !dbg !934
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #41, !dbg !947
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3) #41, !dbg !947
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #41, !dbg !948
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #41, !dbg !948
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #43, !dbg !949
  unreachable, !dbg !949
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !950 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !954 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !960 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !963 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !186 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !190, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !191, metadata !DIExpression()), !dbg !967
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !968, !tbaa !969
  %3 = icmp eq i32 %2, -1, !dbg !971
  br i1 %3, label %4, label %16, !dbg !972

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #41, !dbg !973
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !192, metadata !DIExpression()), !dbg !974
  %6 = icmp eq ptr %5, null, !dbg !975
  br i1 %6, label %14, label %7, !dbg !976

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !977, !tbaa !978
  %9 = icmp eq i8 %8, 0, !dbg !977
  br i1 %9, label %14, label %10, !dbg !979

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !980, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !986, metadata !DIExpression()), !dbg !987
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23) #42, !dbg !989
  %12 = icmp eq i32 %11, 0, !dbg !990
  %13 = zext i1 %12 to i32, !dbg !979
  br label %14, !dbg !979

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !991, !tbaa !969
  br label %16, !dbg !992

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !993
  %18 = icmp eq i32 %17, 0, !dbg !993
  br i1 %18, label %22, label %19, !dbg !995

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !996, !tbaa !903
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !996
  br label %124, !dbg !998

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !195, metadata !DIExpression()), !dbg !967
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.24) #42, !dbg !999
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1000
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !196, metadata !DIExpression()), !dbg !967
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #42, !dbg !1001
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !197, metadata !DIExpression()), !dbg !967
  %26 = icmp eq ptr %25, null, !dbg !1002
  br i1 %26, label %54, label %27, !dbg !1003

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1004
  br i1 %28, label %54, label %29, !dbg !1005

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !198, metadata !DIExpression()), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !1006
  %30 = icmp ult ptr %24, %25, !dbg !1007
  br i1 %30, label %31, label %54, !dbg !1008

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #44, !dbg !967
  %33 = load ptr, ptr %32, align 8, !tbaa !903
  br label %34, !dbg !1008

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !198, metadata !DIExpression()), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !202, metadata !DIExpression()), !dbg !1006
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1009
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !198, metadata !DIExpression()), !dbg !1006
  %38 = load i8, ptr %35, align 1, !dbg !1009, !tbaa !978
  %39 = sext i8 %38 to i64, !dbg !1009
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1009
  %41 = load i16, ptr %40, align 2, !dbg !1009, !tbaa !1010
  %42 = freeze i16 %41, !dbg !1012
  %43 = lshr i16 %42, 13, !dbg !1012
  %44 = and i16 %43, 1, !dbg !1012
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1013
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !202, metadata !DIExpression()), !dbg !1006
  %47 = icmp ult ptr %37, %25, !dbg !1007
  %48 = icmp ult i64 %46, 2, !dbg !1014
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1014
  br i1 %49, label %34, label %50, !dbg !1008, !llvm.loop !1015

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1017
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1019
  %53 = zext i1 %51 to i8, !dbg !1019
  br label %54, !dbg !1019

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !967
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !967
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !195, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !197, metadata !DIExpression()), !dbg !967
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.25) #42, !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !203, metadata !DIExpression()), !dbg !967
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1021
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !204, metadata !DIExpression()), !dbg !967
  br label %59, !dbg !1022

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !967
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !967
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !195, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !204, metadata !DIExpression()), !dbg !967
  %62 = load i8, ptr %60, align 1, !dbg !1023, !tbaa !978
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1024

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1025
  %65 = load i8, ptr %64, align 1, !dbg !1028, !tbaa !978
  %66 = icmp eq i8 %65, 45, !dbg !1029
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1030
  br label %68, !dbg !1030

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !967
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !195, metadata !DIExpression()), !dbg !967
  %70 = tail call ptr @__ctype_b_loc() #44, !dbg !1031
  %71 = load ptr, ptr %70, align 8, !dbg !1031, !tbaa !903
  %72 = sext i8 %62 to i64, !dbg !1031
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1031
  %74 = load i16, ptr %73, align 2, !dbg !1031, !tbaa !1010
  %75 = and i16 %74, 8192, !dbg !1031
  %76 = icmp eq i16 %75, 0, !dbg !1031
  br i1 %76, label %92, label %77, !dbg !1033

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1034
  br i1 %78, label %94, label %79, !dbg !1037

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1038
  %81 = load i8, ptr %80, align 1, !dbg !1038, !tbaa !978
  %82 = sext i8 %81 to i64, !dbg !1038
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1038
  %84 = load i16, ptr %83, align 2, !dbg !1038, !tbaa !1010
  %85 = and i16 %84, 8192, !dbg !1038
  %86 = icmp eq i16 %85, 0, !dbg !1038
  br i1 %86, label %87, label %94, !dbg !1039

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1040
  %89 = icmp ne i8 %88, 0, !dbg !1040
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1042
  br i1 %91, label %92, label %94, !dbg !1042

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1043
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !204, metadata !DIExpression()), !dbg !967
  br label %59, !dbg !1022, !llvm.loop !1044

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1046
  %96 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !903
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1046
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !980, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata !936, metadata !986, metadata !DIExpression()), !dbg !1065
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !258, metadata !DIExpression()), !dbg !967
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.39, i64 noundef 6) #42, !dbg !1067
  %99 = icmp eq i32 %98, 0, !dbg !1067
  br i1 %99, label %103, label %100, !dbg !1069

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.40, i64 noundef 9) #42, !dbg !1070
  %102 = icmp eq i32 %101, 0, !dbg !1070
  br i1 %102, label %103, label %106, !dbg !1071

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1072
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #41, !dbg !1072
  br label %109, !dbg !1074

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1075
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #41, !dbg !1075
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !903
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %110), !dbg !1077
  %112 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !903
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.46, ptr noundef %112), !dbg !1078
  %114 = ptrtoint ptr %60 to i64, !dbg !1079
  %115 = sub i64 %114, %95, !dbg !1079
  %116 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !903
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1079
  %118 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !903
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.47, ptr noundef %118), !dbg !1080
  %120 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !903
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.48, ptr noundef %120), !dbg !1081
  %122 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !903
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1082
  br label %124, !dbg !1083

124:                                              ; preds = %109, %19
  ret void, !dbg !1083
}

; Function Attrs: nounwind
declare !dbg !1084 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1088 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1092 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1094 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1097 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1100 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1103 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1106 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1112 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1113 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1117 {
  %3 = alloca [8192 x i8], align 16, !DIAssignID !1127
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1122, metadata !DIExpression()), !dbg !1128
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1123, metadata !DIExpression()), !dbg !1128
  %4 = load ptr, ptr %1, align 8, !dbg !1129, !tbaa !903
  tail call void @set_program_name(ptr noundef %4) #41, !dbg !1130
  %5 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #41, !dbg !1131
  %6 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #41, !dbg !1132
  %7 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #41, !dbg !1133
  %8 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #41, !dbg !1134
  br label %9, !dbg !1135

9:                                                ; preds = %21, %2
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #41, !dbg !1136
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1124, metadata !DIExpression()), !dbg !1128
  switch i32 %10, label %30 [
    i32 -1, label %31
    i32 97, label %11
    i32 105, label %12
    i32 112, label %13
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1135

11:                                               ; preds = %9
  store i1 true, ptr @append, align 1, !dbg !1137
  br label %21, !dbg !1140

12:                                               ; preds = %9
  store i1 true, ptr @ignore_interrupts, align 1, !dbg !1141
  br label %21, !dbg !1142

13:                                               ; preds = %9
  %14 = load ptr, ptr @optarg, align 8, !dbg !1143, !tbaa !903
  %15 = icmp eq ptr %14, null, !dbg !1143
  br i1 %15, label %22, label %16, !dbg !1145

16:                                               ; preds = %13
  %17 = load ptr, ptr @argmatch_die, align 8, !dbg !1146, !tbaa !903
  %18 = tail call i64 @__xargmatch_internal(ptr noundef nonnull @.str.15, ptr noundef nonnull %14, ptr noundef nonnull @output_error_args, ptr noundef nonnull @output_error_types, i64 noundef 4, ptr noundef %17, i1 noundef zeroext true) #41, !dbg !1146
  %19 = getelementptr inbounds [4 x i32], ptr @output_error_types, i64 0, i64 %18, !dbg !1146
  %20 = load i32, ptr %19, align 4, !dbg !1146, !tbaa !969
  store i32 %20, ptr @output_error, align 4, !dbg !1147, !tbaa !969
  br label %21, !dbg !1148

21:                                               ; preds = %16, %22, %12, %11
  br label %9, !dbg !1136, !llvm.loop !1149

22:                                               ; preds = %13
  store i32 2, ptr @output_error, align 4, !dbg !1151, !tbaa !969
  br label %21

23:                                               ; preds = %9
  tail call void @usage(i32 noundef 0) #45, !dbg !1152
  unreachable, !dbg !1152

24:                                               ; preds = %9
  %25 = load ptr, ptr @stdout, align 8, !dbg !1153, !tbaa !903
  %26 = load ptr, ptr @Version, align 8, !dbg !1153, !tbaa !903
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17) #41, !dbg !1153
  %28 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.18) #41, !dbg !1153
  %29 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19) #41, !dbg !1153
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef null) #41, !dbg !1153
  tail call void @exit(i32 noundef 0) #43, !dbg !1153
  unreachable, !dbg !1153

30:                                               ; preds = %9
  tail call void @usage(i32 noundef 1) #45, !dbg !1154
  unreachable, !dbg !1154

31:                                               ; preds = %9
  %32 = load i1, ptr @ignore_interrupts, align 1, !dbg !1155
  br i1 %32, label %33, label %35, !dbg !1157

33:                                               ; preds = %31
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1158
  br label %35, !dbg !1158

35:                                               ; preds = %33, %31
  %36 = load i32, ptr @output_error, align 4, !dbg !1159
  %37 = icmp eq i32 %36, 0, !dbg !1161
  br i1 %37, label %43, label %38, !dbg !1162

38:                                               ; preds = %35
  %39 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #41, !dbg !1163
  %40 = load i32, ptr @output_error, align 4, !dbg !1164
  switch i32 %40, label %43 [
    i32 4, label %41
    i32 2, label %41
  ], !dbg !1165

41:                                               ; preds = %38, %38
  %42 = tail call zeroext i1 @iopoll_input_ok(i32 noundef 0) #41, !dbg !1166
  br label %43

43:                                               ; preds = %35, %38, %41
  %44 = phi i1 [ %42, %41 ], [ false, %38 ], [ false, %35 ], !dbg !1128
  tail call void @llvm.dbg.value(metadata i1 %44, metadata !1125, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1128
  %45 = load i32, ptr @optind, align 4, !dbg !1167, !tbaa !969
  %46 = sub nsw i32 %0, %45, !dbg !1168
  %47 = sext i32 %45 to i64, !dbg !1169
  %48 = getelementptr inbounds ptr, ptr %1, i64 %47, !dbg !1169
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1170, metadata !DIExpression(), metadata !1127, metadata ptr %3, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %46, metadata !1175, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %48, metadata !1176, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i1 %44, metadata !1177, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1209
  call void @llvm.dbg.value(metadata i64 0, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #41, !dbg !1211
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1209
  %49 = load i1, ptr @append, align 1, !dbg !1212
  %50 = select i1 %49, i32 1089, i32 577, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %50, metadata !1188, metadata !DIExpression()), !dbg !1209
  %51 = load ptr, ptr @stdin, align 8, !dbg !1214, !tbaa !903
  tail call void @fadvise(ptr noundef %51, i32 noundef 2) #41, !dbg !1215
  %52 = add i32 %46, 1, !dbg !1216
  %53 = sext i32 %52 to i64, !dbg !1217
  %54 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 4) #46, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %54, metadata !1179, metadata !DIExpression()), !dbg !1209
  br i1 %44, label %55, label %59, !dbg !1219

55:                                               ; preds = %43
  %56 = tail call noalias nonnull ptr @xnmalloc(i64 noundef %53, i64 noundef 1) #46, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %56, metadata !1180, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %48, metadata !1176, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !1209
  %57 = tail call zeroext i1 @iopoll_output_ok(i32 noundef 1) #41, !dbg !1222
  %58 = zext i1 %57 to i8, !dbg !1224
  store i8 %58, ptr %56, align 1, !dbg !1224, !tbaa !1225
  br label %59, !dbg !1227

59:                                               ; preds = %55, %43
  %60 = phi ptr [ %56, %55 ], [ undef, %43 ]
  store i32 1, ptr %54, align 4, !dbg !1228
  %61 = getelementptr inbounds ptr, ptr %48, i64 -1, !dbg !1229
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #41, !dbg !1230
  store ptr %62, ptr %61, align 8, !dbg !1231, !tbaa !903
  call void @llvm.dbg.value(metadata i64 1, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 1, metadata !1189, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1209
  %63 = icmp slt i32 %46, 1, !dbg !1233
  %64 = zext i32 %52 to i64
  br i1 %63, label %67, label %71, !dbg !1234

65:                                               ; preds = %100
  call void @llvm.dbg.value(metadata i64 %102, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %101, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 0, metadata !1182, metadata !DIExpression()), !dbg !1209
  %66 = icmp eq i64 %102, 0, !dbg !1235
  br i1 %66, label %230, label %67, !dbg !1235

67:                                               ; preds = %59, %65
  %68 = phi i64 [ %102, %65 ], [ 1, %59 ]
  %69 = phi i8 [ %101, %65 ], [ 1, %59 ]
  %70 = icmp slt i32 %46, 0
  br label %105, !dbg !1235

71:                                               ; preds = %59, %100
  %72 = phi i64 [ %103, %100 ], [ 1, %59 ]
  %73 = phi i64 [ %102, %100 ], [ 1, %59 ]
  %74 = phi i8 [ %101, %100 ], [ 1, %59 ]
  call void @llvm.dbg.value(metadata i64 %73, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %72, metadata !1189, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %74, metadata !1187, metadata !DIExpression()), !dbg !1209
  %75 = getelementptr inbounds ptr, ptr %61, i64 %72, !dbg !1236
  %76 = load ptr, ptr %75, align 8, !dbg !1236, !tbaa !903
  %77 = tail call i32 (ptr, i32, ...) @open_safer(ptr noundef %76, i32 noundef %50, i32 noundef 438) #41, !dbg !1237
  %78 = getelementptr inbounds i32, ptr %54, i64 %72, !dbg !1238
  store i32 %77, ptr %78, align 4, !dbg !1239, !tbaa !969
  %79 = icmp slt i32 %77, 0, !dbg !1240
  br i1 %79, label %80, label %93, !dbg !1241

80:                                               ; preds = %71
  br i1 %44, label %81, label %83, !dbg !1242

81:                                               ; preds = %80
  %82 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1243
  store i8 0, ptr %82, align 1, !dbg !1245, !tbaa !1225
  br label %83, !dbg !1243

83:                                               ; preds = %81, %80
  %84 = load i32, ptr @output_error, align 4, !dbg !1246
  %85 = add i32 %84, -3, !dbg !1246
  %86 = icmp ult i32 %85, 2, !dbg !1246
  %87 = zext i1 %86 to i32, !dbg !1246
  %88 = tail call ptr @__errno_location() #44, !dbg !1246
  %89 = load i32, ptr %88, align 4, !dbg !1246, !tbaa !969
  %90 = load ptr, ptr %75, align 8, !dbg !1246, !tbaa !903
  %91 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %90) #41, !dbg !1246
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %87, i32 noundef %89, ptr noundef nonnull @.str.20, ptr noundef %91) #41, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %87, metadata !1191, metadata !DIExpression()), !dbg !1247
  %92 = xor i1 %86, true, !dbg !1248
  tail call void @llvm.assume(i1 %92), !dbg !1248
  br label %100, !dbg !1246

93:                                               ; preds = %71
  br i1 %44, label %94, label %98, !dbg !1249

94:                                               ; preds = %93
  %95 = tail call zeroext i1 @iopoll_output_ok(i32 noundef %77) #41, !dbg !1251
  %96 = getelementptr inbounds i8, ptr %60, i64 %72, !dbg !1253
  %97 = zext i1 %95 to i8, !dbg !1254
  store i8 %97, ptr %96, align 1, !dbg !1254, !tbaa !1225
  br label %98, !dbg !1253

98:                                               ; preds = %94, %93
  %99 = add i64 %73, 1, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %99, metadata !1178, metadata !DIExpression()), !dbg !1209
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i8 [ %74, %98 ], [ 0, %83 ], !dbg !1209
  %102 = phi i64 [ %99, %98 ], [ %73, %83 ], !dbg !1209
  call void @llvm.dbg.value(metadata i64 %102, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %101, metadata !1187, metadata !DIExpression()), !dbg !1209
  %103 = add nuw nsw i64 %72, 1, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %103, metadata !1189, metadata !DIExpression()), !dbg !1232
  %104 = icmp eq i64 %103, %64, !dbg !1233
  br i1 %104, label %65, label %71, !dbg !1234, !llvm.loop !1257

105:                                              ; preds = %159, %67
  %106 = phi i64 [ %68, %67 ], [ %163, %159 ]
  %107 = phi i8 [ %69, %67 ], [ %162, %159 ]
  %108 = phi i32 [ 0, %67 ], [ %161, %159 ]
  %109 = phi i64 [ 0, %67 ], [ %160, %159 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %107, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %108, metadata !1186, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %109, metadata !1182, metadata !DIExpression()), !dbg !1209
  br i1 %44, label %110, label %151, !dbg !1259

110:                                              ; preds = %105
  %111 = sext i32 %108 to i64, !dbg !1260
  %112 = getelementptr inbounds i8, ptr %60, i64 %111, !dbg !1260
  %113 = load i8, ptr %112, align 1, !dbg !1260, !tbaa !1225, !range !1261, !noundef !936
  %114 = icmp eq i8 %113, 0, !dbg !1260
  br i1 %114, label %151, label %115, !dbg !1262

115:                                              ; preds = %110
  %116 = getelementptr inbounds i32, ptr %54, i64 %111, !dbg !1263
  %117 = load i32, ptr %116, align 4, !dbg !1263, !tbaa !969
  %118 = call i32 @iopoll(i32 noundef 0, i32 noundef %117, i1 noundef zeroext true) #41, !dbg !1264
  call void @llvm.dbg.value(metadata i32 %118, metadata !1198, metadata !DIExpression()), !dbg !1265
  switch i32 %118, label %151 [
    i32 -2, label %119
    i32 -3, label %147
  ], !dbg !1266

119:                                              ; preds = %115
  %120 = tail call ptr @__errno_location() #44, !dbg !1267
  store i32 32, ptr %120, align 4, !dbg !1270, !tbaa !969
  call void @llvm.dbg.value(metadata ptr %54, metadata !1271, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %61, metadata !1276, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %108, metadata !1277, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 32, metadata !1278, metadata !DIExpression()), !dbg !1284
  %121 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1284
  switch i32 %121, label %130 [
    i32 3, label %122
    i32 1, label %122
  ], !dbg !1287

122:                                              ; preds = %119, %119
  %123 = add nsw i32 %121, -3, !dbg !1288
  %124 = icmp ult i32 %123, 2, !dbg !1288
  %125 = zext i1 %124 to i32, !dbg !1288
  %126 = getelementptr inbounds ptr, ptr %61, i64 %111, !dbg !1288
  %127 = load ptr, ptr %126, align 8, !dbg !1288, !tbaa !903
  %128 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %127) #41, !dbg !1288
  call void (i32, i32, ptr, ...) @error(i32 noundef %125, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %128) #41, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %125, metadata !1280, metadata !DIExpression()), !dbg !1289
  %129 = xor i1 %124, true, !dbg !1290
  call void @llvm.assume(i1 %129), !dbg !1288
  br label %130, !dbg !1291

130:                                              ; preds = %122, %119
  %131 = and i32 %121, -3, !dbg !1291
  %132 = icmp eq i32 %131, 1, !dbg !1291
  call void @llvm.dbg.value(metadata i1 %132, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1284
  store i32 -1, ptr %116, align 4, !dbg !1292, !tbaa !969
  %133 = select i1 %132, i8 0, i8 %107, !dbg !1293
  call void @llvm.dbg.value(metadata i8 %133, metadata !1187, metadata !DIExpression()), !dbg !1209
  %134 = add i64 %106, -1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %134, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr %54, metadata !1295, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %46, metadata !1300, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %108, metadata !1301, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1302
  %135 = call i32 @llvm.smax.i32(i32 %108, i32 %46), !dbg !1304
  %136 = sext i32 %135 to i64, !dbg !1306
  br label %137, !dbg !1304

137:                                              ; preds = %140, %130
  %138 = phi i64 [ %141, %140 ], [ %111, %130 ]
  call void @llvm.dbg.value(metadata i64 %138, metadata !1301, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1302
  %139 = icmp eq i64 %138, %136, !dbg !1306
  br i1 %139, label %159, label %140, !dbg !1308, !llvm.loop !1309

140:                                              ; preds = %137
  %141 = add nsw i64 %138, 1, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %141, metadata !1301, metadata !DIExpression()), !dbg !1302
  %142 = getelementptr inbounds i32, ptr %54, i64 %141, !dbg !1312
  %143 = load i32, ptr %142, align 4, !dbg !1312, !tbaa !969
  %144 = icmp sgt i32 %143, -1, !dbg !1314
  br i1 %144, label %145, label %137, !dbg !1315, !llvm.loop !1316

145:                                              ; preds = %140
  %146 = trunc i64 %141 to i32
  br label %159, !dbg !1318, !llvm.loop !1319

147:                                              ; preds = %115
  %148 = tail call ptr @__errno_location() #44, !dbg !1320
  %149 = load i32, ptr %148, align 4, !dbg !1320, !tbaa !969
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #41, !dbg !1320
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %149, ptr noundef %150) #41, !dbg !1320
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1209
  br label %151, !dbg !1323

151:                                              ; preds = %147, %115, %110, %105
  %152 = phi i8 [ %107, %110 ], [ %107, %105 ], [ %107, %115 ], [ 0, %147 ], !dbg !1209
  call void @llvm.dbg.value(metadata i64 %106, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %152, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %108, metadata !1186, metadata !DIExpression()), !dbg !1209
  %153 = call i64 @read(i32 noundef 0, ptr noundef nonnull %3, i64 noundef 8192) #41, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %153, metadata !1182, metadata !DIExpression()), !dbg !1209
  %154 = icmp slt i64 %153, 0, !dbg !1325
  br i1 %154, label %155, label %165, !dbg !1327

155:                                              ; preds = %151
  %156 = tail call ptr @__errno_location() #44, !dbg !1328
  %157 = load i32, ptr %156, align 4, !dbg !1328, !tbaa !969
  %158 = icmp eq i32 %157, 4, !dbg !1329
  br i1 %158, label %159, label %222, !dbg !1330

159:                                              ; preds = %137, %216, %167, %155, %145
  %160 = phi i64 [ %153, %155 ], [ %153, %167 ], [ %109, %145 ], [ %153, %216 ], [ %109, %137 ]
  %161 = phi i32 [ %108, %155 ], [ %108, %167 ], [ %146, %145 ], [ %217, %216 ], [ -1, %137 ]
  %162 = phi i8 [ %152, %155 ], [ %152, %167 ], [ %133, %145 ], [ %218, %216 ], [ %133, %137 ]
  %163 = phi i64 [ %106, %155 ], [ %106, %167 ], [ %134, %145 ], [ %219, %216 ], [ %134, %137 ]
  call void @llvm.dbg.value(metadata i64 %163, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %162, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %161, metadata !1186, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %160, metadata !1182, metadata !DIExpression()), !dbg !1209
  %164 = icmp eq i64 %163, 0, !dbg !1235
  br i1 %164, label %222, label %105, !dbg !1235, !llvm.loop !1331

165:                                              ; preds = %151
  %166 = icmp eq i64 %153, 0, !dbg !1332
  br i1 %166, label %230, label %167, !dbg !1334

167:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i32 0, metadata !1202, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %106, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %152, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %108, metadata !1186, metadata !DIExpression()), !dbg !1209
  br i1 %70, label %159, label %168, !dbg !1336, !llvm.loop !1337

168:                                              ; preds = %167, %216
  %169 = phi i64 [ %220, %216 ], [ 0, %167 ]
  %170 = phi i64 [ %219, %216 ], [ %106, %167 ]
  %171 = phi i8 [ %218, %216 ], [ %152, %167 ]
  %172 = phi i32 [ %217, %216 ], [ %108, %167 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1202, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %170, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %171, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %172, metadata !1186, metadata !DIExpression()), !dbg !1209
  %173 = getelementptr inbounds i32, ptr %54, i64 %169, !dbg !1338
  %174 = load i32, ptr %173, align 4, !dbg !1338, !tbaa !969
  %175 = icmp sgt i32 %174, -1, !dbg !1341
  br i1 %175, label %176, label %216, !dbg !1342

176:                                              ; preds = %168
  %177 = call zeroext i1 @write_wait(i32 noundef %174, ptr noundef nonnull %3, i64 noundef %153) #41, !dbg !1343
  br i1 %177, label %216, label %178, !dbg !1344

178:                                              ; preds = %176
  call void @llvm.dbg.value(metadata ptr %54, metadata !1271, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %61, metadata !1276, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %169, metadata !1277, metadata !DIExpression()), !dbg !1345
  %179 = tail call ptr @__errno_location() #44, !dbg !1349
  %180 = load i32, ptr %179, align 4, !dbg !1349, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %180, metadata !1278, metadata !DIExpression()), !dbg !1345
  %181 = freeze i32 %180, !dbg !1350
  %182 = icmp ne i32 %181, 32, !dbg !1350
  %183 = load i32, ptr @output_error, align 4
  call void @llvm.dbg.value(metadata i1 poison, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1345
  br i1 %182, label %185, label %184, !dbg !1351

184:                                              ; preds = %178
  switch i32 %183, label %193 [
    i32 3, label %185
    i32 1, label %185
  ], !dbg !1351

185:                                              ; preds = %184, %184, %178
  %186 = add i32 %183, -3, !dbg !1352
  %187 = icmp ult i32 %186, 2, !dbg !1352
  %188 = zext i1 %187 to i32, !dbg !1352
  %189 = getelementptr inbounds ptr, ptr %61, i64 %169, !dbg !1352
  %190 = load ptr, ptr %189, align 8, !dbg !1352, !tbaa !903
  %191 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %190) #41, !dbg !1352
  call void (i32, i32, ptr, ...) @error(i32 noundef %188, i32 noundef %181, ptr noundef nonnull @.str.20, ptr noundef %191) #41, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %188, metadata !1280, metadata !DIExpression()), !dbg !1353
  %192 = xor i1 %187, true, !dbg !1354
  call void @llvm.assume(i1 %192), !dbg !1352
  br label %193

193:                                              ; preds = %185, %184
  %194 = icmp eq i32 %183, 3
  %195 = select i1 %182, i1 true, i1 %194, !dbg !1355
  %196 = icmp eq i32 %183, 1
  %197 = select i1 %195, i1 true, i1 %196, !dbg !1355
  call void @llvm.dbg.value(metadata i1 %197, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1345
  store i32 -1, ptr %173, align 4, !dbg !1356, !tbaa !969
  %198 = select i1 %197, i8 0, i8 %171, !dbg !1357
  call void @llvm.dbg.value(metadata i8 %198, metadata !1187, metadata !DIExpression()), !dbg !1209
  %199 = add i64 %170, -1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %199, metadata !1178, metadata !DIExpression()), !dbg !1209
  %200 = zext i32 %172 to i64, !dbg !1359
  %201 = icmp eq i64 %169, %200, !dbg !1359
  br i1 %201, label %202, label %216, !dbg !1361

202:                                              ; preds = %193
  call void @llvm.dbg.value(metadata ptr %54, metadata !1295, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %46, metadata !1300, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %172, metadata !1301, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1362
  %203 = sext i32 %172 to i64, !dbg !1364
  %204 = call i32 @llvm.smax.i32(i32 %172, i32 %46), !dbg !1364
  %205 = zext nneg i32 %204 to i64, !dbg !1365
  br label %206, !dbg !1364

206:                                              ; preds = %209, %202
  %207 = phi i64 [ %210, %209 ], [ %203, %202 ]
  call void @llvm.dbg.value(metadata i64 %207, metadata !1301, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1362
  %208 = icmp eq i64 %207, %205, !dbg !1365
  br i1 %208, label %216, label %209, !dbg !1366

209:                                              ; preds = %206
  %210 = add nsw i64 %207, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %210, metadata !1301, metadata !DIExpression()), !dbg !1362
  %211 = getelementptr inbounds i32, ptr %54, i64 %210, !dbg !1368
  %212 = load i32, ptr %211, align 4, !dbg !1368, !tbaa !969
  %213 = icmp sgt i32 %212, -1, !dbg !1369
  br i1 %213, label %214, label %206, !dbg !1370, !llvm.loop !1371

214:                                              ; preds = %209
  %215 = trunc i64 %210 to i32
  br label %216, !dbg !1373

216:                                              ; preds = %206, %214, %193, %176, %168
  %217 = phi i32 [ %172, %176 ], [ %172, %193 ], [ %172, %168 ], [ %215, %214 ], [ -1, %206 ], !dbg !1374
  %218 = phi i8 [ %171, %176 ], [ %198, %193 ], [ %171, %168 ], [ %198, %214 ], [ %198, %206 ], !dbg !1374
  %219 = phi i64 [ %170, %176 ], [ %199, %193 ], [ %170, %168 ], [ %199, %214 ], [ %199, %206 ], !dbg !1374
  call void @llvm.dbg.value(metadata i64 %219, metadata !1178, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %218, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %217, metadata !1186, metadata !DIExpression()), !dbg !1209
  %220 = add nuw nsw i64 %169, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i64 %220, metadata !1202, metadata !DIExpression()), !dbg !1335
  %221 = icmp eq i64 %220, %64, !dbg !1376
  br i1 %221, label %159, label %168, !dbg !1336, !llvm.loop !1377

222:                                              ; preds = %159, %155
  %223 = phi i64 [ %160, %159 ], [ %153, %155 ]
  %224 = phi i8 [ %162, %159 ], [ %152, %155 ]
  %225 = icmp eq i64 %223, -1, !dbg !1379
  call void @llvm.dbg.value(metadata i8 %224, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 poison, metadata !1182, metadata !DIExpression()), !dbg !1209
  br i1 %225, label %226, label %230, !dbg !1381

226:                                              ; preds = %222
  %227 = tail call ptr @__errno_location() #44, !dbg !1382
  %228 = load i32, ptr %227, align 4, !dbg !1382, !tbaa !969
  %229 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #41, !dbg !1382
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %228, ptr noundef %229) #41, !dbg !1382
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1209
  br label %230, !dbg !1384

230:                                              ; preds = %165, %226, %222, %65
  %231 = phi i8 [ 0, %226 ], [ %224, %222 ], [ %101, %65 ], [ %152, %165 ], !dbg !1209
  call void @llvm.dbg.value(metadata i8 %231, metadata !1187, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()), !dbg !1385
  br i1 %63, label %234, label %232, !dbg !1386

232:                                              ; preds = %230
  %233 = zext i32 %52 to i64, !dbg !1387
  br label %236, !dbg !1386

234:                                              ; preds = %250, %230
  %235 = phi i8 [ %231, %230 ], [ %251, %250 ], !dbg !1389
  call void @free(ptr noundef nonnull %54) #41, !dbg !1390
  br i1 %44, label %254, label %255, !dbg !1391

236:                                              ; preds = %250, %232
  %237 = phi i64 [ 1, %232 ], [ %252, %250 ]
  %238 = phi i8 [ %231, %232 ], [ %251, %250 ]
  call void @llvm.dbg.value(metadata i64 %237, metadata !1204, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8 %238, metadata !1187, metadata !DIExpression()), !dbg !1209
  %239 = getelementptr inbounds i32, ptr %54, i64 %237, !dbg !1392
  %240 = load i32, ptr %239, align 4, !dbg !1392, !tbaa !969
  %241 = icmp sgt i32 %240, -1, !dbg !1394
  br i1 %241, label %242, label %250, !dbg !1395

242:                                              ; preds = %236
  %243 = call zeroext i1 @close_wait(i32 noundef %240) #41, !dbg !1396
  br i1 %243, label %250, label %244, !dbg !1397

244:                                              ; preds = %242
  %245 = tail call ptr @__errno_location() #44, !dbg !1398
  %246 = load i32, ptr %245, align 4, !dbg !1398, !tbaa !969
  %247 = getelementptr inbounds ptr, ptr %61, i64 %237, !dbg !1398
  %248 = load ptr, ptr %247, align 8, !dbg !1398, !tbaa !903
  %249 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %248) #41, !dbg !1398
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %246, ptr noundef nonnull @.str.20, ptr noundef %249) #41, !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1187, metadata !DIExpression()), !dbg !1209
  br label %250, !dbg !1400

250:                                              ; preds = %244, %242, %236
  %251 = phi i8 [ %238, %242 ], [ 0, %244 ], [ %238, %236 ], !dbg !1209
  call void @llvm.dbg.value(metadata i8 %251, metadata !1187, metadata !DIExpression()), !dbg !1209
  %252 = add nuw nsw i64 %237, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %252, metadata !1204, metadata !DIExpression()), !dbg !1385
  %253 = icmp eq i64 %252, %233, !dbg !1387
  br i1 %253, label %234, label %236, !dbg !1386, !llvm.loop !1402

254:                                              ; preds = %234
  call void @free(ptr noundef %60) #41, !dbg !1404
  br label %255, !dbg !1404

255:                                              ; preds = %234, %254
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #41, !dbg !1406
  tail call void @llvm.dbg.value(metadata i8 %235, metadata !1126, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_constu, 0, DW_OP_ne, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1128
  %256 = call i32 @close(i32 noundef 0) #41, !dbg !1407
  %257 = icmp eq i32 %256, 0, !dbg !1409
  br i1 %257, label %262, label %258, !dbg !1410

258:                                              ; preds = %255
  %259 = tail call ptr @__errno_location() #44, !dbg !1411
  %260 = load i32, ptr %259, align 4, !dbg !1411, !tbaa !969
  %261 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #41, !dbg !1411
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %260, ptr noundef nonnull @.str.20, ptr noundef %261) #41, !dbg !1411
  unreachable, !dbg !1411

262:                                              ; preds = %255
  %263 = and i8 %235, 1, !dbg !1412
  tail call void @llvm.dbg.value(metadata i8 %263, metadata !1126, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1128
  %264 = xor i8 %263, 1, !dbg !1413
  %265 = zext nneg i8 %264 to i32, !dbg !1413
  ret i32 %265, !dbg !1414
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
define dso_local noundef i32 @iopoll(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #10 !dbg !1442 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1446, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1447, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i1 %2, metadata !1448, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1449
  %4 = tail call fastcc i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext true), !dbg !1450, !range !1451
  ret i32 %4, !dbg !1452
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @iopoll_internal(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #10 !dbg !1453 {
  %5 = alloca [2 x %struct.pollfd], align 16, !DIAssignID !1472
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
  store i32 %0, ptr %5, align 16, !dbg !1478, !tbaa !1479, !DIAssignID !1481
  call void @llvm.dbg.assign(metadata i32 %0, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1481, metadata ptr %5, metadata !DIExpression()), !dbg !1473
  %10 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 1, !dbg !1478
  store i16 129, ptr %10, align 4, !dbg !1478, !tbaa !1482, !DIAssignID !1483
  call void @llvm.dbg.assign(metadata i16 129, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 16), metadata !1483, metadata ptr %10, metadata !DIExpression()), !dbg !1473
  %11 = getelementptr inbounds %struct.pollfd, ptr %5, i64 0, i32 2, !dbg !1478
  store i16 0, ptr %11, align 2, !dbg !1478, !tbaa !1484, !DIAssignID !1485
  call void @llvm.dbg.assign(metadata i16 0, metadata !1461, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16), metadata !1485, metadata ptr %11, metadata !DIExpression()), !dbg !1473
  %12 = getelementptr inbounds %struct.pollfd, ptr %5, i64 1, !dbg !1486
  store i32 %1, ptr %12, align 8, !dbg !1487, !tbaa !1479, !DIAssignID !1488
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
  %24 = load i32, ptr %23, align 4, !dbg !1502, !tbaa !969
  %25 = icmp eq i32 %24, 4, !dbg !1503
  br i1 %25, label %26, label %45, !dbg !1499

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
  br i1 %32, label %33, label %45, !dbg !1513

33:                                               ; preds = %30
  br i1 %31, label %35, label %34, !dbg !1514

34:                                               ; preds = %33
  call void @__assert_fail(ptr noundef nonnull @.str.2.28, ptr noundef nonnull @.str.1.27, i32 noundef 88, ptr noundef nonnull @__PRETTY_FUNCTION__.iopoll_internal) #43, !dbg !1516
  unreachable, !dbg !1516

35:                                               ; preds = %33
  %36 = load i16, ptr %11, align 2, !dbg !1518, !tbaa !1484
  %37 = icmp eq i16 %36, 0, !dbg !1520
  br i1 %37, label %38, label %45, !dbg !1521

38:                                               ; preds = %35
  %39 = load i16, ptr %14, align 2, !dbg !1522, !tbaa !1484
  %40 = zext i16 %39 to i32, !dbg !1524
  %41 = and i32 %17, %40, !dbg !1525
  %42 = icmp eq i32 %41, 0, !dbg !1525
  br i1 %42, label %29, label %43, !dbg !1526

43:                                               ; preds = %38
  %44 = select i1 %3, i32 -2, i32 0, !dbg !1527
  br label %45, !dbg !1528

45:                                               ; preds = %22, %35, %30, %43
  %46 = phi i32 [ %44, %43 ], [ -3, %22 ], [ 0, %35 ], [ 0, %30 ], !dbg !1473
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #41, !dbg !1529
  ret i32 %46, !dbg !1529
}

; Function Attrs: noreturn nounwind
declare !dbg !1530 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local zeroext i1 @iopoll_input_ok(i32 noundef %0) local_unnamed_addr #15 !dbg !1534 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1539, metadata !DIExpression(), metadata !1575, metadata ptr %2, metadata !DIExpression()), !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1538, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #41, !dbg !1577
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #41, !dbg !1578
  %4 = icmp eq i32 %3, 0, !dbg !1579
  br i1 %4, label %5, label %12, !dbg !1580

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1581
  %7 = load i32, ptr %6, align 8, !dbg !1581
  %8 = and i32 %7, 61440, !dbg !1581
  %9 = icmp ne i32 %8, 32768, !dbg !1581
  %10 = icmp ne i32 %8, 24576, !dbg !1582
  %11 = and i1 %9, %10, !dbg !1583
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ], !dbg !1576
  tail call void @llvm.dbg.value(metadata i1 %13, metadata !1574, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1576
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #41, !dbg !1584
  ret i1 %13, !dbg !1585
}

; Function Attrs: nofree nounwind
declare !dbg !1586 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @iopoll_output_ok(i32 noundef %0) local_unnamed_addr #10 !dbg !1591 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1593, metadata !DIExpression()), !dbg !1594
  %2 = tail call i32 @isapipe(i32 noundef %0) #41, !dbg !1595
  %3 = icmp sgt i32 %2, 0, !dbg !1596
  ret i1 %3, !dbg !1597
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @close_wait(i32 noundef %0) local_unnamed_addr #10 !dbg !1598 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1600, metadata !DIExpression()), !dbg !1601
  %2 = tail call ptr @__errno_location() #44, !dbg !1601
  br label %3, !dbg !1602

3:                                                ; preds = %6, %1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1603, metadata !DIExpression()), !dbg !1606
  %4 = load i32, ptr %2, align 4, !dbg !1608, !tbaa !969
  %5 = icmp eq i32 %4, 11, !dbg !1608
  br i1 %5, label %6, label %10, !dbg !1608

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext false), !dbg !1610, !range !1451
  %8 = icmp eq i32 %7, 0, !dbg !1612
  br i1 %8, label %3, label %9, !dbg !1613, !llvm.loop !1614

9:                                                ; preds = %6
  store i32 11, ptr %2, align 4, !dbg !1616, !tbaa !969
  br label %10, !dbg !1618

10:                                               ; preds = %3, %9
  %11 = tail call i32 @close(i32 noundef %0) #41, !dbg !1619
  %12 = icmp eq i32 %11, 0, !dbg !1620
  ret i1 %12, !dbg !1621
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @write_wait(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1622 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1626, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1627, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1628, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1629, metadata !DIExpression()), !dbg !1634
  %4 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %2) #41, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1632, metadata !DIExpression()), !dbg !1636
  %5 = tail call i64 @llvm.smax.i64(i64 %4, i64 0), !dbg !1637
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1632, metadata !DIExpression()), !dbg !1636
  %6 = sub i64 %2, %5, !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1628, metadata !DIExpression()), !dbg !1634
  %7 = icmp eq i64 %6, 0, !dbg !1639
  br i1 %7, label %26, label %8, !dbg !1641

8:                                                ; preds = %3
  %9 = tail call ptr @__errno_location() #44, !dbg !1634
  br label %10, !dbg !1641

10:                                               ; preds = %8, %20
  %11 = phi i64 [ %6, %8 ], [ %24, %20 ]
  %12 = phi i64 [ %5, %8 ], [ %23, %20 ]
  %13 = phi ptr [ %1, %8 ], [ %21, %20 ]
  tail call void @llvm.dbg.value(metadata ptr %13, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %0, metadata !1603, metadata !DIExpression()), !dbg !1642
  %14 = load i32, ptr %9, align 4, !dbg !1645, !tbaa !969
  %15 = icmp eq i32 %14, 11, !dbg !1645
  br i1 %15, label %16, label %26, !dbg !1645

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @iopoll_internal(i32 noundef -1, i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext false), !dbg !1646, !range !1451
  %18 = icmp eq i32 %17, 0, !dbg !1647
  br i1 %18, label %20, label %19, !dbg !1648

19:                                               ; preds = %16
  store i32 11, ptr %9, align 4, !dbg !1649, !tbaa !969
  br label %26, !dbg !1650

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %13, i64 %12, !dbg !1651
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1629, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1628, metadata !DIExpression()), !dbg !1634
  %22 = tail call i64 @write(i32 noundef %0, ptr noundef %21, i64 noundef %11) #41, !dbg !1635
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1632, metadata !DIExpression()), !dbg !1636
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 0), !dbg !1637
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1632, metadata !DIExpression()), !dbg !1636
  %24 = sub i64 %11, %23, !dbg !1638
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1628, metadata !DIExpression()), !dbg !1634
  %25 = icmp eq i64 %24, 0, !dbg !1639
  br i1 %25, label %26, label %10, !dbg !1641, !llvm.loop !1652

26:                                               ; preds = %20, %10, %3, %19
  %27 = phi i1 [ false, %19 ], [ true, %3 ], [ %15, %10 ], [ %15, %20 ]
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1629, metadata !DIExpression()), !dbg !1634
  ret i1 %27, !dbg !1655
}

; Function Attrs: nofree
declare !dbg !1656 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #10 !dbg !1659 {
  tail call void @usage(i32 noundef 1) #41, !dbg !1660
  ret void, !dbg !1661
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @argmatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #16 !dbg !1662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1667, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1668, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1669, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1670, metadata !DIExpression()), !dbg !1676
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !1677
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1671, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1672, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1673, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1674, metadata !DIExpression()), !dbg !1678
  %6 = load ptr, ptr %1, align 8, !dbg !1679, !tbaa !903
  %7 = icmp eq ptr %6, null, !dbg !1681
  br i1 %7, label %42, label %8, !dbg !1681

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  br label %10, !dbg !1681

10:                                               ; preds = %8, %31
  %11 = phi ptr [ %6, %8 ], [ %36, %31 ]
  %12 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %13 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %14 = phi i64 [ -1, %8 ], [ %32, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1674, metadata !DIExpression()), !dbg !1678
  tail call void @llvm.dbg.value(metadata i8 %13, metadata !1673, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1672, metadata !DIExpression()), !dbg !1676
  %15 = tail call i32 @strncmp(ptr noundef nonnull %11, ptr noundef %0, i64 noundef %5) #42, !dbg !1682
  %16 = icmp eq i32 %15, 0, !dbg !1682
  br i1 %16, label %17, label %31, !dbg !1685

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #42, !dbg !1686
  %19 = icmp eq i64 %18, %5, !dbg !1689
  br i1 %19, label %42, label %20, !dbg !1690

20:                                               ; preds = %17
  %21 = icmp eq i64 %14, -1, !dbg !1691
  br i1 %21, label %31, label %22, !dbg !1693

22:                                               ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1694

23:                                               ; preds = %22
  %24 = mul i64 %14, %3, !dbg !1697
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !1698
  %26 = mul i64 %12, %3, !dbg !1699
  %27 = getelementptr inbounds i8, ptr %2, i64 %26, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %25, metadata !1701, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %27, metadata !1706, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %3, metadata !1707, metadata !DIExpression()), !dbg !1708
  %28 = tail call i32 @bcmp(ptr nonnull %25, ptr nonnull %27, i64 %3), !dbg !1710
  %29 = icmp eq i32 %28, 0, !dbg !1711
  br i1 %29, label %31, label %30, !dbg !1712

30:                                               ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1673, metadata !DIExpression()), !dbg !1676
  br label %31, !dbg !1713

31:                                               ; preds = %20, %10, %30, %23
  %32 = phi i64 [ %14, %10 ], [ %14, %30 ], [ %14, %23 ], [ %12, %20 ], !dbg !1676
  %33 = phi i8 [ %13, %10 ], [ 1, %30 ], [ %13, %23 ], [ %13, %20 ], !dbg !1676
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !1673, metadata !DIExpression()), !dbg !1676
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1672, metadata !DIExpression()), !dbg !1676
  %34 = add i64 %12, 1, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1674, metadata !DIExpression()), !dbg !1678
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1679
  %36 = load ptr, ptr %35, align 8, !dbg !1679, !tbaa !903
  %37 = icmp eq ptr %36, null, !dbg !1681
  br i1 %37, label %38, label %10, !dbg !1681, !llvm.loop !1716

38:                                               ; preds = %31
  %39 = and i8 %33, 1, !dbg !1718
  %40 = icmp eq i8 %39, 0, !dbg !1718
  %41 = select i1 %40, i64 %32, i64 -2, !dbg !1720
  br label %42, !dbg !1718

42:                                               ; preds = %17, %4, %38
  %43 = phi i64 [ -1, %4 ], [ %41, %38 ], [ %12, %17 ], !dbg !1676
  ret i64 %43, !dbg !1721
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
  %3 = load ptr, ptr %1, align 8, !dbg !1735, !tbaa !903
  %4 = icmp eq ptr %3, null, !dbg !1737
  br i1 %4, label %15, label %5, !dbg !1737

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %7 = phi i64 [ %11, %10 ], [ 0, %2 ]
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1731, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %6, metadata !1738, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata ptr %0, metadata !1741, metadata !DIExpression()), !dbg !1742
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !1746
  %9 = icmp eq i32 %8, 0, !dbg !1747
  br i1 %9, label %15, label %10, !dbg !1748

10:                                               ; preds = %5
  %11 = add i64 %7, 1, !dbg !1749
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1731, metadata !DIExpression()), !dbg !1734
  %12 = getelementptr inbounds ptr, ptr %1, i64 %11, !dbg !1735
  %13 = load ptr, ptr %12, align 8, !dbg !1735, !tbaa !903
  %14 = icmp eq ptr %13, null, !dbg !1737
  br i1 %14, label %15, label %5, !dbg !1737, !llvm.loop !1750

15:                                               ; preds = %10, %5, %2
  %16 = phi i64 [ -1, %2 ], [ %7, %5 ], [ -1, %10 ]
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
  %5 = load ptr, ptr @stderr, align 8, !dbg !1777, !tbaa !903
  %6 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef %5), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1774, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1773, metadata !DIExpression()), !dbg !1776
  %7 = load ptr, ptr %0, align 8, !dbg !1779, !tbaa !903
  %8 = icmp eq ptr %7, null, !dbg !1781
  br i1 %8, label %9, label %21, !dbg !1781

9:                                                ; preds = %41, %3
  %10 = load ptr, ptr @stderr, align 8, !dbg !1782, !tbaa !903
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
  store i8 10, ptr %12, align 1, !dbg !1826, !tbaa !978
  br label %20, !dbg !1826

20:                                               ; preds = %16, %18
  ret void, !dbg !1832

21:                                               ; preds = %3, %41
  %22 = phi ptr [ %45, %41 ], [ %7, %3 ]
  %23 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %24 = phi ptr [ %42, %41 ], [ null, %3 ]
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1774, metadata !DIExpression()), !dbg !1778
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !1773, metadata !DIExpression()), !dbg !1776
  %25 = icmp eq i64 %23, 0, !dbg !1833
  br i1 %25, label %31, label %26, !dbg !1835

26:                                               ; preds = %21
  %27 = mul i64 %23, %2, !dbg !1836
  %28 = getelementptr inbounds i8, ptr %1, i64 %27, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %24, metadata !1701, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr %28, metadata !1706, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %2, metadata !1707, metadata !DIExpression()), !dbg !1838
  %29 = tail call i32 @bcmp(ptr %24, ptr %28, i64 %2), !dbg !1840
  %30 = icmp eq i32 %29, 0, !dbg !1841
  br i1 %30, label %37, label %31, !dbg !1842

31:                                               ; preds = %21, %26
  %32 = phi i64 [ %27, %26 ], [ 0, %21 ], !dbg !1843
  %33 = load ptr, ptr @stderr, align 8, !dbg !1845, !tbaa !903
  %34 = tail call ptr @quote(ptr noundef nonnull %22) #41, !dbg !1845
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull @.str.4.71, ptr noundef %34) #41, !dbg !1845
  %36 = getelementptr inbounds i8, ptr %1, i64 %32, !dbg !1846
  tail call void @llvm.dbg.value(metadata ptr %36, metadata !1773, metadata !DIExpression()), !dbg !1776
  br label %41, !dbg !1847

37:                                               ; preds = %26
  %38 = load ptr, ptr @stderr, align 8, !dbg !1848, !tbaa !903
  %39 = tail call ptr @quote(ptr noundef nonnull %22) #41, !dbg !1848
  %40 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @.str.5.72, ptr noundef %39) #41, !dbg !1848
  br label %41

41:                                               ; preds = %31, %37
  %42 = phi ptr [ %36, %31 ], [ %24, %37 ], !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !1773, metadata !DIExpression()), !dbg !1776
  %43 = add i64 %23, 1, !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !1774, metadata !DIExpression()), !dbg !1778
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43, !dbg !1779
  %45 = load ptr, ptr %44, align 8, !dbg !1779, !tbaa !903
  %46 = icmp eq ptr %45, null, !dbg !1781
  br i1 %46, label %9, label %21, !dbg !1781, !llvm.loop !1851
}

declare !dbg !1853 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @__xargmatch_internal(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef readonly %5, i1 noundef zeroext %6) local_unnamed_addr #10 !dbg !1856 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1860, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1861, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1862, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1863, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1864, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1865, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata i1 %6, metadata !1866, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1868
  br i1 %6, label %8, label %45, !dbg !1869

8:                                                ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1667, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %2, metadata !1668, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata ptr %3, metadata !1669, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %4, metadata !1670, metadata !DIExpression()), !dbg !1870
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #42, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %9, metadata !1671, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 -1, metadata !1672, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 0, metadata !1673, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, metadata !1674, metadata !DIExpression()), !dbg !1874
  %10 = load ptr, ptr %2, align 8, !dbg !1875, !tbaa !903
  %11 = icmp eq ptr %10, null, !dbg !1876
  br i1 %11, label %64, label %12, !dbg !1876

12:                                               ; preds = %8
  %13 = icmp eq ptr %3, null
  br label %14, !dbg !1876

14:                                               ; preds = %35, %12
  %15 = phi ptr [ %10, %12 ], [ %40, %35 ]
  %16 = phi i64 [ 0, %12 ], [ %38, %35 ]
  %17 = phi i8 [ 0, %12 ], [ %37, %35 ]
  %18 = phi i64 [ -1, %12 ], [ %36, %35 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !1674, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 %17, metadata !1673, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %18, metadata !1672, metadata !DIExpression()), !dbg !1870
  %19 = tail call i32 @strncmp(ptr noundef nonnull %15, ptr noundef %1, i64 noundef %9) #42, !dbg !1877
  %20 = icmp eq i32 %19, 0, !dbg !1877
  br i1 %20, label %21, label %35, !dbg !1878

21:                                               ; preds = %14
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #42, !dbg !1879
  %23 = icmp eq i64 %22, %9, !dbg !1880
  br i1 %23, label %58, label %24, !dbg !1881

24:                                               ; preds = %21
  %25 = icmp eq i64 %18, -1, !dbg !1882
  br i1 %25, label %35, label %26, !dbg !1883

26:                                               ; preds = %24
  br i1 %13, label %34, label %27, !dbg !1884

27:                                               ; preds = %26
  %28 = mul i64 %18, %4, !dbg !1885
  %29 = getelementptr inbounds i8, ptr %3, i64 %28, !dbg !1886
  %30 = mul i64 %16, %4, !dbg !1887
  %31 = getelementptr inbounds i8, ptr %3, i64 %30, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %29, metadata !1701, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %31, metadata !1706, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i64 %4, metadata !1707, metadata !DIExpression()), !dbg !1889
  %32 = tail call i32 @bcmp(ptr nonnull %29, ptr nonnull %31, i64 %4), !dbg !1891
  %33 = icmp eq i32 %32, 0, !dbg !1892
  br i1 %33, label %35, label %34, !dbg !1893

34:                                               ; preds = %27, %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1673, metadata !DIExpression()), !dbg !1870
  br label %35, !dbg !1894

35:                                               ; preds = %34, %27, %24, %14
  %36 = phi i64 [ %18, %14 ], [ %18, %34 ], [ %18, %27 ], [ %16, %24 ], !dbg !1870
  %37 = phi i8 [ %17, %14 ], [ 1, %34 ], [ %17, %27 ], [ %17, %24 ], !dbg !1870
  call void @llvm.dbg.value(metadata i8 %37, metadata !1673, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %36, metadata !1672, metadata !DIExpression()), !dbg !1870
  %38 = add i64 %16, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %38, metadata !1674, metadata !DIExpression()), !dbg !1874
  %39 = getelementptr inbounds ptr, ptr %2, i64 %38, !dbg !1875
  %40 = load ptr, ptr %39, align 8, !dbg !1875, !tbaa !903
  %41 = icmp eq ptr %40, null, !dbg !1876
  br i1 %41, label %42, label %14, !dbg !1876, !llvm.loop !1896

42:                                               ; preds = %35
  %43 = and i8 %37, 1, !dbg !1898
  %44 = icmp eq i8 %43, 0, !dbg !1898
  br i1 %44, label %58, label %65, !dbg !1899

45:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %1, metadata !1729, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 0, metadata !1731, metadata !DIExpression()), !dbg !1902
  %46 = load ptr, ptr %2, align 8, !dbg !1903, !tbaa !903
  %47 = icmp eq ptr %46, null, !dbg !1904
  br i1 %47, label %64, label %48, !dbg !1904

48:                                               ; preds = %45, %53
  %49 = phi ptr [ %56, %53 ], [ %46, %45 ]
  %50 = phi i64 [ %54, %53 ], [ 0, %45 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !1731, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata ptr %49, metadata !1738, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata ptr %1, metadata !1741, metadata !DIExpression()), !dbg !1905
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %1) #42, !dbg !1907
  %52 = icmp eq i32 %51, 0, !dbg !1908
  br i1 %52, label %58, label %53, !dbg !1909

53:                                               ; preds = %48
  %54 = add i64 %50, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %54, metadata !1731, metadata !DIExpression()), !dbg !1902
  %55 = getelementptr inbounds ptr, ptr %2, i64 %54, !dbg !1903
  %56 = load ptr, ptr %55, align 8, !dbg !1903, !tbaa !903
  %57 = icmp eq ptr %56, null, !dbg !1904
  br i1 %57, label %64, label %48, !dbg !1904, !llvm.loop !1911

58:                                               ; preds = %48, %21, %42
  %59 = phi i64 [ %36, %42 ], [ %16, %21 ], [ %50, %48 ], !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1867, metadata !DIExpression()), !dbg !1868
  %60 = freeze i64 %59, !dbg !1914
  %61 = icmp sgt i64 %60, -1, !dbg !1916
  br i1 %61, label %70, label %62, !dbg !1918

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata ptr %0, metadata !1757, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata ptr %1, metadata !1758, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i64 %59, metadata !1759, metadata !DIExpression()), !dbg !1919
  %63 = icmp eq i64 %60, -1, !dbg !1914
  br i1 %63, label %64, label %65, !dbg !1920

64:                                               ; preds = %53, %8, %45, %62
  br label %65, !dbg !1920

65:                                               ; preds = %42, %62, %64
  %66 = phi ptr [ @.str.1.52, %64 ], [ @.str.2.53, %62 ], [ @.str.2.53, %42 ]
  %67 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull %66, i32 noundef 5) #41, !dbg !1919
  call void @llvm.dbg.value(metadata ptr %67, metadata !1760, metadata !DIExpression()), !dbg !1919
  %68 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 8, ptr noundef %1) #41, !dbg !1921
  %69 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %0) #41, !dbg !1921
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %67, ptr noundef %68, ptr noundef %69) #41, !dbg !1921
  tail call void @argmatch_valid(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !1922
  tail call void %5() #41, !dbg !1923
  br label %70, !dbg !1924

70:                                               ; preds = %58, %65
  %71 = phi i64 [ -1, %65 ], [ %60, %58 ], !dbg !1868
  ret i64 %71, !dbg !1925
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @argmatch_to_argument(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #18 !dbg !1926 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1930, metadata !DIExpression()), !dbg !1936
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1931, metadata !DIExpression()), !dbg !1936
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1932, metadata !DIExpression()), !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1933, metadata !DIExpression()), !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1934, metadata !DIExpression()), !dbg !1937
  %5 = load ptr, ptr %1, align 8, !dbg !1938, !tbaa !903
  %6 = icmp eq ptr %5, null, !dbg !1940
  br i1 %6, label %21, label %7, !dbg !1940

7:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata ptr %0, metadata !1701, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %2, metadata !1706, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %3, metadata !1707, metadata !DIExpression()), !dbg !1941
  %8 = tail call i32 @bcmp(ptr %0, ptr %2, i64 %3), !dbg !1944
  %9 = icmp eq i32 %8, 0, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1934, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1937
  br i1 %9, label %21, label %10, !dbg !1946

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %12, %16 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1934, metadata !DIExpression()), !dbg !1937
  %12 = add i64 %11, 1, !dbg !1947
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1934, metadata !DIExpression()), !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1934, metadata !DIExpression()), !dbg !1937
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1938
  %14 = load ptr, ptr %13, align 8, !dbg !1938, !tbaa !903
  %15 = icmp eq ptr %14, null, !dbg !1940
  br i1 %15, label %21, label %16, !dbg !1940, !llvm.loop !1948

16:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1934, metadata !DIExpression()), !dbg !1937
  %17 = mul i64 %12, %3, !dbg !1950
  %18 = getelementptr inbounds i8, ptr %2, i64 %17, !dbg !1951
  call void @llvm.dbg.value(metadata ptr %0, metadata !1701, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %18, metadata !1706, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %3, metadata !1707, metadata !DIExpression()), !dbg !1941
  %19 = tail call i32 @bcmp(ptr %0, ptr %18, i64 %3), !dbg !1944
  %20 = icmp eq i32 %19, 0, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1934, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1937
  br i1 %20, label %21, label %10, !dbg !1946, !llvm.loop !1948

21:                                               ; preds = %16, %10, %7, %4
  %22 = phi ptr [ null, %4 ], [ %5, %7 ], [ null, %10 ], [ %14, %16 ], !dbg !1938
  ret ptr %22, !dbg !1952
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #19 !dbg !1953 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1955, metadata !DIExpression()), !dbg !1956
  store ptr %0, ptr @file_name, align 8, !dbg !1957, !tbaa !903
  ret void, !dbg !1958
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #19 !dbg !1959 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1963, metadata !DIExpression()), !dbg !1964
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1965, !tbaa !1225
  ret void, !dbg !1966
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1967 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1972, !tbaa !903
  %2 = tail call i32 @close_stream(ptr noundef %1) #41, !dbg !1973
  %3 = icmp eq i32 %2, 0, !dbg !1974
  br i1 %3, label %22, label %4, !dbg !1975

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1976, !tbaa !1225, !range !1261, !noundef !936
  %6 = icmp eq i8 %5, 0, !dbg !1976
  br i1 %6, label %11, label %7, !dbg !1977

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #44, !dbg !1978
  %9 = load i32, ptr %8, align 4, !dbg !1978, !tbaa !969
  %10 = icmp eq i32 %9, 32, !dbg !1979
  br i1 %10, label %22, label %11, !dbg !1980

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1.78, i32 noundef 5) #41, !dbg !1981
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1969, metadata !DIExpression()), !dbg !1982
  %13 = load ptr, ptr @file_name, align 8, !dbg !1983, !tbaa !903
  %14 = icmp eq ptr %13, null, !dbg !1983
  %15 = tail call ptr @__errno_location() #44, !dbg !1985
  %16 = load i32, ptr %15, align 4, !dbg !1985, !tbaa !969
  br i1 %14, label %19, label %17, !dbg !1986

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #41, !dbg !1987
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.79, ptr noundef %18, ptr noundef %12) #41, !dbg !1987
  br label %20, !dbg !1987

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.80, ptr noundef %12) #41, !dbg !1988
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1989, !tbaa !969
  tail call void @_exit(i32 noundef %21) #43, !dbg !1990
  unreachable, !dbg !1990

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1991, !tbaa !903
  %24 = tail call i32 @close_stream(ptr noundef %23) #41, !dbg !1993
  %25 = icmp eq i32 %24, 0, !dbg !1994
  br i1 %25, label %28, label %26, !dbg !1995

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1996, !tbaa !969
  tail call void @_exit(i32 noundef %27) #43, !dbg !1997
  unreachable, !dbg !1997

28:                                               ; preds = %22
  ret void, !dbg !1998
}

; Function Attrs: noreturn
declare !dbg !1999 void @_exit(i32 noundef) local_unnamed_addr #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #21 !dbg !2000 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2005, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2006, metadata !DIExpression()), !dbg !2008
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2007, metadata !DIExpression()), !dbg !2008
  tail call fastcc void @flush_stdout(), !dbg !2009
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2010, !tbaa !903
  %6 = icmp eq ptr %5, null, !dbg !2010
  br i1 %6, label %8, label %7, !dbg !2012

7:                                                ; preds = %4
  tail call void %5() #41, !dbg !2013
  br label %12, !dbg !2013

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2014, !tbaa !903
  %10 = tail call ptr @getprogname() #42, !dbg !2014
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef %10) #41, !dbg !2014
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2016
  ret void, !dbg !2017
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2018 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2020, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i32 1, metadata !2022, metadata !DIExpression()), !dbg !2025
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41, !dbg !2028
  %2 = icmp slt i32 %1, 0, !dbg !2029
  br i1 %2, label %6, label %3, !dbg !2030

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2031, !tbaa !903
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #41, !dbg !2031
  br label %6, !dbg !2031

6:                                                ; preds = %3, %0
  ret void, !dbg !2032
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2033 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2039
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2035, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2036, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2037, metadata !DIExpression()), !dbg !2040
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2038, metadata !DIExpression()), !dbg !2040
  %6 = load ptr, ptr @stderr, align 8, !dbg !2041, !tbaa !903
  call void @llvm.dbg.value(metadata ptr %6, metadata !2042, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %2, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata ptr %3, metadata !2083, metadata !DIExpression()), !dbg !2084
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #41, !dbg !2086
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2087, !tbaa !969
  %9 = add i32 %8, 1, !dbg !2087
  store i32 %9, ptr @error_message_count, align 4, !dbg !2087, !tbaa !969
  %10 = icmp eq i32 %1, 0, !dbg !2088
  br i1 %10, label %20, label %11, !dbg !2090

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2091, metadata !DIExpression(), metadata !2039, metadata ptr %5, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1, metadata !2094, metadata !DIExpression()), !dbg !2099
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #41, !dbg !2101
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #41, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %12, metadata !2095, metadata !DIExpression()), !dbg !2099
  %13 = icmp eq ptr %12, null, !dbg !2103
  br i1 %13, label %14, label %16, !dbg !2105

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.82, ptr noundef nonnull @.str.5.83, i32 noundef 5) #41, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %15, metadata !2095, metadata !DIExpression()), !dbg !2099
  br label %16, !dbg !2107

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2099
  call void @llvm.dbg.value(metadata ptr %17, metadata !2095, metadata !DIExpression()), !dbg !2099
  %18 = load ptr, ptr @stderr, align 8, !dbg !2108, !tbaa !903
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.84, ptr noundef %17) #41, !dbg !2108
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #41, !dbg !2109
  br label %20, !dbg !2110

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2111, !tbaa !903
  call void @llvm.dbg.value(metadata i32 10, metadata !2112, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata ptr %21, metadata !2117, metadata !DIExpression()), !dbg !2118
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2120
  %23 = load ptr, ptr %22, align 8, !dbg !2120, !tbaa !1827
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2120
  %25 = load ptr, ptr %24, align 8, !dbg !2120, !tbaa !1830
  %26 = icmp ult ptr %23, %25, !dbg !2120
  br i1 %26, label %29, label %27, !dbg !2120, !prof !1831

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #41, !dbg !2120
  br label %31, !dbg !2120

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2120
  store ptr %30, ptr %22, align 8, !dbg !2120, !tbaa !1827
  store i8 10, ptr %23, align 1, !dbg !2120, !tbaa !978
  br label %31, !dbg !2120

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2121, !tbaa !903
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #41, !dbg !2121
  %34 = icmp eq i32 %0, 0, !dbg !2122
  br i1 %34, label %36, label %35, !dbg !2124

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #43, !dbg !2125
  unreachable, !dbg !2125

36:                                               ; preds = %31
  ret void, !dbg !2126
}

declare !dbg !2127 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2130 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2133 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2136 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2140 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2147, metadata !DIExpression(), metadata !2153, metadata ptr %4, metadata !DIExpression()), !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2144, metadata !DIExpression()), !dbg !2154
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2145, metadata !DIExpression()), !dbg !2154
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2146, metadata !DIExpression()), !dbg !2154
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41, !dbg !2155
  call void @llvm.va_start(ptr nonnull %4), !dbg !2156
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #47, !dbg !2157
  call void @llvm.va_end(ptr nonnull %4), !dbg !2158
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41, !dbg !2159
  ret void, !dbg !2159
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #21 !dbg !498 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !509, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !510, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !511, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !512, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !513, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !514, metadata !DIExpression()), !dbg !2160
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2161, !tbaa !969
  %8 = icmp eq i32 %7, 0, !dbg !2161
  br i1 %8, label %23, label %9, !dbg !2163

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2164, !tbaa !969
  %11 = icmp eq i32 %10, %3, !dbg !2167
  br i1 %11, label %12, label %22, !dbg !2168

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2169, !tbaa !903
  %14 = icmp eq ptr %13, %2, !dbg !2170
  br i1 %14, label %36, label %15, !dbg !2171

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2172
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2173
  br i1 %18, label %19, label %22, !dbg !2173

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2174
  %21 = icmp eq i32 %20, 0, !dbg !2175
  br i1 %21, label %36, label %22, !dbg !2176

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2177, !tbaa !903
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2178, !tbaa !969
  br label %23, !dbg !2179

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2180
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2181, !tbaa !903
  %25 = icmp eq ptr %24, null, !dbg !2181
  br i1 %25, label %27, label %26, !dbg !2183

26:                                               ; preds = %23
  tail call void %24() #41, !dbg !2184
  br label %31, !dbg !2184

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2185, !tbaa !903
  %29 = tail call ptr @getprogname() #42, !dbg !2185
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.87, ptr noundef %29) #41, !dbg !2185
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2187, !tbaa !903
  %33 = icmp eq ptr %2, null, !dbg !2187
  %34 = select i1 %33, ptr @.str.3.88, ptr @.str.2.89, !dbg !2187
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #41, !dbg !2187
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2188
  br label %36, !dbg !2189

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2189
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2190 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2200
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2199, metadata !DIExpression(), metadata !2200, metadata ptr %6, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2195, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2196, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2197, metadata !DIExpression()), !dbg !2201
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2198, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #41, !dbg !2202
  call void @llvm.va_start(ptr nonnull %6), !dbg !2203
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #47, !dbg !2204
  call void @llvm.va_end(ptr nonnull %6), !dbg !2205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #41, !dbg !2206
  ret void, !dbg !2206
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2207 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2213, metadata !DIExpression()), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2214, metadata !DIExpression()), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2215, metadata !DIExpression()), !dbg !2217
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2216, metadata !DIExpression()), !dbg !2217
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #41, !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: nounwind
declare !dbg !2220 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2223 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2261, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2262, metadata !DIExpression()), !dbg !2263
  %3 = icmp eq ptr %0, null, !dbg !2264
  br i1 %3, label %7, label %4, !dbg !2266

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %5, metadata !2213, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 0, metadata !2214, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 0, metadata !2215, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i32 %1, metadata !2216, metadata !DIExpression()), !dbg !2268
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #41, !dbg !2270
  br label %7, !dbg !2271

7:                                                ; preds = %4, %2
  ret void, !dbg !2272
}

; Function Attrs: nofree nounwind
declare !dbg !2273 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(ptr nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !2276 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2297
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2284, metadata !DIExpression(), metadata !2297, metadata ptr %3, metadata !DIExpression()), !dbg !2298
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2280, metadata !DIExpression()), !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression()), !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()), !dbg !2299
  %4 = and i32 %1, 64, !dbg !2300
  %5 = icmp eq i32 %4, 0, !dbg !2300
  br i1 %5, label %22, label %6, !dbg !2301

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41, !dbg !2302
  call void @llvm.va_start(ptr nonnull %3), !dbg !2303
  %7 = load i32, ptr %3, align 16, !dbg !2304
  %8 = icmp ult i32 %7, 41, !dbg !2304
  br i1 %8, label %9, label %15, !dbg !2304

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !2304
  %11 = load ptr, ptr %10, align 16, !dbg !2304
  %12 = zext nneg i32 %7 to i64, !dbg !2304
  %13 = getelementptr i8, ptr %11, i64 %12, !dbg !2304
  %14 = add nuw nsw i32 %7, 8, !dbg !2304
  store i32 %14, ptr %3, align 16, !dbg !2304, !DIAssignID !2305
  call void @llvm.dbg.assign(metadata i32 %14, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2305, metadata ptr %3, metadata !DIExpression()), !dbg !2298
  br label %19, !dbg !2304

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !2304
  %17 = load ptr, ptr %16, align 8, !dbg !2304
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2304
  store ptr %18, ptr %16, align 8, !dbg !2304, !DIAssignID !2306
  call void @llvm.dbg.assign(metadata ptr %18, metadata !2284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !2306, metadata ptr %16, metadata !DIExpression()), !dbg !2298
  br label %19, !dbg !2304

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %13, %9 ], [ %17, %15 ], !dbg !2304
  %21 = load i32, ptr %20, align 4, !dbg !2304
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2282, metadata !DIExpression()), !dbg !2299
  call void @llvm.va_end(ptr nonnull %3), !dbg !2307
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41, !dbg !2308
  br label %22, !dbg !2309

22:                                               ; preds = %19, %2
  %23 = phi i32 [ %21, %19 ], [ 0, %2 ], !dbg !2299
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !2282, metadata !DIExpression()), !dbg !2299
  %24 = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %23) #41, !dbg !2310
  %25 = call i32 @fd_safer(i32 noundef %24) #41, !dbg !2311
  ret i32 %25, !dbg !2312
}

; Function Attrs: nofree
declare !dbg !2313 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #23 !dbg !2314 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2317, !tbaa !903
  ret ptr %1, !dbg !2318
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #15 !dbg !2319 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !2348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2325, metadata !DIExpression(), metadata !2348, metadata ptr %2, metadata !DIExpression()), !dbg !2349
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2322, metadata !DIExpression()), !dbg !2349
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2324, metadata !DIExpression()), !dbg !2349
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #41, !dbg !2350
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #41, !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2347, metadata !DIExpression()), !dbg !2349
  %4 = icmp eq i32 %3, 0, !dbg !2352
  br i1 %4, label %5, label %15, !dbg !2354

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !2355
  %7 = load i64, ptr %6, align 8, !dbg !2355, !tbaa !2356
  %8 = icmp ult i64 %7, 2, !dbg !2359
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !2360
  %10 = load i32, ptr %9, align 8, !dbg !2360
  %11 = and i32 %10, 61440, !dbg !2360
  %12 = icmp eq i32 %11, 4096, !dbg !2360
  %13 = select i1 %8, i1 %12, i1 false, !dbg !2360
  %14 = zext i1 %13 to i32, !dbg !2360
  br label %15, !dbg !2361

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !2349
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #41, !dbg !2362
  ret i32 %16, !dbg !2362
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #24 !dbg !2363 {
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
  store ptr %20, ptr @program_name, align 8, !dbg !2391, !tbaa !903
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2392, !tbaa !903
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2393, !tbaa !903
  ret void, !dbg !2394
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2395 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !545 {
  %3 = alloca i32, align 4, !DIAssignID !2396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !2396, metadata ptr %3, metadata !DIExpression()), !dbg !2397
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !560, metadata !DIExpression(), metadata !2398, metadata ptr %4, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !552, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !553, metadata !DIExpression()), !dbg !2397
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #41, !dbg !2399
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !554, metadata !DIExpression()), !dbg !2397
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
  %3 = load i32, ptr %2, align 4, !dbg !2445, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2442, metadata !DIExpression()), !dbg !2444
  %4 = icmp eq ptr %0, null, !dbg !2446
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2446
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #48, !dbg !2447
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2443, metadata !DIExpression()), !dbg !2444
  store i32 %3, ptr %2, align 4, !dbg !2448, !tbaa !969
  ret ptr %6, !dbg !2449
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #25 !dbg !2450 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2456, metadata !DIExpression()), !dbg !2457
  %2 = icmp eq ptr %0, null, !dbg !2458
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2458
  %4 = load i32, ptr %3, align 8, !dbg !2459, !tbaa !2460
  ret i32 %4, !dbg !2462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2467, metadata !DIExpression()), !dbg !2469
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2468, metadata !DIExpression()), !dbg !2469
  %3 = icmp eq ptr %0, null, !dbg !2470
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2470
  store i32 %1, ptr %4, align 8, !dbg !2471, !tbaa !2460
  ret void, !dbg !2472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #27 !dbg !2473 {
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
  %12 = load i32, ptr %9, align 4, !dbg !2491, !tbaa !969
  %13 = lshr i32 %12, %11, !dbg !2492
  %14 = and i32 %13, 1, !dbg !2493
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2484, metadata !DIExpression()), !dbg !2485
  %15 = xor i32 %13, %2, !dbg !2494
  %16 = and i32 %15, 1, !dbg !2494
  %17 = shl nuw i32 %16, %11, !dbg !2495
  %18 = xor i32 %17, %12, !dbg !2496
  store i32 %18, ptr %9, align 4, !dbg !2496, !tbaa !969
  ret i32 %14, !dbg !2497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #27 !dbg !2498 {
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
  %9 = load i32, ptr %8, align 4, !dbg !2551, !tbaa !969
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
  store i32 %9, ptr %8, align 4, !dbg !2558, !tbaa !969
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
  %18 = trunc i32 %5 to i8, !dbg !2639
  %19 = lshr i8 %18, 1, !dbg !2639
  %20 = and i8 %19, 1, !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2583, metadata !DIExpression()), !dbg !2636
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2640

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2641
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2642
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2643
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2644
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2636
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2645
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2646
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2579, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2569, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2574, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2573, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2570, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2584), !dbg !2647
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
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
  ], !dbg !2648

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2570, metadata !DIExpression()), !dbg !2636
  br label %114, !dbg !2649

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2570, metadata !DIExpression()), !dbg !2636
  %43 = and i8 %37, 1, !dbg !2650
  %44 = icmp eq i8 %43, 0, !dbg !2650
  br i1 %44, label %45, label %114, !dbg !2649

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2652
  br i1 %46, label %114, label %47, !dbg !2655

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2652, !tbaa !978
  br label %114, !dbg !2652

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !644, metadata !DIExpression(), metadata !2630, metadata ptr %12, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !645, metadata !DIExpression(), metadata !2631, metadata ptr %13, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr @.str.11.118, metadata !641, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 %29, metadata !642, metadata !DIExpression()), !dbg !2656
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.11.118, i32 noundef 5) #41, !dbg !2660
  call void @llvm.dbg.value(metadata ptr %49, metadata !643, metadata !DIExpression()), !dbg !2656
  %50 = icmp eq ptr %49, @.str.11.118, !dbg !2661
  br i1 %50, label %51, label %60, !dbg !2663

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #41, !dbg !2664
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #41, !dbg !2665
  call void @llvm.dbg.value(metadata ptr %13, metadata !2666, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %13, metadata !2674, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 8, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i64 0, ptr %13, align 8, !dbg !2681
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #41, !dbg !2682
  %53 = icmp eq i64 %52, 3, !dbg !2684
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2685
  %57 = icmp eq i32 %29, 9, !dbg !2685
  %58 = select i1 %57, ptr @.str.10.120, ptr @.str.12.121, !dbg !2685
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2685
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #41, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #41, !dbg !2686
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2656
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2573, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !644, metadata !DIExpression(), metadata !2628, metadata ptr %10, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.assign(metadata i1 undef, metadata !645, metadata !DIExpression(), metadata !2629, metadata ptr %11, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr @.str.12.121, metadata !641, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 %29, metadata !642, metadata !DIExpression()), !dbg !2687
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.119, ptr noundef nonnull @.str.12.121, i32 noundef 5) #41, !dbg !2689
  call void @llvm.dbg.value(metadata ptr %62, metadata !643, metadata !DIExpression()), !dbg !2687
  %63 = icmp eq ptr %62, @.str.12.121, !dbg !2690
  br i1 %63, label %64, label %73, !dbg !2691

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #41, !dbg !2692
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #41, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %11, metadata !2666, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %11, metadata !2674, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i64 8, metadata !2678, metadata !DIExpression()), !dbg !2696
  store i64 0, ptr %11, align 8, !dbg !2698
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #41, !dbg !2699
  %66 = icmp eq i64 %65, 3, !dbg !2700
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2701
  %70 = icmp eq i32 %29, 9, !dbg !2701
  %71 = select i1 %70, ptr @.str.10.120, ptr @.str.12.121, !dbg !2701
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2701
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #41, !dbg !2702
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #41, !dbg !2702
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2574, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2573, metadata !DIExpression()), !dbg !2636
  %76 = and i8 %37, 1, !dbg !2703
  %77 = icmp eq i8 %76, 0, !dbg !2703
  br i1 %77, label %78, label %93, !dbg !2704

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2586, metadata !DIExpression()), !dbg !2705
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2636
  %79 = load i8, ptr %74, align 1, !dbg !2706, !tbaa !978
  %80 = icmp eq i8 %79, 0, !dbg !2708
  br i1 %80, label %93, label %81, !dbg !2708

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2586, metadata !DIExpression()), !dbg !2705
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2576, metadata !DIExpression()), !dbg !2636
  %85 = icmp ult i64 %84, %40, !dbg !2709
  br i1 %85, label %86, label %88, !dbg !2712

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2709
  store i8 %82, ptr %87, align 1, !dbg !2709, !tbaa !978
  br label %88, !dbg !2709

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2576, metadata !DIExpression()), !dbg !2636
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2713
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2586, metadata !DIExpression()), !dbg !2705
  %91 = load i8, ptr %90, align 1, !dbg !2706, !tbaa !978
  %92 = icmp eq i8 %91, 0, !dbg !2708
  br i1 %92, label %93, label %81, !dbg !2708, !llvm.loop !2714

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2578, metadata !DIExpression()), !dbg !2636
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #42, !dbg !2717
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2579, metadata !DIExpression()), !dbg !2636
  br label %114, !dbg !2718

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2580, metadata !DIExpression()), !dbg !2636
  br label %98, !dbg !2719

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2581, metadata !DIExpression()), !dbg !2636
  br label %98, !dbg !2720

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2644
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2580, metadata !DIExpression()), !dbg !2636
  %101 = and i8 %100, 1, !dbg !2721
  %102 = icmp eq i8 %101, 0, !dbg !2721
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2723
  br label %104, !dbg !2723

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2636
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2639
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2570, metadata !DIExpression()), !dbg !2636
  %107 = and i8 %106, 1, !dbg !2724
  %108 = icmp eq i8 %107, 0, !dbg !2724
  br i1 %108, label %109, label %114, !dbg !2726

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2727
  br i1 %110, label %114, label %111, !dbg !2730

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2727, !tbaa !978
  br label %114, !dbg !2727

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2636
  br label %114, !dbg !2731

113:                                              ; preds = %28
  call void @abort() #43, !dbg !2732
  unreachable, !dbg !2732

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2716
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.120, %45 ], [ @.str.10.120, %47 ], [ @.str.10.120, %42 ], [ %34, %28 ], [ @.str.12.121, %109 ], [ @.str.12.121, %111 ], [ @.str.12.121, %104 ], [ @.str.10.120, %41 ], !dbg !2636
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2636
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2636
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2581, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2580, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2579, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2574, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2573, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2570, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2591, metadata !DIExpression()), !dbg !2733
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
  br label %138, !dbg !2734

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2716
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2641
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2645
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2646
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2735
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2736
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2569, metadata !DIExpression()), !dbg !2636
  %147 = icmp eq i64 %139, -1, !dbg !2737
  br i1 %147, label %148, label %152, !dbg !2738

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2739
  %150 = load i8, ptr %149, align 1, !dbg !2739, !tbaa !978
  %151 = icmp eq i8 %150, 0, !dbg !2740
  br i1 %151, label %612, label %154, !dbg !2741

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2742
  br i1 %153, label %612, label %154, !dbg !2741

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2597, metadata !DIExpression()), !dbg !2743
  br i1 %128, label %155, label %170, !dbg !2744

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2746
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2747
  br i1 %157, label %158, label %160, !dbg !2747

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2748
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2569, metadata !DIExpression()), !dbg !2636
  br label %160, !dbg !2749

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2569, metadata !DIExpression()), !dbg !2636
  %162 = icmp ugt i64 %156, %161, !dbg !2750
  br i1 %162, label %170, label %163, !dbg !2751

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2752
  call void @llvm.dbg.value(metadata ptr %164, metadata !2753, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %119, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %120, metadata !2757, metadata !DIExpression()), !dbg !2758
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2760
  %166 = icmp ne i32 %165, 0, !dbg !2761
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2762
  %168 = xor i1 %166, true, !dbg !2762
  %169 = zext i1 %168 to i8, !dbg !2762
  br i1 %167, label %170, label %666, !dbg !2762

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2743
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2569, metadata !DIExpression()), !dbg !2636
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2763
  %175 = load i8, ptr %174, align 1, !dbg !2763, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2598, metadata !DIExpression()), !dbg !2743
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
  ], !dbg !2764

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2765

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2766

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2743
  %179 = and i8 %144, 1, !dbg !2770
  %180 = icmp eq i8 %179, 0, !dbg !2770
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2770
  br i1 %181, label %182, label %198, !dbg !2770

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2772
  br i1 %183, label %184, label %186, !dbg !2776

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2772
  store i8 39, ptr %185, align 1, !dbg !2772, !tbaa !978
  br label %186, !dbg !2772

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2776
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2576, metadata !DIExpression()), !dbg !2636
  %188 = icmp ult i64 %187, %146, !dbg !2777
  br i1 %188, label %189, label %191, !dbg !2780

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2777
  store i8 36, ptr %190, align 1, !dbg !2777, !tbaa !978
  br label %191, !dbg !2777

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2576, metadata !DIExpression()), !dbg !2636
  %193 = icmp ult i64 %192, %146, !dbg !2781
  br i1 %193, label %194, label %196, !dbg !2784

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2781
  store i8 39, ptr %195, align 1, !dbg !2781, !tbaa !978
  br label %196, !dbg !2781

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2784
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %198, !dbg !2785

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2636
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2576, metadata !DIExpression()), !dbg !2636
  %201 = icmp ult i64 %199, %146, !dbg !2786
  br i1 %201, label %202, label %204, !dbg !2789

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2786
  store i8 92, ptr %203, align 1, !dbg !2786, !tbaa !978
  br label %204, !dbg !2786

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2789
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2576, metadata !DIExpression()), !dbg !2636
  br i1 %125, label %206, label %476, !dbg !2790

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2792
  %208 = icmp ult i64 %207, %171, !dbg !2793
  br i1 %208, label %209, label %465, !dbg !2794

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2795
  %211 = load i8, ptr %210, align 1, !dbg !2795, !tbaa !978
  %212 = add i8 %211, -48, !dbg !2796
  %213 = icmp ult i8 %212, 10, !dbg !2796
  br i1 %213, label %214, label %465, !dbg !2796

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2797
  br i1 %215, label %216, label %218, !dbg !2801

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2797
  store i8 48, ptr %217, align 1, !dbg !2797, !tbaa !978
  br label %218, !dbg !2797

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2801
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2576, metadata !DIExpression()), !dbg !2636
  %220 = icmp ult i64 %219, %146, !dbg !2802
  br i1 %220, label %221, label %223, !dbg !2805

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2802
  store i8 48, ptr %222, align 1, !dbg !2802, !tbaa !978
  br label %223, !dbg !2802

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2805
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2576, metadata !DIExpression()), !dbg !2636
  br label %465, !dbg !2806

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2807

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2808

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2809

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2811

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2813
  %231 = icmp ult i64 %230, %171, !dbg !2814
  br i1 %231, label %232, label %465, !dbg !2815

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2816
  %234 = load i8, ptr %233, align 1, !dbg !2816, !tbaa !978
  %235 = icmp eq i8 %234, 63, !dbg !2817
  br i1 %235, label %236, label %465, !dbg !2818

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2819
  %238 = load i8, ptr %237, align 1, !dbg !2819, !tbaa !978
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
  ], !dbg !2820

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2821

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2591, metadata !DIExpression()), !dbg !2733
  %241 = icmp ult i64 %140, %146, !dbg !2823
  br i1 %241, label %242, label %244, !dbg !2826

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2823
  store i8 63, ptr %243, align 1, !dbg !2823, !tbaa !978
  br label %244, !dbg !2823

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2826
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2576, metadata !DIExpression()), !dbg !2636
  %246 = icmp ult i64 %245, %146, !dbg !2827
  br i1 %246, label %247, label %249, !dbg !2830

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2827
  store i8 34, ptr %248, align 1, !dbg !2827, !tbaa !978
  br label %249, !dbg !2827

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2830
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2576, metadata !DIExpression()), !dbg !2636
  %251 = icmp ult i64 %250, %146, !dbg !2831
  br i1 %251, label %252, label %254, !dbg !2834

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2831
  store i8 34, ptr %253, align 1, !dbg !2831, !tbaa !978
  br label %254, !dbg !2831

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2834
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2576, metadata !DIExpression()), !dbg !2636
  %256 = icmp ult i64 %255, %146, !dbg !2835
  br i1 %256, label %257, label %259, !dbg !2838

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2835
  store i8 63, ptr %258, align 1, !dbg !2835, !tbaa !978
  br label %259, !dbg !2835

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2576, metadata !DIExpression()), !dbg !2636
  br label %465, !dbg !2839

261:                                              ; preds = %170
  br label %272, !dbg !2840

262:                                              ; preds = %170
  br label %272, !dbg !2841

263:                                              ; preds = %170
  br label %270, !dbg !2842

264:                                              ; preds = %170
  br label %270, !dbg !2843

265:                                              ; preds = %170
  br label %272, !dbg !2844

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2845

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2846

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2849

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2851

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2852
  call void @llvm.dbg.label(metadata !2599), !dbg !2853
  br i1 %133, label %272, label %655, !dbg !2854

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2852
  call void @llvm.dbg.label(metadata !2602), !dbg !2856
  br i1 %124, label %520, label %476, !dbg !2857

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2858

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2859, !tbaa !978
  %277 = icmp eq i8 %276, 0, !dbg !2861
  br i1 %277, label %278, label %465, !dbg !2862

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2863
  br i1 %279, label %280, label %465, !dbg !2865

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2743
  br label %281, !dbg !2866

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2597, metadata !DIExpression()), !dbg !2743
  br i1 %133, label %465, label %655, !dbg !2867

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2597, metadata !DIExpression()), !dbg !2743
  br i1 %132, label %284, label %465, !dbg !2869

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2870

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2873
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2875
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2875
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2875
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2577, metadata !DIExpression()), !dbg !2636
  %291 = icmp ult i64 %140, %290, !dbg !2876
  br i1 %291, label %292, label %294, !dbg !2879

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2876
  store i8 39, ptr %293, align 1, !dbg !2876, !tbaa !978
  br label %294, !dbg !2876

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2879
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2576, metadata !DIExpression()), !dbg !2636
  %296 = icmp ult i64 %295, %290, !dbg !2880
  br i1 %296, label %297, label %299, !dbg !2883

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2880
  store i8 92, ptr %298, align 1, !dbg !2880, !tbaa !978
  br label %299, !dbg !2880

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2883
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2576, metadata !DIExpression()), !dbg !2636
  %301 = icmp ult i64 %300, %290, !dbg !2884
  br i1 %301, label %302, label %304, !dbg !2887

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2884
  store i8 39, ptr %303, align 1, !dbg !2884, !tbaa !978
  br label %304, !dbg !2884

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %465, !dbg !2888

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2889

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2603, metadata !DIExpression()), !dbg !2890
  %308 = tail call ptr @__ctype_b_loc() #44, !dbg !2891
  %309 = load ptr, ptr %308, align 8, !dbg !2891, !tbaa !903
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2891
  %312 = load i16, ptr %311, align 2, !dbg !2891, !tbaa !1010
  %313 = and i16 %312, 16384, !dbg !2893
  %314 = icmp ne i16 %313, 0, !dbg !2893
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2605, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2890
  br label %355, !dbg !2894

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #41, !dbg !2895
  call void @llvm.dbg.value(metadata ptr %14, metadata !2666, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %14, metadata !2674, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 8, metadata !2678, metadata !DIExpression()), !dbg !2898
  store i64 0, ptr %14, align 8, !dbg !2900
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2605, metadata !DIExpression()), !dbg !2890
  %316 = icmp eq i64 %171, -1, !dbg !2901
  br i1 %316, label %317, label %319, !dbg !2903

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42, !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2569, metadata !DIExpression()), !dbg !2636
  br label %319, !dbg !2905

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #41, !dbg !2906
  %321 = sub i64 %320, %145, !dbg !2907
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #41, !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2613, metadata !DIExpression()), !dbg !2635
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2909

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2890
  %324 = icmp ult i64 %145, %320, !dbg !2910
  br i1 %324, label %326, label %351, !dbg !2912

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2890
  br label %351, !dbg !2913

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2603, metadata !DIExpression()), !dbg !2890
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2915
  %330 = load i8, ptr %329, align 1, !dbg !2915, !tbaa !978
  %331 = icmp eq i8 %330, 0, !dbg !2912
  br i1 %331, label %351, label %332, !dbg !2916

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2603, metadata !DIExpression()), !dbg !2890
  %334 = add i64 %333, %145, !dbg !2918
  %335 = icmp eq i64 %333, %321, !dbg !2910
  br i1 %335, label %351, label %326, !dbg !2912, !llvm.loop !2919

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2614, metadata !DIExpression()), !dbg !2920
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2921
  %339 = and i1 %338, %132, !dbg !2921
  br i1 %339, label %340, label %347, !dbg !2921

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2614, metadata !DIExpression()), !dbg !2920
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2922
  %343 = load i8, ptr %342, align 1, !dbg !2922, !tbaa !978
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2924

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2925
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2614, metadata !DIExpression()), !dbg !2920
  %346 = icmp eq i64 %345, %322, !dbg !2926
  br i1 %346, label %347, label %340, !dbg !2927, !llvm.loop !2928

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2930, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %348, metadata !2932, metadata !DIExpression()), !dbg !2940
  %349 = call i32 @iswprint(i32 noundef %348) #41, !dbg !2942
  %350 = icmp ne i32 %349, 0, !dbg !2943
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2603, metadata !DIExpression()), !dbg !2890
  br label %351, !dbg !2944

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2603, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !2945
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !2946
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2603, metadata !DIExpression()), !dbg !2890
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #41, !dbg !2945
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #41, !dbg !2946
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2743
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2947
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2947
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2603, metadata !DIExpression()), !dbg !2890
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2569, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2597, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2743
  %359 = icmp ult i64 %357, 2, !dbg !2948
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2949
  br i1 %361, label %461, label %362, !dbg !2949

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2950
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2622, metadata !DIExpression()), !dbg !2951
  br label %364, !dbg !2952

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2636
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2735
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2733
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2743
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2953
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2576, metadata !DIExpression()), !dbg !2636
  br i1 %360, label %417, label %371, !dbg !2954

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2959

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2743
  %373 = and i8 %366, 1, !dbg !2962
  %374 = icmp eq i8 %373, 0, !dbg !2962
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2962
  br i1 %375, label %376, label %392, !dbg !2962

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2964
  br i1 %377, label %378, label %380, !dbg !2968

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2964
  store i8 39, ptr %379, align 1, !dbg !2964, !tbaa !978
  br label %380, !dbg !2964

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2968
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2576, metadata !DIExpression()), !dbg !2636
  %382 = icmp ult i64 %381, %146, !dbg !2969
  br i1 %382, label %383, label %385, !dbg !2972

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2969
  store i8 36, ptr %384, align 1, !dbg !2969, !tbaa !978
  br label %385, !dbg !2969

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2576, metadata !DIExpression()), !dbg !2636
  %387 = icmp ult i64 %386, %146, !dbg !2973
  br i1 %387, label %388, label %390, !dbg !2976

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2973
  store i8 39, ptr %389, align 1, !dbg !2973, !tbaa !978
  br label %390, !dbg !2973

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2976
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %392, !dbg !2977

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2636
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2576, metadata !DIExpression()), !dbg !2636
  %395 = icmp ult i64 %393, %146, !dbg !2978
  br i1 %395, label %396, label %398, !dbg !2981

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2978
  store i8 92, ptr %397, align 1, !dbg !2978, !tbaa !978
  br label %398, !dbg !2978

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2576, metadata !DIExpression()), !dbg !2636
  %400 = icmp ult i64 %399, %146, !dbg !2982
  br i1 %400, label %401, label %405, !dbg !2985

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2982
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2982
  store i8 %403, ptr %404, align 1, !dbg !2982, !tbaa !978
  br label %405, !dbg !2982

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2985
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2576, metadata !DIExpression()), !dbg !2636
  %407 = icmp ult i64 %406, %146, !dbg !2986
  br i1 %407, label %408, label %413, !dbg !2989

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2986
  %411 = or disjoint i8 %410, 48, !dbg !2986
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2986
  store i8 %411, ptr %412, align 1, !dbg !2986, !tbaa !978
  br label %413, !dbg !2986

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2989
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2576, metadata !DIExpression()), !dbg !2636
  %415 = and i8 %370, 7, !dbg !2990
  %416 = or disjoint i8 %415, 48, !dbg !2991
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2598, metadata !DIExpression()), !dbg !2743
  br label %426, !dbg !2992

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2993
  %419 = icmp eq i8 %418, 0, !dbg !2993
  br i1 %419, label %426, label %420, !dbg !2995

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2996
  br i1 %421, label %422, label %424, !dbg !3000

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2996
  store i8 92, ptr %423, align 1, !dbg !2996, !tbaa !978
  br label %424, !dbg !2996

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3000
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2743
  br label %426, !dbg !3001

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2636
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2735
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2743
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2743
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2576, metadata !DIExpression()), !dbg !2636
  %432 = add i64 %367, 1, !dbg !3002
  %433 = icmp ugt i64 %363, %432, !dbg !3004
  br i1 %433, label %434, label %463, !dbg !3005

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3006
  %436 = icmp ne i8 %435, 0, !dbg !3006
  %437 = and i8 %430, 1, !dbg !3006
  %438 = icmp eq i8 %437, 0, !dbg !3006
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3006
  br i1 %439, label %440, label %451, !dbg !3006

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3009
  br i1 %441, label %442, label %444, !dbg !3013

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3009
  store i8 39, ptr %443, align 1, !dbg !3009, !tbaa !978
  br label %444, !dbg !3009

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2576, metadata !DIExpression()), !dbg !2636
  %446 = icmp ult i64 %445, %146, !dbg !3014
  br i1 %446, label %447, label %449, !dbg !3017

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3014
  store i8 39, ptr %448, align 1, !dbg !3014, !tbaa !978
  br label %449, !dbg !3014

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %451, !dbg !3018

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3019
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2576, metadata !DIExpression()), !dbg !2636
  %454 = icmp ult i64 %452, %146, !dbg !3020
  br i1 %454, label %455, label %457, !dbg !3023

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3020
  store i8 %431, ptr %456, align 1, !dbg !3020, !tbaa !978
  br label %457, !dbg !3020

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3023
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2591, metadata !DIExpression()), !dbg !2733
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3024
  %460 = load i8, ptr %459, align 1, !dbg !3024, !tbaa !978
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2598, metadata !DIExpression()), !dbg !2743
  br label %364, !dbg !3025, !llvm.loop !3026

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2597, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2569, metadata !DIExpression()), !dbg !2636
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2597, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2569, metadata !DIExpression()), !dbg !2636
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3029
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2636
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2641
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2636
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2636
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2733
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2743
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2743
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2743
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2597, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2593, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2569, metadata !DIExpression()), !dbg !2636
  br i1 %126, label %487, label %476, !dbg !3030

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
  br i1 %137, label %488, label %509, !dbg !3032

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3033

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
  %499 = lshr i8 %490, 5, !dbg !3034
  %500 = zext nneg i8 %499 to i64, !dbg !3034
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3035
  %502 = load i32, ptr %501, align 4, !dbg !3035, !tbaa !969
  %503 = and i8 %490, 31, !dbg !3036
  %504 = zext nneg i8 %503 to i32, !dbg !3036
  %505 = shl nuw i32 1, %504, !dbg !3037
  %506 = and i32 %502, %505, !dbg !3037
  %507 = icmp eq i32 %506, 0, !dbg !3037
  %508 = and i1 %172, %507, !dbg !3038
  br i1 %508, label %558, label %520, !dbg !3038

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
  br i1 %172, label %558, label %520, !dbg !3039

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3029
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2636
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2641
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2645
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2735
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3040
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2743
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2743
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2597, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2625), !dbg !3041
  br i1 %131, label %530, label %659, !dbg !3042

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2743
  %531 = and i8 %525, 1, !dbg !3044
  %532 = icmp eq i8 %531, 0, !dbg !3044
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3044
  br i1 %533, label %534, label %550, !dbg !3044

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3046
  br i1 %535, label %536, label %538, !dbg !3050

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3046
  store i8 39, ptr %537, align 1, !dbg !3046, !tbaa !978
  br label %538, !dbg !3046

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3050
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2576, metadata !DIExpression()), !dbg !2636
  %540 = icmp ult i64 %539, %529, !dbg !3051
  br i1 %540, label %541, label %543, !dbg !3054

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3051
  store i8 36, ptr %542, align 1, !dbg !3051, !tbaa !978
  br label %543, !dbg !3051

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2576, metadata !DIExpression()), !dbg !2636
  %545 = icmp ult i64 %544, %529, !dbg !3055
  br i1 %545, label %546, label %548, !dbg !3058

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3055
  store i8 39, ptr %547, align 1, !dbg !3055, !tbaa !978
  br label %548, !dbg !3055

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3058
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %550, !dbg !3059

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2743
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2576, metadata !DIExpression()), !dbg !2636
  %553 = icmp ult i64 %551, %529, !dbg !3060
  br i1 %553, label %554, label %556, !dbg !3063

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3060
  store i8 92, ptr %555, align 1, !dbg !3060, !tbaa !978
  br label %556, !dbg !3060

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2597, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2626), !dbg !3064
  br label %585, !dbg !3065

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3029
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2636
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2641
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2645
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2735
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3040
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2743
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2743
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3068
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2598, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2597, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2596, metadata !DIExpression()), !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2569, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.label(metadata !2626), !dbg !3064
  %569 = and i8 %563, 1, !dbg !3065
  %570 = icmp ne i8 %569, 0, !dbg !3065
  %571 = and i8 %565, 1, !dbg !3065
  %572 = icmp eq i8 %571, 0, !dbg !3065
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3065
  br i1 %573, label %574, label %585, !dbg !3065

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3069
  br i1 %575, label %576, label %578, !dbg !3073

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3069
  store i8 39, ptr %577, align 1, !dbg !3069, !tbaa !978
  br label %578, !dbg !3069

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3073
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2576, metadata !DIExpression()), !dbg !2636
  %580 = icmp ult i64 %579, %568, !dbg !3074
  br i1 %580, label %581, label %583, !dbg !3077

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3074
  store i8 39, ptr %582, align 1, !dbg !3074, !tbaa !978
  br label %583, !dbg !3074

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2585, metadata !DIExpression()), !dbg !2636
  br label %585, !dbg !3078

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2743
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2576, metadata !DIExpression()), !dbg !2636
  %595 = icmp ult i64 %593, %586, !dbg !3079
  br i1 %595, label %596, label %598, !dbg !3082

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3079
  store i8 %587, ptr %597, align 1, !dbg !3079, !tbaa !978
  br label %598, !dbg !3079

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3082
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2576, metadata !DIExpression()), !dbg !2636
  %600 = icmp eq i8 %588, 0, !dbg !3083
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3085
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2583, metadata !DIExpression()), !dbg !2636
  br label %602, !dbg !3086

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3029
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2636
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2641
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2645
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2646
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2735
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3040
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2591, metadata !DIExpression()), !dbg !2733
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2585, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2569, metadata !DIExpression()), !dbg !2636
  %611 = add i64 %609, 1, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2591, metadata !DIExpression()), !dbg !2733
  br label %138, !dbg !3088, !llvm.loop !3089

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2567, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2583, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2582, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2577, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2576, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2569, metadata !DIExpression()), !dbg !2636
  %613 = icmp eq i64 %140, 0, !dbg !3091
  %614 = and i1 %132, %613, !dbg !3093
  %615 = xor i1 %614, true, !dbg !3093
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3093
  br i1 %616, label %617, label %655, !dbg !3093

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3094
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3094
  br i1 %621, label %622, label %631, !dbg !3094

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3096
  %624 = icmp eq i8 %623, 0, !dbg !3096
  br i1 %624, label %627, label %625, !dbg !3099

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3100
  br label %672, !dbg !3101

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3102
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3104
  br i1 %630, label %28, label %631, !dbg !3104

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3105
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3107
  br i1 %634, label %635, label %650, !dbg !3107

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2576, metadata !DIExpression()), !dbg !2636
  %636 = load i8, ptr %119, align 1, !dbg !3108, !tbaa !978
  %637 = icmp eq i8 %636, 0, !dbg !3111
  br i1 %637, label %650, label %638, !dbg !3111

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2578, metadata !DIExpression()), !dbg !2636
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2576, metadata !DIExpression()), !dbg !2636
  %642 = icmp ult i64 %641, %146, !dbg !3112
  br i1 %642, label %643, label %645, !dbg !3115

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3112
  store i8 %639, ptr %644, align 1, !dbg !3112, !tbaa !978
  br label %645, !dbg !3112

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2576, metadata !DIExpression()), !dbg !2636
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3116
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2578, metadata !DIExpression()), !dbg !2636
  %648 = load i8, ptr %647, align 1, !dbg !3108, !tbaa !978
  %649 = icmp eq i8 %648, 0, !dbg !3111
  br i1 %649, label %650, label %638, !dbg !3111, !llvm.loop !3117

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2576, metadata !DIExpression()), !dbg !2636
  %652 = icmp ult i64 %651, %146, !dbg !3119
  br i1 %652, label %653, label %672, !dbg !3121

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3122
  store i8 0, ptr %654, align 1, !dbg !3123, !tbaa !978
  br label %672, !dbg !3122

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2627), !dbg !3124
  %657 = icmp eq i8 %123, 0, !dbg !3125
  %658 = select i1 %657, i32 2, i32 4, !dbg !3125
  br label %666, !dbg !3125

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2627), !dbg !3124
  %662 = icmp eq i32 %115, 2, !dbg !3127
  %663 = icmp eq i8 %123, 0, !dbg !3125
  %664 = select i1 %663, i32 2, i32 4, !dbg !3125
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3125
  br label %666, !dbg !3125

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2570, metadata !DIExpression()), !dbg !2636
  %670 = and i32 %5, -3, !dbg !3128
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3129
  br label %672, !dbg !3130

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3131
}

; Function Attrs: nounwind
declare !dbg !3132 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3135 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3141, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3142, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr null, metadata !3151, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %2, metadata !3152, metadata !DIExpression()), !dbg !3158
  %4 = icmp eq ptr %2, null, !dbg !3160
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3160
  call void @llvm.dbg.value(metadata ptr %5, metadata !3153, metadata !DIExpression()), !dbg !3158
  %6 = tail call ptr @__errno_location() #44, !dbg !3161
  %7 = load i32, ptr %6, align 4, !dbg !3161, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %7, metadata !3154, metadata !DIExpression()), !dbg !3158
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3162
  %9 = load i32, ptr %8, align 4, !dbg !3162, !tbaa !2510
  %10 = or i32 %9, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %10, metadata !3155, metadata !DIExpression()), !dbg !3158
  %11 = load i32, ptr %5, align 8, !dbg !3164, !tbaa !2460
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3165
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3166
  %14 = load ptr, ptr %13, align 8, !dbg !3166, !tbaa !2531
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3167
  %16 = load ptr, ptr %15, align 8, !dbg !3167, !tbaa !2534
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3168
  %18 = add i64 %17, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %18, metadata !3156, metadata !DIExpression()), !dbg !3158
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #49, !dbg !3170
  call void @llvm.dbg.value(metadata ptr %19, metadata !3157, metadata !DIExpression()), !dbg !3158
  %20 = load i32, ptr %5, align 8, !dbg !3171, !tbaa !2460
  %21 = load ptr, ptr %13, align 8, !dbg !3172, !tbaa !2531
  %22 = load ptr, ptr %15, align 8, !dbg !3173, !tbaa !2534
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3174
  store i32 %7, ptr %6, align 4, !dbg !3175, !tbaa !969
  ret ptr %19, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3146 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3177
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3151, metadata !DIExpression()), !dbg !3177
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3152, metadata !DIExpression()), !dbg !3177
  %5 = icmp eq ptr %3, null, !dbg !3178
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3178
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3153, metadata !DIExpression()), !dbg !3177
  %7 = tail call ptr @__errno_location() #44, !dbg !3179
  %8 = load i32, ptr %7, align 4, !dbg !3179, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3154, metadata !DIExpression()), !dbg !3177
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3180
  %10 = load i32, ptr %9, align 4, !dbg !3180, !tbaa !2510
  %11 = icmp eq ptr %2, null, !dbg !3181
  %12 = zext i1 %11 to i32, !dbg !3181
  %13 = or i32 %10, %12, !dbg !3182
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3155, metadata !DIExpression()), !dbg !3177
  %14 = load i32, ptr %6, align 8, !dbg !3183, !tbaa !2460
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3184
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3185
  %17 = load ptr, ptr %16, align 8, !dbg !3185, !tbaa !2531
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3186
  %19 = load ptr, ptr %18, align 8, !dbg !3186, !tbaa !2534
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3187
  %21 = add i64 %20, 1, !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3156, metadata !DIExpression()), !dbg !3177
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #49, !dbg !3189
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3157, metadata !DIExpression()), !dbg !3177
  %23 = load i32, ptr %6, align 8, !dbg !3190, !tbaa !2460
  %24 = load ptr, ptr %16, align 8, !dbg !3191, !tbaa !2531
  %25 = load ptr, ptr %18, align 8, !dbg !3192, !tbaa !2534
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3193
  store i32 %8, ptr %7, align 4, !dbg !3194, !tbaa !969
  br i1 %11, label %28, label %27, !dbg !3195

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3196, !tbaa !3198
  br label %28, !dbg !3199

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3200
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3201 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3206, !tbaa !903
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3203, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3204, metadata !DIExpression()), !dbg !3208
  %2 = load i32, ptr @nslots, align 4, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3204, metadata !DIExpression()), !dbg !3208
  %3 = icmp sgt i32 %2, 1, !dbg !3209
  br i1 %3, label %4, label %6, !dbg !3211

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3209
  br label %10, !dbg !3211

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3212
  %8 = load ptr, ptr %7, align 8, !dbg !3212, !tbaa !3214
  %9 = icmp eq ptr %8, @slot0, !dbg !3216
  br i1 %9, label %17, label %16, !dbg !3217

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3204, metadata !DIExpression()), !dbg !3208
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3218
  %13 = load ptr, ptr %12, align 8, !dbg !3218, !tbaa !3214
  tail call void @free(ptr noundef %13) #41, !dbg !3219
  %14 = add nuw nsw i64 %11, 1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3204, metadata !DIExpression()), !dbg !3208
  %15 = icmp eq i64 %14, %5, !dbg !3209
  br i1 %15, label %6, label %10, !dbg !3211, !llvm.loop !3221

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #41, !dbg !3223
  store i64 256, ptr @slotvec0, align 8, !dbg !3225, !tbaa !3226
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3227, !tbaa !3214
  br label %17, !dbg !3228

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3229
  br i1 %18, label %20, label %19, !dbg !3231

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #41, !dbg !3232
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3234, !tbaa !903
  br label %20, !dbg !3235

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3236, !tbaa !969
  ret void, !dbg !3237
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3238 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3242
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3241, metadata !DIExpression()), !dbg !3242
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3243
  ret ptr %3, !dbg !3244
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3245 {
  %5 = alloca i64, align 8, !DIAssignID !3265
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3259, metadata !DIExpression(), metadata !3265, metadata ptr %5, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3250, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3251, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3252, metadata !DIExpression()), !dbg !3267
  %6 = tail call ptr @__errno_location() #44, !dbg !3268
  %7 = load i32, ptr %6, align 4, !dbg !3268, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3253, metadata !DIExpression()), !dbg !3267
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3269, !tbaa !903
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3254, metadata !DIExpression()), !dbg !3267
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3255, metadata !DIExpression()), !dbg !3267
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3270
  br i1 %9, label %10, label %11, !dbg !3270

10:                                               ; preds = %4
  tail call void @abort() #43, !dbg !3272
  unreachable, !dbg !3272

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3273, !tbaa !969
  %13 = icmp sgt i32 %12, %0, !dbg !3274
  br i1 %13, label %32, label %14, !dbg !3275

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3276
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3256, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #41, !dbg !3277
  %16 = sext i32 %12 to i64, !dbg !3278
  store i64 %16, ptr %5, align 8, !dbg !3279, !tbaa !3198, !DIAssignID !3280
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3259, metadata !DIExpression(), metadata !3280, metadata ptr %5, metadata !DIExpression()), !dbg !3266
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3281
  %18 = add nuw nsw i32 %0, 1, !dbg !3282
  %19 = sub i32 %18, %12, !dbg !3283
  %20 = sext i32 %19 to i64, !dbg !3284
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #41, !dbg !3285
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3254, metadata !DIExpression()), !dbg !3267
  store ptr %21, ptr @slotvec, align 8, !dbg !3286, !tbaa !903
  br i1 %15, label %22, label %23, !dbg !3287

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3288, !tbaa.struct !3290
  br label %23, !dbg !3291

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3292, !tbaa !969
  %25 = sext i32 %24 to i64, !dbg !3293
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3293
  %27 = load i64, ptr %5, align 8, !dbg !3294, !tbaa !3198
  %28 = sub nsw i64 %27, %25, !dbg !3295
  %29 = shl i64 %28, 4, !dbg !3296
  call void @llvm.dbg.value(metadata ptr %26, metadata !2674, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %29, metadata !2678, metadata !DIExpression()), !dbg !3297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #41, !dbg !3299
  %30 = load i64, ptr %5, align 8, !dbg !3300, !tbaa !3198
  %31 = trunc i64 %30 to i32, !dbg !3300
  store i32 %31, ptr @nslots, align 4, !dbg !3301, !tbaa !969
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #41, !dbg !3302
  br label %32, !dbg !3303

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3267
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3254, metadata !DIExpression()), !dbg !3267
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3304
  %36 = load i64, ptr %35, align 8, !dbg !3305, !tbaa !3226
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3260, metadata !DIExpression()), !dbg !3306
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3307
  %38 = load ptr, ptr %37, align 8, !dbg !3307, !tbaa !3214
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3262, metadata !DIExpression()), !dbg !3306
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3308
  %40 = load i32, ptr %39, align 4, !dbg !3308, !tbaa !2510
  %41 = or i32 %40, 1, !dbg !3309
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3263, metadata !DIExpression()), !dbg !3306
  %42 = load i32, ptr %3, align 8, !dbg !3310, !tbaa !2460
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3311
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3312
  %45 = load ptr, ptr %44, align 8, !dbg !3312, !tbaa !2531
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3313
  %47 = load ptr, ptr %46, align 8, !dbg !3313, !tbaa !2534
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3264, metadata !DIExpression()), !dbg !3306
  %49 = icmp ugt i64 %36, %48, !dbg !3315
  br i1 %49, label %60, label %50, !dbg !3317

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3260, metadata !DIExpression()), !dbg !3306
  store i64 %51, ptr %35, align 8, !dbg !3320, !tbaa !3226
  %52 = icmp eq ptr %38, @slot0, !dbg !3321
  br i1 %52, label %54, label %53, !dbg !3323

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #41, !dbg !3324
  br label %54, !dbg !3324

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #49, !dbg !3325
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3262, metadata !DIExpression()), !dbg !3306
  store ptr %55, ptr %37, align 8, !dbg !3326, !tbaa !3214
  %56 = load i32, ptr %3, align 8, !dbg !3327, !tbaa !2460
  %57 = load ptr, ptr %44, align 8, !dbg !3328, !tbaa !2531
  %58 = load ptr, ptr %46, align 8, !dbg !3329, !tbaa !2534
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3330
  br label %60, !dbg !3331

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3306
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3262, metadata !DIExpression()), !dbg !3306
  store i32 %7, ptr %6, align 4, !dbg !3332, !tbaa !969
  ret ptr %61, !dbg !3333
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #28

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3334 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3338, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3339, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3340, metadata !DIExpression()), !dbg !3341
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3342
  ret ptr %4, !dbg !3343
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3344 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 0, metadata !3240, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata ptr %0, metadata !3241, metadata !DIExpression()), !dbg !3348
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3350
  ret ptr %2, !dbg !3351
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3352 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3356, metadata !DIExpression()), !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 0, metadata !3338, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata ptr %0, metadata !3339, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3340, metadata !DIExpression()), !dbg !3359
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3361
  ret ptr %3, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3363 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3370, metadata !DIExpression(), metadata !3371, metadata ptr %4, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3368, metadata !DIExpression()), !dbg !3372
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3369, metadata !DIExpression()), !dbg !3372
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3373
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3374), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %1, metadata !3378, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3383, metadata !DIExpression()), !dbg !3386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3386, !alias.scope !3374, !DIAssignID !3387
  call void @llvm.dbg.assign(metadata i8 0, metadata !3370, metadata !DIExpression(), metadata !3387, metadata ptr %4, metadata !DIExpression()), !dbg !3372
  %5 = icmp eq i32 %1, 10, !dbg !3388
  br i1 %5, label %6, label %7, !dbg !3390

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3391, !noalias !3374
  unreachable, !dbg !3391

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3392, !tbaa !2460, !alias.scope !3374, !DIAssignID !3393
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3393, metadata ptr %4, metadata !DIExpression()), !dbg !3372
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3394
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3395
  ret ptr %8, !dbg !3396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3397 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3406
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3405, metadata !DIExpression(), metadata !3406, metadata ptr %5, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3401, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3402, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3403, metadata !DIExpression()), !dbg !3407
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3404, metadata !DIExpression()), !dbg !3407
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3409), !dbg !3412
  call void @llvm.dbg.value(metadata i32 %1, metadata !3378, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3383, metadata !DIExpression()), !dbg !3415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3415, !alias.scope !3409, !DIAssignID !3416
  call void @llvm.dbg.assign(metadata i8 0, metadata !3405, metadata !DIExpression(), metadata !3416, metadata ptr %5, metadata !DIExpression()), !dbg !3407
  %6 = icmp eq i32 %1, 10, !dbg !3417
  br i1 %6, label %7, label %8, !dbg !3418

7:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3419, !noalias !3409
  unreachable, !dbg !3419

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3420, !tbaa !2460, !alias.scope !3409, !DIAssignID !3421
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3421, metadata ptr %5, metadata !DIExpression()), !dbg !3407
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3422
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3423
  ret ptr %9, !dbg !3424
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3425 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3431
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3370, metadata !DIExpression(), metadata !3431, metadata ptr %3, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %0, metadata !3368, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %1, metadata !3369, metadata !DIExpression()), !dbg !3433
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3436), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %0, metadata !3378, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3383, metadata !DIExpression()), !dbg !3442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3442, !alias.scope !3436, !DIAssignID !3443
  call void @llvm.dbg.assign(metadata i8 0, metadata !3370, metadata !DIExpression(), metadata !3443, metadata ptr %3, metadata !DIExpression()), !dbg !3433
  %4 = icmp eq i32 %0, 10, !dbg !3444
  br i1 %4, label %5, label %6, !dbg !3445

5:                                                ; preds = %2
  tail call void @abort() #43, !dbg !3446, !noalias !3436
  unreachable, !dbg !3446

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3447, !tbaa !2460, !alias.scope !3436, !DIAssignID !3448
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3448, metadata ptr %3, metadata !DIExpression()), !dbg !3433
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3449
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3450
  ret ptr %7, !dbg !3451
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3452 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3459
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3456, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3457, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3458, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3405, metadata !DIExpression(), metadata !3459, metadata ptr %4, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 0, metadata !3401, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata ptr %1, metadata !3403, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %2, metadata !3404, metadata !DIExpression()), !dbg !3461
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464), !dbg !3467
  call void @llvm.dbg.value(metadata i32 %0, metadata !3378, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3383, metadata !DIExpression()), !dbg !3470
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3470, !alias.scope !3464, !DIAssignID !3471
  call void @llvm.dbg.assign(metadata i8 0, metadata !3405, metadata !DIExpression(), metadata !3471, metadata ptr %4, metadata !DIExpression()), !dbg !3461
  %5 = icmp eq i32 %0, 10, !dbg !3472
  br i1 %5, label %6, label %7, !dbg !3473

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3474, !noalias !3464
  unreachable, !dbg !3474

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3475, !tbaa !2460, !alias.scope !3464, !DIAssignID !3476
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3476, metadata ptr %4, metadata !DIExpression()), !dbg !3461
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3477
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3478
  ret ptr %8, !dbg !3479
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3480 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3488
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3488, metadata ptr %4, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3484, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3485, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3491, !tbaa.struct !3492, !DIAssignID !3493
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3493, metadata ptr %4, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2478, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2480, metadata !DIExpression()), !dbg !3494
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3496
  %6 = lshr i8 %2, 5, !dbg !3497
  %7 = zext nneg i8 %6 to i64, !dbg !3497
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3498
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2481, metadata !DIExpression()), !dbg !3494
  %9 = and i8 %2, 31, !dbg !3499
  %10 = zext nneg i8 %9 to i32, !dbg !3499
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2483, metadata !DIExpression()), !dbg !3494
  %11 = load i32, ptr %8, align 4, !dbg !3500, !tbaa !969
  %12 = lshr i32 %11, %10, !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2484, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3494
  %13 = and i32 %12, 1, !dbg !3502
  %14 = xor i32 %13, 1, !dbg !3502
  %15 = shl nuw i32 %14, %10, !dbg !3503
  %16 = xor i32 %15, %11, !dbg !3504
  store i32 %16, ptr %8, align 4, !dbg !3504, !tbaa !969
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3505
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3506
  ret ptr %17, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3508 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3514
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3514, metadata ptr %3, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %0, metadata !3484, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i64 -1, metadata !3485, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata i8 %1, metadata !3486, metadata !DIExpression()), !dbg !3516
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3519, !tbaa.struct !3492, !DIAssignID !3520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3520, metadata ptr %3, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.value(metadata ptr %3, metadata !2477, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8 %1, metadata !2478, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.value(metadata i8 %1, metadata !2480, metadata !DIExpression()), !dbg !3521
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3523
  %5 = lshr i8 %1, 5, !dbg !3524
  %6 = zext nneg i8 %5 to i64, !dbg !3524
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3525
  call void @llvm.dbg.value(metadata ptr %7, metadata !2481, metadata !DIExpression()), !dbg !3521
  %8 = and i8 %1, 31, !dbg !3526
  %9 = zext nneg i8 %8 to i32, !dbg !3526
  call void @llvm.dbg.value(metadata i32 %9, metadata !2483, metadata !DIExpression()), !dbg !3521
  %10 = load i32, ptr %7, align 4, !dbg !3527, !tbaa !969
  %11 = lshr i32 %10, %9, !dbg !3528
  call void @llvm.dbg.value(metadata i32 %11, metadata !2484, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3521
  %12 = and i32 %11, 1, !dbg !3529
  %13 = xor i32 %12, 1, !dbg !3529
  %14 = shl nuw i32 %13, %9, !dbg !3530
  %15 = xor i32 %14, %10, !dbg !3531
  store i32 %15, ptr %7, align 4, !dbg !3531, !tbaa !969
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3532
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3533
  ret ptr %16, !dbg !3534
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3535 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3538
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata ptr %0, metadata !3512, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8 58, metadata !3513, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3538, metadata ptr %2, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %0, metadata !3484, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i64 -1, metadata !3485, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i8 58, metadata !3486, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #41, !dbg !3544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3545, !tbaa.struct !3492, !DIAssignID !3546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3546, metadata ptr %2, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata ptr %2, metadata !2477, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 58, metadata !2478, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3547
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3549
  call void @llvm.dbg.value(metadata ptr %3, metadata !2481, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i32 26, metadata !2483, metadata !DIExpression()), !dbg !3547
  %4 = load i32, ptr %3, align 4, !dbg !3550, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %4, metadata !2484, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3547
  %5 = or i32 %4, 67108864, !dbg !3551
  store i32 %5, ptr %3, align 4, !dbg !3551, !tbaa !969
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3552
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #41, !dbg !3553
  ret ptr %6, !dbg !3554
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3555 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3559
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3559, metadata ptr %3, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %0, metadata !3484, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i64 %1, metadata !3485, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i8 58, metadata !3486, metadata !DIExpression()), !dbg !3561
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #41, !dbg !3563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3564, !tbaa.struct !3492, !DIAssignID !3565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3487, metadata !DIExpression(), metadata !3565, metadata ptr %3, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata ptr %3, metadata !2477, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8 58, metadata !2478, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3566
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3568
  call void @llvm.dbg.value(metadata ptr %4, metadata !2481, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 26, metadata !2483, metadata !DIExpression()), !dbg !3566
  %5 = load i32, ptr %4, align 4, !dbg !3569, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %5, metadata !2484, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3566
  %6 = or i32 %5, 67108864, !dbg !3570
  store i32 %6, ptr %4, align 4, !dbg !3570, !tbaa !969
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3571
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #41, !dbg !3572
  ret ptr %7, !dbg !3573
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3574 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3580
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3579, metadata !DIExpression(), metadata !3580, metadata ptr %4, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3383, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3582
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3576, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3577, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3578, metadata !DIExpression()), !dbg !3581
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3584
  call void @llvm.dbg.value(metadata i32 %1, metadata !3378, metadata !DIExpression()), !dbg !3585
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3383, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3585
  %5 = icmp eq i32 %1, 10, !dbg !3586
  br i1 %5, label %6, label %7, !dbg !3587

6:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3588, !noalias !3589
  unreachable, !dbg !3588

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3383, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3585
  store i32 %1, ptr %4, align 8, !dbg !3592, !tbaa.struct !3492, !DIAssignID !3593
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3592
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3579, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3593, metadata ptr %4, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3579, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3594, metadata ptr %8, metadata !DIExpression()), !dbg !3581
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2477, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2478, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()), !dbg !3595
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3597
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2481, metadata !DIExpression()), !dbg !3595
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2483, metadata !DIExpression()), !dbg !3595
  %10 = load i32, ptr %9, align 4, !dbg !3598, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2484, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3595
  %11 = or i32 %10, 67108864, !dbg !3599
  store i32 %11, ptr %9, align 4, !dbg !3599, !tbaa !969, !DIAssignID !3600
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3579, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3600, metadata ptr %9, metadata !DIExpression()), !dbg !3581
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3601
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3602
  ret ptr %12, !dbg !3603
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3604 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3612
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3608, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3609, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3610, metadata !DIExpression()), !dbg !3613
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3611, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3612, metadata ptr %5, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 %0, metadata !3619, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %1, metadata !3620, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %2, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %3, metadata !3622, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 -1, metadata !3623, metadata !DIExpression()), !dbg !3624
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3627, !tbaa.struct !3492, !DIAssignID !3628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3628, metadata ptr %5, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3629, metadata ptr undef, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3630
  store i32 10, ptr %5, align 8, !dbg !3632, !tbaa !2460, !DIAssignID !3633
  call void @llvm.dbg.assign(metadata i32 10, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3633, metadata ptr %5, metadata !DIExpression()), !dbg !3624
  %6 = icmp ne ptr %1, null, !dbg !3634
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3635
  br i1 %8, label %10, label %9, !dbg !3635

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3636
  unreachable, !dbg !3636

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3637
  store ptr %1, ptr %11, align 8, !dbg !3638, !tbaa !2531, !DIAssignID !3639
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3639, metadata ptr %11, metadata !DIExpression()), !dbg !3624
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3640
  store ptr %2, ptr %12, align 8, !dbg !3641, !tbaa !2534, !DIAssignID !3642
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3642, metadata ptr %12, metadata !DIExpression()), !dbg !3624
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3643
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3644
  ret ptr %13, !dbg !3645
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3615 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3646, metadata ptr %6, metadata !DIExpression()), !dbg !3647
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3619, metadata !DIExpression()), !dbg !3647
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3620, metadata !DIExpression()), !dbg !3647
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3621, metadata !DIExpression()), !dbg !3647
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3622, metadata !DIExpression()), !dbg !3647
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3623, metadata !DIExpression()), !dbg !3647
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #41, !dbg !3648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3649, !tbaa.struct !3492, !DIAssignID !3650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3650, metadata ptr %6, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3651, metadata ptr undef, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %6, metadata !2517, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %1, metadata !2518, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %2, metadata !2519, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata ptr %6, metadata !2517, metadata !DIExpression()), !dbg !3652
  store i32 10, ptr %6, align 8, !dbg !3654, !tbaa !2460, !DIAssignID !3655
  call void @llvm.dbg.assign(metadata i32 10, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3655, metadata ptr %6, metadata !DIExpression()), !dbg !3647
  %7 = icmp ne ptr %1, null, !dbg !3656
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3657
  br i1 %9, label %11, label %10, !dbg !3657

10:                                               ; preds = %5
  tail call void @abort() #43, !dbg !3658
  unreachable, !dbg !3658

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3659
  store ptr %1, ptr %12, align 8, !dbg !3660, !tbaa !2531, !DIAssignID !3661
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3661, metadata ptr %12, metadata !DIExpression()), !dbg !3647
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3662
  store ptr %2, ptr %13, align 8, !dbg !3663, !tbaa !2534, !DIAssignID !3664
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3664, metadata ptr %13, metadata !DIExpression()), !dbg !3647
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3665
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #41, !dbg !3666
  ret ptr %14, !dbg !3667
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3668 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3675
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3672, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3673, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 0, metadata !3608, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %0, metadata !3609, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %1, metadata !3610, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata ptr %2, metadata !3611, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3675, metadata ptr %4, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 0, metadata !3619, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %0, metadata !3620, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %1, metadata !3621, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %2, metadata !3622, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 -1, metadata !3623, metadata !DIExpression()), !dbg !3679
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #41, !dbg !3681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3682, !tbaa.struct !3492, !DIAssignID !3683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3683, metadata ptr %4, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3684, metadata ptr undef, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata ptr %4, metadata !2517, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata ptr %4, metadata !2517, metadata !DIExpression()), !dbg !3685
  store i32 10, ptr %4, align 8, !dbg !3687, !tbaa !2460, !DIAssignID !3688
  call void @llvm.dbg.assign(metadata i32 10, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3688, metadata ptr %4, metadata !DIExpression()), !dbg !3679
  %5 = icmp ne ptr %0, null, !dbg !3689
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3690
  br i1 %7, label %9, label %8, !dbg !3690

8:                                                ; preds = %3
  tail call void @abort() #43, !dbg !3691
  unreachable, !dbg !3691

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3692
  store ptr %0, ptr %10, align 8, !dbg !3693, !tbaa !2531, !DIAssignID !3694
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3694, metadata ptr %10, metadata !DIExpression()), !dbg !3679
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3695
  store ptr %1, ptr %11, align 8, !dbg !3696, !tbaa !2534, !DIAssignID !3697
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3697, metadata ptr %11, metadata !DIExpression()), !dbg !3679
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3698
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #41, !dbg !3699
  ret ptr %12, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3701 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3709
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3705, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3706, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3707, metadata !DIExpression()), !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3709, metadata ptr %5, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 0, metadata !3619, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %0, metadata !3620, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %1, metadata !3621, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %2, metadata !3622, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %3, metadata !3623, metadata !DIExpression()), !dbg !3711
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #41, !dbg !3713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3714, !tbaa.struct !3492, !DIAssignID !3715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(), metadata !3715, metadata ptr %5, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3716, metadata ptr undef, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %1, metadata !2519, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %5, metadata !2517, metadata !DIExpression()), !dbg !3717
  store i32 10, ptr %5, align 8, !dbg !3719, !tbaa !2460, !DIAssignID !3720
  call void @llvm.dbg.assign(metadata i32 10, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3720, metadata ptr %5, metadata !DIExpression()), !dbg !3711
  %6 = icmp ne ptr %0, null, !dbg !3721
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3722
  br i1 %8, label %10, label %9, !dbg !3722

9:                                                ; preds = %4
  tail call void @abort() #43, !dbg !3723
  unreachable, !dbg !3723

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3724
  store ptr %0, ptr %11, align 8, !dbg !3725, !tbaa !2531, !DIAssignID !3726
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3726, metadata ptr %11, metadata !DIExpression()), !dbg !3711
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3727
  store ptr %1, ptr %12, align 8, !dbg !3728, !tbaa !2534, !DIAssignID !3729
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3614, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3729, metadata ptr %12, metadata !DIExpression()), !dbg !3711
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3730
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #41, !dbg !3731
  ret ptr %13, !dbg !3732
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3733 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3739, metadata !DIExpression()), !dbg !3740
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3741
  ret ptr %4, !dbg !3742
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3743 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3749
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 0, metadata !3737, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3739, metadata !DIExpression()), !dbg !3750
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3752
  ret ptr %3, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3754 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3758, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3759, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata ptr %1, metadata !3738, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 -1, metadata !3739, metadata !DIExpression()), !dbg !3761
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3763
  ret ptr %3, !dbg !3764
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3765 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3769, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i32 0, metadata !3758, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %0, metadata !3759, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 0, metadata !3737, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 -1, metadata !3739, metadata !DIExpression()), !dbg !3773
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3775
  ret ptr %2, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !3777 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()), !dbg !3784
  %2 = icmp ult i32 %0, 3, !dbg !3785
  br i1 %2, label %3, label %8, !dbg !3785

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #41, !dbg !3786
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3780, metadata !DIExpression()), !dbg !3787
  %5 = tail call ptr @__errno_location() #44, !dbg !3788
  %6 = load i32, ptr %5, align 4, !dbg !3788, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3783, metadata !DIExpression()), !dbg !3787
  %7 = tail call i32 @close(i32 noundef %0) #41, !dbg !3789
  store i32 %6, ptr %5, align 4, !dbg !3790, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3779, metadata !DIExpression()), !dbg !3784
  br label %8, !dbg !3791

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3779, metadata !DIExpression()), !dbg !3784
  ret i32 %9, !dbg !3792
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3793 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3831, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3832, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3833, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3834, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3835, metadata !DIExpression()), !dbg !3837
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3836, metadata !DIExpression()), !dbg !3837
  %7 = icmp eq ptr %1, null, !dbg !3838
  br i1 %7, label %10, label %8, !dbg !3840

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #41, !dbg !3841
  br label %12, !dbg !3841

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.135, ptr noundef %2, ptr noundef %3) #41, !dbg !3842
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.3.137, i32 noundef 5) #41, !dbg !3843
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #41, !dbg !3843
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3844
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.5.139, i32 noundef 5) #41, !dbg !3845
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.140) #41, !dbg !3845
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %0), !dbg !3846
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
  ], !dbg !3847

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.7.141, i32 noundef 5) #41, !dbg !3848
  %21 = load ptr, ptr %4, align 8, !dbg !3848, !tbaa !903
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #41, !dbg !3848
  br label %147, !dbg !3850

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.8.142, i32 noundef 5) #41, !dbg !3851
  %25 = load ptr, ptr %4, align 8, !dbg !3851, !tbaa !903
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3851
  %27 = load ptr, ptr %26, align 8, !dbg !3851, !tbaa !903
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #41, !dbg !3851
  br label %147, !dbg !3852

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.9.143, i32 noundef 5) #41, !dbg !3853
  %31 = load ptr, ptr %4, align 8, !dbg !3853, !tbaa !903
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3853
  %33 = load ptr, ptr %32, align 8, !dbg !3853, !tbaa !903
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3853
  %35 = load ptr, ptr %34, align 8, !dbg !3853, !tbaa !903
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #41, !dbg !3853
  br label %147, !dbg !3854

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.10.144, i32 noundef 5) #41, !dbg !3855
  %39 = load ptr, ptr %4, align 8, !dbg !3855, !tbaa !903
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3855
  %41 = load ptr, ptr %40, align 8, !dbg !3855, !tbaa !903
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3855
  %43 = load ptr, ptr %42, align 8, !dbg !3855, !tbaa !903
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3855
  %45 = load ptr, ptr %44, align 8, !dbg !3855, !tbaa !903
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #41, !dbg !3855
  br label %147, !dbg !3856

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.11.145, i32 noundef 5) #41, !dbg !3857
  %49 = load ptr, ptr %4, align 8, !dbg !3857, !tbaa !903
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3857
  %51 = load ptr, ptr %50, align 8, !dbg !3857, !tbaa !903
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3857
  %53 = load ptr, ptr %52, align 8, !dbg !3857, !tbaa !903
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3857
  %55 = load ptr, ptr %54, align 8, !dbg !3857, !tbaa !903
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3857
  %57 = load ptr, ptr %56, align 8, !dbg !3857, !tbaa !903
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #41, !dbg !3857
  br label %147, !dbg !3858

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.12.146, i32 noundef 5) #41, !dbg !3859
  %61 = load ptr, ptr %4, align 8, !dbg !3859, !tbaa !903
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3859
  %63 = load ptr, ptr %62, align 8, !dbg !3859, !tbaa !903
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3859
  %65 = load ptr, ptr %64, align 8, !dbg !3859, !tbaa !903
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3859
  %67 = load ptr, ptr %66, align 8, !dbg !3859, !tbaa !903
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3859
  %69 = load ptr, ptr %68, align 8, !dbg !3859, !tbaa !903
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3859
  %71 = load ptr, ptr %70, align 8, !dbg !3859, !tbaa !903
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #41, !dbg !3859
  br label %147, !dbg !3860

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.13.147, i32 noundef 5) #41, !dbg !3861
  %75 = load ptr, ptr %4, align 8, !dbg !3861, !tbaa !903
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3861
  %77 = load ptr, ptr %76, align 8, !dbg !3861, !tbaa !903
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3861
  %79 = load ptr, ptr %78, align 8, !dbg !3861, !tbaa !903
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3861
  %81 = load ptr, ptr %80, align 8, !dbg !3861, !tbaa !903
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3861
  %83 = load ptr, ptr %82, align 8, !dbg !3861, !tbaa !903
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3861
  %85 = load ptr, ptr %84, align 8, !dbg !3861, !tbaa !903
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3861
  %87 = load ptr, ptr %86, align 8, !dbg !3861, !tbaa !903
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #41, !dbg !3861
  br label %147, !dbg !3862

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.14.148, i32 noundef 5) #41, !dbg !3863
  %91 = load ptr, ptr %4, align 8, !dbg !3863, !tbaa !903
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3863
  %93 = load ptr, ptr %92, align 8, !dbg !3863, !tbaa !903
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3863
  %95 = load ptr, ptr %94, align 8, !dbg !3863, !tbaa !903
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3863
  %97 = load ptr, ptr %96, align 8, !dbg !3863, !tbaa !903
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3863
  %99 = load ptr, ptr %98, align 8, !dbg !3863, !tbaa !903
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3863
  %101 = load ptr, ptr %100, align 8, !dbg !3863, !tbaa !903
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3863
  %103 = load ptr, ptr %102, align 8, !dbg !3863, !tbaa !903
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3863
  %105 = load ptr, ptr %104, align 8, !dbg !3863, !tbaa !903
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #41, !dbg !3863
  br label %147, !dbg !3864

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.15.149, i32 noundef 5) #41, !dbg !3865
  %109 = load ptr, ptr %4, align 8, !dbg !3865, !tbaa !903
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3865
  %111 = load ptr, ptr %110, align 8, !dbg !3865, !tbaa !903
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3865
  %113 = load ptr, ptr %112, align 8, !dbg !3865, !tbaa !903
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3865
  %115 = load ptr, ptr %114, align 8, !dbg !3865, !tbaa !903
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3865
  %117 = load ptr, ptr %116, align 8, !dbg !3865, !tbaa !903
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3865
  %119 = load ptr, ptr %118, align 8, !dbg !3865, !tbaa !903
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3865
  %121 = load ptr, ptr %120, align 8, !dbg !3865, !tbaa !903
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3865
  %123 = load ptr, ptr %122, align 8, !dbg !3865, !tbaa !903
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3865
  %125 = load ptr, ptr %124, align 8, !dbg !3865, !tbaa !903
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #41, !dbg !3865
  br label %147, !dbg !3866

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.16.150, i32 noundef 5) #41, !dbg !3867
  %129 = load ptr, ptr %4, align 8, !dbg !3867, !tbaa !903
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3867
  %131 = load ptr, ptr %130, align 8, !dbg !3867, !tbaa !903
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3867
  %133 = load ptr, ptr %132, align 8, !dbg !3867, !tbaa !903
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3867
  %135 = load ptr, ptr %134, align 8, !dbg !3867, !tbaa !903
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3867
  %137 = load ptr, ptr %136, align 8, !dbg !3867, !tbaa !903
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3867
  %139 = load ptr, ptr %138, align 8, !dbg !3867, !tbaa !903
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3867
  %141 = load ptr, ptr %140, align 8, !dbg !3867, !tbaa !903
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3867
  %143 = load ptr, ptr %142, align 8, !dbg !3867, !tbaa !903
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3867
  %145 = load ptr, ptr %144, align 8, !dbg !3867, !tbaa !903
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #41, !dbg !3867
  br label %147, !dbg !3868

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3869
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3870 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3874, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3875, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3876, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3877, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3878, metadata !DIExpression()), !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3879, metadata !DIExpression()), !dbg !3880
  br label %6, !dbg !3881

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3879, metadata !DIExpression()), !dbg !3880
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3884
  %9 = load ptr, ptr %8, align 8, !dbg !3884, !tbaa !903
  %10 = icmp eq ptr %9, null, !dbg !3886
  %11 = add i64 %7, 1, !dbg !3887
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3879, metadata !DIExpression()), !dbg !3880
  br i1 %10, label %12, label %6, !dbg !3886, !llvm.loop !3888

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3890
  ret void, !dbg !3891
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3892 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3911
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3909, metadata !DIExpression(), metadata !3911, metadata ptr %6, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3903, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3904, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3905, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3906, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3907, metadata !DIExpression()), !dbg !3912
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #41, !dbg !3913
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3908, metadata !DIExpression()), !dbg !3912
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3908, metadata !DIExpression()), !dbg !3912
  %10 = icmp ult i32 %9, 41, !dbg !3914
  br i1 %10, label %11, label %16, !dbg !3914

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3914
  %13 = zext nneg i32 %9 to i64, !dbg !3914
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3914
  %15 = add nuw nsw i32 %9, 8, !dbg !3914
  store i32 %15, ptr %4, align 8, !dbg !3914
  br label %19, !dbg !3914

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3914
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3914
  store ptr %18, ptr %7, align 8, !dbg !3914
  br label %19, !dbg !3914

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3914
  %22 = load ptr, ptr %21, align 8, !dbg !3914
  store ptr %22, ptr %6, align 16, !dbg !3917, !tbaa !903
  %23 = icmp eq ptr %22, null, !dbg !3918
  br i1 %23, label %128, label %24, !dbg !3919

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()), !dbg !3912
  %25 = icmp ult i32 %20, 41, !dbg !3914
  br i1 %25, label %29, label %26, !dbg !3914

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3914
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3914
  store ptr %28, ptr %7, align 8, !dbg !3914
  br label %34, !dbg !3914

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3914
  %31 = zext nneg i32 %20 to i64, !dbg !3914
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3914
  %33 = add nuw nsw i32 %20, 8, !dbg !3914
  store i32 %33, ptr %4, align 8, !dbg !3914
  br label %34, !dbg !3914

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3914
  %37 = load ptr, ptr %36, align 8, !dbg !3914
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3920
  store ptr %37, ptr %38, align 8, !dbg !3917, !tbaa !903
  %39 = icmp eq ptr %37, null, !dbg !3918
  br i1 %39, label %128, label %40, !dbg !3919

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3908, metadata !DIExpression()), !dbg !3912
  %41 = icmp ult i32 %35, 41, !dbg !3914
  br i1 %41, label %45, label %42, !dbg !3914

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3914
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3914
  store ptr %44, ptr %7, align 8, !dbg !3914
  br label %50, !dbg !3914

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3914
  %47 = zext nneg i32 %35 to i64, !dbg !3914
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3914
  %49 = add nuw nsw i32 %35, 8, !dbg !3914
  store i32 %49, ptr %4, align 8, !dbg !3914
  br label %50, !dbg !3914

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3914
  %53 = load ptr, ptr %52, align 8, !dbg !3914
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3920
  store ptr %53, ptr %54, align 16, !dbg !3917, !tbaa !903
  %55 = icmp eq ptr %53, null, !dbg !3918
  br i1 %55, label %128, label %56, !dbg !3919

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3908, metadata !DIExpression()), !dbg !3912
  %57 = icmp ult i32 %51, 41, !dbg !3914
  br i1 %57, label %61, label %58, !dbg !3914

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3914
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3914
  store ptr %60, ptr %7, align 8, !dbg !3914
  br label %66, !dbg !3914

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3914
  %63 = zext nneg i32 %51 to i64, !dbg !3914
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3914
  %65 = add nuw nsw i32 %51, 8, !dbg !3914
  store i32 %65, ptr %4, align 8, !dbg !3914
  br label %66, !dbg !3914

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3914
  %69 = load ptr, ptr %68, align 8, !dbg !3914
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3920
  store ptr %69, ptr %70, align 8, !dbg !3917, !tbaa !903
  %71 = icmp eq ptr %69, null, !dbg !3918
  br i1 %71, label %128, label %72, !dbg !3919

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3908, metadata !DIExpression()), !dbg !3912
  %73 = icmp ult i32 %67, 41, !dbg !3914
  br i1 %73, label %77, label %74, !dbg !3914

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3914
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3914
  store ptr %76, ptr %7, align 8, !dbg !3914
  br label %82, !dbg !3914

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3914
  %79 = zext nneg i32 %67 to i64, !dbg !3914
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3914
  %81 = add nuw nsw i32 %67, 8, !dbg !3914
  store i32 %81, ptr %4, align 8, !dbg !3914
  br label %82, !dbg !3914

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3914
  %85 = load ptr, ptr %84, align 8, !dbg !3914
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3920
  store ptr %85, ptr %86, align 16, !dbg !3917, !tbaa !903
  %87 = icmp eq ptr %85, null, !dbg !3918
  br i1 %87, label %128, label %88, !dbg !3919

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3908, metadata !DIExpression()), !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3908, metadata !DIExpression()), !dbg !3912
  %89 = icmp ult i32 %83, 41, !dbg !3914
  br i1 %89, label %93, label %90, !dbg !3914

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3914
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3914
  store ptr %92, ptr %7, align 8, !dbg !3914
  br label %98, !dbg !3914

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3914
  %95 = zext nneg i32 %83 to i64, !dbg !3914
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3914
  %97 = add nuw nsw i32 %83, 8, !dbg !3914
  store i32 %97, ptr %4, align 8, !dbg !3914
  br label %98, !dbg !3914

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3914
  %100 = load ptr, ptr %99, align 8, !dbg !3914
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3920
  store ptr %100, ptr %101, align 8, !dbg !3917, !tbaa !903
  %102 = icmp eq ptr %100, null, !dbg !3918
  br i1 %102, label %128, label %103, !dbg !3919

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3908, metadata !DIExpression()), !dbg !3912
  %104 = load ptr, ptr %7, align 8, !dbg !3914
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3914
  store ptr %105, ptr %7, align 8, !dbg !3914
  %106 = load ptr, ptr %104, align 8, !dbg !3914
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3920
  store ptr %106, ptr %107, align 16, !dbg !3917, !tbaa !903
  %108 = icmp eq ptr %106, null, !dbg !3918
  br i1 %108, label %128, label %109, !dbg !3919

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3908, metadata !DIExpression()), !dbg !3912
  %110 = load ptr, ptr %7, align 8, !dbg !3914
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3914
  store ptr %111, ptr %7, align 8, !dbg !3914
  %112 = load ptr, ptr %110, align 8, !dbg !3914
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3920
  store ptr %112, ptr %113, align 8, !dbg !3917, !tbaa !903
  %114 = icmp eq ptr %112, null, !dbg !3918
  br i1 %114, label %128, label %115, !dbg !3919

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3908, metadata !DIExpression()), !dbg !3912
  %116 = load ptr, ptr %7, align 8, !dbg !3914
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3914
  store ptr %117, ptr %7, align 8, !dbg !3914
  %118 = load ptr, ptr %116, align 8, !dbg !3914
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3920
  store ptr %118, ptr %119, align 16, !dbg !3917, !tbaa !903
  %120 = icmp eq ptr %118, null, !dbg !3918
  br i1 %120, label %128, label %121, !dbg !3919

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3908, metadata !DIExpression()), !dbg !3912
  %122 = load ptr, ptr %7, align 8, !dbg !3914
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3914
  store ptr %123, ptr %7, align 8, !dbg !3914
  %124 = load ptr, ptr %122, align 8, !dbg !3914
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3920
  store ptr %124, ptr %125, align 8, !dbg !3917, !tbaa !903
  %126 = icmp eq ptr %124, null, !dbg !3918
  %127 = select i1 %126, i64 9, i64 10, !dbg !3919
  br label %128, !dbg !3919

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3921
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3922
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #41, !dbg !3923
  ret void, !dbg !3923
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3924 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3932, metadata !DIExpression(), metadata !3937, metadata ptr %5, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3928, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3929, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3930, metadata !DIExpression()), !dbg !3938
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3931, metadata !DIExpression()), !dbg !3938
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #41, !dbg !3939
  call void @llvm.va_start(ptr nonnull %5), !dbg !3940
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3941
  call void @llvm.va_end(ptr nonnull %5), !dbg !3942
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #41, !dbg !3943
  ret void, !dbg !3943
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3944 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3945, !tbaa !903
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.138, ptr noundef %1), !dbg !3945
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.17.155, i32 noundef 5) #41, !dbg !3946
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.156) #41, !dbg !3946
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.19.157, i32 noundef 5) #41, !dbg !3947
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.158, ptr noundef nonnull @.str.21.159) #41, !dbg !3947
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.136, ptr noundef nonnull @.str.22.160, i32 noundef 5) #41, !dbg !3948
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.161) #41, !dbg !3948
  ret void, !dbg !3949
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3956, metadata !DIExpression()), !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i64 %2, metadata !3963, metadata !DIExpression()), !dbg !3964
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !3972
  %5 = icmp eq ptr %4, null, !dbg !3974
  br i1 %5, label %6, label %7, !dbg !3976

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !3977
  unreachable, !dbg !3977

7:                                                ; preds = %3
  ret ptr %4, !dbg !3978
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3960 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3979
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3963, metadata !DIExpression()), !dbg !3979
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !3981
  %5 = icmp eq ptr %4, null, !dbg !3983
  br i1 %5, label %6, label %7, !dbg !3984

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !3985
  unreachable, !dbg !3985

7:                                                ; preds = %3
  ret ptr %4, !dbg !3986
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !3987 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !3992
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !3993
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !3994
  %3 = icmp eq ptr %2, null, !dbg !3996
  br i1 %3, label %4, label %5, !dbg !3997

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !3998
  unreachable, !dbg !3998

5:                                                ; preds = %1
  ret ptr %2, !dbg !3999
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4000 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4001 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4005, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %0, metadata !4007, metadata !DIExpression()), !dbg !4011
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4013
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4014
  %3 = icmp eq ptr %2, null, !dbg !4016
  br i1 %3, label %4, label %5, !dbg !4017

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4018
  unreachable, !dbg !4018

5:                                                ; preds = %1
  ret ptr %2, !dbg !4019
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4020 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !4026
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #49, !dbg !4028
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4029
  %3 = icmp eq ptr %2, null, !dbg !4031
  br i1 %3, label %4, label %5, !dbg !4032

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4033
  unreachable, !dbg !4033

5:                                                ; preds = %1
  ret ptr %2, !dbg !4034
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4047
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4049
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4050
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4051
  %5 = icmp eq ptr %4, null, !dbg !4053
  br i1 %5, label %6, label %7, !dbg !4054

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4055
  unreachable, !dbg !4055

7:                                                ; preds = %2
  ret ptr %4, !dbg !4056
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4057 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4058 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4062, metadata !DIExpression()), !dbg !4064
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata ptr %0, metadata !4065, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %1, metadata !4068, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4046, metadata !DIExpression()), !dbg !4071
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4073
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #48, !dbg !4074
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4075
  %5 = icmp eq ptr %4, null, !dbg !4077
  br i1 %5, label %6, label %7, !dbg !4078

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4079
  unreachable, !dbg !4079

7:                                                ; preds = %2
  ret ptr %4, !dbg !4080
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !4081 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4085, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4086, metadata !DIExpression()), !dbg !4088
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata ptr %0, metadata !4089, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %1, metadata !4092, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i64 %2, metadata !4093, metadata !DIExpression()), !dbg !4094
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #41, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4097
  %5 = icmp eq ptr %4, null, !dbg !4099
  br i1 %5, label %6, label %7, !dbg !4100

6:                                                ; preds = %3
  tail call void @xalloc_die() #43, !dbg !4101
  unreachable, !dbg !4101

7:                                                ; preds = %3
  ret ptr %4, !dbg !4102
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4103 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4107, metadata !DIExpression()), !dbg !4109
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata ptr null, metadata !3959, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3962, metadata !DIExpression()), !dbg !4110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3963, metadata !DIExpression()), !dbg !4110
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4112
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4113
  %4 = icmp eq ptr %3, null, !dbg !4115
  br i1 %4, label %5, label %6, !dbg !4116

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4117
  unreachable, !dbg !4117

6:                                                ; preds = %2
  ret ptr %3, !dbg !4118
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4119 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr null, metadata !4085, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %0, metadata !4086, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 %1, metadata !4087, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr null, metadata !4089, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %0, metadata !4092, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 %1, metadata !4093, metadata !DIExpression()), !dbg !4128
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #41, !dbg !4130
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4131
  %4 = icmp eq ptr %3, null, !dbg !4133
  br i1 %4, label %5, label %6, !dbg !4134

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4135
  unreachable, !dbg !4135

6:                                                ; preds = %2
  ret ptr %3, !dbg !4136
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4141, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !838, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %1, metadata !839, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 1, metadata !840, metadata !DIExpression()), !dbg !4144
  %3 = load i64, ptr %1, align 8, !dbg !4146, !tbaa !3198
  call void @llvm.dbg.value(metadata i64 %3, metadata !841, metadata !DIExpression()), !dbg !4144
  %4 = icmp eq ptr %0, null, !dbg !4147
  br i1 %4, label %5, label %8, !dbg !4149

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4150
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4153
  br label %15, !dbg !4153

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4154
  %10 = add nuw i64 %9, 1, !dbg !4154
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4154
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4154
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %13, metadata !841, metadata !DIExpression()), !dbg !4144
  br i1 %12, label %14, label %15, !dbg !4157

14:                                               ; preds = %8
  tail call void @xalloc_die() #43, !dbg !4158
  unreachable, !dbg !4158

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4144
  call void @llvm.dbg.value(metadata i64 %16, metadata !841, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %16, metadata !3962, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 1, metadata !3963, metadata !DIExpression()), !dbg !4159
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #41, !dbg !4161
  call void @llvm.dbg.value(metadata ptr %17, metadata !3967, metadata !DIExpression()), !dbg !4162
  %18 = icmp eq ptr %17, null, !dbg !4164
  br i1 %18, label %19, label %20, !dbg !4165

19:                                               ; preds = %15
  tail call void @xalloc_die() #43, !dbg !4166
  unreachable, !dbg !4166

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !838, metadata !DIExpression()), !dbg !4144
  store i64 %16, ptr %1, align 8, !dbg !4167, !tbaa !3198
  ret ptr %17, !dbg !4168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !833 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !838, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !839, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !840, metadata !DIExpression()), !dbg !4169
  %4 = load i64, ptr %1, align 8, !dbg !4170, !tbaa !3198
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !841, metadata !DIExpression()), !dbg !4169
  %5 = icmp eq ptr %0, null, !dbg !4171
  br i1 %5, label %6, label %13, !dbg !4172

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4173
  br i1 %7, label %8, label %20, !dbg !4174

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4175
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !841, metadata !DIExpression()), !dbg !4169
  %10 = icmp ugt i64 %2, 128, !dbg !4177
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4178
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !841, metadata !DIExpression()), !dbg !4169
  br label %20, !dbg !4179

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4180
  %15 = add nuw i64 %14, 1, !dbg !4180
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4180
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4180
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4180
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !841, metadata !DIExpression()), !dbg !4169
  br i1 %17, label %19, label %20, !dbg !4181

19:                                               ; preds = %13
  tail call void @xalloc_die() #43, !dbg !4182
  unreachable, !dbg !4182

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !841, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata ptr %0, metadata !3959, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %21, metadata !3962, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %2, metadata !3963, metadata !DIExpression()), !dbg !4183
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #41, !dbg !4185
  call void @llvm.dbg.value(metadata ptr %22, metadata !3967, metadata !DIExpression()), !dbg !4186
  %23 = icmp eq ptr %22, null, !dbg !4188
  br i1 %23, label %24, label %25, !dbg !4189

24:                                               ; preds = %20
  tail call void @xalloc_die() #43, !dbg !4190
  unreachable, !dbg !4190

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !838, metadata !DIExpression()), !dbg !4169
  store i64 %21, ptr %1, align 8, !dbg !4191, !tbaa !3198
  ret ptr %22, !dbg !4192
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !845 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !854, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !855, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !856, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !857, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !858, metadata !DIExpression()), !dbg !4193
  %6 = load i64, ptr %1, align 8, !dbg !4194, !tbaa !3198
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !859, metadata !DIExpression()), !dbg !4193
  %7 = ashr i64 %6, 1, !dbg !4195
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4195
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4195
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4195
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !860, metadata !DIExpression()), !dbg !4193
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !860, metadata !DIExpression()), !dbg !4193
  %12 = icmp sgt i64 %3, -1, !dbg !4198
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4200
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !860, metadata !DIExpression()), !dbg !4193
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4201
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4201
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !861, metadata !DIExpression()), !dbg !4193
  %18 = icmp slt i64 %17, 128, !dbg !4201
  %19 = select i1 %18, i64 128, i64 0, !dbg !4201
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4201
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !862, metadata !DIExpression()), !dbg !4193
  %21 = icmp eq i64 %20, 0, !dbg !4202
  br i1 %21, label %26, label %22, !dbg !4204

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4205
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !860, metadata !DIExpression()), !dbg !4193
  %24 = srem i64 %20, %4, !dbg !4207
  %25 = sub nsw i64 %20, %24, !dbg !4208
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !861, metadata !DIExpression()), !dbg !4193
  br label %26, !dbg !4209

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4193
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !861, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !860, metadata !DIExpression()), !dbg !4193
  %29 = icmp eq ptr %0, null, !dbg !4210
  br i1 %29, label %30, label %31, !dbg !4212

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4213, !tbaa !3198
  br label %31, !dbg !4214

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4215
  %33 = icmp slt i64 %32, %2, !dbg !4217
  br i1 %33, label %34, label %46, !dbg !4218

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4219
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4219
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !860, metadata !DIExpression()), !dbg !4193
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4220
  br i1 %40, label %45, label %41, !dbg !4220

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4221
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4221
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4221
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !861, metadata !DIExpression()), !dbg !4193
  br i1 %43, label %45, label %46, !dbg !4222

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #43, !dbg !4223
  unreachable, !dbg !4223

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4193
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !861, metadata !DIExpression()), !dbg !4193
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !860, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 %48, metadata !4040, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %0, metadata !4042, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i64 %48, metadata !4046, metadata !DIExpression()), !dbg !4226
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4228
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #48, !dbg !4229
  call void @llvm.dbg.value(metadata ptr %50, metadata !3967, metadata !DIExpression()), !dbg !4230
  %51 = icmp eq ptr %50, null, !dbg !4232
  br i1 %51, label %52, label %53, !dbg !4233

52:                                               ; preds = %46
  tail call void @xalloc_die() #43, !dbg !4234
  unreachable, !dbg !4234

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !854, metadata !DIExpression()), !dbg !4193
  store i64 %47, ptr %1, align 8, !dbg !4235, !tbaa !3198
  ret ptr %50, !dbg !4236
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4237 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4239, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i64 1, metadata !4244, metadata !DIExpression()), !dbg !4245
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4247
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4248
  %3 = icmp eq ptr %2, null, !dbg !4250
  br i1 %3, label %4, label %5, !dbg !4251

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4252
  unreachable, !dbg !4252

5:                                                ; preds = %1
  ret ptr %2, !dbg !4253
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4254 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4242 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4241, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4244, metadata !DIExpression()), !dbg !4255
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4256
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4257
  %4 = icmp eq ptr %3, null, !dbg !4259
  br i1 %4, label %5, label %6, !dbg !4260

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4261
  unreachable, !dbg !4261

6:                                                ; preds = %2
  ret ptr %3, !dbg !4262
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #33 !dbg !4263 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 1, metadata !4270, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 1, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 1, metadata !4276, metadata !DIExpression()), !dbg !4277
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4279
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !4280
  %3 = icmp eq ptr %2, null, !dbg !4282
  br i1 %3, label %4, label %5, !dbg !4283

4:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4284
  unreachable, !dbg !4284

5:                                                ; preds = %1
  ret ptr %2, !dbg !4285
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #37 !dbg !4268 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4286
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4270, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %0, metadata !4273, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()), !dbg !4287
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4290
  %4 = icmp eq ptr %3, null, !dbg !4292
  br i1 %4, label %5, label %6, !dbg !4293

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4294
  unreachable, !dbg !4294

6:                                                ; preds = %2
  ret ptr %3, !dbg !4295
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4296 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3991, metadata !DIExpression()), !dbg !4303
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4305
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4306
  %4 = icmp eq ptr %3, null, !dbg !4308
  br i1 %4, label %5, label %6, !dbg !4309

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4310
  unreachable, !dbg !4310

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4311, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata ptr %0, metadata !4317, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4321
  ret ptr %3, !dbg !4322
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4323 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4327, metadata !DIExpression()), !dbg !4329
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4328, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i64 %1, metadata !4007, metadata !DIExpression()), !dbg !4332
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #49, !dbg !4334
  call void @llvm.dbg.value(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4335
  %4 = icmp eq ptr %3, null, !dbg !4337
  br i1 %4, label %5, label %6, !dbg !4338

5:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4339
  unreachable, !dbg !4339

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4311, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata ptr %0, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4342
  ret ptr %3, !dbg !4343
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4344 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4348, metadata !DIExpression()), !dbg !4351
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()), !dbg !4351
  %3 = add nsw i64 %1, 1, !dbg !4352
  call void @llvm.dbg.value(metadata i64 %3, metadata !4005, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i64 %3, metadata !4007, metadata !DIExpression()), !dbg !4355
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4357
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4358
  %5 = icmp eq ptr %4, null, !dbg !4360
  br i1 %5, label %6, label %7, !dbg !4361

6:                                                ; preds = %2
  tail call void @xalloc_die() #43, !dbg !4362
  unreachable, !dbg !4362

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4350, metadata !DIExpression()), !dbg !4351
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4363
  store i8 0, ptr %8, align 1, !dbg !4364, !tbaa !978
  call void @llvm.dbg.value(metadata ptr %4, metadata !4311, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata ptr %0, metadata !4317, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i64 %1, metadata !4318, metadata !DIExpression()), !dbg !4365
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41, !dbg !4367
  ret ptr %4, !dbg !4368
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4369 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4371, metadata !DIExpression()), !dbg !4372
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42, !dbg !4373
  %3 = add i64 %2, 1, !dbg !4374
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %3, metadata !4301, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.value(metadata i64 %3, metadata !3991, metadata !DIExpression()), !dbg !4377
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #49, !dbg !4379
  call void @llvm.dbg.value(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !4380
  %5 = icmp eq ptr %4, null, !dbg !4382
  br i1 %5, label %6, label %7, !dbg !4383

6:                                                ; preds = %1
  tail call void @xalloc_die() #43, !dbg !4384
  unreachable, !dbg !4384

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4311, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata ptr %0, metadata !4317, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata i64 %3, metadata !4318, metadata !DIExpression()), !dbg !4385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41, !dbg !4387
  ret ptr %4, !dbg !4388
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4389 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4393, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4391, metadata !DIExpression()), !dbg !4394
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.174, ptr noundef nonnull @.str.2.175, i32 noundef 5) #41, !dbg !4393
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.176, ptr noundef %2) #41, !dbg !4393
  %3 = icmp eq i32 %1, 0, !dbg !4393
  tail call void @llvm.assume(i1 %3), !dbg !4393
  tail call void @abort() #43, !dbg !4395
  unreachable, !dbg !4395
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4396 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4434, metadata !DIExpression()), !dbg !4439
  %2 = tail call i64 @__fpending(ptr noundef %0) #41, !dbg !4440
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4435, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4439
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4441, metadata !DIExpression()), !dbg !4444
  %3 = load i32, ptr %0, align 8, !dbg !4446, !tbaa !4447
  %4 = and i32 %3, 32, !dbg !4448
  %5 = icmp eq i32 %4, 0, !dbg !4448
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4437, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4439
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #41, !dbg !4449
  %7 = icmp eq i32 %6, 0, !dbg !4450
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4438, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4439
  br i1 %5, label %8, label %18, !dbg !4451

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4453
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4435, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4439
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4454
  %11 = xor i1 %7, true, !dbg !4454
  %12 = sext i1 %11 to i32, !dbg !4454
  br i1 %10, label %21, label %13, !dbg !4454

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #44, !dbg !4455
  %15 = load i32, ptr %14, align 4, !dbg !4455, !tbaa !969
  %16 = icmp ne i32 %15, 9, !dbg !4456
  %17 = sext i1 %16 to i32, !dbg !4457
  br label %21, !dbg !4457

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4458

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #44, !dbg !4460
  store i32 0, ptr %20, align 4, !dbg !4462, !tbaa !969
  br label %21, !dbg !4460

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4439
  ret i32 %22, !dbg !4463
}

; Function Attrs: nounwind
declare !dbg !4464 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4468 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4506, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4507, metadata !DIExpression()), !dbg !4510
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4511
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4508, metadata !DIExpression()), !dbg !4510
  %3 = icmp slt i32 %2, 0, !dbg !4512
  br i1 %3, label %4, label %6, !dbg !4514

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4515
  br label %24, !dbg !4516

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4517
  %8 = icmp eq i32 %7, 0, !dbg !4517
  br i1 %8, label %13, label %9, !dbg !4519

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4520
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41, !dbg !4521
  %12 = icmp eq i64 %11, -1, !dbg !4522
  br i1 %12, label %16, label %13, !dbg !4523

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #41, !dbg !4524
  %15 = icmp eq i32 %14, 0, !dbg !4524
  br i1 %15, label %16, label %18, !dbg !4525

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4507, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4509, metadata !DIExpression()), !dbg !4510
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4526
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4509, metadata !DIExpression()), !dbg !4510
  br label %24, !dbg !4527

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #44, !dbg !4528
  %20 = load i32, ptr %19, align 4, !dbg !4528, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4507, metadata !DIExpression()), !dbg !4510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4509, metadata !DIExpression()), !dbg !4510
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4526
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4509, metadata !DIExpression()), !dbg !4510
  %22 = icmp eq i32 %20, 0, !dbg !4529
  br i1 %22, label %24, label %23, !dbg !4527

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4531, !tbaa !969
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4509, metadata !DIExpression()), !dbg !4510
  br label %24, !dbg !4533

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4510
  ret i32 %25, !dbg !4534
}

; Function Attrs: nofree nounwind
declare !dbg !4535 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4536 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4537 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4540 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4578, metadata !DIExpression()), !dbg !4579
  %2 = icmp eq ptr %0, null, !dbg !4580
  br i1 %2, label %6, label %3, !dbg !4582

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #41, !dbg !4583
  %5 = icmp eq i32 %4, 0, !dbg !4583
  br i1 %5, label %6, label %8, !dbg !4584

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4585
  br label %16, !dbg !4586

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4587, metadata !DIExpression()), !dbg !4592
  %9 = load i32, ptr %0, align 8, !dbg !4594, !tbaa !4447
  %10 = and i32 %9, 256, !dbg !4596
  %11 = icmp eq i32 %10, 0, !dbg !4596
  br i1 %11, label %14, label %12, !dbg !4597

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41, !dbg !4598
  br label %14, !dbg !4598

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4599
  br label %16, !dbg !4600

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4579
  ret i32 %17, !dbg !4601
}

; Function Attrs: nofree nounwind
declare !dbg !4602 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4603 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4641, metadata !DIExpression()), !dbg !4647
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4642, metadata !DIExpression()), !dbg !4647
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4643, metadata !DIExpression()), !dbg !4647
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4648
  %5 = load ptr, ptr %4, align 8, !dbg !4648, !tbaa !4649
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4650
  %7 = load ptr, ptr %6, align 8, !dbg !4650, !tbaa !4651
  %8 = icmp eq ptr %5, %7, !dbg !4652
  br i1 %8, label %9, label %27, !dbg !4653

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4654
  %11 = load ptr, ptr %10, align 8, !dbg !4654, !tbaa !1827
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4655
  %13 = load ptr, ptr %12, align 8, !dbg !4655, !tbaa !4656
  %14 = icmp eq ptr %11, %13, !dbg !4657
  br i1 %14, label %15, label %27, !dbg !4658

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4659
  %17 = load ptr, ptr %16, align 8, !dbg !4659, !tbaa !4660
  %18 = icmp eq ptr %17, null, !dbg !4661
  br i1 %18, label %19, label %27, !dbg !4662

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #41, !dbg !4663
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41, !dbg !4664
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4644, metadata !DIExpression()), !dbg !4665
  %22 = icmp eq i64 %21, -1, !dbg !4666
  br i1 %22, label %29, label %23, !dbg !4668

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4669, !tbaa !4447
  %25 = and i32 %24, -17, !dbg !4669
  store i32 %25, ptr %0, align 8, !dbg !4669, !tbaa !4447
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4670
  store i64 %21, ptr %26, align 8, !dbg !4671, !tbaa !4672
  br label %29, !dbg !4673

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4674
  br label %29, !dbg !4675

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4647
  ret i32 %30, !dbg !4676
}

; Function Attrs: nofree nounwind
declare !dbg !4677 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4680 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4685, metadata !DIExpression()), !dbg !4690
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4686, metadata !DIExpression()), !dbg !4690
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4687, metadata !DIExpression()), !dbg !4690
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4688, metadata !DIExpression()), !dbg !4690
  %5 = icmp eq ptr %1, null, !dbg !4691
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4693
  %7 = select i1 %5, ptr @.str.187, ptr %1, !dbg !4693
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4693
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4687, metadata !DIExpression()), !dbg !4690
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4686, metadata !DIExpression()), !dbg !4690
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4685, metadata !DIExpression()), !dbg !4690
  %9 = icmp eq ptr %3, null, !dbg !4694
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4696
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4688, metadata !DIExpression()), !dbg !4690
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #41, !dbg !4697
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4689, metadata !DIExpression()), !dbg !4690
  %12 = icmp ult i64 %11, -3, !dbg !4698
  br i1 %12, label %13, label %17, !dbg !4700

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #42, !dbg !4701
  %15 = icmp eq i32 %14, 0, !dbg !4701
  br i1 %15, label %16, label %29, !dbg !4702

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4703, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata ptr %10, metadata !4710, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i32 0, metadata !4713, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i64 8, metadata !4714, metadata !DIExpression()), !dbg !4715
  store i64 0, ptr %10, align 1, !dbg !4717
  br label %29, !dbg !4718

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4719
  br i1 %18, label %19, label %20, !dbg !4721

19:                                               ; preds = %17
  tail call void @abort() #43, !dbg !4722
  unreachable, !dbg !4722

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4723

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #41, !dbg !4725
  br i1 %23, label %29, label %24, !dbg !4726

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4727
  br i1 %25, label %29, label %26, !dbg !4730

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4731, !tbaa !978
  %28 = zext i8 %27 to i32, !dbg !4732
  store i32 %28, ptr %6, align 4, !dbg !4733, !tbaa !969
  br label %29, !dbg !4734

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4690
  ret i64 %30, !dbg !4735
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4736 i32 @mbsinit(ptr noundef) local_unnamed_addr #39

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #40 !dbg !4742 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4744, metadata !DIExpression()), !dbg !4748
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4745, metadata !DIExpression()), !dbg !4748
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4746, metadata !DIExpression()), !dbg !4748
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4749
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4749
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4747, metadata !DIExpression()), !dbg !4748
  br i1 %5, label %6, label %8, !dbg !4751

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #44, !dbg !4752
  store i32 12, ptr %7, align 4, !dbg !4754, !tbaa !969
  br label %12, !dbg !4755

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4749
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4747, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata ptr %0, metadata !4756, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i64 %9, metadata !4759, metadata !DIExpression()), !dbg !4760
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4762
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #48, !dbg !4763
  br label %12, !dbg !4764

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4748
  ret ptr %13, !dbg !4765
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #10 !dbg !4766 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4768, metadata !DIExpression()), !dbg !4769
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #41, !dbg !4770
  ret i32 %2, !dbg !4771
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !4772 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4798
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4776, metadata !DIExpression(), metadata !4798, metadata ptr %3, metadata !DIExpression()), !dbg !4799
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4774, metadata !DIExpression()), !dbg !4799
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4775, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41, !dbg !4800
  call void @llvm.va_start(ptr nonnull %3), !dbg !4801
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4786, metadata !DIExpression()), !dbg !4799
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
  ], !dbg !4802

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !4803
  %6 = icmp ult i32 %5, 41, !dbg !4803
  br i1 %6, label %7, label %13, !dbg !4803

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4803
  %9 = load ptr, ptr %8, align 16, !dbg !4803
  %10 = zext nneg i32 %5 to i64, !dbg !4803
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !4803
  %12 = add nuw nsw i32 %5, 8, !dbg !4803
  store i32 %12, ptr %3, align 16, !dbg !4803, !DIAssignID !4804
  call void @llvm.dbg.assign(metadata i32 %12, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4804, metadata ptr %3, metadata !DIExpression()), !dbg !4799
  br label %17, !dbg !4803

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4803
  %15 = load ptr, ptr %14, align 8, !dbg !4803
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !4803
  store ptr %16, ptr %14, align 8, !dbg !4803, !DIAssignID !4805
  call void @llvm.dbg.assign(metadata ptr %16, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4805, metadata ptr %14, metadata !DIExpression()), !dbg !4799
  br label %17, !dbg !4803

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !4803
  %19 = load i32, ptr %18, align 4, !dbg !4803
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4787, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i32 %0, metadata !4807, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 %19, metadata !4810, metadata !DIExpression()), !dbg !4812
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #41, !dbg !4814
  call void @llvm.dbg.value(metadata i32 %20, metadata !4811, metadata !DIExpression()), !dbg !4812
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4786, metadata !DIExpression()), !dbg !4799
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !4815
  %23 = icmp ult i32 %22, 41, !dbg !4815
  br i1 %23, label %24, label %30, !dbg !4815

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4815
  %26 = load ptr, ptr %25, align 16, !dbg !4815
  %27 = zext nneg i32 %22 to i64, !dbg !4815
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !4815
  %29 = add nuw nsw i32 %22, 8, !dbg !4815
  store i32 %29, ptr %3, align 16, !dbg !4815, !DIAssignID !4816
  call void @llvm.dbg.assign(metadata i32 %29, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4816, metadata ptr %3, metadata !DIExpression()), !dbg !4799
  br label %34, !dbg !4815

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4815
  %32 = load ptr, ptr %31, align 8, !dbg !4815
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !4815
  store ptr %33, ptr %31, align 8, !dbg !4815, !DIAssignID !4817
  call void @llvm.dbg.assign(metadata ptr %33, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4817, metadata ptr %31, metadata !DIExpression()), !dbg !4799
  br label %34, !dbg !4815

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !4815
  %36 = load i32, ptr %35, align 4, !dbg !4815
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4790, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 %0, metadata !795, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 %36, metadata !796, metadata !DIExpression()), !dbg !4819
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4821, !tbaa !969
  %38 = icmp sgt i32 %37, -1, !dbg !4823
  br i1 %38, label %39, label %51, !dbg !4824

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #41, !dbg !4825
  call void @llvm.dbg.value(metadata i32 %40, metadata !797, metadata !DIExpression()), !dbg !4819
  %41 = icmp sgt i32 %40, -1, !dbg !4827
  br i1 %41, label %46, label %42, !dbg !4829

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #44, !dbg !4830
  %44 = load i32, ptr %43, align 4, !dbg !4830, !tbaa !969
  %45 = icmp eq i32 %44, 22, !dbg !4831
  br i1 %45, label %47, label %46, !dbg !4832

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4833, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %40, metadata !797, metadata !DIExpression()), !dbg !4819
  br label %107, !dbg !4835

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !4807, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 %36, metadata !4810, metadata !DIExpression()), !dbg !4836
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #41, !dbg !4839
  call void @llvm.dbg.value(metadata i32 %48, metadata !4811, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.value(metadata i32 %48, metadata !797, metadata !DIExpression()), !dbg !4819
  %49 = icmp sgt i32 %48, -1, !dbg !4840
  br i1 %49, label %50, label %107, !dbg !4842

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !4843, !tbaa !969
  br label %55, !dbg !4844

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !4807, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.value(metadata i32 %36, metadata !4810, metadata !DIExpression()), !dbg !4845
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #41, !dbg !4847
  call void @llvm.dbg.value(metadata i32 %52, metadata !4811, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.value(metadata i32 %52, metadata !797, metadata !DIExpression()), !dbg !4819
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !4848
  call void @llvm.dbg.value(metadata i32 %57, metadata !797, metadata !DIExpression()), !dbg !4819
  %58 = icmp sgt i32 %57, -1, !dbg !4849
  %59 = select i1 %58, i1 %56, i1 false, !dbg !4835
  br i1 %59, label %60, label %107, !dbg !4835

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #41, !dbg !4850
  call void @llvm.dbg.value(metadata i32 %61, metadata !798, metadata !DIExpression()), !dbg !4851
  %62 = icmp slt i32 %61, 0, !dbg !4852
  br i1 %62, label %67, label %63, !dbg !4853

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !4854
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #41, !dbg !4855
  %66 = icmp eq i32 %65, -1, !dbg !4856
  br i1 %66, label %67, label %107, !dbg !4857

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #44, !dbg !4858
  %69 = load i32, ptr %68, align 4, !dbg !4858, !tbaa !969
  call void @llvm.dbg.value(metadata i32 %69, metadata !801, metadata !DIExpression()), !dbg !4859
  %70 = call i32 @close(i32 noundef %57) #41, !dbg !4860
  store i32 %69, ptr %68, align 4, !dbg !4861, !tbaa !969
  call void @llvm.dbg.value(metadata i32 -1, metadata !797, metadata !DIExpression()), !dbg !4819
  br label %107, !dbg !4862

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41, !dbg !4863
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4786, metadata !DIExpression()), !dbg !4799
  br label %107, !dbg !4864

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !4865
  %75 = icmp ult i32 %74, 41, !dbg !4865
  br i1 %75, label %76, label %82, !dbg !4865

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4865
  %78 = load ptr, ptr %77, align 16, !dbg !4865
  %79 = zext nneg i32 %74 to i64, !dbg !4865
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4865
  %81 = add nuw nsw i32 %74, 8, !dbg !4865
  store i32 %81, ptr %3, align 16, !dbg !4865, !DIAssignID !4866
  call void @llvm.dbg.assign(metadata i32 %81, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4866, metadata ptr %3, metadata !DIExpression()), !dbg !4799
  br label %86, !dbg !4865

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4865
  %84 = load ptr, ptr %83, align 8, !dbg !4865
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !4865
  store ptr %85, ptr %83, align 8, !dbg !4865, !DIAssignID !4867
  call void @llvm.dbg.assign(metadata ptr %85, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4867, metadata ptr %83, metadata !DIExpression()), !dbg !4799
  br label %86, !dbg !4865

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !4865
  %88 = load i32, ptr %87, align 4, !dbg !4865
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !4792, metadata !DIExpression()), !dbg !4868
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #41, !dbg !4869
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !4786, metadata !DIExpression()), !dbg !4799
  br label %107, !dbg !4870

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !4871
  %92 = icmp ult i32 %91, 41, !dbg !4871
  br i1 %92, label %93, label %99, !dbg !4871

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !4871
  %95 = load ptr, ptr %94, align 16, !dbg !4871
  %96 = zext nneg i32 %91 to i64, !dbg !4871
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !4871
  %98 = add nuw nsw i32 %91, 8, !dbg !4871
  store i32 %98, ptr %3, align 16, !dbg !4871, !DIAssignID !4872
  call void @llvm.dbg.assign(metadata i32 %98, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4872, metadata ptr %3, metadata !DIExpression()), !dbg !4799
  br label %103, !dbg !4871

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !4871
  %101 = load ptr, ptr %100, align 8, !dbg !4871
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !4871
  store ptr %102, ptr %100, align 8, !dbg !4871, !DIAssignID !4873
  call void @llvm.dbg.assign(metadata ptr %102, metadata !4776, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !4873, metadata ptr %100, metadata !DIExpression()), !dbg !4799
  br label %103, !dbg !4871

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !4871
  %105 = load ptr, ptr %104, align 8, !dbg !4871
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !4796, metadata !DIExpression()), !dbg !4874
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #41, !dbg !4875
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !4786, metadata !DIExpression()), !dbg !4799
  br label %107, !dbg !4876

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !4877
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !4786, metadata !DIExpression()), !dbg !4799
  call void @llvm.va_end(ptr nonnull %3), !dbg !4878
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41, !dbg !4879
  ret i32 %108, !dbg !4880
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4881 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4888
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4884, metadata !DIExpression(), metadata !4888, metadata ptr %2, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4883, metadata !DIExpression()), !dbg !4889
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #41, !dbg !4890
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #41, !dbg !4891
  %4 = icmp eq i32 %3, 0, !dbg !4891
  br i1 %4, label %5, label %12, !dbg !4893

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4894, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata !936, metadata !4897, metadata !DIExpression()), !dbg !4898
  %6 = load i16, ptr %2, align 16, !dbg !4901
  %7 = icmp eq i16 %6, 67, !dbg !4901
  br i1 %7, label %11, label %8, !dbg !4902

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4894, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata ptr @.str.1.196, metadata !4897, metadata !DIExpression()), !dbg !4903
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.196, i64 6), !dbg !4905
  %10 = icmp eq i32 %9, 0, !dbg !4906
  br i1 %10, label %11, label %12, !dbg !4907

11:                                               ; preds = %8, %5
  br label %12, !dbg !4908

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4889
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #41, !dbg !4909
  ret i1 %13, !dbg !4909
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4910 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4914, metadata !DIExpression()), !dbg !4917
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4915, metadata !DIExpression()), !dbg !4917
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4916, metadata !DIExpression()), !dbg !4917
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #41, !dbg !4918
  ret i32 %4, !dbg !4919
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4920 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4924, metadata !DIExpression()), !dbg !4925
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #41, !dbg !4926
  ret ptr %2, !dbg !4927
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4928 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4930, metadata !DIExpression()), !dbg !4932
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !4933
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4931, metadata !DIExpression()), !dbg !4932
  ret ptr %2, !dbg !4934
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4935 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4937, metadata !DIExpression()), !dbg !4944
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4938, metadata !DIExpression()), !dbg !4944
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4939, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 %0, metadata !4930, metadata !DIExpression()), !dbg !4945
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #41, !dbg !4947
  call void @llvm.dbg.value(metadata ptr %4, metadata !4931, metadata !DIExpression()), !dbg !4945
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4940, metadata !DIExpression()), !dbg !4944
  %5 = icmp eq ptr %4, null, !dbg !4948
  br i1 %5, label %6, label %9, !dbg !4949

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4950
  br i1 %7, label %19, label %8, !dbg !4953

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4954, !tbaa !978
  br label %19, !dbg !4955

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #42, !dbg !4956
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4941, metadata !DIExpression()), !dbg !4957
  %11 = icmp ult i64 %10, %2, !dbg !4958
  br i1 %11, label %12, label %14, !dbg !4960

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4961
  call void @llvm.dbg.value(metadata ptr %1, metadata !4963, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %4, metadata !4966, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata i64 %13, metadata !4967, metadata !DIExpression()), !dbg !4968
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #41, !dbg !4970
  br label %19, !dbg !4971

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4972
  br i1 %15, label %19, label %16, !dbg !4975

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4976
  call void @llvm.dbg.value(metadata ptr %1, metadata !4963, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.value(metadata ptr %4, metadata !4966, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.value(metadata i64 %17, metadata !4967, metadata !DIExpression()), !dbg !4978
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41, !dbg !4980
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4981
  store i8 0, ptr %18, align 1, !dbg !4982, !tbaa !978
  br label %19, !dbg !4983

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4984
  ret i32 %20, !dbg !4985
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind }
attributes #42 = { nounwind willreturn memory(read) }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind willreturn memory(none) }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(0,1) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }
attributes #49 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!73, !807, !439, !443, !475, !490, !757, !809, !814, !816, !818, !535, !549, !597, !820, !822, !749, !829, !864, !866, !868, !870, !872, !773, !874, !876, !792, !878, !882, !884}
!llvm.ident = !{!886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886, !886}
!llvm.module.flags = !{!887, !888, !889, !890, !891, !892, !893}

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
!493 = !{!494, !496, !515, !517, !519, !521, !488, !523, !525, !527, !529, !531}
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !491, line: 272, type: !265, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "old_file_name", scope: !498, file: !491, line: 304, type: !141, isLocal: true, isDefinition: true)
!498 = distinct !DISubprogram(name: "verror_at_line", scope: !491, file: !491, line: 298, type: !499, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !508)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !85, !85, !141, !76, !141, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !503)
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !502, file: !491, baseType: !76, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !502, file: !491, baseType: !76, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !502, file: !491, baseType: !131, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !502, file: !491, baseType: !131, size: 64, offset: 128)
!508 = !{!509, !510, !511, !512, !513, !514}
!509 = !DILocalVariable(name: "status", arg: 1, scope: !498, file: !491, line: 298, type: !85)
!510 = !DILocalVariable(name: "errnum", arg: 2, scope: !498, file: !491, line: 298, type: !85)
!511 = !DILocalVariable(name: "file_name", arg: 3, scope: !498, file: !491, line: 298, type: !141)
!512 = !DILocalVariable(name: "line_number", arg: 4, scope: !498, file: !491, line: 298, type: !76)
!513 = !DILocalVariable(name: "message", arg: 5, scope: !498, file: !491, line: 298, type: !141)
!514 = !DILocalVariable(name: "args", arg: 6, scope: !498, file: !491, line: 298, type: !501)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "old_line_number", scope: !498, file: !491, line: 305, type: !76, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !491, line: 338, type: !19, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !301, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !491, line: 346, type: !279, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "error_message_count", scope: !490, file: !491, line: 69, type: !76, isLocal: false, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !490, file: !491, line: 295, type: !85, isLocal: false, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !296, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !491, line: 208, type: !461, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !491, line: 214, type: !265, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "program_name", scope: !535, file: !536, line: 31, type: !141, isLocal: false, isDefinition: true)
!535 = distinct !DICompileUnit(language: DW_LANG_C11, file: !536, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !537, globals: !538, splitDebugInlining: false, nameTableKind: None)
!536 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!537 = !{!131, !130}
!538 = !{!533, !539, !541}
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !536, line: 46, type: !301, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !536, line: 49, type: !19, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "utf07FF", scope: !545, file: !546, line: 46, type: !573, isLocal: true, isDefinition: true)
!545 = distinct !DISubprogram(name: "proper_name_lite", scope: !546, file: !546, line: 38, type: !547, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !551)
!546 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!547 = !DISubroutineType(types: !548)
!548 = !{!141, !141, !141}
!549 = distinct !DICompileUnit(language: DW_LANG_C11, file: !546, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !550, splitDebugInlining: false, nameTableKind: None)
!550 = !{!543}
!551 = !{!552, !553, !554, !555, !560}
!552 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !545, file: !546, line: 38, type: !141)
!553 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !545, file: !546, line: 38, type: !141)
!554 = !DILocalVariable(name: "translation", scope: !545, file: !546, line: 40, type: !141)
!555 = !DILocalVariable(name: "w", scope: !545, file: !546, line: 47, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !557, line: 37, baseType: !558)
!557 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !235, line: 57, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !235, line: 42, baseType: !76)
!560 = !DILocalVariable(name: "mbs", scope: !545, file: !546, line: 48, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !562, line: 6, baseType: !563)
!562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !564, line: 21, baseType: !565)
!564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 13, size: 64, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !565, file: !564, line: 15, baseType: !85, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !565, file: !564, line: 20, baseType: !569, size: 32, offset: 32)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !565, file: !564, line: 16, size: 32, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !569, file: !564, line: 18, baseType: !76, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !569, file: !564, line: 19, baseType: !19, size: 32)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 16, elements: !280)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !576, line: 78, type: !301, isLocal: true, isDefinition: true)
!576 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !576, line: 79, type: !274, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !576, line: 80, type: !375, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !576, line: 81, type: !375, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !576, line: 82, type: !162, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !576, line: 83, type: !279, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !576, line: 84, type: !301, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !576, line: 85, type: !296, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !576, line: 86, type: !296, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !576, line: 87, type: !301, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !597, file: !576, line: 76, type: !669, isLocal: false, isDefinition: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C11, file: !576, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !598, retainedTypes: !604, globals: !605, splitDebugInlining: false, nameTableKind: None)
!598 = !{!446, !599, !89}
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !447, line: 254, baseType: !76, size: 32, elements: !600)
!600 = !{!601, !602, !603}
!601 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!602 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!603 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!604 = !{!131, !85, !137, !138}
!605 = !{!574, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !606, !610, !620, !622, !627, !629, !631, !633, !635, !658, !665, !667}
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !597, file: !576, line: 92, type: !608, isLocal: false, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 320, elements: !62)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !597, file: !576, line: 1040, type: !612, isLocal: false, isDefinition: true)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !576, line: 56, size: 448, elements: !613)
!613 = !{!614, !615, !616, !618, !619}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !612, file: !576, line: 59, baseType: !446, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !576, line: 62, baseType: !85, size: 32, offset: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !612, file: !576, line: 66, baseType: !617, size: 256, offset: 64)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !302)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !612, file: !576, line: 69, baseType: !141, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !612, file: !576, line: 72, baseType: !141, size: 64, offset: 384)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !597, file: !576, line: 107, type: !612, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "slot0", scope: !597, file: !576, line: 831, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 256)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !576, line: 321, type: !279, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !576, line: 357, type: !279, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !576, line: 358, type: !279, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !576, line: 199, type: !296, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "quote", scope: !637, file: !576, line: 228, type: !656, isLocal: true, isDefinition: true)
!637 = distinct !DISubprogram(name: "gettext_quote", scope: !576, file: !576, line: 197, type: !638, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!141, !141, !446}
!640 = !{!641, !642, !643, !644, !645}
!641 = !DILocalVariable(name: "msgid", arg: 1, scope: !637, file: !576, line: 197, type: !141)
!642 = !DILocalVariable(name: "s", arg: 2, scope: !637, file: !576, line: 197, type: !446)
!643 = !DILocalVariable(name: "translation", scope: !637, file: !576, line: 199, type: !141)
!644 = !DILocalVariable(name: "w", scope: !637, file: !576, line: 229, type: !556)
!645 = !DILocalVariable(name: "mbs", scope: !637, file: !576, line: 230, type: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !562, line: 6, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !564, line: 21, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 13, size: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !648, file: !564, line: 15, baseType: !85, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !648, file: !564, line: 20, baseType: !652, size: 32, offset: 32)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !564, line: 16, size: 32, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !652, file: !564, line: 18, baseType: !76, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !652, file: !564, line: 19, baseType: !19, size: 32)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !657)
!657 = !{!281, !21}
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "slotvec", scope: !597, file: !576, line: 834, type: !660, isLocal: true, isDefinition: true)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !576, line: 823, size: 128, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !661, file: !576, line: 825, baseType: !138, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !576, line: 826, baseType: !130, size: 64, offset: 64)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(name: "nslots", scope: !597, file: !576, line: 832, type: !85, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(name: "slotvec0", scope: !597, file: !576, line: 833, type: !661, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 704, elements: !405)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !672, line: 67, type: !157, isLocal: true, isDefinition: true)
!672 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !672, line: 69, type: !296, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !672, line: 83, type: !296, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !672, line: 83, type: !19, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !672, line: 85, type: !279, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !672, line: 88, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 171)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !672, line: 88, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 34)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !672, line: 105, type: !167, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !672, line: 109, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 23)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !672, line: 113, type: !700, isLocal: true, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 28)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !672, line: 120, type: !705, isLocal: true, isDefinition: true)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 32)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !672, line: 127, type: !710, isLocal: true, isDefinition: true)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 36)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !672, line: 134, type: !323, isLocal: true, isDefinition: true)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(scope: null, file: !672, line: 142, type: !717, isLocal: true, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !430)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !672, line: 150, type: !720, isLocal: true, isDefinition: true)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 48)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(scope: null, file: !672, line: 159, type: !725, isLocal: true, isDefinition: true)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 52)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !672, line: 170, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 60)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !672, line: 248, type: !162, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !672, line: 248, type: !342, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !162, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !152, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !323, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !672, line: 259, type: !3, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !672, line: 259, type: !456, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !749, file: !750, line: 26, type: !752, isLocal: false, isDefinition: true)
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !751, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!751 = !{!747}
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 376, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 47)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "exit_failure", scope: !757, file: !758, line: 24, type: !760, isLocal: false, isDefinition: true)
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!759 = !{!755}
!760 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !763, line: 34, type: !172, isLocal: true, isDefinition: true)
!763 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !763, line: 34, type: !296, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !763, line: 34, type: !318, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !770, line: 108, type: !56, isLocal: true, isDefinition: true)
!770 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "internal_state", scope: !773, file: !770, line: 97, type: !776, isLocal: true, isDefinition: true)
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !774, globals: !775, splitDebugInlining: false, nameTableKind: None)
!774 = !{!131, !138, !143}
!775 = !{!768, !771}
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !562, line: 6, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !564, line: 21, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 13, size: 64, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !778, file: !564, line: 15, baseType: !85, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !778, file: !564, line: 20, baseType: !782, size: 32, offset: 32)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !564, line: 16, size: 32, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !782, file: !564, line: 18, baseType: !76, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !782, file: !564, line: 19, baseType: !19, size: 32)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !788, file: !789, line: 506, type: !85, isLocal: true, isDefinition: true)
!788 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !789, file: !789, line: 485, type: !790, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !794)
!789 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!790 = !DISubroutineType(types: !791)
!791 = !{!85, !85, !85}
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !793, splitDebugInlining: false, nameTableKind: None)
!793 = !{!786}
!794 = !{!795, !796, !797, !798, !801}
!795 = !DILocalVariable(name: "fd", arg: 1, scope: !788, file: !789, line: 485, type: !85)
!796 = !DILocalVariable(name: "target", arg: 2, scope: !788, file: !789, line: 485, type: !85)
!797 = !DILocalVariable(name: "result", scope: !788, file: !789, line: 487, type: !85)
!798 = !DILocalVariable(name: "flags", scope: !799, file: !789, line: 530, type: !85)
!799 = distinct !DILexicalBlock(scope: !800, file: !789, line: 529, column: 5)
!800 = distinct !DILexicalBlock(scope: !788, file: !789, line: 528, column: 7)
!801 = !DILocalVariable(name: "saved_errno", scope: !802, file: !789, line: 533, type: !85)
!802 = distinct !DILexicalBlock(scope: !803, file: !789, line: 532, column: 9)
!803 = distinct !DILexicalBlock(scope: !799, file: !789, line: 531, column: 11)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !806, line: 35, type: !274, isLocal: true, isDefinition: true)
!806 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!807 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/iopoll.o -MD -MP -MF src/.deps/iopoll.Tpo -c src/iopoll.c -o src/.iopoll.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !808, splitDebugInlining: false, nameTableKind: None)
!808 = !{!419, !425, !427, !432}
!809 = distinct !DICompileUnit(language: DW_LANG_C11, file: !810, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !811, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!811 = !{!812}
!812 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !813, line: 44, baseType: !76, size: 32, elements: !106)
!813 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!814 = distinct !DICompileUnit(language: DW_LANG_C11, file: !815, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-open-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-open-safer.Tpo -c lib/open-safer.c -o lib/.libcoreutils_a-open-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!815 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!816 = distinct !DICompileUnit(language: DW_LANG_C11, file: !817, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!818 = distinct !DICompileUnit(language: DW_LANG_C11, file: !819, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-isapipe.o -MD -MP -MF lib/.deps/libcoreutils_a-isapipe.Tpo -c lib/isapipe.c -o lib/.libcoreutils_a-isapipe.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!820 = distinct !DICompileUnit(language: DW_LANG_C11, file: !821, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer.Tpo -c lib/fd-safer.c -o lib/.libcoreutils_a-fd-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!821 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !823, retainedTypes: !827, globals: !828, splitDebugInlining: false, nameTableKind: None)
!823 = !{!824}
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !672, line: 40, baseType: !76, size: 32, elements: !825)
!825 = !{!826}
!826 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!827 = !{!131}
!828 = !{!670, !673, !675, !677, !679, !681, !686, !691, !693, !698, !703, !708, !713, !715, !718, !723, !728, !733, !735, !737, !739, !741, !743, !745}
!829 = distinct !DICompileUnit(language: DW_LANG_C11, file: !830, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !831, retainedTypes: !863, splitDebugInlining: false, nameTableKind: None)
!830 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!831 = !{!832, !844}
!832 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !833, file: !830, line: 188, baseType: !76, size: 32, elements: !842)
!833 = distinct !DISubprogram(name: "x2nrealloc", scope: !830, file: !830, line: 176, type: !834, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !837)
!834 = !DISubroutineType(types: !835)
!835 = !{!131, !131, !836, !138}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!837 = !{!838, !839, !840, !841}
!838 = !DILocalVariable(name: "p", arg: 1, scope: !833, file: !830, line: 176, type: !131)
!839 = !DILocalVariable(name: "pn", arg: 2, scope: !833, file: !830, line: 176, type: !836)
!840 = !DILocalVariable(name: "s", arg: 3, scope: !833, file: !830, line: 176, type: !138)
!841 = !DILocalVariable(name: "n", scope: !833, file: !830, line: 178, type: !138)
!842 = !{!843}
!843 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!844 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !845, file: !830, line: 228, baseType: !76, size: 32, elements: !842)
!845 = distinct !DISubprogram(name: "xpalloc", scope: !830, file: !830, line: 223, type: !846, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !853)
!846 = !DISubroutineType(types: !847)
!847 = !{!131, !131, !848, !849, !851, !849}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !850, line: 130, baseType: !851)
!850 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !852, line: 18, baseType: !236)
!852 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!853 = !{!854, !855, !856, !857, !858, !859, !860, !861, !862}
!854 = !DILocalVariable(name: "pa", arg: 1, scope: !845, file: !830, line: 223, type: !131)
!855 = !DILocalVariable(name: "pn", arg: 2, scope: !845, file: !830, line: 223, type: !848)
!856 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !845, file: !830, line: 223, type: !849)
!857 = !DILocalVariable(name: "n_max", arg: 4, scope: !845, file: !830, line: 223, type: !851)
!858 = !DILocalVariable(name: "s", arg: 5, scope: !845, file: !830, line: 223, type: !849)
!859 = !DILocalVariable(name: "n0", scope: !845, file: !830, line: 230, type: !849)
!860 = !DILocalVariable(name: "n", scope: !845, file: !830, line: 237, type: !849)
!861 = !DILocalVariable(name: "nbytes", scope: !845, file: !830, line: 248, type: !849)
!862 = !DILocalVariable(name: "adjusted_nbytes", scope: !845, file: !830, line: 252, type: !849)
!863 = !{!130, !131}
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !865, splitDebugInlining: false, nameTableKind: None)
!865 = !{!761, !764, !766}
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !827, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !873, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !827, splitDebugInlining: false, nameTableKind: None)
!873 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!874 = distinct !DICompileUnit(language: DW_LANG_C11, file: !875, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !827, splitDebugInlining: false, nameTableKind: None)
!875 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer.Tpo -c lib/dup-safer.c -o lib/.libcoreutils_a-dup-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !879, splitDebugInlining: false, nameTableKind: None)
!879 = !{!880, !804}
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !806, line: 35, type: !279, isLocal: true, isDefinition: true)
!882 = distinct !DICompileUnit(language: DW_LANG_C11, file: !883, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!884 = distinct !DICompileUnit(language: DW_LANG_C11, file: !885, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !827, splitDebugInlining: false, nameTableKind: None)
!885 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!886 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!887 = !{i32 7, !"Dwarf Version", i32 5}
!888 = !{i32 2, !"Debug Info Version", i32 3}
!889 = !{i32 1, !"wchar_size", i32 4}
!890 = !{i32 8, !"PIC Level", i32 2}
!891 = !{i32 7, !"PIE Level", i32 2}
!892 = !{i32 7, !"uwtable", i32 2}
!893 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!894 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 81, type: !135, scopeLine: 82, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !895)
!895 = !{!896}
!896 = !DILocalVariable(name: "status", arg: 1, scope: !894, file: !2, line: 81, type: !85)
!897 = !DILocation(line: 0, scope: !894)
!898 = !DILocation(line: 83, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !2, line: 83, column: 7)
!900 = !DILocation(line: 83, column: 7, scope: !894)
!901 = !DILocation(line: 84, column: 5, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !2, line: 84, column: 5)
!903 = !{!904, !904, i64 0}
!904 = !{!"any pointer", !905, i64 0}
!905 = !{!"omnipotent char", !906, i64 0}
!906 = !{!"Simple C/C++ TBAA"}
!907 = !DILocation(line: 87, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !899, file: !2, line: 86, column: 5)
!909 = !DILocation(line: 88, column: 7, scope: !908)
!910 = !DILocation(line: 92, column: 7, scope: !908)
!911 = !DILocation(line: 96, column: 7, scope: !908)
!912 = !DILocation(line: 100, column: 7, scope: !908)
!913 = !DILocation(line: 104, column: 7, scope: !908)
!914 = !DILocation(line: 108, column: 7, scope: !908)
!915 = !DILocation(line: 109, column: 7, scope: !908)
!916 = !DILocation(line: 110, column: 7, scope: !908)
!917 = !DILocalVariable(name: "program", arg: 1, scope: !918, file: !84, line: 836, type: !141)
!918 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !84, file: !84, line: 836, type: !919, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !141}
!921 = !{!917, !922, !929, !930, !932, !933}
!922 = !DILocalVariable(name: "infomap", scope: !918, file: !84, line: 838, type: !923)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 896, elements: !297)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !918, file: !84, line: 838, size: 128, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !925, file: !84, line: 838, baseType: !141, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !925, file: !84, line: 838, baseType: !141, size: 64, offset: 64)
!929 = !DILocalVariable(name: "node", scope: !918, file: !84, line: 848, type: !141)
!930 = !DILocalVariable(name: "map_prog", scope: !918, file: !84, line: 849, type: !931)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!932 = !DILocalVariable(name: "lc_messages", scope: !918, file: !84, line: 861, type: !141)
!933 = !DILocalVariable(name: "url_program", scope: !918, file: !84, line: 874, type: !141)
!934 = !DILocation(line: 0, scope: !918, inlinedAt: !935)
!935 = distinct !DILocation(line: 123, column: 7, scope: !908)
!936 = !{}
!937 = !DILocation(line: 857, column: 3, scope: !918, inlinedAt: !935)
!938 = !DILocation(line: 861, column: 29, scope: !918, inlinedAt: !935)
!939 = !DILocation(line: 862, column: 7, scope: !940, inlinedAt: !935)
!940 = distinct !DILexicalBlock(scope: !918, file: !84, line: 862, column: 7)
!941 = !DILocation(line: 862, column: 19, scope: !940, inlinedAt: !935)
!942 = !DILocation(line: 862, column: 22, scope: !940, inlinedAt: !935)
!943 = !DILocation(line: 862, column: 7, scope: !918, inlinedAt: !935)
!944 = !DILocation(line: 868, column: 7, scope: !945, inlinedAt: !935)
!945 = distinct !DILexicalBlock(scope: !940, file: !84, line: 863, column: 5)
!946 = !DILocation(line: 870, column: 5, scope: !945, inlinedAt: !935)
!947 = !DILocation(line: 875, column: 3, scope: !918, inlinedAt: !935)
!948 = !DILocation(line: 877, column: 3, scope: !918, inlinedAt: !935)
!949 = !DILocation(line: 125, column: 3, scope: !894)
!950 = !DISubprogram(name: "dcgettext", scope: !951, file: !951, line: 51, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!952 = !DISubroutineType(types: !953)
!953 = !{!130, !141, !141, !85}
!954 = !DISubprogram(name: "__fprintf_chk", scope: !955, file: !955, line: 93, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!956 = !DISubroutineType(types: !957)
!957 = !{!85, !958, !85, !959, null}
!958 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !208)
!959 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!960 = !DISubprogram(name: "__printf_chk", scope: !955, file: !955, line: 95, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubroutineType(types: !962)
!962 = !{!85, !85, !959, null}
!963 = !DISubprogram(name: "fputs_unlocked", scope: !964, file: !964, line: 691, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!965 = !DISubroutineType(types: !966)
!966 = !{!85, !959, !958}
!967 = !DILocation(line: 0, scope: !186)
!968 = !DILocation(line: 581, column: 7, scope: !194)
!969 = !{!970, !970, i64 0}
!970 = !{!"int", !905, i64 0}
!971 = !DILocation(line: 581, column: 19, scope: !194)
!972 = !DILocation(line: 581, column: 7, scope: !186)
!973 = !DILocation(line: 585, column: 26, scope: !193)
!974 = !DILocation(line: 0, scope: !193)
!975 = !DILocation(line: 586, column: 23, scope: !193)
!976 = !DILocation(line: 586, column: 28, scope: !193)
!977 = !DILocation(line: 586, column: 32, scope: !193)
!978 = !{!905, !905, i64 0}
!979 = !DILocation(line: 586, column: 38, scope: !193)
!980 = !DILocalVariable(name: "__s1", arg: 1, scope: !981, file: !982, line: 1359, type: !141)
!981 = distinct !DISubprogram(name: "streq", scope: !982, file: !982, line: 1359, type: !983, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !985)
!982 = !DIFile(filename: "./lib/string.h", directory: "/src")
!983 = !DISubroutineType(types: !984)
!984 = !{!179, !141, !141}
!985 = !{!980, !986}
!986 = !DILocalVariable(name: "__s2", arg: 2, scope: !981, file: !982, line: 1359, type: !141)
!987 = !DILocation(line: 0, scope: !981, inlinedAt: !988)
!988 = distinct !DILocation(line: 586, column: 41, scope: !193)
!989 = !DILocation(line: 1361, column: 11, scope: !981, inlinedAt: !988)
!990 = !DILocation(line: 1361, column: 10, scope: !981, inlinedAt: !988)
!991 = !DILocation(line: 586, column: 19, scope: !193)
!992 = !DILocation(line: 587, column: 5, scope: !193)
!993 = !DILocation(line: 588, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !186, file: !84, line: 588, column: 7)
!995 = !DILocation(line: 588, column: 7, scope: !186)
!996 = !DILocation(line: 590, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !84, line: 589, column: 5)
!998 = !DILocation(line: 591, column: 7, scope: !997)
!999 = !DILocation(line: 595, column: 37, scope: !186)
!1000 = !DILocation(line: 595, column: 35, scope: !186)
!1001 = !DILocation(line: 596, column: 29, scope: !186)
!1002 = !DILocation(line: 597, column: 8, scope: !201)
!1003 = !DILocation(line: 597, column: 7, scope: !186)
!1004 = !DILocation(line: 604, column: 24, scope: !200)
!1005 = !DILocation(line: 604, column: 12, scope: !201)
!1006 = !DILocation(line: 0, scope: !199)
!1007 = !DILocation(line: 610, column: 16, scope: !199)
!1008 = !DILocation(line: 610, column: 7, scope: !199)
!1009 = !DILocation(line: 611, column: 21, scope: !199)
!1010 = !{!1011, !1011, i64 0}
!1011 = !{!"short", !905, i64 0}
!1012 = !DILocation(line: 611, column: 19, scope: !199)
!1013 = !DILocation(line: 611, column: 16, scope: !199)
!1014 = !DILocation(line: 610, column: 30, scope: !199)
!1015 = distinct !{!1015, !1008, !1009, !1016}
!1016 = !{!"llvm.loop.mustprogress"}
!1017 = !DILocation(line: 612, column: 18, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !199, file: !84, line: 612, column: 11)
!1019 = !DILocation(line: 612, column: 11, scope: !199)
!1020 = !DILocation(line: 620, column: 23, scope: !186)
!1021 = !DILocation(line: 625, column: 39, scope: !186)
!1022 = !DILocation(line: 626, column: 3, scope: !186)
!1023 = !DILocation(line: 626, column: 10, scope: !186)
!1024 = !DILocation(line: 626, column: 21, scope: !186)
!1025 = !DILocation(line: 628, column: 44, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !84, line: 628, column: 11)
!1027 = distinct !DILexicalBlock(scope: !186, file: !84, line: 627, column: 5)
!1028 = !DILocation(line: 628, column: 32, scope: !1026)
!1029 = !DILocation(line: 628, column: 49, scope: !1026)
!1030 = !DILocation(line: 628, column: 11, scope: !1027)
!1031 = !DILocation(line: 630, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !84, line: 630, column: 11)
!1033 = !DILocation(line: 630, column: 11, scope: !1027)
!1034 = !DILocation(line: 632, column: 26, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !84, line: 632, column: 15)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !84, line: 631, column: 9)
!1037 = !DILocation(line: 632, column: 34, scope: !1035)
!1038 = !DILocation(line: 632, column: 37, scope: !1035)
!1039 = !DILocation(line: 632, column: 15, scope: !1036)
!1040 = !DILocation(line: 636, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !84, line: 636, column: 15)
!1042 = !DILocation(line: 636, column: 29, scope: !1041)
!1043 = !DILocation(line: 640, column: 16, scope: !1027)
!1044 = distinct !{!1044, !1022, !1045, !1016}
!1045 = !DILocation(line: 641, column: 5, scope: !186)
!1046 = !DILocation(line: 644, column: 3, scope: !186)
!1047 = !DILocation(line: 0, scope: !981, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 648, column: 31, scope: !186)
!1049 = !DILocation(line: 0, scope: !981, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 649, column: 31, scope: !186)
!1051 = !DILocation(line: 0, scope: !981, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 650, column: 31, scope: !186)
!1053 = !DILocation(line: 0, scope: !981, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 651, column: 31, scope: !186)
!1055 = !DILocation(line: 0, scope: !981, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 652, column: 31, scope: !186)
!1057 = !DILocation(line: 0, scope: !981, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 653, column: 31, scope: !186)
!1059 = !DILocation(line: 0, scope: !981, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 654, column: 31, scope: !186)
!1061 = !DILocation(line: 0, scope: !981, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 655, column: 31, scope: !186)
!1063 = !DILocation(line: 0, scope: !981, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 656, column: 31, scope: !186)
!1065 = !DILocation(line: 0, scope: !981, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 657, column: 31, scope: !186)
!1067 = !DILocation(line: 663, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !186, file: !84, line: 663, column: 7)
!1069 = !DILocation(line: 664, column: 7, scope: !1068)
!1070 = !DILocation(line: 664, column: 10, scope: !1068)
!1071 = !DILocation(line: 663, column: 7, scope: !186)
!1072 = !DILocation(line: 669, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !84, line: 665, column: 5)
!1074 = !DILocation(line: 671, column: 5, scope: !1073)
!1075 = !DILocation(line: 676, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1068, file: !84, line: 673, column: 5)
!1077 = !DILocation(line: 679, column: 3, scope: !186)
!1078 = !DILocation(line: 683, column: 3, scope: !186)
!1079 = !DILocation(line: 686, column: 3, scope: !186)
!1080 = !DILocation(line: 688, column: 3, scope: !186)
!1081 = !DILocation(line: 691, column: 3, scope: !186)
!1082 = !DILocation(line: 695, column: 3, scope: !186)
!1083 = !DILocation(line: 696, column: 1, scope: !186)
!1084 = !DISubprogram(name: "setlocale", scope: !1085, file: !1085, line: 122, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!130, !85, !141}
!1088 = !DISubprogram(name: "strncmp", scope: !1089, file: !1089, line: 159, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1089 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!85, !141, !141, !138}
!1092 = !DISubprogram(name: "exit", scope: !1093, file: !1093, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1093 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1094 = !DISubprogram(name: "getenv", scope: !1093, file: !1093, line: 641, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!130, !141}
!1097 = !DISubprogram(name: "strcmp", scope: !1089, file: !1089, line: 156, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!85, !141, !141}
!1100 = !DISubprogram(name: "strspn", scope: !1089, file: !1089, line: 297, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!140, !141, !141}
!1103 = !DISubprogram(name: "strchr", scope: !1089, file: !1089, line: 246, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!130, !141, !85}
!1106 = !DISubprogram(name: "__ctype_b_loc", scope: !90, file: !90, line: 79, type: !1107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1112 = !DISubprogram(name: "strcspn", scope: !1089, file: !1089, line: 293, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DISubprogram(name: "fwrite_unlocked", scope: !964, file: !964, line: 704, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!138, !1116, !138, !138, !958}
!1116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!1117 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 129, type: !1118, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1121)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!85, !85, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!1121 = !{!1122, !1123, !1124, !1125, !1126}
!1122 = !DILocalVariable(name: "argc", arg: 1, scope: !1117, file: !2, line: 129, type: !85)
!1123 = !DILocalVariable(name: "argv", arg: 2, scope: !1117, file: !2, line: 129, type: !1120)
!1124 = !DILocalVariable(name: "optc", scope: !1117, file: !2, line: 139, type: !85)
!1125 = !DILocalVariable(name: "pipe_check", scope: !1117, file: !2, line: 177, type: !179)
!1126 = !DILocalVariable(name: "ok", scope: !1117, file: !2, line: 184, type: !179)
!1127 = distinct !DIAssignID()
!1128 = !DILocation(line: 0, scope: !1117)
!1129 = !DILocation(line: 132, column: 21, scope: !1117)
!1130 = !DILocation(line: 132, column: 3, scope: !1117)
!1131 = !DILocation(line: 133, column: 3, scope: !1117)
!1132 = !DILocation(line: 134, column: 3, scope: !1117)
!1133 = !DILocation(line: 135, column: 3, scope: !1117)
!1134 = !DILocation(line: 137, column: 3, scope: !1117)
!1135 = !DILocation(line: 140, column: 3, scope: !1117)
!1136 = !DILocation(line: 140, column: 18, scope: !1117)
!1137 = !DILocation(line: 145, column: 18, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 143, column: 9)
!1139 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 141, column: 5)
!1140 = !DILocation(line: 146, column: 11, scope: !1138)
!1141 = !DILocation(line: 149, column: 29, scope: !1138)
!1142 = !DILocation(line: 150, column: 11, scope: !1138)
!1143 = !DILocation(line: 153, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 153, column: 15)
!1145 = !DILocation(line: 153, column: 15, scope: !1138)
!1146 = !DILocation(line: 154, column: 28, scope: !1144)
!1147 = !DILocation(line: 154, column: 26, scope: !1144)
!1148 = !DILocation(line: 154, column: 13, scope: !1144)
!1149 = distinct !{!1149, !1135, !1150, !1016}
!1150 = !DILocation(line: 167, column: 5, scope: !1117)
!1151 = !DILocation(line: 157, column: 26, scope: !1144)
!1152 = !DILocation(line: 160, column: 9, scope: !1138)
!1153 = !DILocation(line: 162, column: 9, scope: !1138)
!1154 = !DILocation(line: 165, column: 11, scope: !1138)
!1155 = !DILocation(line: 169, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 169, column: 7)
!1157 = !DILocation(line: 169, column: 7, scope: !1117)
!1158 = !DILocation(line: 170, column: 5, scope: !1156)
!1159 = !DILocation(line: 172, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 172, column: 7)
!1161 = !DILocation(line: 172, column: 20, scope: !1160)
!1162 = !DILocation(line: 172, column: 7, scope: !1117)
!1163 = !DILocation(line: 173, column: 5, scope: !1160)
!1164 = !DILocation(line: 177, column: 23, scope: !1117)
!1165 = !DILocation(line: 178, column: 23, scope: !1117)
!1166 = !DILocation(line: 179, column: 25, scope: !1117)
!1167 = !DILocation(line: 184, column: 31, scope: !1117)
!1168 = !DILocation(line: 184, column: 29, scope: !1117)
!1169 = !DILocation(line: 184, column: 40, scope: !1117)
!1170 = !DILocalVariable(name: "buffer", scope: !1171, file: !2, line: 236, type: !1206)
!1171 = distinct !DISubprogram(name: "tee_files", scope: !2, file: !2, line: 231, type: !1172, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!179, !85, !1120, !179}
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1170, !1182, !1186, !1187, !1188, !1189, !1191, !1198, !1202, !1204}
!1175 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1171, file: !2, line: 231, type: !85)
!1176 = !DILocalVariable(name: "files", arg: 2, scope: !1171, file: !2, line: 231, type: !1120)
!1177 = !DILocalVariable(name: "pipe_check", arg: 3, scope: !1171, file: !2, line: 231, type: !179)
!1178 = !DILocalVariable(name: "n_outputs", scope: !1171, file: !2, line: 233, type: !138)
!1179 = !DILocalVariable(name: "descriptors", scope: !1171, file: !2, line: 234, type: !415)
!1180 = !DILocalVariable(name: "out_pollable", scope: !1171, file: !2, line: 235, type: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1182 = !DILocalVariable(name: "bytes_read", scope: !1171, file: !2, line: 237, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1184, line: 108, baseType: !1185)
!1184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !235, line: 194, baseType: !236)
!1186 = !DILocalVariable(name: "first_out", scope: !1171, file: !2, line: 238, type: !85)
!1187 = !DILocalVariable(name: "ok", scope: !1171, file: !2, line: 239, type: !179)
!1188 = !DILocalVariable(name: "flags", scope: !1171, file: !2, line: 240, type: !85)
!1189 = !DILocalVariable(name: "i", scope: !1190, file: !2, line: 259, type: !85)
!1190 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 259, column: 3)
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
!1201 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 281, column: 5)
!1202 = !DILocalVariable(name: "i", scope: !1203, file: !2, line: 312, type: !85)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 312, column: 7)
!1204 = !DILocalVariable(name: "i", scope: !1205, file: !2, line: 331, type: !85)
!1205 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 331, column: 3)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 8192)
!1209 = !DILocation(line: 0, scope: !1171, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 184, column: 13, scope: !1117)
!1211 = !DILocation(line: 236, column: 3, scope: !1171, inlinedAt: !1210)
!1212 = !DILocation(line: 240, column: 48, scope: !1171, inlinedAt: !1210)
!1213 = !DILocation(line: 240, column: 45, scope: !1171, inlinedAt: !1210)
!1214 = !DILocation(line: 244, column: 12, scope: !1171, inlinedAt: !1210)
!1215 = !DILocation(line: 244, column: 3, scope: !1171, inlinedAt: !1210)
!1216 = !DILocation(line: 249, column: 34, scope: !1171, inlinedAt: !1210)
!1217 = !DILocation(line: 249, column: 27, scope: !1171, inlinedAt: !1210)
!1218 = !DILocation(line: 249, column: 17, scope: !1171, inlinedAt: !1210)
!1219 = !DILocation(line: 250, column: 7, scope: !1171, inlinedAt: !1210)
!1220 = !DILocation(line: 251, column: 20, scope: !1221, inlinedAt: !1210)
!1221 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 250, column: 7)
!1222 = !DILocation(line: 255, column: 23, scope: !1223, inlinedAt: !1210)
!1223 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 254, column: 7)
!1224 = !DILocation(line: 255, column: 21, scope: !1223, inlinedAt: !1210)
!1225 = !{!1226, !1226, i64 0}
!1226 = !{!"_Bool", !905, i64 0}
!1227 = !DILocation(line: 255, column: 5, scope: !1223, inlinedAt: !1210)
!1228 = !DILocation(line: 253, column: 18, scope: !1171, inlinedAt: !1210)
!1229 = !DILocation(line: 252, column: 8, scope: !1171, inlinedAt: !1210)
!1230 = !DILocation(line: 256, column: 24, scope: !1171, inlinedAt: !1210)
!1231 = !DILocation(line: 256, column: 12, scope: !1171, inlinedAt: !1210)
!1232 = !DILocation(line: 0, scope: !1190, inlinedAt: !1210)
!1233 = !DILocation(line: 259, column: 21, scope: !1196, inlinedAt: !1210)
!1234 = !DILocation(line: 259, column: 3, scope: !1190, inlinedAt: !1210)
!1235 = !DILocation(line: 280, column: 3, scope: !1171, inlinedAt: !1210)
!1236 = !DILocation(line: 262, column: 30, scope: !1195, inlinedAt: !1210)
!1237 = !DILocation(line: 262, column: 24, scope: !1195, inlinedAt: !1210)
!1238 = !DILocation(line: 262, column: 7, scope: !1195, inlinedAt: !1210)
!1239 = !DILocation(line: 262, column: 22, scope: !1195, inlinedAt: !1210)
!1240 = !DILocation(line: 263, column: 26, scope: !1194, inlinedAt: !1210)
!1241 = !DILocation(line: 263, column: 11, scope: !1195, inlinedAt: !1210)
!1242 = !DILocation(line: 265, column: 15, scope: !1193, inlinedAt: !1210)
!1243 = !DILocation(line: 266, column: 13, scope: !1244, inlinedAt: !1210)
!1244 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 265, column: 15)
!1245 = !DILocation(line: 266, column: 29, scope: !1244, inlinedAt: !1210)
!1246 = !DILocation(line: 267, column: 11, scope: !1193, inlinedAt: !1210)
!1247 = !DILocation(line: 0, scope: !1192, inlinedAt: !1210)
!1248 = !DILocation(line: 267, column: 11, scope: !1192, inlinedAt: !1210)
!1249 = !DILocation(line: 274, column: 15, scope: !1250, inlinedAt: !1210)
!1250 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 273, column: 9)
!1251 = !DILocation(line: 275, column: 31, scope: !1252, inlinedAt: !1210)
!1252 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 274, column: 15)
!1253 = !DILocation(line: 275, column: 13, scope: !1252, inlinedAt: !1210)
!1254 = !DILocation(line: 275, column: 29, scope: !1252, inlinedAt: !1210)
!1255 = !DILocation(line: 276, column: 20, scope: !1250, inlinedAt: !1210)
!1256 = !DILocation(line: 259, column: 33, scope: !1196, inlinedAt: !1210)
!1257 = distinct !{!1257, !1234, !1258, !1016}
!1258 = !DILocation(line: 278, column: 5, scope: !1190, inlinedAt: !1210)
!1259 = !DILocation(line: 282, column: 22, scope: !1200, inlinedAt: !1210)
!1260 = !DILocation(line: 282, column: 25, scope: !1200, inlinedAt: !1210)
!1261 = !{i8 0, i8 2}
!1262 = !DILocation(line: 282, column: 11, scope: !1201, inlinedAt: !1210)
!1263 = !DILocation(line: 285, column: 43, scope: !1199, inlinedAt: !1210)
!1264 = !DILocation(line: 285, column: 21, scope: !1199, inlinedAt: !1210)
!1265 = !DILocation(line: 0, scope: !1199, inlinedAt: !1210)
!1266 = !DILocation(line: 288, column: 15, scope: !1199, inlinedAt: !1210)
!1267 = !DILocation(line: 290, column: 15, scope: !1268, inlinedAt: !1210)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 289, column: 13)
!1269 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 288, column: 15)
!1270 = !DILocation(line: 290, column: 21, scope: !1268, inlinedAt: !1210)
!1271 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1272, file: !2, line: 209, type: !415)
!1272 = distinct !DISubprogram(name: "fail_output", scope: !2, file: !2, line: 209, type: !1273, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!179, !415, !1120, !85}
!1275 = !{!1271, !1276, !1277, !1278, !1279, !1280}
!1276 = !DILocalVariable(name: "files", arg: 2, scope: !1272, file: !2, line: 209, type: !1120)
!1277 = !DILocalVariable(name: "i", arg: 3, scope: !1272, file: !2, line: 209, type: !85)
!1278 = !DILocalVariable(name: "w_errno", scope: !1272, file: !2, line: 211, type: !85)
!1279 = !DILocalVariable(name: "fail", scope: !1272, file: !2, line: 212, type: !179)
!1280 = !DILocalVariable(name: "__errstatus", scope: !1281, file: !2, line: 217, type: !1197)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 217, column: 7)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 216, column: 5)
!1283 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 215, column: 7)
!1284 = !DILocation(line: 0, scope: !1272, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 291, column: 19, scope: !1286, inlinedAt: !1210)
!1286 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 291, column: 19)
!1287 = !DILocation(line: 215, column: 7, scope: !1272, inlinedAt: !1285)
!1288 = !DILocation(line: 217, column: 7, scope: !1282, inlinedAt: !1285)
!1289 = !DILocation(line: 0, scope: !1281, inlinedAt: !1285)
!1290 = !DILocation(line: 217, column: 7, scope: !1281, inlinedAt: !1285)
!1291 = !DILocation(line: 213, column: 15, scope: !1272, inlinedAt: !1285)
!1292 = !DILocation(line: 221, column: 18, scope: !1272, inlinedAt: !1285)
!1293 = !DILocation(line: 291, column: 19, scope: !1268, inlinedAt: !1210)
!1294 = !DILocation(line: 293, column: 24, scope: !1268, inlinedAt: !1210)
!1295 = !DILocalVariable(name: "descriptors", arg: 1, scope: !1296, file: !2, line: 197, type: !415)
!1296 = distinct !DISubprogram(name: "get_next_out", scope: !2, file: !2, line: 197, type: !1297, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!85, !415, !85, !85}
!1299 = !{!1295, !1300, !1301}
!1300 = !DILocalVariable(name: "nfiles", arg: 2, scope: !1296, file: !2, line: 197, type: !85)
!1301 = !DILocalVariable(name: "idx", arg: 3, scope: !1296, file: !2, line: 197, type: !85)
!1302 = !DILocation(line: 0, scope: !1296, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 294, column: 27, scope: !1268, inlinedAt: !1210)
!1304 = !DILocation(line: 199, column: 8, scope: !1305, inlinedAt: !1303)
!1305 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 199, column: 3)
!1306 = !DILocation(line: 199, column: 19, scope: !1307, inlinedAt: !1303)
!1307 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 199, column: 3)
!1308 = !DILocation(line: 199, column: 3, scope: !1305, inlinedAt: !1303)
!1309 = distinct !{!1309, !1235, !1310, !1016}
!1310 = !DILocation(line: 322, column: 5, scope: !1171, inlinedAt: !1210)
!1311 = !DILocation(line: 199, scope: !1305, inlinedAt: !1303)
!1312 = !DILocation(line: 200, column: 14, scope: !1313, inlinedAt: !1303)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 200, column: 9)
!1314 = !DILocation(line: 200, column: 11, scope: !1313, inlinedAt: !1303)
!1315 = !DILocation(line: 200, column: 9, scope: !1307, inlinedAt: !1303)
!1316 = distinct !{!1316, !1308, !1317, !1016}
!1317 = !DILocation(line: 201, column: 14, scope: !1305, inlinedAt: !1303)
!1318 = !DILocation(line: 203, column: 1, scope: !1296, inlinedAt: !1303)
!1319 = distinct !{!1319, !1235, !1310, !1016}
!1320 = !DILocation(line: 299, column: 15, scope: !1321, inlinedAt: !1210)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 298, column: 13)
!1322 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 297, column: 20)
!1323 = !DILocation(line: 301, column: 13, scope: !1321, inlinedAt: !1210)
!1324 = !DILocation(line: 304, column: 20, scope: !1201, inlinedAt: !1210)
!1325 = !DILocation(line: 305, column: 22, scope: !1326, inlinedAt: !1210)
!1326 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 305, column: 11)
!1327 = !DILocation(line: 305, column: 26, scope: !1326, inlinedAt: !1210)
!1328 = !DILocation(line: 305, column: 29, scope: !1326, inlinedAt: !1210)
!1329 = !DILocation(line: 305, column: 35, scope: !1326, inlinedAt: !1210)
!1330 = !DILocation(line: 305, column: 11, scope: !1201, inlinedAt: !1210)
!1331 = distinct !{!1331, !1235, !1310, !1016}
!1332 = !DILocation(line: 307, column: 22, scope: !1333, inlinedAt: !1210)
!1333 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 307, column: 11)
!1334 = !DILocation(line: 307, column: 11, scope: !1201, inlinedAt: !1210)
!1335 = !DILocation(line: 0, scope: !1203, inlinedAt: !1210)
!1336 = !DILocation(line: 312, column: 7, scope: !1203, inlinedAt: !1210)
!1337 = distinct !{!1337, !1235, !1310, !1016}
!1338 = !DILocation(line: 313, column: 18, scope: !1339, inlinedAt: !1210)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 313, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 312, column: 7)
!1341 = !DILocation(line: 313, column: 15, scope: !1339, inlinedAt: !1210)
!1342 = !DILocation(line: 314, column: 13, scope: !1339, inlinedAt: !1210)
!1343 = !DILocation(line: 314, column: 18, scope: !1339, inlinedAt: !1210)
!1344 = !DILocation(line: 313, column: 13, scope: !1340, inlinedAt: !1210)
!1345 = !DILocation(line: 0, scope: !1272, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 316, column: 17, scope: !1347, inlinedAt: !1210)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 316, column: 17)
!1348 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 315, column: 11)
!1349 = !DILocation(line: 211, column: 17, scope: !1272, inlinedAt: !1346)
!1350 = !DILocation(line: 212, column: 21, scope: !1272, inlinedAt: !1346)
!1351 = !DILocation(line: 215, column: 7, scope: !1272, inlinedAt: !1346)
!1352 = !DILocation(line: 217, column: 7, scope: !1282, inlinedAt: !1346)
!1353 = !DILocation(line: 0, scope: !1281, inlinedAt: !1346)
!1354 = !DILocation(line: 217, column: 7, scope: !1281, inlinedAt: !1346)
!1355 = !DILocation(line: 213, column: 15, scope: !1272, inlinedAt: !1346)
!1356 = !DILocation(line: 221, column: 18, scope: !1272, inlinedAt: !1346)
!1357 = !DILocation(line: 316, column: 17, scope: !1348, inlinedAt: !1210)
!1358 = !DILocation(line: 318, column: 22, scope: !1348, inlinedAt: !1210)
!1359 = !DILocation(line: 319, column: 19, scope: !1360, inlinedAt: !1210)
!1360 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 319, column: 17)
!1361 = !DILocation(line: 319, column: 17, scope: !1348, inlinedAt: !1210)
!1362 = !DILocation(line: 0, scope: !1296, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 320, column: 27, scope: !1360, inlinedAt: !1210)
!1364 = !DILocation(line: 199, column: 8, scope: !1305, inlinedAt: !1363)
!1365 = !DILocation(line: 199, column: 19, scope: !1307, inlinedAt: !1363)
!1366 = !DILocation(line: 199, column: 3, scope: !1305, inlinedAt: !1363)
!1367 = !DILocation(line: 199, scope: !1305, inlinedAt: !1363)
!1368 = !DILocation(line: 200, column: 14, scope: !1313, inlinedAt: !1363)
!1369 = !DILocation(line: 200, column: 11, scope: !1313, inlinedAt: !1363)
!1370 = !DILocation(line: 200, column: 9, scope: !1307, inlinedAt: !1363)
!1371 = distinct !{!1371, !1366, !1372, !1016}
!1372 = !DILocation(line: 201, column: 14, scope: !1305, inlinedAt: !1363)
!1373 = !DILocation(line: 203, column: 1, scope: !1296, inlinedAt: !1363)
!1374 = !DILocation(line: 0, scope: !1201, inlinedAt: !1210)
!1375 = !DILocation(line: 312, column: 37, scope: !1340, inlinedAt: !1210)
!1376 = !DILocation(line: 312, column: 25, scope: !1340, inlinedAt: !1210)
!1377 = distinct !{!1377, !1336, !1378, !1016}
!1378 = !DILocation(line: 321, column: 11, scope: !1203, inlinedAt: !1210)
!1379 = !DILocation(line: 324, column: 18, scope: !1380, inlinedAt: !1210)
!1380 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 324, column: 7)
!1381 = !DILocation(line: 324, column: 7, scope: !1171, inlinedAt: !1210)
!1382 = !DILocation(line: 326, column: 7, scope: !1383, inlinedAt: !1210)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 325, column: 5)
!1384 = !DILocation(line: 328, column: 5, scope: !1383, inlinedAt: !1210)
!1385 = !DILocation(line: 0, scope: !1205, inlinedAt: !1210)
!1386 = !DILocation(line: 331, column: 3, scope: !1205, inlinedAt: !1210)
!1387 = !DILocation(line: 331, column: 21, scope: !1388, inlinedAt: !1210)
!1388 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 331, column: 3)
!1389 = !DILocation(line: 327, column: 10, scope: !1383, inlinedAt: !1210)
!1390 = !DILocation(line: 338, column: 3, scope: !1171, inlinedAt: !1210)
!1391 = !DILocation(line: 339, column: 7, scope: !1171, inlinedAt: !1210)
!1392 = !DILocation(line: 332, column: 14, scope: !1393, inlinedAt: !1210)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 332, column: 9)
!1394 = !DILocation(line: 332, column: 11, scope: !1393, inlinedAt: !1210)
!1395 = !DILocation(line: 332, column: 29, scope: !1393, inlinedAt: !1210)
!1396 = !DILocation(line: 332, column: 34, scope: !1393, inlinedAt: !1210)
!1397 = !DILocation(line: 332, column: 9, scope: !1388, inlinedAt: !1210)
!1398 = !DILocation(line: 334, column: 9, scope: !1399, inlinedAt: !1210)
!1399 = distinct !DILexicalBlock(scope: !1393, file: !2, line: 333, column: 7)
!1400 = !DILocation(line: 336, column: 7, scope: !1399, inlinedAt: !1210)
!1401 = !DILocation(line: 331, column: 33, scope: !1388, inlinedAt: !1210)
!1402 = distinct !{!1402, !1386, !1403, !1016}
!1403 = !DILocation(line: 336, column: 7, scope: !1205, inlinedAt: !1210)
!1404 = !DILocation(line: 340, column: 5, scope: !1405, inlinedAt: !1210)
!1405 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 339, column: 7)
!1406 = !DILocation(line: 343, column: 1, scope: !1171, inlinedAt: !1210)
!1407 = !DILocation(line: 185, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 185, column: 7)
!1409 = !DILocation(line: 185, column: 28, scope: !1408)
!1410 = !DILocation(line: 185, column: 7, scope: !1117)
!1411 = !DILocation(line: 186, column: 5, scope: !1408)
!1412 = !DILocation(line: 342, column: 10, scope: !1171, inlinedAt: !1210)
!1413 = !DILocation(line: 188, column: 10, scope: !1117)
!1414 = !DILocation(line: 188, column: 3, scope: !1117)
!1415 = !DISubprogram(name: "bindtextdomain", scope: !951, file: !951, line: 86, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!130, !141, !141}
!1418 = !DISubprogram(name: "textdomain", scope: !951, file: !951, line: 82, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DISubprogram(name: "atexit", scope: !1093, file: !1093, line: 602, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1435 = !DISubprogram(name: "free", scope: !1093, file: !1093, line: 555, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !131}
!1438 = !DISubprogram(name: "close", scope: !1439, file: !1439, line: 358, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!85, !85}
!1442 = distinct !DISubprogram(name: "iopoll", scope: !421, file: !421, line: 139, type: !1443, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1445)
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
!1453 = distinct !DISubprogram(name: "iopoll_internal", scope: !421, file: !421, line: 62, type: !1454, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1456)
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
!1464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
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
!1479 = !{!1480, !970, i64 0}
!1480 = !{!"pollfd", !970, i64 0, !1011, i64 4, !1011, i64 6}
!1481 = distinct !DIAssignID()
!1482 = !{!1480, !1011, i64 4}
!1483 = distinct !DIAssignID()
!1484 = !{!1480, !1011, i64 6}
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
!1509 = distinct !{!1509, !1499, !1510, !1016}
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
!1534 = distinct !DISubprogram(name: "iopoll_input_ok", scope: !421, file: !421, line: 151, type: !1535, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!179, !85}
!1537 = !{!1538, !1539, !1574}
!1538 = !DILocalVariable(name: "fdin", arg: 1, scope: !1534, file: !421, line: 151, type: !85)
!1539 = !DILocalVariable(name: "st", scope: !1534, file: !421, line: 153, type: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1541, line: 26, size: 1152, elements: !1542)
!1541 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1542 = !{!1543, !1545, !1547, !1549, !1551, !1553, !1555, !1556, !1557, !1558, !1560, !1562, !1570, !1571, !1572}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1540, file: !1541, line: 31, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !235, line: 145, baseType: !140)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1540, file: !1541, line: 36, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !235, line: 148, baseType: !140)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1540, file: !1541, line: 44, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !235, line: 151, baseType: !140)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1540, file: !1541, line: 45, baseType: !1550, size: 32, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !235, line: 150, baseType: !76)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1540, file: !1541, line: 47, baseType: !1552, size: 32, offset: 224)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !235, line: 146, baseType: !76)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1540, file: !1541, line: 48, baseType: !1554, size: 32, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !235, line: 147, baseType: !76)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1540, file: !1541, line: 50, baseType: !85, size: 32, offset: 288)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1540, file: !1541, line: 52, baseType: !1544, size: 64, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1540, file: !1541, line: 57, baseType: !234, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1540, file: !1541, line: 61, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !235, line: 175, baseType: !236)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1540, file: !1541, line: 63, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !235, line: 180, baseType: !236)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1540, file: !1541, line: 74, baseType: !1563, size: 128, offset: 576)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1564, line: 11, size: 128, elements: !1565)
!1564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1565 = !{!1566, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1563, file: !1564, line: 16, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !235, line: 160, baseType: !236)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1563, file: !1564, line: 21, baseType: !1569, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !235, line: 197, baseType: !236)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1540, file: !1541, line: 75, baseType: !1563, size: 128, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1540, file: !1541, line: 76, baseType: !1563, size: 128, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1540, file: !1541, line: 89, baseType: !1573, size: 192, offset: 960)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1569, size: 192, elements: !173)
!1574 = !DILocalVariable(name: "always_ready", scope: !1534, file: !421, line: 154, type: !179)
!1575 = distinct !DIAssignID()
!1576 = !DILocation(line: 0, scope: !1534)
!1577 = !DILocation(line: 153, column: 3, scope: !1534)
!1578 = !DILocation(line: 154, column: 23, scope: !1534)
!1579 = !DILocation(line: 154, column: 41, scope: !1534)
!1580 = !DILocation(line: 155, column: 23, scope: !1534)
!1581 = !DILocation(line: 155, column: 27, scope: !1534)
!1582 = !DILocation(line: 156, column: 27, scope: !1534)
!1583 = !DILocation(line: 157, column: 10, scope: !1534)
!1584 = !DILocation(line: 158, column: 1, scope: !1534)
!1585 = !DILocation(line: 157, column: 3, scope: !1534)
!1586 = !DISubprogram(name: "fstat", scope: !1587, file: !1587, line: 210, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!85, !85, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1591 = distinct !DISubprogram(name: "iopoll_output_ok", scope: !421, file: !421, line: 164, type: !1535, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1592)
!1592 = !{!1593}
!1593 = !DILocalVariable(name: "fdout", arg: 1, scope: !1591, file: !421, line: 164, type: !85)
!1594 = !DILocation(line: 0, scope: !1591)
!1595 = !DILocation(line: 166, column: 10, scope: !1591)
!1596 = !DILocation(line: 166, column: 26, scope: !1591)
!1597 = !DILocation(line: 166, column: 3, scope: !1591)
!1598 = distinct !DISubprogram(name: "close_wait", scope: !421, file: !421, line: 200, type: !1535, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1599)
!1599 = !{!1600}
!1600 = !DILocalVariable(name: "fd", arg: 1, scope: !1598, file: !421, line: 200, type: !85)
!1601 = !DILocation(line: 0, scope: !1598)
!1602 = !DILocation(line: 202, column: 3, scope: !1598)
!1603 = !DILocalVariable(name: "fd", arg: 1, scope: !1604, file: !421, line: 180, type: !85)
!1604 = distinct !DISubprogram(name: "wait_for_nonblocking_write", scope: !421, file: !421, line: 180, type: !1535, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1605)
!1605 = !{!1603}
!1606 = !DILocation(line: 0, scope: !1604, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 202, column: 10, scope: !1598)
!1608 = !DILocation(line: 182, column: 9, scope: !1609, inlinedAt: !1607)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !421, line: 182, column: 7)
!1610 = !DILocation(line: 187, column: 7, scope: !1611, inlinedAt: !1607)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !421, line: 187, column: 7)
!1612 = !DILocation(line: 187, column: 45, scope: !1611, inlinedAt: !1607)
!1613 = !DILocation(line: 187, column: 7, scope: !1604, inlinedAt: !1607)
!1614 = distinct !{!1614, !1602, !1615, !1016}
!1615 = !DILocation(line: 203, column: 5, scope: !1598)
!1616 = !DILocation(line: 189, column: 13, scope: !1617, inlinedAt: !1607)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !421, line: 188, column: 5)
!1618 = !DILocation(line: 190, column: 7, scope: !1617, inlinedAt: !1607)
!1619 = !DILocation(line: 204, column: 10, scope: !1598)
!1620 = !DILocation(line: 204, column: 21, scope: !1598)
!1621 = !DILocation(line: 204, column: 3, scope: !1598)
!1622 = distinct !DISubprogram(name: "write_wait", scope: !421, file: !421, line: 211, type: !1623, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !807, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!179, !85, !128, !138}
!1625 = !{!1626, !1627, !1628, !1629, !1632}
!1626 = !DILocalVariable(name: "fd", arg: 1, scope: !1622, file: !421, line: 211, type: !85)
!1627 = !DILocalVariable(name: "buffer", arg: 2, scope: !1622, file: !421, line: 211, type: !128)
!1628 = !DILocalVariable(name: "size", arg: 3, scope: !1622, file: !421, line: 211, type: !138)
!1629 = !DILocalVariable(name: "buf", scope: !1622, file: !421, line: 213, type: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1632 = !DILocalVariable(name: "written", scope: !1633, file: !421, line: 217, type: !1183)
!1633 = distinct !DILexicalBlock(scope: !1622, file: !421, line: 216, column: 5)
!1634 = !DILocation(line: 0, scope: !1622)
!1635 = !DILocation(line: 217, column: 25, scope: !1633)
!1636 = !DILocation(line: 0, scope: !1633)
!1637 = !DILocation(line: 218, column: 11, scope: !1633)
!1638 = !DILocation(line: 221, column: 12, scope: !1633)
!1639 = !DILocation(line: 222, column: 16, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !421, line: 222, column: 11)
!1641 = !DILocation(line: 222, column: 11, scope: !1633)
!1642 = !DILocation(line: 0, scope: !1604, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 225, column: 13, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1633, file: !421, line: 225, column: 11)
!1645 = !DILocation(line: 182, column: 9, scope: !1609, inlinedAt: !1643)
!1646 = !DILocation(line: 187, column: 7, scope: !1611, inlinedAt: !1643)
!1647 = !DILocation(line: 187, column: 45, scope: !1611, inlinedAt: !1643)
!1648 = !DILocation(line: 187, column: 7, scope: !1604, inlinedAt: !1643)
!1649 = !DILocation(line: 189, column: 13, scope: !1617, inlinedAt: !1643)
!1650 = !DILocation(line: 190, column: 7, scope: !1617, inlinedAt: !1643)
!1651 = !DILocation(line: 228, column: 11, scope: !1633)
!1652 = distinct !{!1652, !1653, !1654}
!1653 = !DILocation(line: 215, column: 3, scope: !1622)
!1654 = !DILocation(line: 229, column: 5, scope: !1622)
!1655 = !DILocation(line: 230, column: 1, scope: !1622)
!1656 = !DISubprogram(name: "write", scope: !1439, file: !1439, line: 378, type: !1657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1183, !85, !128, !138}
!1659 = distinct !DISubprogram(name: "__argmatch_die", scope: !444, file: !444, line: 58, type: !471, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443)
!1660 = !DILocation(line: 60, column: 3, scope: !1659)
!1661 = !DILocation(line: 61, column: 1, scope: !1659)
!1662 = distinct !DISubprogram(name: "argmatch", scope: !444, file: !444, line: 80, type: !1663, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1666)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!851, !141, !1665, !128, !138}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1667 = !DILocalVariable(name: "arg", arg: 1, scope: !1662, file: !444, line: 80, type: !141)
!1668 = !DILocalVariable(name: "arglist", arg: 2, scope: !1662, file: !444, line: 80, type: !1665)
!1669 = !DILocalVariable(name: "vallist", arg: 3, scope: !1662, file: !444, line: 81, type: !128)
!1670 = !DILocalVariable(name: "valsize", arg: 4, scope: !1662, file: !444, line: 81, type: !138)
!1671 = !DILocalVariable(name: "arglen", scope: !1662, file: !444, line: 83, type: !138)
!1672 = !DILocalVariable(name: "matchind", scope: !1662, file: !444, line: 85, type: !851)
!1673 = !DILocalVariable(name: "ambiguous", scope: !1662, file: !444, line: 86, type: !179)
!1674 = !DILocalVariable(name: "i", scope: !1675, file: !444, line: 89, type: !138)
!1675 = distinct !DILexicalBlock(scope: !1662, file: !444, line: 89, column: 3)
!1676 = !DILocation(line: 0, scope: !1662)
!1677 = !DILocation(line: 83, column: 19, scope: !1662)
!1678 = !DILocation(line: 0, scope: !1675)
!1679 = !DILocation(line: 89, column: 22, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !444, line: 89, column: 3)
!1681 = !DILocation(line: 89, column: 3, scope: !1675)
!1682 = !DILocation(line: 91, column: 12, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !444, line: 91, column: 11)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !444, line: 90, column: 5)
!1685 = !DILocation(line: 91, column: 11, scope: !1684)
!1686 = !DILocation(line: 93, column: 15, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !444, line: 93, column: 15)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !444, line: 92, column: 9)
!1689 = !DILocation(line: 93, column: 35, scope: !1687)
!1690 = !DILocation(line: 93, column: 15, scope: !1688)
!1691 = !DILocation(line: 96, column: 29, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !444, line: 96, column: 20)
!1693 = !DILocation(line: 96, column: 20, scope: !1687)
!1694 = !DILocation(line: 103, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !444, line: 102, column: 19)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !444, line: 100, column: 13)
!1697 = !DILocation(line: 103, column: 63, scope: !1695)
!1698 = !DILocation(line: 103, column: 53, scope: !1695)
!1699 = !DILocation(line: 104, column: 63, scope: !1695)
!1700 = !DILocation(line: 104, column: 53, scope: !1695)
!1701 = !DILocalVariable(name: "__s1", arg: 1, scope: !1702, file: !982, line: 974, type: !128)
!1702 = distinct !DISubprogram(name: "memeq", scope: !982, file: !982, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!179, !128, !128, !138}
!1705 = !{!1701, !1706, !1707}
!1706 = !DILocalVariable(name: "__s2", arg: 2, scope: !1702, file: !982, line: 974, type: !128)
!1707 = !DILocalVariable(name: "__n", arg: 3, scope: !1702, file: !982, line: 974, type: !138)
!1708 = !DILocation(line: 0, scope: !1702, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 103, column: 23, scope: !1695)
!1710 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1709)
!1711 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1709)
!1712 = !DILocation(line: 102, column: 19, scope: !1696)
!1713 = !DILocation(line: 109, column: 17, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1695, file: !444, line: 105, column: 17)
!1715 = !DILocation(line: 89, column: 35, scope: !1680)
!1716 = distinct !{!1716, !1681, !1717, !1016}
!1717 = !DILocation(line: 112, column: 5, scope: !1675)
!1718 = !DILocation(line: 113, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1662, file: !444, line: 113, column: 7)
!1720 = !DILocation(line: 0, scope: !1719)
!1721 = !DILocation(line: 117, column: 1, scope: !1662)
!1722 = !DISubprogram(name: "strlen", scope: !1089, file: !1089, line: 407, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!140, !141}
!1725 = distinct !DISubprogram(name: "argmatch_exact", scope: !444, file: !444, line: 120, type: !1726, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!851, !141, !1665}
!1728 = !{!1729, !1730, !1731}
!1729 = !DILocalVariable(name: "arg", arg: 1, scope: !1725, file: !444, line: 120, type: !141)
!1730 = !DILocalVariable(name: "arglist", arg: 2, scope: !1725, file: !444, line: 120, type: !1665)
!1731 = !DILocalVariable(name: "i", scope: !1732, file: !444, line: 123, type: !138)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !444, line: 123, column: 3)
!1733 = !DILocation(line: 0, scope: !1725)
!1734 = !DILocation(line: 0, scope: !1732)
!1735 = !DILocation(line: 123, column: 22, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !444, line: 123, column: 3)
!1737 = !DILocation(line: 123, column: 3, scope: !1732)
!1738 = !DILocalVariable(name: "__s1", arg: 1, scope: !1739, file: !982, line: 1359, type: !141)
!1739 = distinct !DISubprogram(name: "streq", scope: !982, file: !982, line: 1359, type: !983, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1740)
!1740 = !{!1738, !1741}
!1741 = !DILocalVariable(name: "__s2", arg: 2, scope: !1739, file: !982, line: 1359, type: !141)
!1742 = !DILocation(line: 0, scope: !1739, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 125, column: 11, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !444, line: 125, column: 11)
!1745 = distinct !DILexicalBlock(scope: !1736, file: !444, line: 124, column: 5)
!1746 = !DILocation(line: 1361, column: 11, scope: !1739, inlinedAt: !1743)
!1747 = !DILocation(line: 1361, column: 10, scope: !1739, inlinedAt: !1743)
!1748 = !DILocation(line: 125, column: 11, scope: !1745)
!1749 = !DILocation(line: 123, column: 35, scope: !1736)
!1750 = distinct !{!1750, !1737, !1751, !1016}
!1751 = !DILocation(line: 127, column: 5, scope: !1732)
!1752 = !DILocation(line: 130, column: 1, scope: !1725)
!1753 = distinct !DISubprogram(name: "argmatch_invalid", scope: !444, file: !444, line: 138, type: !1754, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !141, !141, !851}
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DILocalVariable(name: "context", arg: 1, scope: !1753, file: !444, line: 138, type: !141)
!1758 = !DILocalVariable(name: "value", arg: 2, scope: !1753, file: !444, line: 138, type: !141)
!1759 = !DILocalVariable(name: "problem", arg: 3, scope: !1753, file: !444, line: 138, type: !851)
!1760 = !DILocalVariable(name: "format", scope: !1753, file: !444, line: 140, type: !141)
!1761 = !DILocation(line: 0, scope: !1753)
!1762 = !DILocation(line: 140, column: 33, scope: !1753)
!1763 = !DILocation(line: 140, column: 25, scope: !1753)
!1764 = !DILocation(line: 144, column: 3, scope: !1753)
!1765 = !DILocation(line: 146, column: 1, scope: !1753)
!1766 = distinct !DISubprogram(name: "argmatch_valid", scope: !444, file: !444, line: 153, type: !1767, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1665, !128, !138}
!1769 = !{!1770, !1771, !1772, !1773, !1774}
!1770 = !DILocalVariable(name: "arglist", arg: 1, scope: !1766, file: !444, line: 153, type: !1665)
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
!1785 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
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
!1827 = !{!1828, !904, i64 40}
!1828 = !{!"_IO_FILE", !970, i64 0, !904, i64 8, !904, i64 16, !904, i64 24, !904, i64 32, !904, i64 40, !904, i64 48, !904, i64 56, !904, i64 64, !904, i64 72, !904, i64 80, !904, i64 88, !904, i64 96, !904, i64 104, !970, i64 112, !970, i64 116, !1829, i64 120, !1011, i64 128, !905, i64 130, !905, i64 131, !904, i64 136, !1829, i64 144, !904, i64 152, !904, i64 160, !904, i64 168, !904, i64 176, !1829, i64 184, !970, i64 192, !905, i64 196}
!1829 = !{!"long", !905, i64 0}
!1830 = !{!1828, !904, i64 48}
!1831 = !{!"branch_weights", i32 2000, i32 1}
!1832 = !DILocation(line: 173, column: 1, scope: !1766)
!1833 = !DILocation(line: 162, column: 12, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1780, file: !444, line: 162, column: 9)
!1835 = !DILocation(line: 163, column: 9, scope: !1834)
!1836 = !DILocation(line: 163, column: 63, scope: !1834)
!1837 = !DILocation(line: 163, column: 53, scope: !1834)
!1838 = !DILocation(line: 0, scope: !1702, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 163, column: 13, scope: !1834)
!1840 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1839)
!1841 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1839)
!1842 = !DILocation(line: 162, column: 9, scope: !1780)
!1843 = !DILocation(line: 166, column: 53, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1834, file: !444, line: 164, column: 7)
!1845 = !DILocation(line: 165, column: 9, scope: !1844)
!1846 = !DILocation(line: 166, column: 43, scope: !1844)
!1847 = !DILocation(line: 167, column: 7, scope: !1844)
!1848 = !DILocation(line: 170, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1834, file: !444, line: 169, column: 7)
!1850 = !DILocation(line: 161, column: 35, scope: !1780)
!1851 = distinct !{!1851, !1781, !1852, !1016}
!1852 = !DILocation(line: 171, column: 7, scope: !1775)
!1853 = !DISubprogram(name: "__overflow", scope: !964, file: !964, line: 886, type: !1854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!85, !1788, !85}
!1856 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !444, file: !444, line: 182, type: !1857, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!851, !141, !141, !1665, !128, !138, !468, !179}
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867}
!1860 = !DILocalVariable(name: "context", arg: 1, scope: !1856, file: !444, line: 182, type: !141)
!1861 = !DILocalVariable(name: "arg", arg: 2, scope: !1856, file: !444, line: 183, type: !141)
!1862 = !DILocalVariable(name: "arglist", arg: 3, scope: !1856, file: !444, line: 183, type: !1665)
!1863 = !DILocalVariable(name: "vallist", arg: 4, scope: !1856, file: !444, line: 184, type: !128)
!1864 = !DILocalVariable(name: "valsize", arg: 5, scope: !1856, file: !444, line: 184, type: !138)
!1865 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1856, file: !444, line: 185, type: !468)
!1866 = !DILocalVariable(name: "allow_abbreviation", arg: 7, scope: !1856, file: !444, line: 186, type: !179)
!1867 = !DILocalVariable(name: "res", scope: !1856, file: !444, line: 188, type: !851)
!1868 = !DILocation(line: 0, scope: !1856)
!1869 = !DILocation(line: 189, column: 7, scope: !1856)
!1870 = !DILocation(line: 0, scope: !1662, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 190, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1856, file: !444, line: 189, column: 7)
!1873 = !DILocation(line: 83, column: 19, scope: !1662, inlinedAt: !1871)
!1874 = !DILocation(line: 0, scope: !1675, inlinedAt: !1871)
!1875 = !DILocation(line: 89, column: 22, scope: !1680, inlinedAt: !1871)
!1876 = !DILocation(line: 89, column: 3, scope: !1675, inlinedAt: !1871)
!1877 = !DILocation(line: 91, column: 12, scope: !1683, inlinedAt: !1871)
!1878 = !DILocation(line: 91, column: 11, scope: !1684, inlinedAt: !1871)
!1879 = !DILocation(line: 93, column: 15, scope: !1687, inlinedAt: !1871)
!1880 = !DILocation(line: 93, column: 35, scope: !1687, inlinedAt: !1871)
!1881 = !DILocation(line: 93, column: 15, scope: !1688, inlinedAt: !1871)
!1882 = !DILocation(line: 96, column: 29, scope: !1692, inlinedAt: !1871)
!1883 = !DILocation(line: 96, column: 20, scope: !1687, inlinedAt: !1871)
!1884 = !DILocation(line: 103, column: 19, scope: !1695, inlinedAt: !1871)
!1885 = !DILocation(line: 103, column: 63, scope: !1695, inlinedAt: !1871)
!1886 = !DILocation(line: 103, column: 53, scope: !1695, inlinedAt: !1871)
!1887 = !DILocation(line: 104, column: 63, scope: !1695, inlinedAt: !1871)
!1888 = !DILocation(line: 104, column: 53, scope: !1695, inlinedAt: !1871)
!1889 = !DILocation(line: 0, scope: !1702, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 103, column: 23, scope: !1695, inlinedAt: !1871)
!1891 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1890)
!1892 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1890)
!1893 = !DILocation(line: 102, column: 19, scope: !1696, inlinedAt: !1871)
!1894 = !DILocation(line: 109, column: 17, scope: !1714, inlinedAt: !1871)
!1895 = !DILocation(line: 89, column: 35, scope: !1680, inlinedAt: !1871)
!1896 = distinct !{!1896, !1876, !1897, !1016}
!1897 = !DILocation(line: 112, column: 5, scope: !1675, inlinedAt: !1871)
!1898 = !DILocation(line: 113, column: 7, scope: !1719, inlinedAt: !1871)
!1899 = !DILocation(line: 0, scope: !1719, inlinedAt: !1871)
!1900 = !DILocation(line: 0, scope: !1725, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 192, column: 11, scope: !1872)
!1902 = !DILocation(line: 0, scope: !1732, inlinedAt: !1901)
!1903 = !DILocation(line: 123, column: 22, scope: !1736, inlinedAt: !1901)
!1904 = !DILocation(line: 123, column: 3, scope: !1732, inlinedAt: !1901)
!1905 = !DILocation(line: 0, scope: !1739, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 125, column: 11, scope: !1744, inlinedAt: !1901)
!1907 = !DILocation(line: 1361, column: 11, scope: !1739, inlinedAt: !1906)
!1908 = !DILocation(line: 1361, column: 10, scope: !1739, inlinedAt: !1906)
!1909 = !DILocation(line: 125, column: 11, scope: !1745, inlinedAt: !1901)
!1910 = !DILocation(line: 123, column: 35, scope: !1736, inlinedAt: !1901)
!1911 = distinct !{!1911, !1904, !1912, !1016}
!1912 = !DILocation(line: 127, column: 5, scope: !1732, inlinedAt: !1901)
!1913 = !DILocation(line: 0, scope: !1872)
!1914 = !DILocation(line: 140, column: 33, scope: !1753, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 199, column: 3, scope: !1856)
!1916 = !DILocation(line: 194, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1856, file: !444, line: 194, column: 7)
!1918 = !DILocation(line: 194, column: 7, scope: !1856)
!1919 = !DILocation(line: 0, scope: !1753, inlinedAt: !1915)
!1920 = !DILocation(line: 140, column: 25, scope: !1753, inlinedAt: !1915)
!1921 = !DILocation(line: 144, column: 3, scope: !1753, inlinedAt: !1915)
!1922 = !DILocation(line: 200, column: 3, scope: !1856)
!1923 = !DILocation(line: 201, column: 3, scope: !1856)
!1924 = !DILocation(line: 203, column: 3, scope: !1856)
!1925 = !DILocation(line: 204, column: 1, scope: !1856)
!1926 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !444, file: !444, line: 209, type: !1927, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!141, !128, !1665, !128, !138}
!1929 = !{!1930, !1931, !1932, !1933, !1934}
!1930 = !DILocalVariable(name: "value", arg: 1, scope: !1926, file: !444, line: 209, type: !128)
!1931 = !DILocalVariable(name: "arglist", arg: 2, scope: !1926, file: !444, line: 210, type: !1665)
!1932 = !DILocalVariable(name: "vallist", arg: 3, scope: !1926, file: !444, line: 211, type: !128)
!1933 = !DILocalVariable(name: "valsize", arg: 4, scope: !1926, file: !444, line: 211, type: !138)
!1934 = !DILocalVariable(name: "i", scope: !1935, file: !444, line: 213, type: !138)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !444, line: 213, column: 3)
!1936 = !DILocation(line: 0, scope: !1926)
!1937 = !DILocation(line: 0, scope: !1935)
!1938 = !DILocation(line: 213, column: 22, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !444, line: 213, column: 3)
!1940 = !DILocation(line: 213, column: 3, scope: !1935)
!1941 = !DILocation(line: 0, scope: !1702, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 214, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !444, line: 214, column: 9)
!1944 = !DILocation(line: 976, column: 11, scope: !1702, inlinedAt: !1942)
!1945 = !DILocation(line: 976, column: 10, scope: !1702, inlinedAt: !1942)
!1946 = !DILocation(line: 214, column: 9, scope: !1939)
!1947 = !DILocation(line: 213, column: 35, scope: !1939)
!1948 = distinct !{!1948, !1940, !1949, !1016}
!1949 = !DILocation(line: 215, column: 23, scope: !1935)
!1950 = !DILocation(line: 214, column: 56, scope: !1943)
!1951 = !DILocation(line: 214, column: 46, scope: !1943)
!1952 = !DILocation(line: 217, column: 1, scope: !1926)
!1953 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !476, file: !476, line: 50, type: !919, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1954)
!1954 = !{!1955}
!1955 = !DILocalVariable(name: "file", arg: 1, scope: !1953, file: !476, line: 50, type: !141)
!1956 = !DILocation(line: 0, scope: !1953)
!1957 = !DILocation(line: 52, column: 13, scope: !1953)
!1958 = !DILocation(line: 53, column: 1, scope: !1953)
!1959 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !476, file: !476, line: 87, type: !1960, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !179}
!1962 = !{!1963}
!1963 = !DILocalVariable(name: "ignore", arg: 1, scope: !1959, file: !476, line: 87, type: !179)
!1964 = !DILocation(line: 0, scope: !1959)
!1965 = !DILocation(line: 89, column: 16, scope: !1959)
!1966 = !DILocation(line: 90, column: 1, scope: !1959)
!1967 = distinct !DISubprogram(name: "close_stdout", scope: !476, file: !476, line: 116, type: !471, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1968)
!1968 = !{!1969}
!1969 = !DILocalVariable(name: "write_error", scope: !1970, file: !476, line: 121, type: !141)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !476, line: 120, column: 5)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !476, line: 118, column: 7)
!1972 = !DILocation(line: 118, column: 21, scope: !1971)
!1973 = !DILocation(line: 118, column: 7, scope: !1971)
!1974 = !DILocation(line: 118, column: 29, scope: !1971)
!1975 = !DILocation(line: 119, column: 7, scope: !1971)
!1976 = !DILocation(line: 119, column: 12, scope: !1971)
!1977 = !DILocation(line: 119, column: 25, scope: !1971)
!1978 = !DILocation(line: 119, column: 28, scope: !1971)
!1979 = !DILocation(line: 119, column: 34, scope: !1971)
!1980 = !DILocation(line: 118, column: 7, scope: !1967)
!1981 = !DILocation(line: 121, column: 33, scope: !1970)
!1982 = !DILocation(line: 0, scope: !1970)
!1983 = !DILocation(line: 122, column: 11, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1970, file: !476, line: 122, column: 11)
!1985 = !DILocation(line: 0, scope: !1984)
!1986 = !DILocation(line: 122, column: 11, scope: !1970)
!1987 = !DILocation(line: 123, column: 9, scope: !1984)
!1988 = !DILocation(line: 126, column: 9, scope: !1984)
!1989 = !DILocation(line: 128, column: 14, scope: !1970)
!1990 = !DILocation(line: 128, column: 7, scope: !1970)
!1991 = !DILocation(line: 133, column: 42, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1967, file: !476, line: 133, column: 7)
!1993 = !DILocation(line: 133, column: 28, scope: !1992)
!1994 = !DILocation(line: 133, column: 50, scope: !1992)
!1995 = !DILocation(line: 133, column: 7, scope: !1967)
!1996 = !DILocation(line: 134, column: 12, scope: !1992)
!1997 = !DILocation(line: 134, column: 5, scope: !1992)
!1998 = !DILocation(line: 135, column: 1, scope: !1967)
!1999 = !DISubprogram(name: "_exit", scope: !1439, file: !1439, line: 624, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2000 = distinct !DISubprogram(name: "verror", scope: !491, file: !491, line: 251, type: !2001, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !85, !85, !141, !501}
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "status", arg: 1, scope: !2000, file: !491, line: 251, type: !85)
!2005 = !DILocalVariable(name: "errnum", arg: 2, scope: !2000, file: !491, line: 251, type: !85)
!2006 = !DILocalVariable(name: "message", arg: 3, scope: !2000, file: !491, line: 251, type: !141)
!2007 = !DILocalVariable(name: "args", arg: 4, scope: !2000, file: !491, line: 251, type: !501)
!2008 = !DILocation(line: 0, scope: !2000)
!2009 = !DILocation(line: 261, column: 3, scope: !2000)
!2010 = !DILocation(line: 265, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2000, file: !491, line: 265, column: 7)
!2012 = !DILocation(line: 265, column: 7, scope: !2000)
!2013 = !DILocation(line: 266, column: 5, scope: !2011)
!2014 = !DILocation(line: 272, column: 7, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !491, line: 268, column: 5)
!2016 = !DILocation(line: 276, column: 3, scope: !2000)
!2017 = !DILocation(line: 282, column: 1, scope: !2000)
!2018 = distinct !DISubprogram(name: "flush_stdout", scope: !491, file: !491, line: 163, type: !471, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2019)
!2019 = !{!2020}
!2020 = !DILocalVariable(name: "stdout_fd", scope: !2018, file: !491, line: 166, type: !85)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocalVariable(name: "fd", arg: 1, scope: !2023, file: !491, line: 145, type: !85)
!2023 = distinct !DISubprogram(name: "is_open", scope: !491, file: !491, line: 145, type: !1440, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2024)
!2024 = !{!2022}
!2025 = !DILocation(line: 0, scope: !2023, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 182, column: 25, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2018, file: !491, line: 182, column: 7)
!2028 = !DILocation(line: 157, column: 15, scope: !2023, inlinedAt: !2026)
!2029 = !DILocation(line: 157, column: 12, scope: !2023, inlinedAt: !2026)
!2030 = !DILocation(line: 182, column: 7, scope: !2018)
!2031 = !DILocation(line: 184, column: 5, scope: !2027)
!2032 = !DILocation(line: 185, column: 1, scope: !2018)
!2033 = distinct !DISubprogram(name: "error_tail", scope: !491, file: !491, line: 219, type: !2001, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2034)
!2034 = !{!2035, !2036, !2037, !2038}
!2035 = !DILocalVariable(name: "status", arg: 1, scope: !2033, file: !491, line: 219, type: !85)
!2036 = !DILocalVariable(name: "errnum", arg: 2, scope: !2033, file: !491, line: 219, type: !85)
!2037 = !DILocalVariable(name: "message", arg: 3, scope: !2033, file: !491, line: 219, type: !141)
!2038 = !DILocalVariable(name: "args", arg: 4, scope: !2033, file: !491, line: 219, type: !501)
!2039 = distinct !DIAssignID()
!2040 = !DILocation(line: 0, scope: !2033)
!2041 = !DILocation(line: 229, column: 13, scope: !2033)
!2042 = !DILocalVariable(name: "__stream", arg: 1, scope: !2043, file: !955, line: 132, type: !2046)
!2043 = distinct !DISubprogram(name: "vfprintf", scope: !955, file: !955, line: 132, type: !2044, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2081)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!85, !2046, !959, !501}
!2046 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2047)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2049, file: !212, line: 51, baseType: !85, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2049, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2049, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2049, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2049, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2049, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2049, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2049, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2049, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2049, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2049, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2049, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2049, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2049, file: !212, line: 70, baseType: !2065, size: 64, offset: 832)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2049, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2049, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2049, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2049, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2049, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2049, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2049, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2049, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2049, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2049, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2049, file: !212, line: 93, baseType: !2065, size: 64, offset: 1344)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2049, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2049, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2049, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2049, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2081 = !{!2042, !2082, !2083}
!2082 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2043, file: !955, line: 133, type: !959)
!2083 = !DILocalVariable(name: "__ap", arg: 3, scope: !2043, file: !955, line: 133, type: !501)
!2084 = !DILocation(line: 0, scope: !2043, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 229, column: 3, scope: !2033)
!2086 = !DILocation(line: 135, column: 10, scope: !2043, inlinedAt: !2085)
!2087 = !DILocation(line: 232, column: 3, scope: !2033)
!2088 = !DILocation(line: 233, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2033, file: !491, line: 233, column: 7)
!2090 = !DILocation(line: 233, column: 7, scope: !2033)
!2091 = !DILocalVariable(name: "errbuf", scope: !2092, file: !491, line: 193, type: !2096)
!2092 = distinct !DISubprogram(name: "print_errno_message", scope: !491, file: !491, line: 188, type: !135, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2093)
!2093 = !{!2094, !2095, !2091}
!2094 = !DILocalVariable(name: "errnum", arg: 1, scope: !2092, file: !491, line: 188, type: !85)
!2095 = !DILocalVariable(name: "s", scope: !2092, file: !491, line: 190, type: !141)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 1024)
!2099 = !DILocation(line: 0, scope: !2092, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 234, column: 5, scope: !2089)
!2101 = !DILocation(line: 193, column: 3, scope: !2092, inlinedAt: !2100)
!2102 = !DILocation(line: 195, column: 7, scope: !2092, inlinedAt: !2100)
!2103 = !DILocation(line: 207, column: 9, scope: !2104, inlinedAt: !2100)
!2104 = distinct !DILexicalBlock(scope: !2092, file: !491, line: 207, column: 7)
!2105 = !DILocation(line: 207, column: 7, scope: !2092, inlinedAt: !2100)
!2106 = !DILocation(line: 208, column: 9, scope: !2104, inlinedAt: !2100)
!2107 = !DILocation(line: 208, column: 5, scope: !2104, inlinedAt: !2100)
!2108 = !DILocation(line: 214, column: 3, scope: !2092, inlinedAt: !2100)
!2109 = !DILocation(line: 216, column: 1, scope: !2092, inlinedAt: !2100)
!2110 = !DILocation(line: 234, column: 5, scope: !2089)
!2111 = !DILocation(line: 238, column: 3, scope: !2033)
!2112 = !DILocalVariable(name: "__c", arg: 1, scope: !2113, file: !1785, line: 101, type: !85)
!2113 = distinct !DISubprogram(name: "putc_unlocked", scope: !1785, file: !1785, line: 101, type: !2114, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!85, !85, !2047}
!2116 = !{!2112, !2117}
!2117 = !DILocalVariable(name: "__stream", arg: 2, scope: !2113, file: !1785, line: 101, type: !2047)
!2118 = !DILocation(line: 0, scope: !2113, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 238, column: 3, scope: !2033)
!2120 = !DILocation(line: 103, column: 10, scope: !2113, inlinedAt: !2119)
!2121 = !DILocation(line: 240, column: 3, scope: !2033)
!2122 = !DILocation(line: 241, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2033, file: !491, line: 241, column: 7)
!2124 = !DILocation(line: 241, column: 7, scope: !2033)
!2125 = !DILocation(line: 242, column: 5, scope: !2123)
!2126 = !DILocation(line: 243, column: 1, scope: !2033)
!2127 = !DISubprogram(name: "__vfprintf_chk", scope: !955, file: !955, line: 96, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!85, !2046, !85, !959, !501}
!2130 = !DISubprogram(name: "strerror_r", scope: !1089, file: !1089, line: 444, type: !2131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!130, !85, !130, !138}
!2133 = !DISubprogram(name: "fflush_unlocked", scope: !964, file: !964, line: 239, type: !2134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!85, !2047}
!2136 = !DISubprogram(name: "fcntl", scope: !2137, file: !2137, line: 149, type: !2138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2137 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!85, !85, !85, null}
!2140 = distinct !DISubprogram(name: "error", scope: !491, file: !491, line: 285, type: !2141, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !85, !85, !141, null}
!2143 = !{!2144, !2145, !2146, !2147}
!2144 = !DILocalVariable(name: "status", arg: 1, scope: !2140, file: !491, line: 285, type: !85)
!2145 = !DILocalVariable(name: "errnum", arg: 2, scope: !2140, file: !491, line: 285, type: !85)
!2146 = !DILocalVariable(name: "message", arg: 3, scope: !2140, file: !491, line: 285, type: !141)
!2147 = !DILocalVariable(name: "ap", scope: !2140, file: !491, line: 287, type: !2148)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !964, line: 52, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2150, line: 12, baseType: !2151)
!2150 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !491, baseType: !2152)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 192, elements: !57)
!2153 = distinct !DIAssignID()
!2154 = !DILocation(line: 0, scope: !2140)
!2155 = !DILocation(line: 287, column: 3, scope: !2140)
!2156 = !DILocation(line: 288, column: 3, scope: !2140)
!2157 = !DILocation(line: 289, column: 3, scope: !2140)
!2158 = !DILocation(line: 290, column: 3, scope: !2140)
!2159 = !DILocation(line: 291, column: 1, scope: !2140)
!2160 = !DILocation(line: 0, scope: !498)
!2161 = !DILocation(line: 302, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !498, file: !491, line: 302, column: 7)
!2163 = !DILocation(line: 302, column: 7, scope: !498)
!2164 = !DILocation(line: 307, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !491, line: 307, column: 11)
!2166 = distinct !DILexicalBlock(scope: !2162, file: !491, line: 303, column: 5)
!2167 = !DILocation(line: 307, column: 27, scope: !2165)
!2168 = !DILocation(line: 308, column: 11, scope: !2165)
!2169 = !DILocation(line: 308, column: 28, scope: !2165)
!2170 = !DILocation(line: 308, column: 25, scope: !2165)
!2171 = !DILocation(line: 309, column: 15, scope: !2165)
!2172 = !DILocation(line: 309, column: 33, scope: !2165)
!2173 = !DILocation(line: 310, column: 19, scope: !2165)
!2174 = !DILocation(line: 311, column: 22, scope: !2165)
!2175 = !DILocation(line: 311, column: 56, scope: !2165)
!2176 = !DILocation(line: 307, column: 11, scope: !2166)
!2177 = !DILocation(line: 316, column: 21, scope: !2166)
!2178 = !DILocation(line: 317, column: 23, scope: !2166)
!2179 = !DILocation(line: 318, column: 5, scope: !2166)
!2180 = !DILocation(line: 327, column: 3, scope: !498)
!2181 = !DILocation(line: 331, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !498, file: !491, line: 331, column: 7)
!2183 = !DILocation(line: 331, column: 7, scope: !498)
!2184 = !DILocation(line: 332, column: 5, scope: !2182)
!2185 = !DILocation(line: 338, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !491, line: 334, column: 5)
!2187 = !DILocation(line: 346, column: 3, scope: !498)
!2188 = !DILocation(line: 350, column: 3, scope: !498)
!2189 = !DILocation(line: 356, column: 1, scope: !498)
!2190 = distinct !DISubprogram(name: "error_at_line", scope: !491, file: !491, line: 359, type: !2191, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !85, !85, !141, !76, !141, null}
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199}
!2194 = !DILocalVariable(name: "status", arg: 1, scope: !2190, file: !491, line: 359, type: !85)
!2195 = !DILocalVariable(name: "errnum", arg: 2, scope: !2190, file: !491, line: 359, type: !85)
!2196 = !DILocalVariable(name: "file_name", arg: 3, scope: !2190, file: !491, line: 359, type: !141)
!2197 = !DILocalVariable(name: "line_number", arg: 4, scope: !2190, file: !491, line: 360, type: !76)
!2198 = !DILocalVariable(name: "message", arg: 5, scope: !2190, file: !491, line: 360, type: !141)
!2199 = !DILocalVariable(name: "ap", scope: !2190, file: !491, line: 362, type: !2148)
!2200 = distinct !DIAssignID()
!2201 = !DILocation(line: 0, scope: !2190)
!2202 = !DILocation(line: 362, column: 3, scope: !2190)
!2203 = !DILocation(line: 363, column: 3, scope: !2190)
!2204 = !DILocation(line: 364, column: 3, scope: !2190)
!2205 = !DILocation(line: 366, column: 3, scope: !2190)
!2206 = !DILocation(line: 367, column: 1, scope: !2190)
!2207 = distinct !DISubprogram(name: "fdadvise", scope: !810, file: !810, line: 25, type: !2208, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !2212)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !85, !2210, !2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !964, line: 63, baseType: !234)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !813, line: 51, baseType: !812)
!2212 = !{!2213, !2214, !2215, !2216}
!2213 = !DILocalVariable(name: "fd", arg: 1, scope: !2207, file: !810, line: 25, type: !85)
!2214 = !DILocalVariable(name: "offset", arg: 2, scope: !2207, file: !810, line: 25, type: !2210)
!2215 = !DILocalVariable(name: "len", arg: 3, scope: !2207, file: !810, line: 25, type: !2210)
!2216 = !DILocalVariable(name: "advice", arg: 4, scope: !2207, file: !810, line: 25, type: !2211)
!2217 = !DILocation(line: 0, scope: !2207)
!2218 = !DILocation(line: 28, column: 3, scope: !2207)
!2219 = !DILocation(line: 30, column: 1, scope: !2207)
!2220 = !DISubprogram(name: "posix_fadvise", scope: !2137, file: !2137, line: 273, type: !2221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!85, !85, !2210, !2210, !85}
!2223 = distinct !DISubprogram(name: "fadvise", scope: !810, file: !810, line: 33, type: !2224, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !2260)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !2226, !2211}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !2228)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2228, file: !212, line: 51, baseType: !85, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2228, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2228, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2228, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2228, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2228, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2228, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2228, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2228, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2228, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2228, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2228, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2228, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2228, file: !212, line: 70, baseType: !2244, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2228, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2228, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2228, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2228, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2228, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2228, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2228, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2228, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2228, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2228, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2228, file: !212, line: 93, baseType: !2244, size: 64, offset: 1344)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2228, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2228, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2228, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2228, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "fp", arg: 1, scope: !2223, file: !810, line: 33, type: !2226)
!2262 = !DILocalVariable(name: "advice", arg: 2, scope: !2223, file: !810, line: 33, type: !2211)
!2263 = !DILocation(line: 0, scope: !2223)
!2264 = !DILocation(line: 35, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2223, file: !810, line: 35, column: 7)
!2266 = !DILocation(line: 35, column: 7, scope: !2223)
!2267 = !DILocation(line: 36, column: 15, scope: !2265)
!2268 = !DILocation(line: 0, scope: !2207, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 36, column: 5, scope: !2265)
!2270 = !DILocation(line: 28, column: 3, scope: !2207, inlinedAt: !2269)
!2271 = !DILocation(line: 36, column: 5, scope: !2265)
!2272 = !DILocation(line: 37, column: 1, scope: !2223)
!2273 = !DISubprogram(name: "fileno", scope: !964, file: !964, line: 809, type: !2274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!85, !2226}
!2276 = distinct !DISubprogram(name: "open_safer", scope: !815, file: !815, line: 29, type: !2277, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !814, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!85, !141, !85, null}
!2279 = !{!2280, !2281, !2282, !2284}
!2280 = !DILocalVariable(name: "file", arg: 1, scope: !2276, file: !815, line: 29, type: !141)
!2281 = !DILocalVariable(name: "flags", arg: 2, scope: !2276, file: !815, line: 29, type: !85)
!2282 = !DILocalVariable(name: "mode", scope: !2276, file: !815, line: 31, type: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1184, line: 69, baseType: !1550)
!2284 = !DILocalVariable(name: "ap", scope: !2285, file: !815, line: 35, type: !2287)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !815, line: 34, column: 5)
!2286 = distinct !DILexicalBlock(scope: !2276, file: !815, line: 33, column: 7)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2288, line: 12, baseType: !2289)
!2288 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !815, baseType: !2290)
!2290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2291, size: 192, elements: !57)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2291, file: !815, line: 35, baseType: !76, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2291, file: !815, line: 35, baseType: !76, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2291, file: !815, line: 35, baseType: !131, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2291, file: !815, line: 35, baseType: !131, size: 64, offset: 128)
!2297 = distinct !DIAssignID()
!2298 = !DILocation(line: 0, scope: !2285)
!2299 = !DILocation(line: 0, scope: !2276)
!2300 = !DILocation(line: 33, column: 13, scope: !2286)
!2301 = !DILocation(line: 33, column: 7, scope: !2276)
!2302 = !DILocation(line: 35, column: 7, scope: !2285)
!2303 = !DILocation(line: 36, column: 7, scope: !2285)
!2304 = !DILocation(line: 40, column: 14, scope: !2285)
!2305 = distinct !DIAssignID()
!2306 = distinct !DIAssignID()
!2307 = !DILocation(line: 42, column: 7, scope: !2285)
!2308 = !DILocation(line: 43, column: 5, scope: !2286)
!2309 = !DILocation(line: 43, column: 5, scope: !2285)
!2310 = !DILocation(line: 45, column: 20, scope: !2276)
!2311 = !DILocation(line: 45, column: 10, scope: !2276)
!2312 = !DILocation(line: 45, column: 3, scope: !2276)
!2313 = !DISubprogram(name: "open", scope: !2137, file: !2137, line: 181, type: !2277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2314 = distinct !DISubprogram(name: "getprogname", scope: !817, file: !817, line: 54, type: !2315, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!141}
!2317 = !DILocation(line: 58, column: 10, scope: !2314)
!2318 = !DILocation(line: 58, column: 3, scope: !2314)
!2319 = distinct !DISubprogram(name: "isapipe", scope: !819, file: !819, line: 72, type: !1440, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !2320)
!2320 = !{!2321, !2322, !2324, !2325, !2347}
!2321 = !DILocalVariable(name: "fd", arg: 1, scope: !2319, file: !819, line: 72, type: !85)
!2322 = !DILocalVariable(name: "pipe_link_count_max", scope: !2319, file: !819, line: 74, type: !2323)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1184, line: 74, baseType: !1548)
!2324 = !DILocalVariable(name: "check_for_fifo", scope: !2319, file: !819, line: 75, type: !179)
!2325 = !DILocalVariable(name: "st", scope: !2319, file: !819, line: 77, type: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1541, line: 26, size: 1152, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2344, !2345, !2346}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2326, file: !1541, line: 31, baseType: !1544, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2326, file: !1541, line: 36, baseType: !1546, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2326, file: !1541, line: 44, baseType: !1548, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2326, file: !1541, line: 45, baseType: !1550, size: 32, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2326, file: !1541, line: 47, baseType: !1552, size: 32, offset: 224)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2326, file: !1541, line: 48, baseType: !1554, size: 32, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2326, file: !1541, line: 50, baseType: !85, size: 32, offset: 288)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2326, file: !1541, line: 52, baseType: !1544, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2326, file: !1541, line: 57, baseType: !234, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2326, file: !1541, line: 61, baseType: !1559, size: 64, offset: 448)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2326, file: !1541, line: 63, baseType: !1561, size: 64, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2326, file: !1541, line: 74, baseType: !2340, size: 128, offset: 576)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1564, line: 11, size: 128, elements: !2341)
!2341 = !{!2342, !2343}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2340, file: !1564, line: 16, baseType: !1567, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2340, file: !1564, line: 21, baseType: !1569, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2326, file: !1541, line: 75, baseType: !2340, size: 128, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2326, file: !1541, line: 76, baseType: !2340, size: 128, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2326, file: !1541, line: 89, baseType: !1573, size: 192, offset: 960)
!2347 = !DILocalVariable(name: "fstat_result", scope: !2319, file: !819, line: 78, type: !85)
!2348 = distinct !DIAssignID()
!2349 = !DILocation(line: 0, scope: !2319)
!2350 = !DILocation(line: 77, column: 3, scope: !2319)
!2351 = !DILocation(line: 78, column: 22, scope: !2319)
!2352 = !DILocation(line: 79, column: 20, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2319, file: !819, line: 79, column: 7)
!2354 = !DILocation(line: 79, column: 7, scope: !2319)
!2355 = !DILocation(line: 118, column: 9, scope: !2319)
!2356 = !{!2357, !1829, i64 16}
!2357 = !{!"stat", !1829, i64 0, !1829, i64 8, !1829, i64 16, !970, i64 24, !970, i64 28, !970, i64 32, !970, i64 36, !1829, i64 40, !1829, i64 48, !1829, i64 56, !1829, i64 64, !2358, i64 72, !2358, i64 88, !2358, i64 104, !905, i64 120}
!2358 = !{!"timespec", !1829, i64 0, !1829, i64 8}
!2359 = !DILocation(line: 118, column: 18, scope: !2319)
!2360 = !DILocation(line: 119, column: 6, scope: !2319)
!2361 = !DILocation(line: 117, column: 3, scope: !2319)
!2362 = !DILocation(line: 120, column: 1, scope: !2319)
!2363 = distinct !DISubprogram(name: "set_program_name", scope: !536, file: !536, line: 37, type: !919, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2364)
!2364 = !{!2365, !2366, !2367}
!2365 = !DILocalVariable(name: "argv0", arg: 1, scope: !2363, file: !536, line: 37, type: !141)
!2366 = !DILocalVariable(name: "slash", scope: !2363, file: !536, line: 44, type: !141)
!2367 = !DILocalVariable(name: "base", scope: !2363, file: !536, line: 45, type: !141)
!2368 = !DILocation(line: 0, scope: !2363)
!2369 = !DILocation(line: 44, column: 23, scope: !2363)
!2370 = !DILocation(line: 45, column: 22, scope: !2363)
!2371 = !DILocation(line: 46, column: 17, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2363, file: !536, line: 46, column: 7)
!2373 = !DILocation(line: 46, column: 9, scope: !2372)
!2374 = !DILocation(line: 46, column: 25, scope: !2372)
!2375 = !DILocation(line: 46, column: 40, scope: !2372)
!2376 = !DILocalVariable(name: "__s1", arg: 1, scope: !2377, file: !982, line: 974, type: !128)
!2377 = distinct !DISubprogram(name: "memeq", scope: !982, file: !982, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2378)
!2378 = !{!2376, !2379, !2380}
!2379 = !DILocalVariable(name: "__s2", arg: 2, scope: !2377, file: !982, line: 974, type: !128)
!2380 = !DILocalVariable(name: "__n", arg: 3, scope: !2377, file: !982, line: 974, type: !138)
!2381 = !DILocation(line: 0, scope: !2377, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 46, column: 28, scope: !2372)
!2383 = !DILocation(line: 976, column: 11, scope: !2377, inlinedAt: !2382)
!2384 = !DILocation(line: 976, column: 10, scope: !2377, inlinedAt: !2382)
!2385 = !DILocation(line: 46, column: 7, scope: !2363)
!2386 = !DILocation(line: 49, column: 11, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !536, line: 49, column: 11)
!2388 = distinct !DILexicalBlock(scope: !2372, file: !536, line: 47, column: 5)
!2389 = !DILocation(line: 49, column: 36, scope: !2387)
!2390 = !DILocation(line: 49, column: 11, scope: !2388)
!2391 = !DILocation(line: 65, column: 16, scope: !2363)
!2392 = !DILocation(line: 71, column: 27, scope: !2363)
!2393 = !DILocation(line: 74, column: 33, scope: !2363)
!2394 = !DILocation(line: 76, column: 1, scope: !2363)
!2395 = !DISubprogram(name: "strrchr", scope: !1089, file: !1089, line: 273, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = distinct !DIAssignID()
!2397 = !DILocation(line: 0, scope: !545)
!2398 = distinct !DIAssignID()
!2399 = !DILocation(line: 40, column: 29, scope: !545)
!2400 = !DILocation(line: 41, column: 19, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !545, file: !546, line: 41, column: 7)
!2402 = !DILocation(line: 41, column: 7, scope: !545)
!2403 = !DILocation(line: 47, column: 3, scope: !545)
!2404 = !DILocation(line: 48, column: 3, scope: !545)
!2405 = !DILocalVariable(name: "ps", arg: 1, scope: !2406, file: !2407, line: 1135, type: !2410)
!2406 = distinct !DISubprogram(name: "mbszero", scope: !2407, file: !2407, line: 1135, type: !2408, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2411)
!2407 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!2411 = !{!2405}
!2412 = !DILocation(line: 0, scope: !2406, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 48, column: 18, scope: !545)
!2414 = !DILocalVariable(name: "__dest", arg: 1, scope: !2415, file: !2416, line: 57, type: !131)
!2415 = distinct !DISubprogram(name: "memset", scope: !2416, file: !2416, line: 57, type: !2417, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !2419)
!2416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!131, !131, !85, !138}
!2419 = !{!2414, !2420, !2421}
!2420 = !DILocalVariable(name: "__ch", arg: 2, scope: !2415, file: !2416, line: 57, type: !85)
!2421 = !DILocalVariable(name: "__len", arg: 3, scope: !2415, file: !2416, line: 57, type: !138)
!2422 = !DILocation(line: 0, scope: !2415, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 1137, column: 3, scope: !2406, inlinedAt: !2413)
!2424 = !DILocation(line: 59, column: 10, scope: !2415, inlinedAt: !2423)
!2425 = !DILocation(line: 49, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !545, file: !546, line: 49, column: 7)
!2427 = !DILocation(line: 49, column: 39, scope: !2426)
!2428 = !DILocation(line: 49, column: 44, scope: !2426)
!2429 = !DILocation(line: 54, column: 1, scope: !545)
!2430 = !DISubprogram(name: "mbrtoc32", scope: !557, file: !557, line: 57, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!138, !2433, !959, !138, !2435}
!2433 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2434)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2410)
!2436 = distinct !DISubprogram(name: "clone_quoting_options", scope: !576, file: !576, line: 113, type: !2437, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2440)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2439, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "o", arg: 1, scope: !2436, file: !576, line: 113, type: !2439)
!2442 = !DILocalVariable(name: "saved_errno", scope: !2436, file: !576, line: 115, type: !85)
!2443 = !DILocalVariable(name: "p", scope: !2436, file: !576, line: 116, type: !2439)
!2444 = !DILocation(line: 0, scope: !2436)
!2445 = !DILocation(line: 115, column: 21, scope: !2436)
!2446 = !DILocation(line: 116, column: 40, scope: !2436)
!2447 = !DILocation(line: 116, column: 31, scope: !2436)
!2448 = !DILocation(line: 118, column: 9, scope: !2436)
!2449 = !DILocation(line: 119, column: 3, scope: !2436)
!2450 = distinct !DISubprogram(name: "get_quoting_style", scope: !576, file: !576, line: 124, type: !2451, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2455)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!446, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "o", arg: 1, scope: !2450, file: !576, line: 124, type: !2453)
!2457 = !DILocation(line: 0, scope: !2450)
!2458 = !DILocation(line: 126, column: 11, scope: !2450)
!2459 = !DILocation(line: 126, column: 46, scope: !2450)
!2460 = !{!2461, !970, i64 0}
!2461 = !{!"quoting_options", !970, i64 0, !970, i64 4, !905, i64 8, !904, i64 40, !904, i64 48}
!2462 = !DILocation(line: 126, column: 3, scope: !2450)
!2463 = distinct !DISubprogram(name: "set_quoting_style", scope: !576, file: !576, line: 132, type: !2464, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !2439, !446}
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "o", arg: 1, scope: !2463, file: !576, line: 132, type: !2439)
!2468 = !DILocalVariable(name: "s", arg: 2, scope: !2463, file: !576, line: 132, type: !446)
!2469 = !DILocation(line: 0, scope: !2463)
!2470 = !DILocation(line: 134, column: 4, scope: !2463)
!2471 = !DILocation(line: 134, column: 45, scope: !2463)
!2472 = !DILocation(line: 135, column: 1, scope: !2463)
!2473 = distinct !DISubprogram(name: "set_char_quoting", scope: !576, file: !576, line: 143, type: !2474, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!85, !2439, !4, !85}
!2476 = !{!2477, !2478, !2479, !2480, !2481, !2483, !2484}
!2477 = !DILocalVariable(name: "o", arg: 1, scope: !2473, file: !576, line: 143, type: !2439)
!2478 = !DILocalVariable(name: "c", arg: 2, scope: !2473, file: !576, line: 143, type: !4)
!2479 = !DILocalVariable(name: "i", arg: 3, scope: !2473, file: !576, line: 143, type: !85)
!2480 = !DILocalVariable(name: "uc", scope: !2473, file: !576, line: 145, type: !143)
!2481 = !DILocalVariable(name: "p", scope: !2473, file: !576, line: 146, type: !2482)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2483 = !DILocalVariable(name: "shift", scope: !2473, file: !576, line: 148, type: !85)
!2484 = !DILocalVariable(name: "r", scope: !2473, file: !576, line: 149, type: !76)
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
!2498 = distinct !DISubprogram(name: "set_quoting_flags", scope: !576, file: !576, line: 159, type: !2499, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!85, !2439, !85}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "o", arg: 1, scope: !2498, file: !576, line: 159, type: !2439)
!2503 = !DILocalVariable(name: "i", arg: 2, scope: !2498, file: !576, line: 159, type: !85)
!2504 = !DILocalVariable(name: "r", scope: !2498, file: !576, line: 163, type: !85)
!2505 = !DILocation(line: 0, scope: !2498)
!2506 = !DILocation(line: 161, column: 8, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2498, file: !576, line: 161, column: 7)
!2508 = !DILocation(line: 161, column: 7, scope: !2498)
!2509 = !DILocation(line: 163, column: 14, scope: !2498)
!2510 = !{!2461, !970, i64 4}
!2511 = !DILocation(line: 164, column: 12, scope: !2498)
!2512 = !DILocation(line: 165, column: 3, scope: !2498)
!2513 = distinct !DISubprogram(name: "set_custom_quoting", scope: !576, file: !576, line: 169, type: !2514, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2439, !141, !141}
!2516 = !{!2517, !2518, !2519}
!2517 = !DILocalVariable(name: "o", arg: 1, scope: !2513, file: !576, line: 169, type: !2439)
!2518 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2513, file: !576, line: 170, type: !141)
!2519 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2513, file: !576, line: 170, type: !141)
!2520 = !DILocation(line: 0, scope: !2513)
!2521 = !DILocation(line: 172, column: 8, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2513, file: !576, line: 172, column: 7)
!2523 = !DILocation(line: 172, column: 7, scope: !2513)
!2524 = !DILocation(line: 174, column: 12, scope: !2513)
!2525 = !DILocation(line: 175, column: 8, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2513, file: !576, line: 175, column: 7)
!2527 = !DILocation(line: 175, column: 19, scope: !2526)
!2528 = !DILocation(line: 176, column: 5, scope: !2526)
!2529 = !DILocation(line: 177, column: 6, scope: !2513)
!2530 = !DILocation(line: 177, column: 17, scope: !2513)
!2531 = !{!2461, !904, i64 40}
!2532 = !DILocation(line: 178, column: 6, scope: !2513)
!2533 = !DILocation(line: 178, column: 18, scope: !2513)
!2534 = !{!2461, !904, i64 48}
!2535 = !DILocation(line: 179, column: 1, scope: !2513)
!2536 = !DISubprogram(name: "abort", scope: !1093, file: !1093, line: 598, type: !471, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2537 = distinct !DISubprogram(name: "quotearg_buffer", scope: !576, file: !576, line: 774, type: !2538, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!138, !130, !138, !141, !138, !2453}
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2541 = !DILocalVariable(name: "buffer", arg: 1, scope: !2537, file: !576, line: 774, type: !130)
!2542 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2537, file: !576, line: 774, type: !138)
!2543 = !DILocalVariable(name: "arg", arg: 3, scope: !2537, file: !576, line: 775, type: !141)
!2544 = !DILocalVariable(name: "argsize", arg: 4, scope: !2537, file: !576, line: 775, type: !138)
!2545 = !DILocalVariable(name: "o", arg: 5, scope: !2537, file: !576, line: 776, type: !2453)
!2546 = !DILocalVariable(name: "p", scope: !2537, file: !576, line: 778, type: !2453)
!2547 = !DILocalVariable(name: "saved_errno", scope: !2537, file: !576, line: 779, type: !85)
!2548 = !DILocalVariable(name: "r", scope: !2537, file: !576, line: 780, type: !138)
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
!2560 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !576, file: !576, line: 251, type: !2561, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2565)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!138, !130, !138, !141, !138, !446, !85, !2563, !141, !141}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2591, !2593, !2596, !2597, !2598, !2599, !2602, !2603, !2605, !2606, !2609, !2613, !2614, !2622, !2625, !2626, !2627}
!2566 = !DILocalVariable(name: "buffer", arg: 1, scope: !2560, file: !576, line: 251, type: !130)
!2567 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2560, file: !576, line: 251, type: !138)
!2568 = !DILocalVariable(name: "arg", arg: 3, scope: !2560, file: !576, line: 252, type: !141)
!2569 = !DILocalVariable(name: "argsize", arg: 4, scope: !2560, file: !576, line: 252, type: !138)
!2570 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2560, file: !576, line: 253, type: !446)
!2571 = !DILocalVariable(name: "flags", arg: 6, scope: !2560, file: !576, line: 253, type: !85)
!2572 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2560, file: !576, line: 254, type: !2563)
!2573 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2560, file: !576, line: 255, type: !141)
!2574 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2560, file: !576, line: 256, type: !141)
!2575 = !DILocalVariable(name: "unibyte_locale", scope: !2560, file: !576, line: 258, type: !179)
!2576 = !DILocalVariable(name: "len", scope: !2560, file: !576, line: 260, type: !138)
!2577 = !DILocalVariable(name: "orig_buffersize", scope: !2560, file: !576, line: 261, type: !138)
!2578 = !DILocalVariable(name: "quote_string", scope: !2560, file: !576, line: 262, type: !141)
!2579 = !DILocalVariable(name: "quote_string_len", scope: !2560, file: !576, line: 263, type: !138)
!2580 = !DILocalVariable(name: "backslash_escapes", scope: !2560, file: !576, line: 264, type: !179)
!2581 = !DILocalVariable(name: "elide_outer_quotes", scope: !2560, file: !576, line: 265, type: !179)
!2582 = !DILocalVariable(name: "encountered_single_quote", scope: !2560, file: !576, line: 266, type: !179)
!2583 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2560, file: !576, line: 267, type: !179)
!2584 = !DILabel(scope: !2560, name: "process_input", file: !576, line: 308)
!2585 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2560, file: !576, line: 309, type: !179)
!2586 = !DILocalVariable(name: "lq", scope: !2587, file: !576, line: 361, type: !141)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !576, line: 361, column: 11)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !576, line: 360, column: 13)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !576, line: 333, column: 7)
!2590 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 312, column: 5)
!2591 = !DILocalVariable(name: "i", scope: !2592, file: !576, line: 395, type: !138)
!2592 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 395, column: 3)
!2593 = !DILocalVariable(name: "is_right_quote", scope: !2594, file: !576, line: 397, type: !179)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !576, line: 396, column: 5)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !576, line: 395, column: 3)
!2596 = !DILocalVariable(name: "escaping", scope: !2594, file: !576, line: 398, type: !179)
!2597 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2594, file: !576, line: 399, type: !179)
!2598 = !DILocalVariable(name: "c", scope: !2594, file: !576, line: 417, type: !143)
!2599 = !DILabel(scope: !2600, name: "c_and_shell_escape", file: !576, line: 502)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 478, column: 9)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 419, column: 9)
!2602 = !DILabel(scope: !2600, name: "c_escape", file: !576, line: 507)
!2603 = !DILocalVariable(name: "m", scope: !2604, file: !576, line: 598, type: !138)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 596, column: 11)
!2605 = !DILocalVariable(name: "printable", scope: !2604, file: !576, line: 600, type: !179)
!2606 = !DILocalVariable(name: "mbs", scope: !2607, file: !576, line: 609, type: !646)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !576, line: 608, column: 15)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !576, line: 602, column: 17)
!2609 = !DILocalVariable(name: "w", scope: !2610, file: !576, line: 618, type: !556)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !576, line: 617, column: 19)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !576, line: 616, column: 17)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !576, line: 616, column: 17)
!2613 = !DILocalVariable(name: "bytes", scope: !2610, file: !576, line: 619, type: !138)
!2614 = !DILocalVariable(name: "j", scope: !2615, file: !576, line: 648, type: !138)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !576, line: 648, column: 29)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !576, line: 647, column: 27)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !576, line: 645, column: 29)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !576, line: 636, column: 23)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !576, line: 628, column: 30)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !576, line: 623, column: 30)
!2621 = distinct !DILexicalBlock(scope: !2610, file: !576, line: 621, column: 25)
!2622 = !DILocalVariable(name: "ilim", scope: !2623, file: !576, line: 674, type: !138)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !576, line: 671, column: 15)
!2624 = distinct !DILexicalBlock(scope: !2604, file: !576, line: 670, column: 17)
!2625 = !DILabel(scope: !2594, name: "store_escape", file: !576, line: 709)
!2626 = !DILabel(scope: !2594, name: "store_c", file: !576, line: 712)
!2627 = !DILabel(scope: !2560, name: "force_outer_quoting_style", file: !576, line: 753)
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
!2639 = !DILocation(line: 265, column: 8, scope: !2560)
!2640 = !DILocation(line: 267, column: 3, scope: !2560)
!2641 = !DILocation(line: 261, column: 10, scope: !2560)
!2642 = !DILocation(line: 262, column: 15, scope: !2560)
!2643 = !DILocation(line: 263, column: 10, scope: !2560)
!2644 = !DILocation(line: 264, column: 8, scope: !2560)
!2645 = !DILocation(line: 266, column: 8, scope: !2560)
!2646 = !DILocation(line: 267, column: 8, scope: !2560)
!2647 = !DILocation(line: 308, column: 2, scope: !2560)
!2648 = !DILocation(line: 311, column: 3, scope: !2560)
!2649 = !DILocation(line: 318, column: 11, scope: !2590)
!2650 = !DILocation(line: 318, column: 12, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2590, file: !576, line: 318, column: 11)
!2652 = !DILocation(line: 319, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !576, line: 319, column: 9)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !576, line: 319, column: 9)
!2655 = !DILocation(line: 319, column: 9, scope: !2654)
!2656 = !DILocation(line: 0, scope: !637, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 357, column: 26, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !576, line: 335, column: 11)
!2659 = distinct !DILexicalBlock(scope: !2589, file: !576, line: 334, column: 13)
!2660 = !DILocation(line: 199, column: 29, scope: !637, inlinedAt: !2657)
!2661 = !DILocation(line: 201, column: 19, scope: !2662, inlinedAt: !2657)
!2662 = distinct !DILexicalBlock(scope: !637, file: !576, line: 201, column: 7)
!2663 = !DILocation(line: 201, column: 7, scope: !637, inlinedAt: !2657)
!2664 = !DILocation(line: 229, column: 3, scope: !637, inlinedAt: !2657)
!2665 = !DILocation(line: 230, column: 3, scope: !637, inlinedAt: !2657)
!2666 = !DILocalVariable(name: "ps", arg: 1, scope: !2667, file: !2407, line: 1135, type: !2670)
!2667 = distinct !DISubprogram(name: "mbszero", scope: !2407, file: !2407, line: 1135, type: !2668, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2671)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!2671 = !{!2666}
!2672 = !DILocation(line: 0, scope: !2667, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 230, column: 18, scope: !637, inlinedAt: !2657)
!2674 = !DILocalVariable(name: "__dest", arg: 1, scope: !2675, file: !2416, line: 57, type: !131)
!2675 = distinct !DISubprogram(name: "memset", scope: !2416, file: !2416, line: 57, type: !2417, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2676)
!2676 = !{!2674, !2677, !2678}
!2677 = !DILocalVariable(name: "__ch", arg: 2, scope: !2675, file: !2416, line: 57, type: !85)
!2678 = !DILocalVariable(name: "__len", arg: 3, scope: !2675, file: !2416, line: 57, type: !138)
!2679 = !DILocation(line: 0, scope: !2675, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1137, column: 3, scope: !2667, inlinedAt: !2673)
!2681 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2680)
!2682 = !DILocation(line: 231, column: 7, scope: !2683, inlinedAt: !2657)
!2683 = distinct !DILexicalBlock(scope: !637, file: !576, line: 231, column: 7)
!2684 = !DILocation(line: 231, column: 40, scope: !2683, inlinedAt: !2657)
!2685 = !DILocation(line: 231, column: 45, scope: !2683, inlinedAt: !2657)
!2686 = !DILocation(line: 235, column: 1, scope: !637, inlinedAt: !2657)
!2687 = !DILocation(line: 0, scope: !637, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 358, column: 27, scope: !2658)
!2689 = !DILocation(line: 199, column: 29, scope: !637, inlinedAt: !2688)
!2690 = !DILocation(line: 201, column: 19, scope: !2662, inlinedAt: !2688)
!2691 = !DILocation(line: 201, column: 7, scope: !637, inlinedAt: !2688)
!2692 = !DILocation(line: 229, column: 3, scope: !637, inlinedAt: !2688)
!2693 = !DILocation(line: 230, column: 3, scope: !637, inlinedAt: !2688)
!2694 = !DILocation(line: 0, scope: !2667, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 230, column: 18, scope: !637, inlinedAt: !2688)
!2696 = !DILocation(line: 0, scope: !2675, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1137, column: 3, scope: !2667, inlinedAt: !2695)
!2698 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2697)
!2699 = !DILocation(line: 231, column: 7, scope: !2683, inlinedAt: !2688)
!2700 = !DILocation(line: 231, column: 40, scope: !2683, inlinedAt: !2688)
!2701 = !DILocation(line: 231, column: 45, scope: !2683, inlinedAt: !2688)
!2702 = !DILocation(line: 235, column: 1, scope: !637, inlinedAt: !2688)
!2703 = !DILocation(line: 360, column: 14, scope: !2588)
!2704 = !DILocation(line: 360, column: 13, scope: !2589)
!2705 = !DILocation(line: 0, scope: !2587)
!2706 = !DILocation(line: 361, column: 45, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2587, file: !576, line: 361, column: 11)
!2708 = !DILocation(line: 361, column: 11, scope: !2587)
!2709 = !DILocation(line: 362, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !576, line: 362, column: 13)
!2711 = distinct !DILexicalBlock(scope: !2707, file: !576, line: 362, column: 13)
!2712 = !DILocation(line: 362, column: 13, scope: !2711)
!2713 = !DILocation(line: 361, column: 52, scope: !2707)
!2714 = distinct !{!2714, !2708, !2715, !1016}
!2715 = !DILocation(line: 362, column: 13, scope: !2587)
!2716 = !DILocation(line: 260, column: 10, scope: !2560)
!2717 = !DILocation(line: 365, column: 28, scope: !2589)
!2718 = !DILocation(line: 367, column: 7, scope: !2590)
!2719 = !DILocation(line: 370, column: 7, scope: !2590)
!2720 = !DILocation(line: 373, column: 7, scope: !2590)
!2721 = !DILocation(line: 376, column: 12, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2590, file: !576, line: 376, column: 11)
!2723 = !DILocation(line: 376, column: 11, scope: !2590)
!2724 = !DILocation(line: 381, column: 12, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2590, file: !576, line: 381, column: 11)
!2726 = !DILocation(line: 381, column: 11, scope: !2590)
!2727 = !DILocation(line: 382, column: 9, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !576, line: 382, column: 9)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !576, line: 382, column: 9)
!2730 = !DILocation(line: 382, column: 9, scope: !2729)
!2731 = !DILocation(line: 389, column: 7, scope: !2590)
!2732 = !DILocation(line: 392, column: 7, scope: !2590)
!2733 = !DILocation(line: 0, scope: !2592)
!2734 = !DILocation(line: 395, column: 8, scope: !2592)
!2735 = !DILocation(line: 309, column: 8, scope: !2560)
!2736 = !DILocation(line: 395, scope: !2592)
!2737 = !DILocation(line: 395, column: 34, scope: !2595)
!2738 = !DILocation(line: 395, column: 26, scope: !2595)
!2739 = !DILocation(line: 395, column: 48, scope: !2595)
!2740 = !DILocation(line: 395, column: 55, scope: !2595)
!2741 = !DILocation(line: 395, column: 3, scope: !2592)
!2742 = !DILocation(line: 395, column: 67, scope: !2595)
!2743 = !DILocation(line: 0, scope: !2594)
!2744 = !DILocation(line: 402, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 401, column: 11)
!2746 = !DILocation(line: 404, column: 17, scope: !2745)
!2747 = !DILocation(line: 405, column: 39, scope: !2745)
!2748 = !DILocation(line: 409, column: 32, scope: !2745)
!2749 = !DILocation(line: 405, column: 19, scope: !2745)
!2750 = !DILocation(line: 405, column: 15, scope: !2745)
!2751 = !DILocation(line: 410, column: 11, scope: !2745)
!2752 = !DILocation(line: 410, column: 25, scope: !2745)
!2753 = !DILocalVariable(name: "__s1", arg: 1, scope: !2754, file: !982, line: 974, type: !128)
!2754 = distinct !DISubprogram(name: "memeq", scope: !982, file: !982, line: 974, type: !1703, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2755)
!2755 = !{!2753, !2756, !2757}
!2756 = !DILocalVariable(name: "__s2", arg: 2, scope: !2754, file: !982, line: 974, type: !128)
!2757 = !DILocalVariable(name: "__n", arg: 3, scope: !2754, file: !982, line: 974, type: !138)
!2758 = !DILocation(line: 0, scope: !2754, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 410, column: 14, scope: !2745)
!2760 = !DILocation(line: 976, column: 11, scope: !2754, inlinedAt: !2759)
!2761 = !DILocation(line: 976, column: 10, scope: !2754, inlinedAt: !2759)
!2762 = !DILocation(line: 401, column: 11, scope: !2594)
!2763 = !DILocation(line: 417, column: 25, scope: !2594)
!2764 = !DILocation(line: 418, column: 7, scope: !2594)
!2765 = !DILocation(line: 421, column: 15, scope: !2601)
!2766 = !DILocation(line: 423, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !576, line: 423, column: 15)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !576, line: 422, column: 13)
!2769 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 421, column: 15)
!2770 = !DILocation(line: 423, column: 15, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !576, line: 423, column: 15)
!2772 = !DILocation(line: 423, column: 15, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !576, line: 423, column: 15)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !576, line: 423, column: 15)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !576, line: 423, column: 15)
!2776 = !DILocation(line: 423, column: 15, scope: !2774)
!2777 = !DILocation(line: 423, column: 15, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !576, line: 423, column: 15)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !576, line: 423, column: 15)
!2780 = !DILocation(line: 423, column: 15, scope: !2779)
!2781 = !DILocation(line: 423, column: 15, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !576, line: 423, column: 15)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !576, line: 423, column: 15)
!2784 = !DILocation(line: 423, column: 15, scope: !2783)
!2785 = !DILocation(line: 423, column: 15, scope: !2775)
!2786 = !DILocation(line: 423, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !576, line: 423, column: 15)
!2788 = distinct !DILexicalBlock(scope: !2767, file: !576, line: 423, column: 15)
!2789 = !DILocation(line: 423, column: 15, scope: !2788)
!2790 = !DILocation(line: 431, column: 19, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2768, file: !576, line: 430, column: 19)
!2792 = !DILocation(line: 431, column: 24, scope: !2791)
!2793 = !DILocation(line: 431, column: 28, scope: !2791)
!2794 = !DILocation(line: 431, column: 38, scope: !2791)
!2795 = !DILocation(line: 431, column: 48, scope: !2791)
!2796 = !DILocation(line: 431, column: 59, scope: !2791)
!2797 = !DILocation(line: 433, column: 19, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !576, line: 433, column: 19)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !576, line: 433, column: 19)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !576, line: 432, column: 17)
!2801 = !DILocation(line: 433, column: 19, scope: !2799)
!2802 = !DILocation(line: 434, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !576, line: 434, column: 19)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !576, line: 434, column: 19)
!2805 = !DILocation(line: 434, column: 19, scope: !2804)
!2806 = !DILocation(line: 435, column: 17, scope: !2800)
!2807 = !DILocation(line: 442, column: 20, scope: !2769)
!2808 = !DILocation(line: 447, column: 11, scope: !2601)
!2809 = !DILocation(line: 450, column: 19, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 448, column: 13)
!2811 = !DILocation(line: 456, column: 19, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2810, file: !576, line: 455, column: 19)
!2813 = !DILocation(line: 456, column: 24, scope: !2812)
!2814 = !DILocation(line: 456, column: 28, scope: !2812)
!2815 = !DILocation(line: 456, column: 38, scope: !2812)
!2816 = !DILocation(line: 456, column: 41, scope: !2812)
!2817 = !DILocation(line: 456, column: 52, scope: !2812)
!2818 = !DILocation(line: 455, column: 19, scope: !2810)
!2819 = !DILocation(line: 457, column: 25, scope: !2812)
!2820 = !DILocation(line: 457, column: 17, scope: !2812)
!2821 = !DILocation(line: 464, column: 25, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2812, file: !576, line: 458, column: 19)
!2823 = !DILocation(line: 468, column: 21, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !576, line: 468, column: 21)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !576, line: 468, column: 21)
!2826 = !DILocation(line: 468, column: 21, scope: !2825)
!2827 = !DILocation(line: 469, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !576, line: 469, column: 21)
!2829 = distinct !DILexicalBlock(scope: !2822, file: !576, line: 469, column: 21)
!2830 = !DILocation(line: 469, column: 21, scope: !2829)
!2831 = !DILocation(line: 470, column: 21, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !576, line: 470, column: 21)
!2833 = distinct !DILexicalBlock(scope: !2822, file: !576, line: 470, column: 21)
!2834 = !DILocation(line: 470, column: 21, scope: !2833)
!2835 = !DILocation(line: 471, column: 21, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !576, line: 471, column: 21)
!2837 = distinct !DILexicalBlock(scope: !2822, file: !576, line: 471, column: 21)
!2838 = !DILocation(line: 471, column: 21, scope: !2837)
!2839 = !DILocation(line: 472, column: 21, scope: !2822)
!2840 = !DILocation(line: 482, column: 33, scope: !2600)
!2841 = !DILocation(line: 483, column: 33, scope: !2600)
!2842 = !DILocation(line: 485, column: 33, scope: !2600)
!2843 = !DILocation(line: 486, column: 33, scope: !2600)
!2844 = !DILocation(line: 487, column: 33, scope: !2600)
!2845 = !DILocation(line: 490, column: 17, scope: !2600)
!2846 = !DILocation(line: 492, column: 21, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !576, line: 491, column: 15)
!2848 = distinct !DILexicalBlock(scope: !2600, file: !576, line: 490, column: 17)
!2849 = !DILocation(line: 499, column: 35, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2600, file: !576, line: 499, column: 17)
!2851 = !DILocation(line: 499, column: 57, scope: !2850)
!2852 = !DILocation(line: 0, scope: !2600)
!2853 = !DILocation(line: 502, column: 11, scope: !2600)
!2854 = !DILocation(line: 504, column: 17, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2600, file: !576, line: 503, column: 17)
!2856 = !DILocation(line: 507, column: 11, scope: !2600)
!2857 = !DILocation(line: 508, column: 17, scope: !2600)
!2858 = !DILocation(line: 517, column: 15, scope: !2601)
!2859 = !DILocation(line: 517, column: 40, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 517, column: 15)
!2861 = !DILocation(line: 517, column: 47, scope: !2860)
!2862 = !DILocation(line: 517, column: 18, scope: !2860)
!2863 = !DILocation(line: 521, column: 17, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 521, column: 15)
!2865 = !DILocation(line: 521, column: 15, scope: !2601)
!2866 = !DILocation(line: 525, column: 11, scope: !2601)
!2867 = !DILocation(line: 537, column: 15, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 536, column: 15)
!2869 = !DILocation(line: 544, column: 15, scope: !2601)
!2870 = !DILocation(line: 546, column: 19, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !576, line: 545, column: 13)
!2872 = distinct !DILexicalBlock(scope: !2601, file: !576, line: 544, column: 15)
!2873 = !DILocation(line: 549, column: 19, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !576, line: 549, column: 19)
!2875 = !DILocation(line: 549, column: 30, scope: !2874)
!2876 = !DILocation(line: 558, column: 15, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !576, line: 558, column: 15)
!2878 = distinct !DILexicalBlock(scope: !2871, file: !576, line: 558, column: 15)
!2879 = !DILocation(line: 558, column: 15, scope: !2878)
!2880 = !DILocation(line: 559, column: 15, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !576, line: 559, column: 15)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !576, line: 559, column: 15)
!2883 = !DILocation(line: 559, column: 15, scope: !2882)
!2884 = !DILocation(line: 560, column: 15, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !576, line: 560, column: 15)
!2886 = distinct !DILexicalBlock(scope: !2871, file: !576, line: 560, column: 15)
!2887 = !DILocation(line: 560, column: 15, scope: !2886)
!2888 = !DILocation(line: 562, column: 13, scope: !2871)
!2889 = !DILocation(line: 602, column: 17, scope: !2604)
!2890 = !DILocation(line: 0, scope: !2604)
!2891 = !DILocation(line: 605, column: 29, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2608, file: !576, line: 603, column: 15)
!2893 = !DILocation(line: 605, column: 27, scope: !2892)
!2894 = !DILocation(line: 606, column: 15, scope: !2892)
!2895 = !DILocation(line: 609, column: 17, scope: !2607)
!2896 = !DILocation(line: 0, scope: !2667, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 609, column: 32, scope: !2607)
!2898 = !DILocation(line: 0, scope: !2675, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1137, column: 3, scope: !2667, inlinedAt: !2897)
!2900 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !2899)
!2901 = !DILocation(line: 613, column: 29, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2607, file: !576, line: 613, column: 21)
!2903 = !DILocation(line: 613, column: 21, scope: !2607)
!2904 = !DILocation(line: 614, column: 29, scope: !2902)
!2905 = !DILocation(line: 614, column: 19, scope: !2902)
!2906 = !DILocation(line: 618, column: 21, scope: !2610)
!2907 = !DILocation(line: 620, column: 54, scope: !2610)
!2908 = !DILocation(line: 619, column: 36, scope: !2610)
!2909 = !DILocation(line: 621, column: 25, scope: !2610)
!2910 = !DILocation(line: 631, column: 38, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2619, file: !576, line: 629, column: 23)
!2912 = !DILocation(line: 631, column: 48, scope: !2911)
!2913 = !DILocation(line: 626, column: 25, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2620, file: !576, line: 624, column: 23)
!2915 = !DILocation(line: 631, column: 51, scope: !2911)
!2916 = !DILocation(line: 631, column: 25, scope: !2911)
!2917 = !DILocation(line: 632, column: 28, scope: !2911)
!2918 = !DILocation(line: 631, column: 34, scope: !2911)
!2919 = distinct !{!2919, !2916, !2917, !1016}
!2920 = !DILocation(line: 0, scope: !2615)
!2921 = !DILocation(line: 646, column: 29, scope: !2617)
!2922 = !DILocation(line: 649, column: 39, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2615, file: !576, line: 648, column: 29)
!2924 = !DILocation(line: 649, column: 31, scope: !2923)
!2925 = !DILocation(line: 648, column: 60, scope: !2923)
!2926 = !DILocation(line: 648, column: 50, scope: !2923)
!2927 = !DILocation(line: 648, column: 29, scope: !2615)
!2928 = distinct !{!2928, !2927, !2929, !1016}
!2929 = !DILocation(line: 654, column: 33, scope: !2615)
!2930 = !DILocation(line: 657, column: 43, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2618, file: !576, line: 657, column: 29)
!2932 = !DILocalVariable(name: "wc", arg: 1, scope: !2933, file: !2934, line: 865, type: !2937)
!2933 = distinct !DISubprogram(name: "c32isprint", scope: !2934, file: !2934, line: 865, type: !2935, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !2939)
!2934 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!85, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2938, line: 20, baseType: !76)
!2938 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2939 = !{!2932}
!2940 = !DILocation(line: 0, scope: !2933, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 657, column: 31, scope: !2931)
!2942 = !DILocation(line: 871, column: 10, scope: !2933, inlinedAt: !2941)
!2943 = !DILocation(line: 657, column: 31, scope: !2931)
!2944 = !DILocation(line: 664, column: 23, scope: !2610)
!2945 = !DILocation(line: 665, column: 19, scope: !2611)
!2946 = !DILocation(line: 666, column: 15, scope: !2608)
!2947 = !DILocation(line: 0, scope: !2608)
!2948 = !DILocation(line: 670, column: 19, scope: !2624)
!2949 = !DILocation(line: 670, column: 23, scope: !2624)
!2950 = !DILocation(line: 674, column: 33, scope: !2623)
!2951 = !DILocation(line: 0, scope: !2623)
!2952 = !DILocation(line: 676, column: 17, scope: !2623)
!2953 = !DILocation(line: 398, column: 12, scope: !2594)
!2954 = !DILocation(line: 678, column: 43, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !576, line: 678, column: 25)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !576, line: 677, column: 19)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !576, line: 676, column: 17)
!2958 = distinct !DILexicalBlock(scope: !2623, file: !576, line: 676, column: 17)
!2959 = !DILocation(line: 680, column: 25, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !576, line: 680, column: 25)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !576, line: 679, column: 23)
!2962 = !DILocation(line: 680, column: 25, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2960, file: !576, line: 680, column: 25)
!2964 = !DILocation(line: 680, column: 25, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !576, line: 680, column: 25)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !576, line: 680, column: 25)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !576, line: 680, column: 25)
!2968 = !DILocation(line: 680, column: 25, scope: !2966)
!2969 = !DILocation(line: 680, column: 25, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !576, line: 680, column: 25)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !576, line: 680, column: 25)
!2972 = !DILocation(line: 680, column: 25, scope: !2971)
!2973 = !DILocation(line: 680, column: 25, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !576, line: 680, column: 25)
!2975 = distinct !DILexicalBlock(scope: !2967, file: !576, line: 680, column: 25)
!2976 = !DILocation(line: 680, column: 25, scope: !2975)
!2977 = !DILocation(line: 680, column: 25, scope: !2967)
!2978 = !DILocation(line: 680, column: 25, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !576, line: 680, column: 25)
!2980 = distinct !DILexicalBlock(scope: !2960, file: !576, line: 680, column: 25)
!2981 = !DILocation(line: 680, column: 25, scope: !2980)
!2982 = !DILocation(line: 681, column: 25, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !576, line: 681, column: 25)
!2984 = distinct !DILexicalBlock(scope: !2961, file: !576, line: 681, column: 25)
!2985 = !DILocation(line: 681, column: 25, scope: !2984)
!2986 = !DILocation(line: 682, column: 25, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !576, line: 682, column: 25)
!2988 = distinct !DILexicalBlock(scope: !2961, file: !576, line: 682, column: 25)
!2989 = !DILocation(line: 682, column: 25, scope: !2988)
!2990 = !DILocation(line: 683, column: 38, scope: !2961)
!2991 = !DILocation(line: 683, column: 33, scope: !2961)
!2992 = !DILocation(line: 684, column: 23, scope: !2961)
!2993 = !DILocation(line: 685, column: 30, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2955, file: !576, line: 685, column: 30)
!2995 = !DILocation(line: 685, column: 30, scope: !2955)
!2996 = !DILocation(line: 687, column: 25, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !576, line: 687, column: 25)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !576, line: 687, column: 25)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !576, line: 686, column: 23)
!3000 = !DILocation(line: 687, column: 25, scope: !2998)
!3001 = !DILocation(line: 689, column: 23, scope: !2999)
!3002 = !DILocation(line: 690, column: 35, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2956, file: !576, line: 690, column: 25)
!3004 = !DILocation(line: 690, column: 30, scope: !3003)
!3005 = !DILocation(line: 690, column: 25, scope: !2956)
!3006 = !DILocation(line: 692, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !576, line: 692, column: 21)
!3008 = distinct !DILexicalBlock(scope: !2956, file: !576, line: 692, column: 21)
!3009 = !DILocation(line: 692, column: 21, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !576, line: 692, column: 21)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !576, line: 692, column: 21)
!3012 = distinct !DILexicalBlock(scope: !3007, file: !576, line: 692, column: 21)
!3013 = !DILocation(line: 692, column: 21, scope: !3011)
!3014 = !DILocation(line: 692, column: 21, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !576, line: 692, column: 21)
!3016 = distinct !DILexicalBlock(scope: !3012, file: !576, line: 692, column: 21)
!3017 = !DILocation(line: 692, column: 21, scope: !3016)
!3018 = !DILocation(line: 692, column: 21, scope: !3012)
!3019 = !DILocation(line: 0, scope: !2956)
!3020 = !DILocation(line: 693, column: 21, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !576, line: 693, column: 21)
!3022 = distinct !DILexicalBlock(scope: !2956, file: !576, line: 693, column: 21)
!3023 = !DILocation(line: 693, column: 21, scope: !3022)
!3024 = !DILocation(line: 694, column: 25, scope: !2956)
!3025 = !DILocation(line: 676, column: 17, scope: !2957)
!3026 = distinct !{!3026, !3027, !3028}
!3027 = !DILocation(line: 676, column: 17, scope: !2958)
!3028 = !DILocation(line: 695, column: 19, scope: !2958)
!3029 = !DILocation(line: 409, column: 30, scope: !2745)
!3030 = !DILocation(line: 702, column: 34, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 702, column: 11)
!3032 = !DILocation(line: 704, column: 14, scope: !3031)
!3033 = !DILocation(line: 705, column: 14, scope: !3031)
!3034 = !DILocation(line: 705, column: 35, scope: !3031)
!3035 = !DILocation(line: 705, column: 17, scope: !3031)
!3036 = !DILocation(line: 705, column: 47, scope: !3031)
!3037 = !DILocation(line: 705, column: 65, scope: !3031)
!3038 = !DILocation(line: 706, column: 11, scope: !3031)
!3039 = !DILocation(line: 702, column: 11, scope: !2594)
!3040 = !DILocation(line: 395, column: 15, scope: !2592)
!3041 = !DILocation(line: 709, column: 5, scope: !2594)
!3042 = !DILocation(line: 710, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 710, column: 7)
!3044 = !DILocation(line: 710, column: 7, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3043, file: !576, line: 710, column: 7)
!3046 = !DILocation(line: 710, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !576, line: 710, column: 7)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !576, line: 710, column: 7)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !576, line: 710, column: 7)
!3050 = !DILocation(line: 710, column: 7, scope: !3048)
!3051 = !DILocation(line: 710, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !576, line: 710, column: 7)
!3053 = distinct !DILexicalBlock(scope: !3049, file: !576, line: 710, column: 7)
!3054 = !DILocation(line: 710, column: 7, scope: !3053)
!3055 = !DILocation(line: 710, column: 7, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !576, line: 710, column: 7)
!3057 = distinct !DILexicalBlock(scope: !3049, file: !576, line: 710, column: 7)
!3058 = !DILocation(line: 710, column: 7, scope: !3057)
!3059 = !DILocation(line: 710, column: 7, scope: !3049)
!3060 = !DILocation(line: 710, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !576, line: 710, column: 7)
!3062 = distinct !DILexicalBlock(scope: !3043, file: !576, line: 710, column: 7)
!3063 = !DILocation(line: 710, column: 7, scope: !3062)
!3064 = !DILocation(line: 712, column: 5, scope: !2594)
!3065 = !DILocation(line: 713, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !576, line: 713, column: 7)
!3067 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 713, column: 7)
!3068 = !DILocation(line: 417, column: 21, scope: !2594)
!3069 = !DILocation(line: 713, column: 7, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !576, line: 713, column: 7)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !576, line: 713, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !576, line: 713, column: 7)
!3073 = !DILocation(line: 713, column: 7, scope: !3071)
!3074 = !DILocation(line: 713, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !576, line: 713, column: 7)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !576, line: 713, column: 7)
!3077 = !DILocation(line: 713, column: 7, scope: !3076)
!3078 = !DILocation(line: 713, column: 7, scope: !3072)
!3079 = !DILocation(line: 714, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !576, line: 714, column: 7)
!3081 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 714, column: 7)
!3082 = !DILocation(line: 714, column: 7, scope: !3081)
!3083 = !DILocation(line: 716, column: 13, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2594, file: !576, line: 716, column: 11)
!3085 = !DILocation(line: 716, column: 11, scope: !2594)
!3086 = !DILocation(line: 718, column: 5, scope: !2595)
!3087 = !DILocation(line: 395, column: 82, scope: !2595)
!3088 = !DILocation(line: 395, column: 3, scope: !2595)
!3089 = distinct !{!3089, !2741, !3090, !1016}
!3090 = !DILocation(line: 718, column: 5, scope: !2592)
!3091 = !DILocation(line: 720, column: 11, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 720, column: 7)
!3093 = !DILocation(line: 720, column: 16, scope: !3092)
!3094 = !DILocation(line: 728, column: 51, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 728, column: 7)
!3096 = !DILocation(line: 731, column: 11, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !576, line: 731, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !576, line: 730, column: 5)
!3099 = !DILocation(line: 731, column: 11, scope: !3098)
!3100 = !DILocation(line: 732, column: 16, scope: !3097)
!3101 = !DILocation(line: 732, column: 9, scope: !3097)
!3102 = !DILocation(line: 736, column: 18, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3097, file: !576, line: 736, column: 16)
!3104 = !DILocation(line: 736, column: 29, scope: !3103)
!3105 = !DILocation(line: 745, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 745, column: 7)
!3107 = !DILocation(line: 745, column: 20, scope: !3106)
!3108 = !DILocation(line: 746, column: 12, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !576, line: 746, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !576, line: 746, column: 5)
!3111 = !DILocation(line: 746, column: 5, scope: !3110)
!3112 = !DILocation(line: 747, column: 7, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !576, line: 747, column: 7)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !576, line: 747, column: 7)
!3115 = !DILocation(line: 747, column: 7, scope: !3114)
!3116 = !DILocation(line: 746, column: 39, scope: !3109)
!3117 = distinct !{!3117, !3111, !3118, !1016}
!3118 = !DILocation(line: 747, column: 7, scope: !3110)
!3119 = !DILocation(line: 749, column: 11, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 749, column: 7)
!3121 = !DILocation(line: 749, column: 7, scope: !2560)
!3122 = !DILocation(line: 750, column: 5, scope: !3120)
!3123 = !DILocation(line: 750, column: 17, scope: !3120)
!3124 = !DILocation(line: 753, column: 2, scope: !2560)
!3125 = !DILocation(line: 756, column: 51, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !2560, file: !576, line: 756, column: 7)
!3127 = !DILocation(line: 756, column: 21, scope: !3126)
!3128 = !DILocation(line: 760, column: 42, scope: !2560)
!3129 = !DILocation(line: 758, column: 10, scope: !2560)
!3130 = !DILocation(line: 758, column: 3, scope: !2560)
!3131 = !DILocation(line: 762, column: 1, scope: !2560)
!3132 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1093, file: !1093, line: 98, type: !3133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!138}
!3135 = !DISubprogram(name: "iswprint", scope: !3136, file: !3136, line: 120, type: !2935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3137 = distinct !DISubprogram(name: "quotearg_alloc", scope: !576, file: !576, line: 788, type: !3138, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!130, !141, !138, !2453}
!3140 = !{!3141, !3142, !3143}
!3141 = !DILocalVariable(name: "arg", arg: 1, scope: !3137, file: !576, line: 788, type: !141)
!3142 = !DILocalVariable(name: "argsize", arg: 2, scope: !3137, file: !576, line: 788, type: !138)
!3143 = !DILocalVariable(name: "o", arg: 3, scope: !3137, file: !576, line: 789, type: !2453)
!3144 = !DILocation(line: 0, scope: !3137)
!3145 = !DILocalVariable(name: "arg", arg: 1, scope: !3146, file: !576, line: 801, type: !141)
!3146 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !576, file: !576, line: 801, type: !3147, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!130, !141, !138, !836, !2453}
!3149 = !{!3145, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157}
!3150 = !DILocalVariable(name: "argsize", arg: 2, scope: !3146, file: !576, line: 801, type: !138)
!3151 = !DILocalVariable(name: "size", arg: 3, scope: !3146, file: !576, line: 801, type: !836)
!3152 = !DILocalVariable(name: "o", arg: 4, scope: !3146, file: !576, line: 802, type: !2453)
!3153 = !DILocalVariable(name: "p", scope: !3146, file: !576, line: 804, type: !2453)
!3154 = !DILocalVariable(name: "saved_errno", scope: !3146, file: !576, line: 805, type: !85)
!3155 = !DILocalVariable(name: "flags", scope: !3146, file: !576, line: 807, type: !85)
!3156 = !DILocalVariable(name: "bufsize", scope: !3146, file: !576, line: 808, type: !138)
!3157 = !DILocalVariable(name: "buf", scope: !3146, file: !576, line: 812, type: !130)
!3158 = !DILocation(line: 0, scope: !3146, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 791, column: 10, scope: !3137)
!3160 = !DILocation(line: 804, column: 37, scope: !3146, inlinedAt: !3159)
!3161 = !DILocation(line: 805, column: 21, scope: !3146, inlinedAt: !3159)
!3162 = !DILocation(line: 807, column: 18, scope: !3146, inlinedAt: !3159)
!3163 = !DILocation(line: 807, column: 24, scope: !3146, inlinedAt: !3159)
!3164 = !DILocation(line: 808, column: 72, scope: !3146, inlinedAt: !3159)
!3165 = !DILocation(line: 809, column: 56, scope: !3146, inlinedAt: !3159)
!3166 = !DILocation(line: 810, column: 49, scope: !3146, inlinedAt: !3159)
!3167 = !DILocation(line: 811, column: 49, scope: !3146, inlinedAt: !3159)
!3168 = !DILocation(line: 808, column: 20, scope: !3146, inlinedAt: !3159)
!3169 = !DILocation(line: 811, column: 62, scope: !3146, inlinedAt: !3159)
!3170 = !DILocation(line: 812, column: 15, scope: !3146, inlinedAt: !3159)
!3171 = !DILocation(line: 813, column: 60, scope: !3146, inlinedAt: !3159)
!3172 = !DILocation(line: 815, column: 32, scope: !3146, inlinedAt: !3159)
!3173 = !DILocation(line: 815, column: 47, scope: !3146, inlinedAt: !3159)
!3174 = !DILocation(line: 813, column: 3, scope: !3146, inlinedAt: !3159)
!3175 = !DILocation(line: 816, column: 9, scope: !3146, inlinedAt: !3159)
!3176 = !DILocation(line: 791, column: 3, scope: !3137)
!3177 = !DILocation(line: 0, scope: !3146)
!3178 = !DILocation(line: 804, column: 37, scope: !3146)
!3179 = !DILocation(line: 805, column: 21, scope: !3146)
!3180 = !DILocation(line: 807, column: 18, scope: !3146)
!3181 = !DILocation(line: 807, column: 27, scope: !3146)
!3182 = !DILocation(line: 807, column: 24, scope: !3146)
!3183 = !DILocation(line: 808, column: 72, scope: !3146)
!3184 = !DILocation(line: 809, column: 56, scope: !3146)
!3185 = !DILocation(line: 810, column: 49, scope: !3146)
!3186 = !DILocation(line: 811, column: 49, scope: !3146)
!3187 = !DILocation(line: 808, column: 20, scope: !3146)
!3188 = !DILocation(line: 811, column: 62, scope: !3146)
!3189 = !DILocation(line: 812, column: 15, scope: !3146)
!3190 = !DILocation(line: 813, column: 60, scope: !3146)
!3191 = !DILocation(line: 815, column: 32, scope: !3146)
!3192 = !DILocation(line: 815, column: 47, scope: !3146)
!3193 = !DILocation(line: 813, column: 3, scope: !3146)
!3194 = !DILocation(line: 816, column: 9, scope: !3146)
!3195 = !DILocation(line: 817, column: 7, scope: !3146)
!3196 = !DILocation(line: 818, column: 11, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3146, file: !576, line: 817, column: 7)
!3198 = !{!1829, !1829, i64 0}
!3199 = !DILocation(line: 818, column: 5, scope: !3197)
!3200 = !DILocation(line: 819, column: 3, scope: !3146)
!3201 = distinct !DISubprogram(name: "quotearg_free", scope: !576, file: !576, line: 837, type: !471, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3202)
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "sv", scope: !3201, file: !576, line: 839, type: !660)
!3204 = !DILocalVariable(name: "i", scope: !3205, file: !576, line: 840, type: !85)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !576, line: 840, column: 3)
!3206 = !DILocation(line: 839, column: 24, scope: !3201)
!3207 = !DILocation(line: 0, scope: !3201)
!3208 = !DILocation(line: 0, scope: !3205)
!3209 = !DILocation(line: 840, column: 21, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !576, line: 840, column: 3)
!3211 = !DILocation(line: 840, column: 3, scope: !3205)
!3212 = !DILocation(line: 842, column: 13, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3201, file: !576, line: 842, column: 7)
!3214 = !{!3215, !904, i64 8}
!3215 = !{!"slotvec", !1829, i64 0, !904, i64 8}
!3216 = !DILocation(line: 842, column: 17, scope: !3213)
!3217 = !DILocation(line: 842, column: 7, scope: !3201)
!3218 = !DILocation(line: 841, column: 17, scope: !3210)
!3219 = !DILocation(line: 841, column: 5, scope: !3210)
!3220 = !DILocation(line: 840, column: 32, scope: !3210)
!3221 = distinct !{!3221, !3211, !3222, !1016}
!3222 = !DILocation(line: 841, column: 20, scope: !3205)
!3223 = !DILocation(line: 844, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3213, file: !576, line: 843, column: 5)
!3225 = !DILocation(line: 845, column: 21, scope: !3224)
!3226 = !{!3215, !1829, i64 0}
!3227 = !DILocation(line: 846, column: 20, scope: !3224)
!3228 = !DILocation(line: 847, column: 5, scope: !3224)
!3229 = !DILocation(line: 848, column: 10, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3201, file: !576, line: 848, column: 7)
!3231 = !DILocation(line: 848, column: 7, scope: !3201)
!3232 = !DILocation(line: 850, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !576, line: 849, column: 5)
!3234 = !DILocation(line: 851, column: 15, scope: !3233)
!3235 = !DILocation(line: 852, column: 5, scope: !3233)
!3236 = !DILocation(line: 853, column: 10, scope: !3201)
!3237 = !DILocation(line: 854, column: 1, scope: !3201)
!3238 = distinct !DISubprogram(name: "quotearg_n", scope: !576, file: !576, line: 919, type: !1086, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3239)
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3238, file: !576, line: 919, type: !85)
!3241 = !DILocalVariable(name: "arg", arg: 2, scope: !3238, file: !576, line: 919, type: !141)
!3242 = !DILocation(line: 0, scope: !3238)
!3243 = !DILocation(line: 921, column: 10, scope: !3238)
!3244 = !DILocation(line: 921, column: 3, scope: !3238)
!3245 = distinct !DISubprogram(name: "quotearg_n_options", scope: !576, file: !576, line: 866, type: !3246, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!130, !85, !141, !138, !2453}
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3259, !3260, !3262, !3263, !3264}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !576, line: 866, type: !85)
!3250 = !DILocalVariable(name: "arg", arg: 2, scope: !3245, file: !576, line: 866, type: !141)
!3251 = !DILocalVariable(name: "argsize", arg: 3, scope: !3245, file: !576, line: 866, type: !138)
!3252 = !DILocalVariable(name: "options", arg: 4, scope: !3245, file: !576, line: 867, type: !2453)
!3253 = !DILocalVariable(name: "saved_errno", scope: !3245, file: !576, line: 869, type: !85)
!3254 = !DILocalVariable(name: "sv", scope: !3245, file: !576, line: 871, type: !660)
!3255 = !DILocalVariable(name: "nslots_max", scope: !3245, file: !576, line: 873, type: !85)
!3256 = !DILocalVariable(name: "preallocated", scope: !3257, file: !576, line: 879, type: !179)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !576, line: 878, column: 5)
!3258 = distinct !DILexicalBlock(scope: !3245, file: !576, line: 877, column: 7)
!3259 = !DILocalVariable(name: "new_nslots", scope: !3257, file: !576, line: 880, type: !849)
!3260 = !DILocalVariable(name: "size", scope: !3261, file: !576, line: 891, type: !138)
!3261 = distinct !DILexicalBlock(scope: !3245, file: !576, line: 890, column: 3)
!3262 = !DILocalVariable(name: "val", scope: !3261, file: !576, line: 892, type: !130)
!3263 = !DILocalVariable(name: "flags", scope: !3261, file: !576, line: 894, type: !85)
!3264 = !DILocalVariable(name: "qsize", scope: !3261, file: !576, line: 895, type: !138)
!3265 = distinct !DIAssignID()
!3266 = !DILocation(line: 0, scope: !3257)
!3267 = !DILocation(line: 0, scope: !3245)
!3268 = !DILocation(line: 869, column: 21, scope: !3245)
!3269 = !DILocation(line: 871, column: 24, scope: !3245)
!3270 = !DILocation(line: 874, column: 17, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3245, file: !576, line: 874, column: 7)
!3272 = !DILocation(line: 875, column: 5, scope: !3271)
!3273 = !DILocation(line: 877, column: 7, scope: !3258)
!3274 = !DILocation(line: 877, column: 14, scope: !3258)
!3275 = !DILocation(line: 877, column: 7, scope: !3245)
!3276 = !DILocation(line: 879, column: 31, scope: !3257)
!3277 = !DILocation(line: 880, column: 7, scope: !3257)
!3278 = !DILocation(line: 880, column: 26, scope: !3257)
!3279 = !DILocation(line: 880, column: 13, scope: !3257)
!3280 = distinct !DIAssignID()
!3281 = !DILocation(line: 882, column: 31, scope: !3257)
!3282 = !DILocation(line: 883, column: 33, scope: !3257)
!3283 = !DILocation(line: 883, column: 42, scope: !3257)
!3284 = !DILocation(line: 883, column: 31, scope: !3257)
!3285 = !DILocation(line: 882, column: 22, scope: !3257)
!3286 = !DILocation(line: 882, column: 15, scope: !3257)
!3287 = !DILocation(line: 884, column: 11, scope: !3257)
!3288 = !DILocation(line: 885, column: 15, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3257, file: !576, line: 884, column: 11)
!3290 = !{i64 0, i64 8, !3198, i64 8, i64 8, !903}
!3291 = !DILocation(line: 885, column: 9, scope: !3289)
!3292 = !DILocation(line: 886, column: 20, scope: !3257)
!3293 = !DILocation(line: 886, column: 18, scope: !3257)
!3294 = !DILocation(line: 886, column: 32, scope: !3257)
!3295 = !DILocation(line: 886, column: 43, scope: !3257)
!3296 = !DILocation(line: 886, column: 53, scope: !3257)
!3297 = !DILocation(line: 0, scope: !2675, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 886, column: 7, scope: !3257)
!3299 = !DILocation(line: 59, column: 10, scope: !2675, inlinedAt: !3298)
!3300 = !DILocation(line: 887, column: 16, scope: !3257)
!3301 = !DILocation(line: 887, column: 14, scope: !3257)
!3302 = !DILocation(line: 888, column: 5, scope: !3258)
!3303 = !DILocation(line: 888, column: 5, scope: !3257)
!3304 = !DILocation(line: 891, column: 19, scope: !3261)
!3305 = !DILocation(line: 891, column: 25, scope: !3261)
!3306 = !DILocation(line: 0, scope: !3261)
!3307 = !DILocation(line: 892, column: 23, scope: !3261)
!3308 = !DILocation(line: 894, column: 26, scope: !3261)
!3309 = !DILocation(line: 894, column: 32, scope: !3261)
!3310 = !DILocation(line: 896, column: 55, scope: !3261)
!3311 = !DILocation(line: 897, column: 55, scope: !3261)
!3312 = !DILocation(line: 898, column: 55, scope: !3261)
!3313 = !DILocation(line: 899, column: 55, scope: !3261)
!3314 = !DILocation(line: 895, column: 20, scope: !3261)
!3315 = !DILocation(line: 901, column: 14, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3261, file: !576, line: 901, column: 9)
!3317 = !DILocation(line: 901, column: 9, scope: !3261)
!3318 = !DILocation(line: 903, column: 35, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !576, line: 902, column: 7)
!3320 = !DILocation(line: 903, column: 20, scope: !3319)
!3321 = !DILocation(line: 904, column: 17, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !576, line: 904, column: 13)
!3323 = !DILocation(line: 904, column: 13, scope: !3319)
!3324 = !DILocation(line: 905, column: 11, scope: !3322)
!3325 = !DILocation(line: 906, column: 27, scope: !3319)
!3326 = !DILocation(line: 906, column: 19, scope: !3319)
!3327 = !DILocation(line: 907, column: 69, scope: !3319)
!3328 = !DILocation(line: 909, column: 44, scope: !3319)
!3329 = !DILocation(line: 910, column: 44, scope: !3319)
!3330 = !DILocation(line: 907, column: 9, scope: !3319)
!3331 = !DILocation(line: 911, column: 7, scope: !3319)
!3332 = !DILocation(line: 913, column: 11, scope: !3261)
!3333 = !DILocation(line: 914, column: 5, scope: !3261)
!3334 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !576, file: !576, line: 925, type: !3335, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!130, !85, !141, !138}
!3337 = !{!3338, !3339, !3340}
!3338 = !DILocalVariable(name: "n", arg: 1, scope: !3334, file: !576, line: 925, type: !85)
!3339 = !DILocalVariable(name: "arg", arg: 2, scope: !3334, file: !576, line: 925, type: !141)
!3340 = !DILocalVariable(name: "argsize", arg: 3, scope: !3334, file: !576, line: 925, type: !138)
!3341 = !DILocation(line: 0, scope: !3334)
!3342 = !DILocation(line: 927, column: 10, scope: !3334)
!3343 = !DILocation(line: 927, column: 3, scope: !3334)
!3344 = distinct !DISubprogram(name: "quotearg", scope: !576, file: !576, line: 931, type: !1095, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3345)
!3345 = !{!3346}
!3346 = !DILocalVariable(name: "arg", arg: 1, scope: !3344, file: !576, line: 931, type: !141)
!3347 = !DILocation(line: 0, scope: !3344)
!3348 = !DILocation(line: 0, scope: !3238, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 933, column: 10, scope: !3344)
!3350 = !DILocation(line: 921, column: 10, scope: !3238, inlinedAt: !3349)
!3351 = !DILocation(line: 933, column: 3, scope: !3344)
!3352 = distinct !DISubprogram(name: "quotearg_mem", scope: !576, file: !576, line: 937, type: !3353, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!130, !141, !138}
!3355 = !{!3356, !3357}
!3356 = !DILocalVariable(name: "arg", arg: 1, scope: !3352, file: !576, line: 937, type: !141)
!3357 = !DILocalVariable(name: "argsize", arg: 2, scope: !3352, file: !576, line: 937, type: !138)
!3358 = !DILocation(line: 0, scope: !3352)
!3359 = !DILocation(line: 0, scope: !3334, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 939, column: 10, scope: !3352)
!3361 = !DILocation(line: 927, column: 10, scope: !3334, inlinedAt: !3360)
!3362 = !DILocation(line: 939, column: 3, scope: !3352)
!3363 = distinct !DISubprogram(name: "quotearg_n_style", scope: !576, file: !576, line: 943, type: !3364, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!130, !85, !446, !141}
!3366 = !{!3367, !3368, !3369, !3370}
!3367 = !DILocalVariable(name: "n", arg: 1, scope: !3363, file: !576, line: 943, type: !85)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !576, line: 943, type: !446)
!3369 = !DILocalVariable(name: "arg", arg: 3, scope: !3363, file: !576, line: 943, type: !141)
!3370 = !DILocalVariable(name: "o", scope: !3363, file: !576, line: 945, type: !2454)
!3371 = distinct !DIAssignID()
!3372 = !DILocation(line: 0, scope: !3363)
!3373 = !DILocation(line: 945, column: 3, scope: !3363)
!3374 = !{!3375}
!3375 = distinct !{!3375, !3376, !"quoting_options_from_style: argument 0"}
!3376 = distinct !{!3376, !"quoting_options_from_style"}
!3377 = !DILocation(line: 945, column: 36, scope: !3363)
!3378 = !DILocalVariable(name: "style", arg: 1, scope: !3379, file: !576, line: 183, type: !446)
!3379 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !576, file: !576, line: 183, type: !3380, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3382)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!612, !446}
!3382 = !{!3378, !3383}
!3383 = !DILocalVariable(name: "o", scope: !3379, file: !576, line: 185, type: !612)
!3384 = !DILocation(line: 0, scope: !3379, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 945, column: 36, scope: !3363)
!3386 = !DILocation(line: 185, column: 26, scope: !3379, inlinedAt: !3385)
!3387 = distinct !DIAssignID()
!3388 = !DILocation(line: 186, column: 13, scope: !3389, inlinedAt: !3385)
!3389 = distinct !DILexicalBlock(scope: !3379, file: !576, line: 186, column: 7)
!3390 = !DILocation(line: 186, column: 7, scope: !3379, inlinedAt: !3385)
!3391 = !DILocation(line: 187, column: 5, scope: !3389, inlinedAt: !3385)
!3392 = !DILocation(line: 188, column: 11, scope: !3379, inlinedAt: !3385)
!3393 = distinct !DIAssignID()
!3394 = !DILocation(line: 946, column: 10, scope: !3363)
!3395 = !DILocation(line: 947, column: 1, scope: !3363)
!3396 = !DILocation(line: 946, column: 3, scope: !3363)
!3397 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !576, file: !576, line: 950, type: !3398, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!130, !85, !446, !141, !138}
!3400 = !{!3401, !3402, !3403, !3404, !3405}
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3397, file: !576, line: 950, type: !85)
!3402 = !DILocalVariable(name: "s", arg: 2, scope: !3397, file: !576, line: 950, type: !446)
!3403 = !DILocalVariable(name: "arg", arg: 3, scope: !3397, file: !576, line: 951, type: !141)
!3404 = !DILocalVariable(name: "argsize", arg: 4, scope: !3397, file: !576, line: 951, type: !138)
!3405 = !DILocalVariable(name: "o", scope: !3397, file: !576, line: 953, type: !2454)
!3406 = distinct !DIAssignID()
!3407 = !DILocation(line: 0, scope: !3397)
!3408 = !DILocation(line: 953, column: 3, scope: !3397)
!3409 = !{!3410}
!3410 = distinct !{!3410, !3411, !"quoting_options_from_style: argument 0"}
!3411 = distinct !{!3411, !"quoting_options_from_style"}
!3412 = !DILocation(line: 953, column: 36, scope: !3397)
!3413 = !DILocation(line: 0, scope: !3379, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 953, column: 36, scope: !3397)
!3415 = !DILocation(line: 185, column: 26, scope: !3379, inlinedAt: !3414)
!3416 = distinct !DIAssignID()
!3417 = !DILocation(line: 186, column: 13, scope: !3389, inlinedAt: !3414)
!3418 = !DILocation(line: 186, column: 7, scope: !3379, inlinedAt: !3414)
!3419 = !DILocation(line: 187, column: 5, scope: !3389, inlinedAt: !3414)
!3420 = !DILocation(line: 188, column: 11, scope: !3379, inlinedAt: !3414)
!3421 = distinct !DIAssignID()
!3422 = !DILocation(line: 954, column: 10, scope: !3397)
!3423 = !DILocation(line: 955, column: 1, scope: !3397)
!3424 = !DILocation(line: 954, column: 3, scope: !3397)
!3425 = distinct !DISubprogram(name: "quotearg_style", scope: !576, file: !576, line: 958, type: !3426, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!130, !446, !141}
!3428 = !{!3429, !3430}
!3429 = !DILocalVariable(name: "s", arg: 1, scope: !3425, file: !576, line: 958, type: !446)
!3430 = !DILocalVariable(name: "arg", arg: 2, scope: !3425, file: !576, line: 958, type: !141)
!3431 = distinct !DIAssignID()
!3432 = !DILocation(line: 0, scope: !3425)
!3433 = !DILocation(line: 0, scope: !3363, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 960, column: 10, scope: !3425)
!3435 = !DILocation(line: 945, column: 3, scope: !3363, inlinedAt: !3434)
!3436 = !{!3437}
!3437 = distinct !{!3437, !3438, !"quoting_options_from_style: argument 0"}
!3438 = distinct !{!3438, !"quoting_options_from_style"}
!3439 = !DILocation(line: 945, column: 36, scope: !3363, inlinedAt: !3434)
!3440 = !DILocation(line: 0, scope: !3379, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 945, column: 36, scope: !3363, inlinedAt: !3434)
!3442 = !DILocation(line: 185, column: 26, scope: !3379, inlinedAt: !3441)
!3443 = distinct !DIAssignID()
!3444 = !DILocation(line: 186, column: 13, scope: !3389, inlinedAt: !3441)
!3445 = !DILocation(line: 186, column: 7, scope: !3379, inlinedAt: !3441)
!3446 = !DILocation(line: 187, column: 5, scope: !3389, inlinedAt: !3441)
!3447 = !DILocation(line: 188, column: 11, scope: !3379, inlinedAt: !3441)
!3448 = distinct !DIAssignID()
!3449 = !DILocation(line: 946, column: 10, scope: !3363, inlinedAt: !3434)
!3450 = !DILocation(line: 947, column: 1, scope: !3363, inlinedAt: !3434)
!3451 = !DILocation(line: 960, column: 3, scope: !3425)
!3452 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !576, file: !576, line: 964, type: !3453, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!130, !446, !141, !138}
!3455 = !{!3456, !3457, !3458}
!3456 = !DILocalVariable(name: "s", arg: 1, scope: !3452, file: !576, line: 964, type: !446)
!3457 = !DILocalVariable(name: "arg", arg: 2, scope: !3452, file: !576, line: 964, type: !141)
!3458 = !DILocalVariable(name: "argsize", arg: 3, scope: !3452, file: !576, line: 964, type: !138)
!3459 = distinct !DIAssignID()
!3460 = !DILocation(line: 0, scope: !3452)
!3461 = !DILocation(line: 0, scope: !3397, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 966, column: 10, scope: !3452)
!3463 = !DILocation(line: 953, column: 3, scope: !3397, inlinedAt: !3462)
!3464 = !{!3465}
!3465 = distinct !{!3465, !3466, !"quoting_options_from_style: argument 0"}
!3466 = distinct !{!3466, !"quoting_options_from_style"}
!3467 = !DILocation(line: 953, column: 36, scope: !3397, inlinedAt: !3462)
!3468 = !DILocation(line: 0, scope: !3379, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 953, column: 36, scope: !3397, inlinedAt: !3462)
!3470 = !DILocation(line: 185, column: 26, scope: !3379, inlinedAt: !3469)
!3471 = distinct !DIAssignID()
!3472 = !DILocation(line: 186, column: 13, scope: !3389, inlinedAt: !3469)
!3473 = !DILocation(line: 186, column: 7, scope: !3379, inlinedAt: !3469)
!3474 = !DILocation(line: 187, column: 5, scope: !3389, inlinedAt: !3469)
!3475 = !DILocation(line: 188, column: 11, scope: !3379, inlinedAt: !3469)
!3476 = distinct !DIAssignID()
!3477 = !DILocation(line: 954, column: 10, scope: !3397, inlinedAt: !3462)
!3478 = !DILocation(line: 955, column: 1, scope: !3397, inlinedAt: !3462)
!3479 = !DILocation(line: 966, column: 3, scope: !3452)
!3480 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !576, file: !576, line: 970, type: !3481, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!130, !141, !138, !4}
!3483 = !{!3484, !3485, !3486, !3487}
!3484 = !DILocalVariable(name: "arg", arg: 1, scope: !3480, file: !576, line: 970, type: !141)
!3485 = !DILocalVariable(name: "argsize", arg: 2, scope: !3480, file: !576, line: 970, type: !138)
!3486 = !DILocalVariable(name: "ch", arg: 3, scope: !3480, file: !576, line: 970, type: !4)
!3487 = !DILocalVariable(name: "options", scope: !3480, file: !576, line: 972, type: !612)
!3488 = distinct !DIAssignID()
!3489 = !DILocation(line: 0, scope: !3480)
!3490 = !DILocation(line: 972, column: 3, scope: !3480)
!3491 = !DILocation(line: 973, column: 13, scope: !3480)
!3492 = !{i64 0, i64 4, !969, i64 4, i64 4, !969, i64 8, i64 32, !978, i64 40, i64 8, !903, i64 48, i64 8, !903}
!3493 = distinct !DIAssignID()
!3494 = !DILocation(line: 0, scope: !2473, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 974, column: 3, scope: !3480)
!3496 = !DILocation(line: 147, column: 41, scope: !2473, inlinedAt: !3495)
!3497 = !DILocation(line: 147, column: 62, scope: !2473, inlinedAt: !3495)
!3498 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3495)
!3499 = !DILocation(line: 148, column: 15, scope: !2473, inlinedAt: !3495)
!3500 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3495)
!3501 = !DILocation(line: 149, column: 24, scope: !2473, inlinedAt: !3495)
!3502 = !DILocation(line: 150, column: 19, scope: !2473, inlinedAt: !3495)
!3503 = !DILocation(line: 150, column: 24, scope: !2473, inlinedAt: !3495)
!3504 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3495)
!3505 = !DILocation(line: 975, column: 10, scope: !3480)
!3506 = !DILocation(line: 976, column: 1, scope: !3480)
!3507 = !DILocation(line: 975, column: 3, scope: !3480)
!3508 = distinct !DISubprogram(name: "quotearg_char", scope: !576, file: !576, line: 979, type: !3509, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!130, !141, !4}
!3511 = !{!3512, !3513}
!3512 = !DILocalVariable(name: "arg", arg: 1, scope: !3508, file: !576, line: 979, type: !141)
!3513 = !DILocalVariable(name: "ch", arg: 2, scope: !3508, file: !576, line: 979, type: !4)
!3514 = distinct !DIAssignID()
!3515 = !DILocation(line: 0, scope: !3508)
!3516 = !DILocation(line: 0, scope: !3480, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 981, column: 10, scope: !3508)
!3518 = !DILocation(line: 972, column: 3, scope: !3480, inlinedAt: !3517)
!3519 = !DILocation(line: 973, column: 13, scope: !3480, inlinedAt: !3517)
!3520 = distinct !DIAssignID()
!3521 = !DILocation(line: 0, scope: !2473, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 974, column: 3, scope: !3480, inlinedAt: !3517)
!3523 = !DILocation(line: 147, column: 41, scope: !2473, inlinedAt: !3522)
!3524 = !DILocation(line: 147, column: 62, scope: !2473, inlinedAt: !3522)
!3525 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3522)
!3526 = !DILocation(line: 148, column: 15, scope: !2473, inlinedAt: !3522)
!3527 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3522)
!3528 = !DILocation(line: 149, column: 24, scope: !2473, inlinedAt: !3522)
!3529 = !DILocation(line: 150, column: 19, scope: !2473, inlinedAt: !3522)
!3530 = !DILocation(line: 150, column: 24, scope: !2473, inlinedAt: !3522)
!3531 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3522)
!3532 = !DILocation(line: 975, column: 10, scope: !3480, inlinedAt: !3517)
!3533 = !DILocation(line: 976, column: 1, scope: !3480, inlinedAt: !3517)
!3534 = !DILocation(line: 981, column: 3, scope: !3508)
!3535 = distinct !DISubprogram(name: "quotearg_colon", scope: !576, file: !576, line: 985, type: !1095, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3536)
!3536 = !{!3537}
!3537 = !DILocalVariable(name: "arg", arg: 1, scope: !3535, file: !576, line: 985, type: !141)
!3538 = distinct !DIAssignID()
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 0, scope: !3508, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 987, column: 10, scope: !3535)
!3542 = !DILocation(line: 0, scope: !3480, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 981, column: 10, scope: !3508, inlinedAt: !3541)
!3544 = !DILocation(line: 972, column: 3, scope: !3480, inlinedAt: !3543)
!3545 = !DILocation(line: 973, column: 13, scope: !3480, inlinedAt: !3543)
!3546 = distinct !DIAssignID()
!3547 = !DILocation(line: 0, scope: !2473, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 974, column: 3, scope: !3480, inlinedAt: !3543)
!3549 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3548)
!3550 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3548)
!3551 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3548)
!3552 = !DILocation(line: 975, column: 10, scope: !3480, inlinedAt: !3543)
!3553 = !DILocation(line: 976, column: 1, scope: !3480, inlinedAt: !3543)
!3554 = !DILocation(line: 987, column: 3, scope: !3535)
!3555 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !576, file: !576, line: 991, type: !3353, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3556)
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "arg", arg: 1, scope: !3555, file: !576, line: 991, type: !141)
!3558 = !DILocalVariable(name: "argsize", arg: 2, scope: !3555, file: !576, line: 991, type: !138)
!3559 = distinct !DIAssignID()
!3560 = !DILocation(line: 0, scope: !3555)
!3561 = !DILocation(line: 0, scope: !3480, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 993, column: 10, scope: !3555)
!3563 = !DILocation(line: 972, column: 3, scope: !3480, inlinedAt: !3562)
!3564 = !DILocation(line: 973, column: 13, scope: !3480, inlinedAt: !3562)
!3565 = distinct !DIAssignID()
!3566 = !DILocation(line: 0, scope: !2473, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 974, column: 3, scope: !3480, inlinedAt: !3562)
!3568 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3567)
!3569 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3567)
!3570 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3567)
!3571 = !DILocation(line: 975, column: 10, scope: !3480, inlinedAt: !3562)
!3572 = !DILocation(line: 976, column: 1, scope: !3480, inlinedAt: !3562)
!3573 = !DILocation(line: 993, column: 3, scope: !3555)
!3574 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !576, file: !576, line: 997, type: !3364, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3575)
!3575 = !{!3576, !3577, !3578, !3579}
!3576 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !576, line: 997, type: !85)
!3577 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !576, line: 997, type: !446)
!3578 = !DILocalVariable(name: "arg", arg: 3, scope: !3574, file: !576, line: 997, type: !141)
!3579 = !DILocalVariable(name: "options", scope: !3574, file: !576, line: 999, type: !612)
!3580 = distinct !DIAssignID()
!3581 = !DILocation(line: 0, scope: !3574)
!3582 = !DILocation(line: 185, column: 26, scope: !3379, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 1000, column: 13, scope: !3574)
!3584 = !DILocation(line: 999, column: 3, scope: !3574)
!3585 = !DILocation(line: 0, scope: !3379, inlinedAt: !3583)
!3586 = !DILocation(line: 186, column: 13, scope: !3389, inlinedAt: !3583)
!3587 = !DILocation(line: 186, column: 7, scope: !3379, inlinedAt: !3583)
!3588 = !DILocation(line: 187, column: 5, scope: !3389, inlinedAt: !3583)
!3589 = !{!3590}
!3590 = distinct !{!3590, !3591, !"quoting_options_from_style: argument 0"}
!3591 = distinct !{!3591, !"quoting_options_from_style"}
!3592 = !DILocation(line: 1000, column: 13, scope: !3574)
!3593 = distinct !DIAssignID()
!3594 = distinct !DIAssignID()
!3595 = !DILocation(line: 0, scope: !2473, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 1001, column: 3, scope: !3574)
!3597 = !DILocation(line: 147, column: 57, scope: !2473, inlinedAt: !3596)
!3598 = !DILocation(line: 149, column: 21, scope: !2473, inlinedAt: !3596)
!3599 = !DILocation(line: 150, column: 6, scope: !2473, inlinedAt: !3596)
!3600 = distinct !DIAssignID()
!3601 = !DILocation(line: 1002, column: 10, scope: !3574)
!3602 = !DILocation(line: 1003, column: 1, scope: !3574)
!3603 = !DILocation(line: 1002, column: 3, scope: !3574)
!3604 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !576, file: !576, line: 1006, type: !3605, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!130, !85, !141, !141, !141}
!3607 = !{!3608, !3609, !3610, !3611}
!3608 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !576, line: 1006, type: !85)
!3609 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3604, file: !576, line: 1006, type: !141)
!3610 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3604, file: !576, line: 1007, type: !141)
!3611 = !DILocalVariable(name: "arg", arg: 4, scope: !3604, file: !576, line: 1007, type: !141)
!3612 = distinct !DIAssignID()
!3613 = !DILocation(line: 0, scope: !3604)
!3614 = !DILocalVariable(name: "o", scope: !3615, file: !576, line: 1018, type: !612)
!3615 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !576, file: !576, line: 1014, type: !3616, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!130, !85, !141, !141, !141, !138}
!3618 = !{!3619, !3620, !3621, !3622, !3623, !3614}
!3619 = !DILocalVariable(name: "n", arg: 1, scope: !3615, file: !576, line: 1014, type: !85)
!3620 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3615, file: !576, line: 1014, type: !141)
!3621 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3615, file: !576, line: 1015, type: !141)
!3622 = !DILocalVariable(name: "arg", arg: 4, scope: !3615, file: !576, line: 1016, type: !141)
!3623 = !DILocalVariable(name: "argsize", arg: 5, scope: !3615, file: !576, line: 1016, type: !138)
!3624 = !DILocation(line: 0, scope: !3615, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 1009, column: 10, scope: !3604)
!3626 = !DILocation(line: 1018, column: 3, scope: !3615, inlinedAt: !3625)
!3627 = !DILocation(line: 1018, column: 30, scope: !3615, inlinedAt: !3625)
!3628 = distinct !DIAssignID()
!3629 = distinct !DIAssignID()
!3630 = !DILocation(line: 0, scope: !2513, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1019, column: 3, scope: !3615, inlinedAt: !3625)
!3632 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3631)
!3633 = distinct !DIAssignID()
!3634 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3631)
!3635 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3631)
!3636 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3631)
!3637 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3631)
!3638 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3631)
!3639 = distinct !DIAssignID()
!3640 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3631)
!3641 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3631)
!3642 = distinct !DIAssignID()
!3643 = !DILocation(line: 1020, column: 10, scope: !3615, inlinedAt: !3625)
!3644 = !DILocation(line: 1021, column: 1, scope: !3615, inlinedAt: !3625)
!3645 = !DILocation(line: 1009, column: 3, scope: !3604)
!3646 = distinct !DIAssignID()
!3647 = !DILocation(line: 0, scope: !3615)
!3648 = !DILocation(line: 1018, column: 3, scope: !3615)
!3649 = !DILocation(line: 1018, column: 30, scope: !3615)
!3650 = distinct !DIAssignID()
!3651 = distinct !DIAssignID()
!3652 = !DILocation(line: 0, scope: !2513, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 1019, column: 3, scope: !3615)
!3654 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3653)
!3655 = distinct !DIAssignID()
!3656 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3653)
!3657 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3653)
!3658 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3653)
!3659 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3653)
!3660 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3653)
!3661 = distinct !DIAssignID()
!3662 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3653)
!3663 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3653)
!3664 = distinct !DIAssignID()
!3665 = !DILocation(line: 1020, column: 10, scope: !3615)
!3666 = !DILocation(line: 1021, column: 1, scope: !3615)
!3667 = !DILocation(line: 1020, column: 3, scope: !3615)
!3668 = distinct !DISubprogram(name: "quotearg_custom", scope: !576, file: !576, line: 1024, type: !3669, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!130, !141, !141, !141}
!3671 = !{!3672, !3673, !3674}
!3672 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3668, file: !576, line: 1024, type: !141)
!3673 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3668, file: !576, line: 1024, type: !141)
!3674 = !DILocalVariable(name: "arg", arg: 3, scope: !3668, file: !576, line: 1025, type: !141)
!3675 = distinct !DIAssignID()
!3676 = !DILocation(line: 0, scope: !3668)
!3677 = !DILocation(line: 0, scope: !3604, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1027, column: 10, scope: !3668)
!3679 = !DILocation(line: 0, scope: !3615, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 1009, column: 10, scope: !3604, inlinedAt: !3678)
!3681 = !DILocation(line: 1018, column: 3, scope: !3615, inlinedAt: !3680)
!3682 = !DILocation(line: 1018, column: 30, scope: !3615, inlinedAt: !3680)
!3683 = distinct !DIAssignID()
!3684 = distinct !DIAssignID()
!3685 = !DILocation(line: 0, scope: !2513, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 1019, column: 3, scope: !3615, inlinedAt: !3680)
!3687 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3686)
!3688 = distinct !DIAssignID()
!3689 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3686)
!3690 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3686)
!3691 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3686)
!3692 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3686)
!3693 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3686)
!3694 = distinct !DIAssignID()
!3695 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3686)
!3696 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3686)
!3697 = distinct !DIAssignID()
!3698 = !DILocation(line: 1020, column: 10, scope: !3615, inlinedAt: !3680)
!3699 = !DILocation(line: 1021, column: 1, scope: !3615, inlinedAt: !3680)
!3700 = !DILocation(line: 1027, column: 3, scope: !3668)
!3701 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !576, file: !576, line: 1031, type: !3702, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!130, !141, !141, !141, !138}
!3704 = !{!3705, !3706, !3707, !3708}
!3705 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3701, file: !576, line: 1031, type: !141)
!3706 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3701, file: !576, line: 1031, type: !141)
!3707 = !DILocalVariable(name: "arg", arg: 3, scope: !3701, file: !576, line: 1032, type: !141)
!3708 = !DILocalVariable(name: "argsize", arg: 4, scope: !3701, file: !576, line: 1032, type: !138)
!3709 = distinct !DIAssignID()
!3710 = !DILocation(line: 0, scope: !3701)
!3711 = !DILocation(line: 0, scope: !3615, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1034, column: 10, scope: !3701)
!3713 = !DILocation(line: 1018, column: 3, scope: !3615, inlinedAt: !3712)
!3714 = !DILocation(line: 1018, column: 30, scope: !3615, inlinedAt: !3712)
!3715 = distinct !DIAssignID()
!3716 = distinct !DIAssignID()
!3717 = !DILocation(line: 0, scope: !2513, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 1019, column: 3, scope: !3615, inlinedAt: !3712)
!3719 = !DILocation(line: 174, column: 12, scope: !2513, inlinedAt: !3718)
!3720 = distinct !DIAssignID()
!3721 = !DILocation(line: 175, column: 8, scope: !2526, inlinedAt: !3718)
!3722 = !DILocation(line: 175, column: 19, scope: !2526, inlinedAt: !3718)
!3723 = !DILocation(line: 176, column: 5, scope: !2526, inlinedAt: !3718)
!3724 = !DILocation(line: 177, column: 6, scope: !2513, inlinedAt: !3718)
!3725 = !DILocation(line: 177, column: 17, scope: !2513, inlinedAt: !3718)
!3726 = distinct !DIAssignID()
!3727 = !DILocation(line: 178, column: 6, scope: !2513, inlinedAt: !3718)
!3728 = !DILocation(line: 178, column: 18, scope: !2513, inlinedAt: !3718)
!3729 = distinct !DIAssignID()
!3730 = !DILocation(line: 1020, column: 10, scope: !3615, inlinedAt: !3712)
!3731 = !DILocation(line: 1021, column: 1, scope: !3615, inlinedAt: !3712)
!3732 = !DILocation(line: 1034, column: 3, scope: !3701)
!3733 = distinct !DISubprogram(name: "quote_n_mem", scope: !576, file: !576, line: 1049, type: !3734, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!141, !85, !141, !138}
!3736 = !{!3737, !3738, !3739}
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3733, file: !576, line: 1049, type: !85)
!3738 = !DILocalVariable(name: "arg", arg: 2, scope: !3733, file: !576, line: 1049, type: !141)
!3739 = !DILocalVariable(name: "argsize", arg: 3, scope: !3733, file: !576, line: 1049, type: !138)
!3740 = !DILocation(line: 0, scope: !3733)
!3741 = !DILocation(line: 1051, column: 10, scope: !3733)
!3742 = !DILocation(line: 1051, column: 3, scope: !3733)
!3743 = distinct !DISubprogram(name: "quote_mem", scope: !576, file: !576, line: 1055, type: !3744, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!141, !141, !138}
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "arg", arg: 1, scope: !3743, file: !576, line: 1055, type: !141)
!3748 = !DILocalVariable(name: "argsize", arg: 2, scope: !3743, file: !576, line: 1055, type: !138)
!3749 = !DILocation(line: 0, scope: !3743)
!3750 = !DILocation(line: 0, scope: !3733, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 1057, column: 10, scope: !3743)
!3752 = !DILocation(line: 1051, column: 10, scope: !3733, inlinedAt: !3751)
!3753 = !DILocation(line: 1057, column: 3, scope: !3743)
!3754 = distinct !DISubprogram(name: "quote_n", scope: !576, file: !576, line: 1061, type: !3755, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!141, !85, !141}
!3757 = !{!3758, !3759}
!3758 = !DILocalVariable(name: "n", arg: 1, scope: !3754, file: !576, line: 1061, type: !85)
!3759 = !DILocalVariable(name: "arg", arg: 2, scope: !3754, file: !576, line: 1061, type: !141)
!3760 = !DILocation(line: 0, scope: !3754)
!3761 = !DILocation(line: 0, scope: !3733, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 1063, column: 10, scope: !3754)
!3763 = !DILocation(line: 1051, column: 10, scope: !3733, inlinedAt: !3762)
!3764 = !DILocation(line: 1063, column: 3, scope: !3754)
!3765 = distinct !DISubprogram(name: "quote", scope: !576, file: !576, line: 1067, type: !3766, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!141, !141}
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "arg", arg: 1, scope: !3765, file: !576, line: 1067, type: !141)
!3770 = !DILocation(line: 0, scope: !3765)
!3771 = !DILocation(line: 0, scope: !3754, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 1069, column: 10, scope: !3765)
!3773 = !DILocation(line: 0, scope: !3733, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 1063, column: 10, scope: !3754, inlinedAt: !3772)
!3775 = !DILocation(line: 1051, column: 10, scope: !3733, inlinedAt: !3774)
!3776 = !DILocation(line: 1069, column: 3, scope: !3765)
!3777 = distinct !DISubprogram(name: "fd_safer", scope: !821, file: !821, line: 37, type: !1440, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !820, retainedNodes: !3778)
!3778 = !{!3779, !3780, !3783}
!3779 = !DILocalVariable(name: "fd", arg: 1, scope: !3777, file: !821, line: 37, type: !85)
!3780 = !DILocalVariable(name: "f", scope: !3781, file: !821, line: 41, type: !85)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !821, line: 40, column: 5)
!3782 = distinct !DILexicalBlock(scope: !3777, file: !821, line: 39, column: 7)
!3783 = !DILocalVariable(name: "saved_errno", scope: !3781, file: !821, line: 42, type: !85)
!3784 = !DILocation(line: 0, scope: !3777)
!3785 = !DILocation(line: 39, column: 26, scope: !3782)
!3786 = !DILocation(line: 41, column: 15, scope: !3781)
!3787 = !DILocation(line: 0, scope: !3781)
!3788 = !DILocation(line: 42, column: 25, scope: !3781)
!3789 = !DILocation(line: 43, column: 7, scope: !3781)
!3790 = !DILocation(line: 44, column: 13, scope: !3781)
!3791 = !DILocation(line: 46, column: 5, scope: !3781)
!3792 = !DILocation(line: 48, column: 3, scope: !3777)
!3793 = distinct !DISubprogram(name: "version_etc_arn", scope: !672, file: !672, line: 61, type: !3794, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3830)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3796, !141, !141, !141, !1665, !138}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !3798)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3798, file: !212, line: 51, baseType: !85, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3798, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3798, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3798, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3798, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3798, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3798, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3798, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3798, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3798, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3798, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3798, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3798, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3798, file: !212, line: 70, baseType: !3814, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3798, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3798, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3798, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3798, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3798, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3798, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3798, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3798, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3798, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3798, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3798, file: !212, line: 93, baseType: !3814, size: 64, offset: 1344)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3798, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3798, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3798, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3798, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!3830 = !{!3831, !3832, !3833, !3834, !3835, !3836}
!3831 = !DILocalVariable(name: "stream", arg: 1, scope: !3793, file: !672, line: 61, type: !3796)
!3832 = !DILocalVariable(name: "command_name", arg: 2, scope: !3793, file: !672, line: 62, type: !141)
!3833 = !DILocalVariable(name: "package", arg: 3, scope: !3793, file: !672, line: 62, type: !141)
!3834 = !DILocalVariable(name: "version", arg: 4, scope: !3793, file: !672, line: 63, type: !141)
!3835 = !DILocalVariable(name: "authors", arg: 5, scope: !3793, file: !672, line: 64, type: !1665)
!3836 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3793, file: !672, line: 64, type: !138)
!3837 = !DILocation(line: 0, scope: !3793)
!3838 = !DILocation(line: 66, column: 7, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3793, file: !672, line: 66, column: 7)
!3840 = !DILocation(line: 66, column: 7, scope: !3793)
!3841 = !DILocation(line: 67, column: 5, scope: !3839)
!3842 = !DILocation(line: 69, column: 5, scope: !3839)
!3843 = !DILocation(line: 83, column: 3, scope: !3793)
!3844 = !DILocation(line: 85, column: 3, scope: !3793)
!3845 = !DILocation(line: 88, column: 3, scope: !3793)
!3846 = !DILocation(line: 95, column: 3, scope: !3793)
!3847 = !DILocation(line: 97, column: 3, scope: !3793)
!3848 = !DILocation(line: 105, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3793, file: !672, line: 98, column: 5)
!3850 = !DILocation(line: 106, column: 7, scope: !3849)
!3851 = !DILocation(line: 109, column: 7, scope: !3849)
!3852 = !DILocation(line: 110, column: 7, scope: !3849)
!3853 = !DILocation(line: 113, column: 7, scope: !3849)
!3854 = !DILocation(line: 115, column: 7, scope: !3849)
!3855 = !DILocation(line: 120, column: 7, scope: !3849)
!3856 = !DILocation(line: 122, column: 7, scope: !3849)
!3857 = !DILocation(line: 127, column: 7, scope: !3849)
!3858 = !DILocation(line: 129, column: 7, scope: !3849)
!3859 = !DILocation(line: 134, column: 7, scope: !3849)
!3860 = !DILocation(line: 137, column: 7, scope: !3849)
!3861 = !DILocation(line: 142, column: 7, scope: !3849)
!3862 = !DILocation(line: 145, column: 7, scope: !3849)
!3863 = !DILocation(line: 150, column: 7, scope: !3849)
!3864 = !DILocation(line: 154, column: 7, scope: !3849)
!3865 = !DILocation(line: 159, column: 7, scope: !3849)
!3866 = !DILocation(line: 163, column: 7, scope: !3849)
!3867 = !DILocation(line: 170, column: 7, scope: !3849)
!3868 = !DILocation(line: 174, column: 7, scope: !3849)
!3869 = !DILocation(line: 176, column: 1, scope: !3793)
!3870 = distinct !DISubprogram(name: "version_etc_ar", scope: !672, file: !672, line: 183, type: !3871, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3796, !141, !141, !141, !1665}
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879}
!3874 = !DILocalVariable(name: "stream", arg: 1, scope: !3870, file: !672, line: 183, type: !3796)
!3875 = !DILocalVariable(name: "command_name", arg: 2, scope: !3870, file: !672, line: 184, type: !141)
!3876 = !DILocalVariable(name: "package", arg: 3, scope: !3870, file: !672, line: 184, type: !141)
!3877 = !DILocalVariable(name: "version", arg: 4, scope: !3870, file: !672, line: 185, type: !141)
!3878 = !DILocalVariable(name: "authors", arg: 5, scope: !3870, file: !672, line: 185, type: !1665)
!3879 = !DILocalVariable(name: "n_authors", scope: !3870, file: !672, line: 187, type: !138)
!3880 = !DILocation(line: 0, scope: !3870)
!3881 = !DILocation(line: 189, column: 8, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3870, file: !672, line: 189, column: 3)
!3883 = !DILocation(line: 189, scope: !3882)
!3884 = !DILocation(line: 189, column: 23, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !672, line: 189, column: 3)
!3886 = !DILocation(line: 189, column: 3, scope: !3882)
!3887 = !DILocation(line: 189, column: 52, scope: !3885)
!3888 = distinct !{!3888, !3886, !3889, !1016}
!3889 = !DILocation(line: 190, column: 5, scope: !3882)
!3890 = !DILocation(line: 191, column: 3, scope: !3870)
!3891 = !DILocation(line: 192, column: 1, scope: !3870)
!3892 = distinct !DISubprogram(name: "version_etc_va", scope: !672, file: !672, line: 199, type: !3893, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3902)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3796, !141, !141, !141, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3896, file: !672, line: 192, baseType: !76, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3896, file: !672, line: 192, baseType: !76, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3896, file: !672, line: 192, baseType: !131, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3896, file: !672, line: 192, baseType: !131, size: 64, offset: 128)
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3903 = !DILocalVariable(name: "stream", arg: 1, scope: !3892, file: !672, line: 199, type: !3796)
!3904 = !DILocalVariable(name: "command_name", arg: 2, scope: !3892, file: !672, line: 200, type: !141)
!3905 = !DILocalVariable(name: "package", arg: 3, scope: !3892, file: !672, line: 200, type: !141)
!3906 = !DILocalVariable(name: "version", arg: 4, scope: !3892, file: !672, line: 201, type: !141)
!3907 = !DILocalVariable(name: "authors", arg: 5, scope: !3892, file: !672, line: 201, type: !3895)
!3908 = !DILocalVariable(name: "n_authors", scope: !3892, file: !672, line: 203, type: !138)
!3909 = !DILocalVariable(name: "authtab", scope: !3892, file: !672, line: 204, type: !3910)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 640, elements: !62)
!3911 = distinct !DIAssignID()
!3912 = !DILocation(line: 0, scope: !3892)
!3913 = !DILocation(line: 204, column: 3, scope: !3892)
!3914 = !DILocation(line: 208, column: 35, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !672, line: 206, column: 3)
!3916 = distinct !DILexicalBlock(scope: !3892, file: !672, line: 206, column: 3)
!3917 = !DILocation(line: 208, column: 33, scope: !3915)
!3918 = !DILocation(line: 208, column: 67, scope: !3915)
!3919 = !DILocation(line: 206, column: 3, scope: !3916)
!3920 = !DILocation(line: 208, column: 14, scope: !3915)
!3921 = !DILocation(line: 0, scope: !3916)
!3922 = !DILocation(line: 211, column: 3, scope: !3892)
!3923 = !DILocation(line: 213, column: 1, scope: !3892)
!3924 = distinct !DISubprogram(name: "version_etc", scope: !672, file: !672, line: 230, type: !3925, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3796, !141, !141, !141, null}
!3927 = !{!3928, !3929, !3930, !3931, !3932}
!3928 = !DILocalVariable(name: "stream", arg: 1, scope: !3924, file: !672, line: 230, type: !3796)
!3929 = !DILocalVariable(name: "command_name", arg: 2, scope: !3924, file: !672, line: 231, type: !141)
!3930 = !DILocalVariable(name: "package", arg: 3, scope: !3924, file: !672, line: 231, type: !141)
!3931 = !DILocalVariable(name: "version", arg: 4, scope: !3924, file: !672, line: 232, type: !141)
!3932 = !DILocalVariable(name: "authors", scope: !3924, file: !672, line: 234, type: !3933)
!3933 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !964, line: 52, baseType: !3934)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2150, line: 12, baseType: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !672, baseType: !3936)
!3936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3896, size: 192, elements: !57)
!3937 = distinct !DIAssignID()
!3938 = !DILocation(line: 0, scope: !3924)
!3939 = !DILocation(line: 234, column: 3, scope: !3924)
!3940 = !DILocation(line: 235, column: 3, scope: !3924)
!3941 = !DILocation(line: 236, column: 3, scope: !3924)
!3942 = !DILocation(line: 237, column: 3, scope: !3924)
!3943 = !DILocation(line: 238, column: 1, scope: !3924)
!3944 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !672, file: !672, line: 241, type: !471, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822)
!3945 = !DILocation(line: 243, column: 3, scope: !3944)
!3946 = !DILocation(line: 248, column: 3, scope: !3944)
!3947 = !DILocation(line: 254, column: 3, scope: !3944)
!3948 = !DILocation(line: 259, column: 3, scope: !3944)
!3949 = !DILocation(line: 261, column: 1, scope: !3944)
!3950 = distinct !DISubprogram(name: "xnrealloc", scope: !3951, file: !3951, line: 147, type: !3952, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3954)
!3951 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!131, !131, !138, !138}
!3954 = !{!3955, !3956, !3957}
!3955 = !DILocalVariable(name: "p", arg: 1, scope: !3950, file: !3951, line: 147, type: !131)
!3956 = !DILocalVariable(name: "n", arg: 2, scope: !3950, file: !3951, line: 147, type: !138)
!3957 = !DILocalVariable(name: "s", arg: 3, scope: !3950, file: !3951, line: 147, type: !138)
!3958 = !DILocation(line: 0, scope: !3950)
!3959 = !DILocalVariable(name: "p", arg: 1, scope: !3960, file: !830, line: 83, type: !131)
!3960 = distinct !DISubprogram(name: "xreallocarray", scope: !830, file: !830, line: 83, type: !3952, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3961)
!3961 = !{!3959, !3962, !3963}
!3962 = !DILocalVariable(name: "n", arg: 2, scope: !3960, file: !830, line: 83, type: !138)
!3963 = !DILocalVariable(name: "s", arg: 3, scope: !3960, file: !830, line: 83, type: !138)
!3964 = !DILocation(line: 0, scope: !3960, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 149, column: 10, scope: !3950)
!3966 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !3965)
!3967 = !DILocalVariable(name: "p", arg: 1, scope: !3968, file: !830, line: 37, type: !131)
!3968 = distinct !DISubprogram(name: "check_nonnull", scope: !830, file: !830, line: 37, type: !3969, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!131, !131}
!3971 = !{!3967}
!3972 = !DILocation(line: 0, scope: !3968, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !3965)
!3974 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !3973)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !830, line: 39, column: 7)
!3976 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !3973)
!3977 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !3973)
!3978 = !DILocation(line: 149, column: 3, scope: !3950)
!3979 = !DILocation(line: 0, scope: !3960)
!3980 = !DILocation(line: 85, column: 25, scope: !3960)
!3981 = !DILocation(line: 0, scope: !3968, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 85, column: 10, scope: !3960)
!3983 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !3982)
!3984 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !3982)
!3985 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !3982)
!3986 = !DILocation(line: 85, column: 3, scope: !3960)
!3987 = distinct !DISubprogram(name: "xmalloc", scope: !830, file: !830, line: 47, type: !3988, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!131, !138}
!3990 = !{!3991}
!3991 = !DILocalVariable(name: "s", arg: 1, scope: !3987, file: !830, line: 47, type: !138)
!3992 = !DILocation(line: 0, scope: !3987)
!3993 = !DILocation(line: 49, column: 25, scope: !3987)
!3994 = !DILocation(line: 0, scope: !3968, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 49, column: 10, scope: !3987)
!3996 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !3995)
!3997 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !3995)
!3998 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !3995)
!3999 = !DILocation(line: 49, column: 3, scope: !3987)
!4000 = !DISubprogram(name: "malloc", scope: !1093, file: !1093, line: 540, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4001 = distinct !DISubprogram(name: "ximalloc", scope: !830, file: !830, line: 53, type: !4002, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!131, !849}
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "s", arg: 1, scope: !4001, file: !830, line: 53, type: !849)
!4006 = !DILocation(line: 0, scope: !4001)
!4007 = !DILocalVariable(name: "s", arg: 1, scope: !4008, file: !4009, line: 55, type: !849)
!4008 = distinct !DISubprogram(name: "imalloc", scope: !4009, file: !4009, line: 55, type: !4002, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4010)
!4009 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4010 = !{!4007}
!4011 = !DILocation(line: 0, scope: !4008, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 55, column: 25, scope: !4001)
!4013 = !DILocation(line: 57, column: 26, scope: !4008, inlinedAt: !4012)
!4014 = !DILocation(line: 0, scope: !3968, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 55, column: 10, scope: !4001)
!4016 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4015)
!4017 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4015)
!4018 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4015)
!4019 = !DILocation(line: 55, column: 3, scope: !4001)
!4020 = distinct !DISubprogram(name: "xcharalloc", scope: !830, file: !830, line: 59, type: !4021, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4023)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!130, !138}
!4023 = !{!4024}
!4024 = !DILocalVariable(name: "n", arg: 1, scope: !4020, file: !830, line: 59, type: !138)
!4025 = !DILocation(line: 0, scope: !4020)
!4026 = !DILocation(line: 0, scope: !3987, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 61, column: 10, scope: !4020)
!4028 = !DILocation(line: 49, column: 25, scope: !3987, inlinedAt: !4027)
!4029 = !DILocation(line: 0, scope: !3968, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 49, column: 10, scope: !3987, inlinedAt: !4027)
!4031 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4030)
!4033 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4030)
!4034 = !DILocation(line: 61, column: 3, scope: !4020)
!4035 = distinct !DISubprogram(name: "xrealloc", scope: !830, file: !830, line: 68, type: !4036, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!131, !131, !138}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4035, file: !830, line: 68, type: !131)
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !830, line: 68, type: !138)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocalVariable(name: "ptr", arg: 1, scope: !4043, file: !4044, line: 2057, type: !131)
!4043 = distinct !DISubprogram(name: "rpl_realloc", scope: !4044, file: !4044, line: 2057, type: !4036, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4045)
!4044 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4045 = !{!4042, !4046}
!4046 = !DILocalVariable(name: "size", arg: 2, scope: !4043, file: !4044, line: 2057, type: !138)
!4047 = !DILocation(line: 0, scope: !4043, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 70, column: 25, scope: !4035)
!4049 = !DILocation(line: 2059, column: 24, scope: !4043, inlinedAt: !4048)
!4050 = !DILocation(line: 2059, column: 10, scope: !4043, inlinedAt: !4048)
!4051 = !DILocation(line: 0, scope: !3968, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 70, column: 10, scope: !4035)
!4053 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4052)
!4054 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4052)
!4055 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4052)
!4056 = !DILocation(line: 70, column: 3, scope: !4035)
!4057 = !DISubprogram(name: "realloc", scope: !1093, file: !1093, line: 551, type: !4036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4058 = distinct !DISubprogram(name: "xirealloc", scope: !830, file: !830, line: 74, type: !4059, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!131, !131, !849}
!4061 = !{!4062, !4063}
!4062 = !DILocalVariable(name: "p", arg: 1, scope: !4058, file: !830, line: 74, type: !131)
!4063 = !DILocalVariable(name: "s", arg: 2, scope: !4058, file: !830, line: 74, type: !849)
!4064 = !DILocation(line: 0, scope: !4058)
!4065 = !DILocalVariable(name: "p", arg: 1, scope: !4066, file: !4009, line: 66, type: !131)
!4066 = distinct !DISubprogram(name: "irealloc", scope: !4009, file: !4009, line: 66, type: !4059, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4067)
!4067 = !{!4065, !4068}
!4068 = !DILocalVariable(name: "s", arg: 2, scope: !4066, file: !4009, line: 66, type: !849)
!4069 = !DILocation(line: 0, scope: !4066, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 76, column: 25, scope: !4058)
!4071 = !DILocation(line: 0, scope: !4043, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 68, column: 26, scope: !4066, inlinedAt: !4070)
!4073 = !DILocation(line: 2059, column: 24, scope: !4043, inlinedAt: !4072)
!4074 = !DILocation(line: 2059, column: 10, scope: !4043, inlinedAt: !4072)
!4075 = !DILocation(line: 0, scope: !3968, inlinedAt: !4076)
!4076 = distinct !DILocation(line: 76, column: 10, scope: !4058)
!4077 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4076)
!4078 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4076)
!4079 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4076)
!4080 = !DILocation(line: 76, column: 3, scope: !4058)
!4081 = distinct !DISubprogram(name: "xireallocarray", scope: !830, file: !830, line: 89, type: !4082, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!131, !131, !849, !849}
!4084 = !{!4085, !4086, !4087}
!4085 = !DILocalVariable(name: "p", arg: 1, scope: !4081, file: !830, line: 89, type: !131)
!4086 = !DILocalVariable(name: "n", arg: 2, scope: !4081, file: !830, line: 89, type: !849)
!4087 = !DILocalVariable(name: "s", arg: 3, scope: !4081, file: !830, line: 89, type: !849)
!4088 = !DILocation(line: 0, scope: !4081)
!4089 = !DILocalVariable(name: "p", arg: 1, scope: !4090, file: !4009, line: 98, type: !131)
!4090 = distinct !DISubprogram(name: "ireallocarray", scope: !4009, file: !4009, line: 98, type: !4082, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4091)
!4091 = !{!4089, !4092, !4093}
!4092 = !DILocalVariable(name: "n", arg: 2, scope: !4090, file: !4009, line: 98, type: !849)
!4093 = !DILocalVariable(name: "s", arg: 3, scope: !4090, file: !4009, line: 98, type: !849)
!4094 = !DILocation(line: 0, scope: !4090, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 91, column: 25, scope: !4081)
!4096 = !DILocation(line: 101, column: 13, scope: !4090, inlinedAt: !4095)
!4097 = !DILocation(line: 0, scope: !3968, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 91, column: 10, scope: !4081)
!4099 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4098)
!4100 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4098)
!4101 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4098)
!4102 = !DILocation(line: 91, column: 3, scope: !4081)
!4103 = distinct !DISubprogram(name: "xnmalloc", scope: !830, file: !830, line: 98, type: !4104, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!131, !138, !138}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "n", arg: 1, scope: !4103, file: !830, line: 98, type: !138)
!4108 = !DILocalVariable(name: "s", arg: 2, scope: !4103, file: !830, line: 98, type: !138)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 0, scope: !3960, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 100, column: 10, scope: !4103)
!4112 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !4111)
!4113 = !DILocation(line: 0, scope: !3968, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !4111)
!4115 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4114)
!4116 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4114)
!4117 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4114)
!4118 = !DILocation(line: 100, column: 3, scope: !4103)
!4119 = distinct !DISubprogram(name: "xinmalloc", scope: !830, file: !830, line: 104, type: !4120, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!131, !849, !849}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "n", arg: 1, scope: !4119, file: !830, line: 104, type: !849)
!4124 = !DILocalVariable(name: "s", arg: 2, scope: !4119, file: !830, line: 104, type: !849)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 0, scope: !4081, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 106, column: 10, scope: !4119)
!4128 = !DILocation(line: 0, scope: !4090, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 91, column: 25, scope: !4081, inlinedAt: !4127)
!4130 = !DILocation(line: 101, column: 13, scope: !4090, inlinedAt: !4129)
!4131 = !DILocation(line: 0, scope: !3968, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 91, column: 10, scope: !4081, inlinedAt: !4127)
!4133 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4132)
!4134 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4132)
!4135 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4132)
!4136 = !DILocation(line: 106, column: 3, scope: !4119)
!4137 = distinct !DISubprogram(name: "x2realloc", scope: !830, file: !830, line: 116, type: !4138, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!131, !131, !836}
!4140 = !{!4141, !4142}
!4141 = !DILocalVariable(name: "p", arg: 1, scope: !4137, file: !830, line: 116, type: !131)
!4142 = !DILocalVariable(name: "ps", arg: 2, scope: !4137, file: !830, line: 116, type: !836)
!4143 = !DILocation(line: 0, scope: !4137)
!4144 = !DILocation(line: 0, scope: !833, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 118, column: 10, scope: !4137)
!4146 = !DILocation(line: 178, column: 14, scope: !833, inlinedAt: !4145)
!4147 = !DILocation(line: 180, column: 9, scope: !4148, inlinedAt: !4145)
!4148 = distinct !DILexicalBlock(scope: !833, file: !830, line: 180, column: 7)
!4149 = !DILocation(line: 180, column: 7, scope: !833, inlinedAt: !4145)
!4150 = !DILocation(line: 182, column: 13, scope: !4151, inlinedAt: !4145)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !830, line: 182, column: 11)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !830, line: 181, column: 5)
!4153 = !DILocation(line: 182, column: 11, scope: !4152, inlinedAt: !4145)
!4154 = !DILocation(line: 197, column: 11, scope: !4155, inlinedAt: !4145)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !830, line: 197, column: 11)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !830, line: 195, column: 5)
!4157 = !DILocation(line: 197, column: 11, scope: !4156, inlinedAt: !4145)
!4158 = !DILocation(line: 198, column: 9, scope: !4155, inlinedAt: !4145)
!4159 = !DILocation(line: 0, scope: !3960, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 201, column: 7, scope: !833, inlinedAt: !4145)
!4161 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !4160)
!4162 = !DILocation(line: 0, scope: !3968, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !4160)
!4164 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4163)
!4165 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4163)
!4166 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4163)
!4167 = !DILocation(line: 202, column: 7, scope: !833, inlinedAt: !4145)
!4168 = !DILocation(line: 118, column: 3, scope: !4137)
!4169 = !DILocation(line: 0, scope: !833)
!4170 = !DILocation(line: 178, column: 14, scope: !833)
!4171 = !DILocation(line: 180, column: 9, scope: !4148)
!4172 = !DILocation(line: 180, column: 7, scope: !833)
!4173 = !DILocation(line: 182, column: 13, scope: !4151)
!4174 = !DILocation(line: 182, column: 11, scope: !4152)
!4175 = !DILocation(line: 190, column: 30, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4151, file: !830, line: 183, column: 9)
!4177 = !DILocation(line: 191, column: 16, scope: !4176)
!4178 = !DILocation(line: 191, column: 13, scope: !4176)
!4179 = !DILocation(line: 192, column: 9, scope: !4176)
!4180 = !DILocation(line: 197, column: 11, scope: !4155)
!4181 = !DILocation(line: 197, column: 11, scope: !4156)
!4182 = !DILocation(line: 198, column: 9, scope: !4155)
!4183 = !DILocation(line: 0, scope: !3960, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 201, column: 7, scope: !833)
!4185 = !DILocation(line: 85, column: 25, scope: !3960, inlinedAt: !4184)
!4186 = !DILocation(line: 0, scope: !3968, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 85, column: 10, scope: !3960, inlinedAt: !4184)
!4188 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4187)
!4189 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4187)
!4190 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4187)
!4191 = !DILocation(line: 202, column: 7, scope: !833)
!4192 = !DILocation(line: 203, column: 3, scope: !833)
!4193 = !DILocation(line: 0, scope: !845)
!4194 = !DILocation(line: 230, column: 14, scope: !845)
!4195 = !DILocation(line: 238, column: 7, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !845, file: !830, line: 238, column: 7)
!4197 = !DILocation(line: 238, column: 7, scope: !845)
!4198 = !DILocation(line: 240, column: 9, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !845, file: !830, line: 240, column: 7)
!4200 = !DILocation(line: 240, column: 18, scope: !4199)
!4201 = !DILocation(line: 253, column: 8, scope: !845)
!4202 = !DILocation(line: 256, column: 7, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !845, file: !830, line: 256, column: 7)
!4204 = !DILocation(line: 256, column: 7, scope: !845)
!4205 = !DILocation(line: 258, column: 27, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4203, file: !830, line: 257, column: 5)
!4207 = !DILocation(line: 259, column: 50, scope: !4206)
!4208 = !DILocation(line: 259, column: 32, scope: !4206)
!4209 = !DILocation(line: 260, column: 5, scope: !4206)
!4210 = !DILocation(line: 262, column: 9, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !845, file: !830, line: 262, column: 7)
!4212 = !DILocation(line: 262, column: 7, scope: !845)
!4213 = !DILocation(line: 263, column: 9, scope: !4211)
!4214 = !DILocation(line: 263, column: 5, scope: !4211)
!4215 = !DILocation(line: 264, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !845, file: !830, line: 264, column: 7)
!4217 = !DILocation(line: 264, column: 14, scope: !4216)
!4218 = !DILocation(line: 265, column: 7, scope: !4216)
!4219 = !DILocation(line: 265, column: 11, scope: !4216)
!4220 = !DILocation(line: 266, column: 11, scope: !4216)
!4221 = !DILocation(line: 267, column: 14, scope: !4216)
!4222 = !DILocation(line: 264, column: 7, scope: !845)
!4223 = !DILocation(line: 268, column: 5, scope: !4216)
!4224 = !DILocation(line: 0, scope: !4035, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 269, column: 8, scope: !845)
!4226 = !DILocation(line: 0, scope: !4043, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 70, column: 25, scope: !4035, inlinedAt: !4225)
!4228 = !DILocation(line: 2059, column: 24, scope: !4043, inlinedAt: !4227)
!4229 = !DILocation(line: 2059, column: 10, scope: !4043, inlinedAt: !4227)
!4230 = !DILocation(line: 0, scope: !3968, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 70, column: 10, scope: !4035, inlinedAt: !4225)
!4232 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4231)
!4233 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4231)
!4234 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4231)
!4235 = !DILocation(line: 270, column: 7, scope: !845)
!4236 = !DILocation(line: 271, column: 3, scope: !845)
!4237 = distinct !DISubprogram(name: "xzalloc", scope: !830, file: !830, line: 279, type: !3988, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4238)
!4238 = !{!4239}
!4239 = !DILocalVariable(name: "s", arg: 1, scope: !4237, file: !830, line: 279, type: !138)
!4240 = !DILocation(line: 0, scope: !4237)
!4241 = !DILocalVariable(name: "n", arg: 1, scope: !4242, file: !830, line: 294, type: !138)
!4242 = distinct !DISubprogram(name: "xcalloc", scope: !830, file: !830, line: 294, type: !4104, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4243)
!4243 = !{!4241, !4244}
!4244 = !DILocalVariable(name: "s", arg: 2, scope: !4242, file: !830, line: 294, type: !138)
!4245 = !DILocation(line: 0, scope: !4242, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 281, column: 10, scope: !4237)
!4247 = !DILocation(line: 296, column: 25, scope: !4242, inlinedAt: !4246)
!4248 = !DILocation(line: 0, scope: !3968, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 296, column: 10, scope: !4242, inlinedAt: !4246)
!4250 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4249)
!4251 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4249)
!4252 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4249)
!4253 = !DILocation(line: 281, column: 3, scope: !4237)
!4254 = !DISubprogram(name: "calloc", scope: !1093, file: !1093, line: 543, type: !4104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4255 = !DILocation(line: 0, scope: !4242)
!4256 = !DILocation(line: 296, column: 25, scope: !4242)
!4257 = !DILocation(line: 0, scope: !3968, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 296, column: 10, scope: !4242)
!4259 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4258)
!4260 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4258)
!4261 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4258)
!4262 = !DILocation(line: 296, column: 3, scope: !4242)
!4263 = distinct !DISubprogram(name: "xizalloc", scope: !830, file: !830, line: 285, type: !4002, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4264)
!4264 = !{!4265}
!4265 = !DILocalVariable(name: "s", arg: 1, scope: !4263, file: !830, line: 285, type: !849)
!4266 = !DILocation(line: 0, scope: !4263)
!4267 = !DILocalVariable(name: "n", arg: 1, scope: !4268, file: !830, line: 300, type: !849)
!4268 = distinct !DISubprogram(name: "xicalloc", scope: !830, file: !830, line: 300, type: !4120, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4269)
!4269 = !{!4267, !4270}
!4270 = !DILocalVariable(name: "s", arg: 2, scope: !4268, file: !830, line: 300, type: !849)
!4271 = !DILocation(line: 0, scope: !4268, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 287, column: 10, scope: !4263)
!4273 = !DILocalVariable(name: "n", arg: 1, scope: !4274, file: !4009, line: 77, type: !849)
!4274 = distinct !DISubprogram(name: "icalloc", scope: !4009, file: !4009, line: 77, type: !4120, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4275)
!4275 = !{!4273, !4276}
!4276 = !DILocalVariable(name: "s", arg: 2, scope: !4274, file: !4009, line: 77, type: !849)
!4277 = !DILocation(line: 0, scope: !4274, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 302, column: 25, scope: !4268, inlinedAt: !4272)
!4279 = !DILocation(line: 91, column: 10, scope: !4274, inlinedAt: !4278)
!4280 = !DILocation(line: 0, scope: !3968, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 302, column: 10, scope: !4268, inlinedAt: !4272)
!4282 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4281)
!4283 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4281)
!4284 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4281)
!4285 = !DILocation(line: 287, column: 3, scope: !4263)
!4286 = !DILocation(line: 0, scope: !4268)
!4287 = !DILocation(line: 0, scope: !4274, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 302, column: 25, scope: !4268)
!4289 = !DILocation(line: 91, column: 10, scope: !4274, inlinedAt: !4288)
!4290 = !DILocation(line: 0, scope: !3968, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 302, column: 10, scope: !4268)
!4292 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4291)
!4293 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4291)
!4294 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4291)
!4295 = !DILocation(line: 302, column: 3, scope: !4268)
!4296 = distinct !DISubprogram(name: "xmemdup", scope: !830, file: !830, line: 310, type: !4297, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!131, !128, !138}
!4299 = !{!4300, !4301}
!4300 = !DILocalVariable(name: "p", arg: 1, scope: !4296, file: !830, line: 310, type: !128)
!4301 = !DILocalVariable(name: "s", arg: 2, scope: !4296, file: !830, line: 310, type: !138)
!4302 = !DILocation(line: 0, scope: !4296)
!4303 = !DILocation(line: 0, scope: !3987, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 312, column: 18, scope: !4296)
!4305 = !DILocation(line: 49, column: 25, scope: !3987, inlinedAt: !4304)
!4306 = !DILocation(line: 0, scope: !3968, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 49, column: 10, scope: !3987, inlinedAt: !4304)
!4308 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4307)
!4309 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4307)
!4310 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4307)
!4311 = !DILocalVariable(name: "__dest", arg: 1, scope: !4312, file: !2416, line: 26, type: !4315)
!4312 = distinct !DISubprogram(name: "memcpy", scope: !2416, file: !2416, line: 26, type: !4313, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4316)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!131, !4315, !1116, !138}
!4315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!4316 = !{!4311, !4317, !4318}
!4317 = !DILocalVariable(name: "__src", arg: 2, scope: !4312, file: !2416, line: 26, type: !1116)
!4318 = !DILocalVariable(name: "__len", arg: 3, scope: !4312, file: !2416, line: 26, type: !138)
!4319 = !DILocation(line: 0, scope: !4312, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 312, column: 10, scope: !4296)
!4321 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4320)
!4322 = !DILocation(line: 312, column: 3, scope: !4296)
!4323 = distinct !DISubprogram(name: "ximemdup", scope: !830, file: !830, line: 316, type: !4324, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!131, !128, !849}
!4326 = !{!4327, !4328}
!4327 = !DILocalVariable(name: "p", arg: 1, scope: !4323, file: !830, line: 316, type: !128)
!4328 = !DILocalVariable(name: "s", arg: 2, scope: !4323, file: !830, line: 316, type: !849)
!4329 = !DILocation(line: 0, scope: !4323)
!4330 = !DILocation(line: 0, scope: !4001, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 318, column: 18, scope: !4323)
!4332 = !DILocation(line: 0, scope: !4008, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 55, column: 25, scope: !4001, inlinedAt: !4331)
!4334 = !DILocation(line: 57, column: 26, scope: !4008, inlinedAt: !4333)
!4335 = !DILocation(line: 0, scope: !3968, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 55, column: 10, scope: !4001, inlinedAt: !4331)
!4337 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4336)
!4338 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4336)
!4339 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4336)
!4340 = !DILocation(line: 0, scope: !4312, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 318, column: 10, scope: !4323)
!4342 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4341)
!4343 = !DILocation(line: 318, column: 3, scope: !4323)
!4344 = distinct !DISubprogram(name: "ximemdup0", scope: !830, file: !830, line: 325, type: !4345, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!130, !128, !849}
!4347 = !{!4348, !4349, !4350}
!4348 = !DILocalVariable(name: "p", arg: 1, scope: !4344, file: !830, line: 325, type: !128)
!4349 = !DILocalVariable(name: "s", arg: 2, scope: !4344, file: !830, line: 325, type: !849)
!4350 = !DILocalVariable(name: "result", scope: !4344, file: !830, line: 327, type: !130)
!4351 = !DILocation(line: 0, scope: !4344)
!4352 = !DILocation(line: 327, column: 30, scope: !4344)
!4353 = !DILocation(line: 0, scope: !4001, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 327, column: 18, scope: !4344)
!4355 = !DILocation(line: 0, scope: !4008, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 55, column: 25, scope: !4001, inlinedAt: !4354)
!4357 = !DILocation(line: 57, column: 26, scope: !4008, inlinedAt: !4356)
!4358 = !DILocation(line: 0, scope: !3968, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 55, column: 10, scope: !4001, inlinedAt: !4354)
!4360 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4359)
!4361 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4359)
!4362 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4359)
!4363 = !DILocation(line: 328, column: 3, scope: !4344)
!4364 = !DILocation(line: 328, column: 13, scope: !4344)
!4365 = !DILocation(line: 0, scope: !4312, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 329, column: 10, scope: !4344)
!4367 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4366)
!4368 = !DILocation(line: 329, column: 3, scope: !4344)
!4369 = distinct !DISubprogram(name: "xstrdup", scope: !830, file: !830, line: 335, type: !1095, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !829, retainedNodes: !4370)
!4370 = !{!4371}
!4371 = !DILocalVariable(name: "string", arg: 1, scope: !4369, file: !830, line: 335, type: !141)
!4372 = !DILocation(line: 0, scope: !4369)
!4373 = !DILocation(line: 337, column: 27, scope: !4369)
!4374 = !DILocation(line: 337, column: 43, scope: !4369)
!4375 = !DILocation(line: 0, scope: !4296, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 337, column: 10, scope: !4369)
!4377 = !DILocation(line: 0, scope: !3987, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 312, column: 18, scope: !4296, inlinedAt: !4376)
!4379 = !DILocation(line: 49, column: 25, scope: !3987, inlinedAt: !4378)
!4380 = !DILocation(line: 0, scope: !3968, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 49, column: 10, scope: !3987, inlinedAt: !4378)
!4382 = !DILocation(line: 39, column: 8, scope: !3975, inlinedAt: !4381)
!4383 = !DILocation(line: 39, column: 7, scope: !3968, inlinedAt: !4381)
!4384 = !DILocation(line: 40, column: 5, scope: !3975, inlinedAt: !4381)
!4385 = !DILocation(line: 0, scope: !4312, inlinedAt: !4386)
!4386 = distinct !DILocation(line: 312, column: 10, scope: !4296, inlinedAt: !4376)
!4387 = !DILocation(line: 29, column: 10, scope: !4312, inlinedAt: !4386)
!4388 = !DILocation(line: 337, column: 3, scope: !4369)
!4389 = distinct !DISubprogram(name: "xalloc_die", scope: !763, file: !763, line: 32, type: !471, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4390)
!4390 = !{!4391}
!4391 = !DILocalVariable(name: "__errstatus", scope: !4392, file: !763, line: 34, type: !1197)
!4392 = distinct !DILexicalBlock(scope: !4389, file: !763, line: 34, column: 3)
!4393 = !DILocation(line: 34, column: 3, scope: !4392)
!4394 = !DILocation(line: 0, scope: !4392)
!4395 = !DILocation(line: 40, column: 3, scope: !4389)
!4396 = distinct !DISubprogram(name: "close_stream", scope: !867, file: !867, line: 55, type: !4397, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4433)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!85, !4399}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4401)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4402)
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4401, file: !212, line: 51, baseType: !85, size: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4401, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4401, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4401, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4401, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4401, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4401, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4401, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4401, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4401, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4401, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4401, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4401, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4401, file: !212, line: 70, baseType: !4417, size: 64, offset: 832)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4401, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4401, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4401, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4401, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4401, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4401, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4401, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4401, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4401, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4401, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4401, file: !212, line: 93, baseType: !4417, size: 64, offset: 1344)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4401, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4401, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4401, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4401, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4433 = !{!4434, !4435, !4437, !4438}
!4434 = !DILocalVariable(name: "stream", arg: 1, scope: !4396, file: !867, line: 55, type: !4399)
!4435 = !DILocalVariable(name: "some_pending", scope: !4396, file: !867, line: 57, type: !4436)
!4436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!4437 = !DILocalVariable(name: "prev_fail", scope: !4396, file: !867, line: 58, type: !4436)
!4438 = !DILocalVariable(name: "fclose_fail", scope: !4396, file: !867, line: 59, type: !4436)
!4439 = !DILocation(line: 0, scope: !4396)
!4440 = !DILocation(line: 57, column: 30, scope: !4396)
!4441 = !DILocalVariable(name: "__stream", arg: 1, scope: !4442, file: !1785, line: 135, type: !4399)
!4442 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1785, file: !1785, line: 135, type: !4397, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4443)
!4443 = !{!4441}
!4444 = !DILocation(line: 0, scope: !4442, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 58, column: 27, scope: !4396)
!4446 = !DILocation(line: 137, column: 10, scope: !4442, inlinedAt: !4445)
!4447 = !{!1828, !970, i64 0}
!4448 = !DILocation(line: 58, column: 43, scope: !4396)
!4449 = !DILocation(line: 59, column: 29, scope: !4396)
!4450 = !DILocation(line: 59, column: 45, scope: !4396)
!4451 = !DILocation(line: 69, column: 17, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4396, file: !867, line: 69, column: 7)
!4453 = !DILocation(line: 57, column: 50, scope: !4396)
!4454 = !DILocation(line: 69, column: 33, scope: !4452)
!4455 = !DILocation(line: 69, column: 53, scope: !4452)
!4456 = !DILocation(line: 69, column: 59, scope: !4452)
!4457 = !DILocation(line: 69, column: 7, scope: !4396)
!4458 = !DILocation(line: 71, column: 11, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4452, file: !867, line: 70, column: 5)
!4460 = !DILocation(line: 72, column: 9, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4459, file: !867, line: 71, column: 11)
!4462 = !DILocation(line: 72, column: 15, scope: !4461)
!4463 = !DILocation(line: 77, column: 1, scope: !4396)
!4464 = !DISubprogram(name: "__fpending", scope: !4465, file: !4465, line: 75, type: !4466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4465 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!138, !4399}
!4468 = distinct !DISubprogram(name: "rpl_fclose", scope: !869, file: !869, line: 58, type: !4469, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4505)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!85, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4474)
!4474 = !{!4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4473, file: !212, line: 51, baseType: !85, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4473, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4473, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4473, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4473, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4473, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4473, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4473, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4473, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4473, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4473, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4473, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4473, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4473, file: !212, line: 70, baseType: !4489, size: 64, offset: 832)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4473, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4473, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4473, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4473, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4473, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4473, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4473, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4473, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4473, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4473, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4473, file: !212, line: 93, baseType: !4489, size: 64, offset: 1344)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4473, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4473, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4473, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4473, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4505 = !{!4506, !4507, !4508, !4509}
!4506 = !DILocalVariable(name: "fp", arg: 1, scope: !4468, file: !869, line: 58, type: !4471)
!4507 = !DILocalVariable(name: "saved_errno", scope: !4468, file: !869, line: 60, type: !85)
!4508 = !DILocalVariable(name: "fd", scope: !4468, file: !869, line: 63, type: !85)
!4509 = !DILocalVariable(name: "result", scope: !4468, file: !869, line: 74, type: !85)
!4510 = !DILocation(line: 0, scope: !4468)
!4511 = !DILocation(line: 63, column: 12, scope: !4468)
!4512 = !DILocation(line: 64, column: 10, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4468, file: !869, line: 64, column: 7)
!4514 = !DILocation(line: 64, column: 7, scope: !4468)
!4515 = !DILocation(line: 65, column: 12, scope: !4513)
!4516 = !DILocation(line: 65, column: 5, scope: !4513)
!4517 = !DILocation(line: 70, column: 9, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4468, file: !869, line: 70, column: 7)
!4519 = !DILocation(line: 70, column: 23, scope: !4518)
!4520 = !DILocation(line: 70, column: 33, scope: !4518)
!4521 = !DILocation(line: 70, column: 26, scope: !4518)
!4522 = !DILocation(line: 70, column: 59, scope: !4518)
!4523 = !DILocation(line: 71, column: 7, scope: !4518)
!4524 = !DILocation(line: 71, column: 10, scope: !4518)
!4525 = !DILocation(line: 70, column: 7, scope: !4468)
!4526 = !DILocation(line: 100, column: 12, scope: !4468)
!4527 = !DILocation(line: 105, column: 7, scope: !4468)
!4528 = !DILocation(line: 72, column: 19, scope: !4518)
!4529 = !DILocation(line: 105, column: 19, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4468, file: !869, line: 105, column: 7)
!4531 = !DILocation(line: 107, column: 13, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !869, line: 106, column: 5)
!4533 = !DILocation(line: 109, column: 5, scope: !4532)
!4534 = !DILocation(line: 112, column: 1, scope: !4468)
!4535 = !DISubprogram(name: "fclose", scope: !964, file: !964, line: 178, type: !4469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4536 = !DISubprogram(name: "__freading", scope: !4465, file: !4465, line: 51, type: !4469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4537 = !DISubprogram(name: "lseek", scope: !1439, file: !1439, line: 339, type: !4538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!234, !85, !234, !85}
!4540 = distinct !DISubprogram(name: "rpl_fflush", scope: !871, file: !871, line: 130, type: !4541, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4577)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!85, !4543}
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4545)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4546)
!4546 = !{!4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4545, file: !212, line: 51, baseType: !85, size: 32)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4545, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4545, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4545, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4545, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4545, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4545, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4545, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4545, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4545, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4545, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4545, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4545, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4545, file: !212, line: 70, baseType: !4561, size: 64, offset: 832)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4545, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4545, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4545, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4545, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4545, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4545, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4545, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4545, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4545, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4545, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4545, file: !212, line: 93, baseType: !4561, size: 64, offset: 1344)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4545, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4545, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4545, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4545, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4577 = !{!4578}
!4578 = !DILocalVariable(name: "stream", arg: 1, scope: !4540, file: !871, line: 130, type: !4543)
!4579 = !DILocation(line: 0, scope: !4540)
!4580 = !DILocation(line: 151, column: 14, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4540, file: !871, line: 151, column: 7)
!4582 = !DILocation(line: 151, column: 22, scope: !4581)
!4583 = !DILocation(line: 151, column: 27, scope: !4581)
!4584 = !DILocation(line: 151, column: 7, scope: !4540)
!4585 = !DILocation(line: 152, column: 12, scope: !4581)
!4586 = !DILocation(line: 152, column: 5, scope: !4581)
!4587 = !DILocalVariable(name: "fp", arg: 1, scope: !4588, file: !871, line: 42, type: !4543)
!4588 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !871, file: !871, line: 42, type: !4589, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4591)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4543}
!4591 = !{!4587}
!4592 = !DILocation(line: 0, scope: !4588, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 157, column: 3, scope: !4540)
!4594 = !DILocation(line: 44, column: 12, scope: !4595, inlinedAt: !4593)
!4595 = distinct !DILexicalBlock(scope: !4588, file: !871, line: 44, column: 7)
!4596 = !DILocation(line: 44, column: 19, scope: !4595, inlinedAt: !4593)
!4597 = !DILocation(line: 44, column: 7, scope: !4588, inlinedAt: !4593)
!4598 = !DILocation(line: 46, column: 5, scope: !4595, inlinedAt: !4593)
!4599 = !DILocation(line: 159, column: 10, scope: !4540)
!4600 = !DILocation(line: 159, column: 3, scope: !4540)
!4601 = !DILocation(line: 236, column: 1, scope: !4540)
!4602 = !DISubprogram(name: "fflush", scope: !964, file: !964, line: 230, type: !4541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4603 = distinct !DISubprogram(name: "rpl_fseeko", scope: !873, file: !873, line: 28, type: !4604, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4640)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!85, !4606, !2210, !85}
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !210, line: 7, baseType: !4608)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !212, line: 49, size: 1728, elements: !4609)
!4609 = !{!4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4608, file: !212, line: 51, baseType: !85, size: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4608, file: !212, line: 54, baseType: !130, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4608, file: !212, line: 55, baseType: !130, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4608, file: !212, line: 56, baseType: !130, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4608, file: !212, line: 57, baseType: !130, size: 64, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4608, file: !212, line: 58, baseType: !130, size: 64, offset: 320)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4608, file: !212, line: 59, baseType: !130, size: 64, offset: 384)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4608, file: !212, line: 60, baseType: !130, size: 64, offset: 448)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4608, file: !212, line: 61, baseType: !130, size: 64, offset: 512)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4608, file: !212, line: 64, baseType: !130, size: 64, offset: 576)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4608, file: !212, line: 65, baseType: !130, size: 64, offset: 640)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4608, file: !212, line: 66, baseType: !130, size: 64, offset: 704)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4608, file: !212, line: 68, baseType: !227, size: 64, offset: 768)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4608, file: !212, line: 70, baseType: !4624, size: 64, offset: 832)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4608, file: !212, line: 72, baseType: !85, size: 32, offset: 896)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4608, file: !212, line: 73, baseType: !85, size: 32, offset: 928)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4608, file: !212, line: 74, baseType: !234, size: 64, offset: 960)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4608, file: !212, line: 77, baseType: !137, size: 16, offset: 1024)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4608, file: !212, line: 78, baseType: !239, size: 8, offset: 1040)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4608, file: !212, line: 79, baseType: !56, size: 8, offset: 1048)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4608, file: !212, line: 81, baseType: !242, size: 64, offset: 1088)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4608, file: !212, line: 89, baseType: !245, size: 64, offset: 1152)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4608, file: !212, line: 91, baseType: !247, size: 64, offset: 1216)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4608, file: !212, line: 92, baseType: !250, size: 64, offset: 1280)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4608, file: !212, line: 93, baseType: !4624, size: 64, offset: 1344)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4608, file: !212, line: 94, baseType: !131, size: 64, offset: 1408)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4608, file: !212, line: 95, baseType: !138, size: 64, offset: 1472)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4608, file: !212, line: 96, baseType: !85, size: 32, offset: 1536)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4608, file: !212, line: 98, baseType: !162, size: 160, offset: 1568)
!4640 = !{!4641, !4642, !4643, !4644}
!4641 = !DILocalVariable(name: "fp", arg: 1, scope: !4603, file: !873, line: 28, type: !4606)
!4642 = !DILocalVariable(name: "offset", arg: 2, scope: !4603, file: !873, line: 28, type: !2210)
!4643 = !DILocalVariable(name: "whence", arg: 3, scope: !4603, file: !873, line: 28, type: !85)
!4644 = !DILocalVariable(name: "pos", scope: !4645, file: !873, line: 123, type: !2210)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !873, line: 119, column: 5)
!4646 = distinct !DILexicalBlock(scope: !4603, file: !873, line: 55, column: 7)
!4647 = !DILocation(line: 0, scope: !4603)
!4648 = !DILocation(line: 55, column: 12, scope: !4646)
!4649 = !{!1828, !904, i64 16}
!4650 = !DILocation(line: 55, column: 33, scope: !4646)
!4651 = !{!1828, !904, i64 8}
!4652 = !DILocation(line: 55, column: 25, scope: !4646)
!4653 = !DILocation(line: 56, column: 7, scope: !4646)
!4654 = !DILocation(line: 56, column: 15, scope: !4646)
!4655 = !DILocation(line: 56, column: 37, scope: !4646)
!4656 = !{!1828, !904, i64 32}
!4657 = !DILocation(line: 56, column: 29, scope: !4646)
!4658 = !DILocation(line: 57, column: 7, scope: !4646)
!4659 = !DILocation(line: 57, column: 15, scope: !4646)
!4660 = !{!1828, !904, i64 72}
!4661 = !DILocation(line: 57, column: 29, scope: !4646)
!4662 = !DILocation(line: 55, column: 7, scope: !4603)
!4663 = !DILocation(line: 123, column: 26, scope: !4645)
!4664 = !DILocation(line: 123, column: 19, scope: !4645)
!4665 = !DILocation(line: 0, scope: !4645)
!4666 = !DILocation(line: 124, column: 15, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4645, file: !873, line: 124, column: 11)
!4668 = !DILocation(line: 124, column: 11, scope: !4645)
!4669 = !DILocation(line: 135, column: 19, scope: !4645)
!4670 = !DILocation(line: 136, column: 12, scope: !4645)
!4671 = !DILocation(line: 136, column: 20, scope: !4645)
!4672 = !{!1828, !1829, i64 144}
!4673 = !DILocation(line: 167, column: 7, scope: !4645)
!4674 = !DILocation(line: 169, column: 10, scope: !4603)
!4675 = !DILocation(line: 169, column: 3, scope: !4603)
!4676 = !DILocation(line: 170, column: 1, scope: !4603)
!4677 = !DISubprogram(name: "fseeko", scope: !964, file: !964, line: 736, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!85, !4606, !234, !85}
!4680 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !770, file: !770, line: 100, type: !4681, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4684)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!138, !2434, !141, !138, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!4684 = !{!4685, !4686, !4687, !4688, !4689}
!4685 = !DILocalVariable(name: "pwc", arg: 1, scope: !4680, file: !770, line: 100, type: !2434)
!4686 = !DILocalVariable(name: "s", arg: 2, scope: !4680, file: !770, line: 100, type: !141)
!4687 = !DILocalVariable(name: "n", arg: 3, scope: !4680, file: !770, line: 100, type: !138)
!4688 = !DILocalVariable(name: "ps", arg: 4, scope: !4680, file: !770, line: 100, type: !4683)
!4689 = !DILocalVariable(name: "ret", scope: !4680, file: !770, line: 130, type: !138)
!4690 = !DILocation(line: 0, scope: !4680)
!4691 = !DILocation(line: 105, column: 9, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4680, file: !770, line: 105, column: 7)
!4693 = !DILocation(line: 105, column: 7, scope: !4680)
!4694 = !DILocation(line: 117, column: 10, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4680, file: !770, line: 117, column: 7)
!4696 = !DILocation(line: 117, column: 7, scope: !4680)
!4697 = !DILocation(line: 130, column: 16, scope: !4680)
!4698 = !DILocation(line: 135, column: 11, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4680, file: !770, line: 135, column: 7)
!4700 = !DILocation(line: 135, column: 25, scope: !4699)
!4701 = !DILocation(line: 135, column: 30, scope: !4699)
!4702 = !DILocation(line: 135, column: 7, scope: !4680)
!4703 = !DILocalVariable(name: "ps", arg: 1, scope: !4704, file: !2407, line: 1135, type: !4683)
!4704 = distinct !DISubprogram(name: "mbszero", scope: !2407, file: !2407, line: 1135, type: !4705, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4683}
!4707 = !{!4703}
!4708 = !DILocation(line: 0, scope: !4704, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 137, column: 5, scope: !4699)
!4710 = !DILocalVariable(name: "__dest", arg: 1, scope: !4711, file: !2416, line: 57, type: !131)
!4711 = distinct !DISubprogram(name: "memset", scope: !2416, file: !2416, line: 57, type: !2417, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !4712)
!4712 = !{!4710, !4713, !4714}
!4713 = !DILocalVariable(name: "__ch", arg: 2, scope: !4711, file: !2416, line: 57, type: !85)
!4714 = !DILocalVariable(name: "__len", arg: 3, scope: !4711, file: !2416, line: 57, type: !138)
!4715 = !DILocation(line: 0, scope: !4711, inlinedAt: !4716)
!4716 = distinct !DILocation(line: 1137, column: 3, scope: !4704, inlinedAt: !4709)
!4717 = !DILocation(line: 59, column: 10, scope: !4711, inlinedAt: !4716)
!4718 = !DILocation(line: 137, column: 5, scope: !4699)
!4719 = !DILocation(line: 138, column: 11, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4680, file: !770, line: 138, column: 7)
!4721 = !DILocation(line: 138, column: 7, scope: !4680)
!4722 = !DILocation(line: 139, column: 5, scope: !4720)
!4723 = !DILocation(line: 143, column: 26, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4680, file: !770, line: 143, column: 7)
!4725 = !DILocation(line: 143, column: 41, scope: !4724)
!4726 = !DILocation(line: 143, column: 7, scope: !4680)
!4727 = !DILocation(line: 145, column: 15, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !770, line: 145, column: 11)
!4729 = distinct !DILexicalBlock(scope: !4724, file: !770, line: 144, column: 5)
!4730 = !DILocation(line: 145, column: 11, scope: !4729)
!4731 = !DILocation(line: 146, column: 32, scope: !4728)
!4732 = !DILocation(line: 146, column: 16, scope: !4728)
!4733 = !DILocation(line: 146, column: 14, scope: !4728)
!4734 = !DILocation(line: 146, column: 9, scope: !4728)
!4735 = !DILocation(line: 286, column: 1, scope: !4680)
!4736 = !DISubprogram(name: "mbsinit", scope: !4737, file: !4737, line: 293, type: !4738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4737 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!85, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!4742 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !875, file: !875, line: 27, type: !3952, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4743)
!4743 = !{!4744, !4745, !4746, !4747}
!4744 = !DILocalVariable(name: "ptr", arg: 1, scope: !4742, file: !875, line: 27, type: !131)
!4745 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4742, file: !875, line: 27, type: !138)
!4746 = !DILocalVariable(name: "size", arg: 3, scope: !4742, file: !875, line: 27, type: !138)
!4747 = !DILocalVariable(name: "nbytes", scope: !4742, file: !875, line: 29, type: !138)
!4748 = !DILocation(line: 0, scope: !4742)
!4749 = !DILocation(line: 30, column: 7, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4742, file: !875, line: 30, column: 7)
!4751 = !DILocation(line: 30, column: 7, scope: !4742)
!4752 = !DILocation(line: 32, column: 7, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4750, file: !875, line: 31, column: 5)
!4754 = !DILocation(line: 32, column: 13, scope: !4753)
!4755 = !DILocation(line: 33, column: 7, scope: !4753)
!4756 = !DILocalVariable(name: "ptr", arg: 1, scope: !4757, file: !4044, line: 2057, type: !131)
!4757 = distinct !DISubprogram(name: "rpl_realloc", scope: !4044, file: !4044, line: 2057, type: !4036, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !874, retainedNodes: !4758)
!4758 = !{!4756, !4759}
!4759 = !DILocalVariable(name: "size", arg: 2, scope: !4757, file: !4044, line: 2057, type: !138)
!4760 = !DILocation(line: 0, scope: !4757, inlinedAt: !4761)
!4761 = distinct !DILocation(line: 37, column: 10, scope: !4742)
!4762 = !DILocation(line: 2059, column: 24, scope: !4757, inlinedAt: !4761)
!4763 = !DILocation(line: 2059, column: 10, scope: !4757, inlinedAt: !4761)
!4764 = !DILocation(line: 37, column: 3, scope: !4742)
!4765 = !DILocation(line: 38, column: 1, scope: !4742)
!4766 = distinct !DISubprogram(name: "dup_safer", scope: !877, file: !877, line: 31, type: !1440, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4767)
!4767 = !{!4768}
!4768 = !DILocalVariable(name: "fd", arg: 1, scope: !4766, file: !877, line: 31, type: !85)
!4769 = !DILocation(line: 0, scope: !4766)
!4770 = !DILocation(line: 33, column: 10, scope: !4766)
!4771 = !DILocation(line: 33, column: 3, scope: !4766)
!4772 = distinct !DISubprogram(name: "rpl_fcntl", scope: !789, file: !789, line: 202, type: !2138, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4773)
!4773 = !{!4774, !4775, !4776, !4786, !4787, !4790, !4792, !4796}
!4774 = !DILocalVariable(name: "fd", arg: 1, scope: !4772, file: !789, line: 202, type: !85)
!4775 = !DILocalVariable(name: "action", arg: 2, scope: !4772, file: !789, line: 202, type: !85)
!4776 = !DILocalVariable(name: "arg", scope: !4772, file: !789, line: 208, type: !4777)
!4777 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2288, line: 12, baseType: !4778)
!4778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !789, baseType: !4779)
!4779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4780, size: 192, elements: !57)
!4780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4781)
!4781 = !{!4782, !4783, !4784, !4785}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4780, file: !789, line: 208, baseType: !76, size: 32)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4780, file: !789, line: 208, baseType: !76, size: 32, offset: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4780, file: !789, line: 208, baseType: !131, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4780, file: !789, line: 208, baseType: !131, size: 64, offset: 128)
!4786 = !DILocalVariable(name: "result", scope: !4772, file: !789, line: 211, type: !85)
!4787 = !DILocalVariable(name: "target", scope: !4788, file: !789, line: 216, type: !85)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !789, line: 215, column: 7)
!4789 = distinct !DILexicalBlock(scope: !4772, file: !789, line: 213, column: 5)
!4790 = !DILocalVariable(name: "target", scope: !4791, file: !789, line: 223, type: !85)
!4791 = distinct !DILexicalBlock(scope: !4789, file: !789, line: 222, column: 7)
!4792 = !DILocalVariable(name: "x", scope: !4793, file: !789, line: 418, type: !85)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !789, line: 417, column: 13)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !789, line: 261, column: 11)
!4795 = distinct !DILexicalBlock(scope: !4789, file: !789, line: 258, column: 7)
!4796 = !DILocalVariable(name: "p", scope: !4797, file: !789, line: 426, type: !131)
!4797 = distinct !DILexicalBlock(scope: !4794, file: !789, line: 425, column: 13)
!4798 = distinct !DIAssignID()
!4799 = !DILocation(line: 0, scope: !4772)
!4800 = !DILocation(line: 208, column: 3, scope: !4772)
!4801 = !DILocation(line: 209, column: 3, scope: !4772)
!4802 = !DILocation(line: 212, column: 3, scope: !4772)
!4803 = !DILocation(line: 216, column: 22, scope: !4788)
!4804 = distinct !DIAssignID()
!4805 = distinct !DIAssignID()
!4806 = !DILocation(line: 0, scope: !4788)
!4807 = !DILocalVariable(name: "fd", arg: 1, scope: !4808, file: !789, line: 444, type: !85)
!4808 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !789, file: !789, line: 444, type: !790, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4809)
!4809 = !{!4807, !4810, !4811}
!4810 = !DILocalVariable(name: "target", arg: 2, scope: !4808, file: !789, line: 444, type: !85)
!4811 = !DILocalVariable(name: "result", scope: !4808, file: !789, line: 446, type: !85)
!4812 = !DILocation(line: 0, scope: !4808, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 217, column: 18, scope: !4788)
!4814 = !DILocation(line: 479, column: 12, scope: !4808, inlinedAt: !4813)
!4815 = !DILocation(line: 223, column: 22, scope: !4791)
!4816 = distinct !DIAssignID()
!4817 = distinct !DIAssignID()
!4818 = !DILocation(line: 0, scope: !4791)
!4819 = !DILocation(line: 0, scope: !788, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 224, column: 18, scope: !4791)
!4821 = !DILocation(line: 507, column: 12, scope: !4822, inlinedAt: !4820)
!4822 = distinct !DILexicalBlock(scope: !788, file: !789, line: 507, column: 7)
!4823 = !DILocation(line: 507, column: 9, scope: !4822, inlinedAt: !4820)
!4824 = !DILocation(line: 507, column: 7, scope: !788, inlinedAt: !4820)
!4825 = !DILocation(line: 509, column: 16, scope: !4826, inlinedAt: !4820)
!4826 = distinct !DILexicalBlock(scope: !4822, file: !789, line: 508, column: 5)
!4827 = !DILocation(line: 510, column: 13, scope: !4828, inlinedAt: !4820)
!4828 = distinct !DILexicalBlock(scope: !4826, file: !789, line: 510, column: 11)
!4829 = !DILocation(line: 510, column: 23, scope: !4828, inlinedAt: !4820)
!4830 = !DILocation(line: 510, column: 26, scope: !4828, inlinedAt: !4820)
!4831 = !DILocation(line: 510, column: 32, scope: !4828, inlinedAt: !4820)
!4832 = !DILocation(line: 510, column: 11, scope: !4826, inlinedAt: !4820)
!4833 = !DILocation(line: 512, column: 30, scope: !4834, inlinedAt: !4820)
!4834 = distinct !DILexicalBlock(scope: !4828, file: !789, line: 511, column: 9)
!4835 = !DILocation(line: 528, column: 19, scope: !800, inlinedAt: !4820)
!4836 = !DILocation(line: 0, scope: !4808, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 520, column: 20, scope: !4838, inlinedAt: !4820)
!4838 = distinct !DILexicalBlock(scope: !4828, file: !789, line: 519, column: 9)
!4839 = !DILocation(line: 479, column: 12, scope: !4808, inlinedAt: !4837)
!4840 = !DILocation(line: 521, column: 22, scope: !4841, inlinedAt: !4820)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !789, line: 521, column: 15)
!4842 = !DILocation(line: 521, column: 15, scope: !4838, inlinedAt: !4820)
!4843 = !DILocation(line: 522, column: 32, scope: !4841, inlinedAt: !4820)
!4844 = !DILocation(line: 522, column: 13, scope: !4841, inlinedAt: !4820)
!4845 = !DILocation(line: 0, scope: !4808, inlinedAt: !4846)
!4846 = distinct !DILocation(line: 527, column: 14, scope: !4822, inlinedAt: !4820)
!4847 = !DILocation(line: 479, column: 12, scope: !4808, inlinedAt: !4846)
!4848 = !DILocation(line: 0, scope: !4822, inlinedAt: !4820)
!4849 = !DILocation(line: 528, column: 9, scope: !800, inlinedAt: !4820)
!4850 = !DILocation(line: 530, column: 19, scope: !799, inlinedAt: !4820)
!4851 = !DILocation(line: 0, scope: !799, inlinedAt: !4820)
!4852 = !DILocation(line: 531, column: 17, scope: !803, inlinedAt: !4820)
!4853 = !DILocation(line: 531, column: 21, scope: !803, inlinedAt: !4820)
!4854 = !DILocation(line: 531, column: 54, scope: !803, inlinedAt: !4820)
!4855 = !DILocation(line: 531, column: 24, scope: !803, inlinedAt: !4820)
!4856 = !DILocation(line: 531, column: 68, scope: !803, inlinedAt: !4820)
!4857 = !DILocation(line: 531, column: 11, scope: !799, inlinedAt: !4820)
!4858 = !DILocation(line: 533, column: 29, scope: !802, inlinedAt: !4820)
!4859 = !DILocation(line: 0, scope: !802, inlinedAt: !4820)
!4860 = !DILocation(line: 534, column: 11, scope: !802, inlinedAt: !4820)
!4861 = !DILocation(line: 535, column: 17, scope: !802, inlinedAt: !4820)
!4862 = !DILocation(line: 537, column: 9, scope: !802, inlinedAt: !4820)
!4863 = !DILocation(line: 329, column: 22, scope: !4794)
!4864 = !DILocation(line: 330, column: 13, scope: !4794)
!4865 = !DILocation(line: 418, column: 23, scope: !4793)
!4866 = distinct !DIAssignID()
!4867 = distinct !DIAssignID()
!4868 = !DILocation(line: 0, scope: !4793)
!4869 = !DILocation(line: 419, column: 24, scope: !4793)
!4870 = !DILocation(line: 421, column: 13, scope: !4794)
!4871 = !DILocation(line: 426, column: 25, scope: !4797)
!4872 = distinct !DIAssignID()
!4873 = distinct !DIAssignID()
!4874 = !DILocation(line: 0, scope: !4797)
!4875 = !DILocation(line: 427, column: 24, scope: !4797)
!4876 = !DILocation(line: 429, column: 13, scope: !4794)
!4877 = !DILocation(line: 0, scope: !4789)
!4878 = !DILocation(line: 438, column: 3, scope: !4772)
!4879 = !DILocation(line: 441, column: 1, scope: !4772)
!4880 = !DILocation(line: 440, column: 3, scope: !4772)
!4881 = distinct !DISubprogram(name: "hard_locale", scope: !806, file: !806, line: 28, type: !1535, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4882)
!4882 = !{!4883, !4884}
!4883 = !DILocalVariable(name: "category", arg: 1, scope: !4881, file: !806, line: 28, type: !85)
!4884 = !DILocalVariable(name: "locale", scope: !4881, file: !806, line: 30, type: !4885)
!4885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4886)
!4886 = !{!4887}
!4887 = !DISubrange(count: 257)
!4888 = distinct !DIAssignID()
!4889 = !DILocation(line: 0, scope: !4881)
!4890 = !DILocation(line: 30, column: 3, scope: !4881)
!4891 = !DILocation(line: 32, column: 7, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4881, file: !806, line: 32, column: 7)
!4893 = !DILocation(line: 32, column: 7, scope: !4881)
!4894 = !DILocalVariable(name: "__s1", arg: 1, scope: !4895, file: !982, line: 1359, type: !141)
!4895 = distinct !DISubprogram(name: "streq", scope: !982, file: !982, line: 1359, type: !983, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4896)
!4896 = !{!4894, !4897}
!4897 = !DILocalVariable(name: "__s2", arg: 2, scope: !4895, file: !982, line: 1359, type: !141)
!4898 = !DILocation(line: 0, scope: !4895, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 35, column: 9, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4881, file: !806, line: 35, column: 7)
!4901 = !DILocation(line: 1361, column: 11, scope: !4895, inlinedAt: !4899)
!4902 = !DILocation(line: 35, column: 29, scope: !4900)
!4903 = !DILocation(line: 0, scope: !4895, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 35, column: 32, scope: !4900)
!4905 = !DILocation(line: 1361, column: 11, scope: !4895, inlinedAt: !4904)
!4906 = !DILocation(line: 1361, column: 10, scope: !4895, inlinedAt: !4904)
!4907 = !DILocation(line: 35, column: 7, scope: !4881)
!4908 = !DILocation(line: 46, column: 3, scope: !4881)
!4909 = !DILocation(line: 47, column: 1, scope: !4881)
!4910 = distinct !DISubprogram(name: "setlocale_null_r", scope: !883, file: !883, line: 154, type: !4911, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!85, !85, !130, !138}
!4913 = !{!4914, !4915, !4916}
!4914 = !DILocalVariable(name: "category", arg: 1, scope: !4910, file: !883, line: 154, type: !85)
!4915 = !DILocalVariable(name: "buf", arg: 2, scope: !4910, file: !883, line: 154, type: !130)
!4916 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4910, file: !883, line: 154, type: !138)
!4917 = !DILocation(line: 0, scope: !4910)
!4918 = !DILocation(line: 159, column: 10, scope: !4910)
!4919 = !DILocation(line: 159, column: 3, scope: !4910)
!4920 = distinct !DISubprogram(name: "setlocale_null", scope: !883, file: !883, line: 186, type: !4921, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !4923)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!141, !85}
!4923 = !{!4924}
!4924 = !DILocalVariable(name: "category", arg: 1, scope: !4920, file: !883, line: 186, type: !85)
!4925 = !DILocation(line: 0, scope: !4920)
!4926 = !DILocation(line: 189, column: 10, scope: !4920)
!4927 = !DILocation(line: 189, column: 3, scope: !4920)
!4928 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !885, file: !885, line: 35, type: !4921, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4929)
!4929 = !{!4930, !4931}
!4930 = !DILocalVariable(name: "category", arg: 1, scope: !4928, file: !885, line: 35, type: !85)
!4931 = !DILocalVariable(name: "result", scope: !4928, file: !885, line: 37, type: !141)
!4932 = !DILocation(line: 0, scope: !4928)
!4933 = !DILocation(line: 37, column: 24, scope: !4928)
!4934 = !DILocation(line: 62, column: 3, scope: !4928)
!4935 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !885, file: !885, line: 66, type: !4911, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4936)
!4936 = !{!4937, !4938, !4939, !4940, !4941}
!4937 = !DILocalVariable(name: "category", arg: 1, scope: !4935, file: !885, line: 66, type: !85)
!4938 = !DILocalVariable(name: "buf", arg: 2, scope: !4935, file: !885, line: 66, type: !130)
!4939 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4935, file: !885, line: 66, type: !138)
!4940 = !DILocalVariable(name: "result", scope: !4935, file: !885, line: 111, type: !141)
!4941 = !DILocalVariable(name: "length", scope: !4942, file: !885, line: 125, type: !138)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !885, line: 124, column: 5)
!4943 = distinct !DILexicalBlock(scope: !4935, file: !885, line: 113, column: 7)
!4944 = !DILocation(line: 0, scope: !4935)
!4945 = !DILocation(line: 0, scope: !4928, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 111, column: 24, scope: !4935)
!4947 = !DILocation(line: 37, column: 24, scope: !4928, inlinedAt: !4946)
!4948 = !DILocation(line: 113, column: 14, scope: !4943)
!4949 = !DILocation(line: 113, column: 7, scope: !4935)
!4950 = !DILocation(line: 116, column: 19, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !885, line: 116, column: 11)
!4952 = distinct !DILexicalBlock(scope: !4943, file: !885, line: 114, column: 5)
!4953 = !DILocation(line: 116, column: 11, scope: !4952)
!4954 = !DILocation(line: 120, column: 16, scope: !4951)
!4955 = !DILocation(line: 120, column: 9, scope: !4951)
!4956 = !DILocation(line: 125, column: 23, scope: !4942)
!4957 = !DILocation(line: 0, scope: !4942)
!4958 = !DILocation(line: 126, column: 18, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4942, file: !885, line: 126, column: 11)
!4960 = !DILocation(line: 126, column: 11, scope: !4942)
!4961 = !DILocation(line: 128, column: 39, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4959, file: !885, line: 127, column: 9)
!4963 = !DILocalVariable(name: "__dest", arg: 1, scope: !4964, file: !2416, line: 26, type: !4315)
!4964 = distinct !DISubprogram(name: "memcpy", scope: !2416, file: !2416, line: 26, type: !4313, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4965)
!4965 = !{!4963, !4966, !4967}
!4966 = !DILocalVariable(name: "__src", arg: 2, scope: !4964, file: !2416, line: 26, type: !1116)
!4967 = !DILocalVariable(name: "__len", arg: 3, scope: !4964, file: !2416, line: 26, type: !138)
!4968 = !DILocation(line: 0, scope: !4964, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 128, column: 11, scope: !4962)
!4970 = !DILocation(line: 29, column: 10, scope: !4964, inlinedAt: !4969)
!4971 = !DILocation(line: 129, column: 11, scope: !4962)
!4972 = !DILocation(line: 133, column: 23, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4974, file: !885, line: 133, column: 15)
!4974 = distinct !DILexicalBlock(scope: !4959, file: !885, line: 132, column: 9)
!4975 = !DILocation(line: 133, column: 15, scope: !4974)
!4976 = !DILocation(line: 138, column: 44, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4973, file: !885, line: 134, column: 13)
!4978 = !DILocation(line: 0, scope: !4964, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 138, column: 15, scope: !4977)
!4980 = !DILocation(line: 29, column: 10, scope: !4964, inlinedAt: !4979)
!4981 = !DILocation(line: 139, column: 15, scope: !4977)
!4982 = !DILocation(line: 139, column: 32, scope: !4977)
!4983 = !DILocation(line: 140, column: 13, scope: !4977)
!4984 = !DILocation(line: 0, scope: !4943)
!4985 = !DILocation(line: 145, column: 1, scope: !4935)
