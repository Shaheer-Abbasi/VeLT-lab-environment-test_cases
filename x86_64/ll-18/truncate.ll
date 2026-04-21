; ModuleID = 'src/truncate.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [29 x i8] c"Usage: %s OPTION... FILE...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [275 x i8] c"Shrink or extend the size of each FILE to the specified size\0A\0AA FILE argument that does not exist is created.\0A\0AIf a FILE is larger than the specified size, the extra data is lost.\0AIf a FILE is shorter, it is extended and the sparse extended part (hole)\0Areads as zero bytes.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"  -c, --no-create        do not create any files\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [77 x i8] c"  -o, --io-blocks        treat SIZE as number of IO blocks instead of bytes\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [45 x i8] c"  -r, --reference=RFILE  base size on RFILE\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [68 x i8] c"  -s, --size=SIZE        set or adjust the file size by SIZE bytes\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [191 x i8] c"\0ASIZE may also be prefixed by one of the following modifying characters:\0A'+' extend by, '-' reduce by, '<' at most, '>' at least,\0A'/' round down to multiple of, '%' round up to multiple of.\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !54
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [7 x i8] c"cor:s:\00", align 1, !dbg !69
@longopts = internal constant [7 x %struct.option] [%struct.option { ptr @.str.70, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 115 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !74
@no_create = internal unnamed_addr global i1 false, align 1, !dbg !453
@block_mode = internal unnamed_addr global i1 false, align 1, !dbg !454
@optarg = external local_unnamed_addr global ptr, align 8
@ref_file = internal unnamed_addr global ptr null, align 8, !dbg !218
@.str.15 = private unnamed_addr constant [38 x i8] c"multiple relative modifiers specified\00", align 1, !dbg !141
@.str.16 = private unnamed_addr constant [16 x i8] c"EgGkKmMPQRtTYZ0\00", align 1, !dbg !146
@.str.17 = private unnamed_addr constant [15 x i8] c"Invalid number\00", align 1, !dbg !151
@.str.18 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1, !dbg !156
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !161
@.str.20 = private unnamed_addr constant [14 x i8] c"Padraig Brady\00", align 1, !dbg !166
@.str.21 = private unnamed_addr constant [15 x i8] c"P\C3\A1draig Brady\00", align 1, !dbg !168
@optind = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"you must specify either %s or %s\00", align 1, !dbg !170
@.str.23 = private unnamed_addr constant [7 x i8] c"--size\00", align 1, !dbg !175
@.str.24 = private unnamed_addr constant [12 x i8] c"--reference\00", align 1, !dbg !177
@.str.25 = private unnamed_addr constant [39 x i8] c"you must specify a relative %s with %s\00", align 1, !dbg !182
@.str.26 = private unnamed_addr constant [32 x i8] c"%s was specified but %s was not\00", align 1, !dbg !184
@.str.27 = private unnamed_addr constant [12 x i8] c"--io-blocks\00", align 1, !dbg !189
@.str.28 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1, !dbg !191
@.str.29 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1, !dbg !196
@.str.30 = private unnamed_addr constant [26 x i8] c"cannot get the size of %s\00", align 1, !dbg !198
@.str.31 = private unnamed_addr constant [27 x i8] c"cannot open %s for writing\00", align 1, !dbg !203
@.str.32 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1, !dbg !208
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !220
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !225
@.str.34 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !304
@.str.35 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !309
@.str.36 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !311
@.str.37 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !316
@.str.51 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !356
@.str.52 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !358
@.str.53 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !360
@.str.54 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !362
@.str.55 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !367
@.str.56 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !369
@.str.57 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !374
@.str.58 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !376
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !378
@.str.60 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !380
@.str.61 = private unnamed_addr constant [216 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).\0ABinary prefixes can be used, too: KiB=K, MiB=M, and so on.\0A\00", align 1, !dbg !382
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !396
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !398
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !403
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !405
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !410
@.str.70 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1, !dbg !412
@.str.71 = private unnamed_addr constant [10 x i8] c"io-blocks\00", align 1, !dbg !414
@.str.72 = private unnamed_addr constant [10 x i8] c"reference\00", align 1, !dbg !416
@.str.73 = private unnamed_addr constant [5 x i8] c"size\00", align 1, !dbg !418
@.str.74 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !420
@.str.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !422
@.str.76 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1, !dbg !424
@.str.77 = private unnamed_addr constant [46 x i8] c"overflow in %jd * %td byte blocks for file %s\00", align 1, !dbg !426
@.str.78 = private unnamed_addr constant [42 x i8] c"%s has unusable, apparently negative size\00", align 1, !dbg !431
@.str.79 = private unnamed_addr constant [35 x i8] c"overflow extending size of file %s\00", align 1, !dbg !436
@.str.80 = private unnamed_addr constant [35 x i8] c"failed to truncate %s at %jd bytes\00", align 1, !dbg !441
@.str.38 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !455
@Version = dso_local local_unnamed_addr global ptr @.str.38, align 8, !dbg !458
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !462
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !475
@.str.41 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !467
@.str.1.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !469
@.str.2.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !471
@.str.3.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !473
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !477
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !483
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !514
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !485
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !504
@.str.1.51 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !506
@.str.2.53 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !508
@.str.3.52 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !510
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !512
@.str.4.46 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !516
@.str.5.47 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !518
@.str.6.48 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !520
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !525
@.str.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !531
@.str.1.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !533
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !535
@.str.81 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !566
@.str.1.82 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !569
@.str.2.83 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !571
@.str.3.84 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !576
@.str.4.85 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !578
@.str.5.86 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !580
@.str.6.87 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !582
@.str.7.88 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !584
@.str.8.89 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !586
@.str.9.90 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !588
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.81, ptr @.str.1.82, ptr @.str.2.83, ptr @.str.3.84, ptr @.str.4.85, ptr @.str.5.86, ptr @.str.6.87, ptr @.str.7.88, ptr @.str.8.89, ptr @.str.9.90, ptr null], align 16, !dbg !590
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !603
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !617
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !655
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !662
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !619
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !664
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !607
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !624
@.str.11.91 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !626
@.str.12.94 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !628
@.str.13.92 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !630
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !632
@.str.101 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !670
@.str.1.102 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !673
@.str.2.103 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !675
@.str.3.104 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !677
@.str.4.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !679
@.str.5.106 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !681
@.str.6.107 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !686
@.str.7.108 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !691
@.str.8.109 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !693
@.str.9.110 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !698
@.str.10.111 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !703
@.str.11.112 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !705
@.str.12.113 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !710
@.str.13.114 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !712
@.str.14.115 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !717
@.str.15.116 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !722
@.str.16.117 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !727
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.122 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !732
@.str.18.123 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !734
@.str.19.124 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !736
@.str.20.125 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !738
@.str.21.126 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !740
@.str.22.127 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !742
@.str.23.128 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !744
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !746
@exit_failure = dso_local global i32 1, align 4, !dbg !754
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !760
@.str.1.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !763
@.str.2.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !765
@.str.142 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !767
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !770
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !773
@.str.1.162 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !788

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !888 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !892, metadata !DIExpression()), !dbg !893
  %2 = icmp eq i32 %0, 0, !dbg !894
  br i1 %2, label %8, label %3, !dbg !896

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !897, !tbaa !899
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !897
  %6 = load ptr, ptr @program_name, align 8, !dbg !897, !tbaa !899
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !897
  br label %44, !dbg !897

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !903
  %10 = load ptr, ptr @program_name, align 8, !dbg !903, !tbaa !899
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !903
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !905
  %13 = load ptr, ptr @stdout, align 8, !dbg !905, !tbaa !899
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !905
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #38, !dbg !906
  %16 = load ptr, ptr @stdout, align 8, !dbg !906, !tbaa !899
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !906
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !909
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !909
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !910
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !910
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !911
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !911
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !912
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !912
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !913
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !913
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !914
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !914
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #38, !dbg !915
  %25 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !899
  %26 = tail call i32 @fputs_unlocked(ptr noundef %24, ptr noundef %25), !dbg !915
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !918
  %28 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !899
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !918
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !919, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata !938, metadata !932, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr poison, metadata !931, metadata !DIExpression()), !dbg !936
  tail call void @emit_bug_reporting_address() #38, !dbg !939
  %30 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !940
  call void @llvm.dbg.value(metadata ptr %30, metadata !934, metadata !DIExpression()), !dbg !936
  %31 = icmp eq ptr %30, null, !dbg !941
  br i1 %31, label %39, label %32, !dbg !943

32:                                               ; preds = %8
  %33 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.65, i64 noundef 3) #39, !dbg !944
  %34 = icmp eq i32 %33, 0, !dbg !944
  br i1 %34, label %39, label %35, !dbg !945

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !946
  %37 = load ptr, ptr @stdout, align 8, !dbg !946, !tbaa !899
  %38 = tail call i32 @fputs_unlocked(ptr noundef %36, ptr noundef %37), !dbg !946
  br label %39, !dbg !948

39:                                               ; preds = %8, %32, %35
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !935, metadata !DIExpression()), !dbg !936
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !949
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %40, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #38, !dbg !949
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #38, !dbg !950
  %43 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #38, !dbg !950
  br label %44

44:                                               ; preds = %39, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !951
  unreachable, !dbg !951
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !952 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !956 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !962 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !965 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !227 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !232, metadata !DIExpression()), !dbg !968
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !969, !tbaa !970
  %3 = icmp eq i32 %2, -1, !dbg !972
  br i1 %3, label %4, label %16, !dbg !973

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.34) #38, !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !233, metadata !DIExpression()), !dbg !975
  %6 = icmp eq ptr %5, null, !dbg !976
  br i1 %6, label %14, label %7, !dbg !977

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !978, !tbaa !979
  %9 = icmp eq i8 %8, 0, !dbg !978
  br i1 %9, label %14, label %10, !dbg !980

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !981, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata ptr @.str.35, metadata !987, metadata !DIExpression()), !dbg !988
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.35) #39, !dbg !990
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !997, !tbaa !899
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !997
  br label %124, !dbg !999

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !236, metadata !DIExpression()), !dbg !968
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.36) #39, !dbg !1000
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1001
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !968
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1002
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !238, metadata !DIExpression()), !dbg !968
  %26 = icmp eq ptr %25, null, !dbg !1003
  br i1 %26, label %54, label %27, !dbg !1004

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1005
  br i1 %28, label %54, label %29, !dbg !1006

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !239, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata i64 0, metadata !243, metadata !DIExpression()), !dbg !1007
  %30 = icmp ult ptr %24, %25, !dbg !1008
  br i1 %30, label %31, label %54, !dbg !1009

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !968
  %33 = load ptr, ptr %32, align 8, !tbaa !899
  br label %34, !dbg !1009

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !239, metadata !DIExpression()), !dbg !1007
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !243, metadata !DIExpression()), !dbg !1007
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !239, metadata !DIExpression()), !dbg !1007
  %38 = load i8, ptr %35, align 1, !dbg !1010, !tbaa !979
  %39 = sext i8 %38 to i64, !dbg !1010
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1010
  %41 = load i16, ptr %40, align 2, !dbg !1010, !tbaa !1011
  %42 = freeze i16 %41, !dbg !1013
  %43 = lshr i16 %42, 13, !dbg !1013
  %44 = and i16 %43, 1, !dbg !1013
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1014
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !243, metadata !DIExpression()), !dbg !1007
  %47 = icmp ult ptr %37, %25, !dbg !1008
  %48 = icmp ult i64 %46, 2, !dbg !1015
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1015
  br i1 %49, label %34, label %50, !dbg !1009, !llvm.loop !1016

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1018
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1020
  %53 = zext i1 %51 to i8, !dbg !1020
  br label %54, !dbg !1020

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !968
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !968
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !236, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !238, metadata !DIExpression()), !dbg !968
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.37) #39, !dbg !1021
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !244, metadata !DIExpression()), !dbg !968
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !245, metadata !DIExpression()), !dbg !968
  br label %59, !dbg !1023

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !968
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !968
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !236, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !245, metadata !DIExpression()), !dbg !968
  %62 = load i8, ptr %60, align 1, !dbg !1024, !tbaa !979
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1025

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1026
  %65 = load i8, ptr %64, align 1, !dbg !1029, !tbaa !979
  %66 = icmp eq i8 %65, 45, !dbg !1030
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1031
  br label %68, !dbg !1031

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !968
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !236, metadata !DIExpression()), !dbg !968
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1032
  %71 = load ptr, ptr %70, align 8, !dbg !1032, !tbaa !899
  %72 = sext i8 %62 to i64, !dbg !1032
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1032
  %74 = load i16, ptr %73, align 2, !dbg !1032, !tbaa !1011
  %75 = and i16 %74, 8192, !dbg !1032
  %76 = icmp eq i16 %75, 0, !dbg !1032
  br i1 %76, label %92, label %77, !dbg !1034

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1035
  br i1 %78, label %94, label %79, !dbg !1038

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1039
  %81 = load i8, ptr %80, align 1, !dbg !1039, !tbaa !979
  %82 = sext i8 %81 to i64, !dbg !1039
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1039
  %84 = load i16, ptr %83, align 2, !dbg !1039, !tbaa !1011
  %85 = and i16 %84, 8192, !dbg !1039
  %86 = icmp eq i16 %85, 0, !dbg !1039
  br i1 %86, label %87, label %94, !dbg !1040

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1041
  %89 = icmp ne i8 %88, 0, !dbg !1041
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1043
  br i1 %91, label %92, label %94, !dbg !1043

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1044
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !245, metadata !DIExpression()), !dbg !968
  br label %59, !dbg !1023, !llvm.loop !1045

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1047
  %96 = load ptr, ptr @stdout, align 8, !dbg !1047, !tbaa !899
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1047
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !981, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata !938, metadata !987, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !299, metadata !DIExpression()), !dbg !968
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #39, !dbg !1068
  %99 = icmp eq i32 %98, 0, !dbg !1068
  br i1 %99, label %103, label %100, !dbg !1070

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.52, i64 noundef 9) #39, !dbg !1071
  %102 = icmp eq i32 %101, 0, !dbg !1071
  br i1 %102, label %103, label %106, !dbg !1072

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1073
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #38, !dbg !1073
  br label %109, !dbg !1075

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1076
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #38, !dbg !1076
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !899
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.57, ptr noundef %110), !dbg !1078
  %112 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !899
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.58, ptr noundef %112), !dbg !1079
  %114 = ptrtoint ptr %60 to i64, !dbg !1080
  %115 = sub i64 %114, %95, !dbg !1080
  %116 = load ptr, ptr @stdout, align 8, !dbg !1080, !tbaa !899
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1080
  %118 = load ptr, ptr @stdout, align 8, !dbg !1081, !tbaa !899
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.59, ptr noundef %118), !dbg !1081
  %120 = load ptr, ptr @stdout, align 8, !dbg !1082, !tbaa !899
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.60, ptr noundef %120), !dbg !1082
  %122 = load ptr, ptr @stdout, align 8, !dbg !1083, !tbaa !899
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1083
  br label %124, !dbg !1084

124:                                              ; preds = %109, %19
  ret void, !dbg !1084
}

; Function Attrs: nounwind
declare !dbg !1085 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1089 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1093 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1095 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1098 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1101 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1104 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1107 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1113 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1114 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1120 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !1185
  %4 = alloca %struct.stat, align 8, !DIAssignID !1186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1133, metadata !DIExpression(), metadata !1186, metadata ptr %4, metadata !DIExpression()), !dbg !1187
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1125, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1126, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1127, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1129, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1130, metadata !DIExpression()), !dbg !1188
  %5 = load ptr, ptr %1, align 8, !dbg !1189, !tbaa !899
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1190
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1191
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1192
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1193
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1194
  br label %10, !dbg !1195

10:                                               ; preds = %77, %2
  %11 = phi i32 [ %78, %77 ], [ 0, %2 ]
  %12 = phi i64 [ %80, %77 ], [ undef, %2 ]
  %13 = phi i1 [ false, %77 ], [ true, %2 ]
  br label %14, !dbg !1195

14:                                               ; preds = %30, %10
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1127, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1128, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1130, metadata !DIExpression()), !dbg !1188
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1196
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1132, metadata !DIExpression()), !dbg !1188
  switch i32 %15, label %92 [
    i32 -1, label %93
    i32 99, label %26
    i32 111, label %27
    i32 114, label %28
    i32 115, label %16
    i32 -130, label %87
    i32 -131, label %88
  ], !dbg !1195

16:                                               ; preds = %14
  %17 = tail call ptr @__ctype_b_loc() #41, !dbg !1188
  %18 = load ptr, ptr %17, align 8, !dbg !1197, !tbaa !899
  %19 = load ptr, ptr @optarg, align 8, !dbg !1197, !tbaa !899
  %20 = load i8, ptr %19, align 1, !dbg !1197, !tbaa !979
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21, !dbg !1197
  %23 = load i16, ptr %22, align 2, !dbg !1197, !tbaa !1011
  %24 = and i16 %23, 8192, !dbg !1197
  %25 = icmp eq i16 %24, 0, !dbg !1200
  br i1 %25, label %41, label %31, !dbg !1200

26:                                               ; preds = %14
  store i1 true, ptr @no_create, align 1, !dbg !1201
  br label %30, !dbg !1202

27:                                               ; preds = %14
  store i1 true, ptr @block_mode, align 1, !dbg !1203
  br label %30, !dbg !1204

28:                                               ; preds = %14
  %29 = load ptr, ptr @optarg, align 8, !dbg !1205, !tbaa !899
  store ptr %29, ptr @ref_file, align 8, !dbg !1206, !tbaa !899
  br label %30, !dbg !1207

30:                                               ; preds = %28, %27, %26
  br label %14, !dbg !1188, !llvm.loop !1208

31:                                               ; preds = %16, %31
  %32 = phi ptr [ %33, %31 ], [ %19, %16 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1210
  store ptr %33, ptr @optarg, align 8, !dbg !1210, !tbaa !899
  %34 = load ptr, ptr %17, align 8, !dbg !1197, !tbaa !899
  %35 = load i8, ptr %33, align 1, !dbg !1197, !tbaa !979
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, ptr %34, i64 %36, !dbg !1197
  %38 = load i16, ptr %37, align 2, !dbg !1197, !tbaa !1011
  %39 = and i16 %38, 8192, !dbg !1197
  %40 = icmp eq i16 %39, 0, !dbg !1200
  br i1 %40, label %41, label %31, !dbg !1200, !llvm.loop !1211

41:                                               ; preds = %31, %16
  %42 = phi ptr [ %19, %16 ], [ %33, %31 ], !dbg !1197
  %43 = phi i8 [ %20, %16 ], [ %35, %31 ], !dbg !1197
  switch i8 %43, label %50 [
    i8 60, label %47
    i8 62, label %44
    i8 47, label %45
    i8 37, label %46
  ], !dbg !1212

44:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1130, metadata !DIExpression()), !dbg !1188
  br label %47, !dbg !1213

45:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 4, metadata !1130, metadata !DIExpression()), !dbg !1188
  br label %47, !dbg !1215

46:                                               ; preds = %41
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1130, metadata !DIExpression()), !dbg !1188
  br label %47, !dbg !1216

47:                                               ; preds = %41, %44, %45, %46
  %48 = phi i32 [ 5, %46 ], [ 4, %45 ], [ 2, %44 ], [ 3, %41 ]
  %49 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !1217
  store ptr %49, ptr @optarg, align 8, !dbg !1217, !tbaa !899
  br label %50, !dbg !1218

50:                                               ; preds = %47, %41
  %51 = phi ptr [ %42, %41 ], [ %49, %47 ], !dbg !1218
  %52 = phi i32 [ %11, %41 ], [ %48, %47 ], !dbg !1188
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1130, metadata !DIExpression()), !dbg !1188
  %53 = load ptr, ptr %17, align 8, !dbg !1218, !tbaa !899
  %54 = load i8, ptr %51, align 1, !dbg !1218, !tbaa !979
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i16, ptr %53, i64 %55, !dbg !1218
  %57 = load i16, ptr %56, align 2, !dbg !1218, !tbaa !1011
  %58 = and i16 %57, 8192, !dbg !1218
  %59 = icmp eq i16 %58, 0, !dbg !1219
  br i1 %59, label %70, label %60, !dbg !1219

60:                                               ; preds = %50, %60
  %61 = phi ptr [ %62, %60 ], [ %51, %50 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1220
  store ptr %62, ptr @optarg, align 8, !dbg !1220, !tbaa !899
  %63 = load ptr, ptr %17, align 8, !dbg !1218, !tbaa !899
  %64 = load i8, ptr %62, align 1, !dbg !1218, !tbaa !979
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i16, ptr %63, i64 %65, !dbg !1218
  %67 = load i16, ptr %66, align 2, !dbg !1218, !tbaa !1011
  %68 = and i16 %67, 8192, !dbg !1218
  %69 = icmp eq i16 %68, 0, !dbg !1219
  br i1 %69, label %70, label %60, !dbg !1219, !llvm.loop !1221

70:                                               ; preds = %60, %50
  %71 = phi ptr [ %51, %50 ], [ %62, %60 ], !dbg !1218
  %72 = phi i8 [ %54, %50 ], [ %64, %60 ], !dbg !1218
  switch i8 %72, label %77 [
    i8 43, label %73
    i8 45, label %73
  ], !dbg !1222

73:                                               ; preds = %70, %70
  %74 = icmp eq i32 %52, 0, !dbg !1224
  br i1 %74, label %77, label %75, !dbg !1227

75:                                               ; preds = %73
  %76 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1228
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %76) #38, !dbg !1228
  tail call void @usage(i32 noundef 1) #42, !dbg !1230
  unreachable, !dbg !1230

77:                                               ; preds = %73, %70
  %78 = phi i32 [ %52, %70 ], [ 1, %73 ], !dbg !1188
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1130, metadata !DIExpression()), !dbg !1188
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1231
  %80 = tail call i64 @xdectoimax(ptr noundef nonnull %71, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noundef nonnull @.str.16, ptr noundef %79, i32 noundef 0) #38, !dbg !1232
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !1128, metadata !DIExpression()), !dbg !1188
  %81 = and i32 %78, -2, !dbg !1233
  %82 = icmp eq i32 %81, 4, !dbg !1233
  %83 = icmp eq i64 %80, 0
  %84 = select i1 %82, i1 %83, i1 false, !dbg !1233
  br i1 %84, label %85, label %10, !dbg !1233, !llvm.loop !1208

85:                                               ; preds = %77
  %86 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1235
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %86) #38, !dbg !1235
  unreachable, !dbg !1235

87:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #42, !dbg !1236
  unreachable, !dbg !1236

88:                                               ; preds = %14
  %89 = load ptr, ptr @stdout, align 8, !dbg !1237, !tbaa !899
  %90 = load ptr, ptr @Version, align 8, !dbg !1237, !tbaa !899
  %91 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #38, !dbg !1237
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %89, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, ptr noundef %90, ptr noundef %91, ptr noundef null) #38, !dbg !1237
  tail call void @exit(i32 noundef 0) #40, !dbg !1237
  unreachable, !dbg !1237

92:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #42, !dbg !1238
  unreachable, !dbg !1238

93:                                               ; preds = %14
  %94 = load i32, ptr @optind, align 4, !dbg !1239, !tbaa !970
  %95 = sext i32 %94 to i64, !dbg !1240
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95, !dbg !1240
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1126, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %94), metadata !1125, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1188
  %97 = load ptr, ptr @ref_file, align 8, !dbg !1241, !tbaa !899
  %98 = icmp eq ptr %97, null, !dbg !1241
  %99 = and i1 %98, %13, !dbg !1243
  br i1 %99, label %100, label %104, !dbg !1243

100:                                              ; preds = %93
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !1244
  %102 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #38, !dbg !1244
  %103 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #38, !dbg !1244
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102, ptr noundef %103) #38, !dbg !1244
  tail call void @usage(i32 noundef 1) #42, !dbg !1246
  unreachable, !dbg !1246

104:                                              ; preds = %93
  %105 = icmp ne i32 %11, 0
  %106 = or i1 %98, %13, !dbg !1247
  %107 = select i1 %106, i1 true, i1 %105, !dbg !1247
  br i1 %107, label %112, label %108, !dbg !1247

108:                                              ; preds = %104
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #38, !dbg !1249
  %110 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.23) #38, !dbg !1249
  %111 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.24) #38, !dbg !1249
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %109, ptr noundef %110, ptr noundef %111) #38, !dbg !1249
  tail call void @usage(i32 noundef 1) #42, !dbg !1251
  unreachable, !dbg !1251

112:                                              ; preds = %104
  %113 = load i1, ptr @block_mode, align 1, !dbg !1252
  %114 = and i1 %113, %13, !dbg !1254
  br i1 %114, label %115, label %119, !dbg !1254

115:                                              ; preds = %112
  %116 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #38, !dbg !1255
  %117 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.27) #38, !dbg !1255
  %118 = tail call ptr @quote_n(i32 noundef 1, ptr noundef nonnull @.str.23) #38, !dbg !1255
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %116, ptr noundef %117, ptr noundef %118) #38, !dbg !1255
  tail call void @usage(i32 noundef 1) #42, !dbg !1257
  unreachable, !dbg !1257

119:                                              ; preds = %112
  %120 = icmp slt i32 %94, %0, !dbg !1258
  br i1 %120, label %123, label %121, !dbg !1260

121:                                              ; preds = %119
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #38, !dbg !1261
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %122) #38, !dbg !1261
  tail call void @usage(i32 noundef 1) #42, !dbg !1263
  unreachable, !dbg !1263

123:                                              ; preds = %119
  br i1 %98, label %163, label %124, !dbg !1264

124:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #38, !dbg !1265
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1170, metadata !DIExpression()), !dbg !1187
  %125 = call i32 @stat(ptr noundef nonnull %97, ptr noundef nonnull %4) #38, !dbg !1266
  %126 = icmp eq i32 %125, 0, !dbg !1268
  br i1 %126, label %133, label %127, !dbg !1269

127:                                              ; preds = %124
  %128 = tail call ptr @__errno_location() #41, !dbg !1270
  %129 = load i32, ptr %128, align 4, !dbg !1270, !tbaa !970
  %130 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #38, !dbg !1270
  %131 = load ptr, ptr @ref_file, align 8, !dbg !1270, !tbaa !899
  %132 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %131) #38, !dbg !1270
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %129, ptr noundef %130, ptr noundef %132) #38, !dbg !1270
  unreachable, !dbg !1270

133:                                              ; preds = %124
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1271, metadata !DIExpression()), !dbg !1278
  %134 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3, !dbg !1280
  %135 = load i32, ptr %134, align 8, !dbg !1280, !tbaa !1281
  %136 = and i32 %135, 53248, !dbg !1285
  %137 = icmp eq i32 %136, 32768, !dbg !1285
  br i1 %137, label %149, label %138, !dbg !1286

138:                                              ; preds = %133
  %139 = load ptr, ptr @ref_file, align 8, !dbg !1287, !tbaa !899
  %140 = tail call i32 (ptr, i32, ...) @open(ptr noundef %139, i32 noundef 0) #38, !dbg !1288
  tail call void @llvm.dbg.value(metadata i32 %140, metadata !1171, metadata !DIExpression()), !dbg !1289
  %141 = icmp sgt i32 %140, -1, !dbg !1290
  br i1 %141, label %142, label %153, !dbg !1291

142:                                              ; preds = %138
  %143 = tail call i64 @lseek(i32 noundef %140, i64 noundef 0, i32 noundef 2) #38, !dbg !1292
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !1174, metadata !DIExpression()), !dbg !1293
  %144 = tail call ptr @__errno_location() #41, !dbg !1294
  %145 = load i32, ptr %144, align 4, !dbg !1294, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !1177, metadata !DIExpression()), !dbg !1293
  %146 = tail call i32 @close(i32 noundef %140) #38, !dbg !1295
  %147 = icmp sgt i64 %143, -1, !dbg !1296
  br i1 %147, label %159, label %148, !dbg !1298

148:                                              ; preds = %142
  store i32 %145, ptr %144, align 4, !dbg !1299, !tbaa !970
  br label %153

149:                                              ; preds = %133
  %150 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8, !dbg !1301
  %151 = load i64, ptr %150, align 8, !dbg !1301, !tbaa !1302
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !1170, metadata !DIExpression()), !dbg !1187
  %152 = icmp slt i64 %151, 0, !dbg !1303
  br i1 %152, label %153, label %159, !dbg !1305

153:                                              ; preds = %148, %138, %149
  %154 = tail call ptr @__errno_location() #41, !dbg !1306
  %155 = load i32, ptr %154, align 4, !dbg !1306, !tbaa !970
  %156 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #38, !dbg !1306
  %157 = load ptr, ptr @ref_file, align 8, !dbg !1306, !tbaa !899
  %158 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %157) #38, !dbg !1306
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %155, ptr noundef %156, ptr noundef %158) #38, !dbg !1306
  unreachable, !dbg !1306

159:                                              ; preds = %142, %149
  %160 = phi i64 [ %151, %149 ], [ %143, %142 ]
  %161 = select i1 %13, i64 -1, i64 %160
  %162 = select i1 %13, i64 %160, i64 %12
  tail call void @llvm.dbg.value(metadata i64 %162, metadata !1128, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1129, metadata !DIExpression()), !dbg !1188
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38, !dbg !1307
  br label %163, !dbg !1308

163:                                              ; preds = %159, %123
  %164 = phi i64 [ %161, %159 ], [ -1, %123 ], !dbg !1188
  %165 = phi i64 [ %162, %159 ], [ %12, %123 ]
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1128, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !1129, metadata !DIExpression()), !dbg !1188
  %166 = load i1, ptr @no_create, align 1, !dbg !1309
  %167 = select i1 %166, i32 2049, i32 2113, !dbg !1310
  tail call void @llvm.dbg.value(metadata i32 %167, metadata !1178, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1179, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata ptr %96, metadata !1126, metadata !DIExpression()), !dbg !1188
  %168 = load ptr, ptr %96, align 8, !dbg !1311, !tbaa !899
  tail call void @llvm.dbg.value(metadata ptr %168, metadata !1180, metadata !DIExpression()), !dbg !1312
  %169 = icmp eq ptr %168, null, !dbg !1313
  br i1 %169, label %181, label %170, !dbg !1313

170:                                              ; preds = %163
  %171 = icmp slt i64 %164, 0
  %172 = and i1 %105, %171
  %173 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 9
  %174 = icmp eq i32 %11, 0
  %175 = icmp sgt i64 %164, -1
  %176 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %177 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 8
  br label %183, !dbg !1313

178:                                              ; preds = %286
  %179 = and i8 %287, 1, !dbg !1314
  %180 = zext nneg i8 %179 to i32, !dbg !1314
  br label %181, !dbg !1314

181:                                              ; preds = %178, %163
  %182 = phi i32 [ 0, %163 ], [ %180, %178 ], !dbg !1315
  ret i32 %182, !dbg !1316

183:                                              ; preds = %170, %286
  %184 = phi ptr [ %168, %170 ], [ %289, %286 ]
  %185 = phi ptr [ %96, %170 ], [ %288, %286 ]
  %186 = phi i8 [ 0, %170 ], [ %287, %286 ]
  tail call void @llvm.dbg.value(metadata ptr %185, metadata !1126, metadata !DIExpression()), !dbg !1188
  tail call void @llvm.dbg.value(metadata i8 %186, metadata !1179, metadata !DIExpression()), !dbg !1188
  %187 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %184, i32 noundef %167, i32 noundef 438) #38, !dbg !1317
  tail call void @llvm.dbg.value(metadata i32 %187, metadata !1182, metadata !DIExpression()), !dbg !1318
  %188 = icmp slt i32 %187, 0, !dbg !1319
  br i1 %188, label %189, label %195, !dbg !1321

189:                                              ; preds = %183
  %190 = load i1, ptr @no_create, align 1, !dbg !1322
  %191 = tail call ptr @__errno_location() #41, !dbg !1325
  br i1 %190, label %192, label %280, !dbg !1326

192:                                              ; preds = %189
  %193 = load i32, ptr %191, align 4, !dbg !1327, !tbaa !970
  %194 = icmp eq i32 %193, 2, !dbg !1328
  br i1 %194, label %286, label %280, !dbg !1329

195:                                              ; preds = %183
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1330, metadata !DIExpression(), metadata !1185, metadata ptr %3, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %187, metadata !1335, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %184, metadata !1336, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %165, metadata !1337, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %164, metadata !1338, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %11, metadata !1339, metadata !DIExpression()), !dbg !1355
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #38, !dbg !1358
  %196 = load i1, ptr @block_mode, align 1, !dbg !1359
  %197 = select i1 %196, i1 true, i1 %172, !dbg !1361
  br i1 %197, label %198, label %219, !dbg !1361

198:                                              ; preds = %195
  %199 = call i32 @fstat(i32 noundef %187, ptr noundef nonnull %3) #38, !dbg !1362
  %200 = icmp eq i32 %199, 0, !dbg !1363
  br i1 %200, label %206, label %201, !dbg !1364

201:                                              ; preds = %198
  %202 = tail call ptr @__errno_location() #41, !dbg !1365
  %203 = load i32, ptr %202, align 4, !dbg !1365, !tbaa !970
  %204 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef 5) #38, !dbg !1365
  %205 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1365
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %203, ptr noundef %204, ptr noundef %205) #38, !dbg !1365
  br label %272, !dbg !1367

206:                                              ; preds = %198
  %207 = load i1, ptr @block_mode, align 1, !dbg !1368
  br i1 %207, label %208, label %219, !dbg !1369

208:                                              ; preds = %206
  %209 = load i64, ptr %173, align 8, !dbg !1370
  %210 = add i64 %209, -1, !dbg !1370
  %211 = icmp ult i64 %210, 2305843009213693952, !dbg !1370
  %212 = select i1 %211, i64 %209, i64 512, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %212, metadata !1341, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %165, metadata !1344, metadata !DIExpression()), !dbg !1371
  %213 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %165, i64 %212), !dbg !1372
  %214 = extractvalue { i64, i1 } %213, 1, !dbg !1372
  %215 = extractvalue { i64, i1 } %213, 0, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %215, metadata !1337, metadata !DIExpression()), !dbg !1355
  br i1 %214, label %216, label %219, !dbg !1374

216:                                              ; preds = %208
  %217 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #38, !dbg !1375
  %218 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1375
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %217, i64 noundef %165, i64 noundef %212, ptr noundef %218) #38, !dbg !1375
  br label %272

219:                                              ; preds = %195, %208, %206
  %220 = phi i64 [ %165, %206 ], [ %215, %208 ], [ %165, %195 ]
  call void @llvm.dbg.value(metadata i64 %220, metadata !1337, metadata !DIExpression()), !dbg !1355
  br i1 %174, label %262, label %221, !dbg !1377

221:                                              ; preds = %219
  br i1 %175, label %240, label %222, !dbg !1378

222:                                              ; preds = %221
  call void @llvm.dbg.value(metadata ptr %3, metadata !1271, metadata !DIExpression()), !dbg !1379
  %223 = load i32, ptr %176, align 8, !dbg !1384, !tbaa !1281
  %224 = and i32 %223, 53248, !dbg !1385
  %225 = icmp eq i32 %224, 32768, !dbg !1385
  br i1 %225, label %226, label %232, !dbg !1386

226:                                              ; preds = %222
  %227 = load i64, ptr %177, align 8, !dbg !1387, !tbaa !1302
  call void @llvm.dbg.value(metadata i64 %227, metadata !1345, metadata !DIExpression()), !dbg !1389
  %228 = icmp slt i64 %227, 0, !dbg !1390
  br i1 %228, label %229, label %240, !dbg !1392

229:                                              ; preds = %226
  %230 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 5) #38, !dbg !1393
  %231 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1393
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %230, ptr noundef %231) #38, !dbg !1393
  br label %272, !dbg !1395

232:                                              ; preds = %222
  %233 = tail call i64 @lseek(i32 noundef %187, i64 noundef 0, i32 noundef 2) #38, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %233, metadata !1345, metadata !DIExpression()), !dbg !1389
  %234 = icmp slt i64 %233, 0, !dbg !1398
  br i1 %234, label %235, label %240, !dbg !1400

235:                                              ; preds = %232
  %236 = tail call ptr @__errno_location() #41, !dbg !1401
  %237 = load i32, ptr %236, align 4, !dbg !1401, !tbaa !970
  %238 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #38, !dbg !1401
  %239 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1401
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %237, ptr noundef %238, ptr noundef %239) #38, !dbg !1401
  br label %272, !dbg !1403

240:                                              ; preds = %232, %226, %221
  %241 = phi i64 [ %227, %226 ], [ %233, %232 ], [ %164, %221 ], !dbg !1404
  call void @llvm.dbg.value(metadata i64 %241, metadata !1345, metadata !DIExpression()), !dbg !1389
  switch i32 %11, label %254 [
    i32 2, label %242
    i32 3, label %244
    i32 4, label %246
    i32 5, label %249
  ], !dbg !1405

242:                                              ; preds = %240
  %243 = tail call i64 @llvm.smax.i64(i64 %241, i64 %220), !dbg !1406
  call void @llvm.dbg.value(metadata i64 %243, metadata !1340, metadata !DIExpression()), !dbg !1355
  br label %262, !dbg !1407

244:                                              ; preds = %240
  %245 = tail call i64 @llvm.smin.i64(i64 %241, i64 %220), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %245, metadata !1340, metadata !DIExpression()), !dbg !1355
  br label %262, !dbg !1409

246:                                              ; preds = %240
  %247 = srem i64 %241, %220, !dbg !1410
  %248 = sub nsw i64 %241, %247, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %248, metadata !1340, metadata !DIExpression()), !dbg !1355
  br label %262, !dbg !1412

249:                                              ; preds = %240
  %250 = srem i64 %241, %220, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %250, metadata !1348, metadata !DIExpression()), !dbg !1414
  %251 = icmp eq i64 %250, 0, !dbg !1415
  %252 = sub nsw i64 %220, %250, !dbg !1416
  %253 = select i1 %251, i64 0, i64 %252, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %253, metadata !1337, metadata !DIExpression()), !dbg !1355
  br label %254, !dbg !1417

254:                                              ; preds = %249, %240
  %255 = phi i64 [ %253, %249 ], [ %220, %240 ], !dbg !1355
  call void @llvm.dbg.value(metadata i64 %255, metadata !1337, metadata !DIExpression()), !dbg !1355
  %256 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %241, i64 %255), !dbg !1418
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !1418
  %258 = extractvalue { i64, i1 } %256, 0, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %258, metadata !1340, metadata !DIExpression()), !dbg !1355
  br i1 %257, label %259, label %262, !dbg !1420

259:                                              ; preds = %254
  %260 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #38, !dbg !1421
  %261 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1421
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %260, ptr noundef %261) #38, !dbg !1421
  br label %272, !dbg !1423

262:                                              ; preds = %254, %246, %244, %242, %219
  %263 = phi i64 [ %220, %219 ], [ %258, %254 ], [ %248, %246 ], [ %245, %244 ], [ %243, %242 ], !dbg !1424
  call void @llvm.dbg.value(metadata i64 %263, metadata !1340, metadata !DIExpression()), !dbg !1355
  %264 = tail call i64 @llvm.smax.i64(i64 %263, i64 0), !dbg !1425
  call void @llvm.dbg.value(metadata i64 %264, metadata !1340, metadata !DIExpression()), !dbg !1355
  %265 = tail call i32 @ftruncate(i32 noundef %187, i64 noundef %264) #38, !dbg !1426
  %266 = icmp eq i32 %265, 0, !dbg !1428
  br i1 %266, label %272, label %267, !dbg !1429

267:                                              ; preds = %262
  %268 = tail call ptr @__errno_location() #41, !dbg !1430
  %269 = load i32, ptr %268, align 4, !dbg !1430, !tbaa !970
  %270 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #38, !dbg !1430
  %271 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1430
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %269, ptr noundef %270, ptr noundef %271, i64 noundef %264) #38, !dbg !1430
  br label %272, !dbg !1432

272:                                              ; preds = %201, %216, %229, %235, %259, %262, %267
  %273 = phi i8 [ 1, %201 ], [ 1, %267 ], [ 1, %216 ], [ 0, %262 ], [ 1, %259 ], [ 1, %235 ], [ 1, %229 ], !dbg !1355
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #38, !dbg !1433
  %274 = and i8 %186, 1, !dbg !1434
  %275 = or i8 %273, %274, !dbg !1434
  tail call void @llvm.dbg.value(metadata i8 %275, metadata !1179, metadata !DIExpression()), !dbg !1188
  %276 = tail call i32 @close(i32 noundef %187) #38, !dbg !1435
  %277 = icmp eq i32 %276, 0, !dbg !1437
  br i1 %277, label %286, label %278, !dbg !1438

278:                                              ; preds = %272
  %279 = tail call ptr @__errno_location() #41, !dbg !1439
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1179, metadata !DIExpression()), !dbg !1188
  br label %280, !dbg !1441

280:                                              ; preds = %192, %189, %278
  %281 = phi ptr [ %279, %278 ], [ %191, %192 ], [ %191, %189 ]
  %282 = phi ptr [ @.str.32, %278 ], [ @.str.31, %192 ], [ @.str.31, %189 ]
  %283 = load i32, ptr %281, align 4, !dbg !1442, !tbaa !970
  %284 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %282, i32 noundef 5) #38, !dbg !1442
  %285 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %184) #38, !dbg !1442
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %283, ptr noundef %284, ptr noundef %285) #38, !dbg !1442
  br label %286, !dbg !1443

286:                                              ; preds = %280, %272, %192
  %287 = phi i8 [ %186, %192 ], [ %275, %272 ], [ 1, %280 ], !dbg !1188
  tail call void @llvm.dbg.value(metadata i8 %287, metadata !1179, metadata !DIExpression()), !dbg !1188
  %288 = getelementptr inbounds ptr, ptr %185, i64 1, !dbg !1443
  tail call void @llvm.dbg.value(metadata ptr %288, metadata !1126, metadata !DIExpression()), !dbg !1188
  %289 = load ptr, ptr %288, align 8, !dbg !1311, !tbaa !899
  tail call void @llvm.dbg.value(metadata ptr %289, metadata !1180, metadata !DIExpression()), !dbg !1312
  %290 = icmp eq ptr %289, null, !dbg !1313
  br i1 %290, label %178, label %183, !dbg !1313, !llvm.loop !1444
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1446 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1449 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1450 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1453 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1459 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1465 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree
declare !dbg !1469 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare !dbg !1473 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1477 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1480 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !1483 i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #13 !dbg !1486 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1489
  store ptr %0, ptr @file_name, align 8, !dbg !1490, !tbaa !899
  ret void, !dbg !1491
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #13 !dbg !1492 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1496, metadata !DIExpression()), !dbg !1497
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1498, !tbaa !1499
  ret void, !dbg !1501
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1502 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1507, !tbaa !899
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1508
  %3 = icmp eq i32 %2, 0, !dbg !1509
  br i1 %3, label %22, label %4, !dbg !1510

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1511, !tbaa !1499, !range !1512, !noundef !938
  %6 = icmp eq i8 %5, 0, !dbg !1511
  br i1 %6, label %11, label %7, !dbg !1513

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1514
  %9 = load i32, ptr %8, align 4, !dbg !1514, !tbaa !970
  %10 = icmp eq i32 %9, 32, !dbg !1515
  br i1 %10, label %22, label %11, !dbg !1516

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1.42, i32 noundef 5) #38, !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1504, metadata !DIExpression()), !dbg !1518
  %13 = load ptr, ptr @file_name, align 8, !dbg !1519, !tbaa !899
  %14 = icmp eq ptr %13, null, !dbg !1519
  %15 = tail call ptr @__errno_location() #41, !dbg !1521
  %16 = load i32, ptr %15, align 4, !dbg !1521, !tbaa !970
  br i1 %14, label %19, label %17, !dbg !1522

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1523
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.43, ptr noundef %18, ptr noundef %12) #38, !dbg !1523
  br label %20, !dbg !1523

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.44, ptr noundef %12) #38, !dbg !1524
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1525, !tbaa !970
  tail call void @_exit(i32 noundef %21) #40, !dbg !1526
  unreachable, !dbg !1526

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1527, !tbaa !899
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1529
  %25 = icmp eq i32 %24, 0, !dbg !1530
  br i1 %25, label %28, label %26, !dbg !1531

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1532, !tbaa !970
  tail call void @_exit(i32 noundef %27) #40, !dbg !1533
  unreachable, !dbg !1533

28:                                               ; preds = %22
  ret void, !dbg !1534
}

; Function Attrs: noreturn
declare !dbg !1535 void @_exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 !dbg !1536 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1540, metadata !DIExpression()), !dbg !1544
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1541, metadata !DIExpression()), !dbg !1544
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1542, metadata !DIExpression()), !dbg !1544
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1543, metadata !DIExpression()), !dbg !1544
  tail call fastcc void @flush_stdout(), !dbg !1545
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1546, !tbaa !899
  %6 = icmp eq ptr %5, null, !dbg !1546
  br i1 %6, label %8, label %7, !dbg !1548

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1549
  br label %12, !dbg !1549

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1550, !tbaa !899
  %10 = tail call ptr @getprogname() #39, !dbg !1550
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %10) #38, !dbg !1550
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1552
  ret void, !dbg !1553
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1554 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1556, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i32 1, metadata !1558, metadata !DIExpression()), !dbg !1561
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1564
  %2 = icmp slt i32 %1, 0, !dbg !1565
  br i1 %2, label %6, label %3, !dbg !1566

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1567, !tbaa !899
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1567
  br label %6, !dbg !1567

6:                                                ; preds = %3, %0
  ret void, !dbg !1568
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1569 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1575
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1571, metadata !DIExpression()), !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1572, metadata !DIExpression()), !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1573, metadata !DIExpression()), !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1574, metadata !DIExpression()), !dbg !1576
  %6 = load ptr, ptr @stderr, align 8, !dbg !1577, !tbaa !899
  call void @llvm.dbg.value(metadata ptr %6, metadata !1578, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata ptr %2, metadata !1618, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata ptr %3, metadata !1619, metadata !DIExpression()), !dbg !1620
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1622
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1623, !tbaa !970
  %9 = add i32 %8, 1, !dbg !1623
  store i32 %9, ptr @error_message_count, align 4, !dbg !1623, !tbaa !970
  %10 = icmp eq i32 %1, 0, !dbg !1624
  br i1 %10, label %20, label %11, !dbg !1626

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1627, metadata !DIExpression(), metadata !1575, metadata ptr %5, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i32 %1, metadata !1630, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1637
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %12, metadata !1631, metadata !DIExpression()), !dbg !1635
  %13 = icmp eq ptr %12, null, !dbg !1639
  br i1 %13, label %14, label %16, !dbg !1641

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.46, ptr noundef nonnull @.str.5.47, i32 noundef 5) #38, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %15, metadata !1631, metadata !DIExpression()), !dbg !1635
  br label %16, !dbg !1643

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1635
  call void @llvm.dbg.value(metadata ptr %17, metadata !1631, metadata !DIExpression()), !dbg !1635
  %18 = load ptr, ptr @stderr, align 8, !dbg !1644, !tbaa !899
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.48, ptr noundef %17) #38, !dbg !1644
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1645
  br label %20, !dbg !1646

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1647, !tbaa !899
  call void @llvm.dbg.value(metadata i32 10, metadata !1648, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %21, metadata !1654, metadata !DIExpression()), !dbg !1655
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1657
  %23 = load ptr, ptr %22, align 8, !dbg !1657, !tbaa !1658
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1657
  %25 = load ptr, ptr %24, align 8, !dbg !1657, !tbaa !1660
  %26 = icmp ult ptr %23, %25, !dbg !1657
  br i1 %26, label %29, label %27, !dbg !1657, !prof !1661

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1657
  br label %31, !dbg !1657

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1657
  store ptr %30, ptr %22, align 8, !dbg !1657, !tbaa !1658
  store i8 10, ptr %23, align 1, !dbg !1657, !tbaa !979
  br label %31, !dbg !1657

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1662, !tbaa !899
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1662
  %34 = icmp eq i32 %0, 0, !dbg !1663
  br i1 %34, label %36, label %35, !dbg !1665

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1666
  unreachable, !dbg !1666

36:                                               ; preds = %31
  ret void, !dbg !1667
}

declare !dbg !1668 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1671 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1674 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1677 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1680 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1683 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1690, metadata !DIExpression(), metadata !1696, metadata ptr %4, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1687, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1697
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1689, metadata !DIExpression()), !dbg !1697
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1698
  call void @llvm.va_start(ptr nonnull %4), !dbg !1699
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !1700
  call void @llvm.va_end(ptr nonnull %4), !dbg !1701
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1702
  ret void, !dbg !1702
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #15 !dbg !487 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !498, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !499, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !501, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !502, metadata !DIExpression()), !dbg !1703
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !503, metadata !DIExpression()), !dbg !1703
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1704, !tbaa !970
  %8 = icmp eq i32 %7, 0, !dbg !1704
  br i1 %8, label %23, label %9, !dbg !1706

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1707, !tbaa !970
  %11 = icmp eq i32 %10, %3, !dbg !1710
  br i1 %11, label %12, label %22, !dbg !1711

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1712, !tbaa !899
  %14 = icmp eq ptr %13, %2, !dbg !1713
  br i1 %14, label %36, label %15, !dbg !1714

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1715
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1716
  br i1 %18, label %19, label %22, !dbg !1716

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1717
  %21 = icmp eq i32 %20, 0, !dbg !1718
  br i1 %21, label %36, label %22, !dbg !1719

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1720, !tbaa !899
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1721, !tbaa !970
  br label %23, !dbg !1722

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1723
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1724, !tbaa !899
  %25 = icmp eq ptr %24, null, !dbg !1724
  br i1 %25, label %27, label %26, !dbg !1726

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1727
  br label %31, !dbg !1727

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1728, !tbaa !899
  %29 = tail call ptr @getprogname() #39, !dbg !1728
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.51, ptr noundef %29) #38, !dbg !1728
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1730, !tbaa !899
  %33 = icmp eq ptr %2, null, !dbg !1730
  %34 = select i1 %33, ptr @.str.3.52, ptr @.str.2.53, !dbg !1730
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1730
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1731
  br label %36, !dbg !1732

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1732
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1733 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1743
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1742, metadata !DIExpression(), metadata !1743, metadata ptr %6, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1737, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1738, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1739, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1740, metadata !DIExpression()), !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1745
  call void @llvm.va_start(ptr nonnull %6), !dbg !1746
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !1747
  call void @llvm.va_end(ptr nonnull %6), !dbg !1748
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1749
  ret void, !dbg !1749
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1750 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1753, !tbaa !899
  ret ptr %1, !dbg !1754
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1755 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1757, metadata !DIExpression()), !dbg !1760
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1761
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1758, metadata !DIExpression()), !dbg !1760
  %3 = icmp eq ptr %2, null, !dbg !1762
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1762
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1762
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1759, metadata !DIExpression()), !dbg !1760
  %6 = ptrtoint ptr %5 to i64, !dbg !1763
  %7 = ptrtoint ptr %0 to i64, !dbg !1763
  %8 = sub i64 %6, %7, !dbg !1763
  %9 = icmp sgt i64 %8, 6, !dbg !1765
  br i1 %9, label %10, label %19, !dbg !1766

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %11, metadata !1768, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 7, metadata !1774, metadata !DIExpression()), !dbg !1775
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.62, i64 7), !dbg !1777
  %13 = icmp eq i32 %12, 0, !dbg !1778
  br i1 %13, label %14, label %19, !dbg !1779

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1757, metadata !DIExpression()), !dbg !1760
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.63, i64 noundef 3) #39, !dbg !1780
  %16 = icmp eq i32 %15, 0, !dbg !1783
  %17 = select i1 %16, i64 3, i64 0, !dbg !1784
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1784
  br label %19, !dbg !1784

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1760
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1759, metadata !DIExpression()), !dbg !1760
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1757, metadata !DIExpression()), !dbg !1760
  store ptr %20, ptr @program_name, align 8, !dbg !1785, !tbaa !899
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1786, !tbaa !899
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1787, !tbaa !899
  ret void, !dbg !1788
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1789 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !537 {
  %3 = alloca i32, align 4, !DIAssignID !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !547, metadata !DIExpression(), metadata !1790, metadata ptr %3, metadata !DIExpression()), !dbg !1791
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !552, metadata !DIExpression(), metadata !1792, metadata ptr %4, metadata !DIExpression()), !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !544, metadata !DIExpression()), !dbg !1791
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !545, metadata !DIExpression()), !dbg !1791
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1793
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !546, metadata !DIExpression()), !dbg !1791
  %6 = icmp eq ptr %5, %0, !dbg !1794
  br i1 %6, label %7, label %14, !dbg !1796

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1797
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1798
  call void @llvm.dbg.value(metadata ptr %4, metadata !1799, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %4, metadata !1808, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i64 8, metadata !1815, metadata !DIExpression()), !dbg !1816
  store i64 0, ptr %4, align 8, !dbg !1818
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1819
  %9 = icmp eq i64 %8, 2, !dbg !1821
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1822
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1823
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1823
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1791
  ret ptr %15, !dbg !1823
}

; Function Attrs: nounwind
declare !dbg !1824 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1830 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1835, metadata !DIExpression()), !dbg !1838
  %2 = tail call ptr @__errno_location() #41, !dbg !1839
  %3 = load i32, ptr %2, align 4, !dbg !1839, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1836, metadata !DIExpression()), !dbg !1838
  %4 = icmp eq ptr %0, null, !dbg !1840
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1840
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #44, !dbg !1841
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1837, metadata !DIExpression()), !dbg !1838
  store i32 %3, ptr %2, align 4, !dbg !1842, !tbaa !970
  ret ptr %6, !dbg !1843
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1844 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1850, metadata !DIExpression()), !dbg !1851
  %2 = icmp eq ptr %0, null, !dbg !1852
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1852
  %4 = load i32, ptr %3, align 8, !dbg !1853, !tbaa !1854
  ret i32 %4, !dbg !1856
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1857 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1861, metadata !DIExpression()), !dbg !1863
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1862, metadata !DIExpression()), !dbg !1863
  %3 = icmp eq ptr %0, null, !dbg !1864
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1864
  store i32 %1, ptr %4, align 8, !dbg !1865, !tbaa !1854
  ret void, !dbg !1866
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1867 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1871, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1873, metadata !DIExpression()), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1874, metadata !DIExpression()), !dbg !1879
  %4 = icmp eq ptr %0, null, !dbg !1880
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1880
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1881
  %7 = lshr i8 %1, 5, !dbg !1882
  %8 = zext nneg i8 %7 to i64, !dbg !1882
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1875, metadata !DIExpression()), !dbg !1879
  %10 = and i8 %1, 31, !dbg !1884
  %11 = zext nneg i8 %10 to i32, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1877, metadata !DIExpression()), !dbg !1879
  %12 = load i32, ptr %9, align 4, !dbg !1885, !tbaa !970
  %13 = lshr i32 %12, %11, !dbg !1886
  %14 = and i32 %13, 1, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1878, metadata !DIExpression()), !dbg !1879
  %15 = xor i32 %13, %2, !dbg !1888
  %16 = and i32 %15, 1, !dbg !1888
  %17 = shl nuw i32 %16, %11, !dbg !1889
  %18 = xor i32 %17, %12, !dbg !1890
  store i32 %18, ptr %9, align 4, !dbg !1890, !tbaa !970
  ret i32 %14, !dbg !1891
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1892 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1896, metadata !DIExpression()), !dbg !1899
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1897, metadata !DIExpression()), !dbg !1899
  %3 = icmp eq ptr %0, null, !dbg !1900
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1902
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1896, metadata !DIExpression()), !dbg !1899
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1903
  %6 = load i32, ptr %5, align 4, !dbg !1903, !tbaa !1904
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1898, metadata !DIExpression()), !dbg !1899
  store i32 %1, ptr %5, align 4, !dbg !1905, !tbaa !1904
  ret i32 %6, !dbg !1906
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1907 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1911, metadata !DIExpression()), !dbg !1914
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !1914
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !1914
  %4 = icmp eq ptr %0, null, !dbg !1915
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1917
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !1914
  store i32 10, ptr %5, align 8, !dbg !1918, !tbaa !1854
  %6 = icmp ne ptr %1, null, !dbg !1919
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1921
  br i1 %8, label %10, label %9, !dbg !1921

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1922
  unreachable, !dbg !1922

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1923
  store ptr %1, ptr %11, align 8, !dbg !1924, !tbaa !1925
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1926
  store ptr %2, ptr %12, align 8, !dbg !1927, !tbaa !1928
  ret void, !dbg !1929
}

; Function Attrs: noreturn nounwind
declare !dbg !1930 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1931 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1936, metadata !DIExpression()), !dbg !1943
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1937, metadata !DIExpression()), !dbg !1943
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1938, metadata !DIExpression()), !dbg !1943
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1939, metadata !DIExpression()), !dbg !1943
  %6 = icmp eq ptr %4, null, !dbg !1944
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1944
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1940, metadata !DIExpression()), !dbg !1943
  %8 = tail call ptr @__errno_location() #41, !dbg !1945
  %9 = load i32, ptr %8, align 4, !dbg !1945, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1941, metadata !DIExpression()), !dbg !1943
  %10 = load i32, ptr %7, align 8, !dbg !1946, !tbaa !1854
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1947
  %12 = load i32, ptr %11, align 4, !dbg !1947, !tbaa !1904
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1948
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1949
  %15 = load ptr, ptr %14, align 8, !dbg !1949, !tbaa !1925
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1950
  %17 = load ptr, ptr %16, align 8, !dbg !1950, !tbaa !1928
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i32 %9, ptr %8, align 4, !dbg !1952, !tbaa !970
  ret i64 %18, !dbg !1953
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1954 {
  %10 = alloca i32, align 4, !DIAssignID !2022
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2023
  %12 = alloca i32, align 4, !DIAssignID !2024
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2025
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2000, metadata !DIExpression(), metadata !2026, metadata ptr %14, metadata !DIExpression()), !dbg !2027
  %15 = alloca i32, align 4, !DIAssignID !2028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2003, metadata !DIExpression(), metadata !2028, metadata ptr %15, metadata !DIExpression()), !dbg !2029
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1960, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1962, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1963, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1964, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1965, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1966, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1967, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1968, metadata !DIExpression()), !dbg !2030
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2031
  %17 = icmp eq i64 %16, 1, !dbg !2032
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1972, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !2030
  %18 = trunc i32 %5 to i8, !dbg !2033
  %19 = lshr i8 %18, 1, !dbg !2033
  %20 = and i8 %19, 1, !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2030
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2034

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2035
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2036
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2037
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2038
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2030
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2039
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2040
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1977, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1974, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1973, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1972, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1963, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1968, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1967, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1964, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.label(metadata !1978), !dbg !2041
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2030
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
  ], !dbg !2042

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1964, metadata !DIExpression()), !dbg !2030
  br label %114, !dbg !2043

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1964, metadata !DIExpression()), !dbg !2030
  %43 = and i8 %37, 1, !dbg !2044
  %44 = icmp eq i8 %43, 0, !dbg !2044
  br i1 %44, label %45, label %114, !dbg !2043

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2046
  br i1 %46, label %114, label %47, !dbg !2049

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2046, !tbaa !979
  br label %114, !dbg !2046

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !641, metadata !DIExpression(), metadata !2024, metadata ptr %12, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !642, metadata !DIExpression(), metadata !2025, metadata ptr %13, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.11.91, metadata !638, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %29, metadata !639, metadata !DIExpression()), !dbg !2050
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.11.91, i32 noundef 5) #38, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %49, metadata !640, metadata !DIExpression()), !dbg !2050
  %50 = icmp eq ptr %49, @.str.11.91, !dbg !2055
  br i1 %50, label %51, label %60, !dbg !2057

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2058
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %13, metadata !2060, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata ptr %13, metadata !2068, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 8, metadata !2072, metadata !DIExpression()), !dbg !2073
  store i64 0, ptr %13, align 8, !dbg !2075
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2076
  %53 = icmp eq i64 %52, 3, !dbg !2078
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2079
  %57 = icmp eq i32 %29, 9, !dbg !2079
  %58 = select i1 %57, ptr @.str.10.93, ptr @.str.12.94, !dbg !2079
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2079
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2080
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2080
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2050
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1967, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.assign(metadata i1 undef, metadata !641, metadata !DIExpression(), metadata !2022, metadata ptr %10, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !642, metadata !DIExpression(), metadata !2023, metadata ptr %11, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr @.str.12.94, metadata !638, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %29, metadata !639, metadata !DIExpression()), !dbg !2081
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.92, ptr noundef nonnull @.str.12.94, i32 noundef 5) #38, !dbg !2083
  call void @llvm.dbg.value(metadata ptr %62, metadata !640, metadata !DIExpression()), !dbg !2081
  %63 = icmp eq ptr %62, @.str.12.94, !dbg !2084
  br i1 %63, label %64, label %73, !dbg !2085

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2086
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2087
  call void @llvm.dbg.value(metadata ptr %11, metadata !2060, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %11, metadata !2068, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 0, metadata !2071, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 8, metadata !2072, metadata !DIExpression()), !dbg !2090
  store i64 0, ptr %11, align 8, !dbg !2092
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2093
  %66 = icmp eq i64 %65, 3, !dbg !2094
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2095
  %70 = icmp eq i32 %29, 9, !dbg !2095
  %71 = select i1 %70, ptr @.str.10.93, ptr @.str.12.94, !dbg !2095
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2095
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2096
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1968, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1967, metadata !DIExpression()), !dbg !2030
  %76 = and i8 %37, 1, !dbg !2097
  %77 = icmp eq i8 %76, 0, !dbg !2097
  br i1 %77, label %78, label %93, !dbg !2098

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1980, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2030
  %79 = load i8, ptr %74, align 1, !dbg !2100, !tbaa !979
  %80 = icmp eq i8 %79, 0, !dbg !2102
  br i1 %80, label %93, label %81, !dbg !2102

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1980, metadata !DIExpression()), !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1970, metadata !DIExpression()), !dbg !2030
  %85 = icmp ult i64 %84, %40, !dbg !2103
  br i1 %85, label %86, label %88, !dbg !2106

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2103
  store i8 %82, ptr %87, align 1, !dbg !2103, !tbaa !979
  br label %88, !dbg !2103

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1970, metadata !DIExpression()), !dbg !2030
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2107
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1980, metadata !DIExpression()), !dbg !2099
  %91 = load i8, ptr %90, align 1, !dbg !2100, !tbaa !979
  %92 = icmp eq i8 %91, 0, !dbg !2102
  br i1 %92, label %93, label %81, !dbg !2102, !llvm.loop !2108

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1972, metadata !DIExpression()), !dbg !2030
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !2111
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1973, metadata !DIExpression()), !dbg !2030
  br label %114, !dbg !2112

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2030
  br label %98, !dbg !2113

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1974, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1975, metadata !DIExpression()), !dbg !2030
  br label %98, !dbg !2114

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2038
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1974, metadata !DIExpression()), !dbg !2030
  %101 = and i8 %100, 1, !dbg !2115
  %102 = icmp eq i8 %101, 0, !dbg !2115
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2117
  br label %104, !dbg !2117

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2030
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2033
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1974, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1964, metadata !DIExpression()), !dbg !2030
  %107 = and i8 %106, 1, !dbg !2118
  %108 = icmp eq i8 %107, 0, !dbg !2118
  br i1 %108, label %109, label %114, !dbg !2120

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2121
  br i1 %110, label %114, label %111, !dbg !2124

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2121, !tbaa !979
  br label %114, !dbg !2121

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2030
  br label %114, !dbg !2125

113:                                              ; preds = %28
  call void @abort() #40, !dbg !2126
  unreachable, !dbg !2126

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2110
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.93, %45 ], [ @.str.10.93, %47 ], [ @.str.10.93, %42 ], [ %34, %28 ], [ @.str.12.94, %109 ], [ @.str.12.94, %111 ], [ @.str.12.94, %104 ], [ @.str.10.93, %41 ], !dbg !2030
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2030
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2030
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1975, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1974, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1973, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1972, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1968, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1967, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1964, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1985, metadata !DIExpression()), !dbg !2127
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
  br label %138, !dbg !2128

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2110
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2035
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2039
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2040
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2129
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2130
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1977, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1963, metadata !DIExpression()), !dbg !2030
  %147 = icmp eq i64 %139, -1, !dbg !2131
  br i1 %147, label %148, label %152, !dbg !2132

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2133
  %150 = load i8, ptr %149, align 1, !dbg !2133, !tbaa !979
  %151 = icmp eq i8 %150, 0, !dbg !2134
  br i1 %151, label %612, label %154, !dbg !2135

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2136
  br i1 %153, label %612, label %154, !dbg !2135

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !2137
  br i1 %128, label %155, label %170, !dbg !2138

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2140
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2141
  br i1 %157, label %158, label %160, !dbg !2141

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2142
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1963, metadata !DIExpression()), !dbg !2030
  br label %160, !dbg !2143

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2143
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1963, metadata !DIExpression()), !dbg !2030
  %162 = icmp ugt i64 %156, %161, !dbg !2144
  br i1 %162, label %170, label %163, !dbg !2145

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2146
  call void @llvm.dbg.value(metadata ptr %164, metadata !2147, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %119, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %120, metadata !2151, metadata !DIExpression()), !dbg !2152
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2154
  %166 = icmp ne i32 %165, 0, !dbg !2155
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2156
  %168 = xor i1 %166, true, !dbg !2156
  %169 = zext i1 %168 to i8, !dbg !2156
  br i1 %167, label %170, label %666, !dbg !2156

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2137
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1963, metadata !DIExpression()), !dbg !2030
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2157
  %175 = load i8, ptr %174, align 1, !dbg !2157, !tbaa !979
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1992, metadata !DIExpression()), !dbg !2137
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
  ], !dbg !2158

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2159

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2160

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2137
  %179 = and i8 %144, 1, !dbg !2164
  %180 = icmp eq i8 %179, 0, !dbg !2164
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2164
  br i1 %181, label %182, label %198, !dbg !2164

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2166
  br i1 %183, label %184, label %186, !dbg !2170

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2166
  store i8 39, ptr %185, align 1, !dbg !2166, !tbaa !979
  br label %186, !dbg !2166

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1970, metadata !DIExpression()), !dbg !2030
  %188 = icmp ult i64 %187, %146, !dbg !2171
  br i1 %188, label %189, label %191, !dbg !2174

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2171
  store i8 36, ptr %190, align 1, !dbg !2171, !tbaa !979
  br label %191, !dbg !2171

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1970, metadata !DIExpression()), !dbg !2030
  %193 = icmp ult i64 %192, %146, !dbg !2175
  br i1 %193, label %194, label %196, !dbg !2178

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2175
  store i8 39, ptr %195, align 1, !dbg !2175, !tbaa !979
  br label %196, !dbg !2175

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2030
  br label %198, !dbg !2179

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2030
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1970, metadata !DIExpression()), !dbg !2030
  %201 = icmp ult i64 %199, %146, !dbg !2180
  br i1 %201, label %202, label %204, !dbg !2183

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2180
  store i8 92, ptr %203, align 1, !dbg !2180, !tbaa !979
  br label %204, !dbg !2180

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1970, metadata !DIExpression()), !dbg !2030
  br i1 %125, label %206, label %476, !dbg !2184

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2186
  %208 = icmp ult i64 %207, %171, !dbg !2187
  br i1 %208, label %209, label %465, !dbg !2188

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2189
  %211 = load i8, ptr %210, align 1, !dbg !2189, !tbaa !979
  %212 = add i8 %211, -48, !dbg !2190
  %213 = icmp ult i8 %212, 10, !dbg !2190
  br i1 %213, label %214, label %465, !dbg !2190

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2191
  br i1 %215, label %216, label %218, !dbg !2195

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2191
  store i8 48, ptr %217, align 1, !dbg !2191, !tbaa !979
  br label %218, !dbg !2191

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1970, metadata !DIExpression()), !dbg !2030
  %220 = icmp ult i64 %219, %146, !dbg !2196
  br i1 %220, label %221, label %223, !dbg !2199

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2196
  store i8 48, ptr %222, align 1, !dbg !2196, !tbaa !979
  br label %223, !dbg !2196

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2199
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1970, metadata !DIExpression()), !dbg !2030
  br label %465, !dbg !2200

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2201

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2202

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2203

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2205

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2207
  %231 = icmp ult i64 %230, %171, !dbg !2208
  br i1 %231, label %232, label %465, !dbg !2209

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2210
  %234 = load i8, ptr %233, align 1, !dbg !2210, !tbaa !979
  %235 = icmp eq i8 %234, 63, !dbg !2211
  br i1 %235, label %236, label %465, !dbg !2212

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2213
  %238 = load i8, ptr %237, align 1, !dbg !2213, !tbaa !979
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
  ], !dbg !2214

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2215

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1985, metadata !DIExpression()), !dbg !2127
  %241 = icmp ult i64 %140, %146, !dbg !2217
  br i1 %241, label %242, label %244, !dbg !2220

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2217
  store i8 63, ptr %243, align 1, !dbg !2217, !tbaa !979
  br label %244, !dbg !2217

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2220
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1970, metadata !DIExpression()), !dbg !2030
  %246 = icmp ult i64 %245, %146, !dbg !2221
  br i1 %246, label %247, label %249, !dbg !2224

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2221
  store i8 34, ptr %248, align 1, !dbg !2221, !tbaa !979
  br label %249, !dbg !2221

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1970, metadata !DIExpression()), !dbg !2030
  %251 = icmp ult i64 %250, %146, !dbg !2225
  br i1 %251, label %252, label %254, !dbg !2228

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2225
  store i8 34, ptr %253, align 1, !dbg !2225, !tbaa !979
  br label %254, !dbg !2225

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2228
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1970, metadata !DIExpression()), !dbg !2030
  %256 = icmp ult i64 %255, %146, !dbg !2229
  br i1 %256, label %257, label %259, !dbg !2232

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2229
  store i8 63, ptr %258, align 1, !dbg !2229, !tbaa !979
  br label %259, !dbg !2229

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2232
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1970, metadata !DIExpression()), !dbg !2030
  br label %465, !dbg !2233

261:                                              ; preds = %170
  br label %272, !dbg !2234

262:                                              ; preds = %170
  br label %272, !dbg !2235

263:                                              ; preds = %170
  br label %270, !dbg !2236

264:                                              ; preds = %170
  br label %270, !dbg !2237

265:                                              ; preds = %170
  br label %272, !dbg !2238

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2239

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2240

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2243

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2245

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2246
  call void @llvm.dbg.label(metadata !1993), !dbg !2247
  br i1 %133, label %272, label %655, !dbg !2248

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2246
  call void @llvm.dbg.label(metadata !1996), !dbg !2250
  br i1 %124, label %520, label %476, !dbg !2251

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2252

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2253, !tbaa !979
  %277 = icmp eq i8 %276, 0, !dbg !2255
  br i1 %277, label %278, label %465, !dbg !2256

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2257
  br i1 %279, label %280, label %465, !dbg !2259

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2137
  br label %281, !dbg !2260

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1991, metadata !DIExpression()), !dbg !2137
  br i1 %133, label %465, label %655, !dbg !2261

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1991, metadata !DIExpression()), !dbg !2137
  br i1 %132, label %284, label %465, !dbg !2263

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2264

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2267
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2269
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2269
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2269
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1971, metadata !DIExpression()), !dbg !2030
  %291 = icmp ult i64 %140, %290, !dbg !2270
  br i1 %291, label %292, label %294, !dbg !2273

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2270
  store i8 39, ptr %293, align 1, !dbg !2270, !tbaa !979
  br label %294, !dbg !2270

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1970, metadata !DIExpression()), !dbg !2030
  %296 = icmp ult i64 %295, %290, !dbg !2274
  br i1 %296, label %297, label %299, !dbg !2277

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2274
  store i8 92, ptr %298, align 1, !dbg !2274, !tbaa !979
  br label %299, !dbg !2274

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2277
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1970, metadata !DIExpression()), !dbg !2030
  %301 = icmp ult i64 %300, %290, !dbg !2278
  br i1 %301, label %302, label %304, !dbg !2281

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2278
  store i8 39, ptr %303, align 1, !dbg !2278, !tbaa !979
  br label %304, !dbg !2278

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2281
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2030
  br label %465, !dbg !2282

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2283

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1997, metadata !DIExpression()), !dbg !2284
  %308 = tail call ptr @__ctype_b_loc() #41, !dbg !2285
  %309 = load ptr, ptr %308, align 8, !dbg !2285, !tbaa !899
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2285
  %312 = load i16, ptr %311, align 2, !dbg !2285, !tbaa !1011
  %313 = and i16 %312, 16384, !dbg !2287
  %314 = icmp ne i16 %313, 0, !dbg !2287
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1999, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2284
  br label %355, !dbg !2288

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %14, metadata !2060, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata ptr %14, metadata !2068, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !2071, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 8, metadata !2072, metadata !DIExpression()), !dbg !2292
  store i64 0, ptr %14, align 8, !dbg !2294
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1999, metadata !DIExpression()), !dbg !2284
  %316 = icmp eq i64 %171, -1, !dbg !2295
  br i1 %316, label %317, label %319, !dbg !2297

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2298
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1963, metadata !DIExpression()), !dbg !2030
  br label %319, !dbg !2299

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1963, metadata !DIExpression()), !dbg !2030
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2300
  %321 = sub i64 %320, %145, !dbg !2301
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !2302
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2007, metadata !DIExpression()), !dbg !2029
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2303

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2284
  %324 = icmp ult i64 %145, %320, !dbg !2304
  br i1 %324, label %326, label %351, !dbg !2306

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2284
  br label %351, !dbg !2307

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1997, metadata !DIExpression()), !dbg !2284
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2309
  %330 = load i8, ptr %329, align 1, !dbg !2309, !tbaa !979
  %331 = icmp eq i8 %330, 0, !dbg !2306
  br i1 %331, label %351, label %332, !dbg !2310

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1997, metadata !DIExpression()), !dbg !2284
  %334 = add i64 %333, %145, !dbg !2312
  %335 = icmp eq i64 %333, %321, !dbg !2304
  br i1 %335, label %351, label %326, !dbg !2306, !llvm.loop !2313

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2008, metadata !DIExpression()), !dbg !2314
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2315
  %339 = and i1 %338, %132, !dbg !2315
  br i1 %339, label %340, label %347, !dbg !2315

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2008, metadata !DIExpression()), !dbg !2314
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2316
  %343 = load i8, ptr %342, align 1, !dbg !2316, !tbaa !979
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2318

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2319
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2008, metadata !DIExpression()), !dbg !2314
  %346 = icmp eq i64 %345, %322, !dbg !2320
  br i1 %346, label %347, label %340, !dbg !2321, !llvm.loop !2322

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2324, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %348, metadata !2326, metadata !DIExpression()), !dbg !2334
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !2336
  %350 = icmp ne i32 %349, 0, !dbg !2337
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1997, metadata !DIExpression()), !dbg !2284
  br label %351, !dbg !2338

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1997, metadata !DIExpression()), !dbg !2284
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2340
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1997, metadata !DIExpression()), !dbg !2284
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2339
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2340
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2137
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2341
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2341
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1999, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1997, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1963, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1991, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2137
  %359 = icmp ult i64 %357, 2, !dbg !2342
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2343
  br i1 %361, label %461, label %362, !dbg !2343

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2016, metadata !DIExpression()), !dbg !2345
  br label %364, !dbg !2346

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2030
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2129
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2127
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2137
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2347
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1970, metadata !DIExpression()), !dbg !2030
  br i1 %360, label %417, label %371, !dbg !2348

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2353

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2137
  %373 = and i8 %366, 1, !dbg !2356
  %374 = icmp eq i8 %373, 0, !dbg !2356
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2356
  br i1 %375, label %376, label %392, !dbg !2356

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2358
  br i1 %377, label %378, label %380, !dbg !2362

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2358
  store i8 39, ptr %379, align 1, !dbg !2358, !tbaa !979
  br label %380, !dbg !2358

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1970, metadata !DIExpression()), !dbg !2030
  %382 = icmp ult i64 %381, %146, !dbg !2363
  br i1 %382, label %383, label %385, !dbg !2366

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2363
  store i8 36, ptr %384, align 1, !dbg !2363, !tbaa !979
  br label %385, !dbg !2363

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2366
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1970, metadata !DIExpression()), !dbg !2030
  %387 = icmp ult i64 %386, %146, !dbg !2367
  br i1 %387, label %388, label %390, !dbg !2370

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2367
  store i8 39, ptr %389, align 1, !dbg !2367, !tbaa !979
  br label %390, !dbg !2367

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2030
  br label %392, !dbg !2371

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2030
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1970, metadata !DIExpression()), !dbg !2030
  %395 = icmp ult i64 %393, %146, !dbg !2372
  br i1 %395, label %396, label %398, !dbg !2375

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2372
  store i8 92, ptr %397, align 1, !dbg !2372, !tbaa !979
  br label %398, !dbg !2372

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1970, metadata !DIExpression()), !dbg !2030
  %400 = icmp ult i64 %399, %146, !dbg !2376
  br i1 %400, label %401, label %405, !dbg !2379

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2376
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2376
  store i8 %403, ptr %404, align 1, !dbg !2376, !tbaa !979
  br label %405, !dbg !2376

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2379
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1970, metadata !DIExpression()), !dbg !2030
  %407 = icmp ult i64 %406, %146, !dbg !2380
  br i1 %407, label %408, label %413, !dbg !2383

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2380
  %411 = or disjoint i8 %410, 48, !dbg !2380
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2380
  store i8 %411, ptr %412, align 1, !dbg !2380, !tbaa !979
  br label %413, !dbg !2380

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2383
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1970, metadata !DIExpression()), !dbg !2030
  %415 = and i8 %370, 7, !dbg !2384
  %416 = or disjoint i8 %415, 48, !dbg !2385
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1992, metadata !DIExpression()), !dbg !2137
  br label %426, !dbg !2386

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2387
  %419 = icmp eq i8 %418, 0, !dbg !2387
  br i1 %419, label %426, label %420, !dbg !2389

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2390
  br i1 %421, label %422, label %424, !dbg !2394

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2390
  store i8 92, ptr %423, align 1, !dbg !2390, !tbaa !979
  br label %424, !dbg !2390

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1987, metadata !DIExpression()), !dbg !2137
  br label %426, !dbg !2395

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2030
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2129
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2137
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2137
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1970, metadata !DIExpression()), !dbg !2030
  %432 = add i64 %367, 1, !dbg !2396
  %433 = icmp ugt i64 %363, %432, !dbg !2398
  br i1 %433, label %434, label %463, !dbg !2399

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2400
  %436 = icmp ne i8 %435, 0, !dbg !2400
  %437 = and i8 %430, 1, !dbg !2400
  %438 = icmp eq i8 %437, 0, !dbg !2400
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2400
  br i1 %439, label %440, label %451, !dbg !2400

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2403
  br i1 %441, label %442, label %444, !dbg !2407

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2403
  store i8 39, ptr %443, align 1, !dbg !2403, !tbaa !979
  br label %444, !dbg !2403

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2407
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1970, metadata !DIExpression()), !dbg !2030
  %446 = icmp ult i64 %445, %146, !dbg !2408
  br i1 %446, label %447, label %449, !dbg !2411

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2408
  store i8 39, ptr %448, align 1, !dbg !2408, !tbaa !979
  br label %449, !dbg !2408

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2411
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2030
  br label %451, !dbg !2412

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2413
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1970, metadata !DIExpression()), !dbg !2030
  %454 = icmp ult i64 %452, %146, !dbg !2414
  br i1 %454, label %455, label %457, !dbg !2417

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2414
  store i8 %431, ptr %456, align 1, !dbg !2414, !tbaa !979
  br label %457, !dbg !2414

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2417
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1985, metadata !DIExpression()), !dbg !2127
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2418
  %460 = load i8, ptr %459, align 1, !dbg !2418, !tbaa !979
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1992, metadata !DIExpression()), !dbg !2137
  br label %364, !dbg !2419, !llvm.loop !2420

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1991, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1963, metadata !DIExpression()), !dbg !2030
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1991, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1963, metadata !DIExpression()), !dbg !2030
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2423
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2030
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2035
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2030
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2030
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2127
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2137
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2137
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2137
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1991, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1987, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1963, metadata !DIExpression()), !dbg !2030
  br i1 %126, label %487, label %476, !dbg !2424

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
  br i1 %137, label %488, label %509, !dbg !2426

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2427

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
  %499 = lshr i8 %490, 5, !dbg !2428
  %500 = zext nneg i8 %499 to i64, !dbg !2428
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2429
  %502 = load i32, ptr %501, align 4, !dbg !2429, !tbaa !970
  %503 = and i8 %490, 31, !dbg !2430
  %504 = zext nneg i8 %503 to i32, !dbg !2430
  %505 = shl nuw i32 1, %504, !dbg !2431
  %506 = and i32 %502, %505, !dbg !2431
  %507 = icmp eq i32 %506, 0, !dbg !2431
  %508 = and i1 %172, %507, !dbg !2432
  br i1 %508, label %558, label %520, !dbg !2432

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
  br i1 %172, label %558, label %520, !dbg !2433

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2423
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2030
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2035
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2039
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2129
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2434
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2137
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2137
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1991, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1963, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.label(metadata !2019), !dbg !2435
  br i1 %131, label %530, label %659, !dbg !2436

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2137
  %531 = and i8 %525, 1, !dbg !2438
  %532 = icmp eq i8 %531, 0, !dbg !2438
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2438
  br i1 %533, label %534, label %550, !dbg !2438

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2440
  br i1 %535, label %536, label %538, !dbg !2444

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2440
  store i8 39, ptr %537, align 1, !dbg !2440, !tbaa !979
  br label %538, !dbg !2440

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1970, metadata !DIExpression()), !dbg !2030
  %540 = icmp ult i64 %539, %529, !dbg !2445
  br i1 %540, label %541, label %543, !dbg !2448

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2445
  store i8 36, ptr %542, align 1, !dbg !2445, !tbaa !979
  br label %543, !dbg !2445

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2448
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1970, metadata !DIExpression()), !dbg !2030
  %545 = icmp ult i64 %544, %529, !dbg !2449
  br i1 %545, label %546, label %548, !dbg !2452

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2449
  store i8 39, ptr %547, align 1, !dbg !2449, !tbaa !979
  br label %548, !dbg !2449

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2452
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2030
  br label %550, !dbg !2453

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2137
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1970, metadata !DIExpression()), !dbg !2030
  %553 = icmp ult i64 %551, %529, !dbg !2454
  br i1 %553, label %554, label %556, !dbg !2457

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2454
  store i8 92, ptr %555, align 1, !dbg !2454, !tbaa !979
  br label %556, !dbg !2454

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2457
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1991, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1963, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.label(metadata !2020), !dbg !2458
  br label %585, !dbg !2459

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2423
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2030
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2035
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2039
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2129
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2434
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2137
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2137
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2462
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1992, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1991, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1990, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1963, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.label(metadata !2020), !dbg !2458
  %569 = and i8 %563, 1, !dbg !2459
  %570 = icmp ne i8 %569, 0, !dbg !2459
  %571 = and i8 %565, 1, !dbg !2459
  %572 = icmp eq i8 %571, 0, !dbg !2459
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2459
  br i1 %573, label %574, label %585, !dbg !2459

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2463
  br i1 %575, label %576, label %578, !dbg !2467

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2463
  store i8 39, ptr %577, align 1, !dbg !2463, !tbaa !979
  br label %578, !dbg !2463

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1970, metadata !DIExpression()), !dbg !2030
  %580 = icmp ult i64 %579, %568, !dbg !2468
  br i1 %580, label %581, label %583, !dbg !2471

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2468
  store i8 39, ptr %582, align 1, !dbg !2468, !tbaa !979
  br label %583, !dbg !2468

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2030
  br label %585, !dbg !2472

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2137
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1970, metadata !DIExpression()), !dbg !2030
  %595 = icmp ult i64 %593, %586, !dbg !2473
  br i1 %595, label %596, label %598, !dbg !2476

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2473
  store i8 %587, ptr %597, align 1, !dbg !2473, !tbaa !979
  br label %598, !dbg !2473

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1970, metadata !DIExpression()), !dbg !2030
  %600 = icmp eq i8 %588, 0, !dbg !2477
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2479
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1977, metadata !DIExpression()), !dbg !2030
  br label %602, !dbg !2480

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2423
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2030
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2035
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2039
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2040
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2129
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2434
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1985, metadata !DIExpression()), !dbg !2127
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1979, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1977, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1963, metadata !DIExpression()), !dbg !2030
  %611 = add i64 %609, 1, !dbg !2481
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1985, metadata !DIExpression()), !dbg !2127
  br label %138, !dbg !2482, !llvm.loop !2483

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1961, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1977, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1976, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1971, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1970, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1963, metadata !DIExpression()), !dbg !2030
  %613 = icmp eq i64 %140, 0, !dbg !2485
  %614 = and i1 %132, %613, !dbg !2487
  %615 = xor i1 %614, true, !dbg !2487
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2487
  br i1 %616, label %617, label %655, !dbg !2487

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2488
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2488
  br i1 %621, label %622, label %631, !dbg !2488

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2490
  %624 = icmp eq i8 %623, 0, !dbg !2490
  br i1 %624, label %627, label %625, !dbg !2493

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2494
  br label %672, !dbg !2495

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2496
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2498
  br i1 %630, label %28, label %631, !dbg !2498

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2499
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2501
  br i1 %634, label %635, label %650, !dbg !2501

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1972, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1970, metadata !DIExpression()), !dbg !2030
  %636 = load i8, ptr %119, align 1, !dbg !2502, !tbaa !979
  %637 = icmp eq i8 %636, 0, !dbg !2505
  br i1 %637, label %650, label %638, !dbg !2505

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1972, metadata !DIExpression()), !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1970, metadata !DIExpression()), !dbg !2030
  %642 = icmp ult i64 %641, %146, !dbg !2506
  br i1 %642, label %643, label %645, !dbg !2509

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2506
  store i8 %639, ptr %644, align 1, !dbg !2506, !tbaa !979
  br label %645, !dbg !2506

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1970, metadata !DIExpression()), !dbg !2030
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2510
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1972, metadata !DIExpression()), !dbg !2030
  %648 = load i8, ptr %647, align 1, !dbg !2502, !tbaa !979
  %649 = icmp eq i8 %648, 0, !dbg !2505
  br i1 %649, label %650, label %638, !dbg !2505, !llvm.loop !2511

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1970, metadata !DIExpression()), !dbg !2030
  %652 = icmp ult i64 %651, %146, !dbg !2513
  br i1 %652, label %653, label %672, !dbg !2515

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2516
  store i8 0, ptr %654, align 1, !dbg !2517, !tbaa !979
  br label %672, !dbg !2516

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2021), !dbg !2518
  %657 = icmp eq i8 %123, 0, !dbg !2519
  %658 = select i1 %657, i32 2, i32 4, !dbg !2519
  br label %666, !dbg !2519

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2021), !dbg !2518
  %662 = icmp eq i32 %115, 2, !dbg !2521
  %663 = icmp eq i8 %123, 0, !dbg !2519
  %664 = select i1 %663, i32 2, i32 4, !dbg !2519
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2519
  br label %666, !dbg !2519

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1964, metadata !DIExpression()), !dbg !2030
  %670 = and i32 %5, -3, !dbg !2522
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2523
  br label %672, !dbg !2524

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2525
}

; Function Attrs: nounwind
declare !dbg !2526 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2529 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2532 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2534 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2538, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2539, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr %0, metadata !2542, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %1, metadata !2547, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata ptr null, metadata !2548, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata ptr %2, metadata !2549, metadata !DIExpression()), !dbg !2555
  %4 = icmp eq ptr %2, null, !dbg !2557
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2557
  call void @llvm.dbg.value(metadata ptr %5, metadata !2550, metadata !DIExpression()), !dbg !2555
  %6 = tail call ptr @__errno_location() #41, !dbg !2558
  %7 = load i32, ptr %6, align 4, !dbg !2558, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %7, metadata !2551, metadata !DIExpression()), !dbg !2555
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2559
  %9 = load i32, ptr %8, align 4, !dbg !2559, !tbaa !1904
  %10 = or i32 %9, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %10, metadata !2552, metadata !DIExpression()), !dbg !2555
  %11 = load i32, ptr %5, align 8, !dbg !2561, !tbaa !1854
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2562
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2563
  %14 = load ptr, ptr %13, align 8, !dbg !2563, !tbaa !1925
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2564
  %16 = load ptr, ptr %15, align 8, !dbg !2564, !tbaa !1928
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2565
  %18 = add i64 %17, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %18, metadata !2553, metadata !DIExpression()), !dbg !2555
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2567
  call void @llvm.dbg.value(metadata ptr %19, metadata !2554, metadata !DIExpression()), !dbg !2555
  %20 = load i32, ptr %5, align 8, !dbg !2568, !tbaa !1854
  %21 = load ptr, ptr %13, align 8, !dbg !2569, !tbaa !1925
  %22 = load ptr, ptr %15, align 8, !dbg !2570, !tbaa !1928
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2571
  store i32 %7, ptr %6, align 4, !dbg !2572, !tbaa !970
  ret ptr %19, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2543 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2542, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2547, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2548, metadata !DIExpression()), !dbg !2574
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2549, metadata !DIExpression()), !dbg !2574
  %5 = icmp eq ptr %3, null, !dbg !2575
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2575
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2550, metadata !DIExpression()), !dbg !2574
  %7 = tail call ptr @__errno_location() #41, !dbg !2576
  %8 = load i32, ptr %7, align 4, !dbg !2576, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2551, metadata !DIExpression()), !dbg !2574
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2577
  %10 = load i32, ptr %9, align 4, !dbg !2577, !tbaa !1904
  %11 = icmp eq ptr %2, null, !dbg !2578
  %12 = zext i1 %11 to i32, !dbg !2578
  %13 = or i32 %10, %12, !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2552, metadata !DIExpression()), !dbg !2574
  %14 = load i32, ptr %6, align 8, !dbg !2580, !tbaa !1854
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2581
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2582
  %17 = load ptr, ptr %16, align 8, !dbg !2582, !tbaa !1925
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2583
  %19 = load ptr, ptr %18, align 8, !dbg !2583, !tbaa !1928
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2584
  %21 = add i64 %20, 1, !dbg !2585
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2553, metadata !DIExpression()), !dbg !2574
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2586
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2554, metadata !DIExpression()), !dbg !2574
  %23 = load i32, ptr %6, align 8, !dbg !2587, !tbaa !1854
  %24 = load ptr, ptr %16, align 8, !dbg !2588, !tbaa !1925
  %25 = load ptr, ptr %18, align 8, !dbg !2589, !tbaa !1928
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2590
  store i32 %8, ptr %7, align 4, !dbg !2591, !tbaa !970
  br i1 %11, label %28, label %27, !dbg !2592

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2593, !tbaa !2595
  br label %28, !dbg !2596

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2597
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2598 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2603, !tbaa !899
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2600, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2601, metadata !DIExpression()), !dbg !2605
  %2 = load i32, ptr @nslots, align 4, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2601, metadata !DIExpression()), !dbg !2605
  %3 = icmp sgt i32 %2, 1, !dbg !2606
  br i1 %3, label %4, label %6, !dbg !2608

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2606
  br label %10, !dbg !2608

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2609
  %8 = load ptr, ptr %7, align 8, !dbg !2609, !tbaa !2611
  %9 = icmp eq ptr %8, @slot0, !dbg !2613
  br i1 %9, label %17, label %16, !dbg !2614

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2601, metadata !DIExpression()), !dbg !2605
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2615
  %13 = load ptr, ptr %12, align 8, !dbg !2615, !tbaa !2611
  tail call void @free(ptr noundef %13) #38, !dbg !2616
  %14 = add nuw nsw i64 %11, 1, !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2601, metadata !DIExpression()), !dbg !2605
  %15 = icmp eq i64 %14, %5, !dbg !2606
  br i1 %15, label %6, label %10, !dbg !2608, !llvm.loop !2618

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2620
  store i64 256, ptr @slotvec0, align 8, !dbg !2622, !tbaa !2623
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2624, !tbaa !2611
  br label %17, !dbg !2625

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2626
  br i1 %18, label %20, label %19, !dbg !2628

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2629
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2631, !tbaa !899
  br label %20, !dbg !2632

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2633, !tbaa !970
  ret void, !dbg !2634
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2635 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2638 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2641, metadata !DIExpression()), !dbg !2642
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2643
  ret ptr %3, !dbg !2644
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2645 {
  %5 = alloca i64, align 8, !DIAssignID !2665
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2659, metadata !DIExpression(), metadata !2665, metadata ptr %5, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2649, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2650, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2651, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2652, metadata !DIExpression()), !dbg !2667
  %6 = tail call ptr @__errno_location() #41, !dbg !2668
  %7 = load i32, ptr %6, align 4, !dbg !2668, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2653, metadata !DIExpression()), !dbg !2667
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2669, !tbaa !899
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2654, metadata !DIExpression()), !dbg !2667
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2655, metadata !DIExpression()), !dbg !2667
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2670
  br i1 %9, label %10, label %11, !dbg !2670

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2672
  unreachable, !dbg !2672

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2673, !tbaa !970
  %13 = icmp sgt i32 %12, %0, !dbg !2674
  br i1 %13, label %32, label %14, !dbg !2675

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2676
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2677
  %16 = sext i32 %12 to i64, !dbg !2678
  store i64 %16, ptr %5, align 8, !dbg !2679, !tbaa !2595, !DIAssignID !2680
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2659, metadata !DIExpression(), metadata !2680, metadata ptr %5, metadata !DIExpression()), !dbg !2666
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2681
  %18 = add nuw nsw i32 %0, 1, !dbg !2682
  %19 = sub i32 %18, %12, !dbg !2683
  %20 = sext i32 %19 to i64, !dbg !2684
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2685
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2654, metadata !DIExpression()), !dbg !2667
  store ptr %21, ptr @slotvec, align 8, !dbg !2686, !tbaa !899
  br i1 %15, label %22, label %23, !dbg !2687

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2688, !tbaa.struct !2690
  br label %23, !dbg !2691

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2692, !tbaa !970
  %25 = sext i32 %24 to i64, !dbg !2693
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2693
  %27 = load i64, ptr %5, align 8, !dbg !2694, !tbaa !2595
  %28 = sub nsw i64 %27, %25, !dbg !2695
  %29 = shl i64 %28, 4, !dbg !2696
  call void @llvm.dbg.value(metadata ptr %26, metadata !2068, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2071, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %29, metadata !2072, metadata !DIExpression()), !dbg !2697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2699
  %30 = load i64, ptr %5, align 8, !dbg !2700, !tbaa !2595
  %31 = trunc i64 %30 to i32, !dbg !2700
  store i32 %31, ptr @nslots, align 4, !dbg !2701, !tbaa !970
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2702
  br label %32, !dbg !2703

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2667
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2654, metadata !DIExpression()), !dbg !2667
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2704
  %36 = load i64, ptr %35, align 8, !dbg !2705, !tbaa !2623
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2660, metadata !DIExpression()), !dbg !2706
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2707
  %38 = load ptr, ptr %37, align 8, !dbg !2707, !tbaa !2611
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2662, metadata !DIExpression()), !dbg !2706
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2708
  %40 = load i32, ptr %39, align 4, !dbg !2708, !tbaa !1904
  %41 = or i32 %40, 1, !dbg !2709
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2663, metadata !DIExpression()), !dbg !2706
  %42 = load i32, ptr %3, align 8, !dbg !2710, !tbaa !1854
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2711
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2712
  %45 = load ptr, ptr %44, align 8, !dbg !2712, !tbaa !1925
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2713
  %47 = load ptr, ptr %46, align 8, !dbg !2713, !tbaa !1928
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2664, metadata !DIExpression()), !dbg !2706
  %49 = icmp ugt i64 %36, %48, !dbg !2715
  br i1 %49, label %60, label %50, !dbg !2717

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2718
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2660, metadata !DIExpression()), !dbg !2706
  store i64 %51, ptr %35, align 8, !dbg !2720, !tbaa !2623
  %52 = icmp eq ptr %38, @slot0, !dbg !2721
  br i1 %52, label %54, label %53, !dbg !2723

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2724
  br label %54, !dbg !2724

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2725
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2662, metadata !DIExpression()), !dbg !2706
  store ptr %55, ptr %37, align 8, !dbg !2726, !tbaa !2611
  %56 = load i32, ptr %3, align 8, !dbg !2727, !tbaa !1854
  %57 = load ptr, ptr %44, align 8, !dbg !2728, !tbaa !1925
  %58 = load ptr, ptr %46, align 8, !dbg !2729, !tbaa !1928
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2730
  br label %60, !dbg !2731

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2662, metadata !DIExpression()), !dbg !2706
  store i32 %7, ptr %6, align 4, !dbg !2732, !tbaa !970
  ret ptr %61, !dbg !2733
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2734 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2738, metadata !DIExpression()), !dbg !2741
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2739, metadata !DIExpression()), !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2740, metadata !DIExpression()), !dbg !2741
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2742
  ret ptr %4, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2748
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2750
  ret ptr %2, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2738, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2759
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2761
  ret ptr %3, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2763 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2770, metadata !DIExpression(), metadata !2771, metadata ptr %4, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2767, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2768, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2769, metadata !DIExpression()), !dbg !2772
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2786, !alias.scope !2774, !DIAssignID !2787
  call void @llvm.dbg.assign(metadata i8 0, metadata !2770, metadata !DIExpression(), metadata !2787, metadata ptr %4, metadata !DIExpression()), !dbg !2772
  %5 = icmp eq i32 %1, 10, !dbg !2788
  br i1 %5, label %6, label %7, !dbg !2790

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2791, !noalias !2774
  unreachable, !dbg !2791

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2792, !tbaa !1854, !alias.scope !2774, !DIAssignID !2793
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2793, metadata ptr %4, metadata !DIExpression()), !dbg !2772
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2794
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2795
  ret ptr %8, !dbg !2796
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2797 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2805, metadata !DIExpression(), metadata !2806, metadata ptr %5, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2801, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2802, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2809), !dbg !2812
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2783, metadata !DIExpression()), !dbg !2815
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2815, !alias.scope !2809, !DIAssignID !2816
  call void @llvm.dbg.assign(metadata i8 0, metadata !2805, metadata !DIExpression(), metadata !2816, metadata ptr %5, metadata !DIExpression()), !dbg !2807
  %6 = icmp eq i32 %1, 10, !dbg !2817
  br i1 %6, label %7, label %8, !dbg !2818

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2819, !noalias !2809
  unreachable, !dbg !2819

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2820, !tbaa !1854, !alias.scope !2809, !DIAssignID !2821
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2805, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2821, metadata ptr %5, metadata !DIExpression()), !dbg !2807
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2822
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2823
  ret ptr %9, !dbg !2824
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2825 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2831
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2829, metadata !DIExpression()), !dbg !2832
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2770, metadata !DIExpression(), metadata !2831, metadata ptr %3, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 0, metadata !2767, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i32 %0, metadata !2768, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata ptr %1, metadata !2769, metadata !DIExpression()), !dbg !2833
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2783, metadata !DIExpression()), !dbg !2842
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2842, !alias.scope !2836, !DIAssignID !2843
  call void @llvm.dbg.assign(metadata i8 0, metadata !2770, metadata !DIExpression(), metadata !2843, metadata ptr %3, metadata !DIExpression()), !dbg !2833
  %4 = icmp eq i32 %0, 10, !dbg !2844
  br i1 %4, label %5, label %6, !dbg !2845

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2846, !noalias !2836
  unreachable, !dbg !2846

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2847, !tbaa !1854, !alias.scope !2836, !DIAssignID !2848
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2848, metadata ptr %3, metadata !DIExpression()), !dbg !2833
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2850
  ret ptr %7, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2852 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2859
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2856, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2857, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2858, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2805, metadata !DIExpression(), metadata !2859, metadata ptr %4, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2801, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %1, metadata !2803, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %2, metadata !2804, metadata !DIExpression()), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864), !dbg !2867
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !2870
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2870, !alias.scope !2864, !DIAssignID !2871
  call void @llvm.dbg.assign(metadata i8 0, metadata !2805, metadata !DIExpression(), metadata !2871, metadata ptr %4, metadata !DIExpression()), !dbg !2861
  %5 = icmp eq i32 %0, 10, !dbg !2872
  br i1 %5, label %6, label %7, !dbg !2873

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2874, !noalias !2864
  unreachable, !dbg !2874

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2875, !tbaa !1854, !alias.scope !2864, !DIAssignID !2876
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2805, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2876, metadata ptr %4, metadata !DIExpression()), !dbg !2861
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2878
  ret ptr %8, !dbg !2879
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2880 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2888
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2888, metadata ptr %4, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2885, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2891, !tbaa.struct !2892, !DIAssignID !2893
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2893, metadata ptr %4, metadata !DIExpression()), !dbg !2889
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1872, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1874, metadata !DIExpression()), !dbg !2894
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2896
  %6 = lshr i8 %2, 5, !dbg !2897
  %7 = zext nneg i8 %6 to i64, !dbg !2897
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2898
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1875, metadata !DIExpression()), !dbg !2894
  %9 = and i8 %2, 31, !dbg !2899
  %10 = zext nneg i8 %9 to i32, !dbg !2899
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1877, metadata !DIExpression()), !dbg !2894
  %11 = load i32, ptr %8, align 4, !dbg !2900, !tbaa !970
  %12 = lshr i32 %11, %10, !dbg !2901
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1878, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2894
  %13 = and i32 %12, 1, !dbg !2902
  %14 = xor i32 %13, 1, !dbg !2902
  %15 = shl nuw i32 %14, %10, !dbg !2903
  %16 = xor i32 %15, %11, !dbg !2904
  store i32 %16, ptr %8, align 4, !dbg !2904, !tbaa !970
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2905
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2906
  ret ptr %17, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2908 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2914
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2915
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2914, metadata ptr %3, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 -1, metadata !2885, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8 %1, metadata !2886, metadata !DIExpression()), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2919, !tbaa.struct !2892, !DIAssignID !2920
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2920, metadata ptr %3, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %3, metadata !1871, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8 %1, metadata !1874, metadata !DIExpression()), !dbg !2921
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2923
  %5 = lshr i8 %1, 5, !dbg !2924
  %6 = zext nneg i8 %5 to i64, !dbg !2924
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2925
  call void @llvm.dbg.value(metadata ptr %7, metadata !1875, metadata !DIExpression()), !dbg !2921
  %8 = and i8 %1, 31, !dbg !2926
  %9 = zext nneg i8 %8 to i32, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %9, metadata !1877, metadata !DIExpression()), !dbg !2921
  %10 = load i32, ptr %7, align 4, !dbg !2927, !tbaa !970
  %11 = lshr i32 %10, %9, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %11, metadata !1878, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2921
  %12 = and i32 %11, 1, !dbg !2929
  %13 = xor i32 %12, 1, !dbg !2929
  %14 = shl nuw i32 %13, %9, !dbg !2930
  %15 = xor i32 %14, %10, !dbg !2931
  store i32 %15, ptr %7, align 4, !dbg !2931, !tbaa !970
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2932
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2933
  ret ptr %16, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2935 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2938
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 58, metadata !2913, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2938, metadata ptr %2, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 -1, metadata !2885, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 58, metadata !2886, metadata !DIExpression()), !dbg !2942
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2945, !tbaa.struct !2892, !DIAssignID !2946
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2946, metadata ptr %2, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %2, metadata !1871, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2947
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %3, metadata !1875, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 26, metadata !1877, metadata !DIExpression()), !dbg !2947
  %4 = load i32, ptr %3, align 4, !dbg !2950, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %4, metadata !1878, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2947
  %5 = or i32 %4, 67108864, !dbg !2951
  store i32 %5, ptr %3, align 4, !dbg !2951, !tbaa !970
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2952
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2953
  ret ptr %6, !dbg !2954
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2955 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2959
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2959, metadata ptr %3, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %1, metadata !2885, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 58, metadata !2886, metadata !DIExpression()), !dbg !2961
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2964, !tbaa.struct !2892, !DIAssignID !2965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2887, metadata !DIExpression(), metadata !2965, metadata ptr %3, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata ptr %3, metadata !1871, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2966
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2968
  call void @llvm.dbg.value(metadata ptr %4, metadata !1875, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 26, metadata !1877, metadata !DIExpression()), !dbg !2966
  %5 = load i32, ptr %4, align 4, !dbg !2969, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %5, metadata !1878, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2966
  %6 = or i32 %5, 67108864, !dbg !2970
  store i32 %6, ptr %4, align 4, !dbg !2970, !tbaa !970
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2971
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2972
  ret ptr %7, !dbg !2973
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2974 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2980
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2979, metadata !DIExpression(), metadata !2980, metadata ptr %4, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2783, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2982
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2977, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2984
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression()), !dbg !2985
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2985
  %5 = icmp eq i32 %1, 10, !dbg !2986
  br i1 %5, label %6, label %7, !dbg !2987

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2988, !noalias !2989
  unreachable, !dbg !2988

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2985
  store i32 %1, ptr %4, align 8, !dbg !2992, !tbaa.struct !2892, !DIAssignID !2993
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2992
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2992
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2993, metadata ptr %4, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2994, metadata ptr %8, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2995
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2995
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2995
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2997
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1875, metadata !DIExpression()), !dbg !2995
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1877, metadata !DIExpression()), !dbg !2995
  %10 = load i32, ptr %9, align 4, !dbg !2998, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1878, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2995
  %11 = or i32 %10, 67108864, !dbg !2999
  store i32 %11, ptr %9, align 4, !dbg !2999, !tbaa !970, !DIAssignID !3000
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2979, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3000, metadata ptr %9, metadata !DIExpression()), !dbg !2981
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3001
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3002
  ret ptr %12, !dbg !3003
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3004 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3012
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3008, metadata !DIExpression()), !dbg !3013
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !3013
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !3013
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3011, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3012, metadata ptr %5, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %3, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 -1, metadata !3023, metadata !DIExpression()), !dbg !3024
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3027, !tbaa.struct !2892, !DIAssignID !3028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3028, metadata ptr %5, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3029, metadata ptr undef, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !3030
  store i32 10, ptr %5, align 8, !dbg !3032, !tbaa !1854, !DIAssignID !3033
  call void @llvm.dbg.assign(metadata i32 10, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3033, metadata ptr %5, metadata !DIExpression()), !dbg !3024
  %6 = icmp ne ptr %1, null, !dbg !3034
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3035
  br i1 %8, label %10, label %9, !dbg !3035

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3036
  unreachable, !dbg !3036

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3037
  store ptr %1, ptr %11, align 8, !dbg !3038, !tbaa !1925, !DIAssignID !3039
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3039, metadata ptr %11, metadata !DIExpression()), !dbg !3024
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3040
  store ptr %2, ptr %12, align 8, !dbg !3041, !tbaa !1928, !DIAssignID !3042
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3042, metadata ptr %12, metadata !DIExpression()), !dbg !3024
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3043
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3044
  ret ptr %13, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3015 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3046
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3046, metadata ptr %6, metadata !DIExpression()), !dbg !3047
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3047
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3020, metadata !DIExpression()), !dbg !3047
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3021, metadata !DIExpression()), !dbg !3047
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3022, metadata !DIExpression()), !dbg !3047
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3023, metadata !DIExpression()), !dbg !3047
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3049, !tbaa.struct !2892, !DIAssignID !3050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3050, metadata ptr %6, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3051, metadata ptr undef, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %6, metadata !1911, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %6, metadata !1911, metadata !DIExpression()), !dbg !3052
  store i32 10, ptr %6, align 8, !dbg !3054, !tbaa !1854, !DIAssignID !3055
  call void @llvm.dbg.assign(metadata i32 10, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3055, metadata ptr %6, metadata !DIExpression()), !dbg !3047
  %7 = icmp ne ptr %1, null, !dbg !3056
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3057
  br i1 %9, label %11, label %10, !dbg !3057

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3058
  unreachable, !dbg !3058

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3059
  store ptr %1, ptr %12, align 8, !dbg !3060, !tbaa !1925, !DIAssignID !3061
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3061, metadata ptr %12, metadata !DIExpression()), !dbg !3047
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3062
  store ptr %2, ptr %13, align 8, !dbg !3063, !tbaa !1928, !DIAssignID !3064
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3064, metadata ptr %13, metadata !DIExpression()), !dbg !3047
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3065
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3066
  ret ptr %14, !dbg !3067
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3068 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3075
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3072, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3073, metadata !DIExpression()), !dbg !3076
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %1, metadata !3010, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %2, metadata !3011, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3075, metadata ptr %4, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %2, metadata !3022, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 -1, metadata !3023, metadata !DIExpression()), !dbg !3079
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3082, !tbaa.struct !2892, !DIAssignID !3083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3083, metadata ptr %4, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3084, metadata ptr undef, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %4, metadata !1911, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %1, metadata !1913, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %4, metadata !1911, metadata !DIExpression()), !dbg !3085
  store i32 10, ptr %4, align 8, !dbg !3087, !tbaa !1854, !DIAssignID !3088
  call void @llvm.dbg.assign(metadata i32 10, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3088, metadata ptr %4, metadata !DIExpression()), !dbg !3079
  %5 = icmp ne ptr %0, null, !dbg !3089
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3090
  br i1 %7, label %9, label %8, !dbg !3090

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3091
  unreachable, !dbg !3091

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3092
  store ptr %0, ptr %10, align 8, !dbg !3093, !tbaa !1925, !DIAssignID !3094
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3094, metadata ptr %10, metadata !DIExpression()), !dbg !3079
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3095
  store ptr %1, ptr %11, align 8, !dbg !3096, !tbaa !1928, !DIAssignID !3097
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3097, metadata ptr %11, metadata !DIExpression()), !dbg !3079
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3098
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3099
  ret ptr %12, !dbg !3100
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3101 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3109
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3105, metadata !DIExpression()), !dbg !3110
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3106, metadata !DIExpression()), !dbg !3110
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3107, metadata !DIExpression()), !dbg !3110
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3109, metadata ptr %5, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %1, metadata !3021, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %2, metadata !3022, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %3, metadata !3023, metadata !DIExpression()), !dbg !3111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3114, !tbaa.struct !2892, !DIAssignID !3115
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(), metadata !3115, metadata ptr %5, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3116, metadata ptr undef, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %1, metadata !1913, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !3117
  store i32 10, ptr %5, align 8, !dbg !3119, !tbaa !1854, !DIAssignID !3120
  call void @llvm.dbg.assign(metadata i32 10, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3120, metadata ptr %5, metadata !DIExpression()), !dbg !3111
  %6 = icmp ne ptr %0, null, !dbg !3121
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3122
  br i1 %8, label %10, label %9, !dbg !3122

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3123
  unreachable, !dbg !3123

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3124
  store ptr %0, ptr %11, align 8, !dbg !3125, !tbaa !1925, !DIAssignID !3126
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3126, metadata ptr %11, metadata !DIExpression()), !dbg !3111
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3127
  store ptr %1, ptr %12, align 8, !dbg !3128, !tbaa !1928, !DIAssignID !3129
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3129, metadata ptr %12, metadata !DIExpression()), !dbg !3111
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3130
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3131
  ret ptr %13, !dbg !3132
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3137, metadata !DIExpression()), !dbg !3140
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3138, metadata !DIExpression()), !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3139, metadata !DIExpression()), !dbg !3140
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3141
  ret ptr %4, !dbg !3142
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3143 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3147, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 0, metadata !3137, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %0, metadata !3138, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3139, metadata !DIExpression()), !dbg !3150
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3152
  ret ptr %3, !dbg !3153
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3154 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3158, metadata !DIExpression()), !dbg !3160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 %0, metadata !3137, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %1, metadata !3138, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 -1, metadata !3139, metadata !DIExpression()), !dbg !3161
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3163
  ret ptr %3, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3165 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3169, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 0, metadata !3158, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %0, metadata !3159, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 0, metadata !3137, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3138, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 -1, metadata !3139, metadata !DIExpression()), !dbg !3173
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3175
  ret ptr %2, !dbg !3176
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3177 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3216, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3217, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3218, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3219, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3220, metadata !DIExpression()), !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3221, metadata !DIExpression()), !dbg !3222
  %7 = icmp eq ptr %1, null, !dbg !3223
  br i1 %7, label %10, label %8, !dbg !3225

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.101, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3226
  br label %12, !dbg !3226

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.102, ptr noundef %2, ptr noundef %3) #38, !dbg !3227
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.3.104, i32 noundef 5) #38, !dbg !3228
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3228
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3229
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.5.106, i32 noundef 5) #38, !dbg !3230
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.107) #38, !dbg !3230
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %0), !dbg !3231
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
  ], !dbg !3232

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.7.108, i32 noundef 5) #38, !dbg !3233
  %21 = load ptr, ptr %4, align 8, !dbg !3233, !tbaa !899
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3233
  br label %147, !dbg !3235

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.8.109, i32 noundef 5) #38, !dbg !3236
  %25 = load ptr, ptr %4, align 8, !dbg !3236, !tbaa !899
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3236
  %27 = load ptr, ptr %26, align 8, !dbg !3236, !tbaa !899
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3236
  br label %147, !dbg !3237

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.9.110, i32 noundef 5) #38, !dbg !3238
  %31 = load ptr, ptr %4, align 8, !dbg !3238, !tbaa !899
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3238
  %33 = load ptr, ptr %32, align 8, !dbg !3238, !tbaa !899
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3238
  %35 = load ptr, ptr %34, align 8, !dbg !3238, !tbaa !899
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3238
  br label %147, !dbg !3239

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.10.111, i32 noundef 5) #38, !dbg !3240
  %39 = load ptr, ptr %4, align 8, !dbg !3240, !tbaa !899
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3240
  %41 = load ptr, ptr %40, align 8, !dbg !3240, !tbaa !899
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3240
  %43 = load ptr, ptr %42, align 8, !dbg !3240, !tbaa !899
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3240
  %45 = load ptr, ptr %44, align 8, !dbg !3240, !tbaa !899
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3240
  br label %147, !dbg !3241

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.11.112, i32 noundef 5) #38, !dbg !3242
  %49 = load ptr, ptr %4, align 8, !dbg !3242, !tbaa !899
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3242
  %51 = load ptr, ptr %50, align 8, !dbg !3242, !tbaa !899
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3242
  %53 = load ptr, ptr %52, align 8, !dbg !3242, !tbaa !899
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3242
  %55 = load ptr, ptr %54, align 8, !dbg !3242, !tbaa !899
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3242
  %57 = load ptr, ptr %56, align 8, !dbg !3242, !tbaa !899
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3242
  br label %147, !dbg !3243

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.12.113, i32 noundef 5) #38, !dbg !3244
  %61 = load ptr, ptr %4, align 8, !dbg !3244, !tbaa !899
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3244
  %63 = load ptr, ptr %62, align 8, !dbg !3244, !tbaa !899
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3244
  %65 = load ptr, ptr %64, align 8, !dbg !3244, !tbaa !899
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3244
  %67 = load ptr, ptr %66, align 8, !dbg !3244, !tbaa !899
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3244
  %69 = load ptr, ptr %68, align 8, !dbg !3244, !tbaa !899
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3244
  %71 = load ptr, ptr %70, align 8, !dbg !3244, !tbaa !899
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3244
  br label %147, !dbg !3245

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.13.114, i32 noundef 5) #38, !dbg !3246
  %75 = load ptr, ptr %4, align 8, !dbg !3246, !tbaa !899
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3246
  %77 = load ptr, ptr %76, align 8, !dbg !3246, !tbaa !899
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3246
  %79 = load ptr, ptr %78, align 8, !dbg !3246, !tbaa !899
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3246
  %81 = load ptr, ptr %80, align 8, !dbg !3246, !tbaa !899
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3246
  %83 = load ptr, ptr %82, align 8, !dbg !3246, !tbaa !899
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3246
  %85 = load ptr, ptr %84, align 8, !dbg !3246, !tbaa !899
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3246
  %87 = load ptr, ptr %86, align 8, !dbg !3246, !tbaa !899
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3246
  br label %147, !dbg !3247

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.14.115, i32 noundef 5) #38, !dbg !3248
  %91 = load ptr, ptr %4, align 8, !dbg !3248, !tbaa !899
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3248
  %93 = load ptr, ptr %92, align 8, !dbg !3248, !tbaa !899
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3248
  %95 = load ptr, ptr %94, align 8, !dbg !3248, !tbaa !899
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3248
  %97 = load ptr, ptr %96, align 8, !dbg !3248, !tbaa !899
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3248
  %99 = load ptr, ptr %98, align 8, !dbg !3248, !tbaa !899
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3248
  %101 = load ptr, ptr %100, align 8, !dbg !3248, !tbaa !899
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3248
  %103 = load ptr, ptr %102, align 8, !dbg !3248, !tbaa !899
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3248
  %105 = load ptr, ptr %104, align 8, !dbg !3248, !tbaa !899
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3248
  br label %147, !dbg !3249

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.15.116, i32 noundef 5) #38, !dbg !3250
  %109 = load ptr, ptr %4, align 8, !dbg !3250, !tbaa !899
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3250
  %111 = load ptr, ptr %110, align 8, !dbg !3250, !tbaa !899
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3250
  %113 = load ptr, ptr %112, align 8, !dbg !3250, !tbaa !899
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3250
  %115 = load ptr, ptr %114, align 8, !dbg !3250, !tbaa !899
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3250
  %117 = load ptr, ptr %116, align 8, !dbg !3250, !tbaa !899
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3250
  %119 = load ptr, ptr %118, align 8, !dbg !3250, !tbaa !899
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3250
  %121 = load ptr, ptr %120, align 8, !dbg !3250, !tbaa !899
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3250
  %123 = load ptr, ptr %122, align 8, !dbg !3250, !tbaa !899
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3250
  %125 = load ptr, ptr %124, align 8, !dbg !3250, !tbaa !899
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3250
  br label %147, !dbg !3251

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.16.117, i32 noundef 5) #38, !dbg !3252
  %129 = load ptr, ptr %4, align 8, !dbg !3252, !tbaa !899
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3252
  %131 = load ptr, ptr %130, align 8, !dbg !3252, !tbaa !899
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3252
  %133 = load ptr, ptr %132, align 8, !dbg !3252, !tbaa !899
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3252
  %135 = load ptr, ptr %134, align 8, !dbg !3252, !tbaa !899
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3252
  %137 = load ptr, ptr %136, align 8, !dbg !3252, !tbaa !899
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3252
  %139 = load ptr, ptr %138, align 8, !dbg !3252, !tbaa !899
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3252
  %141 = load ptr, ptr %140, align 8, !dbg !3252, !tbaa !899
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3252
  %143 = load ptr, ptr %142, align 8, !dbg !3252, !tbaa !899
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3252
  %145 = load ptr, ptr %144, align 8, !dbg !3252, !tbaa !899
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3252
  br label %147, !dbg !3253

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3255 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3259, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3260, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3261, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3262, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3263, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3264, metadata !DIExpression()), !dbg !3265
  br label %6, !dbg !3266

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3264, metadata !DIExpression()), !dbg !3265
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3269
  %9 = load ptr, ptr %8, align 8, !dbg !3269, !tbaa !899
  %10 = icmp eq ptr %9, null, !dbg !3271
  %11 = add i64 %7, 1, !dbg !3272
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3264, metadata !DIExpression()), !dbg !3265
  br i1 %10, label %12, label %6, !dbg !3271, !llvm.loop !3273

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3275
  ret void, !dbg !3276
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3277 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3296
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3294, metadata !DIExpression(), metadata !3296, metadata ptr %6, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3289, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3290, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3291, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3292, metadata !DIExpression()), !dbg !3297
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3298
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3293, metadata !DIExpression()), !dbg !3297
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3293, metadata !DIExpression()), !dbg !3297
  %10 = icmp ult i32 %9, 41, !dbg !3299
  br i1 %10, label %11, label %16, !dbg !3299

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3299
  %13 = zext nneg i32 %9 to i64, !dbg !3299
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3299
  %15 = add nuw nsw i32 %9, 8, !dbg !3299
  store i32 %15, ptr %4, align 8, !dbg !3299
  br label %19, !dbg !3299

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3299
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3299
  store ptr %18, ptr %7, align 8, !dbg !3299
  br label %19, !dbg !3299

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3299
  %22 = load ptr, ptr %21, align 8, !dbg !3299
  store ptr %22, ptr %6, align 16, !dbg !3302, !tbaa !899
  %23 = icmp eq ptr %22, null, !dbg !3303
  br i1 %23, label %128, label %24, !dbg !3304

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3293, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3293, metadata !DIExpression()), !dbg !3297
  %25 = icmp ult i32 %20, 41, !dbg !3299
  br i1 %25, label %29, label %26, !dbg !3299

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3299
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3299
  store ptr %28, ptr %7, align 8, !dbg !3299
  br label %34, !dbg !3299

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3299
  %31 = zext nneg i32 %20 to i64, !dbg !3299
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3299
  %33 = add nuw nsw i32 %20, 8, !dbg !3299
  store i32 %33, ptr %4, align 8, !dbg !3299
  br label %34, !dbg !3299

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3299
  %37 = load ptr, ptr %36, align 8, !dbg !3299
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3305
  store ptr %37, ptr %38, align 8, !dbg !3302, !tbaa !899
  %39 = icmp eq ptr %37, null, !dbg !3303
  br i1 %39, label %128, label %40, !dbg !3304

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3293, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3293, metadata !DIExpression()), !dbg !3297
  %41 = icmp ult i32 %35, 41, !dbg !3299
  br i1 %41, label %45, label %42, !dbg !3299

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3299
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3299
  store ptr %44, ptr %7, align 8, !dbg !3299
  br label %50, !dbg !3299

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3299
  %47 = zext nneg i32 %35 to i64, !dbg !3299
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3299
  %49 = add nuw nsw i32 %35, 8, !dbg !3299
  store i32 %49, ptr %4, align 8, !dbg !3299
  br label %50, !dbg !3299

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3299
  %53 = load ptr, ptr %52, align 8, !dbg !3299
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3305
  store ptr %53, ptr %54, align 16, !dbg !3302, !tbaa !899
  %55 = icmp eq ptr %53, null, !dbg !3303
  br i1 %55, label %128, label %56, !dbg !3304

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3293, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3293, metadata !DIExpression()), !dbg !3297
  %57 = icmp ult i32 %51, 41, !dbg !3299
  br i1 %57, label %61, label %58, !dbg !3299

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3299
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3299
  store ptr %60, ptr %7, align 8, !dbg !3299
  br label %66, !dbg !3299

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3299
  %63 = zext nneg i32 %51 to i64, !dbg !3299
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3299
  %65 = add nuw nsw i32 %51, 8, !dbg !3299
  store i32 %65, ptr %4, align 8, !dbg !3299
  br label %66, !dbg !3299

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3299
  %69 = load ptr, ptr %68, align 8, !dbg !3299
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3305
  store ptr %69, ptr %70, align 8, !dbg !3302, !tbaa !899
  %71 = icmp eq ptr %69, null, !dbg !3303
  br i1 %71, label %128, label %72, !dbg !3304

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3293, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3293, metadata !DIExpression()), !dbg !3297
  %73 = icmp ult i32 %67, 41, !dbg !3299
  br i1 %73, label %77, label %74, !dbg !3299

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3299
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3299
  store ptr %76, ptr %7, align 8, !dbg !3299
  br label %82, !dbg !3299

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3299
  %79 = zext nneg i32 %67 to i64, !dbg !3299
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3299
  %81 = add nuw nsw i32 %67, 8, !dbg !3299
  store i32 %81, ptr %4, align 8, !dbg !3299
  br label %82, !dbg !3299

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3299
  %85 = load ptr, ptr %84, align 8, !dbg !3299
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3305
  store ptr %85, ptr %86, align 16, !dbg !3302, !tbaa !899
  %87 = icmp eq ptr %85, null, !dbg !3303
  br i1 %87, label %128, label %88, !dbg !3304

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3293, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3293, metadata !DIExpression()), !dbg !3297
  %89 = icmp ult i32 %83, 41, !dbg !3299
  br i1 %89, label %93, label %90, !dbg !3299

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3299
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3299
  store ptr %92, ptr %7, align 8, !dbg !3299
  br label %98, !dbg !3299

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3299
  %95 = zext nneg i32 %83 to i64, !dbg !3299
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3299
  %97 = add nuw nsw i32 %83, 8, !dbg !3299
  store i32 %97, ptr %4, align 8, !dbg !3299
  br label %98, !dbg !3299

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3299
  %100 = load ptr, ptr %99, align 8, !dbg !3299
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3305
  store ptr %100, ptr %101, align 8, !dbg !3302, !tbaa !899
  %102 = icmp eq ptr %100, null, !dbg !3303
  br i1 %102, label %128, label %103, !dbg !3304

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3293, metadata !DIExpression()), !dbg !3297
  %104 = load ptr, ptr %7, align 8, !dbg !3299
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3299
  store ptr %105, ptr %7, align 8, !dbg !3299
  %106 = load ptr, ptr %104, align 8, !dbg !3299
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3305
  store ptr %106, ptr %107, align 16, !dbg !3302, !tbaa !899
  %108 = icmp eq ptr %106, null, !dbg !3303
  br i1 %108, label %128, label %109, !dbg !3304

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3293, metadata !DIExpression()), !dbg !3297
  %110 = load ptr, ptr %7, align 8, !dbg !3299
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3299
  store ptr %111, ptr %7, align 8, !dbg !3299
  %112 = load ptr, ptr %110, align 8, !dbg !3299
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3305
  store ptr %112, ptr %113, align 8, !dbg !3302, !tbaa !899
  %114 = icmp eq ptr %112, null, !dbg !3303
  br i1 %114, label %128, label %115, !dbg !3304

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3293, metadata !DIExpression()), !dbg !3297
  %116 = load ptr, ptr %7, align 8, !dbg !3299
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3299
  store ptr %117, ptr %7, align 8, !dbg !3299
  %118 = load ptr, ptr %116, align 8, !dbg !3299
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3305
  store ptr %118, ptr %119, align 16, !dbg !3302, !tbaa !899
  %120 = icmp eq ptr %118, null, !dbg !3303
  br i1 %120, label %128, label %121, !dbg !3304

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3293, metadata !DIExpression()), !dbg !3297
  %122 = load ptr, ptr %7, align 8, !dbg !3299
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3299
  store ptr %123, ptr %7, align 8, !dbg !3299
  %124 = load ptr, ptr %122, align 8, !dbg !3299
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3305
  store ptr %124, ptr %125, align 8, !dbg !3302, !tbaa !899
  %126 = icmp eq ptr %124, null, !dbg !3303
  %127 = select i1 %126, i64 9, i64 10, !dbg !3304
  br label %128, !dbg !3304

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3306
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3307
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3308
  ret void, !dbg !3308
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3309 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3322
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3317, metadata !DIExpression(), metadata !3322, metadata ptr %5, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3313, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3314, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3315, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3324
  call void @llvm.va_start(ptr nonnull %5), !dbg !3325
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3326
  call void @llvm.va_end(ptr nonnull %5), !dbg !3327
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3328
  ret void, !dbg !3328
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3329 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3330, !tbaa !899
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.105, ptr noundef %1), !dbg !3330
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.17.122, i32 noundef 5) #38, !dbg !3331
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.123) #38, !dbg !3331
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.19.124, i32 noundef 5) #38, !dbg !3332
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.125, ptr noundef nonnull @.str.21.126) #38, !dbg !3332
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.103, ptr noundef nonnull @.str.22.127, i32 noundef 5) #38, !dbg !3333
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.128) #38, !dbg !3333
  ret void, !dbg !3334
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3335 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3340, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %0, metadata !3344, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %2, metadata !3348, metadata !DIExpression()), !dbg !3349
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3357
  %5 = icmp eq ptr %4, null, !dbg !3359
  br i1 %5, label %6, label %7, !dbg !3361

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3362
  unreachable, !dbg !3362

7:                                                ; preds = %3
  ret ptr %4, !dbg !3363
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3345 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3344, metadata !DIExpression()), !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()), !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3348, metadata !DIExpression()), !dbg !3364
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3365
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3366
  %5 = icmp eq ptr %4, null, !dbg !3368
  br i1 %5, label %6, label %7, !dbg !3369

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3370
  unreachable, !dbg !3370

7:                                                ; preds = %3
  ret ptr %4, !dbg !3371
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3372 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3377
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3378
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3379
  %3 = icmp eq ptr %2, null, !dbg !3381
  br i1 %3, label %4, label %5, !dbg !3382

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3383
  unreachable, !dbg !3383

5:                                                ; preds = %1
  ret ptr %2, !dbg !3384
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3385 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3386 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %0, metadata !3392, metadata !DIExpression()), !dbg !3396
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3398
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3399
  %3 = icmp eq ptr %2, null, !dbg !3401
  br i1 %3, label %4, label %5, !dbg !3402

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3403
  unreachable, !dbg !3403

5:                                                ; preds = %1
  ret ptr %2, !dbg !3404
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3411
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3413
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3414
  %3 = icmp eq ptr %2, null, !dbg !3416
  br i1 %3, label %4, label %5, !dbg !3417

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3418
  unreachable, !dbg !3418

5:                                                ; preds = %1
  ret ptr %2, !dbg !3419
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3420 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3426
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3434
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3435
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3436
  %5 = icmp eq ptr %4, null, !dbg !3438
  br i1 %5, label %6, label %7, !dbg !3439

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3440
  unreachable, !dbg !3440

7:                                                ; preds = %2
  ret ptr %4, !dbg !3441
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3442 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3443 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3456
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3458
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3460
  %5 = icmp eq ptr %4, null, !dbg !3462
  br i1 %5, label %6, label %7, !dbg !3463

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3464
  unreachable, !dbg !3464

7:                                                ; preds = %2
  ret ptr %4, !dbg !3465
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3466 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3471, metadata !DIExpression()), !dbg !3473
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3474, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %1, metadata !3477, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %2, metadata !3478, metadata !DIExpression()), !dbg !3479
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3481
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3482
  %5 = icmp eq ptr %4, null, !dbg !3484
  br i1 %5, label %6, label %7, !dbg !3485

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3486
  unreachable, !dbg !3486

7:                                                ; preds = %3
  ret ptr %4, !dbg !3487
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3488 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3492, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr null, metadata !3344, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %0, metadata !3347, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3495
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3497
  call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3498
  %4 = icmp eq ptr %3, null, !dbg !3500
  br i1 %4, label %5, label %6, !dbg !3501

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3502
  unreachable, !dbg !3502

6:                                                ; preds = %2
  ret ptr %3, !dbg !3503
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3504 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3508, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata ptr null, metadata !3470, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %0, metadata !3471, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata ptr null, metadata !3474, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %0, metadata !3477, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3513
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3515
  call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3516
  %4 = icmp eq ptr %3, null, !dbg !3518
  br i1 %4, label %5, label %6, !dbg !3519

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3520
  unreachable, !dbg !3520

6:                                                ; preds = %2
  ret ptr %3, !dbg !3521
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3527, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata ptr %0, metadata !809, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 1, metadata !811, metadata !DIExpression()), !dbg !3529
  %3 = load i64, ptr %1, align 8, !dbg !3531, !tbaa !2595
  call void @llvm.dbg.value(metadata i64 %3, metadata !812, metadata !DIExpression()), !dbg !3529
  %4 = icmp eq ptr %0, null, !dbg !3532
  br i1 %4, label %5, label %8, !dbg !3534

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3535
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3538
  br label %15, !dbg !3538

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3539
  %10 = add nuw i64 %9, 1, !dbg !3539
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3539
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3539
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %13, metadata !812, metadata !DIExpression()), !dbg !3529
  br i1 %12, label %14, label %15, !dbg !3542

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3543
  unreachable, !dbg !3543

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3529
  call void @llvm.dbg.value(metadata i64 %16, metadata !812, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %0, metadata !3344, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %16, metadata !3347, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 1, metadata !3348, metadata !DIExpression()), !dbg !3544
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3546
  call void @llvm.dbg.value(metadata ptr %17, metadata !3352, metadata !DIExpression()), !dbg !3547
  %18 = icmp eq ptr %17, null, !dbg !3549
  br i1 %18, label %19, label %20, !dbg !3550

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3551
  unreachable, !dbg !3551

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !809, metadata !DIExpression()), !dbg !3529
  store i64 %16, ptr %1, align 8, !dbg !3552, !tbaa !2595
  ret ptr %17, !dbg !3553
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !804 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !809, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !810, metadata !DIExpression()), !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !811, metadata !DIExpression()), !dbg !3554
  %4 = load i64, ptr %1, align 8, !dbg !3555, !tbaa !2595
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !812, metadata !DIExpression()), !dbg !3554
  %5 = icmp eq ptr %0, null, !dbg !3556
  br i1 %5, label %6, label %13, !dbg !3557

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3558
  br i1 %7, label %8, label %20, !dbg !3559

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3560
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !812, metadata !DIExpression()), !dbg !3554
  %10 = icmp ugt i64 %2, 128, !dbg !3562
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3563
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !812, metadata !DIExpression()), !dbg !3554
  br label %20, !dbg !3564

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3565
  %15 = add nuw i64 %14, 1, !dbg !3565
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3565
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3565
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3565
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !812, metadata !DIExpression()), !dbg !3554
  br i1 %17, label %19, label %20, !dbg !3566

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3567
  unreachable, !dbg !3567

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3554
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !812, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata ptr %0, metadata !3344, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %21, metadata !3347, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %2, metadata !3348, metadata !DIExpression()), !dbg !3568
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3570
  call void @llvm.dbg.value(metadata ptr %22, metadata !3352, metadata !DIExpression()), !dbg !3571
  %23 = icmp eq ptr %22, null, !dbg !3573
  br i1 %23, label %24, label %25, !dbg !3574

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3575
  unreachable, !dbg !3575

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !809, metadata !DIExpression()), !dbg !3554
  store i64 %21, ptr %1, align 8, !dbg !3576, !tbaa !2595
  ret ptr %22, !dbg !3577
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !816 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !825, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !826, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !827, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !828, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !829, metadata !DIExpression()), !dbg !3578
  %6 = load i64, ptr %1, align 8, !dbg !3579, !tbaa !2595
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !830, metadata !DIExpression()), !dbg !3578
  %7 = ashr i64 %6, 1, !dbg !3580
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3580
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3580
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !831, metadata !DIExpression()), !dbg !3578
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !831, metadata !DIExpression()), !dbg !3578
  %12 = icmp sgt i64 %3, -1, !dbg !3583
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3585
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !831, metadata !DIExpression()), !dbg !3578
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3586
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3586
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3586
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !832, metadata !DIExpression()), !dbg !3578
  %18 = icmp slt i64 %17, 128, !dbg !3586
  %19 = select i1 %18, i64 128, i64 0, !dbg !3586
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3586
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !833, metadata !DIExpression()), !dbg !3578
  %21 = icmp eq i64 %20, 0, !dbg !3587
  br i1 %21, label %26, label %22, !dbg !3589

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !831, metadata !DIExpression()), !dbg !3578
  %24 = srem i64 %20, %4, !dbg !3592
  %25 = sub nsw i64 %20, %24, !dbg !3593
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !832, metadata !DIExpression()), !dbg !3578
  br label %26, !dbg !3594

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3578
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !832, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !831, metadata !DIExpression()), !dbg !3578
  %29 = icmp eq ptr %0, null, !dbg !3595
  br i1 %29, label %30, label %31, !dbg !3597

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3598, !tbaa !2595
  br label %31, !dbg !3599

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3600
  %33 = icmp slt i64 %32, %2, !dbg !3602
  br i1 %33, label %34, label %46, !dbg !3603

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3604
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3604
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !831, metadata !DIExpression()), !dbg !3578
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3605
  br i1 %40, label %45, label %41, !dbg !3605

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3606
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3606
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !832, metadata !DIExpression()), !dbg !3578
  br i1 %43, label %45, label %46, !dbg !3607

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #40, !dbg !3608
  unreachable, !dbg !3608

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3578
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !832, metadata !DIExpression()), !dbg !3578
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !831, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %48, metadata !3425, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %0, metadata !3427, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %48, metadata !3431, metadata !DIExpression()), !dbg !3611
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3613
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #44, !dbg !3614
  call void @llvm.dbg.value(metadata ptr %50, metadata !3352, metadata !DIExpression()), !dbg !3615
  %51 = icmp eq ptr %50, null, !dbg !3617
  br i1 %51, label %52, label %53, !dbg !3618

52:                                               ; preds = %46
  tail call void @xalloc_die() #40, !dbg !3619
  unreachable, !dbg !3619

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !825, metadata !DIExpression()), !dbg !3578
  store i64 %47, ptr %1, align 8, !dbg !3620, !tbaa !2595
  ret ptr %50, !dbg !3621
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3622 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %0, metadata !3626, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 1, metadata !3629, metadata !DIExpression()), !dbg !3630
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3633
  %3 = icmp eq ptr %2, null, !dbg !3635
  br i1 %3, label %4, label %5, !dbg !3636

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3637
  unreachable, !dbg !3637

5:                                                ; preds = %1
  ret ptr %2, !dbg !3638
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3639 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3627 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3626, metadata !DIExpression()), !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3640
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3641
  call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3642
  %4 = icmp eq ptr %3, null, !dbg !3644
  br i1 %4, label %5, label %6, !dbg !3645

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3646
  unreachable, !dbg !3646

6:                                                ; preds = %2
  ret ptr %3, !dbg !3647
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3648 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %0, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 1, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 1, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 1, metadata !3661, metadata !DIExpression()), !dbg !3662
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3664
  call void @llvm.dbg.value(metadata ptr %2, metadata !3352, metadata !DIExpression()), !dbg !3665
  %3 = icmp eq ptr %2, null, !dbg !3667
  br i1 %3, label %4, label %5, !dbg !3668

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3669
  unreachable, !dbg !3669

5:                                                ; preds = %1
  ret ptr %2, !dbg !3670
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3653 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3652, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3655, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %0, metadata !3658, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3661, metadata !DIExpression()), !dbg !3672
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3674
  call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3675
  %4 = icmp eq ptr %3, null, !dbg !3677
  br i1 %4, label %5, label %6, !dbg !3678

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3679
  unreachable, !dbg !3679

6:                                                ; preds = %2
  ret ptr %3, !dbg !3680
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3681 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3688
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3690
  call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3691
  %4 = icmp eq ptr %3, null, !dbg !3693
  br i1 %4, label %5, label %6, !dbg !3694

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3695
  unreachable, !dbg !3695

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3696, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3706
  ret ptr %3, !dbg !3707
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3708 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3712, metadata !DIExpression()), !dbg !3714
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3713, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3717
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3719
  call void @llvm.dbg.value(metadata ptr %3, metadata !3352, metadata !DIExpression()), !dbg !3720
  %4 = icmp eq ptr %3, null, !dbg !3722
  br i1 %4, label %5, label %6, !dbg !3723

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3724
  unreachable, !dbg !3724

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3696, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3725
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3727
  ret ptr %3, !dbg !3728
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3729 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3733, metadata !DIExpression()), !dbg !3736
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3736
  %3 = add nsw i64 %1, 1, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %3, metadata !3390, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %3, metadata !3392, metadata !DIExpression()), !dbg !3740
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3742
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3743
  %5 = icmp eq ptr %4, null, !dbg !3745
  br i1 %5, label %6, label %7, !dbg !3746

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3747
  unreachable, !dbg !3747

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3735, metadata !DIExpression()), !dbg !3736
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3748
  store i8 0, ptr %8, align 1, !dbg !3749, !tbaa !979
  call void @llvm.dbg.value(metadata ptr %4, metadata !3696, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3752
  ret ptr %4, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3754 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3757
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3758
  %3 = add i64 %2, 1, !dbg !3759
  call void @llvm.dbg.value(metadata ptr %0, metadata !3685, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %3, metadata !3686, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %3, metadata !3376, metadata !DIExpression()), !dbg !3762
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3764
  call void @llvm.dbg.value(metadata ptr %4, metadata !3352, metadata !DIExpression()), !dbg !3765
  %5 = icmp eq ptr %4, null, !dbg !3767
  br i1 %5, label %6, label %7, !dbg !3768

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3769
  unreachable, !dbg !3769

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3696, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %3, metadata !3703, metadata !DIExpression()), !dbg !3770
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3772
  ret ptr %4, !dbg !3773
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3774 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3779, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3776, metadata !DIExpression()), !dbg !3780
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.139, ptr noundef nonnull @.str.2.140, i32 noundef 5) #38, !dbg !3779
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.141, ptr noundef %2) #38, !dbg !3779
  %3 = icmp eq i32 %1, 0, !dbg !3779
  tail call void @llvm.assume(i1 %3), !dbg !3779
  tail call void @abort() #40, !dbg !3781
  unreachable, !dbg !3781
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoimax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !3782 {
  %9 = alloca i64, align 8, !DIAssignID !3803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3794, metadata !DIExpression(), metadata !3803, metadata ptr %9, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3787, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3788, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3789, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3790, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3791, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3792, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3793, metadata !DIExpression()), !dbg !3804
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #38, !dbg !3805
  %10 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #38, !dbg !3806
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3796, metadata !DIExpression()), !dbg !3804
  %11 = icmp eq i32 %10, 4, !dbg !3807
  br i1 %11, label %36, label %12, !dbg !3809

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !3810, !tbaa !2595
  %14 = icmp slt i64 %13, %2, !dbg !3813
  br i1 %14, label %17, label %15, !dbg !3814

15:                                               ; preds = %12
  %16 = icmp sgt i64 %13, %3, !dbg !3815
  br i1 %16, label %17, label %24, !dbg !3817

17:                                               ; preds = %15, %12
  %18 = phi i32 [ 4, %12 ], [ 8, %15 ]
  %19 = phi i64 [ %2, %12 ], [ %3, %15 ]
  %20 = and i32 %18, %7, !dbg !3818
  %21 = icmp eq i32 %20, 0, !dbg !3818
  %22 = select i1 %21, i32 75, i32 34, !dbg !3818
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !3795, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !3796, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !3798, metadata !DIExpression()), !dbg !3804
  %23 = icmp ult i32 %10, 2, !dbg !3819
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !3799, metadata !DIExpression()), !dbg !3804
  br i1 %23, label %29, label %36, !dbg !3820

24:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !3795, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3796, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 75, metadata !3798, metadata !DIExpression()), !dbg !3804
  %25 = icmp eq i32 %10, 1, !dbg !3819
  %26 = select i1 %25, i32 75, i32 0, !dbg !3821
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3799, metadata !DIExpression()), !dbg !3804
  %27 = icmp eq i32 %10, 0, !dbg !3822
  br i1 %27, label %40, label %28, !dbg !3823

28:                                               ; preds = %24
  br i1 %25, label %29, label %36, !dbg !3820

29:                                               ; preds = %17, %28
  %30 = phi i64 [ %19, %17 ], [ %13, %28 ]
  %31 = phi i32 [ %22, %17 ], [ 75, %28 ]
  %32 = icmp slt i64 %13, 0, !dbg !3824
  %33 = select i1 %32, i32 1, i32 2, !dbg !3825
  %34 = and i32 %33, %7, !dbg !3826
  %35 = icmp eq i32 %34, 0, !dbg !3826
  br i1 %35, label %36, label %40, !dbg !3827

36:                                               ; preds = %8, %17, %29, %28
  %37 = phi i32 [ 0, %17 ], [ %31, %29 ], [ 0, %28 ], [ 0, %8 ]
  %38 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !3828
  %39 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !3828
  call void (i32, i32, ptr, ...) @error(i32 noundef %38, i32 noundef %37, ptr noundef nonnull @.str.142, ptr noundef nonnull %5, ptr noundef %39) #38, !dbg !3828
  unreachable, !dbg !3828

40:                                               ; preds = %29, %24
  %41 = phi i32 [ %31, %29 ], [ %26, %24 ]
  %42 = phi i64 [ %30, %29 ], [ %13, %24 ]
  %43 = tail call ptr @__errno_location() #41, !dbg !3829
  store i32 %41, ptr %43, align 4, !dbg !3830, !tbaa !970
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #38, !dbg !3831
  ret i64 %42, !dbg !3832
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoimax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !3833 {
  %7 = alloca i64, align 8, !DIAssignID !3843
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3837, metadata !DIExpression()), !dbg !3844
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3838, metadata !DIExpression()), !dbg !3844
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()), !dbg !3844
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3840, metadata !DIExpression()), !dbg !3844
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3841, metadata !DIExpression()), !dbg !3844
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3842, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3794, metadata !DIExpression(), metadata !3843, metadata ptr %7, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %0, metadata !3786, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 10, metadata !3787, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %1, metadata !3788, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %2, metadata !3789, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %3, metadata !3790, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %4, metadata !3791, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 %5, metadata !3792, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 0, metadata !3793, metadata !DIExpression()), !dbg !3845
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #38, !dbg !3847
  %8 = call i32 @xstrtoimax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #38, !dbg !3848
  call void @llvm.dbg.value(metadata i32 %8, metadata !3796, metadata !DIExpression()), !dbg !3845
  %9 = icmp eq i32 %8, 4, !dbg !3849
  br i1 %9, label %19, label %10, !dbg !3850

10:                                               ; preds = %6
  %11 = load i64, ptr %7, align 8, !dbg !3851, !tbaa !2595
  %12 = icmp slt i64 %11, %1, !dbg !3852
  %13 = icmp sgt i64 %11, %2
  %14 = or i1 %12, %13, !dbg !3853
  br i1 %14, label %15, label %17, !dbg !3853

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 poison, metadata !3795, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 poison, metadata !3796, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 75, metadata !3798, metadata !DIExpression()), !dbg !3845
  %16 = icmp ult i32 %8, 2, !dbg !3854
  call void @llvm.dbg.value(metadata i32 undef, metadata !3799, metadata !DIExpression()), !dbg !3845
  br i1 %16, label %18, label %19, !dbg !3855

17:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !3795, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 %8, metadata !3796, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 75, metadata !3798, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 undef, metadata !3799, metadata !DIExpression()), !dbg !3845
  switch i32 %8, label %19 [
    i32 0, label %23
    i32 1, label %18
  ], !dbg !3856

18:                                               ; preds = %17, %15
  br label %19

19:                                               ; preds = %17, %18, %15, %6
  %20 = phi i32 [ 0, %15 ], [ 75, %18 ], [ 0, %6 ], [ 0, %17 ]
  %21 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !3857
  %22 = call ptr @quote(ptr noundef nonnull %0) #38, !dbg !3857
  call void (i32, i32, ptr, ...) @error(i32 noundef %21, i32 noundef %20, ptr noundef nonnull @.str.142, ptr noundef nonnull %4, ptr noundef %22) #38, !dbg !3857
  unreachable, !dbg !3857

23:                                               ; preds = %17
  %24 = tail call ptr @__errno_location() #41, !dbg !3858
  store i32 0, ptr %24, align 4, !dbg !3859, !tbaa !970
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #38, !dbg !3860
  ret i64 %11, !dbg !3861
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !3862 {
  %6 = alloca ptr, align 8, !DIAssignID !3883
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3874, metadata !DIExpression(), metadata !3883, metadata ptr %6, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3869, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3870, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3871, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3872, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3873, metadata !DIExpression()), !dbg !3884
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #38, !dbg !3885
  %7 = icmp eq ptr %1, null, !dbg !3886
  %8 = select i1 %7, ptr %6, ptr %1, !dbg !3886
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3875, metadata !DIExpression()), !dbg !3884
  %9 = tail call ptr @__errno_location() #41, !dbg !3887
  store i32 0, ptr %9, align 4, !dbg !3888, !tbaa !970
  %10 = call i64 @strtoimax(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2) #38, !dbg !3889
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3877, metadata !DIExpression()), !dbg !3884
  %11 = load ptr, ptr %8, align 8, !dbg !3890, !tbaa !899
  %12 = icmp eq ptr %11, %0, !dbg !3892
  br i1 %12, label %13, label %22, !dbg !3893

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null, !dbg !3894
  br i1 %14, label %490, label %15, !dbg !3897

15:                                               ; preds = %13
  %16 = load i8, ptr %0, align 1, !dbg !3898, !tbaa !979
  %17 = icmp eq i8 %16, 0, !dbg !3898
  br i1 %17, label %490, label %18, !dbg !3899

18:                                               ; preds = %15
  %19 = sext i8 %16 to i32, !dbg !3898
  %20 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %19) #39, !dbg !3900
  %21 = icmp eq ptr %20, null, !dbg !3900
  br i1 %21, label %490, label %29, !dbg !3901

22:                                               ; preds = %5
  %23 = load i32, ptr %9, align 4, !dbg !3902, !tbaa !970
  switch i32 %23, label %490 [
    i32 0, label %25
    i32 34, label %24
  ], !dbg !3904

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3877, metadata !DIExpression()), !dbg !3884
  br label %25, !dbg !3905

25:                                               ; preds = %22, %24
  %26 = phi i32 [ 1, %24 ], [ %23, %22 ], !dbg !3884
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !3877, metadata !DIExpression()), !dbg !3884
  %27 = icmp eq ptr %4, null, !dbg !3907
  br i1 %27, label %28, label %29, !dbg !3909

28:                                               ; preds = %25
  store i64 %10, ptr %3, align 8, !dbg !3910, !tbaa !2595
  br label %490, !dbg !3912

29:                                               ; preds = %18, %25
  %30 = phi i32 [ %26, %25 ], [ 0, %18 ]
  %31 = phi i64 [ %10, %25 ], [ 1, %18 ]
  %32 = load i8, ptr %11, align 1, !dbg !3913, !tbaa !979
  %33 = icmp eq i8 %32, 0, !dbg !3914
  br i1 %33, label %487, label %34, !dbg !3915

34:                                               ; preds = %29
  %35 = sext i8 %32 to i32, !dbg !3913
  %36 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %35) #39, !dbg !3916
  %37 = icmp eq ptr %36, null, !dbg !3916
  br i1 %37, label %38, label %40, !dbg !3918

38:                                               ; preds = %34
  store i64 %31, ptr %3, align 8, !dbg !3919, !tbaa !2595
  %39 = or disjoint i32 %30, 2, !dbg !3921
  br label %490, !dbg !3922

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !3878, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3881, metadata !DIExpression()), !dbg !3923
  switch i8 %32, label %53 [
    i8 69, label %41
    i8 71, label %41
    i8 103, label %41
    i8 107, label %41
    i8 75, label %41
    i8 77, label %41
    i8 109, label %41
    i8 80, label %41
    i8 81, label %41
    i8 82, label %41
    i8 84, label %41
    i8 116, label %41
    i8 89, label %41
    i8 90, label %41
  ], !dbg !3924

41:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %42 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #39, !dbg !3925
  %43 = icmp eq ptr %42, null, !dbg !3925
  br i1 %43, label %53, label %44, !dbg !3928

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3929
  %46 = load i8, ptr %45, align 1, !dbg !3929, !tbaa !979
  switch i8 %46, label %53 [
    i8 105, label %47
    i8 66, label %52
    i8 68, label %52
  ], !dbg !3930

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %11, i64 2, !dbg !3931
  %49 = load i8, ptr %48, align 1, !dbg !3931, !tbaa !979
  %50 = icmp eq i8 %49, 66, !dbg !3934
  %51 = select i1 %50, i64 3, i64 1, !dbg !3935
  br label %53, !dbg !3935

52:                                               ; preds = %44, %44
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !3878, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3881, metadata !DIExpression()), !dbg !3923
  br label %53, !dbg !3936

53:                                               ; preds = %47, %41, %44, %52, %40
  %54 = phi i64 [ 1024, %40 ], [ 1024, %44 ], [ 1000, %52 ], [ 1024, %41 ], [ 1024, %47 ], !dbg !3923
  %55 = phi i64 [ 1, %40 ], [ 1, %44 ], [ 2, %52 ], [ 1, %41 ], [ %51, %47 ], !dbg !3923
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !3881, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !3878, metadata !DIExpression()), !dbg !3923
  switch i8 %32, label %485 [
    i8 98, label %377
    i8 66, label %385
    i8 99, label %476
    i8 69, label %334
    i8 71, label %393
    i8 103, label %393
    i8 107, label %415
    i8 75, label %415
    i8 77, label %423
    i8 109, label %423
    i8 80, label %298
    i8 81, label %227
    i8 82, label %163
    i8 84, label %438
    i8 116, label %438
    i8 119, label %467
    i8 89, label %106
    i8 90, label %56
  ], !dbg !3937

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %57 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3958
  %58 = extractvalue { i64, i1 } %57, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %59 = extractvalue { i64, i1 } %57, 0, !dbg !3960
  %60 = icmp slt i64 %31, 0, !dbg !3960
  %61 = select i1 %60, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %62 = select i1 %58, i64 %61, i64 %59, !dbg !3960
  call void @llvm.dbg.value(metadata i1 %58, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i1 %58, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %63 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %62, i64 %54), !dbg !3958
  %64 = extractvalue { i64, i1 } %63, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %65 = extractvalue { i64, i1 } %63, 0, !dbg !3960
  %66 = icmp slt i64 %62, 0, !dbg !3960
  %67 = select i1 %66, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %68 = select i1 %64, i64 %67, i64 %65, !dbg !3960
  %69 = or i1 %58, %64, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %69, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i1 %69, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %70 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %68, i64 %54), !dbg !3958
  %71 = extractvalue { i64, i1 } %70, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %72 = extractvalue { i64, i1 } %70, 0, !dbg !3960
  %73 = icmp slt i64 %68, 0, !dbg !3960
  %74 = select i1 %73, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %75 = select i1 %71, i64 %74, i64 %72, !dbg !3960
  %76 = or i1 %69, %71, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %76, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i1 %76, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %77 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %75, i64 %54), !dbg !3958
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %79 = extractvalue { i64, i1 } %77, 0, !dbg !3960
  %80 = icmp slt i64 %75, 0, !dbg !3960
  %81 = select i1 %80, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %82 = select i1 %78, i64 %81, i64 %79, !dbg !3960
  %83 = or i1 %76, %78, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %83, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i1 %83, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %84 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 %54), !dbg !3958
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !3960
  %87 = icmp slt i64 %82, 0, !dbg !3960
  %88 = select i1 %87, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %89 = select i1 %85, i64 %88, i64 %86, !dbg !3960
  %90 = or i1 %83, %85, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %90, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i1 %90, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %91 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %89, i64 %54), !dbg !3958
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !3960
  %94 = icmp slt i64 %89, 0, !dbg !3960
  %95 = select i1 %94, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %96 = select i1 %92, i64 %95, i64 %93, !dbg !3960
  %97 = or i1 %90, %92, !dbg !3961
  call void @llvm.dbg.value(metadata i1 %97, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i1 %97, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3956
  %98 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %96, i64 %54), !dbg !3958
  %99 = extractvalue { i64, i1 } %98, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3956
  %100 = extractvalue { i64, i1 } %98, 0, !dbg !3960
  %101 = icmp slt i64 %96, 0, !dbg !3960
  %102 = select i1 %101, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3960
  %103 = select i1 %99, i64 %102, i64 %100, !dbg !3960
  %104 = or i1 %97, %99, !dbg !3961
  %105 = zext i1 %104 to i32, !dbg !3961
  call void @llvm.dbg.value(metadata i32 %105, metadata !3938, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3946
  br label %476, !dbg !3962

106:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %107 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3967
  %108 = extractvalue { i64, i1 } %107, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %109 = extractvalue { i64, i1 } %107, 0, !dbg !3968
  %110 = icmp slt i64 %31, 0, !dbg !3968
  %111 = select i1 %110, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %112 = select i1 %108, i64 %111, i64 %109, !dbg !3968
  call void @llvm.dbg.value(metadata i1 %108, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %108, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %113 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %112, i64 %54), !dbg !3967
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %115 = extractvalue { i64, i1 } %113, 0, !dbg !3968
  %116 = icmp slt i64 %112, 0, !dbg !3968
  %117 = select i1 %116, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %118 = select i1 %114, i64 %117, i64 %115, !dbg !3968
  %119 = or i1 %108, %114, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %119, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %119, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %120 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %118, i64 %54), !dbg !3967
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %122 = extractvalue { i64, i1 } %120, 0, !dbg !3968
  %123 = icmp slt i64 %118, 0, !dbg !3968
  %124 = select i1 %123, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %125 = select i1 %121, i64 %124, i64 %122, !dbg !3968
  %126 = or i1 %119, %121, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %126, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %126, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %127 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %125, i64 %54), !dbg !3967
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !3968
  %130 = icmp slt i64 %125, 0, !dbg !3968
  %131 = select i1 %130, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %132 = select i1 %128, i64 %131, i64 %129, !dbg !3968
  %133 = or i1 %126, %128, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %133, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %133, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %134 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %132, i64 %54), !dbg !3967
  %135 = extractvalue { i64, i1 } %134, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %136 = extractvalue { i64, i1 } %134, 0, !dbg !3968
  %137 = icmp slt i64 %132, 0, !dbg !3968
  %138 = select i1 %137, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %139 = select i1 %135, i64 %138, i64 %136, !dbg !3968
  %140 = or i1 %133, %135, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %140, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %140, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %141 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %139, i64 %54), !dbg !3967
  %142 = extractvalue { i64, i1 } %141, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %143 = extractvalue { i64, i1 } %141, 0, !dbg !3968
  %144 = icmp slt i64 %139, 0, !dbg !3968
  %145 = select i1 %144, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %146 = select i1 %142, i64 %145, i64 %143, !dbg !3968
  %147 = or i1 %140, %142, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %147, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %147, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %148 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %146, i64 %54), !dbg !3967
  %149 = extractvalue { i64, i1 } %148, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %150 = extractvalue { i64, i1 } %148, 0, !dbg !3968
  %151 = icmp slt i64 %146, 0, !dbg !3968
  %152 = select i1 %151, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %153 = select i1 %149, i64 %152, i64 %150, !dbg !3968
  %154 = or i1 %147, %149, !dbg !3969
  call void @llvm.dbg.value(metadata i1 %154, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i1 %154, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3963
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3965
  %155 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %153, i64 %54), !dbg !3967
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3967
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3965
  %157 = extractvalue { i64, i1 } %155, 0, !dbg !3968
  %158 = icmp slt i64 %153, 0, !dbg !3968
  %159 = select i1 %158, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3968
  %160 = select i1 %156, i64 %159, i64 %157, !dbg !3968
  %161 = or i1 %154, %156, !dbg !3969
  %162 = zext i1 %161 to i32, !dbg !3969
  call void @llvm.dbg.value(metadata i32 %162, metadata !3938, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3963
  br label %476, !dbg !3962

163:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 9, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %164 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3974
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %166 = extractvalue { i64, i1 } %164, 0, !dbg !3975
  %167 = icmp slt i64 %31, 0, !dbg !3975
  %168 = select i1 %167, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %169 = select i1 %165, i64 %168, i64 %166, !dbg !3975
  call void @llvm.dbg.value(metadata i1 %165, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %165, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %170 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %169, i64 %54), !dbg !3974
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %172 = extractvalue { i64, i1 } %170, 0, !dbg !3975
  %173 = icmp slt i64 %169, 0, !dbg !3975
  %174 = select i1 %173, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %175 = select i1 %171, i64 %174, i64 %172, !dbg !3975
  %176 = or i1 %165, %171, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %176, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %176, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %177 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %175, i64 %54), !dbg !3974
  %178 = extractvalue { i64, i1 } %177, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %179 = extractvalue { i64, i1 } %177, 0, !dbg !3975
  %180 = icmp slt i64 %175, 0, !dbg !3975
  %181 = select i1 %180, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %182 = select i1 %178, i64 %181, i64 %179, !dbg !3975
  %183 = or i1 %176, %178, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %183, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %183, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %184 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %182, i64 %54), !dbg !3974
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %186 = extractvalue { i64, i1 } %184, 0, !dbg !3975
  %187 = icmp slt i64 %182, 0, !dbg !3975
  %188 = select i1 %187, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %189 = select i1 %185, i64 %188, i64 %186, !dbg !3975
  %190 = or i1 %183, %185, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %190, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %190, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %191 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %189, i64 %54), !dbg !3974
  %192 = extractvalue { i64, i1 } %191, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %193 = extractvalue { i64, i1 } %191, 0, !dbg !3975
  %194 = icmp slt i64 %189, 0, !dbg !3975
  %195 = select i1 %194, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %196 = select i1 %192, i64 %195, i64 %193, !dbg !3975
  %197 = or i1 %190, %192, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %197, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %197, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %198 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %196, i64 %54), !dbg !3974
  %199 = extractvalue { i64, i1 } %198, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %200 = extractvalue { i64, i1 } %198, 0, !dbg !3975
  %201 = icmp slt i64 %196, 0, !dbg !3975
  %202 = select i1 %201, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %203 = select i1 %199, i64 %202, i64 %200, !dbg !3975
  %204 = or i1 %197, %199, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %204, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %204, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %205 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %203, i64 %54), !dbg !3974
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %207 = extractvalue { i64, i1 } %205, 0, !dbg !3975
  %208 = icmp slt i64 %203, 0, !dbg !3975
  %209 = select i1 %208, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %210 = select i1 %206, i64 %209, i64 %207, !dbg !3975
  %211 = or i1 %204, %206, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %211, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %211, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %212 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %210, i64 %54), !dbg !3974
  %213 = extractvalue { i64, i1 } %212, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %214 = extractvalue { i64, i1 } %212, 0, !dbg !3975
  %215 = icmp slt i64 %210, 0, !dbg !3975
  %216 = select i1 %215, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %217 = select i1 %213, i64 %216, i64 %214, !dbg !3975
  %218 = or i1 %211, %213, !dbg !3976
  call void @llvm.dbg.value(metadata i1 %218, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i1 %218, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3970
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3972
  %219 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %217, i64 %54), !dbg !3974
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !3974
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3972
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !3975
  %222 = icmp slt i64 %217, 0, !dbg !3975
  %223 = select i1 %222, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3975
  %224 = select i1 %220, i64 %223, i64 %221, !dbg !3975
  %225 = or i1 %218, %220, !dbg !3976
  %226 = zext i1 %225 to i32, !dbg !3976
  call void @llvm.dbg.value(metadata i32 %226, metadata !3938, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3970
  br label %476, !dbg !3962

227:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 10, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 9, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %228 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3981
  %229 = extractvalue { i64, i1 } %228, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %230 = extractvalue { i64, i1 } %228, 0, !dbg !3982
  %231 = icmp slt i64 %31, 0, !dbg !3982
  %232 = select i1 %231, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %233 = select i1 %229, i64 %232, i64 %230, !dbg !3982
  call void @llvm.dbg.value(metadata i1 %229, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 9, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %229, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 9, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %234 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %233, i64 %54), !dbg !3981
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !3982
  %237 = icmp slt i64 %233, 0, !dbg !3982
  %238 = select i1 %237, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %239 = select i1 %235, i64 %238, i64 %236, !dbg !3982
  %240 = or i1 %229, %235, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %240, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %240, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 8, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %241 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %239, i64 %54), !dbg !3981
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %243 = extractvalue { i64, i1 } %241, 0, !dbg !3982
  %244 = icmp slt i64 %239, 0, !dbg !3982
  %245 = select i1 %244, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %246 = select i1 %242, i64 %245, i64 %243, !dbg !3982
  %247 = or i1 %240, %242, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %247, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %247, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 7, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %248 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %246, i64 %54), !dbg !3981
  %249 = extractvalue { i64, i1 } %248, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %250 = extractvalue { i64, i1 } %248, 0, !dbg !3982
  %251 = icmp slt i64 %246, 0, !dbg !3982
  %252 = select i1 %251, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %253 = select i1 %249, i64 %252, i64 %250, !dbg !3982
  %254 = or i1 %247, %249, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %254, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %254, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %255 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %253, i64 %54), !dbg !3981
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !3982
  %258 = icmp slt i64 %253, 0, !dbg !3982
  %259 = select i1 %258, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %260 = select i1 %256, i64 %259, i64 %257, !dbg !3982
  %261 = or i1 %254, %256, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %261, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %261, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %262 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %260, i64 %54), !dbg !3981
  %263 = extractvalue { i64, i1 } %262, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %264 = extractvalue { i64, i1 } %262, 0, !dbg !3982
  %265 = icmp slt i64 %260, 0, !dbg !3982
  %266 = select i1 %265, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %267 = select i1 %263, i64 %266, i64 %264, !dbg !3982
  %268 = or i1 %261, %263, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %268, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %268, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %269 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %267, i64 %54), !dbg !3981
  %270 = extractvalue { i64, i1 } %269, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %271 = extractvalue { i64, i1 } %269, 0, !dbg !3982
  %272 = icmp slt i64 %267, 0, !dbg !3982
  %273 = select i1 %272, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %274 = select i1 %270, i64 %273, i64 %271, !dbg !3982
  %275 = or i1 %268, %270, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %275, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %275, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %276 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %274, i64 %54), !dbg !3981
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !3982
  %279 = icmp slt i64 %274, 0, !dbg !3982
  %280 = select i1 %279, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %281 = select i1 %277, i64 %280, i64 %278, !dbg !3982
  %282 = or i1 %275, %277, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %282, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %282, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %283 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %281, i64 %54), !dbg !3981
  %284 = extractvalue { i64, i1 } %283, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %285 = extractvalue { i64, i1 } %283, 0, !dbg !3982
  %286 = icmp slt i64 %281, 0, !dbg !3982
  %287 = select i1 %286, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %288 = select i1 %284, i64 %287, i64 %285, !dbg !3982
  %289 = or i1 %282, %284, !dbg !3983
  call void @llvm.dbg.value(metadata i1 %289, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i1 %289, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3977
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3979
  %290 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %288, i64 %54), !dbg !3981
  %291 = extractvalue { i64, i1 } %290, 1, !dbg !3981
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3979
  %292 = extractvalue { i64, i1 } %290, 0, !dbg !3982
  %293 = icmp slt i64 %288, 0, !dbg !3982
  %294 = select i1 %293, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3982
  %295 = select i1 %291, i64 %294, i64 %292, !dbg !3982
  %296 = or i1 %289, %291, !dbg !3983
  %297 = zext i1 %296 to i32, !dbg !3983
  call void @llvm.dbg.value(metadata i32 %297, metadata !3938, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3977
  br label %476, !dbg !3962

298:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3986
  %299 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3988
  %300 = extractvalue { i64, i1 } %299, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3986
  %301 = extractvalue { i64, i1 } %299, 0, !dbg !3989
  %302 = icmp slt i64 %31, 0, !dbg !3989
  %303 = select i1 %302, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3989
  %304 = select i1 %300, i64 %303, i64 %301, !dbg !3989
  call void @llvm.dbg.value(metadata i1 %300, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i1 %300, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3986
  %305 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %304, i64 %54), !dbg !3988
  %306 = extractvalue { i64, i1 } %305, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3986
  %307 = extractvalue { i64, i1 } %305, 0, !dbg !3989
  %308 = icmp slt i64 %304, 0, !dbg !3989
  %309 = select i1 %308, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3989
  %310 = select i1 %306, i64 %309, i64 %307, !dbg !3989
  %311 = or i1 %300, %306, !dbg !3990
  call void @llvm.dbg.value(metadata i1 %311, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i1 %311, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3986
  %312 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %310, i64 %54), !dbg !3988
  %313 = extractvalue { i64, i1 } %312, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3986
  %314 = extractvalue { i64, i1 } %312, 0, !dbg !3989
  %315 = icmp slt i64 %310, 0, !dbg !3989
  %316 = select i1 %315, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3989
  %317 = select i1 %313, i64 %316, i64 %314, !dbg !3989
  %318 = or i1 %311, %313, !dbg !3990
  call void @llvm.dbg.value(metadata i1 %318, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i1 %318, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3986
  %319 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %317, i64 %54), !dbg !3988
  %320 = extractvalue { i64, i1 } %319, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3986
  %321 = extractvalue { i64, i1 } %319, 0, !dbg !3989
  %322 = icmp slt i64 %317, 0, !dbg !3989
  %323 = select i1 %322, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3989
  %324 = select i1 %320, i64 %323, i64 %321, !dbg !3989
  %325 = or i1 %318, %320, !dbg !3990
  call void @llvm.dbg.value(metadata i1 %325, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i1 %325, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3984
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3986
  %326 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %324, i64 %54), !dbg !3988
  %327 = extractvalue { i64, i1 } %326, 1, !dbg !3988
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3986
  %328 = extractvalue { i64, i1 } %326, 0, !dbg !3989
  %329 = icmp slt i64 %324, 0, !dbg !3989
  %330 = select i1 %329, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3989
  %331 = select i1 %327, i64 %330, i64 %328, !dbg !3989
  %332 = or i1 %325, %327, !dbg !3990
  %333 = zext i1 %332 to i32, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %333, metadata !3938, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3984
  br label %476, !dbg !3962

334:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 6, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3993
  %335 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !3995
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3993
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !3996
  %338 = icmp slt i64 %31, 0, !dbg !3996
  %339 = select i1 %338, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3996
  %340 = select i1 %336, i64 %339, i64 %337, !dbg !3996
  call void @llvm.dbg.value(metadata i1 %336, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i1 %336, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 5, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3993
  %341 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %340, i64 %54), !dbg !3995
  %342 = extractvalue { i64, i1 } %341, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3993
  %343 = extractvalue { i64, i1 } %341, 0, !dbg !3996
  %344 = icmp slt i64 %340, 0, !dbg !3996
  %345 = select i1 %344, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3996
  %346 = select i1 %342, i64 %345, i64 %343, !dbg !3996
  %347 = or i1 %336, %342, !dbg !3997
  call void @llvm.dbg.value(metadata i1 %347, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i1 %347, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3993
  %348 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %346, i64 %54), !dbg !3995
  %349 = extractvalue { i64, i1 } %348, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3993
  %350 = extractvalue { i64, i1 } %348, 0, !dbg !3996
  %351 = icmp slt i64 %346, 0, !dbg !3996
  %352 = select i1 %351, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3996
  %353 = select i1 %349, i64 %352, i64 %350, !dbg !3996
  %354 = or i1 %347, %349, !dbg !3997
  call void @llvm.dbg.value(metadata i1 %354, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i1 %354, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3993
  %355 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %353, i64 %54), !dbg !3995
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3993
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !3996
  %358 = icmp slt i64 %353, 0, !dbg !3996
  %359 = select i1 %358, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3996
  %360 = select i1 %356, i64 %359, i64 %357, !dbg !3996
  %361 = or i1 %354, %356, !dbg !3997
  call void @llvm.dbg.value(metadata i1 %361, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i1 %361, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3993
  %362 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %360, i64 %54), !dbg !3995
  %363 = extractvalue { i64, i1 } %362, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3993
  %364 = extractvalue { i64, i1 } %362, 0, !dbg !3996
  %365 = icmp slt i64 %360, 0, !dbg !3996
  %366 = select i1 %365, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3996
  %367 = select i1 %363, i64 %366, i64 %364, !dbg !3996
  %368 = or i1 %361, %363, !dbg !3997
  call void @llvm.dbg.value(metadata i1 %368, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i1 %368, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3991
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !3993
  %369 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %367, i64 %54), !dbg !3995
  %370 = extractvalue { i64, i1 } %369, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3993
  %371 = extractvalue { i64, i1 } %369, 0, !dbg !3996
  %372 = icmp slt i64 %367, 0, !dbg !3996
  %373 = select i1 %372, i64 -9223372036854775808, i64 9223372036854775807, !dbg !3996
  %374 = select i1 %370, i64 %373, i64 %371, !dbg !3996
  %375 = or i1 %368, %370, !dbg !3997
  %376 = zext i1 %375 to i32, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %376, metadata !3938, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3991
  br label %476, !dbg !3962

377:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 512, metadata !3954, metadata !DIExpression()), !dbg !3998
  %378 = add i64 %31, -18014398509481984, !dbg !4000
  %379 = icmp ult i64 %378, -36028797018963968, !dbg !4000
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !3998
  %380 = shl i64 %31, 9, !dbg !4001
  %381 = icmp slt i64 %31, 0, !dbg !4001
  %382 = select i1 %381, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4001
  %383 = select i1 %379, i64 %382, i64 %380, !dbg !4001
  %384 = zext i1 %379 to i32, !dbg !4001
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %384, metadata !3882, metadata !DIExpression()), !dbg !3923
  br label %476, !dbg !4002

385:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 1024, metadata !3954, metadata !DIExpression()), !dbg !4003
  %386 = add i64 %31, -9007199254740992, !dbg !4005
  %387 = icmp ult i64 %386, -18014398509481984, !dbg !4005
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4003
  %388 = shl i64 %31, 10, !dbg !4006
  %389 = icmp slt i64 %31, 0, !dbg !4006
  %390 = select i1 %389, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4006
  %391 = select i1 %387, i64 %390, i64 %388, !dbg !4006
  %392 = zext i1 %387 to i32, !dbg !4006
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %392, metadata !3882, metadata !DIExpression()), !dbg !3923
  br label %476, !dbg !4007

393:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3943, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %54, metadata !3944, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4010
  %394 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4012
  %395 = extractvalue { i64, i1 } %394, 1, !dbg !4012
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4010
  %396 = extractvalue { i64, i1 } %394, 0, !dbg !4013
  %397 = icmp slt i64 %31, 0, !dbg !4013
  %398 = select i1 %397, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4013
  %399 = select i1 %395, i64 %398, i64 %396, !dbg !4013
  call void @llvm.dbg.value(metadata i1 %395, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i1 %395, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4010
  %400 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %399, i64 %54), !dbg !4012
  %401 = extractvalue { i64, i1 } %400, 1, !dbg !4012
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4010
  %402 = extractvalue { i64, i1 } %400, 0, !dbg !4013
  %403 = icmp slt i64 %399, 0, !dbg !4013
  %404 = select i1 %403, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4013
  %405 = select i1 %401, i64 %404, i64 %402, !dbg !4013
  %406 = or i1 %395, %401, !dbg !4014
  call void @llvm.dbg.value(metadata i1 %406, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i1 %406, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4008
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4010
  %407 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %405, i64 %54), !dbg !4012
  %408 = extractvalue { i64, i1 } %407, 1, !dbg !4012
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4010
  %409 = extractvalue { i64, i1 } %407, 0, !dbg !4013
  %410 = icmp slt i64 %405, 0, !dbg !4013
  %411 = select i1 %410, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4013
  %412 = select i1 %408, i64 %411, i64 %409, !dbg !4013
  %413 = or i1 %406, %408, !dbg !4014
  %414 = zext i1 %413 to i32, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %414, metadata !3938, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4008
  br label %476, !dbg !3962

415:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3943, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i64 %54, metadata !3944, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4015
  %416 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4017
  %417 = extractvalue { i64, i1 } %416, 1, !dbg !4017
  %418 = icmp slt i64 %31, 0, !dbg !4019
  %419 = select i1 %418, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4019
  %420 = extractvalue { i64, i1 } %416, 0, !dbg !4019
  %421 = select i1 %417, i64 %419, i64 %420, !dbg !4019
  %422 = zext i1 %417 to i32, !dbg !4019
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4020
  br label %476, !dbg !3962

423:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3943, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i64 %54, metadata !3944, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4023
  %424 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4025
  %425 = extractvalue { i64, i1 } %424, 1, !dbg !4025
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4023
  %426 = extractvalue { i64, i1 } %424, 0, !dbg !4026
  %427 = icmp slt i64 %31, 0, !dbg !4026
  %428 = select i1 %427, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4026
  %429 = select i1 %425, i64 %428, i64 %426, !dbg !4026
  call void @llvm.dbg.value(metadata i1 %425, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4021
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4021
  call void @llvm.dbg.value(metadata i1 %425, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4021
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4023
  %430 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %429, i64 %54), !dbg !4025
  %431 = extractvalue { i64, i1 } %430, 1, !dbg !4025
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4023
  %432 = extractvalue { i64, i1 } %430, 0, !dbg !4026
  %433 = icmp slt i64 %429, 0, !dbg !4026
  %434 = select i1 %433, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4026
  %435 = select i1 %431, i64 %434, i64 %432, !dbg !4026
  %436 = or i1 %425, %431, !dbg !4027
  %437 = zext i1 %436 to i32, !dbg !4027
  call void @llvm.dbg.value(metadata i32 %437, metadata !3938, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4021
  br label %476, !dbg !3962

438:                                              ; preds = %53, %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3943, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %54, metadata !3944, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 4, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4030
  %439 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %31, i64 %54), !dbg !4032
  %440 = extractvalue { i64, i1 } %439, 1, !dbg !4032
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4030
  %441 = extractvalue { i64, i1 } %439, 0, !dbg !4033
  %442 = icmp slt i64 %31, 0, !dbg !4033
  %443 = select i1 %442, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4033
  %444 = select i1 %440, i64 %443, i64 %441, !dbg !4033
  call void @llvm.dbg.value(metadata i1 %440, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i1 %440, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 3, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4030
  %445 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %444, i64 %54), !dbg !4032
  %446 = extractvalue { i64, i1 } %445, 1, !dbg !4032
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4030
  %447 = extractvalue { i64, i1 } %445, 0, !dbg !4033
  %448 = icmp slt i64 %444, 0, !dbg !4033
  %449 = select i1 %448, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4033
  %450 = select i1 %446, i64 %449, i64 %447, !dbg !4033
  %451 = or i1 %440, %446, !dbg !4034
  call void @llvm.dbg.value(metadata i1 %451, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i1 %451, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 2, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4030
  %452 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %450, i64 %54), !dbg !4032
  %453 = extractvalue { i64, i1 } %452, 1, !dbg !4032
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4030
  %454 = extractvalue { i64, i1 } %452, 0, !dbg !4033
  %455 = icmp slt i64 %450, 0, !dbg !4033
  %456 = select i1 %455, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4033
  %457 = select i1 %453, i64 %456, i64 %454, !dbg !4033
  %458 = or i1 %451, %453, !dbg !4034
  call void @llvm.dbg.value(metadata i1 %458, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i1 %458, metadata !3938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4028
  call void @llvm.dbg.value(metadata i32 1, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %54, metadata !3954, metadata !DIExpression()), !dbg !4030
  %459 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %457, i64 %54), !dbg !4032
  %460 = extractvalue { i64, i1 } %459, 1, !dbg !4032
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4030
  %461 = extractvalue { i64, i1 } %459, 0, !dbg !4033
  %462 = icmp slt i64 %457, 0, !dbg !4033
  %463 = select i1 %462, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4033
  %464 = select i1 %460, i64 %463, i64 %461, !dbg !4033
  %465 = or i1 %458, %460, !dbg !4034
  %466 = zext i1 %465 to i32, !dbg !4034
  call void @llvm.dbg.value(metadata i32 %466, metadata !3938, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4028
  br label %476, !dbg !3962

467:                                              ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !3949, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i32 2, metadata !3954, metadata !DIExpression()), !dbg !4035
  %468 = add i64 %31, 4611686018427387904, !dbg !4037
  %469 = icmp slt i64 %468, 0, !dbg !4037
  call void @llvm.dbg.value(metadata i64 poison, metadata !3955, metadata !DIExpression()), !dbg !4035
  %470 = shl i64 %31, 1, !dbg !4038
  %471 = icmp slt i64 %31, 0, !dbg !4038
  %472 = select i1 %471, i64 -9223372036854775808, i64 9223372036854775807, !dbg !4038
  %473 = select i1 %469, i64 %472, i64 %470, !dbg !4038
  %474 = lshr i64 %468, 63, !dbg !4038
  %475 = trunc i64 %474 to i32, !dbg !4038
  tail call void @llvm.dbg.value(metadata i64 %473, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %475, metadata !3882, metadata !DIExpression()), !dbg !3923
  br label %476, !dbg !4039

476:                                              ; preds = %56, %106, %438, %163, %227, %298, %423, %415, %393, %334, %377, %385, %467, %53
  %477 = phi i64 [ %473, %467 ], [ %31, %53 ], [ %391, %385 ], [ %383, %377 ], [ %374, %334 ], [ %412, %393 ], [ %421, %415 ], [ %435, %423 ], [ %331, %298 ], [ %295, %227 ], [ %224, %163 ], [ %464, %438 ], [ %160, %106 ], [ %103, %56 ], !dbg !3884
  %478 = phi i32 [ %475, %467 ], [ 0, %53 ], [ %392, %385 ], [ %384, %377 ], [ %376, %334 ], [ %414, %393 ], [ %422, %415 ], [ %437, %423 ], [ %333, %298 ], [ %297, %227 ], [ %226, %163 ], [ %466, %438 ], [ %162, %106 ], [ %105, %56 ], !dbg !4040
  tail call void @llvm.dbg.value(metadata i64 %477, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !3882, metadata !DIExpression()), !dbg !3923
  %479 = or i32 %478, %30, !dbg !3962
  tail call void @llvm.dbg.value(metadata i32 %479, metadata !3877, metadata !DIExpression()), !dbg !3884
  %480 = getelementptr inbounds i8, ptr %11, i64 %55, !dbg !4041
  store ptr %480, ptr %8, align 8, !dbg !4041, !tbaa !899
  %481 = load i8, ptr %480, align 1, !dbg !4042, !tbaa !979
  %482 = icmp eq i8 %481, 0, !dbg !4042
  %483 = or disjoint i32 %479, 2
  %484 = select i1 %482, i32 %479, i32 %483, !dbg !4044
  tail call void @llvm.dbg.value(metadata i32 %484, metadata !3877, metadata !DIExpression()), !dbg !3884
  br label %487

485:                                              ; preds = %53
  store i64 %31, ptr %3, align 8, !dbg !4045, !tbaa !2595
  %486 = or disjoint i32 %30, 2, !dbg !4046
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !3877, metadata !DIExpression()), !dbg !3884
  br label %490

487:                                              ; preds = %476, %29
  %488 = phi i64 [ %31, %29 ], [ %477, %476 ], !dbg !4047
  %489 = phi i32 [ %30, %29 ], [ %484, %476 ], !dbg !4048
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3876, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.dbg.value(metadata i32 %489, metadata !3877, metadata !DIExpression()), !dbg !3884
  store i64 %488, ptr %3, align 8, !dbg !4049, !tbaa !2595
  br label %490, !dbg !4050

490:                                              ; preds = %485, %22, %13, %15, %18, %487, %38, %28
  %491 = phi i32 [ %489, %487 ], [ %486, %485 ], [ %39, %38 ], [ %26, %28 ], [ 4, %18 ], [ 4, %15 ], [ 4, %13 ], [ 4, %22 ], !dbg !3884
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #38, !dbg !4051
  ret i32 %491, !dbg !4051
}

; Function Attrs: nounwind
declare !dbg !4052 i64 @strtoimax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4057 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4095, metadata !DIExpression()), !dbg !4100
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4101
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4096, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4100
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4102, metadata !DIExpression()), !dbg !4105
  %3 = load i32, ptr %0, align 8, !dbg !4107, !tbaa !4108
  %4 = and i32 %3, 32, !dbg !4109
  %5 = icmp eq i32 %4, 0, !dbg !4109
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4098, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4100
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4110
  %7 = icmp eq i32 %6, 0, !dbg !4111
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4099, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4100
  br i1 %5, label %8, label %18, !dbg !4112

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4114
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4096, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4100
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4115
  %11 = xor i1 %7, true, !dbg !4115
  %12 = sext i1 %11 to i32, !dbg !4115
  br i1 %10, label %21, label %13, !dbg !4115

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4116
  %15 = load i32, ptr %14, align 4, !dbg !4116, !tbaa !970
  %16 = icmp ne i32 %15, 9, !dbg !4117
  %17 = sext i1 %16 to i32, !dbg !4118
  br label %21, !dbg !4118

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4119

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4121
  store i32 0, ptr %20, align 4, !dbg !4123, !tbaa !970
  br label %21, !dbg !4121

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4100
  ret i32 %22, !dbg !4124
}

; Function Attrs: nounwind
declare !dbg !4125 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4129 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4167, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4168, metadata !DIExpression()), !dbg !4171
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4169, metadata !DIExpression()), !dbg !4171
  %3 = icmp slt i32 %2, 0, !dbg !4173
  br i1 %3, label %4, label %6, !dbg !4175

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4176
  br label %24, !dbg !4177

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4178
  %8 = icmp eq i32 %7, 0, !dbg !4178
  br i1 %8, label %13, label %9, !dbg !4180

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4181
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4182
  %12 = icmp eq i64 %11, -1, !dbg !4183
  br i1 %12, label %16, label %13, !dbg !4184

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4185
  %15 = icmp eq i32 %14, 0, !dbg !4185
  br i1 %15, label %16, label %18, !dbg !4186

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4168, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4170, metadata !DIExpression()), !dbg !4171
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4170, metadata !DIExpression()), !dbg !4171
  br label %24, !dbg !4188

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4189
  %20 = load i32, ptr %19, align 4, !dbg !4189, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4168, metadata !DIExpression()), !dbg !4171
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4170, metadata !DIExpression()), !dbg !4171
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4187
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4170, metadata !DIExpression()), !dbg !4171
  %22 = icmp eq i32 %20, 0, !dbg !4190
  br i1 %22, label %24, label %23, !dbg !4188

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4192, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4170, metadata !DIExpression()), !dbg !4171
  br label %24, !dbg !4194

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4171
  ret i32 %25, !dbg !4195
}

; Function Attrs: nofree nounwind
declare !dbg !4196 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4197 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4198 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4199 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4237, metadata !DIExpression()), !dbg !4238
  %2 = icmp eq ptr %0, null, !dbg !4239
  br i1 %2, label %6, label %3, !dbg !4241

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4242
  %5 = icmp eq i32 %4, 0, !dbg !4242
  br i1 %5, label %6, label %8, !dbg !4243

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4244
  br label %16, !dbg !4245

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4246, metadata !DIExpression()), !dbg !4251
  %9 = load i32, ptr %0, align 8, !dbg !4253, !tbaa !4108
  %10 = and i32 %9, 256, !dbg !4255
  %11 = icmp eq i32 %10, 0, !dbg !4255
  br i1 %11, label %14, label %12, !dbg !4256

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4257
  br label %14, !dbg !4257

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4258
  br label %16, !dbg !4259

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4238
  ret i32 %17, !dbg !4260
}

; Function Attrs: nofree nounwind
declare !dbg !4261 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4262 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4306
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4306
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4302, metadata !DIExpression()), !dbg !4306
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4307
  %5 = load ptr, ptr %4, align 8, !dbg !4307, !tbaa !4308
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4309
  %7 = load ptr, ptr %6, align 8, !dbg !4309, !tbaa !4310
  %8 = icmp eq ptr %5, %7, !dbg !4311
  br i1 %8, label %9, label %27, !dbg !4312

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4313
  %11 = load ptr, ptr %10, align 8, !dbg !4313, !tbaa !1658
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4314
  %13 = load ptr, ptr %12, align 8, !dbg !4314, !tbaa !4315
  %14 = icmp eq ptr %11, %13, !dbg !4316
  br i1 %14, label %15, label %27, !dbg !4317

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4318
  %17 = load ptr, ptr %16, align 8, !dbg !4318, !tbaa !4319
  %18 = icmp eq ptr %17, null, !dbg !4320
  br i1 %18, label %19, label %27, !dbg !4321

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4322
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4323
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4303, metadata !DIExpression()), !dbg !4324
  %22 = icmp eq i64 %21, -1, !dbg !4325
  br i1 %22, label %29, label %23, !dbg !4327

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4328, !tbaa !4108
  %25 = and i32 %24, -17, !dbg !4328
  store i32 %25, ptr %0, align 8, !dbg !4328, !tbaa !4108
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4329
  store i64 %21, ptr %26, align 8, !dbg !4330, !tbaa !4331
  br label %29, !dbg !4332

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4333
  br label %29, !dbg !4334

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4306
  ret i32 %30, !dbg !4335
}

; Function Attrs: nofree nounwind
declare !dbg !4336 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4339 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4344, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4345, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4346, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4347, metadata !DIExpression()), !dbg !4349
  %5 = icmp eq ptr %1, null, !dbg !4350
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4352
  %7 = select i1 %5, ptr @.str.157, ptr %1, !dbg !4352
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4352
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4346, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4345, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4344, metadata !DIExpression()), !dbg !4349
  %9 = icmp eq ptr %3, null, !dbg !4353
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4355
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4347, metadata !DIExpression()), !dbg !4349
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !4356
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4348, metadata !DIExpression()), !dbg !4349
  %12 = icmp ult i64 %11, -3, !dbg !4357
  br i1 %12, label %13, label %17, !dbg !4359

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !4360
  %15 = icmp eq i32 %14, 0, !dbg !4360
  br i1 %15, label %16, label %29, !dbg !4361

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4362, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr %10, metadata !4369, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i32 0, metadata !4372, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i64 8, metadata !4373, metadata !DIExpression()), !dbg !4374
  store i64 0, ptr %10, align 1, !dbg !4376
  br label %29, !dbg !4377

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4378
  br i1 %18, label %19, label %20, !dbg !4380

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4381
  unreachable, !dbg !4381

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4382

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4384
  br i1 %23, label %29, label %24, !dbg !4385

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4386
  br i1 %25, label %29, label %26, !dbg !4389

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4390, !tbaa !979
  %28 = zext i8 %27 to i32, !dbg !4391
  store i32 %28, ptr %6, align 4, !dbg !4392, !tbaa !970
  br label %29, !dbg !4393

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4349
  ret i64 %30, !dbg !4394
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4395 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4403, metadata !DIExpression()), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4404, metadata !DIExpression()), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4405, metadata !DIExpression()), !dbg !4407
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4408
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4408
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4406, metadata !DIExpression()), !dbg !4407
  br i1 %5, label %6, label %8, !dbg !4410

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !4411
  store i32 12, ptr %7, align 4, !dbg !4413, !tbaa !970
  br label %12, !dbg !4414

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4408
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata ptr %0, metadata !4415, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %9, metadata !4418, metadata !DIExpression()), !dbg !4419
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4421
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #44, !dbg !4422
  br label %12, !dbg !4423

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4407
  ret ptr %13, !dbg !4424
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4425 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4434
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4430, metadata !DIExpression(), metadata !4434, metadata ptr %2, metadata !DIExpression()), !dbg !4435
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4429, metadata !DIExpression()), !dbg !4435
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4436
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4437
  %4 = icmp eq i32 %3, 0, !dbg !4437
  br i1 %4, label %5, label %12, !dbg !4439

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4440, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.value(metadata !938, metadata !4443, metadata !DIExpression()), !dbg !4444
  %6 = load i16, ptr %2, align 16, !dbg !4447
  %7 = icmp eq i16 %6, 67, !dbg !4447
  br i1 %7, label %11, label %8, !dbg !4448

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4440, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata ptr @.str.1.162, metadata !4443, metadata !DIExpression()), !dbg !4449
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.162, i64 6), !dbg !4451
  %10 = icmp eq i32 %9, 0, !dbg !4452
  br i1 %10, label %11, label %12, !dbg !4453

11:                                               ; preds = %8, %5
  br label %12, !dbg !4454

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4435
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4455
  ret i1 %13, !dbg !4455
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4456 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4460, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4461, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4462, metadata !DIExpression()), !dbg !4463
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4464
  ret i32 %4, !dbg !4465
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4466 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4470, metadata !DIExpression()), !dbg !4471
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4472
  ret ptr %2, !dbg !4473
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4474 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4476, metadata !DIExpression()), !dbg !4478
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4479
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4477, metadata !DIExpression()), !dbg !4478
  ret ptr %2, !dbg !4480
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4481 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4483, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4484, metadata !DIExpression()), !dbg !4490
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4485, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i32 %0, metadata !4476, metadata !DIExpression()), !dbg !4491
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4493
  call void @llvm.dbg.value(metadata ptr %4, metadata !4477, metadata !DIExpression()), !dbg !4491
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4486, metadata !DIExpression()), !dbg !4490
  %5 = icmp eq ptr %4, null, !dbg !4494
  br i1 %5, label %6, label %9, !dbg !4495

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4496
  br i1 %7, label %19, label %8, !dbg !4499

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4500, !tbaa !979
  br label %19, !dbg !4501

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4502
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4487, metadata !DIExpression()), !dbg !4503
  %11 = icmp ult i64 %10, %2, !dbg !4504
  br i1 %11, label %12, label %14, !dbg !4506

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %1, metadata !4509, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata ptr %4, metadata !4512, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i64 %13, metadata !4513, metadata !DIExpression()), !dbg !4514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4516
  br label %19, !dbg !4517

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4518
  br i1 %15, label %19, label %16, !dbg !4521

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4522
  call void @llvm.dbg.value(metadata ptr %1, metadata !4509, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %4, metadata !4512, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %17, metadata !4513, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4526
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4527
  store i8 0, ptr %18, align 1, !dbg !4528, !tbaa !979
  br label %19, !dbg !4529

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4530
  ret i32 %20, !dbg !4531
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
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !460, !464, !479, !756, !791, !527, !541, !592, !793, !748, !800, !835, !837, !856, !862, !864, !866, !868, !775, !870, !872, !876, !878}
!llvm.ident = !{!880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880, !880}
!llvm.module.flags = !{!881, !882, !883, !884, !885, !886, !887}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/truncate.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8bafe287eed9afb172df3b934b446926")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 29)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2200, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 275)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 77)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 45)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 68)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !24, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 62)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1528, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 191)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 10)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 7)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "longopts", scope: !76, file: !2, line: 47, type: !443, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/truncate.o -MD -MP -MF src/.deps/truncate.Tpo -c src/truncate.c -o src/.truncate.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !122, globals: !140, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !87, !102, !108}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 58, baseType: !79, size: 32, elements: !80)
!79 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!80 = !{!81, !82, !83, !84, !85, !86}
!81 = !DIEnumerator(name: "rm_abs", value: 0)
!82 = !DIEnumerator(name: "rm_rel", value: 1)
!83 = !DIEnumerator(name: "rm_min", value: 2)
!84 = !DIEnumerator(name: "rm_max", value: 3)
!85 = !DIEnumerator(name: "rm_rdn", value: 4)
!86 = !DIEnumerator(name: "rm_rup", value: 5)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 46, baseType: !79, size: 32, elements: !89)
!88 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!90 = !DIEnumerator(name: "_ISupper", value: 256)
!91 = !DIEnumerator(name: "_ISlower", value: 512)
!92 = !DIEnumerator(name: "_ISalpha", value: 1024)
!93 = !DIEnumerator(name: "_ISdigit", value: 2048)
!94 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!95 = !DIEnumerator(name: "_ISspace", value: 8192)
!96 = !DIEnumerator(name: "_ISprint", value: 16384)
!97 = !DIEnumerator(name: "_ISgraph", value: 32768)
!98 = !DIEnumerator(name: "_ISblank", value: 1)
!99 = !DIEnumerator(name: "_IScntrl", value: 2)
!100 = !DIEnumerator(name: "_ISpunct", value: 4)
!101 = !DIEnumerator(name: "_ISalnum", value: 8)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 337, baseType: !104, size: 32, elements: !105)
!103 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !{!106, !107}
!106 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!107 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !109, line: 42, baseType: !79, size: 32, elements: !110)
!109 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!111 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!112 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!113 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!114 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!115 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!116 = !DIEnumerator(name: "c_quoting_style", value: 5)
!117 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!118 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!119 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!120 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!121 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!122 = !{!104, !123, !124, !129, !130, !131, !134, !136, !137}
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !125, line: 63, baseType: !126)
!125 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !127, line: 152, baseType: !128)
!127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!128 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 18, baseType: !133)
!132 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!136 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !138, line: 101, baseType: !139)
!138 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !127, line: 72, baseType: !128)
!140 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !49, !54, !59, !64, !69, !141, !146, !151, !156, !161, !166, !168, !170, !175, !177, !182, !184, !189, !191, !196, !198, !203, !208, !213, !216, !218, !220, !225, !304, !309, !311, !316, !321, !326, !328, !330, !335, !337, !339, !341, !343, !348, !350, !352, !354, !356, !358, !360, !362, !367, !369, !374, !376, !378, !380, !382, !387, !389, !394, !396, !398, !403, !405, !410, !412, !414, !416, !418, !420, !422, !74, !424, !426, !431, !436, !441}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 38)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 16)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 15)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 17)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 14)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !163, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !153, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 33)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !71, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 12)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !3, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 32)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !179, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 21)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !153, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 26)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 27)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 19)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "no_create", scope: !76, file: !2, line: 39, type: !215, isLocal: true, isDefinition: true)
!215 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "block_mode", scope: !76, file: !2, line: 42, type: !215, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "ref_file", scope: !76, file: !2, line: 45, type: !134, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !103, line: 736, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 75)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !227, file: !103, line: 575, type: !104, isLocal: true, isDefinition: true)
!227 = distinct !DISubprogram(name: "oputs_", scope: !103, file: !103, line: 573, type: !228, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !230)
!228 = !DISubroutineType(cc: DW_CC_nocall, types: !229)
!229 = !{null, !134, !134}
!230 = !{!231, !232, !233, !236, !237, !238, !239, !243, !244, !245, !246, !248, !298, !299, !300, !302, !303}
!231 = !DILocalVariable(name: "program", arg: 1, scope: !227, file: !103, line: 573, type: !134)
!232 = !DILocalVariable(name: "option", arg: 2, scope: !227, file: !103, line: 573, type: !134)
!233 = !DILocalVariable(name: "term", scope: !234, file: !103, line: 585, type: !134)
!234 = distinct !DILexicalBlock(scope: !235, file: !103, line: 582, column: 5)
!235 = distinct !DILexicalBlock(scope: !227, file: !103, line: 581, column: 7)
!236 = !DILocalVariable(name: "double_space", scope: !227, file: !103, line: 594, type: !215)
!237 = !DILocalVariable(name: "first_word", scope: !227, file: !103, line: 595, type: !134)
!238 = !DILocalVariable(name: "option_text", scope: !227, file: !103, line: 596, type: !134)
!239 = !DILocalVariable(name: "s", scope: !240, file: !103, line: 608, type: !134)
!240 = distinct !DILexicalBlock(scope: !241, file: !103, line: 605, column: 5)
!241 = distinct !DILexicalBlock(scope: !242, file: !103, line: 604, column: 12)
!242 = distinct !DILexicalBlock(scope: !227, file: !103, line: 597, column: 7)
!243 = !DILocalVariable(name: "spaces", scope: !240, file: !103, line: 609, type: !131)
!244 = !DILocalVariable(name: "anchor_len", scope: !227, file: !103, line: 620, type: !131)
!245 = !DILocalVariable(name: "desc_text", scope: !227, file: !103, line: 625, type: !134)
!246 = !DILocalVariable(name: "__ptr", scope: !247, file: !103, line: 644, type: !134)
!247 = distinct !DILexicalBlock(scope: !227, file: !103, line: 644, column: 3)
!248 = !DILocalVariable(name: "__stream", scope: !247, file: !103, line: 644, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !270, !272, !273, !274, !275, !276, !278, !279, !282, !284, !287, !290, !291, !292, !293, !294}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !252, file: !253, line: 51, baseType: !104, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !252, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !252, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !252, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !252, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !252, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !252, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !252, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !252, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !252, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !252, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !252, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !252, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !253, line: 36, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !252, file: !253, line: 70, baseType: !271, size: 64, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !252, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !252, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !252, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !252, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !252, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!277 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !252, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !252, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !253, line: 43, baseType: null)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !252, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !127, line: 153, baseType: !128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !252, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !253, line: 37, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !252, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !253, line: 38, flags: DIFlagFwdDecl)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !252, file: !253, line: 93, baseType: !271, size: 64, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !252, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !252, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !252, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !252, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 20)
!298 = !DILocalVariable(name: "__cnt", scope: !247, file: !103, line: 644, type: !131)
!299 = !DILocalVariable(name: "url_program", scope: !227, file: !103, line: 648, type: !134)
!300 = !DILocalVariable(name: "__ptr", scope: !301, file: !103, line: 686, type: !134)
!301 = distinct !DILexicalBlock(scope: !227, file: !103, line: 686, column: 3)
!302 = !DILocalVariable(name: "__stream", scope: !301, file: !103, line: 686, type: !249)
!303 = !DILocalVariable(name: "__cnt", scope: !301, file: !103, line: 686, type: !131)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !103, line: 585, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 5)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !103, line: 586, type: !306, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !103, line: 595, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !103, line: 620, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 6)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !103, line: 648, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 2)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !103, line: 648, type: !306, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !103, line: 649, type: !313, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !103, line: 649, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 3)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !103, line: 650, type: !306, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !103, line: 651, type: !318, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !103, line: 651, type: !318, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !103, line: 652, type: !71, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !103, line: 653, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 8)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !103, line: 654, type: !61, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !103, line: 655, type: !61, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !103, line: 656, type: !61, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !103, line: 657, type: !61, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !103, line: 663, type: !71, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !103, line: 664, type: !61, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !103, line: 669, type: !158, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !103, line: 669, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 40)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !103, line: 676, type: !153, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !103, line: 676, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 61)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !103, line: 679, type: !332, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !103, line: 683, type: !306, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !103, line: 688, type: !306, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !103, line: 691, type: !345, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !103, line: 744, type: !384, isLocal: true, isDefinition: true)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1728, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 216)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !103, line: 839, type: !148, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !103, line: 840, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 22)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !103, line: 841, type: !153, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !103, line: 862, type: !313, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !103, line: 868, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 71)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !103, line: 875, type: !205, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !103, line: 877, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 51)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !103, line: 877, type: !179, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !61, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !61, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !61, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !306, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !306, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !345, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !148, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 46)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 42)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !438, isLocal: true, isDefinition: true)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 35)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !438, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 1792, elements: !72)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !446, line: 50, size: 256, elements: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!447 = !{!448, !449, !450, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !446, line: 52, baseType: !134, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !445, file: !446, line: 55, baseType: !104, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !445, file: !446, line: 56, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !445, file: !446, line: 57, baseType: !104, size: 32, offset: 192)
!453 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!454 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !457, line: 3, type: !153, isLocal: true, isDefinition: true)
!457 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "Version", scope: !460, file: !457, line: 3, type: !134, isLocal: false, isDefinition: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C11, file: !457, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !461, splitDebugInlining: false, nameTableKind: None)
!461 = !{!455, !458}
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "file_name", scope: !464, file: !465, line: 45, type: !134, isLocal: true, isDefinition: true)
!464 = distinct !DICompileUnit(language: DW_LANG_C11, file: !465, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !466, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!466 = !{!467, !469, !471, !473, !462, !475}
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !465, line: 121, type: !71, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !465, line: 121, type: !179, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !465, line: 123, type: !71, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !465, line: 126, type: !332, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !464, file: !465, line: 55, type: !215, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !479, file: !480, line: 66, type: !522, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!481 = !{!130, !136}
!482 = !{!483, !485, !504, !506, !508, !510, !477, !512, !514, !516, !518, !520}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !480, line: 272, type: !306, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "old_file_name", scope: !487, file: !480, line: 304, type: !134, isLocal: true, isDefinition: true)
!487 = distinct !DISubprogram(name: "verror_at_line", scope: !480, file: !480, line: 298, type: !488, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !497)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !104, !104, !134, !79, !134, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !492)
!492 = !{!493, !494, !495, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !491, file: !480, baseType: !79, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !491, file: !480, baseType: !79, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !491, file: !480, baseType: !130, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !491, file: !480, baseType: !130, size: 64, offset: 128)
!497 = !{!498, !499, !500, !501, !502, !503}
!498 = !DILocalVariable(name: "status", arg: 1, scope: !487, file: !480, line: 298, type: !104)
!499 = !DILocalVariable(name: "errnum", arg: 2, scope: !487, file: !480, line: 298, type: !104)
!500 = !DILocalVariable(name: "file_name", arg: 3, scope: !487, file: !480, line: 298, type: !134)
!501 = !DILocalVariable(name: "line_number", arg: 4, scope: !487, file: !480, line: 298, type: !79)
!502 = !DILocalVariable(name: "message", arg: 5, scope: !487, file: !480, line: 298, type: !134)
!503 = !DILocalVariable(name: "args", arg: 6, scope: !487, file: !480, line: 298, type: !490)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "old_line_number", scope: !487, file: !480, line: 305, type: !79, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !480, line: 338, type: !313, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !345, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !480, line: 346, type: !323, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "error_message_count", scope: !479, file: !480, line: 69, type: !79, isLocal: false, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !479, file: !480, line: 295, type: !104, isLocal: false, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !71, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !480, line: 208, type: !193, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !480, line: 214, type: !306, isLocal: true, isDefinition: true)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null}
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "program_name", scope: !527, file: !528, line: 31, type: !134, isLocal: false, isDefinition: true)
!527 = distinct !DICompileUnit(language: DW_LANG_C11, file: !528, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !529, globals: !530, splitDebugInlining: false, nameTableKind: None)
!528 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!529 = !{!130, !129}
!530 = !{!525, !531, !533}
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !528, line: 46, type: !345, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !528, line: 49, type: !313, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "utf07FF", scope: !537, file: !538, line: 46, type: !565, isLocal: true, isDefinition: true)
!537 = distinct !DISubprogram(name: "proper_name_lite", scope: !538, file: !538, line: 38, type: !539, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !543)
!538 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!539 = !DISubroutineType(types: !540)
!540 = !{!134, !134, !134}
!541 = distinct !DICompileUnit(language: DW_LANG_C11, file: !538, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !542, splitDebugInlining: false, nameTableKind: None)
!542 = !{!535}
!543 = !{!544, !545, !546, !547, !552}
!544 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !537, file: !538, line: 38, type: !134)
!545 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !537, file: !538, line: 38, type: !134)
!546 = !DILocalVariable(name: "translation", scope: !537, file: !538, line: 40, type: !134)
!547 = !DILocalVariable(name: "w", scope: !537, file: !538, line: 47, type: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !549, line: 37, baseType: !550)
!549 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !127, line: 57, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !127, line: 42, baseType: !79)
!552 = !DILocalVariable(name: "mbs", scope: !537, file: !538, line: 48, type: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !554, line: 6, baseType: !555)
!554 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !556, line: 21, baseType: !557)
!556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !556, line: 13, size: 64, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !557, file: !556, line: 15, baseType: !104, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !557, file: !556, line: 20, baseType: !561, size: 32, offset: 32)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !556, line: 16, size: 32, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !561, file: !556, line: 18, baseType: !79, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !561, file: !556, line: 19, baseType: !313, size: 32)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16, elements: !324)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !568, line: 78, type: !345, isLocal: true, isDefinition: true)
!568 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !568, line: 79, type: !318, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !568, line: 80, type: !573, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 13)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !568, line: 81, type: !573, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !568, line: 82, type: !295, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !568, line: 83, type: !323, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !568, line: 84, type: !345, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !568, line: 85, type: !71, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !568, line: 86, type: !71, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !568, line: 87, type: !345, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !592, file: !568, line: 76, type: !666, isLocal: false, isDefinition: true)
!592 = distinct !DICompileUnit(language: DW_LANG_C11, file: !568, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !593, retainedTypes: !601, globals: !602, splitDebugInlining: false, nameTableKind: None)
!593 = !{!594, !596, !87}
!594 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !595, line: 42, baseType: !79, size: 32, elements: !110)
!595 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!596 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !595, line: 254, baseType: !79, size: 32, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!599 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!600 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!601 = !{!130, !104, !123, !131}
!602 = !{!566, !569, !571, !576, !578, !580, !582, !584, !586, !588, !590, !603, !607, !617, !619, !624, !626, !628, !630, !632, !655, !662, !664}
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !592, file: !568, line: 92, type: !605, isLocal: false, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 320, elements: !62)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !592, file: !568, line: 1040, type: !609, isLocal: false, isDefinition: true)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !568, line: 56, size: 448, elements: !610)
!610 = !{!611, !612, !613, !615, !616}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !609, file: !568, line: 59, baseType: !594, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !568, line: 62, baseType: !104, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !609, file: !568, line: 66, baseType: !614, size: 256, offset: 64)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !346)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !609, file: !568, line: 69, baseType: !134, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !609, file: !568, line: 72, baseType: !134, size: 64, offset: 384)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !592, file: !568, line: 107, type: !609, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "slot0", scope: !592, file: !568, line: 831, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 256)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !568, line: 321, type: !323, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !568, line: 357, type: !323, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !568, line: 358, type: !323, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !568, line: 199, type: !71, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "quote", scope: !634, file: !568, line: 228, type: !653, isLocal: true, isDefinition: true)
!634 = distinct !DISubprogram(name: "gettext_quote", scope: !568, file: !568, line: 197, type: !635, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!134, !134, !594}
!637 = !{!638, !639, !640, !641, !642}
!638 = !DILocalVariable(name: "msgid", arg: 1, scope: !634, file: !568, line: 197, type: !134)
!639 = !DILocalVariable(name: "s", arg: 2, scope: !634, file: !568, line: 197, type: !594)
!640 = !DILocalVariable(name: "translation", scope: !634, file: !568, line: 199, type: !134)
!641 = !DILocalVariable(name: "w", scope: !634, file: !568, line: 229, type: !548)
!642 = !DILocalVariable(name: "mbs", scope: !634, file: !568, line: 230, type: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !554, line: 6, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !556, line: 21, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !556, line: 13, size: 64, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !645, file: !556, line: 15, baseType: !104, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !645, file: !556, line: 20, baseType: !649, size: 32, offset: 32)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !556, line: 16, size: 32, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !649, file: !556, line: 18, baseType: !79, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !649, file: !556, line: 19, baseType: !313, size: 32)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !654)
!654 = !{!325, !315}
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "slotvec", scope: !592, file: !568, line: 834, type: !657, isLocal: true, isDefinition: true)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !568, line: 823, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !658, file: !568, line: 825, baseType: !131, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !658, file: !568, line: 826, baseType: !129, size: 64, offset: 64)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "nslots", scope: !592, file: !568, line: 832, type: !104, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "slotvec0", scope: !592, file: !568, line: 833, type: !658, isLocal: true, isDefinition: true)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 704, elements: !668)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!668 = !{!669}
!669 = !DISubrange(count: 11)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !672, line: 67, type: !179, isLocal: true, isDefinition: true)
!672 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !672, line: 69, type: !71, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !672, line: 83, type: !71, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !672, line: 83, type: !313, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !672, line: 85, type: !323, isLocal: true, isDefinition: true)
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
!692 = distinct !DIGlobalVariable(scope: null, file: !672, line: 105, type: !148, isLocal: true, isDefinition: true)
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
!704 = distinct !DIGlobalVariable(scope: null, file: !672, line: 120, type: !186, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !672, line: 127, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 36)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !672, line: 134, type: !364, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !672, line: 142, type: !714, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 44)
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !672, line: 150, type: !719, isLocal: true, isDefinition: true)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 48)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !672, line: 159, type: !724, isLocal: true, isDefinition: true)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 52)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !672, line: 170, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 60)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !672, line: 248, type: !295, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !672, line: 248, type: !391, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !295, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !163, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !672, line: 254, type: !364, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !672, line: 259, type: !3, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !672, line: 259, type: !9, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !748, file: !749, line: 26, type: !751, isLocal: false, isDefinition: true)
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !750, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!750 = !{!746}
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 376, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 47)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(name: "exit_failure", scope: !756, file: !757, line: 24, type: !759, isLocal: false, isDefinition: true)
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !758, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!758 = !{!754}
!759 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !762, line: 34, type: !332, isLocal: true, isDefinition: true)
!762 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !762, line: 34, type: !71, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !762, line: 34, type: !158, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !769, line: 80, type: !71, isLocal: true, isDefinition: true)
!769 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !772, line: 108, type: !56, isLocal: true, isDefinition: true)
!772 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "internal_state", scope: !775, file: !772, line: 97, type: !778, isLocal: true, isDefinition: true)
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !776, globals: !777, splitDebugInlining: false, nameTableKind: None)
!776 = !{!130, !131, !136}
!777 = !{!770, !773}
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !554, line: 6, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !556, line: 21, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !556, line: 13, size: 64, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !780, file: !556, line: 15, baseType: !104, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !780, file: !556, line: 20, baseType: !784, size: 32, offset: 32)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !556, line: 16, size: 32, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !784, file: !556, line: 18, baseType: !79, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !784, file: !556, line: 19, baseType: !313, size: 32)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !790, line: 35, type: !318, isLocal: true, isDefinition: true)
!790 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !794, retainedTypes: !798, globals: !799, splitDebugInlining: false, nameTableKind: None)
!794 = !{!795}
!795 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !672, line: 40, baseType: !79, size: 32, elements: !796)
!796 = !{!797}
!797 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!798 = !{!130}
!799 = !{!670, !673, !675, !677, !679, !681, !686, !691, !693, !698, !703, !705, !710, !712, !717, !722, !727, !732, !734, !736, !738, !740, !742, !744}
!800 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !802, retainedTypes: !834, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!802 = !{!803, !815}
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !804, file: !801, line: 188, baseType: !79, size: 32, elements: !813)
!804 = distinct !DISubprogram(name: "x2nrealloc", scope: !801, file: !801, line: 176, type: !805, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !808)
!805 = !DISubroutineType(types: !806)
!806 = !{!130, !130, !807, !131}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!808 = !{!809, !810, !811, !812}
!809 = !DILocalVariable(name: "p", arg: 1, scope: !804, file: !801, line: 176, type: !130)
!810 = !DILocalVariable(name: "pn", arg: 2, scope: !804, file: !801, line: 176, type: !807)
!811 = !DILocalVariable(name: "s", arg: 3, scope: !804, file: !801, line: 176, type: !131)
!812 = !DILocalVariable(name: "n", scope: !804, file: !801, line: 178, type: !131)
!813 = !{!814}
!814 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!815 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !816, file: !801, line: 228, baseType: !79, size: 32, elements: !813)
!816 = distinct !DISubprogram(name: "xpalloc", scope: !801, file: !801, line: 223, type: !817, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !824)
!817 = !DISubroutineType(types: !818)
!818 = !{!130, !130, !819, !820, !822, !820}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !821, line: 130, baseType: !822)
!821 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !823, line: 18, baseType: !128)
!823 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833}
!825 = !DILocalVariable(name: "pa", arg: 1, scope: !816, file: !801, line: 223, type: !130)
!826 = !DILocalVariable(name: "pn", arg: 2, scope: !816, file: !801, line: 223, type: !819)
!827 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !816, file: !801, line: 223, type: !820)
!828 = !DILocalVariable(name: "n_max", arg: 4, scope: !816, file: !801, line: 223, type: !822)
!829 = !DILocalVariable(name: "s", arg: 5, scope: !816, file: !801, line: 223, type: !820)
!830 = !DILocalVariable(name: "n0", scope: !816, file: !801, line: 230, type: !820)
!831 = !DILocalVariable(name: "n", scope: !816, file: !801, line: 237, type: !820)
!832 = !DILocalVariable(name: "nbytes", scope: !816, file: !801, line: 248, type: !820)
!833 = !DILocalVariable(name: "adjusted_nbytes", scope: !816, file: !801, line: 252, type: !820)
!834 = !{!129, !130}
!835 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !836, splitDebugInlining: false, nameTableKind: None)
!836 = !{!760, !763, !765}
!837 = distinct !DICompileUnit(language: DW_LANG_C11, file: !838, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoimax.Tpo -c lib/xdectoimax.c -o lib/.libcoreutils_a-xdectoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !839, globals: !855, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "lib/xdectoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "42ac5dbff69ece7310ee4220582d5072")
!839 = !{!840, !848}
!840 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !841, line: 30, baseType: !79, size: 32, elements: !842)
!841 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!842 = !{!843, !844, !845, !846, !847}
!843 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!844 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!845 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!846 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!847 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!848 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !849, line: 24, baseType: !79, size: 32, elements: !850)
!849 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!850 = !{!851, !852, !853, !854}
!851 = !DIEnumerator(name: "XTOINT_MIN_QUIET", value: 1)
!852 = !DIEnumerator(name: "XTOINT_MAX_QUIET", value: 2)
!853 = !DIEnumerator(name: "XTOINT_MIN_RANGE", value: 4)
!854 = !DIEnumerator(name: "XTOINT_MAX_RANGE", value: 8)
!855 = !{!767}
!856 = distinct !DICompileUnit(language: DW_LANG_C11, file: !857, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoimax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoimax.Tpo -c lib/xstrtoimax.c -o lib/.libcoreutils_a-xstrtoimax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !858, retainedTypes: !861, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!858 = !{!859}
!859 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !860, line: 30, baseType: !79, size: 32, elements: !842)
!860 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!861 = !{!137}
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!864 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!866 = distinct !DICompileUnit(language: DW_LANG_C11, file: !867, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!872 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !873, splitDebugInlining: false, nameTableKind: None)
!873 = !{!874, !788}
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !790, line: 35, type: !323, isLocal: true, isDefinition: true)
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !879, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !798, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!880 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!881 = !{i32 7, !"Dwarf Version", i32 5}
!882 = !{i32 2, !"Debug Info Version", i32 3}
!883 = !{i32 1, !"wchar_size", i32 4}
!884 = !{i32 8, !"PIC Level", i32 2}
!885 = !{i32 7, !"PIE Level", i32 2}
!886 = !{i32 7, !"uwtable", i32 2}
!887 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!888 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 62, type: !889, scopeLine: 63, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !891)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !104}
!891 = !{!892}
!892 = !DILocalVariable(name: "status", arg: 1, scope: !888, file: !2, line: 62, type: !104)
!893 = !DILocation(line: 0, scope: !888)
!894 = !DILocation(line: 64, column: 14, scope: !895)
!895 = distinct !DILexicalBlock(scope: !888, file: !2, line: 64, column: 7)
!896 = !DILocation(line: 64, column: 7, scope: !888)
!897 = !DILocation(line: 65, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !2, line: 65, column: 5)
!899 = !{!900, !900, i64 0}
!900 = !{!"any pointer", !901, i64 0}
!901 = !{!"omnipotent char", !902, i64 0}
!902 = !{!"Simple C/C++ TBAA"}
!903 = !DILocation(line: 68, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !895, file: !2, line: 67, column: 5)
!905 = !DILocation(line: 69, column: 7, scope: !904)
!906 = !DILocation(line: 736, column: 3, scope: !907, inlinedAt: !908)
!907 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !103, file: !103, line: 734, type: !523, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!908 = distinct !DILocation(line: 79, column: 7, scope: !904)
!909 = !DILocation(line: 81, column: 7, scope: !904)
!910 = !DILocation(line: 84, column: 7, scope: !904)
!911 = !DILocation(line: 87, column: 7, scope: !904)
!912 = !DILocation(line: 90, column: 7, scope: !904)
!913 = !DILocation(line: 93, column: 7, scope: !904)
!914 = !DILocation(line: 94, column: 7, scope: !904)
!915 = !DILocation(line: 744, column: 3, scope: !916, inlinedAt: !917)
!916 = distinct !DISubprogram(name: "emit_size_note", scope: !103, file: !103, line: 742, type: !523, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!917 = distinct !DILocation(line: 95, column: 7, scope: !904)
!918 = !DILocation(line: 96, column: 7, scope: !904)
!919 = !DILocalVariable(name: "program", arg: 1, scope: !920, file: !103, line: 836, type: !134)
!920 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !103, file: !103, line: 836, type: !921, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !134}
!923 = !{!919, !924, !931, !932, !934, !935}
!924 = !DILocalVariable(name: "infomap", scope: !920, file: !103, line: 838, type: !925)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 896, elements: !72)
!926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !920, file: !103, line: 838, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !927, file: !103, line: 838, baseType: !134, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !927, file: !103, line: 838, baseType: !134, size: 64, offset: 64)
!931 = !DILocalVariable(name: "node", scope: !920, file: !103, line: 848, type: !134)
!932 = !DILocalVariable(name: "map_prog", scope: !920, file: !103, line: 849, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!934 = !DILocalVariable(name: "lc_messages", scope: !920, file: !103, line: 861, type: !134)
!935 = !DILocalVariable(name: "url_program", scope: !920, file: !103, line: 874, type: !134)
!936 = !DILocation(line: 0, scope: !920, inlinedAt: !937)
!937 = distinct !DILocation(line: 100, column: 7, scope: !904)
!938 = !{}
!939 = !DILocation(line: 857, column: 3, scope: !920, inlinedAt: !937)
!940 = !DILocation(line: 861, column: 29, scope: !920, inlinedAt: !937)
!941 = !DILocation(line: 862, column: 7, scope: !942, inlinedAt: !937)
!942 = distinct !DILexicalBlock(scope: !920, file: !103, line: 862, column: 7)
!943 = !DILocation(line: 862, column: 19, scope: !942, inlinedAt: !937)
!944 = !DILocation(line: 862, column: 22, scope: !942, inlinedAt: !937)
!945 = !DILocation(line: 862, column: 7, scope: !920, inlinedAt: !937)
!946 = !DILocation(line: 868, column: 7, scope: !947, inlinedAt: !937)
!947 = distinct !DILexicalBlock(scope: !942, file: !103, line: 863, column: 5)
!948 = !DILocation(line: 870, column: 5, scope: !947, inlinedAt: !937)
!949 = !DILocation(line: 875, column: 3, scope: !920, inlinedAt: !937)
!950 = !DILocation(line: 877, column: 3, scope: !920, inlinedAt: !937)
!951 = !DILocation(line: 102, column: 3, scope: !888)
!952 = !DISubprogram(name: "dcgettext", scope: !953, file: !953, line: 51, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!954 = !DISubroutineType(types: !955)
!955 = !{!129, !134, !134, !104}
!956 = !DISubprogram(name: "__fprintf_chk", scope: !957, file: !957, line: 93, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!958 = !DISubroutineType(types: !959)
!959 = !{!104, !960, !104, !961, null}
!960 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !249)
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!962 = !DISubprogram(name: "__printf_chk", scope: !957, file: !957, line: 95, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubroutineType(types: !964)
!964 = !{!104, !104, !961, null}
!965 = !DISubprogram(name: "fputs_unlocked", scope: !125, file: !125, line: 691, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DISubroutineType(types: !967)
!967 = !{!104, !961, !960}
!968 = !DILocation(line: 0, scope: !227)
!969 = !DILocation(line: 581, column: 7, scope: !235)
!970 = !{!971, !971, i64 0}
!971 = !{!"int", !901, i64 0}
!972 = !DILocation(line: 581, column: 19, scope: !235)
!973 = !DILocation(line: 581, column: 7, scope: !227)
!974 = !DILocation(line: 585, column: 26, scope: !234)
!975 = !DILocation(line: 0, scope: !234)
!976 = !DILocation(line: 586, column: 23, scope: !234)
!977 = !DILocation(line: 586, column: 28, scope: !234)
!978 = !DILocation(line: 586, column: 32, scope: !234)
!979 = !{!901, !901, i64 0}
!980 = !DILocation(line: 586, column: 38, scope: !234)
!981 = !DILocalVariable(name: "__s1", arg: 1, scope: !982, file: !983, line: 1359, type: !134)
!982 = distinct !DISubprogram(name: "streq", scope: !983, file: !983, line: 1359, type: !984, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !986)
!983 = !DIFile(filename: "./lib/string.h", directory: "/src")
!984 = !DISubroutineType(types: !985)
!985 = !{!215, !134, !134}
!986 = !{!981, !987}
!987 = !DILocalVariable(name: "__s2", arg: 2, scope: !982, file: !983, line: 1359, type: !134)
!988 = !DILocation(line: 0, scope: !982, inlinedAt: !989)
!989 = distinct !DILocation(line: 586, column: 41, scope: !234)
!990 = !DILocation(line: 1361, column: 11, scope: !982, inlinedAt: !989)
!991 = !DILocation(line: 1361, column: 10, scope: !982, inlinedAt: !989)
!992 = !DILocation(line: 586, column: 19, scope: !234)
!993 = !DILocation(line: 587, column: 5, scope: !234)
!994 = !DILocation(line: 588, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !227, file: !103, line: 588, column: 7)
!996 = !DILocation(line: 588, column: 7, scope: !227)
!997 = !DILocation(line: 590, column: 7, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !103, line: 589, column: 5)
!999 = !DILocation(line: 591, column: 7, scope: !998)
!1000 = !DILocation(line: 595, column: 37, scope: !227)
!1001 = !DILocation(line: 595, column: 35, scope: !227)
!1002 = !DILocation(line: 596, column: 29, scope: !227)
!1003 = !DILocation(line: 597, column: 8, scope: !242)
!1004 = !DILocation(line: 597, column: 7, scope: !227)
!1005 = !DILocation(line: 604, column: 24, scope: !241)
!1006 = !DILocation(line: 604, column: 12, scope: !242)
!1007 = !DILocation(line: 0, scope: !240)
!1008 = !DILocation(line: 610, column: 16, scope: !240)
!1009 = !DILocation(line: 610, column: 7, scope: !240)
!1010 = !DILocation(line: 611, column: 21, scope: !240)
!1011 = !{!1012, !1012, i64 0}
!1012 = !{!"short", !901, i64 0}
!1013 = !DILocation(line: 611, column: 19, scope: !240)
!1014 = !DILocation(line: 611, column: 16, scope: !240)
!1015 = !DILocation(line: 610, column: 30, scope: !240)
!1016 = distinct !{!1016, !1009, !1010, !1017}
!1017 = !{!"llvm.loop.mustprogress"}
!1018 = !DILocation(line: 612, column: 18, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !240, file: !103, line: 612, column: 11)
!1020 = !DILocation(line: 612, column: 11, scope: !240)
!1021 = !DILocation(line: 620, column: 23, scope: !227)
!1022 = !DILocation(line: 625, column: 39, scope: !227)
!1023 = !DILocation(line: 626, column: 3, scope: !227)
!1024 = !DILocation(line: 626, column: 10, scope: !227)
!1025 = !DILocation(line: 626, column: 21, scope: !227)
!1026 = !DILocation(line: 628, column: 44, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !103, line: 628, column: 11)
!1028 = distinct !DILexicalBlock(scope: !227, file: !103, line: 627, column: 5)
!1029 = !DILocation(line: 628, column: 32, scope: !1027)
!1030 = !DILocation(line: 628, column: 49, scope: !1027)
!1031 = !DILocation(line: 628, column: 11, scope: !1028)
!1032 = !DILocation(line: 630, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !103, line: 630, column: 11)
!1034 = !DILocation(line: 630, column: 11, scope: !1028)
!1035 = !DILocation(line: 632, column: 26, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !103, line: 632, column: 15)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !103, line: 631, column: 9)
!1038 = !DILocation(line: 632, column: 34, scope: !1036)
!1039 = !DILocation(line: 632, column: 37, scope: !1036)
!1040 = !DILocation(line: 632, column: 15, scope: !1037)
!1041 = !DILocation(line: 636, column: 16, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !103, line: 636, column: 15)
!1043 = !DILocation(line: 636, column: 29, scope: !1042)
!1044 = !DILocation(line: 640, column: 16, scope: !1028)
!1045 = distinct !{!1045, !1023, !1046, !1017}
!1046 = !DILocation(line: 641, column: 5, scope: !227)
!1047 = !DILocation(line: 644, column: 3, scope: !227)
!1048 = !DILocation(line: 0, scope: !982, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 648, column: 31, scope: !227)
!1050 = !DILocation(line: 0, scope: !982, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 649, column: 31, scope: !227)
!1052 = !DILocation(line: 0, scope: !982, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 650, column: 31, scope: !227)
!1054 = !DILocation(line: 0, scope: !982, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 651, column: 31, scope: !227)
!1056 = !DILocation(line: 0, scope: !982, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 652, column: 31, scope: !227)
!1058 = !DILocation(line: 0, scope: !982, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 653, column: 31, scope: !227)
!1060 = !DILocation(line: 0, scope: !982, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 654, column: 31, scope: !227)
!1062 = !DILocation(line: 0, scope: !982, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 655, column: 31, scope: !227)
!1064 = !DILocation(line: 0, scope: !982, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 656, column: 31, scope: !227)
!1066 = !DILocation(line: 0, scope: !982, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 657, column: 31, scope: !227)
!1068 = !DILocation(line: 663, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !227, file: !103, line: 663, column: 7)
!1070 = !DILocation(line: 664, column: 7, scope: !1069)
!1071 = !DILocation(line: 664, column: 10, scope: !1069)
!1072 = !DILocation(line: 663, column: 7, scope: !227)
!1073 = !DILocation(line: 669, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !103, line: 665, column: 5)
!1075 = !DILocation(line: 671, column: 5, scope: !1074)
!1076 = !DILocation(line: 676, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !103, line: 673, column: 5)
!1078 = !DILocation(line: 679, column: 3, scope: !227)
!1079 = !DILocation(line: 683, column: 3, scope: !227)
!1080 = !DILocation(line: 686, column: 3, scope: !227)
!1081 = !DILocation(line: 688, column: 3, scope: !227)
!1082 = !DILocation(line: 691, column: 3, scope: !227)
!1083 = !DILocation(line: 695, column: 3, scope: !227)
!1084 = !DILocation(line: 696, column: 1, scope: !227)
!1085 = !DISubprogram(name: "setlocale", scope: !1086, file: !1086, line: 122, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1086 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!129, !104, !134}
!1089 = !DISubprogram(name: "strncmp", scope: !1090, file: !1090, line: 159, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!104, !134, !134, !131}
!1093 = !DISubprogram(name: "exit", scope: !1094, file: !1094, line: 624, type: !889, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1094 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1095 = !DISubprogram(name: "getenv", scope: !1094, file: !1094, line: 641, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!129, !134}
!1098 = !DISubprogram(name: "strcmp", scope: !1090, file: !1090, line: 156, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!104, !134, !134}
!1101 = !DISubprogram(name: "strspn", scope: !1090, file: !1090, line: 297, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!133, !134, !134}
!1104 = !DISubprogram(name: "strchr", scope: !1090, file: !1090, line: 246, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!129, !134, !104}
!1107 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1113 = !DISubprogram(name: "strcspn", scope: !1090, file: !1090, line: 293, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1114 = !DISubprogram(name: "fwrite_unlocked", scope: !125, file: !125, line: 704, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!131, !1117, !131, !131, !960}
!1117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1120 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1121, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1124)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!104, !104, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1132, !1133, !1170, !1171, !1174, !1177, !1178, !1179, !1180, !1182}
!1125 = !DILocalVariable(name: "argc", arg: 1, scope: !1120, file: !2, line: 201, type: !104)
!1126 = !DILocalVariable(name: "argv", arg: 2, scope: !1120, file: !2, line: 201, type: !1123)
!1127 = !DILocalVariable(name: "got_size", scope: !1120, file: !2, line: 203, type: !215)
!1128 = !DILocalVariable(name: "size", scope: !1120, file: !2, line: 204, type: !124)
!1129 = !DILocalVariable(name: "rsize", scope: !1120, file: !2, line: 205, type: !124)
!1130 = !DILocalVariable(name: "rel_mode", scope: !1120, file: !2, line: 206, type: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "rel_mode_t", file: !2, line: 59, baseType: !78)
!1132 = !DILocalVariable(name: "c", scope: !1120, file: !2, line: 207, type: !104)
!1133 = !DILocalVariable(name: "sb", scope: !1134, file: !2, line: 321, type: !1136)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 320, column: 5)
!1135 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 319, column: 7)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1137, line: 26, size: 1152, elements: !1138)
!1137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1138 = !{!1139, !1141, !1143, !1145, !1147, !1149, !1151, !1152, !1153, !1154, !1156, !1158, !1166, !1167, !1168}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1136, file: !1137, line: 31, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !127, line: 145, baseType: !133)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1136, file: !1137, line: 36, baseType: !1142, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !127, line: 148, baseType: !133)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1136, file: !1137, line: 44, baseType: !1144, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !127, line: 151, baseType: !133)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1136, file: !1137, line: 45, baseType: !1146, size: 32, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !127, line: 150, baseType: !79)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1136, file: !1137, line: 47, baseType: !1148, size: 32, offset: 224)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !127, line: 146, baseType: !79)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1136, file: !1137, line: 48, baseType: !1150, size: 32, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !127, line: 147, baseType: !79)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1136, file: !1137, line: 50, baseType: !104, size: 32, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1136, file: !1137, line: 52, baseType: !1140, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1136, file: !1137, line: 57, baseType: !126, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1136, file: !1137, line: 61, baseType: !1155, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !127, line: 175, baseType: !128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1136, file: !1137, line: 63, baseType: !1157, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !127, line: 180, baseType: !128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1136, file: !1137, line: 74, baseType: !1159, size: 128, offset: 576)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1160, line: 11, size: 128, elements: !1161)
!1160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1161 = !{!1162, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1159, file: !1160, line: 16, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !127, line: 160, baseType: !128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1159, file: !1160, line: 21, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !127, line: 197, baseType: !128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1136, file: !1137, line: 75, baseType: !1159, size: 128, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1136, file: !1137, line: 76, baseType: !1159, size: 128, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1136, file: !1137, line: 89, baseType: !1169, size: 192, offset: 960)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 192, elements: !333)
!1170 = !DILocalVariable(name: "file_size", scope: !1134, file: !2, line: 322, type: !124)
!1171 = !DILocalVariable(name: "ref_fd", scope: !1172, file: !2, line: 329, type: !104)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 328, column: 9)
!1173 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 325, column: 11)
!1174 = !DILocalVariable(name: "file_end", scope: !1175, file: !2, line: 332, type: !124)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 331, column: 13)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 330, column: 15)
!1177 = !DILocalVariable(name: "saved_errno", scope: !1175, file: !2, line: 333, type: !104)
!1178 = !DILocalVariable(name: "oflags", scope: !1120, file: !2, line: 353, type: !104)
!1179 = !DILocalVariable(name: "errors", scope: !1120, file: !2, line: 354, type: !215)
!1180 = !DILocalVariable(name: "fname", scope: !1181, file: !2, line: 356, type: !134)
!1181 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 356, column: 3)
!1182 = !DILocalVariable(name: "fd", scope: !1183, file: !2, line: 358, type: !104)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 357, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 356, column: 3)
!1185 = distinct !DIAssignID()
!1186 = distinct !DIAssignID()
!1187 = !DILocation(line: 0, scope: !1134)
!1188 = !DILocation(line: 0, scope: !1120)
!1189 = !DILocation(line: 210, column: 21, scope: !1120)
!1190 = !DILocation(line: 210, column: 3, scope: !1120)
!1191 = !DILocation(line: 211, column: 3, scope: !1120)
!1192 = !DILocation(line: 212, column: 3, scope: !1120)
!1193 = !DILocation(line: 213, column: 3, scope: !1120)
!1194 = !DILocation(line: 215, column: 3, scope: !1120)
!1195 = !DILocation(line: 217, column: 3, scope: !1120)
!1196 = !DILocation(line: 217, column: 15, scope: !1120)
!1197 = !DILocation(line: 235, column: 18, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 220, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 218, column: 5)
!1200 = !DILocation(line: 235, column: 11, scope: !1198)
!1201 = !DILocation(line: 222, column: 21, scope: !1198)
!1202 = !DILocation(line: 223, column: 11, scope: !1198)
!1203 = !DILocation(line: 226, column: 22, scope: !1198)
!1204 = !DILocation(line: 227, column: 11, scope: !1198)
!1205 = !DILocation(line: 230, column: 22, scope: !1198)
!1206 = !DILocation(line: 230, column: 20, scope: !1198)
!1207 = !DILocation(line: 231, column: 11, scope: !1198)
!1208 = distinct !{!1208, !1195, !1209, !1017}
!1209 = !DILocation(line: 286, column: 5, scope: !1120)
!1210 = !DILocation(line: 236, column: 19, scope: !1198)
!1211 = distinct !{!1211, !1200, !1210, !1017}
!1212 = !DILocation(line: 237, column: 11, scope: !1198)
!1213 = !DILocation(line: 246, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 238, column: 13)
!1215 = !DILocation(line: 250, column: 15, scope: !1214)
!1216 = !DILocation(line: 254, column: 15, scope: !1214)
!1217 = !DILocation(line: 0, scope: !1214)
!1218 = !DILocation(line: 257, column: 18, scope: !1198)
!1219 = !DILocation(line: 257, column: 11, scope: !1198)
!1220 = !DILocation(line: 258, column: 19, scope: !1198)
!1221 = distinct !{!1221, !1219, !1220, !1017}
!1222 = !DILocation(line: 259, column: 30, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 259, column: 15)
!1224 = !DILocation(line: 261, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 261, column: 19)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 260, column: 13)
!1227 = !DILocation(line: 261, column: 19, scope: !1226)
!1228 = !DILocation(line: 263, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !2, line: 262, column: 17)
!1230 = !DILocation(line: 265, column: 19, scope: !1229)
!1231 = !DILocation(line: 272, column: 30, scope: !1198)
!1232 = !DILocation(line: 271, column: 18, scope: !1198)
!1233 = !DILocation(line: 274, column: 35, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 274, column: 15)
!1235 = !DILocation(line: 275, column: 13, scope: !1234)
!1236 = !DILocation(line: 279, column: 9, scope: !1198)
!1237 = !DILocation(line: 281, column: 9, scope: !1198)
!1238 = !DILocation(line: 284, column: 11, scope: !1198)
!1239 = !DILocation(line: 288, column: 11, scope: !1120)
!1240 = !DILocation(line: 288, column: 8, scope: !1120)
!1241 = !DILocation(line: 292, column: 8, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 292, column: 7)
!1243 = !DILocation(line: 292, column: 17, scope: !1242)
!1244 = !DILocation(line: 294, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 293, column: 5)
!1246 = !DILocation(line: 296, column: 7, scope: !1245)
!1247 = !DILocation(line: 299, column: 16, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 299, column: 7)
!1249 = !DILocation(line: 301, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 300, column: 5)
!1251 = !DILocation(line: 303, column: 7, scope: !1250)
!1252 = !DILocation(line: 306, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 306, column: 7)
!1254 = !DILocation(line: 306, column: 18, scope: !1253)
!1255 = !DILocation(line: 308, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 307, column: 5)
!1257 = !DILocation(line: 310, column: 7, scope: !1256)
!1258 = !DILocation(line: 313, column: 12, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 313, column: 7)
!1260 = !DILocation(line: 313, column: 7, scope: !1120)
!1261 = !DILocation(line: 315, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 314, column: 5)
!1263 = !DILocation(line: 316, column: 7, scope: !1262)
!1264 = !DILocation(line: 319, column: 7, scope: !1120)
!1265 = !DILocation(line: 321, column: 7, scope: !1134)
!1266 = !DILocation(line: 323, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 323, column: 11)
!1268 = !DILocation(line: 323, column: 32, scope: !1267)
!1269 = !DILocation(line: 323, column: 11, scope: !1134)
!1270 = !DILocation(line: 324, column: 9, scope: !1267)
!1271 = !DILocalVariable(name: "sb", arg: 1, scope: !1272, file: !103, line: 911, type: !1275)
!1272 = distinct !DISubprogram(name: "usable_st_size", scope: !103, file: !103, line: 911, type: !1273, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1277)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!215, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1277 = !{!1271}
!1278 = !DILocation(line: 0, scope: !1272, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 325, column: 11, scope: !1173)
!1280 = !DILocation(line: 913, column: 11, scope: !1272, inlinedAt: !1279)
!1281 = !{!1282, !971, i64 24}
!1282 = !{!"stat", !1283, i64 0, !1283, i64 8, !1283, i64 16, !971, i64 24, !971, i64 28, !971, i64 32, !971, i64 36, !1283, i64 40, !1283, i64 48, !1283, i64 56, !1283, i64 64, !1284, i64 72, !1284, i64 88, !1284, i64 104, !901, i64 120}
!1283 = !{!"long", !901, i64 0}
!1284 = !{!"timespec", !1283, i64 0, !1283, i64 8}
!1285 = !DILocation(line: 913, column: 33, scope: !1272, inlinedAt: !1279)
!1286 = !DILocation(line: 325, column: 11, scope: !1134)
!1287 = !DILocation(line: 329, column: 30, scope: !1172)
!1288 = !DILocation(line: 329, column: 24, scope: !1172)
!1289 = !DILocation(line: 0, scope: !1172)
!1290 = !DILocation(line: 330, column: 17, scope: !1176)
!1291 = !DILocation(line: 330, column: 15, scope: !1172)
!1292 = !DILocation(line: 332, column: 32, scope: !1175)
!1293 = !DILocation(line: 0, scope: !1175)
!1294 = !DILocation(line: 333, column: 33, scope: !1175)
!1295 = !DILocation(line: 334, column: 15, scope: !1175)
!1296 = !DILocation(line: 335, column: 21, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 335, column: 19)
!1298 = !DILocation(line: 335, column: 19, scope: !1175)
!1299 = !DILocation(line: 340, column: 25, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 338, column: 17)
!1301 = !DILocation(line: 326, column: 24, scope: !1173)
!1302 = !{!1282, !1283, i64 48}
!1303 = !DILocation(line: 344, column: 21, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 344, column: 11)
!1305 = !DILocation(line: 344, column: 11, scope: !1134)
!1306 = !DILocation(line: 345, column: 9, scope: !1304)
!1307 = !DILocation(line: 351, column: 5, scope: !1135)
!1308 = !DILocation(line: 351, column: 5, scope: !1134)
!1309 = !DILocation(line: 353, column: 28, scope: !1120)
!1310 = !DILocation(line: 353, column: 53, scope: !1120)
!1311 = !DILocation(line: 356, column: 36, scope: !1184)
!1312 = !DILocation(line: 0, scope: !1181)
!1313 = !DILocation(line: 356, column: 3, scope: !1181)
!1314 = !DILocation(line: 383, column: 10, scope: !1120)
!1315 = !DILocation(line: 354, column: 8, scope: !1120)
!1316 = !DILocation(line: 383, column: 3, scope: !1120)
!1317 = !DILocation(line: 358, column: 16, scope: !1183)
!1318 = !DILocation(line: 0, scope: !1183)
!1319 = !DILocation(line: 359, column: 14, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 359, column: 11)
!1321 = !DILocation(line: 359, column: 11, scope: !1183)
!1322 = !DILocation(line: 365, column: 17, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !2, line: 365, column: 15)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 360, column: 9)
!1325 = !DILocation(line: 0, scope: !1323)
!1326 = !DILocation(line: 365, column: 27, scope: !1323)
!1327 = !DILocation(line: 365, column: 30, scope: !1323)
!1328 = !DILocation(line: 365, column: 36, scope: !1323)
!1329 = !DILocation(line: 365, column: 15, scope: !1324)
!1330 = !DILocalVariable(name: "sb", scope: !1331, file: !2, line: 110, type: !1136)
!1331 = distinct !DISubprogram(name: "do_ftruncate", scope: !2, file: !2, line: 107, type: !1332, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!215, !104, !134, !124, !124, !1131}
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1330, !1340, !1341, !1344, !1345, !1348}
!1335 = !DILocalVariable(name: "fd", arg: 1, scope: !1331, file: !2, line: 107, type: !104)
!1336 = !DILocalVariable(name: "fname", arg: 2, scope: !1331, file: !2, line: 107, type: !134)
!1337 = !DILocalVariable(name: "ssize", arg: 3, scope: !1331, file: !2, line: 107, type: !124)
!1338 = !DILocalVariable(name: "rsize", arg: 4, scope: !1331, file: !2, line: 107, type: !124)
!1339 = !DILocalVariable(name: "rel_mode", arg: 5, scope: !1331, file: !2, line: 108, type: !1131)
!1340 = !DILocalVariable(name: "nsize", scope: !1331, file: !2, line: 111, type: !124)
!1341 = !DILocalVariable(name: "blksize", scope: !1342, file: !2, line: 120, type: !822)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !2, line: 119, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 118, column: 7)
!1344 = !DILocalVariable(name: "ssize0", scope: !1342, file: !2, line: 121, type: !137)
!1345 = !DILocalVariable(name: "fsize", scope: !1346, file: !2, line: 132, type: !124)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 131, column: 5)
!1347 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 130, column: 7)
!1348 = !DILocalVariable(name: "r", scope: !1349, file: !2, line: 174, type: !124)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 172, column: 13)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 171, column: 15)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 170, column: 9)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 166, column: 16)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 164, column: 16)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 162, column: 11)
!1355 = !DILocation(line: 0, scope: !1331, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 374, column: 22, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 373, column: 9)
!1358 = !DILocation(line: 110, column: 3, scope: !1331, inlinedAt: !1356)
!1359 = !DILocation(line: 113, column: 8, scope: !1360, inlinedAt: !1356)
!1360 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 113, column: 7)
!1361 = !DILocation(line: 113, column: 19, scope: !1360, inlinedAt: !1356)
!1362 = !DILocation(line: 113, column: 50, scope: !1360, inlinedAt: !1356)
!1363 = !DILocation(line: 113, column: 66, scope: !1360, inlinedAt: !1356)
!1364 = !DILocation(line: 113, column: 7, scope: !1331, inlinedAt: !1356)
!1365 = !DILocation(line: 115, column: 7, scope: !1366, inlinedAt: !1356)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 114, column: 5)
!1367 = !DILocation(line: 116, column: 7, scope: !1366, inlinedAt: !1356)
!1368 = !DILocation(line: 118, column: 7, scope: !1343, inlinedAt: !1356)
!1369 = !DILocation(line: 118, column: 7, scope: !1331, inlinedAt: !1356)
!1370 = !DILocation(line: 120, column: 27, scope: !1342, inlinedAt: !1356)
!1371 = !DILocation(line: 0, scope: !1342, inlinedAt: !1356)
!1372 = !DILocation(line: 122, column: 11, scope: !1373, inlinedAt: !1356)
!1373 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 122, column: 11)
!1374 = !DILocation(line: 122, column: 11, scope: !1342, inlinedAt: !1356)
!1375 = !DILocation(line: 124, column: 11, scope: !1376, inlinedAt: !1356)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 123, column: 9)
!1377 = !DILocation(line: 130, column: 7, scope: !1331, inlinedAt: !1356)
!1378 = !DILocation(line: 134, column: 11, scope: !1346, inlinedAt: !1356)
!1379 = !DILocation(line: 0, scope: !1272, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 138, column: 15, scope: !1381, inlinedAt: !1356)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 138, column: 15)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 137, column: 9)
!1383 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 134, column: 11)
!1384 = !DILocation(line: 913, column: 11, scope: !1272, inlinedAt: !1380)
!1385 = !DILocation(line: 913, column: 33, scope: !1272, inlinedAt: !1380)
!1386 = !DILocation(line: 138, column: 15, scope: !1382, inlinedAt: !1356)
!1387 = !DILocation(line: 140, column: 26, scope: !1388, inlinedAt: !1356)
!1388 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 139, column: 13)
!1389 = !DILocation(line: 0, scope: !1346, inlinedAt: !1356)
!1390 = !DILocation(line: 141, column: 25, scope: !1391, inlinedAt: !1356)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 141, column: 19)
!1392 = !DILocation(line: 141, column: 19, scope: !1388, inlinedAt: !1356)
!1393 = !DILocation(line: 145, column: 19, scope: !1394, inlinedAt: !1356)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 142, column: 17)
!1395 = !DILocation(line: 147, column: 19, scope: !1394, inlinedAt: !1356)
!1396 = !DILocation(line: 152, column: 23, scope: !1397, inlinedAt: !1356)
!1397 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 151, column: 13)
!1398 = !DILocation(line: 153, column: 25, scope: !1399, inlinedAt: !1356)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 153, column: 19)
!1400 = !DILocation(line: 153, column: 19, scope: !1397, inlinedAt: !1356)
!1401 = !DILocation(line: 155, column: 19, scope: !1402, inlinedAt: !1356)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 154, column: 17)
!1403 = !DILocation(line: 157, column: 19, scope: !1402, inlinedAt: !1356)
!1404 = !DILocation(line: 0, scope: !1383, inlinedAt: !1356)
!1405 = !DILocation(line: 162, column: 11, scope: !1346, inlinedAt: !1356)
!1406 = !DILocation(line: 163, column: 17, scope: !1354, inlinedAt: !1356)
!1407 = !DILocation(line: 163, column: 9, scope: !1354, inlinedAt: !1356)
!1408 = !DILocation(line: 165, column: 17, scope: !1353, inlinedAt: !1356)
!1409 = !DILocation(line: 165, column: 9, scope: !1353, inlinedAt: !1356)
!1410 = !DILocation(line: 168, column: 31, scope: !1352, inlinedAt: !1356)
!1411 = !DILocation(line: 168, column: 23, scope: !1352, inlinedAt: !1356)
!1412 = !DILocation(line: 168, column: 9, scope: !1352, inlinedAt: !1356)
!1413 = !DILocation(line: 174, column: 31, scope: !1349, inlinedAt: !1356)
!1414 = !DILocation(line: 0, scope: !1349, inlinedAt: !1356)
!1415 = !DILocation(line: 175, column: 25, scope: !1349, inlinedAt: !1356)
!1416 = !DILocation(line: 175, column: 23, scope: !1349, inlinedAt: !1356)
!1417 = !DILocation(line: 176, column: 13, scope: !1349, inlinedAt: !1356)
!1418 = !DILocation(line: 177, column: 15, scope: !1419, inlinedAt: !1356)
!1419 = distinct !DILexicalBlock(scope: !1351, file: !2, line: 177, column: 15)
!1420 = !DILocation(line: 177, column: 15, scope: !1351, inlinedAt: !1356)
!1421 = !DILocation(line: 179, column: 15, scope: !1422, inlinedAt: !1356)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 178, column: 13)
!1423 = !DILocation(line: 181, column: 15, scope: !1422, inlinedAt: !1356)
!1424 = !DILocation(line: 0, scope: !1347, inlinedAt: !1356)
!1425 = !DILocation(line: 187, column: 7, scope: !1331, inlinedAt: !1356)
!1426 = !DILocation(line: 190, column: 7, scope: !1427, inlinedAt: !1356)
!1427 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 190, column: 7)
!1428 = !DILocation(line: 190, column: 29, scope: !1427, inlinedAt: !1356)
!1429 = !DILocation(line: 190, column: 7, scope: !1331, inlinedAt: !1356)
!1430 = !DILocation(line: 192, column: 7, scope: !1431, inlinedAt: !1356)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 191, column: 5)
!1432 = !DILocation(line: 194, column: 7, scope: !1431, inlinedAt: !1356)
!1433 = !DILocation(line: 198, column: 1, scope: !1331, inlinedAt: !1356)
!1434 = !DILocation(line: 374, column: 18, scope: !1357)
!1435 = !DILocation(line: 375, column: 15, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 375, column: 15)
!1437 = !DILocation(line: 375, column: 26, scope: !1436)
!1438 = !DILocation(line: 375, column: 15, scope: !1357)
!1439 = !DILocation(line: 377, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !2, line: 376, column: 13)
!1441 = !DILocation(line: 379, column: 13, scope: !1440)
!1442 = !DILocation(line: 0, scope: !1320)
!1443 = !DILocation(line: 356, column: 48, scope: !1184)
!1444 = distinct !{!1444, !1313, !1445, !1017}
!1445 = !DILocation(line: 381, column: 5, scope: !1181)
!1446 = !DISubprogram(name: "bindtextdomain", scope: !953, file: !953, line: 86, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!129, !134, !134}
!1449 = !DISubprogram(name: "textdomain", scope: !953, file: !953, line: 82, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubprogram(name: "atexit", scope: !1094, file: !1094, line: 602, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!104, !522}
!1453 = !DISubprogram(name: "getopt_long", scope: !446, file: !446, line: 66, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!104, !104, !1456, !134, !1458, !451}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1459 = !DISubprogram(name: "stat", scope: !1460, file: !1460, line: 205, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!104, !961, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1465 = !DISubprogram(name: "__errno_location", scope: !1466, file: !1466, line: 37, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!451}
!1469 = !DISubprogram(name: "open", scope: !1470, file: !1470, line: 181, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!104, !134, !104, null}
!1473 = !DISubprogram(name: "lseek", scope: !1474, file: !1474, line: 339, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1474 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!126, !104, !126, !104}
!1477 = !DISubprogram(name: "close", scope: !1474, file: !1474, line: 358, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!104, !104}
!1480 = !DISubprogram(name: "fstat", scope: !1460, file: !1460, line: 210, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!104, !104, !1464}
!1483 = !DISubprogram(name: "ftruncate", scope: !1474, file: !1474, line: 1049, type: !1484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!104, !104, !126}
!1486 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !465, file: !465, line: 50, type: !921, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1487)
!1487 = !{!1488}
!1488 = !DILocalVariable(name: "file", arg: 1, scope: !1486, file: !465, line: 50, type: !134)
!1489 = !DILocation(line: 0, scope: !1486)
!1490 = !DILocation(line: 52, column: 13, scope: !1486)
!1491 = !DILocation(line: 53, column: 1, scope: !1486)
!1492 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !465, file: !465, line: 87, type: !1493, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !215}
!1495 = !{!1496}
!1496 = !DILocalVariable(name: "ignore", arg: 1, scope: !1492, file: !465, line: 87, type: !215)
!1497 = !DILocation(line: 0, scope: !1492)
!1498 = !DILocation(line: 89, column: 16, scope: !1492)
!1499 = !{!1500, !1500, i64 0}
!1500 = !{!"_Bool", !901, i64 0}
!1501 = !DILocation(line: 90, column: 1, scope: !1492)
!1502 = distinct !DISubprogram(name: "close_stdout", scope: !465, file: !465, line: 116, type: !523, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1503)
!1503 = !{!1504}
!1504 = !DILocalVariable(name: "write_error", scope: !1505, file: !465, line: 121, type: !134)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !465, line: 120, column: 5)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !465, line: 118, column: 7)
!1507 = !DILocation(line: 118, column: 21, scope: !1506)
!1508 = !DILocation(line: 118, column: 7, scope: !1506)
!1509 = !DILocation(line: 118, column: 29, scope: !1506)
!1510 = !DILocation(line: 119, column: 7, scope: !1506)
!1511 = !DILocation(line: 119, column: 12, scope: !1506)
!1512 = !{i8 0, i8 2}
!1513 = !DILocation(line: 119, column: 25, scope: !1506)
!1514 = !DILocation(line: 119, column: 28, scope: !1506)
!1515 = !DILocation(line: 119, column: 34, scope: !1506)
!1516 = !DILocation(line: 118, column: 7, scope: !1502)
!1517 = !DILocation(line: 121, column: 33, scope: !1505)
!1518 = !DILocation(line: 0, scope: !1505)
!1519 = !DILocation(line: 122, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1505, file: !465, line: 122, column: 11)
!1521 = !DILocation(line: 0, scope: !1520)
!1522 = !DILocation(line: 122, column: 11, scope: !1505)
!1523 = !DILocation(line: 123, column: 9, scope: !1520)
!1524 = !DILocation(line: 126, column: 9, scope: !1520)
!1525 = !DILocation(line: 128, column: 14, scope: !1505)
!1526 = !DILocation(line: 128, column: 7, scope: !1505)
!1527 = !DILocation(line: 133, column: 42, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1502, file: !465, line: 133, column: 7)
!1529 = !DILocation(line: 133, column: 28, scope: !1528)
!1530 = !DILocation(line: 133, column: 50, scope: !1528)
!1531 = !DILocation(line: 133, column: 7, scope: !1502)
!1532 = !DILocation(line: 134, column: 12, scope: !1528)
!1533 = !DILocation(line: 134, column: 5, scope: !1528)
!1534 = !DILocation(line: 135, column: 1, scope: !1502)
!1535 = !DISubprogram(name: "_exit", scope: !1474, file: !1474, line: 624, type: !889, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1536 = distinct !DISubprogram(name: "verror", scope: !480, file: !480, line: 251, type: !1537, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !104, !104, !134, !490}
!1539 = !{!1540, !1541, !1542, !1543}
!1540 = !DILocalVariable(name: "status", arg: 1, scope: !1536, file: !480, line: 251, type: !104)
!1541 = !DILocalVariable(name: "errnum", arg: 2, scope: !1536, file: !480, line: 251, type: !104)
!1542 = !DILocalVariable(name: "message", arg: 3, scope: !1536, file: !480, line: 251, type: !134)
!1543 = !DILocalVariable(name: "args", arg: 4, scope: !1536, file: !480, line: 251, type: !490)
!1544 = !DILocation(line: 0, scope: !1536)
!1545 = !DILocation(line: 261, column: 3, scope: !1536)
!1546 = !DILocation(line: 265, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1536, file: !480, line: 265, column: 7)
!1548 = !DILocation(line: 265, column: 7, scope: !1536)
!1549 = !DILocation(line: 266, column: 5, scope: !1547)
!1550 = !DILocation(line: 272, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !480, line: 268, column: 5)
!1552 = !DILocation(line: 276, column: 3, scope: !1536)
!1553 = !DILocation(line: 282, column: 1, scope: !1536)
!1554 = distinct !DISubprogram(name: "flush_stdout", scope: !480, file: !480, line: 163, type: !523, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1555)
!1555 = !{!1556}
!1556 = !DILocalVariable(name: "stdout_fd", scope: !1554, file: !480, line: 166, type: !104)
!1557 = !DILocation(line: 0, scope: !1554)
!1558 = !DILocalVariable(name: "fd", arg: 1, scope: !1559, file: !480, line: 145, type: !104)
!1559 = distinct !DISubprogram(name: "is_open", scope: !480, file: !480, line: 145, type: !1478, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1560)
!1560 = !{!1558}
!1561 = !DILocation(line: 0, scope: !1559, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 182, column: 25, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1554, file: !480, line: 182, column: 7)
!1564 = !DILocation(line: 157, column: 15, scope: !1559, inlinedAt: !1562)
!1565 = !DILocation(line: 157, column: 12, scope: !1559, inlinedAt: !1562)
!1566 = !DILocation(line: 182, column: 7, scope: !1554)
!1567 = !DILocation(line: 184, column: 5, scope: !1563)
!1568 = !DILocation(line: 185, column: 1, scope: !1554)
!1569 = distinct !DISubprogram(name: "error_tail", scope: !480, file: !480, line: 219, type: !1537, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1570)
!1570 = !{!1571, !1572, !1573, !1574}
!1571 = !DILocalVariable(name: "status", arg: 1, scope: !1569, file: !480, line: 219, type: !104)
!1572 = !DILocalVariable(name: "errnum", arg: 2, scope: !1569, file: !480, line: 219, type: !104)
!1573 = !DILocalVariable(name: "message", arg: 3, scope: !1569, file: !480, line: 219, type: !134)
!1574 = !DILocalVariable(name: "args", arg: 4, scope: !1569, file: !480, line: 219, type: !490)
!1575 = distinct !DIAssignID()
!1576 = !DILocation(line: 0, scope: !1569)
!1577 = !DILocation(line: 229, column: 13, scope: !1569)
!1578 = !DILocalVariable(name: "__stream", arg: 1, scope: !1579, file: !957, line: 132, type: !1582)
!1579 = distinct !DISubprogram(name: "vfprintf", scope: !957, file: !957, line: 132, type: !1580, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1617)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!104, !1582, !961, !490}
!1582 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1585, file: !253, line: 51, baseType: !104, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1585, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1585, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1585, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1585, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1585, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1585, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1585, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1585, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1585, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1585, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1585, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1585, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1585, file: !253, line: 70, baseType: !1601, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1585, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1585, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1585, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1585, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1585, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1585, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1585, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1585, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1585, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1585, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1585, file: !253, line: 93, baseType: !1601, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1585, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1585, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1585, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1585, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!1617 = !{!1578, !1618, !1619}
!1618 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1579, file: !957, line: 133, type: !961)
!1619 = !DILocalVariable(name: "__ap", arg: 3, scope: !1579, file: !957, line: 133, type: !490)
!1620 = !DILocation(line: 0, scope: !1579, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 229, column: 3, scope: !1569)
!1622 = !DILocation(line: 135, column: 10, scope: !1579, inlinedAt: !1621)
!1623 = !DILocation(line: 232, column: 3, scope: !1569)
!1624 = !DILocation(line: 233, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1569, file: !480, line: 233, column: 7)
!1626 = !DILocation(line: 233, column: 7, scope: !1569)
!1627 = !DILocalVariable(name: "errbuf", scope: !1628, file: !480, line: 193, type: !1632)
!1628 = distinct !DISubprogram(name: "print_errno_message", scope: !480, file: !480, line: 188, type: !889, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1629)
!1629 = !{!1630, !1631, !1627}
!1630 = !DILocalVariable(name: "errnum", arg: 1, scope: !1628, file: !480, line: 188, type: !104)
!1631 = !DILocalVariable(name: "s", scope: !1628, file: !480, line: 190, type: !134)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 1024)
!1635 = !DILocation(line: 0, scope: !1628, inlinedAt: !1636)
!1636 = distinct !DILocation(line: 234, column: 5, scope: !1625)
!1637 = !DILocation(line: 193, column: 3, scope: !1628, inlinedAt: !1636)
!1638 = !DILocation(line: 195, column: 7, scope: !1628, inlinedAt: !1636)
!1639 = !DILocation(line: 207, column: 9, scope: !1640, inlinedAt: !1636)
!1640 = distinct !DILexicalBlock(scope: !1628, file: !480, line: 207, column: 7)
!1641 = !DILocation(line: 207, column: 7, scope: !1628, inlinedAt: !1636)
!1642 = !DILocation(line: 208, column: 9, scope: !1640, inlinedAt: !1636)
!1643 = !DILocation(line: 208, column: 5, scope: !1640, inlinedAt: !1636)
!1644 = !DILocation(line: 214, column: 3, scope: !1628, inlinedAt: !1636)
!1645 = !DILocation(line: 216, column: 1, scope: !1628, inlinedAt: !1636)
!1646 = !DILocation(line: 234, column: 5, scope: !1625)
!1647 = !DILocation(line: 238, column: 3, scope: !1569)
!1648 = !DILocalVariable(name: "__c", arg: 1, scope: !1649, file: !1650, line: 101, type: !104)
!1649 = distinct !DISubprogram(name: "putc_unlocked", scope: !1650, file: !1650, line: 101, type: !1651, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1653)
!1650 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!104, !104, !1583}
!1653 = !{!1648, !1654}
!1654 = !DILocalVariable(name: "__stream", arg: 2, scope: !1649, file: !1650, line: 101, type: !1583)
!1655 = !DILocation(line: 0, scope: !1649, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 238, column: 3, scope: !1569)
!1657 = !DILocation(line: 103, column: 10, scope: !1649, inlinedAt: !1656)
!1658 = !{!1659, !900, i64 40}
!1659 = !{!"_IO_FILE", !971, i64 0, !900, i64 8, !900, i64 16, !900, i64 24, !900, i64 32, !900, i64 40, !900, i64 48, !900, i64 56, !900, i64 64, !900, i64 72, !900, i64 80, !900, i64 88, !900, i64 96, !900, i64 104, !971, i64 112, !971, i64 116, !1283, i64 120, !1012, i64 128, !901, i64 130, !901, i64 131, !900, i64 136, !1283, i64 144, !900, i64 152, !900, i64 160, !900, i64 168, !900, i64 176, !1283, i64 184, !971, i64 192, !901, i64 196}
!1660 = !{!1659, !900, i64 48}
!1661 = !{!"branch_weights", i32 2000, i32 1}
!1662 = !DILocation(line: 240, column: 3, scope: !1569)
!1663 = !DILocation(line: 241, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1569, file: !480, line: 241, column: 7)
!1665 = !DILocation(line: 241, column: 7, scope: !1569)
!1666 = !DILocation(line: 242, column: 5, scope: !1664)
!1667 = !DILocation(line: 243, column: 1, scope: !1569)
!1668 = !DISubprogram(name: "__vfprintf_chk", scope: !957, file: !957, line: 96, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!104, !1582, !104, !961, !490}
!1671 = !DISubprogram(name: "strerror_r", scope: !1090, file: !1090, line: 444, type: !1672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!129, !104, !129, !131}
!1674 = !DISubprogram(name: "__overflow", scope: !125, file: !125, line: 886, type: !1675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!104, !1583, !104}
!1677 = !DISubprogram(name: "fflush_unlocked", scope: !125, file: !125, line: 239, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!104, !1583}
!1680 = !DISubprogram(name: "fcntl", scope: !1470, file: !1470, line: 149, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!104, !104, !104, null}
!1683 = distinct !DISubprogram(name: "error", scope: !480, file: !480, line: 285, type: !1684, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !104, !104, !134, null}
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "status", arg: 1, scope: !1683, file: !480, line: 285, type: !104)
!1688 = !DILocalVariable(name: "errnum", arg: 2, scope: !1683, file: !480, line: 285, type: !104)
!1689 = !DILocalVariable(name: "message", arg: 3, scope: !1683, file: !480, line: 285, type: !134)
!1690 = !DILocalVariable(name: "ap", scope: !1683, file: !480, line: 287, type: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !1692)
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1693, line: 12, baseType: !1694)
!1693 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !480, baseType: !1695)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 192, elements: !57)
!1696 = distinct !DIAssignID()
!1697 = !DILocation(line: 0, scope: !1683)
!1698 = !DILocation(line: 287, column: 3, scope: !1683)
!1699 = !DILocation(line: 288, column: 3, scope: !1683)
!1700 = !DILocation(line: 289, column: 3, scope: !1683)
!1701 = !DILocation(line: 290, column: 3, scope: !1683)
!1702 = !DILocation(line: 291, column: 1, scope: !1683)
!1703 = !DILocation(line: 0, scope: !487)
!1704 = !DILocation(line: 302, column: 7, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !487, file: !480, line: 302, column: 7)
!1706 = !DILocation(line: 302, column: 7, scope: !487)
!1707 = !DILocation(line: 307, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !480, line: 307, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !480, line: 303, column: 5)
!1710 = !DILocation(line: 307, column: 27, scope: !1708)
!1711 = !DILocation(line: 308, column: 11, scope: !1708)
!1712 = !DILocation(line: 308, column: 28, scope: !1708)
!1713 = !DILocation(line: 308, column: 25, scope: !1708)
!1714 = !DILocation(line: 309, column: 15, scope: !1708)
!1715 = !DILocation(line: 309, column: 33, scope: !1708)
!1716 = !DILocation(line: 310, column: 19, scope: !1708)
!1717 = !DILocation(line: 311, column: 22, scope: !1708)
!1718 = !DILocation(line: 311, column: 56, scope: !1708)
!1719 = !DILocation(line: 307, column: 11, scope: !1709)
!1720 = !DILocation(line: 316, column: 21, scope: !1709)
!1721 = !DILocation(line: 317, column: 23, scope: !1709)
!1722 = !DILocation(line: 318, column: 5, scope: !1709)
!1723 = !DILocation(line: 327, column: 3, scope: !487)
!1724 = !DILocation(line: 331, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !487, file: !480, line: 331, column: 7)
!1726 = !DILocation(line: 331, column: 7, scope: !487)
!1727 = !DILocation(line: 332, column: 5, scope: !1725)
!1728 = !DILocation(line: 338, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !480, line: 334, column: 5)
!1730 = !DILocation(line: 346, column: 3, scope: !487)
!1731 = !DILocation(line: 350, column: 3, scope: !487)
!1732 = !DILocation(line: 356, column: 1, scope: !487)
!1733 = distinct !DISubprogram(name: "error_at_line", scope: !480, file: !480, line: 359, type: !1734, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !104, !104, !134, !79, !134, null}
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742}
!1737 = !DILocalVariable(name: "status", arg: 1, scope: !1733, file: !480, line: 359, type: !104)
!1738 = !DILocalVariable(name: "errnum", arg: 2, scope: !1733, file: !480, line: 359, type: !104)
!1739 = !DILocalVariable(name: "file_name", arg: 3, scope: !1733, file: !480, line: 359, type: !134)
!1740 = !DILocalVariable(name: "line_number", arg: 4, scope: !1733, file: !480, line: 360, type: !79)
!1741 = !DILocalVariable(name: "message", arg: 5, scope: !1733, file: !480, line: 360, type: !134)
!1742 = !DILocalVariable(name: "ap", scope: !1733, file: !480, line: 362, type: !1691)
!1743 = distinct !DIAssignID()
!1744 = !DILocation(line: 0, scope: !1733)
!1745 = !DILocation(line: 362, column: 3, scope: !1733)
!1746 = !DILocation(line: 363, column: 3, scope: !1733)
!1747 = !DILocation(line: 364, column: 3, scope: !1733)
!1748 = !DILocation(line: 366, column: 3, scope: !1733)
!1749 = !DILocation(line: 367, column: 1, scope: !1733)
!1750 = distinct !DISubprogram(name: "getprogname", scope: !792, file: !792, line: 54, type: !1751, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!134}
!1753 = !DILocation(line: 58, column: 10, scope: !1750)
!1754 = !DILocation(line: 58, column: 3, scope: !1750)
!1755 = distinct !DISubprogram(name: "set_program_name", scope: !528, file: !528, line: 37, type: !921, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1756)
!1756 = !{!1757, !1758, !1759}
!1757 = !DILocalVariable(name: "argv0", arg: 1, scope: !1755, file: !528, line: 37, type: !134)
!1758 = !DILocalVariable(name: "slash", scope: !1755, file: !528, line: 44, type: !134)
!1759 = !DILocalVariable(name: "base", scope: !1755, file: !528, line: 45, type: !134)
!1760 = !DILocation(line: 0, scope: !1755)
!1761 = !DILocation(line: 44, column: 23, scope: !1755)
!1762 = !DILocation(line: 45, column: 22, scope: !1755)
!1763 = !DILocation(line: 46, column: 17, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1755, file: !528, line: 46, column: 7)
!1765 = !DILocation(line: 46, column: 9, scope: !1764)
!1766 = !DILocation(line: 46, column: 25, scope: !1764)
!1767 = !DILocation(line: 46, column: 40, scope: !1764)
!1768 = !DILocalVariable(name: "__s1", arg: 1, scope: !1769, file: !983, line: 974, type: !1118)
!1769 = distinct !DISubprogram(name: "memeq", scope: !983, file: !983, line: 974, type: !1770, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!215, !1118, !1118, !131}
!1772 = !{!1768, !1773, !1774}
!1773 = !DILocalVariable(name: "__s2", arg: 2, scope: !1769, file: !983, line: 974, type: !1118)
!1774 = !DILocalVariable(name: "__n", arg: 3, scope: !1769, file: !983, line: 974, type: !131)
!1775 = !DILocation(line: 0, scope: !1769, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 46, column: 28, scope: !1764)
!1777 = !DILocation(line: 976, column: 11, scope: !1769, inlinedAt: !1776)
!1778 = !DILocation(line: 976, column: 10, scope: !1769, inlinedAt: !1776)
!1779 = !DILocation(line: 46, column: 7, scope: !1755)
!1780 = !DILocation(line: 49, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !528, line: 49, column: 11)
!1782 = distinct !DILexicalBlock(scope: !1764, file: !528, line: 47, column: 5)
!1783 = !DILocation(line: 49, column: 36, scope: !1781)
!1784 = !DILocation(line: 49, column: 11, scope: !1782)
!1785 = !DILocation(line: 65, column: 16, scope: !1755)
!1786 = !DILocation(line: 71, column: 27, scope: !1755)
!1787 = !DILocation(line: 74, column: 33, scope: !1755)
!1788 = !DILocation(line: 76, column: 1, scope: !1755)
!1789 = !DISubprogram(name: "strrchr", scope: !1090, file: !1090, line: 273, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1790 = distinct !DIAssignID()
!1791 = !DILocation(line: 0, scope: !537)
!1792 = distinct !DIAssignID()
!1793 = !DILocation(line: 40, column: 29, scope: !537)
!1794 = !DILocation(line: 41, column: 19, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !537, file: !538, line: 41, column: 7)
!1796 = !DILocation(line: 41, column: 7, scope: !537)
!1797 = !DILocation(line: 47, column: 3, scope: !537)
!1798 = !DILocation(line: 48, column: 3, scope: !537)
!1799 = !DILocalVariable(name: "ps", arg: 1, scope: !1800, file: !1801, line: 1135, type: !1804)
!1800 = distinct !DISubprogram(name: "mbszero", scope: !1801, file: !1801, line: 1135, type: !1802, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1805)
!1801 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!1805 = !{!1799}
!1806 = !DILocation(line: 0, scope: !1800, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 48, column: 18, scope: !537)
!1808 = !DILocalVariable(name: "__dest", arg: 1, scope: !1809, file: !1810, line: 57, type: !130)
!1809 = distinct !DISubprogram(name: "memset", scope: !1810, file: !1810, line: 57, type: !1811, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1813)
!1810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!130, !130, !104, !131}
!1813 = !{!1808, !1814, !1815}
!1814 = !DILocalVariable(name: "__ch", arg: 2, scope: !1809, file: !1810, line: 57, type: !104)
!1815 = !DILocalVariable(name: "__len", arg: 3, scope: !1809, file: !1810, line: 57, type: !131)
!1816 = !DILocation(line: 0, scope: !1809, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 1137, column: 3, scope: !1800, inlinedAt: !1807)
!1818 = !DILocation(line: 59, column: 10, scope: !1809, inlinedAt: !1817)
!1819 = !DILocation(line: 49, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !537, file: !538, line: 49, column: 7)
!1821 = !DILocation(line: 49, column: 39, scope: !1820)
!1822 = !DILocation(line: 49, column: 44, scope: !1820)
!1823 = !DILocation(line: 54, column: 1, scope: !537)
!1824 = !DISubprogram(name: "mbrtoc32", scope: !549, file: !549, line: 57, type: !1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!131, !1827, !961, !131, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1804)
!1830 = distinct !DISubprogram(name: "clone_quoting_options", scope: !568, file: !568, line: 113, type: !1831, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1834)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1833, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!1834 = !{!1835, !1836, !1837}
!1835 = !DILocalVariable(name: "o", arg: 1, scope: !1830, file: !568, line: 113, type: !1833)
!1836 = !DILocalVariable(name: "saved_errno", scope: !1830, file: !568, line: 115, type: !104)
!1837 = !DILocalVariable(name: "p", scope: !1830, file: !568, line: 116, type: !1833)
!1838 = !DILocation(line: 0, scope: !1830)
!1839 = !DILocation(line: 115, column: 21, scope: !1830)
!1840 = !DILocation(line: 116, column: 40, scope: !1830)
!1841 = !DILocation(line: 116, column: 31, scope: !1830)
!1842 = !DILocation(line: 118, column: 9, scope: !1830)
!1843 = !DILocation(line: 119, column: 3, scope: !1830)
!1844 = distinct !DISubprogram(name: "get_quoting_style", scope: !568, file: !568, line: 124, type: !1845, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1849)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!594, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "o", arg: 1, scope: !1844, file: !568, line: 124, type: !1847)
!1851 = !DILocation(line: 0, scope: !1844)
!1852 = !DILocation(line: 126, column: 11, scope: !1844)
!1853 = !DILocation(line: 126, column: 46, scope: !1844)
!1854 = !{!1855, !971, i64 0}
!1855 = !{!"quoting_options", !971, i64 0, !971, i64 4, !901, i64 8, !900, i64 40, !900, i64 48}
!1856 = !DILocation(line: 126, column: 3, scope: !1844)
!1857 = distinct !DISubprogram(name: "set_quoting_style", scope: !568, file: !568, line: 132, type: !1858, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1833, !594}
!1860 = !{!1861, !1862}
!1861 = !DILocalVariable(name: "o", arg: 1, scope: !1857, file: !568, line: 132, type: !1833)
!1862 = !DILocalVariable(name: "s", arg: 2, scope: !1857, file: !568, line: 132, type: !594)
!1863 = !DILocation(line: 0, scope: !1857)
!1864 = !DILocation(line: 134, column: 4, scope: !1857)
!1865 = !DILocation(line: 134, column: 45, scope: !1857)
!1866 = !DILocation(line: 135, column: 1, scope: !1857)
!1867 = distinct !DISubprogram(name: "set_char_quoting", scope: !568, file: !568, line: 143, type: !1868, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!104, !1833, !4, !104}
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1877, !1878}
!1871 = !DILocalVariable(name: "o", arg: 1, scope: !1867, file: !568, line: 143, type: !1833)
!1872 = !DILocalVariable(name: "c", arg: 2, scope: !1867, file: !568, line: 143, type: !4)
!1873 = !DILocalVariable(name: "i", arg: 3, scope: !1867, file: !568, line: 143, type: !104)
!1874 = !DILocalVariable(name: "uc", scope: !1867, file: !568, line: 145, type: !136)
!1875 = !DILocalVariable(name: "p", scope: !1867, file: !568, line: 146, type: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1877 = !DILocalVariable(name: "shift", scope: !1867, file: !568, line: 148, type: !104)
!1878 = !DILocalVariable(name: "r", scope: !1867, file: !568, line: 149, type: !79)
!1879 = !DILocation(line: 0, scope: !1867)
!1880 = !DILocation(line: 147, column: 6, scope: !1867)
!1881 = !DILocation(line: 147, column: 41, scope: !1867)
!1882 = !DILocation(line: 147, column: 62, scope: !1867)
!1883 = !DILocation(line: 147, column: 57, scope: !1867)
!1884 = !DILocation(line: 148, column: 15, scope: !1867)
!1885 = !DILocation(line: 149, column: 21, scope: !1867)
!1886 = !DILocation(line: 149, column: 24, scope: !1867)
!1887 = !DILocation(line: 149, column: 34, scope: !1867)
!1888 = !DILocation(line: 150, column: 19, scope: !1867)
!1889 = !DILocation(line: 150, column: 24, scope: !1867)
!1890 = !DILocation(line: 150, column: 6, scope: !1867)
!1891 = !DILocation(line: 151, column: 3, scope: !1867)
!1892 = distinct !DISubprogram(name: "set_quoting_flags", scope: !568, file: !568, line: 159, type: !1893, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!104, !1833, !104}
!1895 = !{!1896, !1897, !1898}
!1896 = !DILocalVariable(name: "o", arg: 1, scope: !1892, file: !568, line: 159, type: !1833)
!1897 = !DILocalVariable(name: "i", arg: 2, scope: !1892, file: !568, line: 159, type: !104)
!1898 = !DILocalVariable(name: "r", scope: !1892, file: !568, line: 163, type: !104)
!1899 = !DILocation(line: 0, scope: !1892)
!1900 = !DILocation(line: 161, column: 8, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1892, file: !568, line: 161, column: 7)
!1902 = !DILocation(line: 161, column: 7, scope: !1892)
!1903 = !DILocation(line: 163, column: 14, scope: !1892)
!1904 = !{!1855, !971, i64 4}
!1905 = !DILocation(line: 164, column: 12, scope: !1892)
!1906 = !DILocation(line: 165, column: 3, scope: !1892)
!1907 = distinct !DISubprogram(name: "set_custom_quoting", scope: !568, file: !568, line: 169, type: !1908, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1833, !134, !134}
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "o", arg: 1, scope: !1907, file: !568, line: 169, type: !1833)
!1912 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1907, file: !568, line: 170, type: !134)
!1913 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1907, file: !568, line: 170, type: !134)
!1914 = !DILocation(line: 0, scope: !1907)
!1915 = !DILocation(line: 172, column: 8, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !568, line: 172, column: 7)
!1917 = !DILocation(line: 172, column: 7, scope: !1907)
!1918 = !DILocation(line: 174, column: 12, scope: !1907)
!1919 = !DILocation(line: 175, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1907, file: !568, line: 175, column: 7)
!1921 = !DILocation(line: 175, column: 19, scope: !1920)
!1922 = !DILocation(line: 176, column: 5, scope: !1920)
!1923 = !DILocation(line: 177, column: 6, scope: !1907)
!1924 = !DILocation(line: 177, column: 17, scope: !1907)
!1925 = !{!1855, !900, i64 40}
!1926 = !DILocation(line: 178, column: 6, scope: !1907)
!1927 = !DILocation(line: 178, column: 18, scope: !1907)
!1928 = !{!1855, !900, i64 48}
!1929 = !DILocation(line: 179, column: 1, scope: !1907)
!1930 = !DISubprogram(name: "abort", scope: !1094, file: !1094, line: 598, type: !523, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1931 = distinct !DISubprogram(name: "quotearg_buffer", scope: !568, file: !568, line: 774, type: !1932, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!131, !129, !131, !134, !131, !1847}
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!1935 = !DILocalVariable(name: "buffer", arg: 1, scope: !1931, file: !568, line: 774, type: !129)
!1936 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1931, file: !568, line: 774, type: !131)
!1937 = !DILocalVariable(name: "arg", arg: 3, scope: !1931, file: !568, line: 775, type: !134)
!1938 = !DILocalVariable(name: "argsize", arg: 4, scope: !1931, file: !568, line: 775, type: !131)
!1939 = !DILocalVariable(name: "o", arg: 5, scope: !1931, file: !568, line: 776, type: !1847)
!1940 = !DILocalVariable(name: "p", scope: !1931, file: !568, line: 778, type: !1847)
!1941 = !DILocalVariable(name: "saved_errno", scope: !1931, file: !568, line: 779, type: !104)
!1942 = !DILocalVariable(name: "r", scope: !1931, file: !568, line: 780, type: !131)
!1943 = !DILocation(line: 0, scope: !1931)
!1944 = !DILocation(line: 778, column: 37, scope: !1931)
!1945 = !DILocation(line: 779, column: 21, scope: !1931)
!1946 = !DILocation(line: 781, column: 43, scope: !1931)
!1947 = !DILocation(line: 781, column: 53, scope: !1931)
!1948 = !DILocation(line: 781, column: 63, scope: !1931)
!1949 = !DILocation(line: 782, column: 43, scope: !1931)
!1950 = !DILocation(line: 782, column: 58, scope: !1931)
!1951 = !DILocation(line: 780, column: 14, scope: !1931)
!1952 = !DILocation(line: 783, column: 9, scope: !1931)
!1953 = !DILocation(line: 784, column: 3, scope: !1931)
!1954 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !568, file: !568, line: 251, type: !1955, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !1959)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!131, !129, !131, !134, !131, !594, !104, !1957, !134, !134}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1985, !1987, !1990, !1991, !1992, !1993, !1996, !1997, !1999, !2000, !2003, !2007, !2008, !2016, !2019, !2020, !2021}
!1960 = !DILocalVariable(name: "buffer", arg: 1, scope: !1954, file: !568, line: 251, type: !129)
!1961 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1954, file: !568, line: 251, type: !131)
!1962 = !DILocalVariable(name: "arg", arg: 3, scope: !1954, file: !568, line: 252, type: !134)
!1963 = !DILocalVariable(name: "argsize", arg: 4, scope: !1954, file: !568, line: 252, type: !131)
!1964 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1954, file: !568, line: 253, type: !594)
!1965 = !DILocalVariable(name: "flags", arg: 6, scope: !1954, file: !568, line: 253, type: !104)
!1966 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1954, file: !568, line: 254, type: !1957)
!1967 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1954, file: !568, line: 255, type: !134)
!1968 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1954, file: !568, line: 256, type: !134)
!1969 = !DILocalVariable(name: "unibyte_locale", scope: !1954, file: !568, line: 258, type: !215)
!1970 = !DILocalVariable(name: "len", scope: !1954, file: !568, line: 260, type: !131)
!1971 = !DILocalVariable(name: "orig_buffersize", scope: !1954, file: !568, line: 261, type: !131)
!1972 = !DILocalVariable(name: "quote_string", scope: !1954, file: !568, line: 262, type: !134)
!1973 = !DILocalVariable(name: "quote_string_len", scope: !1954, file: !568, line: 263, type: !131)
!1974 = !DILocalVariable(name: "backslash_escapes", scope: !1954, file: !568, line: 264, type: !215)
!1975 = !DILocalVariable(name: "elide_outer_quotes", scope: !1954, file: !568, line: 265, type: !215)
!1976 = !DILocalVariable(name: "encountered_single_quote", scope: !1954, file: !568, line: 266, type: !215)
!1977 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1954, file: !568, line: 267, type: !215)
!1978 = !DILabel(scope: !1954, name: "process_input", file: !568, line: 308)
!1979 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1954, file: !568, line: 309, type: !215)
!1980 = !DILocalVariable(name: "lq", scope: !1981, file: !568, line: 361, type: !134)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !568, line: 361, column: 11)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !568, line: 360, column: 13)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !568, line: 333, column: 7)
!1984 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 312, column: 5)
!1985 = !DILocalVariable(name: "i", scope: !1986, file: !568, line: 395, type: !131)
!1986 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 395, column: 3)
!1987 = !DILocalVariable(name: "is_right_quote", scope: !1988, file: !568, line: 397, type: !215)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !568, line: 396, column: 5)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !568, line: 395, column: 3)
!1990 = !DILocalVariable(name: "escaping", scope: !1988, file: !568, line: 398, type: !215)
!1991 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1988, file: !568, line: 399, type: !215)
!1992 = !DILocalVariable(name: "c", scope: !1988, file: !568, line: 417, type: !136)
!1993 = !DILabel(scope: !1994, name: "c_and_shell_escape", file: !568, line: 502)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 478, column: 9)
!1995 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 419, column: 9)
!1996 = !DILabel(scope: !1994, name: "c_escape", file: !568, line: 507)
!1997 = !DILocalVariable(name: "m", scope: !1998, file: !568, line: 598, type: !131)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 596, column: 11)
!1999 = !DILocalVariable(name: "printable", scope: !1998, file: !568, line: 600, type: !215)
!2000 = !DILocalVariable(name: "mbs", scope: !2001, file: !568, line: 609, type: !643)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !568, line: 608, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !568, line: 602, column: 17)
!2003 = !DILocalVariable(name: "w", scope: !2004, file: !568, line: 618, type: !548)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !568, line: 617, column: 19)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !568, line: 616, column: 17)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !568, line: 616, column: 17)
!2007 = !DILocalVariable(name: "bytes", scope: !2004, file: !568, line: 619, type: !131)
!2008 = !DILocalVariable(name: "j", scope: !2009, file: !568, line: 648, type: !131)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !568, line: 648, column: 29)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !568, line: 647, column: 27)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !568, line: 645, column: 29)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !568, line: 636, column: 23)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !568, line: 628, column: 30)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !568, line: 623, column: 30)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !568, line: 621, column: 25)
!2016 = !DILocalVariable(name: "ilim", scope: !2017, file: !568, line: 674, type: !131)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !568, line: 671, column: 15)
!2018 = distinct !DILexicalBlock(scope: !1998, file: !568, line: 670, column: 17)
!2019 = !DILabel(scope: !1988, name: "store_escape", file: !568, line: 709)
!2020 = !DILabel(scope: !1988, name: "store_c", file: !568, line: 712)
!2021 = !DILabel(scope: !1954, name: "force_outer_quoting_style", file: !568, line: 753)
!2022 = distinct !DIAssignID()
!2023 = distinct !DIAssignID()
!2024 = distinct !DIAssignID()
!2025 = distinct !DIAssignID()
!2026 = distinct !DIAssignID()
!2027 = !DILocation(line: 0, scope: !2001)
!2028 = distinct !DIAssignID()
!2029 = !DILocation(line: 0, scope: !2004)
!2030 = !DILocation(line: 0, scope: !1954)
!2031 = !DILocation(line: 258, column: 25, scope: !1954)
!2032 = !DILocation(line: 258, column: 36, scope: !1954)
!2033 = !DILocation(line: 265, column: 8, scope: !1954)
!2034 = !DILocation(line: 267, column: 3, scope: !1954)
!2035 = !DILocation(line: 261, column: 10, scope: !1954)
!2036 = !DILocation(line: 262, column: 15, scope: !1954)
!2037 = !DILocation(line: 263, column: 10, scope: !1954)
!2038 = !DILocation(line: 264, column: 8, scope: !1954)
!2039 = !DILocation(line: 266, column: 8, scope: !1954)
!2040 = !DILocation(line: 267, column: 8, scope: !1954)
!2041 = !DILocation(line: 308, column: 2, scope: !1954)
!2042 = !DILocation(line: 311, column: 3, scope: !1954)
!2043 = !DILocation(line: 318, column: 11, scope: !1984)
!2044 = !DILocation(line: 318, column: 12, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1984, file: !568, line: 318, column: 11)
!2046 = !DILocation(line: 319, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !568, line: 319, column: 9)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !568, line: 319, column: 9)
!2049 = !DILocation(line: 319, column: 9, scope: !2048)
!2050 = !DILocation(line: 0, scope: !634, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 357, column: 26, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !568, line: 335, column: 11)
!2053 = distinct !DILexicalBlock(scope: !1983, file: !568, line: 334, column: 13)
!2054 = !DILocation(line: 199, column: 29, scope: !634, inlinedAt: !2051)
!2055 = !DILocation(line: 201, column: 19, scope: !2056, inlinedAt: !2051)
!2056 = distinct !DILexicalBlock(scope: !634, file: !568, line: 201, column: 7)
!2057 = !DILocation(line: 201, column: 7, scope: !634, inlinedAt: !2051)
!2058 = !DILocation(line: 229, column: 3, scope: !634, inlinedAt: !2051)
!2059 = !DILocation(line: 230, column: 3, scope: !634, inlinedAt: !2051)
!2060 = !DILocalVariable(name: "ps", arg: 1, scope: !2061, file: !1801, line: 1135, type: !2064)
!2061 = distinct !DISubprogram(name: "mbszero", scope: !1801, file: !1801, line: 1135, type: !2062, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2065)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!2065 = !{!2060}
!2066 = !DILocation(line: 0, scope: !2061, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 230, column: 18, scope: !634, inlinedAt: !2051)
!2068 = !DILocalVariable(name: "__dest", arg: 1, scope: !2069, file: !1810, line: 57, type: !130)
!2069 = distinct !DISubprogram(name: "memset", scope: !1810, file: !1810, line: 57, type: !1811, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2070)
!2070 = !{!2068, !2071, !2072}
!2071 = !DILocalVariable(name: "__ch", arg: 2, scope: !2069, file: !1810, line: 57, type: !104)
!2072 = !DILocalVariable(name: "__len", arg: 3, scope: !2069, file: !1810, line: 57, type: !131)
!2073 = !DILocation(line: 0, scope: !2069, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 1137, column: 3, scope: !2061, inlinedAt: !2067)
!2075 = !DILocation(line: 59, column: 10, scope: !2069, inlinedAt: !2074)
!2076 = !DILocation(line: 231, column: 7, scope: !2077, inlinedAt: !2051)
!2077 = distinct !DILexicalBlock(scope: !634, file: !568, line: 231, column: 7)
!2078 = !DILocation(line: 231, column: 40, scope: !2077, inlinedAt: !2051)
!2079 = !DILocation(line: 231, column: 45, scope: !2077, inlinedAt: !2051)
!2080 = !DILocation(line: 235, column: 1, scope: !634, inlinedAt: !2051)
!2081 = !DILocation(line: 0, scope: !634, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 358, column: 27, scope: !2052)
!2083 = !DILocation(line: 199, column: 29, scope: !634, inlinedAt: !2082)
!2084 = !DILocation(line: 201, column: 19, scope: !2056, inlinedAt: !2082)
!2085 = !DILocation(line: 201, column: 7, scope: !634, inlinedAt: !2082)
!2086 = !DILocation(line: 229, column: 3, scope: !634, inlinedAt: !2082)
!2087 = !DILocation(line: 230, column: 3, scope: !634, inlinedAt: !2082)
!2088 = !DILocation(line: 0, scope: !2061, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 230, column: 18, scope: !634, inlinedAt: !2082)
!2090 = !DILocation(line: 0, scope: !2069, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 1137, column: 3, scope: !2061, inlinedAt: !2089)
!2092 = !DILocation(line: 59, column: 10, scope: !2069, inlinedAt: !2091)
!2093 = !DILocation(line: 231, column: 7, scope: !2077, inlinedAt: !2082)
!2094 = !DILocation(line: 231, column: 40, scope: !2077, inlinedAt: !2082)
!2095 = !DILocation(line: 231, column: 45, scope: !2077, inlinedAt: !2082)
!2096 = !DILocation(line: 235, column: 1, scope: !634, inlinedAt: !2082)
!2097 = !DILocation(line: 360, column: 14, scope: !1982)
!2098 = !DILocation(line: 360, column: 13, scope: !1983)
!2099 = !DILocation(line: 0, scope: !1981)
!2100 = !DILocation(line: 361, column: 45, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1981, file: !568, line: 361, column: 11)
!2102 = !DILocation(line: 361, column: 11, scope: !1981)
!2103 = !DILocation(line: 362, column: 13, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !568, line: 362, column: 13)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !568, line: 362, column: 13)
!2106 = !DILocation(line: 362, column: 13, scope: !2105)
!2107 = !DILocation(line: 361, column: 52, scope: !2101)
!2108 = distinct !{!2108, !2102, !2109, !1017}
!2109 = !DILocation(line: 362, column: 13, scope: !1981)
!2110 = !DILocation(line: 260, column: 10, scope: !1954)
!2111 = !DILocation(line: 365, column: 28, scope: !1983)
!2112 = !DILocation(line: 367, column: 7, scope: !1984)
!2113 = !DILocation(line: 370, column: 7, scope: !1984)
!2114 = !DILocation(line: 373, column: 7, scope: !1984)
!2115 = !DILocation(line: 376, column: 12, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1984, file: !568, line: 376, column: 11)
!2117 = !DILocation(line: 376, column: 11, scope: !1984)
!2118 = !DILocation(line: 381, column: 12, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1984, file: !568, line: 381, column: 11)
!2120 = !DILocation(line: 381, column: 11, scope: !1984)
!2121 = !DILocation(line: 382, column: 9, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !568, line: 382, column: 9)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !568, line: 382, column: 9)
!2124 = !DILocation(line: 382, column: 9, scope: !2123)
!2125 = !DILocation(line: 389, column: 7, scope: !1984)
!2126 = !DILocation(line: 392, column: 7, scope: !1984)
!2127 = !DILocation(line: 0, scope: !1986)
!2128 = !DILocation(line: 395, column: 8, scope: !1986)
!2129 = !DILocation(line: 309, column: 8, scope: !1954)
!2130 = !DILocation(line: 395, scope: !1986)
!2131 = !DILocation(line: 395, column: 34, scope: !1989)
!2132 = !DILocation(line: 395, column: 26, scope: !1989)
!2133 = !DILocation(line: 395, column: 48, scope: !1989)
!2134 = !DILocation(line: 395, column: 55, scope: !1989)
!2135 = !DILocation(line: 395, column: 3, scope: !1986)
!2136 = !DILocation(line: 395, column: 67, scope: !1989)
!2137 = !DILocation(line: 0, scope: !1988)
!2138 = !DILocation(line: 402, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 401, column: 11)
!2140 = !DILocation(line: 404, column: 17, scope: !2139)
!2141 = !DILocation(line: 405, column: 39, scope: !2139)
!2142 = !DILocation(line: 409, column: 32, scope: !2139)
!2143 = !DILocation(line: 405, column: 19, scope: !2139)
!2144 = !DILocation(line: 405, column: 15, scope: !2139)
!2145 = !DILocation(line: 410, column: 11, scope: !2139)
!2146 = !DILocation(line: 410, column: 25, scope: !2139)
!2147 = !DILocalVariable(name: "__s1", arg: 1, scope: !2148, file: !983, line: 974, type: !1118)
!2148 = distinct !DISubprogram(name: "memeq", scope: !983, file: !983, line: 974, type: !1770, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2149)
!2149 = !{!2147, !2150, !2151}
!2150 = !DILocalVariable(name: "__s2", arg: 2, scope: !2148, file: !983, line: 974, type: !1118)
!2151 = !DILocalVariable(name: "__n", arg: 3, scope: !2148, file: !983, line: 974, type: !131)
!2152 = !DILocation(line: 0, scope: !2148, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 410, column: 14, scope: !2139)
!2154 = !DILocation(line: 976, column: 11, scope: !2148, inlinedAt: !2153)
!2155 = !DILocation(line: 976, column: 10, scope: !2148, inlinedAt: !2153)
!2156 = !DILocation(line: 401, column: 11, scope: !1988)
!2157 = !DILocation(line: 417, column: 25, scope: !1988)
!2158 = !DILocation(line: 418, column: 7, scope: !1988)
!2159 = !DILocation(line: 421, column: 15, scope: !1995)
!2160 = !DILocation(line: 423, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !568, line: 423, column: 15)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !568, line: 422, column: 13)
!2163 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 421, column: 15)
!2164 = !DILocation(line: 423, column: 15, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !568, line: 423, column: 15)
!2166 = !DILocation(line: 423, column: 15, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !568, line: 423, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !568, line: 423, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !568, line: 423, column: 15)
!2170 = !DILocation(line: 423, column: 15, scope: !2168)
!2171 = !DILocation(line: 423, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !568, line: 423, column: 15)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !568, line: 423, column: 15)
!2174 = !DILocation(line: 423, column: 15, scope: !2173)
!2175 = !DILocation(line: 423, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !568, line: 423, column: 15)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !568, line: 423, column: 15)
!2178 = !DILocation(line: 423, column: 15, scope: !2177)
!2179 = !DILocation(line: 423, column: 15, scope: !2169)
!2180 = !DILocation(line: 423, column: 15, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !568, line: 423, column: 15)
!2182 = distinct !DILexicalBlock(scope: !2161, file: !568, line: 423, column: 15)
!2183 = !DILocation(line: 423, column: 15, scope: !2182)
!2184 = !DILocation(line: 431, column: 19, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2162, file: !568, line: 430, column: 19)
!2186 = !DILocation(line: 431, column: 24, scope: !2185)
!2187 = !DILocation(line: 431, column: 28, scope: !2185)
!2188 = !DILocation(line: 431, column: 38, scope: !2185)
!2189 = !DILocation(line: 431, column: 48, scope: !2185)
!2190 = !DILocation(line: 431, column: 59, scope: !2185)
!2191 = !DILocation(line: 433, column: 19, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !568, line: 433, column: 19)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !568, line: 433, column: 19)
!2194 = distinct !DILexicalBlock(scope: !2185, file: !568, line: 432, column: 17)
!2195 = !DILocation(line: 433, column: 19, scope: !2193)
!2196 = !DILocation(line: 434, column: 19, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !568, line: 434, column: 19)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !568, line: 434, column: 19)
!2199 = !DILocation(line: 434, column: 19, scope: !2198)
!2200 = !DILocation(line: 435, column: 17, scope: !2194)
!2201 = !DILocation(line: 442, column: 20, scope: !2163)
!2202 = !DILocation(line: 447, column: 11, scope: !1995)
!2203 = !DILocation(line: 450, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 448, column: 13)
!2205 = !DILocation(line: 456, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2204, file: !568, line: 455, column: 19)
!2207 = !DILocation(line: 456, column: 24, scope: !2206)
!2208 = !DILocation(line: 456, column: 28, scope: !2206)
!2209 = !DILocation(line: 456, column: 38, scope: !2206)
!2210 = !DILocation(line: 456, column: 41, scope: !2206)
!2211 = !DILocation(line: 456, column: 52, scope: !2206)
!2212 = !DILocation(line: 455, column: 19, scope: !2204)
!2213 = !DILocation(line: 457, column: 25, scope: !2206)
!2214 = !DILocation(line: 457, column: 17, scope: !2206)
!2215 = !DILocation(line: 464, column: 25, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2206, file: !568, line: 458, column: 19)
!2217 = !DILocation(line: 468, column: 21, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !568, line: 468, column: 21)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !568, line: 468, column: 21)
!2220 = !DILocation(line: 468, column: 21, scope: !2219)
!2221 = !DILocation(line: 469, column: 21, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !568, line: 469, column: 21)
!2223 = distinct !DILexicalBlock(scope: !2216, file: !568, line: 469, column: 21)
!2224 = !DILocation(line: 469, column: 21, scope: !2223)
!2225 = !DILocation(line: 470, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !568, line: 470, column: 21)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !568, line: 470, column: 21)
!2228 = !DILocation(line: 470, column: 21, scope: !2227)
!2229 = !DILocation(line: 471, column: 21, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !568, line: 471, column: 21)
!2231 = distinct !DILexicalBlock(scope: !2216, file: !568, line: 471, column: 21)
!2232 = !DILocation(line: 471, column: 21, scope: !2231)
!2233 = !DILocation(line: 472, column: 21, scope: !2216)
!2234 = !DILocation(line: 482, column: 33, scope: !1994)
!2235 = !DILocation(line: 483, column: 33, scope: !1994)
!2236 = !DILocation(line: 485, column: 33, scope: !1994)
!2237 = !DILocation(line: 486, column: 33, scope: !1994)
!2238 = !DILocation(line: 487, column: 33, scope: !1994)
!2239 = !DILocation(line: 490, column: 17, scope: !1994)
!2240 = !DILocation(line: 492, column: 21, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !568, line: 491, column: 15)
!2242 = distinct !DILexicalBlock(scope: !1994, file: !568, line: 490, column: 17)
!2243 = !DILocation(line: 499, column: 35, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1994, file: !568, line: 499, column: 17)
!2245 = !DILocation(line: 499, column: 57, scope: !2244)
!2246 = !DILocation(line: 0, scope: !1994)
!2247 = !DILocation(line: 502, column: 11, scope: !1994)
!2248 = !DILocation(line: 504, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1994, file: !568, line: 503, column: 17)
!2250 = !DILocation(line: 507, column: 11, scope: !1994)
!2251 = !DILocation(line: 508, column: 17, scope: !1994)
!2252 = !DILocation(line: 517, column: 15, scope: !1995)
!2253 = !DILocation(line: 517, column: 40, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 517, column: 15)
!2255 = !DILocation(line: 517, column: 47, scope: !2254)
!2256 = !DILocation(line: 517, column: 18, scope: !2254)
!2257 = !DILocation(line: 521, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 521, column: 15)
!2259 = !DILocation(line: 521, column: 15, scope: !1995)
!2260 = !DILocation(line: 525, column: 11, scope: !1995)
!2261 = !DILocation(line: 537, column: 15, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 536, column: 15)
!2263 = !DILocation(line: 544, column: 15, scope: !1995)
!2264 = !DILocation(line: 546, column: 19, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !568, line: 545, column: 13)
!2266 = distinct !DILexicalBlock(scope: !1995, file: !568, line: 544, column: 15)
!2267 = !DILocation(line: 549, column: 19, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !568, line: 549, column: 19)
!2269 = !DILocation(line: 549, column: 30, scope: !2268)
!2270 = !DILocation(line: 558, column: 15, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !568, line: 558, column: 15)
!2272 = distinct !DILexicalBlock(scope: !2265, file: !568, line: 558, column: 15)
!2273 = !DILocation(line: 558, column: 15, scope: !2272)
!2274 = !DILocation(line: 559, column: 15, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !568, line: 559, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2265, file: !568, line: 559, column: 15)
!2277 = !DILocation(line: 559, column: 15, scope: !2276)
!2278 = !DILocation(line: 560, column: 15, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !568, line: 560, column: 15)
!2280 = distinct !DILexicalBlock(scope: !2265, file: !568, line: 560, column: 15)
!2281 = !DILocation(line: 560, column: 15, scope: !2280)
!2282 = !DILocation(line: 562, column: 13, scope: !2265)
!2283 = !DILocation(line: 602, column: 17, scope: !1998)
!2284 = !DILocation(line: 0, scope: !1998)
!2285 = !DILocation(line: 605, column: 29, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2002, file: !568, line: 603, column: 15)
!2287 = !DILocation(line: 605, column: 27, scope: !2286)
!2288 = !DILocation(line: 606, column: 15, scope: !2286)
!2289 = !DILocation(line: 609, column: 17, scope: !2001)
!2290 = !DILocation(line: 0, scope: !2061, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 609, column: 32, scope: !2001)
!2292 = !DILocation(line: 0, scope: !2069, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 1137, column: 3, scope: !2061, inlinedAt: !2291)
!2294 = !DILocation(line: 59, column: 10, scope: !2069, inlinedAt: !2293)
!2295 = !DILocation(line: 613, column: 29, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2001, file: !568, line: 613, column: 21)
!2297 = !DILocation(line: 613, column: 21, scope: !2001)
!2298 = !DILocation(line: 614, column: 29, scope: !2296)
!2299 = !DILocation(line: 614, column: 19, scope: !2296)
!2300 = !DILocation(line: 618, column: 21, scope: !2004)
!2301 = !DILocation(line: 620, column: 54, scope: !2004)
!2302 = !DILocation(line: 619, column: 36, scope: !2004)
!2303 = !DILocation(line: 621, column: 25, scope: !2004)
!2304 = !DILocation(line: 631, column: 38, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2013, file: !568, line: 629, column: 23)
!2306 = !DILocation(line: 631, column: 48, scope: !2305)
!2307 = !DILocation(line: 626, column: 25, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2014, file: !568, line: 624, column: 23)
!2309 = !DILocation(line: 631, column: 51, scope: !2305)
!2310 = !DILocation(line: 631, column: 25, scope: !2305)
!2311 = !DILocation(line: 632, column: 28, scope: !2305)
!2312 = !DILocation(line: 631, column: 34, scope: !2305)
!2313 = distinct !{!2313, !2310, !2311, !1017}
!2314 = !DILocation(line: 0, scope: !2009)
!2315 = !DILocation(line: 646, column: 29, scope: !2011)
!2316 = !DILocation(line: 649, column: 39, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2009, file: !568, line: 648, column: 29)
!2318 = !DILocation(line: 649, column: 31, scope: !2317)
!2319 = !DILocation(line: 648, column: 60, scope: !2317)
!2320 = !DILocation(line: 648, column: 50, scope: !2317)
!2321 = !DILocation(line: 648, column: 29, scope: !2009)
!2322 = distinct !{!2322, !2321, !2323, !1017}
!2323 = !DILocation(line: 654, column: 33, scope: !2009)
!2324 = !DILocation(line: 657, column: 43, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2012, file: !568, line: 657, column: 29)
!2326 = !DILocalVariable(name: "wc", arg: 1, scope: !2327, file: !2328, line: 865, type: !2331)
!2327 = distinct !DISubprogram(name: "c32isprint", scope: !2328, file: !2328, line: 865, type: !2329, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2333)
!2328 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!104, !2331}
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2332, line: 20, baseType: !79)
!2332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2333 = !{!2326}
!2334 = !DILocation(line: 0, scope: !2327, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 657, column: 31, scope: !2325)
!2336 = !DILocation(line: 871, column: 10, scope: !2327, inlinedAt: !2335)
!2337 = !DILocation(line: 657, column: 31, scope: !2325)
!2338 = !DILocation(line: 664, column: 23, scope: !2004)
!2339 = !DILocation(line: 665, column: 19, scope: !2005)
!2340 = !DILocation(line: 666, column: 15, scope: !2002)
!2341 = !DILocation(line: 0, scope: !2002)
!2342 = !DILocation(line: 670, column: 19, scope: !2018)
!2343 = !DILocation(line: 670, column: 23, scope: !2018)
!2344 = !DILocation(line: 674, column: 33, scope: !2017)
!2345 = !DILocation(line: 0, scope: !2017)
!2346 = !DILocation(line: 676, column: 17, scope: !2017)
!2347 = !DILocation(line: 398, column: 12, scope: !1988)
!2348 = !DILocation(line: 678, column: 43, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !568, line: 678, column: 25)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !568, line: 677, column: 19)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !568, line: 676, column: 17)
!2352 = distinct !DILexicalBlock(scope: !2017, file: !568, line: 676, column: 17)
!2353 = !DILocation(line: 680, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !568, line: 680, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2349, file: !568, line: 679, column: 23)
!2356 = !DILocation(line: 680, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2354, file: !568, line: 680, column: 25)
!2358 = !DILocation(line: 680, column: 25, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !568, line: 680, column: 25)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !568, line: 680, column: 25)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !568, line: 680, column: 25)
!2362 = !DILocation(line: 680, column: 25, scope: !2360)
!2363 = !DILocation(line: 680, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !568, line: 680, column: 25)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !568, line: 680, column: 25)
!2366 = !DILocation(line: 680, column: 25, scope: !2365)
!2367 = !DILocation(line: 680, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !568, line: 680, column: 25)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !568, line: 680, column: 25)
!2370 = !DILocation(line: 680, column: 25, scope: !2369)
!2371 = !DILocation(line: 680, column: 25, scope: !2361)
!2372 = !DILocation(line: 680, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !568, line: 680, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2354, file: !568, line: 680, column: 25)
!2375 = !DILocation(line: 680, column: 25, scope: !2374)
!2376 = !DILocation(line: 681, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !568, line: 681, column: 25)
!2378 = distinct !DILexicalBlock(scope: !2355, file: !568, line: 681, column: 25)
!2379 = !DILocation(line: 681, column: 25, scope: !2378)
!2380 = !DILocation(line: 682, column: 25, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !568, line: 682, column: 25)
!2382 = distinct !DILexicalBlock(scope: !2355, file: !568, line: 682, column: 25)
!2383 = !DILocation(line: 682, column: 25, scope: !2382)
!2384 = !DILocation(line: 683, column: 38, scope: !2355)
!2385 = !DILocation(line: 683, column: 33, scope: !2355)
!2386 = !DILocation(line: 684, column: 23, scope: !2355)
!2387 = !DILocation(line: 685, column: 30, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2349, file: !568, line: 685, column: 30)
!2389 = !DILocation(line: 685, column: 30, scope: !2349)
!2390 = !DILocation(line: 687, column: 25, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !568, line: 687, column: 25)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !568, line: 687, column: 25)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !568, line: 686, column: 23)
!2394 = !DILocation(line: 687, column: 25, scope: !2392)
!2395 = !DILocation(line: 689, column: 23, scope: !2393)
!2396 = !DILocation(line: 690, column: 35, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2350, file: !568, line: 690, column: 25)
!2398 = !DILocation(line: 690, column: 30, scope: !2397)
!2399 = !DILocation(line: 690, column: 25, scope: !2350)
!2400 = !DILocation(line: 692, column: 21, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !568, line: 692, column: 21)
!2402 = distinct !DILexicalBlock(scope: !2350, file: !568, line: 692, column: 21)
!2403 = !DILocation(line: 692, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !568, line: 692, column: 21)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !568, line: 692, column: 21)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !568, line: 692, column: 21)
!2407 = !DILocation(line: 692, column: 21, scope: !2405)
!2408 = !DILocation(line: 692, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !568, line: 692, column: 21)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !568, line: 692, column: 21)
!2411 = !DILocation(line: 692, column: 21, scope: !2410)
!2412 = !DILocation(line: 692, column: 21, scope: !2406)
!2413 = !DILocation(line: 0, scope: !2350)
!2414 = !DILocation(line: 693, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !568, line: 693, column: 21)
!2416 = distinct !DILexicalBlock(scope: !2350, file: !568, line: 693, column: 21)
!2417 = !DILocation(line: 693, column: 21, scope: !2416)
!2418 = !DILocation(line: 694, column: 25, scope: !2350)
!2419 = !DILocation(line: 676, column: 17, scope: !2351)
!2420 = distinct !{!2420, !2421, !2422}
!2421 = !DILocation(line: 676, column: 17, scope: !2352)
!2422 = !DILocation(line: 695, column: 19, scope: !2352)
!2423 = !DILocation(line: 409, column: 30, scope: !2139)
!2424 = !DILocation(line: 702, column: 34, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 702, column: 11)
!2426 = !DILocation(line: 704, column: 14, scope: !2425)
!2427 = !DILocation(line: 705, column: 14, scope: !2425)
!2428 = !DILocation(line: 705, column: 35, scope: !2425)
!2429 = !DILocation(line: 705, column: 17, scope: !2425)
!2430 = !DILocation(line: 705, column: 47, scope: !2425)
!2431 = !DILocation(line: 705, column: 65, scope: !2425)
!2432 = !DILocation(line: 706, column: 11, scope: !2425)
!2433 = !DILocation(line: 702, column: 11, scope: !1988)
!2434 = !DILocation(line: 395, column: 15, scope: !1986)
!2435 = !DILocation(line: 709, column: 5, scope: !1988)
!2436 = !DILocation(line: 710, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 710, column: 7)
!2438 = !DILocation(line: 710, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2437, file: !568, line: 710, column: 7)
!2440 = !DILocation(line: 710, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !568, line: 710, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !568, line: 710, column: 7)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !568, line: 710, column: 7)
!2444 = !DILocation(line: 710, column: 7, scope: !2442)
!2445 = !DILocation(line: 710, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !568, line: 710, column: 7)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !568, line: 710, column: 7)
!2448 = !DILocation(line: 710, column: 7, scope: !2447)
!2449 = !DILocation(line: 710, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !568, line: 710, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2443, file: !568, line: 710, column: 7)
!2452 = !DILocation(line: 710, column: 7, scope: !2451)
!2453 = !DILocation(line: 710, column: 7, scope: !2443)
!2454 = !DILocation(line: 710, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !568, line: 710, column: 7)
!2456 = distinct !DILexicalBlock(scope: !2437, file: !568, line: 710, column: 7)
!2457 = !DILocation(line: 710, column: 7, scope: !2456)
!2458 = !DILocation(line: 712, column: 5, scope: !1988)
!2459 = !DILocation(line: 713, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !568, line: 713, column: 7)
!2461 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 713, column: 7)
!2462 = !DILocation(line: 417, column: 21, scope: !1988)
!2463 = !DILocation(line: 713, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !568, line: 713, column: 7)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !568, line: 713, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2460, file: !568, line: 713, column: 7)
!2467 = !DILocation(line: 713, column: 7, scope: !2465)
!2468 = !DILocation(line: 713, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !568, line: 713, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !568, line: 713, column: 7)
!2471 = !DILocation(line: 713, column: 7, scope: !2470)
!2472 = !DILocation(line: 713, column: 7, scope: !2466)
!2473 = !DILocation(line: 714, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !568, line: 714, column: 7)
!2475 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 714, column: 7)
!2476 = !DILocation(line: 714, column: 7, scope: !2475)
!2477 = !DILocation(line: 716, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !1988, file: !568, line: 716, column: 11)
!2479 = !DILocation(line: 716, column: 11, scope: !1988)
!2480 = !DILocation(line: 718, column: 5, scope: !1989)
!2481 = !DILocation(line: 395, column: 82, scope: !1989)
!2482 = !DILocation(line: 395, column: 3, scope: !1989)
!2483 = distinct !{!2483, !2135, !2484, !1017}
!2484 = !DILocation(line: 718, column: 5, scope: !1986)
!2485 = !DILocation(line: 720, column: 11, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 720, column: 7)
!2487 = !DILocation(line: 720, column: 16, scope: !2486)
!2488 = !DILocation(line: 728, column: 51, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 728, column: 7)
!2490 = !DILocation(line: 731, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !568, line: 731, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !568, line: 730, column: 5)
!2493 = !DILocation(line: 731, column: 11, scope: !2492)
!2494 = !DILocation(line: 732, column: 16, scope: !2491)
!2495 = !DILocation(line: 732, column: 9, scope: !2491)
!2496 = !DILocation(line: 736, column: 18, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2491, file: !568, line: 736, column: 16)
!2498 = !DILocation(line: 736, column: 29, scope: !2497)
!2499 = !DILocation(line: 745, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 745, column: 7)
!2501 = !DILocation(line: 745, column: 20, scope: !2500)
!2502 = !DILocation(line: 746, column: 12, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !568, line: 746, column: 5)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !568, line: 746, column: 5)
!2505 = !DILocation(line: 746, column: 5, scope: !2504)
!2506 = !DILocation(line: 747, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !568, line: 747, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !568, line: 747, column: 7)
!2509 = !DILocation(line: 747, column: 7, scope: !2508)
!2510 = !DILocation(line: 746, column: 39, scope: !2503)
!2511 = distinct !{!2511, !2505, !2512, !1017}
!2512 = !DILocation(line: 747, column: 7, scope: !2504)
!2513 = !DILocation(line: 749, column: 11, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 749, column: 7)
!2515 = !DILocation(line: 749, column: 7, scope: !1954)
!2516 = !DILocation(line: 750, column: 5, scope: !2514)
!2517 = !DILocation(line: 750, column: 17, scope: !2514)
!2518 = !DILocation(line: 753, column: 2, scope: !1954)
!2519 = !DILocation(line: 756, column: 51, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !1954, file: !568, line: 756, column: 7)
!2521 = !DILocation(line: 756, column: 21, scope: !2520)
!2522 = !DILocation(line: 760, column: 42, scope: !1954)
!2523 = !DILocation(line: 758, column: 10, scope: !1954)
!2524 = !DILocation(line: 758, column: 3, scope: !1954)
!2525 = !DILocation(line: 762, column: 1, scope: !1954)
!2526 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1094, file: !1094, line: 98, type: !2527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!131}
!2529 = !DISubprogram(name: "strlen", scope: !1090, file: !1090, line: 407, type: !2530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!133, !134}
!2532 = !DISubprogram(name: "iswprint", scope: !2533, file: !2533, line: 120, type: !2329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2533 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2534 = distinct !DISubprogram(name: "quotearg_alloc", scope: !568, file: !568, line: 788, type: !2535, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!129, !134, !131, !1847}
!2537 = !{!2538, !2539, !2540}
!2538 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !568, line: 788, type: !134)
!2539 = !DILocalVariable(name: "argsize", arg: 2, scope: !2534, file: !568, line: 788, type: !131)
!2540 = !DILocalVariable(name: "o", arg: 3, scope: !2534, file: !568, line: 789, type: !1847)
!2541 = !DILocation(line: 0, scope: !2534)
!2542 = !DILocalVariable(name: "arg", arg: 1, scope: !2543, file: !568, line: 801, type: !134)
!2543 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !568, file: !568, line: 801, type: !2544, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!129, !134, !131, !807, !1847}
!2546 = !{!2542, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554}
!2547 = !DILocalVariable(name: "argsize", arg: 2, scope: !2543, file: !568, line: 801, type: !131)
!2548 = !DILocalVariable(name: "size", arg: 3, scope: !2543, file: !568, line: 801, type: !807)
!2549 = !DILocalVariable(name: "o", arg: 4, scope: !2543, file: !568, line: 802, type: !1847)
!2550 = !DILocalVariable(name: "p", scope: !2543, file: !568, line: 804, type: !1847)
!2551 = !DILocalVariable(name: "saved_errno", scope: !2543, file: !568, line: 805, type: !104)
!2552 = !DILocalVariable(name: "flags", scope: !2543, file: !568, line: 807, type: !104)
!2553 = !DILocalVariable(name: "bufsize", scope: !2543, file: !568, line: 808, type: !131)
!2554 = !DILocalVariable(name: "buf", scope: !2543, file: !568, line: 812, type: !129)
!2555 = !DILocation(line: 0, scope: !2543, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 791, column: 10, scope: !2534)
!2557 = !DILocation(line: 804, column: 37, scope: !2543, inlinedAt: !2556)
!2558 = !DILocation(line: 805, column: 21, scope: !2543, inlinedAt: !2556)
!2559 = !DILocation(line: 807, column: 18, scope: !2543, inlinedAt: !2556)
!2560 = !DILocation(line: 807, column: 24, scope: !2543, inlinedAt: !2556)
!2561 = !DILocation(line: 808, column: 72, scope: !2543, inlinedAt: !2556)
!2562 = !DILocation(line: 809, column: 56, scope: !2543, inlinedAt: !2556)
!2563 = !DILocation(line: 810, column: 49, scope: !2543, inlinedAt: !2556)
!2564 = !DILocation(line: 811, column: 49, scope: !2543, inlinedAt: !2556)
!2565 = !DILocation(line: 808, column: 20, scope: !2543, inlinedAt: !2556)
!2566 = !DILocation(line: 811, column: 62, scope: !2543, inlinedAt: !2556)
!2567 = !DILocation(line: 812, column: 15, scope: !2543, inlinedAt: !2556)
!2568 = !DILocation(line: 813, column: 60, scope: !2543, inlinedAt: !2556)
!2569 = !DILocation(line: 815, column: 32, scope: !2543, inlinedAt: !2556)
!2570 = !DILocation(line: 815, column: 47, scope: !2543, inlinedAt: !2556)
!2571 = !DILocation(line: 813, column: 3, scope: !2543, inlinedAt: !2556)
!2572 = !DILocation(line: 816, column: 9, scope: !2543, inlinedAt: !2556)
!2573 = !DILocation(line: 791, column: 3, scope: !2534)
!2574 = !DILocation(line: 0, scope: !2543)
!2575 = !DILocation(line: 804, column: 37, scope: !2543)
!2576 = !DILocation(line: 805, column: 21, scope: !2543)
!2577 = !DILocation(line: 807, column: 18, scope: !2543)
!2578 = !DILocation(line: 807, column: 27, scope: !2543)
!2579 = !DILocation(line: 807, column: 24, scope: !2543)
!2580 = !DILocation(line: 808, column: 72, scope: !2543)
!2581 = !DILocation(line: 809, column: 56, scope: !2543)
!2582 = !DILocation(line: 810, column: 49, scope: !2543)
!2583 = !DILocation(line: 811, column: 49, scope: !2543)
!2584 = !DILocation(line: 808, column: 20, scope: !2543)
!2585 = !DILocation(line: 811, column: 62, scope: !2543)
!2586 = !DILocation(line: 812, column: 15, scope: !2543)
!2587 = !DILocation(line: 813, column: 60, scope: !2543)
!2588 = !DILocation(line: 815, column: 32, scope: !2543)
!2589 = !DILocation(line: 815, column: 47, scope: !2543)
!2590 = !DILocation(line: 813, column: 3, scope: !2543)
!2591 = !DILocation(line: 816, column: 9, scope: !2543)
!2592 = !DILocation(line: 817, column: 7, scope: !2543)
!2593 = !DILocation(line: 818, column: 11, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2543, file: !568, line: 817, column: 7)
!2595 = !{!1283, !1283, i64 0}
!2596 = !DILocation(line: 818, column: 5, scope: !2594)
!2597 = !DILocation(line: 819, column: 3, scope: !2543)
!2598 = distinct !DISubprogram(name: "quotearg_free", scope: !568, file: !568, line: 837, type: !523, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2599)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "sv", scope: !2598, file: !568, line: 839, type: !657)
!2601 = !DILocalVariable(name: "i", scope: !2602, file: !568, line: 840, type: !104)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !568, line: 840, column: 3)
!2603 = !DILocation(line: 839, column: 24, scope: !2598)
!2604 = !DILocation(line: 0, scope: !2598)
!2605 = !DILocation(line: 0, scope: !2602)
!2606 = !DILocation(line: 840, column: 21, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !568, line: 840, column: 3)
!2608 = !DILocation(line: 840, column: 3, scope: !2602)
!2609 = !DILocation(line: 842, column: 13, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !568, line: 842, column: 7)
!2611 = !{!2612, !900, i64 8}
!2612 = !{!"slotvec", !1283, i64 0, !900, i64 8}
!2613 = !DILocation(line: 842, column: 17, scope: !2610)
!2614 = !DILocation(line: 842, column: 7, scope: !2598)
!2615 = !DILocation(line: 841, column: 17, scope: !2607)
!2616 = !DILocation(line: 841, column: 5, scope: !2607)
!2617 = !DILocation(line: 840, column: 32, scope: !2607)
!2618 = distinct !{!2618, !2608, !2619, !1017}
!2619 = !DILocation(line: 841, column: 20, scope: !2602)
!2620 = !DILocation(line: 844, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2610, file: !568, line: 843, column: 5)
!2622 = !DILocation(line: 845, column: 21, scope: !2621)
!2623 = !{!2612, !1283, i64 0}
!2624 = !DILocation(line: 846, column: 20, scope: !2621)
!2625 = !DILocation(line: 847, column: 5, scope: !2621)
!2626 = !DILocation(line: 848, column: 10, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2598, file: !568, line: 848, column: 7)
!2628 = !DILocation(line: 848, column: 7, scope: !2598)
!2629 = !DILocation(line: 850, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !568, line: 849, column: 5)
!2631 = !DILocation(line: 851, column: 15, scope: !2630)
!2632 = !DILocation(line: 852, column: 5, scope: !2630)
!2633 = !DILocation(line: 853, column: 10, scope: !2598)
!2634 = !DILocation(line: 854, column: 1, scope: !2598)
!2635 = !DISubprogram(name: "free", scope: !1801, file: !1801, line: 786, type: !2636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !130}
!2638 = distinct !DISubprogram(name: "quotearg_n", scope: !568, file: !568, line: 919, type: !1087, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2639)
!2639 = !{!2640, !2641}
!2640 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !568, line: 919, type: !104)
!2641 = !DILocalVariable(name: "arg", arg: 2, scope: !2638, file: !568, line: 919, type: !134)
!2642 = !DILocation(line: 0, scope: !2638)
!2643 = !DILocation(line: 921, column: 10, scope: !2638)
!2644 = !DILocation(line: 921, column: 3, scope: !2638)
!2645 = distinct !DISubprogram(name: "quotearg_n_options", scope: !568, file: !568, line: 866, type: !2646, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2648)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!129, !104, !134, !131, !1847}
!2648 = !{!2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2659, !2660, !2662, !2663, !2664}
!2649 = !DILocalVariable(name: "n", arg: 1, scope: !2645, file: !568, line: 866, type: !104)
!2650 = !DILocalVariable(name: "arg", arg: 2, scope: !2645, file: !568, line: 866, type: !134)
!2651 = !DILocalVariable(name: "argsize", arg: 3, scope: !2645, file: !568, line: 866, type: !131)
!2652 = !DILocalVariable(name: "options", arg: 4, scope: !2645, file: !568, line: 867, type: !1847)
!2653 = !DILocalVariable(name: "saved_errno", scope: !2645, file: !568, line: 869, type: !104)
!2654 = !DILocalVariable(name: "sv", scope: !2645, file: !568, line: 871, type: !657)
!2655 = !DILocalVariable(name: "nslots_max", scope: !2645, file: !568, line: 873, type: !104)
!2656 = !DILocalVariable(name: "preallocated", scope: !2657, file: !568, line: 879, type: !215)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !568, line: 878, column: 5)
!2658 = distinct !DILexicalBlock(scope: !2645, file: !568, line: 877, column: 7)
!2659 = !DILocalVariable(name: "new_nslots", scope: !2657, file: !568, line: 880, type: !820)
!2660 = !DILocalVariable(name: "size", scope: !2661, file: !568, line: 891, type: !131)
!2661 = distinct !DILexicalBlock(scope: !2645, file: !568, line: 890, column: 3)
!2662 = !DILocalVariable(name: "val", scope: !2661, file: !568, line: 892, type: !129)
!2663 = !DILocalVariable(name: "flags", scope: !2661, file: !568, line: 894, type: !104)
!2664 = !DILocalVariable(name: "qsize", scope: !2661, file: !568, line: 895, type: !131)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 0, scope: !2657)
!2667 = !DILocation(line: 0, scope: !2645)
!2668 = !DILocation(line: 869, column: 21, scope: !2645)
!2669 = !DILocation(line: 871, column: 24, scope: !2645)
!2670 = !DILocation(line: 874, column: 17, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2645, file: !568, line: 874, column: 7)
!2672 = !DILocation(line: 875, column: 5, scope: !2671)
!2673 = !DILocation(line: 877, column: 7, scope: !2658)
!2674 = !DILocation(line: 877, column: 14, scope: !2658)
!2675 = !DILocation(line: 877, column: 7, scope: !2645)
!2676 = !DILocation(line: 879, column: 31, scope: !2657)
!2677 = !DILocation(line: 880, column: 7, scope: !2657)
!2678 = !DILocation(line: 880, column: 26, scope: !2657)
!2679 = !DILocation(line: 880, column: 13, scope: !2657)
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 882, column: 31, scope: !2657)
!2682 = !DILocation(line: 883, column: 33, scope: !2657)
!2683 = !DILocation(line: 883, column: 42, scope: !2657)
!2684 = !DILocation(line: 883, column: 31, scope: !2657)
!2685 = !DILocation(line: 882, column: 22, scope: !2657)
!2686 = !DILocation(line: 882, column: 15, scope: !2657)
!2687 = !DILocation(line: 884, column: 11, scope: !2657)
!2688 = !DILocation(line: 885, column: 15, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2657, file: !568, line: 884, column: 11)
!2690 = !{i64 0, i64 8, !2595, i64 8, i64 8, !899}
!2691 = !DILocation(line: 885, column: 9, scope: !2689)
!2692 = !DILocation(line: 886, column: 20, scope: !2657)
!2693 = !DILocation(line: 886, column: 18, scope: !2657)
!2694 = !DILocation(line: 886, column: 32, scope: !2657)
!2695 = !DILocation(line: 886, column: 43, scope: !2657)
!2696 = !DILocation(line: 886, column: 53, scope: !2657)
!2697 = !DILocation(line: 0, scope: !2069, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 886, column: 7, scope: !2657)
!2699 = !DILocation(line: 59, column: 10, scope: !2069, inlinedAt: !2698)
!2700 = !DILocation(line: 887, column: 16, scope: !2657)
!2701 = !DILocation(line: 887, column: 14, scope: !2657)
!2702 = !DILocation(line: 888, column: 5, scope: !2658)
!2703 = !DILocation(line: 888, column: 5, scope: !2657)
!2704 = !DILocation(line: 891, column: 19, scope: !2661)
!2705 = !DILocation(line: 891, column: 25, scope: !2661)
!2706 = !DILocation(line: 0, scope: !2661)
!2707 = !DILocation(line: 892, column: 23, scope: !2661)
!2708 = !DILocation(line: 894, column: 26, scope: !2661)
!2709 = !DILocation(line: 894, column: 32, scope: !2661)
!2710 = !DILocation(line: 896, column: 55, scope: !2661)
!2711 = !DILocation(line: 897, column: 55, scope: !2661)
!2712 = !DILocation(line: 898, column: 55, scope: !2661)
!2713 = !DILocation(line: 899, column: 55, scope: !2661)
!2714 = !DILocation(line: 895, column: 20, scope: !2661)
!2715 = !DILocation(line: 901, column: 14, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2661, file: !568, line: 901, column: 9)
!2717 = !DILocation(line: 901, column: 9, scope: !2661)
!2718 = !DILocation(line: 903, column: 35, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !568, line: 902, column: 7)
!2720 = !DILocation(line: 903, column: 20, scope: !2719)
!2721 = !DILocation(line: 904, column: 17, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !568, line: 904, column: 13)
!2723 = !DILocation(line: 904, column: 13, scope: !2719)
!2724 = !DILocation(line: 905, column: 11, scope: !2722)
!2725 = !DILocation(line: 906, column: 27, scope: !2719)
!2726 = !DILocation(line: 906, column: 19, scope: !2719)
!2727 = !DILocation(line: 907, column: 69, scope: !2719)
!2728 = !DILocation(line: 909, column: 44, scope: !2719)
!2729 = !DILocation(line: 910, column: 44, scope: !2719)
!2730 = !DILocation(line: 907, column: 9, scope: !2719)
!2731 = !DILocation(line: 911, column: 7, scope: !2719)
!2732 = !DILocation(line: 913, column: 11, scope: !2661)
!2733 = !DILocation(line: 914, column: 5, scope: !2661)
!2734 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !568, file: !568, line: 925, type: !2735, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!129, !104, !134, !131}
!2737 = !{!2738, !2739, !2740}
!2738 = !DILocalVariable(name: "n", arg: 1, scope: !2734, file: !568, line: 925, type: !104)
!2739 = !DILocalVariable(name: "arg", arg: 2, scope: !2734, file: !568, line: 925, type: !134)
!2740 = !DILocalVariable(name: "argsize", arg: 3, scope: !2734, file: !568, line: 925, type: !131)
!2741 = !DILocation(line: 0, scope: !2734)
!2742 = !DILocation(line: 927, column: 10, scope: !2734)
!2743 = !DILocation(line: 927, column: 3, scope: !2734)
!2744 = distinct !DISubprogram(name: "quotearg", scope: !568, file: !568, line: 931, type: !1096, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2745)
!2745 = !{!2746}
!2746 = !DILocalVariable(name: "arg", arg: 1, scope: !2744, file: !568, line: 931, type: !134)
!2747 = !DILocation(line: 0, scope: !2744)
!2748 = !DILocation(line: 0, scope: !2638, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 933, column: 10, scope: !2744)
!2750 = !DILocation(line: 921, column: 10, scope: !2638, inlinedAt: !2749)
!2751 = !DILocation(line: 933, column: 3, scope: !2744)
!2752 = distinct !DISubprogram(name: "quotearg_mem", scope: !568, file: !568, line: 937, type: !2753, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!129, !134, !131}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !568, line: 937, type: !134)
!2757 = !DILocalVariable(name: "argsize", arg: 2, scope: !2752, file: !568, line: 937, type: !131)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 0, scope: !2734, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 939, column: 10, scope: !2752)
!2761 = !DILocation(line: 927, column: 10, scope: !2734, inlinedAt: !2760)
!2762 = !DILocation(line: 939, column: 3, scope: !2752)
!2763 = distinct !DISubprogram(name: "quotearg_n_style", scope: !568, file: !568, line: 943, type: !2764, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!129, !104, !594, !134}
!2766 = !{!2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "n", arg: 1, scope: !2763, file: !568, line: 943, type: !104)
!2768 = !DILocalVariable(name: "s", arg: 2, scope: !2763, file: !568, line: 943, type: !594)
!2769 = !DILocalVariable(name: "arg", arg: 3, scope: !2763, file: !568, line: 943, type: !134)
!2770 = !DILocalVariable(name: "o", scope: !2763, file: !568, line: 945, type: !1848)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 0, scope: !2763)
!2773 = !DILocation(line: 945, column: 3, scope: !2763)
!2774 = !{!2775}
!2775 = distinct !{!2775, !2776, !"quoting_options_from_style: argument 0"}
!2776 = distinct !{!2776, !"quoting_options_from_style"}
!2777 = !DILocation(line: 945, column: 36, scope: !2763)
!2778 = !DILocalVariable(name: "style", arg: 1, scope: !2779, file: !568, line: 183, type: !594)
!2779 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !568, file: !568, line: 183, type: !2780, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!609, !594}
!2782 = !{!2778, !2783}
!2783 = !DILocalVariable(name: "o", scope: !2779, file: !568, line: 185, type: !609)
!2784 = !DILocation(line: 0, scope: !2779, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 945, column: 36, scope: !2763)
!2786 = !DILocation(line: 185, column: 26, scope: !2779, inlinedAt: !2785)
!2787 = distinct !DIAssignID()
!2788 = !DILocation(line: 186, column: 13, scope: !2789, inlinedAt: !2785)
!2789 = distinct !DILexicalBlock(scope: !2779, file: !568, line: 186, column: 7)
!2790 = !DILocation(line: 186, column: 7, scope: !2779, inlinedAt: !2785)
!2791 = !DILocation(line: 187, column: 5, scope: !2789, inlinedAt: !2785)
!2792 = !DILocation(line: 188, column: 11, scope: !2779, inlinedAt: !2785)
!2793 = distinct !DIAssignID()
!2794 = !DILocation(line: 946, column: 10, scope: !2763)
!2795 = !DILocation(line: 947, column: 1, scope: !2763)
!2796 = !DILocation(line: 946, column: 3, scope: !2763)
!2797 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !568, file: !568, line: 950, type: !2798, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!129, !104, !594, !134, !131}
!2800 = !{!2801, !2802, !2803, !2804, !2805}
!2801 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !568, line: 950, type: !104)
!2802 = !DILocalVariable(name: "s", arg: 2, scope: !2797, file: !568, line: 950, type: !594)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !568, line: 951, type: !134)
!2804 = !DILocalVariable(name: "argsize", arg: 4, scope: !2797, file: !568, line: 951, type: !131)
!2805 = !DILocalVariable(name: "o", scope: !2797, file: !568, line: 953, type: !1848)
!2806 = distinct !DIAssignID()
!2807 = !DILocation(line: 0, scope: !2797)
!2808 = !DILocation(line: 953, column: 3, scope: !2797)
!2809 = !{!2810}
!2810 = distinct !{!2810, !2811, !"quoting_options_from_style: argument 0"}
!2811 = distinct !{!2811, !"quoting_options_from_style"}
!2812 = !DILocation(line: 953, column: 36, scope: !2797)
!2813 = !DILocation(line: 0, scope: !2779, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 953, column: 36, scope: !2797)
!2815 = !DILocation(line: 185, column: 26, scope: !2779, inlinedAt: !2814)
!2816 = distinct !DIAssignID()
!2817 = !DILocation(line: 186, column: 13, scope: !2789, inlinedAt: !2814)
!2818 = !DILocation(line: 186, column: 7, scope: !2779, inlinedAt: !2814)
!2819 = !DILocation(line: 187, column: 5, scope: !2789, inlinedAt: !2814)
!2820 = !DILocation(line: 188, column: 11, scope: !2779, inlinedAt: !2814)
!2821 = distinct !DIAssignID()
!2822 = !DILocation(line: 954, column: 10, scope: !2797)
!2823 = !DILocation(line: 955, column: 1, scope: !2797)
!2824 = !DILocation(line: 954, column: 3, scope: !2797)
!2825 = distinct !DISubprogram(name: "quotearg_style", scope: !568, file: !568, line: 958, type: !2826, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!129, !594, !134}
!2828 = !{!2829, !2830}
!2829 = !DILocalVariable(name: "s", arg: 1, scope: !2825, file: !568, line: 958, type: !594)
!2830 = !DILocalVariable(name: "arg", arg: 2, scope: !2825, file: !568, line: 958, type: !134)
!2831 = distinct !DIAssignID()
!2832 = !DILocation(line: 0, scope: !2825)
!2833 = !DILocation(line: 0, scope: !2763, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 960, column: 10, scope: !2825)
!2835 = !DILocation(line: 945, column: 3, scope: !2763, inlinedAt: !2834)
!2836 = !{!2837}
!2837 = distinct !{!2837, !2838, !"quoting_options_from_style: argument 0"}
!2838 = distinct !{!2838, !"quoting_options_from_style"}
!2839 = !DILocation(line: 945, column: 36, scope: !2763, inlinedAt: !2834)
!2840 = !DILocation(line: 0, scope: !2779, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 945, column: 36, scope: !2763, inlinedAt: !2834)
!2842 = !DILocation(line: 185, column: 26, scope: !2779, inlinedAt: !2841)
!2843 = distinct !DIAssignID()
!2844 = !DILocation(line: 186, column: 13, scope: !2789, inlinedAt: !2841)
!2845 = !DILocation(line: 186, column: 7, scope: !2779, inlinedAt: !2841)
!2846 = !DILocation(line: 187, column: 5, scope: !2789, inlinedAt: !2841)
!2847 = !DILocation(line: 188, column: 11, scope: !2779, inlinedAt: !2841)
!2848 = distinct !DIAssignID()
!2849 = !DILocation(line: 946, column: 10, scope: !2763, inlinedAt: !2834)
!2850 = !DILocation(line: 947, column: 1, scope: !2763, inlinedAt: !2834)
!2851 = !DILocation(line: 960, column: 3, scope: !2825)
!2852 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !568, file: !568, line: 964, type: !2853, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!129, !594, !134, !131}
!2855 = !{!2856, !2857, !2858}
!2856 = !DILocalVariable(name: "s", arg: 1, scope: !2852, file: !568, line: 964, type: !594)
!2857 = !DILocalVariable(name: "arg", arg: 2, scope: !2852, file: !568, line: 964, type: !134)
!2858 = !DILocalVariable(name: "argsize", arg: 3, scope: !2852, file: !568, line: 964, type: !131)
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 0, scope: !2852)
!2861 = !DILocation(line: 0, scope: !2797, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 966, column: 10, scope: !2852)
!2863 = !DILocation(line: 953, column: 3, scope: !2797, inlinedAt: !2862)
!2864 = !{!2865}
!2865 = distinct !{!2865, !2866, !"quoting_options_from_style: argument 0"}
!2866 = distinct !{!2866, !"quoting_options_from_style"}
!2867 = !DILocation(line: 953, column: 36, scope: !2797, inlinedAt: !2862)
!2868 = !DILocation(line: 0, scope: !2779, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 953, column: 36, scope: !2797, inlinedAt: !2862)
!2870 = !DILocation(line: 185, column: 26, scope: !2779, inlinedAt: !2869)
!2871 = distinct !DIAssignID()
!2872 = !DILocation(line: 186, column: 13, scope: !2789, inlinedAt: !2869)
!2873 = !DILocation(line: 186, column: 7, scope: !2779, inlinedAt: !2869)
!2874 = !DILocation(line: 187, column: 5, scope: !2789, inlinedAt: !2869)
!2875 = !DILocation(line: 188, column: 11, scope: !2779, inlinedAt: !2869)
!2876 = distinct !DIAssignID()
!2877 = !DILocation(line: 954, column: 10, scope: !2797, inlinedAt: !2862)
!2878 = !DILocation(line: 955, column: 1, scope: !2797, inlinedAt: !2862)
!2879 = !DILocation(line: 966, column: 3, scope: !2852)
!2880 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !568, file: !568, line: 970, type: !2881, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!129, !134, !131, !4}
!2883 = !{!2884, !2885, !2886, !2887}
!2884 = !DILocalVariable(name: "arg", arg: 1, scope: !2880, file: !568, line: 970, type: !134)
!2885 = !DILocalVariable(name: "argsize", arg: 2, scope: !2880, file: !568, line: 970, type: !131)
!2886 = !DILocalVariable(name: "ch", arg: 3, scope: !2880, file: !568, line: 970, type: !4)
!2887 = !DILocalVariable(name: "options", scope: !2880, file: !568, line: 972, type: !609)
!2888 = distinct !DIAssignID()
!2889 = !DILocation(line: 0, scope: !2880)
!2890 = !DILocation(line: 972, column: 3, scope: !2880)
!2891 = !DILocation(line: 973, column: 13, scope: !2880)
!2892 = !{i64 0, i64 4, !970, i64 4, i64 4, !970, i64 8, i64 32, !979, i64 40, i64 8, !899, i64 48, i64 8, !899}
!2893 = distinct !DIAssignID()
!2894 = !DILocation(line: 0, scope: !1867, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 974, column: 3, scope: !2880)
!2896 = !DILocation(line: 147, column: 41, scope: !1867, inlinedAt: !2895)
!2897 = !DILocation(line: 147, column: 62, scope: !1867, inlinedAt: !2895)
!2898 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2895)
!2899 = !DILocation(line: 148, column: 15, scope: !1867, inlinedAt: !2895)
!2900 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2895)
!2901 = !DILocation(line: 149, column: 24, scope: !1867, inlinedAt: !2895)
!2902 = !DILocation(line: 150, column: 19, scope: !1867, inlinedAt: !2895)
!2903 = !DILocation(line: 150, column: 24, scope: !1867, inlinedAt: !2895)
!2904 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2895)
!2905 = !DILocation(line: 975, column: 10, scope: !2880)
!2906 = !DILocation(line: 976, column: 1, scope: !2880)
!2907 = !DILocation(line: 975, column: 3, scope: !2880)
!2908 = distinct !DISubprogram(name: "quotearg_char", scope: !568, file: !568, line: 979, type: !2909, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!129, !134, !4}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !568, line: 979, type: !134)
!2913 = !DILocalVariable(name: "ch", arg: 2, scope: !2908, file: !568, line: 979, type: !4)
!2914 = distinct !DIAssignID()
!2915 = !DILocation(line: 0, scope: !2908)
!2916 = !DILocation(line: 0, scope: !2880, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 981, column: 10, scope: !2908)
!2918 = !DILocation(line: 972, column: 3, scope: !2880, inlinedAt: !2917)
!2919 = !DILocation(line: 973, column: 13, scope: !2880, inlinedAt: !2917)
!2920 = distinct !DIAssignID()
!2921 = !DILocation(line: 0, scope: !1867, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 974, column: 3, scope: !2880, inlinedAt: !2917)
!2923 = !DILocation(line: 147, column: 41, scope: !1867, inlinedAt: !2922)
!2924 = !DILocation(line: 147, column: 62, scope: !1867, inlinedAt: !2922)
!2925 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2922)
!2926 = !DILocation(line: 148, column: 15, scope: !1867, inlinedAt: !2922)
!2927 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2922)
!2928 = !DILocation(line: 149, column: 24, scope: !1867, inlinedAt: !2922)
!2929 = !DILocation(line: 150, column: 19, scope: !1867, inlinedAt: !2922)
!2930 = !DILocation(line: 150, column: 24, scope: !1867, inlinedAt: !2922)
!2931 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2922)
!2932 = !DILocation(line: 975, column: 10, scope: !2880, inlinedAt: !2917)
!2933 = !DILocation(line: 976, column: 1, scope: !2880, inlinedAt: !2917)
!2934 = !DILocation(line: 981, column: 3, scope: !2908)
!2935 = distinct !DISubprogram(name: "quotearg_colon", scope: !568, file: !568, line: 985, type: !1096, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2936)
!2936 = !{!2937}
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2935, file: !568, line: 985, type: !134)
!2938 = distinct !DIAssignID()
!2939 = !DILocation(line: 0, scope: !2935)
!2940 = !DILocation(line: 0, scope: !2908, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 987, column: 10, scope: !2935)
!2942 = !DILocation(line: 0, scope: !2880, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 981, column: 10, scope: !2908, inlinedAt: !2941)
!2944 = !DILocation(line: 972, column: 3, scope: !2880, inlinedAt: !2943)
!2945 = !DILocation(line: 973, column: 13, scope: !2880, inlinedAt: !2943)
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 0, scope: !1867, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 974, column: 3, scope: !2880, inlinedAt: !2943)
!2949 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2948)
!2950 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2948)
!2951 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2948)
!2952 = !DILocation(line: 975, column: 10, scope: !2880, inlinedAt: !2943)
!2953 = !DILocation(line: 976, column: 1, scope: !2880, inlinedAt: !2943)
!2954 = !DILocation(line: 987, column: 3, scope: !2935)
!2955 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !568, file: !568, line: 991, type: !2753, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2956)
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !568, line: 991, type: !134)
!2958 = !DILocalVariable(name: "argsize", arg: 2, scope: !2955, file: !568, line: 991, type: !131)
!2959 = distinct !DIAssignID()
!2960 = !DILocation(line: 0, scope: !2955)
!2961 = !DILocation(line: 0, scope: !2880, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 993, column: 10, scope: !2955)
!2963 = !DILocation(line: 972, column: 3, scope: !2880, inlinedAt: !2962)
!2964 = !DILocation(line: 973, column: 13, scope: !2880, inlinedAt: !2962)
!2965 = distinct !DIAssignID()
!2966 = !DILocation(line: 0, scope: !1867, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 974, column: 3, scope: !2880, inlinedAt: !2962)
!2968 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2967)
!2969 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2967)
!2970 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2967)
!2971 = !DILocation(line: 975, column: 10, scope: !2880, inlinedAt: !2962)
!2972 = !DILocation(line: 976, column: 1, scope: !2880, inlinedAt: !2962)
!2973 = !DILocation(line: 993, column: 3, scope: !2955)
!2974 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !568, file: !568, line: 997, type: !2764, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !2975)
!2975 = !{!2976, !2977, !2978, !2979}
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2974, file: !568, line: 997, type: !104)
!2977 = !DILocalVariable(name: "s", arg: 2, scope: !2974, file: !568, line: 997, type: !594)
!2978 = !DILocalVariable(name: "arg", arg: 3, scope: !2974, file: !568, line: 997, type: !134)
!2979 = !DILocalVariable(name: "options", scope: !2974, file: !568, line: 999, type: !609)
!2980 = distinct !DIAssignID()
!2981 = !DILocation(line: 0, scope: !2974)
!2982 = !DILocation(line: 185, column: 26, scope: !2779, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1000, column: 13, scope: !2974)
!2984 = !DILocation(line: 999, column: 3, scope: !2974)
!2985 = !DILocation(line: 0, scope: !2779, inlinedAt: !2983)
!2986 = !DILocation(line: 186, column: 13, scope: !2789, inlinedAt: !2983)
!2987 = !DILocation(line: 186, column: 7, scope: !2779, inlinedAt: !2983)
!2988 = !DILocation(line: 187, column: 5, scope: !2789, inlinedAt: !2983)
!2989 = !{!2990}
!2990 = distinct !{!2990, !2991, !"quoting_options_from_style: argument 0"}
!2991 = distinct !{!2991, !"quoting_options_from_style"}
!2992 = !DILocation(line: 1000, column: 13, scope: !2974)
!2993 = distinct !DIAssignID()
!2994 = distinct !DIAssignID()
!2995 = !DILocation(line: 0, scope: !1867, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 1001, column: 3, scope: !2974)
!2997 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2996)
!2998 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2996)
!2999 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2996)
!3000 = distinct !DIAssignID()
!3001 = !DILocation(line: 1002, column: 10, scope: !2974)
!3002 = !DILocation(line: 1003, column: 1, scope: !2974)
!3003 = !DILocation(line: 1002, column: 3, scope: !2974)
!3004 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !568, file: !568, line: 1006, type: !3005, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!129, !104, !134, !134, !134}
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !568, line: 1006, type: !104)
!3009 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3004, file: !568, line: 1006, type: !134)
!3010 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3004, file: !568, line: 1007, type: !134)
!3011 = !DILocalVariable(name: "arg", arg: 4, scope: !3004, file: !568, line: 1007, type: !134)
!3012 = distinct !DIAssignID()
!3013 = !DILocation(line: 0, scope: !3004)
!3014 = !DILocalVariable(name: "o", scope: !3015, file: !568, line: 1018, type: !609)
!3015 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !568, file: !568, line: 1014, type: !3016, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!129, !104, !134, !134, !134, !131}
!3018 = !{!3019, !3020, !3021, !3022, !3023, !3014}
!3019 = !DILocalVariable(name: "n", arg: 1, scope: !3015, file: !568, line: 1014, type: !104)
!3020 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3015, file: !568, line: 1014, type: !134)
!3021 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3015, file: !568, line: 1015, type: !134)
!3022 = !DILocalVariable(name: "arg", arg: 4, scope: !3015, file: !568, line: 1016, type: !134)
!3023 = !DILocalVariable(name: "argsize", arg: 5, scope: !3015, file: !568, line: 1016, type: !131)
!3024 = !DILocation(line: 0, scope: !3015, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1009, column: 10, scope: !3004)
!3026 = !DILocation(line: 1018, column: 3, scope: !3015, inlinedAt: !3025)
!3027 = !DILocation(line: 1018, column: 30, scope: !3015, inlinedAt: !3025)
!3028 = distinct !DIAssignID()
!3029 = distinct !DIAssignID()
!3030 = !DILocation(line: 0, scope: !1907, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1019, column: 3, scope: !3015, inlinedAt: !3025)
!3032 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3031)
!3033 = distinct !DIAssignID()
!3034 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3031)
!3035 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3031)
!3036 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3031)
!3037 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3031)
!3038 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3031)
!3039 = distinct !DIAssignID()
!3040 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3031)
!3041 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3031)
!3042 = distinct !DIAssignID()
!3043 = !DILocation(line: 1020, column: 10, scope: !3015, inlinedAt: !3025)
!3044 = !DILocation(line: 1021, column: 1, scope: !3015, inlinedAt: !3025)
!3045 = !DILocation(line: 1009, column: 3, scope: !3004)
!3046 = distinct !DIAssignID()
!3047 = !DILocation(line: 0, scope: !3015)
!3048 = !DILocation(line: 1018, column: 3, scope: !3015)
!3049 = !DILocation(line: 1018, column: 30, scope: !3015)
!3050 = distinct !DIAssignID()
!3051 = distinct !DIAssignID()
!3052 = !DILocation(line: 0, scope: !1907, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1019, column: 3, scope: !3015)
!3054 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3053)
!3055 = distinct !DIAssignID()
!3056 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3053)
!3057 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3053)
!3058 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3053)
!3059 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3053)
!3060 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3053)
!3061 = distinct !DIAssignID()
!3062 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3053)
!3063 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3053)
!3064 = distinct !DIAssignID()
!3065 = !DILocation(line: 1020, column: 10, scope: !3015)
!3066 = !DILocation(line: 1021, column: 1, scope: !3015)
!3067 = !DILocation(line: 1020, column: 3, scope: !3015)
!3068 = distinct !DISubprogram(name: "quotearg_custom", scope: !568, file: !568, line: 1024, type: !3069, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!129, !134, !134, !134}
!3071 = !{!3072, !3073, !3074}
!3072 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3068, file: !568, line: 1024, type: !134)
!3073 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3068, file: !568, line: 1024, type: !134)
!3074 = !DILocalVariable(name: "arg", arg: 3, scope: !3068, file: !568, line: 1025, type: !134)
!3075 = distinct !DIAssignID()
!3076 = !DILocation(line: 0, scope: !3068)
!3077 = !DILocation(line: 0, scope: !3004, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1027, column: 10, scope: !3068)
!3079 = !DILocation(line: 0, scope: !3015, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1009, column: 10, scope: !3004, inlinedAt: !3078)
!3081 = !DILocation(line: 1018, column: 3, scope: !3015, inlinedAt: !3080)
!3082 = !DILocation(line: 1018, column: 30, scope: !3015, inlinedAt: !3080)
!3083 = distinct !DIAssignID()
!3084 = distinct !DIAssignID()
!3085 = !DILocation(line: 0, scope: !1907, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1019, column: 3, scope: !3015, inlinedAt: !3080)
!3087 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3086)
!3088 = distinct !DIAssignID()
!3089 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3086)
!3090 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3086)
!3091 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3086)
!3092 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3086)
!3093 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3086)
!3094 = distinct !DIAssignID()
!3095 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3086)
!3096 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3086)
!3097 = distinct !DIAssignID()
!3098 = !DILocation(line: 1020, column: 10, scope: !3015, inlinedAt: !3080)
!3099 = !DILocation(line: 1021, column: 1, scope: !3015, inlinedAt: !3080)
!3100 = !DILocation(line: 1027, column: 3, scope: !3068)
!3101 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !568, file: !568, line: 1031, type: !3102, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!129, !134, !134, !134, !131}
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3101, file: !568, line: 1031, type: !134)
!3106 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3101, file: !568, line: 1031, type: !134)
!3107 = !DILocalVariable(name: "arg", arg: 3, scope: !3101, file: !568, line: 1032, type: !134)
!3108 = !DILocalVariable(name: "argsize", arg: 4, scope: !3101, file: !568, line: 1032, type: !131)
!3109 = distinct !DIAssignID()
!3110 = !DILocation(line: 0, scope: !3101)
!3111 = !DILocation(line: 0, scope: !3015, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 1034, column: 10, scope: !3101)
!3113 = !DILocation(line: 1018, column: 3, scope: !3015, inlinedAt: !3112)
!3114 = !DILocation(line: 1018, column: 30, scope: !3015, inlinedAt: !3112)
!3115 = distinct !DIAssignID()
!3116 = distinct !DIAssignID()
!3117 = !DILocation(line: 0, scope: !1907, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 1019, column: 3, scope: !3015, inlinedAt: !3112)
!3119 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3118)
!3120 = distinct !DIAssignID()
!3121 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3118)
!3122 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3118)
!3123 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3118)
!3124 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3118)
!3125 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3118)
!3126 = distinct !DIAssignID()
!3127 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3118)
!3128 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3118)
!3129 = distinct !DIAssignID()
!3130 = !DILocation(line: 1020, column: 10, scope: !3015, inlinedAt: !3112)
!3131 = !DILocation(line: 1021, column: 1, scope: !3015, inlinedAt: !3112)
!3132 = !DILocation(line: 1034, column: 3, scope: !3101)
!3133 = distinct !DISubprogram(name: "quote_n_mem", scope: !568, file: !568, line: 1049, type: !3134, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!134, !104, !134, !131}
!3136 = !{!3137, !3138, !3139}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !568, line: 1049, type: !104)
!3138 = !DILocalVariable(name: "arg", arg: 2, scope: !3133, file: !568, line: 1049, type: !134)
!3139 = !DILocalVariable(name: "argsize", arg: 3, scope: !3133, file: !568, line: 1049, type: !131)
!3140 = !DILocation(line: 0, scope: !3133)
!3141 = !DILocation(line: 1051, column: 10, scope: !3133)
!3142 = !DILocation(line: 1051, column: 3, scope: !3133)
!3143 = distinct !DISubprogram(name: "quote_mem", scope: !568, file: !568, line: 1055, type: !3144, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!134, !134, !131}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "arg", arg: 1, scope: !3143, file: !568, line: 1055, type: !134)
!3148 = !DILocalVariable(name: "argsize", arg: 2, scope: !3143, file: !568, line: 1055, type: !131)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 0, scope: !3133, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1057, column: 10, scope: !3143)
!3152 = !DILocation(line: 1051, column: 10, scope: !3133, inlinedAt: !3151)
!3153 = !DILocation(line: 1057, column: 3, scope: !3143)
!3154 = distinct !DISubprogram(name: "quote_n", scope: !568, file: !568, line: 1061, type: !3155, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!134, !104, !134}
!3157 = !{!3158, !3159}
!3158 = !DILocalVariable(name: "n", arg: 1, scope: !3154, file: !568, line: 1061, type: !104)
!3159 = !DILocalVariable(name: "arg", arg: 2, scope: !3154, file: !568, line: 1061, type: !134)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocation(line: 0, scope: !3133, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1063, column: 10, scope: !3154)
!3163 = !DILocation(line: 1051, column: 10, scope: !3133, inlinedAt: !3162)
!3164 = !DILocation(line: 1063, column: 3, scope: !3154)
!3165 = distinct !DISubprogram(name: "quote", scope: !568, file: !568, line: 1067, type: !3166, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!134, !134}
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "arg", arg: 1, scope: !3165, file: !568, line: 1067, type: !134)
!3170 = !DILocation(line: 0, scope: !3165)
!3171 = !DILocation(line: 0, scope: !3154, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 1069, column: 10, scope: !3165)
!3173 = !DILocation(line: 0, scope: !3133, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 1063, column: 10, scope: !3154, inlinedAt: !3172)
!3175 = !DILocation(line: 1051, column: 10, scope: !3133, inlinedAt: !3174)
!3176 = !DILocation(line: 1069, column: 3, scope: !3165)
!3177 = distinct !DISubprogram(name: "version_etc_arn", scope: !672, file: !672, line: 61, type: !3178, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !3215)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !3180, !134, !134, !134, !3214, !131}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3182, file: !253, line: 51, baseType: !104, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3182, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3182, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3182, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3182, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3182, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3182, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3182, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3182, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3182, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3182, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3182, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3182, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3182, file: !253, line: 70, baseType: !3198, size: 64, offset: 832)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3182, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3182, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3182, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3182, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3182, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3182, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3182, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3182, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3182, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3182, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3182, file: !253, line: 93, baseType: !3198, size: 64, offset: 1344)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3182, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3182, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3182, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3182, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!3215 = !{!3216, !3217, !3218, !3219, !3220, !3221}
!3216 = !DILocalVariable(name: "stream", arg: 1, scope: !3177, file: !672, line: 61, type: !3180)
!3217 = !DILocalVariable(name: "command_name", arg: 2, scope: !3177, file: !672, line: 62, type: !134)
!3218 = !DILocalVariable(name: "package", arg: 3, scope: !3177, file: !672, line: 62, type: !134)
!3219 = !DILocalVariable(name: "version", arg: 4, scope: !3177, file: !672, line: 63, type: !134)
!3220 = !DILocalVariable(name: "authors", arg: 5, scope: !3177, file: !672, line: 64, type: !3214)
!3221 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3177, file: !672, line: 64, type: !131)
!3222 = !DILocation(line: 0, scope: !3177)
!3223 = !DILocation(line: 66, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3177, file: !672, line: 66, column: 7)
!3225 = !DILocation(line: 66, column: 7, scope: !3177)
!3226 = !DILocation(line: 67, column: 5, scope: !3224)
!3227 = !DILocation(line: 69, column: 5, scope: !3224)
!3228 = !DILocation(line: 83, column: 3, scope: !3177)
!3229 = !DILocation(line: 85, column: 3, scope: !3177)
!3230 = !DILocation(line: 88, column: 3, scope: !3177)
!3231 = !DILocation(line: 95, column: 3, scope: !3177)
!3232 = !DILocation(line: 97, column: 3, scope: !3177)
!3233 = !DILocation(line: 105, column: 7, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3177, file: !672, line: 98, column: 5)
!3235 = !DILocation(line: 106, column: 7, scope: !3234)
!3236 = !DILocation(line: 109, column: 7, scope: !3234)
!3237 = !DILocation(line: 110, column: 7, scope: !3234)
!3238 = !DILocation(line: 113, column: 7, scope: !3234)
!3239 = !DILocation(line: 115, column: 7, scope: !3234)
!3240 = !DILocation(line: 120, column: 7, scope: !3234)
!3241 = !DILocation(line: 122, column: 7, scope: !3234)
!3242 = !DILocation(line: 127, column: 7, scope: !3234)
!3243 = !DILocation(line: 129, column: 7, scope: !3234)
!3244 = !DILocation(line: 134, column: 7, scope: !3234)
!3245 = !DILocation(line: 137, column: 7, scope: !3234)
!3246 = !DILocation(line: 142, column: 7, scope: !3234)
!3247 = !DILocation(line: 145, column: 7, scope: !3234)
!3248 = !DILocation(line: 150, column: 7, scope: !3234)
!3249 = !DILocation(line: 154, column: 7, scope: !3234)
!3250 = !DILocation(line: 159, column: 7, scope: !3234)
!3251 = !DILocation(line: 163, column: 7, scope: !3234)
!3252 = !DILocation(line: 170, column: 7, scope: !3234)
!3253 = !DILocation(line: 174, column: 7, scope: !3234)
!3254 = !DILocation(line: 176, column: 1, scope: !3177)
!3255 = distinct !DISubprogram(name: "version_etc_ar", scope: !672, file: !672, line: 183, type: !3256, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !3180, !134, !134, !134, !3214}
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264}
!3259 = !DILocalVariable(name: "stream", arg: 1, scope: !3255, file: !672, line: 183, type: !3180)
!3260 = !DILocalVariable(name: "command_name", arg: 2, scope: !3255, file: !672, line: 184, type: !134)
!3261 = !DILocalVariable(name: "package", arg: 3, scope: !3255, file: !672, line: 184, type: !134)
!3262 = !DILocalVariable(name: "version", arg: 4, scope: !3255, file: !672, line: 185, type: !134)
!3263 = !DILocalVariable(name: "authors", arg: 5, scope: !3255, file: !672, line: 185, type: !3214)
!3264 = !DILocalVariable(name: "n_authors", scope: !3255, file: !672, line: 187, type: !131)
!3265 = !DILocation(line: 0, scope: !3255)
!3266 = !DILocation(line: 189, column: 8, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3255, file: !672, line: 189, column: 3)
!3268 = !DILocation(line: 189, scope: !3267)
!3269 = !DILocation(line: 189, column: 23, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !672, line: 189, column: 3)
!3271 = !DILocation(line: 189, column: 3, scope: !3267)
!3272 = !DILocation(line: 189, column: 52, scope: !3270)
!3273 = distinct !{!3273, !3271, !3274, !1017}
!3274 = !DILocation(line: 190, column: 5, scope: !3267)
!3275 = !DILocation(line: 191, column: 3, scope: !3255)
!3276 = !DILocation(line: 192, column: 1, scope: !3255)
!3277 = distinct !DISubprogram(name: "version_etc_va", scope: !672, file: !672, line: 199, type: !3278, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !3287)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3180, !134, !134, !134, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3281, file: !672, line: 192, baseType: !79, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3281, file: !672, line: 192, baseType: !79, size: 32, offset: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3281, file: !672, line: 192, baseType: !130, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3281, file: !672, line: 192, baseType: !130, size: 64, offset: 128)
!3287 = !{!3288, !3289, !3290, !3291, !3292, !3293, !3294}
!3288 = !DILocalVariable(name: "stream", arg: 1, scope: !3277, file: !672, line: 199, type: !3180)
!3289 = !DILocalVariable(name: "command_name", arg: 2, scope: !3277, file: !672, line: 200, type: !134)
!3290 = !DILocalVariable(name: "package", arg: 3, scope: !3277, file: !672, line: 200, type: !134)
!3291 = !DILocalVariable(name: "version", arg: 4, scope: !3277, file: !672, line: 201, type: !134)
!3292 = !DILocalVariable(name: "authors", arg: 5, scope: !3277, file: !672, line: 201, type: !3280)
!3293 = !DILocalVariable(name: "n_authors", scope: !3277, file: !672, line: 203, type: !131)
!3294 = !DILocalVariable(name: "authtab", scope: !3277, file: !672, line: 204, type: !3295)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !62)
!3296 = distinct !DIAssignID()
!3297 = !DILocation(line: 0, scope: !3277)
!3298 = !DILocation(line: 204, column: 3, scope: !3277)
!3299 = !DILocation(line: 208, column: 35, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !672, line: 206, column: 3)
!3301 = distinct !DILexicalBlock(scope: !3277, file: !672, line: 206, column: 3)
!3302 = !DILocation(line: 208, column: 33, scope: !3300)
!3303 = !DILocation(line: 208, column: 67, scope: !3300)
!3304 = !DILocation(line: 206, column: 3, scope: !3301)
!3305 = !DILocation(line: 208, column: 14, scope: !3300)
!3306 = !DILocation(line: 0, scope: !3301)
!3307 = !DILocation(line: 211, column: 3, scope: !3277)
!3308 = !DILocation(line: 213, column: 1, scope: !3277)
!3309 = distinct !DISubprogram(name: "version_etc", scope: !672, file: !672, line: 230, type: !3310, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3180, !134, !134, !134, null}
!3312 = !{!3313, !3314, !3315, !3316, !3317}
!3313 = !DILocalVariable(name: "stream", arg: 1, scope: !3309, file: !672, line: 230, type: !3180)
!3314 = !DILocalVariable(name: "command_name", arg: 2, scope: !3309, file: !672, line: 231, type: !134)
!3315 = !DILocalVariable(name: "package", arg: 3, scope: !3309, file: !672, line: 231, type: !134)
!3316 = !DILocalVariable(name: "version", arg: 4, scope: !3309, file: !672, line: 232, type: !134)
!3317 = !DILocalVariable(name: "authors", scope: !3309, file: !672, line: 234, type: !3318)
!3318 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !125, line: 52, baseType: !3319)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1693, line: 12, baseType: !3320)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !672, baseType: !3321)
!3321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3281, size: 192, elements: !57)
!3322 = distinct !DIAssignID()
!3323 = !DILocation(line: 0, scope: !3309)
!3324 = !DILocation(line: 234, column: 3, scope: !3309)
!3325 = !DILocation(line: 235, column: 3, scope: !3309)
!3326 = !DILocation(line: 236, column: 3, scope: !3309)
!3327 = !DILocation(line: 237, column: 3, scope: !3309)
!3328 = !DILocation(line: 238, column: 1, scope: !3309)
!3329 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !672, file: !672, line: 241, type: !523, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793)
!3330 = !DILocation(line: 243, column: 3, scope: !3329)
!3331 = !DILocation(line: 248, column: 3, scope: !3329)
!3332 = !DILocation(line: 254, column: 3, scope: !3329)
!3333 = !DILocation(line: 259, column: 3, scope: !3329)
!3334 = !DILocation(line: 261, column: 1, scope: !3329)
!3335 = distinct !DISubprogram(name: "xnrealloc", scope: !3336, file: !3336, line: 147, type: !3337, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3339)
!3336 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!130, !130, !131, !131}
!3339 = !{!3340, !3341, !3342}
!3340 = !DILocalVariable(name: "p", arg: 1, scope: !3335, file: !3336, line: 147, type: !130)
!3341 = !DILocalVariable(name: "n", arg: 2, scope: !3335, file: !3336, line: 147, type: !131)
!3342 = !DILocalVariable(name: "s", arg: 3, scope: !3335, file: !3336, line: 147, type: !131)
!3343 = !DILocation(line: 0, scope: !3335)
!3344 = !DILocalVariable(name: "p", arg: 1, scope: !3345, file: !801, line: 83, type: !130)
!3345 = distinct !DISubprogram(name: "xreallocarray", scope: !801, file: !801, line: 83, type: !3337, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3346)
!3346 = !{!3344, !3347, !3348}
!3347 = !DILocalVariable(name: "n", arg: 2, scope: !3345, file: !801, line: 83, type: !131)
!3348 = !DILocalVariable(name: "s", arg: 3, scope: !3345, file: !801, line: 83, type: !131)
!3349 = !DILocation(line: 0, scope: !3345, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 149, column: 10, scope: !3335)
!3351 = !DILocation(line: 85, column: 25, scope: !3345, inlinedAt: !3350)
!3352 = !DILocalVariable(name: "p", arg: 1, scope: !3353, file: !801, line: 37, type: !130)
!3353 = distinct !DISubprogram(name: "check_nonnull", scope: !801, file: !801, line: 37, type: !3354, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!130, !130}
!3356 = !{!3352}
!3357 = !DILocation(line: 0, scope: !3353, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 85, column: 10, scope: !3345, inlinedAt: !3350)
!3359 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3358)
!3360 = distinct !DILexicalBlock(scope: !3353, file: !801, line: 39, column: 7)
!3361 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3358)
!3362 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3358)
!3363 = !DILocation(line: 149, column: 3, scope: !3335)
!3364 = !DILocation(line: 0, scope: !3345)
!3365 = !DILocation(line: 85, column: 25, scope: !3345)
!3366 = !DILocation(line: 0, scope: !3353, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 85, column: 10, scope: !3345)
!3368 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3367)
!3369 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3367)
!3370 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3367)
!3371 = !DILocation(line: 85, column: 3, scope: !3345)
!3372 = distinct !DISubprogram(name: "xmalloc", scope: !801, file: !801, line: 47, type: !3373, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!130, !131}
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "s", arg: 1, scope: !3372, file: !801, line: 47, type: !131)
!3377 = !DILocation(line: 0, scope: !3372)
!3378 = !DILocation(line: 49, column: 25, scope: !3372)
!3379 = !DILocation(line: 0, scope: !3353, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 49, column: 10, scope: !3372)
!3381 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3380)
!3382 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3380)
!3383 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3380)
!3384 = !DILocation(line: 49, column: 3, scope: !3372)
!3385 = !DISubprogram(name: "malloc", scope: !1094, file: !1094, line: 540, type: !3373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3386 = distinct !DISubprogram(name: "ximalloc", scope: !801, file: !801, line: 53, type: !3387, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!130, !820}
!3389 = !{!3390}
!3390 = !DILocalVariable(name: "s", arg: 1, scope: !3386, file: !801, line: 53, type: !820)
!3391 = !DILocation(line: 0, scope: !3386)
!3392 = !DILocalVariable(name: "s", arg: 1, scope: !3393, file: !3394, line: 55, type: !820)
!3393 = distinct !DISubprogram(name: "imalloc", scope: !3394, file: !3394, line: 55, type: !3387, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3395)
!3394 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3395 = !{!3392}
!3396 = !DILocation(line: 0, scope: !3393, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 55, column: 25, scope: !3386)
!3398 = !DILocation(line: 57, column: 26, scope: !3393, inlinedAt: !3397)
!3399 = !DILocation(line: 0, scope: !3353, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 55, column: 10, scope: !3386)
!3401 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3400)
!3402 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3400)
!3403 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3400)
!3404 = !DILocation(line: 55, column: 3, scope: !3386)
!3405 = distinct !DISubprogram(name: "xcharalloc", scope: !801, file: !801, line: 59, type: !3406, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!129, !131}
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3405, file: !801, line: 59, type: !131)
!3410 = !DILocation(line: 0, scope: !3405)
!3411 = !DILocation(line: 0, scope: !3372, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 61, column: 10, scope: !3405)
!3413 = !DILocation(line: 49, column: 25, scope: !3372, inlinedAt: !3412)
!3414 = !DILocation(line: 0, scope: !3353, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 49, column: 10, scope: !3372, inlinedAt: !3412)
!3416 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3415)
!3417 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3415)
!3418 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3415)
!3419 = !DILocation(line: 61, column: 3, scope: !3405)
!3420 = distinct !DISubprogram(name: "xrealloc", scope: !801, file: !801, line: 68, type: !3421, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!130, !130, !131}
!3423 = !{!3424, !3425}
!3424 = !DILocalVariable(name: "p", arg: 1, scope: !3420, file: !801, line: 68, type: !130)
!3425 = !DILocalVariable(name: "s", arg: 2, scope: !3420, file: !801, line: 68, type: !131)
!3426 = !DILocation(line: 0, scope: !3420)
!3427 = !DILocalVariable(name: "ptr", arg: 1, scope: !3428, file: !3429, line: 2057, type: !130)
!3428 = distinct !DISubprogram(name: "rpl_realloc", scope: !3429, file: !3429, line: 2057, type: !3421, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3430)
!3429 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3430 = !{!3427, !3431}
!3431 = !DILocalVariable(name: "size", arg: 2, scope: !3428, file: !3429, line: 2057, type: !131)
!3432 = !DILocation(line: 0, scope: !3428, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 70, column: 25, scope: !3420)
!3434 = !DILocation(line: 2059, column: 24, scope: !3428, inlinedAt: !3433)
!3435 = !DILocation(line: 2059, column: 10, scope: !3428, inlinedAt: !3433)
!3436 = !DILocation(line: 0, scope: !3353, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 70, column: 10, scope: !3420)
!3438 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3437)
!3439 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3437)
!3440 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3437)
!3441 = !DILocation(line: 70, column: 3, scope: !3420)
!3442 = !DISubprogram(name: "realloc", scope: !1094, file: !1094, line: 551, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3443 = distinct !DISubprogram(name: "xirealloc", scope: !801, file: !801, line: 74, type: !3444, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!130, !130, !820}
!3446 = !{!3447, !3448}
!3447 = !DILocalVariable(name: "p", arg: 1, scope: !3443, file: !801, line: 74, type: !130)
!3448 = !DILocalVariable(name: "s", arg: 2, scope: !3443, file: !801, line: 74, type: !820)
!3449 = !DILocation(line: 0, scope: !3443)
!3450 = !DILocalVariable(name: "p", arg: 1, scope: !3451, file: !3394, line: 66, type: !130)
!3451 = distinct !DISubprogram(name: "irealloc", scope: !3394, file: !3394, line: 66, type: !3444, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3452)
!3452 = !{!3450, !3453}
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3451, file: !3394, line: 66, type: !820)
!3454 = !DILocation(line: 0, scope: !3451, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 76, column: 25, scope: !3443)
!3456 = !DILocation(line: 0, scope: !3428, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 68, column: 26, scope: !3451, inlinedAt: !3455)
!3458 = !DILocation(line: 2059, column: 24, scope: !3428, inlinedAt: !3457)
!3459 = !DILocation(line: 2059, column: 10, scope: !3428, inlinedAt: !3457)
!3460 = !DILocation(line: 0, scope: !3353, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 76, column: 10, scope: !3443)
!3462 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3461)
!3465 = !DILocation(line: 76, column: 3, scope: !3443)
!3466 = distinct !DISubprogram(name: "xireallocarray", scope: !801, file: !801, line: 89, type: !3467, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!130, !130, !820, !820}
!3469 = !{!3470, !3471, !3472}
!3470 = !DILocalVariable(name: "p", arg: 1, scope: !3466, file: !801, line: 89, type: !130)
!3471 = !DILocalVariable(name: "n", arg: 2, scope: !3466, file: !801, line: 89, type: !820)
!3472 = !DILocalVariable(name: "s", arg: 3, scope: !3466, file: !801, line: 89, type: !820)
!3473 = !DILocation(line: 0, scope: !3466)
!3474 = !DILocalVariable(name: "p", arg: 1, scope: !3475, file: !3394, line: 98, type: !130)
!3475 = distinct !DISubprogram(name: "ireallocarray", scope: !3394, file: !3394, line: 98, type: !3467, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3476)
!3476 = !{!3474, !3477, !3478}
!3477 = !DILocalVariable(name: "n", arg: 2, scope: !3475, file: !3394, line: 98, type: !820)
!3478 = !DILocalVariable(name: "s", arg: 3, scope: !3475, file: !3394, line: 98, type: !820)
!3479 = !DILocation(line: 0, scope: !3475, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 91, column: 25, scope: !3466)
!3481 = !DILocation(line: 101, column: 13, scope: !3475, inlinedAt: !3480)
!3482 = !DILocation(line: 0, scope: !3353, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 91, column: 10, scope: !3466)
!3484 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3483)
!3485 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3483)
!3486 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3483)
!3487 = !DILocation(line: 91, column: 3, scope: !3466)
!3488 = distinct !DISubprogram(name: "xnmalloc", scope: !801, file: !801, line: 98, type: !3489, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!130, !131, !131}
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "n", arg: 1, scope: !3488, file: !801, line: 98, type: !131)
!3493 = !DILocalVariable(name: "s", arg: 2, scope: !3488, file: !801, line: 98, type: !131)
!3494 = !DILocation(line: 0, scope: !3488)
!3495 = !DILocation(line: 0, scope: !3345, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 100, column: 10, scope: !3488)
!3497 = !DILocation(line: 85, column: 25, scope: !3345, inlinedAt: !3496)
!3498 = !DILocation(line: 0, scope: !3353, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 85, column: 10, scope: !3345, inlinedAt: !3496)
!3500 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3499)
!3501 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3499)
!3502 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3499)
!3503 = !DILocation(line: 100, column: 3, scope: !3488)
!3504 = distinct !DISubprogram(name: "xinmalloc", scope: !801, file: !801, line: 104, type: !3505, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!130, !820, !820}
!3507 = !{!3508, !3509}
!3508 = !DILocalVariable(name: "n", arg: 1, scope: !3504, file: !801, line: 104, type: !820)
!3509 = !DILocalVariable(name: "s", arg: 2, scope: !3504, file: !801, line: 104, type: !820)
!3510 = !DILocation(line: 0, scope: !3504)
!3511 = !DILocation(line: 0, scope: !3466, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 106, column: 10, scope: !3504)
!3513 = !DILocation(line: 0, scope: !3475, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 91, column: 25, scope: !3466, inlinedAt: !3512)
!3515 = !DILocation(line: 101, column: 13, scope: !3475, inlinedAt: !3514)
!3516 = !DILocation(line: 0, scope: !3353, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 91, column: 10, scope: !3466, inlinedAt: !3512)
!3518 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3517)
!3519 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3517)
!3520 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3517)
!3521 = !DILocation(line: 106, column: 3, scope: !3504)
!3522 = distinct !DISubprogram(name: "x2realloc", scope: !801, file: !801, line: 116, type: !3523, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!130, !130, !807}
!3525 = !{!3526, !3527}
!3526 = !DILocalVariable(name: "p", arg: 1, scope: !3522, file: !801, line: 116, type: !130)
!3527 = !DILocalVariable(name: "ps", arg: 2, scope: !3522, file: !801, line: 116, type: !807)
!3528 = !DILocation(line: 0, scope: !3522)
!3529 = !DILocation(line: 0, scope: !804, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 118, column: 10, scope: !3522)
!3531 = !DILocation(line: 178, column: 14, scope: !804, inlinedAt: !3530)
!3532 = !DILocation(line: 180, column: 9, scope: !3533, inlinedAt: !3530)
!3533 = distinct !DILexicalBlock(scope: !804, file: !801, line: 180, column: 7)
!3534 = !DILocation(line: 180, column: 7, scope: !804, inlinedAt: !3530)
!3535 = !DILocation(line: 182, column: 13, scope: !3536, inlinedAt: !3530)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !801, line: 182, column: 11)
!3537 = distinct !DILexicalBlock(scope: !3533, file: !801, line: 181, column: 5)
!3538 = !DILocation(line: 182, column: 11, scope: !3537, inlinedAt: !3530)
!3539 = !DILocation(line: 197, column: 11, scope: !3540, inlinedAt: !3530)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !801, line: 197, column: 11)
!3541 = distinct !DILexicalBlock(scope: !3533, file: !801, line: 195, column: 5)
!3542 = !DILocation(line: 197, column: 11, scope: !3541, inlinedAt: !3530)
!3543 = !DILocation(line: 198, column: 9, scope: !3540, inlinedAt: !3530)
!3544 = !DILocation(line: 0, scope: !3345, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 201, column: 7, scope: !804, inlinedAt: !3530)
!3546 = !DILocation(line: 85, column: 25, scope: !3345, inlinedAt: !3545)
!3547 = !DILocation(line: 0, scope: !3353, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 85, column: 10, scope: !3345, inlinedAt: !3545)
!3549 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3548)
!3550 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3548)
!3551 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3548)
!3552 = !DILocation(line: 202, column: 7, scope: !804, inlinedAt: !3530)
!3553 = !DILocation(line: 118, column: 3, scope: !3522)
!3554 = !DILocation(line: 0, scope: !804)
!3555 = !DILocation(line: 178, column: 14, scope: !804)
!3556 = !DILocation(line: 180, column: 9, scope: !3533)
!3557 = !DILocation(line: 180, column: 7, scope: !804)
!3558 = !DILocation(line: 182, column: 13, scope: !3536)
!3559 = !DILocation(line: 182, column: 11, scope: !3537)
!3560 = !DILocation(line: 190, column: 30, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3536, file: !801, line: 183, column: 9)
!3562 = !DILocation(line: 191, column: 16, scope: !3561)
!3563 = !DILocation(line: 191, column: 13, scope: !3561)
!3564 = !DILocation(line: 192, column: 9, scope: !3561)
!3565 = !DILocation(line: 197, column: 11, scope: !3540)
!3566 = !DILocation(line: 197, column: 11, scope: !3541)
!3567 = !DILocation(line: 198, column: 9, scope: !3540)
!3568 = !DILocation(line: 0, scope: !3345, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 201, column: 7, scope: !804)
!3570 = !DILocation(line: 85, column: 25, scope: !3345, inlinedAt: !3569)
!3571 = !DILocation(line: 0, scope: !3353, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 85, column: 10, scope: !3345, inlinedAt: !3569)
!3573 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3572)
!3574 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3572)
!3575 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3572)
!3576 = !DILocation(line: 202, column: 7, scope: !804)
!3577 = !DILocation(line: 203, column: 3, scope: !804)
!3578 = !DILocation(line: 0, scope: !816)
!3579 = !DILocation(line: 230, column: 14, scope: !816)
!3580 = !DILocation(line: 238, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !816, file: !801, line: 238, column: 7)
!3582 = !DILocation(line: 238, column: 7, scope: !816)
!3583 = !DILocation(line: 240, column: 9, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !816, file: !801, line: 240, column: 7)
!3585 = !DILocation(line: 240, column: 18, scope: !3584)
!3586 = !DILocation(line: 253, column: 8, scope: !816)
!3587 = !DILocation(line: 256, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !816, file: !801, line: 256, column: 7)
!3589 = !DILocation(line: 256, column: 7, scope: !816)
!3590 = !DILocation(line: 258, column: 27, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3588, file: !801, line: 257, column: 5)
!3592 = !DILocation(line: 259, column: 50, scope: !3591)
!3593 = !DILocation(line: 259, column: 32, scope: !3591)
!3594 = !DILocation(line: 260, column: 5, scope: !3591)
!3595 = !DILocation(line: 262, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !816, file: !801, line: 262, column: 7)
!3597 = !DILocation(line: 262, column: 7, scope: !816)
!3598 = !DILocation(line: 263, column: 9, scope: !3596)
!3599 = !DILocation(line: 263, column: 5, scope: !3596)
!3600 = !DILocation(line: 264, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !816, file: !801, line: 264, column: 7)
!3602 = !DILocation(line: 264, column: 14, scope: !3601)
!3603 = !DILocation(line: 265, column: 7, scope: !3601)
!3604 = !DILocation(line: 265, column: 11, scope: !3601)
!3605 = !DILocation(line: 266, column: 11, scope: !3601)
!3606 = !DILocation(line: 267, column: 14, scope: !3601)
!3607 = !DILocation(line: 264, column: 7, scope: !816)
!3608 = !DILocation(line: 268, column: 5, scope: !3601)
!3609 = !DILocation(line: 0, scope: !3420, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 269, column: 8, scope: !816)
!3611 = !DILocation(line: 0, scope: !3428, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 70, column: 25, scope: !3420, inlinedAt: !3610)
!3613 = !DILocation(line: 2059, column: 24, scope: !3428, inlinedAt: !3612)
!3614 = !DILocation(line: 2059, column: 10, scope: !3428, inlinedAt: !3612)
!3615 = !DILocation(line: 0, scope: !3353, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 70, column: 10, scope: !3420, inlinedAt: !3610)
!3617 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3616)
!3618 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3616)
!3619 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3616)
!3620 = !DILocation(line: 270, column: 7, scope: !816)
!3621 = !DILocation(line: 271, column: 3, scope: !816)
!3622 = distinct !DISubprogram(name: "xzalloc", scope: !801, file: !801, line: 279, type: !3373, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3623)
!3623 = !{!3624}
!3624 = !DILocalVariable(name: "s", arg: 1, scope: !3622, file: !801, line: 279, type: !131)
!3625 = !DILocation(line: 0, scope: !3622)
!3626 = !DILocalVariable(name: "n", arg: 1, scope: !3627, file: !801, line: 294, type: !131)
!3627 = distinct !DISubprogram(name: "xcalloc", scope: !801, file: !801, line: 294, type: !3489, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3628)
!3628 = !{!3626, !3629}
!3629 = !DILocalVariable(name: "s", arg: 2, scope: !3627, file: !801, line: 294, type: !131)
!3630 = !DILocation(line: 0, scope: !3627, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 281, column: 10, scope: !3622)
!3632 = !DILocation(line: 296, column: 25, scope: !3627, inlinedAt: !3631)
!3633 = !DILocation(line: 0, scope: !3353, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 296, column: 10, scope: !3627, inlinedAt: !3631)
!3635 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3634)
!3636 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3634)
!3637 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3634)
!3638 = !DILocation(line: 281, column: 3, scope: !3622)
!3639 = !DISubprogram(name: "calloc", scope: !1094, file: !1094, line: 543, type: !3489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3640 = !DILocation(line: 0, scope: !3627)
!3641 = !DILocation(line: 296, column: 25, scope: !3627)
!3642 = !DILocation(line: 0, scope: !3353, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 296, column: 10, scope: !3627)
!3644 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3643)
!3645 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3643)
!3646 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3643)
!3647 = !DILocation(line: 296, column: 3, scope: !3627)
!3648 = distinct !DISubprogram(name: "xizalloc", scope: !801, file: !801, line: 285, type: !3387, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3649)
!3649 = !{!3650}
!3650 = !DILocalVariable(name: "s", arg: 1, scope: !3648, file: !801, line: 285, type: !820)
!3651 = !DILocation(line: 0, scope: !3648)
!3652 = !DILocalVariable(name: "n", arg: 1, scope: !3653, file: !801, line: 300, type: !820)
!3653 = distinct !DISubprogram(name: "xicalloc", scope: !801, file: !801, line: 300, type: !3505, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3654)
!3654 = !{!3652, !3655}
!3655 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !801, line: 300, type: !820)
!3656 = !DILocation(line: 0, scope: !3653, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 287, column: 10, scope: !3648)
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3659, file: !3394, line: 77, type: !820)
!3659 = distinct !DISubprogram(name: "icalloc", scope: !3394, file: !3394, line: 77, type: !3505, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3660)
!3660 = !{!3658, !3661}
!3661 = !DILocalVariable(name: "s", arg: 2, scope: !3659, file: !3394, line: 77, type: !820)
!3662 = !DILocation(line: 0, scope: !3659, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 302, column: 25, scope: !3653, inlinedAt: !3657)
!3664 = !DILocation(line: 91, column: 10, scope: !3659, inlinedAt: !3663)
!3665 = !DILocation(line: 0, scope: !3353, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 302, column: 10, scope: !3653, inlinedAt: !3657)
!3667 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3666)
!3668 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3666)
!3669 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3666)
!3670 = !DILocation(line: 287, column: 3, scope: !3648)
!3671 = !DILocation(line: 0, scope: !3653)
!3672 = !DILocation(line: 0, scope: !3659, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 302, column: 25, scope: !3653)
!3674 = !DILocation(line: 91, column: 10, scope: !3659, inlinedAt: !3673)
!3675 = !DILocation(line: 0, scope: !3353, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 302, column: 10, scope: !3653)
!3677 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3676)
!3678 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3676)
!3679 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3676)
!3680 = !DILocation(line: 302, column: 3, scope: !3653)
!3681 = distinct !DISubprogram(name: "xmemdup", scope: !801, file: !801, line: 310, type: !3682, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!130, !1118, !131}
!3684 = !{!3685, !3686}
!3685 = !DILocalVariable(name: "p", arg: 1, scope: !3681, file: !801, line: 310, type: !1118)
!3686 = !DILocalVariable(name: "s", arg: 2, scope: !3681, file: !801, line: 310, type: !131)
!3687 = !DILocation(line: 0, scope: !3681)
!3688 = !DILocation(line: 0, scope: !3372, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 312, column: 18, scope: !3681)
!3690 = !DILocation(line: 49, column: 25, scope: !3372, inlinedAt: !3689)
!3691 = !DILocation(line: 0, scope: !3353, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 49, column: 10, scope: !3372, inlinedAt: !3689)
!3693 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3692)
!3694 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3692)
!3695 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3692)
!3696 = !DILocalVariable(name: "__dest", arg: 1, scope: !3697, file: !1810, line: 26, type: !3700)
!3697 = distinct !DISubprogram(name: "memcpy", scope: !1810, file: !1810, line: 26, type: !3698, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3701)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!130, !3700, !1117, !131}
!3700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!3701 = !{!3696, !3702, !3703}
!3702 = !DILocalVariable(name: "__src", arg: 2, scope: !3697, file: !1810, line: 26, type: !1117)
!3703 = !DILocalVariable(name: "__len", arg: 3, scope: !3697, file: !1810, line: 26, type: !131)
!3704 = !DILocation(line: 0, scope: !3697, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 312, column: 10, scope: !3681)
!3706 = !DILocation(line: 29, column: 10, scope: !3697, inlinedAt: !3705)
!3707 = !DILocation(line: 312, column: 3, scope: !3681)
!3708 = distinct !DISubprogram(name: "ximemdup", scope: !801, file: !801, line: 316, type: !3709, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3711)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!130, !1118, !820}
!3711 = !{!3712, !3713}
!3712 = !DILocalVariable(name: "p", arg: 1, scope: !3708, file: !801, line: 316, type: !1118)
!3713 = !DILocalVariable(name: "s", arg: 2, scope: !3708, file: !801, line: 316, type: !820)
!3714 = !DILocation(line: 0, scope: !3708)
!3715 = !DILocation(line: 0, scope: !3386, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 318, column: 18, scope: !3708)
!3717 = !DILocation(line: 0, scope: !3393, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 55, column: 25, scope: !3386, inlinedAt: !3716)
!3719 = !DILocation(line: 57, column: 26, scope: !3393, inlinedAt: !3718)
!3720 = !DILocation(line: 0, scope: !3353, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 55, column: 10, scope: !3386, inlinedAt: !3716)
!3722 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3721)
!3723 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3721)
!3724 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3721)
!3725 = !DILocation(line: 0, scope: !3697, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 318, column: 10, scope: !3708)
!3727 = !DILocation(line: 29, column: 10, scope: !3697, inlinedAt: !3726)
!3728 = !DILocation(line: 318, column: 3, scope: !3708)
!3729 = distinct !DISubprogram(name: "ximemdup0", scope: !801, file: !801, line: 325, type: !3730, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!129, !1118, !820}
!3732 = !{!3733, !3734, !3735}
!3733 = !DILocalVariable(name: "p", arg: 1, scope: !3729, file: !801, line: 325, type: !1118)
!3734 = !DILocalVariable(name: "s", arg: 2, scope: !3729, file: !801, line: 325, type: !820)
!3735 = !DILocalVariable(name: "result", scope: !3729, file: !801, line: 327, type: !129)
!3736 = !DILocation(line: 0, scope: !3729)
!3737 = !DILocation(line: 327, column: 30, scope: !3729)
!3738 = !DILocation(line: 0, scope: !3386, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 327, column: 18, scope: !3729)
!3740 = !DILocation(line: 0, scope: !3393, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 55, column: 25, scope: !3386, inlinedAt: !3739)
!3742 = !DILocation(line: 57, column: 26, scope: !3393, inlinedAt: !3741)
!3743 = !DILocation(line: 0, scope: !3353, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 55, column: 10, scope: !3386, inlinedAt: !3739)
!3745 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3744)
!3746 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3744)
!3747 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3744)
!3748 = !DILocation(line: 328, column: 3, scope: !3729)
!3749 = !DILocation(line: 328, column: 13, scope: !3729)
!3750 = !DILocation(line: 0, scope: !3697, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 329, column: 10, scope: !3729)
!3752 = !DILocation(line: 29, column: 10, scope: !3697, inlinedAt: !3751)
!3753 = !DILocation(line: 329, column: 3, scope: !3729)
!3754 = distinct !DISubprogram(name: "xstrdup", scope: !801, file: !801, line: 335, type: !1096, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !3755)
!3755 = !{!3756}
!3756 = !DILocalVariable(name: "string", arg: 1, scope: !3754, file: !801, line: 335, type: !134)
!3757 = !DILocation(line: 0, scope: !3754)
!3758 = !DILocation(line: 337, column: 27, scope: !3754)
!3759 = !DILocation(line: 337, column: 43, scope: !3754)
!3760 = !DILocation(line: 0, scope: !3681, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 337, column: 10, scope: !3754)
!3762 = !DILocation(line: 0, scope: !3372, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 312, column: 18, scope: !3681, inlinedAt: !3761)
!3764 = !DILocation(line: 49, column: 25, scope: !3372, inlinedAt: !3763)
!3765 = !DILocation(line: 0, scope: !3353, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 49, column: 10, scope: !3372, inlinedAt: !3763)
!3767 = !DILocation(line: 39, column: 8, scope: !3360, inlinedAt: !3766)
!3768 = !DILocation(line: 39, column: 7, scope: !3353, inlinedAt: !3766)
!3769 = !DILocation(line: 40, column: 5, scope: !3360, inlinedAt: !3766)
!3770 = !DILocation(line: 0, scope: !3697, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 312, column: 10, scope: !3681, inlinedAt: !3761)
!3772 = !DILocation(line: 29, column: 10, scope: !3697, inlinedAt: !3771)
!3773 = !DILocation(line: 337, column: 3, scope: !3754)
!3774 = distinct !DISubprogram(name: "xalloc_die", scope: !762, file: !762, line: 32, type: !523, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !3775)
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "__errstatus", scope: !3777, file: !762, line: 34, type: !3778)
!3777 = distinct !DILexicalBlock(scope: !3774, file: !762, line: 34, column: 3)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!3779 = !DILocation(line: 34, column: 3, scope: !3777)
!3780 = !DILocation(line: 0, scope: !3777)
!3781 = !DILocation(line: 40, column: 3, scope: !3774)
!3782 = distinct !DISubprogram(name: "xnumtoimax", scope: !769, file: !769, line: 42, type: !3783, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!137, !134, !104, !137, !137, !134, !134, !104, !104}
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3798, !3799, !3800}
!3786 = !DILocalVariable(name: "n_str", arg: 1, scope: !3782, file: !769, line: 42, type: !134)
!3787 = !DILocalVariable(name: "base", arg: 2, scope: !3782, file: !769, line: 42, type: !104)
!3788 = !DILocalVariable(name: "min", arg: 3, scope: !3782, file: !769, line: 42, type: !137)
!3789 = !DILocalVariable(name: "max", arg: 4, scope: !3782, file: !769, line: 42, type: !137)
!3790 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3782, file: !769, line: 43, type: !134)
!3791 = !DILocalVariable(name: "err", arg: 6, scope: !3782, file: !769, line: 43, type: !134)
!3792 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3782, file: !769, line: 43, type: !104)
!3793 = !DILocalVariable(name: "flags", arg: 8, scope: !3782, file: !769, line: 44, type: !104)
!3794 = !DILocalVariable(name: "tnum", scope: !3782, file: !769, line: 46, type: !137)
!3795 = !DILocalVariable(name: "r", scope: !3782, file: !769, line: 46, type: !137)
!3796 = !DILocalVariable(name: "s_err", scope: !3782, file: !769, line: 47, type: !3797)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !841, line: 43, baseType: !840)
!3798 = !DILocalVariable(name: "overflow_errno", scope: !3782, file: !769, line: 50, type: !104)
!3799 = !DILocalVariable(name: "e", scope: !3782, file: !769, line: 75, type: !104)
!3800 = !DILocalVariable(name: "__errstatus", scope: !3801, file: !769, line: 80, type: !3778)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !769, line: 80, column: 5)
!3802 = distinct !DILexicalBlock(scope: !3782, file: !769, line: 77, column: 7)
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 0, scope: !3782)
!3805 = !DILocation(line: 46, column: 3, scope: !3782)
!3806 = !DILocation(line: 47, column: 24, scope: !3782)
!3807 = !DILocation(line: 52, column: 13, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3782, file: !769, line: 52, column: 7)
!3809 = !DILocation(line: 52, column: 7, scope: !3782)
!3810 = !DILocation(line: 54, column: 11, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !769, line: 54, column: 11)
!3812 = distinct !DILexicalBlock(scope: !3808, file: !769, line: 53, column: 5)
!3813 = !DILocation(line: 54, column: 16, scope: !3811)
!3814 = !DILocation(line: 54, column: 11, scope: !3812)
!3815 = !DILocation(line: 61, column: 20, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3811, file: !769, line: 61, column: 16)
!3817 = !DILocation(line: 61, column: 16, scope: !3811)
!3818 = !DILocation(line: 0, scope: !3811)
!3819 = !DILocation(line: 75, column: 17, scope: !3782)
!3820 = !DILocation(line: 79, column: 14, scope: !3802)
!3821 = !DILocation(line: 75, column: 11, scope: !3782)
!3822 = !DILocation(line: 77, column: 16, scope: !3802)
!3823 = !DILocation(line: 78, column: 10, scope: !3802)
!3824 = !DILocation(line: 79, column: 31, scope: !3802)
!3825 = !DILocation(line: 79, column: 26, scope: !3802)
!3826 = !DILocation(line: 79, column: 23, scope: !3802)
!3827 = !DILocation(line: 77, column: 7, scope: !3782)
!3828 = !DILocation(line: 80, column: 5, scope: !3802)
!3829 = !DILocation(line: 82, column: 3, scope: !3782)
!3830 = !DILocation(line: 82, column: 9, scope: !3782)
!3831 = !DILocation(line: 84, column: 1, scope: !3782)
!3832 = !DILocation(line: 83, column: 3, scope: !3782)
!3833 = distinct !DISubprogram(name: "xdectoimax", scope: !769, file: !769, line: 92, type: !3834, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!137, !134, !137, !137, !134, !134, !104}
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842}
!3837 = !DILocalVariable(name: "n_str", arg: 1, scope: !3833, file: !769, line: 92, type: !134)
!3838 = !DILocalVariable(name: "min", arg: 2, scope: !3833, file: !769, line: 92, type: !137)
!3839 = !DILocalVariable(name: "max", arg: 3, scope: !3833, file: !769, line: 92, type: !137)
!3840 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3833, file: !769, line: 93, type: !134)
!3841 = !DILocalVariable(name: "err", arg: 5, scope: !3833, file: !769, line: 93, type: !134)
!3842 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3833, file: !769, line: 93, type: !104)
!3843 = distinct !DIAssignID()
!3844 = !DILocation(line: 0, scope: !3833)
!3845 = !DILocation(line: 0, scope: !3782, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 95, column: 10, scope: !3833)
!3847 = !DILocation(line: 46, column: 3, scope: !3782, inlinedAt: !3846)
!3848 = !DILocation(line: 47, column: 24, scope: !3782, inlinedAt: !3846)
!3849 = !DILocation(line: 52, column: 13, scope: !3808, inlinedAt: !3846)
!3850 = !DILocation(line: 52, column: 7, scope: !3782, inlinedAt: !3846)
!3851 = !DILocation(line: 54, column: 11, scope: !3811, inlinedAt: !3846)
!3852 = !DILocation(line: 54, column: 16, scope: !3811, inlinedAt: !3846)
!3853 = !DILocation(line: 54, column: 11, scope: !3812, inlinedAt: !3846)
!3854 = !DILocation(line: 75, column: 17, scope: !3782, inlinedAt: !3846)
!3855 = !DILocation(line: 79, column: 14, scope: !3802, inlinedAt: !3846)
!3856 = !DILocation(line: 78, column: 10, scope: !3802, inlinedAt: !3846)
!3857 = !DILocation(line: 80, column: 5, scope: !3802, inlinedAt: !3846)
!3858 = !DILocation(line: 82, column: 3, scope: !3782, inlinedAt: !3846)
!3859 = !DILocation(line: 82, column: 9, scope: !3782, inlinedAt: !3846)
!3860 = !DILocation(line: 84, column: 1, scope: !3782, inlinedAt: !3846)
!3861 = !DILocation(line: 95, column: 3, scope: !3833)
!3862 = distinct !DISubprogram(name: "xstrtoimax", scope: !3863, file: !3863, line: 71, type: !3864, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3868)
!3863 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!3866, !134, !1123, !104, !3867, !134}
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !860, line: 43, baseType: !859)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3881, !3882}
!3869 = !DILocalVariable(name: "nptr", arg: 1, scope: !3862, file: !3863, line: 71, type: !134)
!3870 = !DILocalVariable(name: "endptr", arg: 2, scope: !3862, file: !3863, line: 71, type: !1123)
!3871 = !DILocalVariable(name: "base", arg: 3, scope: !3862, file: !3863, line: 71, type: !104)
!3872 = !DILocalVariable(name: "val", arg: 4, scope: !3862, file: !3863, line: 72, type: !3867)
!3873 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3862, file: !3863, line: 72, type: !134)
!3874 = !DILocalVariable(name: "t_ptr", scope: !3862, file: !3863, line: 74, type: !129)
!3875 = !DILocalVariable(name: "p", scope: !3862, file: !3863, line: 75, type: !1123)
!3876 = !DILocalVariable(name: "tmp", scope: !3862, file: !3863, line: 91, type: !137)
!3877 = !DILocalVariable(name: "err", scope: !3862, file: !3863, line: 92, type: !3866)
!3878 = !DILocalVariable(name: "xbase", scope: !3879, file: !3863, line: 126, type: !104)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3863, line: 119, column: 5)
!3880 = distinct !DILexicalBlock(scope: !3862, file: !3863, line: 118, column: 7)
!3881 = !DILocalVariable(name: "suffixes", scope: !3879, file: !3863, line: 127, type: !104)
!3882 = !DILocalVariable(name: "overflow", scope: !3879, file: !3863, line: 156, type: !3866)
!3883 = distinct !DIAssignID()
!3884 = !DILocation(line: 0, scope: !3862)
!3885 = !DILocation(line: 74, column: 3, scope: !3862)
!3886 = !DILocation(line: 75, column: 14, scope: !3862)
!3887 = !DILocation(line: 90, column: 3, scope: !3862)
!3888 = !DILocation(line: 90, column: 9, scope: !3862)
!3889 = !DILocation(line: 91, column: 20, scope: !3862)
!3890 = !DILocation(line: 94, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3862, file: !3863, line: 94, column: 7)
!3892 = !DILocation(line: 94, column: 10, scope: !3891)
!3893 = !DILocation(line: 94, column: 7, scope: !3862)
!3894 = !DILocation(line: 98, column: 14, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !3863, line: 98, column: 11)
!3896 = distinct !DILexicalBlock(scope: !3891, file: !3863, line: 95, column: 5)
!3897 = !DILocation(line: 98, column: 29, scope: !3895)
!3898 = !DILocation(line: 98, column: 32, scope: !3895)
!3899 = !DILocation(line: 98, column: 38, scope: !3895)
!3900 = !DILocation(line: 98, column: 41, scope: !3895)
!3901 = !DILocation(line: 98, column: 11, scope: !3896)
!3902 = !DILocation(line: 102, column: 12, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3891, file: !3863, line: 102, column: 12)
!3904 = !DILocation(line: 102, column: 12, scope: !3891)
!3905 = !DILocation(line: 107, column: 5, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3903, file: !3863, line: 103, column: 5)
!3907 = !DILocation(line: 112, column: 8, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3862, file: !3863, line: 112, column: 7)
!3909 = !DILocation(line: 112, column: 7, scope: !3862)
!3910 = !DILocation(line: 114, column: 12, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !3863, line: 113, column: 5)
!3912 = !DILocation(line: 115, column: 7, scope: !3911)
!3913 = !DILocation(line: 118, column: 7, scope: !3880)
!3914 = !DILocation(line: 118, column: 11, scope: !3880)
!3915 = !DILocation(line: 118, column: 7, scope: !3862)
!3916 = !DILocation(line: 120, column: 12, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3879, file: !3863, line: 120, column: 11)
!3918 = !DILocation(line: 120, column: 11, scope: !3879)
!3919 = !DILocation(line: 122, column: 16, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3917, file: !3863, line: 121, column: 9)
!3921 = !DILocation(line: 123, column: 22, scope: !3920)
!3922 = !DILocation(line: 123, column: 11, scope: !3920)
!3923 = !DILocation(line: 0, scope: !3879)
!3924 = !DILocation(line: 128, column: 7, scope: !3879)
!3925 = !DILocation(line: 140, column: 15, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !3863, line: 140, column: 15)
!3927 = distinct !DILexicalBlock(scope: !3879, file: !3863, line: 129, column: 9)
!3928 = !DILocation(line: 140, column: 15, scope: !3927)
!3929 = !DILocation(line: 141, column: 21, scope: !3926)
!3930 = !DILocation(line: 141, column: 13, scope: !3926)
!3931 = !DILocation(line: 144, column: 21, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !3863, line: 144, column: 21)
!3933 = distinct !DILexicalBlock(scope: !3926, file: !3863, line: 142, column: 15)
!3934 = !DILocation(line: 144, column: 29, scope: !3932)
!3935 = !DILocation(line: 144, column: 21, scope: !3933)
!3936 = !DILocation(line: 152, column: 17, scope: !3933)
!3937 = !DILocation(line: 157, column: 7, scope: !3879)
!3938 = !DILocalVariable(name: "err", scope: !3939, file: !3863, line: 64, type: !3866)
!3939 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3863, file: !3863, line: 62, type: !3940, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!3866, !3867, !104, !104}
!3942 = !{!3943, !3944, !3945, !3938}
!3943 = !DILocalVariable(name: "x", arg: 1, scope: !3939, file: !3863, line: 62, type: !3867)
!3944 = !DILocalVariable(name: "base", arg: 2, scope: !3939, file: !3863, line: 62, type: !104)
!3945 = !DILocalVariable(name: "power", arg: 3, scope: !3939, file: !3863, line: 62, type: !104)
!3946 = !DILocation(line: 0, scope: !3939, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 219, column: 22, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3879, file: !3863, line: 158, column: 9)
!3949 = !DILocalVariable(name: "x", arg: 1, scope: !3950, file: !3863, line: 47, type: !3867)
!3950 = distinct !DISubprogram(name: "bkm_scale", scope: !3863, file: !3863, line: 47, type: !3951, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!3866, !3867, !104}
!3953 = !{!3949, !3954, !3955}
!3954 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3950, file: !3863, line: 47, type: !104)
!3955 = !DILocalVariable(name: "scaled", scope: !3950, file: !3863, line: 49, type: !137)
!3956 = !DILocation(line: 0, scope: !3950, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !3947)
!3958 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3957)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !3863, line: 50, column: 7)
!3960 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3957)
!3961 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !3947)
!3962 = !DILocation(line: 227, column: 11, scope: !3879)
!3963 = !DILocation(line: 0, scope: !3939, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 215, column: 22, scope: !3948)
!3965 = !DILocation(line: 0, scope: !3950, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !3964)
!3967 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3966)
!3968 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3966)
!3969 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !3964)
!3970 = !DILocation(line: 0, scope: !3939, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 202, column: 22, scope: !3948)
!3972 = !DILocation(line: 0, scope: !3950, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !3971)
!3974 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3973)
!3975 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3973)
!3976 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !3971)
!3977 = !DILocation(line: 0, scope: !3939, inlinedAt: !3978)
!3978 = distinct !DILocation(line: 198, column: 22, scope: !3948)
!3979 = !DILocation(line: 0, scope: !3950, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !3978)
!3981 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3980)
!3982 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3980)
!3983 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !3978)
!3984 = !DILocation(line: 0, scope: !3939, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 194, column: 22, scope: !3948)
!3986 = !DILocation(line: 0, scope: !3950, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !3985)
!3988 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3987)
!3989 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3987)
!3990 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !3985)
!3991 = !DILocation(line: 0, scope: !3939, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 175, column: 22, scope: !3948)
!3993 = !DILocation(line: 0, scope: !3950, inlinedAt: !3994)
!3994 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !3992)
!3995 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3994)
!3996 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3994)
!3997 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !3992)
!3998 = !DILocation(line: 0, scope: !3950, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 160, column: 22, scope: !3948)
!4000 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !3999)
!4001 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !3999)
!4002 = !DILocation(line: 161, column: 11, scope: !3948)
!4003 = !DILocation(line: 0, scope: !3950, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 167, column: 22, scope: !3948)
!4005 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !4004)
!4006 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !4004)
!4007 = !DILocation(line: 168, column: 11, scope: !3948)
!4008 = !DILocation(line: 0, scope: !3939, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 180, column: 22, scope: !3948)
!4010 = !DILocation(line: 0, scope: !3950, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !4009)
!4012 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !4011)
!4013 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !4011)
!4014 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !4009)
!4015 = !DILocation(line: 0, scope: !3939, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 185, column: 22, scope: !3948)
!4017 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !4016)
!4019 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !4018)
!4020 = !DILocation(line: 0, scope: !3950, inlinedAt: !4018)
!4021 = !DILocation(line: 0, scope: !3939, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 190, column: 22, scope: !3948)
!4023 = !DILocation(line: 0, scope: !3950, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !4022)
!4025 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !4024)
!4026 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !4024)
!4027 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !4022)
!4028 = !DILocation(line: 0, scope: !3939, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 207, column: 22, scope: !3948)
!4030 = !DILocation(line: 0, scope: !3950, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 66, column: 12, scope: !3939, inlinedAt: !4029)
!4032 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !4031)
!4033 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !4031)
!4034 = !DILocation(line: 66, column: 9, scope: !3939, inlinedAt: !4029)
!4035 = !DILocation(line: 0, scope: !3950, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 211, column: 22, scope: !3948)
!4037 = !DILocation(line: 50, column: 7, scope: !3959, inlinedAt: !4036)
!4038 = !DILocation(line: 50, column: 7, scope: !3950, inlinedAt: !4036)
!4039 = !DILocation(line: 212, column: 11, scope: !3948)
!4040 = !DILocation(line: 0, scope: !3948)
!4041 = !DILocation(line: 228, column: 10, scope: !3879)
!4042 = !DILocation(line: 229, column: 11, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3879, file: !3863, line: 229, column: 11)
!4044 = !DILocation(line: 229, column: 11, scope: !3879)
!4045 = !DILocation(line: 223, column: 16, scope: !3948)
!4046 = !DILocation(line: 224, column: 22, scope: !3948)
!4047 = !DILocation(line: 100, column: 11, scope: !3896)
!4048 = !DILocation(line: 92, column: 16, scope: !3862)
!4049 = !DILocation(line: 233, column: 8, scope: !3862)
!4050 = !DILocation(line: 234, column: 3, scope: !3862)
!4051 = !DILocation(line: 235, column: 1, scope: !3862)
!4052 = !DISubprogram(name: "strtoimax", scope: !4053, file: !4053, line: 297, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4053 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!137, !961, !4056, !104}
!4056 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1123)
!4057 = distinct !DISubprogram(name: "close_stream", scope: !863, file: !863, line: 55, type: !4058, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4094)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!104, !4060}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4063)
!4063 = !{!4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4062, file: !253, line: 51, baseType: !104, size: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4062, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4062, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4062, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4062, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4062, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4062, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4062, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4062, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4062, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4062, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4062, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4062, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4062, file: !253, line: 70, baseType: !4078, size: 64, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4062, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4062, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4062, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4062, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4062, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4062, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4062, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4062, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4062, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4062, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4062, file: !253, line: 93, baseType: !4078, size: 64, offset: 1344)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4062, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4062, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4062, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4062, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4094 = !{!4095, !4096, !4098, !4099}
!4095 = !DILocalVariable(name: "stream", arg: 1, scope: !4057, file: !863, line: 55, type: !4060)
!4096 = !DILocalVariable(name: "some_pending", scope: !4057, file: !863, line: 57, type: !4097)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!4098 = !DILocalVariable(name: "prev_fail", scope: !4057, file: !863, line: 58, type: !4097)
!4099 = !DILocalVariable(name: "fclose_fail", scope: !4057, file: !863, line: 59, type: !4097)
!4100 = !DILocation(line: 0, scope: !4057)
!4101 = !DILocation(line: 57, column: 30, scope: !4057)
!4102 = !DILocalVariable(name: "__stream", arg: 1, scope: !4103, file: !1650, line: 135, type: !4060)
!4103 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1650, file: !1650, line: 135, type: !4058, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !4104)
!4104 = !{!4102}
!4105 = !DILocation(line: 0, scope: !4103, inlinedAt: !4106)
!4106 = distinct !DILocation(line: 58, column: 27, scope: !4057)
!4107 = !DILocation(line: 137, column: 10, scope: !4103, inlinedAt: !4106)
!4108 = !{!1659, !971, i64 0}
!4109 = !DILocation(line: 58, column: 43, scope: !4057)
!4110 = !DILocation(line: 59, column: 29, scope: !4057)
!4111 = !DILocation(line: 59, column: 45, scope: !4057)
!4112 = !DILocation(line: 69, column: 17, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4057, file: !863, line: 69, column: 7)
!4114 = !DILocation(line: 57, column: 50, scope: !4057)
!4115 = !DILocation(line: 69, column: 33, scope: !4113)
!4116 = !DILocation(line: 69, column: 53, scope: !4113)
!4117 = !DILocation(line: 69, column: 59, scope: !4113)
!4118 = !DILocation(line: 69, column: 7, scope: !4057)
!4119 = !DILocation(line: 71, column: 11, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4113, file: !863, line: 70, column: 5)
!4121 = !DILocation(line: 72, column: 9, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4120, file: !863, line: 71, column: 11)
!4123 = !DILocation(line: 72, column: 15, scope: !4122)
!4124 = !DILocation(line: 77, column: 1, scope: !4057)
!4125 = !DISubprogram(name: "__fpending", scope: !4126, file: !4126, line: 75, type: !4127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4126 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!131, !4060}
!4129 = distinct !DISubprogram(name: "rpl_fclose", scope: !865, file: !865, line: 58, type: !4130, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !4166)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!104, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4134)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4135)
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4134, file: !253, line: 51, baseType: !104, size: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4134, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4134, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4134, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4134, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4134, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4134, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4134, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4134, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4134, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4134, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4134, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4134, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4134, file: !253, line: 70, baseType: !4150, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4134, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4134, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4134, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4134, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4134, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4134, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4134, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4134, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4134, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4134, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4134, file: !253, line: 93, baseType: !4150, size: 64, offset: 1344)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4134, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4134, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4134, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4134, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4166 = !{!4167, !4168, !4169, !4170}
!4167 = !DILocalVariable(name: "fp", arg: 1, scope: !4129, file: !865, line: 58, type: !4132)
!4168 = !DILocalVariable(name: "saved_errno", scope: !4129, file: !865, line: 60, type: !104)
!4169 = !DILocalVariable(name: "fd", scope: !4129, file: !865, line: 63, type: !104)
!4170 = !DILocalVariable(name: "result", scope: !4129, file: !865, line: 74, type: !104)
!4171 = !DILocation(line: 0, scope: !4129)
!4172 = !DILocation(line: 63, column: 12, scope: !4129)
!4173 = !DILocation(line: 64, column: 10, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4129, file: !865, line: 64, column: 7)
!4175 = !DILocation(line: 64, column: 7, scope: !4129)
!4176 = !DILocation(line: 65, column: 12, scope: !4174)
!4177 = !DILocation(line: 65, column: 5, scope: !4174)
!4178 = !DILocation(line: 70, column: 9, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4129, file: !865, line: 70, column: 7)
!4180 = !DILocation(line: 70, column: 23, scope: !4179)
!4181 = !DILocation(line: 70, column: 33, scope: !4179)
!4182 = !DILocation(line: 70, column: 26, scope: !4179)
!4183 = !DILocation(line: 70, column: 59, scope: !4179)
!4184 = !DILocation(line: 71, column: 7, scope: !4179)
!4185 = !DILocation(line: 71, column: 10, scope: !4179)
!4186 = !DILocation(line: 70, column: 7, scope: !4129)
!4187 = !DILocation(line: 100, column: 12, scope: !4129)
!4188 = !DILocation(line: 105, column: 7, scope: !4129)
!4189 = !DILocation(line: 72, column: 19, scope: !4179)
!4190 = !DILocation(line: 105, column: 19, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4129, file: !865, line: 105, column: 7)
!4192 = !DILocation(line: 107, column: 13, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4191, file: !865, line: 106, column: 5)
!4194 = !DILocation(line: 109, column: 5, scope: !4193)
!4195 = !DILocation(line: 112, column: 1, scope: !4129)
!4196 = !DISubprogram(name: "fileno", scope: !125, file: !125, line: 809, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4197 = !DISubprogram(name: "fclose", scope: !125, file: !125, line: 178, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4198 = !DISubprogram(name: "__freading", scope: !4126, file: !4126, line: 51, type: !4130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4199 = distinct !DISubprogram(name: "rpl_fflush", scope: !867, file: !867, line: 130, type: !4200, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4236)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!104, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4204)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4204, file: !253, line: 51, baseType: !104, size: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4204, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4204, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4204, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4204, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4204, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4204, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4204, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4204, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4204, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4204, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4204, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4204, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4204, file: !253, line: 70, baseType: !4220, size: 64, offset: 832)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4204, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4204, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4204, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4204, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4204, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4204, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4204, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4204, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4204, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4204, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4204, file: !253, line: 93, baseType: !4220, size: 64, offset: 1344)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4204, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4204, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4204, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4204, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4236 = !{!4237}
!4237 = !DILocalVariable(name: "stream", arg: 1, scope: !4199, file: !867, line: 130, type: !4202)
!4238 = !DILocation(line: 0, scope: !4199)
!4239 = !DILocation(line: 151, column: 14, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4199, file: !867, line: 151, column: 7)
!4241 = !DILocation(line: 151, column: 22, scope: !4240)
!4242 = !DILocation(line: 151, column: 27, scope: !4240)
!4243 = !DILocation(line: 151, column: 7, scope: !4199)
!4244 = !DILocation(line: 152, column: 12, scope: !4240)
!4245 = !DILocation(line: 152, column: 5, scope: !4240)
!4246 = !DILocalVariable(name: "fp", arg: 1, scope: !4247, file: !867, line: 42, type: !4202)
!4247 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !867, file: !867, line: 42, type: !4248, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !4250)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !4202}
!4250 = !{!4246}
!4251 = !DILocation(line: 0, scope: !4247, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 157, column: 3, scope: !4199)
!4253 = !DILocation(line: 44, column: 12, scope: !4254, inlinedAt: !4252)
!4254 = distinct !DILexicalBlock(scope: !4247, file: !867, line: 44, column: 7)
!4255 = !DILocation(line: 44, column: 19, scope: !4254, inlinedAt: !4252)
!4256 = !DILocation(line: 44, column: 7, scope: !4247, inlinedAt: !4252)
!4257 = !DILocation(line: 46, column: 5, scope: !4254, inlinedAt: !4252)
!4258 = !DILocation(line: 159, column: 10, scope: !4199)
!4259 = !DILocation(line: 159, column: 3, scope: !4199)
!4260 = !DILocation(line: 236, column: 1, scope: !4199)
!4261 = !DISubprogram(name: "fflush", scope: !125, file: !125, line: 230, type: !4200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4262 = distinct !DISubprogram(name: "rpl_fseeko", scope: !869, file: !869, line: 28, type: !4263, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4299)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!104, !4265, !124, !104}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !4267)
!4267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !4268)
!4268 = !{!4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4267, file: !253, line: 51, baseType: !104, size: 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4267, file: !253, line: 54, baseType: !129, size: 64, offset: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4267, file: !253, line: 55, baseType: !129, size: 64, offset: 128)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4267, file: !253, line: 56, baseType: !129, size: 64, offset: 192)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4267, file: !253, line: 57, baseType: !129, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4267, file: !253, line: 58, baseType: !129, size: 64, offset: 320)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4267, file: !253, line: 59, baseType: !129, size: 64, offset: 384)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4267, file: !253, line: 60, baseType: !129, size: 64, offset: 448)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4267, file: !253, line: 61, baseType: !129, size: 64, offset: 512)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4267, file: !253, line: 64, baseType: !129, size: 64, offset: 576)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4267, file: !253, line: 65, baseType: !129, size: 64, offset: 640)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4267, file: !253, line: 66, baseType: !129, size: 64, offset: 704)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4267, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4267, file: !253, line: 70, baseType: !4283, size: 64, offset: 832)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4267, file: !253, line: 72, baseType: !104, size: 32, offset: 896)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4267, file: !253, line: 73, baseType: !104, size: 32, offset: 928)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4267, file: !253, line: 74, baseType: !126, size: 64, offset: 960)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4267, file: !253, line: 77, baseType: !123, size: 16, offset: 1024)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4267, file: !253, line: 78, baseType: !277, size: 8, offset: 1040)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4267, file: !253, line: 79, baseType: !56, size: 8, offset: 1048)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4267, file: !253, line: 81, baseType: !280, size: 64, offset: 1088)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4267, file: !253, line: 89, baseType: !283, size: 64, offset: 1152)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4267, file: !253, line: 91, baseType: !285, size: 64, offset: 1216)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4267, file: !253, line: 92, baseType: !288, size: 64, offset: 1280)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4267, file: !253, line: 93, baseType: !4283, size: 64, offset: 1344)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4267, file: !253, line: 94, baseType: !130, size: 64, offset: 1408)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4267, file: !253, line: 95, baseType: !131, size: 64, offset: 1472)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4267, file: !253, line: 96, baseType: !104, size: 32, offset: 1536)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4267, file: !253, line: 98, baseType: !295, size: 160, offset: 1568)
!4299 = !{!4300, !4301, !4302, !4303}
!4300 = !DILocalVariable(name: "fp", arg: 1, scope: !4262, file: !869, line: 28, type: !4265)
!4301 = !DILocalVariable(name: "offset", arg: 2, scope: !4262, file: !869, line: 28, type: !124)
!4302 = !DILocalVariable(name: "whence", arg: 3, scope: !4262, file: !869, line: 28, type: !104)
!4303 = !DILocalVariable(name: "pos", scope: !4304, file: !869, line: 123, type: !124)
!4304 = distinct !DILexicalBlock(scope: !4305, file: !869, line: 119, column: 5)
!4305 = distinct !DILexicalBlock(scope: !4262, file: !869, line: 55, column: 7)
!4306 = !DILocation(line: 0, scope: !4262)
!4307 = !DILocation(line: 55, column: 12, scope: !4305)
!4308 = !{!1659, !900, i64 16}
!4309 = !DILocation(line: 55, column: 33, scope: !4305)
!4310 = !{!1659, !900, i64 8}
!4311 = !DILocation(line: 55, column: 25, scope: !4305)
!4312 = !DILocation(line: 56, column: 7, scope: !4305)
!4313 = !DILocation(line: 56, column: 15, scope: !4305)
!4314 = !DILocation(line: 56, column: 37, scope: !4305)
!4315 = !{!1659, !900, i64 32}
!4316 = !DILocation(line: 56, column: 29, scope: !4305)
!4317 = !DILocation(line: 57, column: 7, scope: !4305)
!4318 = !DILocation(line: 57, column: 15, scope: !4305)
!4319 = !{!1659, !900, i64 72}
!4320 = !DILocation(line: 57, column: 29, scope: !4305)
!4321 = !DILocation(line: 55, column: 7, scope: !4262)
!4322 = !DILocation(line: 123, column: 26, scope: !4304)
!4323 = !DILocation(line: 123, column: 19, scope: !4304)
!4324 = !DILocation(line: 0, scope: !4304)
!4325 = !DILocation(line: 124, column: 15, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4304, file: !869, line: 124, column: 11)
!4327 = !DILocation(line: 124, column: 11, scope: !4304)
!4328 = !DILocation(line: 135, column: 19, scope: !4304)
!4329 = !DILocation(line: 136, column: 12, scope: !4304)
!4330 = !DILocation(line: 136, column: 20, scope: !4304)
!4331 = !{!1659, !1283, i64 144}
!4332 = !DILocation(line: 167, column: 7, scope: !4304)
!4333 = !DILocation(line: 169, column: 10, scope: !4262)
!4334 = !DILocation(line: 169, column: 3, scope: !4262)
!4335 = !DILocation(line: 170, column: 1, scope: !4262)
!4336 = !DISubprogram(name: "fseeko", scope: !125, file: !125, line: 736, type: !4337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!104, !4265, !126, !104}
!4339 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !772, file: !772, line: 100, type: !4340, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4343)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!131, !1828, !134, !131, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!4343 = !{!4344, !4345, !4346, !4347, !4348}
!4344 = !DILocalVariable(name: "pwc", arg: 1, scope: !4339, file: !772, line: 100, type: !1828)
!4345 = !DILocalVariable(name: "s", arg: 2, scope: !4339, file: !772, line: 100, type: !134)
!4346 = !DILocalVariable(name: "n", arg: 3, scope: !4339, file: !772, line: 100, type: !131)
!4347 = !DILocalVariable(name: "ps", arg: 4, scope: !4339, file: !772, line: 100, type: !4342)
!4348 = !DILocalVariable(name: "ret", scope: !4339, file: !772, line: 130, type: !131)
!4349 = !DILocation(line: 0, scope: !4339)
!4350 = !DILocation(line: 105, column: 9, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4339, file: !772, line: 105, column: 7)
!4352 = !DILocation(line: 105, column: 7, scope: !4339)
!4353 = !DILocation(line: 117, column: 10, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4339, file: !772, line: 117, column: 7)
!4355 = !DILocation(line: 117, column: 7, scope: !4339)
!4356 = !DILocation(line: 130, column: 16, scope: !4339)
!4357 = !DILocation(line: 135, column: 11, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4339, file: !772, line: 135, column: 7)
!4359 = !DILocation(line: 135, column: 25, scope: !4358)
!4360 = !DILocation(line: 135, column: 30, scope: !4358)
!4361 = !DILocation(line: 135, column: 7, scope: !4339)
!4362 = !DILocalVariable(name: "ps", arg: 1, scope: !4363, file: !1801, line: 1135, type: !4342)
!4363 = distinct !DISubprogram(name: "mbszero", scope: !1801, file: !1801, line: 1135, type: !4364, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{null, !4342}
!4366 = !{!4362}
!4367 = !DILocation(line: 0, scope: !4363, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 137, column: 5, scope: !4358)
!4369 = !DILocalVariable(name: "__dest", arg: 1, scope: !4370, file: !1810, line: 57, type: !130)
!4370 = distinct !DISubprogram(name: "memset", scope: !1810, file: !1810, line: 57, type: !1811, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !4371)
!4371 = !{!4369, !4372, !4373}
!4372 = !DILocalVariable(name: "__ch", arg: 2, scope: !4370, file: !1810, line: 57, type: !104)
!4373 = !DILocalVariable(name: "__len", arg: 3, scope: !4370, file: !1810, line: 57, type: !131)
!4374 = !DILocation(line: 0, scope: !4370, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 1137, column: 3, scope: !4363, inlinedAt: !4368)
!4376 = !DILocation(line: 59, column: 10, scope: !4370, inlinedAt: !4375)
!4377 = !DILocation(line: 137, column: 5, scope: !4358)
!4378 = !DILocation(line: 138, column: 11, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4339, file: !772, line: 138, column: 7)
!4380 = !DILocation(line: 138, column: 7, scope: !4339)
!4381 = !DILocation(line: 139, column: 5, scope: !4379)
!4382 = !DILocation(line: 143, column: 26, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4339, file: !772, line: 143, column: 7)
!4384 = !DILocation(line: 143, column: 41, scope: !4383)
!4385 = !DILocation(line: 143, column: 7, scope: !4339)
!4386 = !DILocation(line: 145, column: 15, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !772, line: 145, column: 11)
!4388 = distinct !DILexicalBlock(scope: !4383, file: !772, line: 144, column: 5)
!4389 = !DILocation(line: 145, column: 11, scope: !4388)
!4390 = !DILocation(line: 146, column: 32, scope: !4387)
!4391 = !DILocation(line: 146, column: 16, scope: !4387)
!4392 = !DILocation(line: 146, column: 14, scope: !4387)
!4393 = !DILocation(line: 146, column: 9, scope: !4387)
!4394 = !DILocation(line: 286, column: 1, scope: !4339)
!4395 = !DISubprogram(name: "mbsinit", scope: !4396, file: !4396, line: 293, type: !4397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4396 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!104, !4399}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!4401 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !871, file: !871, line: 27, type: !3337, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4402)
!4402 = !{!4403, !4404, !4405, !4406}
!4403 = !DILocalVariable(name: "ptr", arg: 1, scope: !4401, file: !871, line: 27, type: !130)
!4404 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4401, file: !871, line: 27, type: !131)
!4405 = !DILocalVariable(name: "size", arg: 3, scope: !4401, file: !871, line: 27, type: !131)
!4406 = !DILocalVariable(name: "nbytes", scope: !4401, file: !871, line: 29, type: !131)
!4407 = !DILocation(line: 0, scope: !4401)
!4408 = !DILocation(line: 30, column: 7, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4401, file: !871, line: 30, column: 7)
!4410 = !DILocation(line: 30, column: 7, scope: !4401)
!4411 = !DILocation(line: 32, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4409, file: !871, line: 31, column: 5)
!4413 = !DILocation(line: 32, column: 13, scope: !4412)
!4414 = !DILocation(line: 33, column: 7, scope: !4412)
!4415 = !DILocalVariable(name: "ptr", arg: 1, scope: !4416, file: !3429, line: 2057, type: !130)
!4416 = distinct !DISubprogram(name: "rpl_realloc", scope: !3429, file: !3429, line: 2057, type: !3421, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4417)
!4417 = !{!4415, !4418}
!4418 = !DILocalVariable(name: "size", arg: 2, scope: !4416, file: !3429, line: 2057, type: !131)
!4419 = !DILocation(line: 0, scope: !4416, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 37, column: 10, scope: !4401)
!4421 = !DILocation(line: 2059, column: 24, scope: !4416, inlinedAt: !4420)
!4422 = !DILocation(line: 2059, column: 10, scope: !4416, inlinedAt: !4420)
!4423 = !DILocation(line: 37, column: 3, scope: !4401)
!4424 = !DILocation(line: 38, column: 1, scope: !4401)
!4425 = distinct !DISubprogram(name: "hard_locale", scope: !790, file: !790, line: 28, type: !4426, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!215, !104}
!4428 = !{!4429, !4430}
!4429 = !DILocalVariable(name: "category", arg: 1, scope: !4425, file: !790, line: 28, type: !104)
!4430 = !DILocalVariable(name: "locale", scope: !4425, file: !790, line: 30, type: !4431)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4432)
!4432 = !{!4433}
!4433 = !DISubrange(count: 257)
!4434 = distinct !DIAssignID()
!4435 = !DILocation(line: 0, scope: !4425)
!4436 = !DILocation(line: 30, column: 3, scope: !4425)
!4437 = !DILocation(line: 32, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4425, file: !790, line: 32, column: 7)
!4439 = !DILocation(line: 32, column: 7, scope: !4425)
!4440 = !DILocalVariable(name: "__s1", arg: 1, scope: !4441, file: !983, line: 1359, type: !134)
!4441 = distinct !DISubprogram(name: "streq", scope: !983, file: !983, line: 1359, type: !984, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !872, retainedNodes: !4442)
!4442 = !{!4440, !4443}
!4443 = !DILocalVariable(name: "__s2", arg: 2, scope: !4441, file: !983, line: 1359, type: !134)
!4444 = !DILocation(line: 0, scope: !4441, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 35, column: 9, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4425, file: !790, line: 35, column: 7)
!4447 = !DILocation(line: 1361, column: 11, scope: !4441, inlinedAt: !4445)
!4448 = !DILocation(line: 35, column: 29, scope: !4446)
!4449 = !DILocation(line: 0, scope: !4441, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 35, column: 32, scope: !4446)
!4451 = !DILocation(line: 1361, column: 11, scope: !4441, inlinedAt: !4450)
!4452 = !DILocation(line: 1361, column: 10, scope: !4441, inlinedAt: !4450)
!4453 = !DILocation(line: 35, column: 7, scope: !4425)
!4454 = !DILocation(line: 46, column: 3, scope: !4425)
!4455 = !DILocation(line: 47, column: 1, scope: !4425)
!4456 = distinct !DISubprogram(name: "setlocale_null_r", scope: !877, file: !877, line: 154, type: !4457, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!104, !104, !129, !131}
!4459 = !{!4460, !4461, !4462}
!4460 = !DILocalVariable(name: "category", arg: 1, scope: !4456, file: !877, line: 154, type: !104)
!4461 = !DILocalVariable(name: "buf", arg: 2, scope: !4456, file: !877, line: 154, type: !129)
!4462 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4456, file: !877, line: 154, type: !131)
!4463 = !DILocation(line: 0, scope: !4456)
!4464 = !DILocation(line: 159, column: 10, scope: !4456)
!4465 = !DILocation(line: 159, column: 3, scope: !4456)
!4466 = distinct !DISubprogram(name: "setlocale_null", scope: !877, file: !877, line: 186, type: !4467, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4469)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!134, !104}
!4469 = !{!4470}
!4470 = !DILocalVariable(name: "category", arg: 1, scope: !4466, file: !877, line: 186, type: !104)
!4471 = !DILocation(line: 0, scope: !4466)
!4472 = !DILocation(line: 189, column: 10, scope: !4466)
!4473 = !DILocation(line: 189, column: 3, scope: !4466)
!4474 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !879, file: !879, line: 35, type: !4467, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4475)
!4475 = !{!4476, !4477}
!4476 = !DILocalVariable(name: "category", arg: 1, scope: !4474, file: !879, line: 35, type: !104)
!4477 = !DILocalVariable(name: "result", scope: !4474, file: !879, line: 37, type: !134)
!4478 = !DILocation(line: 0, scope: !4474)
!4479 = !DILocation(line: 37, column: 24, scope: !4474)
!4480 = !DILocation(line: 62, column: 3, scope: !4474)
!4481 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !879, file: !879, line: 66, type: !4457, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4482)
!4482 = !{!4483, !4484, !4485, !4486, !4487}
!4483 = !DILocalVariable(name: "category", arg: 1, scope: !4481, file: !879, line: 66, type: !104)
!4484 = !DILocalVariable(name: "buf", arg: 2, scope: !4481, file: !879, line: 66, type: !129)
!4485 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4481, file: !879, line: 66, type: !131)
!4486 = !DILocalVariable(name: "result", scope: !4481, file: !879, line: 111, type: !134)
!4487 = !DILocalVariable(name: "length", scope: !4488, file: !879, line: 125, type: !131)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !879, line: 124, column: 5)
!4489 = distinct !DILexicalBlock(scope: !4481, file: !879, line: 113, column: 7)
!4490 = !DILocation(line: 0, scope: !4481)
!4491 = !DILocation(line: 0, scope: !4474, inlinedAt: !4492)
!4492 = distinct !DILocation(line: 111, column: 24, scope: !4481)
!4493 = !DILocation(line: 37, column: 24, scope: !4474, inlinedAt: !4492)
!4494 = !DILocation(line: 113, column: 14, scope: !4489)
!4495 = !DILocation(line: 113, column: 7, scope: !4481)
!4496 = !DILocation(line: 116, column: 19, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !879, line: 116, column: 11)
!4498 = distinct !DILexicalBlock(scope: !4489, file: !879, line: 114, column: 5)
!4499 = !DILocation(line: 116, column: 11, scope: !4498)
!4500 = !DILocation(line: 120, column: 16, scope: !4497)
!4501 = !DILocation(line: 120, column: 9, scope: !4497)
!4502 = !DILocation(line: 125, column: 23, scope: !4488)
!4503 = !DILocation(line: 0, scope: !4488)
!4504 = !DILocation(line: 126, column: 18, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4488, file: !879, line: 126, column: 11)
!4506 = !DILocation(line: 126, column: 11, scope: !4488)
!4507 = !DILocation(line: 128, column: 39, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !879, line: 127, column: 9)
!4509 = !DILocalVariable(name: "__dest", arg: 1, scope: !4510, file: !1810, line: 26, type: !3700)
!4510 = distinct !DISubprogram(name: "memcpy", scope: !1810, file: !1810, line: 26, type: !3698, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4511)
!4511 = !{!4509, !4512, !4513}
!4512 = !DILocalVariable(name: "__src", arg: 2, scope: !4510, file: !1810, line: 26, type: !1117)
!4513 = !DILocalVariable(name: "__len", arg: 3, scope: !4510, file: !1810, line: 26, type: !131)
!4514 = !DILocation(line: 0, scope: !4510, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 128, column: 11, scope: !4508)
!4516 = !DILocation(line: 29, column: 10, scope: !4510, inlinedAt: !4515)
!4517 = !DILocation(line: 129, column: 11, scope: !4508)
!4518 = !DILocation(line: 133, column: 23, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !879, line: 133, column: 15)
!4520 = distinct !DILexicalBlock(scope: !4505, file: !879, line: 132, column: 9)
!4521 = !DILocation(line: 133, column: 15, scope: !4520)
!4522 = !DILocation(line: 138, column: 44, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4519, file: !879, line: 134, column: 13)
!4524 = !DILocation(line: 0, scope: !4510, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 138, column: 15, scope: !4523)
!4526 = !DILocation(line: 29, column: 10, scope: !4510, inlinedAt: !4525)
!4527 = !DILocation(line: 139, column: 15, scope: !4523)
!4528 = !DILocation(line: 139, column: 32, scope: !4523)
!4529 = !DILocation(line: 140, column: 13, scope: !4523)
!4530 = !DILocation(line: 0, scope: !4489)
!4531 = !DILocation(line: 145, column: 1, scope: !4481)
